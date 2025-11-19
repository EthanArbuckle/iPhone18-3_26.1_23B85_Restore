__n128 sub_100001634(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100001650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100001698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100001714@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  sub_100001898(&qword_1000103C0, &qword_100008688);
  sub_100007DF0();
  v5 = v13;
  v6 = v14;
  v16 = &_swiftEmptyArrayStorage;
  sub_100001898(&qword_1000103C8, &qword_100008690);
  sub_100007DF0();
  v7 = v13;
  v8 = v14;
  v9 = swift_getKeyPath();
  sub_100004748(&v13);
  sub_1000048B8(&v13, v15);
  v10 = sub_100007A80();
  LOBYTE(v16) = 0;
  result = sub_1000048FC(&v13);
  v12 = v16;
  *a1 = KeyPath;
  *(a1 + 8) = v12;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v3;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  return result;
}

uint64_t sub_10000183C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007C30();
  *a1 = result;
  return result;
}

uint64_t sub_100001898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_1000018E0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  return sub_100007FA0();
}

uint64_t sub_100001948()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100007E90();

  return sub_100007E90();
}

Swift::Int sub_100001998()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  return sub_100007FA0();
}

uint64_t sub_1000019FC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_100007F70(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_100007F70();
    }
  }

  return result;
}

__n128 sub_100001AA0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100001898(&qword_100010408, &qword_100008858);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v35 - v7;
  *v8 = sub_100007CA0();
  *(v8 + 1) = 0x402C000000000000;
  v8[16] = 0;
  v9 = sub_100001898(&qword_100010410, &qword_100008860);
  sub_100001DDC(v2, &v8[*(v9 + 44)]);
  v10 = sub_100007D10();
  sub_100007BF0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v8[*(sub_100001898(&qword_100010418, &qword_100008868) + 36)];
  *v19 = v10;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  v20 = *v2;
  v41 = *(v2 + 8);
  v21 = *(v2 + 24);
  v39 = *(v2 + 16);
  v40 = v20;
  v22 = *(v2 + 40);
  v37 = *(v2 + 32);
  v38 = v21;
  v36 = v22;
  v23 = swift_allocObject();
  v24 = *(v2 + 16);
  *(v23 + 16) = *v2;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(v2 + 32);
  *(v23 + 64) = *(v2 + 48);
  v25 = &v8[*(sub_100001898(&qword_100010420, &qword_100008870) + 36)];
  *v25 = sub_100004C90;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  sub_1000065C0(&v40, v35, &qword_100010428, &qword_100008878);
  sub_1000065C0(&v39, v35, &qword_1000103C0, &qword_100008688);
  sub_1000065C0(&v38, v35, &qword_100010430, &qword_100008880);
  sub_1000065C0(&v37, v35, &qword_1000103C8, &qword_100008690);
  sub_1000065C0(&v36, v35, &qword_100010438, &qword_100008888);
  v26 = sub_100007DE0();
  v27 = sub_100007D00();
  v28 = &v8[*(v5 + 44)];
  *v28 = v26;
  v28[8] = v27;
  v29 = *(v2 + 48);
  sub_100007E60();
  sub_100007C00();
  sub_100004C98(v8, a1);
  v30 = a1 + *(sub_100001898(&qword_100010440, &qword_100008890) + 36);
  v31 = v35[5];
  *(v30 + 64) = v35[4];
  *(v30 + 80) = v31;
  *(v30 + 96) = v35[6];
  v32 = v35[1];
  *v30 = v35[0];
  *(v30 + 16) = v32;
  result = v35[3];
  *(v30 + 32) = v35[2];
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_100001DDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v59 = sub_100007AA0();
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v59);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001898(&qword_100010488, &qword_1000088D0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v55 - v13;
  sub_100007EF0();
  v61 = sub_100007EE0();
  sub_100007ED0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_100001898(&qword_100010490, &qword_1000088D8);
  sub_100005EDC();
  sub_100007E40();
  v91 = *(a1 + 32);
  v80 = *(a1 + 32);
  sub_100001898(&qword_100010460, &qword_1000088B0);
  sub_100007E00();
  v15 = *(v75 + 16);

  if (v15)
  {
    v56 = v12;
    v57 = v8;
    v58 = v7;
    v55 = a1;
    v16 = v59;
    (*(v3 + 104))(v6, enum case for LocalizedStringTable.bankConnect(_:), v59);
    sub_100001898(&qword_1000104B8, &qword_1000088E8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100008500;
    v80 = v91;
    sub_100007E00();
    v18 = *(v75 + 16);

    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v18;
    v19 = sub_100007A90();
    v21 = v20;

    (*(v3 + 8))(v6, v16);
    *&v80 = v19;
    *(&v80 + 1) = v21;
    sub_100006050();
    v22 = sub_100007D90();
    v24 = v23;
    LOBYTE(v17) = v25;
    sub_100007D20();
    v26 = sub_100007D80();
    v28 = v27;
    v30 = v29;

    sub_1000060A4(v22, v24, v17 & 1);

    sub_100007D40();
    v31 = sub_100007D60();
    v33 = v32;
    LOBYTE(v24) = v34;
    v36 = v35;
    sub_1000060A4(v26, v28, v30 & 1);

    KeyPath = swift_getKeyPath();
    v38 = *(v55 + 48);
    sub_100007E60();
    sub_100007C00();
    *&v79[55] = v89[5];
    *&v79[71] = v89[6];
    *&v79[87] = v89[7];
    *&v79[103] = v90;
    *&v79[7] = v89[2];
    *&v79[23] = v89[3];
    *&v79[39] = v89[4];
    *(&v78[4] + 1) = *&v79[64];
    *(&v78[5] + 1) = *&v79[80];
    *(&v78[6] + 1) = *&v79[96];
    *(v78 + 1) = *v79;
    *(&v78[1] + 1) = *&v79[16];
    *(&v78[2] + 1) = *&v79[32];
    LOBYTE(v73[0]) = v24 & 1;
    LOBYTE(v63) = 1;
    *&v75 = v31;
    *(&v75 + 1) = v33;
    LOBYTE(v76) = v24 & 1;
    *(&v76 + 1) = v36;
    v77 = KeyPath;
    LOBYTE(v78[0]) = 1;
    *&v78[7] = *(&v90 + 1);
    *(&v78[3] + 1) = *&v79[48];
    WORD4(v78[7]) = 1;
    nullsub_1(&v75);
    v88 = v78[5];
    v89[0] = v78[6];
    *(v89 + 10) = *(&v78[6] + 10);
    v84 = v78[1];
    v85 = v78[2];
    v86 = v78[3];
    v87 = v78[4];
    v80 = v75;
    v81 = v76;
    v82 = v77;
    v83 = v78[0];
    v8 = v57;
    v7 = v58;
    v12 = v56;
  }

  else
  {
    sub_1000060B8(&v80);
  }

  v39 = v8[2];
  v40 = v62;
  v39(v12, v62, v7);
  v71 = v88;
  v72[0] = v89[0];
  *(v72 + 10) = *(v89 + 10);
  v67 = v84;
  v68 = v85;
  v69 = v86;
  v70 = v87;
  v63 = v80;
  v64 = v81;
  v65 = v82;
  v66 = v83;
  v41 = v60;
  v39(v60, v12, v7);
  v42 = *(sub_100001898(&qword_1000104C8, &qword_100008920) + 48);
  v43 = v72[0];
  v73[8] = v71;
  v74[0] = v72[0];
  *(v74 + 10) = *(v72 + 10);
  v44 = v67;
  v45 = v68;
  v73[4] = v67;
  v73[5] = v68;
  v47 = v69;
  v46 = v70;
  v73[6] = v69;
  v73[7] = v70;
  v48 = v63;
  v49 = v64;
  v73[0] = v63;
  v73[1] = v64;
  v51 = v65;
  v50 = v66;
  v73[2] = v65;
  v73[3] = v66;
  v52 = &v41[v42];
  *(v52 + 8) = v71;
  *(v52 + 9) = v43;
  *(v52 + 154) = *(v72 + 10);
  *(v52 + 4) = v44;
  *(v52 + 5) = v45;
  *(v52 + 6) = v47;
  *(v52 + 7) = v46;
  *v52 = v48;
  *(v52 + 1) = v49;
  *(v52 + 2) = v51;
  *(v52 + 3) = v50;
  sub_1000065C0(v73, &v75, &qword_1000104D0, &qword_100008928);
  v53 = v8[1];
  v53(v40, v7);
  v78[5] = v71;
  v78[6] = v72[0];
  *(&v78[6] + 10) = *(v72 + 10);
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v69;
  v78[4] = v70;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v78[0] = v66;
  sub_100006628(&v75, &qword_1000104D0, &qword_100008928);
  v53(v12, v7);
}

uint64_t sub_10000254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_100007B80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001898(&qword_1000104A0, &qword_1000088E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v26 - 2) = a1;
  sub_100001898(&qword_1000104D8, &qword_100008930);
  sub_1000060E0();
  sub_100007E50();
  sub_100007B70();
  sub_100006C08(&qword_1000104A8, &qword_1000104A0, &qword_1000088E0);
  sub_100005FF8();
  v14 = v27;
  sub_100007DC0();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  v15 = sub_100007CF0();
  sub_100007BF0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  result = sub_100001898(&qword_100010490, &qword_1000088D8);
  v25 = v14 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_100002854(uint64_t *a1)
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[2];
  v3 = a1[3];
  v11 = v2;
  v12 = v3;
  sub_100001898(&qword_100010468, &qword_1000088B8);
  sub_100007E00();
  v4 = *(v17 + 16);
  if (v4 >= 2)
  {
    v4 = 2;
  }

  v11 = v17;
  v12 = v17 + 32;
  v13 = 0;
  v14 = (2 * v4) | 1;
  swift_getKeyPath();
  v5 = *a1;
  v18 = *(a1 + 8);
  v19 = v2;
  v20 = v3;
  v6 = a1[5];
  v16 = a1[4];
  v17 = v5;
  v15 = v6;
  v7 = swift_allocObject();
  v8 = *(a1 + 1);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 2);
  *(v7 + 64) = a1[6];
  sub_1000065C0(&v17, v10, &qword_100010428, &qword_100008878);
  sub_1000065C0(&v19, v10, &qword_1000103C0, &qword_100008688);
  sub_1000065C0(&v20, v10, &qword_100010430, &qword_100008880);
  sub_1000065C0(&v16, v10, &qword_1000103C8, &qword_100008690);
  sub_1000065C0(&v15, v10, &qword_100010438, &qword_100008888);
  sub_100001898(&qword_1000104F8, &qword_100008960);
  sub_100001898(&qword_1000104F0, &qword_100008938);
  sub_100006C08(&qword_100010500, &qword_1000104F8, &qword_100008960);
  sub_100006C08(&qword_1000104E8, &qword_1000104F0, &qword_100008938);
  sub_100007E30();
}

