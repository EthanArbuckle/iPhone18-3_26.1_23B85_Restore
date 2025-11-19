uint64_t *sub_100001610@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000016E4()
{
  v1 = 0x657669746361;
  if (*v0 != 1)
  {
    v1 = 0x64656C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_100001784()
{
  v1 = *v0;
  v2 = 0x656D614E6B736174;
  v3 = 0x7453657669746361;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461657263;
  }

  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x65746144646E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F69736E65747865;
  if (v1 != 1)
  {
    v5 = 0x666E6F436B736174;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100001888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000070A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000018C8(uint64_t a1)
{
  v2 = sub_100006798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001904(uint64_t a1)
{
  v2 = sub_100006798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001940(void *a1)
{
  v3 = v1;
  v5 = sub_100005338(&qword_100038520, &qword_10002DA80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100006754(a1, a1[3]);
  sub_100006798();
  sub_10002CE18();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_10002CD08();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v21) = 1;
    sub_10002CD08();
    v15 = v3[5];
    v21 = v3[4];
    v22 = v15;
    v23 = 2;
    sub_1000068E0(v21, v15);
    sub_100006934();
    sub_10002CD18();
    sub_10000593C(v21, v22);
    v16 = type metadata accessor for TaskRecord(0);
    v17 = v16[7];
    LOBYTE(v21) = 3;
    sub_10002C608();
    sub_100006414(&qword_100038530, &type metadata accessor for Date);
    sub_10002CD18();
    v18 = v16[8];
    LOBYTE(v21) = 4;
    sub_10002CD18();
    LOBYTE(v21) = *(v3 + v16[9]);
    v23 = 5;
    sub_100006988();
    sub_10002CD18();
    v19 = v16[10];
    LOBYTE(v21) = 6;
    sub_10002CCF8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100001C34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = (*(*(sub_100005338(&qword_100038248, &unk_10002D560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v55 = &v47 - v4;
  v5 = sub_10002C608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v56 = sub_100005338(&qword_1000384F8, &qword_10002DA78);
  v54 = *(v56 - 8);
  v12 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v14 = &v47 - v13;
  v15 = type metadata accessor for TaskRecord(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v6;
  v20 = *(v6 + 56);
  v59 = *(v17 + 40);
  v21 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(&v21[v59], 1, 1, v5);
  v23 = a1[3];
  v22 = a1[4];
  v58 = a1;
  sub_100006754(a1, v23);
  sub_100006798();
  v57 = v14;
  v24 = v60;
  sub_10002CE08();
  if (v24)
  {
    v60 = v24;
    v27 = v21;
    sub_1000067EC(v58);
    return sub_1000053D8(v27 + v59);
  }

  v51 = v11;
  v26 = v54;
  v25 = v55;
  LOBYTE(v61) = 0;
  v27 = v21;
  *v21 = sub_10002CCD8();
  *(v21 + 1) = v29;
  LOBYTE(v61) = 1;
  v30 = v26;
  *(v21 + 2) = sub_10002CCD8();
  *(v21 + 3) = v31;
  v62 = 2;
  sub_100006838();
  sub_10002CCE8();
  v60 = 0;
  *(v21 + 2) = v61;
  LOBYTE(v61) = 3;
  v32 = sub_100006414(&qword_100038510, &type metadata accessor for Date);
  v33 = v51;
  v50 = v32;
  v34 = v60;
  sub_10002CCE8();
  v35 = v34;
  if (v34)
  {
    (*(v30 + 8))(v57, v56);
    v36 = 0;
    v60 = v34;
    goto LABEL_10;
  }

  v49 = v15;
  v37 = *(v15 + 28);
  v38 = v33;
  v39 = v5;
  v40 = *(v19 + 32);
  v48 = v27;
  v40(v27 + v37, v38, v5);
  LOBYTE(v61) = 4;
  v41 = v53;
  v51 = 0;
  sub_10002CCE8();
  v60 = 0;
  v42 = v48;
  v40(&v48[*(v49 + 32)], v41, v39);
  v62 = 5;
  sub_10000688C();
  v43 = v60;
  sub_10002CCE8();
  if (v43)
  {
    v60 = v43;
    (*(v30 + 8))(v57, v56);
    v36 = 1;
    v5 = v39;
    v15 = v49;
    v27 = v42;
    v35 = v51;
LABEL_10:
    sub_1000067EC(v58);
    v44 = v27[1];

    v45 = v27[3];

    sub_10000593C(v27[4], v27[5]);
    if (v35)
    {
      if (v36)
      {
        (*(v19 + 8))(v27 + *(v15 + 32), v5);
      }
    }

    else
    {
      v46 = *(v19 + 8);
      v46(v27 + *(v15 + 28), v5);
      if (v36)
      {
        v46(v27 + *(v15 + 32), v5);
      }
    }

    return sub_1000053D8(v27 + v59);
  }

  *(v42 + *(v49 + 36)) = v61;
  LOBYTE(v61) = 6;
  sub_10002CCC8();
  v60 = 0;
  (*(v30 + 8))(v57, v56);
  sub_100005990(v25, v42 + v59);
  sub_100005AD8(v42, v52, type metadata accessor for TaskRecord);
  sub_1000067EC(v58);
  return sub_100005B40(v42, type metadata accessor for TaskRecord);
}

uint64_t sub_1000022C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v117 = v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v108 - v9;
  __chkstk_darwin(v8);
  v12 = v108 - v11;
  v13 = sub_10002C608();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v118 = v108 - v19;
  v20 = type metadata accessor for TaskRecord(0);
  v122 = *(v20 - 8);
  v21 = *(v122 + 64);
  v22 = __chkstk_darwin(v20);
  v123 = (v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = v22;
  v24 = *(v22 + 40);
  v119 = v14;
  v25 = *(v14 + 56);
  v121 = v24;
  v25(v123 + v24, 1, 1, v13);
  if (sub_10002CBD8() == 0x736B736154 && v26 == 0xE500000000000000)
  {
  }

  else
  {
    v27 = sub_10002CD48();

    if ((v27 & 1) == 0)
    {
      if (qword_100038240 != -1)
      {
        swift_once();
      }

      v61 = sub_10002C978();
      sub_1000053A0(v61, qword_100039DE0);
      v62 = a1;
      v63 = sub_10002C958();
      v64 = sub_10002CBA8();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = a2;
        v67 = swift_slowAlloc();
        v125 = v67;
        *v65 = 136315138;
        v68 = sub_10002CBD8();
        v70 = sub_10000B7BC(v68, v69, &v125);

        *(v65 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v63, v64, "Invalid recordType: %s", v65, 0xCu);
        sub_1000067EC(v67);
        a2 = v66;
      }

      else
      {
      }

      goto LABEL_26;
    }
  }

  v120 = a2;
  v28 = [a1 values];
  sub_100005338(&qword_1000382B0, &qword_10002D570);
  v29 = sub_10002C9D8();

  if (!*(v29 + 16) || (v30 = sub_1000058C4(0x656D614E6B736174, 0xE800000000000000), (v31 & 1) == 0))
  {

    goto LABEL_19;
  }

  v32 = *(*(v29 + 56) + 8 * v30);
  swift_unknownObjectRetain();

  v127 = v32;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v54 = sub_10002C978();
    sub_1000053A0(v54, qword_100039DE0);
    v55 = sub_10002C958();
    v56 = sub_10002CBA8();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_24;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "Failed at parsing taskName";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v55, v56, v58, v57, 2u);

LABEL_24:

LABEL_25:
    a2 = v120;
LABEL_26:
    v59 = v122;
    sub_1000053D8(v123 + v121);
    return (*(v59 + 56))(a2, 1, 1, v124);
  }

  v114 = v125;
  v115 = v25;
  v33 = v126;
  v34 = [a1 values];
  v35 = sub_10002C9D8();

  if (!*(v35 + 16) || (v116 = v33, v36 = sub_1000058C4(0x6F69736E65747865, 0xEB0000000044496ELL), (v37 & 1) == 0))
  {

    goto LABEL_33;
  }

  v38 = *(*(v35 + 56) + 8 * v36);
  swift_unknownObjectRetain();

  v127 = v38;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v71 = sub_10002C978();
    sub_1000053A0(v71, qword_100039DE0);
    v55 = sub_10002C958();
    v56 = sub_10002CBA8();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_24;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "Failed at parsing extensionID";
    goto LABEL_23;
  }

  v39 = v126;
  v113 = v125;
  v40 = [a1 values];
  v41 = sub_10002C9D8();

  if (!*(v41 + 16) || (v42 = sub_1000058C4(0x666E6F436B736174, 0xEE00617461446769), (v43 & 1) == 0))
  {

    goto LABEL_38;
  }

  v44 = *(*(v41 + 56) + 8 * v42);
  swift_unknownObjectRetain();

  v127 = v44;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v72 = sub_10002C978();
    sub_1000053A0(v72, qword_100039DE0);
    v55 = sub_10002C958();
    v56 = sub_10002CBA8();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_24;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "Failed at parsing taskConfigData";
    goto LABEL_23;
  }

  v111 = v125;
  v112 = v126;
  v45 = [a1 values];
  v46 = sub_10002C9D8();

  if (!*(v46 + 16) || (v47 = sub_1000058C4(0x7461447472617473, 0xE900000000000065), (v48 & 1) == 0))
  {

    v115(v12, 1, 1, v13);
    goto LABEL_43;
  }

  v110 = v39;
  v49 = *(*(v46 + 56) + 8 * v47);
  swift_unknownObjectRetain();

  v125 = v49;
  v50 = swift_dynamicCast();
  v51 = v115;
  v115(v12, v50 ^ 1u, 1, v13);
  v52 = v119;
  v53 = v119 + 48;
  v109 = *(v119 + 48);
  if (v109(v12, 1, v13) == 1)
  {

LABEL_43:
    sub_1000053D8(v12);
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v73 = sub_10002C978();
    sub_1000053A0(v73, qword_100039DE0);
    v55 = sub_10002C958();
    v74 = sub_10002CBA8();
    if (os_log_type_enabled(v55, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v55, v74, "Failed at parsing startDate", v75, 2u);
    }

    sub_10000593C(v111, v112);
    goto LABEL_24;
  }

  v108[0] = *(v52 + 32);
  v108[1] = v53;
  (v108[0])(v118, v12, v13);
  v76 = [a1 values];
  v77 = sub_10002C9D8();

  if (!*(v77 + 16) || (v78 = sub_1000058C4(0x65746144646E65, 0xE700000000000000), (v79 & 1) == 0))
  {

    v51(v10, 1, 1, v13);
    goto LABEL_53;
  }

  v80 = *(*(v77 + 56) + 8 * v78);
  swift_unknownObjectRetain();

  v125 = v80;
  v81 = swift_dynamicCast();
  v51(v10, v81 ^ 1u, 1, v13);
  v82 = v109(v10, 1, v13);
  v83 = v116;
  if (v82 == 1)
  {

LABEL_53:
    sub_1000053D8(v10);
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v84 = sub_10002C978();
    sub_1000053A0(v84, qword_100039DE0);
    v85 = sub_10002C958();
    v86 = sub_10002CBA8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Failed at parsing endDate", v87, 2u);

      sub_10000593C(v111, v112);
    }

    else
    {
      sub_10000593C(v111, v112);
    }

    (*(v119 + 8))(v118, v13);
    goto LABEL_25;
  }

  (v108[0])(v18, v10, v13);
  v89 = v123;
  v88 = v124;
  v90 = v113;
  *v123 = v114;
  v89[1] = v83;
  v91 = v110;
  v92 = v111;
  v89[2] = v90;
  v89[3] = v91;
  v93 = v112;
  v89[4] = v92;
  v89[5] = v93;
  v94 = *(v119 + 16);
  v94(v89 + *(v88 + 28), v118, v13);
  v94(v89 + *(v88 + 32), v18, v13);
  v95 = [a1 values];
  v96 = sub_10002C9D8();

  if (!*(v96 + 16) || (v97 = sub_1000058C4(0x7453657669746361, 0xEC00000073757461), (v98 & 1) == 0))
  {

    goto LABEL_66;
  }

  v99 = *(*(v96 + 56) + 8 * v97);
  swift_unknownObjectRetain();

  v125 = v99;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_66:
    v100 = 0;
    goto LABEL_67;
  }

  if (v127 == 2)
  {
    v100 = 2;
  }

  else
  {
    v100 = v127 == 1;
  }

LABEL_67:
  *(v123 + *(v124 + 36)) = v100;
  v101 = [a1 creationDate];
  if (v101)
  {
    v102 = v101;
    sub_10002C5C8();

    v103 = 0;
    a1 = v102;
  }

  else
  {
    v103 = 1;
  }

  v104 = *(v119 + 8);
  v104(v18, v13);
  v104(v118, v13);
  v105 = v117;
  v115(v117, v103, 1, v13);
  v106 = v123;
  sub_100005990(v105, v123 + v121);
  v107 = v120;
  sub_100005AD8(v106, v120, type metadata accessor for TaskRecord);
  (*(v122 + 56))(v107, 0, 1, v124);
  return sub_100005B40(v106, type metadata accessor for TaskRecord);
}

uint64_t sub_100003170(void *a1)
{
  v3 = v1;
  v5 = sub_100005338(&qword_100038550, &qword_10002DA90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100006754(a1, a1[3]);
  sub_1000069DC();
  sub_10002CE18();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  sub_10002CD08();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    sub_10002CD08();
    v15 = v3[5];
    v19 = v3[4];
    v20 = v15;
    v18[15] = 2;
    sub_1000068E0(v19, v15);
    sub_100006934();
    sub_10002CD18();
    sub_10000593C(v19, v20);
    v16 = *(type metadata accessor for TaskParametersRecord(0) + 28);
    LOBYTE(v19) = 3;
    sub_10002C608();
    sub_100006414(&qword_100038530, &type metadata accessor for Date);
    sub_10002CCF8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000339C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_100005338(&qword_100038540, &qword_10002DA88);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for TaskParametersRecord(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 36);
  v18 = sub_10002C608();
  v19 = *(*(v18 - 8) + 56);
  v31 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  sub_100006754(a1, a1[3]);
  sub_1000069DC();
  sub_10002CE08();
  if (v2)
  {
    sub_1000067EC(a1);
    return sub_1000053D8(&v16[v31]);
  }

  else
  {
    v27 = v7;
    v22 = v29;
    v21 = v30;
    LOBYTE(v32) = 0;
    *v16 = sub_10002CCD8();
    *(v16 + 1) = v23;
    LOBYTE(v32) = 1;
    *(v16 + 2) = sub_10002CCD8();
    *(v16 + 3) = v24;
    v33 = 2;
    sub_100006838();
    v26 = 0;
    sub_10002CCE8();
    *(v16 + 2) = v32;
    LOBYTE(v32) = 3;
    sub_100006414(&qword_100038510, &type metadata accessor for Date);
    sub_10002CCC8();
    (*(v22 + 8))(v11, v21);
    sub_100005990(v27, &v16[v31]);
    sub_100005AD8(v16, v28, type metadata accessor for TaskParametersRecord);
    sub_1000067EC(a1);
    return sub_100005B40(v16, type metadata accessor for TaskParametersRecord);
  }
}

uint64_t sub_1000037B4()
{
  v1 = 0x656D614E6B736174;
  v2 = 0x6574656D61726170;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    v1 = 0x6F69736E65747865;
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

uint64_t sub_10000384C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000730C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100003874(uint64_t a1)
{
  v2 = sub_1000069DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000038B0(uint64_t a1)
{
  v2 = sub_1000069DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000391C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v68 = &v65 - v6;
  v7 = type metadata accessor for TaskParametersRecord(0);
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 28);
  v13 = sub_10002C608();
  v14 = *(*(v13 - 8) + 56);
  v70 = v12;
  v71 = v11;
  v15 = &v11[v12];
  v16 = a1;
  v14(v15, 1, 1, v13);
  if (sub_10002CBD8() == 0x617261506B736154 && v17 == 0xEE0073726574656DLL)
  {
  }

  else
  {
    v18 = sub_10002CD48();

    if ((v18 & 1) == 0)
    {
      if (qword_100038240 != -1)
      {
        swift_once();
      }

      v49 = sub_10002C978();
      sub_1000053A0(v49, qword_100039DE0);
      v50 = a1;
      v51 = sub_10002C958();
      v52 = sub_10002CBA8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v73 = v54;
        *v53 = 136315138;
        v55 = sub_10002CBD8();
        v57 = sub_10000B7BC(v55, v56, &v73);

        *(v53 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "Invalid recordType: %s", v53, 0xCu);
        sub_1000067EC(v54);
      }

      else
      {
      }

      goto LABEL_22;
    }
  }

  v69 = v7;
  v19 = [a1 values];
  sub_100005338(&qword_1000382B0, &qword_10002D570);
  v20 = sub_10002C9D8();

  if (!*(v20 + 16) || (v21 = sub_1000058C4(0x656D614E6B736174, 0xE800000000000000), (v22 & 1) == 0))
  {

    goto LABEL_17;
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  swift_unknownObjectRetain();

  v74 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v7 = v69;
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v44 = sub_10002C978();
    sub_1000053A0(v44, qword_100039DE0);
    v45 = sub_10002C958();
    v46 = sub_10002CBA8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed at parsing taskName", v47, 2u);
    }

    goto LABEL_22;
  }

  v66 = a2;
  v67 = a1;
  v24 = v73;
  v25 = [a1 values];
  v26 = sub_10002C9D8();

  if (!*(v26 + 16) || (v27 = sub_1000058C4(0x6F69736E65747865, 0xEB0000000044496ELL), (v28 & 1) == 0))
  {

    goto LABEL_29;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  swift_unknownObjectRetain();

  v74 = v29;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:

    a2 = v66;
    v58 = v67;
    v7 = v69;
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v59 = sub_10002C978();
    sub_1000053A0(v59, qword_100039DE0);
    v60 = sub_10002C958();
    v61 = sub_10002CBA8();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_34;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "Failed at parsing extensionID";
    goto LABEL_33;
  }

  v30 = *(&v73 + 1);
  v65 = v73;
  v31 = [v67 values];
  v32 = sub_10002C9D8();

  if (!*(v32 + 16))
  {

    a2 = v66;
    v7 = v69;
LABEL_38:
    v58 = v67;
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v64 = sub_10002C978();
    sub_1000053A0(v64, qword_100039DE0);
    v60 = sub_10002C958();
    v61 = sub_10002CBA8();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_34;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "Failed at parsing parametersData";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v60, v61, v63, v62, 2u);

LABEL_34:

LABEL_22:
    sub_1000053D8(v71 + v70);
    return (*(v72 + 56))(a2, 1, 1, v7);
  }

  v33 = sub_1000058C4(0x6574656D61726170, 0xEE00617461447372);
  v7 = v69;
  if ((v34 & 1) == 0)
  {

    goto LABEL_37;
  }

  v35 = *(*(v32 + 56) + 8 * v33);
  swift_unknownObjectRetain();

  v74 = v35;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:

    a2 = v66;
    goto LABEL_38;
  }

  v36 = v73;
  v37 = v71;
  *v71 = v24;
  *(v37 + 16) = v65;
  *(v37 + 24) = v30;
  *(v37 + 32) = v36;
  v38 = v67;
  v39 = [v67 creationDate];
  v40 = v66;
  if (v39)
  {
    v41 = v68;
    v42 = v39;
    sub_10002C5C8();

    v43 = 0;
    v38 = v42;
  }

  else
  {
    v43 = 1;
    v41 = v68;
  }

  v14(v41, v43, 1, v13);
  sub_100005990(v41, v37 + v70);
  sub_100005AD8(v37, v40, type metadata accessor for TaskParametersRecord);
  (*(v72 + 56))(v40, 0, 1, v69);
  return sub_100005B40(v37, type metadata accessor for TaskParametersRecord);
}

uint64_t sub_1000041B0(void *a1)
{
  v3 = v1;
  v5 = sub_100005338(&qword_100038568, &qword_10002DAA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_100006754(a1, a1[3]);
  sub_100006A30();
  sub_10002CE18();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_10002CD08();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_10002CD08();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_10002CD08();
    v17 = *(type metadata accessor for TaskPayloadRecord(0) + 28);
    v19[12] = 3;
    sub_10002C608();
    sub_100006414(&qword_100038530, &type metadata accessor for Date);
    sub_10002CCF8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000043EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_100005338(&qword_100038558, &qword_10002DA98);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TaskPayloadRecord(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 36);
  v18 = sub_10002C608();
  v19 = *(*(v18 - 8) + 56);
  v32 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = a1[4];
  sub_100006754(a1, a1[3]);
  sub_100006A30();
  sub_10002CE08();
  if (v2)
  {
    sub_1000067EC(a1);
    return sub_1000053D8(v16 + v32);
  }

  else
  {
    v28 = v7;
    v22 = v30;
    v21 = v31;
    v36 = 0;
    *v16 = sub_10002CCD8();
    v16[1] = v23;
    v35 = 1;
    v16[2] = sub_10002CCD8();
    v16[3] = v24;
    v34 = 2;
    v27 = 0;
    v16[4] = sub_10002CCD8();
    v16[5] = v25;
    v33 = 3;
    sub_100006414(&qword_100038510, &type metadata accessor for Date);
    sub_10002CCC8();
    (*(v22 + 8))(v11, v21);
    sub_100005990(v28, v16 + v32);
    sub_100005AD8(v16, v29, type metadata accessor for TaskPayloadRecord);
    sub_1000067EC(a1);
    return sub_100005B40(v16, type metadata accessor for TaskPayloadRecord);
  }
}

Swift::Int sub_1000047E8()
{
  v1 = *v0;
  sub_10002CDD8();
  sub_10002CDE8(v1);
  return sub_10002CDF8();
}

Swift::Int sub_100004830()
{
  v1 = *v0;
  sub_10002CDD8();
  sub_10002CDE8(v1);
  return sub_10002CDF8();
}

uint64_t sub_100004874()
{
  v1 = 0x656D614E6B736174;
  v2 = 0x617474416B736174;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    v1 = 0x6F69736E65747865;
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

uint64_t sub_10000490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100007480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100004940(uint64_t a1)
{
  v2 = sub_100006A30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000497C(uint64_t a1)
{
  v2 = sub_100006A30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000049E8@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100005338(&qword_100038248, &unk_10002D560);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v70 = &v65 - v5;
  v6 = sub_10002C578();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  __chkstk_darwin(v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TaskPayloadRecord(0);
  v72 = *(v10 - 8);
  v11 = *(v72 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = v12;
  v15 = *(v12 + 28);
  v16 = sub_10002C608();
  v17 = *(*(v16 - 8) + 56);
  v75 = v14;
  v71 = v15;
  v17(v14 + v15, 1, 1, v16);
  if (sub_10002CBD8() == 0x6C7961506B736154 && v18 == 0xEC0000007364616FLL)
  {
  }

  else
  {
    v19 = sub_10002CD48();

    if ((v19 & 1) == 0)
    {
      if (qword_100038240 != -1)
      {
        swift_once();
      }

      v52 = sub_10002C978();
      sub_1000053A0(v52, qword_100039DE0);
      v48 = a1;
      a1 = sub_10002C958();
      v53 = sub_10002CBA8();

      if (os_log_type_enabled(a1, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v76 = v55;
        *v54 = 136315138;
        v56 = sub_10002CBD8();
        v58 = sub_10000B7BC(v56, v57, &v76);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, a1, v53, "Invalid recordType: %s", v54, 0xCu);
        sub_1000067EC(v55);

LABEL_39:
        v62 = v73;
        v61 = v74;
        sub_1000053D8(v75 + v71);
        return (*(v72 + 56))(v61, 1, 1, v62);
      }

LABEL_38:

      goto LABEL_39;
    }
  }

  v20 = [a1 values];
  sub_100005338(&qword_1000382B0, &qword_10002D570);
  v21 = sub_10002C9D8();

  if (!*(v21 + 16) || (v22 = sub_1000058C4(0x656D614E6B736174, 0xE800000000000000), (v23 & 1) == 0))
  {

    goto LABEL_18;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_unknownObjectRetain();

  v78 = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v47 = sub_10002C978();
    sub_1000053A0(v47, qword_100039DE0);
    v48 = sub_10002C958();
    v49 = sub_10002CBA8();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_38;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "Failed at parsing taskName";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v48, v49, v51, v50, 2u);

    goto LABEL_38;
  }

  v67 = v76;
  v68 = v77;
  v25 = [a1 values];
  v26 = sub_10002C9D8();

  if (!*(v26 + 16) || (v27 = sub_1000058C4(0x6F69736E65747865, 0xEB0000000044496ELL), (v28 & 1) == 0))
  {

    goto LABEL_28;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  swift_unknownObjectRetain();

  v78 = v29;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:

    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v59 = sub_10002C978();
    sub_1000053A0(v59, qword_100039DE0);
    v48 = sub_10002C958();
    v49 = sub_10002CBA8();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_38;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "Failed at parsing extensionID";
    goto LABEL_22;
  }

  v65 = v76;
  v66 = v77;
  v30 = [a1 values];
  v31 = sub_10002C9D8();

  if (!*(v31 + 16) || (v32 = v66, v33 = sub_1000058C4(0x617474416B736174, 0xEE00746E656D6863), (v34 & 1) == 0))
  {

LABEL_34:
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v60 = sub_10002C978();
    sub_1000053A0(v60, qword_100039DE0);
    v48 = sub_10002C958();
    v49 = sub_10002CBA8();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_38;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "Failed at parsing taskAttachment";
    goto LABEL_22;
  }

  v35 = *(*(v31 + 56) + 8 * v33);
  swift_unknownObjectRetain();

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36 || (v37 = [v36 fileURL], v38 = v68, !v37))
  {

    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v39 = v37;
  sub_10002C538();

  v40 = v75;
  *v75 = v67;
  v40[1] = v38;
  v40[2] = v65;
  v40[3] = v32;
  v40[4] = sub_10002C548(0);
  v40[5] = v41;
  v42 = [a1 creationDate];
  if (v42)
  {
    v43 = v70;
    v44 = v42;
    sub_10002C5C8();

    swift_unknownObjectRelease();
    (*(v69 + 8))(v9, v6);
    v45 = 0;
    v46 = v74;
  }

  else
  {
    (*(v69 + 8))(v9, v6);

    swift_unknownObjectRelease();
    v45 = 1;
    v46 = v74;
    v43 = v70;
  }

  v17(v43, v45, 1, v16);
  v64 = v75;
  sub_100005990(v43, v75 + v71);
  sub_100005AD8(v64, v46, type metadata accessor for TaskPayloadRecord);
  (*(v72 + 56))(v46, 0, 1, v73);
  return sub_100005B40(v64, type metadata accessor for TaskPayloadRecord);
}

uint64_t sub_100005338(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000053A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000053D8(uint64_t a1)
{
  v2 = sub_100005338(&qword_100038248, &unk_10002D560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005440(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384B8, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000054AC(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384B8, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000551C(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000055BC(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100005628(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100005694(void *a1, uint64_t a2)
{
  v4 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100005748(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000057C4()
{
  v2 = *v0;
  sub_10002CDD8();
  sub_10002C9F8();
  return sub_10002CDF8();
}

void *sub_100005824@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100005840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1000058C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002CDD8();
  sub_10002CA38();
  v6 = sub_10002CDF8();

  return sub_100005A00(a1, a2, v6);
}

uint64_t sub_10000593C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005A00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002CD48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100005AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100005BC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005C20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002C608();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005338(&qword_100038248, &unk_10002D560);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100005D64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10002C608();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005338(&qword_100038248, &unk_10002D560);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100005E94()
{
  sub_10002C608();
  if (v0 <= 0x3F)
  {
    sub_100005F48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100005F48()
{
  if (!qword_100038328)
  {
    sub_10002C608();
    v0 = sub_10002CBF8();
    if (!v1)
    {
      atomic_store(v0, &qword_100038328);
    }
  }
}

uint64_t sub_100005FF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005338(&qword_100038248, &unk_10002D560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000060C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005338(&qword_100038248, &unk_10002D560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000617C()
{
  sub_100005F48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for ActiveStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActiveStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006378()
{
  result = qword_1000384A0;
  if (!qword_1000384A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000384A0);
  }

  return result;
}

uint64_t sub_100006414(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000065D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100006670()
{
  result = qword_1000384E0;
  if (!qword_1000384E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000384E0);
  }

  return result;
}

void *sub_100006754(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006798()
{
  result = qword_100038500;
  if (!qword_100038500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038500);
  }

  return result;
}

uint64_t sub_1000067EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100006838()
{
  result = qword_100038508;
  if (!qword_100038508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038508);
  }

  return result;
}

unint64_t sub_10000688C()
{
  result = qword_100038518;
  if (!qword_100038518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038518);
  }

  return result;
}

uint64_t sub_1000068E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100006934()
{
  result = qword_100038528;
  if (!qword_100038528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038528);
  }

  return result;
}

unint64_t sub_100006988()
{
  result = qword_100038538;
  if (!qword_100038538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038538);
  }

  return result;
}

unint64_t sub_1000069DC()
{
  result = qword_100038548;
  if (!qword_100038548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038548);
  }

  return result;
}

unint64_t sub_100006A30()
{
  result = qword_100038560;
  if (!qword_100038560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038560);
  }

  return result;
}

unint64_t sub_100006A84()
{
  result = qword_100038570;
  if (!qword_100038570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038570);
  }

  return result;
}

uint64_t sub_100006AF0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100006B80(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TaskRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaskRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006D94()
{
  result = qword_100038580;
  if (!qword_100038580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038580);
  }

  return result;
}

unint64_t sub_100006DEC()
{
  result = qword_100038588;
  if (!qword_100038588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038588);
  }

  return result;
}

unint64_t sub_100006E44()
{
  result = qword_100038590;
  if (!qword_100038590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038590);
  }

  return result;
}

unint64_t sub_100006E9C()
{
  result = qword_100038598;
  if (!qword_100038598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038598);
  }

  return result;
}

unint64_t sub_100006EF4()
{
  result = qword_1000385A0;
  if (!qword_1000385A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385A0);
  }

  return result;
}

unint64_t sub_100006F4C()
{
  result = qword_1000385A8;
  if (!qword_1000385A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385A8);
  }

  return result;
}

unint64_t sub_100006FA4()
{
  result = qword_1000385B0;
  if (!qword_1000385B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385B0);
  }

  return result;
}

unint64_t sub_100006FFC()
{
  result = qword_1000385B8;
  if (!qword_1000385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385B8);
  }

  return result;
}

unint64_t sub_100007054()
{
  result = qword_1000385C0;
  if (!qword_1000385C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385C0);
  }

  return result;
}

uint64_t sub_1000070A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_10002CD48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL || (sub_10002CD48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F436B736174 && a2 == 0xEE00617461446769 || (sub_10002CD48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_10002CD48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_10002CD48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453657669746361 && a2 == 0xEC00000073757461 || (sub_10002CD48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 6;
  }

  else
  {
    v6 = sub_10002CD48();

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

uint64_t sub_10000730C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_10002CD48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL || (sub_10002CD48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEE00617461447372 || (sub_10002CD48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 3;
  }

  else
  {
    v6 = sub_10002CD48();

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

uint64_t sub_100007480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_10002CD48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL || (sub_10002CD48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617474416B736174 && a2 == 0xEE00746E656D6863 || (sub_10002CD48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 3;
  }

  else
  {
    v6 = sub_10002CD48();

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

uint64_t sub_100007624()
{
  sub_10002C898();
  sub_10002B3B8(&qword_1000387B0, &type metadata accessor for MLHostEnvironment);
  sub_10002CA68();
  sub_10002CA68();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_10002CD48();
  }

  return v1 & 1;
}

uint64_t sub_100007704()
{
  v0 = sub_10002C978();
  sub_10002B9F4(v0, qword_100039DE0);
  sub_1000053A0(v0, qword_100039DE0);
  return sub_10002C968();
}

uint64_t sub_100007784(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7272457972657571;
  }

  else
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xEA0000000000726FLL;
  }

  if (*a2)
  {
    v6 = 0x7272457972657571;
  }

  else
  {
    v6 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000726FLL;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10002CD48();
  }

  return v9 & 1;
}

Swift::Int sub_100007834()
{
  v1 = *v0;
  sub_10002CDD8();
  sub_10002CA38();

  return sub_10002CDF8();
}

uint64_t sub_1000078C0()
{
  *v0;
  sub_10002CA38();
}

Swift::Int sub_100007938()
{
  v1 = *v0;
  sub_10002CDD8();
  sub_10002CA38();

  return sub_10002CDF8();
}

uint64_t sub_1000079C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100034DD0;
  v8._object = v3;
  v5 = sub_10002CCB8(v4, v8);

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

void sub_100007A20(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x7272457972657571;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA0000000000726FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_100007A74(uint64_t a1)
{
  v2 = sub_10002C8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100038240 != -1)
  {
    swift_once();
  }

  v7 = sub_10002C978();
  sub_1000053A0(v7, qword_100039DE0);

  v8 = sub_10002C958();
  v9 = sub_10002CBA8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v13 = *(a1 + 96);
    v25[4] = *(a1 + 80);
    v25[5] = v13;
    v26 = *(a1 + 112);
    v14 = *(a1 + 32);
    v25[0] = *(a1 + 16);
    v25[1] = v14;
    v15 = *(a1 + 64);
    v25[2] = *(a1 + 48);
    v25[3] = v15;
    sub_10002B944(v25, aBlock);
    sub_10000A804();
    sub_10002B97C(v25);
    sub_10002B9AC(0, &qword_1000387A0, NSObject_ptr);
    v16 = sub_10002C9E8();
    v18 = v17;

    v19 = sub_10000B7BC(v16, v18, &v24);

    *(v11 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "CloudWorker Telemetry: %s", v11, 0xCu);
    sub_1000067EC(v12);

    v2 = v22;
  }

  (*(v3 + 104))(v6, enum case for CoreAnalyticsEvents.cloudWorkerTelemetry(_:), v2);
  sub_10002C8A8();
  (*(v3 + 8))(v6, v2);
  v20 = sub_10002CA18();

  aBlock[4] = sub_10002B924;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B230;
  aBlock[3] = &unk_100035178;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

void *sub_100007E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    sub_10000DB24(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = *(sub_10002C838() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = sub_10002C828();
      v15 = v2;
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_10000DB24((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v2 = v15;
      }

      v2[2] = v10 + 1;
      v11 = &v2[2 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100007F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB24(0, v1, 0);
    v3 = *(type metadata accessor for TaskRecord(0) - 8);
    v4 = *(v3 + 72);
    v5 = (((*(v3 + 80) + 32) & ~*(v3 + 80)) + a1 + 8);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];

      if (v9 >= v8 >> 1)
      {
        sub_10000DB24((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      v5 = (v5 + v4);
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000807C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000080A0, 0, 0);
}

uint64_t sub_1000080A0()
{
  v1 = v0[4];
  v2 = async function pointer to CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10000815C;
  v5 = v0[2];
  v4 = v0[3];

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v4, v1, 0, CKQueryOperationMaximumResults);
}

uint64_t sub_10000815C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_10000826C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100008364;

  return v8(a2);
}

uint64_t sub_100008364(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_100008480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_10002CDD8();
  sub_10002CA38();
  v7 = sub_10002CDF8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_10002CD48() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100008578(double a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000B458(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = sub_10000B458((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = a1;
  *v1 = v3;
  return result;
}

uint64_t sub_100008618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10000863C, 0, 0);
}

uint64_t sub_10000863C()
{
  v1 = v0[4];
  v2 = async function pointer to CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10002BDB8;
  v5 = v0[2];
  v4 = v0[3];

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v4, v1, 0, CKQueryOperationMaximumResults);
}

uint64_t sub_1000086F8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v2 == sub_10002C808() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_10002CD48();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  v9 = a1[2];
  v8 = a1[3];
  if (v9 == sub_10002C7F8() && v8 == v10)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10002CD48();
  }

  return v7 & 1;
}

uint64_t sub_1000087D0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = a3(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v16 = &v23 - v15;
  v17 = *(a2 + 16);
  if (v17)
  {
    v23 = v14;
    v24 = a6;
    v18 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    while (1)
    {
      sub_100005AD8(v18, v16, a4);
      v20 = a1(v16);
      if (v6)
      {
        return sub_100005B40(v16, a4);
      }

      if (v20)
      {
        break;
      }

      sub_100005B40(v16, a4);
      v18 += v19;
      if (!--v17)
      {
        v21 = 1;
        a6 = v24;
        goto LABEL_10;
      }
    }

    a6 = v24;
    sub_10002B814(v16, v24, v25);
    v21 = 0;
LABEL_10:
    v14 = v23;
  }

  else
  {
    v21 = 1;
  }

  return (*(v12 + 56))(a6, v21, 1, v14);
}

uint64_t sub_100008968@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  v12 = (&v22 - v11);
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v22 = a4;
    v23 = _swiftEmptyArrayStorage;
    sub_10000DB24(0, v13, 0);
    v14 = v23;
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    do
    {
      sub_100005AD8(v15, v12, a3);
      v18 = *v12;
      v17 = v12[1];

      result = sub_100005B40(v12, a3);
      v23 = v14;
      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10000DB24((v19 > 1), v20 + 1, 1);
        v14 = v23;
      }

      v14[2] = v20 + 1;
      v21 = &v14[2 * v20];
      v21[4] = v18;
      v21[5] = v17;
      v15 += v16;
      --v13;
    }

    while (v13);
    a4 = v22;
  }

  *a4 = v14;
  return result;
}

char *sub_100008AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_10000B738(*(a1 + 16), 0);
  v4 = sub_10000E634(&v6, v3 + 4, v1, a1);

  sub_10002B724();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_10000BFF0(&v6);
  return v6;
}

uint64_t sub_100008BCC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10002C818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = *a1;
  v13 = a1[1];
  v30 = a2;
  sub_10002C718();
  v14 = sub_10002C808();
  v16 = v15;
  v17 = *(v5 + 8);
  v31 = v4;
  v29 = v17;
  v17(v11, v4);
  if (v12 == v14 && v13 == v16)
  {
  }

  else
  {
    v19 = sub_10002CD48();

    v20 = 0;
    if ((v19 & 1) == 0)
    {
      return v20 & 1;
    }
  }

  v22 = a1[2];
  v21 = a1[3];
  sub_10002C718();
  v23 = sub_10002C7F8();
  v25 = v24;
  v29(v9, v31);
  if (v22 == v23 && v21 == v25)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_10002CD48();
  }

  return v20 & 1;
}

uint64_t sub_100008DB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002C578();
  v152 = *(v3 - 8);
  v153 = v3;
  v4 = *(v152 + 64);
  __chkstk_darwin(v3);
  v151 = v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002C698();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v149 = v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v146 - v11;
  v13 = sub_10002C998();
  v158 = *(v13 - 8);
  v14 = *(v158 + 64);
  v15 = __chkstk_darwin(v13);
  v147 = v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v146 - v18;
  v20 = __chkstk_darwin(v17);
  v155 = v146 - v21;
  v22 = __chkstk_darwin(v20);
  v154 = (v146 - v23);
  v24 = __chkstk_darwin(v22);
  v148 = v146 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = v146 - v27;
  __chkstk_darwin(v26);
  v30 = v146 - v29;
  sub_10002C548(0);
  sub_10002C9A8();
  v150 = a2;
  sub_10002C548(0);
  v160 = v28;
  sub_10002C9A8();
  sub_10002C678();
  v31 = sub_10002C658();
  if (!v31)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v59 = sub_10002C978();
    sub_1000053A0(v59, qword_100039DE0);
    v60 = v158;
    (*(v158 + 16))(v19, v30, v13);
    v61 = sub_10002C958();
    v62 = sub_10002CBB8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v159 = v30;
      v64 = v63;
      v65 = swift_slowAlloc();
      v161 = v65;
      *v64 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath);
      v66 = sub_10002CD38();
      v68 = v67;
      v69 = *(v60 + 8);
      v69(v19, v13);
      v70 = sub_10000B7BC(v66, v68, &v161);

      *(v64 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed at reading archive: %s", v64, 0xCu);
      sub_1000067EC(v65);

      v69(v160, v13);
      v69(v159, v13);
    }

    else
    {

      v84 = *(v60 + 8);
      v84(v19, v13);
      v84(v160, v13);
      v84(v30, v13);
    }

    return 0;
  }

  v32 = v31;
  v159 = v30;
  v157 = v13;
  v161 = _swiftEmptyArrayStorage;
  v33 = sub_10002B3B8(&qword_100038768, &type metadata accessor for ArchiveFlags);
  v34 = sub_100005338(&qword_100038770, &qword_10002DFF8);
  v35 = sub_10002B880(&qword_100038778, &qword_100038770, &qword_10002DFF8);
  sub_10002CC08();
  v156 = v32;
  v36 = sub_10002C648();
  v37 = *(v7 + 8);
  (v37)(v12, v6);
  if (!v36)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v71 = sub_10002C978();
    sub_1000053A0(v71, qword_100039DE0);
    v72 = v158;
    v73 = v155;
    v74 = v157;
    (*(v158 + 16))(v155, v159, v157);
    v75 = sub_10002C958();
    v76 = sub_10002CBB8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v161 = v78;
      *v77 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath);
      v79 = sub_10002CD38();
      v81 = v80;
      v82 = *(v72 + 8);
      v82(v73, v74);
      v83 = sub_10000B7BC(v79, v81, &v161);

      *(v77 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v75, v76, "Failed at decompressing archive: %s", v77, 0xCu);
      sub_1000067EC(v78);
    }

    else
    {

      v82 = *(v72 + 8);
      v82(v73, v74);
    }

    sub_10002C668();
    v99 = v159;

    v82(v160, v74);
    v100 = v99;
    goto LABEL_44;
  }

  v38 = sub_10002C6E8();
  v39 = v35;
  v40 = v38;
  v161 = _swiftEmptyArrayStorage;
  v146[3] = v34;
  v146[4] = v33;
  v146[5] = v39;
  sub_10002CC08();
  v146[2] = v40;
  v41 = sub_10002C6A8();
  (v37)(v12, v6);
  if (!v41)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v85 = sub_10002C978();
    sub_1000053A0(v85, qword_100039DE0);
    v86 = v158;
    v87 = v154;
    v88 = v157;
    (*(v158 + 16))(v154, v159, v157);
    v89 = sub_10002C958();
    v90 = sub_10002CBB8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v161 = v92;
      *v91 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath);
      v93 = sub_10002CD38();
      v94 = v87;
      v96 = v95;
      v97 = *(v86 + 8);
      v97(v94, v88);
      v98 = sub_10000B7BC(v93, v96, &v161);

      *(v91 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v89, v90, "Failed at decoding archive: %s", v91, 0xCu);
      sub_1000067EC(v92);
    }

    else
    {

      v97 = *(v86 + 8);
      v97(v87, v88);
    }

    sub_10002C668();
    v101 = v159;
    v102 = v160;

    sub_10002C668();

    v97(v102, v88);
    v97(v101, v88);
    return 0;
  }

  v154 = v37;
  v146[0] = v7;
  v155 = v41;
  v146[1] = v36;
  v42 = objc_opt_self();
  v43 = [v42 defaultManager];
  v44 = v160;
  sub_10002C988();
  v45 = sub_10002CA18();

  v46 = [v43 fileExistsAtPath:v45];

  if ((v46 & 1) == 0)
  {
    v47 = [v42 defaultManager];
    sub_10002C988();
    v48 = sub_10002CA18();

    v161 = 0;
    v49 = [v47 createDirectoryAtPath:v48 withIntermediateDirectories:1 attributes:0 error:&v161];

    if (v49)
    {
      v50 = v161;
      v44 = v160;
      goto LABEL_7;
    }

    v117 = v161;
    sub_10002C508();

    swift_willThrow();
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v118 = sub_10002C978();
    sub_1000053A0(v118, qword_100039DE0);
    v74 = v157;
    v119 = v158;
    v120 = v147;
    (*(v158 + 16))(v147, v160, v157);
    v121 = sub_10002C958();
    v122 = sub_10002CBB8();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v161 = v124;
      *v123 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath);
      v125 = sub_10002CD38();
      v126 = v120;
      v128 = v127;
      v82 = *(v119 + 8);
      v82(v126, v74);
      v129 = sub_10000B7BC(v125, v128, &v161);

      *(v123 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v121, v122, "Unable to create destination directory: %s", v123, 0xCu);
      sub_1000067EC(v124);
    }

    else
    {

      v82 = *(v119 + 8);
      v82(v120, v74);
    }

    v145 = v159;
    sub_10002C6C8();

    sub_10002C668();

    sub_10002C668();

    v82(v160, v74);
    v100 = v145;
