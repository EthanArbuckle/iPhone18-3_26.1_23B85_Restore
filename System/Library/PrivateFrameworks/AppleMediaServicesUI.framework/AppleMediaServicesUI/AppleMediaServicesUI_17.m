uint64_t sub_10018E8CC()
{
  v0 = Dictionary.init(dictionaryLiteral:)();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1000ACBEC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1000ACBEC();
  v1 = sub_10018EE9C(v0);

  return v1;
}

uint64_t sub_10018EA18()
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = *(type metadata accessor for LogInterpolation() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v10 = &type metadata for RemoteJetpackLoader;
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v10 = v8;
  v5 = sub_100017E64(v9);
  (*(v8[-1].Description + 2))(v5);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v9, &qword_10026D350, &qword_1001E6050);
  v6 = static os_log_type_t.error.getter();
  sub_1000036B0(v6);

  swift_willThrow();
  return swift_errorRetain();
}

uint64_t sub_10018EC44@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v12 = &type metadata for RemoteJetpackLoader;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v11);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v12 = v10;
  v7 = sub_100017E64(v11);
  (*(v10[-1].Description + 2))(v7);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v11, &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);

  result = Dictionary.init(dictionaryLiteral:)();
  *a1 = result;
  return result;
}

uint64_t sub_10018EE9C(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v55 = type metadata accessor for URL();
  v6 = *(*(v55 - 8) + 64);
  v7 = __chkstk_darwin(v55);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v48 - v10;
  v12 = a1 + 64;
  v11 = *(a1 + 64);
  v52 = _swiftEmptyDictionarySingleton;
  v57 = _swiftEmptyDictionarySingleton;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v48 = v9;
  v50 = (v9 + 32);
  v56 = a1;

  v18 = 0;
  v54 = v5;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_9:
    v20 = __clz(__rbit64(v15)) | (v18 << 6);
    v21 = *(v56 + 56);
    v53 = *(*(v56 + 48) + 8 * v20);
    v22 = (v21 + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = objc_opt_self();

    v26 = [v25 defaultManager];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 fileExistsAtPath:v27];

    if (v28)
    {
      v29 = v54;
      URL.init(fileURLWithPath:)();
      v30 = 0;
    }

    else
    {
      v30 = 1;
      v29 = v54;
    }

    v15 &= v15 - 1;
    v31 = v55;
    sub_10000A7C0(v29, v30, 1, v55);

    if (sub_100009F34(v29, 1, v31) == 1)
    {
      result = sub_10000A064(v29, &unk_10026FEE0, &unk_1001E67C0);
    }

    else
    {
      v32 = v49;
      v33 = *v50;
      v34 = v55;
      (*v50)(v49, v29, v55);
      v33(v51, v32, v34);
      if (v52[3] <= v52[2])
      {
        sub_1001C6BAC();
      }

      v35 = v57;
      v36 = v57[5];
      v37 = v53;
      result = static Hasher._hash(seed:_:)();
      v38 = v35 + 8;
      v52 = v35;
      v39 = -1 << *(v35 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~v35[(v40 >> 6) + 8]) == 0)
      {
        v43 = 0;
        v44 = (63 - v39) >> 6;
        while (++v41 != v44 || (v43 & 1) == 0)
        {
          v45 = v41 == v44;
          if (v41 == v44)
          {
            v41 = 0;
          }

          v43 |= v45;
          v46 = v38[v41];
          if (v46 != -1)
          {
            v42 = __clz(__rbit64(~v46)) + (v41 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v42 = __clz(__rbit64((-1 << v40) & ~v35[(v40 >> 6) + 8])) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      v47 = v52;
      *(v52[6] + 8 * v42) = v37;
      result = (v33)(v47[7] + *(v48 + 72) * v42, v51, v55);
      ++v47[2];
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v52;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10018F2F4()
{
  v0 = *(*(sub_100004DA8() - 8) + 80);
  v1 = sub_100005AA0();
  return sub_10018F608(v1, v2, v3);
}

uint64_t sub_10018F34C()
{
  v0 = *(*(sub_100004DA8() - 8) + 80);
  v1 = sub_100005AA0();
  return sub_10018C85C(v1, v2, v3);
}

uint64_t sub_10018F3E4(uint64_t a1, uint64_t a2)
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v12 = &type metadata for RemoteJetpackV2Loader;
  if (*(a2 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
    v6 = *(a2 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v11);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v12 = v10;
  v7 = sub_100017E64(v11);
  (*(v10[-1].Description + 2))(v7);
  static LogInterpolation.safe(_:)();
  sub_10000A00C(v11, &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.error.getter();
  sub_1000036B0(v8);

  swift_willThrow();
  return swift_errorRetain();
}

uint64_t sub_10018F6B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000EE0F4();
}

void sub_10018F6BC(void *a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v9[3] = type metadata accessor for RunLoop();
  v9[0] = a1;
  v5 = a1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);

  exit(0);
}

uint64_t sub_10018F840()
{
  v1 = OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource;
  if (*(v0 + OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v2 = *(v0 + v1);
    *(v0 + v1) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10018F8C4()
{
  if (qword_100268608 != -1)
  {
    sub_100007CEC();
  }

  sub_10009DF2C();
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd7RunLoop_setupAssistantObserver);
  sub_1001A2338();

  return sub_10018F840();
}

void sub_10018F930()
{
  if (qword_1002687B0 != -1)
  {
    swift_once();
  }

  sub_10016E220(0);
}

id sub_10018F98C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunLoop();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_10018FA34(unsigned __int8 *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100005338();
  v6 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *a1;
  type metadata accessor for AppDatabase();
  v13 = sub_100006674();
  sub_10001D804(v13);
  sub_100041404();

  v14 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_1000A77EC(*&a1[*(v14 + 44)], *&a1[*(v14 + 44) + 8], v11);

  v16 = type metadata accessor for ScheduleInfo(0);
  v17 = sub_100009F34(v11, 1, v16) != 1;
  sub_100009FB0(v11, &qword_100269F90, &qword_1001E8720);
  return v17;
}

uint64_t sub_10018FD5C(uint64_t a1)
{
  v1 = type metadata accessor for LogInterpolation.StringInterpolation();
  v2 = sub_100003D10(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100005338();
  if (qword_100268718 != -1)
  {
    sub_100006FD0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v10 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v11._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v12 = (a1 + *(type metadata accessor for ScheduleInfo(0) + 20));
  v37 = &type metadata for String;
  v35 = sub_100065DAC();
  v36 = v13;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v35, &qword_10026D350, &qword_1001E6050);
  v14._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  LogInterpolation.init(stringInterpolation:)();
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15);

  v16 = *v12;
  type metadata accessor for AppDatabase();
  v17 = sub_100006674();
  sub_10001D804(v17);
  if (v32)
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v18 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    v19._object = 0x8000000100201D60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    v20 = &v12[*(type metadata accessor for ScheduleInfo.Metadata(0) + 44)];
    v22 = *v20;
    v21 = v20[1];
    v37 = &type metadata for String;
    v35 = v22;
    v36 = v21;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v23 = sub_100005ACC();
    sub_100009FB0(v23, v24, &qword_1001E6050);
    v25._countAndFlagsBits = 8238;
    v25._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    swift_getErrorValue();
    v37 = v34;
    sub_100017E64(&v35);
    sub_1000047A4(v34);
    (*(v26 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v27 = sub_100005ACC();
    sub_100009FB0(v27, v28, &qword_1001E6050);
    v29._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    LogInterpolation.init(stringInterpolation:)();
    v30 = static os_log_type_t.error.getter();
    sub_1000036B0(v30);

    return swift_willThrow();
  }

  else
  {
    sub_100041404();

    sub_1000A9108(a1);
  }
}

uint64_t sub_100190178(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005338();
  if (qword_100268718 != -1)
  {
    sub_100006FD0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v12 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v13._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v35 = &type metadata for String;
  v33 = a1;
  v34 = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v33, &qword_10026D350, &qword_1001E6050);
  v14._countAndFlagsBits = 0x206D6F726620;
  v14._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v35 = &unk_1002471C0;
  LOBYTE(v33) = a3;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v33, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  v16 = static os_log_type_t.default.getter();
  sub_1000036B0(v16);

  type metadata accessor for AppDatabase();
  sub_10001D804(a3);
  if (v29)
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v17 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0xD00000000000001CLL;
    v18._object = 0x8000000100201CF0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    v35 = &type metadata for String;
    v33 = a1;
    v34 = a2;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v19 = sub_100005ACC();
    sub_100009FB0(v19, v20, &qword_1001E6050);
    v21._countAndFlagsBits = 8238;
    v21._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    swift_getErrorValue();
    v35 = v32;
    sub_100017E64(&v33);
    sub_1000047A4(v32);
    (*(v22 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v23 = sub_100005ACC();
    sub_100009FB0(v23, v24, &qword_1001E6050);
    v25._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.error.getter();
    sub_1000036B0(v26);

    return swift_willThrow();
  }

  else
  {
    sub_100041404();

    sub_1000A8D54(a1, a2);
  }
}

uint64_t sub_1001905D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000EF5D0();
  v4 = *(*(a2 + 16) + 16);
  sub_1000EF65C(v4);
  v5 = *(a2 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_100002CFC(v6);
  sub_100190A08(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v4);
  *(a2 + 16) = v5;
  swift_endAccess();
  return 1;
}

uint64_t sub_1001906AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  type metadata accessor for AppDatabase();
  sub_10001D804(a3);
  if (v4)
  {
    v27 = a1;
    if (qword_100268718 != -1)
    {
      sub_100006FD0();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v26 = *(v14 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v30 = &type metadata for ScheduleDatabase;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v29);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100004810();
    v19._countAndFlagsBits = 0xD000000000000029;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    v30 = &type metadata for String;
    v29[0] = v27;
    v29[1] = a2;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_1000085DC();
    v20._countAndFlagsBits = 0x70706120726F6620;
    v20._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v30 = &unk_1002471C0;
    LOBYTE(v29[0]) = a3;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_1000085DC();
    v21._countAndFlagsBits = 8238;
    v21._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    swift_getErrorValue();
    v30 = v28;
    sub_100017E64(v29);
    sub_1000047A4(v28);
    (*(v22 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_1000085DC();
    v23._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    LogInterpolation.init(stringInterpolation:)();
    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24);

    return swift_willThrow();
  }

  else
  {
    sub_100041404();

    sub_1000A77EC(a1, a2, a4);
  }
}

uint64_t sub_100190A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100190A7C()
{
  sub_100004988();
  v1 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v1);
  v3 = *(v2 + 64);
  sub_100004E78();
  __chkstk_darwin(v4);
  v6 = &v58 - v5;
  v7 = type metadata accessor for Date();
  v8 = sub_100002CC4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_1000056E8();
  v61 = v13 - v14;
  sub_100003F08();
  __chkstk_darwin(v15);
  v59 = &v58 - v16;
  sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
  sub_100042038();
  v69 = Dictionary.init(dictionaryLiteral:)();
  v63 = type metadata accessor for ScheduleInfo(0);
  v64 = v0;
  v65 = v0 + *(v63 + 20);
  v17 = *v65;
  v62 = v7;
  switch(v17)
  {
    case 1:
      sub_100006854();
      break;
    case 2:
      sub_1000058B4();
      break;
    case 3:
      sub_1000084E4();
      break;
    default:
      break;
  }

  v18 = String._bridgeToObjectiveC()();

  v67 = sub_100002BC0(0, &qword_10026A528, NSString_ptr);
  v68 = &off_100251670;
  v19 = v67;
  v66[0] = v18;
  v20 = sub_100019DAC();
  sub_1000AA0C0(v20, 0);
  v21 = v65;
  v22 = [objc_allocWithZone(NSNumber) initWithBool:v65[1]];
  v23 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v67 = v23;
  v68 = &off_100251660;
  v66[0] = v22;
  v24 = sub_100019DAC();
  sub_1000AA0C0(v24, 1);
  v25 = type metadata accessor for ScheduleInfo.Metadata(0);
  v26 = &v21[v25[6]];
  Date.timeIntervalSinceReferenceDate.getter();
  v28 = [objc_allocWithZone(NSNumber) initWithDouble:v27];
  v67 = v23;
  v68 = &off_100251660;
  v66[0] = v28;
  v29 = sub_100019DAC();
  sub_1000AA0C0(v29, 2);
  v30 = v21[v25[7]];
  v31 = String._bridgeToObjectiveC()();

  v67 = v19;
  v68 = &off_100251670;
  v60 = v19;
  v66[0] = v31;
  v32 = sub_100019DAC();
  sub_1000AA0C0(v32, 3);
  sub_10003AF98(&v65[v25[8]], v6, &unk_100271EA0, &qword_1001E77F0);
  v33 = v62;
  if (sub_100009F34(v6, 1, v62) == 1)
  {
    sub_10000A00C(v6, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v34 = v59;
    (*(v10 + 32))(v59, v6, v33);
    Date.timeIntervalSinceReferenceDate.getter();
    v36 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithDouble:v35]);
    sub_1000AA0C0(v36, 4);
    (*(v10 + 8))(v34, v33);
  }

  v37 = v25[9];
  v38 = v25;
  v39 = v65;
  v40 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithBool:v65[v37]]);
  sub_1000AA0C0(v40, 5);
  v41 = v38[12];
  v42 = v61;
  Date.init()();
  v43 = TimeZone.secondsFromGMT(for:)();
  (*(v10 + 8))(v42, v33);
  v44 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithInteger:v43]);
  sub_1000AA0C0(v44, 11);
  v45 = v64;
  v46 = *v64;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v67 = sub_100002BC0(0, &qword_10026BB80, NSArray_ptr);
  v68 = &off_100251680;
  v66[0] = isa;
  v48 = sub_100019DAC();
  sub_1000AA0C0(v48, 7);
  v49 = &v39[v38[11]];
  v50 = *v49;
  v51 = *(v49 + 1);
  v52 = String._bridgeToObjectiveC()();
  v53 = v60;
  v67 = v60;
  v68 = &off_100251670;
  v66[0] = v52;
  sub_1000AA0C0(v66, 8);
  v54 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithDouble:*&v39[v38[10]]]);
  sub_1000AA0C0(v54, 9);
  if (v39[v38[13]])
  {
    v39[v38[13]];
  }

  v55 = String._bridgeToObjectiveC()();

  v67 = v53;
  v68 = &off_100251670;
  v66[0] = v55;
  v56 = sub_100019DAC();
  sub_1000AA0C0(v56, 10);
  v57 = [objc_allocWithZone(NSNumber) initWithBool:*(v45 + *(v63 + 24))];
  v67 = v23;
  v68 = &off_100251660;
  v66[0] = v57;
  sub_1000AA0C0(v66, 12);
  sub_1000C4570(v69);

  sub_10000B16C();
}

unint64_t sub_100191B1C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004C0E8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100191B4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100046278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100191B7C()
{
  result = qword_100270658;
  if (!qword_100270658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleInfo.CodingPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ScheduleInfo.CodingPropertyKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100191D24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100191D3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100191D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_100191DE8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

id sub_100191E50@<X0>(void *a1@<X8>)
{
  v2 = AMSMetricsLoggingSubsystemEngagement;
  v3 = Dictionary.init(dictionaryLiteral:)();
  result = [objc_allocWithZone(NSLock) init];
  *a1 = v2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = result;
  return result;
}

id sub_100191EDC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  [v2 lock];
  v19 = *(v1 + 8);
  sub_100192224(&v19, aBlock);
  result = [v2 unlock];
  v4 = v19;
  if (v19)
  {
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v5 = *(type metadata accessor for LogInterpolation() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v17[3] = &type metadata for SentryLog;
    v17[0] = swift_allocObject();
    sub_100006FE4(v17[0]);
    sub_1000F90FC(v1, aBlock);
    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v17);
    LogInterpolation.init(stringLiteral:)();
    v10 = static os_log_type_t.debug.getter();
    sub_1000036B0(v10);

    v11 = objc_opt_self();
    sub_100042428();
    v12 = sub_10002411C();
    v13 = [v11 shouldSampleErrorsWithBag:v12];

    v14 = swift_allocObject();
    sub_100006FE4(v14);
    *(v15 + 64) = v4;
    aBlock[4] = sub_10019256C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    aBlock[3] = &unk_1002517F8;
    v16 = _Block_copy(aBlock);
    sub_100192224(&v19, v17);
    sub_1000F90FC(v1, v17);

    [v13 addSuccessBlock:v16];
    _Block_release(v16);

    return sub_100192578(&v19);
  }

  return result;
}

uint64_t sub_100192224(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_1002707B8, &qword_1001EFE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100192294(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002451F8, v2);

  return v3 != 0;
}

BOOL sub_100192304@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100192294(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100192338@<X0>(void *a1@<X8>)
{
  result = sub_1001922DC();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

void sub_100192368(uint64_t *a1)
{
  v2 = *a1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  objc_allocWithZone(AMSMetricsLoggingEvent);
  swift_errorRetain();
  v3 = sub_1000EF494();
  sub_1000E3C88(a1[4]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v3 setBreadcrumbs:isa];

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[2];
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001E61B0;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;

    v8 = Array._bridgeToObjectiveC()().super.isa;

    [v3 setEventDestinations:v8];
  }

  v9 = objc_opt_self();
  sub_100042428();
  v10 = sub_10002411C();
  v11 = [v9 internalInstanceUsingBag:v10];

  [v11 enqueueEvent:v3];
}

uint64_t sub_100192578(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_1002707B8, &qword_1001EFE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SentryLog.Category(_BYTE *result, int a2, int a3)
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

unint64_t sub_1001926A0()
{
  result = qword_1002707C0;
  if (!qword_1002707C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002707C0);
  }

  return result;
}

void sub_1001926F4(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  sub_10000BBAC();
  v7 = v6 >> 6;
  if (v1)
  {
    while (1)
    {
      v8 = v2;
LABEL_7:
      sub_1000034FC(v8);
      sub_1000190C0();
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    ++v2;
    if (*(v4 + 8 * v8))
    {
      v2 = v8;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1001927B4()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_1002707C8 = qword_100287880;
}

uint64_t sub_100192818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  sub_10007B9A4(&qword_10026AF18, &qword_1001E86B8);
  sub_100194044(&qword_10026AF20, &qword_10026AF10, NSNumber_ptr);
  *(v3 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 120) = _swiftEmptyDictionarySingleton;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_debounceDuration, v12, v5);
  v13 = (v3 + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_onUpdate);
  v14 = v17;
  *v13 = a2;
  v13[1] = v14;
  return v3;
}

void sub_1001929AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(*(sub_10007B9A4(&unk_10026F880, &qword_1001E62B0) - 8) + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_1000074D8();
  v61 = v7;
  v8 = sub_10007B9A4(&qword_1002708F0, &qword_1001F0028);
  v9 = sub_100002CC4(v8);
  v54 = v10;
  v55 = v9;
  v12 = *(v11 + 64);
  sub_100004E78();
  __chkstk_darwin(v13);
  sub_1000074D8();
  v53 = v14;
  v15 = sub_10007B9A4(&qword_1002708F8, &qword_1001F0030);
  v16 = sub_100002CC4(v15);
  v57 = v17;
  v58 = v16;
  v19 = *(v18 + 64);
  sub_100004E78();
  __chkstk_darwin(v20);
  sub_1000074D8();
  v56 = v21;
  v62 = sub_10007B9A4(&qword_100270900, &unk_1001F0038);
  sub_100002CC4(v62);
  v60 = v22;
  v24 = *(v23 + 64);
  sub_100004E78();
  __chkstk_darwin(v25);
  sub_1000074D8();
  v59 = v26;
  if (qword_100268808 != -1)
  {
    sub_100006FF8();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v27);
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  updated = _s25BackgroundUpdateCoalescerCMa();
  v64 = v2;

  v32 = AMSLogKey();
  if (v32)
  {
    v33 = v32;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v64);
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v64 = 0x696373656C616F43;
  v65 = 0xEB0000000020676ELL;
  v34._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v34);

  v35._countAndFlagsBits = sub_100005AE4();
  v35._object = 0xEA00000000002064;
  String.append(_:)(v35);
  v36 = [a2 description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  updated = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v64, &qword_10026D350, &qword_1001E6050);
  v41 = static os_log_type_t.default.getter();
  sub_1000036B0(v41);

  swift_beginAccess();
  v42 = *(v3 + 112);

  v43 = sub_1000AA92C(a2, v42);

  if (v43)
  {
    CurrentValueSubject.value.getter();

    sub_1001926F4(v44);
    v45 = v63;

    CurrentValueSubject.send(_:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v46 = sub_10007B9A4(&qword_10026AF18, &qword_1001E86B8);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v49 = a2;
    CurrentValueSubject.init(_:)();
    sub_10000619C();

    sub_1001A0A00();
    swift_endAccess();
    if (qword_1002687F0 != -1)
    {
      swift_once();
    }

    v50 = qword_1002878E8;
    v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    sub_10000A7C0(v61, 1, 1, v52);
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    sub_100006070(&qword_100270908, &qword_10026AF18, &qword_1001E86B8);
    sub_100194044(&qword_10026CFC0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v51 = v50;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_100009F5C(v61, &unk_10026F880, &qword_1001E62B0);
    sub_100006070(&qword_100270910, &qword_1002708F0, &qword_1001F0028);
    Publisher.filter(_:)();
    (*(v54 + 8))(v53, v55);
    sub_10000A7C0(v61, 1, 1, v52);
    sub_100006070(&qword_100270918, &qword_1002708F8, &qword_1001F0030);
    Publisher.receive<A>(on:options:)();
    sub_100009F5C(v61, &unk_10026F880, &qword_1001E62B0);

    (*(v57 + 8))(v56, v58);
    swift_allocObject();
    swift_weakInit();
    sub_100006070(&qword_100270920, &qword_100270900, &unk_1001F0038);
    Publisher<>.sink(receiveValue:)();

    (*(v60 + 8))(v59, v62);
    sub_10000619C();

    sub_1001A0974();
    swift_endAccess();
  }
}

uint64_t sub_100193258(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v7 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v7;
    v11[6] = v6;
    v12 = v7;

    sub_1000E349C();
  }

  return result;
}

uint64_t sub_100193380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001933A4, a4, 0);
}

uint64_t sub_1001933A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v3 + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_onUpdate + 8);
  (*(v3 + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_onUpdate))(v2, v1);
  sub_1001936D0(v2, v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10019343C(void *a1)
{
  if (qword_100268808 != -1)
  {
    sub_100006FF8();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  updated = _s25BackgroundUpdateCoalescerCMa();
  v26 = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v26);
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v26 = 0xD000000000000019;
  v27 = 0x8000000100201ED0;
  v10 = [a1 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  updated = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v26, &qword_10026D350, &qword_1001E6050);
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15);

  sub_10000619C();
  sub_1000ABC2C(a1);
  swift_endAccess();

  sub_10000619C();
  sub_1000ABA14(a1, v16, v17, v18, v19, v20, v21, v22, v26, v27);
  v24 = v23;
  result = swift_endAccess();
  if (v24)
  {
    AnyCancellable.cancel()();
  }

  return result;
}

void sub_1001936D0(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);

  v7 = sub_1000AA92C(a1, v6);

  if (v7)
  {
    CurrentValueSubject.value.getter();
    sub_100193F5C(a2);
    v8 = v31;
    if (*(v31 + 16))
    {
      if (qword_100268808 != -1)
      {
        sub_100006FF8();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v9 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v9);
      v11 = *(v10 + 72);
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      updated = _s25BackgroundUpdateCoalescerCMa();
      v27 = v3;

      v14 = AMSLogKey();
      if (v14)
      {
        v15 = v14;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v16._countAndFlagsBits = 0xD00000000000001DLL;
      v16._object = 0x8000000100201E90;
      String.append(_:)(v16);

      v17._countAndFlagsBits = Set.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = sub_100005AE4();
      v18._object = 0xEA00000000002064;
      String.append(_:)(v18);
      v19 = v30;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25._object = 0x8000000100201EB0;
      v25._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v25);
      updated = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v27, &qword_10026D350, &qword_1001E6050);
      v26 = static os_log_type_t.default.getter();
      sub_1000036B0(v26);

      v27 = v19;
      v28 = v8;
      CurrentValueSubject.send(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_10019343C(a1);
    }
  }
}

uint64_t sub_100193A38()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_debounceDuration;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100002D30(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_onUpdate + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100193AB8()
{
  sub_100193A38();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s25BackgroundUpdateCoalescerCMa()
{
  result = qword_1002707F8;
  if (!qword_1002707F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100193B38()
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_100193BF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100193C30(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100193C7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001C8EAC();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_100193DA4(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_100193DA4(unint64_t result)
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

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100193F5C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v6 = result + 56;
    v5 = *(result + 56);
    v7 = *(result + 32);
    sub_10000BBAC();
    v9 = v8 >> 6;

    v10 = 0;
    if (v4)
    {
      while (1)
      {
        v11 = v10;
LABEL_8:
        sub_1000034FC(v11);
        sub_100193C7C(v2, v3);
        v2 = v12;
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v9)
      {
        break;
      }

      ++v10;
      if (*(v6 + 8 * v11))
      {
        v10 = v11;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_100194044(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002BC0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100194090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000B1388;

  return sub_100193380(a1, v4, v5, v6, v7, v8);
}

void sub_100194158()
{
  sub_100003D74();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v38 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000356C();
  v43 = v11;
  v44 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v42 = v15 - v14;
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v16 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v16);
  v18 = *(v17 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  sub_100004B44();
  static LogInterpolation.safe(_:)();
  sub_100004E40();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v19 = v9;
  static LogInterpolation.sensitive(_:)();
  sub_100004E40();
  sub_10000B40C();
  _StringGuts.grow(_:)(30);

  v45[0] = 0x7365636976726573;
  v45[1] = 0xEA0000000000203ALL;
  v20._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v20);

  sub_10000A1F4(" networkPolicy: ", v21);
  v48 = v5;
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v46 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100004E40();
  v23 = static os_log_type_t.info.getter();
  sub_1000036B0(v23);

  if (v5 >= 6)
  {
    sub_10000A514();
    sub_100006688();
    __break(1u);
  }

  else
  {
    v37 = 5 - v5;
    type metadata accessor for MercuryCacheDatabase();
    v24 = v19;
    sub_10014D878();
    v26 = v25;
    sub_10014F288();
    v27 = swift_allocObject();
    v27[2] = v5;
    v27[3] = v40;
    v27[4] = v41;
    v27[5] = v38;
    v27[6] = v24;
    v27[7] = v7;
    v27[8] = v26;
    v27[9] = 5 - v5;
    v28 = v5;
    v29 = v26;
    v27[10] = ObjectType;
    v30 = swift_allocObject();
    v30[2] = v28;
    v30[3] = v38;
    v30[4] = v7;
    v30[5] = v40;
    v30[6] = v41;
    v30[7] = v24;
    v30[8] = v29;
    v30[9] = v37;
    v30[10] = ObjectType;
    v31 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v43 + 104))(v42, enum case for DispatchQoS.QoSClass.default(_:), v44);
    v32 = v24;
    swift_retain_n();
    v33 = v38;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v34 = v32;
    v35 = v33;
    v36 = static OS_dispatch_queue.global(qos:)();
    (*(v43 + 8))(v42, v44);
    v46 = v31;
    v47 = &protocol witness table for OS_dispatch_queue;
    v45[0] = v36;
    sub_100015CBC();

    sub_100002C00(v45);
    sub_100005F14();
  }
}

void sub_100194608()
{
  sub_100003D74();
  v24 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000356C();
  v27 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_100004B68();
  type metadata accessor for DispatchQoS();
  sub_10000356C();
  v25 = v9;
  v26 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v14 = v13 - v12;
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v17 = *(v16 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v18 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ServerDataCacheService();
  static LogInterpolation.prefix<A>(_:_:)();

  sub_100004B44();
  v31 = &type metadata for String;
  v28 = 0xD00000000000002BLL;
  v29 = v19;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v28, &qword_10026D350, &qword_1001E6050);
  v20 = static os_log_type_t.default.getter();
  sub_1000036B0(v20);

  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  *(v21 + 24) = v0;
  v32 = sub_1001A1A90;
  v33 = v21;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100005E50;
  v31 = &unk_100252258;
  v22 = _Block_copy(&v28);
  v23 = v24;
  static DispatchQoS.unspecified.getter();
  sub_1001A1A98(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v1, v3);
  (*(v25 + 8))(v14, v26);

  sub_100005F14();
}

uint64_t sub_1001949F8()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_100270928 = qword_100287880;
}

uint64_t sub_100194A5C()
{
  v1 = OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer;
  if (*(v0 + OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer);
  }

  else
  {
    v3 = v0;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    updated = _s25BackgroundUpdateCoalescerCMa();
    v6 = *(updated + 48);
    v7 = *(updated + 52);
    swift_allocObject();
    v2 = sub_100192818(2000, sub_1001A1A80, v4);
    v8 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_100194B20(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    isa = Set._bridgeToObjectiveC()().super.isa;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_1001A1A88;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100177E30;
    aBlock[3] = &unk_100252208;
    v8 = _Block_copy(aBlock);
    v9 = a1;

    [v5 updateCacheForAccountDSID:v9 withCacheTypeIDs:isa completion:v8];
    _Block_release(v8);
  }
}

uint64_t sub_100194C64(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61C0;
  LogInterpolation.init(stringLiteral:)();
  LogInterpolation.init(stringLiteral:)();
  v20 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v19[0] = a3;
  v9 = a3;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v19, &qword_10026D350, &qword_1001E6050);
  v20 = sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  v19[0] = a4;

  static LogInterpolation.safe(_:)();
  sub_100009FB0(v19, &qword_10026D350, &qword_1001E6050);
  v10 = 0x64656C696166;
  if (a1)
  {
    v10 = 0x73736563637573;
  }

  v11 = 0xE600000000000000;
  if (a1)
  {
    v11 = 0xE700000000000000;
  }

  v20 = &type metadata for String;
  v19[0] = v10;
  v19[1] = v11;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v19, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  if (a2)
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    swift_errorRetain();
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v20 = v18;
    v14 = sub_100017E64(v19);
    (*(*(v18 - 1) + 16))(v14);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v19, &qword_10026D350, &qword_1001E6050);
    v15 = static os_log_type_t.error.getter();
    sub_1000036B0(v15);
  }

  return result;
}

id sub_100194FC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerDataCacheService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100195004(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = [a1 ams_iTunesAccounts];
  sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = _swiftEmptyArrayStorage;
  v41 = _swiftEmptyArrayStorage;
  v12 = sub_100049574(v11);
  v13 = 0;
  while (1)
  {
    if (v12 == v13)
    {

      v17 = v36;
      v18 = sub_100049574(v36);
      if (v18)
      {
        v19 = v18;
        if (v18 < 1)
        {
          goto LABEL_36;
        }

        v20 = 0;
        v34 = v17 & 0xC000000000000001;
        do
        {
          if (v34)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v17 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = type metadata accessor for TaskPriority();
          sub_10000A7C0(v9, 1, 1, v23);
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v25 = v35;
          v24[4] = v22;
          v24[5] = v25;
          sub_100119228(v9, v7);
          v26 = sub_100009F34(v7, 1, v23);
          v27 = v22;

          if (v26 == 1)
          {
            sub_100009FB0(v7, &unk_10026FEC0, &qword_1001E6280);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(*(v23 - 8) + 8))(v7, v23);
          }

          v28 = v24[2];
          v29 = v24[3];
          swift_unknownObjectRetain();

          if (v28)
          {
            swift_getObjectType();
            v30 = dispatch thunk of Actor.unownedExecutor.getter();
            v32 = v31;
            swift_unknownObjectRelease();
          }

          else
          {
            v30 = 0;
            v32 = 0;
          }

          sub_100009FB0(v9, &unk_10026FEC0, &qword_1001E6280);
          v33 = swift_allocObject();
          *(v33 + 16) = &unk_1001F0150;
          *(v33 + 24) = v24;
          if (v32 | v30)
          {
            v37 = 0;
            v38 = 0;
            v39 = v30;
            v40 = v32;
          }

          ++v20;
          swift_task_create();

          v17 = v36;
        }

        while (v19 != v20);
      }

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if ([v14 isActive])
    {
      v16 = [v15 ams_DSID];

      if (!v16)
      {
        goto LABEL_13;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v36 = v41;
      ++v13;
    }

    else
    {

LABEL_13:
      ++v13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_100195470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return _swift_task_switch(sub_100195490, 0, 0);
}

uint64_t sub_100195490()
{
  sub_1000061B4();
  if (qword_100268798 != -1)
  {
    sub_10000C1D8();
  }

  v0[20] = qword_1002878B0;
  if (qword_100268778 != -1)
  {
    sub_10000BBD0();
  }

  v1 = v0[18];
  v0[21] = qword_1002878A8;
  type metadata accessor for MercuryCacheDatabase();
  v2 = v1;
  sub_10014D878();
  v0[22] = v3;
  v0[23] = sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v0[24] = sub_100003534();
  type metadata accessor for MercuryCacheUpdateStateManager();
  v0[25] = sub_10000DE18();
  swift_defaultActor_initialize();
  sub_1001A1E74(&_swiftEmptySetSingleton);
  v0[26] = sub_1001A1DEC();
  v4 = sub_10001CDD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100195698()
{
  sub_100004768();
  v1 = v0[23];
  v0[28] = sub_100003534();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v3 = sub_100058358(v2);

  return sub_10014C558(v3);
}

uint64_t sub_10019572C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  v4 = *(v3 + 232);
  v5 = *(v3 + 216);
  v6 = *v0;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 240) = v9;

  v10 = sub_1000047B0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100195820()
{
  sub_100004768();
  v1 = *(v0 + 216);
  sub_1001600A0(*(v0 + 240));
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_1001958C8;
  v3 = *(v0 + 216);

  return sub_10015EDD4();
}

uint64_t sub_1001958C8()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001959C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017D30();
  sub_1000060E8();
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  v38 = v16[27];
  v39 = v16[28];
  v18 = v16[18];
  v17 = v16[19];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A658();
  v19 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v19);
  v21 = *(v20 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v22 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100005800();

  type metadata accessor for ServerDataCacheService();
  sub_10000C47C();
  static LogInterpolation.prefix<A>(_:_:)();

  sub_10000AD60();
  _StringGuts.grow(_:)(39);

  sub_100004B44();
  sub_100012FA4();
  v23 = [v18 description];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v16[13] = &type metadata for String;
  v16[10] = a12;
  v16[11] = a13;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0((v16 + 10), &qword_10026D350, &qword_1001E6050);
  v28 = static os_log_type_t.info.getter();
  sub_1000036B0(v28);

  sub_100002D8C();
  sub_100003DC0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14, a15, a16);
}

uint64_t sub_100195BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017D30();
  sub_1000060E8();

  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  v17 = *(v16 + 256);
  v19 = *(v16 + 144);
  v18 = *(v16 + 152);
  v42 = qword_100270928;
  v43 = *(v16 + 216);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v20);
  v22 = *(v21 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v23 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ServerDataCacheService();
  static LogInterpolation.prefix<A>(_:_:)();

  sub_10000AD60();
  _StringGuts.grow(_:)(36);

  sub_100004B44();
  sub_100012FA4();
  v24 = [v19 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  *(v16 + 40) = &type metadata for String;
  *(v16 + 16) = a12;
  *(v16 + 24) = a13;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0(v16 + 16, &qword_10026D350, &qword_1001E6050);
  swift_getErrorValue();
  v29 = *(v16 + 112);
  v30 = *(v16 + 120);
  *(v16 + 72) = v30;
  sub_100017E64((v16 + 48));
  sub_1000047A4(v30);
  (*(v31 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v16 + 48, &qword_10026D350, &qword_1001E6050);
  v32 = static os_log_type_t.error.getter();
  sub_1000036B0(v32);

  sub_100002D8C();
  sub_100003DC0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14, a15, a16);
}

void sub_100195E84()
{
  sub_100003D74();
  sub_100015AF8(v3, v4, v5, v6);
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v7);
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_100061DF0(v11, v30);
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A658();
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v14 = *(v13 + 72);
  sub_1000056F8();
  *(sub_10000C2B4() + 16) = xmmword_1001E6580;
  v32 = type metadata accessor for ServerDataCacheService();
  v31 = v2;
  v2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000222AC();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v31);
  sub_1001A1DC8();
  v32 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v31 = v1;
  v17 = v1;
  static LogInterpolation.sensitive(_:)();
  sub_1000222AC();
  sub_100009FB0(v18, v19, v20);
  v32 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v31 = v0;

  static LogInterpolation.safe(_:)();
  sub_1000222AC();
  sub_100009FB0(v21, v22, v23);
  v24 = static os_log_type_t.info.getter();
  sub_1000036B0(v24);

  v25 = type metadata accessor for TaskPriority();
  sub_100011674(v25, v26, v27, v25);
  v28 = swift_allocObject();
  sub_100015A0C(v28);
  v29 = v17;

  sub_10000B0D0();

  sub_100005F14();
}

uint64_t sub_100196100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a5;
  v8[36] = a6;
  v8[34] = a4;
  return _swift_task_switch(sub_100196128, 0, 0);
}

uint64_t sub_100196128()
{
  sub_1000061B4();
  if (qword_100268798 != -1)
  {
    sub_10000C1D8();
  }

  v0[39] = qword_1002878B0;
  if (qword_100268778 != -1)
  {
    sub_10000BBD0();
  }

  v1 = v0[34];
  v0[40] = qword_1002878A8;
  type metadata accessor for MercuryCacheDatabase();
  v2 = v1;
  sub_10014D878();
  v0[41] = v3;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v0[42] = sub_100003534();
  type metadata accessor for MercuryCacheUpdateStateManager();
  v0[43] = sub_10000DE18();
  swift_defaultActor_initialize();
  sub_1001A1E74(&_swiftEmptySetSingleton);
  v0[44] = sub_1001A1DEC();
  v4 = sub_10001CDD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100196364()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 376) = v0;

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100196A28(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_100196A98()
{
  sub_100003D74();
  sub_100015AF8(v3, v4, v5, v6);
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v7);
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_100061DF0(v11, v30);
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A658();
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v14 = *(v13 + 72);
  sub_1000056F8();
  *(sub_10000C2B4() + 16) = xmmword_1001E6580;
  v32 = type metadata accessor for ServerDataCacheService();
  v31 = v2;
  v2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000222AC();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v31);
  sub_1001A1DC8();
  v32 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v31 = v1;
  v17 = v1;
  static LogInterpolation.sensitive(_:)();
  sub_1000222AC();
  sub_100009FB0(v18, v19, v20);
  v32 = sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  v31 = v0;

  static LogInterpolation.safe(_:)();
  sub_1000222AC();
  sub_100009FB0(v21, v22, v23);
  v24 = static os_log_type_t.info.getter();
  sub_1000036B0(v24);

  v25 = type metadata accessor for TaskPriority();
  sub_100011674(v25, v26, v27, v25);
  v28 = swift_allocObject();
  sub_100015A0C(v28);
  v29 = v17;

  sub_10000B0D0();

  sub_100005F14();
}