uint64_t sub_100002B14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v73 = a3;
  v65 = sub_100007BA0();
  v64 = *(v65 - 8);
  v5 = *(v64 + 64);
  (__chkstk_darwin)();
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100001898(&qword_100010508, &qword_100008968);
  v72 = *(v74 - 8);
  v7 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v62 = &v62 - v8;
  v82 = sub_100007AE0();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v81 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_100001898(&qword_100010510, &qword_100008970) - 8) + 64);
  v13 = (__chkstk_darwin)();
  v71 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v87 = sub_100007A70();
  v83 = *(v87 - 8);
  v17 = *(v83 + 64);
  v18 = __chkstk_darwin(v87);
  v86 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v62 - v20;
  v21 = *a1;
  v84 = a1[1];
  v22 = a1[3];
  v67 = a1[2];
  v23 = sub_100007EF0();
  v68 = sub_100007EE0();
  v80 = v23;
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v70 = v16;
  v66 = a2;
  v90 = *(a2 + 32);

  v69 = v22;

  sub_100001898(&qword_100010460, &qword_1000088B0);
  sub_100007E00();
  result = v89;
  v79 = v89[2];
  if (!v79)
  {
    v26 = &_swiftEmptyArrayStorage;
LABEL_20:

    v40 = v66;
    v90 = *(v66 + 16);
    sub_100001898(&qword_100010468, &qword_1000088B8);
    sub_100007E00();
    v41 = v89[2];

    v42 = v70;
    if (v41 > 1)
    {
      v90 = *(v40 + 16);
      sub_100007E00();
      if (v89[2])
      {
        v44 = v89[4];
        v43 = v89[5];

        if (v21 == v44 && v84 == v43)
        {

LABEL_27:
          v46 = v62;
          sub_100007E20();
          v47 = v64;
          v48 = v63;
          v49 = v65;
          (*(v64 + 104))(v63, enum case for LogoStyle.welcomeIcon(_:), v65);
          sub_100007B90();
          v51 = v50;
          (*(v47 + 8))(v48, v49);
          v52 = sub_100007D00();
          v53 = v74;
          v54 = v46 + *(v74 + 36);
          *v54 = v52;
          *(v54 + 8) = 0;
          *(v54 + 16) = v51 + 20.0;
          *(v54 + 24) = 0;
          *(v54 + 32) = 0;
          *(v54 + 40) = 0;
          sub_1000061F4(v46, v42);
          v55 = v53;
          v56 = 0;
LABEL_29:
          (*(v72 + 56))(v42, v56, 1, v55);
          v57 = v71;
          sub_1000065C0(v42, v71, &qword_100010510, &qword_100008970);
          v58 = v73;
          v59 = v84;
          *v73 = v21;
          v58[1] = v59;
          v60 = v69;
          v58[2] = v67;
          v58[3] = v60;
          v58[4] = v26;
          v61 = sub_100001898(&qword_100010518, &qword_100008978);
          sub_1000065C0(v57, v58 + *(v61 + 48), &qword_100010510, &qword_100008970);

          sub_100006628(v42, &qword_100010510, &qword_100008970);
          sub_100006628(v57, &qword_100010510, &qword_100008970);
        }

        v45 = sub_100007F70();

        if (v45)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    v56 = 1;
    v55 = v74;
    goto LABEL_29;
  }

  v25 = 0;
  v77 = (v9 + 8);
  v78 = v83 + 16;
  v75 = (v83 + 8);
  v85 = (v83 + 32);
  v26 = &_swiftEmptyArrayStorage;
  v76 = v21;
  while (v25 < *(result + 16))
  {
    v27 = v21;
    v28 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v29 = result;
    v30 = *(v83 + 72);
    (*(v83 + 16))(v88, result + v28 + v30 * v25, v87);
    sub_100007EE0();
    sub_100007ED0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v31 = v81;
    sub_100007A40();
    v32 = sub_100007AD0();
    v34 = v33;
    (*v77)(v31, v82);
    v21 = v27;
    if (v32 == v27 && v34 == v84)
    {

LABEL_14:
      v36 = *v85;
      (*v85)(v86, v88, v87);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v90 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100004DF0(0, *(v26 + 2) + 1, 1);
        v26 = v90;
      }

      v39 = *(v26 + 2);
      v38 = *(v26 + 3);
      if (v39 >= v38 >> 1)
      {
        sub_100004DF0(v38 > 1, v39 + 1, 1);
        v26 = v90;
      }

      *(v26 + 2) = v39 + 1;
      v36(&v26[v28 + v39 * v30], v86, v87);
      v21 = v76;
      goto LABEL_6;
    }

    v35 = sub_100007F70();

    if (v35)
    {
      goto LABEL_14;
    }

    (*v75)(v88, v87);
LABEL_6:
    result = v29;
    if (v79 == ++v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000033C4(uint64_t a1)
{
  v68 = a1;
  v69 = sub_100007BE0();
  v63 = *(v69 - 1);
  v1 = v63[8];
  __chkstk_darwin(v69);
  v62 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100007AE0();
  v60 = *(v75 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v75);
  v74 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100007A70();
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v78);
  v77 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100007B40();
  v70 = *(v72 - 1);
  v7 = *(v70 + 64);
  __chkstk_darwin(v72);
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100007C80();
  v9 = *(v61 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v61);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100007B10();
  v64 = *(v65 - 8);
  v13 = *(v64 + 64);
  __chkstk_darwin(v65);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007EF0();
  v66 = sub_100007EE0();
  v73 = v16;
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = v15;
  sub_100007B00();
  sub_100001898(&qword_100010448, &qword_100008898);
  v17 = sub_100007AB0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100008510;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v21 + v20, enum case for BackgroundRefreshReminderWindow.confirmation(_:), v17);
  v23(v22 + v19, enum case for BackgroundRefreshReminderWindow.expiry(_:), v17);
  v23(v22 + 2 * v19, enum case for BackgroundRefreshReminderWindow.normal(_:), v17);
  sub_100001898(&qword_100010450, &qword_1000088A0);
  v24 = sub_100007AC0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100008520;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v28 + v27, enum case for BackgroundRefreshUserPreference.allow(_:), v24);
  v30(v29 + v26, enum case for BackgroundRefreshUserPreference.unasked(_:), v24);
  v31 = v68;
  v82 = *(v68 + 8);
  v32 = *v68;
  v81 = *v68;
  if (v82 == 1)
  {
    v33 = v32;
  }

  else
  {

    sub_100007F10();
    v34 = sub_100007CE0();
    sub_100007BB0();

    sub_100007C70();
    swift_getAtKeyPath();
    sub_100006628(&v81, &qword_100010428, &qword_100008878);
    (*(v9 + 8))(v12, v61);
    v33 = v79;
  }

  v35 = v71;
  sub_100007B30();
  v36 = v67;
  v37 = sub_100007AF0();
  (*(v70 + 8))(v35, v72);

  v79 = *(v31 + 32);
  v80 = v37;
  sub_100001898(&qword_100010460, &qword_1000088B0);
  sub_100007E10();
  v79 = *(v31 + 32);
  sub_100007E00();
  v38 = v80;
  v39 = v80[2];
  if (v39)
  {
    *&v79 = &_swiftEmptyArrayStorage;
    sub_100004E10(0, v39, 0);
    v72 = *(v76 + 16);
    v40 = v79;
    v41 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v63 = v38;
    v42 = v38 + v41;
    v71 = *(v76 + 72);
    v76 += 16;
    v69 = (v76 - 8);
    v70 = v60 + 8;
    do
    {
      v72(v77, v42, v78);
      sub_100007EE0();
      sub_100007ED0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v43 = v74;
      v44 = v77;
      sub_100007A40();
      v45 = sub_100007AD0();
      v47 = v46;
      (*v70)(v43, v75);
      v48 = sub_100007A60();
      v50 = v49;
      (*v69)(v44, v78);

      *&v79 = v40;
      v52 = v40[2];
      v51 = v40[3];
      if (v52 >= v51 >> 1)
      {
        sub_100004E10((v51 > 1), v52 + 1, 1);
        v40 = v79;
      }

      v40[2] = v52 + 1;
      v53 = &v40[4 * v52];
      v53[4] = v45;
      v53[5] = v47;
      v53[6] = v48;
      v53[7] = v50;
      v42 += v71;
      --v39;
    }

    while (v39);

    v36 = v67;
    v31 = v68;
  }

  else
  {

    v40 = &_swiftEmptyArrayStorage;
  }

  v54 = sub_100005DB8(v40);

  v55 = *(v54 + 16);
  if (!v55)
  {
    goto LABEL_18;
  }

  v56 = sub_100004D08(*(v54 + 16), 0);
  v57 = sub_100005C38(&v79, v56 + 4, v55, v54);
  sub_100005E74();
  if (v57 != v55)
  {
    __break(1u);
LABEL_18:

    v56 = &_swiftEmptyArrayStorage;
  }

  v79 = *(v31 + 16);
  v80 = v56;
  sub_100001898(&qword_100010468, &qword_1000088B8);
  sub_100007E10();
  (*(v64 + 8))(v36, v65);
}