LABEL_44:
    v82(v100, v74);
    return 0;
  }

LABEL_7:
  sub_100005338(&qword_100038780, &qword_10002E000);
  v51 = *(v146[0] + 72);
  v52 = (*(v146[0] + 80) + 32) & ~*(v146[0] + 80);
  v53 = swift_allocObject();
  v53[1] = xmmword_10002DE30;
  sub_10002C688();
  v161 = v53;
  sub_10002CC08();
  v54 = sub_10002C6B8();
  v55 = v12;
  v56 = v54;
  (v154)(v55, v6);
  v57 = v44;
  if (!v56)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v103 = sub_10002C978();
    sub_1000053A0(v103, qword_100039DE0);
    v104 = v158;
    v105 = v148;
    v106 = v157;
    (*(v158 + 16))(v148, v44, v157);
    v107 = sub_10002C958();
    v108 = sub_10002CBB8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v161 = v110;
      *v109 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath);
      v111 = sub_10002CD38();
      v112 = v105;
      v114 = v113;
      v115 = *(v104 + 8);
      v115(v112, v106);
      v116 = sub_10000B7BC(v111, v114, &v161);

      *(v109 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v107, v108, "Failed at creating extractStream: %s", v109, 0xCu);
      sub_1000067EC(v110);
    }

    else
    {

      v115 = *(v104 + 8);
      v115(v105, v106);
    }

    v144 = v159;
    sub_10002C6C8();

    sub_10002C668();

    sub_10002C668();

    v115(v160, v106);
    v115(v144, v106);
    return 0;
  }

  v161 = _swiftEmptyArrayStorage;
  v58 = v149;
  sub_10002CC08();
  sub_10002C6D8();
  (v154)(v58, v6);
  v130 = v152;
  v131 = v153;
  v132 = v151;
  if (qword_100038240 != -1)
  {
    swift_once();
  }

  v133 = sub_10002C978();
  sub_1000053A0(v133, qword_100039DE0);
  (*(v130 + 16))(v132, v150, v131);
  v134 = sub_10002C958();
  v135 = sub_10002CB98();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v161 = v154;
    *v136 = 136315138;
    sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
    v137 = sub_10002CD38();
    v139 = v138;
    (*(v130 + 8))(v132, v131);
    v140 = sub_10000B7BC(v137, v139, &v161);
    v57 = v160;

    *(v136 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v134, v135, "Decompression completed: %s", v136, 0xCu);
    sub_1000067EC(v154);
  }

  else
  {

    (*(v130 + 8))(v132, v131);
  }

  sub_10002C6C8();

  sub_10002C6C8();

  sub_10002C668();

  sub_10002C668();

  v141 = v157;
  v142 = *(v158 + 8);
  v142(v57, v157);
  v142(v159, v141);
  return 1;
}

