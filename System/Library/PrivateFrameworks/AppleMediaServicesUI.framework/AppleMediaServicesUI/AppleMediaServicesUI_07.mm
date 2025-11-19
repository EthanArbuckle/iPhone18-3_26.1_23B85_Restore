uint64_t sub_1000A7698(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(55);
  v4._countAndFlagsBits = 0x5420455441455243;
  v4._object = 0xED000020454C4241;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v7);
  v8._object = 0x80000001001F4F20;
  v8._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_100002F08();
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x202C4C41455220;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_1000073D0();
  v11._object = 0xE600000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x29424F4C4220;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v13, &_swiftEmptyArrayStorage);
}

uint64_t sub_1000A77EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  _StringGuts.grow(_:)(39);

  sub_10000B754();
  v31 = v8;
  v32 = v7;
  String.append(_:)(*(v3 + 24));
  v9._countAndFlagsBits = sub_100002FA8(0x570Au);
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x3B3F203D20;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  v12 = v31;
  v13 = v32;
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;
  sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v15 = swift_allocBox();
  v17 = v16;
  v18 = type metadata accessor for ScheduleInfo(0);
  sub_10000A7C0(v17, 1, 1, v18);
  v19 = *(v3 + 16);
  sub_100002FB8();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v15;
  v25 = v19;
  v26 = v12;
  v27 = v13;
  v28 = inited;
  v29 = sub_1000A9488;
  v30 = v20;

  v21 = v33;
  sub_100014A20(sub_10001D7C8, v24);
  if (v21)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();

    sub_10000602C();
    sub_1000A94A8(v17, a3);
  }
}

uint64_t sub_1000A7A10(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - v14;
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = swift_projectBox();
  sub_10003A420(&v48);
  if (v2)
  {
    return 0;
  }

  v42 = v12;
  v43 = v17;
  v41 = v18;
  v44 = v8;
  v45 = v6;
  v19 = v46;
  v20 = v48;
  sub_100041D2C();
  v40 = v20;
  if (*(&v20 + 1) >> 60 != 15)
  {
    v22 = v21;
    v23 = v40;
    sub_10003A5E0(v40, *(&v40 + 1));
    sub_10003A638(6, &v48);
    if (v49)
    {
      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      v24 = swift_dynamicCast();
      sub_10003AE18(v23, *(&v23 + 1));
      if (v24)
      {
        v46 = v47;
        if (v22)
        {
          static Date.now.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v25 = v44;
          (*(v44 + 8))(v15, v7);
          v26 = *(&v40 + 1);
        }

        else
        {
          v26 = *(&v40 + 1);
          v25 = v44;
        }

        v27 = v45;
        v35 = v42;
        v36 = v43;
        Date.init(timeIntervalSinceReferenceDate:)();
        (*(v25 + 16))(v35, v36, v7);
        sub_100041D4C(v46, v35, v27);
        (*(v25 + 8))(v36, v7);
        sub_10003AE18(v23, v26);
        v37 = type metadata accessor for ScheduleInfo(0);
        sub_10000A7C0(v27, 0, 1, v37);
        v38 = v41;
        swift_beginAccess();
        sub_1000A9518(v27, v38);
        return 0;
      }
    }

    else
    {
      sub_10003AE18(v23, *(&v23 + 1));
      sub_100002C5C(&v48);
    }
  }

  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v28 = *(type metadata accessor for LogInterpolation() - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v49 = type metadata accessor for AppSchedulesTable();
  *&v48 = v19;

  v31 = AMSLogKey();
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v48);
  LogInterpolation.init(stringLiteral:)();
  v33 = static os_log_type_t.error.getter();
  sub_1000036B0(v33);
  sub_10003AE18(v40, *(&v40 + 1));

  return 0;
}

uint64_t sub_1000A7F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v44 = v1;
    v4 = sub_10000BDE4();
    sub_100027C2C(v4, v5, v6);
    v7 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    v9 = 2 * v8;
    v10 = v2;
    do
    {
      v42 = v7;
      v11 = v7[3];
      v12 = v8 + 1;
      if (v8 >= v11 >> 1)
      {
        sub_100027C2C((v11 > 1), v8 + 1, 1);
        v7 = v42;
      }

      v7[2] = v12;
      v13 = &v7[v9];
      v13[4] = 63;
      v13[5] = 0xE100000000000000;
      v9 += 2;
      v8 = v12;
      --v10;
    }

    while (v10);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A0698();
    v40._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
    v40._object = v14;

    v42 = _swiftEmptyArrayStorage;
    v15 = sub_10000BDE4();
    sub_10009B7E0(v15, v16, v17);
    v18 = _swiftEmptyArrayStorage;
    v19 = (a1 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v42 = v18;
      v23 = v18[2];
      v22 = v18[3];

      if (v23 >= v22 >> 1)
      {
        sub_10009B7E0((v22 > 1), v23 + 1, 1);
        v18 = v42;
      }

      v18[2] = v23 + 1;
      v24 = &v18[3 * v23];
      v24[4] = v20;
      v24[5] = v21;
      *(v24 + 48) = 3;
      v19 += 2;
      --v2;
    }

    while (v2);
    _StringGuts.grow(_:)(43);

    sub_10000B754();
    v42 = v26;
    v43 = v25;
    v27 = v41;
    String.append(_:)(*(v41 + 24));
    v28._countAndFlagsBits = sub_100002FA8(0x570Au);
    v28._object = 0xE700000000000000;
    String.append(_:)(v28);
    sub_100004B94();
    sub_10000797C();
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0x28204E490ALL;
    v30._object = 0xE500000000000000;
    String.append(_:)(v30);
    String.append(_:)(v40);

    v31._countAndFlagsBits = 15145;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32 = v42;
    v33 = v43;
    v34 = swift_allocObject();
    type metadata accessor for ScheduleInfo(0);
    *(v34 + 16) = Dictionary.init(dictionaryLiteral:)();
    v35 = *(v27 + 16);
    sub_100002FB8();
    v36 = swift_allocObject();
    *(v36 + 16) = v27;
    *(v36 + 24) = v34;
    v39[2] = v35;
    v39[3] = v32;
    v39[4] = v33;
    v39[5] = v18;
    v39[6] = sub_1000A9404;
    v39[7] = __chkstk_darwin(v36);

    v37 = v44;
    sub_100014A20(sub_10001D7C8, v39);
    if (v37)
    {
    }

    else
    {

      sub_10000602C();
      v35 = *(v34 + 16);
    }

    return v35;
  }

  else
  {
    type metadata accessor for ScheduleInfo(0);
    return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t sub_1000A82DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v56 = a2;
  v3 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for ScheduleInfo(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v47 - v18;
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  v22 = v58;
  v23 = sub_10001ADD4();
  if (v22)
  {
    return v21 & 1;
  }

  v50 = v19;
  v51 = v16;
  v48 = v23;
  v49 = v7;
  v58 = v24;
  v54 = v12;
  v55 = v21;
  v52 = v10;
  v53 = v6;
  sub_10003A420(&v60);
  v25 = v60;
  sub_100041D2C();
  v47 = v25;
  if (*(&v25 + 1) >> 60 != 15)
  {
    v28 = v56;
    if (!v58)
    {
      goto LABEL_12;
    }

    v29 = v26;
    v30 = *(&v47 + 1);
    v31 = v47;
    sub_10003A5E0(v47, *(&v47 + 1));
    sub_10003A638(6, &v60);
    if (!v61)
    {
      sub_10003AE18(v31, v30);

      sub_100002C5C(&v60);
      goto LABEL_6;
    }

    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v32 = swift_dynamicCast();
    sub_10003AE18(v31, v30);
    if (v32)
    {
      v56 = v59;
      if (v29)
      {
        v33 = v50;
        static Date.now.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        v34 = v54;
        v35 = v11;
        (*(v54 + 8))(v33, v11);
        v36 = *(&v47 + 1);
      }

      else
      {
        v36 = *(&v47 + 1);
        v35 = v11;
        v34 = v54;
      }

      v21 = v51;
      v44 = v52;
      v45 = v55;
      Date.init(timeIntervalSinceReferenceDate:)();
      (*(v34 + 16))(v21, v45, v35);
      sub_100041D4C(v56, v21, v44);
      v46 = v53;
      sub_1000A9424(v44, v53);
      LOBYTE(v21) = 1;
      sub_10000A7C0(v46, 0, 1, v49);
      swift_beginAccess();
      sub_1000AA330();
      swift_endAccess();
      sub_10003AE18(v47, v36);
      sub_100042144(v44, type metadata accessor for ScheduleInfo);
      (*(v34 + 8))(v55, v35);
      return v21 & 1;
    }
  }

LABEL_6:
  v28 = v56;
LABEL_12:
  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v37 = *(type metadata accessor for LogInterpolation() - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v61 = type metadata accessor for AppSchedulesTable();
  *&v60 = v28;

  v40 = AMSLogKey();
  v41 = v47;
  if (v40)
  {
    v42 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v60);
  LogInterpolation.init(stringLiteral:)();
  v43 = static os_log_type_t.error.getter();
  sub_1000036B0(v43);
  sub_10003AE18(v41, *(&v47 + 1));

  LOBYTE(v21) = 0;
  return v21 & 1;
}

uint64_t sub_1000A88F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _StringGuts.grow(_:)(36);

  v16[8] = 0xD000000000000017;
  v16[9] = 0x80000001001F4F60;
  String.append(_:)(*(v2 + 24));
  v6._countAndFlagsBits = sub_100002FA8(0x570Au);
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x3F2820454B494C0ALL;
  v8._object = 0xEA00000000003B29;
  String.append(_:)(v8);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v11 = *(v2 + 16);
  sub_100002FB8();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = v10;
  v16[2] = v11;
  v16[3] = 0xD000000000000017;
  v16[4] = 0x80000001001F4F60;
  v16[5] = inited;
  v16[6] = sub_1000A93E4;
  v16[7] = v12;

  v13 = v16[19];
  sub_100014A20(sub_100014F50, v16);
  if (v13)
  {

    swift_setDeallocating();
    v14 = inited;
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();

    sub_10000602C();
    v14 = *(v10 + 16);
  }

  return v14;
}

uint64_t sub_1000A8B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001ADD4();
  if (!v3)
  {
    v9 = v7;
    if (v7)
    {
      v10 = v6;
      swift_beginAccess();
      sub_1000EF5A0();
      v11 = *(*(a3 + 16) + 16);
      sub_1000EF6A4(v11);
      v12 = *(a3 + 16);
      *(v12 + 16) = v11 + 1;
      v13 = v12 + 16 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      *(a3 + 16) = v12;
      swift_endAccess();
      v8 = 1;
    }

    else
    {
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v14 = *(type metadata accessor for LogInterpolation() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v21[3] = type metadata accessor for AppSchedulesTable();
      v21[0] = a2;

      v17 = AMSLogKey();
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v21);
      LogInterpolation.init(stringLiteral:)();
      v19 = static os_log_type_t.error.getter();
      sub_1000036B0(v19);

      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_1000A8D54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  _StringGuts.grow(_:)(28);

  sub_1000082CC();
  v13._countAndFlagsBits = v6;
  v13._object = v7;
  String.append(_:)(*(v2 + 24));
  v8._countAndFlagsBits = sub_100002FA8(0x5720u);
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B3F203D20;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;

  SQLDatabase.execute(sql:parameters:)(v13, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1000A8E8C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = sub_10000BDE4();
    sub_100027C2C(v3, v4, v5);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 2 * v6;
    v8 = v1;
    do
    {
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v6 + 1;
      if (v6 >= v9 >> 1)
      {
        sub_100027C2C((v9 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v11 = &_swiftEmptyArrayStorage[v7];
      v11[4] = 63;
      v11[5] = 0xE100000000000000;
      v7 += 2;
      v6 = v10;
      --v8;
    }

    while (v8);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A0698();
    v29._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
    v29._object = v12;

    v13 = sub_10000BDE4();
    sub_10009B7E0(v13, v14, v15);
    v16 = (v2 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];

      if (v20 >= v19 >> 1)
      {
        sub_10009B7E0((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[3 * v20];
      v21[4] = v17;
      v21[5] = v18;
      *(v21 + 48) = 3;
      v16 += 2;
      --v1;
    }

    while (v1);
    v22 = *(v30 + 16);
    _StringGuts.grow(_:)(32);

    sub_1000082CC();
    v31._countAndFlagsBits = v23;
    v31._object = v24;
    String.append(_:)(*(v30 + 24));
    v25._countAndFlagsBits = sub_100002FA8(0x5720u);
    v25._object = 0xE700000000000000;
    String.append(_:)(v25);
    sub_100004B94();
    sub_10000797C();
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0x28204E4920;
    v27._object = 0xE500000000000000;
    String.append(_:)(v27);
    String.append(_:)(v29);

    v28._countAndFlagsBits = 15145;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    SQLDatabase.execute(sql:parameters:)(v31, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000A9108(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_100190A7C();
  sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = 0;
  v6 = [v4 dataWithPropertyList:isa format:100 options:0 error:&v30];

  v7 = v30;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x80000001001F48E0;
    String.append(_:)(v11);
    String.append(_:)(*(v2 + 24));
    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    sub_100004B94();
    sub_10000797C();
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8236;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = sub_1000073D0();
    v15._object = 0xE600000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8236;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = sub_100002F08();
    String.append(_:)(v17);
    v18._object = 0x80000001001F4F40;
    v18._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v18);
    v20 = v30;
    v19 = v31;
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F60;
    v22 = a1 + *(type metadata accessor for ScheduleInfo(0) + 20);
    v23 = (v22 + *(type metadata accessor for ScheduleInfo.Metadata(0) + 44));
    v24 = v23[1];
    *(inited + 32) = *v23;
    *(inited + 40) = v24;
    *(inited + 48) = 3;
    *(inited + 56) = v8;
    *(inited + 64) = v10;
    *(inited + 72) = 0;

    sub_10003A5E0(v8, v10);
    static Date.timeIntervalSinceReferenceDate.getter();
    *(inited + 80) = v25;
    *(inited + 88) = 0;
    *(inited + 96) = 2;
    v26 = *(v2 + 16);
    v27._countAndFlagsBits = v20;
    v27._object = v19;
    SQLDatabase.execute(sql:parameters:)(v27, inited);
    swift_setDeallocating();
    sub_10001CE50();

    return sub_1000253FC(v8, v10);
  }

  else
  {
    v29 = v7;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1000A9424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A94A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A95D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1000A97A0()
{
  sub_1000A95D8();

  return swift_deallocClassInstance();
}

id sub_1000A9854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppURLSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A9890(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for AsyncLazyCache.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1000A994C()
{
  v1 = *v0;

  v2 = *(*v0 + 14);
  v3 = v1[10];
  v4 = type metadata accessor for AsyncLazyCache.State();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_1000A99E0()
{
  sub_1000A994C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000A9A68(uint64_t a1)
{
  sub_1000A9E10();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1000A9AE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 253 - (2u >> (8 * v4));
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1000A9C2C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 <= 3)
  {
    v6 = 253 - (2u >> (8 * v5));
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

void sub_1000A9E10()
{
  if (!qword_10026AD88)
  {
    v0 = sub_1000A9E58();
    if (!v1)
    {
      atomic_store(v0, &qword_10026AD88);
    }
  }
}

unint64_t sub_1000A9E58()
{
  result = qword_10026AD90;
  if (!qword_10026AD90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10026AD90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AsyncLazyCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A9F94()
{
  result = qword_10026AD98;
  if (!qword_10026AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AD98);
  }

  return result;
}

uint64_t sub_1000A9FF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100002C4C(a1, v16);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1000AC178(v16, a2);
    *v2 = v15;
    return sub_10000E1E8(a2);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026D350, &qword_1001E6050);
    sub_1000AB5B4(a2, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    sub_10000E1E8(a2);
    return sub_10000A00C(v16, &qword_10026D350, &qword_1001E6050);
  }
}

void sub_1000AA0C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_10003B104(a1, v39);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    v8 = sub_1000AC288(v6, a2, v7);
    sub_10000A6E0(v8, v9, v10, v11, v12, v13, v14, v15, v35, v37);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026AF58, &qword_1001E86F0);
    v16 = *v2;
    sub_10004C144(a2, sub_100046278, sub_10004C204);
    if (v17)
    {
      sub_100017D08();
      sub_100002FC4();
      v18 = sub_10007B9A4(&unk_10026AF60, &qword_1001E86F8);
      v26 = sub_100023CE0(v18, v19, v20, v21, v22, v23, v24, v25, v35, v37);
      sub_1000115E8(v26, v27, v28, v29, v30, v31, v32, v33, v36, v38);
      sub_10003B104((v34 + 40 * a2), v39);
      sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
      sub_100042038();
      sub_10000A144();
      _NativeDictionary._delete(at:)();
      *v3 = v16;
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    sub_10000A00C(v39, &qword_10026AF58, &qword_1001E86F0);
  }
}

void sub_1000AA20C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100002C4C(a1, v38);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    sub_1000AC71C();
    sub_10000A6E0(v6, v7, v8, v9, v10, v11, v12, v13, v34, v36);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026D350, &qword_1001E6050);
    v14 = *v2;
    sub_10000BDF4();
    sub_10004C144(a2, v15, sub_1000AB020);
    if (v16)
    {
      sub_100017D08();
      sub_100002FC4();
      v17 = sub_10007B9A4(&qword_10026AFB0, &qword_1001E8738);
      v25 = sub_100023CE0(v17, v18, v19, v20, v21, v22, v23, v24, v34, v36);
      sub_1000115E8(v25, v26, v27, v28, v29, v30, v31, v32, v35, v37);
      sub_100002C4C((v33 + 32 * a2), v38);
      sub_1000AE324();
      sub_10000A144();
      _NativeDictionary._delete(at:)();
      *v3 = v14;
    }

    else
    {
      memset(v38, 0, sizeof(v38));
    }

    sub_10000A00C(v38, &qword_10026D350, &qword_1001E6050);
  }
}

void sub_1000AA330()
{
  sub_100008738();
  sub_1000293A8();
  v2 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10001BD5C();
  v5 = type metadata accessor for ScheduleInfo(v4);
  v6 = sub_100002DDC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (sub_100009F34(v0, 1, v9) == 1)
  {
    v10 = sub_1000159D0();
    sub_10000A00C(v10, v11, &qword_1001E8720);
    sub_1000582F4();

    v12 = sub_100002FD8();
    sub_10000A00C(v12, v13, &qword_1001E8720);
  }

  else
  {
    v14 = sub_1000159D0();
    sub_1000AE26C(v14, v15, v16);
    v17 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_10001CCFC();
    sub_1000AC95C(v18, v19, v20, v21);

    *v1 = v22;
  }

  sub_100003B6C();
}

void sub_1000AA4AC()
{
  sub_100008738();
  sub_1000293A8();
  v2 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10001BD5C();
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(v4);
  v6 = sub_100002DDC(updated);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (sub_100009F34(v0, 1, v9) == 1)
  {
    v10 = sub_1000159D0();
    sub_10000A00C(v10, v11, &unk_1001EEAD0);
    sub_1000582F4();

    v12 = sub_100002FD8();
    sub_10000A00C(v12, v13, &unk_1001EEAD0);
  }

  else
  {
    v14 = sub_1000159D0();
    sub_1000AE26C(v14, v15, v16);
    v17 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_10001CCFC();
    sub_1000ACD04(v18, v19, v20, v21);

    *v1 = v22;
  }

  sub_100003B6C();
}

uint64_t sub_1000AA628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_100012A94();
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000AA674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100012A94();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000A864(v3);
}

uint64_t sub_1000AA6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_100012A94(), (v5 & 1) != 0))
  {
    v6 = *(a3 + 56) + 32 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    sub_1000060DC();
    return 1;
  }

  return v8;
}

void *sub_1000AA768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100012A94();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1000AA7B0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for MercuryCacheUpdateCoordinator();
      sub_1000AE384();
      return v7;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1000AACE4(a1);
    if (v6)
    {
      sub_10000A864(v5);
    }
  }

  return 0;
}

void *sub_1000AA84C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10003BBE8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1000AA894(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_10000C818(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_10000A864(v2);
}

uint64_t sub_1000AA8E0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10000C818(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  swift_errorRetain();
  return v5;
}

uint64_t sub_1000AA92C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      sub_10007B9A4(&qword_10026AF18, &qword_1001E86B8);
      sub_1000AE384();
      return v7;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1000AACE4(a1);
    if (v6)
    {
      sub_10000A864(v5);
    }
  }

  return 0;
}

uint64_t sub_1000AA9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_100012A94(), (v5 & 1) != 0))
  {
    v6 = *(a3 + 56) + 24 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
  }

  else
  {
    sub_1000060DC();
  }

  return sub_100005B9C();
}

