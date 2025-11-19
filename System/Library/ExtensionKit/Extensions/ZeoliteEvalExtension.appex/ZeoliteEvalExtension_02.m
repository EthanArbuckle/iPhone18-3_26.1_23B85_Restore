unint64_t sub_100029384()
{
  result = qword_100048678;
  if (!qword_100048678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048678);
  }

  return result;
}

unint64_t sub_1000293D8()
{
  result = qword_100048688;
  if (!qword_100048688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048688);
  }

  return result;
}

unint64_t sub_10002942C()
{
  result = qword_100048690;
  if (!qword_100048690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048690);
  }

  return result;
}

uint64_t sub_100029480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_1000482D0, &unk_100039900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000294F0()
{
  result = qword_1000486A0;
  if (!qword_1000486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486A0);
  }

  return result;
}

unint64_t sub_100029544()
{
  result = qword_1000486A8;
  if (!qword_1000486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486A8);
  }

  return result;
}

unint64_t sub_100029598()
{
  result = qword_1000486B0;
  if (!qword_1000486B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486B0);
  }

  return result;
}

unint64_t sub_1000295EC()
{
  result = qword_1000486B8;
  if (!qword_1000486B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486B8);
  }

  return result;
}

uint64_t sub_100029640(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048640, qword_100039D00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000296B8()
{
  result = qword_1000486D0;
  if (!qword_1000486D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486D0);
  }

  return result;
}

unint64_t sub_10002970C()
{
  result = qword_1000486D8;
  if (!qword_1000486D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486D8);
  }

  return result;
}

uint64_t sub_100029760(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000297A8()
{
  result = qword_1000486E8;
  if (!qword_1000486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486E8);
  }

  return result;
}

unint64_t sub_1000297FC()
{
  result = qword_1000486F0;
  if (!qword_1000486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486F0);
  }

  return result;
}

unint64_t sub_100029850()
{
  result = qword_1000486F8;
  if (!qword_1000486F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000486F8);
  }

  return result;
}

unint64_t sub_1000298A4()
{
  result = qword_100048700;
  if (!qword_100048700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048700);
  }

  return result;
}

uint64_t sub_100029918(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1000299C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048338, &unk_100039590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100029AF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048318, &unk_100039580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_100029C20(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B40(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100029DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029E60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000453C8;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100029EAC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045528;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100029EF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726170736E617274 && a2 == 0xEC00000079636E65 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7564659 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002A064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_1000487A8, &qword_10003A078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v40 = a1;
  sub_1000036D0(a1, v10);
  sub_10002B9B8();
  sub_100038B58();
  if (v2)
  {
    v41 = v2;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v38 = 0;
    v39 = 0;
    v103 = 0;
    v48 = 0uLL;
    v47 = 0;
    v45 = 1;
    v46 = 0uLL;
    sub_10000387C(v40);
    LOBYTE(v82) = 3;
    *(&v82 + 1) = v102[0];
    DWORD1(v82) = *(v102 + 3);
    *(&v82 + 1) = v44;
    v83 = v43;
    v84 = v42;
    *&v85 = v39;
    *(&v85 + 1) = v38;
    *&v86 = 0;
    *(&v86 + 1) = 2;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    *&v91[3] = *&v101[3];
    *v91 = *v101;
    v92 = v46;
    v93 = v45;
    v94 = v47;
    v95 = v48;
    v96 = v103;
    v97 = 0;
    v99 = 0;
    v98 = 0;
    v100 = 1;
    return sub_10001E938(&v82);
  }

  else
  {
    LOBYTE(v49) = 0;
    sub_10002B884();
    sub_100038948();
    v37 = v82;
    v71 = 1;
    sub_10002BA0C();
    sub_100038948();
    v39 = a2;
    v43 = v73;
    v44 = v72;
    v42 = v74;
    v13 = v75;
    v14 = v76;
    v33 = v77;
    v15 = v78;
    v35 = v80;
    v36 = v79;
    v34 = v81;
    memset(v65, 0, sizeof(v65));
    v66 = 2;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    sub_10001FD94(v65, &qword_1000487C0, &qword_10003A080);
    LOBYTE(v49) = 2;
    sub_10002BA60();
    sub_100038948();
    v32 = v15;
    v46 = v82;
    v45 = v83;
    v47 = v84;
    v48 = v85;
    v103 = v86;
    sub_10002BAB4(0, 0, 1);
    v61 = 3;
    sub_10002BB08();
    sub_100038948();
    v41 = 0;
    (*(v6 + 8))(v9, v5);
    v38 = v62;
    v30 = *(&v63 + 1);
    v31 = v63;
    v29 = v64;
    v16 = v37;
    LOBYTE(v49) = v37;
    v18 = v43;
    v17 = v44;
    *(&v49 + 1) = v44;
    *&v50 = v43;
    v19 = v42;
    *(&v50 + 1) = v42;
    *&v51 = v13;
    v20 = v33;
    *(&v51 + 1) = v14;
    v52 = v33;
    v21 = v32;
    *&v53 = v32;
    *(&v53 + 1) = v36;
    *&v54 = v35;
    BYTE8(v54) = v34;
    v55 = v46;
    *&v56 = v45;
    *(&v56 + 1) = v47;
    v57 = v48;
    *&v58 = v103;
    *(&v58 + 1) = v62;
    v59 = v63;
    v60 = v64;
    sub_10001FAE8(&v49, &v82);
    sub_10000387C(v40);
    LOBYTE(v82) = v16;
    *(&v82 + 1) = v17;
    v83 = v18;
    v84 = v19;
    *&v85 = v13;
    *(&v85 + 1) = v14;
    v86 = __PAIR128__(*(&v33 + 1), v20);
    v87 = v21;
    v88 = v36;
    v89 = v35;
    v90 = v34;
    v92 = v46;
    v93 = v45;
    v94 = v47;
    v95 = v48;
    v96 = v103;
    v97 = v38;
    v98 = v31;
    v99 = v30;
    v100 = v29;
    result = sub_10001E938(&v82);
    v22 = v58;
    v23 = v39;
    *(v39 + 128) = v57;
    *(v23 + 144) = v22;
    *(v23 + 160) = v59;
    *(v23 + 176) = v60;
    v24 = v54;
    *(v23 + 64) = v53;
    *(v23 + 80) = v24;
    v25 = v56;
    *(v23 + 96) = v55;
    *(v23 + 112) = v25;
    v26 = v50;
    *v23 = v49;
    *(v23 + 16) = v26;
    v27 = v52;
    *(v23 + 32) = v51;
    *(v23 + 48) = v27;
  }

  return result;
}

uint64_t sub_10002A69C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374757074756FLL && a2 == 0xEE00796765746172;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646465626D65 && a2 == 0xE800000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B65726F7453766BLL && a2 == 0xEA00000000007965)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002A810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274537475706E69 && a2 == 0xED00007967657461;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 107 && a2 == 0xE100000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D7265746C6966 && a2 == 0xED000064496C6564 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010003BBE0 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B65726F7453766BLL && a2 == 0xEA00000000007965 || (sub_100038A58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010003BC00 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_100038A58();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10002AA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048770, &qword_10003A068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v36 = a1;
  sub_1000036D0(a1, v10);
  sub_10002B7DC();
  sub_100038B58();
  if (v2)
  {
    v59 = v2;
    v35 = 0;
    sub_10000387C(v36);
    v44 = 0;
    *v45 = v58[0];
    *&v45[3] = *(v58 + 3);
    v46 = 10;
    v47 = 0;
    v48 = 0;
    v49 = 3;
    *v50 = *v57;
    *&v50[3] = *&v57[3];
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = v35;
    v55 = 0;
    v56 = 0;
    return sub_10001E98C(&v44);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_10002B830();
    sub_100038948();
    v34 = v44;
    v44 = 1;
    v33 = sub_100038978();
    v44 = 2;
    v32 = sub_100038908();
    v31 = v13;
    LOBYTE(v37) = 3;
    sub_10002B884();
    sub_100038948();
    v30 = v44;
    v44 = 4;
    v14 = sub_100038908();
    v16 = v15;
    v44 = 5;
    v17 = sub_100038908();
    v35 = v18;
    v43 = 6;
    v19 = sub_100038908();
    v59 = 0;
    v20 = v19;
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v23 = v34;
    LOBYTE(v37) = v34;
    v24 = v33;
    *(&v37 + 1) = v33;
    *&v38 = v32;
    v25 = v31;
    *(&v38 + 1) = v31;
    LOBYTE(v39) = v30;
    *(&v39 + 1) = v14;
    *&v40 = v16;
    v29 = v17;
    *(&v40 + 1) = v17;
    v26 = v35;
    *&v41 = v35;
    *(&v41 + 1) = v20;
    v42 = v22;
    sub_10002B8D8(&v37, &v44);
    sub_10000387C(v36);
    v44 = v23;
    v46 = v24;
    v47 = v32;
    v48 = v25;
    v49 = v30;
    v51 = v14;
    v52 = v16;
    v53 = v29;
    v54 = v26;
    v55 = v20;
    v56 = v22;
    result = sub_10001E98C(&v44);
    v27 = v40;
    *(a2 + 32) = v39;
    *(a2 + 48) = v27;
    *(a2 + 64) = v41;
    *(a2 + 80) = v42;
    v28 = v38;
    *a2 = v37;
    *(a2 + 16) = v28;
  }

  return result;
}

uint64_t sub_10002B034(uint64_t *a1)
{
  v3 = sub_100001B40(&qword_100048758, &qword_10003A058);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B788();
  sub_100038B58();
  if (v1)
  {
    return sub_10000387C(a1);
  }

  v13[15] = 0;
  v9 = sub_100038968();
  v13[14] = 1;
  v10 = sub_100038968();
  (*(v4 + 8))(v7, v3);
  sub_10000387C(a1);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

uint64_t sub_10002B1E4(uint64_t *a1)
{
  v3 = sub_100001B40(&qword_100048740, &qword_10003A048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B734();
  sub_100038B58();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_100038958();
    v11 = 1;
    sub_100038958();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000387C(a1);
  return v8;
}

uint64_t sub_10002B3B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000010003BB80 == a2;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010003BBA0 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010003BBC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002B4D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048728, &qword_10003A038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B6E0();
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  v27 = 0;
  v11 = sub_100038908();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_100038908();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_100038928();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_10000387C(a1);
  v22 = v23;
  *a2 = v24;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v20 & 1;
  return result;
}

unint64_t sub_10002B6E0()
{
  result = qword_100048730;
  if (!qword_100048730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048730);
  }

  return result;
}

unint64_t sub_10002B734()
{
  result = qword_100048748;
  if (!qword_100048748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048748);
  }

  return result;
}

unint64_t sub_10002B788()
{
  result = qword_100048760;
  if (!qword_100048760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048760);
  }

  return result;
}

unint64_t sub_10002B7DC()
{
  result = qword_100048778;
  if (!qword_100048778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048778);
  }

  return result;
}

