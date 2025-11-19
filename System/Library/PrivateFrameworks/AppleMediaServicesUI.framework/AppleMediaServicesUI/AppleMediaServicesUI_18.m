uint64_t sub_1001A8E30(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v41 = a2;
  sub_10004ED94(a3, &v42, &qword_10026D350, &qword_1001E6050);
  if (qword_100268728 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v36 = type metadata accessor for SubscriptionsController();
  aBlock = a4;

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6E6976726573624FLL;
  v15._object = 0xEA00000000002067;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = &type metadata for String;
  aBlock = v16;
  v35[0] = v17;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&aBlock, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0x7365676E61686320;
  v18._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  v19 = static os_log_type_t.info.getter();
  sub_1000036B0(v19);

  v20 = [objc_opt_self() defaultCenter];
  sub_10004ED94(&v41, &aBlock, &qword_10026AEF8, &qword_1001E86A0);
  v21 = v37;
  if (v37)
  {
    v22 = sub_100003CA8(v35, v37);
    v23 = *(v21 - 1);
    v24 = *(v23 + 64);
    __chkstk_darwin(v22);
    v26 = &v35[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26);
    v27 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v23 + 8))(v26, v21);
    sub_100002C00(v35);
  }

  else
  {
    v27 = 0;
  }

  v28 = swift_allocObject();
  swift_weakInit();
  sub_10004ED94(&v41, v39, &qword_10026AEF8, &qword_1001E86A0);
  v29 = swift_allocObject();
  v30 = v39[1];
  *(v29 + 24) = v39[0];
  *(v29 + 16) = v28;
  *(v29 + 40) = v30;
  *(v29 + 56) = v40;
  v37 = sub_1001AA034;
  v38 = v29;
  aBlock = _NSConcreteStackBlock;
  v35[0] = 1107296256;
  v35[1] = sub_1001A9374;
  v36 = &unk_1002528D0;
  v31 = _Block_copy(&aBlock);

  v32 = [v20 addObserverForName:a1 object:v27 queue:0 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_10000A064(&v41, &qword_10026AEF8, &qword_1001E86A0);
}

uint64_t sub_1001A9314(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A7D6C(*a3);
  }

  return result;
}

uint64_t sub_1001A9374(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_1001A9468(void **a1, void **a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100005478();
  if (qword_100268728 != -1)
  {
    sub_100007080();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v10);
  v12 = *(v11 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v29 = type metadata accessor for SubscriptionsController();
  aBlock = v2;

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000100203010;
  v15._countAndFlagsBits = 0xD000000000000019;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v29 = &type metadata for Int;
  aBlock = a1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v16 = sub_10000A064(&aBlock, &qword_10026D350, &qword_1001E6050);
  sub_100007D2C(v16);
  v29 = &type metadata for Int;
  aBlock = a2;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&aBlock, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.debug.getter();
  sub_1000036B0(v18);

  v19 = [objc_allocWithZone(AMSSubscriptionEntitlementsTask) initWithMediaType:a1];
  [v19 setCachePolicy:a2];
  v20 = [v19 performExternalLookup];
  sub_100002FB8();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a1;
  v30 = sub_1001A9FC0;
  v31 = v21;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10008E0EC;
  v29 = &unk_100252808;
  v22 = _Block_copy(&aBlock);

  [v20 addSuccessBlock:v22];
  _Block_release(v22);
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = a1;
  v23[4] = a2;
  v30 = sub_1001A9FC8;
  v31 = v23;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000266E0;
  v29 = &unk_100252858;
  v24 = _Block_copy(&aBlock);

  [v20 addErrorBlock:v24];
  _Block_release(v24);

  return v20;
}

uint64_t sub_1001A985C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);

  v7 = a1;
  [v6 lock];
  sub_1001A98E8(a2, a3, v7);
  [v6 unlock];
}

uint64_t sub_1001A98E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (qword_100268728 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v24 = type metadata accessor for SubscriptionsController();
  v23[0] = a1;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v23);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100203060;
  v13._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v24 = &type metadata for Int;
  v23[0] = a2;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v23, &qword_10026D350, &qword_1001E6050);
  v14._countAndFlagsBits = 0x3A746C7573657220;
  v14._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v15 = [a3 exportObject];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v23[0] = v16;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v23, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.debug.getter();
  sub_1000036B0(v18);

  swift_beginAccess();
  v19 = a3;
  v20 = *(a1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + 16);
  sub_1000ACFA4();
  *(a1 + 16) = v22;
  return swift_endAccess();
}

uint64_t sub_1001A9C2C(uint64_t a1, uint64_t a2)
{
  if (qword_100268728 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E6580;
  v18 = type metadata accessor for SubscriptionsController();
  v16 = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v18 = v15;
  v8 = sub_100017E64(&v16);
  (*(*(v15 - 1) + 16))(v8);
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v16 = 0x203A6570797428;
  v17 = 0xE700000000000000;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6F50656863616320;
  v10._object = 0xEE00203A7963696CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v18 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13);
}

uint64_t sub_1001A9F6C()
{
  sub_1000F8F14();
  sub_100002FB8();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A9FC8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1001A9C2C(a1, v1[2]);
}

uint64_t sub_1001A9FD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A8778();
  }

  return result;
}

uint64_t sub_1001AA040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001A9FD4();
}

uint64_t sub_1001AA050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001AA0AC()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = *(type metadata accessor for LogInterpolation() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v3 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for SyncAction();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v4 = static os_log_type_t.default.getter();
  sub_1000036B0(v4);
}

uint64_t sub_1001AA254()
{
  *&v54 = 0x736E6F69746361;
  *(&v54 + 1) = 0xE700000000000000;
  v0 = AnyHashable.init<A>(_:)();
  sub_100005624(v0, v1, v2, v3, v4, v5, v6, v7, v44, v48[0], v48[1], v49[0], v50, v51, v52, v53, v54);
  sub_10000E1E8(v49);
  if (v55)
  {
    sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    sub_1000070A0();
    sub_1000035BC();
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    sub_100002C5C(&v54);
    v10 = 0;
  }

  strcpy(v48, "allowedEvents");
  HIWORD(v48[1]) = -4864;
  v11 = AnyHashable.init<A>(_:)();
  sub_100005624(v11, v12, v13, v14, v15, v16, v17, v18, v45, v48[0], v48[1], v49[0], v50, v51, v52, v53, v54);
  sub_10000E1E8(v49);
  if (!v55)
  {
    sub_100002C5C(&v54);
LABEL_10:
    v19 = AnyHashable.init<A>(_:)();
    sub_100005624(v19, v20, v21, v22, v23, v24, v25, v26, v46, 0xD000000000000011, 0x80000001001F7680, v49[0], v50, v51, v52, v53, v54);
    sub_10000E1E8(v49);
    if (v55)
    {
      sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
      sub_1000070A0();
      sub_1000035BC();
    }

    else
    {
      sub_100002C5C(&v54);
    }

    goto LABEL_13;
  }

  sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
  if ((sub_1000070A0() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  *&v54 = 0x676F6C6B636162;
  *(&v54 + 1) = 0xE700000000000000;
  v27 = AnyHashable.init<A>(_:)();
  sub_100005624(v27, v28, v29, v30, v31, v32, v33, v34, v46, v48[0], v48[1], v49[0], v50, v51, v52, v53, v54);
  sub_10000E1E8(v49);
  if (v55)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    sub_1000070A0();
    sub_1000035BC();
  }

  else
  {
    sub_100002C5C(&v54);
  }

  *&v54 = 0xD000000000000016;
  *(&v54 + 1) = 0x80000001001F4D40;
  v35 = AnyHashable.init<A>(_:)();
  sub_100005624(v35, v36, v37, v38, v39, v40, v41, v42, v47, v48[0], v48[1], v49[0], v50, v51, v52, v53, v54);

  sub_10000E1E8(v49);
  if (v55)
  {
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000070A0();
    sub_1000035BC();
  }

  else
  {
    sub_100002C5C(&v54);
  }

  return v10;
}

uint64_t sub_1001AA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v4 = *(a1 + 16);
  *(v3 + 56) = *a1;
  v5 = *(a1 + 32);
  *(v3 + 72) = v4;
  *(v3 + 48) = 0;
  *(v3 + 88) = v5;
  *(v3 + 104) = *(a1 + 48);
  v6 = *(a1 + 1);
  *(v3 + 120) = a2;
  *(v3 + 128) = a3;
  *(v3 + 136) = v6;
  return v3;
}

uint64_t sub_1001AA548(void *a1, void (*a2)(void, void, void), uint64_t a3)
{
  v4 = v3;
  v47 = a3;
  v45 = *v3;
  v7 = type metadata accessor for OSSignposter();
  v8 = sub_100002CC4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OSSignpostID();
  v15 = sub_100002CC4(v46);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v15);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v21;
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v25 = *(qword_100287850 + 16);
  OSSignposter.init(logHandle:)();
  OSSignposter.logHandle.getter();

  OSSignpostID.init(log:object:)();
  (*(v10 + 8))(v14, v7);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0x747865746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v27 = sub_1001ABBFC(a1);
  *(inited + 72) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if (!v27)
  {
    v27 = Dictionary.init(dictionaryLiteral:)();
  }

  *(inited + 48) = v27;
  v28 = Dictionary.init(dictionaryLiteral:)();
  v29 = [a1 origin];
  v48 = v24;
  if (v29)
  {
    v30 = v29;
    type metadata accessor for AMSEngagementSyncRequestOrigin(0);
    v52 = v31;
    *&v51 = v30;
    sub_100002C4C(&v51, &v50);
    swift_isUniquelyReferenced_nonNull_native();
    v49 = v28;
    sub_10000DFC4();
    v28 = v49;
  }

  v32 = v4[15];
  v33 = v4[16];
  v34 = *(v4 + 136);
  sub_1000262D0(v32, v33, v34);
  v35 = a2;
  v36 = a2;
  v37 = v47;
  sub_100025454(v28, v35, v47);
  sub_100026D5C(v32, v33, v34);

  v38 = v46;
  (*(v17 + 16))(v22, v48, v46);
  v39 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v40 = (v44 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 2) = v4;
  *(v41 + 3) = v36;
  *(v41 + 4) = v37;
  (*(v17 + 32))(&v41[v39], v22, v38);
  *&v41[v40] = v45;
  v52 = type metadata accessor for SyncTaskScheduler();
  v53 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v51);

  SyncTaskScheduler.init()();
  sub_1001ABD18();
  v42 = Promise.map<A>(on:_:)();

  (*(v17 + 8))(v48, v38);
  sub_100002C00(&v51);
  return v42;
}

uint64_t sub_1001AAA04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v42 = a6;
  v37[1] = a5;
  v43 = a7;
  v39 = type metadata accessor for OSSignposter();
  v38 = *(v39 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v39);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DFA4(*a1);
  v14 = sub_1001AA254();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v40 = a3;
  v41 = a4;
  sub_1001AB254(v14, v15, v17, v19, a3, a4);
  *(&v46 + 1) = &type metadata for AMSFlags;
  *&v47 = sub_10000D884();
  LOBYTE(v45) = 0;
  LOBYTE(a1) = isFeatureEnabled(_:)();
  sub_100002C00(&v45);
  if ((a1 & 1) == 0)
  {
    v21 = *(a2 + 72);
    v45 = *(a2 + 56);
    v46 = v21;
    v22 = *(a2 + 104);
    v47 = *(a2 + 88);
    v48 = v22;
    sub_1001AADA8(v14, v16, v18, v20, &v45);
  }

  v23 = [objc_allocWithZone(AMSEngagementSyncResult) init];
  if (!v14)
  {

    goto LABEL_10;
  }

  if (!*(v14 + 16))
  {
LABEL_10:

    goto LABEL_13;
  }

  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v24 = *(qword_100287850 + 16);
  OSSignposter.init(logHandle:)();

  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = *(v14 + 16);

    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v28, "ActionRunner", "Actions running: %ld", v27, 0xCu);
  }

  else
  {
  }

  (*(v38 + 8))(v13, v39);
  type metadata accessor for ActionRunner();
  v29 = *(a2 + 72);
  v44[0] = *(a2 + 56);
  v44[1] = v29;
  v30 = *(a2 + 104);
  v44[2] = *(a2 + 88);
  v44[3] = v30;
  v31 = sub_100083DD8(v14, v44, v40, v41, 0);

  sub_1000F4BC0(v31, v23);
LABEL_13:
  type metadata accessor for Defaults();
  v32 = [objc_opt_self() buildVersion];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  result = sub_1000C24F0(v33, v35);
  *v43 = v23;
  return result;
}

void sub_1001AADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  v38 = [objc_opt_self() loadFromDisk];
  v6 = sub_1001ABD5C(v38);
  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 buildVersion];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (!v8)
  {

    goto LABEL_9;
  }

  if (v6 == v11 && v8 == v13)
  {

    v16 = 0;
    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v16 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_9:
    v17 = [v9 buildVersion];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_1001ABDC0(v18, v20, v38);
    v16 = 1;
  }

LABEL_11:
  v21 = *(a5 + 1);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v38 lastSyncedBuildForDestination:v22];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [v9 buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v24 == v28 && v26 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      v33 = [v9 buildVersion];
      if (!v33)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = String._bridgeToObjectiveC()();
      }

      v34 = String._bridgeToObjectiveC()();

      [v38 setLastSyncedBuild:v33 appIdentifier:v34];

      if (!v37)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  if (v37)
  {
LABEL_24:
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    v35.super.isa = Array._bridgeToObjectiveC()().super.isa;
    switch(v21)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        v36 = String._bridgeToObjectiveC()();

        [v38 setAllowedEvents:v35.super.isa appIdentifier:v36];

        break;
      default:
        JUMPOUT(0);
    }

    goto LABEL_26;
  }

  if (v16)
  {
LABEL_26:
    [v38 saveToDisk];
  }
}

uint64_t sub_1001AB254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_10003B7C4(v6 + 16, &v93);
  if (!v95)
  {
    return sub_10000A064(&v93, &qword_10026C878, &qword_1001EBCD8);
  }

  v76 = a4;
  sub_10003B104(&v93, v92);
  v16 = *(v6 + 57);
  v17 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v81 = *(v18 + 80);
  v83 = v17;
  v80 = v20 + 2 * v19;
  v21 = swift_allocObject();
  v79 = xmmword_1001E5F70;
  *(v21 + 16) = xmmword_1001E5F70;
  v82 = v20;
  v78 = type metadata accessor for SyncRunner();
  v95 = v78;
  *&v93 = v6;
  v84 = v6;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v93);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x80000001001F77A0;
  v22._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  v95 = &unk_1002471C0;
  v75 = v16;
  LOBYTE(v93) = v16;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v93, &qword_10026D350, &qword_1001E6050);
  v23._countAndFlagsBits = 3026478;
  v23._object = 0xE300000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v85 = a6;
  v86 = a3;
  v24 = qword_100287810;
  v25 = static os_log_type_t.default.getter();
  sub_1000036B0(v25);

  if (a2)
  {
    v74[3] = v19;
    v26 = *(a2 + 16);
    v27 = _swiftEmptyArrayStorage;
    if (v26)
    {
      v74[1] = v24;
      v77 = a5;
      v74[2] = v15;
      v89 = _swiftEmptyArrayStorage;
      sub_10009B948(0, v26, 0);
      v27 = v89;
      v87 = objc_opt_self();
      v28 = 0;
      v29 = (a2 + 32);
      while (1)
      {
        v30 = *v29;

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        *&v93 = 0;
        v32 = [v87 dataWithJSONObject:isa options:0 error:&v93];

        v33 = v93;
        if (!v32)
        {
          v48 = v33;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          goto LABEL_24;
        }

        v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = type metadata accessor for JSONDecoder();
        v38 = *(v37 + 48);
        v39 = *(v37 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        sub_1000A43C8();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (v28)
        {
          break;
        }

        v88 = 0;

        sub_1000253FC(v34, v36);

        v40 = v93;
        v41 = *(&v93 + 1);
        v42 = v94;
        v43 = v95;
        v89 = v27;
        v45 = v27[2];
        v44 = v27[3];
        if (v45 >= v44 >> 1)
        {
          sub_10009B948(v44 > 1, v45 + 1, 1);
          v27 = v89;
        }

        v27[2] = v45 + 1;
        v46 = &v27[4 * v45];
        *(v46 + 32) = v40;
        v46[5] = v41;
        *(v46 + 48) = v42;
        v46[7] = v43;
        ++v29;
        --v26;
        v28 = v88;
        if (!v26)
        {
          a5 = v77;
          goto LABEL_18;
        }
      }

      sub_1000253FC(v34, v36);

      goto LABEL_24;
    }

    v28 = 0;
  }

  else
  {
    v28 = 0;
    v27 = _swiftEmptyArrayStorage;
  }

LABEL_18:
  if (!v86)
  {
    v59 = 0;
    v60 = 0;
    v61 = 2;
LABEL_26:
    v69 = [objc_opt_self() buildVersion];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    *&v93 = v27;
    *(&v93 + 1) = v61;
    v94 = v59;
    LOBYTE(v95) = v60;
    v96 = v70;
    v97 = v72;
    v98 = v76;
    v73 = *sub_100003CA8(v92, v92[3]);

    sub_1000A335C(&v93, v75);

    return sub_100002C00(v92);
  }

  v77 = a5;
  v49 = objc_opt_self();
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v93 = 0;
  v51 = [v49 dataWithJSONObject:v50 options:0 error:&v93];

  v52 = v93;
  if (!v51)
  {
    v62 = v52;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_24;
  }

  v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v56 = type metadata accessor for JSONDecoder();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A441C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v28)
  {
    sub_1000253FC(v53, v55);

    v61 = v93;
    v59 = *(&v93 + 1);
    v60 = v94;
    goto LABEL_26;
  }

  sub_1000253FC(v53, v55);

LABEL_24:
  *(swift_allocObject() + 16) = v79;
  v95 = v78;
  *&v93 = v84;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v93);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v63._countAndFlagsBits = 0x6C696166202E2E2ELL;
  v63._object = 0xEC000000203A6465;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v63);
  swift_getErrorValue();
  v64 = v90;
  v65 = v91;
  v95 = v91;
  v66 = sub_100017E64(&v93);
  (*(*(v65 - 1) + 16))(v66, v64, v65);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v93, &qword_10026D350, &qword_1001E6050);
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
  LogInterpolation.init(stringInterpolation:)();
  v68 = static os_log_type_t.error.getter();
  sub_1000036B0(v68);

  return sub_100002C00(v92);
}

uint64_t sub_1001ABB50()
{
  sub_10000A064(v0 + 16, &qword_10026C878, &qword_1001EBCD8);
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);

  sub_100026D5C(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  return v0;
}

uint64_t sub_1001ABBA4()
{
  sub_1001ABB50();

  return swift_deallocClassInstance();
}

uint64_t sub_1001ABBFC(void *a1)
{
  v1 = [a1 context];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001ABC68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  return sub_1001AAA04(a1, v2[2], v2[3], v2[4], v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_1001ABD18()
{
  result = qword_10026C868;
  if (!qword_10026C868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026C868);
  }

  return result;
}

uint64_t sub_1001ABD5C(void *a1)
{
  v1 = [a1 lastSyncedBuild];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1001ABDC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setLastSyncedBuild:v4];
}

uint64_t sub_1001ABE24(uint64_t a1)
{
  v3[0] = 0x707041666572;
  v3[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_100003C38(a1, v3);
  sub_1000A9FF8(v3, v4);
  return sub_10000A064(a1, &qword_10026D350, &qword_1001E6050);
}

void sub_1001ABEAC(void *a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = sub_100003DE8();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_1000056F8();
  *(sub_10000A92C() + 16) = xmmword_1001E5F70;
  v11 = type metadata accessor for SystemEngagementAction();
  v10[0] = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  v11 = &type metadata for String;
  v10[0] = 0xD00000000000002ALL;
  v10[1] = 0x80000001002034B0;
  static LogInterpolation.safe(_:)();
  sub_10000A064(v10, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);

  v9 = a1;
  sub_1001AD008(v9, 0);
}

uint64_t sub_1001AC06C(uint64_t a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = sub_100003DE8();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_1000056F8();
  *(sub_10000A92C() + 16) = xmmword_1001E5F70;
  v14 = type metadata accessor for SystemEngagementAction();
  v13[0] = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v13);
  v14 = &type metadata for String;
  v13[0] = 0xD000000000000018;
  v13[1] = 0x8000000100203430;
  static LogInterpolation.safe(_:)();
  sub_10000A064(v13, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);

  v10 = *(a1 + 16);
  for (i = (a1 + 32); v10; --v10)
  {
    v12 = *i++;
    v13[0] = v12;

    sub_1001AC250(v13, v1);
  }

  return result;
}

void sub_1001AC250(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v26, v3, &v29);
  sub_10000E1E8(&v26);
  if (!v30)
  {
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v5 = v26;
  v4 = v27;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v26, v3, &v29);
  sub_10000E1E8(&v26);
  if (!v30)
  {

LABEL_18:
    sub_10000A064(&v29, &qword_10026D350, &qword_1001E6050);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_19:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v28 = type metadata accessor for SystemEngagementAction();
    v26 = a2;

    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v26);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 == -1)
    {
      goto LABEL_22;
    }

LABEL_29:
    swift_once();
LABEL_22:
    v19 = static os_log_type_t.default.getter();
    sub_1000036B0(v19);

    return;
  }

  v7 = v26;
  v6 = v27;
  v8 = v5 == 0xD000000000000018 && 0x8000000100203410 == v4;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v7 == 1802398060 ? (v9 = v6 == 0xE400000000000000) : (v9 = 0), !v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    v25 = v7;
    v31 = v6;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v20 = *(type metadata accessor for LogInterpolation() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E6580;
    v28 = type metadata accessor for SystemEngagementAction();
    v26 = a2;

    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v26);
    LogInterpolation.init(stringLiteral:)();
    v28 = &type metadata for String;
    v26 = v5;
    v27 = v4;
    static LogInterpolation.safe(_:)();
    sub_10000A064(&v26, &qword_10026D350, &qword_1001E6050);
    v28 = &type metadata for String;
    v26 = v25;
    v27 = v31;
    static LogInterpolation.safe(_:)();
    sub_10000A064(&v26, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v10 = sub_1001AC7A0(v3);
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    sub_1001AD008(v10, v11);
  }
}

id sub_1001AC7A0(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  sub_100002BC0(0, &qword_10026CAD8, AMSEngagementRequest_ptr);
  v14 = *(v1 + 16);
  v15 = v14;

  v17 = sub_1000991BC(v16, 1, v14, 0);
  v18 = [v17 URL];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v13, v11, v3);
    sub_1001ACC14(0, 1, v8);
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    v23 = *(v4 + 8);
    v23(v8, v3);
    [v17 setURL:v22];

    strcpy(v41, "sourceProcess");
    HIWORD(v41[1]) = -4864;
    AnyHashable.init<A>(_:)();
    v24 = sub_100005924();
    sub_10000E0C8(v24, a1, v25);
    sub_10000E1E8(&v38);
    if (v41[3])
    {
      v26 = swift_dynamicCast();
      if (v26)
      {
        v27 = v38;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = v39;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      sub_10000A064(v41, &qword_10026D350, &qword_1001E6050);
      v27 = 0;
      v28 = 0;
    }

    v34 = sub_1001ADF20(v17);
    if (!v34)
    {
      v34 = _swiftEmptyDictionarySingleton;
    }

    v41[0] = v34;
    if (v28)
    {
      v40 = &type metadata for String;
      v38 = v27;
      v39 = v28;

      sub_1001ABE24(&v38);
      sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
      sub_1001AF38C();
      v34 = v41[0];
    }

    sub_1001ADF8C(v34, v17);
    v23(v13, v3);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v29 = sub_100003DE8();
    sub_100002CFC(v29);
    v31 = *(v30 + 72);
    sub_1000056F8();
    *(sub_10000A92C() + 16) = xmmword_1001E5F70;
    v40 = type metadata accessor for SystemEngagementAction();
    v38 = v1;

    v32 = AMSLogKey();
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v38);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v35 = static os_log_type_t.error.getter();
    sub_1000036B0(v35);

    return 0;
  }

  return v17;
}

uint64_t sub_1001ACC14@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31[3] = a2;
  v7 = 0x7370747468;
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v31 - v10;
  v12 = sub_10007B9A4(&qword_10026BD40, &unk_1001E9F70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v31 - v14;
  v16 = type metadata accessor for URLComponents();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v7 = 0x69752D736D61;
    v21 = 0xE600000000000000;
  }

  v22 = URL.scheme.getter();
  if (v23)
  {
    if (v7 == v22 && v23 == v21)
    {

      goto LABEL_16;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
LABEL_16:
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if (sub_100009F34(v15, 1, v16) == 1)
      {
        sub_10000A064(v15, &qword_10026BD40, &unk_1001E9F70);
        v29 = type metadata accessor for URL();
        return (*(*(v29 - 8) + 16))(a3, v4, v29);
      }

      else
      {
        (*(v17 + 32))(v20, v15, v16);
        URLComponents.scheme.setter();
        URLComponents.url.getter();
        (*(v17 + 8))(v20, v16);
        v30 = type metadata accessor for URL();
        if (sub_100009F34(v11, 1, v30) == 1)
        {
          sub_10000A064(v11, &unk_10026FEE0, &unk_1001E67C0);
          return (*(*(v30 - 8) + 16))(a3, v4, v30);
        }

        else
        {
          return (*(*(v30 - 8) + 32))(a3, v11, v30);
        }
      }
    }
  }

  else
  {
  }

  v26 = type metadata accessor for URL();
  v27 = *(*(v26 - 8) + 16);

  return v27(a3, v4, v26);
}

uint64_t sub_1001AD008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = sub_100003DE8();
  sub_100002CFC(v6);
  v8 = *(v7 + 72);
  sub_1000056F8();
  *(sub_10000A92C() + 16) = xmmword_1001E5F70;
  v14[3] = type metadata accessor for SystemEngagementAction();
  v14[0] = v2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11);

  v12 = *sub_100003CA8((v2 + 24), *(v2 + 48));
  sub_1001AE00C(a1, 0, a2);

  sub_1000ED408(sub_1001ADF10, v3);

  sub_1000ED22C();
}

uint64_t sub_1001AD214(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = *(type metadata accessor for LogInterpolation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v14 = type metadata accessor for SystemEngagementAction();
  v13[0] = a2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v13);
  LogInterpolation.init(stringLiteral:)();
  v9 = [v3 userInfo];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v13[0] = v10;
  static LogInterpolation.safe(_:)();
  sub_10000A064(v13, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11);
}

uint64_t sub_1001AD448(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v13 = type metadata accessor for SystemEngagementAction();
  v12[0] = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  v13 = &type metadata for String;
  v12[0] = v8;
  v12[1] = v9;
  static LogInterpolation.safe(_:)();
  sub_10000A064(v12, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10);
}

uint64_t sub_1001AD648()
{
  sub_100002C00((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1001AD6AC(uint64_t a1, uint64_t a2)
{
  v44 = 0x74736575716572;
  v45 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v4 = sub_100005924();
  sub_10000E0C8(v4, a1, v5);
  sub_10000E1E8(v46);
  if (v50)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    sub_100007D5C();
    if (swift_dynamicCast())
    {
      v6 = v44;
      v44 = 0x746E756F636361;
      v45 = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      v7 = sub_100005924();
      sub_10000E0C8(v7, v6, v8);
      sub_10000E1E8(v46);
      if (v50)
      {
        sub_100007D5C();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        v9 = v44;
        v44 = 1684632420;
        v45 = 0xE400000000000000;
        AnyHashable.init<A>(_:)();
        v10 = sub_100005924();
        sub_10000E0C8(v10, v9, v11);

        sub_10000E1E8(v46);
        if (v50)
        {
          sub_100007D5C();
          if (swift_dynamicCast())
          {
            if ((v45 & 0xF00000000000000) != 0)
            {
              v46[0] = v44;
              v46[1] = v45 & 0xFFFFFFFFFFFFFFLL;
              if ((v45 & 0xF00000000000000) != 0)
              {
                while (1)
                {
                  sub_10000BC7C();
                  if (!v30 & v29)
                  {
                    break;
                  }

                  sub_100005640();
                  if (!v30)
                  {
                    break;
                  }

                  v33 = v32 + v31;
                  if (__OFADD__(v32, v31))
                  {
                    break;
                  }

                  sub_10000864C();
                  if (v30)
                  {
                    goto LABEL_25;
                  }
                }
              }

              v33 = 0;
              v34 = 1;
LABEL_25:
              v49[0] = v34;
              v35 = v34;

              if ((v35 & 1) == 0)
              {
                v36 = [objc_opt_self() ams_sharedAccountStoreForClient:*(a2 + 8)];
                sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
                v37 = type metadata accessor for LogInterpolation();
                sub_100002CFC(v37);
                v39 = *(v38 + 72);
                sub_1000056F8();
                *(swift_allocObject() + 16) = xmmword_1001E5F60;
                v40 = AMSSetLogKeyIfNeeded();
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                type metadata accessor for SystemEngagementAction();
                static LogInterpolation.prefix<A>(_:_:)();

                LogInterpolation.init(stringLiteral:)();
                v47 = &type metadata for Int;
                v46[0] = v33;
                static LogInterpolation.sensitive(_:)();
                sub_10000A064(v46, &qword_10026D350, &qword_1001E6050);
                if (qword_1002686B0 != -1)
                {
                  sub_100002D44();
                }

                v41 = static os_log_type_t.default.getter();
                sub_1000036B0(v41);

                v42 = [objc_allocWithZone(NSNumber) initWithInteger:v33];
                v17 = [v36 ams_iTunesAccountWithDSID:v42];

                goto LABEL_15;
              }
            }

            else
            {
            }
          }

LABEL_14:
          v17 = 0;
LABEL_15:
          sub_100002BC0(0, &qword_10026CAD8, AMSEngagementRequest_ptr);
          v18 = v17;
          v19 = sub_1000991BC(v6, 0, v17, 0);
          v20 = type metadata accessor for SystemEngagementPerformer();
          v21 = swift_allocObject();
          v47 = v20;
          v48 = &off_1002529B8;
          v46[0] = v21;
          type metadata accessor for SystemEngagementAction();
          v22 = swift_allocObject();
          v23 = sub_100046CB8(v46, v20);
          v24 = *(*(v20 - 8) + 64);
          __chkstk_darwin(v23);
          v26 = (&v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v27 + 16))(v26);
          v28 = *v26;
          v22[6] = v20;
          v22[7] = &off_1002529B8;
          v22[2] = v17;
          v22[3] = v28;
          sub_100002C00(v46);
          sub_1001ABEAC(v19);

          return;
        }
      }

      sub_10000A064(v49, &qword_10026D350, &qword_1001E6050);
      goto LABEL_14;
    }
  }

  else
  {
    sub_10000A064(v49, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  v14 = *(v13 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v15 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for SystemEngagementAction();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v16 = static os_log_type_t.error.getter();
  sub_1000036B0(v16);
}

uint64_t sub_1001ADF20(void *a1)
{
  v1 = [a1 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1001ADF8C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setMetricsOverlay:isa];
}

uint64_t sub_1001AE00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(AMSSystemEngagementTask) initWithRequest:a1];
  [v5 setBag:a2];
  [v5 setClientInfo:a3];
  sub_10007B9A4(&qword_1002714D8, &unk_1001F0960);
  v6 = [v5 present];
  v7 = Promise<A>.init(_:)();

  return v7;
}

uint64_t sub_1001AE0E4(char a1, void (*a2)(void))
{
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  v4 = sub_1001AE1DC(a1);
  v6 = v5;
  sub_100011C54(v4, v5);
  v7 = objc_autoreleasePoolPush();
  a2();
  objc_autoreleasePoolPop(v7);
  sub_1001AE448(v4, v6);
}

unint64_t sub_1001AE1DC(char a1)
{
  result = 0x74536E6F6D656164;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x696669746E656469;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x4D6B726F7774656ELL;
      break;
    case 6:
      result = 0x6144726576726573;
      break;
    case 7:
      result = 0x6F69736E65747865;
      break;
    case 8:
      result = 0x624F796C696D6166;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1001AE334()
{
  v1 = *(v0 + 16);
  sub_100002BC0(0, &unk_100271650, NSCountedSet_ptr);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_1001AE3AC(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100002BC0(0, &unk_100271650, NSCountedSet_ptr);
  return swift_dynamicCast();
}

uint64_t sub_1001AE448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36[0] = *v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000356C();
  v41 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  type metadata accessor for DispatchQoS();
  sub_10000356C();
  v39 = v15;
  v40 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v20 = v19 - v18;
  v21 = type metadata accessor for DispatchTime();
  v38 = v21;
  sub_10000356C();
  v23 = v22;
  v25 = *(v24 + 64);
  v27 = __chkstk_darwin(v26);
  v29 = v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v36 - v30;
  v36[1] = v3[2];
  static DispatchTime.now()();
  + infix(_:_:)();
  v37 = *(v23 + 8);
  v37(v29, v21);
  v32 = swift_allocObject();
  v32[2] = v3;
  v32[3] = a1;
  v33 = v36[0];
  v32[4] = a2;
  v32[5] = v33;
  aBlock[4] = sub_1001AF2F8;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002529F0;
  v34 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_100013AFC(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v34);
  (*(v41 + 8))(v13, v6);
  (*(v39 + 8))(v20, v40);
  v37(v31, v38);
}

uint64_t sub_1001AE808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  v13 = __chkstk_darwin(v11);
  v82 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  v17 = type metadata accessor for LogInterpolation.StringInterpolation();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = *(a1 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet);
  v20 = String._bridgeToObjectiveC()();
  [v19 removeObject:v20];

  v85 = a3;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 countForObject:v21];

  if (v22)
  {
    v81 = a2;
    if (qword_100268730 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v23 = *(type metadata accessor for LogInterpolation() - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v88 = type metadata accessor for TransactionStore();
    v86 = a1;

    v26 = AMSLogKey();
    v27 = v85;
    if (v26)
    {
      v28 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v86);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._object = 0x8000000100203600;
    v36._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
    v88 = &type metadata for String;
    v86 = v81;
    v87 = v27;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v86);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    LogInterpolation.init(stringInterpolation:)();
    v38 = static os_log_type_t.info.getter();
    sub_1000036B0(v38);

    String._bridgeToObjectiveC()();
    OSSignposter.logHandle.getter();
    v39 = v82;
    OSSignpostID.init(log:object:)();
    v40 = OSSignposter.logHandle.getter();
    v41 = static os_signpost_type_t.event.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v41, v43, "Transaction", "Transaction left", v42, 2u);
    }

    return (*(v83 + 8))(v39, v84);
  }

  else
  {
    v72 = v10;
    v73 = v7;
    v80 = v16;
    if (qword_100268730 != -1)
    {
      swift_once();
    }

    v74 = v6;
    v82 = qword_100287890;
    v29 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = *(type metadata accessor for LogInterpolation() - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v81 = *(v30 + 72);
    v79 = v29;
    v77 = v31 + 2 * v81;
    v32 = swift_allocObject();
    v76 = xmmword_1001E5F70;
    *(v32 + 16) = xmmword_1001E5F70;
    v78 = v31;
    v75 = type metadata accessor for TransactionStore();
    v88 = v75;
    v86 = a1;

    v33 = AMSLogKey();
    v34 = a2;
    if (v33)
    {
      v35 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v45 = v85;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v86);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v46._countAndFlagsBits = 0xD000000000000013;
    v46._object = 0x8000000100203620;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
    v88 = &type metadata for String;
    v86 = v34;
    v87 = v45;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v86);
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
    LogInterpolation.init(stringInterpolation:)();
    v48 = static os_log_type_t.info.getter();
    sub_1000036B0(v48);

    v49 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSignpostStateStore;
    swift_beginAccess();
    v50 = *(a1 + v49);

    v51 = sub_100012A40(v34, v45, v50);

    if (v51)
    {
      v52 = OSSignposter.logHandle.getter();
      v53 = v80;
      OSSignpostIntervalState.signpostID.getter();
      v54 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        LODWORD(v85) = v54;

        v55 = v72;
        checkForErrorAndConsumeState(state:)();

        v56 = v73;
        v57 = v74;
        if ((*(v73 + 88))(v55, v74) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v58 = "[Error] Interval already ended";
        }

        else
        {
          (*(v56 + 8))(v55, v57);
          v58 = "";
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        v62 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, v85, v62, "Transaction", v58, v61, 2u);
      }

      (*(v83 + 8))(v53, v84);
      swift_beginAccess();
      sub_1000ABE18(v34, v45);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1000ABDF0(v34, v45, v63, v64, v65, v66, v67, v68, v72, v73);
      swift_endAccess();
    }

    else
    {
      *(swift_allocObject() + 16) = v76;
      v88 = v75;
      v86 = a1;

      v59 = AMSLogKey();
      if (v59)
      {
        v60 = v59;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v86);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v69._countAndFlagsBits = 0xD000000000000038;
      v69._object = 0x8000000100203640;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v69);
      v88 = &type metadata for String;
      v86 = v34;
      v87 = v45;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(&v86);
      v70._countAndFlagsBits = 0x6361736E61727420;
      v70._object = 0xEC0000006E6F6974;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
      LogInterpolation.init(stringInterpolation:)();
      v71 = static os_log_type_t.fault.getter();
      sub_1000036B0(v71);
    }
  }
}

