uint64_t sub_1000454AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004776C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000454D4(uint64_t a1)
{
  v2 = sub_1000476C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045510(uint64_t a1)
{
  v2 = sub_1000476C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BIABinaryChoiceButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000F0A60, &qword_1000B1D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v18[-v9 - 8];
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_1000476C4();
  sub_1000AC91C();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v19) = 0;
  sub_1000AC74C();
  if (!v2)
  {
    LOBYTE(v19) = *(v3 + 16);
    v18[0] = 1;
    sub_100047718();
    sub_1000AC75C();
    v14 = *(v3 + 5);
    v23[0] = *(v3 + 3);
    v23[1] = v14;
    v23[2] = *(v3 + 7);
    v24 = v3[9];
    v15 = *(v3 + 5);
    v19 = *(v3 + 3);
    v20 = v15;
    v21 = *(v3 + 7);
    v22 = v3[9];
    v25 = 2;
    sub_1000470F4(v23, v18);
    sub_100043908();
    sub_1000AC75C();
    sub_100047180(v19, *(&v19 + 1), v20);
  }

  return (*(v6 + 8))(v10, v5);
}

__n128 BIABinaryChoiceButton.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004787C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000457C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676E6973 && a2 == 0xE600000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68437972616E6962 && a2 == 0xEC0000006563696FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_10004592C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v68 = a2;
  v65 = sub_10000413C(&qword_1000F0C20, &qword_1000B3308);
  v67 = *(v65 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v65, v4);
  v70 = &v60 - v5;
  v62 = sub_10000413C(&qword_1000F0C28, &qword_1000B3310);
  v66 = *(v62 - 8);
  v6 = *(v66 + 64);
  __chkstk_darwin(v62, v7);
  v69 = &v60 - v8;
  v9 = sub_10000413C(&qword_1000F0C30, &qword_1000B3318);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v60 - v12;
  v14 = sub_10000413C(&qword_1000F0C38, &qword_1000B3320);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v60 - v17;
  v19 = sub_10000413C(&qword_1000F0C40, &qword_1000B3328);
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v60 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v73 = a1;
  sub_1000058D0(a1, v25);
  sub_1000436E4();
  v26 = v72;
  sub_1000AC90C();
  if (v26)
  {
    goto LABEL_10;
  }

  v72 = 0;
  v60 = v14;
  v28 = v69;
  v27 = v70;
  v29 = sub_1000AC71C();
  v30 = v29;
  v31 = *(v29 + 16);
  if (!v31 || ((v32 = *(v29 + 32), v31 == 1) ? (v33 = v32 == 4) : (v33 = 1), v33))
  {
    v34 = sub_1000AC5DC();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0) + 48);
    *v36 = &type metadata for BIAUserInteractionParadigm;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
    swift_willThrow();
    (*(v71 + 8))(v23, v19);
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    sub_10000E738(v73);
    return result;
  }

  if (*(v29 + 32) > 1u)
  {
    if (v32 == 2)
    {
      LOBYTE(v84) = 2;
      sub_10004380C();
      v40 = v72;
      sub_1000AC6BC();
      v41 = v68;
      if (!v40)
      {
        v72 = v30;
        LOBYTE(v84) = 0;
        v42 = v28;
        v43 = v62;
        v44 = sub_1000AC6FC();
        v53 = v52;
        v70 = v44;
        sub_10000413C(&qword_1000F09A0, &qword_1000B1CB8);
        LOBYTE(v104) = 1;
        sub_1000491D8(&qword_1000F0C50, sub_100049250);
        sub_1000AC70C();
        (*(v66 + 8))(v42, v43);
        (*(v71 + 8))(v23, v19);
        swift_unknownObjectRelease();
        *&v84 = v70;
        *(&v84 + 1) = v53;
        *&v85 = v74;
        sub_1000492A4(&v84);
LABEL_24:
        v115 = v90;
        v116 = v91;
        v117 = v92;
        v118 = v93;
        v111 = v86;
        v112 = v87;
        v113 = v88;
        v114 = v89;
        v109 = v84;
        v110 = v85;
        goto LABEL_25;
      }
    }

    else
    {
      LOBYTE(v84) = 3;
      sub_100043754();
      v48 = v27;
      v49 = v72;
      sub_1000AC6BC();
      v41 = v68;
      if (!v49)
      {
        v72 = v30;
        v120 = 0;
        v50 = sub_100049164();
        v51 = v65;
        v69 = v50;
        sub_1000AC70C();
        v101 = v106;
        v102 = v107;
        v103 = v108;
        v99 = v104;
        v100 = v105;
        v119 = 1;
        sub_1000AC70C();
        v54 = (v71 + 8);
        (*(v67 + 8))(v48, v51);
        (*v54)(v23, v19);
        swift_unknownObjectRelease();
        v80 = v95;
        v81 = v96;
        v82 = v97;
        v83 = v98;
        v76 = v101;
        v77 = v102;
        v78 = v103;
        v79 = v94;
        v74 = v99;
        v75 = v100;
        v84 = v99;
        v85 = v100;
        v88 = v103;
        v89 = v94;
        v86 = v101;
        v87 = v102;
        v92 = v97;
        v93 = v98;
        v90 = v95;
        v91 = v96;
        sub_1000491B8(&v84);
        goto LABEL_24;
      }
    }

LABEL_21:
    (*(v71 + 8))(v23, v19);
    goto LABEL_9;
  }

  if (*(v29 + 32))
  {
    LOBYTE(v84) = 1;
    sub_1000438B4();
    v45 = v72;
    sub_1000AC6BC();
    if (!v45)
    {
      sub_100048F98();
      v46 = v64;
      sub_1000AC70C();
      v47 = v71;
      (*(v63 + 8))(v13, v46);
      (*(v47 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v84 = v74;
      v85 = v75;
      v86 = v76;
      *&v87 = v77;
      sub_1000492C4(&v84);
      v115 = v90;
      v116 = v91;
      v117 = v92;
      v118 = v93;
      v111 = v86;
      v112 = v87;
      v113 = v88;
      v114 = v89;
      v109 = v84;
      v110 = v85;
      v41 = v68;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  LOBYTE(v84) = 0;
  sub_10004395C();
  v39 = v72;
  sub_1000AC6BC();
  if (v39)
  {
    (*(v71 + 8))(v23, v19);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  (*(v61 + 8))(v18, v60);
  (*(v71 + 8))(v23, v19);
  swift_unknownObjectRelease();
  sub_1000492E0(&v109);
  v41 = v68;
LABEL_25:
  sub_10000E738(v73);
  v55 = v116;
  v41[6] = v115;
  v41[7] = v55;
  v56 = v118;
  v41[8] = v117;
  v41[9] = v56;
  v57 = v112;
  v41[2] = v111;
  v41[3] = v57;
  v58 = v114;
  v41[4] = v113;
  v41[5] = v58;
  result = *&v109;
  v59 = v110;
  *v41 = v109;
  v41[1] = v59;
  return result;
}

uint64_t sub_10004636C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0C10, &qword_1000B3300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_1000465A4();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  v34 = 1;
  sub_100049110();
  sub_1000AC6EC();
  v13 = v28;
  if (v28)
  {
    v14 = v31;
    v25 = v32;
    v26 = v30;
    v15 = v29;
    v24 = v27;
    v16 = v10;
    v17 = v33;
    (*(v6 + 8))(v16, v5);
    v18 = v14;
    v19 = v15 & 1 | 0x8000000000000000;
    v20 = v24;
    v21 = v25;
  }

  else
  {
    LOBYTE(v27) = 0;
    v20 = sub_1000AC6FC();
    v13 = v23;
    (*(v6 + 8))(v10, v5);
    v19 = 0;
    v26 = 0;
    v18 = 0;
    v21 = 0;
    v17 = 0;
  }

  result = sub_10000E738(a1);
  *a2 = v20;
  a2[1] = v13;
  v22 = v26;
  a2[2] = v19;
  a2[3] = v22;
  a2[4] = v18;
  a2[5] = v21;
  a2[6] = v17;
  return result;
}

unint64_t sub_1000465A4()
{
  result = qword_1000F09E8;
  if (!qword_1000F09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09E8);
  }

  return result;
}

unint64_t sub_1000465F8()
{
  result = qword_1000F09F0;
  if (!qword_1000F09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09F0);
  }

  return result;
}

unint64_t sub_10004664C()
{
  result = qword_1000F09F8;
  if (!qword_1000F09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09F8);
  }

  return result;
}

unint64_t sub_1000466A0()
{
  result = qword_1000F0A00;
  if (!qword_1000F0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A00);
  }

  return result;
}

unint64_t sub_1000466F4()
{
  result = qword_1000F0A20;
  if (!qword_1000F0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A20);
  }

  return result;
}

unint64_t sub_100046748()
{
  result = qword_1000F0A28;
  if (!qword_1000F0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A28);
  }

  return result;
}

unint64_t sub_10004679C()
{
  result = qword_1000F0A30;
  if (!qword_1000F0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A30);
  }

  return result;
}

uint64_t sub_1000467F0(uint64_t *a1)
{
  v32 = sub_10000413C(&qword_1000F0BF8, &qword_1000B32E0);
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  __chkstk_darwin(v32, v3);
  v5 = v28 - v4;
  v6 = sub_10000413C(&qword_1000F0C00, &qword_1000B32E8);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6, v8);
  v10 = v28 - v9;
  v11 = sub_10000413C(&qword_1000F0C08, &unk_1000B32F0);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  __chkstk_darwin(v11, v13);
  v15 = v28 - v14;
  v16 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_1000466F4();
  v17 = v34;
  sub_1000AC90C();
  if (v17)
  {
    return sub_10000E738(a1);
  }

  v29 = v6;
  v34 = a1;
  v19 = v31;
  v18 = v32;
  v20 = v15;
  v21 = sub_1000AC71C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1000AC5DC();
    swift_allocError();
    v25 = v24;
    v26 = *(sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0) + 48);
    *v25 = &type metadata for BIADeterminateResponseType;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
    swift_willThrow();
    (*(v33 + 8))(v20, v11);
    swift_unknownObjectRelease();
    a1 = v34;
    return sub_10000E738(a1);
  }

  v28[1] = v21;
  v35 = *(v21 + 32);
  if (v35)
  {
    v37 = 1;
    sub_100046748();
    sub_1000AC6BC();
    v22 = v33;
    (*(v30 + 8))(v5, v18);
  }

  else
  {
    v36 = 0;
    sub_10004679C();
    sub_1000AC6BC();
    v22 = v33;
    (*(v19 + 8))(v10, v29);
  }

  (*(v22 + 8))(v15, v11);
  swift_unknownObjectRelease();
  sub_10000E738(v34);
  return v35;
}

unint64_t sub_100046C2C()
{
  result = qword_1000F0A40;
  if (!qword_1000F0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A40);
  }

  return result;
}

unint64_t sub_100046C80()
{
  result = qword_1000F0A48;
  if (!qword_1000F0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A48);
  }

  return result;
}

uint64_t sub_100046CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100046E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0BE8, &qword_1000B32D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_100046C2C();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  v31 = 0;
  v12 = sub_1000AC6FC();
  v14 = v13;
  v26 = v12;
  v29 = 1;
  sub_1000490BC();
  sub_1000AC70C();
  v15 = v30;
  v28 = 2;
  v16 = sub_1000AC6FC();
  HIDWORD(v23) = v15;
  v24 = v16;
  v25 = v17;
  v27 = 3;
  v18 = sub_1000AC6FC();
  v20 = v19;
  (*(v6 + 8))(v10, v5);

  v21 = v25;

  sub_10000E738(a1);

  *a2 = v26;
  *(a2 + 8) = v14;
  *(a2 + 16) = BYTE4(v23);
  *(a2 + 24) = v24;
  *(a2 + 32) = v21;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_10004712C()
{
  result = qword_1000F0A58;
  if (!qword_1000F0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A58);
  }

  return result;
}

uint64_t sub_100047180(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a3 < 0)
  {
  }

  return result;
}

uint64_t sub_1000471E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100047300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0BE0, &qword_1000B32D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_10004712C();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  LOBYTE(v40[0]) = 0;
  v12 = sub_1000AC6FC();
  v14 = v13;
  v33 = a2;
  v15 = v12;
  LOBYTE(v40[0]) = 1;
  v16 = sub_1000AC6FC();
  *(&v32 + 1) = v17;
  *&v32 = v16;
  v45 = 2;
  sub_100048F98();
  sub_1000AC70C();
  (*(v6 + 8))(v10, v5);
  v31 = v41;
  v18 = v42;
  v30 = *(&v41 + 1);
  v19 = *(&v42 + 1);
  v29 = *(&v43 + 1);
  v20 = v43;
  v28 = v44;
  *&v34 = v15;
  *(&v34 + 1) = v14;
  v21 = v32;
  v35 = v32;
  v22 = *(&v32 + 1);
  v36 = v41;
  v37 = v42;
  v38 = v43;
  v39 = v44;
  sub_100049054(&v34, v40);
  sub_10000E738(a1);
  v40[0] = v15;
  v40[1] = v14;
  v40[2] = v21;
  v40[3] = v22;
  v40[4] = v31;
  v40[5] = v30;
  v40[6] = v18;
  v40[7] = v19;
  v40[8] = v20;
  v40[9] = v29;
  v40[10] = v28;
  result = sub_10004908C(v40);
  v24 = v37;
  v25 = v33;
  *(v33 + 32) = v36;
  *(v25 + 48) = v24;
  *(v25 + 64) = v38;
  *(v25 + 80) = v39;
  v26 = v35;
  *v25 = v34;
  *(v25 + 16) = v26;
  return result;
}

uint64_t _s8Business19BIABinaryChoiceRoleO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA680;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000476C4()
{
  result = qword_1000F0A68;
  if (!qword_1000F0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A68);
  }

  return result;
}

unint64_t sub_100047718()
{
  result = qword_1000F0A70;
  if (!qword_1000F0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A70);
  }

  return result;
}

uint64_t sub_10004776C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10004787C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000F0BC8, &qword_1000B32C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_1000476C4();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  LOBYTE(v32[0]) = 0;
  v12 = sub_1000AC6FC();
  v14 = v13;
  v15 = v12;
  LOBYTE(v27) = 1;
  sub_100048F44();
  sub_1000AC70C();
  v45 = LOBYTE(v32[0]);
  v46 = 2;
  sub_100048F98();
  sub_1000AC70C();
  (*(v6 + 8))(v10, v5);
  v16 = v42;
  v26 = v41;
  v17 = *(&v42 + 1);
  v25 = *(&v43 + 1);
  v18 = v43;
  v23 = *(&v44 + 1);
  v24 = v44;
  *&v27 = v15;
  *(&v27 + 1) = v14;
  v19 = v45;
  LOBYTE(v28) = v45;
  *(&v28 + 1) = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  sub_100048FEC(&v27, v32);
  sub_10000E738(a1);
  v32[0] = v15;
  v32[1] = v14;
  v33 = v19;
  v34 = v26;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = v25;
  v39 = v24;
  v40 = v23;
  result = sub_100049024(v32);
  v21 = v30;
  a2[2] = v29;
  a2[3] = v21;
  a2[4] = v31;
  v22 = v28;
  *a2 = v27;
  a2[1] = v22;
  return result;
}

