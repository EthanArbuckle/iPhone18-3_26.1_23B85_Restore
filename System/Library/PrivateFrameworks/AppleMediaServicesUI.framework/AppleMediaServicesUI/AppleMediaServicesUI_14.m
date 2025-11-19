uint64_t sub_100148F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v53 = a3;
  v57 = a2;
  v55 = type metadata accessor for JSCallable();
  v54 = *(v55 - 8);
  v6 = *(v54 + 64);
  __chkstk_darwin(v55);
  v51 = v7;
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026E4A8, &qword_1001EDBE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001001FDFB0;
  v56 = inited;
  sub_10007B9A4(&unk_10026FE70, &unk_1001ED840);
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  v11 = 0;
  v59 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v58 = v9 + 64;
  if ((v16 & v12) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v4 = v19 | (v11 << 6);
      v22 = (*(v59 + 48) + 16 * v4);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v59 + 56) + 8 * v4);

      v26 = v25;
      v27 = sub_1001487AC();

      *(v58 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
      v28 = (v10[6] + 16 * v4);
      *v28 = v24;
      v28[1] = v23;
      *(v10[7] + 8 * v4) = v27;
      v29 = v10[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v10[2] = v31;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v11 >= v18)
      {
        break;
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    *(v56 + 48) = v10;
    sub_10007B9A4(&qword_10026E460, &qword_1001EDBA0);
    v4 = Dictionary.init(dictionaryLiteral:)();
    if (qword_1002686E8 != -1)
    {
      goto LABEL_26;
    }
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v32 = *(type metadata accessor for LogInterpolation() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v63 = type metadata accessor for JSUserNotifications();
    *&v62 = v36;
    sub_100002C4C(&v62, &v60);
  }

  else
  {
    v37 = v50;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v60 = v37;
  }

  v38 = AMSLogKey();
  if (v38)
  {
    v39 = v38;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v60);
  LogInterpolation.init(stringLiteral:)();
  MetatypeMetadata = sub_10007B9A4(&qword_10026E4B0, &qword_1001EDBF0);
  *&v60 = v4;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v60, &qword_10026D350, &qword_1001E6050);
  v40 = static os_log_type_t.default.getter();
  sub_1000036B0(v40);

  swift_beginAccess();
  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
  }

  v42 = v41;
  sub_10011F068("getNotificationSettingsForTopics(_:)", 36, 2, &v60);

  if (MetatypeMetadata)
  {
    sub_100003CA8(&v60, MetatypeMetadata);
    v43 = v54;
    v44 = v52;
    v45 = v55;
    (*(v54 + 16))(v52, v53, v55);
    v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v47 = (v51 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    (*(v43 + 32))(v48 + v46, v44, v45);
    *(v48 + v47) = v4;
    dispatch thunk of TaskScheduler.schedule(task:)();

    return sub_100002C00(&v60);
  }

  else
  {

    return sub_100009F5C(&v60, &qword_10026D6C8, &unk_1001ECB60);
  }
}

uint64_t sub_100149558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E61B0;
  *(v7 + 56) = sub_10007B9A4(a3, a4);
  *(v7 + 32) = a2;

  sub_10005C768(v7);
}

id sub_100149618(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id sub_100149690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSUserNotifications();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001496E4()
{
  result = qword_10026E4A0;
  if (!qword_10026E4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026E4A0);
  }

  return result;
}

uint64_t sub_100149774(uint64_t a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100002CFC(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_10000326C();
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v15 = *(v1 + v14);

  return sub_100148274(a1, v11, v12, v13, v1 + v10, v15);
}

uint64_t sub_10014981C(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for JSCallable();
  sub_100002CFC(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  sub_10000326C();
  return sub_100149558(v2 + v13, *(v2 + v12), a1, a2);
}

uint64_t sub_1001498CC()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002EF0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);

  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v8 + 8, v5 | 7);
}

uint64_t sub_1001499A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = *(v8 + 64);
  sub_10000326C();
  v12 = *(v2 + 16);
  v14 = *(v2 + v13);

  return a2(a1, v12, v2 + v11, v14);
}

uint64_t sub_100149A48()
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

id sub_100149AFC(void *a1)
{
  sub_100003CA8(a1, a1[3]);
  v2 = _bridgeAnythingToObjectiveC<A>(_:)();
  v3 = String._bridgeToObjectiveC()();
  v7 = 0;
  v4 = [v1 setValue:v2 forKey:v3 error:&v7];
  swift_unknownObjectRelease();

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100149BF4()
{
  v1 = String._bridgeToObjectiveC()();
  v6 = 0;
  v2 = [v0 valueForKey:v1 error:&v6];

  v3 = v6;
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    return swift_unknownObjectRelease();
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

void sub_100149D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v24;
  a24 = v25;
  sub_100006564(v26);
  v27 = static os_log_type_t.default.getter();
  if (sub_100018270(v27))
  {
    static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = sub_100003DE8();
    sub_100002CFC(v28);
    v30 = *(v29 + 72);
    v31 = sub_10000BA34();
    sub_10000766C(v31, xmmword_1001E6580);
    type metadata accessor for PriorityQueue();
    sub_100005D24();
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002402C();
    }

    else
    {
      sub_10001CDAC();
    }

    sub_10000A460();

    sub_100002C00(&a9);
    sub_1000180F0();
    LogInterpolation.init(stringLiteral:)();
    sub_100005FCC();
    PriorityQueue.debugDescription.getter(v33);
    sub_100023E88();
    sub_100002C5C(&a9);
    sub_10000C440();

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

void sub_100149EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v24;
  a24 = v25;
  v27 = *(v26 + 16);
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v30);
    v32 = *(v31 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    type metadata accessor for PriorityQueue();
    sub_100005D24();
    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&a9);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.init(stringLiteral:)();
    sub_1000036B0(v29);

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

void sub_10014A06C()
{
  sub_100003D74();
  v1 = sub_100012D2C();
  v2 = sub_100003D10(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100005478();
  v5 = *(v0 + 16);
  v6 = static os_log_type_t.default.getter();
  if (sub_100006114(v6))
  {
    v15 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = sub_10000A1C0();
    sub_100002CFC(v7);
    v9 = *(v8 + 72);
    sub_1000056F8();
    v10 = swift_allocObject();
    sub_1000059F0(v10, xmmword_1001E5F60);
    v11 = type metadata accessor for PriorityQueue();
    sub_10000767C(v11);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100017F90();
    }

    else
    {
      sub_10000A640();
    }

    sub_10000494C();

    sub_100002C00(v16);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._object = 0x80000001001FE460;
    v12._countAndFlagsBits = 0xD000000000000013;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    v13 = type metadata accessor for Worker();
    sub_10000727C(v13);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v14 = sub_100002C5C(v16);
    sub_100003B48(v14);
    LogInterpolation.init(stringInterpolation:)();
    sub_1000036B0(v15);
  }

  else
  {
  }

  sub_100005F14();
}

void sub_10014A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v24;
  a24 = v25;
  sub_100006564(v26);
  v27 = static os_log_type_t.default.getter();
  if (sub_100018270(v27))
  {
    static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = sub_100003DE8();
    sub_100002CFC(v28);
    v30 = *(v29 + 72);
    v31 = sub_10000BA34();
    sub_10000766C(v31, xmmword_1001E6580);
    type metadata accessor for Worker();
    sub_100005D24();
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002402C();
    }

    else
    {
      sub_10001CDAC();
    }

    sub_10000A460();

    sub_100002C00(&a9);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.init(stringLiteral:)();
    sub_100005FCC();
    sub_10018B640();
    sub_100023E88();
    sub_100002C5C(&a9);
    sub_10000C440();

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

void sub_10014A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100006538();
  a23 = v24;
  a24 = v25;
  sub_100006564(v26);
  v27 = static os_log_type_t.debug.getter();
  if (sub_100018270(v27))
  {
    static os_log_type_t.debug.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = sub_100003DE8();
    sub_100002CFC(v28);
    v30 = *(v29 + 72);
    v31 = sub_10000BA34();
    sub_10000766C(v31, xmmword_1001E6580);
    type metadata accessor for PriorityQueue();
    sub_100005D24();
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002402C();
    }

    else
    {
      sub_10001CDAC();
    }

    sub_10000A460();

    sub_100002C00(&a9);
    sub_100007BB4();
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.init(stringLiteral:)();
    sub_100005FCC();
    PriorityQueue.debugDescription.getter(v33);
    sub_100023E88();
    sub_100002C5C(&a9);
    sub_10000C440();

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

uint64_t sub_10014A574()
{
  sub_100004AA0();

  return swift_deallocClassInstance();
}

uint64_t sub_10014A5C8()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287828 = v0;
  return result;
}

uint64_t sub_10014A664()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287838 = v0;
  return result;
}

uint64_t sub_10014A6DC()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287840 = v0;
  return result;
}

uint64_t sub_10014A754()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287848 = v0;
  return result;
}

uint64_t sub_10014A7CC()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287850 = v0;
  return result;
}

uint64_t sub_10014A844()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287858 = v0;
  return result;
}

uint64_t sub_10014A8BC()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287860 = v0;
  return result;
}

uint64_t sub_10014A980()
{
  type metadata accessor for Log();
  sub_100004AA0();
  swift_allocObject();
  sub_10000B254();
  sub_100011AB4();
  result = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = result;
  qword_100287880 = v0;
  return result;
}

void sub_10014AA40(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026E5A8, &unk_1001EE2C0);
    v2 = sub_10000B8A8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_100004E5C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v28 = (v2 + 8);

  v11 = 0;
  v29 = v1;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      sub_10000DF68(*(v1 + 48) + 40 * v13, __src);
      sub_100011BAC(*(v1 + 56) + 32 * v13, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_10000DF68(__dst, v32);
      if (!swift_dynamicCast())
      {
        sub_10005CEA0(__dst);

        goto LABEL_21;
      }

      sub_100011BAC(&__dst[40], v32);
      sub_10005CEA0(__dst);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v14 = sub_100012A94();
      v15 = v14;
      if (v16)
      {
        v17 = (v2[6] + 16 * v14);
        v18 = v17[1];
        *v17 = v30;
        v17[1] = v31;

        v19 = (v2[7] + 16 * v15);
        v20 = v19[1];
        *v19 = v30;
        v19[1] = v31;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_23;
        }

        sub_100007BD8();
        sub_1000031B8(v21, v28);
        v23 = (v22 + 16 * v15);
        *v23 = v30;
        v23[1] = v31;
        v24 = (v2[7] + 16 * v15);
        *v24 = v30;
        v24[1] = v31;
        v25 = v2[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_24;
        }

        v2[2] = v27;
      }

      v11 = v12;
      v1 = v29;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

LABEL_21:
  }

  else
  {
LABEL_6:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_21;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_10014ACB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026E5A8, &unk_1001EE2C0);
    v1 = sub_10000B8A8();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  sub_100004E5C();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v28 = (v1 + 8);

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_100011BAC(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v13;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v15 = v34;
    sub_100002C4C(v33, v32);

    if (!swift_dynamicCast())
    {

      return;
    }

    v6 &= v6 - 1;
    v16 = sub_100012A94();
    v17 = v16;
    if (v18)
    {
      v19 = v1[6] + 16 * v16;
      v20 = *(v19 + 8);
      *v19 = v15;

      v21 = (v1[7] + 16 * v17);
      v22 = v21[1];
      *v21 = v30;
      v21[1] = v31;

      v9 = v10;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      sub_1000031B8((v16 >> 3) & 0x1FFFFFFFFFFFFFF8, v28);
      *(v23 + 16 * v17) = v15;
      v24 = (v1[7] + 16 * v17);
      *v24 = v30;
      v24[1] = v31;
      v25 = v1[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      v1[2] = v27;
      v9 = v10;
    }
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

    v6 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_10014AEE8(void *a1@<X0>, void *a2@<X8>)
{
  v4 = JSValue.subscript.getter();
  v5 = sub_10014B190(v4);
  if (v5)
  {
    sub_10014AA40(v5);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = JSValue.subscript.getter();
  v24 = JSValue.string.getter();
  v10 = v9;

  v11 = JSValue.subscript.getter();
  v12 = JSValue.string.getter();
  v14 = v13;

  if (v14)
  {
    sub_10000C0DC();
    v15 = JSValue.subscript.getter();
    v23 = JSValue.string.getter();
    v17 = v16;

    if (v17)
    {
      v22 = v7;
      sub_1000052D4();
      v18 = JSValue.subscript.getter();
      v21 = JSValue.string.getter();
      v20 = v19;

      if (v20)
      {

        *a2 = v22;
        a2[1] = v12;
        a2[2] = v14;
        a2[3] = v24;
        a2[4] = v10;
        a2[5] = v23;
        a2[6] = v17;
        a2[7] = v21;
        a2[8] = v20;
        return;
      }

      sub_1000052D4();
    }

    else
    {

      sub_10000C0DC();
    }
  }

  else
  {
  }

  JSValue.subscript.getter();
  type metadata accessor for JSError();
  sub_100137574();
  swift_allocError();
  JSError.init(badValue:expected:)();
  swift_willThrow();
}

void sub_10014B144(void *a1@<X0>, void *a2@<X8>)
{
  sub_10014AEE8(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x48uLL);
  }
}

uint64_t sub_10014B190(void *a1)
{
  v2 = [a1 toDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10014B208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10014B248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014B2B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_10014B358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014B2B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10014B384(uint64_t a1)
{
  v2 = sub_10014B7A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014B3C0(uint64_t a1)
{
  v2 = sub_10014B7A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B3FC(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_10026E5B8, &qword_1001EDDD0);
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_100003CA8(a1, a1[3]);
  sub_10014B7A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  sub_100002C00(a1);
  return v12;
}

uint64_t sub_10014B54C(void *a1)
{
  v2 = sub_10007B9A4(&qword_10026E5C8, &qword_1001EDDD8);
  v3 = sub_100002CC4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100003CA8(a1, a1[3]);
  sub_10014B7A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_10014B680@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10014B3FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10014B6AC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10014B54C(a1);
}

uint64_t sub_10014B6C8(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(27);
  sub_10007B9A4(&qword_10026E5D0, &qword_1001EDDE0);
  v4 = String.init<A>(describing:)();

  v5._object = 0x80000001001FE550;
  v5._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v5);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 32010;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return v4;
}

unint64_t sub_10014B7A8()
{
  result = qword_10026E5C0;
  if (!qword_10026E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E5C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaClient.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10014B8AC()
{
  result = qword_10026E5D8;
  if (!qword_10026E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E5D8);
  }

  return result;
}

unint64_t sub_10014B904()
{
  result = qword_10026E5E0;
  if (!qword_10026E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E5E0);
  }

  return result;
}

unint64_t sub_10014B95C()
{
  result = qword_10026E5E8;
  if (!qword_10026E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E5E8);
  }

  return result;
}

void *sub_10014B9C0()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v14 = *(v0 - 8);
  v1 = *(v14 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSArray.makeIterator()();
  v4 = _swiftEmptyArrayStorage;
  sub_10014CBB4();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v20)
    {
      break;
    }

    sub_100002C4C(&v19, v18);
    sub_100011BAC(v18, v15);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v17 = 0;
    }

    sub_100002C00(v18);
    v5 = v17;
    if (v17)
    {
      v6 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = v4[2];
        sub_10000DE9C();
        v4 = v10;
      }

      v7 = v4[2];
      if (v7 >= v4[3] >> 1)
      {
        sub_10000DE9C();
        v4 = v11;
      }

      v4[2] = v7 + 1;
      v8 = &v4[2 * v7];
      v8[4] = v6;
      v8[5] = v5;
    }
  }

  (*(v14 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10014BBA4()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026E5F0 = qword_100287880;
}

uint64_t sub_10014BC08(void *a1)
{
  sub_10007B9A4(&qword_10026E608, &qword_1001EDF78);
  v2 = Promise.__allocating_init()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 arrayForKey:v3];

  v5 = [v4 valuePromise];
  v13 = sub_10014CA04;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_10008E0EC;
  v12 = &unk_10024EF70;
  v6 = _Block_copy(&v9);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v13 = sub_10014CB98;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000266E0;
  v12 = &unk_10024EF98;
  v7 = _Block_copy(&v9);

  [v5 addErrorBlock:v7];
  _Block_release(v7);

  return v2;
}

uint64_t sub_10014BE00()
{
  *(v0 + 24) = sub_10014BFC4(*(v0 + 16));
  v1 = sub_100003E00(&unk_1001EBDC8);
  *(v0 + 32) = v1;
  *v1 = v0;
  v9 = sub_10000BA5C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10014BE98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  sub_100002D20();
  *v7 = v6;

  v8 = *(v4 + 24);
  if (v1)
  {

    a1 = 10;
  }

  v9 = *(v6 + 8);

  return v9(a1);
}

uint64_t sub_10014BFC4(void *a1)
{
  sub_10007B9A4(&qword_10026E600, &qword_1001EDF70);
  v2 = Promise.__allocating_init()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 integerForKey:v3];

  v5 = [v4 valuePromise];
  v13 = sub_10014C9A8;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000EA728;
  v12 = &unk_10024EF20;
  v6 = _Block_copy(&v9);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v13 = sub_10014CC3C;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000266E0;
  v12 = &unk_10024EF48;
  v7 = _Block_copy(&v9);

  [v5 addErrorBlock:v7];
  _Block_release(v7);

  return v2;
}

uint64_t sub_10014C1BC()
{
  *(v0 + 24) = sub_10014C374(*(v0 + 16));
  v1 = sub_100003E00(&unk_1001EBDB0);
  *(v0 + 32) = v1;
  *v1 = v0;
  v9 = sub_10000BA5C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10014C254()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;

  v6 = *(v2 + 24);
  if (v0)
  {
  }

  v8.n128_f64[0] = sub_10000C0F0();

  return v7(v8);
}

uint64_t sub_10014C374(void *a1)
{
  sub_10007B9A4(&qword_10026E5F8, &qword_1001EDF58);
  v2 = Promise.__allocating_init()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 doubleForKey:v3];

  v5 = [v4 valuePromise];
  v13 = sub_10014CC38;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000EA728;
  v12 = &unk_10024EED0;
  v6 = _Block_copy(&v9);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v13 = sub_10014CC3C;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000266E0;
  v12 = &unk_10024EEF8;
  v7 = _Block_copy(&v9);

  [v5 addErrorBlock:v7];
  _Block_release(v7);

  return v2;
}

uint64_t sub_10014C56C()
{
  *(v0 + 24) = sub_10014C728(*(v0 + 16));
  v1 = sub_100003E00(&unk_1001EBDB0);
  *(v0 + 32) = v1;
  *v1 = v0;
  v9 = sub_10000BA5C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10014C604()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;

  v6 = *(v2 + 24);
  if (v0)
  {
  }

  v8.n128_f64[0] = sub_10000C0F0();

  return v7(v8);
}

uint64_t sub_10014C728(void *a1)
{
  sub_10007B9A4(&qword_10026E5F8, &qword_1001EDF58);
  v2 = Promise.__allocating_init()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 integerForKey:v3];

  v5 = [v4 valuePromise];
  v13 = sub_10014C90C;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000EA728;
  v12 = &unk_10024EE80;
  v6 = _Block_copy(&v9);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v13 = sub_10014CC3C;
  v14 = v2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000266E0;
  v12 = &unk_10024EEA8;
  v7 = _Block_copy(&v9);

  [v5 addErrorBlock:v7];
  _Block_release(v7);

  return v2;
}

