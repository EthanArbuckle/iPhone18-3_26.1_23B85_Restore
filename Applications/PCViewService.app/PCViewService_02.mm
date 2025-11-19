uint64_t static CAMediaTimingFunctionName.allCases.getter()
{
  sub_1000056EC(&qword_1000DBD40, qword_100093860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100093850;
  *(v0 + 32) = kCAMediaTimingFunctionDefault;
  *(v0 + 40) = kCAMediaTimingFunctionEaseIn;
  *(v0 + 48) = kCAMediaTimingFunctionEaseInEaseOut;
  *(v0 + 56) = kCAMediaTimingFunctionEaseOut;
  *(v0 + 64) = kCAMediaTimingFunctionLinear;
  v1 = kCAMediaTimingFunctionDefault;
  v2 = kCAMediaTimingFunctionEaseIn;
  v3 = kCAMediaTimingFunctionEaseInEaseOut;
  v4 = kCAMediaTimingFunctionEaseOut;
  v5 = kCAMediaTimingFunctionLinear;
  return v0;
}

unint64_t sub_10002E9E8()
{
  result = qword_1000D9940;
  if (!qword_1000D9940)
  {
    type metadata accessor for CAMediaTimingFunctionName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9940);
  }

  return result;
}

id sub_10002EA40()
{
  v0 = objc_allocWithZone(type metadata accessor for VariableBlurView());

  return [v0 init];
}

uint64_t sub_10002EAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002F1FC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10002EB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002F1FC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10002EB70()
{
  sub_10002F1FC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_10002EB98()
{
  v1 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
  *&v0[v1] = [objc_allocWithZone(CABackdropLayer) init];
  *&v0[OBJC_IVAR____TtC13PCViewService16VariableBlurView_blurRadius] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for VariableBlurView();
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 layer];
  v4 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
  [v3 addSublayer:*&v2[OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer]];

  v5 = *&v2[v4];
  [v2 bounds];
  [v5 setFrame:?];
  sub_10002EDCC();

  return v2;
}

id sub_10002ECAC(void *a1)
{
  v3 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
  *&v1[v3] = [objc_allocWithZone(CABackdropLayer) init];
  *&v1[OBJC_IVAR____TtC13PCViewService16VariableBlurView_blurRadius] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for VariableBlurView();
  v4 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 layer];
    v8 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
    [v7 addSublayer:*&v6[OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer]];

    v9 = *&v6[v8];
    [v6 bounds];
    [v9 setFrame:?];
    sub_10002EDCC();
  }

  return v5;
}

void sub_10002EDCC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1];

  v3 = [v2 CGImage];
  v4 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVariableBlur];
  v5 = *(v0 + OBJC_IVAR____TtC13PCViewService16VariableBlurView_blurRadius);
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v4 setValue:isa forKey:v7];

  v8 = v3;
  v9 = String._bridgeToObjectiveC()();
  [v4 setValue:v8 forKey:v9];

  v10 = Bool._bridgeToObjectiveC()().super.super.isa;
  v11 = String._bridgeToObjectiveC()();
  [v4 setValue:v10 forKey:v11];

  v12 = *(v0 + OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer);
  sub_1000056EC(&qword_1000DBD80, &qword_100093928);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000938F0;
  *(v13 + 56) = sub_10002F148();
  *(v13 + 32) = v4;
  v14 = v4;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  [v12 setFilters:v15];
}

id sub_10002F0E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10002F148()
{
  result = qword_1000DBD88;
  if (!qword_1000DBD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBD88);
  }

  return result;
}

unint64_t sub_10002F1A8()
{
  result = qword_1000DBD90;
  if (!qword_1000DBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD90);
  }

  return result;
}

unint64_t sub_10002F1FC()
{
  result = qword_1000DBD98;
  if (!qword_1000DBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD98);
  }

  return result;
}

__n128 sub_10002F250(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10002F274(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F294(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 112) = v3;
  return result;
}

uint64_t sub_10002F30C(void *a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DBDC0, &qword_100093B80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10002F808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[1] = a2;
  sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
  sub_10002F85C(&qword_1000DBDC8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_10002F4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10002F530(uint64_t a1)
{
  v2 = sub_10002F808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F56C(uint64_t a1)
{
  v2 = sub_10002F808();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002F5A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10002F668(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10002F5F0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_10002C290();
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void *sub_10002F668(uint64_t *a1)
{
  v3 = sub_1000056EC(&qword_1000DBDA0, &qword_100093B70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = sub_100006768(a1, a1[3]);
  sub_10002F808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000529C(a1);
  }

  else
  {
    sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
    sub_10002F85C(&qword_1000DBDB8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    sub_10000529C(a1);
  }

  return v10;
}

unint64_t sub_10002F808()
{
  result = qword_1000DBDA8;
  if (!qword_1000DBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDA8);
  }

  return result;
}

uint64_t sub_10002F85C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(&qword_1000DBDB0, &qword_100093B78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002F8C0()
{
  result = qword_1000DBDD0;
  if (!qword_1000DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDD0);
  }

  return result;
}

unint64_t sub_10002F918()
{
  result = qword_1000DBDD8;
  if (!qword_1000DBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDD8);
  }

  return result;
}

unint64_t sub_10002F970()
{
  result = qword_1000DBDE0;
  if (!qword_1000DBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDE0);
  }

  return result;
}

uint64_t sub_100030064()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DBDE8);
  sub_1000047A0(v0, qword_1000DBDE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000300E4()
{
  v1 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  sub_100032054(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate);

  v8 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask);

  return v1;
}

uint64_t sub_100030234()
{
  sub_1000300E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for XPCConnectionManager()
{
  result = qword_1000DBE48;
  if (!qword_1000DBE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000302E0()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000303BC()
{
  v32 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    v8 = *(v5 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16);
    *(v0 + 16) = *(v5 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy);
    *(v0 + 32) = v8;
    v9 = String.init<A>(describing:)();
    v11 = sub_1000343F8(v9, v10, &v31);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Interrupted, retry policy is %s", v6, 0xCu);
    sub_10000529C(v7);
  }

  v12 = *(v0 + 40);
  v13 = *(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy);
  if (*(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16) > 1u)
  {
    v15 = *(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 8);
    if (*(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16) != 2)
    {
      if (*&v13 | v15)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v16 = *(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
    if ((v16 & 0x8000000000000000) == 0 && v16 >= v15)
    {
      goto LABEL_13;
    }
  }

  else if (!*(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16))
  {
    v14 = *(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
    if ((v14 & 0x8000000000000000) != 0 || v14 < *&v13)
    {
LABEL_19:
      v25 = *(v0 + 40);
      sub_100030734();
      goto LABEL_22;
    }

LABEL_13:
    v17 = 2;
    goto LABEL_16;
  }

  v18 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask;
  if (!*(v12 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask))
  {
    v26 = *(v0 + 40);
    v27 = sub_1000308A0(v13);
    v28 = *(v12 + v18);
    *(v12 + v18) = v27;

    goto LABEL_22;
  }

  v17 = 1;
LABEL_16:
  sub_100031F98();
  swift_allocError();
  *v19 = v17;
  swift_willThrow();
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "### Error handling interruption: %@", v22, 0xCu);
    sub_100031FEC(v23);
  }

  else
  {
  }

LABEL_22:
  v29 = *(v0 + 8);

  return v29();
}

void sub_100030734()
{
  v1 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(v5 + 4) = v8;
    v9 = v5;

    _os_log_impl(&_mh_execute_header, v3, v4, "Retrying (new count: %ld)", v9, 0xCu);
  }

  else
  {
  }

  v10 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask);
  *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask) = 0;

  sub_100031864();
  v11 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
  v7 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries) = v12;

  sub_100030D8C();
}

uint64_t sub_1000308A0(double a1)
{
  v2 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v15 - v5;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000DBDE8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Scheduling retry after %f seconds", v10, 0xCu);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a1;
  *(v13 + 40) = v12;
  return sub_10004FC2C(0, 0, v6, &unk_100093DB8, v13);
}

uint64_t sub_100030A98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  return _swift_task_switch(sub_100030ABC, 0, 0);
}

uint64_t sub_100030ABC(unint64_t a1)
{
  v3 = *(v1 + 40) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v1 + 56) = v6;
  *v6 = v1;
  v6[1] = sub_100030BA4;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100030BA4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100030CD8, 0, 0);
  }
}

uint64_t sub_100030CD8()
{
  v1 = v0[8];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[1];
  }

  else
  {
    v3 = v0[6];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100030734();
    }

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_100030D8C()
{
  v1 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000343F8(0x4E66497472617473, 0xEF29286465646565, &aBlock);
    *(v5 + 12) = 2080;
    v6 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
    sub_1000056EC(&qword_1000DBF88, &unk_100093D90);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000343F8(v7, v8, &aBlock);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.internalCnx=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx;
  v11 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Connection already exists", v15, 2u);
    }

    v16 = 0;
LABEL_22:

    return v16;
  }

  if (v14)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting", v17, 2u);
  }

  v18 = v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    v22 = [v21 interruptionHandler];
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = sub_100032230;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = swift_allocObject();
    v26[2] = v1;
    v26[3] = v25;
    v26[4] = v24;
    v43 = sub_100031BB0;
    v44 = v26;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100035630;
    v42 = &unk_1000C8C08;
    v27 = _Block_copy(&aBlock);

    v38 = v25;
    sub_10000B16C(v25);

    [v21 setInterruptionHandler:v27];
    _Block_release(v27);
    v28 = [v21 invalidationHandler];
    if (v28)
    {
      v29 = v28;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = sub_10000EEE4;
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    v43 = sub_100031C14;
    v44 = v32;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100035630;
    v42 = &unk_1000C8C58;
    v33 = _Block_copy(&aBlock);
    sub_10000B16C(v31);

    [v21 setInvalidationHandler:v33];
    _Block_release(v33);
    [v21 activate];
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Connection created", v36, 2u);
    }

    sub_10000B17C(v38);
    sub_10000B17C(v31);
    swift_unknownObjectRelease();

    v12 = *(v1 + v10);
    *(v1 + v10) = v21;
    v16 = 1;
    goto LABEL_22;
  }

  return 2;
}

uint64_t sub_100031354(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_1000820D0(0, 0, v7, &unk_100093DA8, v10);

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1000314B4()
{
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DBDE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection interrupted", v4, 2u);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_10003165C;

    return sub_10003039C();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10003165C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_10003176C(void (*a1)(void))
{
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection invalidated", v5, 2u);
  }

  if (a1)
  {
    a1();
  }
}

void sub_100031864()
{
  v1 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx;
  v2 = *(v0 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1000D9768;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000047A0(v6, qword_1000DBDE8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Stopping", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v3 + v1);
    *(v3 + v1) = 0;
  }
}

__n128 initializeBufferWithCopyOfBuffer for XPCConnectionManager.ReconnectPolicy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100031A40(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_100031A58(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100031A84()
{
  result = qword_1000DBF80;
  if (!qword_1000DBF80)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBF80);
  }

  return result;
}

uint64_t sub_100031ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100031B68()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031BD4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031C1C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031CCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031D80;

  return sub_100031494(a1, v4, v5, v6);
}

uint64_t sub_100031D80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100031E74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031EB4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031D80;

  return sub_100030A98(v6, a1, v4, v5, v7);
}

void *sub_100031F78(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_100031F98()
{
  result = qword_1000DBF98;
  if (!qword_1000DBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBF98);
  }

  return result;
}

uint64_t sub_100031FEC(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DA8D0, &qword_100091B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for XPCConnectionManager.ManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCConnectionManager.ManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000321D0()
{
  result = qword_1000DBFA0;
  if (!qword_1000DBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBFA0);
  }

  return result;
}

uint64_t sub_100032234()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000322F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100032334()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DBFA8);
  sub_1000047A0(v0, qword_1000DBFA8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000323AC(void *a1, int a2)
{
  v34 = a2;
  v3 = sub_1000056EC(&qword_1000DC0B8, &qword_100094068);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3, v5);
  v31 = &v27 - v6;
  v7 = sub_1000056EC(&qword_1000DC0C0, &qword_100094070);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v27 - v10;
  v12 = sub_1000056EC(&qword_1000DC0C8, &qword_100094078);
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v27 - v15;
  v17 = sub_1000056EC(&qword_1000DC0D0, &unk_100094080);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v27 - v21;
  v23 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100035050();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = (v18 + 8);
  if (v34)
  {
    if (v34 == 1)
    {
      v36 = 1;
      sub_1000350F8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v29 + 8))(v11, v30);
    }

    else
    {
      v37 = 2;
      sub_1000350A4();
      v25 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v32 + 8))(v25, v33);
    }
  }

  else
  {
    v35 = 0;
    sub_10003514C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v16, v12);
  }

  return (*v24)(v22, v17);
}

uint64_t sub_10003272C()
{
  v1 = 0x657463656E6E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574736575716572;
  }
}

uint64_t sub_100032790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000349B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000327C4(uint64_t a1)
{
  v2 = sub_100035050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032800(uint64_t a1)
{
  v2 = sub_100035050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003283C(uint64_t a1)
{
  v2 = sub_1000350F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032878(uint64_t a1)
{
  v2 = sub_1000350F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000328B4(uint64_t a1)
{
  v2 = sub_1000350A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000328F0(uint64_t a1)
{
  v2 = sub_1000350A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003292C(uint64_t a1)
{
  v2 = sub_10003514C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032968(uint64_t a1)
{
  v2 = sub_10003514C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000329A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100034AE0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1000329EC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DBFA8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000343F8(0xD000000000000013, 0x80000001000A21E0, &v22);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000529C(v7);
  }

  v8 = *(v1 + qword_1000DBFC8);
  if (v8)
  {
    v9 = *(v1 + qword_1000DBFC8);
  }

  else
  {
    v10 = *(v1 + qword_1000F3C50);
    v11 = *(v1 + qword_1000F3C50 + 8);
    v12 = objc_allocWithZone(NSXPCConnection);

    v13 = String._bridgeToObjectiveC()();

    v9 = [v12 initWithMachServiceName:v13 options:0];
  }

  v26 = sub_100032DFC;
  v27 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100035630;
  v25 = &unk_1000C8FC0;
  v14 = _Block_copy(&v22);
  v15 = v8;
  [v9 setInterruptionHandler:v14];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = *(v2 + 80);
  *(v17 + 32) = *(v2 + 96);
  *(v17 + 40) = *(v2 + 104);
  *(v17 + 56) = *(v2 + 120);
  *(v17 + 64) = v16;
  v26 = sub_100034314;
  v27 = v17;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100035630;
  v25 = &unk_1000C9038;
  v18 = _Block_copy(&v22);

  [v9 setInvalidationHandler:v18];
  _Block_release(v18);
  v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13PCViewService15XPCLinkProtocol_];
  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  [v9 _setQueue:qword_1000F3D18];
  v20 = v19;
  [v9 setExportedInterface:v20];
  [v9 setExportedObject:v1];
  [v9 setRemoteObjectInterface:v20];

  return v9;
}

void sub_100032DFC()
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBFA8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "### XPC interrupted", v2, 2u);
  }
}

uint64_t sub_100032EE4()
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBFA8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "XPC invalidated", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + qword_1000DBFD8);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100033020()
{
  v1 = v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBFA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = qword_1000F3C48;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = *(v1 + qword_1000F3C50 + 8);

  v9 = *(v1 + qword_1000DBFC0);

  v10 = *(v1 + qword_1000DBFD0);

  v11 = *(v1 + qword_1000DBFD8);

  v12 = *(v1 + qword_1000DBFE0);

  return v1;
}

uint64_t sub_1000331A4()
{
  sub_100033020();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000331FC(uint64_t a1, unint64_t a2)
{
  v31 = a1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v32, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000047A0(v15, qword_1000DBFA8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v9;
    v20 = v5;
    v21 = v10;
    v22 = a2;
    v23 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000343F8(0xD000000000000019, 0x80000001000A2200, aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s", v18, 0xCu);
    sub_10000529C(v23);
    a2 = v22;
    v10 = v21;
    v5 = v20;
    v9 = v30;
  }

  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = *(v4 + 80);
  *(v25 + 32) = *(v4 + 96);
  *(v25 + 40) = *(v4 + 104);
  *(v25 + 56) = *(v4 + 120);
  *(v25 + 64) = v24;
  v26 = v31;
  *(v25 + 72) = v31;
  *(v25 + 80) = a2;
  aBlock[4] = sub_1000351E0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035630;
  aBlock[3] = &unk_1000C9088;
  v27 = _Block_copy(aBlock);

  sub_10000A1AC(v26, a2);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100035218(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_100035260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v33 + 8))(v9, v5);
  (*(v10 + 8))(v14, v32);
}

uint64_t sub_100033690(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v36 - v13;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v12, v17);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v36 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v39 = result;
    sub_10004DE18();
    (*(v15 + 56))(v14, 0, 1, a5);
    (*(v15 + 32))(v22, v14, a5);
    if (qword_1000D9770 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000047A0(v24, qword_1000DBFA8);
    v25 = v38;
    (*(v15 + 16))(v38, v22, a5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v37 = v28;
      v40 = swift_slowAlloc();
      v41 = v40;
      *v28 = 136315138;
      v29 = sub_10008C240(v25, a5);
      v31 = v30;
      v32 = *(v15 + 8);
      v32(v25, a5);
      v33 = sub_1000343F8(v29, v31, &v41);

      v34 = v37;
      *(v37 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Received output: %s", v34, 0xCu);
      sub_10000529C(v40);
    }

    else
    {

      v32 = *(v15 + 8);
      v32(v25, a5);
    }

    v35 = *(v39 + qword_1000DBFC0);
    PassthroughSubject.send(_:)();
    v32(v22, a5);
  }

  return result;
}

uint64_t sub_100033D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1000F3C48;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_100033DCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000056EC(&qword_1000DC0D8, &unk_100094090);
    if (swift_dynamicCast())
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v13 handleWithSerializedObject:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1000D9770 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000047A0(v8, qword_1000DBFA8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "### Could not cast rmeoteObjectProxy to XPCLinkProtocol", v11, 2u);
      }
    }
  }

  else
  {
    if (qword_1000D9770 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000047A0(v5, qword_1000DBFA8);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "### No connection", v7, 2u);
    }
  }
}