unint64_t sub_10002B830()
{
  result = qword_100048780;
  if (!qword_100048780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048780);
  }

  return result;
}

unint64_t sub_10002B884()
{
  result = qword_100048788;
  if (!qword_100048788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048788);
  }

  return result;
}

unint64_t sub_10002B910()
{
  result = qword_100048798;
  if (!qword_100048798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048798);
  }

  return result;
}

unint64_t sub_10002B964()
{
  result = qword_1000487A0;
  if (!qword_1000487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487A0);
  }

  return result;
}

unint64_t sub_10002B9B8()
{
  result = qword_1000487B0;
  if (!qword_1000487B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487B0);
  }

  return result;
}

unint64_t sub_10002BA0C()
{
  result = qword_1000487B8;
  if (!qword_1000487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487B8);
  }

  return result;
}

unint64_t sub_10002BA60()
{
  result = qword_1000487C8;
  if (!qword_1000487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487C8);
  }

  return result;
}

uint64_t sub_10002BAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_10002BB08()
{
  result = qword_1000487D0;
  if (!qword_1000487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487D0);
  }

  return result;
}

unint64_t sub_10002BB5C()
{
  result = qword_1000487E0;
  if (!qword_1000487E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487E0);
  }

  return result;
}

unint64_t sub_10002BBB0()
{
  result = qword_1000487F0;
  if (!qword_1000487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487F0);
  }

  return result;
}

unint64_t sub_10002BC04()
{
  result = qword_1000487F8;
  if (!qword_1000487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000487F8);
  }

  return result;
}

unint64_t sub_10002BC58()
{
  result = qword_100048800;
  if (!qword_100048800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048800);
  }

  return result;
}

unint64_t sub_10002BCAC()
{
  result = qword_100048810;
  if (!qword_100048810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048810);
  }

  return result;
}

uint64_t sub_10002BD00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002BD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002BDC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045600;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10002BE14()
{
  result = qword_100048830;
  if (!qword_100048830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048830);
  }

  return result;
}

uint64_t sub_10002BECC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002BF5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002C040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100037F08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001B40(&qword_100048178, &unk_100039530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002C150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100037F08();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001B40(&qword_100048178, &unk_100039530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10002C258()
{
  sub_100037F08();
  if (v0 <= 0x3F)
  {
    sub_10002C2F8(319, &qword_1000488A0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002C2F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000387F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ZeoliteEvalExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteEvalExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002C49C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002C4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 sub_10002C55C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002C578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002C5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_10002C644(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002C668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 81))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_10002C6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10002C7A0()
{
  result = qword_1000488E8;
  if (!qword_1000488E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000488E8);
  }

  return result;
}

unint64_t sub_10002C7F8()
{
  result = qword_1000488F0;
  if (!qword_1000488F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000488F0);
  }

  return result;
}

unint64_t sub_10002C850()
{
  result = qword_1000488F8;
  if (!qword_1000488F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000488F8);
  }

  return result;
}

unint64_t sub_10002C8A8()
{
  result = qword_100048900;
  if (!qword_100048900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048900);
  }

  return result;
}

unint64_t sub_10002C900()
{
  result = qword_100048908;
  if (!qword_100048908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048908);
  }

  return result;
}

unint64_t sub_10002C958()
{
  result = qword_100048910;
  if (!qword_100048910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048910);
  }

  return result;
}

unint64_t sub_10002C9B0()
{
  result = qword_100048918;
  if (!qword_100048918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048918);
  }

  return result;
}

unint64_t sub_10002CA08()
{
  result = qword_100048920;
  if (!qword_100048920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048920);
  }

  return result;
}

unint64_t sub_10002CA60()
{
  result = qword_100048928;
  if (!qword_100048928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048928);
  }

  return result;
}

unint64_t sub_10002CAB8()
{
  result = qword_100048930;
  if (!qword_100048930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048930);
  }

  return result;
}

unint64_t sub_10002CB10()
{
  result = qword_100048938;
  if (!qword_100048938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048938);
  }

  return result;
}

unint64_t sub_10002CB68()
{
  result = qword_100048940;
  if (!qword_100048940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048940);
  }

  return result;
}

unint64_t sub_10002CBC0()
{
  result = qword_100048948;
  if (!qword_100048948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048948);
  }

  return result;
}

unint64_t sub_10002CC18()
{
  result = qword_100048950;
  if (!qword_100048950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048950);
  }

  return result;
}

unint64_t sub_10002CC70()
{
  result = qword_100048958;
  if (!qword_100048958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048958);
  }

  return result;
}

unint64_t sub_10002CCC8()
{
  result = qword_100048960;
  if (!qword_100048960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048960);
  }

  return result;
}

unint64_t sub_10002CD20()
{
  result = qword_100048968;
  if (!qword_100048968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048968);
  }

  return result;
}

unint64_t sub_10002CD78()
{
  result = qword_100048970;
  if (!qword_100048970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048970);
  }

  return result;
}

unint64_t sub_10002CDD0()
{
  result = qword_100048978;
  if (!qword_100048978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048978);
  }

  return result;
}

unint64_t sub_10002CE28()
{
  result = qword_100048980;
  if (!qword_100048980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048980);
  }

  return result;
}

unint64_t sub_10002CE80()
{
  result = qword_100048988;
  if (!qword_100048988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048988);
  }

  return result;
}

unint64_t sub_10002CED8()
{
  result = qword_100048990;
  if (!qword_100048990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048990);
  }

  return result;
}

uint64_t sub_10002CF2C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045668;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002CF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961447473616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617373654D78616DLL && a2 == 0xEB00000000736567 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D7265746C6966 && a2 == 0xEE00736567617373 || (sub_100038A58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D656C676E6973 && a2 == 0xEE00736567617373 || (sub_100038A58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5470756E61656C63 && a2 == 0xEB00000000747865 || (sub_100038A58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_100038A58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72437265746C6966 && a2 == 0xEE00616972657469)
  {

    return 7;
  }

  else
  {
    v6 = sub_100038A58();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10002D238@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_1000489D0, &qword_10003AB98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v65 = 1;
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002E6D4();
  sub_100038B58();
  if (v2)
  {
    v68 = v2;
    v11 = 0;
    LOBYTE(v12) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 7;
    v16 = 128;
    v17 = 2048;
LABEL_4:
    sub_10000387C(a1);
    v48 = v15;
    v49 = v16;
    v50 = v17;
    v51 = v14;
    v52 = v13;
    v53 = v12;
    v54 = v66;
    v55 = v67;
    v56 = v11;
    v57 = v65;
    *v58 = *v64;
    *&v58[3] = *&v64[3];
    v59 = 1;
    v60 = 0;
    v63 = 0;
    v61 = 0;
    v62 = 0;
    return sub_10002E728(&v48);
  }

  LOBYTE(v48) = 0;
  v37 = sub_100038978();
  LOBYTE(v48) = 1;
  v36 = sub_100038978();
  LOBYTE(v48) = 2;
  v35 = sub_100038978();
  LOBYTE(v48) = 3;
  v14 = sub_100038918();
  v34 = a2;
  LOBYTE(v48) = 4;
  v13 = sub_100038918();
  LOBYTE(v48) = 5;
  v12 = sub_100038918();
  LOBYTE(v48) = 6;
  v19 = sub_100038938();
  v68 = 0;
  v11 = v19;
  v65 = v20 & 1;
  v44 = 7;
  sub_10002E758();
  v21 = v68;
  sub_100038948();
  v68 = v21;
  if (v21)
  {
    (*(v6 + 8))(v9, v5);
    v15 = v37;
    v16 = v36;
    v17 = v35;
    goto LABEL_4;
  }

  (*(v6 + 8))(v9, v5);
  v32 = *(&v45 + 1);
  v33 = v45;
  v30 = *(&v46 + 1);
  v31 = v46;
  HIDWORD(v29) = v47;
  v22 = v37;
  *&v38 = v37;
  v23 = v36;
  *(&v38 + 1) = v36;
  v24 = v35;
  *&v39 = v35;
  BYTE8(v39) = v14;
  BYTE9(v39) = v13;
  BYTE10(v39) = v12;
  *&v40 = v11;
  v25 = v65;
  BYTE8(v40) = v65;
  v41 = v45;
  v42 = v46;
  v43 = v47;
  sub_10001FBA8(&v38, &v48);
  sub_10000387C(a1);
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = v14;
  v52 = v13;
  v53 = v12;
  v56 = v11;
  v57 = v25;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  v62 = v30;
  v63 = BYTE4(v29);
  result = sub_10002E728(&v48);
  v26 = v41;
  v27 = v34;
  *(v34 + 32) = v40;
  *(v27 + 48) = v26;
  *(v27 + 64) = v42;
  *(v27 + 80) = v43;
  v28 = v39;
  *v27 = v38;
  *(v27 + 16) = v28;
  return result;
}

uint64_t sub_10002D800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002D96C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100001B40(&qword_1000489E8, &qword_10003ABA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002E7AC();
  sub_100038B58();
  if (v2)
  {
    sub_10000387C(a1);
  }

  else
  {
    v34 = 0;
    v11 = sub_100038978();
    v33 = 1;
    v12 = sub_100038908();
    v14 = v13;
    v30 = v12;
    v32 = 2;
    v15 = sub_100038908();
    v17 = v16;
    v29 = v15;
    v31 = 3;
    v18 = sub_100038908();
    v19 = *(v6 + 8);
    v28 = v18;
    v20 = v9;
    v22 = v21;
    v19(v20, v5);

    sub_10000387C(a1);

    v24 = v29;
    v25 = v30;
    *a2 = v11;
    a2[1] = v25;
    a2[2] = v14;
    a2[3] = v24;
    v26 = v28;
    a2[4] = v17;
    a2[5] = v26;
    a2[6] = v22;
  }

  return result;
}

uint64_t sub_10002DC04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C6E4F746E6573 && a2 == 0xE800000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002DD24(uint64_t *a1)
{
  v3 = sub_100001B40(&qword_1000489F8, &qword_10003ABA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v10 - v6;
  v8 = a1[3];
  sub_1000036D0(a1, v8);
  sub_10002E800();
  sub_100038B58();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_100038938();
    v12 = 1;
    v10[3] = sub_100038918();
    v11 = 2;
    sub_100038908();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000387C(a1);
  return v8;
}

uint64_t sub_10002DF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961446B656577 && a2 == 0xE800000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F487472617473 && a2 == 0xE900000000000072 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F48646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002E030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048AB0, &qword_10003B1A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002F3E4();
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  sub_100001B40(&qword_100048A48, qword_10003AD10);
  v23 = 0;
  sub_10002F438(&qword_100048AC0, sub_10002F4B0);
  sub_100038948();
  v11 = v24;
  v22 = 1;
  v12 = sub_100038938();
  v20 = v13;
  v19 = v12;
  v21 = 2;
  v14 = sub_100038938();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  result = sub_10000387C(a1);
  v18 = v19;
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16 & 1;
  return result;
}

uint64_t sub_10002E28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496769666E6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E75526563726F66 && a2 == 0xE800000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365526563726F66 && a2 == 0xEA00000000007465 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010003BAE0 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736567617473 && a2 == 0xE600000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010003BB00 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261506465626D65 && a2 == 0xEF73726574656D61 || (sub_100038A58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72615065726F6373 && a2 == 0xEF73726574656D61 || (sub_100038A58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010003BB20 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010003BB40 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010003BB60 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_100038A58();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_10002E62C()
{
  result = qword_1000489A0;
  if (!qword_1000489A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489A0);
  }

  return result;
}

unint64_t sub_10002E680()
{
  result = qword_1000489C8;
  if (!qword_1000489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489C8);
  }

  return result;
}

unint64_t sub_10002E6D4()
{
  result = qword_1000489D8;
  if (!qword_1000489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489D8);
  }

  return result;
}

unint64_t sub_10002E758()
{
  result = qword_1000489E0;
  if (!qword_1000489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489E0);
  }

  return result;
}