uint64_t sub_10014C9B0()
{
  v0 = sub_10014B9C0();
  sub_100062640(v0);
  Promise.resolve(_:)();
}

uint64_t sub_10014CA0C()
{
  if (qword_100268748 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = *(type metadata accessor for LogInterpolation() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E61B0;
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_100017E64(v7);
  (*(*(v6 - 8) + 16))(v3);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v7);
  v4 = static os_log_type_t.error.getter();
  sub_1000036B0(v4);

  return Promise.reject(_:)();
}

unint64_t sub_10014CBB4()
{
  result = qword_10026E610;
  if (!qword_10026E610)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E610);
  }

  return result;
}

uint64_t sub_10014CC40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10009B7E0(0, v1, 0);
  result = sub_1001BEB68(v2);
  v6 = result;
  v7 = 0;
  v8 = v2 + 56;
  v24 = v2 + 64;
  v25 = v2 + 56;
  v26 = v2;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_25;
      }

      v29 = v5;
      v27 = v7;
      v28 = v4;
      v10 = (*(v2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];

      if (v14 >= v13 >> 1)
      {
        result = sub_10009B7E0((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[3 * v14];
      v15[4] = v11;
      v15[5] = v12;
      *(v15 + 48) = 3;
      if (v29)
      {
        goto LABEL_29;
      }

      v8 = v25;
      v2 = v26;
      v16 = 1 << *(v26 + 32);
      if (v6 >= v16)
      {
        goto LABEL_26;
      }

      v17 = *(v25 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v26 + 36) != v28)
      {
        goto LABEL_28;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (v24 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_100083998(v6, v28, 0);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        result = sub_100083998(v6, v28, 0);
      }

LABEL_19:
      v7 = v27 + 1;
      if (v27 + 1 == v1)
      {
        return _swiftEmptyArrayStorage;
      }

      v5 = 0;
      v4 = *(v26 + 36);
      v6 = v16;
      if (v16 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10014CE84(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(26);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 15200;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000016;
  v6._object = 0x80000001001FEA60;
  SQLDatabase.execute(sql:parameters:)(v6, _swiftEmptyArrayStorage);
}

void *sub_10014D77C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v6;
  }

  return result;
}

uint64_t sub_10014D814()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026E620 = qword_100287880;
}

void sub_10014D878()
{
  sub_100003D74();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for URL();
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_100004B68();
  [v4 integerValue];
  sub_1001CD0D8();
  v11._countAndFlagsBits = 1635017060;
  v11._object = 0xE400000000000000;
  URL.appendPathComponent(_:)(v11);
  v12._countAndFlagsBits = 25188;
  v12._object = 0xE200000000000000;
  URL.appendPathExtension(_:)(v12);
  v13 = URL.path.getter();
  v15 = v14;
  sub_100004AA0();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  v17 = type metadata accessor for SQLDatabase();
  swift_allocObject();
  v18 = SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(v13, v15, 0, 0, sub_10005AACC, v16, 0, 0);
  v19 = objc_opt_self();

  v20 = [v19 defaultManager];
  v31 = sub_100002BC0(0, &qword_100269E28, NSFileManager_ptr);
  v32 = &off_10024B870;
  *&v30 = v20;
  v29[3] = v17;
  v29[4] = &off_100248528;
  v29[0] = v18;
  v21 = swift_allocObject();
  v22 = sub_100046CB8(v29, v17);
  v23 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v22);
  sub_100002DEC();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  v28 = *v26;
  v21[5] = v17;
  v21[6] = &off_100248528;
  v21[2] = v28;
  sub_10003B104(&v30, (v21 + 7));
  v21[12] = &type metadata for LiveMercuryCacheUpdateReporter;
  v21[13] = &off_10024FAF0;
  sub_100002C00(v29);

  (*(v8 + 8))(v1, v5);
  sub_100005F14();
}

void sub_10014DB30()
{
  sub_100003D74();
  v2 = *v0;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = *sub_100003CA8(v0 + 2, v0[5]);

  sub_10005AE14();
  sub_10001C50C();
  if (v1)
  {
    if (qword_100268750 != -1)
    {
      sub_100006DF0();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v8);
    v10 = *(v9 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v20 = v2;
    v19[0] = v0;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v20 = &type metadata for String;
    v19[0] = 0x74696E696564;
    v19[1] = 0xE600000000000000;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v19, &qword_10026D350, &qword_1001E6050);
    v14._countAndFlagsBits = sub_100005A00();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    swift_getErrorValue();
    v20 = v18;
    sub_100017E64(v19);
    sub_10000AA40();
    (*(v15 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v19, &qword_10026D350, &qword_1001E6050);
    v16._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    LogInterpolation.init(stringInterpolation:)();
    v17 = static os_log_type_t.error.getter();
    sub_1000036B0(v17);
  }

  sub_100002C00(v0 + 2);
  sub_100002C00(v0 + 7);
  sub_100005F14();
}

uint64_t sub_10014DE10()
{
  sub_10014DB30();

  return swift_deallocClassInstance();
}

uint64_t sub_10014DE68()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  if (qword_1002687F8 != -1)
  {
    swift_once();
  }

  v9 = qword_1002878F0;
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_100006070(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10026E628 = result;
  return result;
}

void sub_10014E140()
{
  sub_100048F8C();
  v2 = sub_100003CA8((v0 + 16), *(v0 + 40));
  sub_100005FD8(v2);
  v4 = sub_1001542E0(24, v3);
  if (!v1)
  {
    if (v4)
    {
      v5 = sub_100004BC8();
      *(v5 + 16) = 0;
      sub_100004AA0();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      v7 = sub_100022280();
      sub_100002FB8();
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v6;
      v9 = *v7;
      sub_10005AFD4(0xD000000000000040, 0x80000001001FE890, _swiftEmptyArrayStorage, sub_100153A6C, v8);

      sub_10000602C();
      if (*(v6 + 16))
      {
        sub_10000602C();
        v12 = *(v5 + 16);

        goto LABEL_7;
      }

      sub_10015398C();
      v13 = sub_100007544();
      sub_100006E04(v13, v14);
    }

    else
    {
      sub_10015398C();
      v10 = sub_100007544();
      sub_10000A480(v10, v11);
    }
  }

  swift_willThrow();
LABEL_7:
  sub_10000A8C0();
  sub_100154284();
}

void sub_10014E2F8()
{
  sub_100048F8C();
  v2 = sub_100003CA8((v0 + 16), *(v0 + 40));
  sub_100005FD8(v2);
  v4 = sub_1001542E0(16, v3);
  if (!v1)
  {
    if (v4)
    {
      v5 = sub_100004BC8();
      *(v5 + 16) = 0;
      sub_100004AA0();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      v7 = sub_100022280();
      sub_100002FB8();
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v6;
      v9 = *v7;
      sub_10005AFD4(0xD000000000000037, 0x80000001001FE8E0, _swiftEmptyArrayStorage, sub_100153AA0, v8);

      sub_10000602C();
      if (*(v6 + 16))
      {
        sub_10000602C();
        v12 = *(v5 + 16);

        goto LABEL_7;
      }

      sub_10015398C();
      v13 = sub_100007544();
      sub_100006E04(v13, v14);
    }

    else
    {
      sub_10015398C();
      v10 = sub_100007544();
      sub_10000A480(v10, v11);
    }
  }

  swift_willThrow();
LABEL_7:
  sub_10000A8C0();
  sub_100154284();
}

uint64_t sub_10014E4B0(uint64_t a1)
{
  v2 = v1;
  if (a1 && (v4 = *(a1 + 16)) != 0)
  {
    sub_10014D77C(0x3F, 0xE100000000000000, v4);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_10000B01C(&qword_100270BB0);
    v5 = BidirectionalCollection<>.joined(separator:)();
    v7 = v6;

    v8 = sub_10014CC40(a1);
    _StringGuts.grow(_:)(16);

    sub_100004B44();
    v44 = v9;
    v10._countAndFlagsBits = v5;
    v10._object = v7;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 41;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = 0xD000000000000012;
    v13 = v44;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v8 = _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(&qword_10026E6F8, &unk_1001EE018);
  swift_initStackObject();
  v14 = 0;
  sub_100004B44();
  *(v15 + 40) = v16;
  v17 = v15 + 40;
  *(v15 + 32) = 0xD00000000000003ALL;
  *(v15 + 16) = v18;
  *(v15 + 48) = v12;
  *(v15 + 56) = v13;
  v19 = _swiftEmptyArrayStorage;
LABEL_6:
  v20 = (v17 + 16 * v14);
  while (++v14 != 3)
  {
    v21 = v20 + 2;
    v22 = *v20;
    v20 += 2;
    if (v22)
    {
      v43 = v8;
      v23 = *(v21 - 3);

      v24 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = v19[2];
        sub_10000DE9C();
        v19 = v28;
      }

      v25 = v19[2];
      if (v25 >= v19[3] >> 1)
      {
        sub_10000DE9C();
        v19 = v29;
      }

      v19[2] = v25 + 1;
      v26 = &v19[2 * v25];
      v26[4] = v23;
      v26[5] = v22;
      v8 = v43;
      v2 = v24;
      goto LABEL_6;
    }
  }

  swift_setDeallocating();
  sub_1001A65A0();
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_10000B01C(&qword_100270BB0);
  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;

  v33 = *sub_100003CA8((v45 + 16), *(v45 + 40));
  v34 = sub_10005AE84(0xD000000000000013, 0x80000001001F3070);
  if (v2)
  {
  }

  else if (v34)
  {
    v35 = sub_100004BC8();
    *(v35 + 16) = 0;
    sub_100004AA0();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = sub_100003CA8((v45 + 16), *(v45 + 40));
    sub_100002FB8();
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = v36;
    v39 = *v37;
    sub_10005AFD4(v30, v32, v8, sub_100154250, v38);
    LOBYTE(v33) = v35 + 16;

    sub_10000602C();
    if (*(v36 + 16))
    {
      sub_10000602C();
      LOBYTE(v33) = *(v35 + 16);

      return v33 & 1;
    }

    sub_10015398C();
    sub_100007544();
    *v42 = 1;
    swift_willThrow();
  }

  else
  {

    sub_10015398C();
    sub_100007544();
    *v40 = 2;
    swift_willThrow();
  }

  swift_willThrow();
  return v33 & 1;
}

void sub_10014E990()
{
  sub_100003D74();
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100002CC4(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v26 = sub_10001CC10();
  v11 = sub_100002CC4(v26);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_10026E6F0, &qword_1001EE010);
  v14 = Promise.__allocating_init()();
  if (qword_100268758 != -1)
  {
    sub_100007698();
  }

  sub_1000083D8();
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v6;
  v15[4] = v4;
  v15[5] = v14;
  v27[4] = v24;
  v27[5] = v15;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v27[2] = v16;
  v27[3] = v25;
  v17 = _Block_copy(v27);

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v18, v19);
  sub_10001B25C();
  sub_100007BEC(&qword_10026CD50);
  sub_100007298();
  sub_100018288();
  sub_100006888();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v20 = sub_100023EA8();
  v21(v20);
  v22 = sub_100018114();
  v23(v22);

  sub_100061E84();
  sub_100005F14();
}

uint64_t sub_10014EBE0()
{
  v0 = type metadata accessor for LogInterpolation.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10014EF28();
  Promise.resolve(_:)();
}

uint64_t sub_10014EF28()
{
  sub_1000087A0();
  v3 = *v0;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  sub_100004B68();
  sub_100024044();
  sub_10000A8C0();
  sub_1000179B4(v8, v9);
  if (!v1)
  {
    v1 = 0;
    sub_1000170D4();
    v10 = sub_100003CA8((v2 + 16), *(v2 + 40));
    sub_100005FD8(v10);
    if (sub_1001542E0(24, v11))
    {
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      inited = swift_initStackObject();
      sub_100011650(inited, xmmword_1001E61B0);
      sub_1001542A0(0xD00000000000004BLL);
      swift_setDeallocating();
      sub_10001CE50();
      sub_100019CE4();
      sub_10001C50C();
      return sub_10001BDCC();
    }

    sub_10015398C();
    v13 = sub_100007544();
    sub_10000A480(v13, v14);
  }

  sub_100019CE4();
  sub_10005AE14();
  sub_10001C50C();
  if (v1)
  {
  }

  if (qword_100268750 != -1)
  {
    sub_100006DF0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v17 = *(v16 + 72);
  v18 = sub_1000080C0();
  sub_100005D40(v18, xmmword_1001E5F70);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000B3DC();

  sub_100003E38();
  v21._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  sub_100004B44();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v22._countAndFlagsBits = sub_100005A00();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  sub_10000E70C();
  sub_10003D338();
  sub_10000AA40();
  (*(v23 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v24._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  LogInterpolation.init(stringInterpolation:)();
  v25 = static os_log_type_t.error.getter();
  sub_1000036B0(v25);

  swift_willThrow();
  return sub_10001BDCC();
}

void sub_10014F288()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100002CC4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v20 = sub_10001CC10();
  v7 = sub_100002CC4(v20);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_10026E6F0, &qword_1001EE010);
  v10 = Promise.__allocating_init()();
  if (qword_100268758 != -1)
  {
    sub_100007698();
  }

  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v2;
  v11[4] = v10;
  v21[4] = sub_100153C6C;
  v21[5] = v11;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v21[2] = v12;
  v21[3] = &unk_10024F338;
  v13 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v14, v15);
  sub_10001B25C();
  sub_100007BEC(&qword_10026CD50);
  sub_100007298();
  sub_100018288();
  sub_100006888();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  v16 = sub_100023EA8();
  v17(v16);
  v18 = sub_100018114();
  v19(v18);

  sub_100061E84();
  sub_100005F14();
}

uint64_t sub_10014F4E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10014F824(a2);
  Promise.resolve(_:)();
}

uint64_t sub_10014F824(uint64_t a1)
{
  v4 = *v1;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_100004B68();
  sub_100024044();
  sub_10000A8C0();
  sub_1000179B4(v9, v10);
  if (v2)
  {
    sub_100019CE4();
    sub_10005AE14();
    sub_10001C50C();

    if (qword_100268750 != -1)
    {
      sub_100006DF0();
      swift_once();
    }

    v24 = qword_10026E620;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    v13 = *(v12 + 72);
    v14 = sub_1000080C0();
    sub_100005D40(v14, xmmword_1001E5F70);
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000B3DC();

    sub_100003E38();
    v17._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    sub_100004B44();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100011AC0();
    v18._countAndFlagsBits = sub_100005A00();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    sub_10000E70C();
    sub_10003D338();
    sub_10000AA40();
    (*(v19 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100011AC0();
    v20._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    LogInterpolation.init(stringInterpolation:)();
    v21 = static os_log_type_t.error.getter();
    v23 = v24;
    sub_1000036B0(v21);

    swift_willThrow();
  }

  else
  {
    sub_1000170D4();
    v23 = sub_10014E4B0(a1);
    sub_100019CE4();
    sub_10001C50C();
  }

  return v23 & 1;
}

void sub_10014FB00()
{
  sub_100003D74();
  v3 = v2;
  v26 = v4;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_100002CC4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v27 = sub_10001CC10();
  v13 = sub_100002CC4(v27);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_10026E6E8, &qword_1001EDFF8);
  v18 = Promise.__allocating_init()();
  if (qword_100268758 != -1)
  {
    sub_100007698();
  }

  v19 = swift_allocObject();
  v19[2] = v0;
  v19[3] = v8;
  v19[4] = v6;
  v19[5] = v18;
  v19[6] = v26;
  v19[7] = v3;
  v28[4] = sub_1001539E0;
  v28[5] = v19;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v28[2] = v20;
  v28[3] = &unk_10024F040;
  v21 = _Block_copy(v28);

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v22, v23);
  sub_10001B25C();
  sub_100007BEC(&qword_10026CD50);
  sub_100007298();
  sub_100018288();
  sub_100006888();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  v24 = sub_100023EA8();
  v25(v24);
  (*(v15 + 8))(v1, v27);

  sub_100061E84();
  sub_100005F14();
}

uint64_t sub_10014FD80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46._countAndFlagsBits = a5;
  v46._object = a6;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v13 = sub_100150578();
  v15 = v14;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v47, v15, &v50);

  sub_10000E1E8(&v47);
  if (!v51)
  {

    sub_10000A064(&v50, &qword_10026D350, &qword_1001E6050);
LABEL_30:
    if (qword_100268750 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v34 = *(type metadata accessor for LogInterpolation() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v49 = type metadata accessor for MercuryCacheDatabase();
    v47 = a1;

    v37 = AMSLogKey();
    if (v37)
    {
      v38 = v37;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v47);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
    v49 = &type metadata for String;
    v47 = 0xD000000000000022;
    v48 = 0x80000001001FE660;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v47, &qword_10026D350, &qword_1001E6050);
    v41._countAndFlagsBits = 0xD00000000000002FLL;
    v41._object = 0x80000001001FE6B0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
    LogInterpolation.init(stringInterpolation:)();
    v42 = static os_log_type_t.error.getter();
    sub_1000036B0(v42);

    sub_10015398C();
    swift_allocError();
    *v43 = 2;
    Promise.reject(_:)();
  }

  sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_30;
  }

  v45 = v13;
  v16 = 0;
  v17 = MEMORY[0x73746E65746E6F73];
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v17 == v16)
    {

      LOBYTE(v47) = v45 & 1;
      v48 = v18;
      Promise.resolve(_:)();
    }

    if (v16 >= MEMORY[0x73746E65746E6F73])
    {
      break;
    }

    v19 = *(8 * v16 + 0x73746E65746E6F83);

    AnyHashable.init<A>(_:)();
    if (!*(v19 + 16) || (a1 = v19, v20 = sub_10000C818(&v47), (v21 & 1) == 0))
    {

      sub_10000E1E8(&v47);
      goto LABEL_19;
    }

    sub_100011BAC(*(v19 + 56) + 32 * v20, &v50);
    sub_10000E1E8(&v47);
    if (swift_dynamicCast())
    {
      v22 = v18;
      a1 = 0xE400000000000000;
      if (v46._countAndFlagsBits == 1701869940 && v46._object == 0xE400000000000000)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {

          v18 = v22;
          goto LABEL_19;
        }
      }

      a1 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10009B994(0, v22[2] + 1, 1);
        a1 = v22;
      }

      v26 = *(a1 + 16);
      v25 = *(a1 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_10009B994((v25 > 1), v26 + 1, 1);
        v27 = v26 + 1;
        a1 = v22;
      }

      ++v16;
      *(a1 + 16) = v27;
      *(a1 + 8 * v26 + 32) = v19;
      v18 = a1;
    }

    else
    {

LABEL_19:
      ++v16;
    }
  }

  __break(1u);
  swift_once();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = *(type metadata accessor for LogInterpolation() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v44 = *(v9 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v49 = type metadata accessor for MercuryCacheDatabase();
  v47 = a1;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v47);
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v28._object = 0x80000001001FE660;
  v28._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = &protocol witness table for String;
  v30._object = &type metadata for String;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  String.append(_:)(v46);
  v32._countAndFlagsBits = 0xD000000000000012;
  v32._object = 0x80000001001FE690;
  String.append(_:)(v32);
  *&v50 = 0x73746E65746E6F63;
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  _print_unlocked<A, B>(_:_:)();
  v49 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v47, &qword_10026D350, &qword_1001E6050);
  v33 = static os_log_type_t.error.getter();
  sub_1000036B0(v33);

  Promise.reject(_:)();
}