uint64_t sub_100034060(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v5 = a3;

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  a4(v6, v8);
  sub_100008A9C(v6, v8);
}

uint64_t sub_100034100(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100034150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000341A4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000341BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1000341F0()
{
  result = qword_1000DC068;
  if (!qword_1000DC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC068);
  }

  return result;
}

uint64_t sub_10003428C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000342A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000342DC()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100034314()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_100032EE4();
}

uint64_t sub_100034328(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10003439C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000343F8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000343F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000344C4(v11, 0, 0, 1, a1, a2);
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
    sub_10000A150(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000529C(v11);
  return v7;
}

unint64_t sub_1000344C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000345D0(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000345D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003461C(a1, a2);
  sub_10003474C(&off_1000C6988);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10003461C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100034838(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100034838(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10003474C(uint64_t result)
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

  result = sub_1000348AC(result, v12, 1, v3);
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

void *sub_100034838(uint64_t a1, uint64_t a2)
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

  sub_1000056EC(&qword_1000DC070, &qword_100094038);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000348AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000056EC(&qword_1000DC070, &qword_100094038);
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

_BYTE **sub_1000349A0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000349B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100034AE0(uint64_t *a1)
{
  v40 = sub_1000056EC(&qword_1000DC078, &qword_100094040);
  v37 = *(v40 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v40, v3);
  v42 = &v35 - v4;
  v41 = sub_1000056EC(&qword_1000DC080, &qword_100094048);
  v39 = *(v41 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v41, v6);
  v8 = &v35 - v7;
  v9 = sub_1000056EC(&qword_1000DC088, &qword_100094050);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v35 - v12;
  v14 = sub_1000056EC(&qword_1000DC090, &qword_100094058);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v35 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v44 = a1;
  sub_100006768(a1, v20);
  sub_100035050();
  v22 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v36 = v9;
    v23 = v42;
    v43 = v15;
    v24 = v19;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = (2 * *(v25 + 16)) | 1;
    v45 = v25;
    v46 = v25 + 32;
    v47 = 0;
    v48 = v26;
    v27 = sub_100074828();
    if (v27 != 3 && v47 == v48 >> 1)
    {
      v15 = v27;
      if (v27)
      {
        if (v27 == 1)
        {
          v49 = 1;
          sub_1000350F8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v43;
          (*(v39 + 8))(v8, v41);
          (*(v28 + 8))(v19, v14);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000529C(v44);
          return v15;
        }

        v49 = 2;
        sub_1000350A4();
        v33 = v19;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v43;
        (*(v37 + 8))(v23, v40);
      }

      else
      {
        v49 = 0;
        sub_10003514C();
        v33 = v19;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v38 + 8))(v13, v36);
        v34 = v43;
      }

      (*(v34 + 8))(v33, v14);
      goto LABEL_13;
    }

    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v15 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v31 = &type metadata for XPCConnectionEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v43 + 8))(v24, v14);
    swift_unknownObjectRelease();
  }

  sub_10000529C(v44);
  return v15;
}

unint64_t sub_100035050()
{
  result = qword_1000DC098;
  if (!qword_1000DC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC098);
  }

  return result;
}

unint64_t sub_1000350A4()
{
  result = qword_1000DC0A0;
  if (!qword_1000DC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0A0);
  }

  return result;
}

unint64_t sub_1000350F8()
{
  result = qword_1000DC0A8;
  if (!qword_1000DC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0A8);
  }

  return result;
}

unint64_t sub_10003514C()
{
  result = qword_1000DC0B0;
  if (!qword_1000DC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0B0);
  }

  return result;
}

uint64_t sub_1000351A0()
{
  v1 = v0[8];

  sub_100008A9C(v0[9], v0[10]);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000351E0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 56);
  return sub_100033690(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 16), *(v0 + 24));
}

uint64_t sub_100035218(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100035260()
{
  result = qword_1000D9FB0;
  if (!qword_1000D9FB0)
  {
    sub_100005818(&qword_1000D9FA8, &unk_100091780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9FB0);
  }

  return result;
}

unint64_t sub_100035310()
{
  result = qword_1000DC0E0;
  if (!qword_1000DC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0E0);
  }

  return result;
}

unint64_t sub_100035368()
{
  result = qword_1000DC0E8;
  if (!qword_1000DC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0E8);
  }

  return result;
}

unint64_t sub_1000353C0()
{
  result = qword_1000DC0F0;
  if (!qword_1000DC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0F0);
  }

  return result;
}

unint64_t sub_100035418()
{
  result = qword_1000DC0F8;
  if (!qword_1000DC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0F8);
  }

  return result;
}

unint64_t sub_100035470()
{
  result = qword_1000DC100;
  if (!qword_1000DC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC100);
  }

  return result;
}

unint64_t sub_1000354C8()
{
  result = qword_1000DC108;
  if (!qword_1000DC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC108);
  }

  return result;
}

unint64_t sub_100035520()
{
  result = qword_1000DC110;
  if (!qword_1000DC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC110);
  }

  return result;
}

unint64_t sub_100035578()
{
  result = qword_1000DC118;
  if (!qword_1000DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC118);
  }

  return result;
}

unint64_t sub_1000355D0()
{
  result = qword_1000DC120;
  if (!qword_1000DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC120);
  }

  return result;
}

uint64_t sub_100035664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100035740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CloseButtonView()
{
  result = qword_1000DC180;
  if (!qword_1000DC180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100035850()
{
  sub_10001AA74();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000358EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v19 - v5;
  v7 = sub_1000056EC(&qword_1000DC1C8, &qword_100094488);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v19 - v10;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v12 = type metadata accessor for SymbolRenderingMode();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = Image.symbolRenderingMode(_:)();

  sub_10000A628(v11, &qword_1000DC1C8, &qword_100094488);
  v14 = sub_100035AF8();
  v15 = sub_100035DDC();
  v16 = type metadata accessor for Font.Design();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = static Font.system(size:weight:design:)();
  sub_10000A628(v6, &qword_1000DBD08, &qword_1000937D0);
  result = swift_getKeyPath();
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = result;
  a1[4] = v17;
  return result;
}

uint64_t sub_100035AF8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for ColorScheme();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B7E0(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v18 = *v11;
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v1);
  }

  v20 = (*(v13 + 88))(v17, v12);
  if (v20 == enum case for ColorScheme.light(_:))
  {
    v21 = *(type metadata accessor for CloseButtonView() + 20);
  }

  else
  {
    v22 = v20;
    v23 = enum case for ColorScheme.dark(_:);
    v24 = type metadata accessor for CloseButtonView();
    if (v22 != v23)
    {
      v25 = *(v0 + *(v24 + 20));
      v26 = *(v13 + 8);

      v26(v17, v12);
      return v25;
    }

    v21 = *(v24 + 24);
  }

  v25 = *(v0 + v21);

  return v25;
}

uint64_t sub_100035DDC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for ColorScheme();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B7E0(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v18 = *v11;
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v1);
  }

  v20 = (*(v13 + 88))(v17, v12);
  if (v20 == enum case for ColorScheme.light(_:))
  {
    v21 = *(type metadata accessor for CloseButtonView() + 28);
  }

  else
  {
    v22 = v20;
    v23 = enum case for ColorScheme.dark(_:);
    v24 = type metadata accessor for CloseButtonView();
    if (v22 != v23)
    {
      v25 = *(v0 + *(v24 + 28));
      v26 = *(v13 + 8);

      v26(v17, v12);
      return v25;
    }

    v21 = *(v24 + 32);
  }

  v25 = *(v0 + v21);

  return v25;
}

uint64_t sub_1000360C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000360F0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003611C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100036148(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_100036178()
{
  result = qword_1000DC1D0;
  if (!qword_1000DC1D0)
  {
    sub_100005818(&qword_1000DC1D8, &qword_1000944C0);
    sub_100036230();
    sub_10000EE58(&qword_1000DC200, &qword_1000DC208, &unk_10009AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC1D0);
  }

  return result;
}

unint64_t sub_100036230()
{
  result = qword_1000DC1E0;
  if (!qword_1000DC1E0)
  {
    sub_100005818(&qword_1000DC1E8, &qword_1000944C8);
    sub_10000EE58(&qword_1000DC1F0, &qword_1000DC1F8, &qword_1000944D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC1E0);
  }

  return result;
}

__n128 sub_1000362E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003630C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100036354(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000363D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = static Alignment.top.getter();
  v7 = v6;
  sub_10003676C(a2, a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v42, __src, 0x1E0uLL);
  sub_10001A510(__dst, v39, &qword_1000DC210, &unk_1000945E0);
  sub_10000A628(v42, &qword_1000DC210, &unk_1000945E0);
  memcpy(v38, __dst, sizeof(v38));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v8 = static Animation.linear(duration:)();
  v9 = *(a2 + 32);
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v10 = qword_1000F3C58;
  v11 = *(qword_1000F3C58 + 176);
  sub_1000264E0();

  v12 = v10[23];
  sub_1000264E0();

  v13 = v10[24];
  sub_1000264E0();

  v14 = v10[25];
  sub_1000264E0();

  v15 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v16 = *a2;
  v17 = v10[22];
  sub_1000264E0();

  v18 = v10[23];
  sub_1000264E0();

  v19 = v10[24];
  sub_1000264E0();

  v20 = v10[25];
  sub_1000264E0();

  v21 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  *__src = *(a2 + 56);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  v22 = v39[0];
  v23 = swift_allocObject();
  v24 = *(a2 + 48);
  *(v23 + 48) = *(a2 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a2 + 64);
  v25 = *(a2 + 16);
  *(v23 + 16) = *a2;
  *(v23 + 32) = v25;
  v26 = swift_allocObject();
  v27 = *(a2 + 48);
  *(v26 + 48) = *(a2 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(a2 + 64);
  v28 = *(a2 + 16);
  *(v26 + 16) = *a2;
  *(v26 + 32) = v28;
  *a3 = v30;
  *(a3 + 8) = v7;
  memcpy((a3 + 16), v38, 0x1E0uLL);
  *(a3 + 560) = v35;
  *(a3 + 576) = v36;
  *(a3 + 592) = v37;
  *(a3 + 496) = v31;
  *(a3 + 512) = v32;
  *(a3 + 528) = v33;
  *(a3 + 544) = v34;
  *(a3 + 608) = v8;
  *(a3 + 616) = v9;
  *(a3 + 624) = v15;
  *(a3 + 632) = v16;
  *(a3 + 640) = v21;
  *(a3 + 648) = v22;
  *(a3 + 656) = sub_1000375E0;
  *(a3 + 664) = v23;
  *(a3 + 672) = 0u;
  *(a3 + 688) = v9;
  *(a3 + 696) = sub_1000375E8;
  *(a3 + 704) = v26;
  sub_1000371D4(a2, __src);
  return sub_1000371D4(a2, __src);
}

uint64_t sub_10003676C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a2;
  v38 = a3;
  v4 = type metadata accessor for Color.RGBColorSpace();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4, v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v8 = *(qword_1000F3C58 + 272);
  v9 = sub_100025508();

  if (v9)
  {
    v10 = &type metadata for PerspectiveViewEffectProvider;
  }

  else
  {
    v10 = &type metadata for RegularViewEffectProvider;
  }

  if (v9)
  {
    v11 = &off_1000C9398;
  }

  else
  {
    v11 = &off_1000C93B0;
  }

  v75 = v11;
  v74 = v10;
  v73[0] = 0x3FB999999999999ALL;
  sub_100006768(v73, v10);
  v12 = *a1;
  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v69[0] = *(a1 + 56);
    sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
    State.wrappedValue.getter();
    v13 = (v67[0] & 1) == 0;
  }

  v14 = *(a1 + 8);
  if (v9)
  {
    v15 = &off_1000C9398;
  }

  else
  {
    v15 = &off_1000C93B0;
  }

  v16 = v35;
  (v15[1])(v76, v13, v35, v10, v11, *(a1 + 8));
  v17 = v74;
  v18 = v75;
  sub_100006768(v73, v74);
  if (v12 == 2)
  {
    v19 = 2;
  }

  else
  {
    v69[0] = *(a1 + 56);
    sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
    State.wrappedValue.getter();
    v19 = (v67[0] & 1) == 0;
  }

  (v18[2])(v77, v19, v16, v17, v18, v14);
  GeometryProxy.size.getter();
  v21 = v20 * 0.4;
  GeometryProxy.size.getter();
  v23 = v22 * 0.3;
  v24 = *(a1 + 1);
  (*(v36 + 104))(v34, enum case for Color.RGBColorSpace.sRGB(_:), v37);
  v25 = Color.init(_:red:green:blue:opacity:)();
  sub_10001FDA4(v76, v24, v25, &v54, v21, v14);

  v26 = *(a1 + 2);
  v27 = *(a1 + 3);
  LODWORD(v67[0]) = 1065353216;

  State.init(wrappedValue:)();
  v85 = v23;
  v86 = v26;
  v87 = v27;
  v88 = v12 == 2;
  v89 = v69[0];
  v90 = *(&v69[0] + 1);
  sub_10001FF80(v77, &v42);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v71[55] = v81;
  *&v71[71] = v82;
  *&v71[87] = v83;
  *&v71[103] = v84;
  *&v71[7] = v78;
  *&v71[23] = v79;
  *&v71[39] = v80;
  v65[0] = v54;
  v65[1] = v55;
  v65[4] = v58;
  v65[5] = v59;
  v65[2] = v56;
  v65[3] = v57;
  v65[9] = v63;
  v65[8] = v62;
  v65[6] = v60;
  v65[7] = v61;
  v41[8] = v62;
  v41[9] = v63;
  v41[4] = v58;
  v41[5] = v59;
  v41[6] = v60;
  v41[7] = v61;
  v41[0] = v54;
  v41[1] = v55;
  v41[2] = v56;
  v41[3] = v57;
  v67[8] = v50;
  v67[9] = v51;
  v67[10] = v52;
  v67[4] = v46;
  v67[5] = v47;
  v67[6] = v48;
  v67[7] = v49;
  v67[0] = v42;
  v67[1] = v43;
  v67[2] = v44;
  v67[3] = v45;
  *(&v41[18] + 8) = v50;
  *(&v41[19] + 8) = v51;
  *(&v41[20] + 8) = v52;
  *(&v41[16] + 8) = v48;
  *(&v41[17] + 8) = v49;
  *(&v41[14] + 8) = v46;
  *(&v41[15] + 8) = v47;
  v66 = v64;
  v68 = v53;
  v72 = 1;
  *&v41[10] = v64;
  *(&v41[21] + 1) = v53;
  *(&v41[10] + 8) = v42;
  *(&v41[11] + 8) = v43;
  *(&v41[12] + 8) = v44;
  *(&v41[13] + 8) = v45;
  v28 = v38;
  memcpy(v38, v41, 0x160uLL);
  *(v28 + 44) = 0;
  v28[360] = 1;
  v29 = *&v71[80];
  *(v28 + 425) = *&v71[64];
  *(v28 + 441) = v29;
  *(v28 + 457) = *&v71[96];
  *(v28 + 59) = *&v71[111];
  v30 = *&v71[16];
  *(v28 + 361) = *v71;
  *(v28 + 377) = v30;
  v31 = *&v71[48];
  *(v28 + 393) = *&v71[32];
  *(v28 + 409) = v31;
  v69[8] = v50;
  v69[9] = v51;
  v69[10] = v52;
  v70 = v53;
  v69[4] = v46;
  v69[5] = v47;
  v69[6] = v48;
  v69[7] = v49;
  v69[0] = v42;
  v69[1] = v43;
  v69[2] = v44;
  v69[3] = v45;
  sub_10001A510(v65, v39, &qword_1000DC220, &qword_1000945F8);
  sub_10001A510(v67, v39, &qword_1000DC228, &qword_100094600);
  sub_10000A628(v69, &qword_1000DC228, &qword_100094600);
  v39[8] = v62;
  v39[9] = v63;
  v40 = v64;
  v39[4] = v58;
  v39[5] = v59;
  v39[6] = v60;
  v39[7] = v61;
  v39[0] = v54;
  v39[1] = v55;
  v39[2] = v56;
  v39[3] = v57;
  sub_10000A628(v39, &qword_1000DC220, &qword_1000945F8);
  return sub_10000529C(v73);
}