unint64_t sub_100047B9C()
{
  result = qword_1000F0A78;
  if (!qword_1000F0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A78);
  }

  return result;
}

unint64_t sub_100047BF4()
{
  result = qword_1000F0A80;
  if (!qword_1000F0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A80);
  }

  return result;
}

uint64_t sub_100047C54(uint64_t a1)
{
  if (((*(a1 + 120) >> 61) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 120) >> 61) & 3;
  }
}

__n128 sub_100047C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100047C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100047CEC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 160) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 4 * -a2;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0;
      return result;
    }

    *(a1 + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100047D78(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 120) & 0x8000000000000001 | (a2 << 61);
    *(result + 96) &= 3uLL;
    *(result + 120) = v2;
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0x6000000000000000;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
  }

  return result;
}

uint64_t sub_100047DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100047E34(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100047EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100047F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100047F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100047FD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100047FEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100048034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004818C()
{
  result = qword_1000F0A88;
  if (!qword_1000F0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A88);
  }

  return result;
}

unint64_t sub_1000481E4()
{
  result = qword_1000F0A90;
  if (!qword_1000F0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A90);
  }

  return result;
}

unint64_t sub_10004823C()
{
  result = qword_1000F0A98;
  if (!qword_1000F0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0A98);
  }

  return result;
}

unint64_t sub_100048294()
{
  result = qword_1000F0AA0;
  if (!qword_1000F0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AA0);
  }

  return result;
}

unint64_t sub_1000482EC()
{
  result = qword_1000F0AA8;
  if (!qword_1000F0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AA8);
  }

  return result;
}

unint64_t sub_100048344()
{
  result = qword_1000F0AB0;
  if (!qword_1000F0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AB0);
  }

  return result;
}

unint64_t sub_10004839C()
{
  result = qword_1000F0AB8;
  if (!qword_1000F0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AB8);
  }

  return result;
}

unint64_t sub_1000483F4()
{
  result = qword_1000F0AC0;
  if (!qword_1000F0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AC0);
  }

  return result;
}

unint64_t sub_10004844C()
{
  result = qword_1000F0AC8;
  if (!qword_1000F0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AC8);
  }

  return result;
}

unint64_t sub_1000484A4()
{
  result = qword_1000F0AD0;
  if (!qword_1000F0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AD0);
  }

  return result;
}

unint64_t sub_1000484FC()
{
  result = qword_1000F0AD8;
  if (!qword_1000F0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AD8);
  }

  return result;
}

unint64_t sub_100048554()
{
  result = qword_1000F0AE0;
  if (!qword_1000F0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AE0);
  }

  return result;
}

unint64_t sub_1000485AC()
{
  result = qword_1000F0AE8;
  if (!qword_1000F0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AE8);
  }

  return result;
}

unint64_t sub_100048604()
{
  result = qword_1000F0AF0;
  if (!qword_1000F0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AF0);
  }

  return result;
}

unint64_t sub_10004865C()
{
  result = qword_1000F0AF8;
  if (!qword_1000F0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0AF8);
  }

  return result;
}

unint64_t sub_1000486B4()
{
  result = qword_1000F0B00;
  if (!qword_1000F0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B00);
  }

  return result;
}

unint64_t sub_10004870C()
{
  result = qword_1000F0B08;
  if (!qword_1000F0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B08);
  }

  return result;
}

unint64_t sub_100048764()
{
  result = qword_1000F0B10;
  if (!qword_1000F0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B10);
  }

  return result;
}

unint64_t sub_1000487BC()
{
  result = qword_1000F0B18;
  if (!qword_1000F0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B18);
  }

  return result;
}

unint64_t sub_100048814()
{
  result = qword_1000F0B20;
  if (!qword_1000F0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B20);
  }

  return result;
}

unint64_t sub_10004886C()
{
  result = qword_1000F0B28;
  if (!qword_1000F0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B28);
  }

  return result;
}

unint64_t sub_1000488C4()
{
  result = qword_1000F0B30;
  if (!qword_1000F0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B30);
  }

  return result;
}

unint64_t sub_10004891C()
{
  result = qword_1000F0B38;
  if (!qword_1000F0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B38);
  }

  return result;
}

unint64_t sub_100048974()
{
  result = qword_1000F0B40;
  if (!qword_1000F0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B40);
  }

  return result;
}

unint64_t sub_1000489CC()
{
  result = qword_1000F0B48;
  if (!qword_1000F0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B48);
  }

  return result;
}

unint64_t sub_100048A24()
{
  result = qword_1000F0B50;
  if (!qword_1000F0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B50);
  }

  return result;
}

unint64_t sub_100048A7C()
{
  result = qword_1000F0B58;
  if (!qword_1000F0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B58);
  }

  return result;
}

unint64_t sub_100048AD4()
{
  result = qword_1000F0B60;
  if (!qword_1000F0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B60);
  }

  return result;
}

unint64_t sub_100048B2C()
{
  result = qword_1000F0B68;
  if (!qword_1000F0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B68);
  }

  return result;
}

unint64_t sub_100048B84()
{
  result = qword_1000F0B70;
  if (!qword_1000F0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B70);
  }

  return result;
}

unint64_t sub_100048BDC()
{
  result = qword_1000F0B78;
  if (!qword_1000F0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B78);
  }

  return result;
}

unint64_t sub_100048C34()
{
  result = qword_1000F0B80;
  if (!qword_1000F0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B80);
  }

  return result;
}

unint64_t sub_100048C8C()
{
  result = qword_1000F0B88;
  if (!qword_1000F0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B88);
  }

  return result;
}

unint64_t sub_100048CE4()
{
  result = qword_1000F0B90;
  if (!qword_1000F0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B90);
  }

  return result;
}

unint64_t sub_100048D3C()
{
  result = qword_1000F0B98;
  if (!qword_1000F0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B98);
  }

  return result;
}

unint64_t sub_100048D94()
{
  result = qword_1000F0BA0;
  if (!qword_1000F0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA0);
  }

  return result;
}

unint64_t sub_100048DEC()
{
  result = qword_1000F0BA8;
  if (!qword_1000F0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA8);
  }

  return result;
}

unint64_t sub_100048E44()
{
  result = qword_1000F0BB0;
  if (!qword_1000F0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BB0);
  }

  return result;
}

unint64_t sub_100048E9C()
{
  result = qword_1000F0BB8;
  if (!qword_1000F0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BB8);
  }

  return result;
}

unint64_t sub_100048EF0()
{
  result = qword_1000F0BC0;
  if (!qword_1000F0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BC0);
  }

  return result;
}

unint64_t sub_100048F44()
{
  result = qword_1000F0BD0;
  if (!qword_1000F0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD0);
  }

  return result;
}

unint64_t sub_100048F98()
{
  result = qword_1000F0BD8;
  if (!qword_1000F0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD8);
  }

  return result;
}

unint64_t sub_1000490BC()
{
  result = qword_1000F0BF0;
  if (!qword_1000F0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BF0);
  }

  return result;
}

unint64_t sub_100049110()
{
  result = qword_1000F0C18;
  if (!qword_1000F0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C18);
  }

  return result;
}

unint64_t sub_100049164()
{
  result = qword_1000F0C48;
  if (!qword_1000F0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C48);
  }

  return result;
}

uint64_t sub_1000491B8(uint64_t result)
{
  v1 = *(result + 120) & 0x8000000000000001 | 0x4000000000000000;
  *(result + 96) &= 3uLL;
  *(result + 120) = v1;
  return result;
}

uint64_t sub_1000491D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000041E8(&qword_1000F09A0, &qword_1000B1CB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100049250()
{
  result = qword_1000F0C58;
  if (!qword_1000F0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C58);
  }

  return result;
}

uint64_t sub_1000492A4(uint64_t result)
{
  v1 = *(result + 120) & 0x8000000000000001 | 0x2000000000000000;
  *(result + 96) &= 3uLL;
  *(result + 120) = v1;
  return result;
}

uint64_t sub_1000492C4(uint64_t result)
{
  v1 = *(result + 120) & 0x8000000000000001;
  *(result + 96) &= 3uLL;
  *(result + 120) = v1;
  return result;
}

double sub_1000492E0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x6000000000000000;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t sub_100049334(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1000AC06C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_1000493F4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for IMBAuthenticationViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  if ([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject] && (objc_opt_self(), v1 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v1))
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor:v4];

      [v0 setModalPresentationStyle:5];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100049D58();
    sub_100049E2C();
  }
}

void sub_100049558()
{
  if ([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v1)
    {
      v2 = [v0 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 window];

        if (v4)
        {
          sub_10004967C(v4);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  sub_10004A1FC();
}

void sub_10004967C(void *a1)
{
  v2 = v1;
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow);
  *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow) = a1;
  v11 = a1;

  v12 = [v11 _rootSheetPresentationController];
  if (v12)
  {
    v13 = v12;
    [v12 _setShouldScaleDownBehindDescendantSheets:0];

    v14 = *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
    if (v14)
    {
      v15 = v14;
      v16 = [objc_msgSend(v15 "authenticationRequest")];
      swift_unknownObjectRelease();
      v17 = [v16 authenticationSessionURL];
      swift_unknownObjectRelease();
      sub_1000AB6AC();

      sub_1000AC06C();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = objc_allocWithZone(ASWebAuthenticationSession);

      sub_1000AB67C(v20);
      v22 = v21;
      v23 = sub_1000AC02C();

      aBlock[4] = sub_10004CEF4;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004BA28;
      aBlock[3] = &unk_1000DCAA8;
      v24 = _Block_copy(aBlock);
      v25 = [v19 initWithURL:v22 callbackURLScheme:v23 completionHandler:v24];
      _Block_release(v24);

      [v25 setPresentationContextProvider:v2];
      [v25 setPrefersEphemeralWebBrowserSession:1];
      v26 = *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session);
      *(v2 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session) = v25;
      v27 = v25;

      [v27 start];
      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000499A8(uint64_t a1)
{
  v2 = sub_1000AB57C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v32 - v11;
  v13 = sub_1000AB6EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v32 - v21;
  sub_10003C3C8(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10004B9C0(v12);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v25 = Strong + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v26 = *(v25 + 8);
          ObjectType = swift_getObjectType();
          v28 = *(v26 + 16);
          v29 = type metadata accessor for IMBAuthenticationViewController();
          v28(v24, v29, ObjectType, v26);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      (*(v14 + 16))(v19, v22, v13);
      sub_1000AB55C();
      sub_10004AE98();

      (*(v3 + 8))(v7, v2);
    }

    (*(v14 + 8))(v22, v13);
  }
}

id sub_100049D58()
{
  v1 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  [*&v0[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController] setDelegate:v0];
  [v0 addChildViewController:*&v0[v1]];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = [*&v0[v1] view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  [v3 addSubview:result];

  v5 = *&v0[v1];

  return [v5 didMoveToParentViewController:v0];
}

void sub_100049E2C()
{
  v1 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  v2 = [*&v0[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B04D0;
  v5 = [*&v0[v1] view];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = sub_10002CE60();
  v12 = 20.0;
  if ((v11 & 0xFE) == 0)
  {
    v12 = 0.0;
  }

  v13 = [v7 constraintEqualToAnchor:v10 constant:v12];

  *(v4 + 32) = v13;
  v14 = [*&v0[v1] view];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 leftAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 leftAnchor];

  v20 = sub_10002CE60();
  v21 = 20.0;
  if ((v20 & 0xFE) == 0)
  {
    v21 = 0.0;
  }

  v22 = [v16 constraintEqualToAnchor:v19 constant:v21];

  *(v4 + 40) = v22;
  v23 = [*&v0[v1] view];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 rightAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [v26 rightAnchor];

  v29 = sub_10002CE60();
  v30 = -0.0;
  if ((v29 & 0xFE) != 0)
  {
    v30 = -20.0;
  }

  v31 = [v25 constraintEqualToAnchor:v28 constant:v30];

  *(v4 + 48) = v31;
  v32 = [*&v0[v1] view];
  if (!v32)
  {
    goto LABEL_26;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v0 view];
  if (!v35)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = objc_opt_self();
  v38 = [v36 bottomAnchor];

  v39 = [v34 constraintEqualToAnchor:v38];
  *(v4 + 56) = v39;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v37 activateConstraints:isa];
}

void *sub_10004A1FC()
{
  v1 = v0;
  v2 = sub_1000AB6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v23 - v10;
  result = *(v1 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
  if (result)
  {
    v13 = [objc_msgSend(result "authenticationRequest")];
    swift_unknownObjectRelease();
    v14 = [v13 authenticationSessionURL];
    swift_unknownObjectRelease();
    sub_1000AB6AC();

    (*(v3 + 32))(v11, v8, v2);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000AF0E0;
    v16 = sub_1000AB64C();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10000587C();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_1000ABA5C();

    v19 = *(v1 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController);
    sub_1000AB67C(v20);
    v22 = v21;
    [v19 loadURL:v21];

    return (*(v3 + 8))(v11, v2);
  }

  return result;
}

uint64_t sub_10004A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v8 = sub_1000AC7FC();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10000587C();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1000ABA5C();

    swift_beginAccess();
    v11 = *(a4 + 16);
    *(a4 + 16) = a3;
  }

  else
  {
    swift_beginAccess();
    v16 = *(a5 + 24);
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
  }
}

void sub_10004A610()
{
  v1 = v0;
  v2 = type metadata accessor for URLHelper();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v63 = &v59 - v9;
  v65 = sub_1000AB6EC();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v65, v12);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v60 = &v59 - v16;
  v17 = objc_allocWithZone(BCServerSideOAuth2Response);
  sub_1000AB67C(v18);
  v20 = v19;
  v21 = [v17 initWithRedirectURI:v19];

  if ([v21 status] == 3)
  {
    v22 = [v21 error];
    if (!v22)
    {
      goto LABEL_5;
    }
  }

  v23 = v21;
  v24 = sub_10004BB6C(v23, v1);
  v64 = v10;
  v25 = v21;
  v26 = v24;
  v28 = v27;

  v29 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v30 = v1;
  v31 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v32 = BCMessageRootAuthenticateKey;
  v67 = v29;
  v68 = v26;
  v69 = v31;
  v70 = v28;
  v71 = BCMessageRootAuthenticateKey;
  v72 = v23;
  v33 = v23;
  v34 = v29;
  v35 = v26;
  v36 = v31;
  v37 = v28;
  v38 = v32;
  sub_100036FA8(1);

  v1 = v30;
  v21 = v25;
  v10 = v64;

LABEL_5:
  v39 = v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = *(v39 + 8);
      ObjectType = swift_getObjectType();
      v42 = *(v40 + 16);
      v43 = type metadata accessor for IMBAuthenticationViewController();
      v42(v1, v43, ObjectType, v40);
      swift_unknownObjectRelease();
    }

    v44 = [objc_opt_self() isRunningInMacCatalyst];
    v45 = v65;
    if (v44)
    {
      v46 = v63;
      sub_1000AB6DC();
      if ((*(v10 + 48))(v46, 1, v45) == 1)
      {
        sub_10004B9C0(v46);
      }

      else
      {
        v47 = v60;
        (*(v10 + 32))(v60, v46, v45);
        v48 = v61;
        sub_10004EA70(v61);
        sub_10004E400(v47, 1, sub_10004ABC4, 0);
        sub_10001E7C8(v48);
        (*(v10 + 8))(v47, v45);
      }
    }

    v49 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
    if (![v49 rootObject])
    {
      goto LABEL_17;
    }

    v66 = &OBJC_PROTOCOL___BCOAuth2RequestProtocol;
    v50 = swift_dynamicCastObjCProtocolConditional();
    if (v50)
    {
      v51 = v50;
      v52 = kBCAnalyticsMessagesForBusinessOAuth;
      v53 = v10;
      v54 = [v49 version];
      v55 = [objc_msgSend(v51 "oauth2")];
      swift_unknownObjectRelease();
      v56 = v62;
      sub_1000AB6AC();

      URL.displayDomainString.getter();
      (*(v53 + 8))(v56, v45);
      v57 = sub_1000AC02C();

      [v21 status];
      v58 = NSStringFromServerSideAuthStatus();
      if (!v58)
      {
        sub_1000AC06C();
        v58 = sub_1000AC02C();
      }

      [objc_opt_self() logEventWithName:v52 version:v54 authDomain:v57 status:v58];
      swift_unknownObjectRelease();

LABEL_17:
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004ABC4(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1000AF0E0;
    if (a2)
    {
      swift_getErrorValue();
      a2 = sub_1000AC7FC();
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_10000587C();
    if (v5)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    v7 = 0xE000000000000000;
    if (v5)
    {
      v7 = v5;
    }

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    sub_1000ABA5C();
  }

  return result;
}

id sub_10004ACFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
  if (!v1)
  {
    return 0;
  }

  v2 = [objc_msgSend(v1 "authenticationRequest")];
  swift_unknownObjectRelease();
  sub_1000AB67C(v3);
  v5 = v4;
  v6 = [v2 shouldHandleRedirectURI:v4];
  swift_unknownObjectRelease();

  return v6;
}

void sub_10004AE98()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = aBlock - v9;
  v11 = sub_1000AB6EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  v17 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager;
  v18 = *&v0[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager];
  if (v18)
  {
    if ([v18 authenticationRequest] && (objc_opt_self(), v19 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v19))
    {
      sub_1000AB56C();
      v20 = *(v12 + 48);
      if (v20(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v16, v10, v11);
        sub_10004A610();
        (*(v12 + 8))(v16, v11);
        return;
      }

      sub_10004B9C0(v10);
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000AF0E0;
      sub_1000AB56C();
      if (v20(v7, 1, v11) == 1)
      {
        sub_10004B9C0(v7);
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v22 = sub_1000AB64C();
        v23 = v30;
        (*(v12 + 8))(v7, v11);
      }

      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_10000587C();
      if (v23)
      {
        v31 = v22;
      }

      else
      {
        v31 = 0;
      }

      v32 = 0xE000000000000000;
      if (v23)
      {
        v32 = v23;
      }

      *(v21 + 32) = v31;
      *(v21 + 40) = v32;
      sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
      v26 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();
    }

    else
    {
      v24 = *&v0[v17];
      if (!v24)
      {
        return;
      }

      v25 = v24;
      v26 = sub_1000AB53C();
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      aBlock[4] = sub_10004B9A0;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100049334;
      aBlock[3] = &unk_1000DC9B8;
      v28 = _Block_copy(aBlock);
      v29 = v1;

      [v25 fetchTokenWithRequest:v26 completion:v28];
      _Block_release(v28);
    }
  }
}

