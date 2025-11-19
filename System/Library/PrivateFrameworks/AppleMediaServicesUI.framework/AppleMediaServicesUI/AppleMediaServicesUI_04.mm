uint64_t sub_1000649DC(unsigned __int8 *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  result = sub_100064D5C(v9);
  if (result)
  {
    v19 = a3;
    v20[5] = v3;
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = *(type metadata accessor for LogInterpolation() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v14 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._object = 0x80000001001F44F0;
    v15._countAndFlagsBits = 0xD000000000000027;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v20[3] = type metadata accessor for ScheduleInfo.Metadata(0);
    v16 = sub_100017E64(v20);
    sub_100065290(a1, v16, type metadata accessor for ScheduleInfo.Metadata);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v20, &qword_10026D350, &qword_1001E6050);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    LogInterpolation.init(stringInterpolation:)();
    v18 = static os_log_type_t.default.getter();
    sub_1000036B0(v18);

    sub_100003CA8(a2, a2[3]);
    sub_100003CA8(v19, v19[3]);
    return sub_10009CC24(a1);
  }

  return result;
}

uint64_t sub_100064C90(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(type metadata accessor for ScheduleInfo.Metadata(0) - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void sub_100064E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004988();
  a21 = v23;
  a22 = v24;
  v25 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v25);
  v27 = *(v26 + 64);
  sub_100004E78();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  v31 = type metadata accessor for Date();
  v32 = sub_100002CC4(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_100002DEC();
  v39 = v38 - v37;
  v40 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_10003AF98(v22 + v40[8], v30, &unk_100271EA0, &qword_1001E77F0);
  v41 = sub_100005FE8();
  if (sub_100009F34(v41, v42, v31) == 1)
  {
    (*(v34 + 16))(v39, v22 + v40[6], v31);
    v43 = sub_100005FE8();
    if (sub_100009F34(v43, v44, v31) != 1)
    {
      sub_10000A00C(v30, &unk_100271EA0, &qword_1001E77F0);
    }
  }

  else
  {
    (*(v34 + 32))(v39, v30, v31);
  }

  v45 = *(v22 + v40[10]);
  sub_100065054();
  Date.addingTimeInterval(_:)();
  (*(v34 + 8))(v39, v31);
  sub_10000B16C();
}

uint64_t sub_100065054()
{
  v1 = type metadata accessor for Date();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = type metadata accessor for TimeZone();
  v11 = sub_100002CC4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v16 = sub_10000B0C0();
  result = type metadata accessor for ScheduleInfo.Metadata(v16);
  if (*(v0 + *(result + 36)) == 1)
  {
    v18 = result;
    static TimeZone.current.getter();
    Date.init()();
    v19 = TimeZone.secondsFromGMT(for:)();
    v20 = *(v4 + 8);
    v20(v9, v1);
    (*(v13 + 8))(v0, v10);
    v21 = *(v18 + 48);
    Date.init()();
    v22 = TimeZone.secondsFromGMT(for:)();
    result = (v20)(v9, v1);
    if (__OFSUB__(v19, v22))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100065204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006524C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100065290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002DDC(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000652F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002DDC(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_100065418(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = type metadata accessor for TimeZone();
  v4 = sub_100002CC4(v104);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v103 = v10 - v9;
  v11 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v12 = sub_100003D10(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_1000056E8();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v91 - v19;
  v21 = type metadata accessor for Date();
  v22 = sub_100002CC4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_1000056E8();
  v107 = v27 - v28;
  sub_100003F08();
  __chkstk_darwin(v29);
  sub_10000714C();
  v101 = v30;
  sub_100003F08();
  __chkstk_darwin(v31);
  sub_10000714C();
  v102 = v32;
  sub_100003F08();
  __chkstk_darwin(v33);
  sub_10000714C();
  v108 = v34;
  sub_100003F08();
  __chkstk_darwin(v35);
  v106 = &v91 - v36;
  v37 = type metadata accessor for ScheduleInfo.Metadata(0);
  v38 = sub_100002CC4(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_1000056E8();
  v43 = v41 - v42;
  __chkstk_darwin(v44);
  v47 = &v91 - v46;
  v105 = *(a1 + 16);
  if (!v105)
  {
    sub_10000B16C();

    sub_10000A7C0(v86, v87, v88, v89);
    return;
  }

  v92 = a2;
  v48 = *(v45 + 80);
  sub_100004864();
  sub_100004F70();
  v99 = v49;
  v100 = v50;
  sub_100065290(v49, v47, v51);
  v97 = (v24 + 16);
  v98 = (v24 + 32);
  v109 = (v24 + 8);
  v95 = v20;
  v96 = v6 + 8;
  v52 = 1;
  v93 = v17;
  v94 = v37;
  v53 = v47;
  while (1)
  {
    if (v105 == v52)
    {
      sub_100006A1C();
      v84 = v92;
      sub_100065360(v53, v92, v85);
      sub_10000A7C0(v84, 0, 1, v37);
      sub_10000B16C();
      return;
    }

    v54 = *(v100 + 72);
    sub_100004F70();
    sub_100065290(v55, v43, v56);
    sub_1000652F0(v43 + v37[8], v20);
    sub_100012B68(v20);
    if (v57)
    {
      (*v97)(v108, v43 + v37[6], v21);
      sub_100012B68(v20);
      if (!v57)
      {
        sub_10000A00C(v20, &unk_100271EA0, &qword_1001E77F0);
      }
    }

    else
    {
      (*v98)(v108, v20, v21);
    }

    v58 = v37[9];
    sub_10000B2FC(v37[10]);
    if (v57)
    {
      break;
    }

LABEL_12:
    v67 = v108;
    Date.addingTimeInterval(_:)();
    v68 = *v109;
    (*v109)(v67, v21);
    sub_1000652F0(v53 + v37[8], v17);
    sub_100012B68(v17);
    if (v57)
    {
      (*v97)(v107, v53 + v37[6], v21);
      sub_100012B68(v17);
      if (!v57)
      {
        sub_10000A00C(v17, &unk_100271EA0, &qword_1001E77F0);
      }
    }

    else
    {
      (*v98)(v107, v17, v21);
    }

    v69 = *(v53 + v37[10]);
    if (*(v53 + v37[9]) == 1)
    {
      static TimeZone.current.getter();
      Date.init()();
      v70 = TimeZone.secondsFromGMT(for:)();
      v71 = sub_100007158();
      v68(v71);
      v72 = sub_10000A5CC();
      v73(v72);
      v74 = v37[12];
      Date.init()();
      v75 = TimeZone.secondsFromGMT(for:)();
      v76 = sub_100007158();
      v68(v76);
      if (__OFSUB__(v70, v75))
      {
        goto LABEL_28;
      }

      v17 = v93;
    }

    v77 = v52;
    v78 = v53;
    v79 = v17;
    v80 = v101;
    v81 = v107;
    Date.addingTimeInterval(_:)();
    (v68)(v81, v21);
    v82 = v106;
    LOBYTE(v81) = static Date.< infix(_:_:)();
    (v68)(v80, v21);
    (v68)(v82, v21);
    if (v81)
    {
      v53 = v78;
      sub_100067514(v78, type metadata accessor for ScheduleInfo.Metadata);
      sub_100065360(v43, v78, type metadata accessor for ScheduleInfo.Metadata);
      v20 = v95;
    }

    else
    {
      sub_100005704();
      sub_100067514(v43, v83);
      v20 = v95;
      v53 = v78;
    }

    v52 = v77 + 1;
    v17 = v79;
    v37 = v94;
  }

  static TimeZone.current.getter();
  Date.init()();
  v59 = TimeZone.secondsFromGMT(for:)();
  v60 = *v109;
  v61 = sub_100007158();
  v60(v61);
  v62 = sub_10000A5CC();
  v63(v62);
  v64 = v37[12];
  Date.init()();
  v65 = TimeZone.secondsFromGMT(for:)();
  v66 = sub_100007158();
  v60(v66);
  if (!__OFSUB__(v59, v65))
  {
    v17 = v93;
    goto LABEL_12;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_100065AC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  sub_100005C6C(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = a4[6];
  }

  else
  {
    v11 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    result = sub_100005C6C(v11);
    if (*(v13 + 84) == a3)
    {
      v10 = a4[8];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[11] + 8) = (a2 - 1);
        return result;
      }

      type metadata accessor for TimeZone();
      v10 = a4[12];
    }
  }

  v14 = sub_10000A64C(v10);

  return sub_10000A7C0(v14, v15, a2, v16);
}

uint64_t sub_100065BEC(uint64_t a1, int a2, int *a3)
{
  v6 = type metadata accessor for Date();
  sub_100005C6C(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[6];
  }

  else
  {
    v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    sub_100005C6C(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[8];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return sub_10000321C(*(a1 + a3[11] + 8));
      }

      type metadata accessor for TimeZone();
      v8 = a3[12];
    }
  }

  v12 = sub_10000A64C(v8);

  return sub_100009F34(v12, v13, v14);
}

uint64_t sub_100065CF8(unsigned __int8 *a1, uint64_t a2)
{
  result = type metadata accessor for ScheduleInfo.Metadata(0);
  v5 = *(result + 44);
  v6 = *&a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      sub_100066958(*a1, v6, v7);
      sub_1001CF380();
    }
  }

  return result;
}

void sub_100066318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004988();
  a21 = v24;
  a22 = v25;
  v26 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v26);
  v28 = *(v27 + 64);
  sub_100004E78();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  v32 = type metadata accessor for Date();
  v33 = sub_100002CC4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_1000056E8();
  v40 = v38 - v39;
  v42 = __chkstk_darwin(v41);
  v44 = &a9 - v43;
  __chkstk_darwin(v42);
  v45 = sub_1000182A4();
  sub_10003AF98(v22 + *(v45 + 32), v31, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v31, 1, v32) == 1)
  {
    sub_10000A00C(v31, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    (*(v35 + 32))(v23, v31, v32);
    if (*(v22 + *(v45 + 36)) == 1)
    {
      sub_100065054();
      Date.addingTimeInterval(_:)();
    }

    else
    {
      (*(v35 + 16))(v44, v23, v32);
    }

    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v46 = *(v35 + 8);
    v46(v40, v32);
    v46(v44, v32);
    v46(v23, v32);
  }

  sub_10000B16C();
}

uint64_t sub_10006655C(char *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v10 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001001F4550;
  v11._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v12 = type metadata accessor for ScheduleInfo.Metadata(0);
  v29 = v12;
  v13 = sub_100017E64(v28);
  sub_100065290(a1, v13, type metadata accessor for ScheduleInfo.Metadata);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v28, &qword_10026D350, &qword_1001E6050);
  v14._countAndFlagsBits = 0x7974206874697720;
  v14._object = 0xEC000000203A6570;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v29 = &unk_100254498;
  LOBYTE(v28[0]) = a2 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v28, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  v17 = &a1[*(v12 + 44)];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = *a1;
  sub_100066958(*a1, *v17, v19);

  sub_100066A8C(v28);
  sub_1000262E4(a3, v27);
  sub_1000262E4(a4, v26);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  sub_10003B104(v27, v21 + 32);
  *(v21 + 72) = v20;
  sub_10003B104(v26, v21 + 80);
  if (a2)
  {
    sub_1001CF924();
  }

  else
  {
    sub_100066B48();
  }
}