unint64_t sub_10002E7AC()
{
  result = qword_1000489F0;
  if (!qword_1000489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489F0);
  }

  return result;
}

unint64_t sub_10002E800()
{
  result = qword_100048A00;
  if (!qword_100048A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A00);
  }

  return result;
}

unint64_t sub_10002E854()
{
  result = qword_100048A10;
  if (!qword_100048A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A10);
  }

  return result;
}

uint64_t sub_10002E8A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_100048178, &unk_100039530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SmsMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SmsMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002EBC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002EC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10002ED28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002ED3C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002ED98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10002EE04()
{
  result = qword_100048A38;
  if (!qword_100048A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A38);
  }

  return result;
}

unint64_t sub_10002EEA0()
{
  result = qword_100048A50;
  if (!qword_100048A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A50);
  }

  return result;
}

unint64_t sub_10002EEF8()
{
  result = qword_100048A58;
  if (!qword_100048A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A58);
  }

  return result;
}

unint64_t sub_10002EF50()
{
  result = qword_100048A60;
  if (!qword_100048A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A60);
  }

  return result;
}

unint64_t sub_10002EFA8()
{
  result = qword_100048A68;
  if (!qword_100048A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A68);
  }

  return result;
}

unint64_t sub_10002F000()
{
  result = qword_100048A70;
  if (!qword_100048A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A70);
  }

  return result;
}

unint64_t sub_10002F058()
{
  result = qword_100048A78;
  if (!qword_100048A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A78);
  }

  return result;
}

unint64_t sub_10002F0B0()
{
  result = qword_100048A80;
  if (!qword_100048A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A80);
  }

  return result;
}

unint64_t sub_10002F108()
{
  result = qword_100048A88;
  if (!qword_100048A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A88);
  }

  return result;
}

unint64_t sub_10002F160()
{
  result = qword_100048A90;
  if (!qword_100048A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A90);
  }

  return result;
}

unint64_t sub_10002F1B8()
{
  result = qword_100048A98;
  if (!qword_100048A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A98);
  }

  return result;
}

unint64_t sub_10002F210()
{
  result = qword_100048AA0;
  if (!qword_100048AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AA0);
  }

  return result;
}

unint64_t sub_10002F268()
{
  result = qword_100048AA8;
  if (!qword_100048AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AA8);
  }

  return result;
}

uint64_t sub_10002F2BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D6F437473616CLL && a2 == 0xEE006E6F6974656CLL;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726575517473616CLL && a2 == 0xEB00000000646569 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574497473616CLL && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

unint64_t sub_10002F3E4()
{
  result = qword_100048AB8;
  if (!qword_100048AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AB8);
  }

  return result;
}

uint64_t sub_10002F438(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048A48, qword_10003AD10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002F4B0()
{
  result = qword_100048AC8;
  if (!qword_100048AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AC8);
  }

  return result;
}

unint64_t sub_10002F504()
{
  result = qword_100048AE0;
  if (!qword_100048AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AE0);
  }

  return result;
}

unint64_t sub_10002F558()
{
  result = qword_100048AE8;
  if (!qword_100048AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AE8);
  }

  return result;
}

uint64_t sub_10002F5AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002F63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002F700()
{
  result = qword_100048AF0;
  if (!qword_100048AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AF0);
  }

  return result;
}

unint64_t sub_10002F758()
{
  result = qword_100048AF8;
  if (!qword_100048AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AF8);
  }

  return result;
}

unint64_t sub_10002F7B0()
{
  result = qword_100048B00;
  if (!qword_100048B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048B00);
  }

  return result;
}

uint64_t sub_10002F848(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100037F08();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_100001B40(&qword_100048178, &unk_100039530) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002F970, 0, 0);
}

id sub_10002F970()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = *(type metadata accessor for TransparencyExtractor(0) + 20);
  v8 = *(v3 + 56);
  v7 = v3 + 56;
  v6 = v8;
  (v8)(v1, 1, 1, v2);
  v9 = *v4;
  if (*v4 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v13 = sub_1000388A8();
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v10 = v0[11];
  v11 = v0[4];
  v12 = v0[2];
  v5 = sub_10002FE98(v0[3] + v5, v10, v9, 0);
  sub_10001FD94(v10, &qword_100048178, &unk_100039530);
  (v6)(v12, 1, 1, v11);
  v4 = v6;
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_4:
    v14 = 0;
    v15 = v0[5];
    v63 = (v15 + 48);
    v64 = v5 & 0xC000000000000001;
    v55 = (v15 + 16);
    v56 = v5 & 0xFFFFFFFFFFFFFF8;
    v58 = (v15 + 8);
    v61 = (v15 + 32);
    v16 = &unk_100039530;
    v59 = v13;
    v60 = v7;
    v62 = v5;
    v57 = v4;
    do
    {
      if (v64)
      {
        v22 = sub_100038848();
      }

      else
      {
        if (v14 >= *(v56 + 16))
        {
          goto LABEL_22;
        }

        v22 = *(v5 + 8 * v14 + 32);
      }

      v23 = v22;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v24 = v4;
      v25 = v7;
      v26 = v0[10];
      v27 = v16;
      v28 = v0[4];
      sub_10001FA38(v0[2], v26, &qword_100048178, v27);
      if ((*v63)(v26, 1, v28) == 1)
      {
        sub_10001FD94(v0[10], &qword_100048178, v27);
        v29 = [v23 timestamp];
        v16 = v27;
        if (v29)
        {
          v30 = v0[8];
          v31 = v0[2];
          v32 = v29;
          sub_100037EE8();

          sub_10001FD94(v31, &qword_100048178, v27);
          v33 = 0;
        }

        else
        {
          sub_10001FD94(v0[2], &qword_100048178, v27);

          v33 = 1;
        }

        v7 = v25;
        v21 = v14 + 1;
        v4 = v24;
        (v24)(v0[8], v33, 1, v0[4]);
        v20 = v0 + 8;
        v5 = v62;
      }

      else
      {
        v16 = v27;
        v34 = *v61;
        (*v61)(v0[7], v0[10], v0[4]);
        result = [v23 timestamp];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v36 = result;
        v38 = v0[6];
        v37 = v0[7];
        v39 = v0[4];
        v40 = v0[2];
        sub_100037EE8();

        sub_100037CA4(&qword_100048D98, &type metadata accessor for Date);
        LOBYTE(v39) = sub_100038628();

        sub_10001FD94(v40, &qword_100048178, v16);
        v41 = v0[9];
        if (v39)
        {
          v42 = v0[6];
          v43 = v0[4];
          v17 = *v58;
          (*v58)(v0[7], v43);
          (*v55)(v41, v42, v43);
        }

        else
        {
          v34(v0[9], v0[7], v0[4]);
          v17 = *v58;
        }

        v4 = v57;
        v18 = v0[9];
        v19 = v0[4];
        v17(v0[6], v19);
        v7 = v60;
        (v57)(v18, 0, 1, v19);
        v20 = v0 + 9;
        v5 = v62;
        v13 = v59;
        v21 = v14 + 1;
      }

      sub_10002E8A8(*v20, v0[2]);
      ++v14;
    }

    while (v21 != v13);
  }

LABEL_25:
  v44 = v0[10];
  v45 = v0[11];
  v46 = v5;
  v48 = v0[8];
  v47 = v0[9];
  v50 = v0[6];
  v49 = v0[7];
  v51 = v0[3];
  v52 = swift_task_alloc();
  *(v52 + 16) = v51;
  v53 = sub_10001BA28(sub_100037C78, v52, v46);

  v54 = v0[1];

  return v54(v53, 24);
}

uint64_t sub_10002FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100001B40(&qword_100048178, &unk_100039530);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &aBlock - v13;
  sub_10001FA38(a1, &aBlock - v13, &qword_100048178, &unk_100039530);
  result = sub_10001FA38(a2, v12, &qword_100048178, &unk_100039530);
  if ((a4 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_100037F08();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    isa = 0;
    if (v18(v14, 1, v16) != 1)
    {
      isa = sub_100037EC8().super.isa;
      (*(v17 + 8))(v14, v16);
    }

    if (v18(v12, 1, v16) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_100037EC8().super.isa;
      (*(v17 + 8))(v12, v16);
    }

    v21 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v20 maxEvents:a3 lastN:a4 reversed:0];

    v22 = swift_allocObject();
    *(v22 + 16) = _swiftEmptyArrayStorage;
    v23 = [BiomeLibrary() GenerativeExperiences];
    swift_unknownObjectRelease();
    v24 = [v23 TransparencyLog];
    swift_unknownObjectRelease();
    v25 = sub_100038638();
    v26 = [v24 publisherWithUseCase:v25 options:v21];

    v35 = sub_100037C94;
    v36 = v22;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100037D14;
    v34 = &unk_100046A28;
    v27 = _Block_copy(&aBlock);

    v35 = sub_100037C9C;
    v36 = v22;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100037D14;
    v34 = &unk_100046A50;
    v28 = _Block_copy(&aBlock);

    v29 = [v26 sinkWithCompletion:v27 receiveInput:v28];

    _Block_release(v28);
    _Block_release(v27);

    swift_beginAccess();
    v30 = *(v22 + 16);

    return v30;
  }

  return result;
}