void sub_10004B2EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    swift_errorRetain();
    v7 = sub_1000AC7FC();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10000587C();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
    v10 = sub_1000AC3FC();
    sub_1000AC2BC();
    sub_1000ABA5C();
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0E0;
  v12 = sub_10000587C();
  v13 = 7104878;
  if (a2)
  {
    v13 = 0x657463616465723CLL;
  }

  v14 = 0xEA00000000003E64;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v12;
  if (!a2)
  {
    v14 = 0xE300000000000000;
  }

  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  sub_1000ABA5C();

  sub_10004C41C(a1, a2, a3);
}

void sub_10004B844()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow);
}

id sub_10004B8A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBAuthenticationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004B968()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B9A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B9C0(uint64_t a1)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004BA28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_1000AB6AC();
    v13 = sub_1000AB6EC();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_1000AB6EC();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_10004B9C0(v10);
}

id sub_10004BB6C(void *a1, uint64_t a2)
{
  v54 = *(a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v3 = [v54 selectedMessage];
  v4 = [v3 session];

  if (!v4)
  {
    v4 = [objc_allocWithZone(MSSession) init];
  }

  v56 = v4;
  v58 = [objc_allocWithZone(MSMessage) initWithSession:v4];
  v5 = *(a2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v6 = [v5 replyMessage];
  v7 = [v5 receivedMessage];
  v8 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v57 = v7;
  if (v6)
  {
    v55 = [v6 style];
    v9 = [v6 imageIdentifier];
    if (v9)
    {
      v10 = v9;
      sub_1000AC06C();
      v12 = v11;

      goto LABEL_16;
    }

    if (!v7)
    {
      v12 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if (!v7)
    {
      v55 = BCBubbleViewStyleIcon;
      v12 = 0;
      goto LABEL_25;
    }

    v55 = [v7 style];
  }

  v13 = [v7 imageIdentifier];
  if (v13)
  {
    v14 = v13;
    sub_1000AC06C();
    v12 = v15;

    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if (!v6)
    {
LABEL_19:
      v19 = [v7 imageDescription];
      if (v19)
      {
        v20 = v19;
        sub_1000AC06C();
        v7 = v21;

        if (!v6)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v7 = 0;
        if (!v6)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_16:
  v16 = [v6 imageDescription];
  if (v16)
  {
    v17 = v16;
    sub_1000AC06C();
    v7 = v18;

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_19;
  }

LABEL_23:
  v22 = [v6 title];
  if (v22)
  {
    v52 = v7;
    v23 = v22;
    sub_1000AC06C();

    goto LABEL_26;
  }

LABEL_25:
  v52 = v7;
  v24 = [objc_opt_self() mainBundle];
  v50._countAndFlagsBits = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD000000000000026;
  v59._object = 0x80000001000B9470;
  v62.value._countAndFlagsBits = 0;
  v62.value._object = 0;
  v25.super.isa = v24;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1000AB61C(v59, v62, v25, v64, v50);

  if (!v6)
  {
    v53 = v12;
    v29 = 0;
    v31 = 0;
    v26 = a1;
    goto LABEL_30;
  }

LABEL_26:
  v26 = a1;
  v53 = v12;
  v27 = [v6 subtitle];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1000AC06C();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

LABEL_30:
  v32 = [v26 error];
  if (v32)
  {

LABEL_33:

    v33 = [objc_opt_self() mainBundle];
    v50._countAndFlagsBits = 0xE000000000000000;
    v34._object = 0x80000001000B94E0;
    v34._countAndFlagsBits = 0xD00000000000001BLL;
LABEL_34:
    v63.value._countAndFlagsBits = 0;
    v63.value._object = 0;
    v35.super.isa = v33;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    sub_1000AB61C(v34, v63, v35, v65, v50);
    goto LABEL_35;
  }

  if ([v26 status] == 2)
  {
    goto LABEL_33;
  }

  if (![v26 status])
  {

    v33 = [objc_opt_self() mainBundle];
    v50._countAndFlagsBits = 0xE000000000000000;
    v34._countAndFlagsBits = 0xD000000000000032;
    v34._object = 0x80000001000B94A0;
    goto LABEL_34;
  }

  if (!v6 || (v33 = [v6 image]) == 0)
  {
    if (v57)
    {
      v33 = [v57 image];
    }

    else
    {
      v33 = 0;
    }
  }

  [v8 setImage:v33];
LABEL_35:

  v36 = sub_1000AC02C();
  [v8 setCaption:v36];

  if (v31)
  {

    v37 = sub_1000AC02C();
  }

  else
  {
    v37 = 0;
  }

  [v8 setSubcaption:v37];

  if (v31)
  {

    v60._countAndFlagsBits = v29;
    v60._object = v31;
    sub_1000AC12C(v60);

    v61._countAndFlagsBits = 32;
    v61._object = 0xE100000000000000;
    sub_1000AC12C(v61);
  }

  v38 = sub_1000AC02C();

  [v58 setAccessibilityLabel:v38];

  v39 = [v54 selectedMessage];
  if (v39 && (v40 = v39, v41 = [v39 layout], v40, v41) && (objc_opt_self(), v42 = swift_dynamicCastObjCClass(), v41, v42))
  {
    v43 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v8];
    [v58 setLayout:v43];
  }

  else
  {
    [v58 setLayout:v8];
  }

  v44 = sub_1000AC02C();
  if (v31)
  {
    v45 = sub_1000AC02C();
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_1000AC02C();

  if (!v53)
  {
    v47 = 0;
    if (v52)
    {
      goto LABEL_50;
    }

LABEL_52:
    v48 = 0;
    goto LABEL_53;
  }

  v47 = sub_1000AC02C();

  if (!v52)
  {
    goto LABEL_52;
  }

LABEL_50:
  v48 = sub_1000AC02C();

LABEL_53:
  [objc_allocWithZone(BCMessageInfo) initWithTitle:v44 subtitle:v45 style:v55 alternateTitle:v46 imageIdentifier:v47 imageDescription:v48];

  return v58;
}

void sub_10004C354()
{
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager) = 0;
  v1 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for IMBWebViewController()) initWithCallbackURI:BCOAuthRedirectURI];
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session) = 0;
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_didShowAuth) = 0;
  *(v0 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow) = 0;
  sub_1000AC63C();
  __break(1u);
}

void sub_10004C41C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000AB6EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000AC0BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager);
  if (v19)
  {
    v101 = v8;
    v102 = v7;
    v20 = [objc_msgSend(v19 "authenticationRequest")];
    swift_unknownObjectRelease();
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v104 = a1;
      v105 = v3;
      v106 = v12;
      v98 = v21;
      v99 = v20;
      v22 = [v21 responseEncryptionKey];
      if (!v22)
      {
        sub_1000AC06C();
        v22 = sub_1000AC02C();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      v24 = swift_allocObject();
      v100 = v24;
      *(v24 + 16) = a3;
      v25 = (v24 + 16);
      v103 = v23;
      if (a2)
      {
        swift_errorRetain();
        sub_1000AC0AC();
        v26 = sub_1000AC07C();
        v28 = v27;
        (*(v14 + 8))(v18, v13);
        if (v28 >> 60 != 15)
        {
          v29 = objc_opt_self();
          isa = sub_1000AB72C().super.isa;
          v31 = swift_allocObject();
          *(v31 + 16) = v100;
          *(v31 + 24) = v23;
          v111 = sub_10004CEB4;
          v112 = v31;
          aBlock = _NSConcreteStackBlock;
          v108 = 1107296256;
          v109 = sub_100049334;
          v110 = &unk_1000DCA58;
          v32 = _Block_copy(&aBlock);

          [v29 encryptData:isa key:v22 completion:v32];
          v33 = v32;
          v23 = v103;
          _Block_release(v33);

          sub_10000E950(v26, v28);
          goto LABEL_14;
        }
      }

      else
      {
        swift_errorRetain();
      }

LABEL_14:
      swift_beginAccess();
      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      swift_beginAccess();
      v37 = v105;
      if (*v25)
      {

        swift_errorRetain();
        v38 = sub_1000AB62C();

        v39 = v106;
        if (v35)
        {
          goto LABEL_16;
        }
      }

      else
      {

        v38 = 0;
        v39 = v106;
        if (v35)
        {
LABEL_16:
          v40 = sub_1000AC02C();

          if (v38)
          {
LABEL_17:
            v41 = sub_1000AB62C();

            goto LABEL_21;
          }

LABEL_20:
          v41 = 0;
LABEL_21:
          v42 = [objc_allocWithZone(BCNativeOAuth2Response) initWithToken:v40 error:v41];

          v43 = v42;
          v104 = sub_10004BB6C(v43, v37);
          v45 = v44;

          v46 = [v43 error];
          if (!v46)
          {
LABEL_35:
            v65 = *(v37 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
            v66 = BCMessageRootAuthenticateKey;
            v67 = v104;
            aBlock = *(v37 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
            v64 = aBlock;
            v108 = v104;
            v109 = v65;
            v110 = v45;
            v111 = BCMessageRootAuthenticateKey;
            v112 = v43;
            v68 = v45;
            v69 = v43;
            v70 = v64;
            v71 = v67;
            v72 = v65;
            v97 = v68;
            v73 = v68;
            v74 = v66;
            sub_100036FA8(1);
            v75 = v37 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v76 = *(v75 + 8);
                ObjectType = swift_getObjectType();
                v95 = v70;
                v78 = ObjectType;
                v96 = v43;
                v94 = v71;
                v79 = v73;
                v80 = *(v76 + 16);
                v81 = type metadata accessor for IMBAuthenticationViewController();
                v37 = v105;
                v80(v105, v81, v78, v76);

                v43 = v96;
                swift_unknownObjectRelease();
              }

              else
              {

                v37 = v105;
              }

              v39 = v106;
              v45 = v97;
LABEL_45:
              v87 = *(v37 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
              v88 = kBCAnalyticsMessagesForBusinessOAuth;
              v89 = [v87 version];
              v90 = [v98 authenticationSessionURL];
              sub_1000AB6AC();

              URL.displayDomainString.getter();
              (*(v101 + 8))(v39, v102);
              v91 = sub_1000AC02C();

              [v43 status];
              v92 = NSStringFromServerSideAuthStatus();
              if (!v92)
              {
                sub_1000AC06C();
                v92 = sub_1000AC02C();
              }

              [objc_opt_self() logEventWithName:v88 version:v89 authDomain:v91 status:v92];
              swift_unknownObjectRelease();

              return;
            }

            __break(1u);
            goto LABEL_51;
          }

          v47 = [v43 error];
          if (v47)
          {
            v48 = v47;
            v49 = [v47 domain];

            v50 = sub_1000AC06C();
            v52 = v51;

            v53 = sub_1000AC06C();
            if (v52)
            {
              if (v50 == v53 && v52 == v54)
              {
                goto LABEL_34;
              }

              v55 = sub_1000AC7AC();

              if (v55)
              {
                goto LABEL_35;
              }

LABEL_30:
              v56 = [v43 error];
              if (v56)
              {
                v57 = v56;
                v58 = [v56 domain];

                v59 = sub_1000AC06C();
                v61 = v60;

                v62 = sub_1000AC06C();
                if (v61)
                {
                  if (v59 == v62 && v61 == v63)
                  {
LABEL_34:

                    goto LABEL_35;
                  }

                  v93 = sub_1000AC7AC();

                  if (v93)
                  {
                    goto LABEL_35;
                  }

LABEL_42:
                  v82 = v37 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    swift_unknownObjectRelease();
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v83 = *(v82 + 8);
                      v84 = swift_getObjectType();
                      v85 = *(v83 + 16);
                      v86 = type metadata accessor for IMBAuthenticationViewController();
                      v85(v37, v86, v84, v83);
                      swift_unknownObjectRelease();
                    }

                    goto LABEL_45;
                  }

LABEL_51:
                  __break(1u);
                  return;
                }
              }

              else
              {
                sub_1000AC06C();
              }

              goto LABEL_42;
            }
          }

          else
          {
            sub_1000AC06C();
          }

          goto LABEL_30;
        }
      }

      v40 = 0;
      if (v38)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v106 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();
  v34 = v106;
}