uint64_t sub_100066910()
{
  v1 = v0[3];

  sub_100002C00(v0 + 4);
  sub_100002C00(v0 + 10);

  return _swift_deallocObject(v0, 120, 7);
}

void sub_100066A8C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScheduleInfo.Metadata(0);
  v4 = v3[13];
  v5 = *(v1 + v4);
  v14 = sub_10002F8B8(*(v1 + v4));
  if (v5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  sub_100066318(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
  v16 = *(v1 + v3[7]);
  v17 = *(v1 + v3[10]);
  *a1 = *(v1 + 1);
  *(a1 + 1) = v16;
  *(a1 + 8) = v19;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 57) = v15;
  *(a1 + 58) = 1;
}

void sub_100066B48()
{
  sub_100003D74();
  v25 = v2;
  v26 = v3;
  v5 = v4;
  v6 = sub_100007E0C();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100005478();
  if (qword_100268740 != -1)
  {
    sub_1000070EC();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v15 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v16._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  sub_1000086C4(&type metadata for String);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v27);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18);

  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v0;
  *(v19 + 32) = v25;
  *(v19 + 40) = v26;
  v20 = v5[1];
  *(v19 + 48) = *v5;
  *(v19 + 64) = v20;
  *(v19 + 80) = v5[2];
  *(v19 + 92) = *(v5 + 44);

  v21 = sub_100006710();
  sub_100066DC8(v21, v22, v23, v24, v19);

  sub_100005F14();
}

void sub_100066DC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v13[4] = sub_1001D0790;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10017F158;
  v13[3] = &unk_100254338;
  v11 = _Block_copy(v13);

  v12 = String.utf8CString.getter();
  xpc_activity_register((v12 + 32), a3, v11);

  _Block_release(v11);
}

uint64_t sub_100066F08(unsigned __int8 *a1, char a2)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v27 = &type metadata for EngagementScheduleRunner;
  v28 = &off_100249BF8;
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = *(type metadata accessor for LogInterpolation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001001F44B0;
  v8._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  v9 = type metadata accessor for ScheduleInfo.Metadata(0);
  v24 = v9;
  v10 = sub_100017E64(&v23);
  sub_100065290(a1, v10, type metadata accessor for ScheduleInfo.Metadata);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v23, &qword_10026D350, &qword_1001E6050);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  LogInterpolation.init(stringInterpolation:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  if (sub_100064D5C(v13))
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v14 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0xD000000000000027;
    v15._object = 0x80000001001F44F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v24 = v9;
    v16 = sub_100017E64(&v23);
    sub_100065290(a1, v16, type metadata accessor for ScheduleInfo.Metadata);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v23, &qword_10026D350, &qword_1001E6050);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    LogInterpolation.init(stringInterpolation:)();
    v18 = static os_log_type_t.default.getter();
    sub_1000036B0(v18);

    sub_100003CA8(v26, v27);
    sub_10009CC24(a1);
  }

  else
  {
    v24 = &type metadata for ScheduleDatabase;
    v25 = &off_100251628;
    v22[3] = &type metadata for EngagementScheduleRunner;
    v22[4] = &off_100249BF8;
    sub_10006655C(a1, a2 & 1, &v23, v22);
    sub_100002C00(v22);
    sub_100002C00(&v23);
  }

  return sub_100002C00(v26);
}

uint64_t sub_100067514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10006756C(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  v2 = [objc_opt_self() standardUserDefaults];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v4 = sub_100004AFC();
  [v2 setValue:isa forKey:v4];

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t sub_100067824(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100077CB4(a1);
}

Swift::Int sub_100067840()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_100077D70();
}