double sub_100003EF8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  *&result = sub_100001AA0(a1).n128_u64[0];
  return result;
}

uint64_t sub_100003F3C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_100007BA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100007B60();
  v8 = *(v40 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v40);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  sub_100007EF0();
  v37 = sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *a1;
  v15 = a1[1];
  (*(v4 + 104))(v7, enum case for LogoStyle.welcomeIcon(_:), v3);

  sub_100007B50();
  v16 = sub_100007CB0();
  v17 = v13;
  v36 = v13;
  v18 = v16;
  v42 = 1;
  sub_100004358(a1, &v53);
  v45 = *&v54[16];
  v46 = *&v54[32];
  v47 = *&v54[48];
  v48 = v54[64];
  v43 = v53;
  v44 = *v54;
  v50 = v54[64];
  v49[2] = *&v54[16];
  v49[3] = *&v54[32];
  v49[4] = *&v54[48];
  v49[0] = v53;
  v49[1] = *v54;
  sub_1000065C0(&v43, v51, &qword_100010578, &qword_100008A48);
  sub_100006628(v49, &qword_100010578, &qword_100008A48);
  *&v41[39] = v45;
  *&v41[55] = v46;
  *&v41[71] = v47;
  *&v41[7] = v43;
  v41[87] = v48;
  *&v41[23] = v44;
  v19 = v42;
  v20 = v8[2];
  v21 = v38;
  v22 = v17;
  v23 = v40;
  v20(v38, v22, v40);
  v42 = 1;
  v24 = v39;
  v20(v39, v21, v23);
  v25 = sub_100001898(&qword_100010580, &qword_100008A50);
  v26 = &v24[*(v25 + 48)];
  v51[0] = v18;
  v51[1] = 0;
  LOBYTE(v52[0]) = v19;
  *(v52 + 1) = *v41;
  *(&v52[1] + 1) = *&v41[16];
  *(&v52[2] + 1) = *&v41[32];
  *(&v52[5] + 1) = *&v41[80];
  *(&v52[4] + 1) = *&v41[64];
  *(&v52[3] + 1) = *&v41[48];
  v27 = v52[0];
  *v26 = v18;
  *(v26 + 1) = v27;
  v28 = v52[1];
  v29 = v52[2];
  *(v26 + 89) = *(&v52[4] + 9);
  v30 = v52[4];
  *(v26 + 4) = v52[3];
  *(v26 + 5) = v30;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  v31 = &v24[*(v25 + 64)];
  v32 = v42;
  *v31 = 0;
  v31[8] = v32;
  sub_1000065C0(v51, &v53, &qword_100010588, &qword_100008A58);
  v33 = v8[1];
  v33(v36, v23);
  *&v54[33] = *&v41[32];
  *&v54[49] = *&v41[48];
  v55 = *&v41[64];
  *&v54[1] = *v41;
  v53 = v18;
  v54[0] = v19;
  v56 = *&v41[80];
  *&v54[17] = *&v41[16];
  sub_100006628(&v53, &qword_100010588, &qword_100008A58);
  v33(v21, v23);
}