uint64_t sub_10004CE04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CE3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CE74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CEBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10004CF0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v31 - v7;
  v9 = sub_1000AB7EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v16 = v13, v17 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265), (v18 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v17, v35), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

LABEL_22:
    swift_once();
    goto LABEL_14;
  }

  v19 = v34;
  if (!*(a1 + 16) || (v20 = v33, v21 = sub_10004F0CC(0x6D69547472617473, 0xE900000000000065), (v22 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v21, v35), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v23 = v34;
  if (!*(a1 + 16) || (v32 = v33, v24 = sub_10004F0CC(0x6E6F697461727564, 0xE800000000000000), (v25 & 1) == 0))
  {

LABEL_19:

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v24, v35);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v26 = v33;
  Date.init(fromUTCString:)(v32, v23, v8);
  if ((*(v10 + 48))(v8, 1, v16) != 1)
  {
    v30 = *(v10 + 32);
    v30(v15, v8, v16);
    *(v2 + 2) = v20;
    *(v2 + 3) = v19;
    v30(&v2[OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime], v15, v16);
    *&v2[OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration] = v26;
    return v2;
  }

  sub_10004D744(v8);
  if (qword_1000EEE80 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  sub_1000AC2AC();
  sub_1000ABA5C();
  type metadata accessor for IMBProposedTimeslot();
  v27 = *(*v2 + 48);
  v28 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_10004D454()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v12 = &type metadata for String;
  v11._countAndFlagsBits = v2;
  v11._object = v3;
  sub_100006910(&v11, v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v10, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v5 = Date.toUTCString()();
  v12 = &type metadata for String;
  v11 = v5;
  sub_100006910(&v11, v10);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v10, 0x6D69547472617473, 0xE900000000000065, v6);
  v7 = *(v1 + OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration);
  v12 = &type metadata for Int;
  v11._countAndFlagsBits = v7;
  sub_100006910(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v10, 0x6E6F697461727564, 0xE800000000000000, v8);
  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10004D5A4()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
  v3 = sub_1000AB7EC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBProposedTimeslot()
{
  result = qword_1000F0E58;
  if (!qword_1000F0E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D69C()
{
  result = sub_1000AB7EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10004D744(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004D7AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F0F60, &qword_1000B3408);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000068B4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100006910(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100006910(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100006910(v31, v32);
    result = sub_1000AC52C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100006910(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10004DA74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F0F78, &unk_1000B3420);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_1000068B4(*(a1 + 56) + 32 * v14, v34);
        *&v33 = v16;
        *(&v33 + 1) = v17;
        v31 = v33;
        v32[0] = v34[0];
        v32[1] = v34[1];
        v18 = v33;
        sub_100006910(v32, &v25);

        sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
        swift_dynamicCast();
        v29 = v27;
        v30 = v28;
        v26 = v27;
        v27 = v28;
        result = sub_10004F0CC(v18, *(&v18 + 1));
        if (v19)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v18;
          v11 = result;

          result = sub_1000503F4(&v26, v2[7] + 32 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 32 * result);
          v21 = v27;
          *v20 = v26;
          v20[1] = v21;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_10004DCE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_100006910(&v27, v29);
        sub_100006910(v29, v30);
        sub_100006910(v30, &v28);
        result = sub_10004F0CC(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000E738(v12);
          result = sub_100006910(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_100006910(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_10004DF40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v2 = sub_1000AC68C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_100006910(&v25, v27);
        sub_100006910(v27, v28);
        sub_100006910(v28, &v26);
        result = sub_10004F0CC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000E738(v12);
          result = sub_100006910(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_100006910(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_10004E19C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v4 = sub_1000AC68C();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v15);
    ++v10;
    if (v7)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v17 = v16 | (v15 << 6);
        v18 = (*(a1 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(a1 + 56) + 8 * v17);
        sub_100005A24(0, a2, a3);

        v22 = v21;
        swift_dynamicCast();
        sub_100006910(&v30, v32);
        sub_100006910(v32, v33);
        sub_100006910(v33, &v31);
        result = sub_10004F0CC(v20, v19);
        if (v23)
        {
          v11 = (v4[6] + 16 * result);
          v12 = v11[1];
          *v11 = v20;
          v11[1] = v19;
          v13 = result;

          v14 = (v4[7] + 32 * v13);
          sub_10000E738(v14);
          result = sub_100006910(&v31, v14);
          v10 = v15;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v4[2] >= v4[3])
          {
            goto LABEL_20;
          }

          *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v24 = (v4[6] + 16 * result);
          *v24 = v20;
          v24[1] = v19;
          result = sub_100006910(&v31, (v4[7] + 32 * result));
          v25 = v4[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_21;
          }

          v4[2] = v27;
          v10 = v15;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v15 = v10;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10004E400(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = sub_1000AB6EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v12 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  if ([v13 isRunningInMacCatalyst])
  {
    v14 = [objc_opt_self() defaultWorkspace];
    v46 = a1;
    if (v14)
    {
      v16 = v14;
      sub_1000AB67C(v15);
      v45 = v17;
      v18 = [objc_allocWithZone(_LSOpenConfiguration) init];
      (*(v9 + 16))(&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
      v19 = a4;
      v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v21 = a3;
      v22 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      (*(v9 + 32))(v23 + v20, v12, v8);
      v24 = (v23 + v22);
      *v24 = v21;
      v24[1] = v19;
      aBlock[4] = sub_10004F990;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004F020;
      aBlock[3] = &unk_1000DCAF8;
      v25 = _Block_copy(aBlock);
      sub_10002A1E0(v21);

      v26 = v45;
      [v16 openURL:v45 configuration:v18 completionHandler:v25];
      _Block_release(v25);
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000AF0E0;
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL);
    v28 = sub_1000AC78C();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_10000587C();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    sub_1000AC2BC();
    sub_1000ABA5C();
  }

  else if ([v13 isRunningInMac])
  {
    result = sub_1000AC63C();
    __break(1u);
  }

  else
  {
    if (a2)
    {
      sub_10000413C(&qword_1000F0F10, &qword_1000B33B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AF0E0;
      *(inited + 32) = 0xD000000000000018;
      *(inited + 40) = 0x80000001000B97A0;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
      v33 = sub_1000501AC(inited, &qword_1000F0F28, &unk_1000B33C0);
      swift_setDeallocating();
      sub_10000E784(inited + 32, &qword_1000F0F18, &qword_1000B33B8);
    }

    else
    {
      v33 = sub_1000501AC(&_swiftEmptyArrayStorage, &qword_1000F0F28, &unk_1000B33C0);
    }

    v34 = [objc_opt_self() defaultWorkspace];
    if (v34)
    {
      v36 = v34;
      sub_1000AB67C(v35);
      v38 = v37;
      sub_10004E19C(v33, &qword_1000F0F20, NSNumber_ptr);

      isa = sub_1000ABFAC().super.isa;

      [v36 openURL:v38 withOptions:isa];
    }

    else
    {
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1000AF0E0;
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL);
    v41 = sub_1000AC78C();
    v43 = v42;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_10000587C();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    sub_1000AC2BC();
    sub_1000ABA5C();

    if (a3)
    {
      return a3(1, 0);
    }
  }

  return result;
}

uint64_t sub_10004EA70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = objc_opt_self();
  if (([v7 isRunningInMacCatalyst] & 1) != 0 || objc_msgSend(v7, "isRunningInMac"))
  {

    return sub_1000AB65C();
  }

  else
  {
    sub_1000AB6DC();
    v9 = sub_1000AB6EC();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_10000E784(v6, &unk_1000F06A0, &unk_1000B0450);
      result = sub_1000AC63C();
      __break(1u);
    }

    else
    {
      return (*(v10 + 32))(a1, v6, v9);
    }
  }

  return result;
}

uint64_t sub_10004EC6C()
{
  result = sub_1000AB74C();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    v2._countAndFlagsBits = sub_1000AC78C();
    sub_1000AC12C(v2);

    sub_1000AB6DC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10004ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000AF0F0;
    sub_1000AB6EC();
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL);
    v7 = sub_1000AC78C();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    v10 = sub_10000587C();
    *(v6 + 64) = v10;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    swift_errorRetain();
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v11 = sub_1000AC0CC();
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v10;
    *(v6 + 72) = v11;
    *(v6 + 80) = v12;
    sub_1000AC2BC();
    sub_1000ABA5C();

    if (a4)
    {
      return a4(a2 == 0, a2);
    }
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000AF0E0;
    sub_1000AB6EC();
    sub_1000503AC(&qword_1000F0F08, &type metadata accessor for URL);
    v15 = sub_1000AC78C();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_10000587C();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_1000AC2BC();
    sub_1000ABA5C();

    if (a4)
    {
      return a4(a2 == 0, a2);
    }
  }

  return result;
}

uint64_t sub_10004F020(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1000ABFBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

unint64_t sub_10004F0CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000AC87C();
  sub_1000AC11C();
  v6 = sub_1000AC8CC();

  return sub_10004F384(a1, a2, v6);
}

unint64_t sub_10004F144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AC52C(*(v2 + 40));

  return sub_10004F43C(a1, v4);
}

unint64_t sub_10004F188(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v4 = sub_1000AC8CC();

  return sub_10004F7E4(a1, v4);
}

unint64_t sub_10004F218(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000AB97C();
  sub_1000503AC(&qword_1000F0828, &type metadata accessor for IndexPath);
  v5 = sub_1000ABFFC();

  return sub_10004F504(a1, v5);
}

unint64_t sub_10004F2B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000AC87C();
  if (a1)
  {
    sub_1000AC89C(1u);
    type metadata accessor for CFString(0);
    sub_1000503AC(&qword_1000F0F70, type metadata accessor for CFString);
    sub_1000ABA1C();
  }

  else
  {
    sub_1000AC89C(0);
  }

  v4 = sub_1000AC8CC();

  return sub_10004F6C4(a1, v4);
}

unint64_t sub_10004F384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000AC7AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004F43C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005914(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000AC53C();
      sub_100005970(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004F504(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_1000503AC(&qword_1000EFE98, &type metadata accessor for IndexPath);
      v17 = sub_1000AC01C();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_10004F6C4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_1000503AC(&qword_1000F0F70, type metadata accessor for CFString);
          v10 = v9;
          v11 = sub_1000ABA0C();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004F7E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000AC06C();
      v9 = v8;
      if (v7 == sub_1000AC06C() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000AC7AC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004F8E8()
{
  v1 = sub_1000AB6EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10004F990(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000AB6EC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10004ED4C(a1, a2, v2 + v6, v8);
}

uint64_t sub_10004FA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004FA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F50, &qword_1000B33F0);
    v3 = sub_1000AC68C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10004F188(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F48, &unk_1000B33E0);
    v3 = sub_1000AC68C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E66C(v4, &v11, &qword_1000EF8D0, qword_1000B4010);
      v5 = v11;
      result = sub_10004F188(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006910(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FC70(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0F58, &qword_1000B33F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000413C(&qword_1000F0830, &qword_1000B3400);
    v9 = sub_1000AC68C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_10000E66C(v11, v7, &qword_1000F0F58, &qword_1000B33F8);
      result = sub_10004F218(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1000AB97C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F07D8, &qword_1000B1AF8);
    v3 = sub_1000AC68C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E66C(v4, &v13, &qword_1000F0250, &qword_1000B1540);
      v5 = v13;
      v6 = v14;
      result = sub_10004F0CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006910(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FF88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F80, &qword_1000B3430);
    v3 = sub_1000AC68C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10004F0CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005009C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F68, &unk_1000B3410);
    v3 = sub_1000AC68C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v5;

      result = sub_10004F2B0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000501AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000413C(a2, a3);
    v5 = sub_1000AC68C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10004F0CC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000502A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000413C(&qword_1000F0F38, &qword_1000B33D0);
    v3 = sub_1000AC68C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10004F0CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000503AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000503F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AB6EC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000504F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AB6EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for URLHelper()
{
  result = qword_1000F0FE0;
  if (!qword_1000F0FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000505B4()
{
  result = sub_1000AB6EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100050620(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6D746878;
  }

  else
  {
    v4 = 1819112552;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C6D746878;
  }

  else
  {
    v6 = 1819112552;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();
  }

  return v9 & 1;
}

Swift::Int sub_1000506BC()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100050734()
{
  *v0;
  sub_1000AC11C();
}

Swift::Int sub_100050798()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10005080C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA5C0;
  v8._object = v3;
  v5 = sub_1000AC6AC(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10005086C(uint64_t *a1@<X8>)
{
  v2 = 1819112552;
  if (*v1)
  {
    v2 = 0x6C6D746878;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000508A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AC0BC();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4, v6);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v82 = &v80 - v11;
  v12 = sub_1000AB6EC();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  __chkstk_darwin(v12, v14);
  v81 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v80 - v23;
  v25 = sub_1000AB7EC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_title);
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC8Business10IMBContent_date;
  v33 = *(v26 + 56);
  v33(v2 + OBJC_IVAR____TtC8Business10IMBContent_date, 1, 1, v25);
  v34 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_doc);
  *v34 = 0;
  v34[1] = 0;
  if (*(a1 + 16))
  {
    v35 = sub_10004F0CC(1702125924, 0xE400000000000000);
    if (v36)
    {
      sub_1000068B4(*(a1 + 56) + 32 * v35, v90);
      if (swift_dynamicCast())
      {
        Date.init(fromUTCString:)(v88, v89, v24);
        if ((*(v26 + 48))(v24, 1, v25) != 1)
        {
          v59 = *(v26 + 32);
          v59(v30, v24, v25);
          v59(v21, v30, v25);
          v37 = v21;
          v38 = 0;
          goto LABEL_7;
        }

        sub_10000E784(v24, &qword_1000F0270, &unk_1000B0480);
      }
    }
  }

  v37 = v21;
  v38 = 1;
LABEL_7:
  v33(v37, v38, 1, v25);
  swift_beginAccess();
  sub_100051870(v21, v2 + v32);
  swift_endAccess();
  v40 = v86;
  v39 = v87;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v41 = sub_10004F0CC(1701869940, 0xE400000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v41, v90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v43 = sub_1000AC0DC();
  v45 = v44;

  v46._rawValue = &off_1000DA5C0;
  v91._countAndFlagsBits = v43;
  v91._object = v45;
  v47 = sub_1000AC6AC(v46, v91);

  if (v47 == 1)
  {
    *(v2 + 16) = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_13:
    *(v2 + 16) = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  v48 = sub_10004F0CC(7107189, 0xE300000000000000);
  if ((v49 & 1) == 0 || (sub_1000068B4(*(a1 + 56) + 32 * v48, v90), (swift_dynamicCast() & 1) == 0))
  {
LABEL_18:
    (*(v40 + 56))(v2 + OBJC_IVAR____TtC8Business10IMBContent_url, 1, 1, v39);
    if (!*(a1 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v50 = v82;
  sub_1000AB6DC();

  if ((*(v40 + 48))(v50, 1, v39) == 1)
  {
    sub_10000E784(v50, &unk_1000F06A0, &unk_1000B0450);
    goto LABEL_18;
  }

  v60 = *(v40 + 32);
  v61 = v81;
  v60(v81, v50, v39);
  v62 = OBJC_IVAR____TtC8Business10IMBContent_url;
  v60((v2 + OBJC_IVAR____TtC8Business10IMBContent_url), v61, v39);
  (*(v40 + 56))(v2 + v62, 0, 1, v39);
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

LABEL_19:
  v51 = sub_10004F0CC(6516580, 0xE300000000000000);
  if (v52)
  {
    sub_1000068B4(*(a1 + 56) + 32 * v51, v90);
    if (swift_dynamicCast())
    {
      v53 = v85;
      sub_1000AC0AC();
      v54 = sub_1000AC07C();
      v56 = v55;

      (*(v83 + 8))(v53, v84);
      if (v56 >> 60 != 15)
      {
        v57 = sub_1000AB70C();
        if (v58 >> 60 != 15)
        {
          v73 = v57;
          v74 = v58;
          sub_1000AC0AC();
          v75 = sub_1000AC08C();
          v77 = v76;
          sub_10000E950(v54, v56);
          sub_10000E950(v73, v74);
          v78 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_doc);
          v79 = *(v2 + OBJC_IVAR____TtC8Business10IMBContent_doc + 8);
          *v78 = v75;
          v78[1] = v77;
          goto LABEL_27;
        }

        sub_10000E950(v54, v56);
      }
    }
  }

LABEL_26:
  v63 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_doc);
  v64 = *(v2 + OBJC_IVAR____TtC8Business10IMBContent_doc + 8);
  *v63 = 0;
  v63[1] = 0;
LABEL_27:

  if (*(a1 + 16) && (v65 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v66 & 1) != 0))
  {
    sub_1000068B4(*(a1 + 56) + 32 * v65, v90);

    v67 = swift_dynamicCast();
    v68 = v88;
    v69 = v89;
    if (!v67)
    {
      v68 = 0;
      v69 = 0;
    }
  }

  else
  {

    v68 = 0;
    v69 = 0;
  }

  v70 = (v2 + OBJC_IVAR____TtC8Business10IMBContent_title);
  v71 = *(v2 + OBJC_IVAR____TtC8Business10IMBContent_title + 8);
  *v70 = v68;
  v70[1] = v69;

  return v2;
}

void *sub_1000510E8()
{
  v1 = v0;
  v2 = sub_1000AB7EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v37 - v11;
  v13 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v37 - v16;
  v18 = *(v0 + 16) == 0;
  v19 = 1819112552;
  if (*(v0 + 16))
  {
    v19 = 0x6C6D746878;
  }

  v20 = 0xE400000000000000;
  v42 = &type metadata for String;
  if (!v18)
  {
    v20 = 0xE500000000000000;
  }

  v41._countAndFlagsBits = v19;
  v41._object = v20;
  sub_100006910(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = &_swiftEmptyDictionarySingleton;
  sub_10003A3E8(v40, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v43 = v39;
  sub_10000E66C(v0 + OBJC_IVAR____TtC8Business10IMBContent_url, v17, &unk_1000F06A0, &unk_1000B0450);
  v22 = sub_1000AB6EC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v17, 1, v22) == 1)
  {
    sub_10000E784(v17, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(7107189, 0xE300000000000000, &v41);
    sub_10000E784(&v41, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    v24 = sub_1000AB64C();
    v42 = &type metadata for String;
    v41._countAndFlagsBits = v24;
    v41._object = v25;
    (*(v23 + 8))(v17, v22);
    sub_100006910(&v41, v40);
    v26 = v43;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v26;
    sub_10003A3E8(v40, 7107189, 0xE300000000000000, v27);
    v43 = v39;
  }

  v28 = *(v1 + OBJC_IVAR____TtC8Business10IMBContent_title + 8);
  if (v28)
  {
    v29 = *(v1 + OBJC_IVAR____TtC8Business10IMBContent_title);
    v42 = &type metadata for String;
    v41._countAndFlagsBits = v29;
    v41._object = v28;
    sub_100006910(&v41, v40);

    v30 = v43;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v30;
    sub_10003A3E8(v40, 0x656C746974, 0xE500000000000000, v31);
    v43 = v39;
  }

  else
  {
    sub_100039E5C(0x656C746974, 0xE500000000000000, &v41);
    sub_10000E784(&v41, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v32 = OBJC_IVAR____TtC8Business10IMBContent_date;
  swift_beginAccess();
  sub_10000E66C(v1 + v32, v12, &qword_1000F0270, &unk_1000B0480);
  if ((*(v3 + 48))(v12, 1, v2))
  {
    sub_10000E784(v12, &qword_1000F0270, &unk_1000B0480);
    sub_100039E5C(1702125924, 0xE400000000000000, &v41);
    sub_10000E784(&v41, &unk_1000F1DF0, &qword_1000B18F0);
    return v43;
  }

  else
  {
    (*(v3 + 16))(v7, v12, v2);
    sub_10000E784(v12, &qword_1000F0270, &unk_1000B0480);
    v34 = Date.toUTCString()();
    (*(v3 + 8))(v7, v2);
    v42 = &type metadata for String;
    v41 = v34;
    sub_100006910(&v41, v40);
    v35 = v43;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v35;
    sub_10003A3E8(v40, 1702125924, 0xE400000000000000, v36);
    return v38;
  }
}

uint64_t sub_1000515E4()
{
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business10IMBContent_url, &unk_1000F06A0, &unk_1000B0450);
  v1 = *(v0 + OBJC_IVAR____TtC8Business10IMBContent_title + 8);

  sub_10000E784(v0 + OBJC_IVAR____TtC8Business10IMBContent_date, &qword_1000F0270, &unk_1000B0480);
  v2 = *(v0 + OBJC_IVAR____TtC8Business10IMBContent_doc + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBContent()
{
  result = qword_1000F1040;
  if (!qword_1000F1040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000516F4()
{
  sub_10000C188(319, &qword_1000F28C0, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000C188(319, &unk_1000EF338, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_10005181C()
{
  result = qword_1000F1138;
  if (!qword_1000F1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1138);
  }

  return result;
}

uint64_t sub_100051870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000518E0(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  *&v130 = &v110 - v8;
  v117 = sub_1000AB6EC();
  v113 = *(v117 - 8);
  v9 = *(v113 + 64);
  __chkstk_darwin(v117, v10);
  v116 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v129 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  v127 = *(v129 - 8);
  v12 = *(v127 + 64);
  __chkstk_darwin(v129, v13);
  *&v128 = &v110 - v14;
  v15 = v1[7];
  v137[6] = v1[6];
  v137[7] = v15;
  v16 = v1[9];
  v137[8] = v1[8];
  v137[9] = v16;
  v17 = v1[3];
  v137[2] = v1[2];
  v137[3] = v17;
  v18 = v1[5];
  v137[4] = v1[4];
  v137[5] = v18;
  v19 = v1[1];
  v137[0] = *v1;
  v137[1] = v19;
  v20 = sub_100043738(v137);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v24 = sub_1000437FC(v137);
      v25 = a1;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v24 + 40);
      v29 = *(v24 + 24);
      v31 = *(v24 + 56);
      v30 = *(v24 + 64);
      v33 = *(v24 + 72);
      v32 = *(v24 + 80);
      v34 = *(v24 + 88);
      v35 = *(v24 + 96);
      v36 = *(v24 + 104);
      v37 = *(v24 + 120);
      v38 = *(v24 + 136);
      v39 = *(v24 + 152);
      *v25 = *v24;
      v25[1] = v26;
      v114 = v25;
      v131 = v34;
      v129 = v37;
      v130 = v36;
      v128 = v38;
      v127 = v39;
      LODWORD(v126) = v35;
      v125 = v32;
      v134 = v28;
      v135 = v29;
      v148 = v30;
      v133 = v33;
      if (v27)
      {
        if (v27 == 1)
        {
          v40 = qword_1000EEE10;

          if (v40 != -1)
          {
            swift_once();
          }

          v41 = qword_1000FBF40;
          v114[2] = qword_1000FBF40;
          v42 = qword_1000EEE28;
          v132 = v41;
          if (v42 != -1)
          {
            swift_once();
          }

          v43 = &qword_1000FBF58;
        }

        else
        {
          v83 = qword_1000EEE20;

          if (v83 != -1)
          {
            swift_once();
          }

          v84 = qword_1000FBF50;
          v114[2] = qword_1000FBF50;
          v85 = qword_1000EEE38;
          v132 = v84;
          if (v85 != -1)
          {
            swift_once();
          }

          v43 = &qword_1000FBF68;
        }
      }

      else
      {
        v80 = qword_1000EEE18;

        if (v80 != -1)
        {
          swift_once();
        }

        v81 = qword_1000FBF48;
        v114[2] = qword_1000FBF48;
        v82 = qword_1000EEE30;
        v132 = v81;
        if (v82 != -1)
        {
          swift_once();
        }

        v43 = &qword_1000FBF60;
      }

      v86 = *v43;
      v87 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
      v88 = *(v87 + 80);
      v89 = v114;
      v114[3] = v86;
      v144 = v134;
      v143 = v135;
      v145 = v31;
      v146 = v148;
      v147 = v133;
      v90 = v86;
      sub_100052474(v89 + v88);
      if (v3)
      {

        return;
      }

      v91 = v87;
      v92 = (v89 + *(sub_10000413C(&qword_1000F1150, &unk_1000B5280) + 48));
      v93 = v131;
      *v92 = v125;
      v92[1] = v93;
      if (v126)
      {
        if (v126 == 1)
        {
          v94 = qword_1000EEE10;

          if (v94 != -1)
          {
            swift_once();
          }

          v95 = qword_1000FBF40;
          v92[2] = qword_1000FBF40;
          v96 = qword_1000EEE28;
          v95;
          if (v96 != -1)
          {
            swift_once();
          }

          v97 = &qword_1000FBF58;
        }

        else
        {
          v102 = qword_1000EEE20;

          if (v102 != -1)
          {
            swift_once();
          }

          v103 = qword_1000FBF50;
          v92[2] = qword_1000FBF50;
          v104 = qword_1000EEE38;
          v103;
          if (v104 != -1)
          {
            swift_once();
          }

          v97 = &qword_1000FBF68;
        }
      }

      else
      {
        v99 = qword_1000EEE18;

        if (v99 != -1)
        {
          swift_once();
        }

        v100 = qword_1000FBF48;
        v92[2] = qword_1000FBF48;
        v101 = qword_1000EEE30;
        v100;
        if (v101 != -1)
        {
          swift_once();
        }

        v97 = &qword_1000FBF60;
      }

      v106 = v129;
      v105 = v130;
      v107 = v128;
      v108 = *v97;
      v109 = *(v91 + 80);
      v92[3] = v108;
      v139 = v105;
      v140 = v106;
      v141 = v107;
      v142 = v127;
      v108;
      sub_100052474(v92 + v109);
    }

LABEL_28:
    type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  if (!v20)
  {
    v21 = sub_1000437FC(v137);
    v22 = *(v21 + 48);
    v23 = *(v21 + 16);
    v137[10] = *v21;
    v137[11] = v23;
    v137[12] = *(v21 + 32);
    v138 = v22;
    sub_100052474(a1);
    if (v2)
    {
      return;
    }

    goto LABEL_28;
  }

  v114 = a1;
  v112 = v2;
  v44 = sub_1000437FC(v137);
  v46 = *v44;
  v45 = v44[1];
  v47 = v44[2];
  v48 = *(v47 + 16);
  if (!v48)
  {
    v79 = v44[1];

    v49 = _swiftEmptyArrayStorage;
LABEL_49:
    v98 = v114;
    *v114 = v46;
    v98[1] = v45;
    v98[2] = v49;
    type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  v110 = *v44;
  v136 = _swiftEmptyArrayStorage;
  v111 = v45;

  v148 = v48;
  sub_10009C218(0, v48, 0);
  v49 = v136;
  v115 = (v113 + 48);
  v126 = (v113 + 32);
  v50 = (v47 + 56);
  v51 = v128;
  while (1)
  {
    v52 = *(v50 - 2);
    v133 = *(v50 - 3);
    *&v134 = v49;
    v53 = *v50;
    v132 = *(v50 - 1);
    *&v135 = v53;
    v55 = v50[1];
    v54 = v50[2];
    v56 = v50[3];
    v57 = v50[4];
    v58 = v50[5];
    v59 = v50[6];
    v60 = *(v129 + 64);
    v61 = v51 + v60;
    v62 = v50[7];
    if (v56 < 0)
    {
      *v61 = v55;
      *(v61 + 1) = v54;
      v61[16] = v56 & 1;
      *(v61 + 3) = v57;
      *(v61 + 4) = v58;
      *(v61 + 5) = v59;
      *(v61 + 6) = v62;
      type metadata accessor for BIABubbleViewModelUserAction(0);
      swift_storeEnumTagMultiPayload();

      v75 = v135;

      goto LABEL_24;
    }

    v118 = v51 + v60;
    v119 = v55;
    v63 = v58;
    v131 = v54;

    v120 = v56;
    v121 = v57;
    v122 = v59;
    v123 = v63;
    v124 = v62;
    sub_1000527C0(v55, v131, v56);
    v125 = v52;

    v64 = v130;
    v65 = v119;
    sub_1000AB6DC();
    v66 = v64;
    v67 = v117;
    if ((*v115)(v66, 1, v117) == 1)
    {
      break;
    }

    v68 = *v126;
    v69 = v116;
    v70 = v67;
    (*v126)(v116, v130, v67);
    v71 = v69;
    v72 = sub_1000AB6CC();
    v51 = v128;
    v74 = v118;
    if (!v73)
    {
      goto LABEL_50;
    }

    if (v72 == 0x7370747468 && v73 == 0xE500000000000000)
    {
    }

    else
    {
      v76 = sub_1000AC7AC();
      v51 = v128;

      if ((v76 & 1) == 0)
      {
LABEL_50:
        sub_10005281C();
        swift_allocError();
        swift_willThrow();
        (*(v113 + 8))(v71, v70);
        goto LABEL_52;
      }
    }

    v68(v74, v71, v70);
    type metadata accessor for BIABubbleViewModelUserAction(0);
    swift_storeEnumTagMultiPayload();
    v75 = v135;

    v52 = v125;

    sub_100047180(v65, v131, v120);
LABEL_24:
    v49 = v134;
    *v51 = v133;
    v51[1] = v52;
    v51[2] = v132;
    v51[3] = v75;
    v136 = v49;
    v78 = v49[2];
    v77 = v49[3];
    if (v78 >= v77 >> 1)
    {
      sub_10009C218(v77 > 1, v78 + 1, 1);
      v51 = v128;
      v49 = v136;
    }

    v50 += 11;
    v49[2] = v78 + 1;
    sub_100052750(v51, v49 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v78);
    if (!--v148)
    {
      v46 = v110;
      v45 = v111;
      goto LABEL_49;
    }
  }

  sub_10000E784(v130, &unk_1000F06A0, &unk_1000B0450);
  sub_10005281C();
  swift_allocError();
  swift_willThrow();
LABEL_52:

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  sub_100047180(v65, v131, v120);
}

uint64_t sub_100052474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = v26 - v6;
  v8 = sub_1000AB6EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 8);
  if (((*(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    v16 = *(v1 + 16);
    v17 = *(v1 + 40);
    v18 = *(v1 + 48);
    v19 = *(v1 + 24);
    v20 = *(v1 + 32);
    *a1 = *v1;
    *(a1 + 8) = v14;
    *(a1 + 16) = v16 & 1;
    *(a1 + 24) = v19;
    *(a1 + 32) = v20;
    *(a1 + 40) = v17;
    *(a1 + 48) = v18;
    type metadata accessor for BIABubbleViewModelUserAction(0);
    swift_storeEnumTagMultiPayload();
  }

  sub_1000AB6DC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000E784(v7, &unk_1000F06A0, &unk_1000B0450);
    sub_10005281C();
    swift_allocError();
    return swift_willThrow();
  }

  v21 = *(v9 + 32);
  v21(v13, v7, v8);
  v22 = sub_1000AB6CC();
  if (!v23)
  {
    goto LABEL_11;
  }

  if (v22 == 0x7370747468 && v23 == 0xE500000000000000)
  {
  }

  else
  {
    v25 = sub_1000AC7AC();

    if ((v25 & 1) == 0)
    {
LABEL_11:
      sub_10005281C();
      swift_allocError();
      swift_willThrow();
      return (*(v9 + 8))(v13, v8);
    }
  }

  v21(a1, v13, v8);
  type metadata accessor for BIABubbleViewModelUserAction(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100052750(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F1140, &unk_1000B5290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000527C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }
}

unint64_t sub_10005281C()
{
  result = qword_1000F1158;
  if (!qword_1000F1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1158);
  }

  return result;
}

unint64_t sub_100052884()
{
  result = qword_1000F1160;
  if (!qword_1000F1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1160);
  }

  return result;
}

uint64_t NetworkStatus.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656E6E6F43206F4ELL;
  }

  if (a1 == 1)
  {
    return 1768319319;
  }

  return 0x72616C756C6C6543;
}

uint64_t sub_100052938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1768319319;
  if (v2 != 1)
  {
    v4 = 0x72616C756C6C6543;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E6E6F43206F4ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697463;
  }

  v7 = 0xE400000000000000;
  v8 = 1768319319;
  if (*a2 != 1)
  {
    v8 = 0x72616C756C6C6543;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E6E6F43206F4ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697463;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

Swift::Int sub_100052A34()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100052ADC()
{
  *v0;
  *v0;
  sub_1000AC11C();
}

Swift::Int sub_100052B70()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100052C14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Business13NetworkStatusO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100052C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697463;
  v4 = 0xE400000000000000;
  v5 = 1768319319;
  if (v2 != 1)
  {
    v5 = 0x72616C756C6C6543;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6E6F43206F4ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

NSString sub_100052CD0()
{
  result = sub_1000AC02C();
  static Reachability.reachibilityChangedNotification = result;
  return result;
}

uint64_t *Reachability.reachibilityChangedNotification.unsafeMutableAddressor()
{
  if (qword_1000EEE48 != -1)
  {
    swift_once();
  }

  return &static Reachability.reachibilityChangedNotification;
}

id static Reachability.reachibilityChangedNotification.getter()
{
  if (qword_1000EEE48 != -1)
  {
    swift_once();
  }

  v1 = static Reachability.reachibilityChangedNotification;

  return v1;
}

uint64_t Reachability.__allocating_init(networkReachability:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Reachability.init(networkReachability:)(a1);
  return v2;
}

uint64_t Reachability.init(networkReachability:)(uint64_t a1)
{
  v17 = a1;
  v16 = sub_1000AC31C();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v16, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000AC2FC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v10 = sub_1000ABF6C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  *(v1 + 44) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 60) = 1;
  sub_100053134();
  sub_1000ABF5C();
  v18 = _swiftEmptyArrayStorage;
  sub_100053180();
  sub_10000413C(&qword_1000EEEC0, &qword_1000AF110);
  sub_100004184();
  sub_1000AC49C();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + 64) = sub_1000AC34C();
  *(v1 + 72) = 0;
  *(v1 + 80) = [objc_opt_self() defaultCenter];
  v13 = *(v1 + 48);
  *(v1 + 48) = v17;

  return v1;
}

uint64_t Reachability.deinit()
{
  v1 = *(v0 + 24);
  sub_100026FE0(*(v0 + 16));
  v2 = *(v0 + 40);
  sub_100026FE0(*(v0 + 32));

  return v0;
}

uint64_t Reachability.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_100026FE0(*(v0 + 16));
  v2 = *(v0 + 40);
  sub_100026FE0(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t _s8Business13NetworkStatusO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA6E8;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100053134()
{
  result = qword_1000EEEB0;
  if (!qword_1000EEEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EEEB0);
  }

  return result;
}

unint64_t sub_100053180()
{
  result = qword_1000EEEB8;
  if (!qword_1000EEEB8)
  {
    sub_1000AC2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEEB8);
  }

  return result;
}

unint64_t sub_1000531DC()
{
  result = qword_1000F1168;
  if (!qword_1000F1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1168);
  }

  return result;
}

id sub_100053264()
{
  v1 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor;
  *&v0[v1] = [objc_opt_self() blackColor];
  v2 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel;
  *&v0[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator;
  *&v0[v4] = [objc_allocWithZone(UIView) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for IMBContentHeaderView();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100053698();
  sub_100053874();

  return v5;
}

char *sub_100053384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor;
  *&v5[v9] = [objc_opt_self() blackColor];
  v10 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel;
  *&v5[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel;
  *&v5[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator;
  *&v5[v12] = [objc_allocWithZone(UIView) init];
  v24.receiver = v5;
  v24.super_class = type metadata accessor for IMBContentHeaderView();
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel];
  v15 = v13;
  v16 = v14;
  if (a2)
  {
    v17 = sub_1000AC02C();
  }

  else
  {
    v17 = 0;
  }

  [v14 setText:v17];

  v18 = *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel];
  v19 = v18;
  if (a4)
  {
    v20 = sub_1000AC02C();
  }

  else
  {
    v20 = 0;
  }

  [v18 setText:v20];

  v21 = *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor];
  *&v13[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor] = a5;
  v22 = a5;

  sub_100053698();
  sub_100053874();

  return v13;
}

id sub_10005356C(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor;
  *&v1[v3] = [objc_opt_self() blackColor];
  v4 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator;
  *&v1[v6] = [objc_allocWithZone(UIView) init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for IMBContentHeaderView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_100053698();
    sub_100053874();
  }

  return v8;
}

id sub_100053698()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator];
  [v3 setBackgroundColor:*&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separatorColor]];
  v4 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel];
  v5 = objc_opt_self();
  v6 = [v5 systemFontOfSize:18.0 weight:UIFontWeightBold];
  [v4 setFont:v6];

  [v4 setNumberOfLines:0];
  v7 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel];
  v8 = [v5 systemFontOfSize:14.0 weight:UIFontWeightRegular];
  [v7 setFont:v8];

  [v7 setNumberOfLines:0];
  v9 = [v1 grayColor];
  [v7 setTextColor:v9];

  [v0 addSubview:v4];
  [v0 addSubview:v7];

  return [v0 addSubview:v3];
}

void sub_100053874()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:18.0];

  [v4 setActive:1];
  v5 = [v1 leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:20.0];

  [v7 setActive:1];
  v8 = [v1 trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-20.0];

  [v10 setActive:1];
  v11 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_subtitleLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v11 topAnchor];
  v13 = [v1 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  [v14 setActive:1];
  v15 = [v11 leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:20.0];

  [v17 setActive:1];
  v18 = [v11 trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-20.0];

  [v20 setActive:1];
  v21 = *&v0[OBJC_IVAR____TtC8Business20IMBContentHeaderView_separator];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v21 heightAnchor];
  v23 = [objc_opt_self() mainScreen];
  [v23 scale];
  v25 = v24;

  v26 = [v22 constraintEqualToConstant:1.0 / v25];
  [v26 setActive:1];

  v27 = [v21 topAnchor];
  v28 = [v11 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:18.0];

  [v29 setActive:1];
  v30 = [v21 rightAnchor];
  v31 = [v0 rightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  [v32 setActive:1];
  v33 = [v21 bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  [v35 setActive:1];
  v36 = [v21 leftAnchor];
  v37 = [v0 leftAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:20.0];

  [v38 setActive:1];
}

id sub_100053E48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBContentHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100053F0C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_delegate];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton] = v10;
  v11 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton] = v11;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for BIABubbleBinaryChoiceView();
  v12 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B3780;
  v44 = v12;
  v45 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton;
  v14 = *&v12[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton];
  *(inited + 32) = v14;
  v43 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton;
  v15 = *&v12[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton];
  *(inited + 40) = v15;
  v46 = v12;
  v16 = v14;
  v17 = v15;
  for (i = 0; i != 2; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v19 = sub_1000AC5AC();
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v19 = *(inited + 8 * i + 32);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v20 layer];
    [v21 setCornerRadius:8.0];

    v22 = [v20 titleLabel];
    if (!v22)
    {
      goto LABEL_20;
    }

    v23 = v22;
    if (qword_1000EEE40 != -1)
    {
      swift_once();
    }

    [v23 setFont:qword_1000FBF70];

    [v46 addSubview:v20];
    if (qword_1000EEE10 != -1)
    {
      swift_once();
    }

    [v20 setBackgroundColor:qword_1000FBF40];
    if (qword_1000EEE28 != -1)
    {
      swift_once();
    }

    [v20 setTitleColor:qword_1000FBF58 forState:0];
  }

  swift_setDeallocating();
  v24 = *(inited + 16);
  swift_arrayDestroy();
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1000AF0F0;
  *(v25 + 32) = 0x747475427466656CLL;
  *(v25 + 40) = 0xEA00000000006E6FLL;
  v26 = *&v44[v45];
  v27 = sub_100005A24(0, &qword_1000F1378, UIButton_ptr);
  *(v25 + 48) = v26;
  *(v25 + 72) = v27;
  *(v25 + 80) = 0x7475427468676972;
  *(v25 + 88) = 0xEB000000006E6F74;
  v28 = *&v44[v43];
  *(v25 + 120) = v27;
  *(v25 + 96) = v28;
  v29 = v26;
  v30 = v28;
  v31 = sub_10004FE58(v25);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F0250, &qword_1000B1540);
  swift_arrayDestroy();
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1000AF0E0;
  *(v32 + 32) = 0x70536E6F74747562;
  v33 = v32 + 32;
  *(v32 + 72) = &type metadata for Double;
  *(v32 + 40) = 0xED0000676E696361;
  *(v32 + 48) = 0x4024000000000000;
  v34 = sub_10004FE58(v32);
  swift_setDeallocating();
  sub_1000362E4(v33);
  type metadata accessor for ConstraintBuilder();
  v35 = swift_initStackObject();
  *(v35 + 16) = 0;
  *(v35 + 40) = _swiftEmptyArrayStorage;
  *(v35 + 24) = v31;
  *(v35 + 32) = v34;

  sub_100054688(v36, v46);

  if (*(v35 + 16) == 1)
  {
  }

  else
  {
    *(v35 + 16) = 1;
    v37 = objc_opt_self();
    swift_beginAccess();
    v38 = *(v35 + 40);
    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    isa = sub_1000AC18C().super.isa;
    [v37 activateConstraints:isa];
  }

  v40 = *&v44[v45];
  v41 = v46;
  [v40 addTarget:v41 action:"handleLeftButtonTap" forControlEvents:64];
  v42 = *&v44[v43];
  [v42 addTarget:v41 action:"handleRightButtonTap" forControlEvents:64];
}

void sub_100054558(char *a1, uint64_t a2, int a3)
{
  if (*&a1[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_delegate])
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_10005C39C(a3);
    swift_unknownObjectRelease();
  }
}

id sub_1000545D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BIABubbleBinaryChoiceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100054688(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    goto LABEL_13;
  }

  v4 = sub_1000AC02C();
  v5 = *(a1 + 32);
  v32 = a2;
  v6.super.isa = v5 ? sub_1000ABFAC().super.isa : 0;
  v7 = objc_opt_self();
  v8 = *(a1 + 24);
  isa = sub_1000ABFAC().super.isa;
  v10 = [v7 constraintsWithVisualFormat:v4 options:0 metrics:v6.super.isa views:isa];

  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  v11 = sub_1000AC19C();

  swift_beginAccess();
  sub_1000A50CC(v11);
  swift_endAccess();
  if (*(a1 + 16) == 1)
  {
    goto LABEL_13;
  }

  v12 = sub_1000AC02C();
  v13.super.isa = v5 ? sub_1000ABFAC().super.isa : 0;
  v14 = sub_1000ABFAC().super.isa;
  v15 = [v7 constraintsWithVisualFormat:v12 options:0 metrics:v13.super.isa views:v14];

  v16 = sub_1000AC19C();
  swift_beginAccess();
  sub_1000A50CC(v16);
  swift_endAccess();
  if (*(a1 + 16) == 1)
  {
LABEL_13:
    sub_1000AC63C();
    __break(1u);
  }

  else
  {
    v17 = sub_1000AC02C();
    if (v5)
    {
      v5 = sub_1000ABFAC().super.isa;
    }

    v18 = sub_1000ABFAC().super.isa;
    v19 = [v7 constraintsWithVisualFormat:v17 options:0 metrics:v5 views:v18];

    v20 = sub_1000AC19C();
    swift_beginAccess();
    sub_1000A50CC(v20);
    swift_endAccess();
    v21 = *(v32 + OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton);
    v22 = [v7 constraintWithItem:v21 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:34.0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B04C0;
    *(inited + 32) = v22;
    swift_beginAccess();
    v24 = v22;
    sub_1000A50CC(inited);
    swift_endAccess();

    v25 = *(v32 + OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton);
    v26 = [v7 constraintWithItem:v25 attribute:8 relatedBy:0 toItem:v21 attribute:8 multiplier:1.0 constant:0.0];
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1000B04C0;
    *(v27 + 32) = v26;
    swift_beginAccess();
    v28 = v26;
    sub_1000A50CC(v27);
    swift_endAccess();

    v29 = [v7 constraintWithItem:v21 attribute:7 relatedBy:0 toItem:v25 attribute:7 multiplier:1.0 constant:0.0];
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1000B04C0;
    *(v30 + 32) = v29;
    swift_beginAccess();
    v31 = v29;
    sub_1000A50CC(v30);
    swift_endAccess();
  }
}

id sub_100054BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView;
  *&v3[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  v3[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] = 1;
  if (a3)
  {
    v8 = sub_1000AC02C();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for IMBActionTableViewCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_100054E24();
  sub_10005511C();

  return v10;
}

id sub_100054D38(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v1[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] = 1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for IMBActionTableViewCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_100054E24();
    sub_10005511C();
  }

  return v6;
}

id sub_100054E24()
{
  if (sub_10002CE60() == 2)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor:qword_1000FBEF0];
    v1 = [v0 contentView];
    [v1 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
  }

  [v0 setBounds:{0.0, 0.0, 350.0, 10000.0}];
  v2 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
  if (qword_1000EEE50 != -1)
  {
    swift_once();
  }

  [v2 setFont:qword_1000F1380];
  [v2 setNumberOfLines:0];
  v3 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView];
  v4 = [v3 layer];
  if (qword_1000EEE60 != -1)
  {
    swift_once();
  }

  [v4 setCornerRadius:*&qword_1000F1390 * 0.5];

  v5 = [v3 layer];
  [v5 setMasksToBounds:1];

  v6 = [objc_opt_self() tertiaryLabelColor];
  [v3 setBackgroundColor:v6];

  [v3 setContentMode:1];
  v7 = [v0 contentView];
  [v7 addSubview:v3];

  v8 = [v0 contentView];
  [v8 addSubview:v2];

  v9 = UIAccessibilityTraitButton;
  if ((v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] & 1) == 0)
  {
    v10 = UIAccessibilityTraitNotEnabled;
    if ((UIAccessibilityTraitNotEnabled & ~UIAccessibilityTraitButton) == 0)
    {
      v10 = 0;
    }

    v9 = v10 | UIAccessibilityTraitButton;
  }

  return [v0 setAccessibilityTraits:v9];
}

void sub_10005511C()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:10.0];
  [v5 setActive:1];

  v6 = [v1 trailingAnchor];
  v7 = [v0 contentView];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 trailingAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];

  [v10 setActive:1];
  v11 = [v1 bottomAnchor];
  v12 = [v0 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintLessThanOrEqualToAnchor:v13 constant:-10.0];
  [v14 setActive:1];

  v15 = [v1 heightAnchor];
  if (qword_1000EEE60 != -1)
  {
    swift_once();
  }

  v16 = *&qword_1000F1390;
  v17 = [v15 constraintEqualToConstant:*&qword_1000F1390];

  [v17 setActive:1];
  v18 = [v1 widthAnchor];
  v19 = [v18 constraintEqualToConstant:v16];

  [v19 setActive:1];
  v20 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v20 topAnchor];
  v22 = [v0 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:10.0];
  [v24 setActive:1];

  v25 = [v20 leadingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 layoutMarginsGuide];

  v28 = [v27 leadingAnchor];
  v29 = [v25 constraintEqualToAnchor:v28];

  [v29 setActive:1];
  v30 = [v20 trailingAnchor];
  v31 = [v1 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:5.0];

  [v32 setActive:1];
  v33 = [v20 bottomAnchor];
  v34 = [v0 contentView];
  v35 = [v34 bottomAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-10.0];
  [v36 setActive:1];
}

void sub_100055680()
{
  if (v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_actionEnabled] == 1)
  {
    [v0 setSelectionStyle:1];
    v1 = [objc_allocWithZone(UIView) init];
    [v0 setSelectedBackgroundView:v1];

    v2 = [v0 selectedBackgroundView];
    if (v2)
    {
      v3 = v2;
      if (qword_1000EEE58 != -1)
      {
        swift_once();
      }

      v4 = [qword_1000F1388 CGColor];
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v4, 0.1);

      if (!CopyWithAlpha)
      {
        __break(1u);
        return;
      }

      v6 = [objc_allocWithZone(UIColor) initWithCGColor:CopyWithAlpha];

      [v3 setBackgroundColor:v6];
    }

    v7 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
    if (qword_1000EEE50 != -1)
    {
      swift_once();
    }

    [v7 setFont:qword_1000F1380];
    if (qword_1000EEE58 != -1)
    {
      swift_once();
    }

    [v7 setTextColor:qword_1000F1388];
  }

  else
  {
    [v0 setSelectionStyle:0];
    [v0 setSelectedBackgroundView:0];
    v7 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_titleLabel];
    v8 = [objc_opt_self() lightGrayColor];
    [v7 setTextColor:v8];
  }

  v9 = *&v0[OBJC_IVAR____TtC8Business22IMBActionTableViewCell_iconView];
  v10 = [v7 textColor];
  [v9 setTintColor:v10];
}