uint64_t sub_1000AAA44(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1000AAD28(a1), (v3 & 1) != 0))
  {
    sub_100061E4C(v2);
  }

  else
  {
    sub_1000060DC();
  }

  return sub_100005B9C();
}

uint64_t sub_1000AAA84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BadgingNotifier();
  v4 = swift_allocObject();
  sub_1000AD7E8(a1, a2, v4);
}

id sub_1000AAAF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithPayload:isa];

  return v2;
}

unint64_t sub_1000AABA0(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000AADC8(a1, v4);
}

unint64_t sub_1000AABE8()
{
  sub_100003D8C();
  sub_10003D2F8();
  String.hash(into:)();

  sub_100009DBC();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100009DBC();

  return sub_1000AAE28(v0, v1, v2, v3);
}

unint64_t sub_1000AACE4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000AB2EC(a1, v4);
}

unint64_t sub_1000AAD28(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();
  return sub_1000AB3C4(a1, v4);
}

unint64_t sub_1000AAD64(Swift::UInt a1)
{
  sub_10003D2F8();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1000AB3C4(a1, v2);
}

unint64_t sub_1000AADC8(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1000AAE28(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v22 = ~v5;
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      if (*v9)
      {
        if (*v9 == 1)
        {
          v10 = 0xE400000000000000;
          v11 = 1936748641;
        }

        else
        {
          v10 = 0xE700000000000000;
          v11 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v10 = 0xE700000000000000;
        v11 = 0x7373656E746966;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v12 = 1936748641;
        }

        else
        {
          v12 = 0x6E776F6E6B6E75;
        }

        if (a1 == 1)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE700000000000000;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x7373656E746966;
      }

      v15 = *(v9 + 8);
      v14 = *(v9 + 16);
      if (v11 == v12 && v10 == v13)
      {
        v18 = *(v9 + 16);
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {

          goto LABEL_28;
        }
      }

      if (v15 == a2 && v14 == a3)
      {

        return v6;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        return v6;
      }

LABEL_28:
      v6 = (v6 + 1) & v22;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000AB020(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000073;
      v8 = 0x79654B6863746162;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x79654B6568636163;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x64657461657263;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x73657269707865;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v8 = 0x617461646174656DLL;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1752457584;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x6574617473;
          break;
        case 7:
          v8 = 0x6E6564496B736174;
          v7 = 0xEE00726569666974;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6973726576;
          break;
        default:
          break;
      }

      v9 = 0x79654B6863746162;
      v10 = 0xE900000000000073;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x79654B6568636163;
          break;
        case 2:
          v10 = 0xE700000000000000;
          v9 = 0x64657461657263;
          break;
        case 3:
          v10 = 0xE700000000000000;
          v9 = 0x73657269707865;
          break;
        case 4:
          v10 = 0xE800000000000000;
          v9 = 0x617461646174656DLL;
          break;
        case 5:
          v10 = 0xE400000000000000;
          v9 = 1752457584;
          break;
        case 6:
          v10 = 0xE500000000000000;
          v9 = 0x6574617473;
          break;
        case 7:
          v9 = 0x6E6564496B736174;
          v10 = 0xEE00726569666974;
          break;
        case 8:
          v10 = 0xE700000000000000;
          v9 = 0x6E6F6973726576;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1000AB2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000AB3C4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1000AB4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100048F78();
  v11 = v10;
  v13 = v12;
  v14 = *v10;
  v15 = sub_100012A94();
  if (v16)
  {
    v17 = v15;
    v18 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v21 = *(v20 + 24);
    sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21);
    v22 = *(*(a10 + 48) + 16 * v17 + 8);

    sub_100002C4C((*(a10 + 56) + 32 * v17), v13);
    _NativeDictionary._delete(at:)();
    *v11 = a10;
  }

  else
  {
    *v13 = 0u;
    v13[1] = 0u;
  }

  sub_100003F14();
}

void sub_1000AB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100048F78();
  v12 = v10;
  v14 = v13;
  v15 = *v10;
  sub_10000C818(v16);
  if (v17)
  {
    v18 = sub_100017D08();
    sub_10000AB58();
    v20 = *(v19 + 24);
    sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v18, v20);
    sub_10000E1E8(*(a10 + 48) + 40 * v11);
    sub_100002C4C((*(a10 + 56) + 32 * v11), v14);
    sub_10000A144();
    _NativeDictionary._delete(at:)();
    *v12 = a10;
  }

  else
  {
    *v14 = 0u;
    v14[1] = 0u;
  }

  sub_100003F14();
}

unint64_t sub_1000AB6A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  result = sub_100012A94();
  v7 = v6;
  if (v6)
  {
    v8 = result;
    v9 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v11 = *(*v2 + 24);
    sub_10007B9A4(&qword_10026AE98, &qword_1001E8648);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    v12 = *(*(v13 + 48) + 16 * v8 + 8);

    sub_100040DAC(*(v13 + 56) + 8 * v8, a1);
    sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
    result = _NativeDictionary._delete(at:)();
    *v2 = v13;
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t sub_1000AB8EC()
{
  sub_10001CB6C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = v10;
  v12 = *v0;
  v13 = sub_100012A94();
  if (v14)
  {
    v15 = v13;
    v16 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v9;
    v18 = *(*v9 + 24);
    sub_10007B9A4(v8, v6);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18);
    v19 = *(*(v29 + 48) + 16 * v15 + 8);

    v20 = *(v29 + 56);
    v21 = v4(0);
    sub_100002DDC(v21);
    sub_1000AE26C(v20 + *(v22 + 72) * v15, v11, v2);
    _NativeDictionary._delete(at:)();
    *v9 = v29;
  }

  else
  {
    v4(0);
    sub_10000E6B0();
  }

  sub_100006778();

  return sub_10000A7C0(v23, v24, v25, v26);
}

void sub_1000ABA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100016794();
  v16 = v15;
  v17 = v10;
  v18 = *v10;
  if ((*v10 & 0xC000000000000001) == 0)
  {
    v29 = v13;
    v30 = v12;
    v31 = *v10;
    v32 = sub_1000AACE4(v11);
    if ((v33 & 1) == 0)
    {
LABEL_11:
      sub_100012F1C();
      return;
    }

    v34 = v32;
    v35 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v38 = *(v37 + 24);
    sub_10007B9A4(v30, v29);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38);
    v24 = a10;

    v39 = *(*(a10 + 56) + 8 * v34);
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v16(0);
    sub_1000AE204();
    sub_1000048BC();
    _NativeDictionary._delete(at:)();
LABEL_10:
    *v17 = v24;
    goto LABEL_11;
  }

  v19 = v14;
  if (v18 < 0)
  {
    v20 = *v10;
  }

  else
  {
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = v11;
  v22 = __CocoaDictionary.lookup(_:)();

  if (!v22)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  v23 = __CocoaDictionary.count.getter();
  v24 = v19(v20, v23);

  v25 = sub_1000AACE4(v21);
  v27 = v26;

  if (v27)
  {

    v28 = *(*(v24 + 56) + 8 * v25);
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v16(0);
    sub_1000AE204();
    _NativeDictionary._delete(at:)();

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1000ABF90()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_100012A94();
  sub_100006AF8(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_10007B9A4(&qword_10026AF80, &qword_1001E8710);
  if (sub_100008FAC())
  {
    v18 = *v1;
    sub_100012A94();
    sub_10000A978();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v1;
  if (v17)
  {
    v22 = (*(v21 + 56) + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    sub_100005F14();
  }

  else
  {
    sub_1000AD2D4(v16, v5, v3, v9, v7, v21);
    sub_100005F14();
  }
}

void sub_1000AC0A8()
{
  sub_100008738();
  v2 = sub_100005068();
  sub_100006AF8(v2, v3);
  if (v4)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_100269800, &qword_1001E62A8);
  v5 = sub_1000082EC();
  v7 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v5, v6);
  if (v7)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v7, v8, v9, v10, *v0);
    sub_100003B6C();
  }

  else
  {
    v14 = sub_100007988();
    sub_1000112BC(v14, v15, v16, v17, v18);
    sub_100003B6C();
  }
}

void sub_1000AC178(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v6 = sub_100015B98(a1, a2);
  v7 = sub_10000C818(v6);
  sub_100006AF8(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
  v14 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    v16 = *v3;
    sub_10000C818(v4);
    sub_100007450();
    if (!v18)
    {
      goto LABEL_12;
    }

    v12 = v17;
  }

  v19 = *v5;
  if (v13)
  {
    sub_100002C00((*(v19 + 56) + 32 * v12));
    v20 = sub_100005B9C();

    sub_100002C4C(v20, v21);
  }

  else
  {
    sub_10000DF68(v4, v22);
    sub_1000AD320(v12, v22, v2, v19);
  }
}

uint64_t sub_1000AC288(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10004C144(a2, sub_100046278, sub_10004C204);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_10007B9A4(&unk_10026AF60, &qword_1001E86F8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_10004C144(a2, sub_100046278, sub_10004C204);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v14);
    sub_100002C00(v20);

    return sub_10003B104(a1, v20);
  }

  else
  {

    return sub_1000AD388(v14, a2, a1, v19);
  }
}

uint64_t sub_1000AC40C()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1000AABE8();
  sub_100006AF8(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_10007B9A4(&unk_10026AFC0, &unk_1001E8740);
  if (sub_100008FAC())
  {
    v18 = *v1;
    sub_1000AABE8();
    sub_10000A978();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v1;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = v9;
    sub_100005F14();
  }

  else
  {
    sub_1000AD3F4(v16, v7, v5, v3, v9, v21);
    sub_100005F14();
  }
}

void sub_1000AC528()
{
  sub_100008738();
  v4 = sub_100005068();
  sub_100006AF8(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_10026AE68, &qword_1001E8618);
  v7 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v7, v8))
  {
    sub_1000119F0();
    sub_100007450();
    if (!v10)
    {
      goto LABEL_12;
    }

    v3 = v9;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_100003B6C();
  }

  else
  {
    v11 = sub_100007988();
    sub_1000112BC(v11, v12, v13, v14, v15);
    sub_100003B6C();
  }
}

uint64_t sub_1000AC5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008738();
  v11 = v10;
  v13 = v12;
  v14 = sub_1000048A0();
  sub_100006AF8(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  sub_10007B9A4(&unk_10026AE80, &unk_1001E8630);
  v21 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v21, v22))
  {
    v23 = *v10;
    sub_10000821C();
    sub_100012A94();
    sub_10000A978();
    if (!v25)
    {
      goto LABEL_14;
    }

    v19 = v24;
  }

  if (v20)
  {
    v26 = *(*v11 + 56);
    v27 = type metadata accessor for Date();
    sub_100002DDC(v27);
    v29 = *(v28 + 40);
    v30 = v26 + *(v28 + 72) * v19;
    sub_100003B6C();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }

  else
  {
    sub_100009DBC();
    sub_1000AD444(v40, v41, v42, v13, v43);
    sub_100003B6C();
  }
}

void sub_1000AC71C()
{
  sub_100008738();
  sub_10000C334();
  sub_10000BDF4();
  v3 = sub_10004C144(v0, v2, sub_1000AB020);
  sub_100006AF8(v3, v4);
  if (v7)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  sub_10007B9A4(&qword_10026AFB0, &qword_1001E8738);
  v10 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    v12 = *v1;
    sub_10000BDF4();
    sub_10004C144(v0, v13, sub_1000AB020);
    sub_100007460();
    if (!v15)
    {
      goto LABEL_14;
    }

    v8 = v14;
  }

  if (v9)
  {
    sub_100002C00((*(*v1 + 56) + 32 * v8));
    sub_100005B9C();
    sub_100003B6C();

    sub_100002C4C(v16, v17);
  }

  else
  {
    sub_100003B6C();

    sub_1000AD4F4(v19, v20, v21, v22);
  }
}

unint64_t sub_1000AC840()
{
  sub_100008738();
  sub_10000C334();
  v4 = sub_10003BBE8(v3);
  sub_100006AF8(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_10007B9A4(&qword_10026AFA8, &qword_1001E8730);
  v11 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    v13 = *v2;
    sub_10003BBE8(v1);
    sub_100007450();
    if (!v15)
    {
      goto LABEL_14;
    }

    v9 = v14;
  }

  if (v10)
  {
    v16 = *(*v2 + 56) + 56 * v9;
    v17 = *v16;
    v18 = *(v16 + 40);
    v19 = *(v16 + 48);
    v20 = *(v0 + 16);
    *v16 = *v0;
    *(v16 + 16) = v20;
    *(v16 + 32) = *(v0 + 32);
    *(v16 + 48) = *(v0 + 48);

    sub_100003B6C();
  }

  else
  {
    sub_100003B6C();

    return sub_1000AD548(v23, v24, v25, v26);
  }
}

uint64_t sub_1000AC95C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100012A94();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_10007B9A4(&qword_10026AFA0, &qword_1001E8728);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100012A94();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = type metadata accessor for ScheduleInfo(0);
    return sub_1000AE2C8(a1, v22 + *(*(v23 - 8) + 72) * v16, type metadata accessor for ScheduleInfo);
  }

  else
  {
    sub_1000AD644(v16, a2, a3, a1, v21, type metadata accessor for ScheduleInfo, type metadata accessor for ScheduleInfo);
  }
}

