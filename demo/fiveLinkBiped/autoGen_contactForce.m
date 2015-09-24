function [Fx,Fy] = autoGen_contactForce(q1,q2,q3,q4,q5,dq1,dq2,dq3,dq4,dq5,ddq1,ddq2,ddq3,ddq4,ddq5,m1,m2,m3,m4,m5,l1,l2,l3,l4,c1,c2,c3,c4,c5,g)
%AUTOGEN_CONTACTFORCE
%    [FX,FY] = AUTOGEN_CONTACTFORCE(Q1,Q2,Q3,Q4,Q5,DQ1,DQ2,DQ3,DQ4,DQ5,DDQ1,DDQ2,DDQ3,DDQ4,DDQ5,M1,M2,M3,M4,M5,L1,L2,L3,L4,C1,C2,C3,C4,C5,G)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    24-Sep-2015 19:00:28

t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = dq1.^2;
t7 = sin(q1);
t8 = dq2.^2;
t9 = sin(q2);
t10 = dq3.^2;
t11 = sin(q3);
t12 = dq4.^2;
t13 = sin(q4);
t14 = sin(q5);
t15 = dq5.^2;
t16 = cos(q5);
Fx = c1.*ddq1.*m1.*t2+c2.*ddq2.*m2.*t3+c3.*ddq3.*m3.*t4+c4.*ddq4.*m4.*t5+c5.*ddq5.*m5.*t16-ddq1.*l1.*m1.*t2-ddq1.*l1.*m2.*t2-ddq1.*l1.*m3.*t2-ddq1.*l1.*m4.*t2-ddq1.*l1.*m5.*t2-ddq2.*l2.*m2.*t3-ddq2.*l2.*m3.*t3-ddq2.*l2.*m4.*t3-ddq2.*l2.*m5.*t3-ddq3.*l3.*m3.*t4+ddq4.*l4.*m5.*t5-c1.*m1.*t6.*t7-c2.*m2.*t8.*t9-c3.*m3.*t10.*t11-c4.*m4.*t12.*t13-c5.*m5.*t14.*t15+l1.*m1.*t6.*t7+l1.*m2.*t6.*t7+l1.*m3.*t6.*t7+l1.*m4.*t6.*t7+l1.*m5.*t6.*t7+l2.*m2.*t8.*t9+l2.*m3.*t8.*t9+l2.*m4.*t8.*t9+l2.*m5.*t8.*t9+l3.*m3.*t10.*t11-l4.*m5.*t12.*t13;
if nargout > 1
    Fy = g.*m1+g.*m2+g.*m3+g.*m4+g.*m5+c1.*ddq1.*m1.*t7+c2.*ddq2.*m2.*t9+c3.*ddq3.*m3.*t11+c4.*ddq4.*m4.*t13+c5.*ddq5.*m5.*t14-ddq1.*l1.*m1.*t7-ddq1.*l1.*m2.*t7-ddq1.*l1.*m3.*t7-ddq1.*l1.*m4.*t7-ddq1.*l1.*m5.*t7-ddq2.*l2.*m2.*t9-ddq2.*l2.*m3.*t9-ddq2.*l2.*m4.*t9-ddq2.*l2.*m5.*t9-ddq3.*l3.*m3.*t11+ddq4.*l4.*m5.*t13+c1.*m1.*t2.*t6+c2.*m2.*t3.*t8+c3.*m3.*t4.*t10+c4.*m4.*t5.*t12+c5.*m5.*t15.*t16-l1.*m1.*t2.*t6-l1.*m2.*t2.*t6-l1.*m3.*t2.*t6-l1.*m4.*t2.*t6-l1.*m5.*t2.*t6-l2.*m2.*t3.*t8-l2.*m3.*t3.*t8-l2.*m4.*t3.*t8-l2.*m5.*t3.*t8-l3.*m3.*t4.*t10+l4.*m5.*t5.*t12;
end