uint64_t sub_100004358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = *(a1 + 16);
  v42 = *(a1 + 24);
  sub_100006050();

  v4 = sub_100007D90();
  v6 = v5;
  v36 = a1;
  v8 = v7;
  sub_100007D20();
  v9 = sub_100007D80();
  v11 = v10;
  v13 = v12;

  sub_1000060A4(v4, v6, v8 & 1);

  sub_100007D30();
  v14 = sub_100007D60();
  v38 = v15;
  v39 = v14;
  v37 = v16;
  v40 = v17;
  sub_1000060A4(v9, v11, v13 & 1);

  sub_100006688(*(v36 + 32));
  v18 = sub_100007D90();
  v20 = v19;
  v22 = v21;
  sub_100007CD0();
  v23 = sub_100007D70();
  v25 = v24;
  LOBYTE(v4) = v26;
  sub_1000060A4(v18, v20, v22 & 1);

  sub_100007D50();
  v27 = sub_100007D80();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1000060A4(v23, v25, v4 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v40;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 2;
  *(a2 + 80) = 0;
  sub_100006B3C(v39, v38, v37 & 1);

  sub_100006B3C(v27, v29, v31 & 1);

  sub_1000060A4(v27, v29, v31 & 1);

  sub_1000060A4(v39, v38, v37 & 1);
}