id sub_1000ACB0C()
{
  sub_100048F78();
  sub_100007F20(v2, v3);
  sub_100049F1C();
  sub_100006AF8(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for AMSBagKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_10007B9A4(&qword_10026AF00, &qword_1001E86A8);
  if (sub_10000B1B4())
  {
    v11 = *v1;
    sub_100049F1C();
    sub_100007460();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  if (v10)
  {
    v14 = *(*v1 + 56);
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = v0;
    sub_100003F14();

    return swift_unknownObjectRelease();
  }

  else
  {
    v18 = sub_100017F28();
    sub_1000AD5A8(v18, v19, v20, v21);
    sub_100003F14();

    return v22;
  }
}

void sub_1000ACC1C()
{
  sub_100048F78();
  sub_100007F20(v2, v3);
  sub_100049F1C();
  sub_100006AF8(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for Name(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  sub_10007B9A4(&qword_10026AEF0, &qword_1001E8698);
  if (sub_10000B1B4())
  {
    v11 = *v1;
    sub_100049F1C();
    sub_100007460();
    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = v12;
  }

  if (v10)
  {
    sub_100050008(v0, *(*v1 + 56) + 40 * v9, &qword_10026AEF8, &qword_1001E86A0);
    sub_100003F14();
  }

  else
  {
    v14 = sub_100017F28();
    sub_1000AD5EC(v14, v15, v16, v17);
    sub_100003F14();

    v20 = v18;
  }
}

uint64_t sub_1000ACD04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100012A94();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_10007B9A4(&qword_10026AF48, &unk_1001E86E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100012A94();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
    return sub_1000AE2C8(a1, v22 + *(*(updated - 8) + 72) * v16, type metadata accessor for MercuryCacheUpdateData.DataKind);
  }

  else
  {
    sub_1000AD644(v16, a2, a3, a1, v21, type metadata accessor for MercuryCacheUpdateData.DataKind, type metadata accessor for MercuryCacheUpdateData.DataKind);
  }
}

id sub_1000ACEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100016794();
  v13 = v12;
  v15 = v14;
  v18 = sub_100007F20(v16, v17);
  v19 = sub_1000AACE4(v18);
  sub_100006AF8(v19, v20);
  if (v23)
  {
    __break(1u);
LABEL_14:
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = v21;
  v25 = v22;
  sub_10007B9A4(v15, v13);
  if (sub_10000B1B4())
  {
    v26 = *v11;
    sub_1000AACE4(a10);
    sub_100007460();
    if (!v28)
    {
      goto LABEL_14;
    }

    v24 = v27;
  }

  if (v25)
  {
    v29 = *(*v11 + 56);
    v30 = *(v29 + 8 * v24);
    *(v29 + 8 * v24) = v10;
    sub_100012F1C();
  }

  else
  {
    v33 = sub_100017F28();
    sub_1000AD6C8(v33, v34, v35, v36);
    sub_100012F1C();

    return v37;
  }
}

void sub_1000ACFA4()
{
  sub_100008738();
  v3 = v1;
  v6 = sub_100015B98(v4, v5);
  v7 = sub_1000AAD64(v6);
  sub_100006AF8(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for AMSSubscriptionEntitlementsMediaType(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_10007B9A4(&qword_10026AEE8, &qword_1001E8690);
  v14 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    v16 = *v1;
    sub_1000AAD64(v2);
    sub_100007460();
    if (!v18)
    {
      goto LABEL_14;
    }

    v12 = v17;
  }

  if (v13)
  {
    v19 = *(*v3 + 56);
    v20 = *(v19 + 8 * v12);
    *(v19 + 8 * v12) = v0;
    sub_100003B6C();
  }

  else
  {
    sub_100003B6C();

    sub_1000AD5A8(v23, v24, v25, v26);
  }
}

void sub_1000AD0A4()
{
  sub_100008738();
  sub_10000C334();
  v4 = sub_10003BBE8(v3);
  sub_100006AF8(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  sub_10007B9A4(&qword_10026AEB0, &qword_1001E8660);
  v11 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    v13 = *v2;
    sub_10003BBE8(v1);
    sub_100007460();
    if (!v15)
    {
      goto LABEL_14;
    }

    v9 = v14;
  }

  if (v10)
  {
    v16 = *(*v2 + 56);
    v17 = *(v16 + 8 * v9);
    *(v16 + 8 * v9) = v0;
    sub_100003B6C();
  }

  else
  {
    sub_100003B6C();

    sub_1000AD70C(v20, v21, v22, v23);
  }
}

void sub_1000AD1C0()
{
  sub_10001CB6C();
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v0;
  v16 = v6(v11);
  sub_100006AF8(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v18;
  v22 = v19;
  sub_10007B9A4(v5, v3);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v10 & 1, v15))
  {
    goto LABEL_5;
  }

  v23 = *v8;
  v24 = v7(v12);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v21 = v24;
LABEL_5:
  if (v22)
  {
    v26 = (*(*v8 + 56) + 16 * v21);
    v27 = v26[1];
    *v26 = v14;
    v26[1] = v33;
    sub_100006778();
  }

  else
  {
    sub_100009DBC();
    sub_1000AD7A4(v29, v30, v31, v33, v32);
    sub_100006778();
  }
}

uint64_t sub_1000AD2D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_100019BA4(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_1000AD320(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100019BA4(a1, a4 + 8 * (a1 >> 6));
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  sub_100002C4C(v10, (*(v6 + 56) + 32 * v5));
  sub_10000DD0C();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

uint64_t sub_1000AD388(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_10003B104(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000AD3F4(unint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1000AD444(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1000AD4F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100019BA4(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + v5) = v7;
  sub_100002C4C(v8, (*(v6 + 56) + 32 * v5));
  sub_10000DD0C();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1000AD548(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 56 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = *(a3 + 48);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000AD5A8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1000AD5EC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_1000AD644(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_10000B768(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1000AE26C(a4, v12 + *(*(v14 - 8) + 72) * a1, a7);
  sub_10000DD0C();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }
}

uint64_t sub_1000AD6C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100019BA4(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

unint64_t sub_1000AD70C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1000AD750(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_100019BA4(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

void sub_1000AD7A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100019BA4(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_100007178(v6, v13);
  }
}

uint64_t sub_1000AD7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for BadgingNotifier();
  v36 = &off_100247E20;
  v34[0] = a3;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *&v29[0] = 0x6369706F74;
  *(&v29[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v30, a1, &v32);
  sub_10000E1E8(&v30);
  if (v33)
  {
    if (swift_dynamicCast())
    {
      v7 = v29[0];
      strcpy(v29, "badgeID");
      *(&v29[0] + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v30, a1, &v32);
      sub_10000E1E8(&v30);
      if (v33)
      {
        if (swift_dynamicCast())
        {
          v27 = *(&v29[0] + 1);
          v28 = *&v29[0];
          *&v32 = 0x64656C62616E65;
          *(&v32 + 1) = 0xE700000000000000;
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(&v30, a1, &v32);
          sub_10000E1E8(&v30);
          if (v33)
          {
            if (swift_dynamicCast())
            {
              v8 = v29[0];
LABEL_20:
              sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
              v14 = swift_allocObject();
              *(v14 + 16) = xmmword_1001E5F70;
              v30 = 0x64496567646162;
              v31 = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              *(v14 + 96) = &type metadata for String;
              *(v14 + 72) = v28;
              *(v14 + 80) = v27;
              v30 = 0x64656C62616E65;
              v31 = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              *(v14 + 168) = &type metadata for Bool;
              *(v14 + 144) = v8;
              v15 = Dictionary.init(dictionaryLiteral:)();
              *&v29[0] = 0xD000000000000012;
              *(&v29[0] + 1) = 0x80000001001F5200;
              AnyHashable.init<A>(_:)();
              sub_10000E0C8(&v30, a1, &v32);
              sub_10000E1E8(&v30);
              if (v33)
              {
                v16 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
                if (swift_dynamicCast())
                {
                  *&v32 = 0xD000000000000012;
                  *(&v32 + 1) = 0x80000001001F5200;
                  AnyHashable.init<A>(_:)();
                  v33 = v16;
                  *&v32 = *&v29[0];
                  sub_100002C4C(&v32, v29);
                  swift_isUniquelyReferenced_nonNull_native();
                  sub_1000AC178(v29, &v30);
                  sub_10000E1E8(&v30);
                }
              }

              else
              {
                sub_10000A00C(&v32, &qword_10026D350, &qword_1001E6050);
              }

              strcpy(v29, "metricsEvent");
              BYTE13(v29[0]) = 0;
              HIWORD(v29[0]) = -5120;
              AnyHashable.init<A>(_:)();
              sub_10000E0C8(&v30, a1, &v32);
              sub_10000E1E8(&v30);
              if (v33)
              {
                v17 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
                if (swift_dynamicCast())
                {
                  v18 = *&v29[0];
                  *&v32 = 0x7363697274656DLL;
                  *(&v32 + 1) = 0xE700000000000000;
                  AnyHashable.init<A>(_:)();
                  v33 = v17;
                  *&v32 = v18;
                  sub_100002C4C(&v32, v29);
                  swift_isUniquelyReferenced_nonNull_native();
                  sub_1000AC178(v29, &v30);
                  sub_10000E1E8(&v30);
                }
              }

              else
              {
                sub_10000A00C(&v32, &qword_10026D350, &qword_1001E6050);
              }

              v19 = swift_allocObject();
              *(v19 + 16) = xmmword_1001E5F60;
              v30 = 49;
              v31 = 0xE100000000000000;
              AnyHashable.init<A>(_:)();
              *(v19 + 96) = &type metadata for Int;
              *(v19 + 72) = 35;
              v30 = 50;
              v31 = 0xE100000000000000;
              AnyHashable.init<A>(_:)();
              *(v19 + 168) = &type metadata for String;
              *(v19 + 144) = v7;
              v30 = 7565409;
              v31 = 0xE300000000000000;
              AnyHashable.init<A>(_:)();
              *(v19 + 240) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
              *(v19 + 216) = v15;
              Dictionary.init(dictionaryLiteral:)();
              sub_100002BC0(0, &qword_10026AE58, AMSPushPayload_ptr);
              v20 = sub_1000AAAF0();
              v21 = *sub_100003CA8(v34, v35);
              v22 = sub_1000AE3A4(v20);
              sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
              v23 = *(type metadata accessor for LogInterpolation() - 8);
              v24 = *(v23 + 72);
              v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
              *(swift_allocObject() + 16) = xmmword_1001E5F70;
              type metadata accessor for BadgingAction();
              static LogInterpolation.prefix<A>(_:_:)();

              if (v22)
              {
                LogInterpolation.init(stringLiteral:)();
                if (qword_1002686B0 != -1)
                {
                  swift_once();
                }

                v26 = static os_log_type_t.default.getter();
              }

              else
              {
                LogInterpolation.init(stringLiteral:)();
                if (qword_1002686B0 != -1)
                {
                  swift_once();
                }

                v26 = static os_log_type_t.error.getter();
              }

              sub_1000036B0(v26);

              return sub_100002C00(v34);
            }
          }

          else
          {
            sub_10000A00C(&v32, &qword_10026D350, &qword_1001E6050);
          }

          v8 = 1;
          goto LABEL_20;
        }
      }

      else
      {

        sub_10000A00C(&v32, &qword_10026D350, &qword_1001E6050);
      }
    }
  }

  else
  {
    sub_10000A00C(&v32, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  type metadata accessor for BadgingAction();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12);

  return sub_100002C00(v34);
}

unint64_t sub_1000AE204()
{
  result = qword_10026AF20;
  if (!qword_10026AF20)
  {
    sub_100002BC0(255, &qword_10026AF10, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AF20);
  }

  return result;
}

uint64_t sub_1000AE26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100002DDC(v4);
  v6 = *(v5 + 32);
  v7 = sub_100005B9C();
  v8(v7);
  return a2;
}

uint64_t sub_1000AE2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100002DDC(v4);
  v6 = *(v5 + 40);
  v7 = sub_100005B9C();
  v8(v7);
  return a2;
}

unint64_t sub_1000AE324()
{
  result = qword_10026AFB8;
  if (!qword_10026AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AFB8);
  }

  return result;
}

uint64_t sub_1000AE384()
{

  return swift_dynamicCast();
}

void sub_1000AE68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = String._bridgeToObjectiveC()();
  sub_1000AE748(v5, 0, a3, 1, v4);
}

void sub_1000AE748(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [a5 postNotificationName:a1 object:a2 userInfo:isa deliverImmediately:a4 & 1];
}

uint64_t sub_1000AE7E4(void *a1)
{
  v1 = [a1 clientIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000AF20C()
{
  result = qword_10026AF10;
  if (!qword_10026AF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026AF10);
  }

  return result;
}

id sub_1000AF250()
{
  result = [objc_allocWithZone(NSLock) init];
  qword_10026B1E8 = result;
  return result;
}

id sub_1000AF284(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  if (qword_100268620 != -1)
  {
    swift_once();
  }

  v51 = qword_10026B1E8;
  [qword_10026B1E8 lock];
  if (byte_10026B1E0)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v18 = *(v17 + 72);
    sub_100006B28();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for CarrierOfferRegistrationAction();
    static LogInterpolation.prefix<A>(_:_:)();

    sub_100004B44();
    v55 = &type metadata for String;
    aBlock = 0xD000000000000018;
    v53 = v19;
LABEL_17:
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v37 = static os_log_type_t.default.getter();
    sub_1000036B0(v37);

    return [v51 unlock];
  }

  v49 = v13;
  v50 = v1;
  v20 = [objc_opt_self() ams_sharedAccountStore];
  v21 = [v20 ams_activeiTunesAccount];

  if (!v21)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v33 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v33);
    v35 = *(v34 + 72);
    sub_100006B28();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    type metadata accessor for CarrierOfferRegistrationAction();
    sub_10000BE28();

    sub_100004B44();
    v55 = &type metadata for String;
    aBlock = 0xD000000000000022;
    v53 = v36;
    goto LABEL_17;
  }

  sub_100004B44();
  *&v58 = -2.31584178e77;
  v59 = v22;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&aBlock, a1, &v60);
  sub_10000E1E8(&aBlock);
  if (v61)
  {
    if (swift_dynamicCast())
    {
      v23 = *&v58;
      v24 = [objc_opt_self() lastCarrierOfferRegistrationDate];
      if (v24)
      {
        v25 = v24;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 32))(v10, v8, v3);
        Date.timeIntervalSinceNow.getter();
        v27 = v26;
        (*(v4 + 8))(v10, v3);
        if (v23 > -v27)
        {
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v28 = type metadata accessor for LogInterpolation();
          sub_100002CFC(v28);
          v30 = *(v29 + 72);
          sub_100006B28();
          *(swift_allocObject() + 16) = xmmword_1001E5F70;
          type metadata accessor for CarrierOfferRegistrationAction();
          sub_10000BE28();

          sub_100004B44();
          v55 = &type metadata for String;
          aBlock = 0xD000000000000027;
          v53 = v31;
          static LogInterpolation.safe(_:)();
          sub_100002C5C(&aBlock);
          if (qword_1002686B0 != -1)
          {
            sub_100002D44();
          }

          v32 = static os_log_type_t.default.getter();
          sub_1000036B0(v32);

          return [v51 unlock];
        }
      }
    }
  }

  else
  {
    sub_100002C5C(&v60);
  }

  result = [objc_opt_self() createBagForSubProfile];
  if (result)
  {
    v39 = result;
    v40 = objc_allocWithZone(AMSCarrierOfferRegistrationTask);
    v41 = v21;
    v42 = [v40 initWithAccount:v41 bag:v39];

    v44 = v49;
    v43 = v50;
    if (qword_100268830 != -1)
    {
      swift_once();
    }

    sub_100011C54(0xD00000000000001ELL, 0x80000001001E87F0);
    byte_10026B1E0 = 1;
    v45 = [v42 perform];
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = v44;
    v46[4] = v15;
    v56 = sub_1000B0258;
    v57 = v46;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100099934;
    v55 = &unk_100247E88;
    v47 = _Block_copy(&aBlock);

    [v45 addFinishBlock:v47];

    _Block_release(v47);
    return [v51 unlock];
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF9C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v33);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017A08();
  (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  v20 = swift_allocObject();
  v22 = v28;
  v21 = v29;
  v20[2] = v28;
  v20[3] = v21;
  v23 = v32;
  v20[4] = v31;
  v20[5] = v23;
  v20[6] = v30;
  aBlock[4] = sub_1000B0264;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100247ED8;
  v24 = _Block_copy(aBlock);
  v25 = v22;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v33);
}

uint64_t sub_1000AFD2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = a1;
    v12 = [v32 BOOLValue];
    v13 = 0xD000000000000016;
    if (v12)
    {
      v13 = 0xD000000000000011;
    }

    v31 = v13;
    if (v12)
    {
      v14 = "Action complete - ";
    }

    else
    {
      v14 = "Action already in flight";
    }

    v15 = v14 | 0x8000000000000000;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = *(type metadata accessor for LogInterpolation() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    type metadata accessor for CarrierOfferRegistrationAction();
    static LogInterpolation.prefix<A>(_:_:)();
    v37 = &type metadata for String;
    v35 = 0xD000000000000012;
    v36 = 0x80000001001F54C0;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v35);
    v37 = &type metadata for String;
    v35 = v31;
    v36 = v15;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v35);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v19 = static os_log_type_t.default.getter();
    sub_1000036B0(v19);

    v20 = objc_opt_self();
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v11, v7);
    [v20 setLastCarrierOfferRegistrationDate:isa];
  }

  else if (a5)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v22 = *(type metadata accessor for LogInterpolation() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    swift_errorRetain();
    type metadata accessor for CarrierOfferRegistrationAction();
    static LogInterpolation.prefix<A>(_:_:)();
    swift_getErrorValue();
    v25 = v33;
    v26 = v34;
    v37 = v34;
    v27 = sub_100017E64(&v35);
    (*(*(v26 - 1) + 16))(v27, v25, v26);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v35);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v28 = static os_log_type_t.error.getter();
    sub_1000036B0(v28);
  }

  if (qword_100268620 != -1)
  {
    swift_once();
  }

  v29 = qword_10026B1E8;
  [qword_10026B1E8 lock];
  byte_10026B1E0 = 0;
  [v29 unlock];
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  return sub_1001AE448(0xD00000000000001ELL, 0x80000001001E87F0);
}

id sub_1000B02B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CascadeBag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B04AC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag) expirationDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return sub_10000A7C0(a1, v5, 1, v6);
}

id sub_1000B054C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_1000B05BC(a3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1000B05BC(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag) *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000B061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] arrayForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248158;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:0 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_1000B07BC()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000B08E0;
  v2 = swift_continuation_init();
  v0[17] = sub_10007B9A4(&qword_10026B2D0, &qword_1001E8878);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000B0A78;
  v0[13] = &unk_1002480B8;
  v0[14] = v2;
  v3 = sub_10000B7B8();
  [v3 v4];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000B08E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1000B0A0C;
  }

  else
  {
    v3 = sub_1000B09F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B0A0C()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t *sub_1000B0A78(uint64_t a1, void *a2, void *a3)
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1000F115C(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_100049004(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B0B84(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B0C2C;

  return sub_1000B079C();
}

uint64_t sub_1000B0C2C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

void sub_1000B0DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] doubleForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248068;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:2 valuePromise:v22];
  sub_100007470();
}

void sub_1000B0F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] integerForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248018;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:3 valuePromise:v22];
  sub_100007470();
}

void sub_1000B10CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] URLForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100247F78;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:5 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_1000B12DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000B1388;

  return sub_1000B0B84(v2, v3);
}