uint64_t sub_1000302D8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 prompt];
  if (v6)
  {
    v7 = v6;
    sub_100038648();

    v8 = a2[2];
    if (v8)
    {
      v9 = a2[1];
      v10 = a2[2];

      v11 = [v5 useCase];
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = v11;
      v13 = sub_100038648();
      v15 = v14;

      if (v9 == v13 && v8 == v15)
      {
      }

      else
      {
        v17 = sub_100038A58();

        if ((v17 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    v18 = a2[4];
    if (!v18)
    {
      goto LABEL_15;
    }

    v19 = a2[3];
    v20 = a2[4];

    v21 = [v5 model];
    if (v21)
    {
      v22 = v21;
      v23 = sub_100038648();
      v25 = v24;

      if (v19 == v23 && v18 == v25)
      {

        goto LABEL_15;
      }

      v26 = sub_100038A58();

      if (v26)
      {
LABEL_15:
        v27 = a2[6];
        if (!v27)
        {
LABEL_23:
          sub_100038158();
          v16 = 0;
          goto LABEL_24;
        }

        v28 = a2[5];

        v29 = [v5 modelVersion];
        if (v29)
        {
          v30 = v29;
          v31 = sub_100038648();
          v33 = v32;

          if (v28 == v31 && v27 == v33)
          {

            goto LABEL_23;
          }

          v34 = sub_100038A58();

          if (v34)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_21:

      v16 = 1;
      goto LABEL_24;
    }

LABEL_20:

    goto LABEL_21;
  }

  v16 = 1;
LABEL_24:
  v35 = sub_100038178();
  return (*(*(v35 - 8) + 56))(a3, v16, 1, v35);
}

void sub_1000305E8(void *a1, uint64_t a2)
{
  v4 = [a1 state];
  if (v4 == 1)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v11 = sub_100038598();
    sub_100003680(v11, qword_100048DC8);
    v12 = a1;
    oslog = sub_100038578();
    v13 = sub_1000387A8();

    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [v12 error];
    if (v16)
    {
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    *(v14 + 4) = v16;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Error reading data: %@", v14, 0xCu);
    sub_10001FD94(v15, &qword_100048190, &qword_10003B590);

    goto LABEL_23;
  }

  if (!v4)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v5 = sub_100038598();
    sub_100003680(v5, qword_100048DC8);

    v6 = sub_100038578();
    v7 = sub_1000387A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_beginAccess();
      v9 = *(a2 + 16);
      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v21 = *(a2 + 16);
        }

        v10 = sub_1000388A8();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v6, v7, "Data reading completed. Found %ld messages.", v8, 0xCu);
    }

    else
    {
    }

    return;
  }

  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v18 = sub_100038598();
  sub_100003680(v18, qword_100048DC8);
  oslog = sub_100038578();
  v19 = sub_1000387C8();
  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v19, "Data reading ends with unknown reason.", v20, 2u);
LABEL_23:
  }

LABEL_24:
}

void sub_10003095C(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 prompt];
    if (v4)
    {

      swift_beginAccess();
      v5 = v6;
      sub_1000386E8();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100038708();
      }

      sub_100038728();
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_100030A6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100037D00;

  return sub_10002F848(a1);
}

uint64_t sub_100030B04(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100038178();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_100038278();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_100037F08();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v12 = sub_1000381E8();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v15 = sub_100038748();
  v2[24] = v15;
  v16 = *(v15 - 8);
  v2[25] = v16;
  v17 = *(v16 + 64) + 15;
  v2[26] = swift_task_alloc();
  v18 = *(*(sub_100001B40(&qword_100048DA0, &qword_10003B5A8) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v19 = *(*(sub_100001B40(&qword_100048178, &unk_100039530) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v20 = sub_100038028();
  v2[32] = v20;
  v21 = *(v20 - 8);
  v2[33] = v21;
  v22 = *(v21 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_100030E78, 0, 0);
}

uint64_t sub_100030E78()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[5];
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 26);
  v8 = type metadata accessor for EmailExtractor(0);
  sub_10001FA38(v3 + *(v8 + 20), v2, &qword_100048178, &unk_100039530);
  sub_100038018();
  v9 = async function pointer to MessageExtractor.isDataAccessible()[1];
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_100030F80;
  v11 = v0[35];

  return MessageExtractor.isDataAccessible()();
}

uint64_t sub_100030F80(char a1)
{
  v2 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_100031080, 0, 0);
}

uint64_t sub_100031080()
{
  if (*(v0 + 416) == 1)
  {
    v1 = *(v0 + 272);
    v2 = *(v0 + 280);
    v3 = *(v0 + 240);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v5 + 56);
    *(v0 + 296) = v6;
    *(v0 + 304) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v3, 1, 1, v4);
    sub_100038008();
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 376) = 0;
    *(v0 + 384) = _swiftEmptyArrayStorage;
    v7 = sub_100037CA4(&qword_100048DA8, &type metadata accessor for MessageExtractor);
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    *(v0 + 392) = v9;
    *v9 = v0;
    v9[1] = sub_1000313E4;
    v10 = *(v0 + 272);
    v11 = *(v0 + 256);
    v12 = *(v0 + 216);

    return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v7);
  }

  else
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v13 = sub_100038598();
    sub_100003680(v13, qword_100048DC8);
    v14 = sub_100038578();
    v15 = sub_1000387A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Email interface: data not accessible.", v16, 2u);
    }

    v17 = *(v0 + 280);
    v18 = *(v0 + 256);
    v19 = *(v0 + 264);
    v20 = *(v0 + 120);
    v21 = *(v0 + 128);
    v22 = *(v0 + 32);

    (*(v19 + 8))(v17, v18);
    (*(v21 + 56))(v22, 1, 1, v20);
    v24 = *(v0 + 272);
    v23 = *(v0 + 280);
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v35 = *(v0 + 168);
    v36 = *(v0 + 144);
    v37 = *(v0 + 136);
    v38 = *(v0 + 112);
    v39 = *(v0 + 104);
    v40 = *(v0 + 96);
    v41 = *(v0 + 88);
    v42 = *(v0 + 64);

    v33 = *(v0 + 8);

    return v33(0, 7);
  }
}