uint64_t sub_1001AF1D0()
{
  v1 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_holdTime;
  v2 = type metadata accessor for DispatchTimeInterval();
  sub_100002DDC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_signposter;
  v5 = type metadata accessor for OSSignposter();
  sub_100002DDC(v5);
  (*(v6 + 8))(v0 + v4);

  v7 = *(v0 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSignpostStateStore);

  v8 = *(v0 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionStore);

  return v0;
}

uint64_t sub_1001AF298()
{
  sub_1001AF1D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_1001AF320(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

id sub_1001AF38C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t sub_1001AF400(uint64_t a1, unint64_t a2)
{
  *&v41 = a1;
  *(&v41 + 1) = a2;

  sub_10007B9A4(&qword_100271760, &qword_1001F0A00);
  if (swift_dynamicCast())
  {
    sub_10003B104(v39, &v42);
    sub_100003CA8(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v39[0] = v41;
    sub_100002C00(&v42);
    goto LABEL_56;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1001B0824(v39);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v39[0] = a1;
    *(&v39[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v39;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1001AFED4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_56;
  }

LABEL_9:
  *&v39[0] = Data._Representation.init(count:)();
  *(&v39[0] + 1) = v8;
  __chkstk_darwin(*&v39[0]);
  v9 = sub_1001AFFF0(sub_1001B08C4);
  v11 = *(&v39[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v39[0]);
  switch(*(&v39[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v39[0]) - LODWORD(v39[0]);
      if (__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v39[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v39[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v39[0] + 16);
      v19 = *(*&v39[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v38 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v41 + 7) = 0;
      *&v41 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v39[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v30 = sub_1000070C4();
      v26 = sub_1000FBC20(v30, v31, v32);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v42 = v12;
      *(&v42 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v42 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v33 = sub_1000070C4();
      v16 = sub_1000FBC20(v33, v34, v35);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    sub_1000070C4();
    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v41 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      sub_10000BC8C();
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_10003AE18(v38, v6);
    goto LABEL_56;
  }

  sub_10000BC8C();
  Data._Representation.append(contentsOf:)();
  sub_10003AE18(v38, v6);
LABEL_55:

LABEL_56:
  v36 = v39[0];
  sub_10003A5E0(*&v39[0], *(&v39[0] + 1));

  sub_1000253FC(v36, *(&v36 + 1));
  return v36;
}

void *sub_1001AF8C8(char a1)
{
  if (a1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 ams_DSID];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 description];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

uint64_t sub_1001AF95C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v13 = sub_100002CC4(v12);
  v44 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1001AF400(a1, a2);
  sub_1001B04C8(&qword_100270B90, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  v19 = sub_100002FD8();
  sub_10003A5E0(v19, v20);
  v21 = sub_100002FD8();
  sub_1001B042C(v21, v22);
  v23 = sub_100002FD8();
  sub_1000253FC(v23, v24);
  dispatch thunk of HashFunction.finalize()();
  (*(v7 + 8))(v11, v4);
  sub_1001B04C8(&qword_100271758, &type metadata accessor for SHA256Digest);
  v45 = v12;
  result = Digest.makeIterator()();
  v27 = *(result + 16);
  v28 = v27 - v26;
  if (v27 == v26)
  {
    v29 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (v27 <= v26)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v26 < 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (!v27)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v36 = (v26 + result + 32);
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v38 = *v36++;
      v37 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = v29[2];
        sub_1000D6240();
        v29 = v41;
      }

      v39 = v29[2];
      if (v39 >= v29[3] >> 1)
      {
        sub_1000D6240();
        v29 = v42;
      }

      v29[2] = v39 + 1;
      *(v29 + v39 + 16) = v37;
      --v28;
    }

    while (v28);
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 8;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v30 = v29[2];
  if (v30 < 8)
  {
    __break(1u);
    goto LABEL_18;
  }

  v31 = 0;
  v32 = v29 + v30;
  *(result + 32) = v32[8];
  *(result + 34) = v32[9];
  *(result + 36) = v32[10];
  *(result + 38) = v32[11];
  *(result + 40) = v32[12];
  *(result + 42) = v32[13];
  *(result + 44) = v32[14];
  *(result + 46) = v32[15];
  for (i = 32; i != 48; i += 2)
  {
    v31 = *(result + i) | (v31 << 8);
  }

  v34 = sub_100002FD8();
  sub_1000253FC(v34, v35);

  (*(v44 + 8))(v18, v45);

  return v31;
}

uint64_t sub_1001AFD00(char a1)
{
  v2 = v1;
  sub_100002BC0(0, &qword_100271750, AMSMetricsIdentifierKey_ptr);
  if (a1)
  {
    v4 = 0x6449746E65696C63;
    v5 = 0xE800000000000000;
    v6 = 0;
  }

  else
  {
    v4 = 0x644972657375;
    v5 = 0xE600000000000000;
    v6 = 1;
  }

  v7 = sub_1001AF320(v4, v5, v6);
  v8 = objc_allocWithZone(AMSMetricsIdentifierStore);
  v9 = v7;
  v10 = [v8 init];
  [v10 setAccount:*(v2 + 16)];
  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  v11 = sub_1001AF38C();
  [v10 setClientInfo:v11];

  [v10 setResetInterval:0.0];
  v12 = [v10 identifierForKey:v9];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

uint64_t sub_1001AFE78()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1001AFEA0()
{
  sub_1001AFE78();

  return swift_deallocClassInstance();
}

uint64_t sub_1001AFED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1001AFF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1001B0558(sub_1001B0920, v5, a1, a2);
}

uint64_t sub_1001AFFF0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1000253FC(v6, v5);
      *v4 = xmmword_1001F09C0;
      sub_1000253FC(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1001B05BC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1000253FC(v6, v5);
      v19 = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1001F09C0;
      sub_1000253FC(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v19;
      v9 = sub_1001B05BC(*(v19 + 16), *(v19 + 24), a1);
      if (v2)
      {
        v10 = v20 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v20 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v2)
      {
        return v19;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_1000253FC(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        v3 = v19;
      }

      v8 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_1001B03B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1001B042C(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_9;
      }

      result = result;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_7:
      result = sub_1001B0744(result, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return result;
    default:
      result = sub_1001B0670();
      if (!v2)
      {
        return result;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return result;
  }
}

uint64_t sub_1001B04C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B0510(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001B0558(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1001B05BC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1001B0670()
{
  type metadata accessor for SHA256();
  sub_1001B04C8(&qword_100270B90, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1001B0744(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1001B04C8(&qword_100270B90, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B0824(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_100271768, &qword_1001F0A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1001B088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1001AFF9C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1001B08E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1001B0510(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_1001B094C()
{
  sub_10000E740();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100245450, v2);
  sub_100005F2C();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B0990(char a1)
{
  result = 0x6C62616568636163;
  switch(a1)
  {
    case 1:
      result = 0x656D697265707865;
      break;
    case 2:
      result = sub_100003E84();
      break;
    case 3:
      result = 1953259891;
      break;
    case 4:
      result = 1684366707;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B0A14()
{
  sub_10000E740();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002454E8, v2);
  sub_100005F2C();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B0A58(char a1)
{
  result = 0x656D6954646E65;
  switch(a1)
  {
    case 1:
      result = sub_100003E84();
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x6F726665726F7473;
      break;
    case 4:
      result = 0x6E656D7461657274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B0AF0(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x7374656B637562;
  }
}

uint64_t sub_1001B0B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001B094C();
  *a2 = result;
  return result;
}

uint64_t sub_1001B0B70()
{
  v1 = sub_10003AF60();
  result = sub_1001B0990(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B0BA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B094C();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0BC8(uint64_t a1)
{
  v2 = sub_1001B4E5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0C04(uint64_t a1)
{
  v2 = sub_1001B4E5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B0C64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001B0A14();
  *a2 = result;
  return result;
}

uint64_t sub_1001B0C94()
{
  v1 = sub_10003AF60();
  result = sub_1001B0A58(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B0CC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B0A14();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0CEC(uint64_t a1)
{
  v2 = sub_1001B4564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0D28(uint64_t a1)
{
  v2 = sub_1001B4564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B0D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001B2760();
  *a2 = result;
  return result;
}

uint64_t sub_1001B0DC0()
{
  v1 = sub_10003AF60();
  result = sub_1001B0AF0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B0DF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B2760();
  *a1 = result;
  return result;
}

uint64_t sub_1001B0E20(uint64_t a1)
{
  v2 = sub_1001B488C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0E5C(uint64_t a1)
{
  v2 = sub_1001B488C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001B0E98()
{
  sub_100007E34();
  sub_10000A8D8(v2, v3, v4, v5);
  v6 = sub_10007B9A4(&qword_100271A30, &qword_1001F0D28);
  sub_100002CC4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_100006264();
  sub_100004DF8();
  sub_1001B488C();
  sub_10000A664();
  sub_10007B9A4(&qword_100271A10, &unk_1001F0D18);
  sub_1001B4944(&unk_100271A38);
  sub_100005654();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_100011B44();
  }

  (*(v8 + 8))(v0, v6);
  sub_100005B78();
}

uint64_t sub_1001B0FE0(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_100271A00, &qword_1001F0D10);
  sub_100002CC4(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_100006264();
  v7 = a1[3];
  v8 = a1[4];
  sub_10000A264(a1);
  sub_1001B488C();
  sub_10000AF00();
  if (!v1)
  {
    sub_10007B9A4(&qword_100271A10, &unk_1001F0D18);
    sub_1001B4944(&unk_100271A18);
    sub_10000C4A8();
    sub_1000072F8();
    v10 = sub_1000035C8();
    v11(v10);
  }

  sub_100002C00(a1);
  return sub_100017E1C();
}

void sub_1001B11B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1001B0E98();
}

void sub_1001B11D0()
{
  sub_100007E34();
  v2 = v0;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_1002719D8, &qword_1001F0D08);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_10000710C();
  v11 = v4[3];
  v12 = v4[4];
  sub_10000A264(v4);
  sub_1001B4564();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_10000AD8C();
  sub_1001B50A8(v13);
  sub_100006274();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v14 = type metadata accessor for TreatmentsConfiguration.Area.Experiment();
    v15 = (v2 + v14[5]);
    v16 = *v15;
    v17 = v15[1];
    sub_100005AF8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v14[6];
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v2 + v14[7]);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_10000C20C(&qword_10026A740);
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v2 + v14[8]);
    sub_10007B9A4(&qword_1002719C0, &qword_1001F0D00);
    sub_1001B47B4();
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v19 = *(v7 + 8);
  v20 = sub_10000A298();
  v21(v20);
  sub_100012FB0();
  sub_100005B78();
}

void sub_1001B140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100007E34();
  v60 = v10;
  v12 = v11;
  v54 = v13;
  v58 = type metadata accessor for Date();
  v14 = sub_100002CC4(v58);
  v55 = v15;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v14);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v59 = sub_10007B9A4(&qword_1002719A0, &qword_1001F0CF8);
  sub_100002CC4(v59);
  v56 = v23;
  v25 = *(v24 + 64);
  sub_100004E78();
  __chkstk_darwin(v26);
  v28 = &v50 - v27;
  v29 = type metadata accessor for TreatmentsConfiguration.Area.Experiment();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v12[4];
  sub_100003CA8(v12, v12[3]);
  sub_1001B4564();
  v57 = v28;
  v34 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    sub_100002C00(v12);
  }

  else
  {
    v53 = v20;
    v60 = v12;
    v35 = v32;
    sub_10000AD8C();
    sub_1001B50A8(v36);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = *(v55 + 32);
    v38 = v22;
    v39 = v58;
    v37(v35, v38, v58);
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v50 = v37;
    v51 = v29;
    v41 = *(v29 + 20);
    v52 = v35;
    v42 = &v35[v41];
    *v42 = v40;
    v42[1] = v43;
    LOBYTE(a10) = 2;
    v44 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50(v52 + *(v51 + 24), v44, v39);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v61 = 3;
    sub_100007D6C(&qword_10026A718);
    sub_10000616C();
    sub_10003D368();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v60;
    v46 = v51;
    v47 = v52;
    *(v52 + *(v51 + 28)) = a10;
    sub_10007B9A4(&qword_1002719C0, &qword_1001F0D00);
    v61 = 4;
    sub_1001B45B8();
    sub_10000616C();
    sub_10003D368();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v48 = sub_100012DF4();
    v49(v48);
    *(v47 + *(v46 + 32)) = a10;
    sub_1001B4690(v47, v54);
    sub_100002C00(v45);
    sub_1001B46F4(v47);
  }

  sub_100005B78();
}

uint64_t sub_1001B191C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D614E676162 && a2 == 0xEC00000065636170;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1001B1A2C(char a1)
{
  if (!a1)
  {
    return 0x73656D614E676162;
  }

  if (a1 == 1)
  {
    return 0x6E69616D6F64;
  }

  return 1701869940;
}

uint64_t sub_1001B1A80(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_100271B20, &qword_1001F1290);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_10000710C();
  v11 = a1[3];
  v12 = a1[4];
  sub_10000A264(a1);
  sub_1001B5140();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = v3[1];
  sub_100005AF8();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    sub_100005AF8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v18 = v3[5];
    sub_100005AF8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v19 = *(v7 + 8);
  v20 = sub_10000A298();
  return v21(v20);
}

void sub_1001B1BCC()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_100271B10, &qword_1001F1288);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = v2[4];
  sub_100003CA8(v2, v2[3]);
  sub_1001B5140();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100002C00(v2);
  }

  else
  {
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v15;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v16;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v12;
    v20 = v19;
    (*(v7 + 8))(v18, v5);
    sub_100002C00(v2);
    v21 = v26;
    *v4 = v14;
    v4[1] = v21;
    v22 = v25;
    v4[2] = v24;
    v4[3] = v22;
    v4[4] = v17;
    v4[5] = v20;
  }

  sub_100012FB0();
  sub_100005B78();
}

uint64_t sub_1001B1DDC(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_100271AE0, &qword_1001F1270);
  sub_100002CC4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_10000710C();
  v11 = a1[3];
  v12 = a1[4];
  sub_10000A264(a1);
  sub_1001B4E5C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v22 = *(v3 + 1);
    sub_10007B9A4(&qword_100271AA0, &qword_1001F1258);
    sub_1001B4EB0(&unk_100271AE8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 2);
    v15 = *(v3 + 3);
    sub_1000182C4(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 4);
    v17 = *(v3 + 5);
    sub_1000182C4(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 3);
    v24 = *(v3 + 4);
    v25 = *(v3 + 5);
    sub_1001B50EC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v18 = *(v7 + 8);
  v19 = sub_10000A298();
  return v20(v19);
}

void sub_1001B1FF4()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_100271A90, &qword_1001F1250);
  sub_100002CC4(v5);
  v7 = *(v6 + 64);
  sub_100004E78();
  __chkstk_darwin(v8);
  v9 = v2[3];
  v10 = v2[4];
  sub_10000A264(v2);
  sub_1001B4E5C();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100002C00(v2);
  }

  else
  {
    LOBYTE(v29[0]) = 0;
    sub_1000049E0();
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10007B9A4(&qword_100271AA0, &qword_1001F1258);
    LOBYTE(v28[0]) = 1;
    sub_1001B4EB0(&unk_100271AA8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v29[0];
    sub_1000049E0();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v13;
    LOBYTE(v29[0]) = 3;
    sub_1000049E0();
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v12;
    v15 = v14;
    sub_1001B4F44();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = sub_1000066DC();
    v17(v16);
    v23 = v30;
    v22 = v31;
    v18 = v33;
    v21 = v32;
    v20 = v34;
    v19 = v35;
    LOBYTE(v28[0]) = v11 & 1;
    v28[1] = v26;
    v28[2] = v25;
    v28[3] = v27;
    v28[4] = v24;
    v28[5] = v15;
    v28[6] = v30;
    v28[7] = v31;
    v28[8] = v32;
    v28[9] = v33;
    v28[10] = v34;
    v28[11] = v35;
    sub_1001B4F98(v28, v29);
    sub_100002C00(v2);
    LOBYTE(v29[0]) = v11 & 1;
    v29[1] = v26;
    v29[2] = v25;
    v29[3] = v27;
    v29[4] = v24;
    v29[5] = v15;
    v29[6] = v23;
    v29[7] = v22;
    v29[8] = v21;
    v29[9] = v18;
    v29[10] = v20;
    v29[11] = v19;
    sub_1001B4FD0(v29);
    memcpy(v4, v28, 0x60uLL);
  }

  sub_100005B78();
}

uint64_t sub_1001B2420(char a1)
{
  if (a1)
  {
    return 0x73644961657261;
  }

  else
  {
    return 25705;
  }
}

void sub_1001B244C()
{
  sub_100007E34();
  v1 = sub_10007B9A4(&qword_100271B00, &qword_1001F1278);
  sub_100002CC4(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_10000710C();
  sub_100004DF8();
  sub_1001B5000();
  sub_10000A664();
  sub_100005AF8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_10000C20C(&qword_10026A740);
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v7 = *(v3 + 8);
  v8 = sub_10000A298();
  v9(v8);
  sub_100012FB0();
  sub_100005B78();
}

uint64_t sub_1001B25A8(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_100271AC0, &qword_1001F1260);
  sub_100002CC4(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_100006264();
  v7 = a1[3];
  v8 = a1[4];
  sub_10000A264(a1);
  sub_1001B5000();
  sub_10000AF00();
  if (v1)
  {
    v12 = 0;
  }

  else
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_100007D6C(&qword_10026A718);
    sub_10000C4A8();
    v10 = sub_1000035C8();
    v11(v10);
    v12 = v13;
  }

  sub_100002C00(a1);
  return v12;
}

uint64_t sub_1001B2760()
{
  sub_10000E740();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  sub_100005F2C();

  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B27A8(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x73644961657261;
  }
}

void sub_1001B27D4()
{
  sub_100007E34();
  sub_10000A8D8(v2, v3, v4, v5);
  v6 = sub_10007B9A4(&qword_100271B08, &qword_1001F1280);
  sub_100002CC4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_100006264();
  sub_100004DF8();
  sub_1001B5054();
  sub_10000A664();
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_10000C20C(&qword_10026A740);
  sub_100005654();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_100011B44();
  }

  (*(v8 + 8))(v0, v6);
  sub_100005B78();
}

uint64_t sub_1001B2900(uint64_t *a1)
{
  v3 = sub_10007B9A4(&qword_100271AD0, &qword_1001F1268);
  sub_100002CC4(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_100006264();
  v7 = a1[3];
  v8 = a1[4];
  sub_10000A264(a1);
  sub_1001B5054();
  sub_10000AF00();
  if (!v1)
  {
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_100007D6C(&qword_10026A718);
    sub_10000C4A8();
    sub_1000072F8();
    v10 = sub_1000035C8();
    v11(v10);
  }

  sub_100002C00(a1);
  return sub_100017E1C();
}

uint64_t sub_1001B2A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7361657261 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63617073656D616ELL && a2 == 0xEA00000000007365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736369706F74 && a2 == 0xE600000000000000)
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

uint64_t sub_1001B2B98(char a1)
{
  if (!a1)
  {
    return 0x7361657261;
  }

  if (a1 == 1)
  {
    return 0x63617073656D616ELL;
  }

  return 0x736369706F74;
}

void sub_1001B2BEC()
{
  sub_100007E34();
  v1 = sub_10007B9A4(&qword_100271968, &qword_1001F0CF0);
  sub_100002CC4(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_10000710C();
  sub_100004DF8();
  sub_1001B4000();
  sub_10000A664();
  sub_10007B9A4(&qword_100271920, &qword_1001F0CD8);
  sub_1001B42DC();
  sub_100005654();
  sub_100006274();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_10007B9A4(&qword_100271938, &qword_1001F0CE0);
    sub_1001B43B4();
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10007B9A4(&qword_100271950, &qword_1001F0CE8);
    sub_1001B448C();
    sub_100005654();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v7 = *(v3 + 8);
  v8 = sub_10000A298();
  v9(v8);
  sub_100012FB0();
  sub_100005B78();
}

void sub_1001B2D7C()
{
  sub_100007E34();
  v1 = v0;
  v2 = sub_10007B9A4(&qword_100271910, &qword_1001F0CD0);
  sub_100002CC4(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_100006264();
  v6 = v1[3];
  v7 = v1[4];
  sub_10000A264(v1);
  sub_1001B4000();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10007B9A4(&qword_100271920, &qword_1001F0CD8);
  sub_1001B4054();
  sub_10000616C();
  sub_10001CDEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_100271938, &qword_1001F0CE0);
  sub_1001B412C();
  sub_10000616C();
  sub_10001CDEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_100271950, &qword_1001F0CE8);
  sub_1001B4204();
  sub_10000616C();
  sub_10001CDEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = sub_10000B434();
  v9(v8);
  sub_100002C00(v1);
  sub_100005B78();
}

uint64_t sub_1001B2F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B191C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B2FC0(uint64_t a1)
{
  v2 = sub_1001B5140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B2FFC(uint64_t a1)
{
  v2 = sub_1001B5140();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001B3038@<D0>(_OWORD *a1@<X8>)
{
  sub_1001B1BCC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void sub_1001B3094(void *a1@<X8>)
{
  sub_1001B1FF4();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_1001B311C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001B2760();
  *a2 = result;
  return result;
}

uint64_t sub_1001B3154()
{
  v1 = sub_10003AF60();
  result = sub_1001B2420(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B3184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B2760();
  *a1 = result;
  return result;
}

uint64_t sub_1001B31B4(uint64_t a1)
{
  v2 = sub_1001B5000();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B31F0(uint64_t a1)
{
  v2 = sub_1001B5000();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B3258@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1001B328C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1001B244C();
}

uint64_t sub_1001B32D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001B2760();
  *a2 = result;
  return result;
}

uint64_t sub_1001B3308()
{
  v1 = sub_10003AF60();
  result = sub_1001B27A8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001B3338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001B2760();
  *a1 = result;
  return result;
}

uint64_t sub_1001B3368(uint64_t a1)
{
  v2 = sub_1001B5054();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B33A4(uint64_t a1)
{
  v2 = sub_1001B5054();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001B340C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1001B27D4();
}

uint64_t sub_1001B3434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B2A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B345C(uint64_t a1)
{
  v2 = sub_1001B4000();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B3498(uint64_t a1)
{
  v2 = sub_1001B4000();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001B34D4(void *a1@<X8>)
{
  sub_1001B2D7C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

void sub_1001B3504()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1001B2BEC();
}

uint64_t sub_1001B3524()
{
  sub_10007B9A4(&qword_10026D348, qword_1001EC858);
  v1 = [*(v0 + 16) URLForKey:*(v0 + 24)];
  v2 = [v1 valuePromise];

  Promise<A>.init(_:)();
  v3 = type metadata accessor for SyncTaskScheduler();
  v7 = v3;
  v8 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v6);
  sub_100005F2C();

  SyncTaskScheduler.init()();
  sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
  sub_1001B3BDC();
  Promise.flatMap<A>(on:_:)();
  sub_100005F2C();

  sub_100002C00(v6);
  v7 = v3;
  v8 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v6);
  SyncTaskScheduler.init()();
  v4 = Promise.map<A>(on:_:)();

  sub_100002C00(v6);
  return v4;
}

uint64_t sub_1001B369C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FB30, &qword_1001EEF50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for URLRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  (*(v11 + 16))(v7, v14, v10);
  sub_10000A7C0(v7, 0, 1, v10);
  v16 = *(a2 + 16);
  objc_allocWithZone(AMSURLRequest);
  swift_unknownObjectRetain();
  v17 = sub_1001B3D38(v7, v16);
  if (v17)
  {
    v18 = v17;
    v19 = [*(a2 + 32) dataTaskPromiseWithRequest:v17];
    sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
    v20 = Promise<A>.init(_:)();
  }

  else
  {
    sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
    sub_1001B3C40();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 1;
    v20 = Promise.__allocating_init(error:)();
  }

  (*(v11 + 8))(v14, v10);
  return v20;
}

void sub_1001B3924(id *a1)
{
  v2 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = [*a1 response];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_6:
    sub_1001B3C40();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 1;
    swift_willThrow();
    return;
  }

  v11 = [v10 statusCode];
  if ((v11 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v15 = type metadata accessor for JSONDecoder();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    (*(v3 + 104))(v6, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v2);
    dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
    v18 = [v7 data];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_1001B3C94();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000253FC(v19, v21);
  }

  else
  {
    v12 = v11;
    sub_1001B3C40();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1001B3B70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1001B3BA0()
{
  sub_1001B3B70();

  return swift_deallocClassInstance();
}

unint64_t sub_1001B3BDC()
{
  result = qword_100270B60;
  if (!qword_100270B60)
  {
    sub_10007BC70(&unk_100271830, &unk_1001F0A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270B60);
  }

  return result;
}

unint64_t sub_1001B3C40()
{
  result = qword_100271840;
  if (!qword_100271840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271840);
  }

  return result;
}

unint64_t sub_1001B3C94()
{
  result = qword_100271848;
  if (!qword_100271848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271848);
  }

  return result;
}

uint64_t sub_1001B3CE8(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 != 0);
  if (!a1)
  {
    v4 = a4 & (a3 == 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

id sub_1001B3D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URLRequest();
  isa = 0;
  if (sub_100009F34(a1, 1, v6) != 1)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithRequest:isa bag:a2];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t type metadata accessor for TreatmentsConfiguration.Area.Experiment()
{
  result = qword_1002718B0;
  if (!qword_1002718B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B3E90()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1001B3F3C();
    if (v1 <= 0x3F)
    {
      sub_1001B3FA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B3F3C()
{
  if (!qword_1002718C0)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002718C0);
    }
  }
}

void sub_1001B3FA0()
{
  if (!qword_1002718D0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002718D0);
    }
  }
}

unint64_t sub_1001B4000()
{
  result = qword_100271918;
  if (!qword_100271918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271918);
  }

  return result;
}

unint64_t sub_1001B4054()
{
  result = qword_100271928;
  if (!qword_100271928)
  {
    sub_10007BC70(&qword_100271920, &qword_1001F0CD8);
    sub_1001B40D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271928);
  }

  return result;
}

unint64_t sub_1001B40D8()
{
  result = qword_100271930;
  if (!qword_100271930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271930);
  }

  return result;
}

unint64_t sub_1001B412C()
{
  result = qword_100271940;
  if (!qword_100271940)
  {
    sub_10007BC70(&qword_100271938, &qword_1001F0CE0);
    sub_1001B41B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271940);
  }

  return result;
}

unint64_t sub_1001B41B0()
{
  result = qword_100271948;
  if (!qword_100271948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271948);
  }

  return result;
}

unint64_t sub_1001B4204()
{
  result = qword_100271958;
  if (!qword_100271958)
  {
    sub_10007BC70(&qword_100271950, &qword_1001F0CE8);
    sub_1001B4288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271958);
  }

  return result;
}

unint64_t sub_1001B4288()
{
  result = qword_100271960;
  if (!qword_100271960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271960);
  }

  return result;
}

unint64_t sub_1001B42DC()
{
  result = qword_100271970;
  if (!qword_100271970)
  {
    sub_10007BC70(&qword_100271920, &qword_1001F0CD8);
    sub_1001B4360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271970);
  }

  return result;
}

unint64_t sub_1001B4360()
{
  result = qword_100271978;
  if (!qword_100271978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271978);
  }

  return result;
}

unint64_t sub_1001B43B4()
{
  result = qword_100271980;
  if (!qword_100271980)
  {
    sub_10007BC70(&qword_100271938, &qword_1001F0CE0);
    sub_1001B4438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271980);
  }

  return result;
}

unint64_t sub_1001B4438()
{
  result = qword_100271988;
  if (!qword_100271988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271988);
  }

  return result;
}

unint64_t sub_1001B448C()
{
  result = qword_100271990;
  if (!qword_100271990)
  {
    sub_10007BC70(&qword_100271950, &qword_1001F0CE8);
    sub_1001B4510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271990);
  }

  return result;
}

unint64_t sub_1001B4510()
{
  result = qword_100271998;
  if (!qword_100271998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271998);
  }

  return result;
}

unint64_t sub_1001B4564()
{
  result = qword_1002719A8;
  if (!qword_1002719A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719A8);
  }

  return result;
}

unint64_t sub_1001B45B8()
{
  result = qword_1002719C8;
  if (!qword_1002719C8)
  {
    sub_10007BC70(&qword_1002719C0, &qword_1001F0D00);
    sub_1001B463C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719C8);
  }

  return result;
}

unint64_t sub_1001B463C()
{
  result = qword_1002719D0;
  if (!qword_1002719D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719D0);
  }

  return result;
}

uint64_t sub_1001B4690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TreatmentsConfiguration.Area.Experiment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B46F4(uint64_t a1)
{
  v2 = type metadata accessor for TreatmentsConfiguration.Area.Experiment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001B4750(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B47B4()
{
  result = qword_1002719F0;
  if (!qword_1002719F0)
  {
    sub_10007BC70(&qword_1002719C0, &qword_1001F0D00);
    sub_1001B4838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719F0);
  }

  return result;
}

unint64_t sub_1001B4838()
{
  result = qword_1002719F8;
  if (!qword_1002719F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719F8);
  }

  return result;
}

unint64_t sub_1001B488C()
{
  result = qword_100271A08;
  if (!qword_100271A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A08);
  }

  return result;
}

unint64_t sub_1001B48E0(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    sub_10007BC70(&qword_10026BC50, &unk_1001E9720);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B4944(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_100271A10, &unk_1001F0D18);
    sub_1001B48E0(v4);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1001B4A08(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001B4A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B4A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1001B4AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001B4B48()
{
  result = qword_100271A48;
  if (!qword_100271A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A48);
  }

  return result;
}

unint64_t sub_1001B4BA0()
{
  result = qword_100271A50;
  if (!qword_100271A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A50);
  }

  return result;
}

unint64_t sub_1001B4BF8()
{
  result = qword_100271A58;
  if (!qword_100271A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A58);
  }

  return result;
}

unint64_t sub_1001B4C50()
{
  result = qword_100271A60;
  if (!qword_100271A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A60);
  }

  return result;
}

unint64_t sub_1001B4CA8()
{
  result = qword_100271A68;
  if (!qword_100271A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A68);
  }

  return result;
}

unint64_t sub_1001B4D00()
{
  result = qword_100271A70;
  if (!qword_100271A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A70);
  }

  return result;
}

unint64_t sub_1001B4D58()
{
  result = qword_100271A78;
  if (!qword_100271A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A78);
  }

  return result;
}

unint64_t sub_1001B4DB0()
{
  result = qword_100271A80;
  if (!qword_100271A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A80);
  }

  return result;
}

unint64_t sub_1001B4E08()
{
  result = qword_100271A88;
  if (!qword_100271A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A88);
  }

  return result;
}

unint64_t sub_1001B4E5C()
{
  result = qword_100271A98;
  if (!qword_100271A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A98);
  }

  return result;
}

unint64_t sub_1001B4EB0(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v4 = v3;
    sub_10007BC70(&qword_100271AA0, &qword_1001F1258);
    sub_1001B50A8(v4);
    sub_1000087E4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B4F44()
{
  result = qword_100271AB8;
  if (!qword_100271AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AB8);
  }

  return result;
}

unint64_t sub_1001B5000()
{
  result = qword_100271AC8;
  if (!qword_100271AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AC8);
  }

  return result;
}

unint64_t sub_1001B5054()
{
  result = qword_100271AD8;
  if (!qword_100271AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AD8);
  }

  return result;
}

unint64_t sub_1001B50A8(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001B50EC()
{
  result = qword_100271AF8;
  if (!qword_100271AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AF8);
  }

  return result;
}

unint64_t sub_1001B5140()
{
  result = qword_100271B18;
  if (!qword_100271B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B18);
  }

  return result;
}