uint64_t sub_1000B1388()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000B14D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000C49F8(a1);

  sub_1000AA73C(0, v4, &v165);
  v13 = &type metadata for Any;
  if (v167)
  {
    sub_1000050B0(v5, v6, v7, v8, v9, v10, v11, v12, v140, v145, v149, v153, v157);
    if (swift_dynamicCast())
    {
      v14 = v157;
      v15 = v161;
      v170 = &type metadata for String;
      if (v161)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_100002C5C(&v165);
  }

  v170 = &type metadata for String;
LABEL_7:
  v14 = 0;
  v15 = 0xE000000000000000;
LABEL_8:
  *&v168 = v14;
  *(&v168 + 1) = v15;
  v16 = sub_1000B21E8(&v168);
  if (v2)
  {

    return sub_100002C5C(&v168);
  }

  v19 = v16;
  v20 = v17;
  sub_100002C5C(&v168);
  *&v168 = v19;
  *(&v168 + 1) = v20;
  sub_10001ECE0();
  sub_10000B7C4();
  v141 = v21;
  v22 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v23 = *(v22 + 16);
  if (v23)
  {
    v145 = v4;
    v149 = 0;
    v153 = a2;
    *&v168 = _swiftEmptyArrayStorage;
    sub_100027C2C(0, v23, 0);
    v24 = v168;
    v25 = (v22 + 56);
    do
    {
      v27 = *(v25 - 3);
      v26 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;

      static String._fromSubstring(_:)();
      sub_10000300C();

      *&v168 = v24;
      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_100027C2C((v30 > 1), v31 + 1, 1);
        v24 = v168;
      }

      v24[2] = v31 + 1;
      v32 = &v24[2 * v31];
      v32[4] = v26;
      v32[5] = &type metadata for Any;
      v25 += 4;
      --v23;
    }

    while (v23);

    a2 = v153;
    v4 = v145;
    v13 = &type metadata for Any;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  *a2 = v24;
  sub_1000AA73C(4, v4, &v165);
  if (v167)
  {
    sub_1000050B0(v33, v34, v35, v36, v37, v38, v39, v40, v141, v145, v149, v153, v157);
    if (swift_dynamicCast())
    {
      v41 = v157;
      v42 = v161;
      v170 = &type metadata for String;
      if (v161)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    sub_100002C5C(&v165);
  }

  v170 = &type metadata for String;
LABEL_23:
  v41 = 0;
  v42 = 0xE000000000000000;
LABEL_24:
  *&v168 = v41;
  *(&v168 + 1) = v42;
  v43 = sub_1000B21E8(&v168);
  v45 = v44;
  sub_100002C5C(&v168);
  *&v168 = v43;
  *(&v168 + 1) = v45;
  sub_10000B7C4();
  v46 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v47 = *(v46 + 16);
  if (v47)
  {
    v145 = v4;
    v149 = 0;
    v153 = a2;
    *&v168 = _swiftEmptyArrayStorage;
    sub_100027C2C(0, v47, 0);
    v48 = v168;
    v141 = v46;
    v49 = (v46 + 56);
    do
    {
      v51 = *(v49 - 3);
      v50 = *(v49 - 2);
      v53 = *(v49 - 1);
      v52 = *v49;

      v46 = static String._fromSubstring(_:)();
      v55 = v54;

      *&v168 = v48;
      v57 = v48[2];
      v56 = v48[3];
      v13 = (v57 + 1);
      if (v57 >= v56 >> 1)
      {
        sub_100027C2C((v56 > 1), v57 + 1, 1);
        v48 = v168;
      }

      v48[2] = v13;
      v58 = &v48[2 * v57];
      v58[4] = v46;
      v58[5] = v55;
      v49 += 4;
      --v47;
    }

    while (v47);

    a2 = v153;
    v4 = v145;
  }

  else
  {

    v48 = _swiftEmptyArrayStorage;
  }

  a2[1] = v48;
  sub_1000AA73C(1, v4, &v168);
  sub_1000B21E8(&v168);
  sub_10000300C();
  sub_100002C5C(&v168);
  a2[2] = v46;
  a2[3] = v13;
  sub_1000AA73C(6, v4, &v165);
  if (v167)
  {
    sub_1000050B0(v59, v60, v61, &type metadata for Int, v62, v63, v64, v65, v141, v145, v149, v153, v157);
    if (sub_100006330())
    {
      v66 = v157;
      goto LABEL_36;
    }
  }

  else
  {
    sub_100002C5C(&v165);
  }

  v66 = -1;
LABEL_36:
  v67 = sub_1000B1FC8(v66);
  if (v67 == 4)
  {
    v68 = 0;
    v168 = 0uLL;
    v169 = 0;
  }

  else
  {
    LOBYTE(v168) = v67;
    v68 = &type metadata for ContentInfo.State;
  }

  v170 = v68;
  v69 = sub_1000B22B8(&v168);
  sub_100002C5C(&v168);
  v70 = type metadata accessor for ContentInfo();
  *(a2 + v70[10]) = v69;
  sub_1000AA73C(7, v4, &v165);
  if (v167)
  {
    sub_1000050B0(v71, v72, v73, &type metadata for String, v74, v75, v76, v77, v141, v145, v149, v153, v157);
    if (sub_100006330())
    {
      v78 = v157;
      v79 = v161;
      goto LABEL_44;
    }
  }

  else
  {
    sub_100002C5C(&v165);
  }

  v78 = 0;
  v79 = 0xE000000000000000;
LABEL_44:
  *&v165 = v78;
  *(&v165 + 1) = v79;
  v80 = String.init<A>(_:)();
  v170 = &type metadata for String;
  *&v168 = v80;
  *(&v168 + 1) = v81;
  sub_1000B21E8(&v168);
  sub_10000300C();
  sub_100002C5C(&v168);
  v82 = (a2 + v70[11]);
  *v82 = &type metadata for String;
  v82[1] = v4;
  sub_1000AA73C(8, v4, &v168);
  v91 = sub_1000079A8(v83, v84, v85, v86, v87, v88, v89, v90, v141, v145, v149, v153, v157, v161, v165, *(&v165 + 1), v166, v167, v168);
  sub_1000B21E8(v91);
  sub_10000300C();
  sub_100002C5C(&v168);
  v92 = (a2 + v70[12]);
  *v92 = &type metadata for String;
  v92[1] = 0;
  sub_1000AA73C(5, 0, &v168);
  v101 = sub_1000079A8(v93, v94, v95, v96, v97, v98, v99, v100, v142, v146, v150, v154, v158, v162, v165, *(&v165 + 1), v166, v167, v168);
  sub_1000B2388(v101);
  sub_10000300C();
  v155 = a2;
  v102 = (a2 + v70[9]);
  sub_100002C5C(&v168);
  *v102 = &type metadata for String;
  v102[1] = 0;
  sub_1000AA73C(2, 0, &v165);
  if (v167)
  {
    sub_1000050B0(v103, v104, v105, &type metadata for Double, v106, v107, v108, v109, v143, v147, v151, v155, v159);
    v110 = sub_100006330();
    if (v110)
    {
      v118 = v159;
      goto LABEL_49;
    }
  }

  else
  {
    v110 = sub_100002C5C(&v165);
  }

  v118 = 0;
LABEL_49:
  v119 = v155;
  v170 = &type metadata for Double;
  v120 = sub_1000079A8(v110, v111, v112, v113, v114, v115, v116, v117, v143, v147, v151, v155, v159, v163, v165, *(&v165 + 1), v166, v167, v118);
  sub_1000B246C(v120);
  sub_100002C5C(&v168);
  v121 = v119 + v70[7];
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_1000AA73C(3, v4, &v165);

  if (!v167)
  {
    v129 = sub_100002C5C(&v165);
    goto LABEL_53;
  }

  sub_1000050B0(v122, v123, v124, &type metadata for Double, v125, v126, v127, v128, v144, v148, v152, v156, v160);
  v129 = sub_100006330();
  if (!v129)
  {
LABEL_53:
    v137 = 0;
    goto LABEL_54;
  }

  v137 = v160;
LABEL_54:
  v170 = &type metadata for Double;
  v138 = sub_1000079A8(v129, v130, v131, v132, v133, v134, v135, v136, v144, v148, v152, v156, v160, v164, v165, *(&v165 + 1), v166, v167, v137);
  sub_1000B246C(v138);
  sub_100002C5C(&v168);
  v139 = v119 + v70[8];
  return Date.init(timeIntervalSinceReferenceDate:)();
}

uint64_t sub_1000B1DA8()
{
  v1 = v0;
  sub_1000AE324();
  v109 = Dictionary.init(dictionaryLiteral:)();
  v102 = *v0;

  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_1000A0698();
  v2 = sub_10000BE60();

  v11 = sub_100006B64(v3, v4, v5, v6, v7, v8, v9, v10, v93, v2);
  sub_1000AA20C(v11, 0);
  v103 = v1[2];
  v108 = v1[3];

  v20 = sub_100006B64(v12, v13, v14, v15, v16, v17, v18, v19, v94, v103);
  sub_1000AA20C(v20, 1);
  v21 = type metadata accessor for ContentInfo();
  v22 = v1 + v21[7];
  v23 = Date.timeIntervalSinceReferenceDate.getter();
  v32 = sub_100006B64(v23, v24, v25, v26, v27, v28, v29, v30, v95, v31);
  sub_1000AA20C(v32, 2);
  v33 = v1 + v21[8];
  v34 = Date.timeIntervalSinceReferenceDate.getter();
  v43 = sub_100006B64(v34, v35, v36, v37, v38, v39, v40, v41, v96, v42);
  sub_1000AA20C(v43, 3);
  v104 = v1[1];

  LOBYTE(v33) = sub_10000BE60();

  v52 = sub_100006B64(v44, v45, v46, v47, v48, v49, v50, v51, v97, v33);
  sub_1000AA20C(v52, 4);
  v61 = sub_100006B64(v53, v54, v55, v56, v57, v58, v59, v60, v98, *(v1 + v21[10]));
  sub_1000AA20C(v61, 6);
  v62 = sub_1000057B8(v21[11]);
  v70 = sub_100006B64(v62, v63, v64, v65, v66, v67, v68, v69, v99, v105);
  sub_1000AA20C(v70, 7);
  v71 = sub_1000057B8(v21[12]);
  v79 = sub_100006B64(v71, v72, v73, v74, v75, v76, v77, v78, v100, v106);
  sub_1000AA20C(v79, 8);
  v80 = (v1 + v21[9]);
  if (v80[1])
  {
    v81 = *v80;
  }

  else
  {
    LOBYTE(v81) = 0;
  }

  v107 = v81;

  v90 = sub_100006B64(v82, v83, v84, v85, v86, v87, v88, v89, v101, v107);
  sub_1000AA20C(v90, 5);
  v91 = sub_1000C4D58(v109);

  return v91;
}

unint64_t sub_1000B1FC8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000B1FD8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244748, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B2024(char a1)
{
  result = 0x79654B6863746162;
  switch(a1)
  {
    case 1:
      result = 0x79654B6568636163;
      break;
    case 2:
      result = 0x64657461657263;
      break;
    case 3:
      result = 0x73657269707865;
      break;
    case 4:
      result = 0x617461646174656DLL;
      break;
    case 5:
      result = 1752457584;
      break;
    case 6:
      result = 0x6574617473;
      break;
    case 7:
      result = 0x6E6564496B736174;
      break;
    case 8:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B213C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B1FC8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000B218C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B1FD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B21BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B2024(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B21E8(uint64_t a1)
{
  sub_100003C38(a1, v6);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  if (swift_dynamicCast())
  {
    return v5;
  }

  sub_1000B2B34();
  swift_allocError();
  v4 = v3;
  sub_100003C38(a1, v3);
  *(v4 + 56) = sub_10007B9A4(&qword_10026B300, &qword_1001E88A8);
  *(v4 + 32) = &type metadata for String;
  return swift_willThrow();
}

uint64_t sub_1000B22B8(uint64_t a1)
{
  sub_100003C38(a1, v6);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  if (swift_dynamicCast())
  {
    return v5;
  }

  sub_1000B2B34();
  swift_allocError();
  v4 = v3;
  sub_100003C38(a1, v3);
  *(v4 + 56) = sub_10007B9A4(&qword_10026B2F8, &qword_1001E88A0);
  *(v4 + 32) = &type metadata for ContentInfo.State;
  return swift_willThrow();
}

uint64_t sub_1000B2388(uint64_t a1)
{
  sub_100003C38(a1, v7);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  v2 = sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  sub_1000B2B34();
  swift_allocError();
  v5 = v4;
  sub_100003C38(a1, v4);
  *(v5 + 56) = sub_10007B9A4(&qword_10026B2F0, &qword_1001E8898);
  *(v5 + 32) = v2;
  return swift_willThrow();
}

uint64_t sub_1000B246C(uint64_t a1)
{
  sub_100003C38(a1, v5);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_1000B2B34();
    swift_allocError();
    v4 = v3;
    sub_100003C38(a1, v3);
    *(v4 + 56) = sub_10007B9A4(&qword_10026B2E8, &qword_1001E8890);
    *(v4 + 32) = &type metadata for Double;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000B253C(uint64_t a1)
{
  v62 = type metadata accessor for Date();
  v2 = sub_100002CC4(v62);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ContentInfo();
  v8 = sub_100002CC4(v60);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  if (v15)
  {
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v16 = Dictionary.init(dictionaryLiteral:)();
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v57 = *(v10 + 72);
    v59 = (v4 + 8);
    v58 = xmmword_1001E8880;
    while (1)
    {
      v63 = v17;
      v64 = v15;
      sub_1000B2AD0(v17, v14);
      sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
      inited = swift_initStackObject();
      *(inited + 16) = v58;
      *(inited + 32) = 0x64657461657263;
      *(inited + 40) = 0xE700000000000000;
      v19 = v60;
      v20 = v14 + v60[7];
      Date.timeIntervalSince1970.getter();
      *(inited + 48) = v21 * 1000.0;
      *(inited + 72) = &type metadata for Double;
      *(inited + 80) = 0x617461646174656DLL;
      *(inited + 88) = 0xE800000000000000;
      v22 = v14[1];
      v23 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      *(inited + 96) = v22;
      *(inited + 120) = v23;
      *(inited + 128) = 0x73657269707865;
      *(inited + 136) = 0xE700000000000000;
      v24 = v19[8];

      Date.timeIntervalSince1970.getter();
      *(inited + 144) = v25 * 1000.0;
      *(inited + 168) = &type metadata for Double;
      *(inited + 176) = 0x64657269707865;
      *(inited + 184) = 0xE700000000000000;
      v26 = v61;
      Date.init()();
      LOBYTE(v22) = static Date.< infix(_:_:)();
      (*v59)(v26, v62);
      *(inited + 192) = v22 & 1;
      *(inited + 216) = &type metadata for Bool;
      *(inited + 224) = 1752457584;
      *(inited + 232) = 0xE400000000000000;
      v27 = (v14 + v19[9]);
      v29 = *v27;
      v28 = v27[1];
      v30 = sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
      *(inited + 240) = v29;
      *(inited + 248) = v28;
      *(inited + 264) = v30;
      *(inited + 272) = 0x6574617473;
      *(inited + 280) = 0xE500000000000000;
      *(inited + 288) = *(v14 + v19[10]);
      *(inited + 312) = &type metadata for Int;
      *(inited + 320) = 0x6E6F6973726576;
      *(inited + 328) = 0xE700000000000000;
      v31 = (v14 + v19[12]);
      v32 = v31[1];
      *(inited + 336) = *v31;
      *(inited + 344) = v32;
      *(inited + 360) = &type metadata for String;
      *(inited + 368) = 0x79654B6863746162;
      v33 = *v14;
      *(inited + 376) = 0xE900000000000073;
      *(inited + 384) = v33;
      *(inited + 408) = v23;
      *(inited + 416) = 0x79654B6568636163;
      v35 = v14[2];
      v34 = v14[3];
      *(inited + 456) = &type metadata for String;
      *(inited + 424) = 0xE800000000000000;
      *(inited + 432) = v35;
      *(inited + 440) = v34;

      v36 = Dictionary.init(dictionaryLiteral:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v16;
      v38 = sub_100012A94();
      v40 = v16[2];
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        break;
      }

      v43 = v38;
      v44 = v39;
      sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v42))
      {
        v45 = sub_100012A94();
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_17;
        }

        v43 = v45;
      }

      v16 = v65;
      if (v44)
      {
        v47 = v65[7];
        v48 = *(v47 + 8 * v43);
        *(v47 + 8 * v43) = v36;
      }

      else
      {
        v65[(v43 >> 6) + 8] |= 1 << v43;
        v49 = (v16[6] + 16 * v43);
        *v49 = v35;
        v49[1] = v34;
        *(v16[7] + 8 * v43) = v36;
        v50 = v16[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_16;
        }

        v16[2] = v52;
      }

      sub_1000A0914(v14);
      v17 = v63 + v57;
      v15 = v64 - 1;
      if (v64 == 1)
      {
        sub_1000E375C(v16);
        v54 = v53;

        return v54;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ContentInfo()
{
  result = qword_10026B360;
  if (!qword_10026B360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B2AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B2B34()
{
  result = qword_10026B2E0;
  if (!qword_10026B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B2E0);
  }

  return result;
}

uint64_t sub_1000B2B88(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B2BA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1000B2BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentInfo.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentInfo.ExportKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContentInfo.ExportKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void sub_1000B2EA8()
{
  sub_1000B2F98(319, &qword_10026B370, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000B2F98(319, &qword_10026B378, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000B2F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000B2FF0()
{
  result = qword_10026B3C8;
  if (!qword_10026B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B3C8);
  }

  return result;
}

unint64_t sub_1000B3048()
{
  result = qword_10026B3D0;
  if (!qword_10026B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B3D0);
  }

  return result;
}

void sub_1000B30C4()
{
  sub_100003D74();
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v0);
  v2 = *(v1 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v3 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentManager();
  sub_10000AB04();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v4 = static os_log_type_t.default.getter();
  sub_1000036B0(v4);

  v5 = 0;
  do
  {
    v6 = *(&off_100244588 + v5++ + 32);
    *(sub_100004BC8() + 16) = v6;
    sub_1000BA35C();
    sub_1000BB69C();
  }

  while (v5 != 4);
  sub_100005F14();
}

void sub_1000B3264()
{
  sub_100003D74();
  v1 = v0;
  v174 = v2;
  v4 = v3;
  v170 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v156 = *v0;
  v181 = type metadata accessor for Date();
  v12 = sub_100002CC4(v181);
  v167 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v180 = v17 - v16;
  sub_100003D1C();
  v18 = type metadata accessor for ContentInfo();
  v19 = sub_100002CC4(v18);
  v187 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v23);
  sub_10000714C();
  v178 = v24;
  sub_100003F08();
  __chkstk_darwin(v25);
  sub_10000AB64();
  __chkstk_darwin(v26);
  sub_10000E6C4();
  v185 = v27;
  v28 = sub_100003D1C();
  v166 = type metadata accessor for JSContent.CacheRequest(v28);
  v29 = sub_100002CC4(v166);
  v168 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_100005C2C();
  v192 = v33;
  sub_100003F08();
  __chkstk_darwin(v34);
  v36 = (&v154 - v35);
  v37 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  v38 = sub_100002CFC(v37);
  v183 = v39;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_100005C2C();
  sub_100019BBC();
  __chkstk_darwin(v42);
  sub_10000714C();
  v177 = v43;
  sub_100003F08();
  __chkstk_darwin(v44);
  sub_10000714C();
  v182 = v45;
  sub_100003F08();
  v47 = __chkstk_darwin(v46);
  v49 = &v154 - v48;
  __chkstk_darwin(v47);
  sub_10000E6C4();
  v186 = v50;
  if (qword_1002686D8 != -1)
  {
LABEL_64:
    sub_100006B70();
    swift_once();
  }

  v171 = v7;
  v191 = v18;
  v175 = v4;
  v173 = v0;
  v184 = v11;
  v169 = qword_100287838;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v51 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v51);
  v53 = *(v52 + 72);
  sub_10000DE0C();
  v56 = v54 & ~v55;
  v176 = v57;
  v162 = 5 * v57;
  sub_1000BF72C(v194);
  v165 = v11;
  v58 = swift_allocObject();
  v160 = xmmword_1001E61C0;
  *(v58 + 16) = xmmword_1001E61C0;
  v164 = v56;
  v59 = v58 + v56;
  v159 = type metadata accessor for ContentManager();
  v195 = v159;
  v193 = v1;

  v60 = AMSLogKey();
  if (v60)
  {
    v61 = v60;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v193);
  v62 = v176;
  LogInterpolation.init(stringLiteral:)();
  v195 = &type metadata for String;
  v193 = v184;
  v194[0] = v9;

  static LogInterpolation.safe(_:)();
  v63 = sub_100008F28();
  sub_10000A00C(v63, v64, &qword_1001E6050);
  v158 = 3 * v62;
  LogInterpolation.init(stringLiteral:)();
  v11 = (v59 + 4 * v62);
  LODWORD(v62) = v170;
  LOBYTE(v193) = v170;
  v65 = v170;
  sub_100006794();
  v194[0] = v66;
  v194[1] = v174;
  v195 = v67;

  static LogInterpolation.safe(_:)();
  v68 = sub_100008F28();
  sub_10000A00C(v68, v69, &qword_1001E6050);
  v70 = static os_log_type_t.info.getter();
  sub_1000036B0(v70);

  v71 = v62;
  if (v65 == 4)
  {
    v71 = *(v1 + 16);
  }

  HIDWORD(v155) = v71;
  v188 = v9;
  sub_100008FCC();
  v72 = v11[2];
  v4 = _swiftEmptyArrayStorage;
  v190 = v1;
  v18 = v183;
  if (v72)
  {
    v193 = _swiftEmptyArrayStorage;
    sub_10009B800(0, v72, 0);
    v4 = v193;
    sub_10000A988();
    v11 = (v11 + v73);
    v189 = *(v74 + 72);
    v75 = v72;
    do
    {
      sub_1000BF470(v11, v36);
      v76 = sub_1000B7DD0(*v36, v36[1], v36[2], v36[3], 4);
      if (*(v76 + 16))
      {
        v77 = *(v187 + 80);
        sub_100004864();
        sub_10000B7DC();
        sub_1000BF470(v76 + v78, v49);
        v79 = 0;
      }

      else
      {
        v79 = 1;
      }

      sub_10000A7C0(v49, v79, 1, v191);
      sub_1000BF4C8();
      v193 = v4;
      v81 = v4[2];
      v80 = v4[3];
      if (v81 >= v80 >> 1)
      {
        sub_100005C40(v80);
        sub_1000BF720();
        sub_10009B800(v84, v85, v86);
        v4 = v193;
      }

      v4[2] = v81 + 1;
      v82 = *(v18 + 80);
      sub_100004864();
      sub_1000BF51C(v49, v4 + v83 + *(v18 + 72) * v81, &qword_10026A050, &unk_1001EA2B0);
      v11 = (v11 + v189);
      --v75;
    }

    while (v75);
  }

  v1 = 0;
  v157 = 2 * v176;
  v189 = 4 * v176;
  v9 = v4[2];
  v0 = (v167 + 8);
  v7 = v191;
  v36 = v185;
  while (v9 != v1)
  {
    if (v1 >= v4[2])
    {
      __break(1u);
      goto LABEL_64;
    }

    v87 = *(v18 + 80);
    sub_100004864();
    v89 = v186;
    sub_1000BF568(v4 + v88 + *(v18 + 72) * v1, v186, &qword_10026A050, &unk_1001EA2B0);
    v90 = v89;
    v91 = v182;
    sub_1000BF568(v90, v182, &qword_10026A050, &unk_1001EA2B0);
    sub_1000067A0(v91, 1, v7);
    if (v92)
    {
      sub_1000BF704();
      sub_10000A00C(v186, &qword_10026A050, &unk_1001EA2B0);
      sub_10000A00C(v91, &qword_10026A050, &unk_1001EA2B0);
LABEL_27:
      v102 = v184;
      v103 = v175;
      if (v72)
      {
        v104 = *(v166 + 28);
        v191 = *(v166 + 24);
        v105 = v192 + v104;
        v106 = v170;
        sub_10000A988();
        v108 = v171 + v107;
        v110 = *(v109 + 72);
        do
        {
          sub_1000BF470(v108, v192);
          if (v105[2])
          {
            v111 = 0x10000;
          }

          else
          {
            v111 = 0;
          }

          if (v105[1])
          {
            v112 = 256;
          }

          else
          {
            v112 = 0;
          }

          sub_1000B48D0(v102, v188, *v192, v192[1], v192[2], v192[3], v192 + v191, v112 | *v105 | v111, v106, v103, v1, v153, v154, v155, v156, v157, v158, v159, v160, *(&v160 + 1), v161, v162, v163);
          sub_1000BF4C8();
          v108 += v110;
          --v72;
        }

        while (v72);
      }

      goto LABEL_62;
    }

    sub_1000A0850(v91, v36);
    v93 = (v36 + v7[9]);
    if (!v93[1])
    {
      goto LABEL_23;
    }

    if (*(v36 + v7[10]) != 2)
    {
      goto LABEL_23;
    }

    v94 = v7;
    v95 = *v93;
    v96 = v7[8];
    v97 = v180;
    Date.init()();
    LOBYTE(v96) = static Date.< infix(_:_:)();
    v98 = v97;
    v36 = v185;
    (*v0)(v98, v181);
    if (v96)
    {
LABEL_23:
      sub_1000BF704();
      sub_10000A00C(v186, &qword_10026A050, &unk_1001EA2B0);
      sub_1000050BC();
      sub_1000BF4C8();
      goto LABEL_27;
    }

    v99 = [objc_opt_self() defaultManager];
    v11 = String._bridgeToObjectiveC()();
    v49 = [v99 fileExistsAtPath:v11];

    sub_10000A00C(v186, &qword_10026A050, &unk_1001EA2B0);
    sub_1000050BC();
    sub_1000BF4C8();
    ++v1;
    v7 = v94;
    v18 = v183;
    if ((v49 & 1) == 0)
    {
      sub_1000BF704();
      goto LABEL_27;
    }
  }

  *(swift_allocObject() + 16) = v160;
  sub_10001D724(&v190);
  v193 = v190;

  v100 = AMSLogKey();
  if (v100)
  {
    v101 = v100;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v113 = v172;
  v114 = v174;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v193);
  LogInterpolation.init(stringLiteral:)();
  v195 = &type metadata for String;
  v193 = v184;
  v194[0] = v188;

  static LogInterpolation.safe(_:)();
  v115 = sub_100008F28();
  sub_10000A00C(v115, v116, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v195 = sub_10007B9A4(&qword_10026B518, &unk_1001E8B10);
  v193 = v4;

  static LogInterpolation.safe(_:)();
  v117 = sub_100008F28();
  sub_10000A00C(v117, v118, &qword_1001E6050);
  v119 = static os_log_type_t.info.getter();
  sub_1000036B0(v119);

  if (v114)
  {
    sub_1000B40E4();
  }

  if (v9)
  {
    sub_10000A988();
    v121 = v4 + v120;
    v123 = *(v122 + 72);
    v124 = _swiftEmptyArrayStorage;
    v125 = v191;
    do
    {
      v126 = v177;
      sub_1000BF568(v121, v177, &qword_10026A050, &unk_1001EA2B0);
      sub_1000BF51C(v126, v113, &qword_10026A050, &unk_1001EA2B0);
      sub_1000067A0(v113, 1, v125);
      if (v92)
      {
        sub_10000A00C(v113, &qword_10026A050, &unk_1001EA2B0);
      }

      else
      {
        sub_1000A0850(v113, v178);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v132 = v124[2];
          sub_100003030();
          sub_1000D5678();
          v124 = v133;
        }

        v129 = v124[2];
        v128 = v124[3];
        if (v129 >= v128 >> 1)
        {
          sub_100005C40(v128);
          sub_1000BF720();
          sub_1000D5678();
          v124 = v134;
        }

        v124[2] = v129 + 1;
        sub_10000A988();
        sub_1000A0850(v178, v124 + v130 + *(v131 + 72) * v129);
        v125 = v191;
        v113 = v172;
      }

      v121 += v123;
      --v9;
    }

    while (v9);
  }

  else
  {

    v124 = _swiftEmptyArrayStorage;
  }

  v135 = v124[2];
  v136 = v188;
  v137 = v173;
  v138 = v179;
  if (v135)
  {
    sub_10000A988();
    v140 = v124 + v139;
    v142 = *(v141 + 72);
    do
    {
      sub_100003018();
      sub_1000BF470(v140, v138);
      v143 = sub_1000BF470(v138, v137);
      v144 = *v137;
      v193 = v184;
      v194[0] = v136;
      __chkstk_darwin(v143);
      sub_10000BE84();
      *(v145 - 16) = &v193;
      if (!sub_10013D5B0(sub_1000BF6B8, v146, v144))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = *(v144 + 16);
          sub_100003030();
          sub_10000DE9C();
          v144 = v151;
        }

        v148 = *(v144 + 16);
        v147 = *(v144 + 24);
        if (v148 >= v147 >> 1)
        {
          sub_100005C40(v147);
          sub_10000B1D4();
          sub_10000DE9C();
          v144 = v152;
        }

        *(v144 + 16) = v148 + 1;
        v149 = v144 + 16 * v148;
        v136 = v188;
        *(v149 + 32) = v184;
        *(v149 + 40) = v136;
        v137 = v173;
        *v173 = v144;
        sub_1000B8A2C(v137);
      }

      sub_100003018();
      v138 = v179;
      sub_1000BF4C8();
      sub_1000BF4C8();
      v140 += v142;
      --v135;
    }

    while (v135);
  }

LABEL_62:
  sub_100005F14();
}

void sub_1000B40E4()
{
  sub_100003D74();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v9);
  sub_100022228();
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F60;
    *(inited + 32) = 0x656372756F73;
    *(inited + 40) = 0xE600000000000000;
    v12 = sub_10001CB88(inited);
    *(v12 + 72) = &type metadata for String;
    *(v12 + 80) = v13;
    sub_10005EEB0();
    v14[11] = 0xE900000000000065;
    v14[12] = v15;
    v14[13] = v16;
    v14[15] = &type metadata for String;
    v14[16] = 0x696669746E656469;
    v14[21] = &type metadata for String;
    v14[17] = 0xEA00000000007265;
    v14[18] = v63;
    v14[19] = v4;
    v61 = v4;

    v4 = &type metadata for Any;
    v17 = Dictionary.init(dictionaryLiteral:)();
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1001E6580;
    *(v18 + 32) = 1701080931;
    *(v18 + 40) = 0xE400000000000000;
    *(v18 + 48) = [v10 code];
    *(v18 + 72) = &type metadata for Int;
    *(v18 + 80) = 0x6E69616D6F64;
    *(v18 + 88) = 0xE600000000000000;
    v19 = [v10 domain];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(v18 + 96) = v20;
    *(v18 + 104) = v22;
    *(v18 + 120) = &type metadata for String;
    *(v18 + 128) = 0x656C746974;
    *(v18 + 136) = 0xE500000000000000;
    v23 = sub_1000BF330(v10, &selRef_ams_title);
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    *(v18 + 144) = v25;
    *(v18 + 152) = v26;
    *(v18 + 168) = &type metadata for String;
    *(v18 + 176) = 0x6567617373656DLL;
    *(v18 + 184) = 0xE700000000000000;
    v27 = sub_1000BF330(v10, &selRef_ams_message);
    *(v18 + 216) = &type metadata for String;
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    *(v18 + 192) = v29;
    *(v18 + 200) = v30;
    v31 = Dictionary.init(dictionaryLiteral:)();
    v66 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v65 = v31;
    sub_100002C4C(&v65, v64);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
    v62 = v17;
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v32 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v32);
    v34 = *(v33 + 72);
    sub_1000056F8();
    *(sub_10000A92C() + 16) = xmmword_1001E5F70;
    v35 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_10005EEB0();
    v37._countAndFlagsBits = v36 + 40;
    v37._object = (v38 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    v66 = &type metadata for String;
    *&v65 = v63;
    *(&v65 + 1) = v61;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v39 = sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    sub_1000BF6E0(v39);
    sub_100023FE8();
    switch(&type metadata for Any & 0xFF)
    {
      case 1uLL:
        sub_1000167AC();
        break;
      case 2uLL:
        sub_100061E6C();
        break;
      case 3uLL:
        sub_100018094();
        break;
      default:
        break;
    }

    v66 = &type metadata for String;
    *&v65 = v41;
    *(&v65 + 1) = v40;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v57 = sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v57);
    LogInterpolation.init(stringInterpolation:)();
    v58 = static os_log_type_t.error.getter();
    sub_1000036B0(v58);
  }

  else
  {
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_1001E6580;
    *(v42 + 32) = 0x656372756F73;
    *(v42 + 40) = 0xE600000000000000;
    v43 = sub_10001CB88(v42);
    *(v43 + 72) = &type metadata for String;
    *(v43 + 80) = 0x707954746E657665;
    sub_10005EEB0();
    *(v45 + 88) = 0xE900000000000065;
    *(v45 + 96) = v44 + 7;
    *(v45 + 104) = v46;
    *(v45 + 120) = &type metadata for String;
    *(v45 + 128) = 0x696669746E656469;
    *(v45 + 136) = 0xEA00000000007265;
    *(v45 + 144) = v63;
    *(v45 + 152) = v4;
    *(v45 + 168) = &type metadata for String;
    *(v45 + 176) = 0x6E65746E6F437369;
    *(v45 + 184) = 0xEF64656863614374;
    *(v45 + 216) = &type metadata for Bool;
    *(v45 + 192) = 1;

    v62 = Dictionary.init(dictionaryLiteral:)();
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v47 = sub_10000620C();
    sub_100002CFC(v47);
    v49 = *(v48 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v50 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_10005EEB0();
    v52._countAndFlagsBits = v51 + 42;
    v52._object = (v53 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
    v66 = &type metadata for String;
    *&v65 = v63;
    *(&v65 + 1) = v4;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v54 = sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    sub_1000BF6E0(v54);
    sub_100023FE8();
    switch(v4)
    {
      case 1:
        sub_1000167AC();
        break;
      case 2:
        sub_100061E6C();
        break;
      case 3:
        sub_100018094();
        break;
      default:
        break;
    }

    v66 = &type metadata for String;
    *&v65 = v56;
    *(&v65 + 1) = v55;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v59 = sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v59);
    LogInterpolation.init(stringInterpolation:)();
    v60 = static os_log_type_t.default.getter();
    sub_1000036B0(v60);
  }

  sub_1000BCAC0(v4, v62);

  sub_100005F14();
}

void sub_1000B48D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100003D74();
  a19 = v25;
  a20 = v26;
  v203 = v27;
  v213 = v28;
  v214 = v29;
  v218 = v30;
  v219 = v31;
  v216 = v32;
  v217 = v33;
  v223 = v34;
  v35 = type metadata accessor for Date();
  v36 = sub_100002CC4(v35);
  v205 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_100005C2C();
  sub_100019BBC();
  __chkstk_darwin(v40);
  sub_10000E6C4();
  v211 = v41;
  v42 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  sub_100003D10(v42);
  v44 = *(v43 + 64);
  sub_100004E78();
  __chkstk_darwin(v45);
  sub_10000A854(&v196 - v46);
  v47 = type metadata accessor for ContentInfo();
  v48 = sub_100002DDC(v47);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_100005C2C();
  v210 = v51;
  sub_100003F08();
  __chkstk_darwin(v52);
  sub_10000714C();
  sub_100019BBC();
  __chkstk_darwin(v53);
  sub_10000E6C4();
  sub_10000A854(v54);
  v55 = type metadata accessor for LogInterpolation.StringInterpolation();
  v56 = sub_100003D10(v55);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  sub_100002DEC();
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  v222 = qword_100287838;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v59 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v59);
  v61 = *(v60 + 72);
  sub_10000DE0C();
  v64 = v62 & ~v63;
  v221 = v65;
  v66 = v64 + 2 * v65;
  sub_1000BF72C(&a17);
  v200 = v23;
  v67 = swift_allocObject();
  v198 = xmmword_1001E5F70;
  *(v67 + 16) = xmmword_1001E5F70;
  v208 = v64;
  v207 = type metadata accessor for ContentManager();
  v227 = v207;
  v224 = v24;
  v220 = v24;

  v68 = AMSLogKey();
  if (v68)
  {
    v69 = v68;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v209 = a23;
  v197 = a22;
  sub_100004E34();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v224);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v70._countAndFlagsBits = 0xD000000000000029;
  v70._object = 0x80000001001F5CF0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
  v215 = v47;
  v212 = v35;
  v199 = v66;
  if (v223)
  {
    v71 = &type metadata for String;
    v72 = v213;
    v73 = v223;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v71 = 0;
    v226 = 0;
  }

  v202 = a21;
  v224 = v72;
  v225 = v73;
  v227 = v71;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000048BC();
  sub_10000A00C(v74, v75, v76);
  v77._countAndFlagsBits = 0x3A79656B090A202CLL;
  v77._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v77);
  v227 = &type metadata for String;
  v78 = v216;
  v79 = v217;
  v224 = v216;
  v225 = v217;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000048BC();
  sub_10000A00C(v80, v81, v82);
  v83._countAndFlagsBits = 0x73726576090A202CLL;
  v83._object = 0xED0000203A6E6F69;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v83);
  v227 = &type metadata for String;
  v85 = v218;
  v84 = v219;
  v224 = v218;
  v225 = v219;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000048BC();
  sub_10000A00C(v86, v87, v88);
  v89._countAndFlagsBits = 0x3A6C7275090A202CLL;
  v89._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
  v90 = type metadata accessor for URL();
  v227 = v90;
  sub_100017E64(&v224);
  sub_1000047A4(v90);
  (*(v91 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_1000048BC();
  sub_10000A00C(v92, v93, v94);
  v95._countAndFlagsBits = 10506;
  v95._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v95);
  LogInterpolation.init(stringInterpolation:)();
  v96 = static os_log_type_t.default.getter();
  sub_10005E244(v96);

  v97 = v220;
  v98 = sub_1000B7DD0(v78, v79, v85, v84, 4);
  v99 = v206;
  sub_10018A29C(v98, v206);

  v100 = v215;
  v101 = (&UniversalLinksService + 40);
  v102 = &unk_100287000;
  if (sub_100009F34(v99, 1, v215) != 1)
  {
    v106 = v201;
    sub_1000A0850(v99, v201);
    sub_100006794();
    v107 = v200;
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    sub_10001D724(&a18);
    v224 = v97;

    v108 = AMSLogKey();
    v105 = v212;
    if (v108)
    {
      v109 = v108;
      v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v110 = 0;
    }

    sub_10005ADC4();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v224);
    sub_10003AE88();
    LogInterpolation.init(stringLiteral:)();
    v227 = v100;
    sub_100017E64(&v224);
    sub_10000B7DC();
    sub_1000BF470(v106, v111);
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v224, &qword_10026D350, &qword_1001E6050);
    v112 = static os_log_type_t.info.getter();
    sub_10005E244(v112);

    v113 = (v106 + *(v100 + 36));
    v98 = v113[1];
    p_base_prots = &UniversalLinksService.base_prots;
    if (v98 && *(v106 + *(v100 + 40)) == 2 && (v115 = *v113, v116 = [objc_opt_self() defaultManager], v98 = String._bridgeToObjectiveC()(), LODWORD(v115) = objc_msgSend(v116, "fileExistsAtPath:", v98), v116, p_base_prots = (&UniversalLinksService + 40), v98, v115))
    {
      sub_100006794();
      v117 = sub_100017EC4();
      sub_100012F34(v117);
      sub_10001D724(v118);
      v119 = v220;
      sub_10005E268();
      v120 = AMSLogKey();
      if (v120)
      {
LABEL_17:
        v110 = v120;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    else
    {
      v119 = v220;
      if (p_base_prots[249] != -1)
      {
        sub_100017F38();
      }

      v121 = sub_10017B038();
      sub_100006794();
      v122 = sub_100017EC4();
      sub_100012F34(v122);
      if ((v121 & 1) == 0)
      {
        sub_10001D724(v123);
        sub_10005E268();
        v124 = AMSLogKey();
        if (v124)
        {
          v125 = v124;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v224);
        sub_10003AE88();
        LogInterpolation.init(stringLiteral:)();
        v126 = static os_log_type_t.info.getter();
        sub_10005E244(v126);

        if (v223)
        {
          v98 = *v106;
          v224 = v213;
          v225 = v223;
          __chkstk_darwin(v127);
          sub_10000BE84();
          *(v128 - 16) = &v224;
          if (!sub_10013D5B0(sub_1000BF6B8, v129, v98))
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v193 = v98[2];
              sub_100003030();
              sub_10000DE9C();
              v98 = v194;
            }

            v131 = v98[2];
            v130 = v98[3];
            v132 = v223;
            if (v131 >= v130 >> 1)
            {
              sub_100005C40(v130);
              sub_10000B1D4();
              sub_10000DE9C();
              v132 = v223;
              v98 = v195;
            }

            v98[2] = v131 + 1;
            v133 = &v98[2 * v131];
            v133[4] = v213;
            v133[5] = v132;
            *v106 = v98;
          }

          v224 = v98;

          sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
          sub_1000A0698();
          v103 = BidirectionalCollection<>.joined(separator:)();
          v104 = v134;

          sub_1000050BC();
          sub_1000BF4C8();
        }

        else
        {
          sub_1000050BC();
          sub_1000BF4C8();
          v103 = 0;
          v104 = 0;
        }

        sub_100008FCC();
        v102 = &unk_100287000;
        v101 = &UniversalLinksService.base_prots;
        goto LABEL_36;
      }

      sub_10001D724(v123);
      sub_10005E268();
      v120 = AMSLogKey();
      if (v120)
      {
        goto LABEL_17;
      }
    }

    sub_10000A150();

    sub_100002C00(&v224);
    sub_10003AE88();
    LogInterpolation.init(stringLiteral:)();
    v186 = static os_log_type_t.info.getter();
    sub_10005E244(v186);

    sub_1000B57C4(v106, v213, v223, v107, v197, v110, v119);
    goto LABEL_71;
  }

  sub_10000A00C(v99, &qword_10026A050, &unk_1001EA2B0);
  v103 = 0;
  v104 = 0;
  v105 = v212;
  sub_100008FCC();