id sub_100055928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBActionTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000559CC()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v1 = [objc_opt_self() systemFontOfSize:13.0];
    v2 = [v0 scaledFontForFont:v1];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  qword_1000F1380 = v2;
}

id sub_100055AB8()
{
  result = [objc_opt_self() tableCellBlueTextColor];
  if (result)
  {
    qword_1000F1388 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100055AFC()
{
  result = sub_10002CE60();
  v1 = 40.0;
  if (result == 2)
  {
    v1 = 20.0;
  }

  qword_1000F1390 = *&v1;
  return result;
}

id sub_100055B34(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel;
  *&v2[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator;
  *&v2[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor;
  v8 = [objc_allocWithZone(UITableView) init];
  v9 = [v8 separatorColor];

  *&v2[v7] = v9;
  if (a2)
  {
    v10 = sub_1000AC02C();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v2;
  v14.super_class = type metadata accessor for ListPickerSectionHeader();
  v11 = objc_msgSendSuper2(&v14, "initWithReuseIdentifier:", v10);

  v12 = v11;
  sub_100055CD4();
  sub_100055E84();

  return v12;
}

id sub_100055CD4()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator];
  v2 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor;
  [v1 setBackgroundColor:*&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor]];
  v3 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator];
  [v3 setBackgroundColor:*&v0[v2]];
  v4 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel];
  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v4 setFont:v5];

  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v4 setTextColor:v7];

  [v4 setNumberOfLines:0];
  v8 = [v0 contentView];
  v9 = [v6 systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  [v0 addSubview:v4];
  [v0 addSubview:v1];

  return [v0 addSubview:v3];
}