void sub_100036DD8(uint64_t a1)
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1000F3C58 + 280);
  v3 = sub_100025508();

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    v6 = *(a1 + 48);
    *(v5 + 48) = *(a1 + 32);
    *(v5 + 64) = v6;
    *(v5 + 80) = *(a1 + 64);
    v7 = *(a1 + 16);
    *(v5 + 16) = *a1;
    *(v5 + 32) = v7;
    aBlock[4] = sub_1000375F0;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004B3C4;
    aBlock[3] = &unk_1000C92D0;
    v8 = _Block_copy(aBlock);
    sub_1000371D4(a1, v10);

    v9 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:1.0];
    _Block_release(v8);
    v10[0] = *(a1 + 40);
    aBlock[0] = v9;
    sub_1000056EC(&qword_1000DC218, &qword_1000945F0);
    State.wrappedValue.setter();
  }
}

void sub_100036F74(float *a1, uint64_t a2)
{
  if (*a1 > 0.5)
  {
    v3 = *(a2 + 40);
    sub_1000056EC(&qword_1000DC218, &qword_1000945F0);
    State.wrappedValue.getter();
    [v2 invalidate];
  }
}

void sub_100036FEC(uint64_t a1, uint64_t a2)
{
  v9[0] = *(a2 + 56);
  LOBYTE(aBlock[0]) = 1;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.setter();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  aBlock[4] = sub_100037660;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B3C4;
  aBlock[3] = &unk_1000C9320;
  v7 = _Block_copy(aBlock);
  sub_1000371D4(a2, v9);

  v8 = [v3 scheduledTimerWithTimeInterval:0 repeats:v7 block:{2.0, v9[0]}];
  _Block_release(v7);
}

uint64_t sub_10003713C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_1000371CC;
  a1[1] = v5;
  return sub_1000371D4(v10, v9);
}

uint64_t sub_10003720C@<X0>(char a1@<W0>, float64x2_t *a2@<X8>, float a3@<S0>, double a4@<D1>)
{
  result = GeometryProxy.size.getter();
  v10 = 0.0;
  v11 = 1.0;
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = 1.0 - a3;
      v11 = v12 + a3;
      v13.f64[0] = v9 * a4 * a3;
      v14 = vmulq_n_f64(xmmword_1000944F0, v12);
      v10 = a3 * 0.0 + v14.f64[0];
      v13.f64[1] = a3;
      v15 = vaddq_f64(v14, v13);
      v16 = v12 + v12 - a3;
    }

    else
    {
      v17 = v9 * a4;
      v15 = vdupq_lane_s64(0x3FF2666666666666, 0);
      v15.f64[0] = v17;
      v16 = 2.0;
    }
  }

  else
  {
    v15 = xmmword_1000944F0;
    v16 = 0.0;
  }

  a2->f64[0] = v11;
  a2->f64[1] = v10;
  a2[1] = v15;
  a2[2].f64[0] = v16;
  a2[2].f64[1] = v10;
  return result;
}

uint64_t sub_1000372D8@<X0>(char a1@<W0>, float64x2_t *a2@<X8>, float a3@<S0>, double a4@<D1>)
{
  result = GeometryProxy.size.getter();
  v10 = v9 * 0.15;
  v11 = 1.0;
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = v10 + v9 * 0.35;
      v13 = v10 + (a4 + 0.05) * v9;
      v14 = 1.0 - a3;
      v11 = v14 + a3;
      v15 = a3 * 0.0 + v14 * 0.0;
      v16 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
      v17.f64[1] = v16.f64[1];
      v17.f64[0] = v12;
      v16.f64[0] = v13;
      _Q2 = vaddq_f64(vmulq_n_f64(v16, a3), vmulq_n_f64(v17, v14));
      v19 = v15;
    }

    else
    {
      __asm { FMOV            V2.2D, #1.0 }

      _Q2.f64[0] = v10 + v9 * a4;
      v15 = 0.0;
      v19 = 0.0;
    }
  }

  else
  {
    _Q2 = vdupq_lane_s64(0x3FE6666666666666, 0);
    _Q2.f64[0] = v9 * 0.15;
    v19 = 15.0;
    v15 = 0.0;
  }

  a2->f64[0] = v11;
  a2->f64[1] = v15;
  a2[1] = _Q2;
  a2[2].f64[0] = v15;
  a2[2].f64[1] = v19;
  return result;
}

double sub_1000373FC@<D0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_10003720C(a1, v7, a3, *v3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

double sub_100037440@<D0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_1000372D8(a1, v7, a3, *v3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_100037484@<X0>(char a1@<W0>, double *a2@<X8>, float a3@<S0>, double a4@<D1>)
{
  result = GeometryProxy.size.getter();
  v10 = (a4 + 0.15) * v9;
  v11 = 0.0;
  v12 = 1.0;
  if (a1)
  {
    if (a1 == 1)
    {
      v13 = 1.0 - a3;
      v12 = v13 + a3;
      v11 = a3 * 0.0 + v13 * 0.0;
      v10 = v13 * (v9 * 0.9) + v10 * a3;
    }
  }

  else
  {
    v10 = v10 + v9 * 0.1;
  }

  *a2 = v12;
  a2[1] = v11;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v11;
  a2[5] = v11;
  return result;
}

double sub_100037548@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  GeometryProxy.size.getter();
  result = 1.0;
  *a1 = xmmword_100094500;
  *(a1 + 16) = v3 * v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  return result;
}

double sub_10003759C@<D0>(char a1@<W0>, _OWORD *a2@<X8>, float a3@<S0>)
{
  sub_100037484(a1, v7, a3, *v3);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

uint64_t sub_1000375F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100037610()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100037660()
{
  v2 = *(v0 + 72);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  return State.wrappedValue.setter();
}

unint64_t sub_1000376D8()
{
  result = qword_1000DC230;
  if (!qword_1000DC230)
  {
    sub_100005818(&qword_1000DC238, &qword_100094660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC230);
  }

  return result;
}

uint64_t sub_10003777C()
{
  result = type metadata accessor for ActivityDisplayContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_100037828();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NearbySharingInteractionDisplayContext();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_100037828()
{
  result = qword_1000DC2C0;
  if (!qword_1000DC2C0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1000DC2C0);
  }

  return result;
}

void sub_1000378C8()
{
  sub_100037970();
  if (v0 <= 0x3F)
  {
    sub_1000379E4(319, &qword_1000DC378);
    if (v1 <= 0x3F)
    {
      sub_1000379E4(319, &unk_1000DC380);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100037970()
{
  if (!qword_1000DC370)
  {
    type metadata accessor for Date();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DC370);
    }
  }
}

void sub_1000379E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CardMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CardMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100037BA8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100037BBC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_100037D04(void *a1, int a2)
{
  v33 = a2;
  v32 = sub_1000056EC(&qword_1000DC5E8, &qword_100094950);
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32, v4);
  v28 = &v26 - v5;
  v31 = sub_1000056EC(&qword_1000DC5F0, &qword_100094958);
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v31, v7);
  v9 = &v26 - v8;
  v10 = sub_1000056EC(&qword_1000DC5F8, &qword_100094960);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v26 - v13;
  v15 = sub_1000056EC(&qword_1000DC600, &qword_100094968);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v26 - v19;
  v21 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10003D9DC();
  v22 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v22 == 4)
  {
    v37 = 2;
    sub_10003DA30();
    v23 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v23, v32);
    return (*(v16 + 8))(v20, v15);
  }

  if (v22 == 3)
  {
    v34 = 0;
    sub_10003DB2C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v27 + 8))(v14, v10);
    return (*(v16 + 8))(v20, v15);
  }

  v36 = 1;
  sub_10003DA84();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v35 = v22;
  sub_10003DB80();
  v25 = v31;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v29 + 8))(v9, v25);
  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_1000380F0(uint64_t a1)
{
  v2 = sub_10003DB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003812C(uint64_t a1)
{
  v2 = sub_10003DB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038168()
{
  v1 = 0x6F69746163756465;
  if (*v0 != 1)
  {
    v1 = 1701602409;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F737365636361;
  }
}

uint64_t sub_1000381C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003D2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000381F0(uint64_t a1)
{
  v2 = sub_10003D9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003822C(uint64_t a1)
{
  v2 = sub_10003D9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038274(uint64_t a1)
{
  v2 = sub_10003DA84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000382B0(uint64_t a1)
{
  v2 = sub_10003DA84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000382EC(uint64_t a1)
{
  v2 = sub_10003DA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038328(uint64_t a1)
{
  v2 = sub_10003DA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003D410(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1000383B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

void sub_100038408(void *a1)
{
  v2 = sub_1000056EC(&qword_1000DC458, &qword_100094870);
  v99 = *(v2 - 8);
  v100 = v2;
  v3 = *(v99 + 64);
  __chkstk_darwin(v2, v4);
  v98 = &v74 - v5;
  v96 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v6 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96, v7);
  v97 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000056EC(&qword_1000DC460, &qword_100094878);
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = *(v94 + 64);
  __chkstk_darwin(v9, v11);
  v93 = &v74 - v12;
  v13 = sub_1000056EC(&qword_1000DC468, &qword_100094880);
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  __chkstk_darwin(v13, v15);
  v87 = &v74 - v16;
  v17 = sub_1000056EC(&qword_1000DC470, &qword_100094888);
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = *(v91 + 64);
  __chkstk_darwin(v17, v19);
  v88 = &v74 - v20;
  v86 = sub_1000056EC(&qword_1000DC478, &qword_100094890);
  v85 = *(v86 - 8);
  v21 = *(v85 + 64);
  __chkstk_darwin(v86, v22);
  v84 = &v74 - v23;
  v83 = sub_1000056EC(&qword_1000DC480, &qword_100094898);
  v82 = *(v83 - 8);
  v24 = *(v82 + 64);
  __chkstk_darwin(v83, v25);
  v81 = &v74 - v26;
  v80 = sub_1000056EC(&qword_1000DC488, &qword_1000948A0);
  v79 = *(v80 - 8);
  v27 = *(v79 + 64);
  __chkstk_darwin(v80, v28);
  v76 = &v74 - v29;
  v78 = sub_1000056EC(&qword_1000DC490, &qword_1000948A8);
  v77 = *(v78 - 8);
  v30 = *(v77 + 64);
  __chkstk_darwin(v78, v31);
  v33 = &v74 - v32;
  v75 = type metadata accessor for ActivityDisplayContext(0);
  v34 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75, v35);
  v37 = &v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ViewServiceInput(0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v40);
  v42 = (&v74 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_1000056EC(&qword_1000DC498, &qword_1000948B0);
  v44 = *(v43 - 8);
  v102 = v43;
  v103 = v44;
  v45 = *(v44 + 64);
  __chkstk_darwin(v43, v46);
  v48 = &v74 - v47;
  v49 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10003C890();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10003D138(v101, v42, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v53 = v102;
      if (EnumCaseMultiPayload == 4)
      {
        v54 = *v42;
        LOBYTE(v104) = 4;
        sub_10003C9E0();
        v55 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v104 = v54;
        sub_10002C1F8();
        v56 = v92;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v91 + 8))(v55, v56);
        (*(v103 + 8))(v48, v53);

        return;
      }

      v69 = *v42;
      LOBYTE(v104) = 6;
      sub_10003C938();
      v66 = v93;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v67 = v95;
      KeyedEncodingContainer.encode(_:forKey:)();
      v68 = v94;
      goto LABEL_14;
    }

    v53 = v102;
    if (EnumCaseMultiPayload == 6)
    {
      v62 = v97;
      sub_10003CC2C(v42, v97, type metadata accessor for NearbySharingInteractionDisplayContext);
      LOBYTE(v104) = 7;
      sub_10003C8E4();
      v63 = v98;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10003D1F4(&qword_1000DBC88, type metadata accessor for NearbySharingInteractionDisplayContext);
      v64 = v100;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v99 + 8))(v63, v64);
      sub_10003CD3C(v62, type metadata accessor for NearbySharingInteractionDisplayContext);
LABEL_15:
      (*(v103 + 8))(v48, v53);
      return;
    }

    LOBYTE(v104) = 5;
    sub_10003C98C();
    v73 = v87;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v89 + 8))(v73, v90);
    (*(v103 + 8))(v48, v53);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_10003CC2C(v42, v37, type metadata accessor for ActivityDisplayContext);
        LOBYTE(v104) = 0;
        sub_10003CBD8();
        v51 = v102;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_10003D1F4(&qword_1000DC4B0, type metadata accessor for ActivityDisplayContext);
        v52 = v78;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v77 + 8))(v33, v52);
        sub_10003CD3C(v37, type metadata accessor for ActivityDisplayContext);
        (*(v103 + 8))(v48, v51);
        return;
      }

      v65 = *v42;
      LOBYTE(v104) = 1;
      sub_10003CB30();
      v66 = v76;
      v53 = v102;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v104) = v65;
      sub_10003CCE8();
      v67 = v80;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v68 = v79;
LABEL_14:
      (*(v68 + 8))(v66, v67);
      goto LABEL_15;
    }

    v57 = *v42;
    v58 = v42[1];
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v104) = 2;
      sub_10003CADC();
      v59 = v81;
      v60 = v102;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v83;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v82 + 8))(v59, v61);
      (*(v103 + 8))(v48, v60);
    }

    else
    {
      LOBYTE(v104) = 3;
      sub_10003CA34();
      v70 = v84;
      v71 = v102;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v104 = v57;
      v105 = v58;
      sub_10003CC94();
      v72 = v86;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v85 + 8))(v70, v72);
      (*(v103 + 8))(v48, v71);
      sub_100019FD8(v57);
    }
  }
}

uint64_t sub_100039030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v134 = sub_1000056EC(&qword_1000DC3B0, &qword_100094820);
  v135 = *(v134 - 8);
  v3 = *(v135 + 64);
  __chkstk_darwin(v134, v4);
  v147 = &v112 - v5;
  v146 = sub_1000056EC(&qword_1000DC3B8, &qword_100094828);
  v133 = *(v146 - 8);
  v6 = *(v133 + 64);
  __chkstk_darwin(v146, v7);
  v140 = &v112 - v8;
  v131 = sub_1000056EC(&qword_1000DC3C0, &qword_100094830);
  v129 = *(v131 - 8);
  v9 = *(v129 + 64);
  __chkstk_darwin(v131, v10);
  v138 = &v112 - v11;
  v132 = sub_1000056EC(&qword_1000DC3C8, &qword_100094838);
  v130 = *(v132 - 8);
  v12 = *(v130 + 64);
  __chkstk_darwin(v132, v13);
  v139 = &v112 - v14;
  v128 = sub_1000056EC(&qword_1000DC3D0, &qword_100094840);
  v127 = *(v128 - 8);
  v15 = *(v127 + 64);
  __chkstk_darwin(v128, v16);
  v136 = &v112 - v17;
  v125 = sub_1000056EC(&qword_1000DC3D8, &qword_100094848);
  v126 = *(v125 - 8);
  v18 = *(v126 + 64);
  __chkstk_darwin(v125, v19);
  v145 = &v112 - v20;
  v124 = sub_1000056EC(&qword_1000DC3E0, &qword_100094850);
  v123 = *(v124 - 8);
  v21 = *(v123 + 64);
  __chkstk_darwin(v124, v22);
  v137 = &v112 - v23;
  v122 = sub_1000056EC(&qword_1000DC3E8, &qword_100094858);
  v121 = *(v122 - 8);
  v24 = *(v121 + 64);
  __chkstk_darwin(v122, v25);
  v142 = &v112 - v26;
  v144 = sub_1000056EC(&qword_1000DC3F0, &unk_100094860);
  v149 = *(v144 - 8);
  v27 = *(v149 + 64);
  __chkstk_darwin(v144, v28);
  v30 = &v112 - v29;
  v141 = type metadata accessor for ViewServiceInput(0);
  v31 = *(*(v141 - 8) + 64);
  v33 = __chkstk_darwin(v141, v32);
  v120 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33, v35);
  v118 = (&v112 - v37);
  v39 = __chkstk_darwin(v36, v38);
  v119 = (&v112 - v40);
  v42 = __chkstk_darwin(v39, v41);
  v44 = &v112 - v43;
  v46 = __chkstk_darwin(v42, v45);
  v48 = (&v112 - v47);
  v50 = __chkstk_darwin(v46, v49);
  v52 = &v112 - v51;
  v54 = __chkstk_darwin(v50, v53);
  v56 = &v112 - v55;
  __chkstk_darwin(v54, v57);
  v59 = &v112 - v58;
  v60 = a1[3];
  v61 = a1[4];
  v151 = a1;
  sub_100006768(a1, v60);
  sub_10003C890();
  v143 = v30;
  v62 = v150;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v62)
  {
    v113 = v52;
    v114 = v48;
    v116 = v56;
    v115 = v44;
    v63 = v142;
    v150 = 0;
    v64 = v145;
    v65 = v146;
    v66 = v147;
    v117 = v59;
    v67 = v148;
    v68 = v143;
    v69 = v144;
    v70 = KeyedDecodingContainer.allKeys.getter();
    v71 = (2 * *(v70 + 16)) | 1;
    v153 = v70;
    v154 = v70 + 32;
    v155 = 0;
    v156 = v71;
    v72 = sub_10007183C();
    if (v72 == 8 || v155 != v156 >> 1)
    {
      v78 = type metadata accessor for DecodingError();
      swift_allocError();
      v80 = v79;
      v81 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
      *v80 = v141;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v78 - 8) + 104))(v80, enum case for DecodingError.typeMismatch(_:), v78);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v72 <= 3u)
    {
      v73 = v150;
      if (v72 <= 1u)
      {
        if (!v72)
        {
          LOBYTE(v152) = 0;
          sub_10003CBD8();
          v74 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v73)
          {
            type metadata accessor for ActivityDisplayContext(0);
            sub_10003D1F4(&qword_1000DC450, type metadata accessor for ActivityDisplayContext);
            v75 = v116;
            v76 = v122;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v121 + 8))(v74, v76);
            (*(v149 + 8))(v68, v69);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v77 = v75;
LABEL_35:
            v96 = v117;
            sub_10003CC2C(v77, v117, type metadata accessor for ViewServiceInput);
            v83 = v67;
            goto LABEL_37;
          }

          goto LABEL_10;
        }

        LOBYTE(v152) = 1;
        sub_10003CB30();
        v91 = v137;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v73)
        {
          sub_10003CB84();
          v92 = v124;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v123 + 8))(v91, v92);
          (*(v149 + 8))(v68, v69);
          swift_unknownObjectRelease();
          v108 = v113;
          *v113 = v152;