uint64_t sub_100196D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[30] = a4;
  return _swift_task_switch(sub_100196D3C, 0, 0);
}

uint64_t sub_100196D3C()
{
  sub_1000061B4();
  if (qword_100268798 != -1)
  {
    sub_10000C1D8();
  }

  v0[35] = qword_1002878B0;
  if (qword_100268778 != -1)
  {
    sub_10000BBD0();
  }

  v1 = v0[30];
  v0[36] = qword_1002878A8;
  type metadata accessor for MercuryCacheDatabase();
  v2 = v1;
  sub_10014D878();
  v0[37] = v3;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v0[38] = sub_100003534();
  type metadata accessor for MercuryCacheUpdateStateManager();
  v0[39] = sub_10000DE18();
  swift_defaultActor_initialize();
  sub_1001A1E74(&_swiftEmptySetSingleton);
  v0[40] = sub_1001A1DEC();
  v4 = sub_10001CDD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100196F78()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 344) = v0;

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100197070()
{
  sub_10000B160();
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  v1 = v0[32];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = sub_100003DE8();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(sub_10001C070() + 16) = xmmword_1001E5F70;
  v0[17] = type metadata accessor for ServerDataCacheService();
  v0[14] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = v0[41];
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[31];
  sub_1001A1E54();

  sub_100002C00(v0 + 14);
  _StringGuts.grow(_:)(26);

  sub_100004B44();
  v18 = v12;
  v13._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v13);

  v0[21] = &type metadata for String;
  v0[18] = 0xD000000000000018;
  v0[19] = v18;
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 18), &qword_10026D350, &qword_1001E6050);
  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14);

  v15 = sub_1001A1DA0();
  v9(v15);

  sub_100002D8C();

  return v16();
}