uint64_t sub_10000A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002BDBC;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_10000A43C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A4E4;

  return sub_10000EDAC(a1);
}

uint64_t sub_10000A4E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000A5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000A6C4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000A6C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A7B8(uint64_t a1)
{
  v2 = sub_10000B154();

  return MLHostExtension.configuration.getter(a1, v2);
}

unint64_t sub_10000A804()
{
  v1 = v0;
  v2 = sub_10002C7E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for BucketInterval.hour(_:), v2);
  sub_10002C7D8();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = sub_10000E84C(&_swiftEmptyArrayStorage);
  v10 = *v1;
  isa = sub_10002CB58().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v9;
  sub_10000E350(isa, 0xD000000000000013, 0x800000010002E230, isUniquelyReferenced_nonNull_native);
  v13 = v80;
  v14 = *(v1 + 1);
  v15 = sub_10002CB58().super.super.isa;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v13;
  sub_10000E350(v15, 0xD00000000000001ALL, 0x800000010002E250, v16);
  v17 = v80;
  v18 = *(v1 + 2);
  v19 = sub_10002CB58().super.super.isa;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v17;
  sub_10000E350(v19, 0xD00000000000001ALL, 0x800000010002E270, v20);
  v21 = v80;
  v22 = *(v1 + 3);
  v23 = sub_10002CB58().super.super.isa;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v21;
  sub_10000E350(v23, 0xD000000000000024, 0x800000010002E290, v24);
  v25 = v80;
  v26 = *(v1 + 4);
  v27 = sub_10002CB58().super.super.isa;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v25;
  sub_10000E350(v27, 0xD00000000000002ALL, 0x800000010002E2C0, v28);
  v29 = v80;
  v30 = *(v1 + 5);
  v31 = sub_10002CB58().super.super.isa;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v29;
  sub_10000E350(v31, 0xD000000000000018, 0x800000010002E2F0, v32);
  v33 = v80;
  v34 = *(v1 + 6);
  v35 = sub_10002CB58().super.super.isa;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v33;
  sub_10000E350(v35, 0xD00000000000001FLL, 0x800000010002E310, v36);
  v37 = v80;
  v38 = *(v1 + 7);
  v39 = sub_10002CB58().super.super.isa;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v37;
  sub_10000E350(v39, 0xD00000000000001FLL, 0x800000010002E330, v40);
  v41 = v80;
  v42 = *(v1 + 8);
  v43 = sub_10002CB58().super.super.isa;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v41;
  sub_10000E350(v43, 0xD00000000000001ALL, 0x800000010002E350, v44);
  v45 = v80;
  v46 = *(v1 + 9);
  v47 = sub_10002CB58().super.super.isa;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v45;
  sub_10000E350(v47, 0xD00000000000001ALL, 0x800000010002E370, v48);
  v49 = v80;
  v50 = *(v1 + 10);
  v51 = sub_10002CB58().super.super.isa;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v49;
  sub_10000E350(v51, 0xD00000000000001ALL, 0x800000010002E390, v52);
  v53 = v80;
  v54 = floor(v1[11] / v8);
  v55 = sub_10002CB28().super.super.isa;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v53;
  sub_10000E350(v55, 0xD00000000000001BLL, 0x800000010002E3B0, v56);
  v57 = v80;
  v58 = *(v1 + 12);
  sub_10000AE00(v58);
  if ((v59 & 1) == 0)
  {
    v60 = sub_10002CB28().super.super.isa;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_10000E350(v60, 0xD000000000000012, 0x800000010002E460, v61);
    v62 = v80;
    v63 = sub_10002CB28().super.super.isa;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v62;
    sub_10000E350(v63, 0xD00000000000001BLL, 0x800000010002E480, v64);
    v57 = v80;
  }

  sub_10000AE60(v58);
  if ((v66 & 1) == 0)
  {
    v67 = sub_10002CB28().super.super.isa;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_10000E350(v67, 0xD000000000000014, 0x800000010002E420, v68);
    v69 = v80;
    v70 = sub_10002CB28().super.super.isa;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v69;
    sub_10000E350(v70, 0xD00000000000001DLL, 0x800000010002E440, v71);
    v57 = v80;
  }

  sub_10000AF2C(v58, v65);
  if ((v72 & 1) == 0)
  {
    v73 = sub_10002CB28().super.super.isa;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_10000E350(v73, 0xD00000000000001FLL, 0x800000010002E3D0, v74);
    v75 = v80;
    v76 = sub_10002CB28().super.super.isa;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v75;
    sub_10000E350(v76, 0xD000000000000028, 0x800000010002E3F0, v77);
    return v80;
  }

  return v57;
}