LABEL_33:
          swift_storeEnumTagMultiPayload();
          v77 = v108;
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      if (v72 == 2)
      {
        LOBYTE(v152) = 2;
        sub_10003CADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v73)
        {
          goto LABEL_10;
        }

        v88 = v125;
        v104 = KeyedDecodingContainer.decode(_:forKey:)();
        v106 = v105;
        (*(v126 + 8))(v64, v88);
        (*(v149 + 8))(v68, v69);
        swift_unknownObjectRelease();
        v107 = v114;
        *v114 = v104;
        v107[1] = v106;
LABEL_34:
        swift_storeEnumTagMultiPayload();
        v77 = v107;
        goto LABEL_35;
      }

      LOBYTE(v152) = 3;
      sub_10003CA34();
      v97 = v136;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v73)
      {
        sub_10003CA88();
        v98 = v128;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v127 + 8))(v97, v98);
        (*(v149 + 8))(v68, v69);
        swift_unknownObjectRelease();
        v108 = v115;
        *v115 = v152;
        goto LABEL_33;
      }

LABEL_10:
      (*(v149 + 8))(v68, v69);
      swift_unknownObjectRelease();
      return sub_10000529C(v151);
    }

    if (v72 > 5u)
    {
      if (v72 != 6)
      {
        LOBYTE(v152) = 7;
        sub_10003C8E4();
        v99 = v66;
        v100 = v150;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v100)
        {
          goto LABEL_10;
        }

        type metadata accessor for NearbySharingInteractionDisplayContext();
        sub_10003D1F4(&qword_1000DBC78, type metadata accessor for NearbySharingInteractionDisplayContext);
        v107 = v120;
        v101 = v134;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v135 + 8))(v99, v101);
        (*(v149 + 8))(v68, v69);
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v83 = v67;
      LOBYTE(v152) = 6;
      sub_10003C938();
      v89 = v140;
      v90 = v150;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v90)
      {
        goto LABEL_10;
      }

      KeyedDecodingContainer.decode(_:forKey:)();
      v102 = v149;
      v110 = v109;
      (*(v133 + 8))(v89, v65);
      (*(v102 + 8))(v68, v69);
      swift_unknownObjectRelease();
      v103 = v118;
      *v118 = v110;
    }

    else
    {
      v83 = v67;
      if (v72 != 4)
      {
        LOBYTE(v152) = 5;
        sub_10003C98C();
        v93 = v138;
        v94 = v150;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v95 = v149;
        if (!v94)
        {
          (*(v129 + 8))(v93, v131);
          (*(v95 + 8))(v68, v69);
          swift_unknownObjectRelease();
          v96 = v117;
          swift_storeEnumTagMultiPayload();
LABEL_37:
          sub_10003CC2C(v96, v83, type metadata accessor for ViewServiceInput);
          return sub_10000529C(v151);
        }

        goto LABEL_10;
      }

      LOBYTE(v152) = 4;
      sub_10003C9E0();
      v84 = v139;
      v85 = v150;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v86 = v149;
      if (v85)
      {
        goto LABEL_10;
      }

      sub_10002C150();
      v87 = v132;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v130 + 8))(v84, v87);
      (*(v86 + 8))(v68, v69);
      swift_unknownObjectRelease();
      v103 = v119;
      *v119 = v152;
    }

    swift_storeEnumTagMultiPayload();
    v111 = v103;
    v96 = v117;
    sub_10003CC2C(v111, v117, type metadata accessor for ViewServiceInput);
    goto LABEL_37;
  }

  return sub_10000529C(v151);
}

uint64_t sub_10003A12C(void *a1)
{
  v88 = sub_1000056EC(&qword_1000DC550, &qword_100094900);
  v87 = *(v88 - 8);
  v2 = *(v87 + 64);
  __chkstk_darwin(v88, v3);
  v86 = &v77 - v4;
  v91 = sub_1000056EC(&qword_1000DC558, &qword_100094908);
  v82 = *(v91 - 8);
  v5 = *(v82 + 64);
  __chkstk_darwin(v91, v6);
  v90 = &v77 - v7;
  v84 = sub_1000056EC(&qword_1000DC560, &qword_100094910);
  v83 = *(v84 - 8);
  v8 = *(v83 + 64);
  __chkstk_darwin(v84, v9);
  v81 = &v77 - v10;
  v80 = sub_1000056EC(&qword_1000DC568, &qword_100094918);
  v79 = *(v80 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v80, v12);
  v78 = &v77 - v13;
  v89 = sub_1000056EC(&qword_1000DC570, &qword_100094920);
  v77 = *(v89 - 8);
  v14 = *(v77 + 64);
  __chkstk_darwin(v89, v15);
  v17 = &v77 - v16;
  v92 = type metadata accessor for Date();
  v93 = *(v92 - 8);
  v18 = *(v93 + 64);
  v20 = __chkstk_darwin(v92, v19);
  v85 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v77 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v77 - v27;
  v29 = type metadata accessor for ViewServiceOutput(0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29, v31);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1000056EC(&qword_1000DC578, &qword_100094928);
  v95 = *(v97 - 8);
  v34 = *(v95 + 64);
  __chkstk_darwin(v97, v35);
  v37 = &v77 - v36;
  v38 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10003CD9C();
  v98 = v37;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10003D138(v94, v33, type metadata accessor for ViewServiceOutput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v94 = v28;
    v43 = v17;
    v44 = v90;
    v45 = v89;
    v46 = v91;
    if (EnumCaseMultiPayload)
    {
      v67 = *v33;
      v68 = sub_1000056EC(&qword_1000DC520, &unk_1000948F0);
      v69 = v93;
      v70 = v25;
      v71 = v92;
      (*(v93 + 32))(v25, &v33[*(v68 + 48)], v92);
      LOBYTE(v102) = 3;
      sub_10003CEEC();
      v73 = v97;
      v72 = v98;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v102) = v67;
      LOBYTE(v99) = 0;
      sub_10003D23C();
      v74 = v96;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v74)
      {
        (*(v82 + 8))(v44, v46);
        (*(v69 + 8))(v70, v71);
        return (*(v95 + 8))(v72, v73);
      }

      else
      {
        LOBYTE(v102) = 1;
        sub_10003D1F4(&qword_1000DC588, &type metadata accessor for Date);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v82 + 8))(v44, v46);
        (*(v69 + 8))(v70, v71);
        return (*(v95 + 8))(v98, v73);
      }
    }

    else
    {
      v47 = *(v33 + 1);
      v102 = *v33;
      v103 = v47;
      *v104 = *(v33 + 2);
      *&v104[9] = *(v33 + 41);
      v48 = *(v33 + 9);
      v91 = *(v33 + 8);
      v49 = sub_1000056EC(&qword_1000DC548, &unk_100097680);
      v50 = v93;
      v51 = v92;
      (*(v93 + 32))(v94, &v33[*(v49 + 64)], v92);
      LOBYTE(v99) = 0;
      sub_10003D03C();
      v52 = v97;
      v53 = v98;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v99 = v102;
      v100 = v103;
      v101[0] = *v104;
      *(v101 + 9) = *&v104[9];
      v105 = 0;
      sub_10003D290();
      v54 = v96;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v54)
      {

        (*(v77 + 8))(v43, v45);
        (*(v50 + 8))(v94, v51);
        (*(v95 + 8))(v53, v52);
        return sub_10003D0E4(&v102);
      }

      else
      {
        sub_10003D0E4(&v102);
        LOBYTE(v99) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();

        LOBYTE(v99) = 2;
        sub_10003D1F4(&qword_1000DC588, &type metadata accessor for Date);
        v75 = v94;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v76 = v98;
        (*(v77 + 8))(v43, v45);
        (*(v50 + 8))(v75, v51);
        return (*(v95 + 8))(v76, v97);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v56 = *(v33 + 1);
    v102 = *v33;
    v103 = v56;
    *v104 = *(v33 + 2);
    *&v104[9] = *(v33 + 41);
    v57 = sub_1000056EC(&qword_1000DC500, &unk_100097360);
    v58 = v93;
    v59 = v85;
    v60 = v92;
    (*(v93 + 32))(v85, &v33[*(v57 + 48)], v92);
    LOBYTE(v99) = 4;
    sub_10003CDF0();
    v61 = v86;
    v62 = v97;
    v63 = v98;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v99 = v102;
    v100 = v103;
    v101[0] = *v104;
    *(v101 + 9) = *&v104[9];
    v105 = 0;
    sub_10003D1A0();
    v64 = v88;
    v65 = v96;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v65)
    {
      (*(v87 + 8))(v61, v64);
      (*(v58 + 8))(v59, v60);
      (*(v95 + 8))(v63, v62);
      return sub_10003CE98(&v102);
    }

    else
    {
      sub_10003CE98(&v102);
      LOBYTE(v99) = 1;
      sub_10003D1F4(&qword_1000DC588, &type metadata accessor for Date);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v87 + 8))(v61, v64);
      (*(v58 + 8))(v59, v60);
      return (*(v95 + 8))(v63, v62);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v102) = 1;
      sub_10003CFE8();
      v40 = v78;
      v41 = v97;
      v42 = v98;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v79 + 8))(v40, v80);
    }

    else
    {
      LOBYTE(v102) = 2;
      sub_10003CF94();
      v66 = v81;
      v41 = v97;
      v42 = v98;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v83 + 8))(v66, v84);
    }

    return (*(v95 + 8))(v42, v41);
  }
}

uint64_t sub_10003ADC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v93 = sub_1000056EC(&qword_1000DC4B8, &qword_1000948B8);
  v95 = *(v93 - 8);
  v3 = *(v95 + 64);
  __chkstk_darwin(v93, v4);
  v97 = &v83 - v5;
  v92 = sub_1000056EC(&qword_1000DC4C0, &qword_1000948C0);
  v94 = *(v92 - 8);
  v6 = *(v94 + 64);
  __chkstk_darwin(v92, v7);
  v103 = &v83 - v8;
  v90 = sub_1000056EC(&qword_1000DC4C8, &qword_1000948C8);
  v87 = *(v90 - 8);
  v9 = *(v87 + 64);
  __chkstk_darwin(v90, v10);
  v102 = &v83 - v11;
  v89 = sub_1000056EC(&qword_1000DC4D0, &qword_1000948D0);
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v89, v13);
  v101 = &v83 - v14;
  v91 = sub_1000056EC(&qword_1000DC4D8, &qword_1000948D8);
  v96 = *(v91 - 8);
  v15 = *(v96 + 64);
  __chkstk_darwin(v91, v16);
  v100 = &v83 - v17;
  v104 = sub_1000056EC(&qword_1000DC4E0, &unk_1000948E0);
  v99 = *(v104 - 8);
  v18 = *(v99 + 64);
  __chkstk_darwin(v104, v19);
  v21 = &v83 - v20;
  v22 = type metadata accessor for ViewServiceOutput(0);
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v83 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v83 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v83 - v37;
  v39 = a1[3];
  v40 = a1[4];
  v105 = a1;
  sub_100006768(a1, v39);
  sub_10003CD9C();
  v41 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    return sub_10000529C(v105);
  }

  v43 = v101;
  v42 = v102;
  v83 = v31;
  v84 = v27;
  v44 = v100;
  v45 = v103;
  v86 = 0;
  v106 = v22;
  v85 = v38;
  v46 = v99;
  v47 = v104;
  v48 = KeyedDecodingContainer.allKeys.getter();
  v49 = (2 * *(v48 + 16)) | 1;
  v108 = v48;
  v109 = v48 + 32;
  v110 = 0;
  v111 = v49;
  v50 = sub_100071870();
  v51 = v47;
  if (v50 == 5 || v110 != v111 >> 1)
  {
    v58 = type metadata accessor for DecodingError();
    swift_allocError();
    v60 = v59;
    v61 = v47;
    v62 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v60 = v106;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v58 - 8) + 104))(v60, enum case for DecodingError.typeMismatch(_:), v58);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v50 > 1u)
  {
    if (v50 == 2)
    {
      LOBYTE(v107) = 2;
      sub_10003CF94();
      v68 = v86;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v68)
      {
        v86 = 0;
        (*(v87 + 8))(v42, v90);
        (*(v46 + 8))(v21, v47);
        swift_unknownObjectRelease();
        v82 = v85;
        swift_storeEnumTagMultiPayload();
LABEL_27:
        v73 = v105;
        v64 = v98;
        goto LABEL_28;
      }

LABEL_17:
      (*(v46 + 8))(v21, v47);
      goto LABEL_11;
    }

    if (v50 == 3)
    {
      LOBYTE(v107) = 3;
      sub_10003CEEC();
      v52 = v45;
      v53 = v47;
      v54 = v86;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v46;
      if (!v54)
      {
        LOBYTE(v107) = 0;
        sub_10003CF40();
        v56 = v83;
        v57 = v92;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v74 = *(sub_1000056EC(&qword_1000DC520, &unk_1000948F0) + 48);
        type metadata accessor for Date();
        LOBYTE(v107) = 1;
        sub_10003D1F4(&qword_1000DC508, &type metadata accessor for Date);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v86 = 0;
        (*(v94 + 8))(v52, v57);
        (*(v55 + 8))(v21, v53);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v77 = v56;
LABEL_26:
        v82 = v85;
        sub_10003CC2C(v77, v85, type metadata accessor for ViewServiceOutput);
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    LOBYTE(v107) = 4;
    sub_10003CDF0();
    v61 = v47;
    v69 = v86;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v69)
    {
      LOBYTE(v107) = 0;
      sub_10003CE44();
      v70 = v84;
      v71 = v93;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v75 = *(sub_1000056EC(&qword_1000DC500, &unk_100097360) + 48);
      type metadata accessor for Date();
      v112 = 1;
      sub_10003D1F4(&qword_1000DC508, &type metadata accessor for Date);
      v76 = v97;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v86 = 0;
      (*(v95 + 8))(v76, v71);
      (*(v46 + 8))(v21, v47);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v77 = v70;
      goto LABEL_26;
    }

LABEL_10:
    (*(v46 + 8))(v21, v61);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_10000529C(v105);
  }

  v64 = v98;
  if (v50)
  {
    LOBYTE(v107) = 1;
    sub_10003CFE8();
    v72 = v86;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v72)
    {
      (*(v46 + 8))(v21, v51);
      goto LABEL_11;
    }

    v86 = 0;
    (*(v88 + 8))(v43, v89);
    (*(v46 + 8))(v21, v51);
    swift_unknownObjectRelease();
    v82 = v85;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    LOBYTE(v107) = 0;
    sub_10003D03C();
    v61 = v51;
    v65 = v86;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v65)
    {
      goto LABEL_10;
    }

    LOBYTE(v107) = 0;
    sub_10003D090();
    v66 = v35;
    v67 = v91;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v112 = 1;
    v78 = KeyedDecodingContainer.decode(_:forKey:)();
    v103 = v21;
    v80 = v79;
    v81 = *(sub_1000056EC(&qword_1000DC548, &unk_100097680) + 64);
    *(v35 + 8) = v78;
    *(v35 + 9) = v80;
    v102 = v80;
    type metadata accessor for Date();
    v112 = 2;
    sub_10003D1F4(&qword_1000DC508, &type metadata accessor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v86 = 0;
    (*(v96 + 8))(v44, v67);
    (*(v46 + 8))(v103, v104);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v82 = v85;
    sub_10003CC2C(v66, v85, type metadata accessor for ViewServiceOutput);
  }

  v73 = v105;
LABEL_28:
  sub_10003CC2C(v82, v64, type metadata accessor for ViewServiceOutput);
  return sub_10000529C(v73);
}