uint64_t sub_1001972A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017D30();
  sub_1000060E8();
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  v17 = v16[32];
  v50 = qword_100270928;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = sub_100003DE8();
  sub_100002CFC(v18);
  v20 = *(v19 + 72);
  *(sub_1000081A8() + 16) = xmmword_1001E5F60;
  v16[5] = type metadata accessor for ServerDataCacheService();
  v16[2] = v17;
  v21 = v17;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100062714();
  }

  else
  {
    sub_10000DE4C();
  }

  v22 = v16[43];
  v49 = v16[41];
  v23 = v16[33];
  v24 = v16[34];
  v25 = v16[31];
  sub_10000A788();

  sub_100002C00(v16 + 2);
  sub_10000AD60();
  _StringGuts.grow(_:)(24);

  sub_100004B44();
  sub_100012FA4();
  v26._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v26);

  v16[9] = &type metadata for String;
  v16[6] = a12;
  v16[7] = a13;
  static LogInterpolation.safe(_:)();
  v27 = sub_10000C47C();
  sub_100009FB0(v27, v28, v29);
  sub_10000C510();
  v31 = v16[22];
  v30 = v16[23];
  v16[13] = v30;
  sub_100017E64(v16 + 10);
  sub_1000047A4(v30);
  (*(v32 + 16))();
  static LogInterpolation.safe(_:)();
  sub_10000719C();
  sub_100009FB0(v33, v34, v35);
  v36 = static os_log_type_t.error.getter();
  sub_100018010(v36);

  swift_getErrorValue();
  v37 = v16[25];
  v38 = v16[27];
  sub_1000F4C40(v16[26]);
  v39 = sub_10001CC38();
  v23(v39);

  sub_100002D8C();
  sub_100003DC0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, a12, a13, a14, a15, a16);
}

void sub_1001975F8()
{
  sub_100003D74();
  v43 = v1;
  v44 = v2;
  v48 = v4;
  v50 = v3;
  v6 = v5;
  v8 = v7;
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000356C();
  v46 = v10;
  v47 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v45 = v14 - v13;
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v17 = *(v16 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E6580;
  static LogInterpolation.safe(_:)();
  v18 = sub_100015C5C();
  sub_100009FB0(v18, v19, &qword_1001E6050);
  sub_10000B40C();
  _StringGuts.grow(_:)(28);

  sub_100004B44();
  v20._countAndFlagsBits = v6;
  v20._object = v50;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x69736420726F6620;
  v21._object = 0xEA00000000003A64;
  String.append(_:)(v21);
  static LogInterpolation.safe(_:)();
  v22 = sub_100015C5C();
  sub_100009FB0(v22, v23, &qword_1001E6050);
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v24 = v8;
  static LogInterpolation.sensitive(_:)();
  v25 = sub_100015C5C();
  sub_100009FB0(v25, v26, &qword_1001E6050);
  sub_10000B40C();
  _StringGuts.grow(_:)(17);

  strcpy(v51, " with policy: ");
  v52 = -18;
  v55 = v48;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v53 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  v29 = sub_100015C5C();
  sub_100009FB0(v29, v30, &qword_1001E6050);
  v31 = static os_log_type_t.info.getter();
  sub_1000036B0(v31);

  if (v48 >= 6)
  {
    sub_10000A514();
    sub_100006688();
    __break(1u);
  }

  else
  {
    type metadata accessor for MercuryCacheDatabase();
    v32 = v24;
    sub_10014D878();
    v34 = v33;
    sub_10014E118();
    sub_100018124();
    v35 = swift_allocObject();
    v35[2] = v48;
    v35[3] = v43;
    v35[4] = v44;
    v35[5] = v0;
    v35[6] = v6;
    v35[7] = v50;
    v35[8] = v32;
    v35[9] = v34;
    v35[10] = 5 - v48;
    v35[11] = ObjectType;
    sub_100018124();
    v36 = swift_allocObject();
    v36[2] = v48;
    v36[3] = v0;
    v36[4] = v6;
    v36[5] = v50;
    v36[6] = v43;
    v36[7] = v44;
    v36[8] = v32;
    v36[9] = v34;
    v36[10] = 5 - v48;
    v36[11] = ObjectType;
    v49 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v46 + 104))(v45, enum case for DispatchQoS.QoSClass.default(_:), v47);
    v37 = v32;
    swift_retain_n();
    v38 = v0;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v39 = v37;
    v40 = v38;
    v41 = static OS_dispatch_queue.global(qos:)();
    (*(v46 + 8))(v45, v47);
    v53 = v49;
    v54 = &protocol witness table for OS_dispatch_queue;
    *v51 = v41;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v51);
    sub_100005F14();
  }
}

uint64_t sub_100197B40(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a8;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = a7;
  *(v19 + 40) = a9;
  *(v19 + 48) = a10;
  *(v19 + 56) = a3;
  *(v19 + 64) = a4;
  v20 = a5;
  swift_bridgeObjectRetain_n();
  v21 = v20;
  swift_retain_n();
  v22 = a8;
  v23 = v21;
  v24 = v22;

  sub_100198D60(a1, a2, sub_1001A1D94, v16, sub_1001A177C, v17, sub_1001A1788, v18, sub_1001A1794, v19);
}

uint64_t sub_100197D1C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  v14 = a1;

  v15 = a4;
  sub_1000E349C();
}

uint64_t sub_100197E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_100197E48, 0, 0);
}

uint64_t sub_100197E48()
{
  sub_1000061B4();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[12] = sub_100194A5C();
  sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  sub_1000220D8();
  v0[13] = v5;
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100197EFC()
{
  sub_100004768();
  v1 = *(v0 + 96);
  sub_1001929AC(*(v0 + 104), *(v0 + 88));

  sub_100002D8C();

  return v2();
}

void sub_100197F6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a5;
  *(inited + 40) = a6;

  sub_1000220D8();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v15[4] = a1;
  v15[5] = a2;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100177E30;
  v15[3] = &unk_1002520C8;
  v14 = _Block_copy(v15);

  [a3 updateCacheForAccountDSID:a4 withCacheTypeIDs:isa completion:v14];
  _Block_release(v14);
}

uint64_t sub_1001980B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v36 = a4;
  v37 = a5;
  v40 = type metadata accessor for DispatchQoS.QoSClass();
  v35 = *(v40 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v40);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  v34 = qword_100270928;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = *(type metadata accessor for LogInterpolation() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v43 = type metadata accessor for ServerDataCacheService();
  v41 = a1;
  v16 = a1;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v41);
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v41 = 0xD000000000000014;
  v42 = 0x8000000100202520;
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);
  v43 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v41, &qword_10026D350, &qword_1001E6050);
  v20 = static os_log_type_t.info.getter();
  sub_1000036B0(v20);

  sub_10014E118();
  v21 = swift_allocObject();
  v21[2] = v37;
  v21[3] = v16;
  v22 = v16;
  v23 = a3;
  v24 = v39;
  v21[4] = a6;
  v21[5] = v24;
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = a6;
  v25[4] = v24;
  v25[5] = a2;
  v25[6] = v23;
  v26 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v27 = v35;
  v28 = v38;
  v29 = v40;
  (*(v35 + 104))(v38, enum case for DispatchQoS.QoSClass.default(_:), v40);
  v30 = v22;
  swift_retain_n();
  v31 = v30;

  v32 = static OS_dispatch_queue.global(qos:)();
  (*(v27 + 8))(v28, v29);
  v43 = v26;
  v44 = &protocol witness table for OS_dispatch_queue;
  v41 = v32;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(&v41);
}

uint64_t sub_1001984BC(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, void))
{
  if (*a1 == 1 && (a2 & 1) == 0)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = *(type metadata accessor for LogInterpolation() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v26 = type metadata accessor for ServerDataCacheService();
    v24 = a3;
    v16 = a3;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v24);
    v26 = &type metadata for String;
    v24 = 0xD00000000000002FLL;
    v25 = 0x80000001002025A0;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v24, &qword_10026D350, &qword_1001E6050);
    v21 = static os_log_type_t.info.getter();
    sub_1000036B0(v21);

    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = *(type metadata accessor for LogInterpolation() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v26 = type metadata accessor for ServerDataCacheService();
    v24 = a3;
    v10 = a3;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v24);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    v19._object = 0x8000000100202570;
    v19._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v19);
    sub_10007B9A4(&qword_100270978, &qword_1001F00E0);
    _print_unlocked<A, B>(_:_:)();
    v26 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v24, &qword_10026D350, &qword_1001E6050);
    v20 = static os_log_type_t.info.getter();
    sub_1000036B0(v20);
  }

  return a4(v6, 0);
}

void sub_1001988C0(uint64_t a1, void *a2, void (*a3)(void *, id), uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    v11 = v34 == 2;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a2;
    v21 = a2;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v33 = &type metadata for String;
    v31 = 0xD000000000000038;
    v32 = 0x80000001002022C0;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v29 = static os_log_type_t.info.getter();
    sub_1000036B0(v29);

    a3(_swiftEmptyDictionarySingleton, 0);
  }

  else
  {

    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v12 = *(type metadata accessor for LogInterpolation() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a2;
    v15 = a2;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v24._object = 0x8000000100202540;
    v24._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v24);
    v25._countAndFlagsBits = a5;
    v25._object = a6;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 8250;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v35 = a1;
    _print_unlocked<A, B>(_:_:)();
    v33 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27);

    swift_getErrorValue();
    v28 = sub_1000F4C40(v30);
    a3(0, v28);
  }
}