uint64_t sub_1000313E4()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_100032914;
  }

  else
  {
    v3 = sub_1000314F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000314F8()
{
  v2 = v0[13].i64[1];
  v3 = v0[9].i64[1];
  v4 = v0[10].i64[0];
  v202 = v0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v44 = v0[11].i64[1];
    v45 = *(v4 + 32);
    v45(v44, v2, v3);
    v46 = sub_1000381C8();
    v48 = v47;

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {
      v77 = v0[23].i64[1];
      (*(v0[10].i64[0] + 8))(v0[11].i64[1], v0[9].i64[1]);
      if (__OFADD__(v77, 1))
      {
        __break(1u);
        goto LABEL_138;
      }

      v78 = v0[24].i64[0];
      v79 = vdupq_n_s64(v77 + 1);
      goto LABEL_131;
    }

    v50 = v0[2].i64[1];
    v51 = *(v50 + 24);
    if (v51 != 2 && (v51 & 1) != 0)
    {
      v52 = v0[11].i64[1];
      sub_1000381A8();
      if (v53)
      {
        v54 = sub_100038668();
        v56 = v55;

        if (v54 == 0x6E65672D6F747561 && v56 == 0xEE00646574617265)
        {

          goto LABEL_98;
        }

        v144 = sub_100038A58();

        if (v144)
        {
LABEL_98:
          v145 = v0[22].i64[1];
          v146 = (*(v0[10].i64[0] + 8))(v0[11].i64[1], v0[9].i64[1]);
          if (!__OFADD__(v145, 1))
          {
            v78 = v0[24].i64[0];
            v79 = v0[23];
            v149 = vdupq_n_s64(v145 + 1);
LABEL_130:
            v0[22] = v149;
LABEL_131:
            v0[23] = v79;
LABEL_132:
            v0[24].i64[0] = v78;
            v189 = sub_100037CA4(&qword_100048DA8, &type metadata accessor for MessageExtractor);
            v190 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
            v191 = swift_task_alloc();
            v0[24].i64[1] = v191;
            *v191 = v0;
            v191[1] = sub_1000313E4;
            v192 = v0[17].i64[0];
            v147 = v0[16].i64[0];
            v146 = v0[13].i64[1];
            v148 = v189;

            return dispatch thunk of AsyncIteratorProtocol.next()(v146, v147, v148);
          }

          goto LABEL_141;
        }
      }

      v150 = v0[11].i64[1];
      if (sub_100037FE8())
      {
        v151 = v0[21].i64[1];
        v146 = (*(v0[10].i64[0] + 8))(v0[11].i64[1], v0[9].i64[1]);
        if (__OFADD__(v151, 1))
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v78 = v0[24].i64[0];
        v149 = v0[22];
        v79 = v0[23];
        v152 = vdupq_n_s64(v151 + 1);
LABEL_129:
        v0[21] = v152;
        goto LABEL_130;
      }

      v50 = v0[2].i64[1];
    }

    v153 = *(v50 + 48);
    v154 = *(v50 + 56);
    v156 = *(v50 + 64);
    v155 = *(v50 + 72);
    v157 = *(v50 + 80);
    if (!v153)
    {
      goto LABEL_109;
    }

    if (v153 == 1)
    {
LABEL_110:
      v158 = v202[24].i64[0];
      (*(v202[10].i64[0] + 16))(v202[11].i64[0], v202[11].i64[1], v202[9].i64[1]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v202[24].i64[0];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = sub_1000299A0(0, v78[2] + 1, 1, v202[24].i64[0]);
      }

      v161 = v78[2];
      v160 = v78[3];
      if (v161 >= v160 >> 1)
      {
        v78 = sub_1000299A0(v160 > 1, v161 + 1, 1, v78);
      }

      v163 = v202[14].i64[1];
      v162 = v202[15].i64[0];
      v164 = v202[11].i64[0];
      v165 = v202[9].i64[1];
      v166 = v202[10].i64[0];
      v168 = v202[7].i64[1];
      v167 = v202[8].i64[0];
      v78[2] = v161 + 1;
      v45(v78 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v161, v164, v165);
      sub_10001FA38(v162, v163, &qword_100048178, &unk_100039530);
      v169 = (*(v167 + 48))(v163, 1, v168);
      v170 = v202[11].i64[1];
      v172 = v202[9].i64[1];
      v171 = v202[10].i64[0];
      if (v169 == 1)
      {
        i64 = &v202[15].i64[1];
        v174 = v202[15].i64[1];
        v175 = v202[15].i64[0];
        sub_10001FD94(v202[14].i64[1], &qword_100048178, &unk_100039530);
        sub_1000381D8();
        (*(v171 + 8))(v170, v172);
        sub_10001FD94(v175, &qword_100048178, &unk_100039530);
      }

      else
      {
        i64 = v202[14].i64;
        v216 = v202[14].i64[0];
        v206 = v202[15].i64[0];
        v220 = v78;
        v177 = v202[8].i64[1];
        v176 = v202[9].i64[0];
        v179 = v202[7].i64[1];
        v178 = v202[8].i64[0];
        v211 = *(v178 + 32);
        v211(v176, v202[14].i64[1], v179);
        sub_1000381D8();
        sub_100037CA4(&qword_100048D98, &type metadata accessor for Date);
        v180 = sub_100038628();
        (*(v171 + 8))(v170, v172);
        sub_10001FD94(v206, &qword_100048178, &unk_100039530);
        if (v180)
        {
          v181 = v176;
        }

        else
        {
          v181 = v177;
        }

        if (v180)
        {
          v182 = v177;
        }

        else
        {
          v182 = v176;
        }

        v78 = v220;
        (*(v178 + 8))(v181, v179);
        v211(v216, v182, v179);
      }

      v183 = *i64;
      v184 = v202[19].i64[0];
      v185 = v202[15].i64[0];
      (v202[18].i64[1])(*i64, 0, 1, v202[7].i64[1]);
      sub_10002E8A8(v183, v185);
      v0 = v202;
      goto LABEL_132;
    }

    if ((sub_100032E64(v202[11].i64[1], v153) & 1) == 0)
    {
      v0 = v202;
      v186 = v202[20].i64[1];
      v146 = (*(v202[10].i64[0] + 8))(v202[11].i64[1], v202[9].i64[1]);
      if (__OFADD__(v186, 1))
      {
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v78 = v202[24].i64[0];
      v149 = v202[22];
      v79 = v202[23];
      v152 = v202[21];
      v187 = vdupq_n_s64(v186 + 1);
    }

    else
    {
LABEL_109:
      if ((v156 & 1) != 0 || (v157 & 1) != 0 || sub_100033704(v202[11].i64[1], v154, v155))
      {
        goto LABEL_110;
      }

      v0 = v202;
      v188 = v202[19].i64[1];
      v146 = (*(v202[10].i64[0] + 8))(v202[11].i64[1], v202[9].i64[1]);
      if (__OFADD__(v188, 1))
      {
LABEL_143:
        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(v146, v147, v148);
      }

      v78 = v202[24].i64[0];
      v149 = v202[22];
      v79 = v202[23];
      v187 = v202[20];
      v152 = v202[21];
      v202[19].i64[1] = v188 + 1;
    }

    v0[20] = v187;
    goto LABEL_129;
  }

  v193 = *(v0[16].i64[1] + 8);
  v193(v0[17].i64[0], v0[16].i64[0]);
  if (qword_100048160 != -1)
  {
LABEL_136:
    swift_once();
  }

  v5 = sub_100038598();
  sub_100003680(v5, qword_100048DC8);
  v6 = sub_100038578();
  v7 = sub_1000387A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v202[23].i64[0];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Filtered %ld empty body messages.", v9, 0xCu);
  }

  v10 = v202;
  v11 = v202[2].i64[1];

  v12 = *(v11 + 24);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    v13 = sub_100038578();
    v14 = sub_1000387A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v202[22].i64[0];
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v13, v14, "Filtered %ld auto-generated messages", v16, 0xCu);
    }

    v17 = sub_100038578();
    v18 = sub_1000387A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v202[21].i64[0];
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Filtered %ld group or no-reply apple messages", v20, 0xCu);
    }

    v10 = v202;
  }

  if (v10[40] >= 1)
  {
    v21 = sub_100038578();
    v22 = sub_1000387A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v202[20].i64[0];
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v21, v22, "Filtered %ld messages by week days.", v24, 0xCu);
    }

    v10 = v202;
  }

  if (v10[39] >= 1)
  {
    v25 = sub_100038578();
    v26 = sub_1000387A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v202[19].i64[1];
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v25, v26, "Filtered %ld messages by hours.", v28, 0xCu);
    }

    v10 = v202;
  }

  v29 = *(v10[5] + 25);
  if (v29 == 2 || (v29 & 1) == 0)
  {
    v57 = v10[48];
    v58 = sub_100038078();
    v59 = *(v58 + 16);
    if (v59)
    {
      v199 = 0;
      v60 = v10[10];
      v63 = *(v60 + 16);
      v62 = v60 + 16;
      v61 = v63;
      v204 = (*(v62 + 64) + 32) & ~*(v62 + 64);
      v64 = v58 + v204;
      v218 = *(v62 + 56);
      v65 = (v62 - 8);
      v34 = _swiftEmptyArrayStorage;
      v213 = v12;
      v208 = v63;
      v63(v10[13], v58 + v204, v10[9]);
      while (1)
      {
        if ((v12 & 1) == 0 || (v67 = v10[13], v68 = *(sub_100038268() + 16), , v69 = v68 > 1, v70 = v218, v69))
        {
          v61(v10[12], v10[13], v10[9]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_100029978(0, v34[2] + 1, 1, v34);
          }

          v72 = v34[2];
          v71 = v34[3];
          v73 = v72 >= v71 >> 1 ? sub_100029978(v71 > 1, v72 + 1, 1, v34) : v34;
          v74 = v10[12];
          v75 = v10[9];
          (*v65)(v10[13], v75);
          *(v73 + 16) = v72 + 1;
          v70 = v218;
          v76 = v74;
          v34 = v73;
          (*(v62 + 16))(v73 + v204 + v72 * v218, v76, v75);
          v12 = v213;
          v61 = v208;
        }

        else
        {
          (*v65)(v10[13], v10[9]);
          if (__OFADD__(v199++, 1))
          {
            __break(1u);
            goto LABEL_136;
          }
        }

        v64 += v70;
        if (!--v59)
        {
          break;
        }

        v61(v10[13], v64, v10[9]);
      }

      if (v12 != 2)
      {
        goto LABEL_58;
      }
    }

    else
    {

      v199 = 0;
      v34 = _swiftEmptyArrayStorage;
      if (v12 != 2)
      {
LABEL_58:
        if (v12)
        {
          v80 = sub_100038578();
          v81 = sub_1000387A8();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 134217984;
            *(v82 + 4) = v199;
            _os_log_impl(&_mh_execute_header, v80, v81, "Filtered %ld conversations with a single message.", v82, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v30 = v10[48];
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = v10[20];
      v207 = v10[10];
      v33 = v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v196 = *(v32 + 16);
      v34 = _swiftEmptyArrayStorage;
      v198 = *(v32 + 72);
      v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      do
      {
        v37 = v10[20];
        v36 = v10[21];
        v38 = v10[19];
        v212 = v10[14];
        v217 = v31;
        v196(v36, v33, v38);
        sub_1000381B8();
        sub_100001B40(&qword_1000489B8, &qword_10003AB88);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10003B310;
        v196(v39 + v35, v36, v38);
        sub_1000381C8();
        sub_100038238();
        (*(v37 + 8))(v36, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100029978(0, v34[2] + 1, 1, v34);
        }

        v41 = v34[2];
        v40 = v34[3];
        v10 = v202;
        if (v41 >= v40 >> 1)
        {
          v34 = sub_100029978(v40 > 1, v41 + 1, 1, v34);
        }

        v42 = v202[7].i64[0];
        v43 = v202[4].i64[1];
        v34[2] = v41 + 1;
        (*(v207 + 32))(v34 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v41, v42, v43);
        v33 += v198;
        v31 = v217 - 1;
      }

      while (v217 != 1);
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
    }
  }

  v83 = sub_100038578();
  v84 = sub_1000387A8();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v34;
    v86 = swift_slowAlloc();
    *v86 = 134217984;
    *(v86 + 4) = v85[2];

    _os_log_impl(&_mh_execute_header, v83, v84, "Finished extract step. Extracted %ld conversations.", v86, 0xCu);
    v34 = v85;
  }

  else
  {
  }

  v87 = v34[2];
  if (v87)
  {
    v88 = v10[10];
    v89 = v10[7];
    sub_10001C598(0, v87, 0);
    v90 = _swiftEmptyArrayStorage;
    v92 = *(v88 + 16);
    v91 = v88 + 16;
    v214 = v92;
    v93 = v34 + ((*(v91 + 64) + 32) & ~*(v91 + 64));
    v209 = *(v91 + 56);
    do
    {
      v94 = v10[11];
      v95 = v10[9];
      v214(v94, v93, v95);
      sub_100038248();
      sub_100038258();
      sub_100038158();
      (*(v91 - 8))(v94, v95);
      v97 = _swiftEmptyArrayStorage[2];
      v96 = _swiftEmptyArrayStorage[3];
      if (v97 >= v96 >> 1)
      {
        sub_10001C598(v96 > 1, v97 + 1, 1);
      }

      v98 = v10[8];
      v99 = v10[6];
      _swiftEmptyArrayStorage[2] = v97 + 1;
      (*(v89 + 32))(_swiftEmptyArrayStorage + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v97, v98, v99);
      v93 += v209;
      --v87;
    }

    while (v87);
    v100 = v10[48];
  }

  else
  {
    v101 = v10[48];

    v90 = _swiftEmptyArrayStorage;
  }

  v102 = v10[5];
  if ((*(v102 + 40) & 1) == 0)
  {
    v107 = *(v102 + 32);
    v108 = _swiftEmptyArrayStorage[2];

    v109 = sub_100038578();
    if (v108 < v107)
    {
      v110 = sub_1000387C8();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 134218240;
        *(v111 + 4) = v107;
        *(v111 + 12) = 2048;
        v112 = _swiftEmptyArrayStorage[2];

        *(v111 + 14) = v112;

        _os_log_impl(&_mh_execute_header, v109, v110, "Not enough data to sample with sampling size %ld. Only %ld items were extract extracted.", v111, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v116 = v202[18].i64[1];
      v115 = v202[19].i64[0];
      v117 = v202[17].i64[1];
      v118 = v202[16].i64[0];
      v119 = v202[7].i64[1];
      v120 = v202[2].i64[0];
      sub_10001FD94(v202[15].i64[0], &qword_100048178, &unk_100039530);
      v193(v117, v118);
      v121 = v119;
      v10 = v202;
      v116(v120, 1, 1, v121);
      v90 = 0;
      v122 = 17;
      goto LABEL_94;
    }

    v113 = sub_1000387A8();
    if (os_log_type_enabled(v109, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 134218240;
      *(v114 + 4) = _swiftEmptyArrayStorage[2];

      *(v114 + 12) = 2048;
      *(v114 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v109, v113, "Subsampling from %ld to %ld items.", v114, 0x16u);
    }

    else
    {
    }

    sub_100036FF8();
    v77 = sub_10001B994(v107, _swiftEmptyArrayStorage);
    if ((v125 & 1) == 0)
    {
      goto LABEL_84;
    }

    v1 = v125;
    v44 = v124;
    v0 = v123;
    sub_100038A68();
    swift_unknownObjectRetain_n();
    v130 = swift_dynamicCastClass();
    if (!v130)
    {
      swift_unknownObjectRelease();
      v130 = _swiftEmptyArrayStorage;
    }

    v131 = v130[2];

    if (!__OFSUB__(v1 >> 1, v44))
    {
      if (v131 == (v1 >> 1) - v44)
      {
        v90 = swift_dynamicCastClass();
        if (!v90)
        {
          swift_unknownObjectRelease();
          v90 = _swiftEmptyArrayStorage;
        }

        v10 = v202;
        v193(v202[17].i64[1], v202[16].i64[0]);
        swift_unknownObjectRelease();
        goto LABEL_92;
      }

      goto LABEL_139;
    }

LABEL_138:
    __break(1u);
LABEL_139:
    swift_unknownObjectRelease();
    v125 = v1;
    v124 = v44;
    v123 = v0;
LABEL_84:
    v126 = v202[17].i64[1];
    v127 = v202[16].i64[0];
    sub_100036E58(v77, v123, v124, v125);
    v90 = v128;
    swift_unknownObjectRelease();
    v129 = v127;
    v10 = v202;
    v193(v126, v129);
LABEL_92:
    v105 = v10[30];
    v106 = v10[4];
    goto LABEL_93;
  }

  v103 = v10[30];
  v104 = v10[4];
  v193(v10[35], v10[32]);
  v105 = v103;
  v106 = v104;
LABEL_93:
  sub_10002E8A8(v105, v106);
  v122 = 24;
LABEL_94:
  v219 = v122;
  v133 = v10[34];
  v132 = v10[35];
  v135 = v10[30];
  v134 = v10[31];
  v136 = v10[28];
  v137 = v10[29];
  v138 = v10;
  v139 = v10[27];
  v140 = v138[26];
  v141 = v138[23];
  v194 = v138[22];
  v195 = v138[21];
  v197 = v138[18];
  v200 = v138[17];
  v201 = v138[14];
  v203 = v138[13];
  v205 = v138[12];
  v210 = v138[11];
  v215 = v138[8];

  v142 = v138[1];

  return v142(v90, v219);
}

uint64_t sub_100032914()
{
  v0[2] = v0[50];
  v0[51] = sub_100001B40(&qword_100048DB0, &unk_10003B5B0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000329AC, 0, 0);
}

uint64_t sub_1000329AC()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[26];
  v4 = v0[24];
  v61 = *(v0[33] + 8);
  v61(v0[34], v0[32]);
  v0[3] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v5 = v0[50];

    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v6 = v0[48];
    v7 = sub_100038598();
    sub_100003680(v7, qword_100048DC8);

    v8 = sub_100038578();
    v9 = sub_1000387A8();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[48];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v13 = *(v11 + 16);

      *(v12 + 4) = v13;

      _os_log_impl(&_mh_execute_header, v8, v9, "Task canceled at extraction loop. Extracted %ld messages.", v12, 0xCu);
    }

    else
    {
      v32 = v0[48];
      swift_bridgeObjectRelease_n();
    }

    v34 = v0[37];
    v33 = v0[38];
    v35 = v0[35];
    v36 = v0[32];
    v38 = v0[25];
    v37 = v0[26];
    v39 = v0[24];
    v40 = v0[15];
    v41 = v0[4];
    sub_10001FD94(v0[30], &qword_100048178, &unk_100039530);
    v61(v35, v36);
    v34(v41, 1, 1, v40);
    (*(v38 + 8))(v37, v39);
    v42 = v0[3];
  }

  else
  {
    v14 = v0[48];

    v15 = v0[3];

    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v16 = v0[50];
    v17 = sub_100038598();
    sub_100003680(v17, qword_100048DC8);
    swift_errorRetain();
    v18 = sub_100038578();
    v19 = sub_1000387C8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[50];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error at extraction loop: %@.", v21, 0xCu);
      sub_10001FD94(v22, &qword_100048190, &qword_10003B590);
    }

    v24 = v0[50];
    v26 = v0[37];
    v25 = v0[38];
    v27 = v0[35];
    v28 = v0[32];
    v29 = v0[30];
    v30 = v0[15];
    v31 = v0[4];

    sub_10001FD94(v29, &qword_100048178, &unk_100039530);
    v61(v27, v28);
    v26(v31, 1, 1, v30);
  }

  v44 = v0[34];
  v43 = v0[35];
  v46 = v0[30];
  v45 = v0[31];
  v48 = v0[28];
  v47 = v0[29];
  v49 = v0[26];
  v50 = v0[27];
  v52 = v0[22];
  v51 = v0[23];
  v55 = v0[21];
  v56 = v0[18];
  v57 = v0[17];
  v58 = v0[14];
  v59 = v0[13];
  v60 = v0[12];
  v62 = v0[11];
  v63 = v0[8];

  v53 = v0[1];

  return v53(0, 10);
}