LABEL_36:
  v135 = (&v101[249]->count + 1) == 0;
  v136 = v205;
  if (!v135)
  {
    sub_100017F38();
  }

  v137 = v102[280];
  sub_10017AAF4();
  v221 = v138;
  v222 = v139;
  v141 = v140;
  if (!v104)
  {
    v104 = v223;

    v103 = v213;
  }

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v136 + 8))(v98, v105);
  v142 = &v210[*(v100 + 36)];
  *v142 = 0;
  *(v142 + 1) = 0;
  if (v104)
  {
    v224 = v103;
    v225 = v104;
    sub_10001ECE0();
    v214 = v141;

    v143 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

    v144 = *(v143 + 16);
    if (v144)
    {
      v224 = _swiftEmptyArrayStorage;
      sub_100027C2C(0, v144, 0);
      v145 = v224;
      v146 = (v143 + 56);
      do
      {
        v147 = *(v146 - 3);
        v148 = *(v146 - 2);
        v150 = *(v146 - 1);
        v149 = *v146;

        v151 = static String._fromSubstring(_:)();
        v153 = v152;

        v224 = v145;
        v155 = v145[2];
        v154 = v145[3];
        if (v155 >= v154 >> 1)
        {
          v157 = sub_100005C40(v154);
          sub_100027C2C(v157, v155 + 1, 1);
          v145 = v224;
        }

        v145[2] = v155 + 1;
        v156 = &v145[2 * v155];
        v156[4] = v151;
        v156[5] = v153;
        v146 += 4;
        --v144;
      }

      while (v144);

      v136 = v205;
    }

    else
    {

      v145 = _swiftEmptyArrayStorage;
    }

    v141 = v214;
    v158 = v212;
  }

  else
  {
    v158 = v105;

    v145 = _swiftEmptyArrayStorage;
  }

  v159 = v210;
  *v210 = v145;
  v160 = v217;
  *(v159 + 2) = v216;
  *(v159 + 3) = v160;
  v161 = v215;
  v162 = v215[7];

  Date.init()();
  (*(v136 + 32))(&v159[v161[8]], v211, v158);
  *(v159 + 1) = _swiftEmptyArrayStorage;
  v159[v161[10]] = 1;
  v163 = &v159[v161[11]];
  *v163 = v221;
  *(v163 + 1) = v141;
  v164 = &v159[v161[12]];
  v165 = v219;
  *v164 = v218;
  *(v164 + 1) = v165;
  v166 = v204;
  sub_1000A0850(v159, v204);
  v167 = v209;
  if (v209 == 1)
  {
  }

  else
  {
    v168 = 0xE900000000000073;
    v169 = 0x636974796C616E61;
    switch(v202)
    {
      case 1:
        v168 = 0xE800000000000000;
        v169 = 0x6C616E7265746E69;
        goto LABEL_57;
      case 2:
        v168 = 0xE800000000000000;
        v169 = 0x7379656E72756F6ALL;
        goto LABEL_57;
      case 3:
        v168 = 0xEF736E6F69746164;
        v169 = 0x6E656D6D6F636572;
        goto LABEL_57;
      case 4:

        goto LABEL_62;
      default:
LABEL_57:
        v170 = *(v166 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = *(v170 + 16);
          sub_100003030();
          sub_10000DE9C();
          v170 = v188;
        }

        v172 = *(v170 + 16);
        v171 = *(v170 + 24);
        v173 = v172 + 1;
        if (v172 >= v171 >> 1)
        {
          sub_100005C40(v171);
          sub_10000B1D4();
          sub_10000DE9C();
          v170 = v189;
        }

        *(v170 + 16) = v173;
        v174 = v170 + 16 * v172;
        *(v174 + 32) = v169;
        *(v174 + 40) = v168;

        v176 = sub_100062640(v175);
        sub_10018BED8(v176);
        sub_100005F2C();

        *(v166 + 8) = v173;
LABEL_62:
        if (v223 && v167)
        {
          v177 = sub_1000B5C50(v197, v167, v213);
          v179 = v178;
          v180 = *(v166 + 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v190 = *(v180 + 16);
            sub_100003030();
            sub_10000DE9C();
            v180 = v191;
          }

          v182 = *(v180 + 16);
          v181 = *(v180 + 24);
          if (v182 >= v181 >> 1)
          {
            sub_100005C40(v181);
            sub_10000B1D4();
            sub_10000DE9C();
            v180 = v192;
          }

          *(v180 + 16) = v182 + 1;
          v183 = v180 + 16 * v182;
          *(v183 + 32) = v177;
          *(v183 + 40) = v179;

          v185 = sub_100062640(v184);
          sub_10018BED8(v185);
          sub_100005F2C();

          *(v166 + 8) = v177;
        }

        break;
    }
  }

  sub_1000B8A2C(v166);