uint64_t sub_10003BC7C(uint64_t a1)
{
  v2 = sub_10003CBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BCB8(uint64_t a1)
{
  v2 = sub_10003CBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003BCF4(uint64_t a1)
{
  v2 = sub_10003CB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BD30(uint64_t a1)
{
  v2 = sub_10003CB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10003BD6C()
{
  v1 = *v0;
  v2 = 0x65646F4D64726163;
  v3 = 0x73736572676F7270;
  if (v1 != 6)
  {
    v3 = 0xD000000000000026;
  }

  v4 = 0x6E6F70736552726DLL;
  if (v1 != 4)
  {
    v4 = 1735289200;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7373696D736964;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003BE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003F16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003BEA4(uint64_t a1)
{
  v2 = sub_10003C890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BEE0(uint64_t a1)
{
  v2 = sub_10003C890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003BF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10003BFB4(uint64_t a1)
{
  v2 = sub_10003CADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BFF0(uint64_t a1)
{
  v2 = sub_10003CADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C02C(uint64_t a1)
{
  v2 = sub_10003CA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C068(uint64_t a1)
{
  v2 = sub_10003CA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C0A4(uint64_t a1)
{
  v2 = sub_10003C9E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C0E0(uint64_t a1)
{
  v2 = sub_10003C9E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C11C(uint64_t a1)
{
  v2 = sub_10003C8E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C158(uint64_t a1)
{
  v2 = sub_10003C8E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C194(uint64_t a1)
{
  v2 = sub_10003C98C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C1D0(uint64_t a1)
{
  v2 = sub_10003C98C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10003C28C(uint64_t a1)
{
  v2 = sub_10003C938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C2C8(uint64_t a1)
{
  v2 = sub_10003C938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C334()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_10003C384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003F410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003C3AC(uint64_t a1)
{
  v2 = sub_10003D03C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C3E8(uint64_t a1)
{
  v2 = sub_10003D03C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C424()
{
  v1 = *v0;
  v2 = 0x6E65764564726163;
  v3 = 1735289200;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656873696E6966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003C4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003F524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003C4F4(uint64_t a1)
{
  v2 = sub_10003CD9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C530(uint64_t a1)
{
  v2 = sub_10003CD9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C56C(uint64_t a1)
{
  v2 = sub_10003CFE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C5A8(uint64_t a1)
{
  v2 = sub_10003CFE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C5E4()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_10003C61C(uint64_t a1)
{
  v2 = sub_10003CDF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C658(uint64_t a1)
{
  v2 = sub_10003CDF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C694(uint64_t a1)
{
  v2 = sub_10003CF94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C6D0(uint64_t a1)
{
  v2 = sub_10003CF94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10003C7E8(uint64_t a1)
{
  v2 = sub_10003CEEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C824(uint64_t a1)
{
  v2 = sub_10003CEEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10003C890()
{
  result = qword_1000DC3F8;
  if (!qword_1000DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC3F8);
  }

  return result;
}

unint64_t sub_10003C8E4()
{
  result = qword_1000DC400;
  if (!qword_1000DC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC400);
  }

  return result;
}

unint64_t sub_10003C938()
{
  result = qword_1000DC408;
  if (!qword_1000DC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC408);
  }

  return result;
}

unint64_t sub_10003C98C()
{
  result = qword_1000DC410;
  if (!qword_1000DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC410);
  }

  return result;
}

unint64_t sub_10003C9E0()
{
  result = qword_1000DC418;
  if (!qword_1000DC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC418);
  }

  return result;
}

unint64_t sub_10003CA34()
{
  result = qword_1000DC420;
  if (!qword_1000DC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC420);
  }

  return result;
}

unint64_t sub_10003CA88()
{
  result = qword_1000DC428;
  if (!qword_1000DC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC428);
  }

  return result;
}

unint64_t sub_10003CADC()
{
  result = qword_1000DC430;
  if (!qword_1000DC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC430);
  }

  return result;
}

unint64_t sub_10003CB30()
{
  result = qword_1000DC438;
  if (!qword_1000DC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC438);
  }

  return result;
}

unint64_t sub_10003CB84()
{
  result = qword_1000DC440;
  if (!qword_1000DC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC440);
  }

  return result;
}

unint64_t sub_10003CBD8()
{
  result = qword_1000DC448;
  if (!qword_1000DC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC448);
  }

  return result;
}

uint64_t sub_10003CC2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003CC94()
{
  result = qword_1000DC4A0;
  if (!qword_1000DC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4A0);
  }

  return result;
}

unint64_t sub_10003CCE8()
{
  result = qword_1000DC4A8;
  if (!qword_1000DC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4A8);
  }

  return result;
}

uint64_t sub_10003CD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003CD9C()
{
  result = qword_1000DC4E8;
  if (!qword_1000DC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4E8);
  }

  return result;
}

unint64_t sub_10003CDF0()
{
  result = qword_1000DC4F0;
  if (!qword_1000DC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4F0);
  }

  return result;
}

unint64_t sub_10003CE44()
{
  result = qword_1000DC4F8;
  if (!qword_1000DC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4F8);
  }

  return result;
}

unint64_t sub_10003CEEC()
{
  result = qword_1000DC510;
  if (!qword_1000DC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC510);
  }

  return result;
}

unint64_t sub_10003CF40()
{
  result = qword_1000DC518;
  if (!qword_1000DC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC518);
  }

  return result;
}

unint64_t sub_10003CF94()
{
  result = qword_1000DC528;
  if (!qword_1000DC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC528);
  }

  return result;
}

unint64_t sub_10003CFE8()
{
  result = qword_1000DC530;
  if (!qword_1000DC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC530);
  }

  return result;
}

unint64_t sub_10003D03C()
{
  result = qword_1000DC538;
  if (!qword_1000DC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC538);
  }

  return result;
}

unint64_t sub_10003D090()
{
  result = qword_1000DC540;
  if (!qword_1000DC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC540);
  }

  return result;
}

uint64_t sub_10003D138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003D1A0()
{
  result = qword_1000DC580;
  if (!qword_1000DC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC580);
  }

  return result;
}

uint64_t sub_10003D1F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003D23C()
{
  result = qword_1000DC590;
  if (!qword_1000DC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC590);
  }

  return result;
}

unint64_t sub_10003D290()
{
  result = qword_1000DC598;
  if (!qword_1000DC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC598);
  }

  return result;
}

uint64_t sub_10003D2E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10003D410(uint64_t *a1)
{
  v43 = sub_1000056EC(&qword_1000DC5A0, &qword_100094930);
  v48 = *(v43 - 8);
  v2 = *(v48 + 64);
  __chkstk_darwin(v43, v3);
  v47 = &v41 - v4;
  v5 = sub_1000056EC(&qword_1000DC5A8, &qword_100094938);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v41 - v9;
  v11 = sub_1000056EC(&qword_1000DC5B0, &qword_100094940);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v41 - v14;
  v16 = sub_1000056EC(&qword_1000DC5B8, &qword_100094948);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v41 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v50 = a1;
  v24 = sub_100006768(a1, v23);
  sub_10003D9DC();
  v25 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v42 = v11;
    v49 = 0;
    v27 = v47;
    v26 = v48;
    v28 = v17;
    v29 = KeyedDecodingContainer.allKeys.getter();
    v30 = (2 * *(v29 + 16)) | 1;
    v51 = v29;
    v52 = v29 + 32;
    v53 = 0;
    v54 = v30;
    v31 = sub_100074828();
    if (v31 == 3 || v53 != v54 >> 1)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      v37 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
      *v36 = &type metadata for CardMode;
      v24 = v21;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
      swift_willThrow();
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        v55 = 1;
        sub_10003DA84();
        v24 = v21;
        v32 = v49;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v32)
        {
          sub_10003DAD8();
          v33 = v45;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v46 + 8))(v10, v33);
          (*(v17 + 8))(v21, v16);
          swift_unknownObjectRelease();
          v24 = v55;
          goto LABEL_10;
        }
      }

      else
      {
        v55 = 2;
        sub_10003DA30();
        v24 = v21;
        v40 = v49;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v40)
        {
          (*(v26 + 8))(v27, v43);
          (*(v17 + 8))(v21, v16);
          swift_unknownObjectRelease();
          v24 = 4;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v55 = 0;
      sub_10003DB2C();
      v24 = v21;
      v39 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v39)
      {
        (*(v44 + 8))(v15, v42);
        (*(v17 + 8))(v21, v16);
        swift_unknownObjectRelease();
        v24 = 3;
        goto LABEL_10;
      }
    }

    (*(v28 + 8))(v21, v16);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_10000529C(v50);
  return v24;
}

unint64_t sub_10003D9DC()
{
  result = qword_1000DC5C0;
  if (!qword_1000DC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5C0);
  }

  return result;
}

unint64_t sub_10003DA30()
{
  result = qword_1000DC5C8;
  if (!qword_1000DC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5C8);
  }

  return result;
}

unint64_t sub_10003DA84()
{
  result = qword_1000DC5D0;
  if (!qword_1000DC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5D0);
  }

  return result;
}

unint64_t sub_10003DAD8()
{
  result = qword_1000DC5D8;
  if (!qword_1000DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5D8);
  }

  return result;
}

unint64_t sub_10003DB2C()
{
  result = qword_1000DC5E0;
  if (!qword_1000DC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5E0);
  }

  return result;
}

unint64_t sub_10003DB80()
{
  result = qword_1000DC608;
  if (!qword_1000DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC608);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewServiceOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewServiceOutput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewServiceInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewServiceInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003DF90()
{
  result = qword_1000DC610;
  if (!qword_1000DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC610);
  }

  return result;
}

unint64_t sub_10003DFE8()
{
  result = qword_1000DC618;
  if (!qword_1000DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC618);
  }

  return result;
}

unint64_t sub_10003E040()
{
  result = qword_1000DC620;
  if (!qword_1000DC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC620);
  }

  return result;
}

unint64_t sub_10003E098()
{
  result = qword_1000DC628;
  if (!qword_1000DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC628);
  }

  return result;
}

unint64_t sub_10003E0F0()
{
  result = qword_1000DC630;
  if (!qword_1000DC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC630);
  }

  return result;
}

unint64_t sub_10003E148()
{
  result = qword_1000DC638;
  if (!qword_1000DC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC638);
  }

  return result;
}

unint64_t sub_10003E1A0()
{
  result = qword_1000DC640;
  if (!qword_1000DC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC640);
  }

  return result;
}

unint64_t sub_10003E1F8()
{
  result = qword_1000DC648;
  if (!qword_1000DC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC648);
  }

  return result;
}

unint64_t sub_10003E250()
{
  result = qword_1000DC650;
  if (!qword_1000DC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC650);
  }

  return result;
}

unint64_t sub_10003E2A8()
{
  result = qword_1000DC658;
  if (!qword_1000DC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC658);
  }

  return result;
}

unint64_t sub_10003E300()
{
  result = qword_1000DC660;
  if (!qword_1000DC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC660);
  }

  return result;
}

unint64_t sub_10003E358()
{
  result = qword_1000DC668;
  if (!qword_1000DC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC668);
  }

  return result;
}

unint64_t sub_10003E3B0()
{
  result = qword_1000DC670;
  if (!qword_1000DC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC670);
  }

  return result;
}

unint64_t sub_10003E408()
{
  result = qword_1000DC678;
  if (!qword_1000DC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC678);
  }

  return result;
}

unint64_t sub_10003E460()
{
  result = qword_1000DC680;
  if (!qword_1000DC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC680);
  }

  return result;
}

unint64_t sub_10003E4B8()
{
  result = qword_1000DC688;
  if (!qword_1000DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC688);
  }

  return result;
}

unint64_t sub_10003E510()
{
  result = qword_1000DC690;
  if (!qword_1000DC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC690);
  }

  return result;
}

unint64_t sub_10003E568()
{
  result = qword_1000DC698;
  if (!qword_1000DC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC698);
  }

  return result;
}

unint64_t sub_10003E5C0()
{
  result = qword_1000DC6A0;
  if (!qword_1000DC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6A0);
  }

  return result;
}

unint64_t sub_10003E618()
{
  result = qword_1000DC6A8;
  if (!qword_1000DC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6A8);
  }

  return result;
}

unint64_t sub_10003E670()
{
  result = qword_1000DC6B0;
  if (!qword_1000DC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6B0);
  }

  return result;
}

unint64_t sub_10003E6C8()
{
  result = qword_1000DC6B8;
  if (!qword_1000DC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6B8);
  }

  return result;
}

unint64_t sub_10003E720()
{
  result = qword_1000DC6C0;
  if (!qword_1000DC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6C0);
  }

  return result;
}

unint64_t sub_10003E778()
{
  result = qword_1000DC6C8;
  if (!qword_1000DC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6C8);
  }

  return result;
}

unint64_t sub_10003E7D0()
{
  result = qword_1000DC6D0;
  if (!qword_1000DC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6D0);
  }

  return result;
}

unint64_t sub_10003E828()
{
  result = qword_1000DC6D8;
  if (!qword_1000DC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6D8);
  }

  return result;
}

unint64_t sub_10003E880()
{
  result = qword_1000DC6E0;
  if (!qword_1000DC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6E0);
  }

  return result;
}

unint64_t sub_10003E8D8()
{
  result = qword_1000DC6E8;
  if (!qword_1000DC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6E8);
  }

  return result;
}

unint64_t sub_10003E930()
{
  result = qword_1000DC6F0;
  if (!qword_1000DC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6F0);
  }

  return result;
}

unint64_t sub_10003E988()
{
  result = qword_1000DC6F8;
  if (!qword_1000DC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6F8);
  }

  return result;
}

unint64_t sub_10003E9E0()
{
  result = qword_1000DC700;
  if (!qword_1000DC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC700);
  }

  return result;
}

unint64_t sub_10003EA38()
{
  result = qword_1000DC708;
  if (!qword_1000DC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC708);
  }

  return result;
}

unint64_t sub_10003EA90()
{
  result = qword_1000DC710;
  if (!qword_1000DC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC710);
  }

  return result;
}

unint64_t sub_10003EAE8()
{
  result = qword_1000DC718;
  if (!qword_1000DC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC718);
  }

  return result;
}

unint64_t sub_10003EB40()
{
  result = qword_1000DC720;
  if (!qword_1000DC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC720);
  }

  return result;
}

unint64_t sub_10003EB98()
{
  result = qword_1000DC728;
  if (!qword_1000DC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC728);
  }

  return result;
}

unint64_t sub_10003EBF0()
{
  result = qword_1000DC730;
  if (!qword_1000DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC730);
  }

  return result;
}

unint64_t sub_10003EC48()
{
  result = qword_1000DC738;
  if (!qword_1000DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC738);
  }

  return result;
}

unint64_t sub_10003ECA0()
{
  result = qword_1000DC740;
  if (!qword_1000DC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC740);
  }

  return result;
}

unint64_t sub_10003ECF8()
{
  result = qword_1000DC748;
  if (!qword_1000DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC748);
  }

  return result;
}

unint64_t sub_10003ED50()
{
  result = qword_1000DC750;
  if (!qword_1000DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC750);
  }

  return result;
}

unint64_t sub_10003EDA8()
{
  result = qword_1000DC758;
  if (!qword_1000DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC758);
  }

  return result;
}

unint64_t sub_10003EE00()
{
  result = qword_1000DC760;
  if (!qword_1000DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC760);
  }

  return result;
}

unint64_t sub_10003EE58()
{
  result = qword_1000DC768;
  if (!qword_1000DC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC768);
  }

  return result;
}

unint64_t sub_10003EEB0()
{
  result = qword_1000DC770;
  if (!qword_1000DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC770);
  }

  return result;
}

unint64_t sub_10003EF08()
{
  result = qword_1000DC778;
  if (!qword_1000DC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC778);
  }

  return result;
}

unint64_t sub_10003EF60()
{
  result = qword_1000DC780;
  if (!qword_1000DC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC780);
  }

  return result;
}

unint64_t sub_10003EFB8()
{
  result = qword_1000DC788;
  if (!qword_1000DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC788);
  }

  return result;
}

unint64_t sub_10003F010()
{
  result = qword_1000DC790;
  if (!qword_1000DC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC790);
  }

  return result;
}

unint64_t sub_10003F068()
{
  result = qword_1000DC798;
  if (!qword_1000DC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC798);
  }

  return result;
}

unint64_t sub_10003F0C0()
{
  result = qword_1000DC7A0;
  if (!qword_1000DC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC7A0);
  }

  return result;
}

unint64_t sub_10003F118()
{
  result = qword_1000DC7A8;
  if (!qword_1000DC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC7A8);
  }

  return result;
}