uint64_t sub_100032E64(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v86 = a1;
  v88 = sub_1000381E8();
  v84 = *(v88 - 8);
  v2 = *(v84 + 64);
  __chkstk_darwin(v88);
  v83 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100037F08();
  v93 = *(v89 - 8);
  v4 = *(v93 + 64);
  __chkstk_darwin(v89);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100037FA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100037F38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100037F88();
  v90 = *(v92 - 8);
  v17 = *(v90 + 64);
  v18 = __chkstk_darwin(v92);
  v87 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v73 - v20;
  sub_100037F48();
  v22 = [objc_allocWithZone(NSDateFormatter) init];
  sub_100037F18();
  isa = sub_100037F28().super.isa;
  (*(v13 + 8))(v16, v12);
  [v22 setLocale:isa];

  sub_100037F58();
  v24 = sub_100037F98().super.isa;
  v25 = *(v8 + 8);
  v80 = v11;
  v81 = v8 + 8;
  v82 = v7;
  v25(v11, v7);
  [v22 setTimeZone:v24];

  v26 = sub_100038638();
  [v22 setDateFormat:v26];

  v27 = v86;
  sub_1000381D8();
  v28 = sub_100037EC8().super.isa;
  v29 = *(v93 + 8);
  v79 = v6;
  v93 += 8;
  v29(v6, v89);
  v30 = [v22 stringFromDate:v28];

  v31 = sub_100038648();
  v33 = v32;

  v34 = sub_100029E60(v31, v33);
  if (v34 == 7)
  {
    (*(v90 + 8))(v21, v92);

    return 0;
  }

  else
  {
    v77 = v25;
    v78 = v22;
    v85 = v21;
    v36 = *(v91 + 16);
    v37 = (v91 + 32);
    v38 = v34;
    do
    {
      v39 = v36;
      v40 = v36-- != 0;
      v35 = v40;
      if (!v40)
      {
        break;
      }

      if (qword_10003B5D0[*v37] == qword_10003B5D0[v38])
      {
        break;
      }

      ++v37;
    }

    while ((sub_100038A58() & 1) == 0);
    v76 = v29;
    v41 = v88;
    v42 = v83;
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v43 = sub_100038598();
    sub_100003680(v43, qword_100048DC8);
    v44 = v84;
    (*(v84 + 16))(v42, v27, v41);
    v45 = v90;
    (*(v90 + 16))(v87, v85, v92);

    v46 = sub_100038578();
    v47 = sub_1000387B8();

    if (os_log_type_enabled(v46, v47))
    {
      v75 = v39 != 0;
      v48 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v94[0] = v86;
      *v48 = 136316162;
      v49 = v79;
      v74 = v47;
      sub_1000381D8();
      sub_100037CA4(&qword_100048DB8, &type metadata accessor for Date);
      v73 = v46;
      v50 = v89;
      v51 = sub_100038A38();
      v53 = v52;
      v76(v49, v50);
      (*(v44 + 8))(v42, v88);
      v54 = sub_10001BFAC(v51, v53, v94);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      v55 = v80;
      v56 = v87;
      sub_100037F58();
      sub_100037CA4(&qword_100048DC0, &type metadata accessor for TimeZone);
      v57 = v82;
      v58 = sub_100038A38();
      v60 = v59;
      v77(v55, v57);
      v61 = *(v90 + 8);
      v62 = v92;
      v61(v56, v92);
      v63 = v61;
      v64 = sub_10001BFAC(v58, v60, v94);

      *(v48 + 14) = v64;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_10001BFAC(qword_10003B5D0[v38], 0xE300000000000000, v94);
      *(v48 + 32) = 2080;
      v65 = sub_1000386F8();
      v67 = sub_10001BFAC(v65, v66, v94);

      *(v48 + 34) = v67;
      *(v48 + 42) = 1024;
      v68 = v74;
      *(v48 + 44) = v75;
      v69 = v73;
      _os_log_impl(&_mh_execute_header, v73, v68, "WeekDays filter | message date: %s, timezone: %s, local week day: %s, weekDays: %s, isIn: %{BOOL}d", v48, 0x30u);
      swift_arrayDestroy();

      v63(v85, v62);
    }

    else
    {

      v70 = *(v45 + 8);
      v71 = v92;
      v70(v87, v92);
      (*(v44 + 8))(v42, v88);
      v70(v85, v71);
    }
  }

  return v35;
}

BOOL sub_100033704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a2;
  v75 = a3;
  v4 = sub_100037FA8();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  __chkstk_darwin(v4);
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000381E8();
  v71 = *(v76 - 8);
  v7 = *(v71 + 64);
  __chkstk_darwin(v76);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100037F08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100037F68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100037F88();
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v57 - v24;
  sub_100037F48();
  (*(v15 + 104))(v18, enum case for Calendar.Component.hour(_:), v14);
  v72 = a1;
  sub_1000381D8();
  v26 = sub_100037F78();
  v27 = *(v10 + 8);
  v64 = v10 + 8;
  v65 = v9;
  v62 = v27;
  v27(v13, v9);
  (*(v15 + 8))(v18, v14);
  v63 = v26;
  v29 = v26 >= v74 && v26 < v75;
  v73 = v29;
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v30 = sub_100038598();
  sub_100003680(v30, qword_100048DC8);
  v32 = v70;
  v31 = v71;
  (*(v71 + 16))(v70, v72, v76);
  v33 = v69;
  (*(v69 + 16))(v23, v25, v19);
  v34 = sub_100038578();
  v35 = sub_1000387B8();
  v36 = v33;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v77[0] = v72;
    *v37 = 136316418;
    v60 = v34;
    sub_1000381D8();
    sub_100037CA4(&qword_100048DB8, &type metadata accessor for Date);
    v59 = v35;
    v38 = v65;
    v39 = sub_100038A38();
    v58 = v19;
    v61 = v25;
    v40 = v36;
    v41 = v31;
    v43 = v42;
    v62(v13, v38);
    (*(v41 + 8))(v32, v76);
    v44 = sub_10001BFAC(v39, v43, v77);

    *(v37 + 4) = v44;
    *(v37 + 12) = 2080;
    v45 = v66;
    sub_100037F58();
    sub_100037CA4(&qword_100048DC0, &type metadata accessor for TimeZone);
    v46 = v68;
    v47 = sub_100038A38();
    v49 = v48;
    (*(v67 + 8))(v45, v46);
    v50 = *(v40 + 8);
    v51 = v58;
    v50(v23, v58);
    v52 = sub_10001BFAC(v47, v49, v77);

    *(v37 + 14) = v52;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v63;
    *(v37 + 32) = 2048;
    *(v37 + 34) = v74;
    *(v37 + 42) = 2048;
    *(v37 + 44) = v75;
    *(v37 + 52) = 1024;
    v53 = v73;
    *(v37 + 54) = v73;
    v54 = v60;
    _os_log_impl(&_mh_execute_header, v60, v59, "BetweenHours filter | message date: %s, timezone: %s, local hour: %ld,  startHour: %ld, endHour: %ld, isIn: %{BOOL}d", v37, 0x3Au);
    swift_arrayDestroy();

    v50(v61, v51);
  }

  else
  {

    v55 = *(v33 + 8);
    v55(v23, v19);
    (*(v31 + 8))(v32, v76);
    v55(v25, v19);
    return v73;
  }

  return v53;
}

uint64_t sub_100033DE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100037D00;

  return sub_100030B04(a1);
}