uint64_t sub_1001B5194(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10000A7A8(-1);
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
      return sub_10000A7A8((*a1 | (v4 << 8)) - 3);
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

      return sub_10000A7A8((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10000A7A8((*a1 | (v4 << 8)) - 3);
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

  return sub_10000A7A8(v8);
}

_BYTE *sub_1001B5218(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_1000240B4(result, v6);
        break;
      case 2:
        result = sub_100015C68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100018130(result, v6);
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
          result = sub_1000068E0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001B52F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10000A7A8(-1);
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
      return sub_10000A7A8((*a1 | (v4 << 8)) - 2);
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

      return sub_10000A7A8((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10000A7A8((*a1 | (v4 << 8)) - 2);
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

  return sub_10000A7A8(v8);
}

_BYTE *sub_1001B5378(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1000240B4(result, v6);
        break;
      case 2:
        result = sub_100015C68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100018130(result, v6);
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
          result = sub_1000068E0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001B5444(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10000A7A8(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return sub_10000A7A8((*a1 | (v4 << 8)) - 5);
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

      return sub_10000A7A8((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10000A7A8((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10000A7A8(v8);
}

_BYTE *sub_1001B54C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_1000240B4(result, v6);
        break;
      case 2:
        result = sub_100015C68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100018130(result, v6);
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
          result = sub_1000068E0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B5598()
{
  result = qword_100271B28;
  if (!qword_100271B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B28);
  }

  return result;
}

unint64_t sub_1001B55F0()
{
  result = qword_100271B30;
  if (!qword_100271B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B30);
  }

  return result;
}

unint64_t sub_1001B5648()
{
  result = qword_100271B38;
  if (!qword_100271B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B38);
  }

  return result;
}

unint64_t sub_1001B56A0()
{
  result = qword_100271B40;
  if (!qword_100271B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B40);
  }

  return result;
}

unint64_t sub_1001B56F8()
{
  result = qword_100271B48;
  if (!qword_100271B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B48);
  }

  return result;
}

unint64_t sub_1001B5750()
{
  result = qword_100271B50;
  if (!qword_100271B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B50);
  }

  return result;
}

unint64_t sub_1001B57A8()
{
  result = qword_100271B58;
  if (!qword_100271B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B58);
  }

  return result;
}

unint64_t sub_1001B5800()
{
  result = qword_100271B60;
  if (!qword_100271B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B60);
  }

  return result;
}

unint64_t sub_1001B5858()
{
  result = qword_100271B68;
  if (!qword_100271B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B68);
  }

  return result;
}

unint64_t sub_1001B58B0()
{
  result = qword_100271B70;
  if (!qword_100271B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B70);
  }

  return result;
}

unint64_t sub_1001B5908()
{
  result = qword_100271B78;
  if (!qword_100271B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B78);
  }

  return result;
}

unint64_t sub_1001B5960()
{
  result = qword_100271B80;
  if (!qword_100271B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271B80);
  }

  return result;
}

uint64_t sub_1001B59E8(uint64_t a1)
{
  *(v1 + 16) = xmmword_1001F1760;
  *(v1 + 32) = 0xFFFFFFFFFFFFLL;
  *(v1 + 40) = a1 & 0xFFFFFFFFFFFFLL ^ 0x5DEECE66DLL;
  return v1;
}

unint64_t sub_1001B5A18(uint64_t a1)
{
  v2 = 0x5DEECE66DLL;
  v3 = 0x5DEECE66DLL * *(v1 + 40);
  v4 = __OFADD__(v3, 11);
  v5 = v3 + 11;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 &= 0xFFFFFFFFFFFFuLL;
  *(v1 + 40) = v5;
  v2 = 48 - a1;
  if (__OFSUB__(48, a1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((-17 - a1) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = v5 >> v2;
    if (v2 == 64)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

LABEL_11:
  if (v2 == -64)
  {
    return 0;
  }

  return v5 << -v2;
}

uint64_t sub_1001B5A8C(uint64_t a1)
{
  result = sub_1001B5A18(31);
  v3 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = result;
  if ((v3 & a1) != 0)
  {
    if (!a1)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (result == 0x8000000000000000 && a1 == -1)
    {
      goto LABEL_30;
    }

    result %= a1;
    v6 = __OFSUB__(v4, v4 % a1);
    v7 = v4 - v4 % a1;
    if (v6)
    {
      goto LABEL_27;
    }

    v6 = __OFADD__(v7, v3);
    v8 = v7 + v3;
    if (v6)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v8 < 0)
    {
      while (1)
      {
        result = sub_1001B5A18(31);
        if (result == 0x8000000000000000 && a1 == -1)
        {
          break;
        }

        v10 = result;
        result %= a1;
        v6 = __OFSUB__(v10, result);
        v11 = v10 - result;
        if (v6)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          break;
        }

        v6 = __OFADD__(v11, v3);
        v12 = v11 + v3;
        if (v6)
        {
          goto LABEL_23;
        }

        if ((v12 & 0x8000000000000000) == 0)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    if ((a1 * result) >> 64 != (a1 * result) >> 63)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    return (a1 * result) >> 31;
  }

  return result;
}

uint64_t sub_1001B5BA8()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = sub_100002CC4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002DEC();
  v8 = v7 - v6;
  sub_100004AA0();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  sub_100004AA0();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v29 = (v11 + 16);
  v12 = dispatch_semaphore_create(0);
  sub_100007A3C();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v9;
  v13[4] = v12;
  v14 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v0);

  v31[6] = v9;

  v30 = v12;
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v8, v0);
  v31[3] = v14;
  v31[4] = &protocol witness table for OS_dispatch_queue;
  v31[0] = v15;
  sub_100002FB8();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1001B826C;
  *(v16 + 24) = v13;
  v17 = objc_allocWithZone(NSLock);
  v18 = v15;

  v19 = [v17 init];
  sub_100002FB8();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v16;
  sub_100002FB8();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v16;
  v22 = v19;
  swift_retain_n();
  v23 = v22;
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v31);
  OS_dispatch_semaphore.wait()();
  sub_10000602C();
  v24 = *v10;
  if (*v10)
  {
    v25 = *v10;
  }

  else
  {
    sub_10000602C();
    v24 = *v29;
    if (*v29)
    {
      v26 = *v29;
    }

    else
    {
      v27 = sub_100007D90();
      sub_100004810();
      String._bridgeToObjectiveC()();
      sub_10000ADA4();

      v24 = 0;
    }

    swift_willThrow();
    swift_errorRetain();
  }

  return v24;
}

void sub_1001B5F34(_OWORD *a1@<X8>)
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = swift_allocObject();
  *(v10 + 32) = 0u;
  *(v10 + 16) = 0u;
  sub_100004AA0();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = dispatch_semaphore_create(0);
  sub_100007A3C();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v10;
  v13[4] = v12;
  v14 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v1);
  v31 = v11;

  v27 = v12;
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v9, v1);
  *(&v29 + 1) = v14;
  v30 = &protocol witness table for OS_dispatch_queue;
  *&v28 = v15;
  sub_100002FB8();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1001B8280;
  *(v16 + 24) = v13;
  v17 = objc_allocWithZone(NSLock);
  v18 = v15;

  v19 = [v17 init];
  sub_100002FB8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  sub_100002FB8();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v16;
  v22 = v19;
  swift_retain_n();
  v23 = v22;
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(&v28);
  OS_dispatch_semaphore.wait()();
  sub_10000602C();
  sub_1000E0BFC(v10 + 16, &v28, &qword_10026C928, &unk_1001EBE08);
  if (*(&v29 + 1))
  {

    v24 = v29;
    *a1 = v28;
    a1[1] = v24;
  }

  else
  {
    sub_10000A00C(&v28, &qword_10026C928, &unk_1001EBE08);
    sub_10000602C();
    if (!*(v11 + 16))
    {
      v25 = sub_100007D90();
      sub_100004810();
      String._bridgeToObjectiveC()();
      sub_10000ADA4();
    }

    swift_willThrow();
    swift_errorRetain();
  }
}

void sub_1001B6300()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v24 = (v7 + 16);
  v8 = dispatch_semaphore_create(0);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v8;
  v10 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);

  v26[6] = v5;

  v25 = v8;
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  v26[3] = v10;
  v26[4] = &protocol witness table for OS_dispatch_queue;
  v26[0] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001B8250;
  *(v12 + 24) = v9;
  v13 = objc_allocWithZone(NSLock);
  v14 = v11;

  v15 = [v13 init];
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v12;
  v18 = v15;
  swift_retain_n();
  v19 = v18;
  Promise.then(perform:orCatchError:on:)();

  v20 = v25;

  sub_100002C00(v26);
  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  if (*v6)
  {
    v21 = v24;
    swift_beginAccess();
    if (!*v21)
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = String._bridgeToObjectiveC()();
      AMSError();
    }

    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
  }
}

Swift::Int sub_1001B66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();

  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a1;

  return OS_dispatch_semaphore.signal()();
}

Swift::Int sub_1001B679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();

  swift_beginAccess();
  sub_1001B82C8(a1, a4 + 16);
  return OS_dispatch_semaphore.signal()();
}

Swift::Int sub_1001B6834(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();

  swift_beginAccess();
  *(a4 + 16) = a1 & 1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1001B68C8()
{
  v1 = (v0 + *(type metadata accessor for Treatment(0) + 20));
  v3 = *v1;
  v4 = v1[1];
  sub_10001ECE0();
  return StringProtocol.hash.getter();
}

uint64_t sub_1001B691C()
{
  v1 = (v0 + *(type metadata accessor for Treatment(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return String.hash(into:)();
}

uint64_t sub_1001B6964(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Treatment(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);

  return static Date.== infix(_:_:)();
}

Swift::Int sub_1001B6A08(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001B6A58(uint64_t a1, uint64_t a2)
{
  v4 = URL.path.getter();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  type metadata accessor for SQLDatabase();
  swift_allocObject();

  return SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(v4, v6, 0, 0, sub_10001B2A0, v7, sub_1001B821C, a1);
}

uint64_t sub_1001B6B28()
{
  sub_1001B6B6C();
  sub_1001B6300();
}

uint64_t sub_1001B6B6C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100002CC4(v2);
  v27 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v9 = v8 - v7;
  v26 = type metadata accessor for DispatchQoS();
  v10 = sub_100002CC4(v26);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v17 = v16 - v15;
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v18 = Promise.__allocating_init()();
  v19 = URL.path.getter();
  v21 = v20;
  v25 = *(v1 + 16);
  sub_100007A3C();
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v21;
  v22[4] = v18;
  aBlock[4] = sub_1001B8210;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253280;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10003B11C(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v27 + 8))(v9, v2);
  (*(v12 + 8))(v17, v26);

  return v18;
}

uint64_t sub_1001B6E40()
{
  type metadata accessor for SQLDatabase();
  static SQLDatabase.removeDatabase(path:)();
  return Promise.resolve(_:)();
}

uint64_t sub_1001B6F6C()
{
  sub_100019DE0();
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  v5 = sub_10000827C(inited);
  *(v5 + 56) = v1;
  *(v5 + 64) = v0;
  *(v5 + 72) = v6;

  sub_10000C4CC(61, 0x8000000100203A10);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B706C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = *(result + 16);
  v10 = (result + 40);
  if (v9)
  {
    while (1)
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      a4(v11, v12, a2, a3);
      if (v6)
      {
        break;
      }

      v10 += 2;
      if (!--v9)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1001B710C()
{
  sub_100019DE0();
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  v5 = sub_10000827C(inited);
  *(v5 + 56) = v1;
  *(v5 + 64) = v0;
  *(v5 + 72) = v6;

  sub_10000C4CC(53, 0x80000001002039D0);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B71E0(uint64_t a1)
{
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  sub_100007784();
  v2._countAndFlagsBits = 0x7361657261;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6C62616568636163;
  v4._object = 0xE900000000000065;
  String.append(_:)(v4);
  sub_1000062F0();
  v5._countAndFlagsBits = sub_100004B94();
  v5._object = (v6 + 1020);
  String.append(_:)(v5);
  sub_1000062F0();
  v7._countAndFlagsBits = 1953259891;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  sub_1000062F0();
  v8._object = 0x8000000100203990;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  sub_1000062F0();
  v9._countAndFlagsBits = 0x616D6F4464656573;
  v9._object = 0xEA00000000006E69;
  String.append(_:)(v9);
  sub_1000062F0();
  v10._countAndFlagsBits = 0x6570795464656573;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x80000001002039B0;
  String.append(_:)(v11);
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ED060;
  *(inited + 32) = *a1 & 1;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  v13 = *(a1 + 16);
  *(inited + 56) = *(a1 + 8);
  *(inited + 64) = v13;
  *(inited + 72) = 3;
  v28 = *(a1 + 24);
  v15 = *(&v28 + 1);
  v14 = v28;
  if (*(&v28 + 1))
  {
    v16 = 3;
  }

  else
  {
    v14 = 0;
    v16 = 4;
  }

  *(inited + 80) = v14;
  *(inited + 88) = v15;
  *(inited + 96) = v16;
  v27 = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v22 = *(&v27 + 1);
  v21 = v27;
  if (*(&v27 + 1))
  {
    v23 = 3;
  }

  else
  {
    v21 = 0;
    v23 = 4;
  }

  *(inited + 104) = v21;
  *(inited + 112) = v22;
  *(inited + 120) = v23;
  *(inited + 128) = v17;
  *(inited + 136) = v18;
  *(inited + 144) = 3;
  *(inited + 152) = v19;
  *(inited + 160) = v20;
  *(inited + 168) = 3;

  sub_1000E0BFC(&v28, v26, &unk_10026CD20, &unk_1001E7CC0);
  sub_1000E0BFC(&v27, v26, &unk_10026CD20, &unk_1001E7CC0);

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v24, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _StringGuts.grow(_:)(67);
  sub_100007784();
  v11._countAndFlagsBits = 0x6E656D7461657274;
  v11._object = 0xEA00000000007374;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 10272;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100012E04();
  String.append(_:)(v13);
  sub_1000062F0();
  v14._countAndFlagsBits = 0x614D74656B637562;
  v14._object = 0xE900000000000078;
  String.append(_:)(v14);
  sub_1000062F0();
  v15._countAndFlagsBits = 0x694D74656B637562;
  v15._object = 0xE90000000000006ELL;
  String.append(_:)(v15);
  sub_1000062F0();
  v16._countAndFlagsBits = 0x65746144646E65;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  sub_1000062F0();
  v17._countAndFlagsBits = sub_100004B94();
  v17._object = 0xEA00000000007265;
  String.append(_:)(v17);
  sub_1000062F0();
  v18._countAndFlagsBits = 0x7461447472617473;
  v18._object = 0xE900000000000065;
  String.append(_:)(v18);
  sub_1000062F0();
  v19._countAndFlagsBits = 0x6F726665726F7473;
  v19._object = 0xEA0000000000746ELL;
  String.append(_:)(v19);
  sub_100004810();
  v20._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v20);
  sub_100017C14();
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001EF2A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = 3;
  *(inited + 56) = a4;
  *(inited + 64) = 0;
  *(inited + 72) = 1;
  *(inited + 80) = a5;
  *(inited + 88) = 0;
  *(inited + 96) = 1;

  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 104) = v22;
  *(inited + 112) = 0;
  *(inited + 120) = 2;
  v23 = type metadata accessor for Treatment(0);
  v24 = (a1 + *(v23 + 20));
  v26 = *v24;
  v25 = v24[1];
  *(inited + 128) = v26;
  *(inited + 136) = v25;
  *(inited + 144) = 3;
  v27 = *(v23 + 24);

  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 152) = v28;
  *(inited + 160) = 0;
  *(inited + 168) = 2;
  v29 = a6;
  if (a7)
  {
    v30 = 3;
  }

  else
  {
    v29 = 0;
    v30 = 4;
  }

  *(inited + 176) = v29;
  *(inited + 184) = a7;
  *(inited + 192) = v30;

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v31, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1001B7D34()
{
  v1 = type metadata accessor for Treatment(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v21 - v7;
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  sub_100041D2C();
  if (!v0)
  {
    if (v11)
    {
      sub_1001B80FC();
      swift_allocError();
      v13 = xmmword_1001F17D0;
    }

    else
    {
      v14 = sub_10001ADD4();
      v17 = v15;
      if (v15)
      {
        v21 = v14;
        sub_100041D2C();
        if ((v18 & 1) == 0)
        {
          Date.init(timeIntervalSinceReferenceDate:)();
          v19 = &v10[*(v1 + 24)];
          Date.init(timeIntervalSinceReferenceDate:)();
          v20 = &v10[*(v1 + 20)];
          *v20 = v21;
          *(v20 + 1) = v17;
          sub_1001B8150(v10, v5);
          swift_beginAccess();
          sub_1001C5E58();
          swift_endAccess();
          sub_1001B81B4(v8);
          sub_1001B81B4(v10);
          return 1;
        }

        sub_1001B80FC();
        swift_allocError();
        v13 = xmmword_1001F17B0;
      }

      else
      {
        sub_1001B80FC();
        swift_allocError();
        v13 = xmmword_1001F17C0;
      }
    }

    *v12 = v13;
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1001B7FCC()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14amsengagementd17TreatmentsStorage_storageURL;
  v3 = type metadata accessor for URL();
  sub_100002DDC(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1001B8034()
{
  sub_1001B7FCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1001B80FC()
{
  result = qword_100271DC8;
  if (!qword_100271DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271DC8);
  }

  return result;
}

uint64_t sub_1001B8150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Treatment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B81B4(uint64_t a1)
{
  v2 = type metadata accessor for Treatment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B8210()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1001B6E40();
}

id sub_1001B8264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000EE494();
}

id sub_1001B8278(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1001B8240(a1);
}

uint64_t sub_1001B828C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1001B82C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026C928, &unk_1001EBE08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1001B8388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001B83DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1001B83F4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001B8464()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001B850C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = 0;
  Set.init(minimumCapacity:)();
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  sub_100004E5C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    do
    {
      v11 = v3;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      sub_1000190C0();
    }

    while (v8);
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++v3;
    if (v8)
    {
      v3 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1001B8614(uint64_t a1)
{
  sub_10004369C(a1);
  sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
  sub_1001BEBAC();
  v12 = Set.init(minimumCapacity:)();
  v2 = sub_100049574(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1001C60E0(&v11, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1001B8710()
{
  sub_100004768();
  v1[20] = v2;
  v1[21] = v0;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  v1[22] = sub_100023C0C();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001B8788()
{
  v1 = AMSSetLogKeyIfNeeded();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 184) = v2;
  *(v0 + 192) = v4;
  if (qword_100268738 != -1)
  {
    sub_100004E84();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v17 = *(v0 + 160);
  *(v0 + 200) = qword_100287898;
  *(v0 + 208) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  *(v0 + 216) = *(v8 + 72);
  *(v0 + 256) = *(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v10 = type metadata accessor for TreatmentStoreService();
  *(v0 + 224) = v10;
  *(v0 + 40) = v10;
  *(v0 + 16) = v5;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v11._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 72) = &type metadata for Int;
  *(v0 + 48) = v17;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v12 = sub_10000A00C(v0 + 48, &qword_10026D350, &qword_1001E6050);
  sub_100012FBC(v12);
  LogInterpolation.init(stringInterpolation:)();
  v13 = static os_log_type_t.info.getter();
  sub_1000036B0(v13);

  *(v0 + 232) = sub_100015E2C();
  sub_1000058A4(&dword_1001EBD70);
  v18 = v14;
  v15 = swift_task_alloc();
  *(v0 + 240) = v15;
  *v15 = v0;
  sub_10001CC4C(v15);

  return v18();
}

uint64_t sub_1001B8A04()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = sub_1001B8B84;
  }

  else
  {
    v11 = v3[29];
    v12 = v3[24];
    v13 = v3[21];

    v10 = sub_1001B8B20;
    v9 = v13;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1001B8B20()
{
  sub_100004768();
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_1001B8B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017D30();
  sub_1000060E8();
  v18 = *(v16 + 248);
  v19 = *(v16 + 232);

  *(v16 + 144) = v18;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
  if (sub_1000087F0())
  {
    v20 = *(v16 + 248);
    v21 = *(v16 + 224);
    v22 = *(v16 + 208);
    a11 = *(v16 + 216);
    a12 = *(v16 + 200);
    v23 = *(v16 + 192);
    a9 = *(v16 + 184);
    v25 = *(v16 + 168);
    v24 = *(v16 + 176);
    v26 = (*(v16 + 256) + 32) & ~*(v16 + 256);

    v27 = *(v16 + 152);
    *(sub_10004EF0C() + 16) = xmmword_1001E5F70;
    *(v16 + 104) = v21;
    *(v16 + 80) = v25;

    sub_10001B274();

    sub_100002C00((v16 + 80));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100004810();
    v28._countAndFlagsBits = 0xD000000000000029;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    *(v16 + 112) = a10;
    *(v16 + 136) = v17;
    v29 = a10;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v30 = sub_10000A00C(v16 + 112, &qword_10026D350, &qword_1001E6050);
    sub_100012FBC(v30);
    LogInterpolation.init(stringInterpolation:)();
    v31 = static os_log_type_t.error.getter();
    sub_10005AE50(v31);

    [v29 ams_sanitizedForSecureCoding];
    swift_willThrow();
  }

  else
  {
    v32 = *(v16 + 192);

    v33 = *(v16 + 248);
  }

  v34 = *(v16 + 176);
  v35 = *(v16 + 144);

  v36 = *(v16 + 8);
  sub_100003DC0();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001B8D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = *(v22 + 64);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v17 = Promise.__allocating_init()();
  v21[1] = *(v4 + 16);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  aBlock[4] = sub_1001BF158;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253DF8;
  v19 = _Block_copy(aBlock);

  sub_100017E54(a3);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v12, v9);
  (*(v22 + 8))(v16, v23);

  return v17;
}

uint64_t sub_1001B90A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = *(v22 + 64);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271F08, &qword_1001F1B08);
  v17 = Promise.__allocating_init()();
  v21[1] = *(v4 + 16);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  aBlock[4] = sub_100017CB4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253B00;
  v19 = _Block_copy(aBlock);

  sub_100017E54(a3);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v12, v9);
  (*(v22 + 8))(v16, v23);

  return v17;
}

uint64_t sub_1001B93CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = *(v22 + 64);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271EF0, &qword_1001F1AE0);
  v17 = Promise.__allocating_init()();
  v21[1] = *(v4 + 16);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  aBlock[4] = sub_1001BEDC4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002539C0;
  v19 = _Block_copy(aBlock);

  sub_100017E54(a3);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v12, v9);
  (*(v22 + 8))(v16, v23);

  return v17;
}

uint64_t sub_1001B96F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = *(v22 + 64);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100271EB8, &qword_1001F1AA8);
  v17 = Promise.__allocating_init()();
  v21[1] = *(v4 + 16);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  aBlock[4] = sub_100040170;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100253858;
  v19 = _Block_copy(aBlock);

  sub_100017E54(a3);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100005E08(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v12, v9);
  (*(v22 + 8))(v16, v23);

  return v17;
}

uint64_t sub_1001B9A1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(a1);
  Promise.resolve(_:)();
  v6 = *(a1 + 24);
  swift_retain_n();
  sub_10001C50C();
}

uint64_t sub_1001B9D5C(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(v8, a1);
  Promise.resolve(_:)();

  v6 = *(a1 + 24);
  swift_retain_n();
  sub_10001C50C();
}

NSString sub_1001BA154()
{
  result = String._bridgeToObjectiveC()();
  qword_100287938 = result;
  return result;
}

NSString sub_1001BA18C()
{
  result = String._bridgeToObjectiveC()();
  qword_100287940 = result;
  return result;
}

id sub_1001BA1CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v66 = a4;
  v61 = a2;
  v62 = a3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - v17;
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  v21 = *a1;
  if (qword_100268688 != -1)
  {
    swift_once();
  }

  v22 = qword_1002877E0;
  result = [qword_1002877E0 dateFromString:v21];
  if (result)
  {
    v24 = result;
    v54 = v15;
    v55 = v22;
    v59 = a5;
    v60 = v5;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v9;
    v52 = *(v9 + 32);
    v52(v20, v18, v8);
    v25 = v20;
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    v26 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v27 = *(type metadata accessor for LogInterpolation() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v51 = v26;
    v49 = v29 + 2 * v28;
    v30 = swift_allocObject();
    v48 = xmmword_1001E5F70;
    *(v30 + 16) = xmmword_1001E5F70;
    v50 = v29;
    v47 = type metadata accessor for TreatmentStoreService();
    v65 = v47;
    v63 = v61;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v63);
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v63 = 0xD000000000000017;
    v64 = 0x8000000100204000;
    v31 = sub_100005E08(&unk_100271F70, &type metadata accessor for Date);
    v57 = v25;
    v46 = v31;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v65 = &type metadata for String;
    v53 = v28;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v63, &qword_10026D350, &qword_1001E6050);
    v33 = static os_log_type_t.debug.getter();
    sub_1000036B0(v33);

    v34 = [objc_opt_self() standardUserDefaults];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 stringForKey:v35];

    if (v36 && (v37 = [v55 dateFromString:v36], v36, v37))
    {
      v38 = v56;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = v54;
      v52(v54, v38, v8);
      *(swift_allocObject() + 16) = v48;
      v65 = v47;
      v63 = v61;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v63);
      v63 = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v63 = 0xD00000000000001BLL;
      v64 = 0x8000000100204020;
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v65 = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v63, &qword_10026D350, &qword_1001E6050);
      v41 = static os_log_type_t.debug.getter();
      sub_1000036B0(v41);

      v42 = v57;
      v43 = static Date.> infix(_:_:)();
      v44 = *(v58 + 8);
      v44(v39, v8);
      result = (v44)(v42, v8);
      v45 = v43 & 1;
    }

    else
    {
      result = (*(v58 + 8))(v57, v8);
      v45 = 1;
    }

    a5 = v59;
  }

  else
  {
    v45 = 0;
  }

  *a5 = v45;
  return result;
}

uint64_t sub_1001BA7F4()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = sub_100002CC4(v1);
  v136 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v8 = v7 - v6;
  v9 = type metadata accessor for OSSignpostID();
  v10 = sub_100002CC4(v9);
  v137 = v11;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v10);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v121 - v17;
  v19 = type metadata accessor for OSSignposter();
  v20 = sub_100002CC4(v19);
  v139 = v21;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v20);
  v25 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v138 = &v121 - v26;
  v27 = type metadata accessor for Date();
  v28 = sub_100002CC4(v27);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v140 = v0;
  v37 = *(v0 + 208);
  if (v37)
  {
  }

  else
  {
    v127 = &v121 - v35;
    v133 = v16;
    v134 = v18;
    v129 = v23;
    v130 = v8;
    v131 = v1;
    v135 = v19;
    if (qword_100268688 != -1)
    {
      v119 = v34;
      v120 = v36;
      swift_once();
      v36 = v120;
      v34 = v119;
    }

    v38 = v36;
    v39 = v34;
    v132 = qword_1002877E0;
    v40 = *(v140 + 160);
    v128 = v9;
    v41 = v137;
    v43 = v133;
    v42 = v134;
    v44 = v25;
    if ((v40 & 1) == 0)
    {
      v45 = *(v140 + 152);
      v46 = [objc_opt_self() standardUserDefaults];
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 stringForKey:v47];

      v43 = v133;
      v42 = v134;
      if (v48)
      {
        v49 = [v132 dateFromString:v48];

        if (v49)
        {
          v50 = v127;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          Date.timeIntervalSinceNow.getter();
          if (fabs(v51) < v45)
          {
            sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
            v52 = String._bridgeToObjectiveC()();
            v53 = String._bridgeToObjectiveC()();
            v54 = AMSError();

            v37 = Promise.__allocating_init(error:)();
            (*(v38 + 8))(v50, v39);
            return v37;
          }

          (*(v38 + 8))(v50, v39);
        }
      }
    }

    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v33, v39);
    v56 = [v132 stringFromDate:isa];

    if (!v56)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = String._bridgeToObjectiveC()();
    }

    v57 = [objc_opt_self() standardUserDefaults];
    v58 = String._bridgeToObjectiveC()();
    [v57 setObject:v56 forKey:v58];

    if (qword_100268738 != -1)
    {
      sub_100004E84();
    }

    v59 = v44;
    v60 = *(qword_100287898 + 16);
    OSSignposter.init(logHandle:)();
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v61 = OSSignposter.logHandle.getter();
    v62 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v62, v64, "TreatmentStoreService", "Synchronizing treatments", v63, 2u);
      v41 = v137;
    }

    v65 = v128;
    (*(v41 + 16))(v43, v42, v128);
    v66 = type metadata accessor for OSSignpostIntervalState();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v137 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v41 + 8))(v42, v65);
    v69 = AMSSetLogKeyIfNeeded();
    v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v72 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v72);
    v74 = *(v73 + 72);
    v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v142 = type metadata accessor for TreatmentStoreService();
    v77 = v140;
    v141[0] = v140;

    v133 = v71;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v141);
    LogInterpolation.init(stringLiteral:)();
    v78 = static os_log_type_t.default.getter();
    sub_1000036B0(v78);

    v79 = v77[25];
    v80 = v77[22];
    sub_1001B3524();
    sub_100003EFC();
    v142 = type metadata accessor for SyncTaskScheduler();
    v143 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v141);
    sub_100011624();

    SyncTaskScheduler.init()();
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    sub_1000070D4();
    sub_100006070(v81, &qword_100271F20, &qword_1001EBE90);
    v121 = Promise.flatMap<A>(on:_:)();

    sub_100002C00(v141);
    v82 = v139;
    v83 = *(v139 + 16);
    v128 = v139 + 16;
    v132 = v83;
    v84 = v44;
    v122 = v44;
    v85 = v138;
    v86 = v135;
    (v83)(v84, v138, v135);
    v87 = *(v82 + 80);
    v88 = v82;
    v127 = v87;
    v89 = (v87 + 16) & ~v87;
    v124 = v89;
    v90 = (v129 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = v90;
    v125 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
    v91 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
    v92 = swift_allocObject();
    v123 = *(v88 + 32);
    v129 = v88 + 32;
    v123(v92 + v89, v59, v86);
    *(v92 + v90) = v137;
    *(v92 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
    v93 = (v92 + v91);
    v94 = v133;
    *v93 = v134;
    v93[1] = v94;

    v95 = v121;
    sub_1000ED260();

    v96 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v97 = v136;
    v99 = v130;
    v98 = v131;
    (*(v136 + 104))(v130, enum case for DispatchQoS.QoSClass.default(_:), v131);

    v100 = static OS_dispatch_queue.global(qos:)();
    (*(v97 + 8))(v99, v98);
    v142 = v96;
    v143 = &protocol witness table for OS_dispatch_queue;
    v141[0] = v100;
    sub_100002FB8();
    v101 = swift_allocObject();
    *(v101 + 16) = sub_1001BEED4;
    *(v101 + 24) = v77;
    v102 = objc_allocWithZone(NSLock);
    v103 = v100;
    sub_100029448();

    v104 = [v102 init];
    sub_100002FB8();
    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = v101;
    sub_100002FB8();
    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    *(v106 + 24) = v101;
    v107 = v104;
    swift_retain_n();
    v108 = v107;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v141);
    v109 = v122;
    v110 = v135;
    (v132)(v122, v85, v135);
    v111 = swift_allocObject();
    v112 = v109;
    v113 = v110;
    v123(v111 + v124, v112, v110);
    *(v111 + v126) = v137;
    *(v111 + v125) = v77;
    v114 = (v111 + v91);
    v115 = v133;
    *v114 = v134;
    v114[1] = v115;
    sub_100002FB8();
    v116 = swift_allocObject();
    *(v116 + 16) = sub_1001BEFA4;
    *(v116 + 24) = v111;

    v37 = v95;
    sub_1000ED428(sub_10001278C, v116);

    (*(v139 + 8))(v85, v113);
    v117 = v77[26];
    v77[26] = v95;
  }

  return v37;
}

uint64_t sub_1001BB47C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  sub_1001B6B6C();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001BF0D4;
  *(v7 + 24) = v6;
  v10[3] = type metadata accessor for SyncTaskScheduler();
  v10[4] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v10);

  SyncTaskScheduler.init()();
  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  sub_100006070(&qword_100271F28, &qword_100271F20, &qword_1001EBE90);
  v8 = Promise.flatMap<A>(on:_:)();

  sub_100002C00(v10);
  return v8;
}

uint64_t sub_1001BB5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;

  v8 = sub_1001B8D7C(sub_1001BF0E0, v7, 0, 0);

  return v8;
}

uint64_t sub_1001BB6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *&v144 = a2;
  v139 = type metadata accessor for Treatment(0);
  v9 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v143 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Date();
  v11 = *(v142 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v142);
  v141 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v140 = &v106 - v15;
  v123 = type metadata accessor for TreatmentsConfiguration.Area.Experiment();
  v125 = *(v123 - 8);
  v16 = *(v125 + 64);
  result = __chkstk_darwin(v123);
  v126 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  v20 = (a3 + 48);
  if (v19)
  {
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = *(v20 - 2);

      sub_1001B6F40(v23, v21, v22);
      if (v5)
      {
        goto LABEL_57;
      }

      v20 += 3;
    }

    while (--v19);
  }

  v24 = *(a4 + 16);
  v25 = (a4 + 48);
  v26 = v126;
  if (v24)
  {
    while (1)
    {
      v27 = *(v25 - 1);
      v28 = *v25;
      v29 = *(v25 - 2);

      sub_1001B7040(v29, v27, v28);
      if (v5)
      {
        break;
      }

      v25 += 3;
      if (!--v24)
      {
        goto LABEL_7;
      }
    }

LABEL_57:
  }