uint64_t sub_100004680@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v3;
  v17 = *(v1 + 32);
  *a1 = sub_100007C90();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v4 = sub_100001898(&qword_100010568, &qword_100008A38);
  sub_100003F3C(v16, (a1 + *(v4 + 44)));
  v5 = sub_100007D00();
  sub_100007BF0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_100001898(&qword_100010570, &qword_100008A40);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_100004748@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100007C80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065C0(v2, v11, &qword_1000103D0, &qword_100008698);
  if (v12 == 1)
  {
    return sub_100004948(v11, a1);
  }

  sub_100007F10();
  v10 = sub_100007CE0();
  sub_100007BB0();

  sub_100007C70();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

void *sub_1000048B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000048FC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004948(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 sub_100004960(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000496C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000049B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100004A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100004A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100004AB8()
{
  result = qword_1000103D8;
  if (!qword_1000103D8)
  {
    sub_100004B70(&qword_1000103E0, &qword_100008790);
    sub_100004BB8();
    sub_100006C08(&qword_1000103F0, &qword_1000103F8, &qword_100008798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D8);
  }

  return result;
}

uint64_t sub_100004B70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004BB8()
{
  result = qword_1000103E8;
  if (!qword_1000103E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E8);
  }

  return result;
}

unint64_t sub_100004C2C()
{
  result = qword_100010400;
  if (!qword_100010400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010400);
  }

  return result;
}