uint64_t sub_100198D60(uint64_t a1, char a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t *, uint64_t), uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v23 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v62 = a6;
    v63 = a5;
    v64 = a4;
    v65 = a3;
    v66 = a1;
    v31 = qword_100268810;

    if (v31 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v32 = *(type metadata accessor for LogInterpolation() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v35 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ServerDataCacheService();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (a1)
    {
      v36 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      v37 = a1;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      v68 = 0;
      v69 = 0;
    }

    v58 = v63;
    v67 = v37;
    v70 = v36;

    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v67, &qword_10026D350, &qword_1001E6050);
    v59 = static os_log_type_t.default.getter();
    sub_1000036B0(v59);

    v58(v60);
    v65(&v66, 0);
    v56 = a1;
    v57 = 0;
    return sub_10006F2E8(v56, v57);
  }

  if (a2 == 1)
  {
    v64 = a4;
    v65 = a3;
    v66 = a1;
    v24 = qword_100268810;

    if (v24 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = *(type metadata accessor for LogInterpolation() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v28 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ServerDataCacheService();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (a1)
    {
      v29 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      v30 = a1;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v68 = 0;
      v69 = 0;
    }

    v67 = v30;
    v70 = v29;

    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v67, &qword_10026D350, &qword_1001E6050);
    v55 = static os_log_type_t.default.getter();
    sub_1000036B0(v55);

    v65(&v66, 0);
    v56 = a1;
    v57 = 1;
    return sub_10006F2E8(v56, v57);
  }

  v38 = v21;
  v64 = a8;
  v65 = a7;
  v62 = v20;
  v63 = a10;
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  v61[1] = qword_100270928;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v39 = *(type metadata accessor for LogInterpolation() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v42 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ServerDataCacheService();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v43 = static os_log_type_t.default.getter();
  sub_1000036B0(v43);

  sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
  Promise.__allocating_init()();
  v44 = Promise.makeCompletionAdapter()();
  v46 = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  *(v47 + 24) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1001A1D98;
  *(v48 + 24) = v47;
  v65(sub_1001A1D70, v48);

  v49 = swift_allocObject();
  v50 = v63;
  *(v49 + 16) = a9;
  *(v49 + 24) = v50;
  v51 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v52 = v62;
  (*(v38 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v62);

  v53 = static OS_dispatch_queue.global(qos:)();
  (*(v38 + 8))(v23, v52);
  v70 = v51;
  v71 = &protocol witness table for OS_dispatch_queue;
  v67 = v53;
  Promise.always(on:perform:)();

  return sub_100002C00(&v67);
}

uint64_t sub_100199508(uint64_t a1, char a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t *, uint64_t), uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v23 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v62 = a6;
    v63 = a5;
    v64 = a4;
    v65 = a3;
    v66 = a1;
    v31 = qword_100268810;

    if (v31 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v32 = *(type metadata accessor for LogInterpolation() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v35 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ServerDataCacheService();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (a1)
    {
      v36 = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
      v37 = a1;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      v68 = 0;
      v69 = 0;
    }

    v58 = v63;
    v67 = v37;
    v70 = v36;

    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v67, &qword_10026D350, &qword_1001E6050);
    v59 = static os_log_type_t.default.getter();
    sub_1000036B0(v59);

    v58(v60);
    v65(&v66, 0);
    v56 = a1;
    v57 = 0;
    return sub_10006F2E8(v56, v57);
  }

  if (a2 == 1)
  {
    v64 = a4;
    v65 = a3;
    v66 = a1;
    v24 = qword_100268810;

    if (v24 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = *(type metadata accessor for LogInterpolation() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v28 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ServerDataCacheService();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (a1)
    {
      v29 = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
      v30 = a1;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v68 = 0;
      v69 = 0;
    }

    v67 = v30;
    v70 = v29;

    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v67, &qword_10026D350, &qword_1001E6050);
    v55 = static os_log_type_t.default.getter();
    sub_1000036B0(v55);

    v65(&v66, 0);
    v56 = a1;
    v57 = 1;
    return sub_10006F2E8(v56, v57);
  }

  v38 = v21;
  v64 = a8;
  v65 = a7;
  v62 = v20;
  v63 = a10;
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  v61[1] = qword_100270928;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v39 = *(type metadata accessor for LogInterpolation() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v42 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ServerDataCacheService();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v43 = static os_log_type_t.default.getter();
  sub_1000036B0(v43);

  sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
  Promise.__allocating_init()();
  v44 = Promise.makeCompletionAdapter()();
  v46 = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  *(v47 + 24) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1001A1394;
  *(v48 + 24) = v47;
  v65(sub_1001A13CC, v48);

  v49 = swift_allocObject();
  v50 = v63;
  *(v49 + 16) = a9;
  *(v49 + 24) = v50;
  v51 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v52 = v62;
  (*(v38 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v62);

  v53 = static OS_dispatch_queue.global(qos:)();
  (*(v38 + 8))(v23, v52);
  v70 = v51;
  v71 = &protocol witness table for OS_dispatch_queue;
  v67 = v53;
  Promise.always(on:perform:)();

  return sub_100002C00(&v67);
}

void sub_100199CB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29._countAndFlagsBits = a8;
  v29._object = a5;
  v14 = sub_100199FE8(a1, _swiftEmptyDictionarySingleton, a2);
  if (v15 == -1)
  {
    v29._countAndFlagsBits = a4;
    v18 = a6;
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = *(type metadata accessor for LogInterpolation() - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = *(v19 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v32 = type metadata accessor for ServerDataCacheService();
    v31[0] = a3;
    v22 = a3;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v31);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v25._object = 0x80000001002024F0;
    v25._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v25);
    String.append(_:)(v29);
    v26._countAndFlagsBits = 8250;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    _print_unlocked<A, B>(_:_:)();
    v32 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v31, &qword_10026D350, &qword_1001E6050);
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27);

    swift_getErrorValue();
    v28 = sub_1000F4C40(v30);
    v18(0, v28);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    sub_100197B40(v14, v15, a6, a7, a3, a4, v29._object, v29._countAndFlagsBits, a9, a10);

    sub_10006F2D4(v16, v17);
  }
}

uint64_t sub_100199FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 5;
  switch(a3)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v4 = 4;
      goto LABEL_7;
    case 2:
      v4 = 3;
      goto LABEL_7;
    case 3:
      v4 = 2;
      goto LABEL_7;
    case 4:
      v4 = 1;
      goto LABEL_7;
    case 5:
      v4 = 0;
LABEL_7:
      swift_errorRetain();
      sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
      v5 = swift_dynamicCast();

      if (v5)
      {
        v6 = v8 == 2;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        if ((v4 & 2) != 0)
        {
          a2 = 0;
        }

        else if (v4)
        {
        }

        else
        {
          a2 = 0;
        }
      }

      else
      {
        a2 = 0;
      }

      result = a2;
      break;
    default:
      sub_1001A1E18();
      result = sub_100003BCC();
      __break(1u);
      break;
  }

  return result;
}

void sub_10019A18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_10019A238()
{
  sub_100003D74();
  v42 = v1;
  v44 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000356C();
  v47 = v12;
  v48 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v46 = v16 - v15;
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v17 = sub_100003DE8();
  sub_100002CFC(v17);
  v19 = *(v18 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  sub_100004B44();
  static LogInterpolation.safe(_:)();
  v20 = sub_100015C5C();
  sub_100009FB0(v20, v21, &qword_1001E6050);
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v40 = v10;
  static LogInterpolation.sensitive(_:)();
  v22 = sub_100015C5C();
  sub_100009FB0(v22, v23, &qword_1001E6050);
  sub_10000B40C();
  _StringGuts.grow(_:)(30);

  v49[0] = 0x4449656C646E7562;
  v49[1] = 0xEA0000000000203ALL;
  v24._countAndFlagsBits = v8;
  v24._object = v6;
  String.append(_:)(v24);
  sub_10000A1F4(" networkPolicy: ", v25);
  v52 = v4;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v50 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  v27 = sub_100015C5C();
  sub_100009FB0(v27, v28, &qword_1001E6050);
  v29 = static os_log_type_t.info.getter();
  sub_1000036B0(v29);

  if (v4 >= 6)
  {
    sub_10000A514();
    sub_100006688();
    __break(1u);
  }

  else
  {
    type metadata accessor for MercuryCacheDatabase();
    v30 = v40;
    sub_10014D878();
    v32 = v31;
    v41 = v31;
    sub_10014E968();
    sub_100018124();
    v33 = swift_allocObject();
    v33[2] = v4;
    v33[3] = v44;
    v33[4] = v42;
    v33[5] = v0;
    v33[6] = v30;
    v33[7] = v8;
    v33[8] = v6;
    v33[9] = v32;
    v33[10] = 5 - v4;
    v33[11] = ObjectType;
    sub_100018124();
    v34 = swift_allocObject();
    v34[2] = v4;
    v34[3] = v0;
    v34[4] = v8;
    v34[5] = v6;
    v34[6] = v44;
    v34[7] = v42;
    v34[8] = v30;
    v34[9] = v41;
    v34[10] = 5 - v4;
    v34[11] = ObjectType;
    v45 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v47 + 104))(v46, enum case for DispatchQoS.QoSClass.default(_:), v48);
    v35 = v30;
    swift_retain_n();
    v36 = v0;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v37 = v35;
    v38 = v36;
    v39 = static OS_dispatch_queue.global(qos:)();
    (*(v47 + 8))(v46, v48);
    v50 = v45;
    v51 = &protocol witness table for OS_dispatch_queue;
    v49[0] = v39;
    sub_100015CBC();

    sub_100002C00(v49);
    sub_100005F14();
  }
}

uint64_t sub_10019A6E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a7;
  *(v18 + 40) = a8;
  *(v18 + 48) = a9;
  *(v18 + 56) = a10;
  *(v18 + 64) = a3;
  *(v18 + 72) = a4;
  v19 = a5;
  v20 = a6;
  v21 = v19;
  v22 = v20;
  swift_retain_n();
  v23 = v21;
  v24 = v22;

  sub_100198D60(a1, a2, sub_1001A14FC, v15, sub_1001A1528, v16, sub_1001A1560, v17, sub_1001A158C, v18);
}

uint64_t sub_10019A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10019A8D4, 0, 0);
}

uint64_t sub_10019A8D4()
{
  sub_100004768();
  v1 = v0[2];
  v0[4] = sub_100194A5C();
  sub_1000220D8();
  v0[5] = v2;
  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10019A948(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a6;
  v50 = a8;
  v48 = a5;
  v45 = a2;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  __chkstk_darwin(v12);
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  v46 = qword_100270928;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = *(type metadata accessor for LogInterpolation() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v55 = type metadata accessor for ServerDataCacheService();
  v53 = a1;
  v18 = a1;
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v53);
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v53 = 0xD000000000000013;
  v54 = 0x8000000100202400;
  v21 = [v45 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 2108704;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = a3;
  v27._object = a4;
  String.append(_:)(v27);
  v55 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v53, &qword_10026D350, &qword_1001E6050);
  v28 = static os_log_type_t.info.getter();
  sub_1000036B0(v28);

  sub_10014E968();
  v48 = v29;
  v30 = swift_allocObject();
  v30[2] = v49;
  v30[3] = v18;
  v31 = a4;
  v32 = v18;
  v30[4] = a7;
  v33 = a7;
  v34 = v50;
  v30[5] = v50;
  v30[6] = a3;
  v30[7] = v31;
  v35 = swift_allocObject();
  v35[2] = v18;
  v35[3] = v33;
  v35[4] = v34;
  v35[5] = a3;
  v35[6] = v31;
  v36 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v38 = v51;
  v37 = v52;
  v39 = v47;
  (*(v51 + 104))(v47, enum case for DispatchQoS.QoSClass.default(_:), v52);
  v40 = v32;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v41 = v40;
  v42 = static OS_dispatch_queue.global(qos:)();
  (*(v38 + 8))(v39, v37);
  v55 = v36;
  v56 = &protocol witness table for OS_dispatch_queue;
  v53 = v42;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(&v53);
}

uint64_t sub_10019ADB0(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, void *a7)
{
  if (*a1 == 1 && (a2 & 1) == 0)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a3;
    v21 = a3;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v31 = 0xD00000000000001ALL;
    v32 = 0x8000000100202470;
    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);
    v27._object = 0x8000000100202360;
    v27._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v27);
    v33 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v28 = static os_log_type_t.info.getter();
    sub_1000036B0(v28);

    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 8);
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a3;
    v13 = a3;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v24._countAndFlagsBits = 0xD00000000000001ELL;
    v24._object = 0x8000000100202450;
    String.append(_:)(v24);
    sub_10007B9A4(&qword_100270978, &qword_1001F00E0);
    _print_unlocked<A, B>(_:_:)();
    v33 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v25 = static os_log_type_t.info.getter();
    sub_1000036B0(v25);
  }

  return a4(v9, 0);
}

void sub_10019B218(uint64_t a1, void *a2, void (*a3)(void *, id), uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    v11 = v34 == 2;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a2;
    v21 = a2;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v33 = &type metadata for String;
    v31 = 0xD000000000000038;
    v32 = 0x80000001002022C0;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v29 = static os_log_type_t.info.getter();
    sub_1000036B0(v29);

    a3(_swiftEmptyDictionarySingleton, 0);
  }

  else
  {

    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v12 = *(type metadata accessor for LogInterpolation() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a2;
    v15 = a2;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v24._object = 0x8000000100202420;
    v24._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v24);
    v25._countAndFlagsBits = a5;
    v25._object = a6;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 8250;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v35 = a1;
    _print_unlocked<A, B>(_:_:)();
    v33 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27);

    swift_getErrorValue();
    v28 = sub_1000F4C40(v30);
    a3(0, v28);
  }
}

uint64_t sub_10019B6B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t))
{
  v12 = a12;
  v13 = *a1;
  v14 = 1;
  v15 = *(a1 + 1);
  switch(a2)
  {
    case 0:
      LODWORD(v14) = v13 ^ 1;
      goto LABEL_9;
    case 1:
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v14 = 0;
      goto LABEL_10;
    case 2:
    case 3:
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v14 = 2;
      goto LABEL_10;
    case 4:
      goto LABEL_9;
    case 5:
      if (v13)
      {
        v16 = 0;
      }

      else
      {
LABEL_9:
        v18 = v15;

        v12 = a12;
        v14 = v14;
        v16 = v18;
      }

LABEL_10:
      v12(v16, v14);

      result = sub_10006F2E8(v16, v14);
      break;
    default:
      sub_1001A1E18();
      result = sub_100003BCC();
      __break(1u);
      break;
  }

  return result;
}

void sub_10019B810(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29._countAndFlagsBits = a8;
  v29._object = a5;
  v14 = sub_100199FE8(a1, _swiftEmptyDictionarySingleton, a2);
  if (v15 == -1)
  {
    v29._countAndFlagsBits = a4;
    v18 = a6;
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = *(type metadata accessor for LogInterpolation() - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = *(v19 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v32 = type metadata accessor for ServerDataCacheService();
    v31[0] = a3;
    v22 = a3;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v31);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v25._object = 0x80000001002023D0;
    v25._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v25);
    String.append(_:)(v29);
    v26._countAndFlagsBits = 8250;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    _print_unlocked<A, B>(_:_:)();
    v32 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v31, &qword_10026D350, &qword_1001E6050);
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27);

    swift_getErrorValue();
    v28 = sub_1000F4C40(v30);
    v18(0, v28);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    sub_10019A6E4(v14, v15, a6, a7, a3, v29._countAndFlagsBits, a4, v29._object, a9, a10);

    sub_10006F2D4(v16, v17);
  }
}

uint64_t sub_10019BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_100003D74();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = _Block_copy(v29);
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  sub_100005254();
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  v35 = v26;
  v36 = v28;
  a21(v35, v31, v33, v24, v22, v34);

  sub_100005F14();
}