LABEL_71:
  sub_1000050BC();
  sub_1000BF4C8();
  sub_100005F14();
}

uint64_t sub_1000B57C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a4;
  v57 = a7;
  v55 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v19 = type metadata accessor for ContentInfo();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BF470(a1, v23);
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v12 + 8))(v16, v11);
  v24 = (*(v12 + 40))(v23 + *(v20 + 40), v18, v11);
  if (a3)
  {
    v25 = *v23;
    v58[0] = a2;
    v58[1] = a3;
    __chkstk_darwin(v24);
    *(&v55 - 2) = v58;
    if (!sub_10013D5B0(sub_1000BF6B8, (&v55 - 4), v25))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v25 + 16);
        sub_10000DE9C();
        v25 = v50;
      }

      v26 = *(v25 + 16);
      if (v26 >= *(v25 + 24) >> 1)
      {
        sub_10000DE9C();
        v25 = v51;
      }

      *(v25 + 16) = v26 + 1;
      v27 = v25 + 16 * v26;
      *(v27 + 32) = a2;
      *(v27 + 40) = a3;
      *v23 = v25;
    }

    if (a6)
    {
      if (a6 == 1)
      {
        goto LABEL_25;
      }

      v28 = sub_1000B5C50(v55, a6, a2);
      v30 = v29;
      v31 = v23[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = *(v31 + 16);
        sub_10000DE9C();
        v31 = v53;
      }

      v32 = *(v31 + 16);
      if (v32 >= *(v31 + 24) >> 1)
      {
        sub_10000DE9C();
        v31 = v54;
      }

      *(v31 + 16) = v32 + 1;
      v33 = v31 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;

      v35 = sub_100062640(v34);
      v36 = sub_10018BED8(v35);

      v23[1] = v36;
    }
  }

  else if (a6 == 1)
  {
    goto LABEL_25;
  }

  v37 = 0xE900000000000073;
  v38 = 0x636974796C616E61;
  switch(v56)
  {
    case 1:
      v37 = 0xE800000000000000;
      v38 = 0x6C616E7265746E69;
      goto LABEL_20;
    case 2:
      v37 = 0xE800000000000000;
      v38 = 0x7379656E72756F6ALL;
      goto LABEL_20;
    case 3:
      v37 = 0xEF736E6F69746164;
      v38 = 0x6E656D6D6F636572;
      goto LABEL_20;
    case 4:
      break;
    default:
LABEL_20:
      v39 = v23[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v39 + 16);
        sub_10000DE9C();
        v39 = v47;
      }

      v40 = *(v39 + 16);
      if (v40 >= *(v39 + 24) >> 1)
      {
        sub_10000DE9C();
        v39 = v48;
      }

      *(v39 + 16) = v40 + 1;
      v41 = v39 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;

      v43 = sub_100062640(v42);
      v44 = sub_10018BED8(v43);

      v23[1] = v44;
      break;
  }

LABEL_25:
  sub_1000B8A2C(v23);
  return sub_1000BF4C8();
}

uint64_t sub_1000B5C50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3._countAndFlagsBits = sub_1000BF6D4();
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_100003B80();
  String.append(_:)(v4);
  return a3;
}

void sub_1000B5CBC()
{
  sub_100003D74();
  v70 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for ContentInfo();
  v8 = sub_100002DDC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = sub_10007B9A4(&qword_10026B4F8, &qword_1001E8AF8);
  sub_100003D10(v14);
  v16 = *(v15 + 64);
  sub_100004E78();
  __chkstk_darwin(v17);
  v19 = &v63 - v18;
  v20 = sub_10007B9A4(&qword_10026B500, &unk_1001E8B00);
  v21 = sub_100002DDC(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_1000056E8();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = &v63 - v28;
  v69 = type metadata accessor for ContentManager();
  sub_1000B62EC();
  sub_1000067A0(v19, 1, v20);
  if (v30)
  {
    sub_10000A00C(v19, &qword_10026B4F8, &qword_1001E8AF8);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v31 = sub_10000620C();
    sub_100002CFC(v31);
    v33 = *(v32 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v34 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v77 = &type metadata for String;
    v75 = v6;
    v76 = v4;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v75, &qword_10026D350, &qword_1001E6050);
    v35 = static os_log_type_t.error.getter();
    sub_1000036B0(v35);
  }

  else
  {
    v66 = v2;
    v67 = v13;
    v68 = v7;
    sub_1000BF51C(v19, v29, &qword_10026B500, &unk_1001E8B00);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    v65 = qword_100287838;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v36 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v36);
    v38 = *(v37 + 72);
    sub_1000056F8();
    v64 = sub_100003F28();
    *(v64 + 16) = xmmword_1001E61C0;
    v39 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000048BC();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    sub_1000BF568(v29, v26, &qword_10026B500, &unk_1001E8B00);
    v40 = v26 + *(v20 + 48);
    v42 = *(v40 + 16);
    v41 = *(v40 + 24);

    sub_100003018();
    v63 = v43;
    sub_1000BF4C8();
    v77 = &type metadata for String;
    v75 = v42;
    v76 = v41;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v75, &qword_10026D350, &qword_1001E6050);
    sub_1000BF568(v29, v26, &qword_10026B500, &unk_1001E8B00);
    v44 = (v26 + *(v20 + 48) + *(v68 + 48));
    v46 = *v44;
    v45 = v44[1];

    sub_100003B80();
    sub_1000BF4C8();
    v77 = &type metadata for String;
    v75 = v46;
    v76 = v45;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v75, &qword_10026D350, &qword_1001E6050);
    v47 = v66;
    swift_getErrorValue();
    v48 = v72;
    v77 = v72;
    sub_100017E64(&v75);
    sub_1000047A4(v48);
    (*(v49 + 16))();
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v75, &qword_10026D350, &qword_1001E6050);
    v50 = static os_log_type_t.error.getter();
    sub_1000036B0(v50);

    v51 = *(v20 + 48);
    v52 = *v29;
    sub_1000B6534(*v29, &v29[v51], v47);
    *(sub_100004BC8() + 16) = v52;
    sub_1000BF568(v29, v26, &qword_10026B500, &unk_1001E8B00);
    v53 = v67;
    sub_1000A0850(v26 + *(v20 + 48), v67);
    *(v53 + *(v68 + 40)) = 3;
    sub_1000B8A2C(v53);
    sub_1000BD540(&v29[v51], 0, v54, v55, v56, v57, v58, v59, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);

    sub_1000BF4C8();
    sub_10000DE30();
    sub_10000A00C(v60, v61, v62);
  }

  sub_100005F14();
}

void sub_1000B62EC()
{
  sub_100003D74();
  v32 = v0;
  v30 = v1;
  v31 = v2;
  v28 = v3;
  v4 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  sub_100003D10(v4);
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ContentInfo();
  v11 = sub_100002DDC(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v27 = v15 - v14;
  sub_100003D1C();
  v16 = 0;
  v29 = type metadata accessor for AppDatabase();
  while (1)
  {
    v17 = *(&off_100244588 + v16 + 32);
    sub_10001D804(v17);
    sub_1000A0DA4();

    sub_10009F208(v30, v31, v32, v9);

    sub_1000067A0(v9, 1, v10);
    if (!v18)
    {
      break;
    }

    ++v16;
    sub_10000A00C(v9, &qword_10026A050, &unk_1001EA2B0);
    if (v16 == 4)
    {
      v22 = sub_10007B9A4(&qword_10026B500, &unk_1001E8B00);
      v23 = v28;
      v24 = 1;
      v25 = 1;
      goto LABEL_7;
    }
  }

  v19 = v27;
  sub_1000A0850(v9, v27);
  v20 = *(sub_10007B9A4(&qword_10026B500, &unk_1001E8B00) + 48);
  v21 = v28;
  *v28 = v17;
  sub_1000A0850(v19, &v21[v20]);
  sub_10000B1D4();
LABEL_7:
  sub_10000A7C0(v23, v24, v25, v22);
  sub_100005F14();
}

uint64_t sub_1000B6534(unsigned int a1, uint64_t a2, uint64_t a3)
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "amsengagementd");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  v7 = 0x80000001001F56B0;
  if (a3)
  {
    v7 = 0xED000064656C6961;
  }

  v8 = 0x46746E65746E6F43;
  if (!a3)
  {
    v8 = 0xD000000000000010;
  }

  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v8;
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x79654B6568636163;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6E6F6973726576;
  *(inited + 184) = 0xE700000000000000;
  v11 = (a2 + *(type metadata accessor for ContentInfo() + 48));
  v12 = *v11;
  v13 = v11[1];
  v6[27] = &type metadata for String;
  v6[24] = v12;
  v6[25] = v13;

  v14 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    v15 = _convertErrorToNSError(_:)();
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1001E6580;
    *(v16 + 32) = 1701080931;
    *(v16 + 40) = 0xE400000000000000;
    *(v16 + 48) = [v15 code];
    *(v16 + 72) = &type metadata for Int;
    *(v16 + 80) = 0x6E69616D6F64;
    *(v16 + 88) = 0xE600000000000000;
    v17 = [v15 domain];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v16 + 96) = v18;
    *(v16 + 104) = v20;
    *(v16 + 120) = &type metadata for String;
    *(v16 + 128) = 0x656C746974;
    *(v16 + 136) = 0xE500000000000000;
    v21 = sub_1000BF330(v15, &selRef_ams_title);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    *(v16 + 144) = v23;
    *(v16 + 152) = v24;
    *(v16 + 168) = &type metadata for String;
    *(v16 + 176) = 0x6567617373656DLL;
    *(v16 + 184) = 0xE700000000000000;
    v25 = sub_1000BF330(v15, &selRef_ams_message);
    *(v16 + 216) = &type metadata for String;
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    *(v16 + 192) = v27;
    *(v16 + 200) = v28;
    v29 = Dictionary.init(dictionaryLiteral:)();
    v44 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v43 = v29;
    sub_100002C4C(&v43, &v42);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = *(type metadata accessor for LogInterpolation() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v34 = static os_log_type_t.error.getter();
    sub_1000036B0(v34);
  }

  else
  {
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v35 = *(type metadata accessor for LogInterpolation() - 8);
    v36 = *(v35 + 72);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v38 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v39 = static os_log_type_t.default.getter();
    sub_1000036B0(v39);
  }

  sub_1000BCAC0(a1, v14);
}

void sub_1000B6B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100003D74();
  a19 = v21;
  a20 = v22;
  v194 = v20;
  v188 = v23;
  v184 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for LogInterpolation.StringInterpolation();
  v30 = sub_100003D10(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_100002DEC();
  v35 = v34 - v33;
  v36 = type metadata accessor for ContentInfo();
  v37 = sub_100002DDC(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_100002DEC();
  v42 = v41 - v40;
  v43 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v44 = sub_100003D10(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_100005C2C();
  v187 = v47;
  sub_100003F08();
  __chkstk_darwin(v48);
  sub_10000E6C4();
  v189 = v49;
  sub_100003D1C();
  v192 = type metadata accessor for URL();
  v50 = sub_100002CC4(v192);
  v52 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v50);
  sub_100002DEC();
  v57 = v56 - v55;
  v58 = sub_10007B9A4(&qword_10026B4F8, &qword_1001E8AF8);
  sub_100003D10(v58);
  v60 = *(v59 + 64);
  sub_100004E78();
  __chkstk_darwin(v61);
  v63 = &v173 - v62;
  v64 = sub_10007B9A4(&qword_10026B500, &unk_1001E8B00);
  v65 = sub_100002DDC(v64);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  sub_100005C2C();
  sub_100019BBC();
  __chkstk_darwin(v68);
  sub_10000714C();
  sub_100019BBC();
  __chkstk_darwin(v69);
  sub_10000714C();
  v191 = v70;
  sub_100003F08();
  __chkstk_darwin(v71);
  v73 = &v173 - v72;
  v195 = type metadata accessor for ContentManager();
  v190 = v28;
  sub_1000B62EC();
  v193 = v64;
  sub_1000067A0(v63, 1, v64);
  if (!v74)
  {
    v183 = v36;
    v182 = v57;
    v185 = v52;
    v173 = v42;
    v175 = v35;
    sub_1000BF51C(v63, v73, &qword_10026B500, &unk_1001E8B00);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    v190 = qword_100287838;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v81 = sub_10000620C();
    sub_100002CFC(v81);
    v83 = *(v82 + 72);
    sub_10000DE0C();
    v86 = v84 & ~v85;
    sub_1000BF72C(&a10);
    v177 = v73;
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_1001E6580;
    v178 = v86;
    v87 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v88 = v191;
    sub_1000BF568(v73, v191, &qword_10026B500, &unk_1001E8B00);
    v89 = v193;
    v90 = v88 + *(v193 + 48);
    v92 = *(v90 + 16);
    v91 = *(v90 + 24);

    sub_10000A5EC();
    sub_1000BF4C8();
    v199 = &type metadata for String;
    v197 = v92;
    v198 = v91;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v197, &qword_10026D350, &qword_1001E6050);
    v186 = v83;
    sub_1000BF568(v73, v88, &qword_10026B500, &unk_1001E8B00);
    v93 = v88 + *(v89 + 48);
    sub_100006794();
    v95 = v93 + *(v94 + 48);
    v97 = *v95;
    v96 = *(v95 + 8);

    sub_1000BF4C8();
    v199 = &type metadata for String;
    v197 = v97;
    v198 = v96;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v197, &qword_10026D350, &qword_1001E6050);
    static os_log_type_t.default.getter();
    sub_100008FCC();
    sub_10001C04C(v98);

    v99 = v73;
    v100 = *v73;
    v179 = sub_100004BC8();
    *(v179 + 16) = v100;
    v101 = v187;
    sub_1000BF568(v188, v187, &unk_10026FEE0, &unk_1001E67C0);
    v102 = v192;
    sub_1000067A0(v101, 1, v192);
    if (v74)
    {
      sub_10000A00C(v101, &unk_10026FEE0, &unk_1001E67C0);
      v103 = 0;
      v105 = 0xE000000000000000;
    }

    else
    {
      v103 = URL.pathExtension.getter();
      v105 = v104;
      v106 = *(v185 + 8);
      v107 = sub_100003B80();
      v108(v107);
    }

    v109 = v189;
    v110 = 2 * v186;
    v111 = *(v193 + 48);
    sub_1000B79F4(v99 + v111, v100, v103, v105, v189);

    sub_1000067A0(v109, 1, v102);
    if (v74)
    {
      sub_10000A00C(v109, &unk_10026FEE0, &unk_1001E67C0);
      *(sub_100003D9C() + 16) = xmmword_1001E5F70;
      v112 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000DE30();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v113 = static os_log_type_t.error.getter();
      sub_10001C04C(v113);

      v114 = v99;
    }

    else
    {
      v189 = v110;
      v174 = v99;
      (*(v185 + 32))(v182, v109, v102);
      v115 = objc_opt_self();
      v116 = [v115 defaultManager];
      URL.path.getter();
      v117 = String._bridgeToObjectiveC()();

      v197 = 0;
      v118 = [v116 removeItemAtPath:v117 error:&v197];

      if (v118)
      {
        v119 = v197;
      }

      else
      {
        v120 = v197;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v121 = [v115 defaultManager];
      URL._bridgeToObjectiveC()(&a18);
      v123 = v122;
      v124 = v182;
      URL._bridgeToObjectiveC()(&a16);
      v126 = v125;
      v197 = 0;
      v127 = [v121 moveItemAtURL:v123 toURL:v125 error:&v197];

      v128 = v197;
      if (v127)
      {
        v129 = v191;
        sub_1000BF568(v174, v191, &qword_10026B500, &unk_1001E8B00);
        v130 = v173;
        sub_1000A0850(v129 + *(v193 + 48), v173);
        v131 = v128;
        v132 = URL.path.getter();
        v134 = v133;
        v135 = v183;
        v136 = (v130 + *(v183 + 36));
        v137 = v136[1];

        *v136 = v132;
        v136[1] = v134;
        *(v130 + *(v135 + 40)) = 2;
        sub_100008FCC();
        sub_1000BCA54();
        sub_10009FA1C(v130);

        sub_1000B6534(v100, v130, 0);
        sub_1000BCA54();
        v147 = v174;
        v148 = v180;
        sub_1000BF568(v174, v180, &qword_10026B500, &unk_1001E8B00);
        v149 = v193;
        v150 = v148 + *(v193 + 48);
        v152 = *(v150 + 16);
        v151 = *(v150 + 24);

        sub_1000BF4C8();
        v153 = v181;
        sub_1000BF568(v147, v181, &qword_10026B500, &unk_1001E8B00);
        v154 = v153 + *(v149 + 48);
        sub_100006794();
        v156 = (v154 + *(v155 + 48));
        v158 = *v156;
        v157 = v156[1];

        sub_1000BF4C8();
        sub_10005ADC4();
        sub_10009F650(v159, v160, v161, v157);

        v162 = v174;
        sub_1000BD540(v174 + v111, 1, v163, v164, v165, v166, v167, v168, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
        *(sub_100003D9C() + 16) = xmmword_1001E5F70;
        v169 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000DE30();
        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.init(stringLiteral:)();
        v170 = static os_log_type_t.default.getter();
        sub_10001C04C(v170);

        v171 = sub_100004BB4();
        v172(v171, v192);
        sub_10000A00C(v162, &qword_10026B500, &unk_1001E8B00);
        sub_1000050BC();
        sub_1000BF4C8();
        goto LABEL_21;
      }

      v138 = v197;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      (*(v185 + 8))(v124, v192);
      *(sub_100003D9C() + 16) = xmmword_1001E5F70;
      v139 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000DE30();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v140._countAndFlagsBits = 0xD00000000000001DLL;
      v140._object = 0x80000001001F5790;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v140);
      swift_getErrorValue();
      v141 = v196;
      v199 = v196;
      sub_100017E64(&v197);
      sub_1000047A4(v141);
      v143 = *(v142 + 16);
      sub_10005ADC4();
      v144();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v145 = sub_10000A00C(&v197, &qword_10026D350, &qword_1001E6050);
      sub_100003B48(v145);
      LogInterpolation.init(stringInterpolation:)();
      v146 = static os_log_type_t.error.getter();
      sub_10001C04C(v146);

      v114 = v174;
    }

    sub_10000A00C(v114, &qword_10026B500, &unk_1001E8B00);
    goto LABEL_21;
  }

  sub_10000A00C(v63, &qword_10026B4F8, &qword_1001E8AF8);
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v75 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v75);
  v77 = *(v76 + 72);
  sub_1000056F8();
  v78 = sub_100003F28();
  sub_1000BF738(v78, xmmword_1001E5F60);
  v79 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v199 = &type metadata for String;
  v197 = v190;
  v198 = v26;

  sub_100061E04();
  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v197, &qword_10026D350, &qword_1001E6050);
  v80 = static os_log_type_t.error.getter();
  sub_1000036B0(v80);