void sub_100055E84()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 heightAnchor];
  v45 = objc_opt_self();
  v3 = [v45 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [v2 constraintEqualToConstant:1.0 / v5];
  [v6 setActive:1];

  v7 = [v1 topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  [v9 setActive:1];
  v10 = [v1 rightAnchor];
  v11 = [v0 rightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  [v12 setActive:1];
  v13 = [v1 leftAnchor];
  v14 = [v0 leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
  v16 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v16 topAnchor];
  v18 = [v1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:8.0];

  [v19 setActive:1];
  v20 = [v16 leftAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 leftAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [v16 rightAnchor];
  v25 = [v0 layoutMarginsGuide];
  v26 = [v25 rightAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = *&v0[OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v28 heightAnchor];
  v30 = [v45 mainScreen];
  [v30 scale];
  v32 = v31;

  v33 = [v29 constraintEqualToConstant:1.0 / v32];
  [v33 setActive:1];

  v34 = [v28 topAnchor];
  v35 = [v16 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:8.0];

  [v36 setActive:1];
  v37 = [v28 leftAnchor];
  v38 = [v0 leftAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  [v39 setActive:1];
  v40 = [v28 rightAnchor];
  v41 = [v0 rightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  [v42 setActive:1];
  v43 = [v28 bottomAnchor];
  v44 = [v0 bottomAnchor];
  v46 = [v43 constraintEqualToAnchor:v44];

  [v46 setActive:1];
}

id sub_1000564CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListPickerSectionHeader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100056590()
{
  v1 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_headerLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_topSeparator;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_bottomSeparator;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC8Business23ListPickerSectionHeader_separatorColor;
  v5 = [objc_allocWithZone(UITableView) init];
  v6 = [v5 separatorColor];

  *(v0 + v4) = v6;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_100056694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage;
  if (*(a1 + 16))
  {
    v7 = sub_10004F0CC(0x736D657469, 0xE500000000000000);
    if (v8)
    {
      sub_1000068B4(*(a1 + 56) + 32 * v7, v29);
      sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
      if (swift_dynamicCast())
      {
        v6 = v27;
      }
    }
  }

  v9 = v6[2];
  if (v9)
  {
    type metadata accessor for IMBListItem();
    v10 = 4;
    do
    {
      v11 = v6[v10];
      swift_allocObject();
      swift_bridgeObjectRetain_n();

      if (sub_1000588A0(v11, a2))
      {

        sub_1000AC17C();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000AC1BC();
        }

        sub_1000AC1DC();
      }

      else
      {
        if (qword_1000EEE80 != -1)
        {
          swift_once();
        }

        sub_1000AC2AC();
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1000AF0E0;
        *(v12 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
        *(v12 + 64) = sub_100011970();
        *(v12 + 32) = v11;
        sub_1000ABA5C();
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  v29[0] = sub_100087DFC(v14);
  sub_100057044(v29);

  v15 = v29[0];
  if (*(a1 + 16) && (v16 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v17 & 1) != 0) && (sub_1000068B4(*(a1 + 56) + 32 * v16, v29), (swift_dynamicCast() & 1) != 0))
  {
    v18 = v27;
    v19 = v28;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  *(v3 + 16) = v18;
  *(v3 + 24) = v19;
  if (*(a1 + 16) && (v20 = sub_10004F0CC(0x726564726FLL, 0xE500000000000000), (v21 & 1) != 0) && (sub_1000068B4(*(a1 + 56) + 32 * v20, v29), swift_dynamicCast()))
  {
    v22 = v27;
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v3 + 32) = v22;
  *(v3 + 40) = v15;
  if (!*(a1 + 16) || (v23 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0), (v24 & 1) == 0))
  {

    goto LABEL_30;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v23, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  v25 = v27;
LABEL_31:
  *(v3 + 48) = v25;
  return v3;
}

void sub_100056B64()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:
    v5 = _swiftEmptyArrayStorage;
LABEL_18:
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    v21 = &type metadata for String;
    *&v20 = v11;
    *(&v20 + 1) = v12;
    sub_100006910(&v20, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v14 = *(v1 + 32);
    v21 = &type metadata for Int;
    *&v20 = v14;
    sub_100006910(&v20, v19);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x726564726FLL, 0xE500000000000000, v15);
    v21 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&v20 = v5;
    sub_100006910(&v20, v19);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x736D657469, 0xE500000000000000, v16);
    v17 = *(v1 + 48);
    v21 = &type metadata for Bool;
    LOBYTE(v20) = v17;
    sub_100006910(&v20, v19);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0xD000000000000011, 0x80000001000B9DC0, v18);
    return;
  }

  if (v2 < 0)
  {
    v10 = *(v0 + 40);
  }

  v3 = sub_1000AC65C();
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = sub_100058D90();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000387AC(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1000387AC((v8 > 1), v9 + 1, 1, v5);
      }

      ++v4;

      v5[2] = v9 + 1;
      v5[v9 + 4] = v7;
    }

    while (v3 != v4);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_100056E10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100056E74()
{
  sub_1000AC12C(*(v0 + 16));
  v5 = *(v0 + 32);
  v6._countAndFlagsBits = sub_1000AC78C();
  sub_1000AC12C(v6);

  v7._countAndFlagsBits = 0x203A726564726F20;
  v7._object = 0xE800000000000000;
  sub_1000AC12C(v7);

  sub_1000AC58C(22);

  if (*(v0 + 48))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1000AC12C(v1);

  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x80000001000B9DE0;
  sub_1000AC12C(v8);

  v3 = *(v0 + 40);
  type metadata accessor for IMBListItem();
  v9._countAndFlagsBits = sub_1000AC1AC();
  sub_1000AC12C(v9);

  v10._countAndFlagsBits = 0x203A736D65746920;
  v10._object = 0xE800000000000000;
  sub_1000AC12C(v10);

  return 0x203A656C746974;
}

uint64_t sub_100057044(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000A4D24(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_1000AC77C(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 96) >= *(*v14 + 96))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for IMBListItem();
      v8 = sub_1000AC1CC();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_100057194(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1000AC5FC();
}

uint64_t sub_100057194(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 96);
    v10 = *(*(*a3 + 8 * v6) + 96);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 96);
      v14 = (v9 < v10) ^ (v13 >= v12);
      ++v11;
      v12 = v13;
    }

    while ((v14 & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 96) >= *(*v26 + 96))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_1000386A8((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 96) >= *(*v85 + 96))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 96) < *(*v90 + 96))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1000A2CCC(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_1000A2C40(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_1000A2CCC(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_1000578F8((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1000A2CCC(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_1000A2C40(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_1000578F8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 96) < *(*v4 + 96))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 96) < *(*v17 + 96))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100057B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100057BF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100057CB4()
{
  sub_100057D60();
  if (v0 <= 0x3F)
  {
    sub_10001777C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BIABubbleViewModelUserInteractionParadigm(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100057D60()
{
  if (!qword_1000F1550)
  {
    sub_100057DB8();
    v0 = sub_1000AC42C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F1550);
    }
  }
}

unint64_t sub_100057DB8()
{
  result = qword_1000F3A70;
  if (!qword_1000F3A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F3A70);
  }

  return result;
}

void sub_100057E04()
{
  sub_1000580D4(319, &qword_1000F1610, type metadata accessor for BIABubbleViewModelUserAction);
  if (v0 <= 0x3F)
  {
    sub_100057F00();
    if (v1 <= 0x3F)
    {
      sub_100057F78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_100057EC8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100057F00()
{
  if (!qword_1000F1618)
  {
    sub_1000041E8(&qword_1000F1620, &unk_1000B38D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000F1618);
    }
  }
}

void sub_100057F78()
{
  if (!qword_1000F1628)
  {
    sub_1000041E8(&qword_1000F1148, &unk_1000B3580);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000F1628);
    }
  }
}

void sub_100058044()
{
  sub_1000580D4(319, &qword_1000F16D8, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_100058120(319, v0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000580D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100058120(uint64_t a1, uint64_t a2)
{
  if (!qword_1000F16E0)
  {
    __chkstk_darwin(a1, a2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1000F16E0);
    }
  }
}

uint64_t sub_100058224(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 28526;
  }

  else
  {
    v4 = 7562617;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 28526;
  }

  else
  {
    v6 = 7562617;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();
  }

  return v9 & 1;
}

Swift::Int sub_1000582B8()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_100058328()
{
  *v0;
  sub_1000AC11C();
}

Swift::Int sub_100058384()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_1000583F0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA750;
  v8._object = v3;
  v5 = sub_1000AC6AC(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100058450(uint64_t *a1@<X8>)
{
  v2 = 7562617;
  if (*v1)
  {
    v2 = 28526;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100058480()
{
  result = qword_1000F1710;
  if (!qword_1000F1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1710);
  }

  return result;
}

uint64_t sub_1000584D4(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1000AF0E0;
    if (a2)
    {
      swift_getErrorValue();
      a2 = sub_1000AC7FC();
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_10000587C();
    if (v5)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    v7 = 0xE000000000000000;
    if (v5)
    {
      v7 = v5;
    }

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    sub_1000ABA5C();
  }

  return result;
}

unint64_t sub_100058620()
{
  result = qword_1000F1718;
  if (!qword_1000F1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1718);
  }

  return result;
}

BOOL sub_10005867C()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    return 1;
  }

  v3 = v0[6];
  v4 = v0[5] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    return 1;
  }

  v6 = v0[9];
  v7 = v0[8] & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  return v7 && sub_10002CE60() > 1u;
}

uint64_t sub_100058700()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[11];
  sub_100026FE0(v0[10]);

  return swift_deallocClassInstance();
}

Swift::Int sub_100058774()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

Swift::Int sub_1000587E0()
{
  sub_1000AC87C();
  sub_1000AC11C();
  return sub_1000AC8CC();
}

uint64_t sub_100058830@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000DA7A0;
  v7._object = v3;
  v5 = sub_1000AC6AC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000588A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  if (!*(a1 + 16) || (v6 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265), (v7 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v6, v38), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_12;
    }

LABEL_43:
    swift_once();
    goto LABEL_12;
  }

  if (*(a1 + 16))
  {
    v8 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
    if (v9)
    {
      sub_1000068B4(*(a1 + 56) + 32 * v8, v38);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v10 = sub_10004F0CC(0x656C797473, 0xE500000000000000), (v11 & 1) != 0) && (sub_1000068B4(*(a1 + 56) + 32 * v10, v38), (swift_dynamicCast() & 1) != 0))
        {
          v12._countAndFlagsBits = v36;
          v13 = v37;
        }

        else
        {
          v12._countAndFlagsBits = 0;
          v13 = 0xE000000000000000;
        }

        v15._rawValue = &off_1000DA588;
        v12._object = v13;
        sub_1000AC6AC(v15, v12);

        *(v3 + 24) = v36;
        *(v3 + 32) = v37;
        *(v3 + 40) = v36;
        *(v3 + 48) = v37;
        v16 = *(a1 + 16);
        if (v16)
        {
          v17 = sub_10004F0CC(0x656C746974627573, 0xE800000000000000);
          if (v18)
          {
            sub_1000068B4(*(a1 + 56) + 32 * v17, v38);
            v19 = swift_dynamicCast();
            v16 = v36;
            v20 = v37;
            if (!v19)
            {
              v16 = 0;
              v20 = 0;
            }

LABEL_23:
            *(v3 + 56) = v16;
            *(v3 + 64) = v20;
            v21 = *(a1 + 16);
            if (v21)
            {
              v22 = sub_10004F0CC(0x6564496567616D69, 0xEF7265696669746ELL);
              if (v23)
              {
                sub_1000068B4(*(a1 + 56) + 32 * v22, v38);
                v24 = swift_dynamicCast();
                v21 = v36;
                v25 = v37;
                if (!v24)
                {
                  v21 = 0;
                  v25 = 0;
                }

LABEL_29:
                *(v3 + 72) = v21;
                *(v3 + 80) = v25;
                if (*(a1 + 16) && (v26 = sub_10004F0CC(0x726564726FLL, 0xE500000000000000), (v27 & 1) != 0))
                {
                  sub_1000068B4(*(a1 + 56) + 32 * v26, v38);

                  if (swift_dynamicCast())
                  {
                    v28 = v36;
                    goto LABEL_35;
                  }
                }

                else
                {
                }

                v28 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_35:
                *(v3 + 96) = v28;
                v29 = *(v3 + 80);
                if (v29)
                {
                  if (!a2)
                  {
LABEL_41:
                    v35 = 0;
                    goto LABEL_42;
                  }

                  if (*(a2 + 16))
                  {
                    v30 = *(v3 + 72);
                    v31 = *(v3 + 80);

                    v32 = sub_10004F0CC(v30, v29);
                    v34 = v33;

                    if (v34)
                    {
                      v35 = *(*(a2 + 56) + 8 * v32);

LABEL_42:
                      *(v3 + 88) = v35;
                      return v3;
                    }
                  }
                }

                goto LABEL_41;
              }

              v21 = 0;
            }

            v25 = 0;
            goto LABEL_29;
          }

          v16 = 0;
        }

        v20 = 0;
        goto LABEL_23;
      }
    }
  }

  if (qword_1000EEE80 != -1)
  {
    goto LABEL_43;
  }