void sub_10019BC60()
{
  sub_100003D74();
  v1 = v0;
  v45 = v3;
  v46 = v2;
  v39 = v4;
  v6 = v5;
  v41 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v48 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000356C();
  v42 = v15;
  v43 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v40 = v19 - v18;
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v20);
  v22 = *(v21 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  sub_100004B44();
  static LogInterpolation.safe(_:)();
  sub_100061E10();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v37 = v13;
  static LogInterpolation.sensitive(_:)();
  sub_100061E10();
  _StringGuts.grow(_:)(29);

  v49[0] = 0x3A65636976726573;
  v49[1] = 0xE900000000000020;
  v23._countAndFlagsBits = v11;
  v23._object = v9;
  String.append(_:)(v23);
  sub_10000A1F4(" networkPolicy: ", v24);
  v52 = v6;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v50 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100061E10();
  v26 = static os_log_type_t.info.getter();
  sub_1000036B0(v26);

  if (v6 >= 6)
  {
    sub_10000A514();
    sub_100006688();
    __break(1u);
  }

  else
  {
    type metadata accessor for MercuryCacheDatabase();
    v36 = v37;
    sub_10014D878();
    v28 = v27;
    v44 = v27;
    sub_10014FB00();
    sub_10005E280();
    v29 = swift_allocObject();
    v29[2] = v6;
    v29[3] = v39;
    v29[4] = v45;
    v29[5] = v48;
    v29[6] = v36;
    v29[7] = v28;
    v29[8] = v11;
    v29[9] = v9;
    v29[10] = v46;
    v29[11] = v41;
    v29[12] = 5 - v6;
    v29[13] = ObjectType;
    sub_10005E280();
    v30 = swift_allocObject();
    v30[2] = v6;
    v30[3] = v48;
    v30[4] = v11;
    v30[5] = v9;
    v30[6] = v39;
    v30[7] = v45;
    v30[8] = v36;
    v30[9] = v44;
    v30[10] = v46;
    v30[11] = v41;
    v30[12] = 5 - v6;
    v30[13] = ObjectType;
    v47 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v42 + 104))(v40, enum case for DispatchQoS.QoSClass.default(_:), v43);
    v31 = v36;
    swift_retain_n();
    v32 = v48;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v33 = v31;
    v34 = v32;
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v40, v43);
    v50 = v47;
    v51 = &protocol witness table for OS_dispatch_queue;
    v49[0] = v35;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v49);
    sub_100005F14();
  }
}

uint64_t sub_10019C160(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  *(v20 + 32) = a9;
  *(v20 + 40) = a10;
  *(v20 + 48) = a11;
  *(v20 + 56) = a12;
  *(v20 + 64) = a5;
  *(v20 + 72) = a3;
  *(v20 + 80) = a4;
  v21 = a5;
  swift_retain_n();
  v22 = a6;
  v23 = v21;
  v24 = v22;

  sub_100199508(a1, a2, sub_1001A12CC, v17, sub_1001A12F8, v18, sub_1001A1330, v19, sub_1001A135C, v20);
}

uint64_t sub_10019C344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10019C364, 0, 0);
}

uint64_t sub_10019C364()
{
  sub_100004768();
  v1 = v0[2];
  v0[4] = sub_100194A5C();
  sub_1000220D8();
  v0[5] = v2;
  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10019C3D8()
{
  sub_100004768();
  v1 = *(v0 + 32);
  sub_1001929AC(*(v0 + 40), *(v0 + 24));

  sub_100002D8C();

  return v2();
}

uint64_t sub_10019C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v26 = a6;
  v27 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v27);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014FB00();
  v28 = v17;
  v18 = swift_allocObject();
  v18[2] = v26;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a2;
  v18[7] = a3;
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a9;
  v19[5] = a2;
  v19[6] = a3;
  v20 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v21 = v27;
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v22 = a7;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v23 = v22;
  v24 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v21);
  v29[3] = v20;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v24;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_10019C688(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, void *a7)
{
  if (*a1 == 1 && (a2 & 1) == 0)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v34 = type metadata accessor for ServerDataCacheService();
    v32 = a3;
    v21 = a3;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v32);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v26._countAndFlagsBits = 0xD000000000000028;
    v26._object = 0x8000000100202330;
    String.append(_:)(v26);
    v27._countAndFlagsBits = a6;
    v27._object = a7;
    String.append(_:)(v27);
    v28._object = 0x8000000100202360;
    v28._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v28);
    v34 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v32, &qword_10026D350, &qword_1001E6050);
    v29 = static os_log_type_t.info.getter();
    sub_1000036B0(v29);

    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 8);
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = *(type metadata accessor for LogInterpolation() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v34 = type metadata accessor for ServerDataCacheService();
    v32 = a3;
    v13 = a3;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v32);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v24._countAndFlagsBits = 0xD00000000000002BLL;
    v24._object = 0x8000000100202300;
    String.append(_:)(v24);
    sub_10007B9A4(&qword_100270970, &qword_1001F00C0);
    _print_unlocked<A, B>(_:_:)();
    v34 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v32, &qword_10026D350, &qword_1001E6050);
    v25 = static os_log_type_t.info.getter();
    sub_1000036B0(v25);
  }

  return a4(v9, 0);
}

void sub_10019CAF4(uint64_t a1, void *a2, void (*a3)(void *, id), uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    v11 = v34 == 2;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a2;
    v21 = a2;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v33 = &type metadata for String;
    v31 = 0xD000000000000038;
    v32 = 0x80000001002022C0;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v29 = static os_log_type_t.info.getter();
    sub_1000036B0(v29);

    a3(_swiftEmptyArrayStorage, 0);
  }

  else
  {

    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v12 = *(type metadata accessor for LogInterpolation() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for ServerDataCacheService();
    v31 = a2;
    v15 = a2;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v24._object = 0x8000000100202280;
    v24._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v24);
    v25._countAndFlagsBits = a5;
    v25._object = a6;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 8250;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v35 = a1;
    _print_unlocked<A, B>(_:_:)();
    v33 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27);

    swift_getErrorValue();
    v28 = sub_1000F4C40(v30);
    a3(0, v28);
  }
}

uint64_t sub_10019CF94(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a9;
  v13 = *a1;
  v14 = 1;
  v15 = *(a1 + 1);
  switch(a2)
  {
    case 0:
      v14 = v13 ^ 1;
      goto LABEL_9;
    case 1:
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v14 = 0;
      goto LABEL_10;
    case 2:
    case 3:
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v14 = 2;
      goto LABEL_10;
    case 4:
      goto LABEL_9;
    case 5:
      if (v13)
      {
        v16 = 0;
      }

      else
      {
LABEL_9:
        v24 = v14;
        v17 = a8;
        v18 = a7;
        v19 = a6;
        v25 = v15;
        v20 = a5;
        v21 = a4;
        v22 = a3;

        a3 = v22;
        a4 = v21;
        v14 = v24;
        a5 = v20;
        v16 = v25;
        v12 = a9;
        a6 = v19;
        a7 = v18;
        a8 = v17;
      }

LABEL_10:
      sub_10019C160(v16, v14, a3, a4, a5, a6, a7, a8, v12, a10, a11, a12);

      result = sub_10006F2E8(v16, v14);
      break;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

void sub_10019D110(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void, id), uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = sub_100199FE8(a1, _swiftEmptyArrayStorage, a2);
  if (v16 == -1)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = *(type metadata accessor for LogInterpolation() - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = *(v19 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v35 = type metadata accessor for ServerDataCacheService();
    v34[0] = a3;
    v22 = a3;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v34);
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v25._object = 0x80000001002021E0;
    v25._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v25);
    v26._countAndFlagsBits = a4;
    v26._object = a5;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    _print_unlocked<A, B>(_:_:)();
    v35 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v34, &qword_10026D350, &qword_1001E6050);
    v28 = static os_log_type_t.error.getter();
    sub_1000036B0(v28);

    swift_getErrorValue();
    v29 = sub_1000F4C40(v33);
    a6(0, v29);
  }

  else
  {
    v17 = v15;
    v18 = v16;
    sub_10019C160(v15, v16, a6, a7, a3, a8, a9, a4, a5, a10, a11, a12);

    sub_10006F2D4(v17, v18);
  }
}

void sub_10019D570(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10019D618(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a7;
  *(v18 + 40) = a8;
  *(v18 + 48) = a9;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  v19 = a5;
  v20 = a6;
  v21 = v19;
  v22 = v20;
  swift_retain_n();
  v23 = v21;
  v24 = v22;

  sub_100198D60(a1, a2, sub_1001A1D94, v15, sub_1001A1BC4, v16, sub_1001A1BFC, v17, sub_1001A1C28, v18);
}

uint64_t sub_10019D7E8(void *a1, void *a2)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v4);
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v12 = a1;
  v13 = a2;
  sub_1000E349C();
}

uint64_t sub_10019D8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10019D8E8, 0, 0);
}

uint64_t sub_10019D8E8()
{
  sub_100004768();
  v1 = v0[2];
  v0[4] = sub_100194A5C();
  sub_1000220D8();
  v0[5] = v2;
  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10019D95C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000220D8();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v13[4] = a1;
  v13[5] = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100177E30;
  v13[3] = a6;
  v12 = _Block_copy(v13);

  [a3 updateCacheForAccountDSID:a4 withCacheTypeIDs:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_10019DA60(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a5;
  v43 = a7;
  v41 = a4;
  v39[0] = a2;
  v44 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v44);
  v40 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  v39[1] = qword_100270928;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = *(type metadata accessor for LogInterpolation() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v47 = type metadata accessor for ServerDataCacheService();
  v45 = a1;
  v16 = a1;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v45);
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v45 = 0xD00000000000001DLL;
  v46 = 0x8000000100202830;
  v19 = [v39[0] description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 2108704;
  v24._object = 0xE300000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v25);

  v47 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v45, &qword_10026D350, &qword_1001E6050);
  v26 = static os_log_type_t.info.getter();
  sub_1000036B0(v26);

  sub_10014F288();
  v27 = swift_allocObject();
  v27[2] = v42;
  v27[3] = v16;
  v28 = v16;
  v27[4] = a6;
  v29 = a6;
  v30 = v43;
  v27[5] = v43;
  v27[6] = a3;
  v31 = swift_allocObject();
  v31[2] = v16;
  v31[3] = v29;
  v31[4] = v30;
  v31[5] = a3;
  v32 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v33 = v40;
  v34 = v44;
  (*(v10 + 104))(v40, enum case for DispatchQoS.QoSClass.default(_:), v44);
  v35 = v28;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v36 = v35;
  v37 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v33, v34);
  v47 = v32;
  v48 = &protocol witness table for OS_dispatch_queue;
  v45 = v37;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(&v45);
}

uint64_t sub_10019DED0(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, void))
{
  if (*a1 == 1 && (a2 & 1) == 0)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = *(type metadata accessor for LogInterpolation() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v29 = type metadata accessor for ServerDataCacheService();
    v27 = a3;
    v16 = a3;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v27);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v21._countAndFlagsBits = 0xD000000000000024;
    v21._object = 0x80000001002028B0;
    String.append(_:)(v21);
    v22._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v22);

    v23._object = 0x8000000100202360;
    v23._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v23);
    v29 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v27, &qword_10026D350, &qword_1001E6050);
    v24 = static os_log_type_t.info.getter();
    sub_1000036B0(v24);

    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = *(type metadata accessor for LogInterpolation() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v29 = type metadata accessor for ServerDataCacheService();
    v27 = a3;
    v10 = a3;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v27);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v19._countAndFlagsBits = 0xD000000000000028;
    v19._object = 0x8000000100202880;
    String.append(_:)(v19);
    sub_10007B9A4(&qword_100270978, &qword_1001F00E0);
    _print_unlocked<A, B>(_:_:)();
    v29 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v27, &qword_10026D350, &qword_1001E6050);
    v20 = static os_log_type_t.info.getter();
    sub_1000036B0(v20);
  }

  return a4(v6, 0);
}

void sub_10019E350(uint64_t a1, void *a2, void (*a3)(void *, id))
{
  v30 = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    v6 = v29 == 2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = *(type metadata accessor for LogInterpolation() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v28 = type metadata accessor for ServerDataCacheService();
    v26 = a2;
    v16 = a2;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v26);
    v28 = &type metadata for String;
    v26 = 0xD000000000000038;
    v27 = 0x80000001002022C0;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v26, &qword_10026D350, &qword_1001E6050);
    v24 = static os_log_type_t.info.getter();
    sub_1000036B0(v24);

    a3(_swiftEmptyDictionarySingleton, 0);
  }

  else
  {

    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = *(type metadata accessor for LogInterpolation() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v28 = type metadata accessor for ServerDataCacheService();
    v26 = a2;
    v10 = a2;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v26);
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v19._object = 0x8000000100202850;
    v19._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v19);
    v20._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v30 = a1;
    _print_unlocked<A, B>(_:_:)();
    v28 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(&v26, &qword_10026D350, &qword_1001E6050);
    v22 = static os_log_type_t.error.getter();
    sub_1000036B0(v22);

    swift_getErrorValue();
    v23 = sub_1000F4C40(v25);
    a3(0, v23);
  }
}

uint64_t sub_10019E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = 1;
  v16 = *(a1 + 8);
  switch(a2)
  {
    case 0:
      v15 = *a1 ^ 1;
      goto LABEL_9;
    case 1:
      if ((*a1 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v15 = 0;
      goto LABEL_10;
    case 2:
    case 3:
      if ((*a1 & 1) == 0)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v15 = 2;
      goto LABEL_10;
    case 4:
      goto LABEL_9;
    case 5:
      if (*a1)
      {
        v16 = 0;
      }

      else
      {
LABEL_9:
        v17 = *(a1 + 8);
      }

LABEL_10:
      sub_10019D618(v16, v15, a3, a4, a5, a6, a7, a8, a9);

      result = sub_10006F2E8(v16, v15);
      break;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

void sub_10019E960(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void, id), uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_100199FE8(a1, _swiftEmptyDictionarySingleton, a2);
  if (v15 == -1)
  {
    if (qword_100268810 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v28 = *(v18 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v32 = type metadata accessor for ServerDataCacheService();
    v31[0] = a3;
    v20 = a3;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v31);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v23._object = 0x8000000100202800;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v23);
    v24._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 8250;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    _print_unlocked<A, B>(_:_:)();
    v32 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v31, &qword_10026D350, &qword_1001E6050);
    v26 = static os_log_type_t.error.getter();
    sub_1000036B0(v26);

    swift_getErrorValue();
    v27 = sub_1000F4C40(v30);
    a5(0, v27);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    sub_10019D618(v14, v15, a5, a6, a3, a7, a4, a8, a9);

    sub_10006F2D4(v16, v17);
  }
}

void sub_10019ECBC(void **a1, void *a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v20 = &type metadata for String;
  aBlock = 0xD00000000000001CLL;
  v18 = 0x80000001002020B0;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
  v20 = &type metadata for String;
  aBlock = 0xD00000000000001CLL;
  v18 = 0x80000001002020D0;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
  v20 = sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
  aBlock = a1;
  v9 = a1;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0(&aBlock, &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.info.getter();
  sub_1000036B0(v10);

  v11 = [v9 ams_DSID];
  if (v11)
  {
    v12 = v11;
    v21 = sub_1001A1D74;
    v22 = v5;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100177E30;
    v20 = &unk_100251AD8;
    v13 = _Block_copy(&aBlock);

    [a2 setUpCacheForAccountDSID:v12 completion:v13];
    _Block_release(v13);
  }

  else
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = AMSError();

    v12 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v12);
  }

  _Block_release(a3);
}

void sub_10019F0AC()
{
  sub_100003D74();
  v30 = v0;
  v31 = v1;
  v29 = v2;
  v4 = v3;
  v5 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v5);
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  sub_100004B68();
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v9);
  v11 = *(v10 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  static LogInterpolation.safe(_:)();
  sub_10000719C();
  sub_100009FB0(v12, v13, v14);
  static LogInterpolation.safe(_:)();
  sub_10000719C();
  sub_100009FB0(v15, v16, v17);
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v18 = v4;
  static LogInterpolation.sensitive(_:)();
  sub_10000719C();
  sub_100009FB0(v19, v20, v21);
  v22 = static os_log_type_t.default.getter();
  sub_1000036B0(v22);

  v23 = type metadata accessor for TaskPriority();
  sub_100011674(v23, v24, v25, v23);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v18;
  v26[5] = v30;
  v26[6] = v29;
  v26[7] = v31;
  v27 = v18;
  v28 = v30;

  sub_10000B0D0();

  sub_100005F14();
}

uint64_t sub_10019F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_10019F340, 0, 0);
}