uint64_t sub_100067898(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1000678BC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

NSString sub_1000679B0@<X0>(void *a1@<X8>)
{
  result = sub_10007ADA4();
  *a1 = result;
  return result;
}

uint64_t sub_1000679F4(uint64_t *a1)
{
  v1 = *a1;
  sub_100067918();
  return sub_10000A588(v2, v3);
}

uint64_t sub_100067A2C(uint64_t *a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_100067888(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100067A54(uint64_t *a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_100067890(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100067ADC(uint64_t *a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_1000678E4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100067B38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10007AB38() & 1;
}

uint64_t sub_100067B78()
{
  v1 = sub_100007E28();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void *sub_100067BA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100067D7C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067DC0()
{
  sub_100004AA0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100067E54()
{
  v1 = (type metadata accessor for MediaCatalogSyncScheduleModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + v3 + 16);

  v8 = v1[7];
  v9 = type metadata accessor for Date();
  sub_100002DDC(v9);
  (*(v10 + 8))(v0 + v3 + v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100067F44()
{
  v1 = type metadata accessor for Date();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  v11 = *(v0 + 6);

  v12 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10006801C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[9];

  sub_10000B2F0();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100068068()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000680A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  sub_10000B2F0();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_1000680F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068134()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068234()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006833C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100068384()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000683B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068464()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[8];

  v4 = v0[9];

  return _swift_deallocObject(v0, 81, 7);
}

BOOL sub_10006856C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100068598()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000685D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068618()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068690()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006879C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000687D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006881C()
{
  _Block_release(*(v0 + 16));

  sub_100002FB8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000688DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_100009F34(v9, a2, v8);
  }
}

void *sub_100068964(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100068A4C()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100068A80()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100068AD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068B10()
{
  v1 = v0[3];

  if (v0[5])
  {
    v2 = v0[6];
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100068BCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068C04()
{
  v1 = sub_10007B9A4(&qword_10026B880, &qword_1001E8FD0);
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100068D34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100002C00(v0 + 4);
  v2 = v0[9];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100068D84()
{
  v1 = type metadata accessor for URL();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100068E3C()
{
  v1 = type metadata accessor for URL();
  sub_1000047A4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100068ED0()
{
  v1 = type metadata accessor for URL();
  sub_1000047A4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006905C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaCatalogSyncPageMetadata();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006910C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MediaCatalogSyncPageMetadata();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000691B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100069268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

char *sub_10006933C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

uint64_t sub_10006935C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_1000693E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100069514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000695C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_100069648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_100069818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
  v5 = sub_100009F34(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000698EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);

  return sub_10000A7C0(a1, v5, a3, v6);
}

uint64_t sub_1000699CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100069954();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a3 + 40);
    }

    return sub_100009F34(a1 + v10, a2, v9);
  }
}

uint64_t sub_100069B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a4 + 40);
    }

    return sub_10000A7C0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_100069C48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

uint64_t sub_100069CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100069F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EE79C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100069FBC()
{
  v1 = *(v0 + 32);

  v2 = sub_100008FD8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006A008()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 112);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10006A0C8()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100008FD8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10006A28C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006A2E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A334()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  sub_100004C9C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006A3D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A408()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  sub_100004C9C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006A454()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100002C00(v0 + 3);
  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10006A4AC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006A51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_100009F34(a1, a2, v4);
}

uint64_t sub_10006A564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_10000A7C0(a1, a2, a2, v4);
}

uint64_t sub_10006A5B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = type metadata accessor for URL();
    v10 = a1 + *(a3 + 20);

    return sub_100009F34(v10, a2, v9);
  }
}

uint64_t sub_10006A6EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006A78C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10006A7EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006A85C()
{
  swift_unknownObjectWeakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006A890()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10006A8F0()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006A980()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006A9B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006AA24()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006AAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000321C(*(a1 + 8));
  }

  v7 = type metadata accessor for JSContent.Request(0);
  v8 = a1 + *(a3 + 24);

  return sub_100009F34(v8, a2, v7);
}

uint64_t sub_10006AB68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JSContent.Request(0);
    v8 = v5 + *(a4 + 24);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_10000321C(*(a1 + *(a3 + 20)));
  }

  return sub_100009F34(a1, a2, v6);
}

uint64_t sub_10006ACB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003EFC();
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006AD8C()
{
  v3 = type metadata accessor for Date();
  sub_100002EF0(v3);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_100008004();

  v8 = *(v0 + 32);

  sub_100002C00((v0 + 40));
  v9 = *(v0 + 80);

  v10 = sub_100008428();
  v11(v10);

  v12 = *(v0 + v2 + 8);

  v13 = sub_100012C90();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_10006AE6C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006AEA4()
{
  v1 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006AEE8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006AF28()
{
  v3 = type metadata accessor for Date();
  sub_100002EF0(v3);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_100008004();
  v8 = v0[3];

  v9 = v0[5];

  sub_100002C00(v0 + 6);
  v10 = sub_100008428();
  v11(v10);

  v12 = *(v0 + v2 + 8);

  v13 = sub_100012C90();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_10006B000()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B038()
{
  v1 = (type metadata accessor for JSExtension.RequestOptions() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];

  v6 = v0[4];

  v7 = v0[6];

  sub_100002C00(v0 + 7);
  v8 = v0 + v1[7];
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002DDC(v9);
  (*(v10 + 8))(&v8[v3]);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10006B13C()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002EF0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = sub_100008428();
  v8(v7);
  v9 = sub_100012C90();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_10006B1E4()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002EF0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = sub_100008428();
  v9(v8);
  v10 = sub_100012C90();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10006B294()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002DDC(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006B31C()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002DDC(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  sub_100002C00((v0 + v1));

  return _swift_deallocObject(v0, v1 + 32, v5 | 7);
}

uint64_t sub_10006B3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_100009F34(a1 + v5, a2, v6);
}

uint64_t sub_10006B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for DispatchQoS.QoSClass();

  return sub_10000A7C0(a1 + v6, a2, a2, v7);
}

uint64_t sub_10006B460()
{
  sub_100004AA0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10006B498()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1000083D8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006B4CC()
{
  swift_unknownObjectWeakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006B500()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006B548()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);

  v10 = *(v1 + 32);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v8 + 8, v5 | 7);
}

uint64_t sub_10006B610()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);

  v10 = *(v1 + 32);

  (*(v4 + 8))(v1 + v6, v0);
  v11 = *(v1 + v8);

  return _swift_deallocObject(v1, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_10006B6F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1000083D8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006B734()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = *(v7 + 64);
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v5 + v9 + 8) & ~v5;
  v11 = *(v1 + 2);
  swift_unknownObjectRelease();
  v12 = *(v1 + 4);

  v13 = *(v1 + 6);

  v14 = *(v4 + 8);
  v14(&v1[v6], v0);

  v14(&v1[v10], v0);

  return _swift_deallocObject(v1, v10 + v8, v5 | 7);
}

uint64_t sub_10006B8A0()
{
  v1 = *(v0 + 16);

  sub_1000083D8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006B8E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B91C()
{
  v3 = type metadata accessor for JSCallable();
  sub_100002CC4(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  sub_100007B08();
  v9 = *(v0 + 16);

  v10 = *(v5 + 8);
  v10(v0 + ((v6 + 24) & ~v6), v3);
  v10(v0 + v1, v3);

  return _swift_deallocObject(v0, v2 + 8, v6 | 7);
}

uint64_t sub_10006B9F4()
{
  v3 = type metadata accessor for JSCallable();
  sub_100002CC4(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  sub_100007B08();

  v9 = *(v5 + 8);
  v9(v0 + ((v6 + 24) & ~v6), v3);
  v9(v0 + v1, v3);

  return _swift_deallocObject(v0, v2 + 8, v6 | 7);
}

uint64_t sub_10006BAD0()
{
  v1 = *(v0 + 32);

  sub_100007600();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006BB20()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10006BBB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006BC04()
{
  v1 = *(v0 + 24);

  sub_1000083D8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006BC68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BCA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006BCE0()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006BD80()
{
  v1 = type metadata accessor for Bag();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();

  v13 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v1);
  v14 = *(v0 + v7 + 8);

  sub_100002C00((v0 + v8));

  v15 = *(v0 + v10 + 8);

  v16 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v4 | 7);
}

uint64_t sub_10006BEBC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10006BF3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BF74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BFAC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006BFF8()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006C07C()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006C104()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  sub_100004C9C();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006C150()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C188()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_100004C9C();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006C1DC()
{
  v1 = type metadata accessor for JSCallable();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 40);

  v9 = *(v0 + 64);

  v10 = *(v0 + 80);

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v11(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_10006C2F0()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006C374()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 9, v5 | 7);
}

uint64_t sub_10006C3F8()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002EF0(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_100007628();
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = sub_100008428();
  v9(v8);
  v10 = sub_100007B40();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10006C4A8()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002EF0(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_100007628();
  v6 = v0[3];

  v7 = v0[6];

  v8 = v0[7];

  v9 = sub_100008428();
  v10(v9);
  v11 = sub_100007B40();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_10006C598()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002EF0(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_100007628();
  v6 = v0[3];

  v7 = v0[5];

  v8 = v0[7];

  v9 = sub_100008428();
  v10(v9);
  v11 = sub_100007B40();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_10006C650()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1 + 8);

  return _swift_deallocObject(v0, v1 + 16, v5 | 7);
}

uint64_t sub_10006C6D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006C718()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006C79C()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006C838()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006C878()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C8B0()
{
  v20 = type metadata accessor for JSCallable();
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v4 + ((v2 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2)) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v0 + 32);

  v12 = *(v1 + 8);
  v12(v0 + v3, v20);

  v13 = *(v0 + v6 + 8);

  v14 = *(v0 + v7 + 8);

  v15 = *(v0 + v8 + 8);

  v16 = *(v0 + v9 + 8);

  v17 = *(v0 + v21);

  v18 = *(v0 + v22 + 8);

  v12(v0 + ((v2 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2), v20);

  return _swift_deallocObject(v0, v23 + 8, v2 | 7);
}

uint64_t sub_10006CA6C()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006CAFC()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006CB7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CBE8()
{
  v1 = type metadata accessor for JSCallable();
  sub_1000047A4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006CC78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CCB0()
{
  v2 = sub_10007B9A4(&qword_10026DFB0, &qword_1001ED6E0);
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 64) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = *(v1 + 40);

  v11 = *(v1 + 56);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_10006CD88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006CDC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006CE00()
{
  v2 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 72) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = *(v1 + 40);

  v11 = *(v1 + 48);

  v12 = *(v1 + 64);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_10006CEF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CF28()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006CF70()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10006CFF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D028()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006D070()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006D0F4()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006D188()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_100007600();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006D1D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = sub_100005C6C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_100009F34(v10, a2, v9);
  }

  v11 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v12 = sub_100005C6C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 48));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10006D330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = sub_100005C6C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
    result = sub_100005C6C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_10000A7C0(v12, a2, a2, v11);
}

uint64_t sub_10006D49C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10006D4E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D520()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006D5A4()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002D30(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = sub_10000327C();
  v8(v7);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

uint64_t sub_10006D630()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D668()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D6A4()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002D30(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006D724()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006D7A0()
{
  sub_100007A3C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10006D848()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D884()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);

  v10 = *(v1 + 32);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v8 + 8, v5 | 7);
}

uint64_t sub_10006D9CC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006DA4C()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006DB34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    updated = type metadata accessor for MercuryCacheUpdateInput();
    if (*(*(updated - 8) + 84) == a2)
    {
      v9 = updated;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a3 + 36);
    }

    return sub_100009F34(a1 + v10, a2, v9);
  }
}

void *sub_10006DC00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    updated = type metadata accessor for MercuryCacheUpdateInput();
    if (*(*(updated - 8) + 84) == a3)
    {
      v9 = updated;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for Date();
      v10 = *(a4 + 36);
    }

    return sub_10000A7C0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_10006DCDC()
{
  sub_100004E28();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Date();

  return sub_100009F34(v1 + v3, v0, v4);
}

uint64_t sub_10006DD2C()
{
  sub_100004E28();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Date();

  return sub_10000A7C0(v1 + v3, v0, v0, v4);
}

uint64_t sub_10006DD80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000B26C();
  }

  type metadata accessor for Date();
  v5 = sub_10000A64C(*(a3 + 20));

  return sub_100009F34(v5, v6, v7);
}

void sub_10006DDF4()
{
  sub_100004E28();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_10000A64C(*(v4 + 20));

    sub_10000A7C0(v5, v6, v0, v7);
  }
}

uint64_t sub_10006DE94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000B26C();
  }

  if (*(*(type metadata accessor for Date() - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
    v5 = *(a3 + 28);
  }

  v6 = sub_10000A64C(v5);

  return sub_100009F34(v6, v7, v8);
}

void sub_10006DF58()
{
  sub_100004E28();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    if (*(*(type metadata accessor for Date() - 8) + 84) == v2)
    {
      v5 = *(v4 + 20);
    }

    else
    {
      sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
      v5 = *(v4 + 28);
    }

    v6 = sub_10000A64C(v5);

    sub_10000A7C0(v6, v7, v0, v8);
  }
}

uint64_t sub_10006E024()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10006E074()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10006E0BC()
{
  v1 = v0[3];

  sub_100002C00(v0 + 4);
  v2 = v0[9];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10006E10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_10000321C(*(a1 + *(a3 + 24) + 8));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return sub_100009F34(v8, a2, v7);
}

uint64_t sub_10006E1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10000A7C0(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006E26C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 32);

    return sub_100009F34(v9, a2, v8);
  }
}

void *sub_10006E2F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006E374()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 24));
  sub_100007600();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006E3B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10006E3F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100009F34(v9, a2, v8);
  }
}

void *sub_10006E480(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_10000A7C0(v8, a2, a2, v7);
  }

  return result;
}