uint64_t sub_100150578()
{
  sub_1000087A0();
  v3 = *v0;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  sub_100004B68();
  sub_100024044();
  sub_10000A8C0();
  sub_1000179B4(v8, v9);
  if (!v1)
  {
    v1 = 0;
    sub_1000170D4();
    v10 = sub_100003CA8((v2 + 16), *(v2 + 40));
    sub_100005FD8(v10);
    if (sub_1001542E0(16, v11))
    {
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      inited = swift_initStackObject();
      sub_100011650(inited, xmmword_1001E61B0);
      sub_1001542A0(0xD000000000000042);
      swift_setDeallocating();
      sub_10001CE50();
      sub_100019CE4();
      sub_10001C50C();
      return sub_10001BDCC();
    }

    sub_10015398C();
    v13 = sub_100007544();
    sub_10000A480(v13, v14);
  }

  sub_100019CE4();
  sub_10005AE14();
  sub_10001C50C();
  if (v1)
  {
  }

  if (qword_100268750 != -1)
  {
    sub_100006DF0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  v17 = *(v16 + 72);
  v18 = sub_1000080C0();
  sub_100005D40(v18, xmmword_1001E5F70);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000B3DC();

  sub_100003E38();
  v21._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  sub_100004B44();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v22._countAndFlagsBits = sub_100005A00();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  sub_10000E70C();
  sub_10003D338();
  sub_10000AA40();
  (*(v23 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100011AC0();
  v24._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  LogInterpolation.init(stringInterpolation:)();
  v25 = static os_log_type_t.error.getter();
  sub_1000036B0(v25);

  swift_willThrow();
  return sub_10001BDCC();
}

void sub_1001508D8()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100002CC4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v20 = sub_10001CC10();
  v7 = sub_100002CC4(v20);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_100012F7C();
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v10 = Promise.__allocating_init()();
  if (qword_100268758 != -1)
  {
    sub_100007698();
  }

  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v0;
  v11[4] = v10;
  v21[4] = sub_100153AD4;
  v21[5] = v11;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v21[2] = v12;
  v21[3] = &unk_10024F248;
  v13 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v14, v15);
  sub_10001B25C();
  sub_100007BEC(&qword_10026CD50);
  sub_100007298();
  sub_100018288();
  sub_100006888();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  v16 = sub_100023EA8();
  v17(v16);
  v18 = sub_100018114();
  v19(v18);

  sub_100061E84();
  sub_100005F14();
}

uint64_t sub_100150B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (*(a1 + 16))
  {
    v6 = *sub_100003CA8((a2 + 16), *(a2 + 40));

    sub_1000179B4(v7, v6);
    sub_1000170D4();
    sub_100151138();
    Promise.resolve(_:)();
    v17 = *sub_100003CA8((a2 + 16), *(a2 + 40));

    return sub_10001C50C();
  }

  else
  {
    if (qword_100268750 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = *(type metadata accessor for LogInterpolation() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v20 = type metadata accessor for MercuryCacheDatabase();
    v19[0] = a2;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v20 = &type metadata for String;
    strcpy(v19, "update(with:)");
    HIWORD(v19[1]) = -4864;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v19, &qword_10026D350, &qword_1001E6050);
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    v14._object = 0x80000001001FE9C0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    LogInterpolation.init(stringInterpolation:)();
    v15 = static os_log_type_t.error.getter();
    sub_1000036B0(v15);

    sub_10015398C();
    swift_allocError();
    *v16 = 3;
    Promise.reject(_:)();
  }
}

void sub_100151138()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v39 = *v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = v3 + 32;
    sub_100004B44();
    v38 = v10;
    sub_100004B44();
    v37 = v11;
    while (1)
    {
      sub_1000262E4(v9, v40);
      v12 = sub_100003CA8(v40, v40[3]);
      v13 = *v12;
      v14 = v12[1];
      v15 = *v12 == 0xD000000000000018 && 0x80000001001F3050 == v14;
      if (v15 || (sub_10000DD78() & 1) != 0)
      {
        break;
      }

      v22 = v13 == 0xD000000000000010 && v38 == v14;
      if (!v22 && (sub_10000DD78() & 1) == 0)
      {
        v29 = v13 == 0xD000000000000013 && v37 == v14;
        if (!v29 && (sub_10000DD78() & 1) == 0)
        {
          sub_100058334();
          sub_10015334C();
          goto LABEL_15;
        }

        sub_10014E4B0(0);
        v31 = v30;
        sub_10000AC7C();
        v32 = sub_100058334();
        sub_100152644(v32, v33, v34, v35);
        sub_10014E4B0(0);
        v36 = v1[12];
        (*(v1[13] + 24))(v31);
        goto LABEL_17;
      }

      sub_100004D20();
      v23 = sub_100058334();
      sub_100152644(v23, v24, v25, v26);
      v27 = v1[12];
      (*(v1[13] + 16))();
LABEL_15:
      sub_100002C00(v40);
      v9 += 40;
      if (!--v8)
      {
        goto LABEL_25;
      }
    }

    sub_10014E140();
    v17 = v16;
    sub_100012D4C();
    v18 = sub_100058334();
    sub_100152644(v18, v19, v20, v21);
    sub_10014E140();
    v28 = v1[12];
    (*(v1[13] + 8))(v17);
LABEL_17:

    goto LABEL_15;
  }

LABEL_25:
  sub_100005F14();
}

uint64_t sub_100151748()
{
  v1 = *v0;
  if (qword_100268750 != -1)
  {
    sub_100006DF0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v13[3] = v1;
  v13[0] = v0;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v13);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7);

  v8 = v0[11];
  sub_100003CA8(v0 + 7, v0[10]);
  v9 = sub_100003CA8(v0 + 2, v0[5]);
  v10 = *(*v9 + 16);
  v11 = *(*v9 + 24);

  sub_1000FA6E4();
}

uint64_t sub_100151960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v13 = v12 - v11;
  sub_1001542C0();
  sub_100041D2C();
  if (v3)
  {
  }

  else if ((v14 & 1) == 0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSinceNow.getter();
    v16 = v15;
    (*(v8 + 8))(v13, v5);
    swift_beginAccess();
    *(a2 + 16) = v16 < 0.0;
  }

  sub_1001542C0();
  sub_10003A420(v40);
  if (*(&v40[0] + 1) >> 60 == 15)
  {
    goto LABEL_12;
  }

  v17 = objc_opt_self();
  sub_100004894();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v40[0] = 0;
  v19 = [v17 JSONObjectWithData:isa options:0 error:v40];

  if (!v19)
  {
    v25 = *&v40[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = sub_100004894();
    sub_10003AE18(v26, v27);

    goto LABEL_12;
  }

  v20 = *&v40[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v21 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = sub_100004894();
    sub_10003AE18(v28, v29);
    goto LABEL_12;
  }

  sub_1001542C0();
  sub_10001ADD4();
  v32 = v22;
  if (!v22)
  {
    v23 = sub_100004894();
    sub_10003AE18(v23, v24);

LABEL_12:
    sub_10015398C();
    sub_100007544();
    *v30 = 4;
    swift_willThrow();
    return 1;
  }

  v33 = v39[0];
  sub_10000602C();
  if (!*(a3 + 16))
  {
    v34 = Dictionary.init(dictionaryLiteral:)();
    swift_beginAccess();
    v35 = *(a3 + 16);
    *(a3 + 16) = v34;
  }

  swift_beginAccess();
  if (*(a3 + 16))
  {
    v39[1] = v32;

    AnyHashable.init<A>(_:)();
    v39[3] = v21;
    v39[0] = v33;

    sub_1000A9FF8(v39, v40);
  }

  swift_endAccess();
  v36 = sub_100004894();
  sub_10003AE18(v36, v37);

  return 1;
}

uint64_t sub_100151D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = *v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = sub_100003CA8(v3 + 2, v3[5]);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v11 = *v9;
  sub_10005AFD4(a1, a2, a3, sub_1001539F0, v10);
  if (v29)
  {
  }

  else
  {

    swift_beginAccess();
    if (*(v8 + 16))
    {
      swift_beginAccess();
      v17 = *(v7 + 16);

      return v17 & 1;
    }

    sub_10015398C();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }

  if (qword_100268750 != -1)
  {
    swift_once();
  }

  v30 = qword_10026E620;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = *(type metadata accessor for LogInterpolation() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v33 = v25;
  v32[0] = v4;

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v32);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  v33 = &type metadata for String;
  v32[0] = 0xD000000000000024;
  v32[1] = 0x80000001001FE750;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v32, &qword_10026D350, &qword_1001E6050);
  v19._countAndFlagsBits = 0x3A64656C69616620;
  v19._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  swift_getErrorValue();
  v33 = v31;
  v20 = sub_100017E64(v32);
  (*(*(v31 - 1) + 16))(v20);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v32, &qword_10026D350, &qword_1001E6050);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  v22 = static os_log_type_t.error.getter();
  v17 = v30;
  sub_1000036B0(v22);

  swift_willThrow();

  return v17 & 1;
}