uint64_t sub_10019F340()
{
  sub_1000061B4();
  if (qword_100268798 != -1)
  {
    sub_10000C1D8();
  }

  v0[34] = qword_1002878B0;
  if (qword_100268778 != -1)
  {
    sub_10000BBD0();
  }

  v1 = v0[30];
  v0[35] = qword_1002878A8;
  type metadata accessor for MercuryCacheDatabase();
  v2 = v1;
  sub_10014D878();
  v0[36] = v3;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v0[37] = sub_100003534();
  type metadata accessor for MercuryCacheUpdateStateManager();
  v0[38] = sub_10000DE18();
  swift_defaultActor_initialize();
  sub_1001A1E74(&_swiftEmptySetSingleton);
  v0[39] = sub_1001A1DEC();
  v4 = sub_10001CDD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10019F580()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v8 + 336) = v0;

  sub_1000060D0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10019F678()
{
  sub_10000B160();
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  v1 = v0[31];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = sub_100003DE8();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(sub_10001C070() + 16) = xmmword_1001E5F70;
  v0[17] = type metadata accessor for ServerDataCacheService();
  v0[14] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = v0[40];
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[30];
  sub_1001A1E54();

  sub_100002C00(v0 + 14);
  _StringGuts.grow(_:)(30);

  sub_100004B44();
  v22 = v12;
  v13 = [v11 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v0[21] = &type metadata for String;
  v0[18] = 0xD00000000000001CLL;
  v0[19] = v22;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0((v0 + 18), &qword_10026D350, &qword_1001E6050);
  v18 = static os_log_type_t.info.getter();
  sub_1000036B0(v18);

  v19 = sub_1001A1DA0();
  v9(v19);

  sub_100002D8C();

  return v20();
}

void sub_10019FBD8()
{
  sub_100003D74();
  v18 = v0;
  v19 = v1;
  v3 = v2;
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v4);
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_100004B68();
  if (qword_100268810 != -1)
  {
    sub_100007018();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  sub_1000056F8();
  sub_1001A1E04();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  static LogInterpolation.safe(_:)();
  sub_100008F50();
  static LogInterpolation.safe(_:)();
  sub_100008F50();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v11 = v3;
  static LogInterpolation.sensitive(_:)();
  sub_100008F50();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  v13 = type metadata accessor for TaskPriority();
  sub_100011674(v13, v14, v15, v13);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;
  v16[5] = v18;
  v16[6] = v19;
  v17 = v11;

  sub_10000B0D0();

  sub_100005F14();
}

uint64_t sub_10019FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  return _swift_task_switch(sub_10019FE3C, 0, 0);
}

uint64_t sub_10019FE3C()
{
  sub_100005B90();
  if (qword_100268798 != -1)
  {
    sub_10000C1D8();
  }

  if (qword_100268778 != -1)
  {
    sub_10000BBD0();
  }

  v2 = v0[21];
  v3 = qword_1002878A8;
  sub_100005FF4();
  sub_1001A1A98(v4, v5);
  sub_10000A658();
  v6 = type metadata accessor for MercuryCacheDatabase();
  v7 = v2;
  sub_10014D878();
  v0[5] = v6;
  v0[6] = &off_10024EFC0;
  v0[2] = v8;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v9 = sub_100003534();
  v0[24] = v9;
  updated = type metadata accessor for MercuryCacheUpdateStateManager();
  v11 = sub_10000DE18();
  swift_defaultActor_initialize();
  *(v11 + 112) = &_swiftEmptySetSingleton;
  v0[10] = updated;
  v0[11] = &off_10024FC08;
  v0[7] = v11;
  v12 = type metadata accessor for DynamicActivityTaskScheduler();
  v13 = sub_1001A1DEC();
  v0[15] = v12;
  v0[16] = &off_100248A70;
  v0[12] = v13;
  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_1001A0048;
  v15 = v0[21];

  return sub_1001620A8(v15, v3, v1, (v0 + 2), v9, &type metadata for AMPAccountFinder, &off_1002466C8, &type metadata for MercuryCacheDataFetcher);
}

uint64_t sub_1001A0048()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  v4 = v2[25];
  v5 = v2[24];
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  v3[26] = v0;

  sub_100002C00(v3 + 12);
  sub_100002C00(v3 + 7);
  if (!v0)
  {
    sub_100002C00(v3 + 2);
  }

  sub_1000060D0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001A0180()
{
  sub_100004768();
  v1 = *(v0 + 184);
  (*(v0 + 176))(*(v0 + 208) == 0, 0);

  sub_100002D8C();

  return v2();
}

uint64_t sub_1001A01FC()
{
  sub_1000061B4();
  v1 = *(v0 + 208);
  sub_100002C00((v0 + 16));
  swift_getErrorValue();
  v2 = *(v0 + 136);
  v3 = *(v0 + 152);
  v4 = sub_1000F4C40(*(v0 + 144));
  v5 = *(v0 + 184);
  (*(v0 + 176))(*(v0 + 208) == 0, v4);

  sub_100002D8C();

  return v6();
}

uint64_t sub_1001A0354()
{
  sub_100003D28();
  sub_100005DA0();
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v6 = sub_1000055EC(v4);

  return sub_10019FE18(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1001A03F4()
{
  sub_100005B90();
  sub_100005DA0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  sub_1000055EC(v4);
  sub_10005E25C();

  return sub_10019F31C(v6, v7, v8, v9, v10, v11, v1);
}

void sub_1001A0514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  if (a2)
  {
    sub_10007B9A4(a3, a4);
    v7 = static _DictionaryStorage.convert(_:capacity:)();
    v23 = v7;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v8 = __CocoaDictionary.Iterator.next()();
      if (!v8)
      {

        return;
      }

      v21 = v8;
      sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      sub_10005E22C();
      a5(0);
      sub_10005E22C();
      v9 = *(v7 + 16);
      if (*(v7 + 24) <= v9)
      {
        a6(v9 + 1, 1);
      }

      v7 = v23;
      v10 = NSObject._rawHashValue(seed:)(*(v23 + 40));
      v11 = *(v23 + 32);
      sub_10002942C(v10, v23 + 64);
      if (v12)
      {
        break;
      }

      sub_100017EF0();
LABEL_15:
      sub_100003FCC(v13);
      *(*(v23 + 48) + 8 * v19) = v22;
      *(*(v23 + 56) + 8 * v19) = v21;
      ++*(v23 + 16);
    }

    sub_1001A1E40();
    while (++v15 != v17 || (v16 & 1) == 0)
    {
      v18 = v15 == v17;
      if (v15 == v17)
      {
        v15 = 0;
      }

      v16 |= v18;
      if (*(v14 + 8 * v15) != -1)
      {
        sub_1001A1E2C();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1001A06DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10007B9A4(&qword_100270988, &qword_1001F0140);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return;
      }

      v14 = v3;
      sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      sub_10005E22C();
      sub_10007B9A4(&qword_10026AF18, &qword_1001E86B8);
      sub_10005E22C();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1001C6E50();
      }

      v2 = v16;
      v4 = NSObject._rawHashValue(seed:)(*(v16 + 40));
      v5 = *(v16 + 32);
      sub_10002942C(v4, v16 + 64);
      if (v6)
      {
        break;
      }

      sub_100017EF0();
LABEL_15:
      sub_100003FCC(v7);
      *(*(v16 + 48) + 8 * v13) = v15;
      *(*(v16 + 56) + 8 * v13) = v14;
      ++*(v16 + 16);
    }

    sub_1001A1E40();
    while (++v9 != v11 || (v10 & 1) == 0)
    {
      v12 = v9 == v11;
      if (v9 == v11)
      {
        v9 = 0;
      }

      v10 |= v12;
      if (*(v8 + 8 * v9) != -1)
      {
        sub_1001A1E2C();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001A08A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    sub_1001A0514(v7, result + 1, &qword_100270968, &unk_1001F00B0, type metadata accessor for MercuryCacheUpdateCoordinator, sub_1001C6764);
    *v3 = v9;
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1000ACAE4(a1, a2, isUniquelyReferenced_nonNull_native, v11, v12, v13, v14, v15, v16, *v3);
    *v3 = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A0974()
{
  sub_1001A1DB0();
  if (v2)
  {
    goto LABEL_4;
  }

  result = sub_100017FF0();
  if (!__OFADD__(result, 1))
  {
    sub_10002409C();
    sub_1001A0514(v1, v4, v5, v6, v7, sub_1001C6E3C);
    *v0 = v8;
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_10000DD94();
    result = sub_1000ACE8C(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    *v0 = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A0A00()
{
  sub_1001A1DB0();
  if (v2)
  {
    goto LABEL_4;
  }

  result = sub_100017FF0();
  if (!__OFADD__(result, 1))
  {
    sub_1001A06DC(v1, result + 1);
    *v0 = v4;
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    v5 = sub_10000DD94();
    result = sub_1000ACF90(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    *v0 = v15;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1001A0A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100003D74();
  v96 = v23;
  v97 = v24;
  v94 = v25;
  v95 = v26;
  v91 = v27;
  v92 = v28;
  v30 = v29;
  v32 = v31;
  sub_100005FF4();
  v93 = sub_1001A1A98(v33, v34);
  v35 = type metadata accessor for MercuryCacheDatabase();
  v124[3] = v35;
  v124[4] = &off_10024EFC0;
  v124[0] = v30;
  updated = type metadata accessor for MercuryCacheUpdateStateManager();
  v123 = &off_10024FC08;
  v36 = updated;
  v121[0] = a21;
  v119 = type metadata accessor for DynamicActivityTaskScheduler();
  v120 = &off_100248A70;
  v37 = v119;
  v118[0] = a22;
  swift_beginAccess();
  v38 = *(a23 + 112);

  v39 = sub_1000AA7B0(v32, v38);

  if (!v39)
  {
    sub_1001A120C(v124, v116);
    sub_1001A120C(v121, v115);
    sub_1001A120C(v118, v114);
    sub_100046CB8(v116, v117);
    sub_10000E734();
    sub_10000356C();
    v41 = *(v40 + 64);
    __chkstk_darwin(v42);
    sub_100002DEC();
    sub_100004B68();
    (*(v43 + 16))(0);
    sub_100046CB8(v115, v115[3]);
    sub_10000E734();
    sub_10000356C();
    v45 = *(v44 + 64);
    __chkstk_darwin(v46);
    sub_100002DEC();
    v48 = sub_100048FA8(v47);
    v49(v48);
    sub_100046CB8(v114, v114[3]);
    sub_10000E734();
    sub_10000356C();
    v51 = *(v50 + 64);
    __chkstk_darwin(v52);
    sub_100002DEC();
    v54 = sub_10005EECC(v53);
    v55(v54);
    v56 = *v38;
    v57 = *v30;
    v113[3] = v35;
    v113[4] = &off_10024EFC0;
    v113[0] = MEMORY[0];
    v111 = v36;
    v112 = &off_10024FC08;
    v90 = v36;
    v110[0] = v56;
    v108 = v37;
    v109 = &off_100248A70;
    v107[0] = v57;
    type metadata accessor for MercuryCacheUpdateCoordinator();
    v58 = swift_allocObject();
    sub_100046CB8(v113, v35);
    sub_10000E734();
    sub_10000356C();
    v60 = *(v59 + 64);
    __chkstk_darwin(v61);
    sub_100002DEC();
    v63 = sub_10005EECC(v62);
    v64(v63);
    sub_100046CB8(v110, v111);
    sub_10000E734();
    sub_10000356C();
    v66 = *(v65 + 64);
    __chkstk_darwin(v67);
    sub_100002DEC();
    v69 = sub_100048FA8(v68);
    v70(v69);
    sub_100046CB8(v107, v108);
    sub_10000E734();
    sub_10000356C();
    v72 = *(v71 + 64);
    __chkstk_darwin(v73);
    sub_100002DEC();
    v76 = (v75 - v74);
    (*(v77 + 16))(v75 - v74);
    v78 = *v30;
    v79 = *v38;
    v80 = *v76;
    v105 = v35;
    v106 = &off_10024EFC0;
    *&v104 = v78;
    v102 = v90;
    v103 = &off_10024FC08;
    *&v101 = v79;
    v99 = v37;
    v100 = &off_100248A70;
    *&v98 = v80;
    swift_defaultActor_initialize();
    v58[19] = v32;
    v58[26] = v91;
    v58[27] = v93;
    sub_10003B104(&v104, (v58 + 21));
    v58[20] = v92;
    v58[28] = v94;
    v58[29] = v95;
    v58[30] = v96;
    v58[31] = v97;
    sub_10003B104(&v101, (v58 + 32));
    sub_10003B104(&v98, (v58 + 14));
    v81 = v32;

    swift_unknownObjectRetain();
    sub_100002C00(v107);
    sub_100002C00(v110);
    sub_100002C00(v113);
    sub_100002C00(v114);
    sub_100002C00(v115);
    sub_100002C00(v116);
    swift_beginAccess();

    sub_1001A08A4(v82, v81);
    swift_endAccess();
    if (qword_100268790 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_10000A658();
    v83 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v83);
    v85 = *(v84 + 72);
    sub_1000056F8();
    sub_1001A1E04();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v117 = type metadata accessor for MercuryCacheUpdateCoordinatorProvider();
    v116[0] = a23;

    v86 = AMSLogKey();
    if (v86)
    {
      v87 = v86;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v116);
    LogInterpolation.init(stringLiteral:)();
    v117 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v116[0] = v81;
    v88 = v81;
    static LogInterpolation.sensitive(_:)();
    sub_100009FB0(v116, &qword_10026D350, &qword_1001E6050);
    v89 = static os_log_type_t.info.getter();
    sub_1000036B0(v89);
  }

  sub_100002C00(v124);
  sub_100002C00(v121);
  sub_100002C00(v118);
  sub_100005F14();
}

uint64_t sub_1001A120C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_1000047A4(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1001A1274()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100004DE4();
  sub_10005E2B8();
  return sub_10019CF94(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15);
}

void sub_1001A12A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100004DE4();
  sub_10005E2B8();
  sub_10019D110(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1001A12CC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1001A1394(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1001A13CC(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 & 1);
}

uint64_t sub_1001A1428()
{
  sub_100003D28();
  sub_10000B294();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v6 = sub_1000055EC(v4);

  return sub_10019C344(v6, v7, v8, v9, v1);
}

uint64_t sub_1001A14FC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1001A15E8()
{
  sub_100003D28();
  sub_10000B294();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v6 = sub_1000055EC(v4);

  return sub_10019A8B4(v6, v7, v8, v9, v1);
}

uint64_t sub_1001A169C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_100004DE4();
  return sub_10019B6B8(v4, v12, v6, v7, v8, v9, v10, v11, v3.n128_i64[0], v3.n128_i64[1], v0[11], v5);
}

uint64_t sub_1001A16D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  sub_100018124();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1001A1740()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_100004DE4();
  v8 = v0[11];
  return v6(v3, v4, v5);
}

uint64_t sub_1001A17B8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = sub_100008FD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1001A1828()
{
  sub_100005B90();
  sub_100005DA0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  sub_1000055EC(v4);
  sub_10005E25C();

  return sub_100197E24(v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_1001A18D0()
{
  sub_100005B90();
  sub_100005DA0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  sub_1000055EC(v5);
  sub_10005E25C();

  return sub_100196D14(v7, v8, v9, v10, v11, v12, v2, v3);
}

uint64_t sub_1001A1980()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = sub_100009010();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1001A19D0()
{
  sub_100005B90();
  sub_100005DA0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  sub_1000055EC(v5);
  sub_10005E25C();

  return sub_100196100(v7, v8, v9, v10, v11, v12, v2, v3);
}

uint64_t sub_1001A1A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A1AE0()
{
  sub_100003D28();
  sub_10000B294();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v6 = sub_1000055EC(v4);

  return sub_100195470(v6, v7, v8, v9, v1);
}

uint64_t sub_1001A1C5C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_10019DED0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

void sub_1001A1C6C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_10019E350(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1001A1C78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = sub_10000B284();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1001A1CB8()
{
  sub_100003D28();
  sub_10000B294();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v6 = sub_1000055EC(v4);

  return sub_10019D8C8(v6, v7, v8, v9, v1);
}

uint64_t sub_1001A1DC8()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_1001A1DEC()
{

  return swift_allocObject();
}

uint64_t sub_1001A1E54()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1001A1E74@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 112) = a1;

  return type metadata accessor for DynamicActivityTaskScheduler();
}

uint64_t sub_1001A1EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_100119228(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100009F34(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000A064(v11, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000A064(a3, &unk_10026FEC0, &qword_1001E6280);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A064(a3, &unk_10026FEC0, &qword_1001E6280);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001A2128(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v10[3] = type metadata accessor for SetupAssistantObserver();
  v10[0] = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);

  result = BYSetupAssistantNeedsToRun();
  if ((result & 1) == 0)
  {
    sub_1001A24DC();
    sub_1001A2570();
    type metadata accessor for DynamicUICache();
    return sub_1000C5934();
  }

  return result;
}

uint64_t sub_1001A22E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1001A2338()
{
  v1 = v0;
  swift_beginAccess();
  notify_cancel(*(v0 + 16));
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v9[3] = type metadata accessor for SetupAssistantObserver();
  v9[0] = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7);
}

uint64_t sub_1001A24DC()
{
  v0 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
  if (qword_100268670 != -1)
  {
    swift_once();
  }

  sub_1000627E8();
}

uint64_t sub_1001A2570()
{
  v0 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1001A1EA8(0, 0, v3, &unk_1001F01C8, v5);
}

uint64_t sub_1001A2664()
{
  if (qword_100268838 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1001A272C;

  return sub_1001B8710();
}

uint64_t sub_1001A272C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_100096318, 0, 0);
  }
}

uint64_t sub_1001A288C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000B1388;

  return sub_1001A2644(a1);
}

CFPropertyListRef sub_1001A2940()
{
  v1 = 0x11100E0Fu >> (8 * *(v0 + 25));
  type metadata accessor for Defaults();
  result = sub_1000571D4(v1);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1001A3190(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5.value._countAndFlagsBits = 0x797469746E656469;
  v6._countAndFlagsBits = 0x452D747065636341;
  v6._object = 0xEF676E69646F636ELL;
  v5.value._object = 0xE800000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v5, v6);
}

uint64_t sub_1001A323C()
{
  sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_urlSession);
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v3 = [v1 dataTaskPromiseWithRequest:isa];

  return Promise<A>.init(_:)();
}

uint64_t sub_1001A32C4(void **a1)
{
  sub_1001A3360(*a1);
  v1 = *(type metadata accessor for JSStackContext() + 40);
  return Promise.resolve(_:)();
}

uint64_t sub_1001A3360(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v68 = type metadata accessor for JetpackOutputWriter();
  v5 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  v16 = sub_1001A46B8(a1);
  v67 = v10;
  if (!v16)
  {
    v74 = 0u;
    v75 = 0u;
    goto LABEL_6;
  }

  v17 = v16;
  strcpy(v73, "Last-Modified");
  HIWORD(v73[0]) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v78, v17, &v74);

  sub_10000E1E8(&v78);
  if (!*(&v75 + 1))
  {
LABEL_6:
    v20 = v4;
    sub_100009F5C(&v74, &qword_10026D350, &qword_1001E6050);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v19 = *(&v78 + 1);
    v18 = v78;

    goto LABEL_12;
  }

  v20 = v4;
LABEL_8:
  sub_100002BC0(0, &unk_100270B80, NSDateFormatter_ptr);
  v21 = sub_1000BFBD8();
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v15, v11);
  v23 = [v21 stringForObjectValue:isa];

  if (v23)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v24;
  }

  else
  {

    v18 = 0;
    v19 = 0;
  }

  v4 = v20;
LABEL_12:
  v25 = 0x11100E0Fu >> (8 * *(v2 + 25));
  if (v19)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  *&v66 = v18;
  type metadata accessor for Defaults();
  sub_1000C2358(v26, v25);
  swift_unknownObjectRelease();
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  *(&v66 + 1) = qword_100287828;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = *(type metadata accessor for LogInterpolation() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(&v79 + 1) = v4;
  *&v78 = v2;

  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v78);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._object = 0xEF203A6465696669;
  v32._countAndFlagsBits = 0x646F4D2D7473614CLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  if (v19)
  {
    v33 = &type metadata for String;
    v34 = v66;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    *&v79 = 0;
  }

  *&v78 = v34;
  *(&v78 + 1) = v19;
  *(&v79 + 1) = v33;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v78, &qword_10026D350, &qword_1001E6050);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
  LogInterpolation.init(stringInterpolation:)();
  v36 = static os_log_type_t.debug.getter();
  sub_1000036B0(v36);

  v37 = sub_1001A46B8(v84);
  if (!v37)
  {
    v82 = 0u;
    v83 = 0u;
    goto LABEL_27;
  }

  v38 = v37;
  *&v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v74 + 1) = v39;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v78, v38, &v82);

  sub_10000E1E8(&v78);
  if (!*(&v83 + 1))
  {
LABEL_27:
    sub_100009F5C(&v82, &qword_10026D350, &qword_1001E6050);
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v66 = v78;
    goto LABEL_29;
  }