uint64_t sub_10000AE00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32) + 0.0;
  if (v1 != 1)
  {
    v3 = 0;
    do
    {
      v2 = v2 + (*(a1 + 40 + 8 * v3) - v2) / (v3 + 2);
      ++v3;
    }

    while (v1 - 1 != v3);
  }

  return *&v2;
}

uint64_t sub_10000AE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    *&result = 0.0;
    return result;
  }

  v9 = a1;

  sub_10000C05C(&v9);
  v2 = v1 >> 1;
  v3 = *(v9 + 2);
  if (v1)
  {
    if (v1 >> 1 < v3)
    {
      v8 = *&v9[8 * v2 + 32];

      return v8;
    }
  }

  else
  {
    if (v1 >> 1 < v3)
    {
      v4 = &v9[8 * v2];
      v6 = *(v4 + 3);
      v5 = *(v4 + 4);

      *&result = (v5 + v6) * 0.5;
      return result;
    }

    __break(1u);
  }

  __break(1u);

  *&result = COERCE_DOUBLE();
  __break(1u);
  return result;
}

long double sub_10000AF2C(uint64_t a1, long double result)
{
  v2 = *(a1 + 16);
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = *(a1 + 32) + 0.0;
    do
    {
      v4 = v4 + (*(a1 + 40 + 8 * v3) - v4) / (v3 + 2);
      ++v3;
    }

    while (v2 - 1 != v3);
    if (v2 > 3)
    {
      v5 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v7 = vdupq_lane_s64(*&v4, 0);
      v8 = (a1 + 48);
      v6 = 0.0;
      v9 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v10 = vsubq_f64(v8[-1], v7);
        v11 = vsubq_f64(*v8, v7);
        v12 = vmulq_f64(v10, v10);
        v13 = vmulq_f64(v11, v11);
        v6 = v6 + v12.f64[0] + v12.f64[1] + v13.f64[0] + v13.f64[1];
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      if (v2 == v5)
      {
        return sqrt(v6 / v2);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0.0;
    }

    v14 = v2 - v5;
    v15 = (a1 + 8 * v5 + 32);
    do
    {
      v16 = *v15++;
      v6 = v6 + (v16 - v4) * (v16 - v4);
      --v14;
    }

    while (v14);
    return sqrt(v6 / v2);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000B098();
  sub_10002C6F8();
  return 0;
}

unint64_t sub_10000B098()
{
  result = qword_100038630;
  if (!qword_100038630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038630);
  }

  return result;
}

unint64_t sub_10000B154()
{
  result = qword_100038638;
  if (!qword_100038638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038638);
  }

  return result;
}

unint64_t sub_10000B1A8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 96);
  v8[4] = *(a1 + 80);
  v8[5] = v2;
  v9 = *(a1 + 112);
  v3 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v3;
  v4 = *(a1 + 64);
  v8[2] = *(a1 + 48);
  v8[3] = v4;
  sub_10002B944(v8, &v7);
  v5 = sub_10000A804();
  sub_10002B97C(v8);
  return v5;
}