void sub_100004C84(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100004C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001898(&qword_100010408, &qword_100008858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100004D08(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001898(&qword_100010470, &qword_1000088C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_100004D8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100007C50();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100004DC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100007C60();
}

size_t sub_100004DF0(size_t a1, int64_t a2, char a3)
{
  result = sub_100004E50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004E10(char *a1, int64_t a2, char a3)
{
  result = sub_100005028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004E30(char *a1, int64_t a2, char a3)
{
  result = sub_100005134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100004E50(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001898(&qword_100010520, &qword_100008980);
  v10 = *(sub_100007A70() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100007A70() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100005028(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001898(&qword_100010470, &qword_1000088C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100005134(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001898(&qword_1000105C0, &qword_100008A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005240(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  v12 = sub_100007FA0();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_100007F70() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_100007F70() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_10000569C(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_100005418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001898(&qword_100010480, &qword_1000088C8);
  result = sub_100007F40();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_100007F90();
      sub_100007E90();
      sub_100007E90();
      result = sub_100007FA0();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10000569C(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_100005418(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_100005868();
      goto LABEL_22;
    }

    sub_1000059D4(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  result = sub_100007FA0();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_100007F70(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_100007F70();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_100007F80();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *sub_100005868()
{
  v1 = v0;
  sub_100001898(&qword_100010480, &qword_1000088C8);
  v2 = *v0;
  v3 = sub_100007F30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000059D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001898(&qword_100010480, &qword_1000088C8);
  result = sub_100007F40();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_100007F90();

      sub_100007E90();
      sub_100007E90();
      result = sub_100007FA0();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_100005C38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100005DB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100005E80();
  result = sub_100007F00();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);

      sub_100005240(&v9, v8, v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_100005E80()
{
  result = qword_100010478;
  if (!qword_100010478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010478);
  }

  return result;
}

unint64_t sub_100005EDC()
{
  result = qword_100010498;
  if (!qword_100010498)
  {
    sub_100004B70(&qword_100010490, &qword_1000088D8);
    sub_100004B70(&qword_1000104A0, &qword_1000088E0);
    sub_100007B80();
    sub_100006C08(&qword_1000104A8, &qword_1000104A0, &qword_1000088E0);
    sub_100005FF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010498);
  }

  return result;
}

unint64_t sub_100005FF8()
{
  result = qword_1000104B0;
  if (!qword_1000104B0)
  {
    sub_100007B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104B0);
  }

  return result;
}

unint64_t sub_100006050()
{
  result = qword_1000104C0;
  if (!qword_1000104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104C0);
  }

  return result;
}

uint64_t sub_1000060A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1000060B8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 154) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1000060E0()
{
  result = qword_1000104E0;
  if (!qword_1000104E0)
  {
    sub_100004B70(&qword_1000104D8, &qword_100008930);
    sub_100006C08(&qword_1000104E8, &qword_1000104F0, &qword_100008938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104E0);
  }

  return result;
}

uint64_t sub_100006190()
{
  sub_100004C84(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000061F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001898(&qword_100010508, &qword_100008968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100006264(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000062C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000631C()
{
  result = qword_100010528;
  if (!qword_100010528)
  {
    sub_100004B70(&qword_100010440, &qword_100008890);
    sub_1000063A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010528);
  }

  return result;
}

unint64_t sub_1000063A8()
{
  result = qword_100010530;
  if (!qword_100010530)
  {
    sub_100004B70(&qword_100010408, &qword_100008858);
    sub_100006460();
    sub_100006C08(&qword_100010558, &qword_100010560, qword_1000089E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010530);
  }

  return result;
}

unint64_t sub_100006460()
{
  result = qword_100010538;
  if (!qword_100010538)
  {
    sub_100004B70(&qword_100010420, &qword_100008870);
    sub_1000064EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010538);
  }

  return result;
}

unint64_t sub_1000064EC()
{
  result = qword_100010540;
  if (!qword_100010540)
  {
    sub_100004B70(&qword_100010418, &qword_100008868);
    sub_100006C08(&qword_100010548, &qword_100010550, "4\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010540);
  }

  return result;
}

uint64_t sub_1000065C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t *sub_100006688(uint64_t a1)
{
  v51 = sub_100007A70();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v51);
  v50 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001898(&qword_100010590, &qword_100008A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = sub_100001898(&qword_100010598, &qword_100008A68);
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  __chkstk_darwin(v10);
  v41 = &v39 - v12;
  v13 = sub_100001898(&qword_1000105A0, &qword_100008A70);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v42 = &v39 - v16;
  v17 = *(a1 + 16);
  v18 = &_swiftEmptyArrayStorage;
  v46 = v15;
  v47 = v5;
  v45 = v19;
  if (v17)
  {
    v39 = v9;
    v40 = v6;
    v53 = &_swiftEmptyArrayStorage;
    sub_100004E30(0, v17, 0);
    v18 = v53;
    v21 = *(v2 + 16);
    v20 = v2 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v48 = *(v20 + 56);
    v49 = v21;
    v23 = (v20 - 8);
    do
    {
      v24 = v50;
      v25 = v51;
      v26 = v20;
      v49(v50, v22, v51);
      v27 = sub_100007A50();
      v29 = v28;
      (*v23)(v24, v25);
      v53 = v18;
      v31 = v18[2];
      v30 = v18[3];
      if (v31 >= v30 >> 1)
      {
        sub_100004E30((v30 > 1), v31 + 1, 1);
        v18 = v53;
      }

      v18[2] = v31 + 1;
      v32 = &v18[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
      v22 += v48;
      --v17;
      v20 = v26;
    }

    while (v17);
    v5 = v47;
    v9 = v39;
    v6 = v40;
  }

  v52 = v18;
  v33 = v43;
  v34 = v44;
  v35 = v41;
  (*(v43 + 104))(v41, enum case for ListFormatStyle.ListType.and<A, B>(_:), v44);
  (*(v6 + 104))(v9, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v5);
  sub_100001898(&qword_1000105A8, &qword_100008A78);
  sub_100006C08(&qword_1000105B0, &qword_1000105A8, &qword_100008A78);
  v36 = v42;
  sub_100007B20();
  (*(v6 + 8))(v9, v47);
  (*(v33 + 8))(v35, v34);
  sub_100006C08(&qword_1000105B8, &qword_1000105A0, &qword_100008A70);
  v37 = v46;
  sub_100007EA0();
  (*(v45 + 8))(v36, v37);

  return v53;
}

uint64_t sub_100006B3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100006B50()
{
  result = qword_1000105C8;
  if (!qword_1000105C8)
  {
    sub_100004B70(&qword_100010570, &qword_100008A40);
    sub_100006C08(&qword_1000105D0, &qword_1000105D8, qword_100008A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000105C8);
  }

  return result;
}

uint64_t sub_100006C08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004B70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100006F18()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [v1 subviews];

  sub_1000079F8(0, &unk_100010680, UIView_ptr);
  v4 = sub_100007EC0();

  if (v4 >> 62)
  {
    if (sub_100007F60())
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_100007F50();
LABEL_7:
    v6 = v5;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v18.origin.x = v10;
      v18.origin.y = v12;
      v18.size.width = v14;
      v18.size.height = v16;
      [v6 sizeThatFits:{CGRectGetWidth(v18), 1000.0}];
      [v0 setPreferredContentSize:?];

      return;
    }

    goto LABEL_14;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_10000718C()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v37[0] = swift_getKeyPath();
    v38 = 0;
    v39 = v5;
    sub_1000078E4(v37, &v36);
    v6 = objc_allocWithZone(sub_100001898(&qword_100010668, &qword_100008B20));
    v7 = sub_100007CC0();
    [v1 addChildViewController:v7];
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor:v10];

      v11 = [v7 view];
      if (v11)
      {
        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

        v12 = [v7 view];
        if (v12)
        {
          [v3 addSubview:v12];

          [v7 didMoveToParentViewController:v1];
          v13 = [v7 view];

          if (v13)
          {
            v14 = [v13 leadingAnchor];

            v15 = [v3 leadingAnchor];
            v16 = [v14 constraintEqualToAnchor:v15];

            v17 = [v7 view];
            if (v17)
            {
              v18 = [v17 topAnchor];

              v19 = [v3 topAnchor];
              v20 = [v18 constraintEqualToAnchor:v19];

              v21 = [v7 view];
              if (v21)
              {
                v22 = [v21 trailingAnchor];

                v23 = [v3 trailingAnchor];
                v24 = [v22 constraintEqualToAnchor:v23];

                v25 = [v7 view];
                if (v25)
                {
                  v26 = [v25 bottomAnchor];

                  v27 = [v3 bottomAnchor];
                  v28 = [v26 constraintEqualToAnchor:v27];

                  v29 = objc_opt_self();
                  sub_100001898(&qword_100010670, &qword_100008B28);
                  v30 = swift_allocObject();
                  *(v30 + 16) = xmmword_100008AA0;
                  *(v30 + 32) = v16;
                  *(v30 + 40) = v20;
                  *(v30 + 48) = v24;
                  *(v30 + 56) = v28;
                  sub_1000079F8(0, &qword_100010678, NSLayoutConstraint_ptr);
                  v31 = v16;
                  v32 = v20;
                  v33 = v24;
                  v34 = v28;
                  isa = sub_100007EB0().super.isa;

                  [v29 activateConstraints:isa];

                  sub_100007940(v37);
                  return;
                }

LABEL_17:
                __break(1u);
                return;
              }

LABEL_16:
              __break(1u);
              goto LABEL_17;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

id sub_100007830()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000079F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}