unint64_t *sub_10006E500(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100169544(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_10006E588()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 32));
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_100002C00((v0 + 112));
  sub_10016BA80(*(v0 + 152), *(v0 + 160), *(v0 + 168));

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_10006E61C()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E654()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_100007A3C();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006E698()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006E6CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = sub_10000B284();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006E714()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006E74C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = sub_10000B284();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006E794()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = sub_10000B284();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006E804()
{
  v1 = *(v0 + 16);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006E838()
{
  v1 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006E888()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006E938()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006E978()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E9B4()
{
  swift_weakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006E9E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EA50()
{
  v1 = type metadata accessor for URL();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 176) & ~v4;
  v7 = *(v6 + 64);
  sub_10000557C();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10006EB68()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006EBB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EC58()
{
  sub_100002C00((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10006ECA0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006ED18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006ED58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006EE00(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000321C(*a1);
  }

  type metadata accessor for ScheduleInfo.Metadata(0);
  v5 = sub_10000A64C(*(a3 + 20));

  return sub_100009F34(v5, v6, v7);
}

void *sub_10006EE78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for ScheduleInfo.Metadata(0);
    v6 = sub_10000A64C(*(a4 + 20));

    return sub_10000A7C0(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_10006EEF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006EF4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10006EFD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F00C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006F0BC()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100005254();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10006F0EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = sub_100008FD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006F12C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = sub_100016440();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006F174()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  sub_10005E280();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006F1D0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  sub_10005E280();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006F22C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 80);

  v5 = sub_10005AE40();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006F280()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  sub_100018124();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006F2D4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_10006F2E8(a1, a2);
  }

  return a1;
}

uint64_t sub_10006F2E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10006F2FC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10006F35C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  sub_100018124();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006F3B4()
{
  v1 = *(v0 + 24);

  v2 = sub_1000074E4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006F3E4()
{
  v1 = *(v0 + 32);

  v2 = sub_10000B284();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006F424()
{
  v1 = *(v0 + 40);

  v2 = sub_10000B284();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006F464()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = sub_100009010();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006F4AC()
{
  v1 = *(v0 + 40);

  v2 = sub_10000B284();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006F4E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = sub_100016440();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006F530()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10006F560()
{
  v1 = *(v0 + 24);

  v2 = sub_1000074E4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006F598()
{
  v1 = sub_1000074E4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10006F5C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = sub_10000B284();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006F600()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = sub_10005AE40();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006F650()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = sub_10005AE40();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006F6A0()
{
  v1 = sub_1000074E4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10006F6D8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = sub_100009010();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10006F728()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = sub_100008FD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006F768()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = sub_10000B284();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006F81C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F884()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006F96C()
{
  v1 = *(v0 + 16);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006F9A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006F9D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006FA10()
{
  v1 = v0[2];

  if (v0[7])
  {
    sub_100002C00(v0 + 4);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006FA8C()
{
  v1 = type metadata accessor for OSSignpostID();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10006FBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006FC9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006FDE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_100007A3C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006FE3C()
{
  v1 = *(v0 + 16);

  sub_100004AA0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006FE7C()
{
  if (*(v0 + 40))
  {
    sub_100002C00((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100009F34(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006FF6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000A7C0(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100070044()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100070088()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000700F4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = sub_10000B284();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10007013C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000701FC()
{
  v1 = type metadata accessor for Notification();
  sub_100002CC4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000702B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000702EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100070354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_1000703A0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000703D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070410()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007059C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000705EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000719CC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error posting notification: %{public}@", &v11, 0x20u);
    }
  }
}

id sub_100072030()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100272B00;
  v7 = qword_100272B00;
  if (!qword_100272B00)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10007325C;
    v3[3] = &unk_1002440C8;
    v3[4] = &v4;
    sub_10007325C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000720F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072110(uint64_t a1, void *a2)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100072398;
  v18[3] = &unk_100243FC0;
  v19 = *(a1 + 32);
  v4 = [a2 ams_firstObjectPassingTest:v18];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = [v4 familyID];
      *buf = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Arcade entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", buf, 0x20u);
    }

    [*(a1 + 48) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v6 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Arcade entitlement found, user is not subscribed.", buf, 0x16u);
    }

    v16 = *(a1 + 48);
    v17 = AMSError();
    [v16 finishWithError:v17];
  }
}

uint64_t sub_100072398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 familyID];
  v5 = [v4 stringValue];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  v7 = [v3 expiryDate];

  v8 = +[NSDate date];
  v9 = [v7 compare:v8];

  if (v9 == -1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_100072608(uint64_t a1, void *a2)
{
  v3 = [a2 ams_firstObjectPassingTest:&stru_100244028];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [v3 familyID];
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fitness+ entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v5 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Fitness+ entitlement found, user is not subscribed.", &v17, 0x16u);
    }

    v15 = *(a1 + 40);
    v16 = AMSError();
    [v15 finishWithError:v16];
  }
}

BOOL sub_100072838(id a1, ASDSubscriptionEntitlement *a2)
{
  v2 = [(ASDSubscriptionEntitlement *)a2 expiryDate];
  v3 = +[NSDate date];
  v4 = [v2 compare:v3] != -1;

  return v4;
}

void sub_100072AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 statusType];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4 == 1)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription enabled, user is a subscriber. StatusType = %{public}@", &v19, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v6 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v19 = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription not enabled, user is not subscribed. StatusType = %{public}@", &v19, 0x20u);
    }

    v17 = *(a1 + 40);
    v18 = AMSError();
    [v17 finishWithError:v18];
  }
}

void sub_100072FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isTVPlusSubscriber];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription enabled, user is a subscriber. SubscriptionData.isTVPlusSubscriber = %{public}@", &v19, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v6 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v19 = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription not enabled, user is not subscribed. SubscriptionData.isTVPlusSubscriber = %{public}@", &v19, 0x20u);
    }

    v17 = *(a1 + 40);
    v18 = AMSError();
    [v17 finishWithError:v18];
  }
}

Class sub_10007325C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100272B08)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000733A0;
    v4[4] = &unk_100244100;
    v4[5] = v4;
    v5 = off_1002440E8;
    v6 = 0;
    qword_100272B08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100272B08)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001DA6A0();
  }

  qword_100272B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000733A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100272B08 = result;
  return result;
}

Class sub_100073414(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100272B18)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100073558;
    v4[4] = &unk_100244100;
    v4[5] = v4;
    v5 = off_100244120;
    v6 = 0;
    qword_100272B18 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100272B18)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICMusicSubscriptionStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001DA6C8();
  }

  qword_100272B10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100073558(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100272B18 = result;
  return result;
}

Class sub_1000735CC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100272B28)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100073710;
    v4[4] = &unk_100244100;
    v4[5] = v4;
    v5 = off_100244138;
    v6 = 0;
    qword_100272B28 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100272B28)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WLKSubscriptionStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001DA6F0();
  }

  qword_100272B20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100073710(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100272B28 = result;
  return result;
}

void sub_100073818(void *a1)
{
  v2 = objc_begin_catch(a1);
  if (v1)
  {
    *v1 = v2;
  }

  objc_end_catch();
  JUMPOUT(0x1000737F0);
}