LABEL_12:
  sub_1000AC2AC();
  sub_1000ABA5C();

  type metadata accessor for IMBListItem();
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_100058D90()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  v21 = &type metadata for String;
  *&v20 = v2;
  *(&v20 + 1) = v3;
  sub_100006910(&v20, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = &_swiftEmptyDictionarySingleton;
  sub_10003A3E8(v19, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v5 = v22;
  v6 = v1[5];
  v7 = v1[6];
  v21 = &type metadata for String;
  *&v20 = v6;
  *(&v20 + 1) = v7;
  sub_100006910(&v20, v19);

  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v19, 0x656C746974, 0xE500000000000000, v8);
  v22 = v5;
  v9 = v1[8];
  if (v9)
  {
    v10 = v1[7];
    v21 = &type metadata for String;
    *&v20 = v10;
    *(&v20 + 1) = v9;
    sub_100006910(&v20, v19);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x656C746974627573, 0xE800000000000000, v11);
  }

  else
  {
    sub_100039E5C(0x656C746974627573, 0xE800000000000000, &v20);
    sub_1000172E0(&v20);
    v5 = v22;
  }

  v21 = &type metadata for String;
  *&v20 = 0x746C7561666564;
  *(&v20 + 1) = 0xE700000000000000;
  sub_100006910(&v20, v19);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v19, 0x656C797473, 0xE500000000000000, v12);
  v13 = v1[12];
  v21 = &type metadata for Int;
  *&v20 = v13;
  sub_100006910(&v20, v19);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v19, 0x726564726FLL, 0xE500000000000000, v14);
  v22 = v5;
  v15 = v1[10];
  if (v15)
  {
    v16 = v1[9];
    v21 = &type metadata for String;
    *&v20 = v16;
    *(&v20 + 1) = v15;
    sub_100006910(&v20, v19);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x6564496567616D69, 0xEF7265696669746ELL, v17);
    return v5;
  }

  else
  {
    sub_100039E5C(0x6564496567616D69, 0xEF7265696669746ELL, &v20);
    sub_1000172E0(&v20);
    return v22;
  }
}