LABEL_7:
  v30 = 0;
  v31 = *(v144 + 16);
  v32 = v144 + 32;
  v135 = (v11 + 16);
  v118 = (v11 + 8);
  v33 = v143;
  v109 = v31;
  v108 = v144 + 32;
  while (v30 != v31)
  {
    v115 = v30;
    v34 = v32 + 96 * v30;
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
    v37 = *(v34 + 80);
    v38 = *(v34 + 88);
    v39 = *(v34 + 72);
    v41 = *(v34 + 24);
    v40 = *(v34 + 32);
    __src[0] = *v34;
    v132 = v35;
    *&__src[8] = v35;
    *&__src[16] = v41;
    *&__src[24] = v40;
    v144 = *(v34 + 40);
    v138 = *(v34 + 56);
    *&__src[32] = v144;
    *&__src[48] = v138;
    *&__src[64] = v39;
    *&__src[72] = v37;
    *&__src[80] = v38;
    memcpy(__dst, __src, sizeof(__dst));
    v42 = v144;
    v121 = v138;
    swift_bridgeObjectRetain_n();
    v122 = v39;
    swift_bridgeObjectRetain_n();
    v120 = v38;
    swift_bridgeObjectRetain_n();
    *&v138 = v41;
    swift_bridgeObjectRetain_n();
    v119 = v42;
    swift_bridgeObjectRetain_n();

    sub_1001B71E0(__dst);
    sub_1001BF17C(__src);
    if (v5)
    {
    }

    v113 = *(v36 + 16);
    if (v113)
    {
      v43 = v36 + ((*(v125 + 80) + 32) & ~*(v125 + 80));

      v44 = 0;
      v131 = a1;
      v116 = v36;
      v107 = v43;
      while (1)
      {
        if (v44 >= *(v36 + 16))
        {
LABEL_66:
          __break(1u);
          return result;
        }

        v45 = *(v125 + 72);
        v114 = v44;
        sub_1001BF1D0(v43 + v45 * v44, v26);
        v46 = *v135;
        v47 = v142;
        (*v135)(v140, v26, v142);
        v48 = v123;
        v49 = v26 + *(v123 + 24);
        v130 = v46;
        result = (v46)(v141, v49, v47);
        v50 = *(v26 + *(v48 + 32));
        v117 = *(v50 + 16);
        if (v117)
        {
          break;
        }

LABEL_53:
        v100 = v114 + 1;
        sub_1001BF22C(v26, type metadata accessor for TreatmentsConfiguration.Area.Experiment);
        v101 = *v118;
        v102 = v142;
        (*v118)(v141, v142);
        result = (v101)(v140, v102);
        v44 = v100;
        a1 = v131;
        v36 = v116;
        v43 = v107;
        if (v100 == v113)
        {

          v122 = v119;
          v121 = v138;
          *&v138 = v36;
          goto LABEL_56;
        }
      }

      v51 = 0;
      v52 = *(v26 + *(v48 + 28));
      v53 = v50 + 32;
      v128 = (v52 + 40);
      v112 = v50;
      v111 = v52;
      v110 = v50 + 32;
      while (2)
      {
        if (v51 >= *(v50 + 16))
        {
          goto LABEL_65;
        }

        v124 = v51;
        v54 = (v53 + 24 * v51);
        v55 = *v54;
        v134 = v54[1];
        v56 = v54[2];
        v129 = v55;
        v137 = v56;
        if (v52 && (*&v136 = *(v52 + 16), v136))
        {
          v133 = *(v55 + 16);
          if (v133)
          {
            v127 = v55 + 32;

            v57 = 0;
            v58 = _swiftEmptyArrayStorage;
            while (v57 < *(v55 + 16))
            {
              *&v144 = v5;
              v59 = *(v127 + 8 * v57);

              v60 = v128;
              v61 = v136;
              do
              {
                v62 = *(v60 - 1);
                v63 = *v60;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v66 = v58[2];
                  sub_1000D6318();
                  v58 = v67;
                }

                v64 = v58[2];
                if (v64 >= v58[3] >> 1)
                {
                  sub_1000D6318();
                  v58 = v68;
                }

                v58[2] = v64 + 1;
                v65 = &v58[3 * v64];
                v65[4] = v59;
                v65[5] = v62;
                v65[6] = v63;
                v60 += 2;
                --v61;
              }

              while (v61);

              ++v57;
              v5 = v144;
              v33 = v143;
              v55 = v129;
              if (v57 == v133)
              {
                goto LABEL_37;
              }
            }

LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v58 = _swiftEmptyArrayStorage;
LABEL_37:
          *&v144 = v5;
          v76 = v58[2];
          if (v76)
          {
            v152 = _swiftEmptyArrayStorage;
            sub_10009BB64(0, v76, 0);
            v71 = v152;
            v77 = v58 + 6;
            do
            {
              v78 = *(v77 - 1);
              v79 = *v77;
              v145 = *(v77 - 2);
              v146 = v78;
              v147 = v79;

              sub_10007B9A4(&qword_10026BF00, &unk_1001EA1F0);
              sub_10007B9A4(&qword_100271F60, &qword_1001E7510);
              swift_dynamicCast();
              v80 = v148;
              v81 = v149;
              v152 = v71;
              v83 = v71[2];
              v82 = v71[3];
              if (v83 >= v82 >> 1)
              {
                v136 = v149;
                sub_10009BB64((v82 > 1), v83 + 1, 1);
                v81 = v136;
                v71 = v152;
              }

              v71[2] = v83 + 1;
              v84 = &v71[3 * v83];
              v84[4] = v80;
              *(v84 + 5) = v81;
              v77 += 3;
              --v76;
            }

            while (v76);

            goto LABEL_43;
          }

LABEL_45:
          v71 = _swiftEmptyArrayStorage;
        }

        else
        {
          v69 = *(v55 + 16);
          if (!v69)
          {
            *&v144 = v5;

            goto LABEL_45;
          }

          v148 = _swiftEmptyArrayStorage;

          sub_10009BB64(0, v69, 0);
          v70 = (v55 + 32);
          v71 = v148;
          do
          {
            v72 = *v70;
            v148 = v71;
            v74 = v71[2];
            v73 = v71[3];

            if (v74 >= v73 >> 1)
            {
              result = sub_10009BB64((v73 > 1), v74 + 1, 1);
              v71 = v148;
            }

            v71[2] = v74 + 1;
            v75 = &v71[3 * v74];
            v75[5] = 0;
            v75[6] = 0;
            v75[4] = v72;
            ++v70;
            --v69;
          }

          while (v69);
          *&v144 = v5;
LABEL_43:
          v33 = v143;
        }

        v85 = 0;
        ++v124;
        *&v136 = v71[2];
        v86 = v71 + 6;
        v133 = v71;
        while (v136 != v85)
        {
          if (v85 >= v71[2])
          {
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v88 = *(v86 - 2);
          v87 = *(v86 - 1);
          v89 = *v86;
          v90 = v142;
          v91 = v130;
          v130(v33, v140, v142);
          v92 = v139;
          result = (v91)(&v143[*(v139 + 24)], v141, v90);
          v93 = v137;
          v94 = *(v92 + 20);
          v33 = v143;
          v95 = &v143[v94];
          *v95 = v134;
          *(v95 + 1) = v93;
          if (v88[2] < 2uLL)
          {
            goto LABEL_63;
          }

          v97 = v88[4];
          v96 = v88[5];

          v98 = v96;
          v99 = v144;
          sub_1001B7478(v33, v132, v138, v98, v97, v87, v89);
          *&v144 = v99;
          if (v99)
          {
            sub_1001BF22C(v33, type metadata accessor for Treatment);

            swift_bridgeObjectRelease_n();
            sub_1001BF22C(v126, type metadata accessor for TreatmentsConfiguration.Area.Experiment);
            v104 = *v118;
            v105 = v142;
            (*v118)(v141, v142);
            return (v104)(v140, v105);
          }

          sub_1001BF22C(v33, type metadata accessor for Treatment);

          v86 += 3;
          ++v85;
          v71 = v133;
        }

        v51 = v124;
        v5 = v144;
        v26 = v126;
        v50 = v112;
        v52 = v111;
        v53 = v110;
        if (v124 != v117)
        {
          continue;
        }

        goto LABEL_53;
      }
    }

LABEL_56:
    v103 = v115 + 1;

    v30 = v103;
    v31 = v109;
    v32 = v108;
  }

  return result;
}

uint64_t sub_1001BC45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OSSignpostError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = type metadata accessor for OSSignpostID();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v38);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_errorRetain();
  v18 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v37 = static os_signpost_type_t.end.getter();
  v42 = a1;

  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v10 + 88))(v13, v9) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v19 = 0;
      v20 = 0;
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v10 + 8))(v13, v9);
      v21 = "Failed to synchronize treatments (error: %@)";
      v20 = 2;
      v19 = 1;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = v20;
    *(v22 + 1) = v19;
    *(v22 + 2) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v37, v25, "TreatmentStoreService", v21, v22, 0xCu);
    sub_10000A00C(v23, &unk_100271F50, &qword_1001F1B48);
  }

  (*(v14 + 8))(v17, v38);
  if (qword_100268738 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v26 = *(type metadata accessor for LogInterpolation() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v46 = type metadata accessor for TreatmentStoreService();
  v45[0] = v39;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v45);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._object = 0x8000000100203E50;
  v29._countAndFlagsBits = 0xD000000000000029;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  swift_getErrorValue();
  v30 = v43;
  v31 = v44;
  v46 = v44;
  v32 = sub_100017E64(v45);
  (*(*(v31 - 8) + 16))(v32, v30, v31);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v45, &qword_10026D350, &qword_1001E6050);
  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
  LogInterpolation.init(stringInterpolation:)();
  v34 = static os_log_type_t.error.getter();
  sub_1000036B0(v34);
}

uint64_t sub_1001BC948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a3;

  sub_1000E349C();
}

uint64_t sub_1001BCA30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009BE8;

  return sub_1001BCE40(0);
}

uint64_t sub_1001BCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v6 + 88))(v9, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v17 = "Synchronized treatments successfully";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v19, "TreatmentStoreService", v17, v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_100268738 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = *(type metadata accessor for LogInterpolation() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v29[3] = type metadata accessor for TreatmentStoreService();
  v29[0] = v26;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v29);
  LogInterpolation.init(stringLiteral:)();
  v23 = static os_log_type_t.default.getter();
  sub_1000036B0(v23);
}

uint64_t sub_1001BCE40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001BCE60, v1, 0);
}

uint64_t sub_1001BCE60()
{
  sub_100004768();
  v1 = *(v0 + 24);
  v2 = *(v1 + 208);
  *(v1 + 208) = *(v0 + 16);

  sub_100002D8C();

  return v3();
}