uint64_t sub_10003F16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001000A22A0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D64726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000A22C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001000A22E0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10003F410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10003F524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65764564726163 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000A2310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001000A2330 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10003F714(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 1952870259;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE500000000000000;
    if (a1 == 3)
    {
      v4 = 0x7976616568;
    }

    else
    {
      v4 = 0x6469676972;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x746867696CLL;
    }

    else
    {
      v8 = 1952870259;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7976616568;
    if (a2 != 3)
    {
      v5 = 0x6469676972;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_10003F874(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656369766564;
    }

    else
    {
      v3 = 0x7974697669746361;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001000A0B90;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7974706D65;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0x80000001000A0BB0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656369766564;
    }

    else
    {
      v9 = 0x7974697669746361;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x7974706D65;
    v6 = 0x80000001000A0BB0;
    if (a2 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000A0B90;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10003F9F8()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10003FAEC()
{
  sub_10003FA5C();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10003FB9C()
{
  sub_10003FB44();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void *sub_10003FBF4()
{
  type metadata accessor for Defaults();
  v0 = swift_allocObject();
  result = sub_1000414D4();
  qword_1000F3C58 = v0;
  return result;
}

uint64_t sub_10003FC30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74756F656D6974;
  }

  else
  {
    v4 = 0x6E6F74747562;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x74756F656D6974;
  }

  else
  {
    v6 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10003FCD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003FD54()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10003FDC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10003FE48(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F74747562;
  if (*v1)
  {
    v2 = 0x74756F656D6974;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10003FF50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100040034()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100040104()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000401E4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100045530(*a1);
  *a2 = result;
  return result;
}

void sub_100040214(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7974697669746361;
  v5 = 0x80000001000A0B90;
  v6 = 0xD000000000000012;
  v7 = 0xE500000000000000;
  v8 = 0x7974706D65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001000A0BB0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100040374()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0xD000000000000012;
  v4 = 0x7974706D65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100040410(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x737569646172;
  }

  else
  {
    v4 = 0x656C797473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x737569646172;
  }

  else
  {
    v6 = 0x656C797473;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000404B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004052C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100040594()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100040618@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_100040674(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x737569646172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100040778()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100040844()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000408FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000409C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004557C(*a1);
  *a2 = result;
  return result;
}

void sub_1000409F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952870259;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0x7976616568;
  if (v2 != 3)
  {
    v7 = 0x6469676972;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x746867696CLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100040B3C()
{
  v1 = *v0;
  v2 = 1952870259;
  v3 = 0x6D756964656DLL;
  v4 = 0x7976616568;
  if (v1 != 3)
  {
    v4 = 0x6469676972;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000411C0()
{
  sub_100040BC0();

  return _swift_deallocClassInstance(v0, 1528, 7);
}

unint64_t sub_100041294()
{
  result = qword_1000DEBF8;
  if (!qword_1000DEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEBF8);
  }

  return result;
}

unint64_t sub_10004131C()
{
  result = qword_1000DEC10;
  if (!qword_1000DEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC10);
  }

  return result;
}

unint64_t sub_1000413A4()
{
  result = qword_1000DEC28;
  if (!qword_1000DEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC28);
  }

  return result;
}

uint64_t sub_100041428(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100041480()
{
  result = qword_1000DEC40;
  if (!qword_1000DEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC40);
  }

  return result;
}

void *sub_1000414D4()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v634 = (&v631 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5, v7);
  v635 = (&v631 - v8);
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v9 = qword_1000F3D78;
  v10 = sub_1000056EC(&qword_1000DEC70, &qword_1000969E0);
  v11 = objc_allocWithZone(v10);
  v12 = v9;
  v13 = sub_100045718(0, 0xD000000000000014, 0x80000001000A3E20, v9);

  v1[2] = v13;
  v14 = objc_allocWithZone(v10);
  v15 = v12;
  v16 = sub_100045718(0, 0xD00000000000001ELL, 0x80000001000A3E40, v9);

  v1[3] = v16;
  v17 = objc_allocWithZone(v10);
  v18 = v15;
  v19 = sub_100045718(1, 0xD000000000000020, 0x80000001000A3E60, v9);

  v1[4] = v19;
  v20 = objc_allocWithZone(v10);
  v21 = v18;
  v22 = sub_100045718(0, 0xD000000000000023, 0x80000001000A3E90, v9);

  v1[5] = v22;
  v23 = objc_allocWithZone(v10);
  v24 = v21;
  v25 = sub_100045718(1, 0xD00000000000001FLL, 0x80000001000A3EC0, v9);

  v1[6] = v25;
  v26 = sub_1000056EC(&qword_1000DEC78, &qword_1000969E8);
  v645 = v26;
  v27 = objc_allocWithZone(v26);
  v28 = v24;
  v29 = sub_100045E04(0xD00000000000001ELL, 0x80000001000A3EE0, v9, &qword_1000DEC78, &qword_1000969E8, 8.0);

  v1[7] = v29;
  v30 = objc_allocWithZone(v10);
  v31 = v28;
  v32 = sub_100045718(1, 0xD000000000000017, 0x80000001000A3F00, v9);

  v1[8] = v32;
  v33 = objc_allocWithZone(v10);
  v34 = v31;
  v35 = sub_100045718(0, 0xD000000000000016, 0x80000001000A3F20, v9);

  v1[9] = v35;
  v36 = objc_allocWithZone(v26);
  v37 = v34;
  v38 = sub_100045E04(0xD000000000000021, 0x80000001000A3F40, v9, &qword_1000DEC78, &qword_1000969E8, 300.0);

  v1[10] = v38;
  v39 = objc_allocWithZone(v10);
  v40 = v37;
  v41 = sub_100045718(0, 0xD000000000000017, 0x80000001000A3F70, v9);

  v1[11] = v41;
  v42 = objc_allocWithZone(v10);
  v43 = v40;
  v44 = sub_100045718(1, 0xD00000000000001DLL, 0x80000001000A3F90, v9);

  v1[12] = v44;
  v45 = objc_allocWithZone(v10);
  v46 = v43;
  v47 = sub_100045718(1, 0xD00000000000002ALL, 0x80000001000A3FB0, v9);

  v1[13] = v47;
  v48 = objc_allocWithZone(v10);
  v49 = v46;
  v644 = 0xD000000000000012;
  v50 = sub_100045718(0, 0xD000000000000012, 0x80000001000A3FE0, v9);

  v1[14] = v50;
  v51 = objc_allocWithZone(v10);
  v52 = v49;
  v643 = 0xD000000000000011;
  v53 = sub_100045718(0, 0xD000000000000011, 0x80000001000A4000, v9);

  v1[15] = v53;
  v54 = objc_allocWithZone(v10);
  v55 = v52;
  v56 = sub_100045718(1, 0xD000000000000011, 0x80000001000A4020, v9);

  v1[16] = v56;
  v57 = objc_allocWithZone(v10);
  v58 = v55;
  v59 = sub_100045718(0, 0x646F4D6775626564, 0xEE00737265696669, v9);

  v1[17] = v59;
  v60 = objc_allocWithZone(v10);
  v61 = v58;
  v636 = 0xD000000000000010;
  v62 = sub_100045718(1, 0xD000000000000010, 0x80000001000A4040, v9);

  v1[18] = v62;
  v63 = objc_allocWithZone(v10);
  v64 = v61;
  v65 = sub_100045718(1, 0xD000000000000016, 0x80000001000A4060, v9);

  v1[19] = v65;
  v66 = v645;
  v67 = objc_allocWithZone(v645);
  v68 = v64;
  v69 = sub_100045E04(0xD000000000000020, 0x80000001000A4080, v9, &qword_1000DEC78, &qword_1000969E8, 8.0);

  v1[20] = v69;
  v642 = sub_1000056EC(&qword_1000DEC80, &qword_1000969F0);
  v70 = objc_allocWithZone(v642);
  v71 = v68;
  v72 = sub_100046050(2, 0xD000000000000019, 0x80000001000A40B0, v9, &qword_1000DEC80, &qword_1000969F0);

  v1[21] = v72;
  v73 = objc_allocWithZone(v66);
  v74 = v71;
  v640 = 0xD000000000000013;
  v75 = sub_100045E04(0xD000000000000013, 0x80000001000A40D0, v9, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[22] = v75;
  v76 = objc_allocWithZone(v66);
  v77 = v74;
  v78 = sub_100045E04(0xD000000000000018, 0x80000001000A40F0, v9, &qword_1000DEC78, &qword_1000969E8, 30.0);

  v1[23] = v78;
  v79 = objc_allocWithZone(v66);
  v80 = v77;
  v81 = sub_100045E04(0xD000000000000016, 0x80000001000A4110, v9, &qword_1000DEC78, &qword_1000969E8, 10.0);

  v1[24] = v81;
  v82 = objc_allocWithZone(v66);
  v83 = v80;
  v84 = sub_100045E04(0xD00000000000001ELL, 0x80000001000A4130, v9, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[25] = v84;
  v85 = objc_allocWithZone(v10);
  v86 = v83;
  v87 = sub_100045718(1, 0xD00000000000001ALL, 0x80000001000A4150, v9);

  v1[26] = v87;
  v88 = objc_allocWithZone(v10);
  v89 = v86;
  v90 = sub_100045718(0, v644, 0x80000001000A4170, v9);

  v1[27] = v90;
  v91 = sub_1000056EC(&qword_1000DEC88, &qword_1000969F8);
  v92 = objc_allocWithZone(v91);
  v93 = v89;
  v94 = sub_100046728(2, 0xD000000000000022, 0x80000001000A4190, v9, &qword_1000DEC88, &qword_1000969F8);

  v1[28] = v94;
  v95 = objc_allocWithZone(v91);
  v96 = v93;
  v97 = sub_100046728(2, 0xD000000000000017, 0x80000001000A41C0, v9, &qword_1000DEC88, &qword_1000969F8);

  v1[29] = v97;
  v637 = v91;
  v98 = objc_allocWithZone(v91);
  v99 = v96;
  v100 = sub_100046728(2, 0xD000000000000019, 0x80000001000A41E0, v9, &qword_1000DEC88, &qword_1000969F8);

  v1[30] = v100;
  v101 = objc_allocWithZone(v91);
  v102 = v99;
  v103 = sub_100046728(2, 0xD000000000000020, 0x80000001000A4200, v9, &qword_1000DEC88, &qword_1000969F8);

  v1[31] = v103;
  v104 = objc_allocWithZone(v10);
  v105 = v102;
  v106 = sub_100045718(0, 0xD00000000000001BLL, 0x80000001000A4230, v9);

  v1[32] = v106;
  v107 = objc_allocWithZone(v10);
  v108 = v105;
  v109 = sub_100045718(1, 0xD000000000000020, 0x80000001000A4250, v9);

  v1[33] = v109;
  v110 = objc_allocWithZone(v10);
  v111 = v108;
  v112 = sub_100045718(0, 0xD000000000000024, 0x80000001000A4280, v9);

  v1[34] = v112;
  v113 = objc_allocWithZone(v10);
  v114 = v111;
  v115 = sub_100045718(0, 0xD00000000000001CLL, 0x80000001000A42B0, v9);

  v1[35] = v115;
  v116 = objc_allocWithZone(sub_1000056EC(&qword_1000DEC90, &qword_100096A00));
  v117 = v114;
  v118 = sub_100046294(0, 0x65756E69746E6F63, 0xEF72656767697254, v9, &qword_1000DEC90, &qword_100096A00);

  v1[36] = v118;
  v119 = objc_allocWithZone(v642);
  v120 = v117;
  v121 = sub_100046050(28, 0xD000000000000021, 0x80000001000A42D0, v9, &qword_1000DEC80, &qword_1000969F0);

  v1[37] = v121;
  v122 = sub_100046BC0(&_swiftEmptyArrayStorage);
  v123 = sub_1000056EC(&qword_1000DEC98, &qword_100096A08);
  v124 = objc_allocWithZone(v123);
  v125 = v120;
  v126 = sub_100046050(v122, 0x6761735564726163, 0xEA00000000007365, v9, &qword_1000DEC98, &qword_100096A08);

  v1[38] = v126;
  v127 = sub_100046BC0(&_swiftEmptyArrayStorage);
  v128 = objc_allocWithZone(v123);
  v129 = v125;
  v130 = sub_100046050(v127, 0x67617355746E6968, 0xEA00000000007365, v9, &qword_1000DEC98, &qword_100096A08);

  v1[39] = v130;
  v131 = sub_100046BC0(&_swiftEmptyArrayStorage);
  v132 = objc_allocWithZone(v123);
  v133 = v129;
  v134 = sub_100046050(v131, 0xD000000000000014, 0x80000001000A4300, v9, &qword_1000DEC98, &qword_100096A08);

  v1[40] = v134;
  v135 = sub_100046BC0(&_swiftEmptyArrayStorage);
  v136 = objc_allocWithZone(v123);
  v137 = v133;
  v138 = sub_100046050(v135, 0x726566736E617274, 0xEE00736567617355, v9, &qword_1000DEC98, &qword_100096A08);

  v1[41] = v138;
  v139 = objc_allocWithZone(v10);
  v140 = v137;
  v141 = v9;
  v142 = sub_100045718(0, 0xD000000000000016, 0x80000001000A4320, v9);

  v1[42] = v142;
  v143 = objc_allocWithZone(v10);
  v144 = v140;
  v145 = sub_100045718(0, 0xD000000000000016, 0x80000001000A4340, v9);

  v1[43] = v145;
  v641 = v10;
  v146 = objc_allocWithZone(v10);
  v147 = v144;
  v148 = sub_100045718(0, 0xD000000000000019, 0x80000001000A4360, v9);

  v1[44] = v148;
  v149 = objc_allocWithZone(v10);
  v150 = v147;
  v631 = v9;
  v151 = sub_100045718(0, v644, 0x80000001000A4380, v9);

  v1[45] = v151;
  v152 = type metadata accessor for Date();
  v153 = *(v152 - 1);
  v632 = *(v153 + 56);
  v633 = v153 + 56;
  v154 = v635;
  v632(v635, 1, 1, v152);
  v155 = v634;
  sub_100046CBC(v154, v634);
  v156 = sub_1000056EC(&qword_1000DECA0, &qword_100096A10);
  v638 = v156;
  v157 = objc_allocWithZone(v156);
  v158 = v150;
  v159 = sub_10004595C(v155, 0xD000000000000015, 0x80000001000A43A0, v141);

  sub_100046D2C(v154);
  v1[46] = v159;
  v639 = v152;
  v160 = v632;
  v632(v154, 1, 1, v152);
  sub_100046CBC(v154, v155);
  v161 = objc_allocWithZone(v156);
  v162 = v158;
  v163 = v631;
  v164 = sub_10004595C(v155, 0xD000000000000016, 0x80000001000A43C0, v631);

  sub_100046D2C(v154);
  v1[47] = v164;
  v160(v154, 1, 1, v152);
  sub_100046CBC(v154, v155);
  v165 = v638;
  v166 = objc_allocWithZone(v638);
  v167 = v162;
  v168 = sub_10004595C(v155, v643, 0x80000001000A43E0, v163);

  sub_100046D2C(v154);
  v1[48] = v168;
  v160(v154, 1, 1, v639);
  sub_100046CBC(v154, v155);
  v169 = objc_allocWithZone(v165);
  v170 = v167;
  v171 = sub_10004595C(v155, 0xD000000000000023, 0x80000001000A4400, v163);

  sub_100046D2C(v154);
  v1[49] = v171;
  v172 = objc_allocWithZone(v645);
  v173 = v170;
  v174 = sub_100045E04(0xD00000000000001FLL, 0x80000001000A4430, v163, &qword_1000DEC78, &qword_1000969E8, 86400.0);

  v1[50] = v174;
  v160(v154, 1, 1, v639);
  sub_100046CBC(v154, v155);
  v175 = objc_allocWithZone(v638);
  v176 = v173;
  v177 = sub_10004595C(v155, 0xD00000000000001ELL, 0x80000001000A4450, v163);

  sub_100046D2C(v154);
  v1[51] = v177;
  v178 = objc_allocWithZone(v642);
  v179 = v176;
  v180 = sub_100046050(0, 0xD00000000000001DLL, 0x80000001000A4470, v163, &qword_1000DEC80, &qword_1000969F0);

  v1[52] = v180;
  v181 = objc_allocWithZone(v637);
  v182 = v179;
  v183 = sub_100046728(1, 0xD00000000000001ALL, 0x80000001000A4490, v163, &qword_1000DEC88, &qword_1000969F8);

  v1[53] = v183;
  v184 = v645;
  v185 = objc_allocWithZone(v645);
  v186 = v182;
  v187 = v640;
  v188 = sub_100045E04(v640, 0x80000001000A44B0, v163, &qword_1000DEC78, &qword_1000969E8, -1.0);

  v1[54] = v188;
  v189 = objc_allocWithZone(v184);
  v190 = v186;
  v191 = sub_100045E04(0xD000000000000014, 0x80000001000A44D0, v163, &qword_1000DEC78, &qword_1000969E8, -1.0);

  v1[55] = v191;
  v192 = sub_1000056EC(&qword_1000DECA8, &qword_100096A18);
  v193 = objc_allocWithZone(v192);
  v194 = v190;
  v195 = sub_100046728(0, 0xD000000000000017, 0x80000001000A44F0, v163, &qword_1000DECA8, &qword_100096A18);

  v1[56] = v195;
  v196 = objc_allocWithZone(v192);
  v197 = v194;
  v198 = sub_100046728(1, 0xD000000000000018, 0x80000001000A4510, v163, &qword_1000DECA8, &qword_100096A18);

  v1[57] = v198;
  v199 = objc_allocWithZone(v192);
  v200 = v197;
  v201 = sub_100046728(2, 0xD000000000000017, 0x80000001000A4530, v163, &qword_1000DECA8, &qword_100096A18);

  v1[58] = v201;
  v202 = sub_1000056EC(&qword_1000DECB0, &qword_100096A20);
  v203 = objc_allocWithZone(v202);
  v204 = v200;
  v205 = v643;
  v206 = sub_100045BB8(0, 0, v643, 0x80000001000A4550, v163);

  v1[59] = v206;
  v639 = v202;
  v207 = objc_allocWithZone(v202);
  v208 = v204;
  v209 = sub_100045BB8(0, 0, 0xD000000000000016, 0x80000001000A4570, v163);

  v1[60] = v209;
  v210 = objc_allocWithZone(v202);
  v211 = v208;
  v212 = sub_100045BB8(0, 0, 0xD000000000000017, 0x80000001000A4590, v163);

  v1[61] = v212;
  v213 = v641;
  v214 = objc_allocWithZone(v641);
  v215 = v211;
  v216 = sub_100045718(0, 0xD000000000000025, 0x80000001000A45B0, v163);

  v1[62] = v216;
  v217 = objc_allocWithZone(v213);
  v218 = v215;
  v219 = sub_100045718(0, 0xD00000000000001CLL, 0x80000001000A45E0, v163);

  v1[63] = v219;
  v220 = objc_allocWithZone(v213);
  v221 = v218;
  v222 = sub_100045718(0, 0xD00000000000001FLL, 0x80000001000A4600, v163);

  v1[64] = v222;
  v223 = objc_allocWithZone(v213);
  v224 = v221;
  v225 = sub_100045718(0, v205, 0x80000001000A4620, v163);

  v1[65] = v225;
  v226 = objc_allocWithZone(v213);
  v227 = v224;
  v228 = sub_100045718(0, 0x656D6F4870696B73, 0xEC00000064726143, v163);

  v1[66] = v228;
  v229 = v645;
  v230 = objc_allocWithZone(v645);
  v231 = v227;
  v232 = sub_100045E04(v187, 0x80000001000A4640, v163, &qword_1000DEC78, &qword_1000969E8, 8.0);

  v1[67] = v232;
  v233 = objc_allocWithZone(v213);
  v234 = v231;
  v235 = sub_100045718(0, 0xD00000000000001BLL, 0x80000001000A4660, v163);

  v1[68] = v235;
  v236 = objc_allocWithZone(v229);
  v237 = v234;
  v238 = sub_100045E04(0xD00000000000001ELL, 0x80000001000A4680, v163, &qword_1000DEC78, &qword_1000969E8, 0.5);

  v1[69] = v238;
  v239 = sub_1000056EC(&qword_1000DECB8, &qword_100096A28);
  v240 = objc_allocWithZone(v239);
  v241 = v237;
  v242 = sub_100045E04(0xD00000000000001CLL, 0x80000001000A46A0, v163, &qword_1000DECB8, &qword_100096A28, 0.1);

  v1[70] = v242;
  v243 = objc_allocWithZone(v239);
  v244 = v241;
  v245 = sub_100045E04(0xD00000000000001DLL, 0x80000001000A46C0, v163, &qword_1000DECB8, &qword_100096A28, 0.1);

  v1[71] = v245;
  v246 = objc_allocWithZone(v239);
  v247 = v244;
  v248 = sub_100045E04(0xD000000000000022, 0x80000001000A46E0, v163, &qword_1000DECB8, &qword_100096A28, 1.2);

  v1[72] = v248;
  v249 = objc_allocWithZone(v239);
  v250 = v247;
  v251 = sub_100045E04(0xD000000000000023, 0x80000001000A4710, v163, &qword_1000DECB8, &qword_100096A28, -1.25);

  v1[73] = v251;
  v252 = objc_allocWithZone(v239);
  v253 = v250;
  v254 = sub_100045E04(0xD000000000000021, 0x80000001000A4740, v163, &qword_1000DECB8, &qword_100096A28, 25.0);

  v1[74] = v254;
  v255 = objc_allocWithZone(v239);
  v256 = v253;
  v257 = sub_100045E04(0xD000000000000022, 0x80000001000A4770, v163, &qword_1000DECB8, &qword_100096A28, 25.0);

  v1[75] = v257;
  v258 = objc_allocWithZone(v239);
  v259 = v256;
  v260 = sub_100045E04(0xD000000000000015, 0x80000001000A47A0, v163, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[76] = v260;
  v261 = objc_allocWithZone(sub_1000056EC(&qword_1000DECC0, &qword_100096A30));
  v262 = v259;
  v263 = sub_100046294(1, v636, 0x80000001000A47C0, v163, &qword_1000DECC0, &qword_100096A30);

  v1[77] = v263;
  v264 = objc_allocWithZone(v642);
  v265 = v262;
  v266 = sub_100046050(11, 0x72756C4264726163, 0xED0000656C797453, v163, &qword_1000DEC80, &qword_1000969F0);

  v1[78] = v266;
  v267 = objc_allocWithZone(v239);
  v268 = v265;
  v269 = sub_100045E04(0x72756C4264726163, 0xEE00737569646152, v163, &qword_1000DECB8, &qword_100096A28, 16.0);

  v1[79] = v269;
  v270 = v641;
  v271 = objc_allocWithZone(v641);
  v272 = v268;
  v273 = sub_100045718(0, 0xD000000000000018, 0x80000001000A47E0, v163);

  v1[80] = v273;
  v635 = v239;
  v274 = objc_allocWithZone(v239);
  v275 = v272;
  v276 = sub_100045E04(0xD000000000000014, 0x80000001000A4800, v163, &qword_1000DECB8, &qword_100096A28, 20.0);

  v1[81] = v276;
  v277 = objc_allocWithZone(v239);
  v278 = v275;
  v279 = sub_100045E04(0xD000000000000016, 0x80000001000A4820, v163, &qword_1000DECB8, &qword_100096A28, 20.0);

  v1[82] = v279;
  v280 = objc_allocWithZone(v270);
  v281 = v278;
  v282 = sub_100045718(1, 0xD000000000000019, 0x80000001000A4840, v163);

  v1[83] = v282;
  v283 = v645;
  v284 = objc_allocWithZone(v645);
  v285 = v281;
  v286 = sub_100045E04(v644, 0x80000001000A4860, v163, &qword_1000DEC78, &qword_1000969E8, 0.3);

  v1[84] = v286;
  v287 = objc_allocWithZone(v283);
  v288 = v285;
  v289 = sub_100045E04(0x617078456C6C6970, 0xEF656C616353646ELL, v163, &qword_1000DEC78, &qword_1000969E8, 1.3);

  v1[85] = v289;
  v290 = objc_allocWithZone(sub_1000056EC(&qword_1000DECC8, &qword_100096A38));
  v291 = v288;
  v292 = kCAMediaTimingFunctionEaseOut;
  v293 = sub_100046050(kCAMediaTimingFunctionEaseOut, 0xD00000000000001CLL, 0x80000001000A4880, v163, &qword_1000DECC8, &qword_100096A38);

  v1[86] = v293;
  v294 = objc_allocWithZone(sub_1000056EC(&qword_1000DECD0, &qword_100096A40));
  v295 = v291;
  v296 = sub_100046294(0, 0xD00000000000001CLL, 0x80000001000A48A0, v163, &qword_1000DECD0, &qword_100096A40);

  v1[87] = v296;
  v297 = objc_allocWithZone(sub_1000056EC(&qword_1000DECD8, &qword_100096A48));
  v298 = v295;
  v299 = sub_100046294(0, 0xD000000000000019, 0x80000001000A48C0, v163, &qword_1000DECD8, &qword_100096A48);

  v1[88] = v299;
  v300 = v641;
  v301 = objc_allocWithZone(v641);
  v302 = v298;
  v303 = sub_100045718(1, 0xD000000000000018, 0x80000001000A48E0, v163);

  v1[89] = v303;
  v304 = objc_allocWithZone(v283);
  v305 = v302;
  v306 = sub_100045E04(0xD000000000000014, 0x80000001000A4900, v163, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[90] = v306;
  v307 = objc_allocWithZone(v300);
  v308 = v305;
  v309 = sub_100045718(0, 0xD00000000000001FLL, 0x80000001000A4920, v163);

  v1[91] = v309;
  v310 = objc_allocWithZone(v300);
  v311 = v308;
  v312 = sub_100045718(1, v644, 0x80000001000A4940, v163);

  v1[92] = v312;
  v313 = objc_allocWithZone(v300);
  v314 = v311;
  v315 = sub_100045718(1, v640, 0x80000001000A4960, v163);

  v1[93] = v315;
  v316 = sub_1000056EC(&qword_1000DECE0, &qword_100096A50);
  v638 = v316;
  v317 = objc_allocWithZone(v316);
  v318 = v314;
  v319 = sub_1000464DC(0xD000000000000014, 0x80000001000A4980, v163, 0.15);

  v1[94] = v319;
  v320 = objc_allocWithZone(v316);
  v321 = v318;
  v322 = sub_1000464DC(0xD000000000000014, 0x80000001000A49A0, v163, 0.0);

  v1[95] = v322;
  v323 = sub_1000056EC(&qword_1000DECE8, &qword_100096A58);
  v324 = objc_allocWithZone(v323);
  v325 = v321;
  v326 = v643;
  v327 = sub_100046728(4, v643, 0x80000001000A49C0, v163, &qword_1000DECE8, &qword_100096A58);

  v1[96] = v327;
  v328 = v635;
  v329 = objc_allocWithZone(v635);
  v330 = v325;
  v331 = sub_100045E04(0xD000000000000015, 0x80000001000A49E0, v163, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[97] = v331;
  v332 = objc_allocWithZone(v323);
  v333 = v330;
  v334 = sub_100046728(3, v326, 0x80000001000A4A00, v163, &qword_1000DECE8, &qword_100096A58);

  v1[98] = v334;
  v335 = objc_allocWithZone(v328);
  v336 = v333;
  v337 = sub_100045E04(0xD000000000000015, 0x80000001000A4A20, v163, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[99] = v337;
  v338 = v641;
  v339 = objc_allocWithZone(v641);
  v340 = v336;
  v341 = sub_100045718(0, 0xD000000000000027, 0x80000001000A4A40, v163);

  v1[100] = v341;
  v342 = objc_allocWithZone(v338);
  v343 = v340;
  v344 = sub_100045718(0, 0xD000000000000032, 0x80000001000A4A70, v163);

  v1[101] = v344;
  v345 = objc_allocWithZone(v338);
  v346 = v343;
  v347 = sub_100045718(0, 0xD000000000000019, 0x80000001000A4AB0, v163);

  v1[102] = v347;
  v348 = objc_allocWithZone(v338);
  v349 = v346;
  v350 = sub_100045718(1, 0xD000000000000017, 0x80000001000A4AD0, v163);

  v1[103] = v350;
  v351 = objc_allocWithZone(v338);
  v352 = v349;
  v353 = sub_100045718(0, 0xD000000000000015, 0x80000001000A4AF0, v163);

  v1[104] = v353;
  v354 = objc_allocWithZone(v338);
  v355 = v352;
  v356 = sub_100045718(1, 0xD00000000000001ELL, 0x80000001000A4B10, v163);

  v1[105] = v356;
  v357 = objc_allocWithZone(v338);
  v358 = v355;
  v359 = sub_100045718(0, 0xD00000000000001BLL, 0x80000001000A4B30, v163);

  v1[106] = v359;
  v360 = v338;
  v361 = objc_allocWithZone(v338);
  v362 = v358;
  v363 = sub_100045718(0, 0xD000000000000017, 0x80000001000A4B50, v163);

  v1[107] = v363;
  v364 = v645;
  v365 = objc_allocWithZone(v645);
  v366 = v362;
  v367 = v643;
  v368 = sub_100045E04(v643, 0x80000001000A4B70, v163, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[108] = v368;
  v369 = objc_allocWithZone(v360);
  v370 = v366;
  v371 = sub_100045718(0, 0xD00000000000001ALL, 0x80000001000A1FE0, v163);

  v1[109] = v371;
  v372 = objc_allocWithZone(v360);
  v373 = v370;
  v374 = sub_100045718(0, 0xD000000000000016, 0x80000001000A2000, v163);

  v1[110] = v374;
  v375 = objc_allocWithZone(v360);
  v376 = v373;
  v377 = sub_100045718(0, v367, 0x80000001000A4B90, v163);

  v1[111] = v377;
  v378 = v635;
  v379 = objc_allocWithZone(v635);
  v380 = v376;
  v381 = sub_100045E04(0x706C416567646162, 0xEF6E696765426168, v163, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[112] = v381;
  v382 = objc_allocWithZone(v378);
  v383 = v380;
  v384 = sub_100045E04(0x706C416567646162, 0xED0000646E456168, v163, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[113] = v384;
  v385 = objc_allocWithZone(v364);
  v386 = v383;
  v387 = sub_100045E04(0x6C65446567646162, 0xEA00000000007961, v163, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[114] = v387;
  v388 = objc_allocWithZone(v364);
  v389 = v386;
  v390 = sub_100045E04(0x7275446567646162, 0xED00006E6F697461, v163, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[115] = v390;
  v391 = objc_allocWithZone(v378);
  v392 = v389;
  v393 = sub_100045E04(0x6163536567646162, 0xEF6E69676542656CLL, v163, &qword_1000DECB8, &qword_100096A28, 0.8);

  v1[116] = v393;
  v394 = objc_allocWithZone(v378);
  v395 = v392;
  v396 = sub_100045E04(0x6163536567646162, 0xED0000646E45656CLL, v163, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[117] = v396;
  v397 = objc_allocWithZone(v378);
  v398 = v395;
  v399 = sub_100045E04(0x68706C4172756C62, 0xEE006E6967654261, v163, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[118] = v399;
  v400 = objc_allocWithZone(v378);
  v401 = v398;
  v402 = sub_100045E04(0x68706C4172756C62, 0xEC000000646E4561, v163, &qword_1000DECB8, &qword_100096A28, 0.5);

  v1[119] = v402;
  v403 = objc_allocWithZone(v378);
  v404 = v401;
  v405 = sub_100045E04(0x6772614D72756C62, 0xEA00000000006E69, v163, &qword_1000DECB8, &qword_100096A28, 15.0);

  v1[120] = v405;
  v406 = objc_allocWithZone(v378);
  v407 = v404;
  v408 = sub_100045E04(0x6964615272756C62, 0xEA00000000007375, v163, &qword_1000DECB8, &qword_100096A28, 0.5);

  v1[121] = v408;
  v634 = sub_1000056EC(&qword_1000DECF0, &qword_100096A60);
  v409 = objc_allocWithZone(v634);
  v410 = v407;
  v411 = sub_10004696C(0, 1, 0xD00000000000001BLL, 0x80000001000A4BB0, v163);

  v1[122] = v411;
  v412 = objc_allocWithZone(v639);
  v413 = v410;
  v414 = sub_100045BB8(0, 0, 0xD000000000000016, 0x80000001000A4BD0, v163);

  v1[123] = v414;
  v415 = objc_allocWithZone(v378);
  v416 = v413;
  v417 = sub_100045E04(0x706C416569766F6DLL, 0xEF6E696765426168, v163, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[124] = v417;
  v418 = objc_allocWithZone(v378);
  v419 = v416;
  v420 = sub_100045E04(0x706C416569766F6DLL, 0xED0000646E456168, v163, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[125] = v420;
  v421 = objc_allocWithZone(v645);
  v422 = v419;
  v423 = v644;
  v424 = sub_100045E04(v644, 0x80000001000A4BF0, v163, &qword_1000DEC78, &qword_1000969E8, 0.5);

  v1[126] = v424;
  v425 = objc_allocWithZone(v378);
  v426 = v422;
  v427 = sub_100045E04(0x6163536569766F6DLL, 0xEF6E69676542656CLL, v163, &qword_1000DECB8, &qword_100096A28, 0.1);

  v1[127] = v427;
  v428 = objc_allocWithZone(v378);
  v429 = v426;
  v430 = sub_100045E04(0x6163536569766F6DLL, 0xED0000646E45656CLL, v163, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[128] = v430;
  v431 = objc_allocWithZone(v378);
  v432 = v429;
  v433 = sub_100045E04(v423, 0x80000001000A4C10, v163, &qword_1000DECB8, &qword_100096A28, 10.0);

  v1[129] = v433;
  v434 = objc_allocWithZone(v378);
  v435 = v432;
  v436 = sub_100045E04(0x6461506569766F6DLL, 0xEF706F54676E6964, v163, &qword_1000DECB8, &qword_100096A28, -25.0);

  v1[130] = v436;
  v437 = v645;
  v438 = objc_allocWithZone(v645);
  v439 = v435;
  v440 = sub_100045E04(0xD000000000000016, 0x80000001000A4C30, v163, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[131] = v440;
  v441 = objc_allocWithZone(v378);
  v442 = v439;
  v443 = sub_100045E04(0xD000000000000016, 0x80000001000A4C50, v163, &qword_1000DECB8, &qword_100096A28, 50.0);

  v1[132] = v443;
  v444 = objc_allocWithZone(v378);
  v445 = v442;
  v446 = sub_100045E04(0xD000000000000014, 0x80000001000A4C70, v163, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[133] = v446;
  v447 = objc_allocWithZone(v437);
  v448 = v445;
  v449 = sub_100045E04(v643, 0x80000001000A4C90, v163, &qword_1000DEC78, &qword_1000969E8, 5.0);

  v1[134] = v449;
  v450 = v641;
  v451 = objc_allocWithZone(v641);
  v452 = v448;
  v453 = sub_100045718(0, 0x49556775626564, 0xE700000000000000, v163);

  v1[135] = v453;
  v454 = objc_allocWithZone(v450);
  v455 = v452;
  v456 = sub_100045718(0, 0x655265726F6E6769, 0xEA00000000006C61, v163);

  v1[136] = v456;
  v457 = objc_allocWithZone(v378);
  v458 = v455;
  v459 = sub_100045E04(0xD000000000000014, 0x80000001000A4CB0, v163, &qword_1000DECB8, &qword_100096A28, 1.2);

  v1[137] = v459;
  v460 = objc_allocWithZone(v378);
  v461 = v458;
  v462 = sub_100045E04(0xD000000000000015, 0x80000001000A4CD0, v163, &qword_1000DECB8, &qword_100096A28, 50.0);

  v1[138] = v462;
  v463 = v639;
  v464 = objc_allocWithZone(v639);
  v465 = v461;
  v466 = sub_100045BB8(0, 0, 0x497070416F6D6544, 0xEB000000006E6F63, v163);

  v1[139] = v466;
  v467 = objc_allocWithZone(v634);
  v468 = v465;
  v469 = sub_10004696C(0, 1, 0x67616D496F6D6544, 0xE900000000000065, v163);

  v1[140] = v469;
  v470 = objc_allocWithZone(v463);
  v471 = v468;
  v472 = sub_100045BB8(0, 0, 0x656D614E6F6D6544, 0xE800000000000000, v163);

  v1[141] = v472;
  v473 = objc_allocWithZone(v463);
  v474 = v471;
  v475 = sub_100045BB8(0, 0, 0x746275536F6D6544, 0xEB00000000747865, v163);

  v1[142] = v475;
  v476 = objc_allocWithZone(v450);
  v477 = v474;
  v478 = sub_100045718(0, 0xD000000000000024, 0x80000001000A4CF0, v163);

  v1[143] = v478;
  v479 = objc_allocWithZone(v463);
  v480 = v477;
  v481 = sub_100045BB8(0, 0, 0xD000000000000022, 0x80000001000A4D20, v163);

  v1[144] = v481;
  v482 = objc_allocWithZone(v642);
  v483 = v480;
  v484 = sub_100046050(0, 0x7543636974706168, 0xEB00000000657672, v163, &qword_1000DEC80, &qword_1000969F0);

  v1[145] = v484;
  v485 = objc_allocWithZone(v450);
  v486 = v483;
  v487 = v644;
  v488 = sub_100045718(1, v644, 0x80000001000A4D50, v163);

  v1[146] = v488;
  v489 = v645;
  v490 = objc_allocWithZone(v645);
  v491 = v486;
  v492 = sub_100045E04(0x7246636974706168, 0xEF79636E65757165, v163, &qword_1000DEC78, &qword_1000969E8, 60.0);

  v1[147] = v492;
  v493 = v638;
  v494 = objc_allocWithZone(v638);
  v495 = v491;
  v496 = sub_1000464DC(v487, 0x80000001000A4D70, v163, 0.65);

  v1[148] = v496;
  v497 = objc_allocWithZone(v493);
  v498 = v495;
  v499 = sub_1000464DC(v487, 0x80000001000A4D90, v163, 0.0);

  v1[149] = v499;
  v500 = v493;
  v501 = objc_allocWithZone(v493);
  v502 = v498;
  v503 = v636;
  v504 = sub_1000464DC(v636, 0x80000001000A4DB0, v163, 0.15);

  v1[150] = v504;
  v505 = objc_allocWithZone(v500);
  v506 = v502;
  v507 = sub_1000464DC(v503, 0x80000001000A4DD0, v163, 0.15);

  v1[151] = v507;
  v508 = objc_allocWithZone(v489);
  v509 = v506;
  v510 = sub_100045E04(0x664F636974706168, 0xEC00000074657366, v163, &qword_1000DEC78, &qword_1000969E8, 0.3);

  v1[152] = v510;
  v511 = objc_allocWithZone(v489);
  v512 = v509;
  v513 = v640;
  v514 = sub_100045E04(v640, 0x80000001000A4DF0, v163, &qword_1000DEC78, &qword_1000969E8, 0.8425);

  v1[153] = v514;
  v515 = objc_allocWithZone(v489);
  v516 = v512;
  v517 = sub_100045E04(0xD00000000000001CLL, 0x80000001000A4E10, v163, &qword_1000DEC78, &qword_1000969E8, 0.0625);

  v1[154] = v517;
  v518 = objc_allocWithZone(v489);
  v519 = v516;
  v520 = sub_100045E04(0xD000000000000014, 0x80000001000A4E30, v163, &qword_1000DEC78, &qword_1000969E8, 0.4);

  v1[155] = v520;
  v521 = objc_allocWithZone(v489);
  v522 = v519;
  v523 = sub_100045E04(0xD00000000000001DLL, 0x80000001000A4E50, v163, &qword_1000DEC78, &qword_1000969E8, 0.125);

  v1[156] = v523;
  v524 = objc_allocWithZone(v489);
  v525 = v522;
  v526 = sub_100045E04(0xD00000000000001BLL, 0x80000001000A4E70, v163, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[157] = v526;
  v527 = v641;
  v528 = objc_allocWithZone(v641);
  v529 = v525;
  v530 = sub_100045718(0, v644, 0x80000001000A4E90, v163);

  v1[158] = v530;
  v531 = objc_allocWithZone(v527);
  v532 = v529;
  v533 = sub_100045718(1, 0x6D53676E69727073, 0xEF676E6968746F6FLL, v163);

  v1[159] = v533;
  v534 = objc_allocWithZone(v527);
  v535 = v532;
  v536 = sub_100045718(0, 0xD000000000000017, 0x80000001000A4EB0, v163);

  v1[160] = v536;
  v537 = objc_allocWithZone(v642);
  v538 = v535;
  v539 = sub_100046050(-60, 0xD000000000000014, 0x80000001000A4ED0, v163, &qword_1000DEC80, &qword_1000969F0);

  v1[161] = v539;
  v540 = v638;
  v541 = objc_allocWithZone(v638);
  v542 = v538;
  v543 = sub_1000464DC(0xD000000000000018, 0x80000001000A4EF0, v163, 4.0);

  v1[162] = v543;
  v544 = objc_allocWithZone(v540);
  v545 = v542;
  v546 = sub_1000464DC(v513, 0x80000001000A4F10, v163, 0.3);

  v1[163] = v546;
  v547 = v637;
  v548 = objc_allocWithZone(v637);
  v549 = v545;
  v550 = sub_100046728(2, 0x7365526563726F66, 0xEE007265646E6F70, v163, &qword_1000DEC88, &qword_1000969F8);

  v1[164] = v550;
  v551 = objc_allocWithZone(v527);
  v552 = v549;
  v553 = sub_100045718(0, 0xD000000000000018, 0x80000001000A4F30, v163);

  v1[165] = v553;
  v554 = v527;
  v555 = objc_allocWithZone(v527);
  v556 = v552;
  v557 = sub_100045718(1, 0xD000000000000014, 0x80000001000A4F50, v163);

  v1[166] = v557;
  v558 = objc_allocWithZone(v527);
  v559 = v556;
  v560 = sub_100045718(1, 0x45676E69676E6172, 0xEF646563726F666ELL, v163);

  v1[167] = v560;
  v561 = objc_allocWithZone(v547);
  v562 = v559;
  v563 = sub_100046728(2, 0xD00000000000001BLL, 0x80000001000A4F70, v163, &qword_1000DEC88, &qword_1000969F8);

  v1[168] = v563;
  v564 = objc_allocWithZone(v639);
  v565 = v562;
  v566 = sub_100045BB8(0, 0, v643, 0x80000001000A4F90, v163);

  v1[169] = v566;
  v567 = objc_allocWithZone(v527);
  v568 = v565;
  v569 = sub_100045718(1, 0x746552776F6C6C61, 0xEC00000073656972, v163);

  v1[170] = v569;
  v570 = v642;
  v571 = objc_allocWithZone(v642);
  v572 = v568;
  v573 = sub_100046050(0, 0xD000000000000018, 0x80000001000A2080, v163, &qword_1000DEC80, &qword_1000969F0);

  v1[171] = v573;
  v574 = objc_allocWithZone(v570);
  v575 = v572;
  v576 = sub_100046050(0, 0xD000000000000016, 0x80000001000A20A0, v163, &qword_1000DEC80, &qword_1000969F0);

  v1[172] = v576;
  v577 = objc_allocWithZone(v645);
  v578 = v575;
  v579 = sub_100045E04(0xD00000000000001DLL, 0x80000001000A4FB0, v163, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[173] = v579;
  v580 = objc_allocWithZone(v554);
  v581 = v578;
  v582 = sub_100045718(0, 0x44676E69676E6172, 0xEF64656C62617369, v163);

  v1[174] = v582;
  v583 = v638;
  v584 = objc_allocWithZone(v638);
  v585 = v581;
  v586 = sub_1000464DC(v643, 0x80000001000A4FD0, v163, 10.0);

  v1[175] = v586;
  v587 = objc_allocWithZone(v583);
  v588 = v585;
  v589 = sub_1000464DC(0x6E61747369447462, 0xEF656772614C6563, v163, 10.0);

  v1[176] = v589;
  v590 = objc_allocWithZone(v583);
  v591 = v588;
  v592 = sub_1000464DC(0x6E61747369447462, 0xEF726568744F6563, v163, 10.0);

  v1[177] = v592;
  v593 = objc_allocWithZone(v583);
  v594 = v591;
  v595 = sub_1000464DC(0xD000000000000018, 0x80000001000A4FF0, v163, 0.5);

  v1[178] = v595;
  v596 = objc_allocWithZone(v583);
  v597 = v594;
  v598 = sub_1000464DC(0xD000000000000016, 0x80000001000A2040, v163, 0.075);

  v1[179] = v598;
  v599 = objc_allocWithZone(v583);
  v600 = v597;
  v601 = sub_1000464DC(0xD000000000000014, 0x80000001000A2060, v163, 0.13);

  v1[180] = v601;
  v602 = objc_allocWithZone(v583);
  v603 = v600;
  v604 = sub_1000464DC(0xD000000000000014, 0x80000001000A5010, v163, 0.16);

  v1[181] = v604;
  v605 = objc_allocWithZone(v583);
  v606 = v603;
  v607 = sub_1000464DC(0xD00000000000001ALL, 0x80000001000A5030, v163, 2.0);

  v1[182] = v607;
  v608 = objc_allocWithZone(v583);
  v609 = v606;
  v610 = sub_1000464DC(0xD000000000000018, 0x80000001000A5050, v163, 2.0);

  v1[183] = v610;
  v611 = objc_allocWithZone(v583);
  v612 = v609;
  v613 = sub_1000464DC(0xD000000000000018, 0x80000001000A5070, v163, 2.0);

  v1[184] = v613;
  v614 = objc_allocWithZone(v583);
  v615 = v612;
  v616 = sub_1000464DC(0xD00000000000001BLL, 0x80000001000A5090, v163, 1.25);

  v1[185] = v616;
  v617 = objc_allocWithZone(v583);
  v618 = v615;
  v619 = sub_1000464DC(0xD000000000000019, 0x80000001000A50B0, v163, 1.25);

  v1[186] = v619;
  v620 = objc_allocWithZone(v583);
  v621 = v618;
  v622 = sub_1000464DC(0xD000000000000019, 0x80000001000A50D0, v163, 1.25);

  v1[187] = v622;
  v623 = objc_allocWithZone(v583);
  v624 = v621;
  v625 = sub_1000464DC(0xD000000000000016, 0x80000001000A50F0, v163, 0.3);

  v1[188] = v625;
  v626 = objc_allocWithZone(v583);
  v627 = sub_1000464DC(0xD000000000000014, 0x80000001000A5110, v163, 0.36);

  v1[189] = v627;
  v628 = objc_allocWithZone(v583);
  v629 = sub_1000464DC(0xD000000000000014, 0x80000001000A5130, v163, 0.36);

  v1[190] = v629;
  return v1;
}

unint64_t sub_100045054(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000451E8(a1, a2, v6);
}

unint64_t sub_1000450CC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000452A0(a1, v4);
}

unint64_t sub_100045110(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100045368(a1, v4);
}

unint64_t sub_100045154(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10004542C(a1, v4);
}

unint64_t sub_1000451E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000452A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100046D94(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000EEEC(v8);
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

unint64_t sub_100045368(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100046EE0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004542C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_100045530(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C6E40, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10004557C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C6ED8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000455C8()
{
  result = qword_1000DEC48;
  if (!qword_1000DEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC48);
  }

  return result;
}

unint64_t sub_10004561C()
{
  result = qword_1000DEC50;
  if (!qword_1000DEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC50);
  }

  return result;
}

unint64_t sub_100045670()
{
  result = qword_1000DEC58;
  if (!qword_1000DEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC58);
  }

  return result;
}

unint64_t sub_1000456C4()
{
  result = qword_1000DEC60;
  if (!qword_1000DEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC60);
  }

  return result;
}

id sub_100045718(char a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a1;
  v16 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v16 = a2;
  v16[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v22, "UserDefault-");
  HIBYTE(v22[6]) = 0;
  v22[7] = -5120;
  v17 = a4;

  v18._countAndFlagsBits = a2;
  v18._object = a3;
  String.append(_:)(v18);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v15, v10);
  v19 = sub_1000056EC(&qword_1000DEC70, &qword_1000969E0);
  v21.receiver = v5;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_10004595C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  sub_100046CBC(a1, v5 + *((swift_isaMask & *v5) + 0x60));
  v16 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v16 = a2;
  v16[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v23, "UserDefault-");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  v17 = a4;

  v18._countAndFlagsBits = a2;
  v18._object = a3;
  String.append(_:)(v18);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v15, v10);
  v19 = sub_1000056EC(&qword_1000DECA0, &qword_100096A10);
  v22.receiver = v5;
  v22.super_class = v19;
  v20 = objc_msgSendSuper2(&v22, "init");
  sub_100046D2C(a1);
  return v20;
}

id sub_100045BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + *((swift_isaMask & *v6) + 0x88)) = 0;
  v18 = (v6 + *((swift_isaMask & *v6) + 0x60));
  *v18 = a1;
  v18[1] = a2;
  v19 = (v6 + *((swift_isaMask & *v6) + 0x68));
  *v19 = a3;
  v19[1] = a4;
  *(v6 + *((swift_isaMask & *v6) + 0x70)) = a5;
  *(v6 + *((swift_isaMask & *v6) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v20 = a5;

  v21._countAndFlagsBits = a3;
  v21._object = a4;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v13 + 32))(v6 + *((swift_isaMask & *v6) + 0x80), v17, v12);
  v22 = sub_1000056EC(&qword_1000DECB0, &qword_100096A20);
  v24.receiver = v6;
  v24.super_class = v22;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_100045E04(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v25 = a5;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a6;
  v19 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v19 = a1;
  v19[1] = a2;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v27, "UserDefault-");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v20 = a3;

  v21._countAndFlagsBits = a1;
  v21._object = a2;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v18, v13);
  v22 = sub_1000056EC(a4, v25);
  v26.receiver = v8;
  v26.super_class = v22;
  return objc_msgSendSuper2(&v26, "init");
}

id sub_100046050(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v25 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v19 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v19 = a2;
  v19[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v27, "UserDefault-");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v20 = a4;

  v21._countAndFlagsBits = a2;
  v21._object = a3;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v18, v13);
  v22 = sub_1000056EC(a5, v25);
  v26.receiver = v8;
  v26.super_class = v22;
  return objc_msgSendSuper2(&v26, "init");
}

id sub_100046294(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v25 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1 & 1;
  v19 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v19 = a2;
  v19[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v27, "UserDefault-");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v20 = a4;

  v21._countAndFlagsBits = a2;
  v21._object = a3;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v18, v13);
  v22 = sub_1000056EC(a5, v25);
  v26.receiver = v8;
  v26.super_class = v22;
  return objc_msgSendSuper2(&v26, "init");
}

id sub_1000464DC(uint64_t a1, void *a2, void *a3, float a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a4;
  v16 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v16 = a1;
  v16[1] = a2;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v22, "UserDefault-");
  HIBYTE(v22[6]) = 0;
  v22[7] = -5120;
  v17 = a3;

  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v15, v10);
  v19 = sub_1000056EC(&qword_1000DECE0, &qword_100096A50);
  v21.receiver = v5;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_100046728(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v25 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v19 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v19 = a2;
  v19[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v27, "UserDefault-");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v20 = a4;

  v21._countAndFlagsBits = a2;
  v21._object = a3;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v18, v13);
  v22 = sub_1000056EC(a5, v25);
  v26.receiver = v8;
  v26.super_class = v22;
  return objc_msgSendSuper2(&v26, "init");
}

id sub_10004696C(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + *((swift_isaMask & *v6) + 0x88)) = 0;
  v18 = v6 + *((swift_isaMask & *v6) + 0x60);
  *v18 = a1;
  v18[8] = a2 & 1;
  v19 = (v6 + *((swift_isaMask & *v6) + 0x68));
  *v19 = a3;
  v19[1] = a4;
  *(v6 + *((swift_isaMask & *v6) + 0x70)) = a5;
  *(v6 + *((swift_isaMask & *v6) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v20 = a5;

  v21._countAndFlagsBits = a3;
  v21._object = a4;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v13 + 32))(v6 + *((swift_isaMask & *v6) + 0x80), v17, v12);
  v22 = sub_1000056EC(&qword_1000DECF0, &qword_100096A60);
  v24.receiver = v6;
  v24.super_class = v22;
  return objc_msgSendSuper2(&v24, "init");
}

unint64_t sub_100046BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000056EC(&qword_1000DECF8, &qword_100096A68);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100045054(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}