LABEL_21:
  sub_100005F14();
}

uint64_t sub_1000B79F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  sub_1000BCD00(a1);
  if (v17)
  {
    sub_1000BAEB0(a2);
    URL.appendingPathComponent(_:)();

    v18 = *(v10 + 8);
    v18(v14, v9);
    if (URL.pathExtension.getter() == a3 && v19 == v24)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        URL.appendingPathExtension(_:)();
        v18(v16, v9);
        return sub_10000A7C0(a5, 0, 1, v9);
      }
    }

    (*(v10 + 32))(a5, v16, v9);
    return sub_10000A7C0(a5, 0, 1, v9);
  }

  return sub_10000A7C0(a5, 1, 1, v9);
}

uint64_t sub_1000B7FA8(uint64_t a1, uint64_t a2)
{
  sub_1000BCA54();
  v4 = sub_10009E544(a1, a2);

  return v4;
}

uint64_t sub_1000B822C(uint64_t a1)
{
  sub_1000BCA54();
  v2 = sub_10009ECF4(a1);

  return v2;
}

void sub_1000B84AC()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ContentInfo();
  v7 = sub_100002DDC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v12 = (v11 - v10);
  v13 = *v1;
  v42[0] = v5;
  v42[1] = v3;
  v41[2] = v42;
  if (!sub_10013D5B0(sub_1000BF450, v41, v13))
  {
LABEL_28:
    sub_100005F14();
    return;
  }

  sub_10000B7DC();
  sub_1000BF470(v1, v12);
  v14 = *v12;
  swift_bridgeObjectRetain_n();
  v15 = sub_1000BEA88(v14, v5, v3);
  if (v16)
  {
    v17 = *(v14 + 16);
LABEL_22:

    v34 = *(v14 + 16);
    if (v34 >= v17)
    {
      sub_1001130A0(v17, v34);
      if (*(*v12 + 16) || *(v12 + *(v6 + 40)) != 3)
      {
        sub_1000B8730(v5, v3, v1);
        v36 = v35;
        v37 = v12[1];

        v12[1] = v36;
        sub_1000B8A2C(v12);
      }

      else
      {
        sub_1000B8874(v12[2], v12[3], *(v12 + *(v6 + 48)), *(v12 + *(v6 + 48) + 8));
      }

      sub_1000050BC();
      sub_1000BF4C8();
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  v17 = v15;
  v39 = v6;
  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    v38 = v1;
    v40 = v12;
    for (i = 16 * v15; ; i += 16)
    {
      v20 = *(v14 + 16);
      if (v18 == v20)
      {
        v1 = v38;
        v6 = v39;
        v12 = v40;
        goto LABEL_22;
      }

      if (v18 >= v20)
      {
        break;
      }

      v21 = *(v14 + i + 48);
      v22 = *(v14 + i + 56);
      if (v21 != v5 || v22 != v3)
      {
        v24 = *(v14 + i + 48);
        v25 = *(v14 + i + 56);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v18 != v17)
          {
            if (v17 >= v20)
            {
              goto LABEL_30;
            }

            v26 = (v14 + 32 + 16 * v17);
            v28 = *v26;
            v27 = v26[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1001D1A2C(v14);
              v14 = v33;
            }

            v29 = v14 + 16 * v17;
            v30 = *(v29 + 40);
            *(v29 + 32) = v21;
            *(v29 + 40) = v22;

            if (v18 >= *(v14 + 16))
            {
              goto LABEL_31;
            }

            v31 = v14 + i;
            v32 = *(v14 + i + 56);
            *(v31 + 48) = v28;
            *(v31 + 56) = v27;

            *v40 = v14;
          }

          ++v17;
        }
      }

      ++v18;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
}

void sub_1000B8730(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4._countAndFlagsBits = sub_1000BF6D4();
  String.append(_:)(v4);
  v5 = 0;
  v6 = *(a3 + 8);
  v7 = *(v6 + 16);
  v8 = v6 + 40;
LABEL_2:
  for (i = (v8 + 16 * v5); ; i += 2)
  {
    if (v7 == v5)
    {

      return;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v11 = *(i - 1);
    v10 = *i;

    v12._countAndFlagsBits = sub_100003B80();
    if (!String.hasPrefix(_:)(v12))
    {
      v19 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BF744(_swiftEmptyArrayStorage[2]);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100005C40(v13);
        sub_1000BF720();
        sub_100027C2C(v16, v17, v18);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v11;
      v15[5] = v10;
      v8 = v19;
      goto LABEL_2;
    }

    ++v5;
  }

  __break(1u);
}

void sub_1000B8BD8()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v101 = v4;
  v102 = v5;
  v103 = v6;
  v104 = v7;
  v95[3] = v8;
  v95[2] = v9;
  v97 = *v0;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = sub_100003D10(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v95[1] = v15 - v14;
  v16 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v16);
  v18 = *(v17 + 64);
  sub_100004E78();
  __chkstk_darwin(v19);
  v21 = v95 - v20;
  v99 = type metadata accessor for URL();
  v22 = sub_100002CC4(v99);
  v98 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_100002DEC();
  sub_10000A854(v27 - v26);
  v28 = type metadata accessor for Date();
  v29 = sub_100002CC4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  sub_100002DEC();
  v36 = v35 - v34;
  v37 = type metadata accessor for ContentInfo();
  v38 = sub_100002DDC(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_100002DEC();
  v43 = (v42 - v41);
  *&v109 = 7107700;
  *(&v109 + 1) = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v106, v3, &v109);
  sub_10000E1E8(&v106);
  v100 = v1;
  if (v110)
  {
    if (sub_10005E28C())
    {
      v44 = v105;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(&v109, &qword_10026D350, &qword_1001E6050);
  }

  v44 = 30;
LABEL_6:
  static Date.now.getter();
  if ((v44 * 86400) >> 64 != (86400 * v44) >> 63)
  {
    __break(1u);
    goto LABEL_34;
  }

  v45 = v43 + v37[8];
  Date.addingTimeInterval(_:)();
  (*(v31 + 8))(v36, v28);
  v46 = (v43 + v37[9]);
  *v46 = 0;
  v46[1] = 0;
  v95[0] = v46;
  v47 = _swiftEmptyArrayStorage;
  *v43 = _swiftEmptyArrayStorage;
  v48 = v104;
  v43[2] = v103;
  v43[3] = v48;
  v49 = v37[7];

  Date.init()();
  v43[1] = _swiftEmptyArrayStorage;
  *(v43 + v37[10]) = 2;
  v50 = (v43 + v37[11]);
  *v50 = 0;
  v50[1] = 0xE000000000000000;
  v51 = (v43 + v37[12]);
  v52 = v102;
  *v51 = v101;
  v51[1] = v52;
  *&v109 = 0x617461646174656DLL;
  *(&v109 + 1) = 0xE800000000000000;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v106, v3, &v109);
  sub_10000E1E8(&v106);
  if (v110)
  {
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    if (sub_10005E28C())
    {
      v47 = v105;
    }
  }

  else
  {
    sub_10000A00C(&v109, &qword_10026D350, &qword_1001E6050);
  }

  v53 = v47[2];
  v54 = v47 + 5;
  for (i = _swiftEmptyArrayStorage; v53; i = v63)
  {
    v57 = *(v54 - 1);
    v56 = *v54;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = i[2];
      sub_100003030();
      sub_10000DE9C();
      i = v65;
    }

    v59 = i[2];
    v58 = i[3];
    if (v59 >= v58 >> 1)
    {
      sub_100005C40(v58);
      sub_10000DE9C();
      i = v66;
    }

    i[2] = v59 + 1;
    v60 = &i[2 * v59];
    v60[4] = v57;
    v60[5] = v56;

    v62 = sub_100062640(v61);
    v63 = sub_10018BED8(v62);

    v43[1] = v63;
    v54 += 2;
    --v53;
  }

  v44 = v100;
  sub_1000B79F4(v43, *(v100 + 16), 1852797802, 0xE400000000000000, v21);
  v67 = v99;
  sub_1000067A0(v21, 1, v99);
  if (v68)
  {
    sub_10000A00C(v21, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_1002686D8 == -1)
    {
LABEL_20:
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v69 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v69);
      v71 = *(v70 + 72);
      sub_1000056F8();
      v72 = sub_100003F28();
      sub_1000BF738(v72, xmmword_1001E5F70);
      v108 = type metadata accessor for ContentManager();
      v106 = v44;

      if (AMSLogKey())
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000091B8();
      }

      else
      {
        sub_10001BD8C();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v106);
      LogInterpolation.init(stringLiteral:)();
      v78 = static os_log_type_t.error.getter();
      sub_1000036B0(v78);

      goto LABEL_32;
    }

LABEL_34:
    sub_100006B70();
    swift_once();
    goto LABEL_20;
  }

  sub_100006794();
  (*(v73 + 32))(v96, v21, v67);
  v74 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v75 = String._bridgeToObjectiveC()();

  v106 = 0;
  v76 = [v74 removeItemAtPath:v75 error:&v106];

  v77 = v106;
  if (!v76)
  {
    sub_100005F2C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  Data.write(to:options:)();
  v79 = URL.path.getter();
  v80 = v95[0];
  *v95[0] = v79;
  *(v80 + 8) = v81;
  sub_1000B8A2C(v43);
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  v102 = qword_100287838;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v82 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v82);
  v84 = *(v83 + 72);
  sub_1000056F8();
  v101 = v85;
  *(sub_100003F28() + 16) = xmmword_1001E5F70;
  v108 = type metadata accessor for ContentManager();
  v106 = v44;

  v86 = AMSLogKey();
  if (v86)
  {
    v87 = v86;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v106);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v88._object = 0x80000001001F5C10;
  v88._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v88);
  v108 = &type metadata for String;
  v106 = v103;
  v107 = v104;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v106, &qword_10026D350, &qword_1001E6050);
  v89._countAndFlagsBits = 544175136;
  v89._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
  v90 = v96;
  v91 = URL.path.getter();
  v108 = &type metadata for String;
  v106 = v91;
  v107 = v92;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v93 = sub_10000A00C(&v106, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v93);
  LogInterpolation.init(stringInterpolation:)();
  v94 = static os_log_type_t.default.getter();
  sub_1000036B0(v94);

  (*(v98 + 8))(v90, v67);
LABEL_32:
  sub_1000050BC();
  sub_1000BF4C8();
  sub_100005F14();
}

void sub_1000B97BC()
{
  sub_100003D74();
  v130 = v2;
  v134 = v3;
  v139 = v4;
  v128 = v0;
  v6 = v5;
  v136 = v7;
  v137 = v8;
  v132 = *v0;
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  sub_10000A854(v14 - v13);
  v129 = type metadata accessor for URL();
  v15 = sub_100002CC4(v129);
  v138 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v135 = v20 - v19;
  v21 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v22 = sub_100003D10(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_1000056E8();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  sub_10000AB64();
  __chkstk_darwin(v29);
  v31 = &v125 - v30;
  v32 = type metadata accessor for Date();
  v33 = sub_100002CC4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v38);
  v40 = &v125 - v39;
  v41 = type metadata accessor for ContentInfo();
  v42 = (v41 - 8);
  v43 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  sub_1000056E8();
  v46 = v44 - v45;
  __chkstk_darwin(v47);
  sub_100022228();
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v35 + 8))(v0, v32);
  v48 = &v1[v42[11]];
  *v48 = 0;
  v48[1] = 0;
  v126 = v48;
  *v1 = _swiftEmptyArrayStorage;
  v127 = v6;
  v49 = v139;
  *(v1 + 2) = v6;
  *(v1 + 3) = v49;
  v50 = v42[9];

  Date.init()();
  v51 = v40;
  v52 = v130;
  (*(v35 + 32))(&v1[v42[10]], v51, v32);
  v53 = v128;
  *(v1 + 1) = _swiftEmptyArrayStorage;
  v1[v42[12]] = 2;
  v54 = &v1[v42[13]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  v55 = &v1[v42[14]];
  *v55 = v134;
  *(v55 + 1) = v52;

  URL.init(string:)();
  sub_10000B7DC();
  v56 = v1;
  sub_1000BF470(v1, v46);
  v57 = *(v53 + 16);
  v133 = v31;
  v58 = v31;
  v59 = v129;
  sub_1000BF568(v58, v27, &unk_10026FEE0, &unk_1001E67C0);
  sub_1000067A0(v27, 1, v59);
  if (v83)
  {
    sub_10000A00C(v27, &unk_10026FEE0, &unk_1001E67C0);
    v60 = 0;
    v62 = 0xE000000000000000;
    v64 = v138;
  }

  else
  {
    v60 = URL.pathExtension.getter();
    v62 = v61;
    v63 = v138;
    (*(v138 + 8))(v27, v59);
    v64 = v63;
  }

  v65 = v131;
  sub_1000B79F4(v46, v57, v60, v62, v131);

  sub_1000050BC();
  sub_1000BF4C8();
  sub_1000067A0(v65, 1, v59);
  if (v83)
  {
    sub_10000A00C(v65, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v66 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v66);
    v68 = *(v67 + 72);
    sub_1000056F8();
    v69 = sub_100003F28();
    sub_1000BF738(v69, xmmword_1001E5F70);
    v70 = type metadata accessor for ContentManager();
    sub_10003D310(v70);
    v71 = AMSLogKey();
    if (v71)
    {
      v72 = v71;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100061E04();
    sub_10005ADC4();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v141);
    LogInterpolation.init(stringLiteral:)();
    v91 = static os_log_type_t.error.getter();
    sub_1000036B0(v91);

    sub_10000A00C(v133, &unk_10026FEE0, &unk_1001E67C0);
    sub_1000050BC();
    goto LABEL_25;
  }

  v73 = *(v64 + 32);
  v74 = v59;
  v73(v135, v65, v59);
  v75 = URL.path.getter();
  v76 = v126;
  *v126 = v75;
  v76[1] = v77;
  v78 = objc_opt_self();
  v79 = [v78 defaultManager];
  URL.path.getter();
  v80 = String._bridgeToObjectiveC()();

  v81 = [v79 fileExistsAtPath:v80];

  if (v81)
  {
    goto LABEL_20;
  }

  v83 = URL.path.getter() == v136 && v82 == v137;
  if (v83)
  {

    goto LABEL_20;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
LABEL_20:
    sub_1000B8A2C(v56);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v92 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v92);
    v94 = *(v93 + 72);
    sub_1000056F8();
    *(sub_10000A92C() + 16) = xmmword_1001E5F70;
    v95 = type metadata accessor for ContentManager();
    sub_10003D310(v95);
    v96 = AMSLogKey();
    v97 = v135;
    if (v96)
    {
      v98 = v96;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v141);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v99._countAndFlagsBits = 0xD00000000000001ELL;
    v99._object = 0x80000001001F5BD0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v99);
    v143 = &type metadata for String;
    sub_100006794();
    v141 = v100;
    v142 = v139;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v101 = sub_10000A00C(&v141, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v101);
    LogInterpolation.init(stringInterpolation:)();
    v102 = static os_log_type_t.default.getter();
    sub_1000036B0(v102);

    (*(v138 + 8))(v97, v74);
    sub_10000A00C(v133, &unk_10026FEE0, &unk_1001E67C0);
    sub_1000050BC();
LABEL_25:
    sub_1000BF4C8();
    goto LABEL_26;
  }

  v85 = [v78 defaultManager];
  v86 = String._bridgeToObjectiveC()();
  v87 = v135;
  URL.path.getter();
  v88 = String._bridgeToObjectiveC()();

  v141 = 0;
  v89 = [v85 moveItemAtPath:v86 toPath:v88 error:&v141];

  if (v89)
  {
    v90 = v141;
    goto LABEL_20;
  }

  v103 = v141;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v138 + 8))(v87, v74);
  sub_10000A00C(v133, &unk_10026FEE0, &unk_1001E67C0);
  sub_1000050BC();
  sub_1000BF4C8();
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v104 = sub_10000620C();
  sub_100002CFC(v104);
  v106 = *(v105 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  v107 = type metadata accessor for ContentManager();
  sub_10003D310(v107);
  v108 = AMSLogKey();
  if (v108)
  {
    v109 = v108;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100004E34();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v141);
  LogInterpolation.init(stringLiteral:)();
  v143 = &type metadata for String;
  sub_100006794();
  v141 = v110;
  v142 = v139;

  static LogInterpolation.safe(_:)();
  sub_1000048BC();
  sub_10000A00C(v111, v112, v113);
  v143 = &type metadata for String;
  v141 = v134;
  v142 = v52;

  static LogInterpolation.safe(_:)();
  sub_1000048BC();
  sub_10000A00C(v114, v115, v116);
  swift_getErrorValue();
  v117 = v140;
  v143 = v140;
  sub_100017E64(&v141);
  sub_1000047A4(v117);
  v119 = *(v118 + 16);
  sub_10000AB04();
  v120();
  static LogInterpolation.safe(_:)();
  sub_1000048BC();
  sub_10000A00C(v121, v122, v123);
  v124 = static os_log_type_t.error.getter();
  sub_1000036B0(v124);

LABEL_26:
  sub_100005F14();
}

void sub_1000BA35C()
{
  sub_100003D74();
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_100003D1C();
  v66 = type metadata accessor for URL();
  v7 = sub_100002CC4(v66);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100005C2C();
  v65 = v12;
  sub_100003F08();
  __chkstk_darwin(v13);
  sub_10000E6C4();
  v64 = v14;
  v63 = *(v0 + 16);
  v15 = sub_1000BAA4C(v63);
  v16 = v15[2];
  if (v16)
  {
    v62 = (v9 + 8);
    v17 = v15 + 5;
    v61 = v0;
    while (1)
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      sub_1000BAEB0(v63);
      URL.appendingPathComponent(_:)();

      v20 = *v62;
      (*v62)(v65, v66);
      v21 = URL.path.getter();
      v23 = v22;
      v20(v64, v66);
      v67 = v21;
      v68 = v23;
      v24 = sub_1000BB410();
      if (!v25)
      {
        break;
      }

      v28 = v24;
      v29 = v25;
      v30 = v26;
      v31 = v27;

      sub_1000B7DD0(v28, v29, v30, v31, 4);
      sub_100005F2C();

      v32 = *(v1 + 16);

      if (!v32)
      {
        if (qword_1002686D8 != -1)
        {
          sub_100006B70();
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        sub_100003EFC();
        v38 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v38);
        v40 = *(v39 + 72);
        sub_100007E58();
        *(sub_10000A92C() + 16) = xmmword_1001E5F70;
        v71 = type metadata accessor for ContentManager();
        sub_10005E268();
        v41 = AMSLogKey();
        if (v41)
        {
          v42 = v41;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v69);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v51._object = 0x80000001001F5AC0;
        v51._countAndFlagsBits = 0xD00000000000002DLL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
        v71 = &type metadata for String;
        v69 = v67;
        v70 = v68;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v69, &qword_10026D350, &qword_1001E6050);
        v52._countAndFlagsBits = 0x203A79656B2820;
        v52._object = 0xE700000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
        v71 = &type metadata for String;
        v69 = v28;
        v70 = v29;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v69, &qword_10026D350, &qword_1001E6050);
        v53._countAndFlagsBits = 0x6F6973726576202CLL;
        v53._object = 0xEB00000000203A6ELL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);

        v71 = &type metadata for String;
        v69 = v30;
        v70 = v31;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        v54 = sub_10000A00C(&v69, &qword_10026D350, &qword_1001E6050);
        sub_100003B48(v54);
        LogInterpolation.init(stringInterpolation:)();
        v55 = static os_log_type_t.error.getter();
        sub_1000036B0(v55);

        sub_1000060C4();
        sub_1000BB11C(v56, v57, v58, v59);
LABEL_16:

        v1 = v61;
        goto LABEL_17;
      }