void sub_1001BCEC8()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t *sub_1001BCF18()
{
  sub_100002C00(v0 + 14);
  v1 = v0[21];
  swift_unknownObjectRelease();
  v2 = v0[22];

  v3 = v0[25];

  v4 = v0[26];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001BCF60()
{
  sub_1001BCF18();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001BCF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017D30();
  sub_1000060E8();
  v18 = *(v16 + 296);
  v19 = *(v16 + 280);

  *(v16 + 184) = v18;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
  if (sub_1000087F0())
  {
    v20 = *(v16 + 296);
    v21 = *(v16 + 272);
    v22 = *(v16 + 256);
    a11 = *(v16 + 264);
    a12 = *(v16 + 248);
    v23 = *(v16 + 240);
    a9 = *(v16 + 232);
    v25 = *(v16 + 216);
    v24 = *(v16 + 224);
    v26 = (*(v16 + 304) + 32) & ~*(v16 + 304);

    v27 = *(v16 + 192);
    *(sub_10004EF0C() + 16) = xmmword_1001E5F70;
    *(v16 + 144) = v21;
    *(v16 + 120) = v25;

    sub_10001B274();

    sub_10001CDFC();
    sub_100004810();
    sub_100015CE0();
    *(v16 + 152) = a10;
    *(v16 + 176) = v17;
    v28 = a10;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v29 = sub_10000A00C(v16 + 152, &qword_10026D350, &qword_1001E6050);
    sub_100012FBC(v29);
    LogInterpolation.init(stringInterpolation:)();
    v30 = static os_log_type_t.error.getter();
    sub_10005AE50(v30);

    [v28 ams_sanitizedForSecureCoding];
    swift_willThrow();
  }

  else
  {
    v31 = *(v16 + 240);

    v32 = *(v16 + 296);
  }

  v33 = *(v16 + 224);
  v34 = *(v16 + 184);

  sub_100002D8C();
  sub_100003DC0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1001BD160()
{
  sub_100004768();
  v3 = sub_1000167E4(v1, v2);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  *(v0 + 224) = sub_100023C0C();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001BD484@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v34 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    v13 = v11[1];

    sub_10003CB20(v12, v13, v37);
    if (v2)
    {
    }

    v7 &= v7 - 1;
    if (v38)
    {
      v39 = v37[0];
      sub_100002BC0(0, &qword_100271EE8, AMSTreatmentArea_ptr);

      v14 = sub_100092378();
      [v14 setCacheable:v39];
      sub_10000A00C(v37, &qword_100271DD0, &qword_1001F1888);
      v32 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v34;
      v15 = sub_100012A94();
      v16 = v34[2];
      v35 = v17;
      v18 = (v17 & 1) == 0;
      v30 = v15;
      capacity = v16 + v18;
      if (__OFADD__(v16, v18))
      {
        goto LABEL_24;
      }

      sub_10007B9A4(&qword_100271F00, &qword_1001F1AE8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, capacity))
      {
        v19 = sub_100012A94();
        v21 = v35;
        if ((v35 & 1) != (v20 & 1))
        {
          goto LABEL_26;
        }

        v22 = v32;
      }

      else
      {
        v22 = v32;
        v19 = v30;
        v21 = v35;
      }

      v34 = v36;
      if (v21)
      {
        v23 = v36[7];
        v24 = *(v23 + 8 * v19);
        *(v23 + 8 * v19) = v22;

        v22 = v24;
      }

      else
      {
        v36[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v36[6] + 16 * v19);
        *v25 = v12;
        v25[1] = v13;
        *(v36[7] + 8 * v19) = v22;
        v26 = v36[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v36[2] = v28;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      *a2 = v34;
      return result;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001BD798(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1001BD87C;

  return sub_1001BD160();
}

uint64_t sub_1001BD87C()
{
  sub_1001BF340();
  sub_100003D28();
  v2 = v0;
  sub_1000056A8();
  v4 = v3;
  sub_100004EEC();
  *v5 = v4;
  v7 = v6[5];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v1;
  sub_100002D20();
  *v11 = v10;

  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
  }

  else
  {
    sub_100002BC0(0, &qword_100271EE8, AMSTreatmentArea_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_100029448();

    v13 = 0;
  }

  v14 = sub_10000A214();
  v15(v14);

  _Block_release(v4);
  sub_100002D8C();
  sub_1001BF32C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1001BDAA0(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1001BDB5C;

  return sub_1001B8710();
}

uint64_t sub_1001BDB5C()
{
  sub_100003D28();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  v8 = v5[4];
  v9 = v5[2];
  v10 = *v1;
  *v7 = *v1;

  v11 = v5[3];
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v11, v4 & 1, 0);
  }

  _Block_release(v6[3]);
  v13 = v10[1];

  return v13();
}

uint64_t sub_1001BDCE4()
{
  sub_1001BF340();
  sub_100003D28();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  v3[56] = v0;

  if (v0)
  {
    v9 = v3[32];
    sub_1001BF32C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v14 = v3[54];
    v15 = v3[40];
    v17 = v3[37];
    v16 = v3[38];
    v18 = v3[36];

    sub_100019DF8();
    sub_1001BF32C();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1001BE274()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  v6 = v3[8];
  v7 = v3[7];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[5];
  v11 = &unk_100271EA0;
  sub_10000A00C(v3[4], &unk_100271EA0, &qword_1001E77F0);
  sub_10000A00C(v10, &unk_100271EA0, &qword_1001E77F0);
  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_100011624();

    v12 = &unk_100271EA0;
  }

  else
  {
    sub_10007B9A4(&qword_10026E448, &qword_1001F1AA0);
    Dictionary._bridgeToObjectiveC()();
    sub_100029448();

    v11 = 0;
    v12 = 0;
  }

  v14 = v4[5];
  v13 = v4[6];
  v17 = v4 + 3;
  v15 = v4[3];
  v16 = v17[1];
  (v13)[2](v13, 0, v11);

  _Block_release(v13);

  v18 = v9[1];

  return v18();
}

id sub_1001BE4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();

  v10 = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v5 initWithEndDate:isa identifier:v9 startDate:v10];

  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 8);
  v13(a4, v12);
  v13(a1, v12);
  return v11;
}

uint64_t sub_1001BE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v10 = sub_100003D10(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v27 - v13;
  sub_1000E0BFC(a3, v27 - v13, &unk_10026FEC0, &qword_1001E6280);
  v15 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v14, 1, v15) == 1)
  {
    sub_10000A00C(v14, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  if (*(a5 + 16))
  {
    v16 = *(a5 + 24);
    v17 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      sub_100002FB8();
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000A00C(a3, &unk_10026FEC0, &qword_1001E6280);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A00C(a3, &unk_10026FEC0, &qword_1001E6280);
  sub_100002FB8();
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001BE878()
{
  sub_1000061B4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100009F04(v3);
  *v4 = v5;
  v4[1] = sub_100009BE8;
  v6 = sub_100005F88();

  return v7(v6);
}

unint64_t sub_1001BE930(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1000E0BFC(v6, &v15, &unk_100271F40, &unk_1001EA290);
    v7 = v15;
    v8 = v16;
    result = sub_1001BEA84(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100002C4C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1001BEA84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100012E40(a1, a2, v6);
}

uint64_t sub_1001BEB08(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1001BEB6C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_1001BEBAC()
{
  result = qword_100271EE0;
  if (!qword_100271EE0)
  {
    sub_100002BC0(255, &qword_10026E458, AMSTreatment_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271EE0);
  }

  return result;
}

uint64_t sub_1001BEC14()
{
  sub_1000061B4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100009F04(v4);
  *v5 = v6;
  v5[1] = sub_100009CC8;
  v7 = sub_1000077B0();

  return v8(v7);
}

uint64_t sub_1001BECB8()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001BEDF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1001BEE38(uint64_t a1)
{
  v3 = type metadata accessor for OSSignposter();
  sub_100002CFC(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_100003C0C();
  v12 = *(v1 + v11);
  v15 = *(v1 + v14);
  v16 = (v1 + (v13 & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = v16[1];

  return sub_1001BC45C(a1, v1 + v10, v12, v15, v17, v18);
}

uint64_t sub_1001BEEE4()
{
  v1 = type metadata accessor for OSSignposter();
  sub_100002DDC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_1001BEFA4()
{
  v1 = type metadata accessor for OSSignposter();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_100003C0C();
  v11 = *(v0 + v10);
  v13 = *(v0 + v12);
  v14 = (v0 + (v9 & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return sub_1001BCAC4(v0 + v8, v11, v13, v15, v16);
}

uint64_t sub_1001BF030()
{
  sub_1000061B4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100009F04(v4);
  *v5 = v6;
  v5[1] = sub_100009CC8;
  sub_100005F88();

  return sub_1001BCA30();
}

uint64_t sub_1001BF100()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  if (v0[6])
  {
    v4 = v0[7];
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001BF1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003EFC();
  v6 = v5(v4);
  sub_100002DDC(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1001BF22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1001BF2A4(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1001BF370()
{
  sub_1001C0188();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1001BF3AC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL), uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LogInterpolation.StringInterpolation();
  v19 = *(*(v18 - 8) + 64);
  result = __chkstk_darwin(v18 - 8);
  if (a1)
  {
    v34 = v14;
    v35 = v10;
    v36 = v9;
    v37 = a5;
    v38 = a4;
    LOBYTE(v40) = [a1 integerValue] & 3;
    v40 = v40;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v21 = *(type metadata accessor for LogInterpolation() - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v43 = type metadata accessor for UbiquitousKeyValueStoreController();
    aBlock[0] = a3;

    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v26 = v40 == 3;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(aBlock);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._object = 0x8000000100204370;
    v27._countAndFlagsBits = 0xD00000000000001CLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    v43 = &type metadata for Bool;
    LOBYTE(aBlock[0]) = v26;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(aBlock);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v29 = static os_log_type_t.debug.getter();
    sub_1000036B0(v29);

    v30 = v36;
    v31 = v34;
    if (qword_1002687F8 != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = v26;
    v44 = sub_1001C1AAC;
    v45 = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v43 = &unk_100254028;
    v33 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_10004DE28();
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_10004DDC4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    (*(v35 + 8))(v13, v30);
    (*(v39 + 8))(v17, v31);

    if (v38)
    {
      return v38(v40 == 3);
    }
  }

  return result;
}

uint64_t sub_1001BF8AC()
{
  v1 = 0;
  v2 = *v0;
  while (v1 != 4)
  {
    v3 = v1 + 1;
    LOBYTE(v12[0]) = *(&off_100244588 + v1 + 32);
    sub_1001BFB1C(v12, v0, v2);
    v1 = v3;
  }

  sub_1001BFEE4();
  v4 = sub_100073798();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  v7 = *(v6 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  if (v4)
  {
    v13 = type metadata accessor for UbiquitousKeyValueStoreController();
    v12[0] = v0;

    v8 = AMSLogKey();
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = type metadata accessor for UbiquitousKeyValueStoreController();
    v12[0] = v0;

    v8 = AMSLogKey();
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v9 = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_9:
  sub_100019E0C();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v10 = static os_log_type_t.info.getter();
  sub_1000036B0(v10);
}

uint64_t sub_1001BFEE4()
{
  v1 = v0;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v4 = *(v3 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v19[3] = type metadata accessor for UbiquitousKeyValueStoreController();
  v19[0] = v0;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v19);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
LABEL_16:
    sub_100002D44();
  }

  v7 = static os_log_type_t.info.getter();
  sub_1000036B0(v7);

  v8 = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v9 = *(v1 + 16);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = *(v1 + 16);
  swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      [v8 addObserver:v1 selector:"storeDidChangeExternallyWithNotification:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*(*(v9 + 56) + ((v16 << 9) | (8 * v17)))];
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }
}

void sub_1001C0188()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];
}

void sub_1001C01EC()
{
  v2 = v0;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100002DEC();
  v5 = type metadata accessor for DispatchPredicate();
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v13 = (v12 - v11);
  if (qword_1002687F8 != -1)
  {
    sub_10000BCA0();
  }

  v14 = qword_1002878F0;
  *v13 = qword_1002878F0;
  (*(v8 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v5);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v13, v5);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  Notification.object.getter();
  v1 = &unk_100287000;
  if (!v72)
  {
    sub_100002C5C(v71);
    goto LABEL_20;
  }

  sub_100002BC0(0, &qword_10026AEB8, NSUbiquitousKeyValueStore_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v16 = v73;
  swift_beginAccess();
  v17 = 0;
  v18 = *(v2 + 16);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
LABEL_9:
  if (v21)
  {
    v23 = v17;
    goto LABEL_15;
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

LABEL_20:
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v32 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v32);
      v34 = *(v33 + 72);
      sub_1000056F8();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v72 = type metadata accessor for UbiquitousKeyValueStoreController();
      v71[0] = v2;

      v35 = AMSLogKey();
      if (v35)
      {
        v36 = v35;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v71);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 == -1)
      {
LABEL_23:
        v37 = v1[258];
        v38 = static os_log_type_t.debug.getter();
        sub_1000036B0(v38);
LABEL_24:

        return;
      }

LABEL_62:
      sub_100002D44();
      goto LABEL_23;
    }

    v21 = *(v18 + 64 + 8 * v23);
    ++v17;
    if (v21)
    {
      v17 = v23;
LABEL_15:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = v24 | (v23 << 6);
      if (*(*(v18 + 56) + 8 * v25) == v73)
      {
        v69 = *(*(v18 + 48) + v25);
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v26 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v26);
        v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v70 = *(v27 + 72);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v72 = type metadata accessor for UbiquitousKeyValueStoreController();
        v71[0] = v2;

        v30 = AMSLogKey();
        if (v30)
        {
          v31 = v30;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v71);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v39._countAndFlagsBits = 0xD000000000000027;
        v39._object = 0x80000001002041A0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
        v72 = &unk_1002471C0;
        LOBYTE(v71[0]) = v69;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_100002C5C(v71);
        v40._countAndFlagsBits = 1886413088;
        v40._object = 0xE400000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
        LogInterpolation.init(stringInterpolation:)();
        if (qword_1002686B0 != -1)
        {
          sub_100002D44();
        }

        v41 = static os_log_type_t.default.getter();
        sub_1000036B0(v41);

        v42 = Notification.userInfo.getter();
        if (v42)
        {
          v43 = v42;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(v71, v43, &v73);

          sub_10000E1E8(v71);
          if (*(&v74 + 1))
          {
            if (swift_dynamicCast())
            {
              v44 = v71[0];
              v45 = swift_allocObject();
              sub_10000A560(v45);
              switch(v44)
              {
                case 0:
                  sub_10000C230();
                  v46 = AMSLogKey();
                  if (v46)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_50;
                case 1:
                  sub_10000C230();
                  v46 = AMSLogKey();
                  if (v46)
                  {
LABEL_45:
                    v55 = v46;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }

LABEL_50:
                  sub_1000077C0();

                  sub_100002C00(v71);
                  sub_100005B28();
                  LogInterpolation.init(stringLiteral:)();
                  v62 = static os_log_type_t.debug.getter();
                  sub_1000036B0(v62);

                  v63 = Notification.userInfo.getter();
                  if (v63)
                  {
                    v64 = v63;
                    *&v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(&v73 + 1) = v65;
                    AnyHashable.init<A>(_:)();
                    sub_10000E0C8(v71, v64, &v73);

                    sub_10000E1E8(v71);
                    if (*(&v74 + 1))
                    {
                      sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
                      if (swift_dynamicCast())
                      {
                        v66 = v71[0];
                      }

                      else
                      {
                        v66 = 0;
                      }

LABEL_57:
                      sub_1001C0D20(v69, v66);
LABEL_38:

                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    v73 = 0u;
                    v74 = 0u;
                  }

                  sub_100002C5C(&v73);
                  v66 = 0;
                  goto LABEL_57;
                case 2:
                  goto LABEL_40;
                case 3:
                  sub_10000C230();
                  v53 = AMSLogKey();
                  if (v53)
                  {
                    v54 = v53;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  sub_1000077C0();

                  sub_100002C00(v71);
                  sub_100005B28();
                  LogInterpolation.init(stringLiteral:)();
                  v61 = static os_log_type_t.debug.getter();
                  sub_1000036B0(v61);

                  *(v2 + 24) = 0;
                  sub_10004B274(0, 0);
                  goto LABEL_60;
                default:
                  sub_10000C230();
                  v56 = AMSLogKey();
                  if (v56)
                  {
                    v57 = v56;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  sub_1000081F4();

                  sub_100002C00(v71);
                  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
                  v67._countAndFlagsBits = 0xD00000000000001ALL;
                  v67._object = 0x8000000100204210;
                  LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
                  v72 = &type metadata for Int;
                  v71[0] = v44;
                  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
                  sub_100002C5C(v71);
                  v68._countAndFlagsBits = 0xD000000000000013;
                  v68._object = 0x8000000100204230;
                  LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
                  sub_100005B28();
                  LogInterpolation.init(stringInterpolation:)();
                  v60 = static os_log_type_t.debug.getter();
                  goto LABEL_59;
              }
            }

LABEL_35:
            v47 = swift_allocObject();
            sub_10000A560(v47);
            sub_10000C230();
            v48 = AMSLogKey();
            if (v48)
            {
              v49 = v48;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

            static LogInterpolation.prefix(_:_:)();

            sub_100002C00(v71);
            LogInterpolation.init(stringLiteral:)();
            v50 = static os_log_type_t.debug.getter();
            sub_1000036B0(v50);
            goto LABEL_38;
          }
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
        }

        sub_100002C5C(&v73);
        goto LABEL_35;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_40:
  sub_10000C230();
  v51 = AMSLogKey();
  if (v51)
  {
    v52 = v51;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000081F4();

  sub_100002C00(v71);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v58._object = 0x8000000100204250;
  v58._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v58);
  v72 = &unk_1002471C0;
  LOBYTE(v71[0]) = v69;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v71);
  v59._countAndFlagsBits = 0x65726F747320;
  v59._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v59);
  sub_100005B28();
  LogInterpolation.init(stringInterpolation:)();
  v60 = static os_log_type_t.error.getter();
LABEL_59:
  sub_1000036B0(v60);

LABEL_60:
}

uint64_t sub_1001C0D20(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100002CC4(v4);
  v57 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v11 = v10 - v9;
  v56 = type metadata accessor for DispatchQoS();
  v12 = sub_100002CC4(v56);
  v55 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v18 = v17 - v16;
  v19 = type metadata accessor for LogInterpolation.StringInterpolation();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  sub_100002DEC();
  v21 = type metadata accessor for DispatchPredicate();
  v22 = sub_100002CC4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100002DEC();
  v29 = (v28 - v27);
  if (qword_1002687F8 != -1)
  {
    sub_10000BCA0();
  }

  v30 = qword_1002878F0;
  *v29 = qword_1002878F0;
  (*(v24 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v21);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v29, v21);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    sub_100002D44();
    goto LABEL_7;
  }

  v54 = v4;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v32 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v32);
  v34 = *(v33 + 72);
  sub_1000056F8();
  v53 = xmmword_1001E5F70;
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v62 = type metadata accessor for UbiquitousKeyValueStoreController();
  *&aBlock = v2;

  v35 = AMSLogKey();
  if (v35)
  {
    v36 = v35;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = 0xD000000000000014;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&aBlock);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0xD00000000000001BLL;
  v37._object = 0x8000000100204100;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  v62 = &unk_1002471C0;
  LOBYTE(aBlock) = a1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&aBlock);
  v38._object = 0x8000000100204120;
  v38._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v39 = static os_log_type_t.default.getter();
  sub_1000036B0(v39);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = v53;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "amsengagementd");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v4 + 2;
  *(inited + 104) = 0x8000000100204140;
  v41 = Dictionary.init(dictionaryLiteral:)();
  if (a2)
  {
    v62 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    *&aBlock = a2;
    sub_100002C4C(&aBlock, &v59);

    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
  }

  v42 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  sub_100007A3C();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1001E8AB0;
  v44 = v43;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  *(v44 + 32) = sub_100092378();
  sub_1000F43B4(v44, v42);
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  sub_100007A3C();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1001E61B0;
  sub_10005DFA4(v41);
  v47 = v46;

  *(v45 + 32) = v47;
  sub_1000F4334(v45, v42);
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v42;
  v63 = sub_1001C1A98;
  v64 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  sub_100007A28();
  v61 = v49;
  v62 = &unk_100253F88;
  v50 = _Block_copy(&aBlock);
  v51 = v42;
  static DispatchQoS.unspecified.getter();
  *&v59 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v57 + 8))(v11, v54);
  (*(v55 + 8))(v18, v56);
}

void sub_1001C1554(uint64_t a1)
{
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v2 = sub_10002411C();
  v3 = [objc_allocWithZone(AMSEngagement) initWithBag:v2];
}

uint64_t sub_1001C1620(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100002CC4(v2);
  v31 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v9 = v8 - v7;
  v30 = type metadata accessor for DispatchQoS();
  v10 = sub_100002CC4(v30);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v17 = v16 - v15;
  v18 = type metadata accessor for Notification();
  v19 = sub_100002CC4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  if (qword_1002687F8 != -1)
  {
    sub_10000BCA0();
  }

  v29[1] = qword_1002878F0;
  (*(v21 + 16))(v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v24 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v29[2];
  (*(v21 + 32))(v25 + v24, v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  aBlock[4] = sub_1001C1A34;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_100007A28();
  aBlock[2] = v26;
  aBlock[3] = &unk_100253F38;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v31 + 8))(v9, v2);
  (*(v12 + 8))(v17, v30);
}

void sub_1001C1A34()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  sub_1001C01EC();
}

_BYTE *storeEnumTagSinglePayload for UbiquitousKeyValueStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001C1B9C()
{
  result = qword_1002720D0;
  if (!qword_1002720D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720D0);
  }

  return result;
}

uint64_t sub_1001C1C04(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v15 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 40 * (v11 | (v10 << 6));
      LOBYTE(v11) = *(v12 + 32);
      v13 = *(v12 + 16);
      v16[0] = *v12;
      v16[1] = v13;
      v17 = v11;
      sub_1001CAE60(v16, &v14);
      sub_1001C56AC(&v14, v16);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v15;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1001C1D1C()
{
  sub_100015AD8();
  v3 = *(v0 + 56);
  v2 = v0 + 56;
  v4 = *(v2 - 24);
  sub_100004E5C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v1;
LABEL_7:
      sub_1000034FC(v10);
      sub_10004EF2C();
      sub_1000190C0();
    }

    while (v7);
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v2 + 8 * v10);
    ++v1;
    if (v7)
    {
      v1 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1001C1DD4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1001C62E8(a1, sub_1001CAE1C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void *sub_1001C1E58(uint64_t a1)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  sub_100005680();
  sub_10001B294();
  v7 = v6 >> 6;
  v32 = a1;

  v9 = 0;
  if (v1)
  {
LABEL_5:
    sub_100019E2C();
    v13 = (*(v32 + 48) + 24 * (v11 | (v12 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(v16 + 56);
    v33 = v15;
    v18 = *(v16 + 32);
    sub_100005680();
    v21 = v20 & v19;
    v23 = (v22 + 63) >> 6;
    v34 = v24;

    v25 = 0;
    v26 = v3;
    if (!v21)
    {
      goto LABEL_7;
    }

    do
    {
      v27 = v25;
LABEL_11:
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = (*(v16 + 48) + 48 * (v28 | (v27 << 6)));
      v30 = v29[1];
      v35 = *v29;
      v36[0] = v30;
      *(v36 + 9) = *(v29 + 25);
      v37 = v35;
      v38 = v30;
      sub_10015BD34();
      sub_10015BD34();
      sub_10015BD34();
      sub_1001C215C(v33, v34, &v35);
      sub_10000A00C(&v37, &qword_100269EE8, &unk_1001E70D0);
      sub_10000A00C(&v37 + 8, &qword_100272110, &qword_1001F1D68);
      sub_10000A00C(&v38, &qword_100272118, &qword_1001F1D70);
      sub_10004EF2C();
      sub_1001C2278();
      v26 = v31;
    }

    while (v21);
LABEL_7:
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v23)
      {
        v3 = v26;

        goto LABEL_5;
      }

      v21 = *(v16 + 56 + 8 * v27);
      ++v25;
      if (v21)
      {
        v25 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return &_swiftEmptySetSingleton;
      }

      ++v9;
      if (*(a1 + 56 + 8 * v10))
      {
        goto LABEL_5;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C215C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  sub_10007B9A4(&qword_100272140, &qword_1001F1DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_1001CAAD8(inited);
  v9 = a3[1];
  v10 = *(a3 + 12);
  v11 = a3[4];
  v12 = *(a3 + 40);
  sub_10007B9A4(&qword_100272148, &qword_1001F1DA8);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1001E61B0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  *(v13 + 48) = 3;
  *(v13 + 50) = v10;
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;

  sub_1001CA15C(v13);
  v14 = a3[2];

  return v6;
}

void sub_1001C2278()
{
  sub_10000DDB0();
  v1 = v0;
  v69 = v2;
  v73 = v3;
  v5 = v4;
  v7 = v6;

  v8 = v1;
  sub_1000190C0();

  v10 = v7 + 56;
  v9 = *(v7 + 56);
  v11 = *(v7 + 32);
  sub_100004E5C();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v74 = v7;

  v17 = 0;
  v71 = v16;
  v72 = v5;
  v70 = v7 + 56;
  while (v14)
  {
LABEL_7:
    sub_1001CB120();
    v20 = (*(v74 + 48) + ((v17 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v8[2];

    if (v23 && (v24 = sub_100012A94(), (v25 & 1) != 0))
    {
      v26 = (v8[7] + 24 * v24);
      v27 = *v26;
      v28 = v26[1];

      swift_bridgeObjectRetain_n();

      v67 = sub_1001C1C04(v29, v27);
      if (v28)
      {
        if (v73)
        {

          v31 = sub_1001C1DD4(v30, v28);

          v68 = v31;
        }

        else
        {
          v68 = v28;
        }
      }

      else
      {

        v68 = v73;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v21;
      v55 = sub_100012A94();
      v57 = v8[2];
      v58 = (v56 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_36;
      }

      v60 = v55;
      v61 = v56;
      sub_10007B9A4(&qword_100272120, &qword_1001F1D78);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v59))
      {
        v62 = sub_100012A94();
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_37;
        }

        v60 = v62;
      }

      if (v61)
      {
        v64 = v8[7] + 24 * v60;
        v65 = *v64;
        v66 = *(v64 + 8);
        *v64 = v67;
        *(v64 + 8) = v68;
        *(v64 + 16) = 3;
      }

      else
      {
        sub_1000AD750(v60, v22, v54, v67, v68, 3, v8);
      }

      v10 = v70;
      v16 = v71;
    }

    else
    {
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v22;
      v34 = v21;
      v35 = sub_100012A94();
      v37 = v8[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_34;
      }

      v40 = v35;
      v41 = v36;
      sub_10007B9A4(&qword_100272120, &qword_1001F1D78);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v32, v39))
      {
        v42 = sub_100012A94();
        v44 = v72;
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_37;
        }

        v40 = v42;
      }

      else
      {
        v44 = v72;
      }

      if (v41)
      {
        v45 = v8[7] + 24 * v40;
        v46 = *v45;
        v47 = *(v45 + 8);
        *v45 = v44;
        *(v45 + 8) = v73;
        *(v45 + 16) = v69;
      }

      else
      {
        v8[(v40 >> 6) + 8] |= 1 << v40;
        v48 = (v8[6] + 16 * v40);
        *v48 = v33;
        v48[1] = v34;
        v49 = v8[7] + 24 * v40;
        *v49 = v44;
        *(v49 + 8) = v73;
        *(v49 + 16) = v69;
        v50 = v8[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_35;
        }

        v8[2] = v52;
      }

      v10 = v70;
      v16 = v71;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      sub_10000E74C();
      return;
    }

    v14 = *(v10 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001C26E4()
{
  sub_100003FE8();
  v1 = v0;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_100004E5C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  v53 = v1 + 64;
  v54 = v1;
  v52 = v10;
  if (v8)
  {
    while (1)
    {
      v13 = (*(v1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v15 = *v13;
      v14 = v13[1];
      v16 = type metadata accessor for JSONEncoder();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();

      JSONEncoder.init()();
      v55 = v14;
      v56 = v15;
      if (!*(v1 + 16))
      {
        goto LABEL_9;
      }

LABEL_6:
      v19 = sub_100012A94();
      if (v20)
      {
        v21 = *(v1 + 56) + 24 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
      }

      else
      {
LABEL_9:
        v22 = 0;
      }

      sub_10007B9A4(&qword_1002720E8, &qword_1001F1D50);
      sub_1001C5540();
      v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v27 = v26;
      sub_1001C5618(v22);
      v28 = sub_10000B1A8();
      sub_10003A5E0(v28, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v2;
      v31 = sub_100012A94();
      v33 = *(v2 + 16);
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        break;
      }

      v36 = v31;
      v37 = v32;
      sub_10007B9A4(&qword_100272108, &unk_1001F1D58);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35))
      {
        v38 = sub_100012A94();
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_24;
        }

        v36 = v38;
      }

      if (v37)
      {

        v2 = v57;
        v40 = (v57[7] + 16 * v36);
        v41 = *v40;
        v42 = v40[1];
        *v40 = v25;
        v40[1] = v27;
        sub_1000253FC(v41, v42);

        v43 = sub_10000B1A8();
        sub_1000253FC(v43, v44);
      }

      else
      {
        v2 = v57;
        v57[(v36 >> 6) + 8] |= 1 << v36;
        v45 = (v57[6] + 16 * v36);
        *v45 = v56;
        v45[1] = v55;
        v46 = (v57[7] + 16 * v36);
        *v46 = v25;
        v46[1] = v27;

        v47 = sub_10000B1A8();
        sub_1000253FC(v47, v48);
        v49 = v57[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_23;
        }

        v57[2] = v51;
      }

      v8 &= v8 - 1;
      v1 = v54;
      v10 = v52;
      v4 = v53;
      if (!v8)
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
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        sub_100006150();
        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001C2AB4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  v3 = sub_100007DC0(a1, a2);
  if (!v53)
  {
    return;
  }

  sub_10000C4EC(v3);
  sub_10001CC58();
  v7 = v2 + 56;
  if (v8)
  {
LABEL_5:
    sub_100018158();
LABEL_11:
    sub_1001CB10C(v9);
    v16 = (v15 + 48 * v14);
    v17 = v16[1];
    v80 = *v16;
    *v81 = v17;
    *&v81[9] = *(v16 + 25);
    v18 = *(&v80 + 1);
    v19 = v80;
    v82[0] = v80;
    v20 = v17;
    v21 = *(v2 + 40);
    Hasher.init(_seed:)();
    sub_10015BD34();
    v71 = v20;

    sub_100097AAC(v79);
    Hasher._finalize()();
    v22 = *(v2 + 32);
    sub_100004E1C();
    v75 = ~v24;
    v69 = v81[9];
    v70 = v81[8];
    v68 = v81[24];
    v67 = *&v81[16];
    v73 = v7;
    v74 = v2;
    v72 = v18;
    while (1)
    {
      v25 = v23 & v75;
      if (((*(v7 + (((v23 & v75) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v75)) & 1) == 0)
      {
        sub_10000A00C(v82, &qword_100269EE8, &unk_1001E70D0);

        return;
      }

      v26 = *(v2 + 48) + 48 * v25;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v31 = *(v26 + 25);
      v32 = *(v26 + 32);
      v33 = *(v26 + 40);
      if (*v26 == v19)
      {
        sub_1001CB0F8();
        v78 = v29;

        v77 = v28;

LABEL_32:
        if (v77)
        {
          if (!v18 || (, v54 = sub_1001C3B70(v77, v18), , (v54 & 1) == 0))
          {
LABEL_43:

LABEL_44:

LABEL_45:
            v25 = v76;
            goto LABEL_46;
          }
        }

        else if (v18)
        {
          goto LABEL_44;
        }

        if (v78)
        {
          if (!v71)
          {
            goto LABEL_43;
          }

          sub_1001C49D8();
          v56 = v55;

          sub_100015B28();
          if ((v56 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {

          sub_100015B28();
          if (v61)
          {
            goto LABEL_46;
          }
        }

        if (v60 == 2)
        {
          if (v70 != 2)
          {
            goto LABEL_46;
          }
        }

        else if (v70 == 2 || ((v70 ^ v60) & 1) != 0)
        {
          goto LABEL_46;
        }

        if (v59 == 2)
        {
          if (v69 != 2)
          {
            goto LABEL_46;
          }
        }

        else if (v69 == 2 || ((v69 ^ v59) & 1) != 0)
        {
          goto LABEL_46;
        }

        if (v58)
        {
          if (v68)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v62 = v68;
          if (v57 != v67)
          {
            v62 = 1;
          }

          if ((v62 & 1) == 0)
          {
LABEL_64:
            sub_10000A00C(v82, &qword_100269EE8, &unk_1001E70D0);

            v5 = v66;
            v4 = v64;
            v6 = v65;
            if (v63)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      else if (*(v27 + 16) == *(v19 + 16))
      {
        sub_1001CB0F8();
        v34 = *(v27 + 56);
        v35 = *(v27 + 32);
        sub_100005680();
        v38 = v37 & v36;
        v40 = (v39 + 63) >> 6;

        v77 = v28;

        v78 = v29;

        v41 = 0;
        if (v38)
        {
          while (2)
          {
            v42 = __clz(__rbit64(v38));
            v38 &= v38 - 1;
LABEL_22:
            v46 = (*(v27 + 48) + 16 * (v42 | (v41 << 6)));
            v48 = *v46;
            v47 = v46[1];
            v49 = *(v19 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            Hasher._finalize()();
            v50 = *(v19 + 32);
            sub_100004E1C();
            do
            {
              sub_10000A7B0();
              if (((*(v19 + 56 + v51) >> v2) & 1) == 0)
              {

                v7 = v73;
                v2 = v74;
                v18 = v72;
                goto LABEL_45;
              }

              sub_100003C28(*(v19 + 48));
              v53 = v53 && v52 == v47;
            }

            while (!v53 && (sub_1000240DC() & 1) == 0);

            if (v38)
            {
              continue;
            }

            break;
          }
        }

        v43 = v41;
        v7 = v73;
        v2 = v74;
        v18 = v72;
        while (1)
        {
          v41 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v41 >= v40)
          {
            goto LABEL_32;
          }

          ++v43;
          if (*(v27 + 56 + 8 * v41))
          {
            sub_1000035FC();
            v38 = v45 & v44;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_46:
      v23 = v25 + 1;
    }
  }

  v10 = v6;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v4)
    {
      return;
    }

    ++v10;
    if (*(v5 + 8 * v11))
    {
      v64 = v4;
      v66 = v5;
      sub_1000035FC();
      v63 = v13 & v12;
      goto LABEL_11;
    }
  }

LABEL_69:
  __break(1u);
}

void sub_1001C2FC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char __src, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_10000DDB0();
  a33 = v34;
  a34 = v37;
  if (v35 == v36 || (v38 = v36, v39 = sub_100007DC0(v35, v36), !v63))
  {
LABEL_28:
    sub_10000E74C();
    return;
  }

  v40 = 0;
  v41 = sub_10000C4EC(v39);
  if (v43 < 64)
  {
    v45 = ~(-1 << v43);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v42;
  v47 = (v43 + 63) >> 6;
  v72 = v38 + 56;
  v69 = v44;
  v70 = v41;
  v68 = v47;
  if (v46)
  {
    while (1)
    {
      v48 = __clz(__rbit64(v46));
      v71 = (v46 - 1) & v46;
LABEL_14:
      v52 = (*(v41 + 48) + 24 * (v48 | (v40 << 6)));
      v54 = *v52;
      v53 = v52[1];
      v55 = v52[2];
      v56 = *(v38 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      sub_100079558(&__src, v55);
      v57 = Hasher._finalize()();
      v58 = -1 << *(v38 + 32);
      v59 = v57 & ~v58;
      if (((*(v72 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        break;
      }

      v60 = ~v58;
      while (1)
      {
        v61 = (*(v38 + 48) + 24 * v59);
        v62 = v61[2];
        v63 = *v61 == v54 && v61[1] == v53;
        if (v63 || (v64 = v61[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {

          sub_1001C2AB4(v65, v55);
          v67 = v66;

          if (v67)
          {
            break;
          }
        }

        v59 = (v59 + 1) & v60;
        if (((*(v72 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v44 = v69;
      v41 = v70;
      v47 = v68;
      v46 = v71;
      if (!v71)
      {
        goto LABEL_9;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_9:
  v49 = v40;
  while (1)
  {
    v40 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v40 >= v47)
    {
      goto LABEL_28;
    }

    ++v49;
    if (*(v44 + 8 * v40))
    {
      sub_1000035FC();
      v71 = v51 & v50;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1001C31D0()
{
  sub_100011690();
  if (v5 != v6 && (v7 = v6, v8 = sub_100007DC0(v5, v6), v21))
  {
    v9 = 0;
    v11 = v8 + 56;
    v10 = *(v8 + 56);
    v12 = *(v8 + 32);
    sub_100005680();
    sub_10001BDFC();
    if (v2)
    {
      while (2)
      {
        sub_10000BAEC();
LABEL_11:
        sub_100008818(v13, v14);

        sub_10005AE68();
        Hasher._finalize()();
        v18 = *(v7 + 32);
        sub_100004E1C();
        do
        {
          sub_10000A7B0();
          if (((*(v4 + v19) >> v0) & 1) == 0)
          {

            goto LABEL_22;
          }

          sub_100003C28(*(v7 + 48));
          v21 = v21 && v20 == v1;
        }

        while (!v21 && (sub_1000240DC() & 1) == 0);

        if (v2)
        {
          continue;
        }

        break;
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v3)
      {
        goto LABEL_22;
      }

      ++v15;
      if (*(v11 + 8 * v9))
      {
        sub_1000035FC();
        v2 = v17 & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100029454();
  }
}

void sub_1001C32DC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  v3 = sub_100007DC0(a1, a2);
  if (!v56)
  {
    return;
  }

  sub_10000C4EC(v3);
  sub_10001CC58();
  v7 = v2 + 56;
  v110 = v2 + 56;
  v111 = v2;
  if (!v8)
  {
LABEL_6:
    v10 = v6;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_153;
      }

      if (v11 >= v4)
      {
        return;
      }

      ++v10;
      if (*(v5 + 8 * v11))
      {
        v100 = v4;
        v102 = v5;
        sub_1000035FC();
        v99 = v13 & v12;
        goto LABEL_11;
      }
    }
  }

LABEL_5:
  sub_100018158();
LABEL_11:
  sub_1001CB10C(v9);
  v16 = (v15 + 40 * v14);
  LOBYTE(v15) = *(v16 + 32);
  v17 = v16[1];
  v129 = *v16;
  v130 = v17;
  v131 = v15;
  v18 = *(v2 + 40);
  Hasher.init(_seed:)();
  sub_1001CAE60(&v129, &v125);
  sub_100074AD8(&v127);
  Hasher._finalize()();
  v19 = *(v2 + 32);
  sub_100004E1C();
  v22 = v21 & ~v20;
  if (((*(v7 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_150:
    sub_1001CAEBC(&v129);
    return;
  }

  v122 = ~v20;
  v23 = v129;
  v123 = v129 + 56;
  while (1)
  {
    v24 = *(v2 + 48) + 40 * v22;
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 18);
    v29 = *(v24 + 19);
    v30 = *(v24 + 24);
    v31 = *(v24 + 32);
    if (*v24 != v23)
    {
      if (*(v26 + 16) == *(v23 + 16))
      {
        v114 = *(v24 + 16);
        v115 = *(v24 + 18);
        v116 = *(v24 + 19);
        v117 = *(v24 + 32);
        v33 = v26 + 56;
        v32 = *(v26 + 56);
        v34 = *(v26 + 32);
        sub_100005680();
        v37 = v36 & v35;
        v39 = (v38 + 63) >> 6;

        v40 = 0;
        v112 = v30;
        v118 = v22;
        v120 = v25;
        if (v37)
        {
LABEL_16:
          sub_100008698();
        }

        else
        {
LABEL_17:
          v42 = v40;
          v7 = v110;
          v2 = v111;
          do
          {
            v40 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              __break(1u);
              goto LABEL_152;
            }

            if (v40 >= v39)
            {
              goto LABEL_32;
            }

            ++v42;
          }

          while (!*(v33 + 8 * v40));
          sub_1000035FC();
          v37 = v44 & v43;
        }

        v45 = v26;
        v46 = (*(v26 + 48) + 16 * (v41 | (v40 << 6)));
        v48 = *v46;
        v47 = v46[1];
        v49 = *(v23 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        v50 = *(v23 + 32);
        sub_100004E1C();
        v53 = ~v52;
        while (1)
        {
          v54 = v51 & v53;
          if (((*(v123 + (((v51 & v53) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v51 & v53)) & 1) == 0)
          {
            break;
          }

          v55 = (*(v23 + 48) + 16 * v54);
          v56 = *v55 == v48 && v55[1] == v47;
          if (!v56)
          {
            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v51 = v54 + 1;
            if ((v57 & 1) == 0)
            {
              continue;
            }
          }

          v30 = v112;
          v26 = v45;
          v22 = v118;
          v25 = v120;
          if (v37)
          {
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        v7 = v110;
        v2 = v111;
        v22 = v118;
      }

      goto LABEL_145;
    }

    v114 = *(v24 + 16);
    v115 = *(v24 + 18);
    v116 = *(v24 + 19);
    v117 = *(v24 + 32);

LABEL_32:
    v58 = *(&v129 + 1);
    if (!v25)
    {

      v61 = v116;
      v60 = v117;
      v63 = v114;
      v62 = v115;
      if (v58)
      {
        goto LABEL_145;
      }

      goto LABEL_40;
    }

    if (!*(&v129 + 1) || (v59 = *(v25 + 16), v59 != *(*(&v129 + 1) + 16)))
    {

LABEL_144:

      goto LABEL_145;
    }

    if (v59 && v25 != *(&v129 + 1))
    {
      break;
    }

LABEL_38:

    v61 = v116;
    v60 = v117;
    v63 = v114;
    v62 = v115;
LABEL_40:
    if (v63 == 3)
    {
      if (v130 != 3)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (v130 == 3)
      {
        goto LABEL_145;
      }

      if (v63 == 2)
      {
        if (v130 != 2)
        {
          goto LABEL_145;
        }
      }

      else if (v130 == 2 || ((v130 ^ v63) & 1) != 0)
      {
        goto LABEL_145;
      }

      v97 = BYTE1(v130);
      if (v63 >> 8 == 2)
      {
        if (v97 != 2)
        {
          goto LABEL_145;
        }
      }

      else if (v97 == 2 || ((v97 ^ (v63 >> 8)) & 1) != 0)
      {
        goto LABEL_145;
      }
    }

    if (v62 == 2)
    {
      if (BYTE2(v130) != 2)
      {
        goto LABEL_145;
      }
    }

    else if (BYTE2(v130) == 2 || ((BYTE2(v130) ^ v62) & 1) != 0)
    {
      goto LABEL_145;
    }

    if (v61 == 2)
    {
      if (BYTE3(v130) != 2)
      {
        goto LABEL_145;
      }
    }

    else if (BYTE3(v130) == 2 || ((BYTE3(v130) ^ v61) & 1) != 0)
    {
      goto LABEL_145;
    }

    v98 = v131;
    if (v60)
    {
      if (v131)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (v30 != *(&v130 + 1))
      {
        v98 = 1;
      }

      if ((v98 & 1) == 0)
      {
LABEL_147:
        sub_1001CAEBC(&v129);
        v5 = v102;
        v4 = v100;
        v6 = v101;
        if (!v99)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

LABEL_145:
    v22 = (v22 + 1) & v122;
    if (((*(v7 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_150;
    }
  }

  v106 = *(&v129 + 1) + 32;
  v107 = v25 + 32;

  v64 = 0;
  for (i = v25; ; v25 = i)
  {
    if (v64 >= *(v25 + 16))
    {
      goto LABEL_154;
    }

    v65 = (v107 + 48 * v64);
    v67 = *v65;
    v66 = v65[1];
    *&v126[11] = *(v65 + 27);
    v125 = v67;
    *v126 = v66;
    if (v64 >= *(v58 + 16))
    {
      goto LABEL_155;
    }

    v108 = v64;
    v68 = (v106 + 48 * v64);
    v70 = *v68;
    v69 = v68[1];
    *&v128[11] = *(v68 + 27);
    v127 = v70;
    *v128 = v69;
    if (*(&v125 + 1))
    {
      if (!*(&v70 + 1))
      {
        goto LABEL_143;
      }

      v71 = v125 == v127 && *(&v125 + 1) == *(&v70 + 1);
      if (!v71 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_143;
      }
    }

    else if (*(&v70 + 1))
    {
      goto LABEL_143;
    }

    v72 = *v126;
    v73 = *v128;
    if (*v126)
    {
      break;
    }

    if (*v128)
    {
      goto LABEL_143;
    }

LABEL_88:
    sub_10007C18C(&v125, v124);
    sub_10007C18C(&v127, v124);
LABEL_90:
    v94 = *&v128[16];
    if (*&v126[16])
    {
      if (!*&v128[16])
      {
LABEL_142:
        sub_10007C1C4(&v127);
        sub_10007C1C4(&v125);
        goto LABEL_143;
      }

      if (*&v126[8] == *&v128[8] && *&v126[16] == *&v128[16])
      {
        sub_10007C1C4(&v127);
        sub_10007C1C4(&v125);
      }

      else
      {
        v96 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10007C1C4(&v127);
        sub_10007C1C4(&v125);
        if ((v96 & 1) == 0)
        {
          goto LABEL_143;
        }
      }
    }

    else
    {
      sub_10007C1C4(&v127);
      sub_10007C1C4(&v125);
      if (v94)
      {
        goto LABEL_143;
      }
    }

    if (v126[24] == 2)
    {
      if (v128[24] != 2)
      {
        goto LABEL_143;
      }
    }

    else if (v128[24] == 2 || ((v128[24] ^ v126[24]) & 1) != 0)
    {
      goto LABEL_143;
    }

    if (v126[25] == 2)
    {
      if (v128[25] != 2)
      {
        goto LABEL_143;
      }
    }

    else if (v128[25] == 2 || ((v128[25] ^ v126[25]) & 1) != 0)
    {
      goto LABEL_143;
    }

    if (v126[26] == 2)
    {
      if (v128[26] != 2)
      {
        goto LABEL_143;
      }
    }

    else if (v128[26] == 2 || ((v128[26] ^ v126[26]) & 1) != 0)
    {
      goto LABEL_143;
    }

    v64 = v108 + 1;
    if (v108 + 1 == v59)
    {

      goto LABEL_38;
    }
  }

  if (!*v128)
  {
    goto LABEL_143;
  }

  if (*v126 == *v128)
  {
    goto LABEL_88;
  }

  if (*(*v126 + 16) != *(*v128 + 16))
  {
LABEL_143:

    goto LABEL_144;
  }

  v113 = v30;
  v104 = *v126 + 64;
  v105 = v58;
  v74 = 1 << *(*v126 + 32);
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  else
  {
    v75 = -1;
  }

  v109 = v75 & *(*v126 + 64);
  sub_10007C18C(&v125, v124);
  sub_10007C18C(&v127, v124);
  v103 = (v74 + 63) >> 6;

  v76 = 0;
  v77 = v59;
  v119 = v22;
  while (v109)
  {
    v22 = v26;
    v78 = __clz(__rbit64(v109));
    v109 &= v109 - 1;
LABEL_79:
    v82 = v78 | (v76 << 6);
    v83 = *(v72 + 56);
    v7 = v72;
    v84 = (*(v72 + 48) + 16 * v82);
    v85 = *v84;
    v86 = v84[1];
    v87 = (v83 + 16 * v82);
    v88 = *v87;
    v26 = v87[1];

    v72 = sub_100012A94();
    v90 = v89;

    if ((v90 & 1) == 0)
    {

      v7 = v110;
      v2 = v111;
      v22 = v119;
      goto LABEL_142;
    }

    v91 = (*(v73 + 56) + 16 * v72);
    v92 = *v91 == v88 && v91[1] == v26;
    v2 = v110;
    if (v92)
    {

      sub_100017FC8();
    }

    else
    {
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100017FC8();
      if ((v93 & 1) == 0)
      {

        goto LABEL_142;
      }
    }
  }

  v79 = v76;
  v58 = v105;
  while (1)
  {
    v76 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v76 >= v103)
    {
      v59 = v77;

      v30 = v113;
      goto LABEL_90;
    }

    ++v79;
    if (*(v104 + 8 * v76))
    {
      v22 = v26;
      sub_1000035FC();
      v109 = v81 & v80;
      goto LABEL_79;
    }
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_1001C3B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (1)
    {
      v5 = v3[1];
      v15 = *v3;
      *v16 = v5;
      *&v16[11] = *(v3 + 27);
      v6 = v4[1];
      v17 = *v4;
      *v18 = v6;
      *&v18[11] = *(v4 + 27);
      if (*(&v15 + 1))
      {
        if (!*(&v17 + 1))
        {
          return 0;
        }

        v7 = v15 == v17 && *(&v15 + 1) == *(&v17 + 1);
        if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(&v17 + 1))
      {
        return 0;
      }

      if (*v16)
      {
        if (!*v18)
        {
          return 0;
        }

        sub_10007C18C(&v15, v14);
        sub_10007C18C(&v17, v14);

        sub_1001C4B20();
        v9 = v8;

        if ((v9 & 1) == 0)
        {
LABEL_49:
          sub_10007C1C4(&v17);
          sub_10007C1C4(&v15);
          return 0;
        }
      }

      else
      {
        if (*v18)
        {
          return 0;
        }

        sub_10007C18C(&v15, v14);
        sub_10007C18C(&v17, v14);
      }

      v10 = *&v18[16];
      if (*&v16[16])
      {
        if (!*&v18[16])
        {
          goto LABEL_49;
        }

        if (*&v16[8] == *&v18[8] && *&v16[16] == *&v18[16])
        {
          sub_10007C1C4(&v17);
          sub_10007C1C4(&v15);
        }

        else
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10007C1C4(&v17);
          sub_10007C1C4(&v15);
          if ((v12 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_10007C1C4(&v17);
        sub_10007C1C4(&v15);
        if (v10)
        {
          return 0;
        }
      }

      if (v16[24] == 2)
      {
        if (v18[24] != 2)
        {
          return 0;
        }
      }

      else if (v18[24] == 2 || ((v18[24] ^ v16[24]) & 1) != 0)
      {
        return 0;
      }

      if (v16[25] == 2)
      {
        if (v18[25] != 2)
        {
          return 0;
        }
      }

      else if (v18[25] == 2 || ((v18[25] ^ v16[25]) & 1) != 0)
      {
        return 0;
      }

      if (v16[26] == 2)
      {
        if (v18[26] != 2)
        {
          return 0;
        }
      }

      else if (v18[26] == 2 || ((v18[26] ^ v16[26]) & 1) != 0)
      {
        return 0;
      }

      v4 += 3;
      v3 += 3;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1001C3DB8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1001C4018(uint64_t a1, uint64_t a2)
{
  result = sub_100007DC0(a1, a2);
  if (!v10)
  {
    return 0;
  }

  if (!v4 || result == v3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    v10 = v7 != v9 || v4-- == 1;
    if (v10)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1001C407C()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for RetryConfiguration(0);
  v5 = sub_100002DDC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1000052A4();
  v66 = v8;
  v9 = sub_10007B9A4(&qword_10026E7C8, &unk_1001EE2A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v67 = &v62 - v11;
  v12 = sub_10007B9A4(&qword_10026EA98, &qword_1001F1EC0);
  v13 = sub_100002DDC(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v62 - v16;
  v18 = type metadata accessor for MercuryCacheMetadata(0);
  v19 = sub_10000605C(v18);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v27 = (&v62 - v26);
  v28 = *(v3 + 16);
  if (v28 == *(v1 + 16) && v28 && v3 != v1)
  {
    v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v30 = v3 + v29;
    v31 = v1 + v29;
    v63 = *(v25 + 72);
    v64 = v17;
    v65 = v4;
    v62 = v18;
    while (1)
    {
      sub_10000B1A8();
      sub_1001CAFE0();
      sub_1001CAFE0();
      v32 = *v27 == *v24 && v27[1] == v24[1];
      if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v33 = v18[5];
      if ((static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v34 = v18[6];
      if ((static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v68 = v31;
      v69 = v30;
      v35 = v18[7];
      v36 = *(v12 + 48);
      v37 = v64;
      sub_10015BD34();
      v38 = v65;
      sub_10015BD34();
      sub_100012B68(v37);
      if (v32)
      {
        sub_100012B68(v37 + v36);
        if (!v32)
        {
          goto LABEL_26;
        }

        sub_10000A00C(v37, &qword_10026E7C8, &unk_1001EE2A0);
        sub_10000BCC0();
        sub_1001CB03C(v24, v39);
        v40 = sub_100015C90();
        sub_1001CB03C(v40, v41);
      }

      else
      {
        v42 = v12;
        v43 = v67;
        sub_10015BD34();
        sub_100012B68(v37 + v36);
        if (v44)
        {
          sub_1001CB03C(v43, type metadata accessor for RetryConfiguration);
LABEL_26:
          v57 = &qword_10026EA98;
          v58 = &qword_1001F1EC0;
LABEL_27:
          sub_10000A00C(v37, v57, v58);
          break;
        }

        v45 = v66;
        sub_1001CB094();
        if (*v43 != *v45 || *(v43 + 8) != *(v45 + 8) || *(v43 + 16) != *(v45 + 16))
        {
          v54 = sub_100004A3C();
          v56 = v55;
          sub_1001CB03C(v54, v55);
          sub_1001CB03C(v43, v56);
          v57 = &qword_10026E7C8;
          v58 = &unk_1001EE2A0;
          goto LABEL_27;
        }

        v46 = *(v38 + 28);
        v47 = static Date.== infix(_:_:)();
        v48 = sub_100004A3C();
        v50 = v49;
        sub_1001CB03C(v48, v49);
        sub_1001CB03C(v43, v50);
        sub_10000A00C(v37, &qword_10026E7C8, &unk_1001EE2A0);
        sub_10000BCC0();
        sub_1001CB03C(v24, v51);
        v52 = sub_100015C90();
        sub_1001CB03C(v52, v53);
        v12 = v42;
        v18 = v62;
        if ((v47 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v31 = v68 + v63;
      v30 = v69 + v63;
      if (!--v28)
      {
        goto LABEL_29;
      }
    }

    sub_10000BCC0();
    sub_1001CB03C(v24, v59);
    v60 = sub_100015C90();
    sub_1001CB03C(v60, v61);
  }

LABEL_29:
  sub_100005F14();
}

void sub_1001C450C()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v40 = type metadata accessor for MediaCatalogSyncPageMetadata();
  v4 = sub_10000605C(v40);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = *(v3 + 16);
  if (v12 == *(v1 + 16) && v12 && v3 != v1)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = v3 + v13;
    v15 = v1 + v13;
    v38 = *(v9 + 72);
    v39 = &v38 - v10;
    while (1)
    {
      sub_1001CAFE0();
      sub_1001CAFE0();
      sub_100015C90();
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v16 = *(v40 + 20);
      v17 = &v11[v16];
      if (v11[v16])
      {
        if (v11[v16] == 1)
        {
          v18 = 0xE400000000000000;
          v19 = 1936748641;
        }

        else
        {
          v18 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v18 = 0xE700000000000000;
        v19 = 0x7373656E746966;
      }

      v20 = (v41 + v16);
      v21 = *v20;
      if (*v20)
      {
        if (v21 == 1)
        {
          v22 = 1936748641;
        }

        else
        {
          v22 = 0x6E776F6E6B6E75;
        }

        if (v21 == 1)
        {
          v23 = 0xE400000000000000;
        }

        else
        {
          v23 = 0xE700000000000000;
        }
      }

      else
      {
        v23 = 0xE700000000000000;
        v22 = 0x7373656E746966;
      }

      v24 = *(v17 + 1);
      v25 = *(v17 + 2);
      v26 = *(v20 + 1);
      v27 = *(v20 + 2);
      if (v19 == v22 && v18 == v23)
      {

        v11 = v39;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v39;
        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      if (v24 == v26 && v25 == v27)
      {
        sub_10000AA9C();
        sub_1001CB03C(v41, v32);
        v33 = sub_100015C90();
        sub_1001CB03C(v33, v34);
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1001CB03C(v41, type metadata accessor for MediaCatalogSyncPageMetadata);
        sub_1001CB03C(v11, type metadata accessor for MediaCatalogSyncPageMetadata);
        if ((v31 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v15 += v38;
      v14 += v38;
      if (!--v12)
      {
        goto LABEL_36;
      }
    }

    sub_10000AA9C();
    sub_1001CB03C(v41, v35);
    v36 = sub_100015C90();
    sub_1001CB03C(v36, v37);
  }

LABEL_36:
  sub_100005F14();
}

uint64_t sub_1001C4818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1001C48BC()
{
  sub_100003D74();
  v3 = *(v2 + 16);
  if (v3 == *(v4 + 16) && v3 && (sub_100004E28(), v5 != v6) && *(v1 + 32) == *(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(v1 + v8 + 56);
      v10 = *(v0 + v8 + 48);
      v11 = *(v0 + v8 + 56);
      if (*(v1 + v8 + 48))
      {
        if (!*(v0 + v8 + 48))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (*(v1 + v8 + 40) != *(v0 + v8 + 40))
        {
          v10 = 1;
        }

        if (v10)
        {
          goto LABEL_17;
        }
      }

      v12 = *(v1 + v8 + 56);

      sub_1001C4B20();
      v14 = v13;

      if ((v14 & 1) == 0 || v3 - 1 == v7)
      {
        goto LABEL_17;
      }

      if (++v7 >= v3)
      {
        break;
      }

      v15 = v1 + v8;
      v16 = v0 + v8;
      v8 += 32;
      if (*(v15 + 64) != *(v16 + 64))
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_100005F14();
  }
}

void sub_1001C49D8()
{
  sub_100003D74();
  if (v3 != v4 && (v5 = v4, v6 = v3, sub_100007DC0(v3, v4), v19))
  {
    v7 = 0;
    v8 = *(v6 + 64);
    v9 = *(v6 + 32);
    sub_100004E5C();
    sub_100011B74();
    if (v2)
    {
      while (1)
      {
        sub_100008698();
LABEL_11:
        sub_10003D37C(v10);

        v14 = sub_100012A94();
        v16 = v15;

        if ((v16 & 1) == 0 || (v17 = *(*(v5 + 56) + 8 * v14), v18 = *(v17 + 16), v18 != *(v0 + 16)))
        {
LABEL_28:

          goto LABEL_29;
        }

        v19 = !v18 || v17 == v0;
        if (!v19)
        {
          break;
        }

LABEL_25:

        if (!v2)
        {
          goto LABEL_6;
        }
      }

      v20 = (v17 + 40);
      v21 = (v0 + 40);
      while (v18)
      {
        v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_28;
        }

        v20 += 2;
        v21 += 2;
        if (!--v18)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v11 = v7;
      while (1)
      {
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v7 >= v1)
        {
          goto LABEL_29;
        }

        ++v11;
        if (*(v6 + 64 + 8 * v7))
        {
          sub_1000035FC();
          v2 = v13 & v12;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    sub_100005F14();
  }
}

void sub_1001C4B20()
{
  sub_10001CB6C();
  if (v3 != v4 && (v5 = sub_100007DC0(v3, v4), v15))
  {
    v6 = 0;
    v7 = *(v5 + 64);
    v8 = *(v5 + 32);
    sub_100004E5C();
    sub_10000A230();
    while (v9)
    {
      sub_100012E18();
LABEL_12:
      sub_10000A8F0(v10, v11);

      sub_100012A94();
      sub_100058368();
      if ((v1 & 1) == 0)
      {

        goto LABEL_22;
      }

      sub_1000068E8();
      v15 = v15 && v14 == v0;
      if (v15)
      {

        sub_100003E90();
      }

      else
      {
        v16 = sub_10001646C();

        sub_100003E90();
        if ((v16 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_22;
      }

      sub_100048FCC();
      if (v13)
      {
        sub_1000035FC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100006778();
  }
}

void sub_1001C4C1C()
{
  sub_100003D74();
  if (v3 != v4 && (v5 = v4, v6 = v3, sub_100007DC0(v3, v4), v7))
  {
    v8 = 0;
    v9 = *(v6 + 64);
    v10 = *(v6 + 32);
    sub_100004E5C();
    sub_100011B74();
    while (v2)
    {
      sub_100008698();
LABEL_12:
      sub_10003D37C(v11);

      v15 = sub_100012A94();
      v17 = v16;

      if ((v17 & 1) == 0)
      {

        goto LABEL_17;
      }

      v18 = *(*(v5 + 56) + 8 * v15);

      v20 = sub_1001C4FB8(v19, v0);

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v12 = v8;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v8 >= v1)
      {
        goto LABEL_17;
      }

      ++v12;
      if (*(v6 + 64 + 8 * v8))
      {
        sub_1000035FC();
        v2 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_100005F14();
  }
}

void sub_1001C4D24(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a2;
    sub_100007DC0(a1, a2);
    if (v30)
    {
      v5 = 0;
      v6 = *(v4 + 64);
      v7 = *(v4 + 32);
      sub_100004E5C();
      v11 = v10 & v9;
      v13 = (v12 + 63) >> 6;
      v37 = v8;
      v38 = v3;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v15 = (v11 - 1) & v11;
LABEL_12:
        v20 = v14 | (v5 << 6);
        v21 = (*(v8 + 48) + 16 * v20);
        v22 = *v21;
        v23 = v21[1];
        v24 = *(v8 + 56) + 32 * v20;
        v25 = *v24;
        v26 = *(v24 + 8);
        v43 = *(v24 + 16);
        v42 = *(v24 + 24);

        sub_100012A94();
        sub_100058368();
        if ((v2 & 1) == 0)
        {
          goto LABEL_48;
        }

        v27 = *(v3 + 56) + 32 * v22;
        v28 = *v27;
        v29 = *(v27 + 8);
        v39 = *(v27 + 24);
        v40 = v15;
        v41 = *(v27 + 16);
        if (*v27)
        {
          if (!v25)
          {
            goto LABEL_50;
          }

          v2 = *(v28 + 16);
          if (v2 != *(v25 + 16))
          {
LABEL_48:

            goto LABEL_50;
          }

          if (v2)
          {
            v30 = v28 == v25;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            v31 = (v28 + 40);
            v32 = (v25 + 40);
            while (v2)
            {
              v33 = *(v31 - 1) == *(v32 - 1) && *v31 == *v32;
              if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_48;
              }

              v31 += 2;
              v32 += 2;
              if (!--v2)
              {
                goto LABEL_28;
              }
            }

            goto LABEL_54;
          }

LABEL_28:
        }

        else if (v25)
        {
          goto LABEL_48;
        }

        if (v29)
        {
          if (!v26)
          {
            goto LABEL_49;
          }

          v2 = *(v29 + 16);
          if (v2 != *(v26 + 16))
          {
            goto LABEL_49;
          }

          if (v2 && v29 != v26)
          {
            v34 = (v29 + 40);
            v35 = (v26 + 40);
            while (1)
            {
              v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
              if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }

              v34 += 2;
              v35 += 2;
              if (!--v2)
              {
                goto LABEL_44;
              }
            }

LABEL_49:

LABEL_50:

            return;
          }
        }

        else if (v26)
        {
          goto LABEL_49;
        }

LABEL_44:

        if (v41 == v43)
        {
          v8 = v37;
          v3 = v38;
          v11 = v40;
          if (((v42 ^ v39) & 1) == 0)
          {
            continue;
          }
        }

        return;
      }

      v16 = v5;
      while (1)
      {
        v5 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v5 >= v13)
        {
          return;
        }

        sub_100048FCC();
        if (v17)
        {
          sub_1000035FC();
          v15 = v19 & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      __break(1u);
    }
  }
}

uint64_t sub_1001C4FB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    memcpy(__dst, (*(v3 + 56) + 96 * v12), sizeof(__dst));
    v32 = __dst[3];
    v33 = __dst[1];
    v29 = __dst[2];
    v30 = __dst[0];
    v31 = __dst[5];
    v28 = __dst[4];

    sub_10007BA94(__dst, v35);
    if (!v14)
    {
      return 1;
    }

    __dst[0] = v30;
    __dst[1] = v33;
    __dst[2] = v29;
    __dst[3] = v32;
    __dst[4] = v28;
    __dst[5] = v31;
    v16 = sub_100012A94();
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_51;
    }

    memcpy(v35, (*(a2 + 56) + 96 * v16), sizeof(v35));
    v19 = v35[0] == *&__dst[0] && v35[1] == *(&__dst[0] + 1);
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }

    v20 = v35[2] == *&__dst[1] && v35[3] == *(&__dst[1] + 1);
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }

    v21 = v35[4] == *&__dst[2] && v35[5] == *(&__dst[2] + 1);
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_51;
    }

    v22 = *(v35[6] + 16);
    if (v22 != *(*&__dst[3] + 16))
    {
      goto LABEL_51;
    }

    if (v22 && v35[6] != *&__dst[3])
    {
      v23 = (v35[6] + 32);
      v24 = (*&__dst[3] + 32);
      while (*v23 == *v24)
      {
        ++v23;
        ++v24;
        if (!--v22)
        {
          goto LABEL_36;
        }
      }

LABEL_51:
      sub_10007BAF0(__dst);
      return 0;
    }

LABEL_36:
    if (v35[7] != *(&__dst[3] + 1))
    {
      goto LABEL_51;
    }

    if (v35[9])
    {
      if ((BYTE8(__dst[4]) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if ((BYTE8(__dst[4]) & 1) != 0 || *&v35[8] != *&__dst[4])
    {
      goto LABEL_51;
    }

    if (BYTE1(v35[9]) != BYTE9(__dst[4]) || *&v35[10] != *&__dst[5])
    {
      goto LABEL_51;
    }

    v25 = *(&__dst[5] + 1);
    if (v35[11])
    {
      if (!*(&__dst[5] + 1))
      {
        goto LABEL_51;
      }

      sub_10007BA94(v35, v34);

      sub_1001C4B20();
      v27 = v26;

      sub_10007BAF0(v35);
      result = sub_10007BAF0(__dst);
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = sub_10007BAF0(__dst);
      if (v25)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

void sub_1001C52E8()
{
  sub_100003D74();
  if (v1 != v2 && (v3 = v2, v4 = v1, sub_100007DC0(v1, v2), v5))
  {
    v6 = 0;
    v7 = *(v4 + 64);
    v8 = *(v4 + 32);
    sub_100004E5C();
    sub_10001B294();
    v10 = v9 >> 6;
    while (v0)
    {
      sub_100019E2C();
LABEL_12:
      v15 = v11 | (v6 << 6);
      v16 = (*(v4 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v4 + 56) + 8 * v15);

      v20 = v19;
      v21 = sub_100012A94();
      v23 = v22;

      if ((v23 & 1) == 0)
      {

        goto LABEL_17;
      }

      sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      v24 = *(*(v3 + 56) + 8 * v21);
      v25 = static NSObject.== infix(_:_:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_17;
      }

      ++v12;
      if (*(v4 + 64 + 8 * v6))
      {
        sub_1000035FC();
        v0 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_100005F14();
  }
}

void sub_1001C5424()
{
  sub_10001CB6C();
  if (v1 != v2 && (v3 = sub_100007DC0(v1, v2), v21))
  {
    v4 = 0;
    v5 = *(v3 + 64);
    v6 = *(v3 + 32);
    sub_100004E5C();
    sub_10000A230();
    while (v7)
    {
      sub_100012E18();
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(v8 + 48) + 8 * v12);
      v14 = (*(v8 + 56) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      v17 = v13;

      sub_100049FA8();
      v19 = v18;

      if ((v19 & 1) == 0)
      {

        goto LABEL_22;
      }

      sub_1000068E8();
      v21 = v21 && v20 == v15;
      if (v21)
      {

        sub_100003E90();
      }

      else
      {
        v22 = sub_10001646C();

        sub_100003E90();
        if ((v22 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v0)
      {
        goto LABEL_22;
      }

      sub_100048FCC();
      if (v11)
      {
        sub_1000035FC();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100006778();
  }
}

unint64_t sub_1001C5540()
{
  result = qword_1002720F0;
  if (!qword_1002720F0)
  {
    sub_10007BC70(&qword_1002720E8, &qword_1001F1D50);
    sub_1001C55C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720F0);
  }

  return result;
}

unint64_t sub_1001C55C4()
{
  result = qword_1002720F8;
  if (!qword_1002720F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720F8);
  }

  return result;
}

uint64_t sub_1001C5618(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001C5658()
{
  result = qword_100272100;
  if (!qword_100272100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272100);
  }

  return result;
}

uint64_t sub_1001C56AC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_100074AD8(&v63);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v59 = v4 + 56;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_100:
    v40 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = *v48;
    sub_1001CAE60(a2, &v63);
    sub_1001C7E9C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v48 = v61;
    v42 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v42;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v57 = ~v7;
  v58 = *a2;
  v54 = v4;
  while (1)
  {
    v9 = *(v4 + 48) + 40 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 18);
    v14 = *(v9 + 19);
    v15 = *(v9 + 24);
    v56 = *(v9 + 32);

    sub_1001C31D0();
    if ((v16 & 1) == 0)
    {
LABEL_10:

LABEL_11:

      goto LABEL_12;
    }

    v55 = v15;
    v17 = *(a2 + 8);
    if (v11)
    {
      if (!v17)
      {
        goto LABEL_10;
      }

      v18 = *(v11 + 16);
      if (v18 != *(v17 + 16))
      {

LABEL_21:

LABEL_22:
        v4 = v54;
        goto LABEL_12;
      }

      if (v18 && v11 != v17)
      {
        v22 = *(a2 + 8);

        v24 = 0;
        v50 = v18 - 1;
        v51 = a2;
        v25 = 32;
        while (1)
        {
          if (v24 >= *(v11 + 16))
          {
            __break(1u);
LABEL_103:
            __break(1u);
            return result;
          }

          v27 = *(v11 + v25);
          v26 = *(v11 + v25 + 16);
          *&v62[11] = *(v11 + v25 + 27);
          v61 = v27;
          *v62 = v26;
          if (v24 >= *(v17 + 16))
          {
            goto LABEL_103;
          }

          v53 = v24;
          v29 = *(v17 + v25);
          v28 = *(v17 + v25 + 16);
          *&v64[11] = *(v17 + v25 + 27);
          v63 = v29;
          *v64 = v28;
          if (*(&v61 + 1))
          {
            if (!*(&v29 + 1))
            {
              goto LABEL_97;
            }

            v30 = v61 == v63 && *(&v61 + 1) == *(&v29 + 1);
            if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_97;
            }
          }

          else if (*(&v29 + 1))
          {
            goto LABEL_97;
          }

          v52 = v25;
          if (*v62)
          {
            if (!*v64)
            {
              goto LABEL_97;
            }

            sub_10007C18C(&v61, v60);
            sub_10007C18C(&v63, v60);

            sub_1001C4B20();
            v32 = v31;

            if ((v32 & 1) == 0)
            {
              sub_10007C1C4(&v63);
              sub_10007C1C4(&v61);
LABEL_97:

              a2 = v51;
              goto LABEL_22;
            }
          }

          else
          {
            if (*v64)
            {
              goto LABEL_97;
            }

            sub_10007C18C(&v61, v60);
            sub_10007C18C(&v63, v60);
          }

          v33 = *&v64[16];
          if (*&v62[16])
          {
            a2 = v51;
            if (!*&v64[16])
            {
              sub_10007C1C4(&v63);
              sub_10007C1C4(&v61);
LABEL_99:

              goto LABEL_21;
            }

            if (*&v62[8] == *&v64[8] && *&v62[16] == *&v64[16])
            {
              sub_10007C1C4(&v63);
              result = sub_10007C1C4(&v61);
            }

            else
            {
              v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10007C1C4(&v63);
              result = sub_10007C1C4(&v61);
              if ((v35 & 1) == 0)
              {
                goto LABEL_99;
              }
            }
          }

          else
          {
            sub_10007C1C4(&v63);
            result = sub_10007C1C4(&v61);
            a2 = v51;
            if (v33)
            {
              goto LABEL_99;
            }
          }

          if (v62[24] == 2)
          {
            v36 = v53;
            v4 = v54;
            if (v64[24] != 2)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v36 = v53;
            v4 = v54;
            if (v64[24] == 2 || ((v64[24] ^ v62[24]) & 1) != 0)
            {
LABEL_83:

              goto LABEL_11;
            }
          }

          if (v62[25] == 2)
          {
            if (v64[25] != 2)
            {
              goto LABEL_83;
            }
          }

          else if (v64[25] == 2 || ((v64[25] ^ v62[25]) & 1) != 0)
          {
            goto LABEL_83;
          }

          if (v62[26] == 2)
          {
            if (v64[26] != 2)
            {
              goto LABEL_83;
            }
          }

          else if (v64[26] == 2 || ((v64[26] ^ v62[26]) & 1) != 0)
          {
            goto LABEL_83;
          }

          if (v50 == v36)
          {

            goto LABEL_15;
          }

          v25 = v52 + 48;
          v24 = v36 + 1;
        }
      }

      v4 = v54;
    }

    else
    {

      if (v17)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v19 = *(a2 + 16);
    v20 = *(a2 + 16);
    if (v12 == 3)
    {
      if (v20 != 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v20 == 3)
      {
        goto LABEL_12;
      }

      if (v12 == 2)
      {
        if (*(a2 + 16) != 2)
        {
          goto LABEL_12;
        }
      }

      else if (*(a2 + 16) == 2 || ((v19 ^ v12) & 1) != 0)
      {
        goto LABEL_12;
      }

      v38 = v19 >> 8;
      if (v12 >> 8 == 2)
      {
        if (v38 != 2)
        {
          goto LABEL_12;
        }
      }

      else if (v38 == 2 || ((v38 ^ (v12 >> 8)) & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    v21 = *(a2 + 18);
    if (v13 == 2)
    {
      if (v21 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v21 == 2 || ((v21 ^ v13) & 1) != 0)
    {
      goto LABEL_12;
    }

    v37 = *(a2 + 19);
    if (v14 == 2)
    {
      if (v37 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v37 == 2 || ((v37 ^ v14) & 1) != 0)
    {
      goto LABEL_12;
    }

    v39 = *(a2 + 32);
    if ((v56 & 1) == 0)
    {
      break;
    }

    if (*(a2 + 32))
    {
      goto LABEL_101;
    }

LABEL_12:
    v8 = (v8 + 1) & v57;
    if (((*(v59 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  if (v55 != *(a2 + 24))
  {
    v39 = 1;
  }

  if (v39)
  {
    goto LABEL_12;
  }

LABEL_101:
  sub_1001CAEBC(a2);
  v43 = *(v4 + 48) + 40 * v8;
  v45 = *v43;
  v44 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v43 + 24);
  LOBYTE(v43) = *(v43 + 32);
  *a1 = v45;
  *(a1 + 8) = v44;
  *(a1 + 16) = v46;
  *(a1 + 24) = v47;
  *(a1 + 32) = v43;

  return 0;
}

void sub_1001C5CA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t __src, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003FE8();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v64 = v41;
  v42 = *v32;
  v43 = *(*v32 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100079558(&__src, v36);
  Hasher._finalize()();
  v44 = *(v42 + 32);
  sub_100004E1C();
  v47 = v46 & ~v45;
  if ((*(v42 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
  {
    v48 = ~v45;
    while (1)
    {
      v49 = (*(v42 + 48) + 24 * v47);
      v50 = v49[2];
      v51 = *v49 == v40 && v49[1] == v38;
      if (v51 || (v52 = v49[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        sub_1001C2AB4(v53, v36);
        v55 = v54;

        if (v55)
        {
          break;
        }
      }

      v47 = (v47 + 1) & v48;
      if (((*(v42 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v61 = (*(v42 + 48) + 24 * v47);
    v62 = v61[1];
    v63 = v61[2];
    *v64 = *v61;
    v64[1] = v62;
    v64[2] = v63;
  }

  else
  {
LABEL_10:
    v56 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src = *v32;

    sub_10004EF2C();
    sub_1001C8494(v58, v59, v60, v47, isUniquelyReferenced_nonNull_native);
    *v32 = __src;
    *v64 = v40;
    v64[1] = v38;
    v64[2] = v36;
  }

  sub_100006150();
}

void sub_1001C5E58()
{
  sub_100003D74();
  v2 = v1;
  v37 = v3;
  v4 = type metadata accessor for Treatment(0);
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v34 - v13;
  v36 = v0;
  v14 = *v0;
  v15 = *(*v0 + 40);
  Hasher.init(_seed:)();
  v16 = v4;
  v17 = (v2 + *(v4 + 20));
  v18 = v17[1];
  v38 = *v17;
  String.hash(into:)();
  Hasher._finalize()();
  v19 = *(v14 + 32);
  sub_100004E1C();
  v22 = v21 & ~v20;
  if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v23 = ~v20;
    v24 = *(v7 + 72);
    while (1)
    {
      v25 = *(v14 + 48);
      sub_10000C254();
      sub_1001CAFE0();
      if (static Date.== infix(_:_:)())
      {
        v26 = &v12[*(v16 + 20)];
        v27 = *v26 == v38 && *(v26 + 1) == v18;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v28 = *(v16 + 24);
          if (static Date.== infix(_:_:)())
          {
            break;
          }
        }
      }

      sub_1001CB03C(v12, type metadata accessor for Treatment);
      v22 = (v22 + 1) & v23;
      if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1001CB03C(v12, type metadata accessor for Treatment);
    sub_1001CB03C(v2, type metadata accessor for Treatment);
    v33 = *(v14 + 48);
    sub_10000C254();
    sub_1001CAFE0();
  }

  else
  {
LABEL_11:
    v29 = v36;
    v30 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C254();
    v32 = v35;
    sub_1001CAFE0();
    v39 = *v29;
    sub_1001C8668(v32, v22, isUniquelyReferenced_nonNull_native);
    *v29 = v39;
    sub_1001CB094();
  }

  sub_100005F14();
}

void sub_1001C60E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001CB6C();
  v12 = v10;
  v13 = v11;
  v15 = v14;
  v16 = *v10;
  if ((*v10 & 0xC000000000000001) == 0)
  {
    sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
    NSObject._rawHashValue(seed:)(*(v16 + 40));
    v20 = *(v16 + 32);
    sub_100004E1C();
    v23 = ~v22;
    while (1)
    {
      v24 = v21 & v23;
      if (((*(v16 + 56 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
      {
        v31 = *v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *v12;
        v30 = v13;
        sub_1001C8910(v30, v24, isUniquelyReferenced_nonNull_native);
        *v12 = v35;
        goto LABEL_16;
      }

      v25 = *(*(v16 + 48) + 8 * v24);
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        break;
      }

      v21 = v24 + 1;
    }

    v33 = *(*(v16 + 48) + 8 * v24);
    *v15 = v33;
    v34 = v33;
    goto LABEL_18;
  }

  if (v16 < 0)
  {
    v17 = *v10;
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = v11;

  v19 = __CocoaSet.member(for:)();

  if (v19)
  {

    sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
    swift_dynamicCast();
    *v15 = a10;
LABEL_18:
    sub_100006778();
    return;
  }

  v27 = __CocoaSet.count.getter();
  if (!__OFADD__(v27, 1))
  {
    v28 = sub_1001C7008(v17, v27 + 1);
    v29 = *(v28 + 16);
    if (*(v28 + 24) <= v29)
    {
      sub_1001C7BF4(v29 + 1);
    }

    v30 = v18;
    sub_1001C7E18(v30, v28);

    *v12 = v28;
LABEL_16:
    *v15 = v30;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1001C62E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v45 = a5;
  sub_1001CAF14(a1, a2, a3, v44);
  v6 = v44[1];
  v7 = v44[3];
  v8 = v44[4];
  v40 = v44[5];
  v41 = v44[0];
  v9 = (v44[2] + 64) >> 6;

  v38 = v9;
  v39 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v41 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v41 + 56) + 8 * v12);
      v43[0] = *v13;
      v43[1] = v14;
      v43[2] = v15;

      v40(v42, v43);

      v17 = v42[0];
      v16 = v42[1];
      v18 = v42[2];
      v19 = *v45;
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
        if ((a4 & 1) == 0)
        {
          sub_10007B9A4(&qword_100272128, &qword_1001F1D80);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v25 = v45;
        sub_1001C678C();
        v26 = *v25;
        v27 = sub_100012A94();
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_23;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v45;
      if (v24)
      {
        v30 = *(v29[7] + 8 * v21);

        v31 = v29[7];
        v32 = *(v31 + 8 * v21);
        *(v31 + 8 * v21) = v30;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v33 = (v29[6] + 16 * v21);
        *v33 = v17;
        v33[1] = v16;
        *(v29[7] + 8 * v21) = v18;
        v34 = v29[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_22;
        }

        v29[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v9 = v38;
      v6 = v39;
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
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001C65AC()
{
  sub_10001CB6C();
  v4 = v0;
  v6 = v5;
  sub_100007344(v7);
  sub_10007B9A4(&qword_10026A290, &qword_1001F1E00);
  sub_100005DB0();
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_29:

LABEL_30:
    *v4 = v8;
    sub_100006778();
    return;
  }

  v39 = v4;
  v9 = 0;
  v11 = (v1 + 64);
  v10 = *(v1 + 64);
  v12 = *(v1 + 32);
  sub_100005680();
  sub_100011B74();
  v13 = v8 + 64;
  if (!v3)
  {
LABEL_4:
    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v2)
      {
        break;
      }

      ++v15;
      if (v11[v9])
      {
        sub_1000035FC();
        v3 = v17 & v16;
        goto LABEL_9;
      }
    }

    if ((v6 & 1) == 0)
    {

      v4 = v39;
      goto LABEL_30;
    }

    sub_10000ADF4();
    v4 = v39;
    if (v34 != v35)
    {
      sub_100004E1C();
      *v11 = v36;
    }

    else
    {
      v37 = sub_10000B110();
      sub_1000575CC(v37, v38, v1 + 64);
    }

    *(v1 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_100008698();
LABEL_9:
    v18 = v14 | (v9 << 6);
    v19 = *(v1 + 56);
    v20 = *(*(v1 + 48) + 4 * v18);
    v21 = *(v19 + 8 * v18);
    if ((v6 & 1) == 0)
    {
      v22 = *(v19 + 8 * v18);
      swift_unknownObjectRetain();
    }

    v23 = *(v8 + 40);
    static Hasher._hash(seed:bytes:count:)();
    v24 = *(v8 + 32);
    sub_10000A574();
    v26 = *(v13 + 8 * v25);
    sub_100016800();
    if (v27)
    {
      break;
    }

    sub_1000074F4();
LABEL_21:
    sub_100005890();
    *(v13 + v31) |= v32;
    *(*(v8 + 48) + 4 * v33) = v20;
    *(*(v8 + 56) + 8 * v33) = v21;
    ++*(v8 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v13 + 8 * v28) != -1)
    {
      sub_100003F60();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1001C678C()
{
  sub_100003FE8();
  v4 = v0;
  v5 = *v0;
  if (*(*v0 + 24) > v6)
  {
    v7 = *(*v0 + 24);
  }

  v46 = v1;
  sub_10007B9A4(v2, v3);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v4 = v8;
    sub_100006150();
    return;
  }

  v44 = v4;
  v45 = v5;
  v9 = 0;
  v11 = (v5 + 64);
  v10 = *(v5 + 64);
  v12 = *(v5 + 32);
  sub_100005680();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v18 = v8 + 64;
  if ((v14 & v13) == 0)
  {
LABEL_6:
    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v17)
      {
        break;
      }

      ++v20;
      if (v11[v9])
      {
        sub_1000035FC();
        v15 = v22 & v21;
        goto LABEL_11;
      }
    }

    if ((v46 & 1) == 0)
    {

      v4 = v44;
      goto LABEL_32;
    }

    v4 = v44;
    if (1 << *(v5 + 32) >= 64)
    {
      v42 = sub_10000B110();
      sub_1000575CC(v42, v43, v11);
    }

    else
    {
      sub_100004E1C();
      *v11 = v41;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v23 = v19 | (v9 << 6);
    v24 = (*(v5 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v5 + 56) + 8 * v23);
    if ((v46 & 1) == 0)
    {
      v28 = v24[1];
    }

    v29 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v30 = *(v8 + 32);
    sub_10000A574();
    v32 = *(v18 + 8 * v31);
    sub_100016800();
    if (v33)
    {
      break;
    }

    sub_1000074F4();
LABEL_23:
    sub_100005890();
    *(v18 + v37) |= v38;
    v40 = (*(v8 + 48) + 16 * v39);
    *v40 = v25;
    v40[1] = v26;
    *(*(v8 + 56) + 8 * v39) = v27;
    sub_100012FD4();
    v5 = v45;
    if (!v15)
    {
      goto LABEL_6;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v33)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    if (*(v18 + 8 * v34) != -1)
    {
      sub_100003F60();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1001C699C(uint64_t a1, char a2)
{
  v5 = v2;
  sub_100007344(a1);
  sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
  sub_100005DB0();
  v41 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v3 + 16))
  {
LABEL_30:

LABEL_31:
    *v5 = v7;
    return;
  }

  v8 = 0;
  v10 = (v3 + 64);
  v9 = *(v3 + 64);
  v11 = *(v3 + 32);
  sub_100005680();
  sub_10001B294();
  v13 = v12 >> 6;
  v14 = v7 + 64;
  if (!v4)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (v10[v8])
      {
        sub_1000035FC();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_31;
    }

    sub_10000ADF4();
    v5 = v2;
    if (v36 != v37)
    {
      sub_100004E1C();
      *v10 = v38;
    }

    else
    {
      v39 = sub_10000B110();
      sub_1000575CC(v39, v40, v3 + 64);
    }

    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_100019E2C();
LABEL_9:
    v19 = v15 | (v8 << 6);
    v20 = (*(v3 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v3 + 56) + 32 * v19);
    if (v41)
    {
      sub_100002C4C(v23, v42);
    }

    else
    {
      sub_100011BAC(v23, v42);
    }

    v24 = *(v7 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v25 = *(v7 + 32);
    sub_10000A574();
    v27 = *(v14 + 8 * v26);
    sub_100016800();
    if (v28)
    {
      break;
    }

    sub_1000074F4();
LABEL_22:
    sub_100005890();
    *(v14 + v32) |= v33;
    v35 = (*(v7 + 48) + 16 * v34);
    *v35 = v21;
    v35[1] = v22;
    sub_100002C4C(v42, (*(v7 + 56) + 32 * v34));
    sub_100012FD4();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(v14 + 8 * v29) != -1)
    {
      sub_100003F60();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1001C6BAC()
{
  sub_100003D74();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v53 = type metadata accessor for URL();
  v7 = sub_100002CC4(v53);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1000052A4();
  v52 = v12;
  v13 = *v2;
  if (*(*v2 + 24) > v6)
  {
    v14 = *(*v2 + 24);
  }

  sub_10007B9A4(&qword_100272190, &unk_1001F1EB0);
  sub_100005DB0();
  v51 = v4;
  v15 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v13 + 16))
  {
LABEL_32:

LABEL_33:
    *v2 = v15;
    sub_100005F14();
    return;
  }

  v48 = v2;
  v16 = 0;
  v18 = (v13 + 64);
  v17 = *(v13 + 64);
  v19 = *(v13 + 32);
  sub_100005680();
  sub_10001B294();
  v21 = v20 >> 6;
  v49 = (v9 + 16);
  v50 = v9;
  v22 = (v9 + 32);
  v23 = v15 + 64;
  if (!v1)
  {
LABEL_6:
    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v21)
      {
        break;
      }

      ++v25;
      if (v18[v16])
      {
        sub_1000035FC();
        v1 = v27 & v26;
        goto LABEL_11;
      }
    }

    if ((v51 & 1) == 0)
    {

      v2 = v48;
      goto LABEL_33;
    }

    sub_10000ADF4();
    v2 = v48;
    if (v43 != v44)
    {
      sub_100004E1C();
      *v18 = v45;
    }

    else
    {
      v46 = sub_10000B110();
      sub_1000575CC(v46, v47, v13 + 64);
    }

    *(v13 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    sub_100019E2C();
LABEL_11:
    v28 = v24 | (v16 << 6);
    v29 = *(*(v13 + 48) + 8 * v28);
    v30 = *(v9 + 72);
    v31 = *(v13 + 56) + v30 * v28;
    if (v51)
    {
      (*v22)(v52, v31, v53);
    }

    else
    {
      (*v49)(v52, v31, v53);
    }

    v32 = *(v15 + 40);
    static Hasher._hash(seed:_:)();
    v33 = *(v15 + 32);
    sub_10000A574();
    v35 = *(v23 + 8 * v34);
    sub_100016800();
    if (v36)
    {
      break;
    }

    sub_1000074F4();
LABEL_24:
    sub_100005890();
    *(v23 + v40) |= v41;
    *(*(v15 + 48) + 8 * v42) = v29;
    (*v22)(*(v15 + 56) + v30 * v42, v52, v53);
    ++*(v15 + 16);
    v9 = v50;
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    if (*(v23 + 8 * v37) != -1)
    {
      sub_100003F60();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1001C6E64()
{
  sub_10001CB6C();
  v4 = v0;
  v6 = v5;
  sub_100007344(v7);
  sub_10007B9A4(v8, v9);
  sub_100005DB0();
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_29:

LABEL_30:
    *v4 = v10;
    sub_100006778();
    return;
  }

  v39 = v0;
  v11 = 0;
  v13 = (v1 + 64);
  v12 = *(v1 + 64);
  v14 = *(v1 + 32);
  sub_100005680();
  sub_100011B74();
  v15 = v10 + 64;
  if (!v3)
  {
LABEL_4:
    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v2)
      {
        break;
      }

      ++v17;
      if (v13[v11])
      {
        sub_1000035FC();
        v3 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v6 & 1) == 0)
    {

      v4 = v39;
      goto LABEL_30;
    }

    sub_10000ADF4();
    v4 = v39;
    if (v34 != v35)
    {
      sub_100004E1C();
      *v13 = v36;
    }

    else
    {
      v37 = sub_10000B110();
      sub_1000575CC(v37, v38, v1 + 64);
    }

    *(v1 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_100008698();
LABEL_9:
    v20 = v16 | (v11 << 6);
    v21 = *(*(v1 + 48) + 8 * v20);
    v22 = *(*(v1 + 56) + 8 * v20);
    if ((v6 & 1) == 0)
    {
      v23 = v21;
    }

    NSObject._rawHashValue(seed:)(*(v10 + 40));
    v24 = *(v10 + 32);
    sub_10000A574();
    v26 = *(v15 + 8 * v25);
    sub_100016800();
    if (v27)
    {
      break;
    }

    sub_1000074F4();
LABEL_21:
    sub_100005890();
    *(v15 + v31) |= v32;
    *(*(v10 + 48) + 8 * v33) = v21;
    *(*(v10 + 56) + 8 * v33) = v22;
    sub_100012FD4();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_100022250();
  while (1)
  {
    sub_1000222D4();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v15 + 8 * v28) != -1)
    {
      sub_100003F60();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

Swift::Int sub_1001C7008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1001C7BF4(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1001C71E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1000575CC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v18 = *(v17 + 16);
    v33 = *v17;
    v34 = v18;
    v35 = *(v17 + 32);
    v19 = *(v6 + 40);
    Hasher.init(_seed:)();
    sub_100074AD8(v32);
    result = Hasher._finalize()();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v6 + 48) + 40 * v23;
    v29 = v34;
    *v28 = v33;
    *(v28 + 16) = v29;
    *(v28 + 32) = v35;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001C7454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272188, &qword_1001F1E08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v30 = v3;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1000575CC(0, (v28 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v19 = Hasher._finalize()();

    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    v3 = v30;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1001C76CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272198, qword_1001F1EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v24 = v2;
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
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 24 * (v13 | (v7 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      sub_100079558(__src, v19);
      Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v22 = (*(v6 + 48) + 24 * result);
      *v22 = v17;
      v22[1] = v18;
      v22[2] = v19;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v23 = 1 << *(v3 + 32);
    if (v23 >= 64)
    {
      sub_1000575CC(0, (v23 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v23;
    }

    v2 = v24;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1001C78E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Treatment(0);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10007B9A4(&qword_100272168, &qword_1001F1DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v37 = v2;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      sub_1000575CC(0, (v36 + 63) >> 6, v8 + 56);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v37;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48) + *(v38 + 72) * (v19 | (v12 << 6));
    sub_1001CB094();
    v23 = *(v11 + 40);
    Hasher.init(_seed:)();
    v24 = &v7[*(v39 + 20)];
    v25 = *v24;
    v26 = *(v24 + 1);
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v11 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = *(v11 + 48);
    result = sub_1001CB094();
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v18 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001C7BF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1000575CC(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1001C7E18(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1001C7E9C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001C71E4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1001C8A74();
        goto LABEL_107;
      }

      sub_1001C9348(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_100074AD8(&v61);
    result = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    v57 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v55 = ~v10;
      v56 = *v5;
      v53 = v8;
      do
      {
        v11 = *(v8 + 48) + 40 * a2;
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        v15 = *(v11 + 18);
        v16 = *(v11 + 19);
        v17 = *(v11 + 24);
        v18 = *(v11 + 32);

        sub_1001C31D0();
        if ((v19 & 1) == 0)
        {
LABEL_17:

LABEL_18:

          goto LABEL_19;
        }

        v54 = v17;
        v20 = *(v5 + 8);
        if (v13)
        {
          if (!v20)
          {
            goto LABEL_17;
          }

          v21 = *(v13 + 16);
          if (v21 != *(v20 + 16))
          {

LABEL_28:

LABEL_29:
            v8 = v53;
            goto LABEL_19;
          }

          if (v21 && v13 != v20)
          {
            v25 = *(v5 + 8);

            v26 = 0;
            v48 = v21 - 1;
            v49 = v5;
            v27 = 32;
            while (v26 < *(v13 + 16))
            {
              v29 = *(v13 + v27);
              v28 = *(v13 + v27 + 16);
              *&v60[11] = *(v13 + v27 + 27);
              v59 = v29;
              *v60 = v28;
              if (v26 >= *(v20 + 16))
              {
                goto LABEL_111;
              }

              v51 = v26;
              v31 = *(v20 + v27);
              v30 = *(v20 + v27 + 16);
              *&v62[11] = *(v20 + v27 + 27);
              v61 = v31;
              *v62 = v30;
              if (*(&v59 + 1))
              {
                if (!*(&v31 + 1))
                {
                  goto LABEL_104;
                }

                v32 = v59 == v61 && *(&v59 + 1) == *(&v31 + 1);
                if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_104;
                }
              }

              else if (*(&v31 + 1))
              {
                goto LABEL_104;
              }

              v50 = v27;
              if (*v60)
              {
                if (!*v62)
                {
                  goto LABEL_104;
                }

                sub_10007C18C(&v59, v58);
                sub_10007C18C(&v61, v58);

                sub_1001C4B20();
                v34 = v33;

                if ((v34 & 1) == 0)
                {
                  sub_10007C1C4(&v61);
                  sub_10007C1C4(&v59);
LABEL_104:

                  v5 = v49;
                  goto LABEL_29;
                }
              }

              else
              {
                if (*v62)
                {
                  goto LABEL_104;
                }

                sub_10007C18C(&v59, v58);
                sub_10007C18C(&v61, v58);
              }

              v35 = *&v62[16];
              if (*&v60[16])
              {
                v5 = v49;
                if (!*&v62[16])
                {
                  sub_10007C1C4(&v61);
                  sub_10007C1C4(&v59);
LABEL_106:

                  goto LABEL_28;
                }

                if (*&v60[8] == *&v62[8] && *&v60[16] == *&v62[16])
                {
                  sub_10007C1C4(&v61);
                  sub_10007C1C4(&v59);
                }

                else
                {
                  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  sub_10007C1C4(&v61);
                  sub_10007C1C4(&v59);
                  if ((v37 & 1) == 0)
                  {
                    goto LABEL_106;
                  }
                }
              }

              else
              {
                sub_10007C1C4(&v61);
                sub_10007C1C4(&v59);
                v5 = v49;
                if (v35)
                {
                  goto LABEL_106;
                }
              }

              if (v60[24] == 2)
              {
                v8 = v53;
                v38 = v51;
                if (v62[24] != 2)
                {
                  goto LABEL_90;
                }
              }

              else
              {
                v8 = v53;
                v38 = v51;
                if (v62[24] == 2 || ((v62[24] ^ v60[24]) & 1) != 0)
                {
LABEL_90:

                  goto LABEL_18;
                }
              }

              if (v60[25] == 2)
              {
                if (v62[25] != 2)
                {
                  goto LABEL_90;
                }
              }

              else if (v62[25] == 2 || ((v62[25] ^ v60[25]) & 1) != 0)
              {
                goto LABEL_90;
              }

              if (v60[26] == 2)
              {
                if (v62[26] != 2)
                {
                  goto LABEL_90;
                }
              }

              else if (v62[26] == 2 || ((v62[26] ^ v60[26]) & 1) != 0)
              {
                goto LABEL_90;
              }

              if (v48 == v38)
              {

                goto LABEL_22;
              }

              v27 = v50 + 48;
              v26 = v38 + 1;
            }

            goto LABEL_110;
          }

          v8 = v53;
        }

        else
        {

          if (v20)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        v22 = *(v5 + 16);
        v23 = *(v5 + 16);
        if (v14 == 3)
        {
          if (v23 != 3)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v23 == 3)
          {
            goto LABEL_19;
          }

          if (v14 == 2)
          {
            if (*(v5 + 16) != 2)
            {
              goto LABEL_19;
            }
          }

          else if (*(v5 + 16) == 2 || ((v22 ^ v14) & 1) != 0)
          {
            goto LABEL_19;
          }

          v40 = v22 >> 8;
          if (v14 >> 8 == 2)
          {
            if (v40 != 2)
            {
              goto LABEL_19;
            }
          }

          else if (v40 == 2 || ((v40 ^ (v14 >> 8)) & 1) != 0)
          {
            goto LABEL_19;
          }
        }

        v24 = *(v5 + 18);
        if (v15 == 2)
        {
          if (v24 != 2)
          {
            goto LABEL_19;
          }
        }

        else if (v24 == 2 || ((v24 ^ v15) & 1) != 0)
        {
          goto LABEL_19;
        }

        v39 = *(v5 + 19);
        if (v16 == 2)
        {
          if (v39 != 2)
          {
            goto LABEL_19;
          }
        }

        else if (v39 == 2 || ((v39 ^ v16) & 1) != 0)
        {
          goto LABEL_19;
        }

        v41 = *(v5 + 32);
        if (v18)
        {
          if (*(v5 + 32))
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v54 != *(v5 + 24))
          {
            v41 = 1;
          }

          if ((v41 & 1) == 0)
          {
            goto LABEL_112;
          }
        }

LABEL_19:
        a2 = (a2 + 1) & v55;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_107:
  v42 = *v52;
  *(*v52 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v43 = *(v42 + 48) + 40 * a2;
  v44 = *(v5 + 16);
  *v43 = *v5;
  *(v43 + 16) = v44;
  *(v43 + 32) = *(v5 + 32);
  v45 = *(v42 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v47;
  }

  return result;
}

Swift::Int sub_1001C8494(Swift::Int result, Swift::Int a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_1001C76CC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1001C8D40();
      goto LABEL_17;
    }

    sub_1001C97E4(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_100079558(__src, a3);
  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 24 * a4);
      v16 = v15[2];
      v17 = *v15 == v8 && v15[1] == a2;
      if (v17 || (v18 = v15[1], result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {

        sub_1001C2AB4(v19, a3);
        v21 = v20;

        if (v21)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v22 = *v27;
  *(*v27 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = (*(v22 + 48) + 24 * a4);
  *v23 = v8;
  v23[1] = a2;
  v23[2] = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C8668(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Treatment(0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v33 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1001C78E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001C8FF0();
      goto LABEL_18;
    }

    sub_1001C99C8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v15 = (a1 + *(v7 + 20));
  v16 = *v15;
  v17 = v15[1];
  String.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v13 + 32);
  a2 = v18 & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v34 + 72);
    do
    {
      v22 = *(v13 + 48);
      sub_1001CAFE0();
      if (static Date.== infix(_:_:)())
      {
        v23 = &v10[*(v7 + 20)];
        v24 = *v23 == v16 && *(v23 + 1) == v17;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v25 = *(v7 + 24);
          if (static Date.== infix(_:_:)())
          {
            goto LABEL_21;
          }
        }
      }

      sub_1001CB03C(v10, type metadata accessor for Treatment);
      a2 = (a2 + 1) & v20;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v26 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = *(v26 + 48) + *(v34 + 72) * a2;
  result = sub_1001CB094();
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v26 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_1001CB03C(v10, type metadata accessor for Treatment);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1001C8910(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001C7BF4(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1001C9CAC(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_100002BC0(0, &qword_10026E458, AMSTreatment_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1001C91F8();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

void *sub_1001C8A74()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

id sub_1001C8BF0()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272188, &qword_1001F1E08);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1001C8D40()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272198, qword_1001F1EC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

void *sub_1001C8EAC()
{
  v1 = v0;
  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        sub_1001CB120();
LABEL_17:
        v18 = v14 | (v8 << 6);
        v19 = (*(v2 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = (*(v4 + 48) + 16 * v18);
        *v21 = *v19;
        v21[1] = v20;
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

      ++v15;
      if (*(v2 + 56 + 8 * v8))
      {
        sub_1000035FC();
        v12 = v17 & v16;
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

void *sub_1001C8FF0()
{
  v1 = v0;
  v2 = type metadata accessor for Treatment(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10007B9A4(&qword_100272168, &qword_1001F1DC8);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = *(v5 + 48);
        v21 = *(v3 + 72) * (v17 | (v11 << 6));
        sub_1001CAFE0();
        v22 = *(v7 + 48);
        result = sub_1001CB094();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v7;
  }

  return result;
}

id sub_1001C91F8()
{
  v1 = v0;
  sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1001C9348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v3 + 48) + 40 * (v13 | (v7 << 6));
        v17 = *(v16 + 32);
        v18 = *(v16 + 16);
        v34 = *v16;
        v35 = v18;
        v36 = v17;
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();
        sub_1001CAE60(&v34, v32);
        sub_100074AD8(v33);
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v6 + 48) + 40 * v23;
        v29 = v34;
        v30 = v35;
        *(v28 + 32) = v36;
        *v28 = v29;
        *(v28 + 16) = v30;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1001C9594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272188, &qword_1001F1E08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v19 = v17;
        String.hash(into:)();
        v20 = Hasher._finalize()();

        v21 = -1 << *(v6 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v6 + 48) + 8 * v24) = v19;
        ++*(v6 + 16);
        v3 = v30;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v13 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_1001C97E4(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272198, qword_1001F1EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  v23 = v2;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = v2 + 56;
    v8 = 1 << *(v2 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v2 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = (*(v23 + 48) + 24 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      sub_100079558(__src, v18);
      Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(v5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v21 = (*(v5 + 48) + 24 * result);
      *v21 = v16;
      v21[1] = v17;
      v21[2] = v18;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_16;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v22 = v5;
  }

  return result;
}

uint64_t sub_1001C99C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Treatment(0);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10007B9A4(&qword_100272168, &qword_1001F1DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v21 = *(v8 + 48) + *(v36 + 72) * (v18 | (v12 << 6));
        sub_1001CAFE0();
        v22 = *(v11 + 40);
        Hasher.init(_seed:)();
        v23 = &v7[*(v37 + 20)];
        v24 = *v23;
        v25 = *(v23 + 1);
        String.hash(into:)();
        result = Hasher._finalize()();
        v26 = -1 << *(v11 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v34 = *(v11 + 48);
        result = sub_1001CB094();
        ++*(v11 + 16);
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v16)
        {

          v2 = v35;
          goto LABEL_27;
        }

        v20 = *(v8 + 56 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1001C9CAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10007B9A4(&qword_100272160, &qword_1001F1DC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = NSObject._rawHashValue(seed:)(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1001CA15C(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_149;
  }

  sub_10007B9A4(&qword_100272138, &unk_1001F1D90);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v97 = *(v1 + 16);
  if (!v97)
  {
LABEL_149:

    return v3;
  }

  v4 = 0;
  v5 = result + 56;
  v98 = v1 + 32;
  v110 = result + 56;
  v111 = result;
  v93 = v1;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      goto LABEL_154;
    }

    v6 = (v98 + 40 * v4);
    v7 = v6[1];
    v129 = *v6;
    v130 = v7;
    v131 = *(v6 + 32);
    v8 = v3[5];
    Hasher.init(_seed:)();
    sub_1001CAE60(&v129, &v125);
    sub_100074AD8(&v127);
    result = Hasher._finalize()();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v5 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      break;
    }

LABEL_143:
    *(v5 + 8 * v11) = v12 | v13;
    v87 = v3[6] + 40 * v10;
    v88 = v129;
    v89 = v130;
    *(v87 + 32) = v131;
    *v87 = v88;
    *(v87 + 16) = v89;
    v90 = v3[2];
    v91 = __OFADD__(v90, 1);
    v92 = v90 + 1;
    if (v91)
    {
      goto LABEL_155;
    }

    v3[2] = v92;
LABEL_145:
    if (++v4 == v97)
    {
      goto LABEL_149;
    }
  }

  v100 = v4;
  v120 = ~v9;
  v94 = *(&v130 + 1);
  v99 = BYTE3(v130);
  v15 = *(&v129 + 1);
  v14 = v129;
  v123 = v129 + 56;
  v107 = *(&v129 + 1) + 32;
  v108 = v130;
  v103 = v130;
  v104 = BYTE2(v130);
  v95 = v131;
  v96 = BYTE1(v130);
  v112 = *(&v129 + 1);
  while (1)
  {
    v16 = v3[6] + 40 * v10;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 18);
    v21 = *(v16 + 19);
    v22 = *(v16 + 24);
    v23 = *(v16 + 32);
    if (*v16 != v14)
    {
      break;
    }

    v115 = *(v16 + 16);
    v116 = *(v16 + 18);
    v117 = *(v16 + 19);
    v118 = *(v16 + 32);
    v119 = *(v16 + 24);
    v121 = *(v16 + 8);

LABEL_29:
    v44 = v121;
    if (v121)
    {
      if (!v15 || (v45 = *(v121 + 16), v45 != *(v15 + 16)))
      {

LABEL_140:

        goto LABEL_141;
      }

      if (v45 && v121 != v15)
      {
        v106 = v121 + 32;

        v51 = 0;
        v105 = v45;
        while (1)
        {
          if (v51 >= *(v44 + 16))
          {
            goto LABEL_152;
          }

          v52 = (v106 + 48 * v51);
          v54 = *v52;
          v53 = v52[1];
          *&v126[11] = *(v52 + 27);
          v125 = v54;
          *v126 = v53;
          if (v51 >= *(v15 + 16))
          {
            goto LABEL_153;
          }

          v109 = v51;
          v55 = (v107 + 48 * v51);
          v57 = *v55;
          v56 = v55[1];
          *&v128[11] = *(v55 + 27);
          v127 = v57;
          *v128 = v56;
          if (*(&v125 + 1))
          {
            if (!*(&v57 + 1))
            {
              goto LABEL_139;
            }

            v58 = v125 == v127 && *(&v125 + 1) == *(&v57 + 1);
            if (!v58 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else if (*(&v57 + 1))
          {
            goto LABEL_139;
          }

          v59 = *v126;
          v60 = *v128;
          if (*v126)
          {
            if (!*v128)
            {
              goto LABEL_139;
            }

            if (*v126 != *v128)
            {
              if (*(*v126 + 16) == *(*v128 + 16))
              {
                v102 = *v126 + 64;
                v61 = 1 << *(*v126 + 32);
                if (v61 < 64)
                {
                  v62 = ~(-1 << v61);
                }

                else
                {
                  v62 = -1;
                }

                v63 = v62 & *(*v126 + 64);
                sub_10007C18C(&v125, v124);
                sub_10007C18C(&v127, v124);
                v101 = (v61 + 63) >> 6;

                v64 = 0;
                v122 = v44;
                while (v63)
                {
                  v65 = __clz(__rbit64(v63));
                  v114 = (v63 - 1) & v63;
LABEL_76:
                  v68 = v65 | (v64 << 6);
                  v69 = *(v59 + 56);
                  v70 = v59;
                  v71 = (*(v59 + 48) + 16 * v68);
                  v72 = *v71;
                  v73 = v71[1];
                  v74 = (v69 + 16 * v68);
                  v76 = *v74;
                  v75 = v74[1];

                  v77 = sub_100012A94();
                  v79 = v78;

                  if ((v79 & 1) == 0)
                  {

                    v5 = v110;
                    v3 = v111;
                    v15 = v112;
                    goto LABEL_138;
                  }

                  v80 = (*(v60 + 56) + 16 * v77);
                  v81 = *v80 == v76 && v80[1] == v75;
                  v44 = v122;
                  if (v81)
                  {

                    v59 = v70;
                    v15 = v112;
                    v63 = v114;
                  }

                  else
                  {
                    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v59 = v70;
                    v15 = v112;
                    v63 = v114;
                    if ((v82 & 1) == 0)
                    {

                      v5 = v110;
                      v3 = v111;
                      goto LABEL_138;
                    }
                  }
                }

                v66 = v64;
                while (1)
                {
                  v64 = v66 + 1;
                  if (__OFADD__(v66, 1))
                  {
                    goto LABEL_151;
                  }

                  if (v64 >= v101)
                  {

                    v5 = v110;
                    v3 = v111;
                    goto LABEL_87;
                  }

                  v67 = *(v102 + 8 * v64);
                  ++v66;
                  if (v67)
                  {
                    v65 = __clz(__rbit64(v67));
                    v114 = (v67 - 1) & v67;
                    goto LABEL_76;
                  }
                }
              }

LABEL_139:

              goto LABEL_140;
            }
          }

          else if (*v128)
          {
            goto LABEL_139;
          }

          sub_10007C18C(&v125, v124);
          sub_10007C18C(&v127, v124);
LABEL_87:
          v83 = *&v128[16];
          if (*&v126[16])
          {
            if (!*&v128[16])
            {
LABEL_138:
              sub_10007C1C4(&v127);
              sub_10007C1C4(&v125);
              goto LABEL_139;
            }

            if (*&v126[8] == *&v128[8] && *&v126[16] == *&v128[16])
            {
              sub_10007C1C4(&v127);
              result = sub_10007C1C4(&v125);
            }

            else
            {
              v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10007C1C4(&v127);
              result = sub_10007C1C4(&v125);
              if ((v85 & 1) == 0)
              {
                goto LABEL_139;
              }
            }
          }

          else
          {
            sub_10007C1C4(&v127);
            result = sub_10007C1C4(&v125);
            if (v83)
            {
              goto LABEL_139;
            }
          }

          if (v126[24] == 2)
          {
            if (v128[24] != 2)
            {
              goto LABEL_139;
            }
          }

          else if (v128[24] == 2 || ((v128[24] ^ v126[24]) & 1) != 0)
          {
            goto LABEL_139;
          }

          if (v126[25] == 2)
          {
            if (v128[25] != 2)
            {
              goto LABEL_139;
            }
          }

          else if (v128[25] == 2 || ((v128[25] ^ v126[25]) & 1) != 0)
          {
            goto LABEL_139;
          }

          if (v126[26] == 2)
          {
            if (v128[26] != 2)
            {
              goto LABEL_139;
            }
          }

          else if (v128[26] == 2 || ((v128[26] ^ v126[26]) & 1) != 0)
          {
            goto LABEL_139;
          }

          v51 = v109 + 1;
          if (v109 + 1 == v105)
          {

            goto LABEL_35;
          }
        }
      }

LABEL_35:

      v46 = v119;
      v48 = v117;
      v47 = v118;
      v49 = v115;
      v50 = v116;
    }

    else
    {

      v46 = v119;
      v48 = v117;
      v47 = v118;
      v49 = v115;
      v50 = v116;
      if (v15)
      {
        goto LABEL_141;
      }
    }

    if (v49 == 3)
    {
      if (v108 != 3)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (v108 == 3)
      {
        goto LABEL_141;
      }

      if (v49 == 2)
      {
        if (v103 != 2)
        {
          goto LABEL_141;
        }
      }

      else if (v103 == 2 || ((v49 ^ v103) & 1) != 0)
      {
        goto LABEL_141;
      }

      if (v49 >> 8 == 2)
      {
        if (v96 != 2)
        {
          goto LABEL_141;
        }
      }

      else if (v96 == 2 || (((v49 >> 8) ^ v96) & 1) != 0)
      {
        goto LABEL_141;
      }
    }

    if (v50 == 2)
    {
      if (v104 != 2)
      {
        goto LABEL_141;
      }
    }

    else if (v104 == 2 || ((v50 ^ v104) & 1) != 0)
    {
      goto LABEL_141;
    }

    if (v48 == 2)
    {
      if (v99 != 2)
      {
        goto LABEL_141;
      }
    }

    else if (v99 == 2 || ((v48 ^ v99) & 1) != 0)
    {
      goto LABEL_141;
    }

    if (v47)
    {
      if (v95)
      {
        goto LABEL_147;
      }
    }

    else
    {
      v86 = v95;
      if (v46 != v94)
      {
        v86 = 1;
      }

      if ((v86 & 1) == 0)
      {
LABEL_147:
        result = sub_1001CAEBC(&v129);
        v1 = v93;
        v4 = v100;
        goto LABEL_145;
      }
    }

LABEL_141:
    v10 = (v10 + 1) & v120;
    v11 = v10 >> 6;
    v12 = *(v5 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if ((v12 & (1 << v10)) == 0)
    {
      v1 = v93;
      v4 = v100;
      goto LABEL_143;
    }
  }

  if (*(v17 + 16) != *(v14 + 16))
  {
    goto LABEL_141;
  }

  v115 = *(v16 + 16);
  v116 = *(v16 + 18);
  v117 = *(v16 + 19);
  v118 = *(v16 + 32);
  v119 = *(v16 + 24);
  v24 = v17 + 56;
  v25 = 1 << *(v17 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v17 + 56);
  v28 = (v25 + 63) >> 6;

  v121 = v18;

  v29 = 0;
  v113 = v10;
  if (v27)
  {
    while (2)
    {
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_19:
      v33 = v17;
      v34 = (*(v17 + 48) + 16 * (v30 | (v29 << 6)));
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v14 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v38 = Hasher._finalize()();
      v39 = ~(-1 << *(v14 + 32));
      do
      {
        v40 = v38 & v39;
        if (((*(v123 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
        {

          v5 = v110;
          v3 = v111;
          v15 = v112;
          v10 = v113;
          goto LABEL_141;
        }

        v41 = (*(v14 + 48) + 16 * v40);
        if (*v41 == v36 && v41[1] == v35)
        {
          break;
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v38 = v40 + 1;
      }

      while ((v43 & 1) == 0);

      v17 = v33;
      v15 = v112;
      v10 = v113;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v31 = v29;
  v5 = v110;
  v3 = v111;
  while (1)
  {
    v29 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v29 >= v28)
    {
      goto LABEL_29;
    }

    v32 = *(v24 + 8 * v29);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v27 = (v32 - 1) & v32;
      goto LABEL_19;
    }
  }

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
  return result;
}

uint64_t sub_1001CAAD8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_10007B9A4(&qword_100272150, &qword_1001F1DB0);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1001CAC68(uint64_t a1)
{
  v1 = a1;
  if (sub_10004369C(a1))
  {
    sub_10007B9A4(&qword_100272158, &qword_1001F1DB8);
    v2 = sub_10003AF6C();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v23 = sub_100049574(v1);
  if (v23)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v21 = v1;
    v22 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    while (1)
    {
      sub_1000F1168(v3, v22 == 0, v1);
      v5 = v22 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v20 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      NSObject._rawHashValue(seed:)(v2[5]);
      v8 = *(v2 + 32);
      sub_100004E1C();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = *&v4[8 * v13];
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        sub_100002BC0(0, &qword_1002723D0, UNNotificationCategory_ptr);
        v16 = *(v2[6] + 8 * v12);
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      *&v4[8 * v13] = v15 | v14;
      *(v2[6] + 8 * v12) = v6;
      v18 = v2[2];
      v7 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v19;
LABEL_17:
      v1 = v21;
      if (v3 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_1001CAE1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100070354(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1001CAF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1001CAF50(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001CAF90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001CAFE0()
{
  sub_100004E28();
  v3 = v2(0);
  sub_100002DDC(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1001CB03C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002DDC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1001CB094()
{
  sub_100004E28();
  v3 = v2(0);
  sub_100002DDC(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1001CB134()
{

  return String.hash(into:)();
}

id sub_1001CB154()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalLinksService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001CB188(uint64_t a1, const void *a2)
{
  v3 = type metadata accessor for UniversalLinksUpdater();

  sub_1001CBD38(v3, a2);
}

void sub_1001CB1C4(char a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    a3(0, a2);
  }

  else
  {
    v6 = [objc_allocWithZone(AMSUniversalLinksUpdateResult) init];
    [v6 setSuccess:a1 & 1];
    v7 = v6;
    a3(v6, 0);
  }
}

id sub_1001CB308(uint64_t a1)
{
  v12 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v12];
  v3 = v12;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001CC970();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000253FC(v4, v6);

    if (!v1)
    {
      return v12;
    }
  }

  else
  {
    v11 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

id sub_1001CB448(uint64_t a1)
{
  v12 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v12];
  v3 = v12;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001CC90C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000253FC(v4, v6);

    if (!v1)
    {
      return v12;
    }
  }

  else
  {
    v11 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void sub_1001CB584(uint64_t a1)
{

  sub_1001CB6A4(a1, &unk_100254270, nullsub_1, sub_1001CC9C8, &unk_100254288);
}

void sub_1001CB614(uint64_t a1)
{

  sub_1001CB6A4(a1, &unk_100254180, nullsub_1, sub_1001CC8F4, &unk_100254198);
}

void sub_1001CB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100007DD0(__stack_chk_guard);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v10 = sub_100003534();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 dictionaryForKey:v11];

  aBlock[0] = 0;
  v13 = [v12 valueWithError:aBlock];

  v14 = aBlock[0];
  if (!v13)
  {
    v25 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = sub_100003DE8();
    sub_100002CFC(v26);
    v28 = *(v27 + 72);
    *(sub_10000C26C() + 16) = xmmword_1001E5F60;
    v29 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v55 = v53;
    sub_100017E64(aBlock);
    sub_1000047A4(v53);
    (*(v30 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v31 = static os_log_type_t.error.getter();
    sub_1000036B0(v31);

    v32 = _convertErrorToNSError(_:)();

    goto LABEL_12;
  }

  v50 = a5;
  sub_10007B9A4(&qword_100272260, &qword_1001F1F18);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E61B0;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = 0x6173726576696E75;
  *(v15 + 40) = v5;
  *(v15 + 88) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
  *(v15 + 64) = v13;
  v16 = v14;
  v51 = v13;
  v17 = NSDictionary.init(dictionaryLiteral:)();
  v18 = sub_1001CB448(v17);
  v19 = sub_1001C1E58(v18);
  v21 = v20;
  v23 = v22;

  if (v23)
  {
    v24 = v19;
LABEL_9:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v35 = sub_100003DE8();
    sub_100002CFC(v35);
    v37 = *(v36 + 72);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    swift_errorRetain();
    v40 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v55 = v52;
    sub_100017E64(aBlock);
    sub_1000047A4(v52);
    (*(v41 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v42 = static os_log_type_t.error.getter();
    sub_1000036B0(v42);

    swift_errorRetain();

    sub_1001CC8A8(v24, 0, 1);

LABEL_12:

    return;
  }

  sub_1001C26E4();
  v24 = v33;
  if (v34)
  {
    sub_1001CC8A8(v19, v21, 0);
    goto LABEL_9;
  }

  sub_1001CC8A8(v43, v21, 0);
  v49 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v44 = Dictionary._bridgeToObjectiveC()().super.isa;
  v45 = swift_allocObject();
  v45[2] = a1;
  v45[3] = a3;
  v45[4] = 0;
  v56 = a4;
  v57 = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_10000566C();
  aBlock[2] = v46;
  v55 = v50;
  v47 = _Block_copy(aBlock);

  [v49 setAdditionalServiceDetailsForApplicationIdentifiers:isa usingContentsOfDictionary:v44 completionHandler:v47];

  sub_1001CC900(v24, 0);
  _Block_release(v47);
}

void sub_1001CBD38(uint64_t a1, const void *a2)
{
  sub_100007DD0(__stack_chk_guard);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001CC960;
  *(v6 + 24) = v5;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  _Block_copy(a2);
  _Block_copy(a2);

  v7 = sub_100003534();
  v8 = String._bridgeToObjectiveC()();
  v57 = v7;
  v9 = [v7 dictionaryForKey:v8];

  aBlock[0] = 0;
  v10 = [v9 valueWithError:aBlock];

  v11 = aBlock[0];
  if (v10)
  {
    sub_10007B9A4(&qword_100272260, &qword_1001F1F18);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E61B0;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0x6173726576696E75;
    *(v12 + 40) = v2;
    *(v12 + 88) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
    *(v12 + 64) = v10;
    v13 = v11;
    v14 = v10;
    v56 = NSDictionary.init(dictionaryLiteral:)();
    v15 = sub_1001CB448(v56);
    v55 = v14;
    v31 = sub_1001C1E58(v15);
    v33 = v32;
    v35 = v34;

    if (v35)
    {
      v36 = v31;
    }

    else
    {
      sub_1001C26E4();
      v36 = v37;
      if ((v38 & 1) == 0)
      {

        sub_1001CC8A8(v48, v33, 0);
        v54 = objc_opt_self();
        isa = Set._bridgeToObjectiveC()().super.isa;
        v49 = Dictionary._bridgeToObjectiveC()().super.isa;
        v50 = swift_allocObject();
        v50[2] = a1;
        v50[3] = sub_1001CC968;
        v50[4] = v6;
        v62 = sub_1001CC9C8;
        v63 = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        sub_10000566C();
        aBlock[2] = v51;
        v61 = &unk_100254238;
        v52 = _Block_copy(aBlock);

        [v54 setAdditionalServiceDetailsForApplicationIdentifiers:isa usingContentsOfDictionary:v49 completionHandler:v52];

        sub_1001CC900(v36, 0);
        _Block_release(v52);

        goto LABEL_14;
      }

      sub_1001CC8A8(v31, v33, 0);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v39 = sub_100003DE8();
    sub_100002CFC(v39);
    v41 = *(v40 + 72);
    *(sub_10000C26C() + 16) = xmmword_1001E5F60;
    swift_errorRetain();
    v42 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v61 = v58;
    sub_100017E64(aBlock);
    sub_1000047A4(v58);
    (*(v43 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v44 = static os_log_type_t.error.getter();
    sub_1000036B0(v44);

    swift_errorRetain();
    _Block_copy(a2);
    swift_errorRetain();
    v45 = _convertErrorToNSError(_:)();
    v46 = sub_100005B34();
    v47(v46);

    _Block_release(a2);

    sub_1001CC8A8(v36, 0, 1);
  }

  else
  {
    v16 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = sub_100003DE8();
    sub_100002CFC(v17);
    v19 = *(v18 + 72);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v22 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    sub_1000077E0();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v61 = v59;
    sub_100017E64(aBlock);
    sub_1000047A4(v59);
    (*(v23 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100002C5C(aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24);

    v25 = _convertErrorToNSError(_:)();
    v26 = [v25 ams_sanitizedForSecureCoding];

    _Block_copy(a2);
    v27 = v26;
    v28 = _convertErrorToNSError(_:)();
    v29 = sub_100005B34();
    v30(v29);

    _Block_release(a2);
  }

LABEL_14:
  _Block_release(a2);
  _Block_release(a2);
}

void sub_1001CC524(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1001CC594(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  if (a1)
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v9 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v10 = static os_log_type_t.default.getter();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v11 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UniversalLinksUpdater();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (a2)
    {
      swift_getErrorValue();
      *(&v17 + 1) = v15;
      v12 = sub_100017E64(&v16);
      (*(*(v15 - 8) + 16))(v12);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v16);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v10 = static os_log_type_t.error.getter();
  }

  sub_1000036B0(v10);

  return a4(a1 & 1, a2);
}

uint64_t sub_1001CC8A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001CC900(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1001CC90C()
{
  result = qword_100272268;
  if (!qword_100272268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272268);
  }

  return result;
}

unint64_t sub_1001CC970()
{
  result = qword_100272270;
  if (!qword_100272270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272270);
  }

  return result;
}

id sub_1001CC9D0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 fileExistsAtPath:v1];

  return v2;
}

unint64_t sub_1001CCA14()
{
  result = qword_100269E28;
  if (!qword_100269E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100269E28);
  }

  return result;
}

void sub_1001CCA58()
{
  sub_100003D74();
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v2);
  v4 = *(v3 + 64);
  sub_100004E78();
  __chkstk_darwin(v5);
  v6 = sub_100023F60();
  v7 = sub_100002CC4(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v10);
  sub_100005B48();
  v11 = [objc_opt_self() ams_cachesDirectory];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_1000086AC();
    MEMORY[0xD000000000000012](v13);
    v14._countAndFlagsBits = 0x7363697274654DLL;
    v14._object = 0xE700000000000000;
    URL.appendPathComponent(_:)(v14);
    v15._object = 0x80000001002045B0;
    v15._countAndFlagsBits = 0xD000000000000013;
    URL.appendPathComponent(_:)(v15);
    v16 = [objc_opt_self() defaultManager];
    sub_1000066EC();

    sub_10000360C();
    if (v17)
    {
      v18 = sub_10000AE08();
      MEMORY[0xD000000000000012](v18);
      sub_10000360C();
      if (!v17)
      {
        sub_100009FB0(v0, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      v29 = sub_100012E30();
      v30(v29);
      v31 = sub_100019E40();
      MEMORY[0xD000000000000012](v31);
    }

    sub_100005F14();
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = sub_100003DE8();
    sub_100002CFC(v19);
    v21 = *(v20 + 72);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    sub_100007358(v24, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v25 = static os_log_type_t.fault.getter();
    sub_1000036B0(v25);

    v26 = [objc_opt_self() defaultManager];
    [v26 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100005F14();
  }
}

void sub_1001CCDAC()
{
  v3 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  sub_100004E78();
  __chkstk_darwin(v6);
  v7 = sub_100023F60();
  v8 = sub_100002CC4(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v11);
  sub_100005B48();
  v12 = [objc_opt_self() ams_engagementDirectory];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_1000086AC();
    v2(v14);
    v15._countAndFlagsBits = 0x6144726576726553;
    v15._object = 0xEF65686361436174;
    URL.appendPathComponent(_:)(v15);
    v16 = [objc_opt_self() defaultManager];
    sub_1000066EC();

    sub_10000360C();
    if (v17)
    {
      v18 = sub_10000AE08();
      v2(v18);
      sub_10000360C();
      if (!v17)
      {
        sub_100009FB0(v0, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      v26 = sub_100012E30();
      v27(v26);
      v28 = sub_100019E40();
      v2(v28);
    }
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = sub_100003DE8();
    sub_100002CFC(v19);
    v21 = *(v20 + 72);
    v22 = sub_1000077EC();
    v23 = sub_100007358(v22, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    sub_100004D04();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v24 = static os_log_type_t.fault.getter();
    sub_1000036B0(v24);

    v25 = [objc_opt_self() defaultManager];
    v29 = [v25 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

void sub_1001CD0D8()
{
  sub_100003D74();
  v2 = v1;
  v37 = v3;
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v4);
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for URL.DirectoryHint();
  v11 = sub_100002CC4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v18 = v17 - v16;
  v19 = type metadata accessor for URL();
  v20 = sub_100002CC4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_1000056E8();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  sub_100005B48();
  sub_1001CCDAC();
  v38 = v2;
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v39 = v29;
  (*(v13 + 104))(v18, enum case for URL.DirectoryHint.inferFromPath(_:), v10);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v13 + 8))(v18, v10);

  v30 = *(v22 + 8);
  v30(v27, v19);
  v31 = [objc_opt_self() defaultManager];
  sub_10001E148();

  v32 = sub_100011B84();
  if (sub_100009F34(v32, v33, v19) == 1)
  {
    (*(v22 + 32))(v37, v0, v19);
    v34 = sub_100011B84();
    if (sub_100009F34(v34, v35, v19) != 1)
    {
      sub_100009FB0(v9, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    v30(v0, v19);
    (*(v22 + 32))(v37, v9, v19);
  }

  sub_100005F14();
}

void sub_1001CD3B8(uint64_t a1)
{
  v2 = AMSLogKey();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v25, a1, &v27);
  sub_10000E1E8(&v25);
  if (v28)
  {
    if (swift_dynamicCast())
    {
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v25, a1, &v27);
      sub_10000E1E8(&v25);
      if (v28)
      {
        v4 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
        if (swift_dynamicCast())
        {
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v5 = type metadata accessor for LogInterpolation();
          sub_100002CFC(v5);
          v7 = *(v6 + 72);
          v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          *(swift_allocObject() + 16) = xmmword_1001E5F70;
          type metadata accessor for UserNotificationAction();
          sub_10000BCD8();

          LogInterpolation.init(stringLiteral:)();
          if (qword_1002686B0 != -1)
          {
            sub_100002D44();
          }

          v10 = static os_log_type_t.default.getter();
          sub_1000036B0(v10);

          sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1001E5F60;
          v25 = 49;
          v26 = 0xE100000000000000;
          sub_10000C298();
          *(inited + 96) = &type metadata for Int;
          *(inited + 72) = 22;
          v25 = 50;
          v26 = 0xE100000000000000;
          sub_10000C298();
          *(inited + 168) = &type metadata for String;
          *(inited + 144) = 0x4449656C646E7562;
          *(inited + 152) = 0xE800000000000000;
          v25 = 7565409;
          v26 = 0xE300000000000000;

          sub_10000C298();
          *(inited + 240) = v4;
          *(inited + 216) = 1635017060;
          Dictionary.init(dictionaryLiteral:)();
          if (qword_1002685F8 != -1)
          {
            swift_once();
          }

          v12 = qword_10026A070;
          sub_100002BC0(0, &qword_10026AE58, AMSPushPayload_ptr);
          v13 = sub_1000AAAF0();
          v14 = [objc_allocWithZone(AMSPushConfiguration) init];
          sub_100002BC0(0, &unk_100272310, AMSUserNotification_ptr);
          v15 = v13;
          v16 = v14;
          v17 = sub_1001CD9D0(v15, v14);
          v18 = objc_opt_self();
          v19 = String._bridgeToObjectiveC()();

          v20 = [v18 postNotification:v17 bag:v12 centerBundleId:v19];

          return;
        }
      }

      else
      {

        sub_100002C5C(&v27);
      }
    }
  }

  else
  {
    sub_100002C5C(&v27);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v21);
  v23 = *(v22 + 72);
  *(sub_100003630() + 16) = xmmword_1001E5F70;
  type metadata accessor for UserNotificationAction();
  sub_10000BCD8();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v24 = static os_log_type_t.error.getter();
  sub_1000036B0(v24);
}

id sub_1001CD9D0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPayload:a1 andConfig:a2];

  return v4;
}

id sub_1001CDA54()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_centerBundleIdentifiers;
  *&v0[v2] = Dictionary.init(dictionaryLiteral:)();
  *&v0[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription] = 0;
  sub_100002BC0(0, &qword_1002723D0, UNNotificationCategory_ptr);
  v3 = sub_1001CDD94(0xD00000000000001BLL, 0x80000001002049C0, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 1);
  sub_100002BC0(0, &qword_10026E4A0, UNUserNotificationCenter_ptr);
  v4 = sub_1001AF38C();
  [v4 setWantsNotificationResponsesDelivered];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E8AB0;
  *(inited + 32) = v3;
  if (sub_100049574(inited))
  {
    v6 = v3;
    sub_1001CAC68(inited);
  }

  else
  {
    swift_setDeallocating();
    v7 = v3;
    sub_1001A6674();
  }

  sub_1001CF318();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v4 setNotificationCategories:isa];

  swift_beginAccess();
  v9 = *&v1[v2];
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *&v1[v2];
  sub_1000AD190();
  *&v1[v2] = v19;
  swift_endAccess();
  v10 = objc_allocWithZone(AMSPushConfiguration);
  v11 = sub_1001CF238(0);
  v12 = String._bridgeToObjectiveC()();
  [v11 setUserNotificationExtensionId:v12];

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v13 = v11;
  v14 = sub_10002411C();
  v15 = [objc_allocWithZone(AMSPushHandler) initWithConfiguration:v13 bag:v14];

  *&v1[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushHandler] = v15;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for UserNotificationsService();
  v16 = objc_msgSendSuper2(&v18, "init");
  [v4 setDelegate:v16];
  [v4 setPrivateDelegate:v16];

  return v16;
}

id sub_1001CDD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  sub_100002BC0(0, &unk_1002723E0, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v6 actions:isa intentIdentifiers:v8 options:a5];

  return v9;
}

id sub_1001CDE94()
{
  if (*&v0[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription])
  {

    AnyCancellable.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationsService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001CDFA0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription;
  v3 = *&v0[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushSubscription];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  if (v3)
  {
    v22 = type metadata accessor for UserNotificationsService();
    v21[0] = v1;
    v9 = v1;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v21);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v15 = static os_log_type_t.error.getter();
    sub_1000036B0(v15);
  }

  else
  {
    v22 = type metadata accessor for UserNotificationsService();
    v21[0] = v1;
    v12 = v1;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v21);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v17 = static os_log_type_t.info.getter();
    sub_1000036B0(v17);

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v19 = sub_10018BF68(0xD000000000000026, 0x80000001002015E0, sub_1001CF230, v18);

    v20 = *&v1[v2];
    *&v1[v2] = v19;
  }
}

void sub_1001CE290(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_1001CF2AC(a1))
    {
      v4 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushHandler;
      v5 = *&v3[OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_pushHandler];
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v7 = [v5 shouldHandleNotification:isa];

      if (v7)
      {
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v8 = *(type metadata accessor for LogInterpolation() - 8);
        v9 = *(v8 + 72);
        v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v25 = type metadata accessor for UserNotificationsService();
        v24[0] = v3;
        v11 = v3;
        v12 = AMSLogKey();
        if (v12)
        {
          v13 = v12;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v24);
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v20 = static os_log_type_t.default.getter();
        sub_1000036B0(v20);

        v21 = *&v3[v4];
        v22 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v21 handleNotification:v22];
      }

      else
      {

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v14 = *(type metadata accessor for LogInterpolation() - 8);
        v15 = *(v14 + 72);
        v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v25 = type metadata accessor for UserNotificationsService();
        v24[0] = v3;
        v17 = v3;
        v18 = AMSLogKey();
        if (v18)
        {
          v19 = v18;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v24);
        LogInterpolation.init(stringLiteral:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v23 = static os_log_type_t.default.getter();
        sub_1000036B0(v23);
      }
    }

    else
    {
    }
  }
}

void sub_1001CE6B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_centerBundleIdentifiers;
  swift_beginAccess();
  v9 = sub_1000AAA44(a1, *&v2[v8]);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v15 = *(v14 + 72);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v39 = type metadata accessor for UserNotificationsService();
    v38[0] = v2;
    v18 = v2;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v38);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0xD00000000000004ALL;
    v29._object = 0x80000001002048C0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    v39 = &type metadata for String;
    v38[0] = v11;
    v38[1] = v12;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v38);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v31 = static os_log_type_t.default.getter();
    sub_1000036B0(v31);

    sub_100002BC0(0, &qword_1002723C8, AMSUserNotificationMetricsEvent_ptr);
    v32 = objc_opt_self();
    v33 = a2;
    v34 = [v32 ams_sharedAccountStore];
    v35 = [v34 ams_activeiTunesAccount];

    v36 = sub_1001CEB2C(v33, v11, v12, v35);
    if (qword_1002685E8 != -1)
    {
      swift_once();
    }

    [qword_100287778 enqueueEvent:v36];
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v21 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v21);
    v23 = *(v22 + 72);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v39 = type metadata accessor for UserNotificationsService();
    v38[0] = v3;
    v26 = v3;
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v38);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v37 = static os_log_type_t.error.getter();
    sub_1000036B0(v37);
  }
}

id sub_1001CEB2C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() eventForSettingsChangedWithSettings:a1 bundleID:v6 account:a4];

  return v7;
}

void sub_1001CEC34(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void))
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = OBJC_IVAR____TtC14amsengagementd24UserNotificationsService_centerBundleIdentifiers;
  swift_beginAccess();
  v10 = sub_1000AAA44(a1, *&a3[v9]);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v36 = a4;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v35 = ((*(v14 + 80) + 32) & ~*(v14 + 80)) + 2 * *(v14 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v34 = type metadata accessor for UserNotificationsService();
    v39 = v34;
    v38[0] = a3;
    v33 = a3;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v38);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0xD000000000000039;
    v23._object = 0x8000000100204820;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    v39 = &type metadata for String;
    v38[0] = v12;
    v38[1] = v13;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v38);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v25 = static os_log_type_t.default.getter();
    sub_1000036B0(v25);

    v26 = objc_opt_self();
    if ([v26 shouldHandleNotificationResponse:a2])
    {
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v39 = v34;
      v38[0] = v33;
      v27 = v33;
      v28 = AMSLogKey();
      if (v28)
      {
        v29 = v28;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v38);
      LogInterpolation.init(stringLiteral:)();
      v31 = static os_log_type_t.default.getter();
      sub_1000036B0(v31);

      sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
      v32 = sub_10002411C();
    }

    a4 = v36;
    v36[2](v36);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = *(type metadata accessor for LogInterpolation() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v39 = type metadata accessor for UserNotificationsService();
    v38[0] = a3;
    v20 = a3;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v38);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v30 = static os_log_type_t.error.getter();
    sub_1000036B0(v30);
  }

  _Block_release(a4);
}

id sub_1001CF238(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithEnabledActionTypes:v2.super.isa];

  return v3;
}

uint64_t sub_1001CF2AC(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1001CF318()
{
  result = qword_1002723D8;
  if (!qword_1002723D8)
  {
    sub_100002BC0(255, &qword_1002723D0, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002723D8);
  }

  return result;
}

void sub_1001CF380()
{
  sub_100003D74();
  v0 = sub_100007E0C();
  v1 = sub_100003D10(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100005478();
  if (qword_100268740 != -1)
  {
    sub_1000070EC();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v9 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  sub_1000086C4(&type metadata for String);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v14);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  LogInterpolation.init(stringInterpolation:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  v13 = String.utf8CString.getter();
  xpc_activity_unregister((v13 + 32));

  sub_100005F14();
}

void sub_1001CF568()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (qword_100268740 != -1)
  {
    sub_1000070EC();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v10 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v10);
  v23 = ((*(v12 + 80) + 32) & ~*(v12 + 80)) + 2 * *(v11 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v24 = v5;
  v25 = v3;
  v26 = v1;
  v27 = &unk_100254510;
  swift_unknownObjectRetain();

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v24);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v15._countAndFlagsBits = 0xD00000000000001ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v27 = &type metadata for String;
  v24 = v3;
  v25 = v1;
  swift_bridgeObjectRetain_n();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v24);
  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17);

  if (!xpc_activity_set_state(v5, 5))
  {
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v24 = v5;
    v25 = v3;
    v26 = v1;
    v27 = &unk_100254510;
    swift_unknownObjectRetain();

    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v24);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD00000000000002ELL;
    v20._object = 0x8000000100204B00;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v27 = &type metadata for String;
    v24 = v3;
    v25 = v1;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v24);
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    v22 = static os_log_type_t.error.getter();
    sub_1000036B0(v22);
  }

  sub_100005F14();
}

uint64_t sub_1001CF8F0(_xpc_activity_s *a1)
{
  state = xpc_activity_get_state(a1);
  if (state >= 6)
  {
    return 0;
  }

  else
  {
    return (0x40203050601uLL >> (8 * state));
  }
}

void sub_1001CF924()
{
  sub_100003D74();
  v3 = v2;
  v23 = v4;
  v5 = sub_100007E0C();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005478();
  if (qword_100268740 != -1)
  {
    sub_1000070EC();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v14 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v15._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  sub_1000086C4(&type metadata for String);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v24);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17);

  sub_1001D0A98();
  v18 = swift_allocObject();
  v18[2] = v1;
  v18[3] = v0;
  v18[4] = v23;
  v18[5] = v3;

  v19 = sub_100006710();
  sub_100066DC8(v19, v20, v21, v22, v18);
  swift_unknownObjectRelease();

  sub_100005F14();
}

uint64_t sub_1001CFB64(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_xpc_activity_s *, uint64_t, uint64_t, _BOOL8), uint64_t a7)
{
  v59 = a7;
  v60 = a6;
  v64 = a4;
  v65 = a5;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSSignposter();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = type metadata accessor for OSSignpostID();
  v22 = *(v21 - 8);
  v67 = v21;
  v68 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v61 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v56 - v26;
  if (qword_100268740 != -1)
  {
    swift_once();
  }

  v28 = qword_1002878A0;
  v29 = *(qword_1002878A0 + 16);
  OSSignposter.init(logHandle:)();
  String._bridgeToObjectiveC()();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:object:)();
  v30 = *(v14 + 8);
  v30(v20, v13);
  v63 = v28;
  v31 = *(v28 + 16);
  OSSignposter.init(logHandle:)();
  swift_unknownObjectRetain();

  v32 = OSSignposter.logHandle.getter();
  LODWORD(v66) = static os_signpost_type_t.begin.getter();

  swift_unknownObjectRelease();
  v33 = OS_os_log.signpostsEnabled.getter();
  v34 = a1;
  v57 = a2;
  v58 = a3;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v56 = v13;
    v70[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1000127B4();
    *(v35 + 12) = 2080;
    v69 = sub_1001CF8F0(v34);
    String.init<A>(describing:)();
    v37 = v34;
    v38 = sub_1000127B4();

    *(v35 + 14) = v38;
    v39 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v66, v39, "Activity", "%s beginning with %s state", v35, 0x16u);
    swift_arrayDestroy();
    v13 = v56;
  }

  else
  {

    v37 = a1;
  }

  v40 = v67;
  v41 = *(v68 + 16);
  v66 = v27;
  v41(v61, v27, v67);
  v42 = type metadata accessor for OSSignpostIntervalState();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v30(v18, v13);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v45 = *(type metadata accessor for LogInterpolation() - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v48 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._object = 0x8000000100204AA0;
  v49._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
  v71 = &type metadata for String;
  v70[0] = v64;
  v70[1] = v65;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v70);
  v50._countAndFlagsBits = 0x203A657461747320;
  v50._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
  v51 = sub_1001CF8F0(v37);
  v71 = &unk_100254408;
  LOBYTE(v70[0]) = v51;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v70);
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
  LogInterpolation.init(stringInterpolation:)();
  v53 = static os_log_type_t.default.getter();
  sub_1000036B0(v53);

  if (sub_1001CF8F0(v37) == 5 || sub_1001CF8F0(v37) == 4)
  {
    v54 = sub_1001CF8F0(v37) == 5;
    v60(v37, v57, v58, v54);
  }

  sub_1001D01A8();

  return (*(v68 + 8))(v66, v40);
}

uint64_t sub_1001D01A8()
{
  v0 = type metadata accessor for OSSignpostError();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OSSignpostID();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OSSignposter();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100268740 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1002878A0 + 16);
  OSSignposter.init(logHandle:)();
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v14 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v15 = v21;
    if ((*(v21 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v15 + 8))(v3, v0);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v18, "Activity", v16, v17, 2u);
  }

  (*(v4 + 8))(v7, v23);
  return (*(v8 + 8))(v11, v22);
}

void sub_1001D04D0(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_xpc_activity_s *, uint64_t, uint64_t, _BOOL8), uint64_t a7)
{
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  if (xpc_activity_copy_criteria(a1))
  {
    swift_unknownObjectRelease();

    sub_1001CFB64(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (qword_100268740 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = *(type metadata accessor for LogInterpolation() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v19 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._object = 0x8000000100204A60;
    v20._countAndFlagsBits = 0xD000000000000032;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v23[3] = &type metadata for String;
    v23[0] = a4;
    v23[1] = a5;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v23);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    v22 = static os_log_type_t.debug.getter();
    sub_1000036B0(v22);

    sub_1001CF924();
  }
}

_BYTE *sub_1001D07CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1001D08A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001D098C()
{
  result = qword_100272450;
  if (!qword_100272450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272450);
  }

  return result;
}

unint64_t sub_1001D09E4()
{
  result = qword_100272458;
  if (!qword_100272458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272458);
  }

  return result;
}

uint64_t sub_1001D0A38(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 65;
      break;
    case 2:
      result = 66;
      break;
    case 3:
      result = 67;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1001D0A98()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  if (*(v0 + 58))
  {
    v3 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  else
  {
    v3 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, *v3);
  if (!*(v0 + 57))
  {
    if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v6 = 1;
    sub_10000BCFC(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
    v5 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
    if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
    {
      goto LABEL_59;
    }

    goto LABEL_11;
  }

  if (*(v0 + 57) != 1)
  {
LABEL_12:
    switch(*(v0 + 1))
    {
      case 1:
        v7 = XPC_ACTIVITY_REQUIRES_CLASS_A;
        if (XPC_ACTIVITY_REQUIRES_CLASS_A)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_15;
      case 2:
LABEL_15:
        v7 = XPC_ACTIVITY_REQUIRES_CLASS_B;
        if (XPC_ACTIVITY_REQUIRES_CLASS_B)
        {
          goto LABEL_18;
        }

        __break(1u);
LABEL_17:
        v7 = XPC_ACTIVITY_REQUIRES_CLASS_C;
        if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
        {
          goto LABEL_60;
        }

LABEL_18:
        sub_10000BCFC(v4, v7);
LABEL_19:
        sub_10000BCFC(v4, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP);
        xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, *(v0 + 59));
        if (!XPC_ACTIVITY_EXPECTED_DURATION)
        {
          goto LABEL_55;
        }

        if ((*(v0 + 24) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (*(v0 + 24) > -9.22337204e18)
        {
          sub_100006980();
          if (!v11)
          {
            goto LABEL_45;
          }

          sub_100003658(v10, v8, v9);
          xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, *v0);
          if ((*(v0 + 16) & 1) == 0)
          {
            v12 = *(v0 + 8);
            if ((~*&v12 & 0x7FF0000000000000) == 0)
            {
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v13 = *(v0 + 8);
            if (v12 <= -9.22337204e18)
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            sub_100006980();
            if (!v11)
            {
              goto LABEL_49;
            }

            sub_100003658(v15, v14, XPC_ACTIVITY_DELAY);
          }

          if ((*(v0 + 56) & 1) == 0)
          {
            v16 = *(v0 + 48);
            if ((~*&v16 & 0x7FF0000000000000) == 0)
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v17 = *(v0 + 48);
            if (v16 <= -9.22337204e18)
            {
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            sub_100006980();
            if (!v11)
            {
              goto LABEL_52;
            }

            sub_100003658(v19, v18, XPC_ACTIVITY_INTERVAL);
          }

          if (*(v0 + 40))
          {
            return;
          }

          v20 = *(v0 + 32);
          if ((~*&v20 & 0x7FF0000000000000) == 0)
          {
            goto LABEL_51;
          }

          v21 = *(v0 + 32);
          if (v20 <= -9.22337204e18)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          sub_100006980();
          if (v11)
          {
            sub_100003658(v23, v22, XPC_ACTIVITY_GRACE_PERIOD);
            return;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      case 3:
        goto LABEL_17;
      default:
        goto LABEL_19;
    }
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_10000BCFC(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  v5 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  if (XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
    v6 = 0;
LABEL_11:
    xpc_dictionary_set_BOOL(v2, v5, v6);
    goto LABEL_12;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

unint64_t sub_1001D0D70@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001FC50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D0DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001D0A38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *sub_1001D0DCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001D0EA8()
{
  result = qword_100272460;
  if (!qword_100272460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272460);
  }

  return result;
}

_BYTE *sub_1001D0EFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1001D0FD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001D0FF0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[60])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1001D103C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1001D109C(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D1178()
{
  result = qword_100272468;
  if (!qword_100272468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272468);
  }

  return result;
}

unint64_t sub_1001D11D0()
{
  result = qword_100272470;
  if (!qword_100272470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272470);
  }

  return result;
}

void sub_1001D1224(uint64_t a1, uint64_t a2)
{
  v3 = sub_100049574(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_100002BC0(0, &qword_100272540, NSXPCConnection_ptr);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

id sub_1001D1320()
{
  [*&v0[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServiceProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001D1460(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections;
  swift_beginAccess();
  v5 = *(a1 + v4);

  sub_1001D1224(a2, v5);
  v7 = v6;
  LOBYTE(a2) = v8;

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v9 = sub_1001D1514(v7);
    swift_endAccess();
  }
}

uint64_t sub_1001D1514(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1001D1A40(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_1000D6AC0(v8 + 40, v7);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1001D15A0(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v5 = *(type metadata accessor for LogInterpolation() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    v13 = type metadata accessor for XPCServiceProvider();
    v12[0] = v4;
    v8 = v4;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v12);
    LogInterpolation.init(stringLiteral:)();
    v13 = &type metadata for Int32;
    LODWORD(v12[0]) = a2;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v12);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v11 = static os_log_type_t.error.getter();
    sub_1000036B0(v11);
  }

  return result;
}

void sub_1001D1798(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v8 = *(type metadata accessor for LogInterpolation() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F60;
      v19 = type metadata accessor for XPCServiceProvider();
      v18[0] = v5;
      v11 = v5;
      v12 = AMSLogKey();
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v18);
      LogInterpolation.init(stringLiteral:)();
      v19 = &type metadata for Int32;
      LODWORD(v18[0]) = a3;
      static LogInterpolation.safe(_:)();
      sub_100002C5C(v18);
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v14 = static os_log_type_t.default.getter();
      sub_1000036B0(v14);

      v15 = *&v11[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock];
      v16 = v11;
      v17 = v7;
      [v15 lock];
      sub_1001D1460(v16, v17);
      [v15 unlock];
    }
  }
}

uint64_t sub_1001D1A40(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

id AMSDTranslateCloudKitError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (([v1 amsd_isCKChangeTokenExpiredError] & 1) == 0 && (objc_msgSend(v2, "amsd_isCKManateeUnavailable") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKMissingManateeIdentity") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKPartialFailureError") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKServerRecordChangedError") & 1) == 0 && (objc_msgSend(v2, "amsd_isCKThrottledError") & 1) == 0)
    {
      [v2 amsd_isCKUnknownItemError];
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [v2 userInfo];
    v6 = [v5 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [v7 ams_mapWithTransform:&stru_100254888];
      [v4 setObject:v8 forKeyedSubscript:@"AMSCloudDataPartialFailureErrorsKey"];
    }

    v9 = [v2 userInfo];
    v10 = [v9 objectForKeyedSubscript:CKErrorRetryAfterKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      [v4 setObject:v11 forKeyedSubscript:@"AMSCloudDataRetryAfterKey"];
    }

    v12 = [v2 ams_title];
    v13 = [v2 ams_message];
    v3 = AMSCustomError();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

AMSPair *__cdecl sub_1001D221C(id a1, id a2, NSError *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = AMSDTranslateCloudKitError(v4);

  v8 = [v6 initWithFirst:v5 second:v7];

  return v8;
}

void sub_1001D3B38(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 deviceToDeviceEncryptionAvailability]);
  [v4 finishWithResult:v6 error:v5];
}

id sub_1001D3D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:?];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

id sub_1001D3F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:?];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

void sub_1001D4230(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = AMSDTranslateCloudKitError(a4);
  v9 = v8;
  if (v8 && ![v8 ams_hasDomain:@"AMSCloudDataErrorDomain" code:4])
  {
    [*(a1 + 32) finishWithError:v9];
  }

  else
  {
    v10 = [[AMSCloudDataSavedRecordsResult alloc] initWithSavedRecords:v11 deletedRecords:v7 error:v9];
    [*(a1 + 32) finishWithResult:v10];
  }
}

AMSPromise *__cdecl sub_1001D4304(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D4680(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1001D4754(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D4900(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 finishWithResult:v10];
  }

  else if (v6)
  {
    [v8 finishWithError:v6];
  }

  else
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
  }
}

AMSPromise *__cdecl sub_1001D49C4(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

id sub_1001D4AFC(id a1, AMSCloudDataRecordZoneIdentifier *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001D4B6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) scope];
  v7 = [v4 zoneName];

  v8 = [v5 _fetchChangeTokenWithDatabaseScope:v6 recordZoneName:v7];

  return v8;
}

id sub_1001D4CF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 amsd_isCKChangeTokenExpiredError])
  {
    [*(a1 + 32) persistChangedRecordZonesChangeToken:0];
    [*(a1 + 32) _fetchChangedRecordZonesWithServerChangeToken:0];
  }

  else
  {
    [AMSPromise promiseWithError:v3];
  }
  v4 = ;

  return v4;
}

AMSPromise *__cdecl sub_1001D4D74(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D5054(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 40) finishWithResult:v5];
  }

  else
  {
    v6 = v14;
    if ([v6 amsd_isCKPartialFailureError])
    {
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v6 = v11;
    }

    v12 = *(a1 + 40);
    if (v6)
    {
      [v12 finishWithError:v6];
    }

    else
    {
      v13 = AMSError();
      [v12 finishWithError:v13];
    }
  }
}

AMSPromise *__cdecl sub_1001D51E8(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D5374(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = AMSDTranslateCloudKitError(a3);
  v6 = v5;
  if (v5 && ![v5 ams_hasDomain:@"AMSCloudDataErrorDomain" code:4])
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"AMSCloudDataPartialFailureErrorsKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [AMSCloudDataFetchResult alloc];
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = &__NSDictionary0__struct;
    }

    v12 = [(AMSCloudDataFetchResult *)v10 initWithResults:v11 failures:v9];
    [*(a1 + 32) finishWithResult:v12];
  }
}

void sub_1001D54A4(uint64_t a1, void *a2)
{
  v3 = [a2 failures];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D5534;
  v4[3] = &unk_100254B58;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_1001D5810(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = *(a1 + 32);
      v10 = AMSHashIfNeeded();
      v11 = AMSHashIfNeeded();
      v12 = 138544130;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to save a database change token. database = %{public}@ | error = %{public}@", &v12, 0x2Au);
    }
  }
}

void sub_1001D5D54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = [*(a1 + 32) scope];
      v10 = *(a1 + 40);
      v11 = AMSHashIfNeeded();
      v12 = AMSHashIfNeeded();
      v13 = 138544386;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to save a record zone change token. databaseScope = %ld | zoneName = %{public}@ | error = %{public}@", &v13, 0x34u);
    }
  }
}

void sub_1001D606C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1001D6140(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D6344(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1001D6418(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1001D6878(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

id sub_1001D694C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v47 = v10;
      v48 = 2114;
      v49 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully setup the database subscription.", buf, 0x16u);
    }

    v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 56) + 1];
    v13 = [AMSPromise promiseWithResult:v12];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v7 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError();
      *buf = 138543874;
      v47 = v16;
      v48 = 2114;
      v49 = v17;
      v50 = 2114;
      v51 = *&v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to setup the database subscription. error = %{public}@", buf, 0x20u);
    }

    v19 = *(a1 + 56);
    if (v19 > 9)
    {
      v34 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v34)
      {
        v34 = +[AMSLogConfig sharedConfig];
      }

      v35 = [v34 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 32);
        v37 = objc_opt_class();
        v38 = AMSLogKey();
        *buf = 138543618;
        v47 = v37;
        v48 = 2114;
        v49 = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to setup the database subscription too many times. Refusing to try again.", buf, 0x16u);
      }

      v13 = [AMSPromise promiseWithError:v5];
    }

    else
    {
      v20 = v19 + 1;
      v21 = exp2((v19 + 1));
      v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        *buf = 138543874;
        v47 = v25;
        v48 = 2114;
        v49 = v26;
        v50 = 2048;
        v51 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling another attempt to setup the database subscription. timeInterval = %f", buf, 0x20u);
      }

      v27 = objc_alloc_init(AMSPromise);
      v28 = dispatch_time(0, (v21 * 1000000000.0));
      v29 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001D6DEC;
      block[3] = &unk_100254C38;
      v30 = v27;
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v41 = v30;
      v42 = v31;
      v43 = v32;
      v44 = *(a1 + 48);
      v45 = v20;
      dispatch_after(v28, v29, block);

      v33 = v44;
      v13 = v30;
    }
  }

  return v13;
}

void sub_1001D6DEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _subscribeWithIdentifier:*(a1 + 48) recordZoneIdentifier:*(a1 + 56) attempt:*(a1 + 64)];
  [v1 finishWithPromise:v2];
}

void sub_1001D70E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    [*(a1 + 32) finishWithError:a4];
  }

  else
  {
    v6 = [[AMSCloudDataChangedRecordZonesResult alloc] initWithChangedRecordZones:*(a1 + 40) deletedRecordZones:*(a1 + 48) changeToken:v7];
    [*(a1 + 32) finishWithResult:v6];
  }
}

void sub_1001D7550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001D7570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];

  [v4 setPreviousServerChangeToken:v5];

  return v4;
}

void sub_1001D75F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 recordID];
  v6 = [v5 zoneID];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(a1 + 32);
    v9 = [v11 recordID];
    v10 = [v9 zoneID];
    [v8 setObject:v7 forKeyedSubscript:v10];
  }

  [v7 addObject:v11];
}

void sub_1001D76D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 zoneID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1 + 32);
    v8 = [v9 zoneID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  [v6 addObject:v9];
}

void sub_1001D7790(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = a6;
  if (v15)
  {
    v9 = *(a1 + 40);
    v10 = a2;
    [v9 setObject:0 forKeyedSubscript:v10];
    [*(a1 + 48) setObject:0 forKeyedSubscript:v10];
    v11 = *(a1 + 56);
    v12 = v15;
    v13 = v10;
  }

  else
  {
    v14 = *(a1 + 32);
    v13 = a2;
    v11 = v14;
    v12 = a3;
  }

  [v11 setObject:v12 forKeyedSubscript:v13];
}

void sub_1001D7840(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = AMSSetLogKey();
  if ([*(a1 + 40) count] || objc_msgSend(*(a1 + 48), "count") || objc_msgSend(*(a1 + 56), "count") || (v15 = objc_msgSend(*(a1 + 64), "count"), !v3) || v15)
  {
    if (v3)
    {
      v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 80));
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        v11 = AMSHashIfNeeded();
        v16 = 138543874;
        v17 = v9;
        v18 = 2114;
        v19 = v10;
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received both valid data and an error when fetching record zone changes. error = %{public}@", &v16, 0x20u);
      }

      v12 = objc_loadWeakRetained((a1 + 80));
      [v12 _handleError:v3 andErrors:*(a1 + 56)];
    }

    v13 = [*(a1 + 56) ams_mapWithTransform:&stru_100254D68];
    v14 = [[AMSCloudDataChangedRecordsResult alloc] initWithChangedRecords:*(a1 + 40) deletedRecords:*(a1 + 48) errors:v13 changeTokens:*(a1 + 64)];
    [*(a1 + 72) finishWithResult:v14];
  }

  else
  {
    [*(a1 + 72) finishWithError:v3];
  }
}

AMSPair *__cdecl sub_1001D7A48(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = AMSDTranslateCloudKitError(v4);

  v8 = [v6 initWithFirst:v5 second:v7];

  return v8;
}

AMSPromise *__cdecl sub_1001D7AD8(id a1, NSError *a2)
{
  v2 = AMSDTranslateCloudKitError(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

BOOL sub_1001D8114(id a1, id a2, id a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1001D8828(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = AMSHashIfNeeded();
  v5 = [*(a1 + 40) encryptedValuesByKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"\n  %@ = %@, ", v8, v7];
}

uint64_t sub_1001D8EA0()
{
  sub_100004768();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = type metadata accessor for URL();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001D8F98, 0, 0);
}

uint64_t sub_1001D8F98()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 dataWithPropertyList:v1 format:100 options:0 error:v0 + 16];
  v4 = *(v0 + 16);
  if (v3)
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    sub_1001D91A0(v6);
    URL.appendingPathComponent(_:)();
    v14 = *(v8 + 8);
    v14(v6, v7);
    Data.write(to:options:)();
    v18 = *(v0 + 64);
    v14(*(v0 + 72), *(v0 + 48));
    sub_1000253FC(v11, v13);
  }

  else
  {
    v15 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
  }

  sub_100002D8C();

  return v19();
}

void sub_1001D91A0(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&qword_100272AB8, &qword_1001F23B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for URL();
  v7 = sub_100002CC4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = [objc_opt_self() ams_cachesDirectory];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = *(v9 + 32);
    v18 = sub_100023F80();
    v17(v18);
    v19._countAndFlagsBits = 0x7363697274654DLL;
    v19._object = 0xE700000000000000;
    URL.appendPathComponent(_:)(v19);
    v20._object = 0x8000000100205370;
    v20._countAndFlagsBits = 0xD000000000000015;
    URL.appendPathComponent(_:)(v20);
    v21 = [objc_opt_self() defaultManager];
    sub_1001D9B98(v14, 1, 0, v5);

    if (sub_100009F34(v5, 1, v6) == 1)
    {
      (v17)(a1, v14, v6);
      if (sub_100009F34(v5, 1, v6) != 1)
      {
        sub_10000A00C(v5, &qword_100272AB8, &qword_1001F23B8);
      }
    }

    else
    {
      (*(v9 + 8))(v14, v6);
      (v17)(a1, v5, v6);
    }
  }

  else
  {
    v22 = [objc_opt_self() defaultManager];
    v25 = [v22 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v25;
  }
}

uint64_t sub_1001D9524(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v7;
  v8 = a1;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1001D960C;

  return sub_1001D8EA0();
}

uint64_t sub_1001D960C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[5];
  v8 = v3[3];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[4];
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v13 = v10[1];

  return v13();
}

uint64_t sub_1001D97C4()
{
  v0 = type metadata accessor for URL();
  v1 = sub_100002CC4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  sub_1001D91A0(v8);
  URL.appendingPathComponent(_:)();
  v11 = *(v3 + 8);
  v11(v8, v0);
  Data.init(contentsOf:options:)();
  v12 = objc_opt_self();
  sub_100023F80();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v23[0] = 0;
  v14 = [v12 propertyListWithData:isa options:0 format:0 error:v23];

  v15 = *&v23[0];
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    v16 = sub_100023F80();
    sub_1000253FC(v16, v17);
    swift_unknownObjectRelease();
    v11(v10, v0);
    sub_100002C4C(&v24, v23);
    sub_1001D9FD0();
    if (swift_dynamicCast())
    {
      return v22[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v19 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = sub_100023F80();
    sub_1000253FC(v20, v21);
    v11(v10, v0);

    return 0;
  }
}

id TokenStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TokenStorage.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenStorage();
  return objc_msgSendSuper2(&v2, "init");
}

id TokenStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001D9B98@<X0>(uint64_t a1@<X0>, char a2@<W1>, Class isa@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  URL.path.getter();
  v10 = String._bridgeToObjectiveC()();

  LODWORD(v5) = [v5 fileExistsAtPath:v10];

  if (v5)
  {
    v11 = type metadata accessor for URL();
    sub_100002DDC(v11);
    (*(v12 + 16))(a4, a1, v11);
    v13 = sub_100005B58();

    return sub_10000A7C0(v13, v14, v15, v16);
  }

  else
  {
    v18 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    if (isa)
    {
      _s3__C16FileAttributeKeyVMa_0();
      sub_1001DA65C(&qword_100272AC0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v32 = 0;
    v22 = [v18 createDirectoryAtURL:v21 withIntermediateDirectories:a2 & 1 attributes:isa error:&v32];

    v31 = v32;
    if (v22)
    {
      v23 = type metadata accessor for URL();
      sub_100002DDC(v23);
      (*(v24 + 16))(a4, a1, v23);
      v25 = sub_100005B58();
      sub_10000A7C0(v25, v26, v27, v28);

      return v31;
    }

    else
    {
      v29 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v30 = type metadata accessor for URL();
      return sub_10000A7C0(a4, 1, 1, v30);
    }
  }
}

uint64_t sub_1001D9E68(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001D9EE4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001D9F74()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

unint64_t sub_1001D9FD0()
{
  result = qword_100272AB0;
  if (!qword_100272AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100272AB0);
  }

  return result;
}

void _s3__C16FileAttributeKeyVMa_0()
{
  if (!qword_100272AD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100272AD0);
    }
  }
}

uint64_t sub_1001DA064()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1000035D8(v6);

  return v8(v7);
}

uint64_t sub_1001DA108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10007AB38();
}

uint64_t sub_1001DA114(uint64_t a1)
{
  v2 = sub_1001DA65C(&qword_100272AC0);
  v3 = sub_1001DA65C(&unk_100272AF0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001DA1AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DA1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007B9A4(&qword_100272AC8, &qword_1001F23D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1001DA4B8(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100009F34(v12, 1, v13) == 1)
  {
    sub_10000A00C(v12, &qword_100272AC8, &qword_1001F23D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000A00C(a3, &qword_100272AC8, &qword_1001F23D0);

      return v23;
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

  sub_10000A00C(a3, &qword_100272AC8, &qword_1001F23D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001DA4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100272AC8, &qword_1001F23D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DA528()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v6 = sub_100003690(v4);

  return v7(v6);
}

uint64_t sub_1001DA65C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3__C16FileAttributeKeyVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t PipelinePhase.init(mapOutput:)()
{
  return PipelinePhase.init(mapOutput:)();
}

{
  return PipelinePhase.init(mapOutput:)();
}

uint64_t AsyncObjectGraphBuilder.satisfying<A>(_:with:)()
{
  return AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
}

{
  return AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
}

uint64_t Bag.subscript.getter()
{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}