uint64_t sub_100073890(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736B6E696C707061 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_100073930()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100073974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100073890(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000739BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001676C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000739E8(uint64_t a1)
{
  v2 = sub_10007B9EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100073A24(uint64_t a1)
{
  v2 = sub_10007B9EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100073A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003CEC(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    sub_10000821C();
    sub_1001C49D8();
    sub_10001BD44();
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5 == 3)
  {
    if (v4 == 3)
    {
      return 1;
    }
  }

  else if (v4 != 3)
  {
    if (v5 == 2)
    {
      sub_100003EF0();
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      sub_100003EF0();
      if (v10 || ((v4 ^ v5) & 1) != 0)
      {
        return 0;
      }
    }

    if (BYTE1(v5) == 2)
    {
      if (BYTE1(v4) == 2)
      {
        return 1;
      }
    }

    else if (BYTE1(v4) != 2 && ((BYTE1(v4) ^ BYTE1(v5)) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_100073B38()
{
  sub_100007E34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_100269040, &qword_1001E4F60);
  sub_100002CC4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  sub_100006724();
  v9 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_10007B9EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10007BA40();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v0, v3);
  sub_100005B78();
}

uint64_t sub_100073C70(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_100269178, &qword_1001E4FA0);
  sub_100002CC4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v9 = a1[3];
  v10 = a1[4];
  sub_10000A264(a1);
  sub_10007B9EC();
  sub_10000AE18();
  if (!v1)
  {
    sub_10007C360();
    sub_10000A7E8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = *(v5 + 8);
    v12 = sub_100009DB0();
    v13(v12);
  }

  sub_100002C00(a1);
  return sub_10000569C();
}

uint64_t sub_100073DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001001F31F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73746C7561666564 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100073ED4(char a1)
{
  if (!a1)
  {
    return 0x736C6961746564;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x73746C7561666564;
}

void sub_100073F30()
{
  sub_100007E34();
  v3 = v2;
  v4 = sub_10007B9A4(&qword_1002692A8, &qword_1001E5CF8);
  sub_100002CC4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_10000710C();
  v10 = v3[4];
  sub_100003CA8(v3, v3[3]);
  sub_10007D294();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10007B9A4(&qword_1002692B8, &unk_1001E5D00);
  sub_10007D2E8();
  sub_10003D2C0();
  sub_100007814();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_1000060B8();
    sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
    sub_10007D5C4(&unk_1002692D8);
    sub_10003D2C0();
    sub_100007814();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000115B8();
    sub_10007BFE8();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005B78();
}

void sub_100074114(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1000797A8(a1, a2);
  if (a3)
  {
    Hasher._combine(_:)(1u);
    v6 = sub_100007828();
    sub_100079B7C(v6, v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a4 == 3 || ((Hasher._combine(_:)(1u), a4 != 2) ? (Hasher._combine(_:)(1u), v8 = a4 & 1) : (v8 = 0), Hasher._combine(_:)(v8), BYTE1(a4) == 2))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = (a4 >> 8) & 1;
  }

  Hasher._combine(_:)(v9);
}

Swift::Int sub_1000741C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_100004750();
  sub_100074114(v7, a1, a2, a3);
  return Hasher._finalize()();
}

void sub_100074218()
{
  sub_100007E34();
  v1 = v0;
  v2 = sub_10007B9A4(&qword_100269310, &qword_1001E5D28);
  sub_100002CC4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  v8 = v1[3];
  v9 = v1[4];
  sub_10000A264(v1);
  sub_10007D294();
  sub_10000AE18();
  sub_10007B9A4(&qword_1002692B8, &unk_1001E5D00);
  sub_10007D4EC();
  sub_10000616C();
  sub_10000A7E8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
  sub_1000060B8();
  sub_10007D5C4(&unk_100269328);
  sub_10000616C();
  sub_10000A7E8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000115B8();
  sub_10007BDE4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = *(v4 + 8);
  v11 = sub_100009DB0();
  v12(v11);
  sub_100002C00(v1);
  sub_100005B78();
}

uint64_t sub_100074468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x734449707061 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746C7561666564 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E45737961776C61 && a2 == 0xED000064656C6261;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001001F31D0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65766974616C6572 && a2 == 0xED0000726564724FLL)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100074674(char a1)
{
  result = 0x734449707061;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0x73746C7561666564;
      break;
    case 3:
      result = 0x6E45737961776C61;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65766974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100074744(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012EF8(a1);
  if ((sub_1001CB0F4(v4, *v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(a2 + 8);

    v9 = sub_10000821C();
    sub_1001C3B70(v9, v10);
    sub_10001BD44();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = *(v2 + 16);
  v12 = *(a2 + 16);
  v13 = *(a2 + 16);
  if (*(v2 + 16) == 3)
  {
    if (v13 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v13 == 3)
    {
      return 0;
    }

    if (*(v2 + 16) == 2)
    {
      if (*(a2 + 16) != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (*(a2 + 16) == 2 || ((v12 ^ v11) & 1) != 0)
      {
        return result;
      }
    }

    if (v11 >> 8 == 2)
    {
      if (v12 >> 8 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = sub_10001CB10();
      if (v17 || ((v21 ^ v22) & 1) != 0)
      {
        return result;
      }
    }
  }

  if (*(v2 + 18) == 2)
  {
    if (*(a2 + 18) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_10001CB10();
    if (v17 || ((v15 ^ v16) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v2 + 19) == 2)
  {
    if (*(a2 + 19) != 2)
    {
      return 0;
    }

    goto LABEL_30;
  }

  result = sub_10001CB10();
  if (!v17 && ((v18 ^ v19) & 1) == 0)
  {
LABEL_30:
    v20 = *(a2 + 32);
    if ((*(v2 + 32) & 1) == 0)
    {
      if (*(v2 + 24) != *(a2 + 24))
      {
        v20 = 1;
      }

      return (v20 & 1) == 0;
    }

    return (*(a2 + 32) & 1) != 0;
  }

  return result;
}

uint64_t sub_1000748C4(void *a1)
{
  v4 = v1;
  v6 = sub_10007B9A4(&qword_1002690E8, &qword_1001E4F80);
  sub_100002CC4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_10000710C();
  v12 = a1[3];
  v13 = a1[4];
  sub_10000A264(a1);
  sub_10007BB98();
  sub_100018174();
  v19 = *v4;
  sub_10007B9A4(&qword_1002690B0, &qword_1001E4F70);
  sub_10007BE38();
  sub_10003D2C0();
  sub_100007814();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v20 = v4[1];
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BF10();
    sub_10003D2C0();
    sub_100007814();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v4 + 8);
    sub_10007BFE8();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v4 + 18);
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v4 + 19);
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v4[3];
    v17 = *(v4 + 32);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_100074AD8(void *a1)
{
  sub_100079A44(a1, *v1);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    v2 = sub_100007828();
    sub_10007A648(v2, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 16);
  if (v5 == 3 || ((Hasher._combine(_:)(1u), v5 != 2) ? (Hasher._combine(_:)(1u), v6 = v4 & 1) : (v6 = 0), Hasher._combine(_:)(v6), v4 >> 8 == 2))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = (v4 >> 8) & 1;
  }

  Hasher._combine(_:)(v7);
  v8 = *(v1 + 18);
  if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = v8 & 1;
  }

  Hasher._combine(_:)(v9);
  v10 = *(v1 + 19);
  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v11 = v10 & 1;
  }

  Hasher._combine(_:)(v11);
  if (*(v1 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *(v1 + 24);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v12);
  }
}

Swift::Int sub_100074C08()
{
  sub_100004750();
  sub_100074AD8(v1);
  return Hasher._finalize()();
}

void sub_100074C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100007E34();
  v13 = v12;
  v15 = v14;
  v16 = sub_10007B9A4(&qword_1002690A0, &qword_1001E4F68);
  sub_100002CC4(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_100004E78();
  __chkstk_darwin(v21);
  sub_100006724();
  v22 = v13[4];
  sub_100003CA8(v13, v13[3]);
  sub_10007BB98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100002C00(v13);
  }

  else
  {
    sub_10007B9A4(&qword_1002690B0, &qword_1001E4F70);
    sub_10007BBEC();
    sub_10000616C();
    sub_1000086E0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    sub_1000060B8();
    sub_10007BD0C();
    sub_10000616C();
    sub_1000086E0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000115B8();
    sub_10007BDE4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100019B18(3);
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100019B18(4);
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100019B18(5);
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v11;
    v26 = v25;
    (*(v18 + 8))(v24, v16);

    sub_100002C00(v13);

    *v15 = a10;
    *(v15 + 8) = a10;
    *(v15 + 16) = a10;
    *(v15 + 18) = v28;
    *(v15 + 19) = v27;
    *(v15 + 24) = v23;
    *(v15 + 32) = v26 & 1;
  }

  sub_100005B78();
}

unint64_t sub_100074F04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244208, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100074F54(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 63;
      break;
    case 2:
      result = 35;
      break;
    case 3:
      result = 0x45746E6563726570;
      break;
    case 4:
      result = 0x6564756C637865;
      break;
    case 5:
      result = 0x736E655365736163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100074FF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100073C70(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_100075024()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_100073B38();
}

uint64_t sub_100075070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100073DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000750B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100073ECC();
  *a1 = result;
  return result;
}

uint64_t sub_1000750E0(uint64_t a1)
{
  v2 = sub_10007D294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007511C(uint64_t a1)
{
  v2 = sub_10007D294();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100075158(uint64_t a1@<X8>)
{
  sub_100074218();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

void sub_100075188()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_100073F30();
}

Swift::Int sub_1000751B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_100074114(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100075230()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10007527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100074468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000752A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007466C();
  *a1 = result;
  return result;
}

uint64_t sub_1000752CC(uint64_t a1)
{
  v2 = sub_10007BB98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075308(uint64_t a1)
{
  v2 = sub_10007BB98();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100075344@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_100074C40(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    result = *&v13;
    *a9 = v13;
    *(a9 + 16) = v14;
    *(a9 + 32) = v15;
  }

  return result;
}

Swift::Int sub_1000753AC()
{
  Hasher.init(_seed:)();
  sub_100074AD8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100075428()
{
  sub_100004750();
  sub_10000A240();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10007548C()
{
  sub_100004750();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100075540()
{
  v0 = sub_100004750();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100075588()
{
  v0 = sub_100004750();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100075628()
{
  v0 = sub_100004750();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000756A0(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100004750();
  a2(a1);
  sub_100017CCC();

  return Hasher._finalize()();
}

Swift::Int sub_100075714(unsigned __int8 a1)
{
  sub_100004750();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10007576C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_100004750();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000757B4(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100075844()
{
  String.hash(into:)();
}

uint64_t sub_100075928()
{
  String.hash(into:)();
}

uint64_t sub_1000759D4()
{
  String.hash(into:)();
}

uint64_t sub_100075AA8(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_100002CE8();
  }

  String.hash(into:)();
}

uint64_t sub_100075B20()
{
  String.hash(into:)();
}

uint64_t sub_100075B90()
{
  String.hash(into:)();
}

uint64_t sub_100075C48(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_100002CE8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_100075D08(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10000AAB4();
  }

  else
  {
    sub_10000C2D4();
  }

  String.hash(into:)();
}

uint64_t sub_100075D60()
{
  String.hash(into:)();
}

uint64_t sub_100075DC0()
{
  String.hash(into:)();
}

uint64_t sub_100075E20()
{
  String.hash(into:)();
}

uint64_t sub_100075E80()
{
  String.hash(into:)();
}

uint64_t sub_100075F54()
{
  String.hash(into:)();
}

uint64_t sub_100076014()
{
  String.hash(into:)();
}

uint64_t sub_1000760AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_10003AE2C();
}

uint64_t sub_1000760F0(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_10000B2B0();
  }

  String.hash(into:)();
}

uint64_t sub_100076170()
{
  String.hash(into:)();
}

uint64_t sub_1000762A4()
{
  String.hash(into:)();
}

Swift::Int sub_100076344()
{
  sub_100005E94();
  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_1000763D0()
{
  sub_100005E94();
  if (!v0)
  {
    sub_10000B2B0();
  }

  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_100076454(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100076498()
{
  v0 = Hasher.init(_seed:)();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000764E4()
{
  v0 = Hasher.init(_seed:)();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100076530()
{
  sub_100005E94();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100076594()
{
  sub_100005E94();
  if (!v0)
  {
    sub_100002CE8();
  }

  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_100076640()
{
  sub_100005E94();
  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_1000766A4()
{
  sub_100005E94();
  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_100076708()
{
  sub_100005E94();
  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_10007676C()
{
  sub_100005E94();
  if (v0)
  {
    sub_10000AAB4();
  }

  else
  {
    sub_10000C2D4();
  }

  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_100076810()
{
  sub_100005E94();
  sub_10001CC78();

  return Hasher._finalize()();
}

Swift::Int sub_100076884(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000768E0()
{
  Hasher.init(_seed:)();
  sub_10000A240();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100076938(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10007699C()
{
  v0 = Hasher.init(_seed:)();
  sub_100007370(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000769E8(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_100076A2C()
{
  sub_100004E28();
  v3 = *(v2 + 8);
  v4 = *(v0 + 8);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v0 + 16);

    sub_10000821C();
    sub_1001C4B20();
    sub_10001BD44();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = *(v1 + 32);
  v10 = *(v0 + 32);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *(v1 + 24) == *(v0 + 24) && v9 == v10;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  if (*(v1 + 40) == 2)
  {
    if (*(v0 + 40) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_10001CB10();
    if (v5 || ((v13 ^ v14) & 1) != 0)
    {
      return result;
    }
  }

  if (*(v1 + 41) == 2)
  {
    if (*(v0 + 41) != 2)
    {
      return 0;
    }

LABEL_34:
    v17 = *(v1 + 42);
    v18 = *(v0 + 42);
    if (v17 == 2)
    {
      if (v18 != 2)
      {
        return 0;
      }
    }

    else if (v18 == 2 || ((v18 ^ v17) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = sub_10001CB10();
  if (!v5 && ((v15 ^ v16) & 1) == 0)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100076B84(void *a1)
{
  v4 = v1;
  v6 = sub_10007B9A4(&qword_100269150, &qword_1001E4F98);
  sub_100002CC4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_10000710C();
  v12 = a1[3];
  v13 = a1[4];
  sub_10000A264(a1);
  sub_10007C03C();
  sub_100018174();
  v18 = *v4;
  sub_10007C1F4();
  sub_10000B648();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v19 = *(v4 + 2);
    sub_1000060B8();
    sub_10007B9A4(&qword_100269130, &qword_1001E4F90);
    sub_10007C248(&unk_100269160);
    sub_100007814();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v4 + 24);
    sub_1000115B8();
    sub_10007C30C();
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v4 + 40);
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v4 + 41);
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v4 + 42);
    sub_10000B648();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_100076DB4()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    sub_10000569C();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[2])
  {
    Hasher._combine(_:)(1u);
    v2 = sub_100007828();
    sub_100079CF0(v2, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[4])
  {
    v4 = v0[3];
    Hasher._combine(_:)(1u);
    sub_10000569C();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = *(v0 + 40);
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = v5 & 1;
  }

  Hasher._combine(_:)(v6);
  v7 = *(v0 + 41);
  if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = v7 & 1;
  }

  Hasher._combine(_:)(v8);
  v9 = *(v0 + 42);
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v9 & 1;
  }

  Hasher._combine(_:)(v10);
}

Swift::Int sub_100076EC8()
{
  sub_100004750();
  sub_100076DB4();
  return Hasher._finalize()();
}

void sub_100076F00()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_100269118, &qword_1001E4F88);
  sub_100002CC4(v5);
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  sub_100006724();
  v9 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_10007C03C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100002C00(v2);
  }

  else
  {
    sub_10007C090();
    sub_100005B6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v23;
    sub_10007B9A4(&qword_100269130, &qword_1001E4F90);
    sub_10007C248(&unk_100269138);
    sub_100005B6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = v22;
    v19 = v22;
    sub_10007C138();
    sub_100005B6C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v22;
    v17 = v23;
    sub_100005B6C();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v22) = 4;
    sub_100005B6C();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100005B6C();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = sub_10000BD18();
    v13(v12);
    v20 = __PAIR128__(v23, v18);
    *v21 = v19;
    *&v21[8] = v16;
    *&v21[16] = v23;
    v21[24] = v30;
    v21[25] = v15;
    v21[26] = v11;
    sub_10007C18C(&v20, &v22);
    sub_100002C00(v2);
    v22 = v18;
    v23 = v10;
    v24 = v19;
    v25 = v16;
    v26 = v17;
    v27 = v30;
    v28 = v15;
    v29 = v11;
    sub_10007C1C4(&v22);
    v14 = *v21;
    *v4 = v20;
    v4[1] = v14;
    *(v4 + 27) = *&v21[11];
  }

  sub_100005B78();
}

uint64_t sub_100077294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E655365736163 && a2 == 0xED00006576697469;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45746E6563726570 && a2 == 0xEE006465646F636ELL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100077374(char a1)
{
  sub_100004750();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1000773B4(char a1)
{
  if (a1)
  {
    return 0x45746E6563726570;
  }

  else
  {
    return 0x736E655365736163;
  }
}

uint64_t sub_100077404(int a1, int a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }

LABEL_6:
    if (BYTE1(a1) == 2)
    {
      if (BYTE1(a2) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a2) == 2 || ((BYTE1(a2) ^ BYTE1(a1)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100077478(void *a1)
{
  v3 = sub_10007B9A4(&qword_100269308, &qword_1001E5D20);
  sub_100002CC4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  v11 = a1[3];
  v12 = a1[4];
  sub_10000A264(a1);
  sub_10007D498();
  sub_100018174();
  v14[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v14[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v10, v3);
}

void sub_1000775B8(uint64_t a1, unsigned int a2)
{
  v3 = BYTE1(a2);
  if (a2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = a2 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = (a2 >> 8) & 1;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_10007762C(unsigned int a1)
{
  sub_100004750();
  sub_1000775B8(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_10007766C(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_1002692F8, &qword_1001E5D18);
  sub_100002CC4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v9 = a1[3];
  v10 = a1[4];
  sub_10000A264(a1);
  sub_10007D498();
  sub_10000AE18();
  if (v1)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_10000A7E8();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000A7E8();
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = *(v5 + 8);
    v14 = sub_100009DB0();
    v15(v14);
    sub_100002C00(a1);
    return v11 | (v12 << 8);
  }

  return v9;
}

unint64_t sub_1000777D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100074F04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100077808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100074F54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10007783C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100074F50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100077870(uint64_t a1)
{
  v2 = sub_10007C03C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000778AC(uint64_t a1)
{
  v2 = sub_10007C03C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000778E8@<D0>(_OWORD *a1@<X8>)
{
  sub_100076F00();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[11];
    *(a1 + 27) = *&v5[11];
  }

  return result;
}

Swift::Int sub_10007794C()
{
  Hasher.init(_seed:)();
  sub_100076DB4();
  return Hasher._finalize()();
}

uint64_t sub_100077994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100077294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000779BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007736C();
  *a1 = result;
  return result;
}

uint64_t sub_1000779E4(uint64_t a1)
{
  v2 = sub_10007D498();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077A20(uint64_t a1)
{
  v2 = sub_10007D498();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077A5C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_10007766C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100077AB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000775B8(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100077B04()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100077B34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100077B64(uint64_t a1)
{
  v2 = sub_10007BB44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077BA0(uint64_t a1)
{
  v2 = sub_10007BB44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077BDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100077C08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100077C08(uint64_t *a1)
{
  v4 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_100004A74();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_100003CA8(v6, v6[3]);
    sub_100004A74();
    v1 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100002C00(v6);
    sub_100002C00(a1);
  }

  return v1;
}

uint64_t sub_100077CB4(void *a1)
{
  v1 = a1[4];
  sub_100003CA8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100046CB8(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002C00(v3);
}

uint64_t sub_100077D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_100077D70()
{
  sub_100004E28();
  sub_100004750();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100077DB4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100077E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t variable initialization expression of PriorityQueue.runningWorkers()
{
  type metadata accessor for Worker();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100077FC4()
{
  v1 = sub_100007E28();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_100077FEC@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of SQLRow.stmt();
  *a1 = result;
  return result;
}

uint64_t sub_100078014(uint64_t *a1)
{
  v2 = sub_100002CD8(a1);
  result = sub_100187344(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_10007809C()
{
  v1 = sub_100007E28();
  result = j_j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000780C4(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269088);
  v3 = sub_100048A70(&unk_100269090);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078194(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100078200(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10007826C(void *a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_100269290);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000782FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10007838C(uint64_t a1)
{
  v2 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000783F8(uint64_t a1)
{
  v2 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100078464(void *a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_10026F8E0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000784F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100078570()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000785D0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000785FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100077E00(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100078624(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100268B70);
  v3 = sub_100048A70(&unk_100268B78);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078770(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269078);
  v3 = sub_100048A70(&unk_100269080);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007882C(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100268B58);
  v3 = sub_100048A70(&unk_100268B60);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000788E8(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100268B48);
  v3 = sub_100048A70(&unk_100268B50);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000789A4(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269188);
  v3 = sub_100048A70(&unk_100269190);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078D30(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269260);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100078D9C(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269260);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100078E08(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269290);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100078E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100048A70(&qword_100269290);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100078EF8(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269340);
  v3 = sub_100048A70(&unk_100269348);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100078FB4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100078FE0(uint64_t a1)
{
  v2 = sub_100048A70(&qword_100269058);
  v3 = sub_100048A70(&unk_100269060);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10007909C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000790E4(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100269068);
  v3 = sub_100048A70(&unk_100269070);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000791A0(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100268FF0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10007920C(uint64_t a1)
{
  v2 = sub_100048A70(&unk_100268FF0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100079278(uint64_t a1)
{
  v2 = sub_100048A70(&qword_10026F8E0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000792E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100048A70(&qword_10026F8E0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000793BC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10003AE2C();
}

void sub_1000793FC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  sub_100004E5C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      sub_10000DCD8();
      v15 = (*(a2 + 48) + 24 * (v14 | (v13 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      Hasher.init(_seed:)();

      sub_100003B18();

      sub_100079558(__srca, v18);

      v19 = Hasher._finalize()();

      v10 ^= v19;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      Hasher._combine(_:)(0);
      return;
    }

    ++v11;
    if (*(a2 + 56 + 8 * v12))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_100079558(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v23 = a2;
  v4 = a2 + 56;
  v3 = *(a2 + 56);
  v5 = *(a2 + 32);
  sub_100004E5C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  do
  {
    v26 = v11;
LABEL_7:
    v14 = *(v23 + 48) + 48 * (__clz(__rbit64(v8)) | (v12 << 6));
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 25);
    v24 = *(v14 + 32);
    v25 = *(v14 + 40);
    Hasher.init(_seed:)();

    sub_100079A44(__srca, v15);
    if (v16)
    {
      Hasher._combine(_:)(1u);
      sub_10007A648(__srca, v16);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v17)
    {
      Hasher._combine(_:)(1u);
      sub_100079B7C(__srca, v17);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v18 == 2)
    {
      v20 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v20 = v18 & 1;
    }

    Hasher._combine(_:)(v20);
    if (v19 == 2)
    {
      v21 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v21 = v19 & 1;
    }

    Hasher._combine(_:)(v21);
    if (v25)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v24);
    }

    v8 &= v8 - 1;
    v22 = Hasher._finalize()();

    v11 = v22 ^ v26;
  }

  while (v8);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      Hasher._combine(_:)(v11);
      return;
    }

    v8 = *(v4 + 8 * v13);
    ++v12;
    if (v8)
    {
      v26 = v11;
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1000797A8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v21 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 = v20 ^ v25)
  {
    v25 = v8;
LABEL_9:
    v11 = *(v21 + 48) + 40 * (__clz(__rbit64(v6)) | (i << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 19);
    v22 = *(v11 + 24);
    v23 = *(v11 + 18);
    v24 = *(v11 + 32);
    Hasher.init(_seed:)();

    sub_100079A44(__srca, v12);
    if (v13)
    {
      Hasher._combine(_:)(1u);
      sub_10007A648(__srca, v13);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v14 == 3 || ((Hasher._combine(_:)(1u), v14 != 2) ? (Hasher._combine(_:)(1u), v16 = v14 & 1) : (v16 = 0), Hasher._combine(_:)(v16), v14 >> 8 == 2))
    {
      LOBYTE(v17) = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = (v14 >> 8) & 1;
    }

    Hasher._combine(_:)(v17);
    if (v23 == 2)
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v18 = v23 & 1;
    }

    Hasher._combine(_:)(v18);
    if (v15 == 2)
    {
      v19 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v19 = v15 & 1;
    }

    Hasher._combine(_:)(v19);
    if (v24)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v22);
    }

    v6 &= v6 - 1;
    v20 = Hasher._finalize()();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      v25 = v8;
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100079A44(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  sub_100004E5C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v17)
  {
    v12 = i;
LABEL_7:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(a2 + 48) + ((v12 << 10) | (16 * v13)));
    v15 = *v14;
    v16 = v14[1];
    Hasher.init(_seed:)();

    sub_100003B18();
    v17 = Hasher._finalize()();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      Hasher._combine(_:)(v10);
      return;
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_100079B7C(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  sub_100004E5C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  do
  {
    v24 = v11;
LABEL_7:
    v14 = __clz(__rbit64(v8)) | (v12 << 6);
    v15 = (*(a2 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a2 + 56) + 8 * v14);
    memcpy(__dst, a1, sizeof(__dst));

    sub_100003B18();

    Hasher._combine(_:)(*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        sub_100003B18();

        v20 += 2;
        --v19;
      }

      while (v19);
    }

    v8 &= v8 - 1;

    v11 = Hasher._finalize()() ^ v24;
  }

  while (v8);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      Hasher._combine(_:)(v11);
      return;
    }

    v8 = *(v4 + 8 * v13);
    ++v12;
    if (v8)
    {
      v24 = v11;
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_100079CF0(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 ^= Hasher._finalize()())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (v10 << 10) | (16 * v11);
    v13 = (*(a2 + 48) + v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = (*(a2 + 56) + v12);
    v17 = *v16;
    v18 = v16[1];
    memcpy(__dst, a1, sizeof(__dst));

    String.hash(into:)();

    String.hash(into:)();
    swift_bridgeObjectRelease_n();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100079E5C(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = *(a2 + 32);
  sub_100004E5C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  do
  {
    v32 = v10;
LABEL_7:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(a2 + 56) + 32 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v30 = *(v17 + 16);
    v31 = *(v17 + 24);
    memcpy(__dst, a1, sizeof(__dst));

    sub_100015B3C();

    if (v18)
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(*(v18 + 16));
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (v18 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;

          sub_100015B3C();

          v21 += 2;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v19)
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(*(v19 + 16));
      v24 = *(v19 + 16);
      if (v24)
      {
        v25 = (v19 + 40);
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;

          sub_100015B3C();

          v25 += 2;
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v7 &= v7 - 1;
    Hasher._combine(_:)(v30);
    Hasher._combine(_:)(v31);

    v10 = Hasher._finalize()() ^ v32;
  }

  while (v7);
LABEL_3:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      Hasher._combine(_:)(v10);
      return;
    }

    v7 = *(v3 + 8 * v12);
    ++v11;
    if (v7)
    {
      v32 = v10;
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10007A074(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = *(a2 + 32);
  sub_100005680();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v60 = v9;
  v61 = v3;
  if (v7)
  {
LABEL_2:
    v66 = v10;
LABEL_7:
    v64 = (v7 - 1) & v7;
    v65 = v11;
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    memcpy(__dst, a1, sizeof(__dst));

    sub_100003B18();

    v19 = v17 + 64;
    v18 = *(v17 + 64);
    v20 = *(v17 + 32);
    sub_100005680();
    v23 = v22 & v21;
    v67 = (v24 + 63) >> 6;

    v74 = 0;
    v25 = 0;
    v68 = v17 + 64;
    v69 = v17;
    if (v23)
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v67)
      {
        goto LABEL_38;
      }

      v23 = *(v19 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
LABEL_12:
        while (1)
        {
          v27 = __clz(__rbit64(v23)) | (v25 << 6);
          v28 = (*(v17 + 48) + 16 * v27);
          v30 = *v28;
          v29 = v28[1];
          memcpy(v81, (*(v17 + 56) + 96 * v27), sizeof(v81));
          v75 = v81[3];
          v77 = v81[1];
          v71 = v81[2];
          v72 = v81[0];
          v73 = v81[5];
          v70 = v81[4];

          sub_10007BA94(v81, __src);
          if (!v29)
          {
            break;
          }

          v81[0] = v72;
          v81[1] = v77;
          v81[2] = v71;
          v81[3] = v75;
          v81[4] = v70;
          v81[5] = v73;
          memcpy(__src, __dst, 0x48uLL);
          String.hash(into:)();

          String.hash(into:)();
          String.hash(into:)();
          String.hash(into:)();
          v31 = *&v81[3];
          v32 = *(*&v81[3] + 16);
          Hasher._combine(_:)(v32);
          if (v32)
          {
            v33 = (v31 + 32);
            do
            {
              v34 = *v33++;
              Hasher._combine(_:)(v34);
              --v32;
            }

            while (v32);
          }

          Hasher._combine(_:)(*(&v81[3] + 1));
          if (BYTE8(v81[4]))
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v35 = *&v81[4];
            Hasher._combine(_:)(1u);
            if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            Hasher._combine(_:)(v36);
          }

          Hasher._combine(_:)(BYTE9(v81[4]));
          v37 = *&v81[5];
          if (*&v81[5] == 0.0)
          {
            v37 = 0.0;
          }

          Hasher._combine(_:)(*&v37);
          v38 = *(&v81[5] + 1);
          if (*(&v81[5] + 1))
          {
            Hasher._combine(_:)(1u);
            v40 = v38 + 64;
            v39 = *(v38 + 64);
            v41 = *(v38 + 32);
            sub_100005680();
            v44 = v43 & v42;
            v46 = (v45 + 63) >> 6;
            v76 = v38;

            v47 = 0;
            for (i = 0; v44; v47 = Hasher._finalize()() ^ v78)
            {
              v78 = v47;
              v49 = i;
              v50 = v76;
LABEL_32:
              v51 = __clz(__rbit64(v44));
              v44 &= v44 - 1;
              v52 = (v49 << 10) | (16 * v51);
              v53 = (*(v50 + 48) + v52);
              v54 = *v53;
              v55 = v53[1];
              v56 = (*(v50 + 56) + v52);
              v58 = *v56;
              v57 = v56[1];
              memcpy(v79, __src, sizeof(v79));

              String.hash(into:)();

              String.hash(into:)();
            }

            v50 = v76;
            while (1)
            {
              v49 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v49 >= v46)
              {

                Hasher._combine(_:)(v47);
                v19 = v68;
                v17 = v69;
                goto LABEL_36;
              }

              v44 = *(v40 + 8 * v49);
              ++i;
              if (v44)
              {
                v78 = v47;
                i = v49;
                goto LABEL_32;
              }
            }

            __break(1u);
            goto LABEL_42;
          }

          Hasher._combine(_:)(0);
LABEL_36:
          v23 &= v23 - 1;
          sub_10007BAF0(v81);
          v74 ^= Hasher._finalize()();
          if (!v23)
          {
            goto LABEL_8;
          }
        }

LABEL_38:

        Hasher._combine(_:)(v74);

        v59 = Hasher._finalize()();
        v11 = v65;
        v10 = v59 ^ v66;
        v9 = v60;
        v3 = v61;
        v7 = v64;
        if (!v64)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

LABEL_42:
    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        Hasher._combine(_:)(v10);
        return;
      }

      v7 = *(v3 + 8 * v12);
      ++v11;
      if (v7)
      {
        v66 = v10;
        v11 = v12;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void sub_10007A508(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  sub_100004E5C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      sub_10000DCD8();
      v16 = (v14 << 10) | (16 * v15);
      v17 = (*(a2 + 48) + v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(a2 + 56) + v16);
      v21 = *v20;
      v22 = v20[1];
      memcpy(__dst, a1, sizeof(__dst));

      String.hash(into:)();

      String.hash(into:)();

      v11 ^= Hasher._finalize()();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      Hasher._combine(_:)(0);
      return;
    }

    ++v12;
    if (*(v4 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_10007A648(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = (v3 + 74);
    do
    {
      v5 = *(v4 - 26);
      v16 = *(v4 - 18);
      v6 = *(v4 - 10);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      if (*(v4 - 34))
      {
        v10 = *(v4 - 42);
        Hasher._combine(_:)(1u);

        String.hash(into:)();
        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        Hasher._combine(_:)(0);

        if (v5)
        {
LABEL_5:
          Hasher._combine(_:)(1u);
          v11 = sub_10000569C();
          sub_100079CF0(v11, v12);
          if (!v6)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      Hasher._combine(_:)(0);
      if (!v6)
      {
LABEL_9:
        Hasher._combine(_:)(0);
        goto LABEL_10;
      }

LABEL_6:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_10:
      if (v7 == 2)
      {
        v13 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v13 = v7 & 1;
      }

      Hasher._combine(_:)(v13);
      if (v8 == 2)
      {
        v14 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v14 = v8 & 1;
      }

      Hasher._combine(_:)(v14);
      if (v9 == 2)
      {
        v15 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v15 = v9 & 1;
      }

      v4 += 48;
      Hasher._combine(_:)(v15);

      --v2;
    }

    while (v2);
  }
}

void sub_10007A7D8(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_100007828();
      String.hash(into:)();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_10007A83C(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v2;
    }

    while (v2);
  }
}

void sub_10007A87C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = &v10[*(v3 + 20)];
    v13 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    do
    {
      sub_10007ACE4(v13, v10);
      type metadata accessor for URL();
      sub_100048A70(&unk_100268B68);
      dispatch thunk of Hashable.hash(into:)();
      if (*v12)
      {
        v15 = *v12 == 1;
      }

      else
      {
        sub_100002CE8();
      }

      v16 = *(v12 + 1);
      v17 = *(v12 + 2);
      String.hash(into:)();

      String.hash(into:)();
      sub_10007AD48(v10);
      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

void sub_10007AA40(uint64_t a1, uint64_t a2)
{
  sub_100004A54(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      if (v6)
      {
        v7 = *(v4 - 1);
        Hasher._combine(_:)(1u);

        sub_10000569C();
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v4 = v5;
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_10007AAC4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10007AB38()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10007ABBC()
{
  sub_100004E28();

  v2 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_10007AC38()
{
  sub_100004E28();

  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return result;
}

uint64_t sub_10007ACAC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10007ACE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPageMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AD48(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncPageMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_10007ADA4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

__n128 sub_10007AEB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10007AED4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007AEE8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007AF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10007AF8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007AFA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 43))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007AFF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_10007B078(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

unint64_t sub_10007B144()
{
  result = qword_100268F50;
  if (!qword_100268F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F50);
  }

  return result;
}

unint64_t sub_10007B19C()
{
  result = qword_100268F58;
  if (!qword_100268F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F58);
  }

  return result;
}

unint64_t sub_10007B1F4()
{
  result = qword_100268F60;
  if (!qword_100268F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F60);
  }

  return result;
}

unint64_t sub_10007B24C()
{
  result = qword_100268F68;
  if (!qword_100268F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F68);
  }

  return result;
}

unint64_t sub_10007B2A4()
{
  result = qword_100268F70;
  if (!qword_100268F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F70);
  }

  return result;
}

unint64_t sub_10007B2FC()
{
  result = qword_100268F78;
  if (!qword_100268F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F78);
  }

  return result;
}

unint64_t sub_10007B354()
{
  result = qword_100268F80;
  if (!qword_100268F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268F80);
  }

  return result;
}

uint64_t sub_10007B9A4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10007B9EC()
{
  result = qword_100269048;
  if (!qword_100269048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269048);
  }

  return result;
}

unint64_t sub_10007BA40()
{
  result = qword_100269050;
  if (!qword_100269050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269050);
  }

  return result;
}

unint64_t sub_10007BB44()
{
  result = qword_100269098;
  if (!qword_100269098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269098);
  }

  return result;
}

unint64_t sub_10007BB98()
{
  result = qword_1002690A8;
  if (!qword_1002690A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690A8);
  }

  return result;
}

unint64_t sub_10007BBEC()
{
  result = qword_1002690B8;
  if (!qword_1002690B8)
  {
    sub_10007BC70(&qword_1002690B0, &qword_1001E4F70);
    sub_10007BCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690B8);
  }

  return result;
}

uint64_t sub_10007BC70(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10007BCB8()
{
  result = qword_1002690C0;
  if (!qword_1002690C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690C0);
  }

  return result;
}

unint64_t sub_10007BD0C()
{
  result = qword_1002690D0;
  if (!qword_1002690D0)
  {
    sub_10007BC70(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690D0);
  }

  return result;
}

unint64_t sub_10007BD90()
{
  result = qword_1002690D8;
  if (!qword_1002690D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690D8);
  }

  return result;
}

unint64_t sub_10007BDE4()
{
  result = qword_1002690E0;
  if (!qword_1002690E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690E0);
  }

  return result;
}

unint64_t sub_10007BE38()
{
  result = qword_1002690F0;
  if (!qword_1002690F0)
  {
    sub_10007BC70(&qword_1002690B0, &qword_1001E4F70);
    sub_10007BEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690F0);
  }

  return result;
}

unint64_t sub_10007BEBC()
{
  result = qword_1002690F8;
  if (!qword_1002690F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002690F8);
  }

  return result;
}

unint64_t sub_10007BF10()
{
  result = qword_100269100;
  if (!qword_100269100)
  {
    sub_10007BC70(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269100);
  }

  return result;
}

unint64_t sub_10007BF94()
{
  result = qword_100269108;
  if (!qword_100269108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269108);
  }

  return result;
}

unint64_t sub_10007BFE8()
{
  result = qword_100269110;
  if (!qword_100269110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269110);
  }

  return result;
}

unint64_t sub_10007C03C()
{
  result = qword_100269120;
  if (!qword_100269120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269120);
  }

  return result;
}

unint64_t sub_10007C090()
{
  result = qword_100269128;
  if (!qword_100269128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269128);
  }

  return result;
}

unint64_t sub_10007C0E4()
{
  result = qword_100269140;
  if (!qword_100269140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269140);
  }

  return result;
}

unint64_t sub_10007C138()
{
  result = qword_100269148;
  if (!qword_100269148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269148);
  }

  return result;
}

unint64_t sub_10007C1F4()
{
  result = qword_100269158;
  if (!qword_100269158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269158);
  }

  return result;
}

unint64_t sub_10007C248(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_100269130, &qword_1001E4F90);
    v4();
    result = sub_10001D6F8();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10007C2B8()
{
  result = qword_100269168;
  if (!qword_100269168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269168);
  }

  return result;
}

unint64_t sub_10007C30C()
{
  result = qword_100269170;
  if (!qword_100269170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269170);
  }

  return result;
}

unint64_t sub_10007C360()
{
  result = qword_100269180;
  if (!qword_100269180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AMPBag.Definition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10007C44C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AASA.AASAContainer.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AASA.AASAContainer.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AASA.Default(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AASA.Default(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10007C810(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007C850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007C89C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007C8DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007C930()
{
  result = qword_1002691B8;
  if (!qword_1002691B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691B8);
  }

  return result;
}

unint64_t sub_10007C988()
{
  result = qword_1002691C0;
  if (!qword_1002691C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691C0);
  }

  return result;
}

unint64_t sub_10007C9E0()
{
  result = qword_1002691C8;
  if (!qword_1002691C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691C8);
  }

  return result;
}

unint64_t sub_10007CA38()
{
  result = qword_1002691D0;
  if (!qword_1002691D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691D0);
  }

  return result;
}

unint64_t sub_10007CA90()
{
  result = qword_1002691D8;
  if (!qword_1002691D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691D8);
  }

  return result;
}

unint64_t sub_10007CBC0()
{
  result = qword_1002691F8;
  if (!qword_1002691F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002691F8);
  }

  return result;
}

unint64_t sub_10007CD80()
{
  result = qword_100269230;
  if (!qword_100269230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269230);
  }

  return result;
}

unint64_t sub_10007CDD8()
{
  result = qword_100269238;
  if (!qword_100269238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269238);
  }

  return result;
}

unint64_t sub_10007CE30()
{
  result = qword_100269240;
  if (!qword_100269240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269240);
  }

  return result;
}

unint64_t sub_10007CE88()
{
  result = qword_100269248;
  if (!qword_100269248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269248);
  }

  return result;
}

unint64_t sub_10007CEE0()
{
  result = qword_100269250;
  if (!qword_100269250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269250);
  }

  return result;
}

unint64_t sub_10007CF38()
{
  result = qword_100269258;
  if (!qword_100269258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269258);
  }

  return result;
}

void sub_10007D0C0(uint64_t a1, unint64_t *a2)
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