uint64_t SmsMessage.content.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SmsMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SmsMessage(0) + 20);
  v4 = sub_100037F08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SmsMessage.sender.getter()
{
  v1 = (v0 + *(type metadata accessor for SmsMessage(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SmsMessage.groupID.getter()
{
  v1 = (v0 + *(type metadata accessor for SmsMessage(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SmsMessage.init(content:timestamp:sender:groupID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for SmsMessage(0);
  v15 = v14[5];
  v16 = sub_100037F08();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[6]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &a8[v14[7]];
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_100034080()
{
  v1 = 0x746E65746E6F63;
  v2 = 0x7265646E6573;
  if (*v0 != 2)
  {
    v2 = 0x444970756F7267;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000340FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003729C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100034124(uint64_t a1)
{
  v2 = sub_1000343B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034160(uint64_t a1)
{
  v2 = sub_1000343B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SmsMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048B08, &qword_10003B320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_1000343B8();
  sub_100038B68();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_1000389E8();
  if (!v2)
  {
    v13 = type metadata accessor for SmsMessage(0);
    v14 = v13[5];
    v22[14] = 1;
    sub_100037F08();
    sub_100037CA4(&qword_1000489A8, &type metadata accessor for Date);
    sub_100038A18();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v22[13] = 2;
    sub_100038998();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    sub_100038998();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000343B8()
{
  result = qword_100048B10;
  if (!qword_100048B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048B10);
  }

  return result;
}

uint64_t SmsMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_100037F08();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100001B40(&qword_100048B18, &qword_10003B328);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v32);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SmsMessage(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_1000343B8();
  v31 = v9;
  v15 = v33;
  sub_100038B58();
  if (v15)
  {
    return sub_10000387C(a1);
  }

  v16 = v29;
  v37 = 0;
  v17 = v13;
  *v13 = sub_100038958();
  v13[1] = v18;
  v33 = v18;
  v36 = 1;
  sub_100037CA4(&qword_100048A30, &type metadata accessor for Date);
  sub_100038988();
  v19 = v10;
  (*(v16 + 32))(v17 + *(v10 + 20), v6, v3);
  v35 = 2;
  v20 = sub_100038908();
  v21 = (v17 + *(v10 + 24));
  *v21 = v20;
  v21[1] = v22;
  v34 = 3;
  v23 = sub_100038908();
  v25 = v24;
  (*(v30 + 8))(v31, v32);
  v26 = (v17 + *(v19 + 28));
  *v26 = v23;
  v26[1] = v25;
  sub_10003480C(v17, v28);
  sub_10000387C(a1);
  return sub_100034870(v17);
}

uint64_t sub_10003480C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034870(uint64_t a1)
{
  v2 = type metadata accessor for SmsMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100037F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000349D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100037F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100034A74()
{
  sub_100037F08();
  if (v0 <= 0x3F)
  {
    sub_100034B08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100034B08()
{
  if (!qword_1000485E8)
  {
    v0 = sub_1000387F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000485E8);
    }
  }
}

unint64_t sub_100034B6C()
{
  result = qword_100048BB8;
  if (!qword_100048BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048BB8);
  }

  return result;
}

unint64_t sub_100034BC4()
{
  result = qword_100048BC0;
  if (!qword_100048BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048BC0);
  }

  return result;
}

unint64_t sub_100034C1C()
{
  result = qword_100048BC8;
  if (!qword_100048BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048BC8);
  }

  return result;
}

uint64_t sub_100034C70@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100037F08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SmsMessage(0);
  v9 = *(v93 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v93);
  v12 = (&v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 eventBody];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 interaction];
  if (!v15)
  {

LABEL_10:
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v33 = sub_100038598();
    sub_100003680(v33, qword_100048DC8);
    v34 = sub_100038578();
    v35 = sub_1000387C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Interaction intent read from biome is not of INSendMessageIntent type, message will be discarded.", v36, 2u);
    }

    goto LABEL_15;
  }

  v92 = a1;
  v16 = a2;
  v17 = v15;
  v18 = sub_100037E98();
  v20 = v19;

  v21 = [v14 absoluteTimestamp];
  if (!v21)
  {

    v31 = v18;
    v32 = v20;
LABEL_9:
    sub_100003924(v31, v32);
    a2 = v16;
    a1 = v92;
    goto LABEL_10;
  }

  v90 = v20;
  v91 = v18;
  v22 = v21;
  sub_100037EE8();

  v23 = [v14 groupIdentifier];
  if (!v23)
  {
    (*(v5 + 8))(v8, v4);

    v32 = v90;
    v31 = v91;
    goto LABEL_9;
  }

  v87 = v9;
  v88 = v4;
  v89 = v5;
  v24 = v23;
  v25 = sub_100038648();
  v27 = v26;

  v28 = objc_allocWithZone(NSKeyedUnarchiver);
  v29 = v90;
  v30 = v91;
  sub_100037BD8(v91, v90);
  v39 = sub_100037B18();
  v85 = v27;
  v40 = v93;
  sub_100003924(v30, v29);
  sub_100037C2C();
  sub_100038648();
  v86 = v39;
  v41 = sub_1000387D8();

  if (!v41)
  {

    a2 = v16;
LABEL_27:
    v45 = v8;
    goto LABEL_28;
  }

  v42 = [v41 intent];
  a2 = v16;
  if (!v42)
  {

    goto LABEL_27;
  }

  v43 = v42;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  v45 = v8;
  if (v44)
  {
    v46 = v44;
    if ([v44 outgoingMessageType] == 2)
    {
      v47 = v43;

      if (qword_100048160 != -1)
      {
        swift_once();
      }

      v48 = sub_100038598();
      sub_100003680(v48, qword_100048DC8);
      v49 = sub_100038578();
      v50 = sub_1000387B8();
      v51 = os_log_type_enabled(v49, v50);
      v9 = v87;
      v52 = v88;
      if (v51)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "MessageIntent read from biome has incorrect contents, message will be discarded.";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v49, v50, v54, v53, 2u);

        goto LABEL_32;
      }

LABEL_48:

      sub_100003924(v91, v90);
      goto LABEL_34;
    }

    v59 = [v46 content];
    v47 = v43;
    if (!v59)
    {

      if (qword_100048160 != -1)
      {
        swift_once();
      }

      v72 = sub_100038598();
      sub_100003680(v72, qword_100048DC8);
      v49 = sub_100038578();
      v50 = sub_1000387B8();
      v73 = os_log_type_enabled(v49, v50);
      v9 = v87;
      v52 = v88;
      if (v73)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "Message content was nil, discarding message";
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v83 = v41;
    v84 = a2;
    v60 = v59;
    v61 = sub_100038648();
    v63 = v62;

    *v12 = v61;
    v12[1] = v63;
    (*(v89 + 16))(v12 + *(v40 + 20), v45, v88);
    v64 = [v46 sender];
    if (v64 && (v65 = v64, v66 = [v64 contactIdentifier], v65, v66) || (v67 = objc_msgSend(v46, "sender")) != 0 && (v68 = v67, v66 = objc_msgSend(v67, "customIdentifier"), v68, v66))
    {
      v69 = sub_100038648();
      v71 = v70;

      sub_100003924(v91, v90);
    }

    else
    {
      v74 = [v46 sender];
      if (!v74)
      {
        (*(v89 + 8))(v45, v88);

        sub_100003924(v91, v90);
        v69 = 0;
        v71 = 0;
        goto LABEL_52;
      }

      v75 = v74;
      v76 = [v74 displayName];

      v69 = sub_100038648();
      v71 = v77;

      sub_100003924(v91, v90);
    }

    (*(v89 + 8))(v45, v88);
LABEL_52:
    v78 = v93;
    v79 = (v12 + *(v93 + 24));
    *v79 = v69;
    v79[1] = v71;
    v80 = (v12 + *(v78 + 28));
    a2 = v84;
    v81 = v85;
    *v80 = v25;
    v80[1] = v81;
    sub_100037AB4(v12, a2);
    v37 = 0;
    v9 = v87;
    return (*(v9 + 56))(a2, v37, 1, v93);
  }

LABEL_28:
  v9 = v87;
  v52 = v88;
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v55 = sub_100038598();
  sub_100003680(v55, qword_100048DC8);
  v56 = sub_100038578();
  v57 = sub_1000387B8();
  if (!os_log_type_enabled(v56, v57))
  {

    sub_100003924(v91, v90);
LABEL_34:

    goto LABEL_35;
  }

  v58 = swift_slowAlloc();
  *v58 = 0;
  _os_log_impl(&_mh_execute_header, v56, v57, "Interaction intent read from biome is not of INSendMessageIntent type, message will be discarded.", v58, 2u);

LABEL_32:
  sub_100003924(v91, v90);
LABEL_35:
  (*(v89 + 8))(v45, v52);
LABEL_15:
  v37 = 1;
  return (*(v9 + 56))(a2, v37, 1, v93);
}

uint64_t sub_1000357EC(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(*(sub_100001B40(&qword_1000483E0, qword_100039630) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = sub_100038178();
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v6 = *(v5 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v7 = sub_100001B40(&qword_100048D80, &qword_10003B580);
  v2[30] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = type metadata accessor for SmsMessage(0);
  v2[32] = v9;
  v10 = *(v9 - 8);
  v2[33] = v10;
  v11 = *(v10 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v12 = *(*(sub_100001B40(&qword_100048D88, &qword_10003B588) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v13 = *(*(sub_100001B40(&qword_100048178, &unk_100039530) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_100035A40, 0, 0);
}

uint64_t sub_100035A40()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[24];
  v4 = type metadata accessor for SmsExtractor(0);
  sub_10001FA38(v3 + *(v4 + 20), v1, &qword_100048178, &unk_100039530);
  v96 = sub_100037F08();
  v99 = *(v96 - 8);
  v5 = *(v99 + 56);
  v5(v2, 1, 1);
  v86 = v5;
  v6 = v0[24];
  if (*(v3 + 24))
  {
    v89 = v6[2];
  }

  v7 = *(v3 + 9);
  v8 = v0[41];
  v10 = v0[39];
  v9 = v0[40];
  if (*(v6 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *v6;
  }

  sub_10001FA38(v0[42], v0[40], &qword_100048178, &unk_100039530);
  sub_10001FA38(v8, v10, &qword_100048178, &unk_100039530);
  v12 = *(v99 + 48);
  v13 = v12(v9, 1, v96);

  isa = 0;
  if (v13 != 1)
  {
    v15 = v0[40];
    isa = sub_100037EC8().super.isa;
    (*(v99 + 8))(v15, v96);
  }

  v16 = v0[39];
  if (v12(v16, 1, v96) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_100037EC8().super.isa;
    (*(v99 + 8))(v16, v96);
  }

  v18 = v7;
  v90 = v0[42];
  v93 = v0[41];
  v19 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v17 maxEvents:v11 lastN:0 reversed:0];

  v20 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v21 = [v20 Intent];
  swift_unknownObjectRelease();
  v22 = sub_100038638();

  v23 = v19;
  v24 = [v21 publisherWithUseCase:v22 options:v19];

  v25 = swift_allocObject();
  *(v25 + 16) = _swiftEmptyArrayStorage;
  v26 = swift_allocObject();
  *(v26 + 16) = v18 & 1;
  v0[6] = sub_100037A84;
  v0[7] = v26;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100036664;
  v0[5] = &unk_100046988;
  v27 = _Block_copy(v0 + 2);
  v28 = v0[7];

  v29 = [v24 filterWithIsIncluded:v27];
  _Block_release(v27);
  v0[12] = sub_100037AA4;
  v0[13] = v25;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100037D14;
  v0[11] = &unk_1000469B0;
  v30 = _Block_copy(v0 + 8);
  v31 = v0[13];

  v0[18] = sub_100037AAC;
  v0[19] = v25;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100037D14;
  v0[17] = &unk_1000469D8;
  v32 = _Block_copy(v0 + 14);
  v33 = v0[19];

  v34 = [v29 sinkWithCompletion:v30 receiveInput:v32];

  _Block_release(v32);
  _Block_release(v30);

  sub_10001FD94(v93, &qword_100048178, &unk_100039530);
  sub_10001FD94(v90, &qword_100048178, &unk_100039530);
  swift_beginAccess();
  v35 = *(v25 + 16);

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = *(v0[33] + 80);
    aBlock = (v35 + ((v37 + 32) & ~v37));
    result = sub_10003480C(aBlock, v0[35]);
    if (v36 != 1)
    {
      v46 = v0[32];
      v45 = v0[33];
      v47 = 1;
      while (v47 < *(v35 + 16))
      {
        v48 = v0[35];
        sub_10003480C(aBlock + *(v45 + 72) * v47, v0[34]);
        v49 = *(v46 + 20);
        if (sub_100037ED8())
        {
          v51 = v0[34];
          v50 = v0[35];
          sub_100034870(v50);
          result = sub_100037AB4(v51, v50);
        }

        else
        {
          result = sub_100034870(v0[34]);
        }

        if (v36 == ++v47)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_40;
    }

LABEL_13:
    v40 = v0[36];
    v39 = v0[37];
    v42 = v0[32];
    v41 = v0[33];
    sub_100037AB4(v0[35], v39);
    (*(v41 + 56))(v39, 0, 1, v42);
    sub_10001FA38(v39, v40, &qword_100048D88, &qword_10003B588);
    if ((*(v41 + 48))(v40, 1, v42) == 1)
    {
      sub_10001FD94(v0[36], &qword_100048D88, &qword_10003B588);
      result = (v86)(v0[38], 1, 1, v96);
    }

    else
    {
      v52 = v0[36];
      (*(v99 + 16))(v0[38], v52 + *(v0[32] + 20), v96);
      sub_100034870(v52);
      result = (v86)(v0[38], 0, 1, v96);
    }

    v100 = *(v35 + 16);
    if (v100)
    {
      v53 = 0;
      v54 = v0[27];
      v94 = (v54 + 56);
      v97 = v0[33];
      v91 = (v54 + 48);
      v87 = v54;
      v55 = (v54 + 32);
      v56 = _swiftEmptyArrayStorage;
      v88 = v0[30];
      while (v53 < *(v35 + 16))
      {
        v57 = v35;
        v58 = v0[31];
        v60 = v0[25];
        v59 = v0[26];
        v61 = aBlock + *(v97 + 72) * v53;
        v62 = (v58 + *(v88 + 48));
        *v58 = v53;
        sub_10003480C(v61, v62);
        v64 = *v62;
        v63 = v62[1];

        sub_100038158();
        (*v94)(v60, 0, 1, v59);
        sub_10001FD94(v58, &qword_100048D80, &qword_10003B580);
        if ((*v91)(v60, 1, v59) == 1)
        {
          result = sub_10001FD94(v0[25], &qword_1000483E0, qword_100039630);
        }

        else
        {
          v66 = v0[28];
          v65 = v0[29];
          v67 = v0[26];
          v68 = *v55;
          (*v55)(v65, v0[25], v67);
          v68(v66, v65, v67);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_100029950(0, v56[2] + 1, 1, v56);
          }

          v70 = v56[2];
          v69 = v56[3];
          if (v70 >= v69 >> 1)
          {
            v56 = sub_100029950(v69 > 1, v70 + 1, 1, v56);
          }

          v71 = v0[28];
          v72 = v0[26];
          v56[2] = v70 + 1;
          result = (v68)(v56 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v70, v71, v72);
        }

        ++v53;
        v35 = v57;
        if (v100 == v53)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v56 = _swiftEmptyArrayStorage;
LABEL_35:
    v74 = v0[37];
    v73 = v0[38];
    v75 = v0[23];

    sub_10001FD94(v74, &qword_100048D88, &qword_10003B588);
    sub_10002E8A8(v73, v75);
    aBlocka = 24;
    v44 = v56;
  }

  else
  {
    v43 = v0[23];

    (v86)(v43, 1, 1, v96);
    v44 = 0;
    aBlocka = 10;
  }

  v77 = v0[41];
  v76 = v0[42];
  v79 = v0[39];
  v78 = v0[40];
  v81 = v0[37];
  v80 = v0[38];
  v83 = v0[35];
  v82 = v0[36];
  v84 = v0[34];
  v92 = v0[31];
  v95 = v0[29];
  v98 = v0[28];
  v101 = v0[25];

  v85 = v0[1];

  return v85(v44, aBlocka);
}

uint64_t sub_10003648C(void *a1, char a2)
{
  v4 = [a1 eventBody];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v4 intentClass];

  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = sub_100038648();
  v9 = v8;

  if (v7 == 0xD000000000000013 && 0x800000010003BC60 == v9)
  {
  }

  else
  {
    v11 = sub_100038A58();

    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = [a1 eventBody];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 bundleID];

  if (v14)
  {
    v15 = sub_100038648();
    v17 = v16;

    if (v15 == 0xD000000000000013 && 0x800000010003BC80 == v17)
    {

      if ((a2 & 1) == 0)
      {
        LOBYTE(v14) = 1;
        return v14 & 1;
      }

      goto LABEL_18;
    }

    LOBYTE(v14) = sub_100038A58();

    if (v14 & 1) != 0 && (a2)
    {
LABEL_18:
      v18 = [a1 eventBody];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 interactionDirection];

        LOBYTE(v14) = v20 == 2;
        return v14 & 1;
      }

LABEL_20:
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_100036664(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_1000366BC(void *a1, uint64_t a2)
{
  v4 = [a1 state];
  if (v4 == 1)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v9 = sub_100038598();
    sub_100003680(v9, qword_100048DC8);
    v10 = a1;
    oslog = sub_100038578();
    v11 = sub_1000387A8();

    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = [v10 error];
    if (v14)
    {
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v12 + 4) = v14;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, oslog, v11, "Error reading data: %@", v12, 0xCu);
    sub_10001FD94(v13, &qword_100048190, &qword_10003B590);

    goto LABEL_21;
  }

  if (!v4)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v5 = sub_100038598();
    sub_100003680(v5, qword_100048DC8);

    v6 = sub_100038578();
    v7 = sub_1000387A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_beginAccess();
      *(v8 + 4) = *(*(a2 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v6, v7, "Data reading completed. Found %ld messages.", v8, 0xCu);
    }

    else
    {
    }

    return;
  }

  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v16 = sub_100038598();
  sub_100003680(v16, qword_100048DC8);
  oslog = sub_100038578();
  v17 = sub_1000387C8();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v17, "Data reading ends with unknown reason.", v18, 2u);
LABEL_21:
  }

LABEL_22:
}

uint64_t sub_100036A10(void *a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_100048D88, &qword_10003B588);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for SmsMessage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_100034C70(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10001FD94(v7, &qword_100048D88, &qword_10003B588);
  }

  sub_100037AB4(v7, v15);
  sub_10003480C(v15, v13);
  swift_beginAccess();
  v17 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100029BF8(0, v17[2] + 1, 1, v17);
    *(a2 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100029BF8(v19 > 1, v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  sub_100037AB4(v13, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20);
  *(a2 + 16) = v17;
  swift_endAccess();
  return sub_100034870(v15);
}

void sub_100036C54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100036CBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100036D54;

  return sub_1000357EC(a1);
}

uint64_t sub_100036D54(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void sub_100036E58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100001B40(&qword_1000483E8, &unk_10003B5C0);
      v7 = *(sub_100038178() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_100038178() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_100036FF8()
{
  v1 = sub_100038178();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  v3 = __chkstk_darwin(v1);
  v30 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v31 = &v23 - v6;
  v26 = v0;
  v7 = *v0;
  v8 = *(*v0 + 2);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v23 = v8 - 2;
    v24 = (v27 + 40);
    v25 = v27 + 16;
    while (1)
    {
      v32 = 0;
      result = swift_stdlib_random();
      v12 = (v32 * v8) >> 64;
      if (v8 > v32 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v32 * v8)
        {
          do
          {
            v32 = 0;
            result = swift_stdlib_random();
          }

          while (v13 > v32 * v8);
          v12 = (v32 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = *(v7 + 2);
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = v1;
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v17 = &v7[v29];
        v18 = *(v27 + 72);
        v19 = *(v27 + 16);
        v28 = v18 * v10;
        result = v19(v31, &v7[v29 + v18 * v10], v16);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        v20 = v18 * v14;
        v19(v30, &v17[v18 * v14], v16);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v16;
        if ((result & 1) == 0)
        {
          result = sub_10001DDCC(v7);
          v7 = result;
        }

        if (v10 >= *(v7 + 2))
        {
          goto LABEL_21;
        }

        v21 = &v7[v29];
        v22 = *v24;
        result = (*v24)(&v7[v29 + v28], v30, v16);
        if (v14 >= *(v7 + 2))
        {
          goto LABEL_22;
        }

        result = v22(&v21[v20], v31, v16);
        *v26 = v7;
        v9 = v23;
      }

      --v8;
      if (v10++ == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10003729C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_100037418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = sub_100001B40(&qword_100048178, &unk_100039530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000374F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 48) = (a2 + 1);
  }

  else
  {
    v7 = sub_100001B40(&qword_100048178, &unk_100039530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000375D8()
{
  if (!qword_1000488A0)
  {
    sub_100037F08();
    v0 = sub_1000387F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000488A0);
    }
  }
}

uint64_t sub_100037644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100001B40(&qword_100048178, &unk_100039530);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100037720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_100001B40(&qword_100048178, &unk_100039530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100037810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100001B40(&qword_100048178, &unk_100039530);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000378EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100001B40(&qword_100048178, &unk_100039530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000379C8()
{
  sub_1000375D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100037A3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100037AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100037B18()
{
  isa = sub_100037E88().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_100037DF8();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100037BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100037C2C()
{
  result = qword_100048D90;
  if (!qword_100048D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100048D90);
  }

  return result;
}

uint64_t sub_100037CA4(unint64_t *a1, void (*a2)(uint64_t))
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