uint64_t sub_100152204(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *sub_100003CA8(a1, a1[3]);
  sub_100041D2C();
  if (v3)
  {
  }

  else if ((v13 & 1) == 0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSinceNow.getter();
    v15 = v14;
    (*(v8 + 8))(v11, v7);
    swift_beginAccess();
    *(a2 + 16) = v15 < 0.0;
  }

  v16 = *sub_100003CA8(a1, a1[3]);
  sub_10003A420(v28);
  v17 = *(&v28[0] + 1);
  if (*(&v28[0] + 1) >> 60 != 15)
  {
    v18 = *&v28[0];
    v19 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v28[0] = 0;
    v21 = [v19 JSONObjectWithData:isa options:0 error:v28];

    if (v21)
    {
      v22 = *&v28[0];
      _bridgeAnyObjectToAny(_:)();
      sub_10003AE18(v18, v17);
      swift_unknownObjectRelease();
      sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      if (swift_dynamicCast())
      {
        v23 = v27[1];
        swift_beginAccess();
        v24 = *(a3 + 16);
        *(a3 + 16) = v23;
      }
    }

    else
    {
      v25 = *&v28[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10003AE18(v18, v17);
    }
  }

  return 0;
}

uint64_t sub_1001524EC()
{
  v2 = v0;
  v3 = *sub_100003CA8((v0 + 16), *(v0 + 40));
  result = sub_10014CE84(0xD000000000000018, 0x80000001001F3050);
  if (!v1)
  {
    v5 = sub_100003CA8((v2 + 16), *(v2 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x4449656C646E7562;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = 0;
    *(inited + 80) = 0x64616F6C796170;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = 2;
    *(inited + 104) = 0x797269707865;
    *(inited + 112) = 0xE600000000000000;
    *(inited + 120) = 3;
    v7 = *v5;
    sub_10014CF4C(0xD000000000000018, 0x80000001001F3050, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

uint64_t sub_100152644(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t), void (*a4)(void))
{
  v49 = a4;
  v48 = a3;
  v51 = a2;
  v58 = *v4;
  v5 = a1[3];
  v52 = a1;
  v6 = sub_100003CA8(a1, v5);
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  v7 = *(v6 + *(updated + 24));
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v56 = " failed to update ";
  v61 = v7;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v53 = _swiftEmptyArrayStorage;
  v55 = xmmword_1001E5F60;
  v59 = v12;
  v57 = v8;
  while (v11)
  {
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v13 << 6);
    sub_10000DF68(*(v61 + 48) + 40 * v16, v66);
    sub_100011BAC(*(v61 + 56) + 32 * v16, v67);
    sub_10000DF68(v66, v64);
    if (!swift_dynamicCast())
    {
      goto LABEL_12;
    }

    v18 = v62;
    v17 = v63;
    v19 = objc_opt_self();
    sub_100003CA8(v67, v67[3]);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    v64[0] = 0;
    v21 = [v19 dataWithJSONObject:v20 options:0 error:v64];
    swift_unknownObjectRelease();
    v22 = v64[0];
    if (v21)
    {
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      sub_10000A064(v66, &qword_10026E5B0, &unk_1001EDC90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = v48(0, v53[2] + 1, 1);
      }

      v35 = v53[2];
      v34 = v53[3];
      if (v35 >= v34 >> 1)
      {
        v53 = (v48)(v34 > 1, v35 + 1, 1, v53);
      }

      v36 = v53;
      v53[2] = v35 + 1;
      v37 = &v36[4 * v35];
      v37[4] = v31;
      v37[5] = v33;
      v37[6] = v18;
      v37[7] = v17;
      v12 = v59;
    }

    else
    {
      v23 = v22;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      v54 = 0;
LABEL_12:
      if (qword_100268750 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v24 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v24);
      v26 = *(v25 + 72);
      sub_1000056F8();
      v27 = swift_allocObject();
      sub_100016420(v27);
      v65 = v58;
      v64[0] = v60;

      v28 = AMSLogKey();
      if (v28)
      {
        v29 = v28;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v64);
      LogInterpolation.init(stringLiteral:)();
      v65 = &type metadata for AnyHashable;
      v64[0] = swift_allocObject();
      sub_10000DF68(v66, v64[0] + 16);
      static LogInterpolation.safe(_:)();
      sub_10000A064(v64, &qword_10026D350, &qword_1001E6050);
      v30 = static os_log_type_t.error.getter();
      sub_1000036B0(v30);

      sub_10000A064(v66, &qword_10026E5B0, &unk_1001EDC90);
      v8 = v57;
      v12 = v59;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  v38 = sub_100003CA8(v52, v52[3]) + *(updated + 20);
  v39 = Date.timeIntervalSinceReferenceDate.getter();
  v41 = v40;
  v51(v39);
  if (v54)
  {
  }

  v43 = sub_100003CA8(v60 + 2, v60[5]);
  v46[2] = v53;
  v46[3] = v60;
  v46[4] = v52;
  v46[5] = v41;
  v46[6] = 0;
  v47 = 2;
  v44 = *__chkstk_darwin(v43);

  sub_10001A648(v45, v45, v49, v46);
}

uint64_t sub_100152C94()
{
  v2 = v0;
  v3 = *sub_100003CA8((v0 + 16), *(v0 + 40));
  result = sub_10014CE84(0xD000000000000010, 0x80000001001F3030);
  if (!v1)
  {
    v5 = sub_100003CA8((v2 + 16), *(v2 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x65636976726573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = 0;
    *(inited + 80) = 0x64616F6C796170;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = 2;
    *(inited + 104) = 0x797269707865;
    *(inited + 112) = 0xE600000000000000;
    *(inited + 120) = 3;
    v7 = *v5;
    sub_10014CF4C(0xD000000000000010, 0x80000001001F3030, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

uint64_t sub_100152DE8(uint64_t result, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v53 = a2;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = (result + 56);
    while (1)
    {
      v45 = v13;
      v46 = v12;
      v49 = *(v13 - 1);
      v50 = v11;
      v14 = *v13;
      v15 = *(v13 - 3);
      v16 = *(v13 - 2);
      sub_10003A5E0(v15, v16);
      v17 = qword_100268750;
      v18 = v14;

      if (v17 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v19 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v19);
      v21 = *(v20 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v52 = type metadata accessor for MercuryCacheDatabase();
      v51[0] = v53;

      v22 = AMSLogKey();
      if (v22)
      {
        v23 = v22;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v51);
      LogInterpolation.init(stringLiteral:)();
      v52 = a7;
      sub_1000083D8();
      v24 = swift_allocObject();
      v51[0] = v24;
      v24[2] = v15;
      v24[3] = v16;
      v24[4] = v49;
      v24[5] = v18;
      sub_10003A5E0(v15, v16);

      static LogInterpolation.safe(_:)();
      sub_10000A064(v51, &qword_10026D350, &qword_1001E6050);
      v25 = static os_log_type_t.info.getter();
      sub_1000036B0(v25);

      v47 = sub_100003CA8((v53 + 16), *(v53 + 40));
      v26 = sub_100003CA8(a3, a3[3]);
      v27 = v26[1];
      v48 = *v26;
      sub_10007B9A4(&qword_10026E700, &qword_1001EE028);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E6580;
      v29 = sub_100003CA8(a3, a3[3]);
      sub_10000A754(v29);
      *(inited + 32) = v30;
      *(inited + 40) = 0xEB00000000444965;
      *(inited + 48) = v31;
      *(inited + 56) = v17;
      *(inited + 64) = 3;
      *(inited + 72) = 0x797269707865;
      *(inited + 80) = 0xE600000000000000;
      *(inited + 88) = a4;
      *(inited + 96) = a5;
      *(inited + 104) = a6;
      *(inited + 112) = a9;
      *(inited + 120) = a10;
      *(inited + 128) = v49;
      *(inited + 136) = v18;
      *(inited + 144) = 3;
      sub_1000167C4();
      *(inited + 152) = v32;
      *(inited + 160) = 0xE700000000000000;
      *(inited + 168) = v15;
      *(inited + 176) = v16;
      *(inited + 184) = 0;
      v33 = *v47;

      sub_100153B1C(a4, a5, a6);

      v34 = sub_100004894();
      sub_10003A5E0(v34, v35);
      sub_10014D444(v48, v27, inited);
      v11 = v50;
      if (v50)
      {
        break;
      }

      v36 = sub_100004894();
      sub_1000253FC(v36, v37);

      swift_setDeallocating();
      result = sub_1001A6638();
      v13 = v45 + 4;
      v12 = v46 - 1;
      if (v46 == 1)
      {
        return result;
      }
    }

    v38 = sub_100004894();
    sub_1000253FC(v38, v39);

    swift_setDeallocating();
    return sub_1001A6638();
  }

  return result;
}

uint64_t sub_1001531F8()
{
  v2 = v0;
  v3 = *sub_100003CA8((v0 + 16), *(v0 + 40));
  result = sub_10014CE84(0xD000000000000013, 0x80000001001F3070);
  if (!v1)
  {
    v5 = sub_100003CA8((v2 + 16), *(v2 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E6580;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x65636976726573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = 0;
    *(inited + 80) = 0x64616F6C796170;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = 2;
    *(inited + 104) = 0x797269707865;
    *(inited + 112) = 0xE600000000000000;
    *(inited + 120) = 3;
    v7 = *v5;
    sub_10014CF4C(0xD000000000000013, 0x80000001001F3070, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

uint64_t sub_10015334C()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = objc_opt_self();
  v6 = sub_100003FB4();
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  v8 = *(v6 + *(updated + 24));

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v45 = 0;
  v10 = [v5 dataWithJSONObject:isa options:0 error:&v45];

  v11 = v45;
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100003FB4() + *(updated + 20);
    Date.timeIntervalSinceReferenceDate.getter();
    v17 = v16;
    v18 = sub_100003FB4();
    v19 = *v18;
    v20 = v18[1];

    sub_100153854(v19, v20);

    if (v2)
    {
      return sub_1000253FC(v12, v14);
    }

    else
    {
      v44 = v14;
      if (qword_100268750 != -1)
      {
        sub_100006DF0();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100003EFC();
      v23 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v23);
      v25 = *(v24 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v47 = v4;
      v45 = v3;

      v26 = AMSLogKey();
      if (v26)
      {
        v27 = v26;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v45);
      v45 = 0x203A656C626154;
      v46 = 0xE700000000000000;
      v28 = sub_100003FB4();
      v29 = *v28;
      v30 = v28[1];

      v31._countAndFlagsBits = v29;
      v31._object = v30;
      String.append(_:)(v31);

      v47 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
      v45 = 0;
      v46 = 0xE000000000000000;
      v32._countAndFlagsBits = 0x6E69747265736E49;
      v32._object = 0xEA00000000002067;
      String.append(_:)(v32);
      sub_10007B9A4(&qword_10026BF40, &qword_1001EE040);
      _print_unlocked<A, B>(_:_:)();
      v47 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
      v33 = static os_log_type_t.debug.getter();
      sub_1000036B0(v33);

      v34 = sub_100022280();
      v35 = sub_100003FB4();
      v36 = *v35;
      v37 = v35[1];
      sub_10007B9A4(&qword_10026E700, &qword_1001EE028);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E5F60;
      v39 = sub_100003FB4();
      sub_10000A754(v39);
      *(inited + 32) = v40;
      *(inited + 40) = 0xEB00000000444965;
      *(inited + 48) = v41;
      *(inited + 56) = v29;
      *(inited + 64) = 3;
      *(inited + 72) = 0x797269707865;
      *(inited + 80) = 0xE600000000000000;
      *(inited + 88) = v17;
      *(inited + 96) = 0;
      *(inited + 104) = 2;
      sub_1000167C4();
      *(inited + 112) = v42;
      *(inited + 120) = 0xE700000000000000;
      *(inited + 128) = v12;
      *(inited + 136) = v44;
      *(inited + 144) = 0;
      v43 = *v34;

      sub_10003A5E0(v12, v44);
      sub_10014D444(v36, v37, inited);
      sub_1000253FC(v12, v44);

      swift_setDeallocating();
      return sub_1001A6638();
    }
  }

  else
  {
    v22 = v11;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_100153854(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *sub_100003CA8((v2 + 16), *(v2 + 40));
  result = sub_10014CE84(a1, a2);
  if (!v3)
  {
    v9 = sub_100003CA8((v4 + 16), *(v4 + 40));
    sub_10007B9A4(qword_10026E708, &unk_1001EE030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F60;
    *(inited + 32) = 0x7079546568636163;
    *(inited + 40) = 0xEB00000000444965;
    *(inited + 48) = 0;
    *(inited + 56) = 0x64616F6C796170;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = 2;
    *(inited + 80) = 0x797269707865;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 3;
    v11 = *v9;
    sub_10014CF4C(a1, a2, inited);
    swift_setDeallocating();
    return sub_1001A65FC();
  }

  return result;
}

unint64_t sub_10015398C()
{
  result = qword_10026E6E0;
  if (!qword_10026E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E6E0);
  }

  return result;
}

uint64_t sub_100153A10()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_10014EBE0();
}

uint64_t sub_100153A1C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  sub_1000083D8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100153B1C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  if (!a3)
  {
    return sub_10003A5E0(result, a2);
  }

  return result;
}

uint64_t sub_100153BD0()
{
  sub_1000253FC(v0[2], v0[3]);
  v1 = v0[5];

  sub_1000083D8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100153C0C(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  v4 = v2[4];

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_100153CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100153D28(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 1) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFE)
      {
        return sub_100009F34(&a1[v7 + 1] & ~v7, v6, v4);
      }

      v16 = *a1;
      v17 = v16 >= 2;
      v18 = (v16 + 2147483646) & 0x7FFFFFFF;
      if (v17)
      {
        return (v18 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_100153EB0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 1) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFE)
          {
            v21 = &a1[v10 + 1] & ~v10;

            sub_10000A7C0(v21, a2, v8, v6);
          }

          else
          {
            *a1 = a2 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MercuryCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001541EC()
{
  result = qword_10026E790;
  if (!qword_10026E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E790);
  }

  return result;
}

uint64_t sub_1001542A0(uint64_t a1)
{

  return sub_100151D78(a1, v1 | 0x8000000000000000, v2);
}

uint64_t *sub_1001542C0()
{
  result = sub_100003CA8(v0, v0[3]);
  v2 = *result;
  return result;
}

uint64_t sub_1001542E0(uint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_10005AE84(v3, a2);
}

uint64_t sub_100154308()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026E798 = qword_100287880;
}

uint64_t sub_10015436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 105) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  return sub_100006CA4();
}

uint64_t sub_100154388()
{
  if (qword_100268760 != -1)
  {
    sub_100005490();
  }

  v1 = *(v0 + 112);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v5 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  v6 = [v1 ams_DSID];
  v7 = v6;
  if (v6)
  {
    v6 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  }

  else
  {
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
  }

  v8 = *(v0 + 105);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  *(v0 + 16) = v7;
  *(v0 + 40) = v6;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 16);
  _StringGuts.grow(_:)(33);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v11._object = 0x80000001001FEAD0;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x646F6D20726F6620;
  v13._object = 0xEB00000000203A65;
  String.append(_:)(v13);
  *(v0 + 96) = v10;
  *(v0 + 104) = v8;
  _print_unlocked<A, B>(_:_:)();
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  *(v0 + 72) = &type metadata for String;
  *(v0 + 48) = v14;
  *(v0 + 56) = v15;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 48);
  v16 = static os_log_type_t.info.getter();
  sub_1000036B0(v16);

  if (v8)
  {
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v19 = *(v0 + 112);
    objc_allocWithZone(AMSMercuryCacheFetchTask);

    v20 = v19;
    swift_unknownObjectRetain();
    *(v0 + 144) = sub_100155098(v20, v17);
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v21[1] = sub_100154758;

    return sub_100154938();
  }

  else
  {
    v23 = *(v0 + 136);
    sub_10000B214();
    v26 = v24;

    return v26(v25);
  }
}

uint64_t sub_100154758(uint64_t a1)
{
  v4 = *v2;
  sub_100002D98();
  *v5 = v4;
  v7 = *(v6 + 152);
  v8 = *v2;
  sub_100002D98();
  *v9 = v8;
  *(v4 + 160) = v1;

  if (v1)
  {
    v10 = sub_1001548D8;
  }

  else
  {
    *(v4 + 168) = a1;
    v10 = sub_100154878;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100154878()
{
  sub_100004768();

  v1 = *(v0 + 168);
  sub_10000B214();

  return v2();
}

uint64_t sub_1001548D8()
{
  sub_100004768();

  v1 = *(v0 + 8);
  v2 = *(v0 + 160);

  return v1();
}

uint64_t sub_10015494C()
{
  v1 = [*(v0 + 152) perform];
  *(v0 + 160) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100154A84;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_10007B9A4(&qword_10026BB90, &unk_1001EE250);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100048FD8;
  *(v0 + 104) = &unk_10024F5F8;
  *(v0 + 112) = v2;
  [v1 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100154A84()
{
  sub_100004768();
  v1 = *v0;
  sub_100002D98();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 168) = v5;
  if (v5)
  {
    v6 = sub_100154E70;
  }

  else
  {
    v6 = sub_100154B8C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100154B8C()
{
  v1 = *(v0 + 144);

  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  if (qword_100268760 != -1)
  {
    sub_100005490();
  }

  v2 = *(v0 + 152);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(v0 + 104) = sub_100002BC0(0, &qword_10026E7A0, AMSMercuryCacheFetchTask_ptr);
  *(v0 + 80) = v2;
  v6 = v2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9);

  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  AMSError();

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100154E70()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100154EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100154FA4;

  return sub_10015436C(a1, a2, a3, a4, a5);
}

uint64_t sub_100154FA4()
{
  sub_100004768();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_100002D98();
  *v6 = v5;

  sub_10000B214();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

id sub_100155098(void *a1, uint64_t a2)
{
  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [v2 initWithAccount:a1 bag:a2 cacheTypeIDs:isa clientIdentifier:v6 clientVersion:v7];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_100155188(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a4 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(a4 + 56) + 8 * v14);
      v19[0] = *v15;
      v19[1] = v16;
      v19[2] = v17;

      a2(&v20, v19);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v20;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001552F0(uint64_t a1)
{
  *&v3 = 0x73746C75736572;
  *(&v3 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v4, a1, &v3);
  sub_10000E1E8(v4);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001553CC(char a1, uint64_t a2)
{
  *&v7 = sub_10015A1EC(a1);
  *(&v7 + 1) = v3;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v8, a2, &v7);
  sub_10000E1E8(v8);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  v4 = swift_dynamicCast();
  v5 = v9;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

uint64_t sub_100155474@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v9 = sub_10015A1EC(a1);
  *(&v9 + 1) = v5;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v10, a2, &v9);
  sub_10000E1E8(v10);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  v6 = type metadata accessor for Date();
  v7 = swift_dynamicCast();
  return sub_10000A7C0(a3, v7 ^ 1u, 1, v6);
}

uint64_t sub_100155534()
{
  sub_100004768();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10007B9A4(&qword_10026E7A8, &qword_1001EE278);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_100023C0C();
  updated = type metadata accessor for MercuryCacheUpdateResponse();
  v1[5] = updated;
  sub_100003D10(updated);
  v8 = *(v7 + 64);
  v1[6] = sub_100023C0C();
  v9 = sub_1000033A0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001555DC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1001564C4(v0[2], v2);
  if (sub_100009F34(v2, 1, v1) == 1)
  {
    sub_10000A00C(v0[4], &qword_10026E7A8, &qword_1001EE278);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_100155B30;
    v5 = v0[3];

    return sub_100155C50();
  }

  else
  {
    v7 = v0[6];
    v8 = v0[3];
    sub_100158DBC(v0[4], v7, type metadata accessor for MercuryCacheUpdateResponse);
    v9 = sub_100156874(v7);
    v0[7] = v9;
    updated = type metadata accessor for MercuryCacheDataUpdateHandler();
    v0[8] = updated;
    v0[9] = sub_100157F14(v7, v8 + *(updated + 24));
    v11 = *(v8 + *(updated + 48));
    v12 = *v8;
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_100155790;

    return sub_10015C64C(v9, v12);
  }
}

uint64_t sub_100155790()
{
  sub_100004768();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 56);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  v5 = sub_1000033A0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100155894()
{
  v1 = v0[9];
  v2 = (v0[3] + *(v0[8] + 44));
  v3 = *sub_100003CA8(v2, v2[3]);
  sub_1001508D8();
  v0[11] = v4;

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10015596C;

  return (sub_10002E1E0)();
}

uint64_t sub_10015596C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;

  v6 = *(v2 + 88);
  if (v0)
  {

    v7 = sub_1001591D4;
  }

  else
  {

    v7 = sub_100155AAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100155AAC()
{
  sub_100004768();
  sub_100158E7C(v0[6], type metadata accessor for MercuryCacheUpdateResponse);
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100155B30()
{
  sub_100004768();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  v5 = *(v1 + 48);
  v6 = *(v1 + 32);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_100155C50()
{
  sub_100004768();
  *(v1 + 16) = v0;
  *(v1 + 144) = v2;
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  *(v1 + 24) = updated;
  sub_100003D10(updated);
  v5 = *(v4 + 64);
  *(v1 + 32) = sub_100023C0C();
  v6 = type metadata accessor for Date();
  *(v1 + 40) = v6;
  v7 = *(v6 - 8);
  *(v1 + 48) = v7;
  v8 = *(v7 + 64);
  *(v1 + 56) = sub_100023C0C();
  v9 = *(type metadata accessor for MercuryCacheMetadata(0) - 8);
  *(v1 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  v11 = type metadata accessor for MercuryCacheUpdateData.Failure(0);
  *(v1 + 112) = v11;
  sub_100003D10(v11);
  v13 = *(v12 + 64);
  *(v1 + 120) = sub_100023C0C();
  v14 = sub_1000033A0();

  return _swift_task_switch(v14, v15, v16);
}

void sub_100155DD0()
{
  v66 = v0[14];
  v67 = v0[15];
  v71 = v0[8];
  v1 = v0[6];
  v2 = v0[2];
  updated = type metadata accessor for MercuryCacheDataUpdateHandler();
  v65 = v2;
  v3 = (v2 + updated[6]);
  v4 = *v3;
  v5 = v3[1];

  sub_1001C1D1C();
  v6 = v3[2];

  sub_1001C1D1C();
  v8 = 0;
  v9 = v7 + 56;
  v69 = v7;
  v10 = -1;
  v11 = -1 << *(v7 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v7 + 56);
  v13 = (63 - v11) >> 6;
  v62 = (v1 + 16);
  v60 = (v1 + 8);
  v14 = _swiftEmptyArrayStorage;
  v63 = v13;
  v64 = v7 + 56;
  v68 = v0;
  while (1)
  {
    v0[16] = v14;
    if (!v12)
    {
      break;
    }

    v76 = v14;
LABEL_10:
    v16 = v0[15];
    v74 = v0[5];
    v17 = v0[2];
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = (*(v69 + 48) + ((v8 << 10) | (16 * v18)));
    v20 = v19[1];
    v72 = *v19;
    v21 = *(v17 + updated[8]);
    v22 = updated[9];
    v23 = *(v17 + updated[10]);
    v24 = *(v17 + updated[7]);
    v25 = v66[5];
    swift_bridgeObjectRetain_n();
    Date.addingTimeInterval(_:)();
    (*v62)(&v16[v66[7]], v17 + v22, v74);
    *v16 = v72;
    *(v67 + 8) = v20;
    v26 = &v16[v66[6]];
    *v26 = xmmword_1001EE260;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    v26[32] = 0;
    v27 = *(v65 + 8);
    if (*(v27 + 16))
    {
      v28 = sub_100012A94();
      v30 = v29;

      if (v30)
      {
        v0 = v68;
        v31 = v68[15];
        v33 = v68[12];
        v32 = v68[13];
        v73 = v68[11];
        v34 = v68[7];
        v61 = v68[5];
        v35 = *(v68 + 144);
        v75 = *(v71 + 72);
        sub_100158E1C(*(v27 + 56) + v75 * v28, v33, type metadata accessor for MercuryCacheMetadata);
        sub_1000054B0();
        sub_100158DBC(v33, v32, v36);
        static Date.now.getter();
        sub_100159290(v31, v35, v34);
        (*v60)(v34, v61);
        sub_100158E1C(v32, v73, type metadata accessor for MercuryCacheMetadata);
        v14 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = v76[2];
          sub_100003030();
          sub_1000D5830();
          v14 = v53;
        }

        v37 = v14[2];
        if (v37 >= v14[3] >> 1)
        {
          sub_100006574();
          v14 = v54;
        }

        v38 = v68[15];
        v39 = v68[11];
        sub_100007C18(v68[13]);
        sub_10000BA6C();
        v14[2] = v37 + 1;
        v40 = v14 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + v37 * v75;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v0 = v68;
    v41 = v68[9];
    v42 = v68[10];
    v43 = v68[4];
    sub_100158E1C(v68[15], v43, type metadata accessor for MercuryCacheUpdateData.Failure);
    swift_storeEnumTagMultiPayload();
    sub_100159BE4(v43, v42);
    sub_100158E1C(v42, v41, type metadata accessor for MercuryCacheMetadata);
    v14 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = v76[2];
      sub_100003030();
      sub_1000D5830();
      v14 = v50;
    }

    v44 = v14[2];
    if (v44 >= v14[3] >> 1)
    {
      sub_100006574();
      v14 = v51;
    }

    v45 = v68[15];
    v39 = v68[9];
    sub_100007C18(v68[10]);
    sub_10000BA6C();
    v14[2] = v44 + 1;
    v46 = v14 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v44;
LABEL_23:
    sub_1000054B0();
    sub_100158DBC(v39, v47, v48);
    v13 = v63;
    v9 = v64;
  }

  while (1)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v8;
    if (v12)
    {
      v76 = v14;
      v8 = v15;
      goto LABEL_10;
    }
  }

  v55 = v0;
  v56 = v0[2];

  v57 = *(v56 + updated[12]);
  v58 = *v56;
  v59 = swift_task_alloc();
  v55[17] = v59;
  *v59 = v55;
  v59[1] = sub_1001562BC;

  sub_10015C64C(v14, v58);
}

uint64_t sub_1001562BC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 88);
  v7 = *(*v0 + 80);
  v8 = *(*v0 + 72);
  v9 = *(*v0 + 56);
  v10 = *(*v0 + 32);
  v11 = *v0;
  sub_100002D20();
  *v12 = v11;

  v13 = *(v11 + 8);

  return v13();
}

uint64_t sub_1001564C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for MercuryCacheUpdateResponse();
  v6 = *(*(updated - 1) + 64);
  __chkstk_darwin(updated);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007B9A4(&qword_10026E7A8, &qword_1001EE278);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v31 - v16;
  if (a1)
  {
    v34 = a2;
    v18 = type metadata accessor for MercuryCacheDataUpdateHandler();
    v19 = v2 + v18[9];
    v33 = *(v10 + 16);
    v33(v13, v19, v9);
    v20 = *(v2 + v18[7]);
    v32 = *(v2 + v18[8]);
    v21 = *(v2 + v18[10]);
    v22 = sub_1001552F0(a1);
    if (v22)
    {
      v23 = v22;
      v31[1] = v31;
      __chkstk_darwin(v22);
      v31[-4] = v13;
      v31[-3] = v20;
      v24 = v32;
      v31[-2] = v32;
      v31[-1] = v21;
      v25 = sub_100155188(_swiftEmptyDictionarySingleton, sub_100158FA4, &v31[-6], v23);

      *v8 = v25;
      v33(v8 + updated[5], v13, v9);
      *(v8 + updated[6]) = v20;
      *(v8 + updated[7]) = v24;
      *(v8 + updated[8]) = v21;
      sub_100158DBC(v8, v17, type metadata accessor for MercuryCacheUpdateResponse);
      sub_10000A7C0(v17, 0, 1, updated);
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      (*(v10 + 8))(v13, v9);
      sub_10000A7C0(v17, 1, 1, updated);
    }

    v27 = sub_100009F34(v17, 1, updated);
    v28 = v34;
    if (v27 == 1)
    {
      sub_10000A00C(v17, &qword_10026E7A8, &qword_1001EE278);
      v29 = v28;
      v30 = 1;
    }

    else
    {
      sub_100158DBC(v17, v34, type metadata accessor for MercuryCacheUpdateResponse);
      v29 = v28;
      v30 = 0;
    }

    return sub_10000A7C0(v29, v30, 1, updated);
  }

  else
  {

    return sub_10000A7C0(a2, 1, 1, updated);
  }
}

uint64_t sub_100156874(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v204 = &v197 - v5;
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  v6 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v210 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for Date();
  v8 = *(v241 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v241);
  v200 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v213 = &v197 - v13;
  v14 = __chkstk_darwin(v12);
  v212 = &v197 - v15;
  __chkstk_darwin(v14);
  v217 = &v197 - v16;
  v218 = type metadata accessor for MercuryCacheUpdateData.Failure(0);
  v17 = *(*(v218 - 8) + 64);
  v18 = __chkstk_darwin(v218);
  v203 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v202 = (&v197 - v21);
  __chkstk_darwin(v20);
  v216 = &v197 - v22;
  v237 = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v205 = *(v237 - 8);
  v23 = *(v205 + 64);
  v24 = __chkstk_darwin(v237);
  v214 = &v197 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v221 = &v197 - v27;
  v28 = __chkstk_darwin(v26);
  v197 = &v197 - v29;
  v30 = __chkstk_darwin(v28);
  v198 = &v197 - v31;
  v32 = __chkstk_darwin(v30);
  v209 = &v197 - v33;
  __chkstk_darwin(v32);
  v208 = &v197 - v34;
  v35 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v224 = &v197 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v235 = (&v197 - v39);
  v230 = type metadata accessor for MercuryCacheMetadata(0);
  v242 = *(v230 - 8);
  v40 = *(v242 + 64);
  v41 = __chkstk_darwin(v230);
  v229 = &v197 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v197 - v44;
  v46 = __chkstk_darwin(v43);
  v240 = &v197 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v197 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v197 - v52;
  v54 = __chkstk_darwin(v51);
  v243 = &v197 - v55;
  __chkstk_darwin(v54);
  v219 = &v197 - v56;
  v57 = sub_10007B9A4(&qword_10026E7D0, &qword_1001EE2B0);
  v58 = *(*(v57 - 8) + 64);
  v59 = __chkstk_darwin(v57 - 8);
  v228 = (&v197 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v59);
  v225 = (&v197 - v61);
  v62 = *a1;
  v246 = v1;
  v227 = sub_100158604(sub_100158D9C, &v245, v62);
  v236 = v1;
  v63 = *(v1 + 8);
  v64 = v63 + 64;
  v65 = 1 << *(v63 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v63 + 64);
  v206 = (v65 + 63) >> 6;
  v201 = (v8 + 24);
  v215 = (v8 + 8);
  v199 = v8;
  v220 = v63;

  v69 = 0;
  v70 = _swiftEmptyArrayStorage;
  v207 = xmmword_1001EE260;
  v239 = v45;
  v222 = v64;
  v226 = (v8 + 16);
  v223 = v53;
  v234 = v50;
  while (1)
  {
    v244 = v70;
    if (!v67)
    {
      break;
    }

    v71 = v69;
LABEL_11:
    v73 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v74 = v73 | (v71 << 6);
    v75 = (*(v220 + 48) + 16 * v74);
    v77 = *v75;
    v76 = v75[1];
    v78 = v219;
    sub_100158E1C(*(v220 + 56) + *(v242 + 72) * v74, v219, type metadata accessor for MercuryCacheMetadata);
    v79 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
    v80 = *(v79 + 48);
    v81 = v228;
    *v228 = v77;
    v81[1] = v76;
    v72 = v81;
    sub_100158DBC(v78, v81 + v80, type metadata accessor for MercuryCacheMetadata);
    sub_10000A7C0(v72, 0, 1, v79);

    v70 = v244;
LABEL_12:
    v82 = v225;
    sub_100158ED4(v72, v225, &qword_10026E7D0, &qword_1001EE2B0);
    v83 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
    if (sub_100009F34(v82, 1, v83) == 1)
    {

      v136 = sub_1001BF318(v135);

      v138 = sub_100169084(v137, v136);

      v139 = 1 << *(v138 + 32);
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v141 = v140 & v138[7];
      v142 = (v139 + 63) >> 6;

      v143 = 0;
      v235 = _swiftEmptyArrayStorage;
LABEL_33:
      v144 = v241;
      while (v141)
      {
        v145 = v141;
LABEL_40:
        v141 = (v145 - 1) & v145;
        if (v227[2])
        {
          v147 = (v138[6] + ((v143 << 10) | (16 * __clz(__rbit64(v145)))));
          v148 = *v147;
          v149 = v147[1];

          v150 = sub_100012A94();
          if (v151)
          {
            v152 = *(v205 + 72);
            v153 = v197;
            sub_100158E1C(v227[7] + v152 * v150, v197, type metadata accessor for MercuryCacheUpdateData.DataKind);

            sub_100158DBC(v153, v198, type metadata accessor for MercuryCacheUpdateData.DataKind);
            v154 = v235;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v158 = v154[2];
              sub_1000D59E8();
              v154 = v159;
            }

            v156 = v154[2];
            v155 = v154[3];
            v235 = v154;
            if (v156 >= v155 >> 1)
            {
              sub_1000D59E8();
              v235 = v160;
            }

            v157 = v235;
            v235[2] = v156 + 1;
            result = sub_100158DBC(v198, v157 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + v156 * v152, type metadata accessor for MercuryCacheUpdateData.DataKind);
          }

          else
          {
          }

          goto LABEL_33;
        }
      }

      while (1)
      {
        v146 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_65;
        }

        if (v146 >= v142)
        {

          v161 = v235[2];
          if (v161)
          {
            v162 = v235 + ((*(v205 + 80) + 32) & ~*(v205 + 80));
            v243 = *(v205 + 72);
            v238 = (v199 + 32);
            v236 = (v199 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
            v163 = v214;
            v164 = v221;
            do
            {
              v244 = v70;
              sub_100158E1C(v162, v164, type metadata accessor for MercuryCacheUpdateData.DataKind);
              sub_100158E1C(v164, v163, type metadata accessor for MercuryCacheUpdateData.DataKind);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v165 = v202;
                sub_100158DBC(v163, v202, type metadata accessor for MercuryCacheUpdateData.Failure);
                v166 = v165[1];
                v240 = *v165;
                v167 = v218;
                v168 = *v226;
                (*v226)(v212, v165 + *(v218 + 20), v144);
                v168(v213, v165 + *(v167 + 28), v144);
                v169 = v203;
                sub_100158E1C(v165, v203, type metadata accessor for MercuryCacheUpdateData.Failure);
                v170 = v169 + *(v167 + 24);
                if (*(v170 + 32))
                {

                  sub_100158E7C(v221, type metadata accessor for MercuryCacheUpdateData.DataKind);
                  sub_100158E7C(v169, type metadata accessor for MercuryCacheUpdateData.Failure);
                  sub_100158E7C(v165, type metadata accessor for MercuryCacheUpdateData.Failure);
                  v171 = type metadata accessor for RetryConfiguration(0);
                  v172 = v204;
                  sub_10000A7C0(v204, 1, 1, v171);
                  v173 = *v238;
                }

                else
                {
                  v184 = v167;
                  v185 = *(v170 + 16);
                  v186 = *(v184 + 28);
                  if (*(v170 + 8))
                  {
                    v170 += 24;
                  }

                  v187 = *v170;
                  v188 = v200;
                  v168(v200, (v169 + v186), v144);

                  sub_100158E7C(v221, type metadata accessor for MercuryCacheUpdateData.DataKind);
                  sub_100158E7C(v169, type metadata accessor for MercuryCacheUpdateData.Failure);
                  sub_100158E7C(v165, type metadata accessor for MercuryCacheUpdateData.Failure);
                  v172 = v204;
                  *v204 = 0;
                  *(v172 + 1) = v185;
                  *(v172 + 2) = v187;
                  v189 = type metadata accessor for RetryConfiguration(0);
                  v173 = *v238;
                  (*v238)(&v172[*(v189 + 28)], v188, v241);
                  v190 = v189;
                  v144 = v241;
                  sub_10000A7C0(v172, 0, 1, v190);
                }

                v70 = v244;
                v191 = v239;
                *v239 = v240;
                *(v191 + 1) = v166;
                v192 = v230;
                v173(&v191[*(v230 + 20)], v212, v144);
                v173(&v191[*(v192 + 24)], v213, v144);
                sub_100158ED4(v172, &v191[*(v192 + 28)], &qword_10026E7C8, &unk_1001EE2A0);
              }

              else
              {
                sub_100158E7C(v164, type metadata accessor for MercuryCacheUpdateData.DataKind);
                v174 = v210;
                sub_100158DBC(v163, v210, type metadata accessor for MercuryCacheUpdateData.Success);
                v175 = *v174;
                v176 = *(v174 + 1);
                v177 = updated;
                v178 = v230;
                v179 = v239;
                v180 = *v226;
                (*v226)(&v239[*(v230 + 20)], &v174[*(updated + 20)], v241);
                v181 = *(v177 + 28);
                v144 = v241;
                v180(&v179[*(v178 + 24)], &v174[v181], v241);

                sub_100158E7C(v174, type metadata accessor for MercuryCacheUpdateData.Success);
                v182 = *(v178 + 28);
                v183 = type metadata accessor for RetryConfiguration(0);
                sub_10000A7C0(&v179[v182], 1, 1, v183);
                *v179 = v175;
                *(v179 + 1) = v176;
                v70 = v244;
              }

              sub_100158E1C(v239, v229, type metadata accessor for MercuryCacheMetadata);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v194 = v70[2];
                sub_1000D5830();
                v70 = v195;
              }

              v163 = v214;
              v164 = v221;
              v193 = v70[2];
              if (v193 >= v70[3] >> 1)
              {
                sub_1000D5830();
                v70 = v196;
              }

              sub_100158E7C(v239, type metadata accessor for MercuryCacheMetadata);
              v70[2] = v193 + 1;
              sub_100158DBC(v229, v70 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v193, type metadata accessor for MercuryCacheMetadata);
              v162 += v243;
              --v161;
            }

            while (v161);
          }

          return v70;
        }

        v145 = v138[v146 + 7];
        ++v143;
        if (v145)
        {
          v143 = v146;
          goto LABEL_40;
        }
      }
    }

    v84 = *v82;
    v85 = v82[1];
    sub_100158DBC(v82 + *(v83 + 48), v243, type metadata accessor for MercuryCacheMetadata);
    v86 = type metadata accessor for MercuryCacheDataUpdateHandler();
    v87 = v236;
    v88 = v236 + v86[6];
    v89 = *(v88 + 8);
    v90 = *(v88 + 16);

    sub_1001C1D1C();
    LODWORD(v89) = sub_10005938C(v84, v85, v91);

    v92 = *(v87 + v86[8]);
    v232 = *(v87 + v86[10]);
    v93 = v227[2];
    LODWORD(v238) = v89;
    v233 = v92;
    if (v93)
    {
      v94 = v227;
      v95 = sub_100012A94();
      v97 = v96;

      if (v97)
      {
        v98 = v235;
        sub_100158E1C(v94[7] + *(v205 + 72) * v95, v235, type metadata accessor for MercuryCacheUpdateData.DataKind);
        v99 = 0;
        v100 = v224;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v99 = 1;
    v100 = v224;
    v98 = v235;
LABEL_18:
    v101 = v243;
    v102 = v237;
    sub_10000A7C0(v98, v99, 1, v237);
    v231 = v86[9];
    v103 = v102;
    v104 = v234;
    sub_100158E1C(v101, v234, type metadata accessor for MercuryCacheMetadata);
    v105 = *v101;
    v106 = v101[1];
    sub_100158F34(v98, v100);
    if (sub_100009F34(v100, 1, v103) == 1)
    {

      sub_10000A00C(v100, &qword_10026AF40, &unk_1001EEAD0);
      v107 = v218;
      v108 = *v226;
      v109 = v216;
      v110 = v101 + *(v230 + 20);
      v111 = v241;
      (*v226)(&v216[*(v218 + 20)], v110, v241);
      v108(&v109[*(v107 + 28)], (v236 + v231), v111);
      *v109 = v105;
      *(v109 + 1) = v106;
      v112 = &v109[*(v107 + 24)];
      *v112 = v207;
      v113 = v232;
      *(v112 + 2) = v233;
      *(v112 + 3) = v113;
      v112[32] = 0;
      v114 = v217;
      static Date.now.getter();
      sub_100159290(v109, v238 & 1, v114);
      (*v215)(v114, v111);
      sub_100158E7C(v109, type metadata accessor for MercuryCacheUpdateData.Failure);
      sub_10000A00C(v235, &qword_10026AF40, &unk_1001EEAD0);
      v70 = v244;
      v115 = v104;
    }

    else
    {
      v116 = v208;
      sub_100158DBC(v100, v208, type metadata accessor for MercuryCacheUpdateData.DataKind);
      v117 = v209;
      sub_100158E1C(v116, v209, type metadata accessor for MercuryCacheUpdateData.DataKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v118 = v216;
        sub_100158DBC(v117, v216, type metadata accessor for MercuryCacheUpdateData.Failure);
        v119 = v217;
        static Date.now.getter();
        v120 = v234;
        sub_100159290(v118, v238 & 1, v119);
        (*v215)(v119, v241);
        v115 = v120;
        sub_100158E7C(v118, type metadata accessor for MercuryCacheUpdateData.Failure);
        sub_100158E7C(v116, type metadata accessor for MercuryCacheUpdateData.DataKind);
        sub_10000A00C(v98, &qword_10026AF40, &unk_1001EEAD0);
      }

      else
      {
        sub_100158E7C(v116, type metadata accessor for MercuryCacheUpdateData.DataKind);
        sub_10000A00C(v98, &qword_10026AF40, &unk_1001EEAD0);
        v121 = v210;
        sub_100158DBC(v117, v210, type metadata accessor for MercuryCacheUpdateData.Success);
        v122 = updated;
        v123 = v230;
        v124 = *v201;
        v125 = v234;
        v126 = v241;
        (*v201)(&v234[*(v230 + 20)], v121 + *(updated + 20), v241);
        v124(v125 + *(v123 + 24), v121 + *(v122 + 28), v126);
        sub_100158E7C(v121, type metadata accessor for MercuryCacheUpdateData.Success);
        v127 = *(v123 + 28);
        v115 = v125;
        sub_10000A00C(v125 + v127, &qword_10026E7C8, &unk_1001EE2A0);
        v128 = type metadata accessor for RetryConfiguration(0);
        sub_10000A7C0(v125 + v127, 1, 1, v128);
      }

      v70 = v244;
    }

    v129 = v223;
    sub_100158DBC(v115, v223, type metadata accessor for MercuryCacheMetadata);
    sub_100158E1C(v129, v240, type metadata accessor for MercuryCacheMetadata);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = v70[2];
      sub_1000D5830();
      v70 = v133;
    }

    v130 = v70[2];
    if (v130 >= v70[3] >> 1)
    {
      sub_1000D5830();
      v70 = v134;
    }

    sub_100158E7C(v129, type metadata accessor for MercuryCacheMetadata);
    sub_100158E7C(v243, type metadata accessor for MercuryCacheMetadata);
    v70[2] = v130 + 1;
    result = sub_100158DBC(v240, v70 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v130, type metadata accessor for MercuryCacheMetadata);
    v64 = v222;
  }

  v72 = v228;
  while (1)
  {
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v71 >= v206)
    {
      v131 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
      sub_10000A7C0(v72, 1, 1, v131);
      v67 = 0;
      goto LABEL_12;
    }

    v67 = *(v64 + 8 * v71);
    ++v69;
    if (v67)
    {
      v69 = v71;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MercuryCacheDataUpdateHandler()
{
  result = qword_10026E840;
  if (!qword_10026E840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100157F14(uint64_t *a1, unint64_t a2)
{
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  v5 = sub_100002DDC(updated);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = *a1;
  v51[2] = a2;
  v17 = sub_100158604(sub_1001585E4, v51, v16);
  v18 = v17 + 8;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17[8];
  v22 = (v19 + 63) >> 6;
  v50 = v17;

  v24 = 0;
  v25 = _swiftEmptyArrayStorage;
  v46 = v13;
  v47 = updated;
  v45 = v15;
  if (v21)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {

      return v25;
    }

    v21 = v18[v26];
    ++v24;
    if (v21)
    {
      v24 = v26;
      do
      {
LABEL_8:
        sub_100158E1C(v50[7] + *(v48 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v15, type metadata accessor for MercuryCacheUpdateData.DataKind);
        sub_100158E1C(v15, v13, type metadata accessor for MercuryCacheUpdateData.DataKind);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100003388();
          sub_100158E7C(v15, v27);
          v52 = 0u;
          v53 = 0u;
          v54 = 0;
        }

        else
        {
          v28 = v44;
          sub_100158DBC(v13, v44, type metadata accessor for MercuryCacheUpdateData.Success);
          *(&v53 + 1) = updated;
          v54 = &off_10024FAA0;
          v29 = sub_100017E64(&v52);
          sub_100158DBC(v28, v29, type metadata accessor for MercuryCacheUpdateData.Success);
        }

        sub_100003388();
        sub_100158E7C(v30, v31);
        if (*(&v53 + 1))
        {
          sub_10003B104(&v52, v55);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = v25[2];
            sub_100003030();
            sub_1000D5AC4();
            v25 = v41;
          }

          v32 = v25[2];
          if (v32 >= v25[3] >> 1)
          {
            sub_1000D5AC4();
            v25 = v42;
          }

          v33 = v56;
          v34 = sub_100046CB8(v55, v56);
          v35 = *(*(v33 - 8) + 64);
          __chkstk_darwin(v34);
          v37 = &v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v38 + 16))(v37);
          updated = v47;
          *(&v53 + 1) = v47;
          v54 = &off_10024FAA0;
          v39 = sub_100017E64(&v52);
          sub_100158DBC(v37, v39, type metadata accessor for MercuryCacheUpdateData.Success);
          v25[2] = v32 + 1;
          sub_10003B104(&v52, &v25[5 * v32 + 4]);
          result = sub_100002C00(v55);
          v15 = v45;
          v13 = v46;
        }

        else
        {
          result = sub_10000A00C(&v52, &qword_10026E7B0, &qword_1001EE288);
        }

        v21 &= v21 - 1;
      }

      while (v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100158364(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007B9A4(&qword_10026E7C0, &qword_1001EE298);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = (&v19 - v9);
  v12 = *a1;
  v11 = a1[1];
  *v10 = v12;
  v10[1] = v11;
  sub_100158E1C(a2, &v19 + *(v8 + 56) - v9, type metadata accessor for MercuryCacheUpdateData.DataKind);
  v13 = (a3 + *(type metadata accessor for MercuryCacheDataUpdateHandler() + 24));
  v14 = *v13;
  v15 = v13[1];

  sub_1001C1D1C();
  v16 = v13[2];

  sub_1001C1D1C();
  LOBYTE(v13) = sub_10005938C(v12, v11, v17);

  sub_10000A00C(v10, &qword_10026E7C0, &qword_1001EE298);
  return v13 & 1;
}

uint64_t sub_1001584AC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_10007B9A4(&qword_10026E7C0, &qword_1001EE298);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = (&v18 - v9);
  v12 = *a1;
  v11 = a1[1];
  *v10 = v12;
  v10[1] = v11;
  sub_100158E1C(a2, &v18 + *(v8 + 56) - v9, type metadata accessor for MercuryCacheUpdateData.DataKind);
  v13 = *a3;
  v14 = a3[1];

  sub_1001C1D1C();
  v15 = a3[2];

  sub_1001C1D1C();
  LOBYTE(v14) = sub_10005938C(v12, v11, v16);

  sub_10000A00C(v10, &qword_10026E7C0, &qword_1001EE298);
  return v14 & 1;
}

unint64_t *sub_100158604(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_1001589C8(v12, v8, a3, v6);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1000575CC(0, v8, v9);
  v10 = sub_100158788(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_100158788(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v34 = a4;
  v29 = a2;
  v30 = a1;
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v33 = *(updated - 8);
  v6 = *(v33 + 64);
  result = __chkstk_darwin(updated - 8);
  v31 = 0;
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v35 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v36 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v35[7];
    v22 = (v35[6] + 16 * v20);
    v23 = v22[1];
    v37[0] = *v22;
    v37[1] = v23;
    v24 = v32;
    v25 = v20;
    sub_100158E1C(v21 + *(v33 + 72) * v20, v32, type metadata accessor for MercuryCacheUpdateData.DataKind);

    v26 = v38;
    v27 = v34(v37, v24);
    sub_100158E7C(v24, type metadata accessor for MercuryCacheUpdateData.DataKind);

    v38 = v26;
    if (v26)
    {
      return result;
    }

    v15 = v36;
    if (v27)
    {
      *(v30 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_100158A58(v30, v29, v31, v35);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_100158A58(v30, v29, v31, v35);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1001589C8(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100158788(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100158A58(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v43 = *(updated - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(updated - 8);
  __chkstk_darwin(v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  sub_10007B9A4(&qword_10026E7B8, &qword_1001EE290);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_100158E1C(v23 + v45 * v22, v42, type metadata accessor for MercuryCacheUpdateData.DataKind);
    sub_100158DBC(v27, v18, type metadata accessor for MercuryCacheUpdateData.DataKind);
    v28 = *(v14 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_25:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_100158DBC(v18, *(v14 + 56) + v32 * v45, type metadata accessor for MercuryCacheUpdateData.DataKind);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100158DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002DDC(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100158E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002DDC(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100158E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100158ED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10007B9A4(a3, a4);
  sub_100002DDC(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100158F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100158FF4()
{
  sub_1000AF20C();
  if (v0 <= 0x3F)
  {
    sub_100159118();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MercuryCacheUpdateInput();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_100159180(319, &qword_10026E858);
          if (v4 <= 0x3F)
          {
            sub_100159180(319, &unk_10026E860);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100159118()
{
  if (!qword_10026E850)
  {
    type metadata accessor for MercuryCacheMetadata(255);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10026E850);
    }
  }
}

uint64_t sub_100159180(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1001591D8(uint64_t a1, char a2)
{
  sub_10015BD34();
  if (!v7)
  {
    return sub_10000A00C(&v6, &qword_10026D350, &qword_1001E6050);
  }

  sub_100002C4C(&v6, v8);
  v5[0] = sub_10015A1EC(a2);
  v5[1] = v3;
  AnyHashable.init<A>(_:)();
  sub_100011BAC(v8, v5);
  sub_1000A9FF8(v5, &v6);
  return sub_100002C00(v8);
}

uint64_t sub_100159290(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v105 = *&a3;
  v110 = a2;
  v6 = type metadata accessor for Date();
  v7 = sub_100002CC4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1000056E8();
  v103 = (v12 - v13);
  sub_100003F08();
  __chkstk_darwin(v14);
  v101 = &v99[-v15];
  sub_100003F08();
  __chkstk_darwin(v16);
  v104 = &v99[-v17];
  sub_100003F08();
  __chkstk_darwin(v18);
  v106 = &v99[-v19];
  v20 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  v21 = sub_100003D10(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_1000056E8();
  v109 = v24 - v25;
  sub_100003F08();
  __chkstk_darwin(v26);
  v28 = &v99[-v27];
  v29 = sub_10001CC2C();
  v30 = type metadata accessor for RetryConfiguration(v29);
  v31 = sub_100002DDC(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_1000056E8();
  v102 = (v34 - v35);
  sub_100003F08();
  __chkstk_darwin(v36);
  v108 = &v99[-v37];
  sub_100003F08();
  __chkstk_darwin(v38);
  v40 = &v99[-v39];
  updated = type metadata accessor for MercuryCacheUpdateData.Failure(0);
  v42 = *(updated + 28);
  v43 = type metadata accessor for MercuryCacheMetadata(0);
  v44 = *(v43 + 24);
  v111 = v9;
  v112 = v6;
  v45 = *(v9 + 24);
  v107 = v42;
  v45(v4 + v44, a1 + v42, v6);
  v46 = *(updated + 24);
  v113 = a1;
  v47 = a1 + v46;
  if (*(v47 + 32))
  {
    v114 = v43;
    v112 = v4;
    if (qword_100268768 != -1)
    {
      sub_10000C10C();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v48 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v48);
    v50 = *(v49 + 72);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v116 = v114;
    sub_100017E64(v115);
    sub_1000033B0();
    sub_10015BC68();
    v53 = AMSLogKey();
    if (v53)
    {
      v54 = v53;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v115);
    LogInterpolation.init(stringLiteral:)();
    v116 = updated;
    sub_100017E64(v115);
    sub_100023EBC();
    sub_10015BC68();
    static LogInterpolation.safe(_:)();
    sub_10000A00C(v115, &qword_10026D350, &qword_1001E6050);
    v75 = static os_log_type_t.info.getter();
    sub_1000036B0(v75);

    sub_10000A00C(v112 + *(v114 + 28), &qword_10026E7C8, &unk_1001EE2A0);
    goto LABEL_35;
  }

  v55 = *v47;
  v56 = *(v47 + 16);
  v57 = *(v47 + 24);
  v100 = *(v47 + 8);
  v58 = *(v43 + 28);
  v59 = v4;
  sub_10015BD34();
  sub_100009EC4(v28);
  if (v60)
  {
    v105 = v55;
    sub_10000A00C(v28, &qword_10026E7C8, &unk_1001EE2A0);
    v61 = v4;
    v62 = v111;
    v63 = v112;
  }

  else
  {
    v114 = v43;
    v64 = v56;
    sub_1000054C8();
    v56 = v40;
    sub_10015BBB4();
    v62 = v111;
    v63 = v112;
    if (*v40 >= v40[1])
    {
      v105 = v55;
      sub_100006E24();
      sub_10015BC10(v40, v76);
      v61 = v59;
    }

    else
    {
      v65 = v58;
      v66 = *(v56 + 16);
      v67 = v56 + *(v30 + 28);
      v68 = v104;
      Date.addingTimeInterval(_:)();
      v69 = v106;
      (*(v62 + 32))(v106, v68, v63);
      if (static Date.> infix(_:_:)())
      {
        v58 = v69;
        if (qword_100268768 == -1)
        {
LABEL_12:
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v70 = type metadata accessor for LogInterpolation();
          sub_100002CFC(v70);
          v72 = *(v71 + 72);
          *(sub_1000072A8() + 16) = xmmword_1001E5F70;
          v116 = v114;
          sub_100017E64(v115);
          sub_1000033B0();
          sub_10015BC68();
          v73 = AMSLogKey();
          if (v73)
          {
            v74 = v73;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          sub_100015C20();

          sub_100002C00(v115);
          LogInterpolation.init(stringLiteral:)();
          v97 = static os_log_type_t.info.getter();
          sub_1000036B0(v97);

          (*(v111 + 8))(v58, v112);
          sub_100006E24();
          return sub_10015BC10(v56, v98);
        }

LABEL_38:
        sub_10000C10C();
        goto LABEL_12;
      }

      v105 = v55;
      (*(v62 + 8))(v69, v63);
      sub_100006E24();
      sub_10015BC10(v56, v77);
      v61 = v59;
      v58 = v65;
    }

    v56 = v64;
    v43 = v114;
  }

  v78 = v109;
  if (v110)
  {
    sub_10015BD34();
    sub_100009EC4(v78);
    if (v60)
    {
      sub_10000A00C(v78, &qword_10026E7C8, &unk_1001EE2A0);
      sub_10001CDB8();
      v79 = v103;
      v80(v103);
      v81 = 0;
      if ((v100 & 1) == 0)
      {
        v57 = v105;
      }
    }

    else
    {
      sub_1000054C8();
      v87 = v102;
      sub_10015BBB4();
      v81 = *v87 + 1;
      if (__OFADD__(*v87, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_10001CDB8();
      v79 = v101;
      v88(v101);
      if (v100)
      {
        v57 = v57 * exp2(v81);
      }

      else
      {
        v57 = v105;
      }

      sub_100006E24();
      sub_10015BC10(v87, v91);
    }

    v92 = v108;
    *v108 = v81;
    v92[1] = v56;
    *(v92 + 2) = v57;
    (*(v62 + 32))(v92 + *(v30 + 28), v79, v63);
    sub_10000A00C(&v58[v61], &qword_10026E7C8, &unk_1001EE2A0);
    sub_1000054C8();
    sub_10015BBB4();
LABEL_35:
    sub_100003E6C();
    return sub_10000A7C0(v93, v94, v95, v96);
  }

  if (qword_100268768 != -1)
  {
    sub_10000C10C();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v82 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v82);
  v84 = *(v83 + 72);
  *(sub_1000072A8() + 16) = xmmword_1001E5F70;
  v116 = v43;
  sub_100017E64(v115);
  sub_1000033B0();
  sub_10015BC68();
  v85 = AMSLogKey();
  if (v85)
  {
    v86 = v85;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C20();

  sub_100002C00(v115);
  LogInterpolation.init(stringLiteral:)();
  v89 = static os_log_type_t.info.getter();
  sub_1000036B0(v89);
}

uint64_t sub_100159BE4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  updated = type metadata accessor for MercuryCacheUpdateData.Success(0);
  v3 = sub_100002DDC(updated);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v8 = (v7 - v6);
  v9 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v9);
  v11 = *(v10 + 64);
  sub_100004E78();
  __chkstk_darwin(v12);
  v82 = (&v77 - v13);
  v14 = type metadata accessor for Date();
  v15 = sub_100002CC4(v14);
  v84 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_1000056E8();
  v80 = (v19 - v20);
  sub_100003F08();
  v22 = __chkstk_darwin(v21);
  v24 = &v77 - v23;
  __chkstk_darwin(v22);
  v26 = &v77 - v25;
  v27 = sub_10001CC2C();
  v28 = type metadata accessor for MercuryCacheUpdateData.Failure(v27);
  v29 = sub_100002DDC(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_1000056E8();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = (&v77 - v36);
  v38 = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
  v39 = sub_100002DDC(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_100002DEC();
  sub_10015BC68();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v77 = a1;
    sub_10015BBB4();
    v42 = v37[1];
    v78 = *v37;
    v79 = v26;
    v43 = *(v84 + 16);
    v43(v26, v37 + *(v28 + 20), v14);
    v44 = v37 + *(v28 + 28);
    updated = v24;
    v43(v24, v44, v14);
    sub_100023EBC();
    sub_10015BC68();
    v45 = v34 + *(v28 + 24);
    if (*(v45 + 32))
    {

      sub_100007C3C();
      sub_10015BC10(v77, v46);
      sub_100006598();
      sub_10015BC10(v34, v47);
      sub_10015BC10(v37, v28);
      type metadata accessor for RetryConfiguration(0);
      v48 = v82;
      sub_100004798();
      sub_10000A7C0(v49, v50, v51, v52);
      v54 = v83;
      v53 = v84;
    }

    else
    {
      v69 = *(v45 + 16);
      if (*(v45 + 8))
      {
        v45 += 24;
      }

      v70 = *v45;
      v71 = v80;
      v43(v80, (v34 + *(v28 + 28)), v14);

      sub_100007C3C();
      sub_10015BC10(v77, v72);
      sub_100006598();
      sub_10015BC10(v34, v73);
      sub_10015BC10(v37, v28);
      v48 = v82;
      *v82 = 0;
      *(v48 + 8) = v69;
      *(v48 + 16) = v70;
      v74 = type metadata accessor for RetryConfiguration(0);
      v53 = v84;
      (*(v84 + 32))(v48 + *(v74 + 28), v71, v14);
      sub_10000A7C0(v48, 0, 1, v74);
      v54 = v83;
    }

    *v54 = v78;
    *(v54 + 1) = v42;
    v75 = type metadata accessor for MercuryCacheMetadata(0);
    v76 = *(v53 + 32);
    v76(&v54[v75[5]], v79, v14);
    v76(&v54[v75[6]], updated, v14);
    return sub_10015BCC4(v48, &v54[v75[7]]);
  }

  else
  {
    sub_100007C3C();
    sub_10015BC10(a1, v55);
    sub_10015BBB4();
    v57 = *v8;
    v56 = v8[1];
    v58 = updated;
    v59 = *(updated + 5);
    v60 = type metadata accessor for MercuryCacheMetadata(0);
    v61 = v83;
    v62 = *(v84 + 16);
    v62(&v83[v60[5]], v8 + v59, v14);
    v62(&v61[v60[6]], v8 + *(v58 + 28), v14);

    sub_10015BC10(v8, type metadata accessor for MercuryCacheUpdateData.Success);
    v63 = v60[7];
    type metadata accessor for RetryConfiguration(0);
    sub_100004798();
    result = sub_10000A7C0(v64, v65, v66, v67);
    *v61 = v57;
    *(v61 + 1) = v56;
  }

  return result;
}

uint64_t sub_10015A0FC()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026E8B0 = qword_100287880;
}

uint64_t sub_10015A160()
{
  sub_100004E28();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (updated = type metadata accessor for CacheUpdateRun(0), v5 = *(updated + 20), (static Date.== infix(_:_:)()))
  {
    v6 = *(v1 + *(updated + 24)) ^ *(v0 + *(updated + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10015A1EC(char a1)
{
  result = 0x756F437972746572;
  switch(a1)
  {
    case 1:
      result = 0x797274655278616DLL;
      break;
    case 2:
      result = 0x6C65447972746572;
      break;
    case 3:
      result = 0x74616E696769726FLL;
      break;
    case 4:
      result = 0x727465527478656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015A2B4@<X0>(uint64_t a1@<X8>)
{
  if (*v1 >= v1[1])
  {
    v6 = 1;
  }

  else
  {
    v3 = type metadata accessor for RetryConfiguration(0);
    v4 = v1[2];
    v5 = v1 + *(v3 + 28);
    Date.addingTimeInterval(_:)();
    v6 = 0;
  }

  v7 = type metadata accessor for Date();

  return sub_10000A7C0(a1, v6, 1, v7);
}

uint64_t sub_10015A330(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100004E28();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for RetryConfiguration(0) + 28);

  return static Date.== infix(_:_:)();
}

void sub_10015A3B8()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v4);
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  sub_10001CC2C();
  v10 = type metadata accessor for Date();
  v11 = sub_100002CC4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v18 = (v17 - v16);
  v19 = type metadata accessor for RetryConfiguration(0);
  v20 = sub_100002DDC(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_100002DEC();
  v25 = (v24 - v23);
  v26 = sub_1001553B4(0, v1);
  if ((v27 & 1) == 0)
  {
    v28 = v26;
    v29 = sub_1001553B4(1, v1);
    if ((v30 & 1) == 0)
    {
      v31 = v29;
      v32 = sub_1001553C0(2, v1);
      if ((v33 & 1) == 0)
      {
        v48 = v32;
        sub_100155474(3, v1, v9);
        sub_1000067A0(v9, 1, v10);
        if (!v34)
        {

          v45 = *(v13 + 32);
          v45(v18, v9, v10);
          *v25 = v28;
          v25[1] = v31;
          v25[2] = v48;
          v45(v25 + *(v19 + 28), v18, v10);
          sub_1000054C8();
          sub_10015BBB4();
          v46 = 0;
          goto LABEL_10;
        }

        sub_10000A00C(v9, &unk_100271EA0, &qword_1001E77F0);
      }
    }
  }

  if (qword_100268768 != -1)
  {
    sub_10000C10C();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v35 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v35);
  v37 = *(v36 + 72);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  LogInterpolation.init(stringLiteral:)();
  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v49 = 0xD000000000000025;
  v50 = 0x80000001001FEBE0;
  v40 = Dictionary.description.getter();
  v42 = v41;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v51 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v49, &qword_10026D350, &qword_1001E6050);
  v44 = static os_log_type_t.info.getter();
  sub_1000036B0(v44);

  v46 = 1;
LABEL_10:
  sub_10000A7C0(v3, v46, 1, v19);
  sub_100005F14();
}

void sub_10015A76C()
{
  sub_100003D74();
  v1 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v1);
  v3 = *(v2 + 64);
  sub_100004E78();
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *&v17 = 0x756F437972746572;
  *(&v17 + 1) = 0xEA0000000000746ELL;
  sub_100005D64();
  v8 = *v0;
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v8;
  strcpy(&v17, "maxRetryCount");
  HIWORD(v17) = -4864;
  sub_100005D64();
  v9 = *(v0 + 1);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v9;
  *&v17 = 0x6C65447972746572;
  *(&v17 + 1) = 0xEA00000000007961;
  sub_100005D64();
  v10 = *(v0 + 2);
  *(inited + 240) = &type metadata for Double;
  *(inited + 216) = v10;
  *&v17 = 0x74616E696769726FLL;
  *(&v17 + 1) = 0xEF657461446E6F69;
  sub_100005D64();
  v11 = *(type metadata accessor for RetryConfiguration(0) + 28);
  v12 = type metadata accessor for Date();
  *(inited + 312) = v12;
  v13 = sub_100017E64((inited + 288));
  v14 = *(v12 - 8);
  (*(v14 + 16))(v13, &v0[v11], v12);
  v19 = Dictionary.init(dictionaryLiteral:)();
  sub_10015A2B4(v6);
  sub_1000067A0(v6, 1, v12);
  if (v15)
  {
    sub_10000A00C(v6, &unk_100271EA0, &qword_1001E77F0);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v12;
    v16 = sub_100017E64(&v17);
    (*(v14 + 32))(v16, v6, v12);
  }

  sub_1001591D8(&v17, 4);
  sub_10000A00C(&v17, &qword_10026D350, &qword_1001E6050);
  sub_100005F14();
}

void sub_10015AA14()
{
  sub_100003D74();
  v1 = v0;
  v52 = v2;
  v3 = type metadata accessor for Date();
  v4 = sub_100002CC4(v3);
  v51 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000056E8();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v14);
  v16 = *(v15 + 64);
  sub_100004E78();
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = sub_10001CC2C();
  v21 = type metadata accessor for RetryConfiguration(v20);
  v22 = sub_100002DDC(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_100002DEC();
  v27 = (v26 - v25);
  v28 = type metadata accessor for MercuryCacheMetadata(0);
  v29 = v28[7];
  sub_10015BD34();
  sub_1000067A0(v19, 1, v21);
  if (v30)
  {
    sub_10000A00C(v19, &qword_10026E7C8, &unk_1001EE2A0);
    v32 = v28[5];
    v31 = v28[6];
    sub_100092A84();
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000054C8();
    sub_10015BBB4();
    v37 = *(v21 + 28);
    if (*v27 < v27[1])
    {
      v38 = v27[2];
      Date.addingTimeInterval(_:)();
      sub_100006E24();
      sub_10015BC10(v27, v39);
      v40 = *(v51 + 32);
      v40(v13, v10, v3);
      v42 = *v1;
      v41 = *(v1 + 1);
      updated = type metadata accessor for CacheUpdateRun(0);
      v44 = v52;
      v40(v52 + *(updated + 20), v13, v3);
      *v44 = v42;
      v44[1] = v41;
      *(v44 + *(updated + 24)) = 1;
      v45 = v44;
LABEL_9:
      sub_10000A7C0(v45, 0, 1, updated);

      goto LABEL_10;
    }

    v32 = v28[5];
    sub_100092A84();
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_100006E24();
    sub_10015BC10(v27, v47);
    if ((v46 & 1) == 0)
    {
LABEL_8:
      v49 = *v1;
      v48 = *(v1 + 1);
      updated = type metadata accessor for CacheUpdateRun(0);
      v50 = v52;
      (*(v51 + 16))(v52 + *(updated + 20), &v1[v32], v3);
      *v50 = v49;
      v50[1] = v48;
      *(v50 + *(updated + 24)) = 0;
      v45 = v50;
      goto LABEL_9;
    }
  }

  type metadata accessor for CacheUpdateRun(0);
  sub_100004798();
  sub_10000A7C0(v33, v34, v35, v36);
LABEL_10:
  sub_100005F14();
}

void sub_10015AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100003D74();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for RetryConfiguration(0);
  v27 = sub_100002DDC(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100002DEC();
  v32 = v31 - v30;
  v33 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v33);
  v35 = *(v34 + 64);
  sub_100004E78();
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  v39 = sub_10007B9A4(&qword_10026EA98, &qword_1001F1EC0);
  sub_100002DDC(v39);
  v41 = *(v40 + 64);
  sub_100004E78();
  __chkstk_darwin(v42);
  v44 = &a9 - v43;
  v45 = *v25 == *v23 && v25[1] == v23[1];
  if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v46 = type metadata accessor for MercuryCacheMetadata(0);
    v47 = v46[5];
    if (static Date.== infix(_:_:)())
    {
      v48 = v46[6];
      if (static Date.== infix(_:_:)())
      {
        v49 = v46[7];
        v50 = *(v39 + 48);
        sub_10015BD34();
        sub_10015BD34();
        sub_1000067A0(v44, 1, v26);
        if (!v45)
        {
          sub_10015BD34();
          sub_1000067A0(&v44[v50], 1, v26);
          if (!v51)
          {
            sub_1000054C8();
            sub_10015BBB4();
            if (*v38 == *v32 && *(v38 + 1) == *(v32 + 8) && *(v38 + 2) == *(v32 + 16))
            {
              v55 = *(v26 + 28);
              static Date.== infix(_:_:)();
              sub_10015BC10(v32, type metadata accessor for RetryConfiguration);
              sub_10015BC10(v38, type metadata accessor for RetryConfiguration);
              sub_10000A00C(v44, &qword_10026E7C8, &unk_1001EE2A0);
              goto LABEL_23;
            }

            sub_10015BC10(v32, type metadata accessor for RetryConfiguration);
            sub_10015BC10(v38, type metadata accessor for RetryConfiguration);
            v53 = &qword_10026E7C8;
            v54 = &unk_1001EE2A0;
LABEL_22:
            sub_10000A00C(v44, v53, v54);
            goto LABEL_23;
          }

          sub_100006E24();
          sub_10015BC10(v38, v52);
LABEL_16:
          v53 = &qword_10026EA98;
          v54 = &qword_1001F1EC0;
          goto LABEL_22;
        }

        sub_1000067A0(&v44[v50], 1, v26);
        if (!v45)
        {
          goto LABEL_16;
        }

        sub_10000A00C(v44, &qword_10026E7C8, &unk_1001EE2A0);
      }
    }
  }

LABEL_23:
  sub_100005F14();
}

void sub_10015B034()
{
  sub_100003D74();
  v1 = v0;
  v2 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  v76 = &v73 - v6;
  v7 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v8 = sub_100003D10(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000056E8();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v73 - v15;
  v17 = type metadata accessor for Date();
  v18 = sub_100002CC4(v17);
  v79 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1000056E8();
  v77 = (v22 - v23);
  sub_100003F08();
  __chkstk_darwin(v24);
  v78 = &v73 - v25;
  v26 = type metadata accessor for MercuryCacheMetadata(0);
  v27 = sub_100002DDC(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100002DEC();
  v32 = (v31 - v30);
  v34 = *(v33 + 28);
  type metadata accessor for RetryConfiguration(0);
  sub_100004798();
  v75 = v35;
  sub_10000A7C0(v36, v37, v38, v35);
  sub_10000C45C();
  v80 = v39;
  v81 = v40;
  sub_10000A8CC();
  AnyHashable.init<A>(_:)();
  sub_100011ADC();
  sub_10000E1E8(v82);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  if ((swift_dynamicCast() & 1) != 0 && (v41 = v84) != 0)
  {
    v74 = v83;
    sub_100017FA8();
    v80 = v42;
    v81 = v43;
    sub_10000A8CC();
    AnyHashable.init<A>(_:)();
    sub_100011ADC();
    sub_10000E1E8(v82);
    swift_dynamicCast();
    sub_100003E6C();
    sub_10000A7C0(v44, v45, v46, v47);
    sub_100009EC4(v16);
    if (v59)
    {

      sub_10000A00C(v16, &unk_100271EA0, &qword_1001E77F0);
    }

    else
    {
      v73 = v1;
      v51 = v16;
      v52 = *(v79 + 32);
      v52(v78, v51, v17);
      sub_10000B048();
      v80 = v53;
      v81 = v54;
      sub_10000A8CC();
      AnyHashable.init<A>(_:)();
      sub_100011ADC();
      sub_10000E1E8(v82);
      swift_dynamicCast();
      sub_100003E6C();
      sub_10000A7C0(v55, v56, v57, v58);
      sub_100009EC4(v13);
      if (!v59)
      {
        v52(v77, v13, v17);
        *v32 = v74;
        *(v32 + 1) = v41;
        v61 = v78;
        v60 = v79;
        v62 = *(v79 + 16);
        v62(&v32[*(v26 + 20)], v78, v17);
        v62(&v32[*(v26 + 24)], v77, v17);
        sub_100017DE4();
        v80 = v64;
        v81 = v63;
        sub_10000A8CC();
        AnyHashable.init<A>(_:)();
        sub_100011ADC();

        sub_10000E1E8(v82);
        sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        v65 = swift_dynamicCast();
        if (v65)
        {
          v66 = v73;
          v67 = v76;
          if (v83)
          {
            sub_10015A3B8();
            v68 = *(v60 + 8);
            v68(v77, v17);
            v68(v61, v17);
LABEL_17:
            sub_10015BD90(v67, &v32[v34]);
            sub_1000033B0();
            sub_10015BC68();
            sub_10000A7C0(v66, 0, 1, v26);
            sub_10015BC10(v32, type metadata accessor for MercuryCacheMetadata);
            goto LABEL_8;
          }
        }

        else
        {
          v66 = v73;
          v67 = v76;
        }

        v69 = *(v60 + 8);
        v69(v77, v17);
        v69(v61, v17);
        sub_100004798();
        sub_10000A7C0(v70, v71, v72, v75);
        goto LABEL_17;
      }

      (*(v79 + 8))(v78, v17);

      sub_10000A00C(v13, &unk_100271EA0, &qword_1001E77F0);
    }
  }

  else
  {
  }

  sub_10000A00C(&v32[v34], &qword_10026E7C8, &unk_1001EE2A0);
  sub_100004798();
  sub_10000A7C0(v48, v49, v50, v26);
LABEL_8:
  sub_100005F14();
}

void sub_10015B5AC()
{
  sub_100003D74();
  v1 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  sub_100003D10(v1);
  v3 = *(v2 + 64);
  sub_100004E78();
  __chkstk_darwin(v4);
  v6 = &v33[-1] - v5;
  Dictionary.init(dictionaryLiteral:)();
  v8 = *v0;
  v7 = v0[1];
  v40 = &type metadata for String;
  v37 = v8;
  v38 = v7;
  sub_10000C45C();
  *&v34[0] = v9;
  *(&v34[0] + 1) = v10;

  sub_10000AA50();
  sub_100011BAC(&v37, v34);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100019D14();
  sub_10000E1E8(&v35);
  sub_100002C00(&v37);
  v11 = type metadata accessor for MercuryCacheMetadata(0);
  v12 = v11[5];
  v13 = type metadata accessor for Date();
  v40 = v13;
  v14 = sub_100017E64(&v37);
  v15 = *(*(v13 - 8) + 16);
  v15(v14, v0 + v12, v13);
  sub_100017FA8();
  *&v34[0] = v16;
  *(&v34[0] + 1) = v17;
  sub_10000AA50();
  sub_100011BAC(&v37, v34);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100019D14();
  sub_10000E1E8(&v35);
  sub_100002C00(&v37);
  v18 = v11[6];
  v40 = v13;
  v19 = sub_100017E64(&v37);
  v15(v19, v0 + v18, v13);
  sub_10000B048();
  *&v34[0] = v20;
  *(&v34[0] + 1) = v21;
  sub_10000AA50();
  sub_100011BAC(&v37, v34);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100019D14();
  v22 = v33[0];
  sub_10000E1E8(&v35);
  sub_100002C00(&v37);
  v23 = v11[7];
  sub_10015BD34();
  v24 = type metadata accessor for RetryConfiguration(0);
  sub_1000067A0(v6, 1, v24);
  if (v25)
  {
    sub_10000A00C(v6, &qword_10026E7C8, &unk_1001EE2A0);
    v27 = 0;
    v29 = 0;
    v38 = 0;
    v39 = 0;
  }

  else
  {
    sub_10015A76C();
    v27 = v26;
    sub_100006E24();
    sub_10015BC10(v6, v28);
    v29 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  }

  v37 = v27;
  v40 = v29;
  sub_10015BD34();
  if (v36)
  {
    sub_100002C4C(&v35, v34);
    sub_100017DE4();
    v33[0] = v31;
    v33[1] = v30;
    AnyHashable.init<A>(_:)();
    sub_100011BAC(v34, v33);
    swift_isUniquelyReferenced_nonNull_native();
    v32 = v22;
    sub_1000AC178(v33, &v35);
    sub_10000E1E8(&v35);
    sub_100002C00(v34);
  }

  else
  {
    sub_10000A00C(&v35, &qword_10026D350, &qword_1001E6050);
  }

  sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
  sub_100005F14();
}

BOOL sub_10015B904()
{
  v0 = *(type metadata accessor for CacheUpdateRun(0) + 20);
  type metadata accessor for Date();
  sub_100092A84();
  return (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0;
}

uint64_t sub_10015B97C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&qword_10026E8B8, &unk_1001EE2F0);
  sub_100003D10(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  updated = type metadata accessor for CacheUpdateRun(0);
  v9 = sub_100002DDC(updated);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v14 = v13 - v12;
  sub_10015AA14();
  if (sub_100009F34(v7, 1, updated) == 1)
  {
    sub_10000A00C(v7, &qword_10026E8B8, &unk_1001EE2F0);
LABEL_6:
    sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
    sub_100004798();
    return sub_10000A7C0(v19, v20, v21, v22);
  }

  sub_10015BBB4();
  v15 = *(updated + 20);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    sub_1000080E8();
    goto LABEL_6;
  }

  v16 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) + 48);
  sub_1000033B0();
  sub_10015BC68();
  v17 = type metadata accessor for Date();
  sub_100002DDC(v17);
  (*(v18 + 16))(a1 + v16, v14 + v15);
  sub_1000080E8();
  sub_100003E6C();
  return sub_10000A7C0(v19, v20, v21, v22);
}

uint64_t sub_10015BBB4()
{
  sub_100004E28();
  v3 = v2(0);
  sub_100002DDC(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_10015BC10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10015BC68()
{
  sub_100004E28();
  v3 = v2(0);
  sub_100002DDC(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_10015BCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015BD34()
{
  sub_100004E28();
  v4 = sub_10007B9A4(v2, v3);
  sub_100002DDC(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_10015BD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015BE28()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10015BEDC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CacheUpdateRun.RunType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_10015C064()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10015C0F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10015C0F8()
{
  if (!qword_10026EA58)
  {
    type metadata accessor for RetryConfiguration(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10026EA58);
    }
  }
}

unint64_t sub_10015C154()
{
  result = qword_10026EA90;
  if (!qword_10026EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026EA90);
  }

  return result;
}

uint64_t sub_10015C1A8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_10015D8D8(a1, sub_10015DCB4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_10015C22C()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026EAA0 = qword_100287880;
}

uint64_t sub_10015C290()
{
  v0 = sub_10015D894();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v0;
  v5 = &off_10024ECA0;
  *&v3 = sub_10015C310();
  type metadata accessor for MercuryCacheMetadataStore();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_10003B104(&v3, v1 + 112);
  qword_1002878A8 = v1;
  return result;
}

id sub_10015C310()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithDomain:v1];

  return v2;
}

uint64_t sub_10015C384(void *a1)
{
  v2 = sub_10007B9A4(&qword_10026EBA8, &unk_1001EE500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for MercuryCacheMetadata(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 stringValue];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10015D5F8(v10);

  v12 = *(v11 + 64);
  v13 = *(v11 + 32);
  sub_100004E5C();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    if (!v16)
    {
      break;
    }

LABEL_6:
    v23 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v24 = *(*(v11 + 56) + ((v20 << 9) | (8 * v23)));

    sub_10015B034();
    if (sub_100009F34(v5, 1, v6) == 1)
    {
      result = sub_10000A064(v5, &qword_10026EBA8, &unk_1001EE500);
    }

    else
    {
      sub_10015DCF8(v5, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = v21[2];
        sub_1000D5830();
        v21 = v28;
      }

      v25 = v21[2];
      v26 = v25 + 1;
      if (v25 >= v21[3] >> 1)
      {
        v32 = v25 + 1;
        v29 = v25;
        sub_1000D5830();
        v25 = v29;
        v26 = v32;
        v21 = v30;
      }

      v21[2] = v26;
      result = sub_10015DCF8(v34, v21 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25);
    }
  }

  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v21;
    }

    v16 = *(v11 + 64 + 8 * v20);
    ++v22;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10015C64C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  sub_100002CFC(v4);
  v3[5] = v5;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10015C710, v2, 0);
}

uint64_t sub_10015C710()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = *(v0 + 56);
    v3 = *(v0 + 40);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyDictionarySingleton;
    v6 = *(v3 + 72);
    while (1)
    {
      v32 = v4;
      v33 = v2;
      v8 = *(v0 + 48);
      v7 = *(v0 + 56);
      sub_10015DB84(v4, v7);
      v9 = *v7;
      v10 = *(v31 + 8);
      sub_10015DB84(v7, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v5;
      result = sub_100012A94();
      v14 = v5[2];
      v15 = (v13 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = v13;
      sub_10007B9A4(&qword_10026EBA0, &qword_1001EE4F8);
      v19 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16);
      v5 = v34;
      if (v19)
      {
        v20 = sub_100012A94();
        if ((v18 & 1) != (v21 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v17 = v20;
      }

      v22 = *(v0 + 48);
      if (v18)
      {
        sub_10015DD5C(v22, v34[7] + v17 * v6);
      }

      else
      {
        v34[(v17 >> 6) + 8] |= 1 << v17;
        v23 = (v34[6] + 16 * v17);
        *v23 = v9;
        v23[1] = v10;
        result = sub_10015DCF8(v22, v34[7] + v17 * v6);
        v24 = v34[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v34[2] = v26;
      }

      sub_10015DC58(*(v0 + 56));
      v4 = v32 + v6;
      v2 = v33 - 1;
      if (v33 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_14:
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  v29 = *(v0 + 32);
  sub_10015C96C(v5, *(v0 + 24));

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_10015C96C(uint64_t a1, void *a2)
{
  v5 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v58 - v10);
  v60 = a2;
  v12 = [a2 stringValue];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = v2;
  v59 = sub_10015D5F8(v13);

  v15 = a1 + 64;
  v14 = *(a1 + 64);
  v16 = *(a1 + 32);
  sub_100004E5C();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v67 = a1;

  v22 = 0;
  v23 = _swiftEmptyDictionarySingleton;
  v62 = v21;
  v63 = a1 + 64;
  v65 = v9;
  v66 = v5;
  v64 = v11;
  if (v19)
  {
LABEL_6:
    while (1)
    {
      v25 = __clz(__rbit64(v19)) | (v22 << 6);
      v26 = *(v67 + 56);
      v27 = (*(v67 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = type metadata accessor for MercuryCacheMetadata(0);
      sub_10015DB84(v26 + *(*(v30 - 8) + 72) * v25, v11 + *(v5 + 48));
      *v11 = v29;
      v11[1] = v28;
      sub_10015DBE8(v11, v9);
      v32 = *v9;
      v31 = v9[1];

      sub_10015B5AC();
      v34 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v23;
      v36 = sub_100012A94();
      v38 = v23[2];
      v39 = (v37 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        break;
      }

      v41 = v36;
      v42 = v37;
      sub_10007B9A4(&qword_10026EB98, &qword_1001EE4F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v40))
      {
        v43 = sub_100012A94();
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_20;
        }

        v41 = v43;
      }

      v23 = v68;
      if (v42)
      {
        v45 = v68[7];
        v46 = *(v45 + 8 * v41);
        *(v45 + 8 * v41) = v34;
      }

      else
      {
        v68[(v41 >> 6) + 8] |= 1 << v41;
        v47 = (v23[6] + 16 * v41);
        *v47 = v32;
        v47[1] = v31;
        *(v23[7] + 8 * v41) = v34;
        v48 = v23[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_19;
        }

        v23[2] = v50;
      }

      v19 &= v19 - 1;
      v5 = v66;
      v51 = *(v66 + 48);
      v11 = v64;
      sub_10000A064(v64, &qword_10026E7D8, &qword_1001EE2B8);
      v9 = v65;
      sub_10015DC58(v65 + v51);
      v21 = v62;
      v15 = v63;
      if (!v19)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        v52 = sub_10015C1A8(v23, v59);
        v53 = [v60 stringValue];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        sub_10015D1DC(v52, v54, v56);
      }

      v19 = *(v15 + 8 * v24);
      ++v22;
      if (v19)
      {
        v22 = v24;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015CD10(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10015CD30, v1, 0);
}

uint64_t sub_10015CD30()
{
  if (qword_100268770 != -1)
  {
    sub_100006E3C();
  }

  v1 = *(v0 + 64);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  *(v0 + 40) = type metadata accessor for MercuryCacheMetadataStore();
  *(v0 + 16) = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  _StringGuts.grow(_:)(30);

  v12 = [v10 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = 0xD00000000000001CLL;
  *(v0 + 24) = 0x80000001001FEC80;
  static LogInterpolation.sensitive(_:)();
  sub_10000A064(v0 + 16, &qword_10026D350, &qword_1001E6050);
  v17 = static os_log_type_t.info.getter();
  sub_1000036B0(v17);

  v18 = v11[18];
  sub_100003CA8(v11 + 14, v11[17]);
  v19 = *(v18 + 16);
  v20 = sub_10000BA94();
  v21(v20);
  if (v7)
  {

    goto LABEL_7;
  }

  if (!*(v0 + 40))
  {
    sub_10000A064(v0 + 16, &qword_10026D350, &qword_1001E6050);
    goto LABEL_7;
  }

  sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
    v22 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_8;
  }

  v22 = *(v0 + 48);
LABEL_8:
  v23 = [*(v0 + 56) stringValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = sub_100012A94();
  if (v25)
  {
    v26 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v22[3];
    sub_10007B9A4(&qword_10026AF50, &unk_1001EE4E0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28);
    v29 = *(v22[6] + 16 * v26 + 8);

    v30 = *(v22[7] + 8 * v26);
    sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
    _NativeDictionary._delete(at:)();
  }

  v31 = v11[17];
  v32 = v11[18];
  sub_100003CA8(v11 + 14, v31);
  *(v0 + 40) = sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  *(v0 + 16) = v22;
  (*(v32 + 8))(v0 + 16, 0xD00000000000001ELL, 0x80000001001FEC40, v31, v32);
  sub_100002C00((v0 + 16));
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10015D1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24._countAndFlagsBits = a2;
  v24._object = a3;
  if (qword_100268770 != -1)
  {
    sub_100006E3C();
  }

  v5 = qword_10026EAA0;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v8 = *(v7 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v28 = type metadata accessor for MercuryCacheMetadataStore();
  v26 = v3;

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
  _StringGuts.grow(_:)(30);

  v26 = 0xD00000000000001CLL;
  v27 = 0x80000001001FEC60;
  String.append(_:)(v24);
  v28 = &type metadata for String;
  static LogInterpolation.sensitive(_:)();
  sub_10000A064(&v26, &qword_10026D350, &qword_1001E6050);
  v26 = 0x203A68746977;
  v27 = 0xE600000000000000;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v13._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v13);

  v28 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v26, &qword_10026D350, &qword_1001E6050);
  v14 = static os_log_type_t.info.getter();
  sub_1000036B0(v14);

  v15 = v3[18];
  sub_100003CA8(v3 + 14, v3[17]);
  v16 = *(v15 + 16);
  v17 = sub_10000BA94();
  v18(v17);
  if (v5)
  {
  }

  else if (v28)
  {
    sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
    if (swift_dynamicCast())
    {
      v19 = v25;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000A064(&v26, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  v19 = Dictionary.init(dictionaryLiteral:)();
LABEL_8:

  swift_isUniquelyReferenced_nonNull_native();
  v26 = v19;
  sub_1000ACAF8();
  v20 = v26;
  v21 = v4[17];
  v22 = v4[18];
  sub_100003CA8(v4 + 14, v21);
  v28 = sub_10007B9A4(&qword_10026EB90, &qword_1001EE4D8);
  v26 = v20;
  (*(v22 + 8))(&v26, 0xD00000000000001ELL, 0x80000001001FEC40, v21, v22);
  return sub_100002C00(&v26);
}

uint64_t sub_10015D5F8(uint64_t a1)
{
  v4 = v1[18];
  sub_100003CA8(v1 + 14, v1[17]);
  v5 = *(v4 + 16);
  v6 = sub_10000BA94();
  v7(v6);
  if (v2)
  {

    goto LABEL_11;
  }

  if (!v11)
  {
    v9 = v10;
LABEL_10:
    sub_10000A064(v9, &qword_10026D350, &qword_1001E6050);
    goto LABEL_11;
  }

  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v10, v12, &v12);

  sub_10000E1E8(v10);
  if (!v13)
  {
    v9 = &v12;
    goto LABEL_10;
  }

  sub_10007B9A4(&qword_10026E7E0, &qword_1001EEA50);
  if (swift_dynamicCast())
  {
    return a1;
  }

LABEL_11:
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10015D7BC()
{
  sub_100002C00((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10015D818(uint64_t a1)
{
  result = sub_10015D840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015D840()
{
  result = qword_10026EB80;
  if (!qword_10026EB80)
  {
    type metadata accessor for MercuryCacheMetadataStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026EB80);
  }

  return result;
}

unint64_t sub_10015D894()
{
  result = qword_10026EB88;
  if (!qword_10026EB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026EB88);
  }

  return result;
}

uint64_t sub_10015D8D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  sub_1001CAF10(v43);
  v6 = v43[1];
  v7 = v43[3];
  v8 = v43[4];
  v38 = v43[5];
  v39 = v43[0];
  v9 = (v43[2] + 64) >> 6;

  v37 = v6;
  if (v8)
  {
    while (1)
    {
      v40 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v39 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v39 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;

      v38(v41, v42);

      v16 = v41[0];
      v17 = v41[1];
      v18 = v41[2];
      v19 = *v44;
      v21 = sub_100012A94();
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (*(v19 + 24) >= v22 + v23)
      {
        if ((v40 & 1) == 0)
        {
          sub_10007B9A4(&qword_10026EB98, &qword_1001EE4F0);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v25 = v44;
        sub_1001C6778();
        v26 = *v25;
        v27 = sub_100012A94();
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v44;
      if (v24)
      {

        v30 = v29[7];
        v31 = *(v30 + 8 * v21);
        *(v30 + 8 * v21) = v18;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v32 = (v29[6] + 16 * v21);
        *v32 = v16;
        v32[1] = v17;
        *(v29[7] + 8 * v21) = v18;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_23;
        }

        v29[2] = v35;
      }

      a4 = 1;
      v7 = v10;
      v6 = v37;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_10004EB70();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v40 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015DB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026E7D8, &qword_1001EE2B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DC58(uint64_t a1)
{
  v2 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015DCB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001CB0F0(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_10015DCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MercuryCacheMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10015DDC0(void *a1)
{
  v1 = [a1 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 95;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  return 0xD00000000000001ELL;
}

uint64_t sub_10015DE78()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026EBB0 = qword_100287880;
}

uint64_t sub_10015DEFC()
{
  if (qword_100268780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  *(v0 + 296) = qword_10026EBB0;
  *(v0 + 304) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = *(type metadata accessor for LogInterpolation() - 8);
  *(v0 + 312) = *(v2 + 72);
  *(v0 + 60) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v3 = *(v1 + 24);
  *(v0 + 320) = v3;
  v4 = *(v1 + 32);
  *(v0 + 328) = v4;
  v5 = *(v1 + 40);
  *(v0 + 57) = v5;
  *(v0 + 216) = *(v1 + 8);
  *(v0 + 88) = &unk_10024F910;
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  v7 = *(v1 + 25);
  v8 = *(v1 + 16);
  v6[1] = *v1;
  v6[2] = v8;
  *(v6 + 41) = v7;
  sub_100027D8C(v0 + 216, v0 + 232);

  v9 = v3;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = *(v0 + 288);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 64));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  v13._countAndFlagsBits = 0x646F6D2068746977;
  v13._object = 0xEB00000000206C65;
  String.append(_:)(v13);
  v14 = *(v12 + 16);
  *(v0 + 16) = *v12;
  *(v0 + 32) = v14;
  *(v0 + 40) = v9;
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  _print_unlocked<A, B>(_:_:)();
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  *(v0 + 120) = &type metadata for String;
  *(v0 + 96) = v15;
  *(v0 + 104) = v16;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v0 + 96);
  v17 = static os_log_type_t.info.getter();
  sub_1000036B0(v17);

  if (qword_100268798 != -1)
  {
    swift_once();
  }

  v18 = qword_1002878B0;
  *(v0 + 336) = qword_1002878B0;
  v19 = qword_100268778;
  v20 = v9;
  if (v19 != -1)
  {
    swift_once();
  }

  *(v0 + 344) = qword_1002878A8;
  type metadata accessor for MercuryCacheDatabase();
  sub_10014D878();
  *(v0 + 352) = v21;
  sub_100042428();
  *(v0 + 360) = sub_10002411C();
  type metadata accessor for MercuryCacheUpdateStateManager();
  v22 = swift_allocObject();
  *(v0 + 368) = v22;
  swift_defaultActor_initialize();
  *(v22 + 112) = &_swiftEmptySetSingleton;
  type metadata accessor for DynamicActivityTaskScheduler();
  *(v0 + 376) = swift_allocObject();

  return _swift_task_switch(sub_10015E318, v18, 0);
}

uint64_t sub_10015E44C()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_10015E5C4;
  }

  else
  {
    v3 = sub_10015E560;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015E560()
{
  v1 = *(v0 + 384);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015E5C4()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = ((*(v0 + 60) + 32) & ~*(v0 + 60)) + 2 * *(v0 + 312);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(v0 + 152) = &unk_10024F910;
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  v7 = *(v4 + 25);
  v8 = v4[1];
  v6[1] = *v4;
  v6[2] = v8;
  *(v6 + 41) = v7;
  sub_100027D8C(v0 + 216, v0 + 264);
  v9 = v2;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = *(v0 + 400);
  v13 = *(v0 + 384);
  v14 = *(v0 + 312);
  v15 = *(v0 + 296);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 128));
  swift_getErrorValue();
  v16 = *(v0 + 192);
  v17 = *(v0 + 200);
  *(v0 + 184) = v17;
  v18 = sub_100017E64((v0 + 160));
  (*(*(v17 - 8) + 16))(v18, v16, v17);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 160);
  v19 = static os_log_type_t.error.getter();
  sub_1000036B0(v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10015E7C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_10015E800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_10015E85C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for NetworkObserver.NetworkError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10015E898(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_10015E8D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10015E91C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10015E940(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10015E980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10015E9E0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_10007B9A4(&qword_10026ECC0, &unk_1001EE830);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  v12 = __chkstk_darwin(v10);
  v32 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v30 = &v27 - v14;
  v15 = 0;
  v16 = *(a3 + 16);
  v33 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v16 == v15)
    {
      return v33;
    }

    v17 = *(type metadata accessor for MercuryCacheMetadata(0) - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
    if (v3)
    {
      break;
    }

    if (sub_100009F34(v9, 1, v10) == 1)
    {
      sub_10000A00C(v9, &qword_10026ECC0, &unk_1001EE830);
      ++v15;
    }

    else
    {
      v18 = v30;
      sub_100161E78(v9, v30);
      sub_100161E78(v18, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v33[2];
        sub_1000D5BAC();
        v33 = v23;
      }

      v19 = v33[2];
      v20 = v19 + 1;
      if (v19 >= v33[3] >> 1)
      {
        v28 = v33[2];
        v29 = v19 + 1;
        sub_1000D5BAC();
        v19 = v28;
        v20 = v29;
        v33 = v24;
      }

      ++v15;
      v21 = v33;
      v33[2] = v20;
      sub_100161E78(v32, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19);
    }
  }

  v25 = v33;

  return v25;
}

uint64_t sub_10015ECCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[2] = a1;
  v6 = sub_10015E9E0(sub_100161EE8, v5, a2);

  sub_100160880(&v6);

  sub_10018A334(v6, a3);
}

uint64_t sub_10015ED70()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_10026EBB8 = qword_100287880;
}

uint64_t sub_10015EDD4()
{
  sub_100004768();
  *(v1 + 169) = v2;
  *(v1 + 296) = v3;
  *(v1 + 304) = v0;
  v4 = type metadata accessor for Date();
  *(v1 + 312) = v4;
  sub_100002CFC(v4);
  *(v1 + 320) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 328) = swift_task_alloc();
  v8 = sub_1000047B0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10015EE84()
{
  v1 = *(v0 + 304);
  v11 = *(v1 + 208);
  sub_1000262E4(v1 + 168, v0 + 32);
  v2 = *(v1 + 160);
  *(v0 + 336) = v2;
  v9 = *(v1 + 240);
  v10 = *(v1 + 224);
  sub_1000262E4(v1 + 256, v0 + 112);
  v3 = *(v1 + 152);
  *(v0 + 344) = v3;
  *(v0 + 16) = v11;
  *(v0 + 72) = v2;
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 352) = v5;
  *v5 = v0;
  v5[1] = sub_10015EFA0;
  v6 = *(v0 + 296);
  v7 = *(v0 + 169);

  return sub_10016994C();
}

uint64_t sub_10015EFA0()
{
  sub_1000061B4();
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_10015F528;
  }

  else
  {
    v6 = sub_10015F0C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10015F0C8()
{
  sub_100004768();
  v0[46] = 0;
  v1 = v0[41];
  static Date.now.getter();
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  sub_1000033C8(v2);

  return sub_10015F86C();
}

uint64_t sub_10015F140()
{
  sub_1000061B4();
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 312);
  v5 = *(*v0 + 304);
  v6 = *v0;
  sub_100002D20();
  *v7 = v6;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10015F2A0, v5, 0);
}

uint64_t sub_10015F2A0()
{
  sub_1000061B4();
  if (*(v0 + 169) == 2 && *(v0 + 296) == 0)
  {
    v6 = swift_task_alloc();
    *(v0 + 384) = v6;
    *v6 = v0;
    v6[1] = sub_10015F3A0;
    v7 = *(v0 + 336);

    return sub_10014C558(v7);
  }

  else
  {
    v2 = *(v0 + 328);
    if (*(v0 + 368))
    {
      v3 = *(v0 + 368);
      swift_willThrow();
    }

    sub_100161F74(v0 + 16);

    sub_100002D8C();

    return v4();
  }
}

uint64_t sub_10015F3A0()
{
  sub_100004768();
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 304);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;
  *(v5 + 392) = v6;

  v7 = sub_1000047B0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10015F4A0()
{
  sub_1000061B4();
  v1 = *(v0 + 304);
  sub_1001600A0(*(v0 + 392));
  v2 = *(v0 + 328);
  if (*(v0 + 368))
  {
    v3 = *(v0 + 368);
    swift_willThrow();
  }

  sub_100161F74(v0 + 16);

  sub_100002D8C();

  return v4();
}

uint64_t sub_10015F528()
{
  if (qword_100268788 != -1)
  {
    sub_100006E5C();
  }

  v1 = v0[38];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v0[25] = type metadata accessor for MercuryCacheUpdateCoordinator();
  v0[22] = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = v0[45];
  v8 = v0[43];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 22);
  _StringGuts.grow(_:)(18);

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x64656C69616620;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v0[29] = &type metadata for String;
  v0[26] = 0x726F66206B736154;
  v0[27] = 0xE900000000000020;
  static LogInterpolation.sensitive(_:)();
  sub_10000A00C((v0 + 26), &qword_10026D350, &qword_1001E6050);
  v0[34] = 0;
  v0[35] = 0xE000000000000000;
  v15._countAndFlagsBits = 0x203A68746977;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v0[36] = v7;
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  _print_unlocked<A, B>(_:_:)();
  v16 = v0[34];
  v17 = v0[35];
  v0[33] = &type metadata for String;
  v0[30] = v16;
  v0[31] = v17;
  static LogInterpolation.safe(_:)();
  sub_10000A00C((v0 + 30), &qword_10026D350, &qword_1001E6050);
  v18 = static os_log_type_t.error.getter();
  sub_1000036B0(v18);

  v0[46] = v7;
  v19 = v0[41];
  static Date.now.getter();
  v20 = swift_task_alloc();
  v0[47] = v20;
  *v20 = v0;
  sub_1000033C8(v20);

  return sub_10015F86C();
}

uint64_t sub_10015F86C()
{
  sub_100004768();
  v1[35] = v2;
  v1[36] = v0;
  v3 = *(*(sub_10007B9A4(&qword_10026ECC0, &unk_1001EE830) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v4 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v1[38] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10015F944(uint64_t a1)
{
  v2 = v1[36];
  v3 = *(v2 + 208);
  v1[41] = v3;
  v1[42] = *(v2 + 152);
  return sub_100006E7C(a1, v3);
}

uint64_t sub_10015F968()
{
  sub_100004768();
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  *(v0 + 344) = sub_10015C384(*(v0 + 336));

  return _swift_task_switch(sub_10015F9D4, v2, 0);
}

uint64_t sub_10015F9D4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  sub_10015ECCC(*(v0 + 280), *(v0 + 344), v2);

  if (sub_100009F34(v2, 1, v1) == 1)
  {
    sub_10000A00C(*(v0 + 296), &qword_10026ECC0, &unk_1001EE830);
    if (qword_100268788 != -1)
    {
      sub_100006E5C();
    }

    v3 = *(v0 + 288);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v4);
    v6 = *(v5 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *(v0 + 128) = type metadata accessor for MercuryCacheUpdateCoordinator();
    *(v0 + 104) = v3;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v15 = *(v0 + 336);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 104));
    _StringGuts.grow(_:)(24);

    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    *(v0 + 160) = &type metadata for String;
    *(v0 + 136) = 0xD000000000000016;
    *(v0 + 144) = 0x80000001001FEDB0;
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v0 + 136, &qword_10026D350, &qword_1001E6050);
    v21 = static os_log_type_t.info.getter();
    sub_1000036B0(v21);
  }

  else
  {
    sub_100161E78(*(v0 + 296), *(v0 + 320));
    if (qword_100268788 != -1)
    {
      sub_100006E5C();
    }

    v9 = *(v0 + 288);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v10 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v10);
    v12 = *(v11 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    *(v0 + 192) = type metadata accessor for MercuryCacheUpdateCoordinator();
    *(v0 + 168) = v9;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v22 = *(v0 + 336);
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);
    v25 = *(v0 + 304);
    v56 = *(v0 + 288);
    v54 = v22;
    v55 = *(v0 + 280);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 168));
    _StringGuts.grow(_:)(26);

    v26 = [v22 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    *(v0 + 224) = &type metadata for String;
    *(v0 + 200) = 0xD000000000000018;
    *(v0 + 208) = 0x80000001001FEDD0;
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v0 + 200, &qword_10026D350, &qword_1001E6050);
    *(v0 + 264) = 0;
    *(v0 + 272) = 0xE000000000000000;
    v31._countAndFlagsBits = 0x203A68746977;
    v31._object = 0xE600000000000000;
    String.append(_:)(v31);
    v32 = *(v25 + 48);
    sub_10015DB84(v23, v24);
    v33 = type metadata accessor for Date();
    sub_100002DDC(v33);
    (*(v34 + 16))(v24 + v32, v23 + v32);
    _print_unlocked<A, B>(_:_:)();
    sub_10000A00C(v24, &qword_100269FE0, &unk_1001E7550);
    v35 = *(v0 + 264);
    v36 = *(v0 + 272);
    *(v0 + 256) = &type metadata for String;
    *(v0 + 232) = v35;
    *(v0 + 240) = v36;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(v0 + 232, &qword_10026D350, &qword_1001E6050);
    v37 = static os_log_type_t.info.getter();
    sub_1000036B0(v37);

    v57 = sub_10015DDC0(v54);
    v58 = v38;

    v39._countAndFlagsBits = sub_100023ED4();
    v39._object = 0xE700000000000000;
    String.append(_:)(v39);

    Date.timeIntervalSince(_:)();
    v41 = v40;
    v42 = v54;

    sub_1001CF380();

    v43 = sub_100003CA8((v56 + 112), *(v56 + 136));
    *(v0 + 88) = &unk_10024F910;
    *(v0 + 96) = &off_10024F928;
    v44 = swift_allocObject();
    *(v0 + 64) = v44;
    *(v44 + 16) = v41;
    *(v44 + 24) = v57;
    *(v44 + 32) = v58;
    *(v44 + 40) = v42;
    *(v44 + 48) = &_swiftEmptySetSingleton;
    *(v44 + 56) = 1;
    v45 = *v43;
    v46 = sub_100003CA8((v0 + 64), &unk_10024F910);
    v47 = *(v46 + 25);
    v48 = v46[1];
    *(v0 + 16) = *v46;
    *(v0 + 32) = v48;
    *(v0 + 41) = v47;
    sub_100161BB8(v0 + 16, v45);
    sub_10000A00C(v23, &qword_100269FE0, &unk_1001E7550);
    sub_100002C00((v0 + 64));
  }

  v50 = *(v0 + 312);
  v49 = *(v0 + 320);
  v51 = *(v0 + 296);

  sub_100002D8C();

  return v52();
}

uint64_t sub_1001600A0(double a1)
{
  v2 = v1;
  v4 = *(v1 + 152);
  *&v23 = sub_10015DDC0(v4);
  *(&v23 + 1) = v5;

  v6._countAndFlagsBits = sub_10000A4A0();
  v6._object = 0xE90000000000006CLL;
  String.append(_:)(v6);

  v7 = *(&v23 + 1);
  v21 = v23;
  v8 = qword_100268788;
  v9 = v4;
  if (v8 != -1)
  {
    sub_100006E5C();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v10);
  v12 = *(v11 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *&v24[8] = type metadata accessor for MercuryCacheUpdateCoordinator();
  *&v23 = v2;

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v23);
  LogInterpolation.init(stringLiteral:)();
  v15 = static os_log_type_t.info.getter();
  sub_1000036B0(v15);

  v16 = sub_100003CA8((v2 + 112), *(v2 + 136));
  v22[3] = &unk_10024F910;
  v22[4] = &off_10024F928;
  v17 = swift_allocObject();
  v22[0] = v17;
  *(v17 + 16) = a1;
  *(v17 + 24) = v21;
  *(v17 + 32) = v7;
  *(v17 + 40) = v9;
  *(v17 + 48) = 0;
  *(v17 + 56) = 2;
  v18 = *v16;
  v19 = sub_100003CA8(v22, &unk_10024F910);
  v23 = *v19;
  *v24 = v19[1];
  *&v24[9] = *(v19 + 25);
  sub_100161BB8(&v23, v18);
  return sub_100002C00(v22);
}