LABEL_17:
      v17 += 2;
      if (!--v16)
      {

        sub_100005F14();
        return;
      }
    }

    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v33 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v33);
    v35 = *(v34 + 72);
    sub_1000056F8();
    *(sub_10000A92C() + 16) = xmmword_1001E5F70;
    v71 = type metadata accessor for ContentManager();
    v69 = v1;

    v36 = AMSLogKey();
    if (v36)
    {
      v37 = v36;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v69);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100006794();
    v44._object = (v43 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
    v71 = &type metadata for String;
    v69 = v21;
    v70 = v23;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v45 = sub_10000A00C(&v69, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v45);
    LogInterpolation.init(stringInterpolation:)();
    v46 = static os_log_type_t.error.getter();
    sub_1000036B0(v46);

    sub_1000060C4();
    sub_1000BB11C(v47, v48, v49, v50);
    goto LABEL_16;
  }

  sub_100005F14();
}

void *sub_1000BAA4C(char a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  sub_1000BAEB0(a1);
  URL.path.getter();
  (*(v5 + 8))(v8, v4);
  v10 = String._bridgeToObjectiveC()();

  v31[0] = 0;
  v11 = [v9 contentsOfDirectoryAtPath:v10 error:v31];

  v12 = v31[0];
  if (v11)
  {
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;
  }

  else
  {
    v15 = v31[0];
    v16 = _convertNSErrorToError(_:)();

    v29[1] = v16;
    swift_willThrow();
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    v29[0] = qword_100287838;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = *(type metadata accessor for LogInterpolation() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v20 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._object = 0x80000001001F5B80;
    v21._countAndFlagsBits = 0xD000000000000027;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    v32 = v4;
    sub_100017E64(v31);
    sub_1000BAEB0(a1);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v31, &qword_10026D350, &qword_1001E6050);
    v22._countAndFlagsBits = 8238;
    v22._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    swift_getErrorValue();
    v23 = v29[2];
    v24 = v30;
    v32 = v30;
    v25 = sub_100017E64(v31);
    (*(*(v24 - 8) + 16))(v25, v23, v24);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v31, &qword_10026D350, &qword_1001E6050);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    LogInterpolation.init(stringInterpolation:)();
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27);

    return _swiftEmptyArrayStorage;
  }

  return v13;
}

void sub_1000BAEB0(char a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E78C(a1);
  URL.appendingPathComponent(_:)();
  (*(v3 + 8))(v6, v2);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  URL.path.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 fileExistsAtPath:v9 isDirectory:0];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 defaultManager];
    URL.path.getter();
    v12 = String._bridgeToObjectiveC()();

    v18 = 0;
    v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v18];

    v14 = v18;
    if (v13)
    {

      v15 = v14;
    }

    else
    {
      v17 = v18;
      v16 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1000BB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v13 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentManager();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001001F5AF0;
  v14._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v22[3] = &type metadata for String;
  v22[0] = a1;
  v22[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v22, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.error.getter();
  sub_1000036B0(v16);

  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v17 = *(qword_1002877D0 + OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v5;
  v18[5] = a3;
  v18[6] = a4;

  sub_100017E54(a3);
  sub_10018AF98(sub_1000BF414, v18);
}

uint64_t sub_1000BB410()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v28[-v6];
  URL.init(fileURLWithPath:)();
  URL.deletingPathExtension()();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = URL.lastPathComponent.getter();
  v11 = v10;
  v8(v7, v0);
  v29 = v9;
  v30 = v11;
  sub_10001ECE0();
  v12 = StringProtocol.removingPercentEncoding.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    v9 = v14;
    v11 = v15;
  }

  v29 = 43;
  v30 = 0xE100000000000000;
  __chkstk_darwin(v12);
  *&v28[-16] = &v29;
  v16 = sub_1000BECF4(1, 1, sub_1000BF450, &v28[-32], v9, v11);
  v17 = v16;
  if (v16[2] != 2)
  {

    return 0;
  }

  v18 = v16[8];
  v19 = v16[9];
  v20 = v16[10];
  v21 = v16[11];

  v22 = static String._fromSubstring(_:)();

  if (v17[2])
  {
    v24 = v17[4];
    v25 = v17[5];
    v26 = v17[6];
    v27 = v17[7];

    static String._fromSubstring(_:)();

    return v22;
  }

  __break(1u);
  return result;
}

void sub_1000BB69C()
{
  sub_100003D74();
  v3 = v2;
  v4 = type metadata accessor for ContentInfo();
  v5 = sub_100002CFC(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000056E8();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_100022228();
  sub_100004AA0();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  sub_100004AA0();
  v14 = swift_allocObject();
  *(v14 + 16) = &_swiftEmptySetSingleton;
  v30 = v14 + 16;
  sub_100004AA0();
  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  sub_100004AA0();
  v31 = swift_allocObject();
  *(v31 + 16) = _swiftEmptyArrayStorage;
  v16 = v31 + 16;
  v17 = swift_allocObject();
  v17[2] = v0;
  v17[3] = v13;
  v17[4] = v14;
  v17[5] = v15;

  sub_1000B7C20(sub_1000BF400, v17);

  v32 = v14;

  sub_1000060C4();
  swift_beginAccess();
  v18 = *(v15 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v0 + 16);
    v21 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v22 = *(v33 + 72);
    do
    {
      sub_100003018();
      sub_1000BF470(v21, v1);
      type metadata accessor for ContentManager();
      *(sub_100004BC8() + 16) = v20;
      v23 = *(v1 + 16);
      v24 = *(v1 + 24);
      sub_1000060C4();
      sub_1000B8874();

      sub_1000BF4C8();
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  sub_1000060C4();
  swift_beginAccess();
  if (*(*v30 + 16))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v32;
    *(v25 + 24) = v31;
    sub_1000B7C20(sub_1000BF40C, v25);
  }

  sub_1000060C4();
  swift_beginAccess();
  v26 = *(*v16 + 16);
  if (v26)
  {
    v27 = *(v0 + 16);
    v28 = *v16 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v29 = *(v33 + 72);
    do
    {
      sub_100003018();
      sub_1000BF470(v28, v11);
      type metadata accessor for ContentManager();
      *(sub_100004BC8() + 16) = v27;
      sub_1000B8A2C(v11);

      sub_100003B80();
      sub_1000BF4C8();
      v28 += v29;
      --v26;
    }

    while (v26);
  }

  sub_100005F14();
}

uint64_t sub_1000BC848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BF470(a1, v10);
  v11 = *v10;

  sub_100062640(v12);
  swift_beginAccess();
  v13 = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  result = sub_1000BF090(v10, v13);
  v15 = *(*v10 + 16);
  if (v15 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1001130A0(result, v15);

    v16 = *v10;

    sub_100062640(v17);
    sub_1001C31D0();
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      swift_beginAccess();
      sub_1000EF570();
      v20 = *(*(a3 + 16) + 16);
      sub_1000EF674(v20);
      v21 = *(a3 + 16);
      *(v21 + 16) = v20 + 1;
      sub_1000BF470(v10, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20);
      *(a3 + 16) = v21;
      swift_endAccess();
    }

    return sub_1000BF4C8();
  }

  return result;
}

uint64_t sub_1000BCA54()
{
  type metadata accessor for AppDatabase();
  result = sub_10001D804(*(v0 + 16));
  if (!v1)
  {
    v3 = sub_1000A0DA4();

    return v3;
  }

  return result;
}

void sub_1000BCAC0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E8AB0;
  v5 = v4;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  *(v5 + 32) = sub_100092378();
  sub_1000F43B4(v5, v3);
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E61B0;
  sub_10005DFA4(a2);
  *(v6 + 32) = v7;
  sub_1000F4334(v6, v3);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v8 = sub_10002411C();
  v10 = [objc_allocWithZone(AMSEngagement) initWithBag:v8];

  v9 = [v10 _enqueue:v3];
}

uint64_t sub_1000BCD00(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for ContentInfo() + 48));
  v8 = v7[1];
  v15[0] = *v7;
  v15[1] = v8;

  v9._countAndFlagsBits = 43;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);

  v12._countAndFlagsBits = v11;
  v12._object = v10;
  String.append(_:)(v12);

  static CharacterSet.urlHostAllowed.getter();
  sub_10001ECE0();
  v13 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  (*(v3 + 8))(v6, v2);

  return v13;
}

id sub_1000BCE64(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v39 = a1;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v38 = a2;
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = *(type metadata accessor for LogInterpolation() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v16 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._object = 0x80000001001F5B40;
    v17._countAndFlagsBits = 0xD000000000000013;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    v43 = &type metadata for String;
    v41 = v39;
    v42 = v38;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v41, &qword_10026D350, &qword_1001E6050);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);

    v20 = [v9 defaultManager];
    v21 = String._bridgeToObjectiveC()();
    v41 = 0;
    v22 = [v20 removeItemAtPath:v21 error:&v41];

    if (v22)
    {
      result = v41;
    }

    else
    {
      v31 = v41;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v32 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._countAndFlagsBits = 0xD000000000000018;
      v33._object = 0x80000001001F5B60;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
      v43 = &type metadata for String;
      v41 = v39;
      v42 = v38;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v41, &qword_10026D350, &qword_1001E6050);
      v34._countAndFlagsBits = 8238;
      v34._object = 0xE200000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
      swift_getErrorValue();
      v43 = v40;
      v35 = sub_100017E64(&v41);
      (*(*(v40 - 1) + 16))(v35);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v41, &qword_10026D350, &qword_1001E6050);
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
      LogInterpolation.init(stringInterpolation:)();
      v37 = static os_log_type_t.error.getter();
      sub_1000036B0(v37);
    }

    if (!a4)
    {
      return result;
    }

    return a4(result);
  }

  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v24 = *(type metadata accessor for LogInterpolation() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v27 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentManager();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD00000000000001ALL;
  v28._object = 0x80000001001F5B20;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  v43 = &type metadata for String;
  v41 = v39;
  v42 = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v41, &qword_10026D350, &qword_1001E6050);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  LogInterpolation.init(stringInterpolation:)();
  v30 = static os_log_type_t.error.getter();
  sub_1000036B0(v30);

  if (a4)
  {
    return a4(result);
  }

  return result;
}

void sub_1000BD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100003D74();
  a19 = v21;
  a20 = v22;
  v145 = v23;
  v25 = v24;
  v159 = *v20;
  v164 = type metadata accessor for ContentInfo();
  v26 = sub_100002CC4(v164);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_100005C2C();
  v157 = v31;
  sub_100003F08();
  __chkstk_darwin(v32);
  sub_10000714C();
  sub_100019BBC();
  __chkstk_darwin(v33);
  sub_10000714C();
  v153 = v34;
  sub_100003F08();
  __chkstk_darwin(v35);
  sub_10000714C();
  v160 = v36;
  sub_100003F08();
  __chkstk_darwin(v37);
  v39 = v138 - v38;
  v40 = 0;
  v161 = 0;
  v154 = v25;
  v41 = v25[1];
  v42 = *(v41 + 16);
  v43 = v41 + 40;
  v162 = _swiftEmptyArrayStorage;
  v158 = v41 + 40;
LABEL_2:
  v44 = (v43 + 16 * v40);
  while (v42 != v40)
  {
    if (v40 >= *(v41 + 16))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      sub_100006B70();
      swift_once();
      goto LABEL_68;
    }

    ++v40;
    v45 = v44 + 2;
    v46 = *(v44 - 1);
    v47 = *v44;

    v48._countAndFlagsBits = v46;
    v48._object = v47;
    v49 = _findStringSwitchCase(cases:string:)(&off_100244A00, v48);

    v44 = v45;
    if (v49 < 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = v162[2];
        sub_100003030();
        sub_1000589D0();
        v162 = v54;
      }

      v51 = v162[2];
      v50 = v162[3];
      if (v51 >= v50 >> 1)
      {
        sub_100005C40(v50);
        sub_1000BF720();
        sub_1000589D0();
        v162 = v55;
      }

      v52 = v162;
      v162[2] = v51 + 1;
      *(v52 + v51 + 32) = v49;
      v43 = v158;
      goto LABEL_2;
    }
  }

  if (v162[2])
  {
    v56 = (v162 + 4);
  }

  else
  {
    v56 = (v20 + 2);
  }

  LODWORD(v158) = *v56;

  v144 = *v154;
  v57 = v161;
  v142 = *(v144 + 16);
  if (!v142)
  {
    goto LABEL_72;
  }

  v58 = 0;
  v143 = v144 + 32;
  v138[0] = "d info for failed batchKey";
  v141 = "plete, returning early";
  v140 = "All tasks for batchKey finished";
  v152 = xmmword_1001E5F60;
  v163 = v20;
  v139 = v39;
  while (2)
  {
    if (v58 >= *(v144 + 16))
    {
      goto LABEL_78;
    }

    v59 = (v143 + 16 * v58);
    v61 = *v59;
    v60 = v59[1];
    v151 = v58 + 1;

    v156 = v61;
    v162 = v60;
    v62 = sub_1000B7FA8(v61, v60);
    __chkstk_darwin(v62);
    sub_10000BE84();
    *(v63 - 16) = v154;
    v66 = sub_1001630FC(sub_1000BF38C, v64, v65);
    v161 = v57;
    v67 = 0;
    v68 = *(v66 + 16);
    v69 = _swiftEmptyArrayStorage;
    while (v68 != v67)
    {
      if (v67 >= *(v66 + 16))
      {
        __break(1u);
        goto LABEL_71;
      }

      v70 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v71 = *(v28 + 72);
      sub_10000B7DC();
      sub_1000BF470(v72, v39);
      if (v39[*(v164 + 40)] == 1)
      {
        sub_1000A0850(v39, v153);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10009B820(0, v69[2] + 1, 1);
          v69 = v165;
        }

        v75 = v69[2];
        v74 = v69[3];
        v76 = v75 + 1;
        if (v75 >= v74 >> 1)
        {
          v77 = sub_100005C40(v74);
          v155 = v78;
          sub_10009B820(v77, v78, 1);
          v76 = v155;
          v69 = v165;
        }

        v67 = (v67 + 1);
        v69[2] = v76;
        sub_1000A0850(v153, v69 + v70 + v75 * v71);
      }

      else
      {
        sub_1000050BC();
        sub_1000BF4C8();
        v67 = (v67 + 1);
      }
    }

    v79 = v69[2];

    v80 = 0;
    while (v68 != v80)
    {
      if (v80 >= *(v66 + 16))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v81 = *(v28 + 80);
      sub_100004864();
      v83 = v160;
      sub_1000BF470(v66 + v82 + *(v28 + 72) * v80++, v160);
      v84 = *(v83 + *(v164 + 40));
      sub_1000BF4C8();
      if (v84 == 3)
      {
        goto LABEL_42;
      }
    }

    if ((v145 & 1) == 0)
    {
      v149 = v79;
      if (qword_1002686D8 != -1)
      {
        sub_100006B70();
        swift_once();
      }

      v155 = qword_100287838;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100003EFC();
      v85 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v85);
      v87 = *(v86 + 72);
      sub_1000056F8();
      v150 = v88;
      *(sub_10000A92C() + 16) = v152;
      v89 = type metadata accessor for ContentManager();
      sub_10003D310(v89);
      v90 = AMSLogKey();
      if (v90)
      {
        v91 = v90;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v165);
      LogInterpolation.init(stringLiteral:)();
      v167 = &type metadata for String;
      v80 = v162;
      v165 = v156;
      v166 = v162;

      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v165, &qword_10026D350, &qword_1001E6050);
      v92 = static os_log_type_t.error.getter();
      sub_1000036B0(v92);

      sub_1000BE300(v154);
      v94 = v93;
      v95 = 0;
      v96 = *(v93 + 16);
      v97 = (v93 + 40);
      while (v96 != v95)
      {
        if (v95 >= *(v94 + 16))
        {
          goto LABEL_74;
        }

        ++v95;
        v98 = *v97;
        v165 = *(v97 - 1);
        v166 = v98;

        v80 = v161;
        sub_1000BE534(&v165, v163, v156, v162);
        v161 = v80;

        v97 += 2;
      }

      v79 = v149;
    }

LABEL_42:
    if (!v79)
    {
      if (qword_1002686D8 != -1)
      {
        sub_100006B70();
        swift_once();
      }

      v99 = qword_100287838;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v100 = sub_10000620C();
      sub_100002CFC(v100);
      v102 = *(v101 + 72);
      sub_10000DE0C();
      v155 = v104 & ~v103;
      v148 = 3 * v102;
      sub_1000BF72C(&a17);
      v149 = v80;
      *(swift_allocObject() + 16) = v152;
      v147 = type metadata accessor for ContentManager();
      v167 = v147;
      v165 = v163;

      v105 = AMSLogKey();
      if (v105)
      {
        v106 = v105;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_1000BF764();

      sub_100002C00(&v165);
      LogInterpolation.init(stringLiteral:)();
      v167 = &type metadata for String;
      v150 = v102;
      v165 = v156;
      v166 = v162;

      sub_100061E04();
      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v165, &qword_10026D350, &qword_1001E6050);
      v107 = static os_log_type_t.info.getter();
      v146 = v99;
      sub_1000036B0(v107);

      if (v145)
      {
        v108 = 0;
        v109 = v138[1];
        while (v68 != v108)
        {
          if (v108 >= *(v66 + 16))
          {
            goto LABEL_75;
          }

          v110 = *(v28 + 80);
          sub_100004864();
          v111 = *(v28 + 72);
          sub_10000A5EC();
          sub_1000BF470(v112, v109);
          v108 = (v108 + 1);
          v113 = *(v109 + *(v164 + 40));
          sub_1000BF4C8();
          v114 = v113 == 2;
          v115 = v163;
          if (!v114)
          {
            goto LABEL_54;
          }
        }

        v124 = v156;
        sub_1000BE300(v154);
        v126 = v125;
        v127 = 0;
        v128 = *(v125 + 16);
        v129 = (v125 + 40);
        v57 = v161;
        while (v128 != v127)
        {
          if (v127 >= *(v126 + 16))
          {
            goto LABEL_76;
          }

          ++v127;
          v130 = *v129;
          v165 = *(v129 - 1);
          v166 = v130;

          sub_1000BE7D8(&v165, v163, v124, v162);

          v129 += 2;
        }
      }

      else
      {
        v115 = v163;
LABEL_54:
        sub_100006794();
        *(swift_allocObject() + 16) = v152;
        v167 = v147;
        v165 = v115;

        v116 = AMSLogKey();
        if (v116)
        {
          v117 = v116;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_1000BF764();

        sub_100002C00(&v165);
        LogInterpolation.init(stringLiteral:)();
        v167 = &type metadata for String;
        v165 = v156;
        v166 = v162;

        static LogInterpolation.safe(_:)();
        sub_10000A00C(&v165, &qword_10026D350, &qword_1001E6050);
        v118 = static os_log_type_t.info.getter();
        sub_1000036B0(v118);

        if (v68)
        {
          v119 = *(v28 + 80);
          sub_100004864();
          v121 = v66 + v120;
          v122 = *(v28 + 72);
          v123 = v157;
          do
          {
            sub_1000BF470(v121, v123);
            sub_1000B84AC();
            v123 = v157;
            sub_1000BF4C8();
            v121 += v122;
            v68 = (v68 - 1);
          }

          while (v68);
        }

        sub_1000B84AC();
        v57 = v161;
        v39 = v139;
      }

      v58 = v151;
      if (v151 != v142)
      {
        continue;
      }

      goto LABEL_72;
    }

    break;
  }

  if (qword_1002686D8 != -1)
  {
    goto LABEL_79;
  }

LABEL_68:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v131 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v131);
  v133 = *(v132 + 72);
  sub_1000056F8();
  v134 = sub_100003F28();
  sub_1000BF738(v134, xmmword_1001E5F70);
  v167 = type metadata accessor for ContentManager();
  v165 = v163;

  v135 = AMSLogKey();
  if (v135)
  {
    v136 = v135;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_71:
  sub_100061E04();
  sub_10005ADC4();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v165);
  LogInterpolation.init(stringLiteral:)();
  v137 = static os_log_type_t.debug.getter();
  sub_1000036B0(v137);

LABEL_72:
  sub_100005F14();
}