LABEL_28:
  v66 = 0uLL;
LABEL_29:
  v40 = *(v2 + 5);
  v74 = *(v2 + 3);
  v75 = v40;
  v41 = *(v2 + 9);
  v76 = *(v2 + 7);
  v77 = v41;
  v78 = v74;
  v79 = v40;
  v42 = v2 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_context;
  v80 = v76;
  v81 = v41;
  v43 = type metadata accessor for JSStackContext();
  v67 = v43[9];
  v44 = v68;
  v45 = *(v68 + 20);
  v46 = type metadata accessor for URL();
  v47 = *(*(v46 - 8) + 16);
  v48 = v70;
  v47(&v70[v45], &v67[v42], v46);
  v49 = v43[10];
  v67 = *(v44 + 24);
  v47(&v67[v48], (v42 + v49), v46);
  v50 = *(v42 + v43[11]);
  v51 = v81;
  v48[2] = v80;
  v48[3] = v51;
  v52 = v79;
  *v48 = v78;
  v48[1] = v52;
  *(v48 + *(v44 + 28)) = v50;
  sub_10000F4A4(&v74, v73);
  v53 = [v84 data];
  v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  if (*(&v66 + 1))
  {
    v57 = v48[1];
    v73[0] = *v48;
    v73[1] = v57;
    v58 = v48[3];
    v73[2] = v48[2];
    v73[3] = v58;
    if (*(&v73[0] + 1))
    {
      v59 = v48[1];
      v72[0] = *v48;
      v72[1] = v59;
      v60 = v48[3];
      v72[2] = v48[2];
      v72[3] = v60;
      v61 = objc_opt_self();
      sub_10000F4A4(v72, v71);
      v84 = v61;
      v62 = sub_1000F0478(v61);
      if (!v62)
      {
        v62 = Dictionary.init(dictionaryLiteral:)();
      }

      v63 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v63;
      sub_1000ABF90();

      sub_1001A476C(v71[0], v84, &type metadata for String, &type metadata for String, &protocol witness table for String, &selRef_setJsVersionMap_);
      sub_100009F5C(v73, &qword_10026C940, &qword_1001EBE88);
    }

    else
    {
    }
  }

  v64 = v69;
  Data.write(to:options:)();
  if (!v64)
  {
    sub_1000FDA8C();
  }

  sub_1000253FC(v54, v56);
  return sub_1000359E8();
}

void sub_1001A3C70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v15[0] = a1;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = v17;
  sub_1001A4724(&qword_100269290, type metadata accessor for AMSError);
  v6 = _BridgedStoredNSError.userInfo.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100052D94(v6, v15);

  if (!v16)
  {

    sub_100009F5C(v15, &qword_10026D350, &qword_1001E6050);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || v14 != 304)
  {

LABEL_11:
    Promise.reject(_:)();
    return;
  }

  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = *(type metadata accessor for LogInterpolation() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v16 = v4;
  v15[0] = a3;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v15);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.info.getter();
  sub_1000036B0(v12);

  v13 = *(type metadata accessor for JSStackContext() + 40);
  Promise.resolve(_:)();
}

uint64_t sub_1001A3FA8(char a1)
{
  type metadata accessor for Defaults();
  if (!sub_1000571D4(2))
  {
    return 0;
  }

  sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v4 = sub_10003A3C0(v3, v2, v6);

  return v4;
}

void sub_1001A40F4()
{
  type metadata accessor for Defaults();
  if (!sub_1000571D4(2) || (sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0), (swift_dynamicCast() & 1) == 0))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000ABF90();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000C2358(isa, 2);
}

id sub_1001A42C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:a3];
  [v14 setAnisetteType:0];
  [v14 setMescalType:0];
  [v14 setAccount:0];
  [v14 setRequestEncoding:1];
  [v14 setDialogOptions:1];
  [v14 setClientInfo:a2];
  [v14 setDisableResponseDecoding:1];
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *&v26 = 0xD000000000000019;
  *(&v26 + 1) = 0x8000000100202A80;
  AnyHashable.init<A>(_:)();
  static Date.now.getter();
  v16 = *(v3 + 40);
  v26 = *(v3 + 24);
  v27 = v16;
  v17 = *(v3 + 72);
  v28 = *(v3 + 56);
  v29 = v17;
  v18 = type metadata accessor for Defaults();
  v19 = [objc_allocWithZone(v18) init];
  v25[4] = &off_100248840;
  v25[3] = v18;
  v25[0] = v19;
  sub_100059478(v25, v11);
  sub_100002C00(v25);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v7 + 8);
  v22(v11, v6);
  v22(v13, v6);
  *(inited + 96) = &type metadata for Double;
  *(inited + 72) = v21;
  v23 = Dictionary.init(dictionaryLiteral:)();
  sub_1001A476C(v23, v14, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable, &selRef_setAdditionalMetrics_);
  return v14;
}