Class sub_10000B230(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10002B9AC(0, &qword_1000387A0, NSObject_ptr);
    v5.super.isa = sub_10002C9C8().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_10000B2CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = (result + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      v10(a2, a3, a4);

      v8 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *sub_10000B354(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038750, &qword_10002DFE8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10000B458(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038738, &qword_10002DFD0);
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

size_t sub_10000B55C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005338(a5, a6);
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

void *sub_10000B738(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005338(&qword_100038748, &qword_10002DFE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_10000B7BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B888(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10002B8C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000067EC(v11);
  return v7;
}

unint64_t sub_10000B888(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000B994(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10002CC68();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000B994(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000B9E0(a1, a2);
  sub_10000BB10(&off_100034DA8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000B9E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000BBFC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10002CC68();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10002CA48();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000BBFC(v10, 0);
        result = sub_10002CC48();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000BB10(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000BC70(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000BBFC(uint64_t a1, uint64_t a2)
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

  sub_100005338(&qword_100038788, &qword_10002E008);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000BC70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038788, &qword_10002E008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000BD64(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10002CDD8();
  sub_10002CA38();
  v9 = sub_10002CDF8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10002CD48() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10000DF2C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000BEB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10002CDD8();
  sub_10002CA38();
  v7 = sub_10002CDF8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_10002CD48() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000D34C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10000D940(v9);
  *v2 = v20;
  return v13;
}

Swift::Int sub_10000BFF0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000E78C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10000C190(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10000C05C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000E7A0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_10002CD28(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_10002CAB8();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10000C934(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_10000C190(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10002CD28(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_10002CAB8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10000C358(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000C288(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000C288(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_10002CD48(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000C358(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10000D338(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10000CE90((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_10002CD48();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_10002CD48();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000B354(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10000B354((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10000CE90((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000D338(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10000D2AC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_10002CD48(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10000C934(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10000D338(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10000D0B8((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000B354(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_10000B354((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = (v8 + 4);
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_10000D0B8((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        v8[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10000CE90(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_10002CD48() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_10002CD48() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10000D0B8(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
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
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10000D2AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000D338(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10000D34C()
{
  v1 = v0;
  sub_100005338(&qword_100038740, &qword_10002DFD8);
  v2 = *v0;
  v3 = sub_10002CC28();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_10000D4A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005338(&qword_100038740, &qword_10002DFD8);
  result = sub_10002CC38();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10002CDD8();

      sub_10002CA38();
      result = sub_10002CDF8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_10000D6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100005338(&qword_100038740, &qword_10002DFD8);
  result = sub_10002CC38();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10002CDD8();
      sub_10002CA38();
      result = sub_10002CDF8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10000D940(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_10002CC18();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_10002CDD8();

        sub_10002CA38();
        v15 = sub_10002CDF8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

size_t sub_10000DB04(size_t a1, int64_t a2, char a3)
{
  result = sub_10000DC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DB24(char *a1, int64_t a2, char a3)
{
  result = sub_10000DB44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DB44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038748, &qword_10002DFE0);
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

size_t sub_10000DC50(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005338(&qword_100038798, &qword_10002E010);
  v10 = *(sub_10002C748() - 8);
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
  v15 = *(sub_10002C748() - 8);
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

char *sub_10000DE28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038738, &qword_10002DFD0);
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
    v10 = &_swiftEmptyArrayStorage;
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

Swift::Int sub_10000DF2C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000D6E0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000D34C();
      goto LABEL_16;
    }

    sub_10000D4A8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10002CDD8();
  sub_10002CA38();
  result = sub_10002CDF8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10002CD48();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10002CD58();
  __break(1u);
  return result;
}

uint64_t sub_10000E0AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005338(&qword_1000387A8, &qword_10002E018);
  v39 = a2;
  result = sub_10002CC98();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_10002CDD8();
      sub_10002CA38();
      result = sub_10002CDF8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000E350(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000058C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000E0AC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000058C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10002CD68();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000E4C8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_10000E4C8()
{
  v1 = v0;
  sub_100005338(&qword_1000387A8, &qword_10002E018);
  v2 = *v0;
  v3 = sub_10002CC88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10000E634(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10000E7B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10002CB48();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000BD64(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10000E84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005338(&qword_1000387A8, &qword_10002E018);
    v3 = sub_10002CCA8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000058C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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

void *sub_10000E950(uint64_t a1)
{
  v2 = sub_10002C948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = sub_10002C748();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v46 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v33 - v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v41 = v18;
    v19 = *(v17 + 56);
    v35 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v20 = a1 + v35;
    v39 = enum case for TaskType.dynamicTask(_:);
    v37 = (v3 + 8);
    v38 = (v3 + 104);
    v34 = (v17 - 8);
    v45 = (v17 + 16);
    v21 = _swiftEmptyArrayStorage;
    v47 = v7;
    v43 = v10;
    v44 = v9;
    v36 = v2;
    v42 = v17;
    v40 = v19;
    while (1)
    {
      v48 = v16;
      v41(v49, v20, v10);
      sub_10002C738();
      (*v38)(v7, v39, v2);
      sub_10002B3B8(&qword_100038790, &type metadata accessor for TaskType);
      sub_10002CA68();
      sub_10002CA68();
      v23 = v52 == v50 && v53 == v51;
      v24 = v9;
      if (v23)
      {
        break;
      }

      v25 = sub_10002CD48();
      v26 = *v37;
      (*v37)(v47, v2);
      v26(v24, v2);
      v7 = v47;

      if (v25)
      {
        goto LABEL_12;
      }

      v10 = v43;
      (*v34)(v49, v43);
      v22 = v40;
      v2 = v36;
LABEL_4:
      v20 += v22;
      v16 = v48 - 1;
      v9 = v44;
      if (v48 == 1)
      {
        return v21;
      }
    }

    v27 = *v37;
    (*v37)(v7, v2);
    v27(v24, v2);

LABEL_12:
    v28 = *v45;
    v10 = v43;
    (*v45)(v46, v49, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000DB04(0, v21[2] + 1, 1);
      v21 = v54;
    }

    v2 = v36;
    v31 = v21[2];
    v30 = v21[3];
    if (v31 >= v30 >> 1)
    {
      sub_10000DB04(v30 > 1, v31 + 1, 1);
      v21 = v54;
    }

    v21[2] = v31 + 1;
    v22 = v40;
    v28(v21 + v35 + v31 * v40, v46, v10);
    v7 = v47;
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000EDAC(uint64_t a1)
{
  v1[61] = a1;
  v2 = *(*(sub_100005338(&qword_100038640, &qword_10002DF00) - 8) + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v3 = type metadata accessor for TaskPayloadRecord(0);
  v1[64] = v3;
  v4 = *(v3 - 8);
  v1[65] = v4;
  v5 = *(v4 + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v6 = sub_10002C518();
  v1[70] = v6;
  v7 = *(v6 - 8);
  v1[71] = v7;
  v8 = *(v7 + 64) + 15;
  v1[72] = swift_task_alloc();
  v9 = *(*(sub_100005338(&qword_100038648, &unk_10002DF08) - 8) + 64) + 15;
  v1[73] = swift_task_alloc();
  v10 = sub_10002C578();
  v1[74] = v10;
  v11 = *(v10 - 8);
  v1[75] = v11;
  v12 = *(v11 + 64) + 15;
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v13 = sub_10002C748();
  v1[87] = v13;
  v14 = *(v13 - 8);
  v1[88] = v14;
  v15 = *(v14 + 64) + 15;
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v16 = *(*(sub_100005338(&qword_100038248, &unk_10002D560) - 8) + 64) + 15;
  v1[104] = swift_task_alloc();
  v17 = sub_10002C908();
  v1[105] = v17;
  v18 = *(v17 - 8);
  v1[106] = v18;
  v19 = *(v18 + 64) + 15;
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v20 = *(*(sub_100005338(&qword_100038650, &qword_10002DF18) - 8) + 64) + 15;
  v1[111] = swift_task_alloc();
  v21 = sub_100005338(&qword_100038658, &qword_10002DF20);
  v1[112] = v21;
  v22 = *(v21 - 8);
  v1[113] = v22;
  v23 = *(v22 + 64) + 15;
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v24 = sub_10002C3F8();
  v1[116] = v24;
  v25 = *(v24 - 8);
  v1[117] = v25;
  v26 = *(v25 + 64) + 15;
  v1[118] = swift_task_alloc();
  v27 = sub_10002C408();
  v1[119] = v27;
  v28 = *(v27 - 8);
  v1[120] = v28;
  v29 = *(v28 + 64) + 15;
  v1[121] = swift_task_alloc();
  v30 = *(*(sub_100005338(&qword_100038660, &qword_10002DF28) - 8) + 64) + 15;
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v31 = type metadata accessor for TaskParametersRecord(0);
  v1[126] = v31;
  v32 = *(v31 - 8);
  v1[127] = v32;
  v33 = *(v32 + 64) + 15;
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v34 = sub_10002C8C8();
  v1[133] = v34;
  v35 = *(v34 - 8);
  v1[134] = v35;
  v36 = *(v35 + 64) + 15;
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v37 = *(*(sub_100005338(&qword_100038668, &qword_10002DF30) - 8) + 64) + 15;
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v38 = sub_10002C818();
  v1[141] = v38;
  v39 = *(v38 - 8);
  v1[142] = v39;
  v40 = *(v39 + 64) + 15;
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v41 = *(*(sub_100005338(&qword_100038670, &qword_10002DF38) - 8) + 64) + 15;
  v1[151] = swift_task_alloc();
  v42 = type metadata accessor for TaskRecord(0);
  v1[152] = v42;
  v43 = *(v42 - 8);
  v1[153] = v43;
  v44 = *(v43 + 64) + 15;
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v45 = sub_10002C638();
  v1[161] = v45;
  v46 = *(v45 - 8);
  v1[162] = v46;
  v47 = *(v46 + 64) + 15;
  v1[163] = swift_task_alloc();
  v48 = sub_10002C608();
  v1[164] = v48;
  v49 = *(v48 - 8);
  v1[165] = v49;
  v50 = *(v49 + 64) + 15;
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v51 = sub_10002C898();
  v1[171] = v51;
  v52 = *(v51 - 8);
  v1[172] = v52;
  v53 = *(v52 + 64) + 15;
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v54 = sub_10002C888();
  v1[175] = v54;
  v55 = *(v54 - 8);
  v1[176] = v55;
  v56 = *(v55 + 64) + 15;
  v1[177] = swift_task_alloc();
  v1[178] = swift_task_alloc();
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v1[182] = swift_task_alloc();
  v1[183] = swift_task_alloc();
  v1[184] = swift_task_alloc();
  v57 = *(*(sub_100005338(&qword_100038678, &qword_10002DF40) - 8) + 64) + 15;
  v1[185] = swift_task_alloc();
  v58 = sub_10002C798();
  v1[186] = v58;
  v59 = *(v58 - 8);
  v1[187] = v59;
  v60 = *(v59 + 64) + 15;
  v1[188] = swift_task_alloc();

  return _swift_task_switch(sub_10000F954, 0, 0);
}

uint64_t sub_10000F954()
{
  if (qword_100038240 != -1)
  {
    swift_once();
  }

  v1 = v0[61];
  v2 = sub_10002C978();
  v0[189] = sub_1000053A0(v2, qword_100039DE0);
  v3 = v1;
  v4 = sub_10002C958();
  v5 = sub_10002CB98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[61];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;

    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v8, 0xCu);
    sub_10002B7B4(v9, &qword_1000386C8, &qword_10002DF80);
  }

  else
  {
  }

  v0[190] = sub_10002C768();
  v0[191] = sub_10002C758();
  v10 = *(&_s20LighthouseBackground12MLHostClientC9getConfigAA0cF0VyYaAA0cD5ErrorOYKFTjTu + 1);
  v11 = _s20LighthouseBackground12MLHostClientC9getConfigAA0cF0VyYaAA0cD5ErrorOYKFTjTu;
  v12 = swift_task_alloc();
  v0[192] = v12;
  *v12 = v0;
  v12[1] = sub_10000FB70;
  v13 = v0[185];
  v14 = v0[184];

  return ((&_s20LighthouseBackground12MLHostClientC9getConfigAA0cF0VyYaAA0cD5ErrorOYKFTjTu + v11))(v13, v14);
}

uint64_t sub_10000FB70()
{
  v2 = *v1;
  v3 = *(*v1 + 1536);
  v4 = *v1;
  v2[193] = v0;

  v5 = v2[191];
  if (v0)
  {
    (*(v2[176] + 8))(v2[184], v2[175]);

    v6 = sub_100022FDC;
  }

  else
  {

    v6 = sub_10000FD00;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000FD00()
{
  v168 = v0;
  v1 = v0[189];
  v2 = v0[188];
  v3 = v0[187];
  v4 = v0[186];
  v5 = v0[185];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[171];
  (*(v3 + 56))(v5, 0, 1, v4);
  (*(v3 + 32))(v2, v5, v4);
  sub_10002C788();
  (*(v8 + 104))(v7, enum case for MLHostEnvironment.development(_:), v9);
  v10 = sub_100007624();
  v11 = *(v8 + 8);
  v11(v7, v9);
  v11(v6, v9);
  v12 = sub_10002C958();
  v13 = sub_10002CB98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v10 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "useSandboxEnvironment: %{BOOL}d", v14, 8u);
  }

  v15 = v0[189];
  v16 = v0[188];

  v17 = sub_10002C778();
  v0[194] = v18;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xD00000000000001ALL;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0x800000010002E1B0;
  }

  swift_bridgeObjectRetain_n();
  v21 = sub_10002C958();
  v22 = sub_10002CB98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v167[0] = v24;
    *v23 = 136315138;

    v25 = sub_10000B7BC(v19, v20, v167);

    *(v23 + 4) = v25;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v21, v22, "containerName: %s", v23, 0xCu);
    sub_1000067EC(v24);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v26 = v0[170];
  v27 = v0[165];
  v28 = v0[164];
  sub_10002C5A8();
  sub_10002C598();
  v30 = v29;
  v31 = *(v27 + 8);
  v0[195] = v31;
  v0[196] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v26, v28);
  if ((v10 & 1) == 0)
  {
    v32 = objc_allocWithZone(NSUserDefaults);
    v33 = sub_10002CA18();
    v34 = [v32 initWithSuiteName:v33];

    if (v34)
    {
      v35 = sub_10002CA18();
      [v34 doubleForKey:v35];
      v30 = v36;
    }
  }

  v37 = v0[170];
  v38 = v0[164];
  sub_10002C5D8();
  sub_10002C598();
  v40 = v39;
  v31(v37, v38);
  if (v40 - v30 < 604800.0)
  {
    v41 = v0[189];
    v42 = sub_10002C958();
    v43 = sub_10002CB98();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134218240;
      *(v44 + 4) = v30;
      *(v44 + 12) = 2048;
      *(v44 + 14) = 0x4122750000000000;

      _os_log_impl(&_mh_execute_header, v42, v43, "Last CloudSync was %f. Skipping execution due to minInterval: %f.", v44, 0x16u);
    }

    else
    {
    }

LABEL_24:
    v50 = v0[188];
    v51 = v0[187];
    v52 = v0[186];
    v53 = objc_allocWithZone(sub_10002C7C8());
    v81 = sub_10002C7B8();
    (*(v51 + 8))(v50, v52);
    v54 = v0[188];
    v55 = v0[185];
    v56 = v0[184];
    v57 = v0[183];
    v58 = v0[182];
    v59 = v0[181];
    v60 = v0[180];
    v61 = v0[179];
    v62 = v0[178];
    v63 = v0[177];
    v82 = v0[174];
    v83 = v0[173];
    v84 = v0[170];
    v85 = v0[169];
    v86 = v0[168];
    v87 = v0[167];
    v88 = v0[166];
    v89 = v0[163];
    v90 = v0[160];
    v91 = v0[159];
    v92 = v0[158];
    v93 = v0[157];
    v94 = v0[156];
    v95 = v0[155];
    v96 = v0[154];
    v97 = v0[151];
    v98 = v0[150];
    v99 = v0[149];
    v100 = v0[148];
    v101 = v0[147];
    v102 = v0[146];
    v103 = v0[145];
    v104 = v0[144];
    v105 = v0[143];
    v106 = v0[140];
    v107 = v0[139];
    v108 = v0[138];
    v109 = v0[137];
    v110 = v0[136];
    v111 = v0[135];
    v112 = v0[132];
    v113 = v0[131];
    v114 = v0[130];
    v115 = v0[129];
    v116 = v0[128];
    v117 = v0[125];
    v118 = v0[124];
    v119 = v0[123];
    v120 = v0[122];
    v121 = v0[121];
    v122 = v0[118];
    v123 = v0[115];
    v124 = v0[114];
    v125 = v0[111];
    v126 = v0[110];
    v127 = v0[109];
    v128 = v0[108];
    v129 = v0[107];
    v130 = v0[104];
    v131 = v0[103];
    v132 = v0[102];
    v133 = v0[101];
    v134 = v0[100];
    v135 = v0[99];
    v136 = v0[98];
    v137 = v0[97];
    v138 = v0[96];
    v139 = v0[95];
    v140 = v0[94];
    v141 = v0[93];
    v142 = v0[92];
    v143 = v0[91];
    v144 = v0[90];
    v145 = v0[89];
    v146 = v0[86];
    v147 = v0[85];
    v148 = v0[84];
    v149 = v0[83];
    v150 = v0[82];
    v151 = v0[81];
    v152 = v0[80];
    v153 = v0[79];
    v154 = v0[78];
    v155 = v0[77];
    v156 = v0[76];
    v157 = v0[73];
    v158 = v0[72];
    v159 = v0[69];
    v160 = v0[68];
    v161 = v0[67];
    v162 = v0[66];
    v163 = v0[63];
    v164 = v0[62];

    v64 = v0[1];

    return v64(v81);
  }

  if (sub_10002CB18())
  {
    v45 = v0[189];

    v46 = sub_10002C958();
    v47 = sub_10002CB98();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v0[193];
      v49 = swift_slowAlloc();
      v166 = 0;
      v167[0] = 0;
      *v49 = 0;
      v165 = v49 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, &v165, &v166, v167);
      _os_log_impl(&_mh_execute_header, v46, v47, "Task cancelled.", v49, 2u);
    }

    goto LABEL_24;
  }

  v66 = v0[190];
  v67 = swift_allocObject();
  v0[197] = v67;
  *(v67 + 16) = 0u;
  *(v67 + 32) = 0u;
  *(v67 + 48) = 0u;
  *(v67 + 64) = 0u;
  *(v67 + 80) = 0u;
  *(v67 + 96) = 0u;
  *(v67 + 112) = _swiftEmptyArrayStorage;
  if (v10)
  {
    v68 = 2;
  }

  else
  {
    v68 = 1;
  }

  v69 = objc_allocWithZone(CKContainerID);

  v70 = sub_10002CA18();

  v71 = [v69 initWithContainerIdentifier:v70 environment:v68];
  v0[198] = v71;

  v72 = [objc_allocWithZone(CKContainer) initWithContainerID:v71];
  v0[199] = v72;
  v0[200] = [v72 publicCloudDatabase];
  v73 = [objc_opt_self() defaultRecordZone];
  v0[201] = [v73 zoneID];

  v74 = [objc_allocWithZone(CKOperationGroup) init];
  v0[202] = v74;
  v75 = sub_10002CA18();
  [v74 setName:v75];

  v76 = [objc_allocWithZone(CKOperationConfiguration) init];
  v0[203] = v76;
  [v76 setPreferAnonymousRequests:1];
  v0[204] = sub_10002C758();
  v77 = *(&_s20LighthouseBackground12MLHostClientC13getExtensionsSayAA15ExtensionRecordVGyYaAA0cD5ErrorOYKFTjTu + 1);
  v78 = _s20LighthouseBackground12MLHostClientC13getExtensionsSayAA15ExtensionRecordVGyYaAA0cD5ErrorOYKFTjTu;
  v79 = swift_task_alloc();
  v0[205] = v79;
  *v79 = v0;
  v79[1] = sub_100010A34;
  v80 = v0[183];

  return ((&_s20LighthouseBackground12MLHostClientC13getExtensionsSayAA15ExtensionRecordVGyYaAA0cD5ErrorOYKFTjTu + v78))(v80);
}

uint64_t sub_100010A34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1640);
  v6 = *v2;
  v4[206] = a1;
  v4[207] = v1;

  v7 = v3[204];
  if (v1)
  {
    if (v4[194])
    {
      v8 = v4[194];
    }

    (*(v4[176] + 8))(v4[183], v4[175]);

    v9 = sub_100022908;
  }

  else
  {

    v9 = sub_100010BF4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100010BF4()
{
  v59 = v0;
  v1 = v0[207];
  v2 = v0[189];
  v3 = sub_100007E10(v0[206]);
  v0[208] = sub_10000E7B4(v3);

  swift_bridgeObjectRetain_n();
  v4 = sub_10002C958();
  v5 = sub_10002CB98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v58 = v7;
    *v6 = 136315138;

    v8 = sub_10002CB38();
    v10 = v9;

    v11 = sub_10000B7BC(v8, v10, &v58);

    *(v6 + 4) = v11;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v4, v5, "Available extensions: %s", v6, 0xCu);
    sub_1000067EC(v7);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v12 = v0[196];
  v13 = v0[195];
  v14 = v0[170];
  v15 = v0[168];
  v54 = v0[167];
  v56 = v0[189];
  v52 = v0[169];
  v53 = v0[165];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[162];
  v19 = v0[161];
  v20 = sub_10002C488();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[209] = sub_10002C478();
  sub_10002C628();
  sub_10002C5D8();
  sub_10002C618();
  v13(v15, v16);
  (*(v18 + 8))(v17, v19);
  sub_10002C5E8();
  v13(v14, v16);
  v0[210] = sub_10002B9AC(0, &qword_100038680, NSPredicate_ptr);
  v0[211] = sub_100005338(&qword_100038688, &qword_10002DF48);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10002DE40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_10002B02C();
  v0[212] = v24;
  *(v23 + 64) = v24;
  *(v23 + 32) = 0x65746144646E65;
  *(v23 + 40) = 0xE700000000000000;
  isa = sub_10002C5B8().super.isa;
  *(v23 + 96) = sub_10002B9AC(0, &qword_100038698, NSDate_ptr);
  *(v23 + 104) = sub_10002B080();
  *(v23 + 72) = isa;
  v26 = sub_10002CB88();
  v0[213] = v26;
  (*(v53 + 16))(v54, v52, v16);
  v27 = sub_10002C958();
  v28 = sub_10002CB98();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[195];
  v31 = v0[167];
  v32 = v0[164];
  if (v29)
  {
    v55 = v0[196];
    v33 = swift_slowAlloc();
    v57 = v26;
    v34 = swift_slowAlloc();
    v58 = v34;
    *v33 = 136315138;
    sub_10002B3B8(&qword_100038720, &type metadata accessor for Date);
    v35 = sub_10002CD38();
    v37 = sub_10000B7BC(v35, v36, &v58);

    *(v33 + 4) = v37;
    v30(v31, v32);
    _os_log_impl(&_mh_execute_header, v27, v28, "Querying Tasks with endDate after cutoff: %s", v33, 0xCu);
    sub_1000067EC(v34);
    v26 = v57;
  }

  else
  {

    v30(v31, v32);
  }

  v38 = v0[203];
  v39 = v0[202];
  v40 = v0[201];
  v0[214] = sub_10002B9AC(0, &qword_1000386A8, CKQuery_ptr);
  v41 = v26;
  v61._countAndFlagsBits = 0x736B736154;
  v61._object = 0xE500000000000000;
  v42 = sub_10002CBC8(v61, v41).super.isa;
  v0[215] = v42;
  v43 = swift_task_alloc();
  v0[216] = v43;
  *(v43 + 16) = v42;
  *(v43 + 24) = v40;
  v44 = swift_task_alloc();
  v0[217] = v44;
  *(v44 + 16) = &unk_10002DF58;
  *(v44 + 24) = v43;
  v45 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
  v46 = v38;
  v47 = v39;
  v48 = swift_task_alloc();
  v0[218] = v48;
  v49 = sub_100005338(&qword_1000386B0, &qword_10002DF70);
  v0[219] = v49;
  *v48 = v0;
  v48[1] = sub_1000111EC;
  v50 = v0[200];

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 41, v38, v39, &unk_10002DF68, v44, v49);
}

uint64_t sub_1000111EC()
{
  v2 = *v1;
  v3 = *(*v1 + 1744);
  v4 = *v1;
  *(v2 + 1760) = v0;

  v5 = *(v2 + 1736);
  v6 = *(v2 + 1728);
  if (v0)
  {
    v7 = *(v2 + 1624);

    v8 = sub_100023688;
  }

  else
  {

    v8 = sub_100011394;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100011394()
{
  v244 = v0;
  v1 = v0[213];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[195];
  v5 = v0[169];
  v6 = v0[164];

  v4(v5, v6);
  v7 = v0[41];

  v8 = *(v7 + 16);
  *(v2 + 16) = v8;
  v237 = v8;
  v240 = v0;
  if (v8)
  {
    v9 = 0;
    v204 = v0[153];
    v10 = v0[142];
    v221 = (v10 + 56);
    v212 = (v10 + 32);
    v11 = v0[134];
    v210 = (v10 + 8);
    v216 = v0[159];
    v214 = v0[158];
    v223 = v0[220];
    v226 = v0[160];
    v12 = (v7 + 48);
    v218 = _swiftEmptyArrayStorage;
    v231 = v7;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v13 = v0[189];
      v14 = *(v12 - 1);
      v15 = *v12;
      v16 = *(v12 - 2);
      sub_10002B400(v14, v15);
      v17 = sub_10002C958();
      v18 = sub_10002CBA8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;

        _os_log_impl(&_mh_execute_header, v17, v18, "CKRecordID: %@", v19, 0xCu);
        sub_10002B7B4(v20, &qword_1000386C8, &qword_10002DF80);
        v7 = v231;
        v0 = v240;

        if (v15)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (v15)
        {
LABEL_12:
          v31 = v0[189];
          swift_errorRetain();
          swift_errorRetain();
          v32 = sub_10002C958();
          v33 = sub_10002CBB8();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = v16;
            v35 = swift_slowAlloc();
            v36 = v9;
            v37 = swift_slowAlloc();
            *v35 = 138412290;
            swift_errorRetain();
            v38 = _swift_stdlib_bridgeErrorToNSError();
            *(v35 + 4) = v38;
            *v37 = v38;
            sub_10002B40C(v14, 1);
            sub_10002B40C(v14, 1);
            _os_log_impl(&_mh_execute_header, v32, v33, "Error: %@", v35, 0xCu);
            sub_10002B7B4(v37, &qword_1000386C8, &qword_10002DF80);
            v9 = v36;

            sub_10002B40C(v14, 1);
          }

          else
          {

            sub_10002B40C(v14, 1);
            sub_10002B40C(v14, 1);
          }

          v52 = v0[197];
          v53 = *(v52 + 32);
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_52;
          }

          *(v52 + 32) = v55;
          goto LABEL_4;
        }
      }

      v234 = v16;
      v21 = v0[152];
      v22 = v0[151];
      v23 = v14;
      sub_1000022C8(v23, v22);
      if ((*(v204 + 48))(v22, 1, v21) == 1)
      {
        v24 = v0[189];
        sub_10002B7B4(v0[151], &qword_100038670, &qword_10002DF38);
        v25 = v23;
        v26 = sub_10002C958();
        v27 = sub_10002CBB8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = v9;
          v30 = swift_slowAlloc();
          *v28 = 138412290;
          *(v28 + 4) = v25;
          *v30 = v14;
          sub_10002B40C(v14, 0);
          _os_log_impl(&_mh_execute_header, v26, v27, "Skipping record: %@", v28, 0xCu);
          sub_10002B7B4(v30, &qword_1000386C8, &qword_10002DF80);
          v9 = v29;

          sub_10002B40C(v14, 0);
        }

        else
        {

          sub_10002B40C(v14, 0);
          sub_10002B40C(v14, 0);
        }
      }

      else
      {
        v39 = v0[208];
        sub_10002B814(v0[151], v0[160], type metadata accessor for TaskRecord);
        v40 = sub_100008480(v226[2], v226[3], v39);
        v41 = v0[189];
        v42 = v0[160];
        v228 = v9;
        if (v40)
        {
          sub_100005AD8(v42, v0[158], type metadata accessor for TaskRecord);
          v43 = sub_10002C958();
          v44 = sub_10002CBA8();
          v45 = os_log_type_enabled(v43, v44);
          v46 = v0[158];
          if (v45)
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v243[0] = v48;
            *v47 = 136315138;
            v49 = *v46;
            v50 = *(v214 + 8);

            v51 = sub_10000B7BC(v49, v50, v243);
            v7 = v231;
            v0 = v240;

            *(v47 + 4) = v51;
            sub_100005B40(v46, type metadata accessor for TaskRecord);
            _os_log_impl(&_mh_execute_header, v43, v44, "Parsing config file for taskName: %s", v47, 0xCu);
            sub_1000067EC(v48);
          }

          else
          {

            sub_100005B40(v46, type metadata accessor for TaskRecord);
          }

          v65 = v0[209];
          v66 = v0[141];
          v67 = v0[140];
          v68 = v226[4];
          v69 = v226[5];
          sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition);
          sub_10002C468();
          v70 = v0[141];
          v71 = v0[140];
          if (v223)
          {
            v72 = v0[189];

            (*v221)(v71, 1, 1, v70);
            sub_10002B7B4(v71, &qword_100038668, &qword_10002DF30);
            v73 = sub_10002C958();
            v74 = sub_10002CBB8();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v242 = 0;
              v243[0] = 0;
              *v75 = 0;
              v241[0] = v75 + 2;
              sub_10000B2CC(_swiftEmptyArrayStorage, v241, &v242, v243);
              v223 = 0;
              _os_log_impl(&_mh_execute_header, v73, v74, "Failed to parse TaskDefinition from config file, skipping task.", v75, 2u);

              sub_10002B40C(v14, 0);
            }

            else
            {

              sub_10002B40C(v14, 0);
              v223 = 0;
            }

            v9 = v228;
            v78 = v0[197];
            v79 = *(v78 + 32);
            v54 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v54)
            {
              goto LABEL_53;
            }

            v81 = v0[160];
            *(v78 + 32) = v80;
            sub_100005B40(v81, type metadata accessor for TaskRecord);
          }

          else
          {
            v76 = v0[150];
            v77 = v0[137];
            (*v221)(v0[140], 0, 1, v0[141]);
            (*v212)(v76, v71, v70);
            sub_10002C918();
            sub_100005AD8(v0[160], v0[157], type metadata accessor for TaskRecord);
            v82 = v218;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_10000B55C(0, v218[2] + 1, 1, v218, &qword_100038728, &qword_10002DFC0, type metadata accessor for TaskRecord);
            }

            v84 = v82[2];
            v83 = v82[3];
            if (v84 >= v83 >> 1)
            {
              v218 = sub_10000B55C(v83 > 1, v84 + 1, 1, v82, &qword_100038728, &qword_10002DFC0, type metadata accessor for TaskRecord);
            }

            else
            {
              v218 = v82;
            }

            v85 = v0[197];
            v86 = v0[157];
            v87 = v0[150];
            v88 = v0[141];
            v218[2] = v84 + 1;
            sub_10002B814(v86, v218 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v84, type metadata accessor for TaskRecord);
            sub_10002B40C(v14, 0);

            (*v210)(v87, v88);
            v89 = *(v85 + 24);
            v54 = __OFADD__(v89, 1);
            v90 = v89 + 1;
            if (v54)
            {
              goto LABEL_54;
            }

            v91 = v0[160];
            *(v0[197] + 24) = v90;
            sub_100005B40(v91, type metadata accessor for TaskRecord);
            v223 = 0;
            v9 = v228;
          }
        }

        else
        {
          sub_100005AD8(v42, v0[159], type metadata accessor for TaskRecord);
          v56 = sub_10002C958();
          v57 = sub_10002CBA8();
          v58 = os_log_type_enabled(v56, v57);
          v59 = v0[159];
          if (v58)
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v243[0] = v61;
            *v60 = 136315138;
            v62 = *v59;
            v63 = *(v216 + 8);

            v64 = sub_10000B7BC(v62, v63, v243);

            *(v60 + 4) = v64;
            sub_100005B40(v59, type metadata accessor for TaskRecord);
            _os_log_impl(&_mh_execute_header, v56, v57, "Skipping task %s because extensionId is not available.", v60, 0xCu);
            sub_1000067EC(v61);
            v7 = v231;
            v0 = v240;

            sub_10002B40C(v14, 0);
          }

          else
          {

            sub_10002B40C(v14, 0);
            sub_100005B40(v59, type metadata accessor for TaskRecord);
          }

          sub_100005B40(v0[160], type metadata accessor for TaskRecord);
          v9 = v228;
        }
      }

LABEL_4:
      ++v9;
      v12 += 24;
      if (v237 == v9)
      {
        goto LABEL_40;
      }
    }
  }

  v224 = v0[220];
  v218 = _swiftEmptyArrayStorage;
LABEL_40:
  v0[221] = v218;

  v92 = sub_100007F4C(v218);
  v0[222] = sub_10000E7B4(v92);

  if (sub_10002CB18())
  {
    v93 = v0[208];
    v94 = v0[206];
    v95 = v0[203];
    v96 = v0[202];
    v97 = v0[194];
    v98 = v0[189];

    v99 = sub_10002C958();
    v100 = sub_10002CB98();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v242 = 0;
      v243[0] = 0;
      *v101 = 0;
      v241[0] = v101 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v241, &v242, v243);
      _os_log_impl(&_mh_execute_header, v99, v100, "Task cancelled before adding tasks to mlhost.", v101, 2u);
    }

    v102 = v0[209];
    v103 = v0[203];
    v104 = v0[202];
    v105 = v0[201];
    v106 = v240[200];
    v107 = v240[199];
    v108 = v240[198];
    v109 = v240[197];
    v110 = v240[187];
    v235 = v240[186];
    v238 = v240[188];
    v111 = objc_allocWithZone(sub_10002C7C8());
    v140 = sub_10002C7B8();

    sub_100007A74(v109);
    (*(v110 + 8))(v238, v235);

    v112 = v240[188];
    v113 = v240[185];
    v114 = v240[184];
    v115 = v240[183];
    v116 = v240[182];
    v117 = v240[181];
    v118 = v240[180];
    v119 = v240[179];
    v120 = v240[178];
    v121 = v240[177];
    v141 = v240[174];
    v142 = v240[173];
    v143 = v240[170];
    v144 = v240[169];
    v145 = v240[168];
    v146 = v240[167];
    v147 = v240[166];
    v148 = v240[163];
    v149 = v240[160];
    v150 = v240[159];
    v151 = v240[158];
    v152 = v240[157];
    v153 = v240[156];
    v154 = v240[155];
    v155 = v240[154];
    v156 = v240[151];
    v157 = v240[150];
    v158 = v240[149];
    v159 = v240[148];
    v160 = v240[147];
    v161 = v240[146];
    v162 = v240[145];
    v163 = v240[144];
    v164 = v240[143];
    v165 = v240[140];
    v166 = v240[139];
    v167 = v240[138];
    v168 = v240[137];
    v169 = v240[136];
    v170 = v240[135];
    v171 = v240[132];
    v172 = v240[131];
    v173 = v240[130];
    v174 = v240[129];
    v175 = v240[128];
    v176 = v240[125];
    v177 = v240[124];
    v178 = v240[123];
    v179 = v240[122];
    v180 = v240[121];
    v181 = v240[118];
    v182 = v240[115];
    v183 = v240[114];
    v184 = v240[111];
    v185 = v240[110];
    v186 = v240[109];
    v187 = v240[108];
    v188 = v240[107];
    v189 = v240[104];
    v190 = v240[103];
    v191 = v240[102];
    v192 = v240[101];
    v193 = v240[100];
    v194 = v240[99];
    v195 = v240[98];
    v196 = v240[97];
    v197 = v240[96];
    v198 = v240[95];
    v199 = v240[94];
    v200 = v240[93];
    v201 = v240[92];
    v202 = v240[91];
    v203 = v240[90];
    v205 = v240[89];
    v206 = v240[86];
    v207 = v240[85];
    v208 = v240[84];
    v209 = v240[83];
    v211 = v240[82];
    v213 = v240[81];
    v215 = v240[80];
    v217 = v240[79];
    v219 = v240[78];
    v220 = v240[77];
    v222 = v240[76];
    v225 = v240[73];
    v227 = v240[72];
    v229 = v240[69];
    v230 = v240[68];
    v232 = v240[67];
    v233 = v240[66];
    v236 = v240[63];
    v239 = v240[62];

    v122 = v240[1];

    return v122(v140);
  }

  else
  {
    v124 = v0[189];
    v125 = sub_10002C958();
    v126 = sub_10002CB98();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v242 = 0;
      v243[0] = 0;
      *v127 = 0;
      v241[0] = v127 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v241, &v242, v243);
      _os_log_impl(&_mh_execute_header, v125, v126, "Querying TaskParameters for tasks.", v127, 2u);
    }

    v128 = v0[214];
    v129 = v0[203];
    v130 = v0[202];
    v131 = v0[201];
    v132 = [objc_opt_self() predicateWithValue:1];
    v246._countAndFlagsBits = 0x617261506B736154;
    v246._object = 0xEE0073726574656DLL;
    isa = sub_10002CBC8(v246, v132).super.isa;
    v0[223] = isa;
    v134 = swift_task_alloc();
    v0[224] = v134;
    *(v134 + 16) = isa;
    *(v134 + 24) = v131;
    v135 = swift_task_alloc();
    v0[225] = v135;
    *(v135 + 16) = &unk_10002DF90;
    *(v135 + 24) = v134;
    v136 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
    v137 = swift_task_alloc();
    v0[226] = v137;
    *v137 = v0;
    v137[1] = sub_100012D04;
    v138 = v0[219];
    v139 = v0[200];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 33, v129, v130, &unk_10002DF98, v135, v138);
  }
}

uint64_t sub_100012D04()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v4 = *v1;
  *(v2 + 1816) = v0;

  v5 = *(v2 + 1800);
  v6 = *(v2 + 1792);
  if (v0)
  {
    v7 = *(v2 + 1768);
    v8 = *(v2 + 1624);

    v9 = sub_1000242D8;
  }

  else
  {

    v9 = sub_100012EB8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100012EB8()
{
  v399 = v1;
  v4 = *(v1 + 1576);

  v5 = *(v1 + 264);
  v6 = v5[2];
  v4[7].isa = v6;
  v391 = v1;
  if (v6)
  {
    v7 = 0;
    v365 = *(v1 + 1016);
    v8 = v5 + 6;
    v9 = _swiftEmptyArrayStorage;
    v367 = *(v1 + 1056);
    v384 = *(v1 + 1816);
    v372 = v5;
    v378 = v6;
    while (1)
    {
      if (v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_91;
      }

      v392 = v7;
      v0 = *(v8 - 2);
      v2 = *(v8 - 1);
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v11 = *(v1 + 1512);
      sub_10002B400(*(v8 - 1), 1);
      sub_10002B400(v2, 1);
      sub_10002B400(v2, 1);
      v3 = v0;
      v4 = sub_10002C958();
      v12 = sub_10002CBB8();
      if (os_log_type_enabled(v4, v12))
      {
        v0 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v0 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v0 + 4) = v14;
        *v13 = v14;

        sub_10002B40C(v2, 1);
        sub_10002B40C(v2, 1);
        _os_log_impl(&_mh_execute_header, v4, v12, "Error: %@", v0, 0xCu);
        sub_10002B7B4(v13, &qword_1000386C8, &qword_10002DF80);
        v5 = v372;
        v1 = v391;

        sub_10002B40C(v2, 1);
      }

      else
      {

        sub_10002B40C(v2, 1);
        sub_10002B40C(v2, 1);
      }

      v21 = *(v1 + 1576);
      v22 = *(v21 + 72);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      v10 = v392;
      if (v23)
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
      }

      *(v21 + 72) = v24;
LABEL_6:
      v7 = (v10 + 1);
      v8 += 3;
      if (v6 == v7)
      {
        goto LABEL_32;
      }
    }

    v15 = *(v1 + 1008);
    v16 = *(v1 + 1000);
    sub_10002B400(*(v8 - 1), 0);
    sub_10002B400(v2, 0);
    v17 = v0;
    sub_10000391C(v2, v16);
    if ((*(v365 + 48))(v16, 1, v15) == 1)
    {
      v18 = *(v1 + 1512);
      sub_10002B7B4(*(v1 + 1000), &qword_100038660, &qword_10002DF28);
      v3 = v2;
      v4 = sub_10002C958();
      v19 = sub_10002CBB8();
      if (os_log_type_enabled(v4, v19))
      {
        v20 = swift_slowAlloc();
        v0 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v3;
        *v0 = v2;

        sub_10002B40C(v2, 0);
        _os_log_impl(&_mh_execute_header, v4, v19, "Skipping record: %@", v20, 0xCu);
        sub_10002B7B4(v0, &qword_1000386C8, &qword_10002DF80);

        v5 = v372;
        v1 = v391;

        sub_10002B40C(v2, 0);
      }

      else
      {

        sub_10002B40C(v2, 0);
        sub_10002B40C(v2, 0);
      }

      goto LABEL_4;
    }

    v25 = *(v1 + 1664);
    v3 = *(v1 + 1056);
    v26 = *(v1 + 1000);

    sub_10002B814(v26, v3, type metadata accessor for TaskParametersRecord);
    v0 = v367;
    if (sub_100008480(v367[2], v367[3], v25))
    {
      if (sub_100008480(**(v1 + 1056), v367[1], *(v1 + 1776)))
      {
        sub_100005AD8(*(v1 + 1056), *(v1 + 1048), type metadata accessor for TaskParametersRecord);
        v6 = v378;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10000B55C(0, v9[2] + 1, 1, v9, &qword_100038730, &qword_10002DFC8, type metadata accessor for TaskParametersRecord);
        }

        v0 = v9[2];
        v27 = v9[3];
        v4 = (v0 + 1);
        if (v0 >= v27 >> 1)
        {
          v9 = sub_10000B55C(v27 > 1, v0 + 1, 1, v9, &qword_100038730, &qword_10002DFC8, type metadata accessor for TaskParametersRecord);
        }

        v28 = *(v1 + 1576);
        v29 = *(v1 + 1056);
        v30 = *(v1 + 1048);
        v9[2] = v4;
        sub_10002B814(v30, v9 + ((*(v365 + 80) + 32) & ~*(v365 + 80)) + *(v365 + 72) * v0, type metadata accessor for TaskParametersRecord);
        sub_10002B40C(v2, 0);
        sub_100005B40(v29, type metadata accessor for TaskParametersRecord);
        v31 = *(v28 + 64);
        v23 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v23)
        {
          goto LABEL_98;
        }

        *(*(v1 + 1576) + 64) = v32;
        v5 = v372;
        goto LABEL_5;
      }

      v40 = *(v1 + 1512);
      v34 = sub_10002C958();
      v3 = sub_10002CBA8();
      v41 = os_log_type_enabled(v34, v3);
      v4 = *(v1 + 1056);
      if (!v41)
      {
        goto LABEL_30;
      }

      v36 = swift_slowAlloc();
      v397 = 0;
      v398[0] = 0;
      *v36 = 0;
      v396[0] = v36 + 2;
      v0 = v9;
      sub_10000B2CC(_swiftEmptyArrayStorage, v396, &v397, v398);
      v37 = v3;
      v38 = v34;
      v39 = "Skipping taskParametersRecord because associated with an unavailable taskName.";
    }

    else
    {
      v33 = *(v1 + 1512);
      v34 = sub_10002C958();
      v3 = sub_10002CBA8();
      v35 = os_log_type_enabled(v34, v3);
      v4 = *(v1 + 1056);
      if (!v35)
      {
LABEL_30:

        sub_10002B40C(v2, 0);
        sub_100005B40(v4, type metadata accessor for TaskParametersRecord);
LABEL_4:
        v6 = v378;
LABEL_5:
        v10 = v392;
        goto LABEL_6;
      }

      v36 = swift_slowAlloc();
      v397 = 0;
      v398[0] = 0;
      *v36 = 0;
      v396[0] = v36 + 2;
      v0 = v9;
      sub_10000B2CC(_swiftEmptyArrayStorage, v396, &v397, v398);
      v37 = v3;
      v38 = v34;
      v39 = "Skipping taskParametersRecord because extensionId is not recognized.";
    }

    _os_log_impl(&_mh_execute_header, v38, v37, v39, v36, 2u);

    goto LABEL_30;
  }

  v384 = *(v1 + 1816);
  v9 = _swiftEmptyArrayStorage;
LABEL_32:
  *(v1 + 1824) = v9;

  if (sub_10002CB18())
  {
    v42 = v1;
    v43 = *(v1 + 1776);
    v44 = *(v1 + 1768);
    v45 = *(v1 + 1664);
    v46 = *(v1 + 1648);
    v47 = *(v1 + 1624);
    v48 = *(v42 + 1552);
    v49 = *(v42 + 1512);

    v50 = sub_10002C958();
    v51 = sub_10002CB98();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v397 = 0;
      v398[0] = 0;
      *v52 = 0;
      v396[0] = v52 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v396, &v397, v398);
      _os_log_impl(&_mh_execute_header, v50, v51, "Task cancelled before adding tasks to mlhost.", v52, 2u);
    }

    v53 = *(v391 + 1672);
    v54 = *(v391 + 1624);
    v55 = *(v391 + 1616);
    v56 = *(v391 + 1608);
    v57 = *(v391 + 1600);
    v58 = *(v391 + 1584);
    v59 = *(v391 + 1576);
    v393 = *(v391 + 1504);
    v60 = *(v391 + 1496);
    v379 = *(v391 + 1592);
    v385 = *(v391 + 1488);
    v61 = objc_allocWithZone(sub_10002C7C8());
    v289 = sub_10002C7B8();

    sub_100007A74(v59);
    (*(v60 + 8))(v393, v385);

    v62 = *(v391 + 1504);
    v63 = *(v391 + 1480);
    v64 = *(v391 + 1472);
    v65 = *(v391 + 1464);
    v66 = *(v391 + 1456);
    v67 = *(v391 + 1448);
    v68 = *(v391 + 1440);
    v69 = *(v391 + 1432);
    v70 = *(v391 + 1424);
    v71 = *(v391 + 1416);
    v290 = *(v391 + 1392);
    v291 = *(v391 + 1384);
    v292 = *(v391 + 1360);
    v293 = *(v391 + 1352);
    v294 = *(v391 + 1344);
    v295 = *(v391 + 1336);
    v296 = *(v391 + 1328);
    v297 = *(v391 + 1304);
    v298 = *(v391 + 1280);
    v299 = *(v391 + 1272);
    v300 = *(v391 + 1264);
    v301 = *(v391 + 1256);
    v302 = *(v391 + 1248);
    v303 = *(v391 + 1240);
    v304 = *(v391 + 1232);
    v305 = *(v391 + 1208);
    v306 = *(v391 + 1200);
    v307 = *(v391 + 1192);
    v308 = *(v391 + 1184);
    v309 = *(v391 + 1176);
    v310 = *(v391 + 1168);
    v311 = *(v391 + 1160);
    v312 = *(v391 + 1152);
    v313 = *(v391 + 1144);
    v314 = *(v391 + 1120);
    v315 = *(v391 + 1112);
    v316 = *(v391 + 1104);
    v317 = *(v391 + 1096);
    v318 = *(v391 + 1088);
    v319 = *(v391 + 1080);
    v320 = *(v391 + 1056);
    v321 = *(v391 + 1048);
    v322 = *(v391 + 1040);
    v323 = *(v391 + 1032);
    v324 = *(v391 + 1024);
    v325 = *(v391 + 1000);
    v326 = *(v391 + 992);
    v327 = *(v391 + 984);
    v328 = *(v391 + 976);
    v329 = *(v391 + 968);
    v330 = *(v391 + 944);
    v331 = *(v391 + 920);
    v332 = *(v391 + 912);
    v333 = *(v391 + 888);
    v334 = *(v391 + 880);
    v335 = *(v391 + 872);
    v336 = *(v391 + 864);
    v337 = *(v391 + 856);
    v338 = *(v391 + 832);
    v339 = *(v391 + 824);
    v340 = *(v391 + 816);
    v341 = *(v391 + 808);
    v342 = *(v391 + 800);
    v343 = *(v391 + 792);
    v344 = *(v391 + 784);
    v345 = *(v391 + 776);
    v346 = *(v391 + 768);
    v347 = *(v391 + 760);
    v348 = *(v391 + 752);
    v349 = *(v391 + 744);
    v350 = *(v391 + 736);
    v351 = *(v391 + 728);
    v352 = *(v391 + 720);
    v353 = *(v391 + 712);
    v354 = *(v391 + 688);
    v355 = *(v391 + 680);
    v356 = *(v391 + 672);
    v357 = *(v391 + 664);
    v358 = *(v391 + 656);
    v359 = *(v391 + 648);
    v360 = *(v391 + 640);
    v361 = *(v391 + 632);
    v362 = *(v391 + 624);
    v363 = *(v391 + 616);
    v364 = *(v391 + 608);
    v366 = *(v391 + 584);
    v368 = *(v391 + 576);
    v370 = *(v391 + 552);
    v373 = *(v391 + 544);
    v375 = *(v391 + 536);
    v380 = *(v391 + 528);
    v386 = *(v391 + 504);
    v394 = *(v391 + 496);

    v72 = *(v391 + 8);

    return v72(v289);
  }

  v381 = v9;
  v74 = *(v1 + 1768);
  v395 = *(v1 + 1512);
  v75 = *(v1 + 968);
  v76 = *(v1 + 960);
  v77 = *(v1 + 952);
  v78 = *(v1 + 944);
  v79 = *(v1 + 936);
  v80 = *(v1 + 928);
  v81 = swift_allocObject();
  *(v1 + 1832) = v81;
  *(v81 + 16) = &_swiftEmptySetSingleton;
  v82 = swift_allocObject();
  *(v1 + 1840) = v82;
  *(v82 + 16) = &_swiftEmptySetSingleton;
  v83 = sub_10002C458();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(v1 + 1848) = sub_10002C448();
  (*(v76 + 104))(v75, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v77);
  sub_10002C428();
  (*(v79 + 104))(v78, enum case for JSONDecoder.DataDecodingStrategy.base64(_:), v80);
  sub_10002C418();
  swift_bridgeObjectRetain_n();
  v86 = sub_10002C958();
  v87 = sub_10002CB98();
  v88 = os_log_type_enabled(v86, v87);
  v89 = *(v1 + 1768);
  if (v88)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v397 = v91;
    *v90 = 134218242;
    *(v90 + 4) = *(v89 + 16);

    *(v90 + 12) = 2080;
    sub_100008968(v89, type metadata accessor for TaskRecord, type metadata accessor for TaskRecord, v398);
    v92 = sub_10002CA98();
    v94 = v93;

    v95 = sub_10000B7BC(v92, v94, &v397);

    *(v90 + 14) = v95;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v86, v87, "Processing taskRecords (count: %ld): %s", v90, 0x16u);
    sub_1000067EC(v91);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v96 = v391;
  v97 = *(*(v391 + 1768) + 16);
  *(v391 + 1856) = v97;
  v98 = v381;
  if (!v97)
  {
LABEL_78:
    *(v96 + 1896) = v98;
    v234 = *(v96 + 1832);
    v235 = *(v96 + 1512);

    v236 = sub_10002C958();
    v237 = sub_10002CB98();
    v238 = os_log_type_enabled(v236, v237);
    v239 = *(v96 + 1832);
    if (v238)
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v398[0] = v241;
      *v240 = 136315138;
      swift_beginAccess();
      v242 = *(v239 + 16);

      v243 = sub_10002CB38();
      v245 = v244;

      v246 = sub_10000B7BC(v243, v245, v398);

      *(v240 + 4) = v246;
      v96 = v391;

      _os_log_impl(&_mh_execute_header, v236, v237, "Computed addedTaskNames: %s", v240, 0xCu);
      sub_1000067EC(v241);
    }

    else
    {
    }

    v247 = *(v96 + 1840);
    v248 = *(v96 + 1512);

    v249 = sub_10002C958();
    v250 = sub_10002CB98();
    v251 = os_log_type_enabled(v249, v250);
    v252 = *(v96 + 1840);
    if (v251)
    {
      v253 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      v398[0] = v254;
      *v253 = 136315138;
      swift_beginAccess();
      v255 = *(v252 + 16);

      v256 = sub_10002CB38();
      v258 = v257;

      v259 = sub_10000B7BC(v256, v258, v398);

      *(v253 + 4) = v259;
      v96 = v391;

      _os_log_impl(&_mh_execute_header, v249, v250, "Computed removalTaskNames: %s", v253, 0xCu);
      sub_1000067EC(v254);
    }

    else
    {
    }

    v260 = *(v96 + 1520);
    *(v96 + 1904) = sub_10002C758();
    v261 = *(&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + 1);
    v262 = _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu;
    v263 = swift_task_alloc();
    *(v96 + 1912) = v263;
    *v263 = v96;
    v263[1] = sub_1000170CC;
    v264 = *(v96 + 1448);

    return ((&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + v262))(v264);
  }

  v99 = 0;
  *(v391 + 2096) = *(*(v391 + 1224) + 80);
  while (1)
  {
    *(v96 + 1864) = v99;
    v105 = *(v96 + 1768);
    if (v99 >= *(v105 + 16))
    {
      goto LABEL_97;
    }

    v106 = *(v96 + 1248);
    v107 = *(v96 + 1216);
    sub_100005AD8(v105 + ((*(v96 + 2096) + 32) & ~*(v96 + 2096)) + *(*(v96 + 1224) + 72) * v99, v106, type metadata accessor for TaskRecord);
    v108 = *(v96 + 1248);
    if (*(v106 + *(v107 + 36)) == 2)
    {
      v109 = *(v96 + 1512);
      sub_100005AD8(v108, *(v96 + 1240), type metadata accessor for TaskRecord);
      v110 = sub_10002C958();
      v111 = sub_10002CB98();
      v112 = os_log_type_enabled(v110, v111);
      v113 = *(v96 + 1240);
      if (v112)
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v398[0] = v115;
        *v114 = 136315138;
        v117 = *v113;
        v116 = v113[1];

        v118 = sub_10000B7BC(v117, v116, v398);

        *(v114 + 4) = v118;
        sub_100005B40(v113, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v110, v111, "Task %s is marked as canceled, skipping.", v114, 0xCu);
        sub_1000067EC(v115);
      }

      else
      {

        sub_100005B40(v113, type metadata accessor for TaskRecord);
      }

      v100 = *(v96 + 1840);
      v101 = *(v96 + 1248);
      v102 = *v101;
      v103 = v101[1];

      sub_10000BD64((v96 + 184), v102, v103);
      v104 = *(v96 + 192);

      sub_100005B40(v101, type metadata accessor for TaskRecord);
      goto LABEL_45;
    }

    v119 = v98;
    v120 = *(v96 + 1672);
    v121 = *(v96 + 1128);
    v122 = *(v96 + 1112);
    v123 = *(v108 + 32);
    v124 = *(v108 + 40);
    sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition);
    sub_10002C468();
    if (v384)
    {
      v125 = *(v96 + 1512);
      v126 = *(v96 + 1248);
      v127 = *(v96 + 1232);
      v128 = *(v96 + 1136);
      v129 = *(v96 + 1128);
      v130 = *(v391 + 1112);

      (*(v128 + 56))(v130, 1, 1, v129);
      v131 = v130;
      v96 = v391;
      sub_10002B7B4(v131, &qword_100038668, &qword_10002DF30);
      sub_100005AD8(v126, v127, type metadata accessor for TaskRecord);
      v132 = sub_10002C958();
      v133 = sub_10002CBB8();
      v134 = os_log_type_enabled(v132, v133);
      v135 = *(v391 + 1232);
      if (v134)
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v398[0] = v137;
        *v136 = 136315138;
        v138 = *v135;
        v139 = v135[1];

        v140 = sub_10000B7BC(v138, v139, v398);
        v96 = v391;

        *(v136 + 4) = v140;
        sub_100005B40(v135, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v132, v133, "Failed to parse TaskDefinition from config file, skipping task %s.", v136, 0xCu);
        sub_1000067EC(v137);
      }

      else
      {

        sub_100005B40(v135, type metadata accessor for TaskRecord);
      }

      v98 = v119;
      sub_100005B40(*(v96 + 1248), type metadata accessor for TaskRecord);
      v384 = 0;
      goto LABEL_45;
    }

    v141 = *(v96 + 1824);
    v142 = *(v96 + 1192);
    v143 = v96;
    v144 = *(v96 + 1136);
    v145 = v143[141];
    v146 = v143[139];
    v147 = v143[127];
    v387 = v143[126];
    v148 = v143[124];
    v149 = v143[123];
    (*(v144 + 56))(v146, 0, 1, v145);
    (*(v144 + 32))(v142, v146, v145);
    *(swift_task_alloc() + 16) = v142;
    sub_1000087D0(sub_10002B72C, v141, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v148);

    sub_10002B74C(v148, v149, &qword_100038660, &qword_10002DF28);
    if ((*(v147 + 48))(v149, 1, v387) == 1)
    {
      sub_10002B7B4(v143[123], &qword_100038660, &qword_10002DF28);
      v5 = v143;
      goto LABEL_93;
    }

    v150 = v143[231];
    v151 = v143[130];
    v152 = v143[112];
    v153 = v143[111];
    sub_10002B814(v143[123], v151, type metadata accessor for TaskParametersRecord);
    v155 = *(v151 + 32);
    v154 = *(v151 + 40);
    sub_10002B880(&qword_100038708, &qword_100038658, &qword_10002DF20);
    sub_10002C438();
    v156 = v143[115];
    v157 = v143[113];
    v158 = v143[112];
    v159 = v143[111];
    v160 = v143[110];
    v161 = v143[106];
    v162 = v143[105];
    (*(v157 + 56))(v159, 0, 1, v158);
    (*(v157 + 32))(v156, v159, v158);
    sub_10002C878();
    v163 = sub_10002C8D8();
    v164 = *(v161 + 8);
    v164(v160, v162);
    if (v163)
    {
      v165._rawValue = v163;
      if (!sub_10002C928(v165))
      {
        v192 = v391;
        v193 = *(v391 + 1512);
        (*(*(v391 + 1136) + 16))(*(v391 + 1184), *(v391 + 1192), *(v391 + 1128));
        v194 = sub_10002C958();
        v195 = sub_10002CB98();
        v196 = os_log_type_enabled(v194, v195);
        v197 = *(v391 + 1184);
        v198 = *(v391 + 1136);
        v199 = *(v391 + 1128);
        if (v196)
        {
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          v398[0] = v201;
          *v200 = 136315138;
          v202 = sub_10002C808();
          v204 = sub_10000B7BC(v202, v203, v398);

          *(v200 + 4) = v204;
          v192 = v391;

          v389 = *(v198 + 8);
          v389(v197, v199);
          _os_log_impl(&_mh_execute_header, v194, v195, "Skipping registration of task %s as it does not satisfy the targeting rules.", v200, 0xCu);
          sub_1000067EC(v201);
        }

        else
        {

          v389 = *(v198 + 8);
          v389(v197, v199);
        }

        v217 = v192[230];
        v218 = v192[156];
        v219 = v192[142];
        v377 = v192[141];
        v383 = v192[149];
        v220 = v192[130];
        v221 = *(v391 + 992);
        v222 = *(v391 + 920);
        v223 = *(v391 + 904);
        v224 = *(v391 + 896);
        v226 = *v218;
        v225 = v218[1];

        sub_10000BD64((v391 + 216), v226, v225);
        v227 = *(v391 + 224);
        goto LABEL_76;
      }
    }

    v5 = v391;
    v166 = *(v391 + 920);
    v167 = *(v391 + 896);
    v168 = *(v391 + 872);
    v169 = *(v391 + 840);
    sub_10002C878();
    v170 = sub_10002C8E8();
    v164(v168, v169);
    if (!v170)
    {
      goto LABEL_63;
    }

    v171._rawValue = v170;
    if (sub_10002C938(v171))
    {
      break;
    }

    v205 = *(v391 + 1512);
    (*(*(v391 + 1136) + 16))(*(v391 + 1176), *(v391 + 1192), *(v391 + 1128));
    v206 = sub_10002C958();
    v207 = sub_10002CB98();
    v208 = os_log_type_enabled(v206, v207);
    v209 = *(v391 + 1176);
    v210 = *(v391 + 1136);
    v211 = *(v391 + 1128);
    if (v208)
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v398[0] = v213;
      *v212 = 136315138;
      v214 = sub_10002C808();
      v216 = sub_10000B7BC(v214, v215, v398);
      v5 = v391;

      *(v212 + 4) = v216;

      v389 = *(v210 + 8);
      v389(v209, v211);
      _os_log_impl(&_mh_execute_header, v206, v207, "Skipping registration of task %s as it does not satisfy the os eligibility rules.", v212, 0xCu);
      sub_1000067EC(v213);
    }

    else
    {

      v389 = *(v210 + 8);
      v389(v209, v211);
    }

    v228 = v5[230];
    v218 = v5[156];
    v229 = v5[142];
    v377 = v5[141];
    v383 = v5[149];
    v220 = v5[130];
    v221 = *(v391 + 992);
    v222 = *(v391 + 920);
    v223 = *(v391 + 904);
    v224 = *(v391 + 896);
    v231 = *v218;
    v230 = v218[1];

    sub_10000BD64((v391 + 232), v231, v230);
    v232 = *(v391 + 240);
LABEL_76:

    (*(v223 + 8))(v222, v224);
    v233 = v221;
    v96 = v391;
    sub_10002B7B4(v233, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v220, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v218, type metadata accessor for TaskRecord);
    v389(v383, v377);
LABEL_77:
    v384 = 0;
    v98 = *(v96 + 1824);
LABEL_45:
    v99 = *(v96 + 1864) + 1;
    if (v99 == *(v96 + 1856))
    {
      goto LABEL_78;
    }
  }

LABEL_63:
  v172 = *(v391 + 920);
  v173 = *(v391 + 896);
  v174 = *(v391 + 864);
  v175 = *(v391 + 840);
  sub_10002C878();
  v176 = sub_10002C8F8();
  v164(v174, v175);
  if (v176 != 2 && (v176 & 1) != 0)
  {
    v177 = *(v391 + 1512);
    v178 = sub_10002C958();
    v179 = sub_10002CB98();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 67109376;
      *(v180 + 4) = 1;
      *(v180 + 8) = 1024;
      *(v180 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v178, v179, "Skipping registration of task because betaOnly is %{BOOL}d and isSeedDevice is %{BOOL}d", v180, 0xEu);
    }

    v181 = *(v391 + 1840);
    v182 = *(v391 + 1248);
    v183 = *(v391 + 1136);
    v382 = *(v391 + 1128);
    v388 = *(v391 + 1192);
    v376 = *(v391 + 1040);
    v184 = *(v391 + 992);
    v185 = *(v391 + 920);
    v186 = *(v391 + 904);
    v187 = *(v391 + 896);

    v189 = *v182;
    v188 = v182[1];

    sub_10000BD64((v391 + 248), v189, v188);
    v190 = *(v391 + 256);

    (*(v186 + 8))(v185, v187);
    v191 = v184;
    v96 = v391;
    sub_10002B7B4(v191, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v376, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v182, type metadata accessor for TaskRecord);
    (*(v183 + 8))(v388, v382);
    goto LABEL_77;
  }

  v265 = *(v391 + 1512);
  v266 = *(v391 + 920);
  v267 = *(v391 + 912);
  v268 = *(v391 + 904);
  v269 = *(v391 + 896);
  (*(*(v391 + 1136) + 16))(*(v391 + 1168), *(v391 + 1192), *(v391 + 1128));
  (*(v268 + 16))(v267, v266, v269);
  v2 = sub_10002C958();
  v390 = sub_10002CBA8();
  v270 = os_log_type_enabled(v2, v390);
  v4 = *(v391 + 1168);
  v8 = *(v391 + 1136);
  v9 = *(v391 + 1128);
  v3 = *(v391 + 920);
  v392 = *(v391 + 912);
  v0 = *(v391 + 904);
  v6 = *(v391 + 896);
  if (!v270)
  {
LABEL_91:
    (v8[1])(v4, v9);
    v280 = *(v0 + 8);
    v280(v392, v6);

    v281 = v3;
    v282 = v6;
    goto LABEL_92;
  }

  v369 = *(v391 + 896);
  v271 = *(v391 + 856);
  v371 = *(v391 + 840);
  v272 = swift_slowAlloc();
  v398[0] = swift_slowAlloc();
  *v272 = 136315394;
  v273 = sub_10002C808();
  v374 = v2;
  v275 = sub_10000B7BC(v273, v274, v398);

  *(v272 + 4) = v275;
  (v8[1])(v4, v9);
  *(v272 + 12) = 2080;
  sub_10002C878();
  sub_10002B3B8(&qword_100038710, &type metadata accessor for MLHostSystemParameters);
  v276 = sub_10002CD38();
  v278 = v277;
  v164(v271, v371);
  v279 = sub_10000B7BC(v276, v278, v398);

  *(v272 + 14) = v279;
  v280 = *(v0 + 8);
  v280(v392, v369);
  _os_log_impl(&_mh_execute_header, v374, v390, "Parsed TaskParameters successfully for task %s: %s", v272, 0x16u);
  swift_arrayDestroy();

  v5 = v391;

  v281 = v3;
  v282 = v369;
LABEL_92:
  v280(v281, v282);
  sub_100005B40(v5[130], type metadata accessor for TaskParametersRecord);
LABEL_93:
  v283 = v5[190];
  v5[234] = sub_10002C758();
  v284 = *(&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + 1);
  v285 = _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu;
  v286 = swift_task_alloc();
  v5[235] = v286;
  *v286 = v5;
  v286[1] = sub_100015478;
  v287 = v5[182];
  v288 = v5[149];

  return ((&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + v285))(v288, v287);
}