uint64_t sub_100059048()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return swift_deallocClassInstance();
}

unint64_t sub_1000590E0()
{
  result = qword_1000F1958;
  if (!qword_1000F1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1958);
  }

  return result;
}

uint64_t sub_100059140()
{
  sub_1000AC12C(*(v0 + 24));
  sub_1000AC12C(*(v0 + 40));
  v2._countAndFlagsBits = 0x203A656C74697420;
  v2._object = 0xE800000000000000;
  sub_1000AC12C(v2);

  return 540697705;
}

BOOL sub_1000591F0(void *a1, void *a2)
{
  v4 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v4 && (sub_1000AC7AC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5] == a2[5] && a1[6] == a2[6];
  if (!v5 && (sub_1000AC7AC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[8];
  v7 = a2[8];
  if (v6)
  {
    if (!v7 || (a1[7] != a2[7] || v6 != v7) && (sub_1000AC7AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[10];
  v9 = a2[10];
  if (v8)
  {
    if (v9 && (a1[9] == a2[9] && v8 == v9 || (sub_1000AC7AC() & 1) != 0))
    {
      return a1[12] == a2[12];
    }
  }

  else if (!v9)
  {
    return a1[12] == a2[12];
  }

  return 0;
}

id sub_1000592E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1000AB6EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v17 = sub_10004F0CC(7107189, 0xE300000000000000), (v18 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v17, v29), (swift_dynamicCast() & 1) == 0))
  {

LABEL_7:

    goto LABEL_8;
  }

  sub_1000AB6DC();

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v22 = *(v12 + 32);
    v22(v16, v10, v11);
    if (!*(a1 + 16) || (v23 = sub_10004F0CC(0x79616C6564, 0xE500000000000000), (v24 & 1) == 0))
    {

      (*(v12 + 8))(v16, v11);
      goto LABEL_8;
    }

    sub_1000068B4(*(a1 + 56) + 32 * v23, v29);

    if (swift_dynamicCast())
    {
      v25.n128_f64[0] = v28;
      if (v28 < 29.0)
      {
        *&v3[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_delay] = v28;
        v22(&v3[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_url], v16, v11);
        *&v3[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_messageBody] = a2;
        v26 = type metadata accessor for IMBDelayedAuthResponse();
        v27.receiver = v3;
        v27.super_class = v26;
        return objc_msgSendSuper2(&v27, "init");
      }
    }

    (*(v12 + 8))(v16, v11, v25);
    goto LABEL_7;
  }

  sub_10004B9C0(v10);
LABEL_8:
  type metadata accessor for IMBDelayedAuthResponse();
  v19 = *((swift_isaMask & *v3) + 0x30);
  v20 = *((swift_isaMask & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100059664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBDelayedAuthResponse();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IMBDelayedAuthResponse()
{
  result = qword_1000F1988;
  if (!qword_1000F1988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005976C()
{
  result = sub_1000AB6EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100059818(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate);
  v6 = *(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate);
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (a1)
  {
    if ((*(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      (*(a2 + 32))(v2, &off_1000DCEF0, ObjectType, a2);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000598D0()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController);
  v8 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(v1 + v8, v6);
  v9 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  swift_beginAccess();
  sub_1000421CC(v6, v7 + v9);
  v10 = swift_endAccess();
  (*((swift_isaMask & *v7) + 0xE0))(v10);
  sub_10000E784(v6, &qword_1000F08E0, &unk_1000B4690);
  result = sub_10005A240();
  if (*(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) = 0;
    if (*(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate))
    {
      v12 = *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate + 8);
      v13 = *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate);
      ObjectType = swift_getObjectType();
      v15 = *(v12 + 32);
      swift_unknownObjectRetain();
      v15(v1, &off_1000DCEF0, ObjectType, v12);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100059A84(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints;
  v4 = *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints);
  *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints) = a1;
  if (v4)
  {
    v5 = objc_opt_self();
    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    isa = sub_1000AC18C().super.isa;
    [v5 deactivateConstraints:isa];

    v2 = *(v1 + v3);
  }

  if (v2)
  {
    v7 = objc_opt_self();
    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);

    v8 = sub_1000AC18C().super.isa;

    [v7 activateConstraints:v8];
  }
}

uint64_t sub_100059B8C()
{
  v0 = sub_1000ABF3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000ABF6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v12 = sub_1000AC32C();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_10005C1C4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DCF48;
  v15 = _Block_copy(aBlock);

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v15);

  (*(v1 + 8))(v5, v0);
  return (*(v7 + 8))(v11, v6);
}

void sub_100059E48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10005A240();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (*(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) == 1)
    {
      *(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) = 0;
      if (*(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate))
      {
        v4 = *(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate + 8);
        v5 = *(v2 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate);
        ObjectType = swift_getObjectType();
        v7 = *(v4 + 32);
        swift_unknownObjectRetain();
        v7(v3, &off_1000DCEF0, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }
  }
}