uint64_t sub_1001A45F0()
{
  result = type metadata accessor for JSStackContext();
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

uint64_t sub_1001A46A8(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1001A32C4(a1);
}

uint64_t sub_1001A46B8(void *a1)
{
  v1 = [a1 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001A4724(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001A476C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 *a6];
}

uint64_t SQLDatabase.__allocating_init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000600C();
  v16 = swift_allocObject();
  SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t SQLDatabase.databasePath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_1001A48B0()
{
  if (*(v0 + 32))
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *(v0 + 32);
  return result;
}

uint64_t SQLDatabase.__allocating_init(schemaBlock:corruptionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLDatabase();
  sub_10000600C();
  v8 = swift_allocObject();
  SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(0x656D3A3A656C6966, 0xED00003A79726F6DLL, 0, 0, a1, a2, a3, a4);
  return v8;
}

void SQLDatabase.query(sql:parameters:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  sub_100014A20(sub_100014F68, v5);
}

void static SQLDatabase.removeDatabase(path:)()
{
  sub_100007E34();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  if (qword_1002686B8 != -1)
  {
    sub_100004FFC();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v10 = *(v9 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v11 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for SQLDatabase();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x8000000100202AC0;
  v12._countAndFlagsBits = 0xD000000000000013;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v27 = &type metadata for String;
  v25 = v3;
  v26 = v1;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v13 = sub_10000A00C(&v25, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v13);
  LogInterpolation.init(stringInterpolation:)();
  v14 = static os_log_type_t.debug.getter();
  sub_1000036B0(v14);

  v15 = [objc_allocWithZone(NSFileManager) init];
  sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
  inited = swift_initStackObject();
  v17 = 0;
  *(inited + 16) = xmmword_1001E5F60;
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = 1835561773;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 64) = 1818326829;
  *(inited + 72) = 0xE400000000000000;
  while (1)
  {
    if (v17 == 48)
    {

      swift_setDeallocating();
      sub_1001A655C();
      goto LABEL_9;
    }

    v19 = *(inited + v17 + 32);
    v18 = *(inited + v17 + 40);
    v25 = v3;
    v26 = v1;

    v20._countAndFlagsBits = v19;
    v20._object = v18;
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();

    v25 = 0;
    LODWORD(v18) = [v15 removeItemAtPath:v21 error:&v25];

    v22 = v25;
    if (!v18)
    {
      break;
    }

    v23 = v25;
    v17 += 16;
  }

  swift_setDeallocating();
  v24 = v22;
  sub_1001A655C();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_9:
  sub_100005B78();
}

void static SQLDatabase.truncate(path:)()
{
  sub_100007E34();
  v1 = v0;
  v21 = v2;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  if (qword_1002686B8 != -1)
  {
    sub_100004FFC();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v9 = *(v8 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v10 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for SQLDatabase();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100202AE0;
  v11._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v23[3] = &type metadata for String;
  v23[0] = v21;
  v23[1] = v1;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v12 = sub_10000A00C(v23, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.debug.getter();
  sub_1000036B0(v13);

  v23[0] = 0;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v14 fileSystemRepresentation];
  v16 = v14;
  v17 = sqlite3_open_v2(v15, v23, 2, 0);
  if (!sub_100016CE0(v17))
  {
    v22 = 129;
    v18 = sqlite3_file_control(v23[0], 0, 101, &v22);
    v19 = sub_100016CE0(v18);
    sqlite3_close(v23[0]);
    if (v19)
    {
      sub_1000A0624();
      sub_100007544();
      *v20 = v19;
      swift_willThrow();
    }
  }

  sub_1000072EC();
  sub_100005B78();
}

uint64_t sub_1001A504C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = sub_100002CC4(v11);
  v32 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v18 = v17 - v16;
  v31 = type metadata accessor for DispatchQoS();
  v19 = sub_100002CC4(v31);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100002DEC();
  v26 = v25 - v24;
  v30 = *(v5 + 72);
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = a5;
  v27[5] = v5;
  v27[6] = a3;
  v27[7] = a4;
  aBlock[4] = sub_1001A6708;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002525A8;
  v28 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  sub_100013AFC(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v32 + 8))(v18, v11);
  (*(v21 + 8))(v26, v31);
}

const char *sub_1001A5314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v44._countAndFlagsBits = a1;
  v44._object = a2;
  if (a3)
  {
    v42._countAndFlagsBits = a3;
    swift_errorRetain();

    swift_errorRetain();
    sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0x3A726F7272455B20;
      v25._object = 0xE900000000000020;
      String.append(_:)(v25);
      _print_unlocked<A, B>(_:_:)();
LABEL_11:
      String.append(_:)(v42);

      if (a6 && sub_100024F14())
      {
        v42._countAndFlagsBits = 2108704;
        v42._object = 0xE300000000000000;
        v26._countAndFlagsBits = a5;
        v26._object = a6;
        String.append(_:)(v26);
        v27._countAndFlagsBits = 2108704;
        v27._object = 0xE300000000000000;
        String.append(_:)(v27);
      }

      v28._countAndFlagsBits = 93;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v29 = *(type metadata accessor for LogInterpolation() - 8);
      v30 = *(v29 + 72);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v43 = type metadata accessor for SQLDatabase();
      v42._countAndFlagsBits = a4;

      v32 = AMSLogKey();
      if (v32)
      {
        v33 = v32;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v42._countAndFlagsBits);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34._object = 0x8000000100202DE0;
      v34._countAndFlagsBits = 0xD000000000000010;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
      v43 = &type metadata for String;
      v42 = v44;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v42, &qword_10026D350, &qword_1001E6050);
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
      LogInterpolation.init(stringInterpolation:)();
      v36 = static os_log_type_t.error.getter();
      sub_1000036B0(v36);
      goto LABEL_19;
    }

    v42._countAndFlagsBits = 0x3A726F7272455B20;
    v42._object = 0xE900000000000020;
    v41 = dword_1001F02FC[v40];
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x3A726F7272455B20;
    v15._object = 0xE900000000000020;
    String.append(_:)(v15);

    v16 = *(a4 + 64);
    if (!v16)
    {
LABEL_19:
    }

    result = sqlite3_errmsg(v16);
    if (result)
    {
      v18._countAndFlagsBits = String.init(cString:)();
      v42._countAndFlagsBits = 2108704;
      v42._object = 0xE300000000000000;
      String.append(_:)(v18);

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v19 = qword_1002686B8;

    if (v19 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v20 = *(type metadata accessor for LogInterpolation() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v43 = type metadata accessor for SQLDatabase();
    v42._countAndFlagsBits = a4;

    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v42._countAndFlagsBits);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._countAndFlagsBits = 0x6573616261746144;
    v37._object = 0xEE00203A676F6C20;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    v43 = &type metadata for String;
    v42._countAndFlagsBits = a1;
    v42._object = a2;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v42, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    LogInterpolation.init(stringInterpolation:)();
    v39 = static os_log_type_t.default.getter();
    sub_1000036B0(v39);
  }

  return result;
}

void sub_1001A5914()
{

  sub_10000BC0C();
  sub_1000178A0(v2, v0, v3, sub_10001C550);
  if (v1)
  {
  }

  sub_1001A5C84();
  sub_1000A0624();
  sub_100007544();
  *v4 = 6;
  swift_willThrow();
}

uint64_t sub_1001A59B4()
{
  if (qword_1002686B8 != -1)
  {
    sub_100004FFC();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A658();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  v3 = *(v2 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v10 = type metadata accessor for SQLDatabase();
  v9[0] = v0;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(v9, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v10 = &type metadata for String;
  v9[0] = v5;
  v9[1] = v4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(v9, &qword_10026D350, &qword_1001E6050);
  v6 = static os_log_type_t.error.getter();
  sub_1000036B0(v6);

  return sub_1000178A0(v7, v0, sub_1001A5BA4, sub_1001A66EC);
}

void sub_1001A5BA4(uint64_t a1)
{

  sub_1000178A0(v3, v3, sub_10001B7D8, sub_10001C550);
  if (v1)
  {
  }

  else
  {

    v5 = sub_1000178A0(v4, a1, sub_100017510, sub_100017A4C);
    sub_1000170D4(v5);
  }

  sub_1001A5914();
}

void sub_1001A5C84()
{
  v2 = *(v0 + 40);
  v3 = qword_1002686B8;
  if (v2)
  {
    v32 = *(v0 + 48);

    if (v3 != -1)
    {
      sub_100004FFC();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v4);
    v6 = *(v5 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    type metadata accessor for SQLDatabase();
    sub_10000C48C();
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.init(stringLiteral:)();
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v35 = &type metadata for String;
    v33 = v15;
    v34 = v14;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v33, &qword_10026D350, &qword_1001E6050);
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16);

    v2(v17);
    sub_100014A10(v2);
  }

  else if (*(v0 + 32))
  {
    if (qword_1002686B8 != -1)
    {
      sub_100004FFC();
      swift_once();
    }

    v36 = qword_100287818;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    v11 = *(v10 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    type metadata accessor for SQLDatabase();
    sub_10000C48C();
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.init(stringLiteral:)();
    v24 = *(v0 + 16);
    v23 = *(v0 + 24);
    v35 = &type metadata for String;
    v33 = v24;
    v34 = v23;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v33, &qword_10026D350, &qword_1001E6050);
    v25 = static os_log_type_t.error.getter();
    sub_1000036B0(v25);
  }

  else
  {
    v36 = v1;
    if (qword_1002686B8 != -1)
    {
      sub_100004FFC();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v18);
    v20 = *(v19 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    type metadata accessor for SQLDatabase();
    sub_10000C48C();
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.init(stringLiteral:)();
    v26 = *(v0 + 16);
    v27 = *(v0 + 24);
    v35 = &type metadata for String;
    v33 = v26;
    v34 = v27;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v33, &qword_10026D350, &qword_1001E6050);
    v28 = static os_log_type_t.error.getter();
    sub_1000036B0(v28);

    sub_10000BC0C();
    v29 = v36;
    sub_1000178A0(v30, v0, v31, sub_10001C550);
    if (v29)
    {
    }

    static SQLDatabase.truncate(path:)();
    static SQLDatabase.removeDatabase(path:)();
  }
}

void sub_1001A6234()
{
  sub_100007E34();
  sub_10000A658();
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (qword_1002686B8 != -1)
  {
    sub_100004FFC();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v8 = *(v7 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v16 = type metadata accessor for SQLDatabase();
  v15._countAndFlagsBits = v0;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v15._countAndFlagsBits);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v11._object = 0x8000000100202CD0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v16 = &type metadata for Int;
  v15._countAndFlagsBits = v1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v12 = sub_10000A00C(&v15, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.debug.getter();
  sub_1000036B0(v13);

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x8000000100202CF0;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  SQLDatabase.execute(sql:parameters:)(v15, &_swiftEmptyArrayStorage);

  sub_1000072EC();
  sub_100005B78();
}

uint64_t SQLDatabase.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  sub_100014A10(*(v0 + 40));

  v3 = *(v0 + 96);
  sub_100014A10(*(v0 + 88));
  v4 = *(v0 + 104);

  return v0;
}

uint64_t SQLDatabase.__deallocating_deinit()
{
  SQLDatabase.deinit();
  sub_10000600C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A655C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A65B4(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_10007B9A4(a1, a2);
  swift_arrayDestroy();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A65FC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A6638()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A6674()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A67D8()
{
  v1 = sub_10000B248();
  v2 = *(v0 + 56);
  return sub_1001A6D08(v1, v3, v4, v5, *(v0 + 48));
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLRow.integer(column:)(Swift::Int column)
{
  sub_10001CA20(column);
  v2 = sub_100005608(v1);
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLRow.integer(name:)(Swift::String name)
{
  sub_10003A504();
  v2 = sub_100005608(v1);
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Double_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLRow.double(column:)(Swift::Int column)
{
  sub_10001CA20(column);
  v2 = sub_100005608(v1);
  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::Double_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLRow.double(name:)(Swift::String name)
{
  sub_10003A504();
  v2 = sub_100005608(v1);
  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t SQLRow.data(column:)(uint64_t a1)
{
  result = sub_1001A6938(a1, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t SQLRow.data(name:)()
{
  result = sub_10003A420(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLRow.string(column:)(Swift::Int column)
{
  v1 = sub_1001A6A38(column);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLRow.string(name:)(Swift::String name)
{
  v1 = sub_10001ADD4();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1001A6938@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    memset(v11, 0, sizeof(v11));
    v6 = *(v2 + 24);

    sub_10001D058(v7, v3, a1, v11);

    sub_100003C38(v11, &v10);
    sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *a2 = xmmword_1001F0380;
    }

    return sub_100002C5C(v11);
  }

  else
  {
    sub_10001ED34();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1001A6A38(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    memset(v9, 0, sizeof(v9));
    v4 = *(v1 + 24);

    sub_10001D058(v5, v2, a1, v9);

    sub_100003C38(v9, &v8);
    sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
    }

    sub_100002C5C(v9);
    return v10;
  }

  else
  {
    sub_10001ED34();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }
}

void sub_1001A6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001AED0();
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = String.lowercased()();

    v9 = sub_10001B0E4(v8._countAndFlagsBits, v8._object, v7);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      sub_10001B138(v9, v12);
      if (!v4)
      {
        sub_10001D2C8(v12, a4);
      }
    }
  }
}

uint64_t sub_1001A6BF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1001A6C40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t SQLStatement.currentRow.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t SQLStatement.sql.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_1001A6D08(sqlite3 *a1, uint64_t a2, uint64_t a3, sqlite3_stmt **a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t))
{
  v8 = String.utf8CString.getter();
  v9 = sqlite3_prepare_v2(a1, (v8 + 32), -1, a4, 0);

  return a5(v9, 0xD000000000000011, 0x8000000100202E80);
}

uint64_t sub_1001A6DA4(void *a1, sqlite3_stmt *a2)
{
  sub_10001A4EC();
  a1[7] = 0;
  v4 = sqlite3_finalize(a2);
  v5 = a1[2];
  v6 = a1[3];
  return v5(v4, 0xD000000000000012, 0x8000000100202E60);
}

uint64_t sub_1001A6E0C(uint64_t a1, sqlite3_stmt *a2)
{
  sub_10001A4EC();
  v4 = sqlite3_reset(a2);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return v5(v4, 0x7473207465736572, 0xEF746E656D657461);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLite3Status.assertOk()()
{
  if (v0)
  {
    v1 = v0;
    sub_1000A0624();
    swift_allocError();
    *v2 = v1;
    swift_willThrow();
  }
}

uint64_t sub_1001A6F04(uint64_t a1)
{
  v2 = sub_1001A74F0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001A6F40(uint64_t a1)
{
  v2 = sub_1001A74F0();

  return Error<>._code.getter(a1, v2);
}

uint64_t static SQLParameter.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_20;
      }

      v7 = a1 == a4;
      goto LABEL_17;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_20;
      }

      v7 = *&a1 == *&a4;
LABEL_17:
      result = v7;
      break;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_20;
      }

      if (a1 == a4 && a2 == a5)
      {
LABEL_21:
        result = 1;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      break;
    case 4:
      if (a6 != 4 || a5 | a4)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    default:
      if (a6)
      {
LABEL_20:
        result = 0;
      }

      else
      {
        result = static Data.== infix(_:_:)();
      }

      break;
  }

  return result;
}

const char *SQLite3Status.errorDescription.getter(char a1)
{
  result = sqlite3_errstr(dword_1001F07E4[a1]);
  if (result)
  {

    return String.init(cString:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1001A70A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SQLite3Status.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1001A70EC(uint64_t a1)
{
  v2 = sub_1001A7544();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001A7128(uint64_t a1)
{
  v2 = sub_1001A7544();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1001A7170()
{
  result = qword_1002710C0;
  if (!qword_1002710C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002710C0);
  }

  return result;
}

uint64_t sub_1001A71C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A7204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001A7248(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLite3Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SQLite3Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001A73C0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001A749C()
{
  result = qword_1002710C8;
  if (!qword_1002710C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002710C8);
  }

  return result;
}

unint64_t sub_1001A74F0()
{
  result = qword_1002710D0;
  if (!qword_1002710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002710D0);
  }

  return result;
}

unint64_t sub_1001A7544()
{
  result = qword_1002710D8;
  if (!qword_1002710D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002710D8);
  }

  return result;
}

BOOL sub_1001A75B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1001A75E4()
{
  type metadata accessor for SubscriptionsController();
  sub_100002FB8();
  swift_allocObject();
  result = sub_1001A761C();
  qword_100287920 = result;
  return result;
}

uint64_t sub_1001A761C()
{
  type metadata accessor for AMSSubscriptionEntitlementsMediaType(0);
  sub_100002BC0(0, &qword_1002711F0, AMSSubscriptionEntitlementsResult_ptr);
  sub_1001AA050(&qword_1002711F8, type metadata accessor for AMSSubscriptionEntitlementsMediaType);
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = [objc_allocWithZone(NSLock) init];
  sub_1001A8B2C();
  return v0;
}

void sub_1001A76DC()
{
  sub_100003D74();
  v1 = v0;
  v29 = v3;
  v30 = v2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100005478();
  if (qword_100268728 != -1)
  {
    sub_100007080();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v9 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v28 = type metadata accessor for SubscriptionsController();
  sub_10000767C(v28);
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10000AD70();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD00000000000001ELL;
  v15._object = 0x80000001002031C0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v32 = &type metadata for Int;
  v31[0] = v30;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v16 = sub_10000A064(v31, &qword_10026D350, &qword_1001E6050);
  sub_100007D2C(v16);
  v32 = &type metadata for Int;
  v31[0] = v29;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v31, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.info.getter();
  sub_1000036B0(v18);

  if (!sub_1001A75B8(v29, &off_100245118))
  {
    goto LABEL_13;
  }

  v19 = *(v0 + 24);

  [v19 lock];
  swift_beginAccess();
  v20 = *(v0 + 16);
  if (*(v20 + 16) && (v21 = sub_1000AAD64(v30), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    v24 = v23;
  }

  else
  {
    v23 = 0;
  }

  [v19 unlock];

  if (v23)
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v32 = v28;
    v31[0] = v1;

    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v31);
    LogInterpolation.init(stringLiteral:)();
    v27 = static os_log_type_t.debug.getter();
    sub_1000036B0(v27);

    [objc_opt_self() promiseWithResult:v23];
  }

  else
  {
LABEL_13:
    sub_1001A9468(v30, v29);
  }

  sub_100005F14();
}

void sub_1001A7AB4()
{
  sub_100003D74();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100002CC4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v19[4] = sub_1001AA048;
  v19[5] = v0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100005E50;
  v19[3] = &unk_100252948;
  v17 = _Block_copy(v19);

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_1001AA050(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v4 + 8))(v8, v1);
  (*(v12 + 8))(v16, v9);

  sub_100005F14();
}

void sub_1001A7D6C(uint64_t a1)
{
  v3 = sub_1001A8710();
  if (v4)
  {
    if (qword_100268728 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v5 = *(type metadata accessor for LogInterpolation() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v23 = type metadata accessor for SubscriptionsController();
    v22[0] = v1;

    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v22);
    LogInterpolation.init(stringLiteral:)();
    v23 = &type metadata for UInt;
    v22[0] = a1;
    static LogInterpolation.safe(_:)();
    sub_10000A064(v22, &qword_10026D350, &qword_1001E6050);
    v16 = static os_log_type_t.default.getter();
    sub_1000036B0(v16);
  }

  else
  {
    v10 = v3;
    if (qword_100268728 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = *(type metadata accessor for LogInterpolation() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v23 = type metadata accessor for SubscriptionsController();
    v22[0] = v1;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v22);
    LogInterpolation.init(stringLiteral:)();
    v23 = &type metadata for UInt;
    v22[0] = a1;
    static LogInterpolation.safe(_:)();
    sub_10000A064(v22, &qword_10026D350, &qword_1001E6050);
    v17 = static os_log_type_t.default.getter();
    sub_1000036B0(v17);

    sub_1001A8354();
    v18 = sub_1001A9468(v10, 0);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    v24 = sub_1001AA040;
    v25 = v20;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10008E0EC;
    v23 = &unk_100252920;
    v21 = _Block_copy(v22);

    [v18 addSuccessBlock:v21];
    _Block_release(v21);
  }
}

uint64_t sub_1001A81E0(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v5 = *(a1 + 24);
  [v5 lock];
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = sub_1000AAD64(a3);
  v8 = 0;
  if (v9)
  {
    v10 = v7;
    v11 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    v13 = *(v15 + 24);
    sub_10007B9A4(&qword_10026AEE8, &qword_1001E8690);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
    v8 = *(*(v15 + 56) + 8 * v10);
    type metadata accessor for AMSSubscriptionEntitlementsMediaType(0);
    sub_100002BC0(0, &qword_1002711F0, AMSSubscriptionEntitlementsResult_ptr);
    sub_1001AA050(&qword_1002711F8, type metadata accessor for AMSSubscriptionEntitlementsMediaType);
    _NativeDictionary._delete(at:)();
    *(a2 + 16) = v15;
  }

  swift_endAccess();
  [v5 unlock];

  return v8;
}

void sub_1001A8354()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005478();
  v7 = sub_1001A8710();
  if (v8)
  {
    if (qword_100268728 != -1)
    {
      sub_100007080();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    v11 = *(v10 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v12 = type metadata accessor for SubscriptionsController();
    sub_10000767C(v12);
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10000AD70();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 0xD000000000000024;
    v22._object = 0x8000000100203170;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    v30 = &type metadata for UInt;
    v29[0] = v2;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v29, &qword_10026D350, &qword_1001E6050);
    v23._countAndFlagsBits = 0x746E656D67657320;
    v23._object = 0xE800000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    LogInterpolation.init(stringInterpolation:)();
    v24 = static os_log_type_t.debug.getter();
    sub_1000036B0(v24);
  }

  else
  {
    v15 = v7;
    if (qword_100268728 != -1)
    {
      sub_100007080();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v18 = *(v17 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for SubscriptionsController();
    sub_10000767C(v19);
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10000AD70();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._object = 0x80000001002031A0;
    v25._countAndFlagsBits = 0xD00000000000001FLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    v30 = &type metadata for UInt;
    v29[0] = v2;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v29, &qword_10026D350, &qword_1001E6050);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    LogInterpolation.init(stringInterpolation:)();
    v27 = static os_log_type_t.debug.getter();
    sub_1000036B0(v27);
  }

  sub_100005F14();
}

void sub_1001A8778()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005478();
  if (qword_100268728 != -1)
  {
    sub_100007080();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v9 = *(v8 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v21 = type metadata accessor for SubscriptionsController();
  v20 = v0;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10000AD70();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000039;
  v12._object = 0x8000000100203110;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v21 = &type metadata for UInt;
  v20 = v2;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v20, &qword_10026D350, &qword_1001E6050);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  v14 = static os_log_type_t.default.getter();
  sub_1000036B0(v14);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F60;
  *(inited + 32) = 0x6E696769726FLL;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "amsengagementd");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = 0x8000000100203150;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x746E656D676573;
  *(inited + 168) = &type metadata for UInt;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = v2;
  v16 = Dictionary.init(dictionaryLiteral:)();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v17 = sub_10002411C();
  v18 = [objc_allocWithZone(AMSEngagement) initWithBag:v17];

  sub_10005DFA4(v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100005F14();
}

void sub_1001A8B2C()
{
  type metadata accessor for Name(0);
  v0 = sub_10007B9A4(&qword_10026AEF8, &qword_1001E86A0);
  sub_1001AA050(&qword_100269078, type metadata accessor for Name);
  Dictionary.init(dictionaryLiteral:)();
  sub_10000BC5C(ASDSubscriptionEntitlementsActivityDidChangeNotification);
  sub_100008634();
  sub_100003598();

  v1 = ASDSubscriptionEntitlementsNewsDidChangeNotification;
  sub_100008634();
  sub_100003598();

  v15 = 1;
  memset(v16, 0, 32);
  v2 = ASDSubscriptionEntitlementsAppStoreDidChangeNotification;
  sub_100008634();
  sub_100003598();

  sub_10000BC5C(ASDSubscriptionEntitlementsTVDidChangeNotification);
  sub_100008634();
  sub_100003598();

  sub_10000BC5C(ASDSubscriptionEntitlementsiCloudDidChangeNotification);
  sub_100008634();
  sub_100003598();

  sub_10000BC5C(ASDSubscriptionEntitlementsPodcastDidChangeNotification);
  sub_100008634();
  sub_100003598();

  sub_10000BC5C(ASDSubscriptionEntitlementsHWBundleDidChangeNotification);
  sub_100008634();
  sub_1000ACC1C();

  v3 = v17;
  v4 = v17 + 64;
  v5 = 1 << *(v17 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v17 + 64);
  v8 = (v5 + 63) >> 6;
  swift_retain_n();
  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    sub_10004ED94(*(v3 + 56) + 40 * v12, v16, &qword_10026AEF8, &qword_1001E86A0);
    v15 = v13;
    sub_1001A8E30(v13, v16[0], &v16[1], v14);
    sub_10000A064(&v15, &qword_1002711E8, &qword_1001F0888);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}