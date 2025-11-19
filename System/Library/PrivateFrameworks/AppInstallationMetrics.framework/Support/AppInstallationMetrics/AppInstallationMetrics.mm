uint64_t sub_1000018D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v25 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_container;
  v11 = *(v6 + 16);
  v11(v3 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_container, a1, v5);
  sub_100002A8C();
  v12 = static AMSCachedBag.makeBag(bagService:)();
  v13 = objc_allocWithZone(AMSMetrics);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithContainerID:v14 bag:v12];

  swift_unknownObjectRelease();
  type metadata accessor for ASEMetrics();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = v15;
  [v17 setFlushTimerEnabled:0];
  [v17 setIncludeMMeClientInfoAndDeviceHeaders:1];
  [v17 setMetricsSigningFlavour:1];
  v11(v9, v3 + v10, v5);
  v18 = type metadata accessor for InstallationEventManager();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  swift_defaultActor_initialize();

  v22 = type metadata accessor for BagService();
  (*(*(v22 - 8) + 8))(v24, v22);
  (*(v6 + 8))(v25, v5);
  (*(v6 + 32))(v21 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_container, v9, v5);
  *(v21 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_aseMetrics) = v16;
  *(v3 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager) = v21;
  return v3;
}

uint64_t sub_100001B60()
{
  v1 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_container;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100001C0C(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v9 = sub_100002AD8(&qword_1000393F0, &unk_10002A3D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v18 = container_system_path_for_identifier();
  if (v50 <= 1 && v18)
  {
    v19 = v18;
    (*(v14 + 56))(v12, 1, 1, v13);
    v47 = v19;
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_100002B20(v12);
    if ((sub_10000F7B4() & 1) == 0)
    {
      static Logger.general.getter();
      v20 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v46))
      {
        v21 = swift_slowAlloc();
        v45 = v21;
        v44 = swift_slowAlloc();
        v51 = v44;
        *v21 = 136315138;
        swift_beginAccess();
        sub_1000026E8(&qword_100039400, &type metadata accessor for URL);
        v43 = v20;
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = sub_10001DC98(v22, v23, &v51);

        v25 = v45;
        *(v45 + 1) = v24;
        v20 = v43;
        _os_log_impl(&_mh_execute_header, v43, v46, "Updating %s to exclude from backup", v25, 0xCu);
        sub_100002B88(v44);
      }

      (*(v2 + 8))(v8, v1);
      swift_beginAccess();
      sub_10000FBC4(1);
      swift_endAccess();
    }

    v26 = [objc_opt_self() defaultManager];
    swift_beginAccess();
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v49 = 0;
    v30 = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v49];

    v31 = v49;
    if (v30)
    {
      (*(v14 + 16))(v48, v17, v13);
      v32 = *(v14 + 8);
      v33 = v31;
      v32(v17, v13);
    }

    else
    {
      v41 = v49;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v14 + 8))(v17, v13);
    }

    v40 = v47;
LABEL_15:
    free(v40);
    return;
  }

  v34 = v18;
  static Logger.general.getter();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    swift_beginAccess();
    *(v37 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v35, v36, "Unable to obtain container path: error %llu", v37, 0xCu);
  }

  (*(v2 + 8))(v6, v1);
  swift_beginAccess();
  v38 = v50;
  type metadata accessor for container_error_t(0);
  sub_1000026E8(&qword_1000393F8, type metadata accessor for container_error_t);
  swift_allocError();
  *v39 = v38;
  swift_willThrow();
  v40 = v34;
  if (v34)
  {
    goto LABEL_15;
  }
}

uint64_t sub_10000220C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026E8(&qword_1000393D8, type metadata accessor for container_error_t);
  v5 = sub_100002A38();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t type metadata accessor for Dependencies()
{
  result = qword_1000392A8;
  if (!qword_1000392A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000022F0()
{
  result = type metadata accessor for URL();
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

__n128 sub_10000238C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000239C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000023BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_100002420@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002454(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000024D0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002554@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000259C(uint64_t a1)
{
  v2 = sub_1000026E8(&qword_1000393C8, type metadata accessor for AMSBagKey);
  v3 = sub_1000026E8(&qword_1000393D0, type metadata accessor for AMSBagKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000026E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002734@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000277C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000027A8(uint64_t a1)
{
  v2 = sub_1000026E8(&qword_100039440, type metadata accessor for URLResourceKey);
  v3 = sub_1000026E8(&qword_100039448, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002864()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000028A0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000028F4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100002968(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_100002A38()
{
  result = qword_1000393E0;
  if (!qword_1000393E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393E0);
  }

  return result;
}

unint64_t sub_100002A8C()
{
  result = qword_1000393E8;
  if (!qword_1000393E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000393E8);
  }

  return result;
}

uint64_t sub_100002AD8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002B20(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_1000393F0, &unk_10002A3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002B88(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_100002C10(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002C3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100002C7C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100002E8C, v3, 0);
}

uint64_t sub_100002E8C()
{
  v1 = &_swiftEmptyArrayStorage;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  v2 = (v0 + 16);
  if (sub_100007EFC(*(v0 + 24), *(v0 + 32), *(v0 + 40)))
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = *v2;
  }

  *(v0 + 80) = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v3 = *(*(v0 + 48) + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_aseMetrics);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_100003138;
    v5 = *(v0 + 40);

    return sub_1000032C4(v1, v5);
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 40);

  static Logger.events.getter();
  v9 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v12;
    *v14 = v12;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Failed to generate an AMS metrics event", v13, 0xCu);
    sub_10000D6F8(v14, &qword_100039DA0, &qword_10002A740);
  }

  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 56);

  (*(v17 + 8))(v16, v18);
  v19 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100003138()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_100003264, v3, 0);
}

uint64_t sub_100003264()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000032C4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_100002AD8(&qword_100039608, &qword_10002A7A8);
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_100003414, 0, 0);
}

uint64_t sub_100003414()
{
  v69 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  static Logger.metrics.getter();
  swift_bridgeObjectRetain_n();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2050;
    if (v7 >> 62)
    {
      if (*(v0 + 144) < 0)
      {
        v65 = *(v0 + 144);
      }

      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = *(v0 + 144);
    v13 = *(v0 + 152);

    *(v9 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Preparing to enqueue %{public}ld events", v9, 0x16u);
    sub_10000D6F8(v10, &qword_100039DA0, &qword_10002A740);
  }

  else
  {
    v7 = *(v0 + 144);
    swift_bridgeObjectRelease_n();
  }

  v14 = *(v0 + 232);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = *(v0 + 144);
  v18 = *(v16 + 8);
  *(v0 + 240) = v18;
  *(v0 + 248) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67 = v18;
  v18(v14, v15);
  v68 = &_swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
LABEL_33:
    v19 = v7 & 0xFFFFFFFFFFFFFF8;
    if (*(v0 + 144) < 0)
    {
      v47 = *(v0 + 144);
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = v7 & 0xFFFFFFFFFFFFFF8;
    v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  v22 = v7 & 0xC000000000000001;
  v23 = *(v0 + 144) + 32;
  v24 = &_swiftEmptyArrayStorage;
  while (v20 != v21)
  {
    if (v22)
    {
      v27 = *(v0 + 144);
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_32;
      }

      v7 = *(v23 + 8 * v21);

      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v26 = sub_1000097BC(v7, *(v0 + 152));

    ++v21;
    if (v26)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 = &v68;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v24 = v68;
      v21 = v25;
    }
  }

  if (v24 >> 62)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
    v29 = *(v0 + 152);
    if (v48)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v29 = *(v0 + 152);
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      v30 = *(v0 + 216);
      static Logger.metrics.getter();
      swift_bridgeObjectRetain_n();
      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 152);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412546;
        *(v35 + 4) = v34;
        *v36 = v34;
        *(v35 + 12) = 2050;
        if (v24 >> 62)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v37 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = *(v0 + 152);

        *(v35 + 14) = v37;

        _os_log_impl(&_mh_execute_header, v32, v33, "[%@] Enqueueing %{public}ld events", v35, 0x16u);
        sub_10000D6F8(v36, &qword_100039DA0, &qword_10002A740);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v39 = *(v0 + 184);
      v40 = *(v0 + 168);
      v41 = *(v0 + 176);
      v42 = *(v0 + 160);
      v67(*(v0 + 216), *(v0 + 192));
      v43 = *(v42 + 16);
      sub_10000D5F8(0, &qword_100039610, AMSMetricsEvent_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v45 = [v43 promiseForEnqueueingEvents:isa];
      *(v0 + 256) = v45;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 280;
      *(v0 + 24) = sub_100003B90;
      swift_continuation_init();
      *(v0 + 136) = v40;
      v46 = sub_10000D510((v0 + 112));
      sub_100002AD8(&qword_100039D90, &qword_10002A770);
      CheckedContinuation.init(continuation:function:)();
      (*(v41 + 32))(v46, v39, v40);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1000069C4;
      *(v0 + 104) = &unk_100035908;
      [v45 resultWithTimeout:v0 + 80 completion:120.0];
      (*(v41 + 8))(v46, v40);

      return _swift_continuation_await(v0 + 16);
    }
  }

  v49 = *(v0 + 224);

  static Logger.metrics.getter();
  v50 = v29;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v53;
    *v55 = v53;
    v56 = v53;
    _os_log_impl(&_mh_execute_header, v51, v52, "[%@] No AMSMetricsEvents to enqueue", v54, 0xCu);
    sub_10000D6F8(v55, &qword_100039DA0, &qword_10002A740);
  }

  v57 = *(v0 + 224);
  v58 = *(v0 + 192);

  v67(v57, v58);
  v60 = *(v0 + 224);
  v59 = *(v0 + 232);
  v62 = *(v0 + 208);
  v61 = *(v0 + 216);
  v63 = *(v0 + 184);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_100003B90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_100003EC8;
  }

  else
  {
    v3 = sub_100003CA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003CA0()
{
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_100003D34;
  v2 = v0[19];
  v3 = v0[20];

  return sub_10001ED00(v2);
}

uint64_t sub_100003D34()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_100003E30, 0, 0);
}

uint64_t sub_100003E30()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 184);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100003EC8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v3 = *(v0 + 152);
  swift_willThrow();
  static Logger.metrics.getter();
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  if (v7)
  {
    v10 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2114;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Failed to enqueue events due to error: %{public}@", v11, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 192));
  v17 = *(v0 + 224);
  v16 = *(v0 + 232);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 184);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000040BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for InstallationEvent();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v11 = *(*(sub_100002AD8(&qword_1000395C0, &qword_10002AF20) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = type metadata accessor for AppInstallationEvent();
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v4[30] = v15;
  v16 = *(v15 - 8);
  v4[31] = v16;
  v17 = *(v16 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v18 = type metadata accessor for AppInstallationEligibility();
  v4[38] = v18;
  v19 = *(v18 - 8);
  v4[39] = v19;
  v20 = *(v19 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  v4[44] = v21;
  v22 = *(v21 - 8);
  v4[45] = v22;
  v23 = *(v22 + 64) + 15;
  v4[46] = swift_task_alloc();
  v24 = type metadata accessor for AppInstallType();
  v4[47] = v24;
  v25 = *(v24 - 8);
  v4[48] = v25;
  v26 = *(v25 + 64) + 15;
  v4[49] = swift_task_alloc();

  return _swift_task_switch(sub_1000044A0, v3, 0);
}

uint64_t sub_1000044A0()
{
  v83 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 64);
  AppInstallationEvent.installType.getter();
  LOBYTE(v4) = sub_10000F52C();
  v5 = *(v2 + 8);
  *(v0 + 400) = v5;
  *(v0 + 408) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (v4)
  {
    v6 = *(v0 + 72);
    v7 = v6[4];
    sub_10000D5B4(v6, v6[3]);
    v8 = sub_100011AC8();
    v9 = swift_task_alloc();
    *(v0 + 416) = v9;
    *v9 = v0;
    v9[1] = sub_100004A04;
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);

    return sub_10000AEF4(v0 + 16, v11, v8 & 1, v10);
  }

  else
  {
    v80 = v5;
    v13 = *(v0 + 256);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);
    static Logger.events.getter();
    v20 = *(v17 + 16);
    v20(v14, v19, v16);
    v20(v15, v19, v16);
    v21 = v18;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 392);
      v69 = *(v0 + 376);
      v78 = *(v0 + 256);
      v74 = *(v0 + 248);
      v76 = *(v0 + 240);
      v72 = v23;
      v25 = *(v0 + 208);
      v63 = *(v0 + 200);
      log = v22;
      v26 = *(v0 + 184);
      v27 = *(v0 + 192);
      v28 = *(v0 + 80);
      v29 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v29 = 138412802;
      *(v29 + 4) = v28;
      *v65 = v28;
      *(v29 + 12) = 2080;
      v30 = v28;
      v31 = AppInstallationEvent.bundleID.getter();
      v33 = v32;
      v34 = *(v27 + 8);
      v34(v25, v26);
      v35 = sub_10001DC98(v31, v33, &v82);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2080;
      AppInstallationEvent.installType.getter();
      v36 = sub_10000F070(0);
      v38 = v37;
      v80(v24, v69);
      v34(v63, v26);
      v39 = sub_10001DC98(v36, v38, &v82);

      *(v29 + 24) = v39;
      _os_log_impl(&_mh_execute_header, log, v72, "[%@] Skipping installation event for bundleID: %s with non valid installType: %s", v29, 0x20u);
      sub_10000D6F8(v65, &qword_100039DA0, &qword_10002A740);

      swift_arrayDestroy();

      (*(v74 + 8))(v78, v76);
    }

    else
    {
      v41 = *(v0 + 248);
      v40 = *(v0 + 256);
      v42 = *(v0 + 240);
      v44 = *(v0 + 200);
      v43 = *(v0 + 208);
      v45 = *(v0 + 184);
      v46 = *(v0 + 192);

      v47 = *(v46 + 8);
      v47(v44, v45);
      v47(v43, v45);
      (*(v41 + 8))(v40, v42);
    }

    v48 = *(v0 + 392);
    v49 = *(v0 + 368);
    v51 = *(v0 + 336);
    v50 = *(v0 + 344);
    v52 = *(v0 + 320);
    v53 = *(v0 + 328);
    v55 = *(v0 + 288);
    v54 = *(v0 + 296);
    v56 = *(v0 + 280);
    v58 = *(v0 + 272);
    v59 = *(v0 + 264);
    v60 = *(v0 + 256);
    v61 = *(v0 + 232);
    v62 = *(v0 + 224);
    v64 = *(v0 + 216);
    v66 = *(v0 + 208);
    loga = *(v0 + 200);
    v70 = *(v0 + 176);
    v71 = *(v0 + 168);
    v73 = *(v0 + 160);
    v75 = *(v0 + 152);
    v77 = *(v0 + 128);
    v79 = *(v0 + 120);
    v81 = *(v0 + 112);
    sub_100002B88(*(v0 + 72));

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_100004A04()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 88);
  v6 = *v0;
  v4 = *(*v0 + 32);
  *(v1 + 424) = v1[1];
  *(v1 + 440) = v4;
  *(v1 + 456) = v1[3];

  return _swift_task_switch(sub_100004B34, v3, 0);
}

uint64_t sub_100004B34()
{
  v183 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = v7[4];
  sub_10000D5B4(v7, v7[3]);
  v170 = sub_100011D28();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  AppInstallationEvent.eligibility.getter();
  v10 = AppInstallationEligibility.billingStorefront.getter();
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v4, v5);
  v176 = v13;
  if (v12)
  {
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v14 && (v10 != 48 || v12 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v175 = v10;
      v120 = *(v0 + 296);
      v121 = *(v0 + 232);
      v122 = *(v0 + 184);
      v123 = *(v0 + 192);
      v124 = *(v0 + 80);
      v125 = *(v0 + 64);
      static Logger.events.getter();
      (*(v123 + 16))(v121, v125, v122);
      v126 = v124;

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();

      v129 = os_log_type_enabled(v127, v128);
      v130 = *(v0 + 296);
      v131 = *(v0 + 240);
      v132 = *(v0 + 248);
      v133 = *(v0 + 232);
      v135 = *(v0 + 184);
      v134 = *(v0 + 192);
      if (v129)
      {
        v169 = *(v0 + 296);
        v136 = *(v0 + 80);
        v159 = v128;
        v137 = swift_slowAlloc();
        v181 = v12;
        v138 = swift_slowAlloc();
        v182[0] = swift_slowAlloc();
        *v137 = 138412802;
        *(v137 + 4) = v136;
        *v138 = v136;
        *(v137 + 12) = 2080;
        v139 = v136;
        v140 = AppInstallationEvent.bundleID.getter();
        v165 = v131;
        v142 = v141;
        (*(v134 + 8))(v133, v135);
        v143 = sub_10001DC98(v140, v142, v182);

        *(v137 + 14) = v143;
        *(v137 + 22) = 2080;
        *(v137 + 24) = sub_10001DC98(v175, v181, v182);
        _os_log_impl(&_mh_execute_header, v127, v159, "[%@] Event with bundleID: %s has a polus storefront: %s", v137, 0x20u);
        sub_10000D6F8(v138, &qword_100039DA0, &qword_10002A740);

        swift_arrayDestroy();

        (*(v132 + 8))(v169, v165);
      }

      else
      {

        (*(v134 + 8))(v133, v135);
        (*(v132 + 8))(v130, v131);
      }

      goto LABEL_23;
    }

    v15 = *(v0 + 336);
    v16 = *(v0 + 304);
    v17 = *(v0 + 288);
    v18 = *(v0 + 224);
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    AppInstallationEvent.eligibility.getter();
    v173 = AppInstallationEligibility.storefront.getter();
    v24 = v23;
    v176(v15, v16);

    static Logger.events.getter();
    (*(v20 + 16))(v18, v22, v19);
    v25 = v24;
    v26 = v21;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 288);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v35 = *(v0 + 184);
    v34 = *(v0 + 192);
    if (v29)
    {
      v166 = *(v0 + 288);
      v36 = *(v0 + 80);
      v157 = v28;
      v37 = swift_slowAlloc();
      v178 = v25;
      v38 = swift_slowAlloc();
      v182[0] = swift_slowAlloc();
      *v37 = 138412802;
      *(v37 + 4) = v36;
      *v38 = v36;
      *(v37 + 12) = 2080;
      v39 = v36;
      v40 = AppInstallationEvent.bundleID.getter();
      v162 = v31;
      v42 = v41;
      (*(v34 + 8))(v33, v35);
      v43 = sub_10001DC98(v40, v42, v182);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2080;
      if (v178)
      {
        v44 = v173;
      }

      else
      {
        v44 = 16718;
      }

      if (v178)
      {
        v45 = v178;
      }

      else
      {
        v45 = 0xE200000000000000;
      }

      v46 = sub_10001DC98(v44, v45, v182);

      *(v37 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v27, v157, "[%@] Event with bundleID: %s is missing a polus storefront. Falling back to header sourced storefront: %s", v37, 0x20u);
      sub_10000D6F8(v38, &qword_100039DA0, &qword_10002A740);
      v25 = v178;

      swift_arrayDestroy();

      (*(v32 + 8))(v166, v162);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
      (*(v32 + 8))(v30, v31);
    }

    v52 = *(v0 + 176);
    v53 = type metadata accessor for TaskPriority();
    (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    sub_10001CE60(0, 0, v52, &unk_10002A750, v54);

    if (!v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v47 = *(v0 + 328);
    v48 = *(v0 + 304);
    v49 = *(v0 + 64);
    AppInstallationEvent.eligibility.getter();
    AppInstallationEligibility.storefront.getter();
    v51 = v50;
    v13(v47, v48);
    if (!v51)
    {
LABEL_20:
      v55 = *(v0 + 280);
      v56 = *(v0 + 216);
      v57 = *(v0 + 184);
      v58 = *(v0 + 192);
      v59 = *(v0 + 80);
      v60 = *(v0 + 64);
      static Logger.events.getter();
      (*(v58 + 16))(v56, v60, v57);
      v61 = v59;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 280);
      v66 = *(v0 + 240);
      v67 = *(v0 + 248);
      v68 = *(v0 + 216);
      v70 = *(v0 + 184);
      v69 = *(v0 + 192);
      if (v64)
      {
        v179 = *(v0 + 280);
        v71 = *(v0 + 80);
        v160 = v63;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v182[0] = v163;
        *v72 = 138412546;
        *(v72 + 4) = v71;
        *v73 = v71;
        *(v72 + 12) = 2080;
        v74 = v71;
        v75 = AppInstallationEvent.bundleID.getter();
        v167 = v66;
        v77 = v76;
        (*(v69 + 8))(v68, v70);
        v78 = sub_10001DC98(v75, v77, v182);

        *(v72 + 14) = v78;
        _os_log_impl(&_mh_execute_header, v62, v160, "[%@] Failed to find storefront for bundleID: %s", v72, 0x16u);
        sub_10000D6F8(v73, &qword_100039DA0, &qword_10002A740);

        sub_100002B88(v163);

        (*(v67 + 8))(v179, v167);
      }

      else
      {

        (*(v69 + 8))(v68, v70);
        (*(v67 + 8))(v65, v66);
      }
    }
  }

LABEL_23:
  v150 = *(v0 + 456);
  v151 = *(v0 + 464);
  v149 = *(v0 + 440);
  v161 = *(v0 + 432);
  v155 = *(v0 + 424);
  v145 = *(v0 + 400);
  v146 = *(v0 + 408);
  v79 = *(v0 + 392);
  v144 = *(v0 + 376);
  v80 = *(v0 + 336);
  v81 = *(v0 + 320);
  v82 = *(v0 + 304);
  v158 = *(v0 + 272);
  v83 = *(v0 + 160);
  v84 = *(v0 + 144);
  v148 = *(v0 + 152);
  v147 = *(v0 + 168);
  v85 = *(v0 + 136);
  v156 = *(v0 + 120);
  v152 = *(v0 + 128);
  v153 = *(v0 + 104);
  v154 = *(v0 + 96);
  v164 = *(v0 + 112);
  v168 = *(v0 + 80);
  v86 = *(v0 + 64);
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v87 = *(v84 + 8);
  *(v0 + 472) = v87;
  *(v0 + 480) = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87(v83, v85);
  AppInstallationEvent.eligibility.getter();
  AppInstallationEligibility.accountID.getter();
  v176(v80, v82);
  AppInstallationEvent.bundleID.getter();
  AppInstallationEvent.eligibility.getter();
  AppInstallationEligibility.billingCountryCode.getter();
  v176(v81, v82);
  AppInstallationEvent.externalVersionID.getter();
  AppInstallationEvent.installDate.getter();
  AppInstallationEvent.installType.getter();
  sub_10000F070(v170 & 1);
  v145(v79, v144);
  AppInstallationEvent.isBeta.getter();
  AppInstallationEvent.itemID.getter();
  AppInstallationEvent.osVersion.getter();
  AppInstallationEvent.platform.getter();
  AppInstallationEvent.source.getter();
  AppInstallationEvent.token.getter();
  AppInstallationEvent.webDomain.getter();
  (*(v84 + 16))(v148, v147, v85);
  InstallationEvent.init(altDsid:dsid:billingStorefront:bundleID:clientID:countryCode:eventVersion:evid:installDate:installType:isBeta:itemID:osVersion:platform:source:storefront:token:webDomain:postTargetDate:gsToken:jwtGSToken:)();
  static Logger.events.getter();
  v88 = *(v153 + 16);
  v88(v156, v152, v154);
  v88(v164, v152, v154);
  v89 = v168;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  v92 = os_log_type_enabled(v90, v91);
  v93 = *(v0 + 272);
  v94 = *(v0 + 240);
  v95 = *(v0 + 248);
  v96 = *(v0 + 112);
  v97 = *(v0 + 120);
  v99 = *(v0 + 96);
  v98 = *(v0 + 104);
  if (v92)
  {
    v180 = *(v0 + 272);
    v100 = *(v0 + 80);
    v177 = *(v0 + 240);
    v101 = swift_slowAlloc();
    v174 = v95;
    v102 = swift_slowAlloc();
    v182[0] = swift_slowAlloc();
    *v101 = 138412802;
    *(v101 + 4) = v100;
    *v102 = v100;
    *(v101 + 12) = 2080;
    v103 = v100;
    v104 = InstallationEvent.bundleID.getter();
    v172 = v91;
    v106 = v105;
    v171 = v90;
    v107 = *(v98 + 8);
    v107(v97, v99);
    v108 = sub_10001DC98(v104, v106, v182);

    *(v101 + 14) = v108;
    *(v101 + 22) = 2080;
    v109 = InstallationEvent.clientID.getter();
    v111 = v110;
    v107(v96, v99);
    v112 = sub_10001DC98(v109, v111, v182);

    *(v101 + 24) = v112;
    _os_log_impl(&_mh_execute_header, v171, v172, "[%@] Enqueuing event with bundleID: %s clientEventID: %s", v101, 0x20u);
    sub_10000D6F8(v102, &qword_100039DA0, &qword_10002A740);

    swift_arrayDestroy();

    v113 = *(v174 + 8);
    v113(v180, v177);
  }

  else
  {

    v107 = *(v98 + 8);
    v107(v96, v99);
    v107(v97, v99);
    v113 = *(v95 + 8);
    v113(v93, v94);
  }

  *(v0 + 488) = v107;
  *(v0 + 496) = v113;
  v114 = swift_task_alloc();
  *(v0 + 504) = v114;
  *v114 = v0;
  v114[1] = sub_10000599C;
  v115 = *(v0 + 128);
  v116 = *(v0 + 80);
  v117 = *(v0 + 88);
  v118 = *(v0 + 72);

  return sub_100002DC8(v115, v118, v116);
}

uint64_t sub_10000599C()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100005AAC, v2, 0);
}

uint64_t sub_100005AAC()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 80);
  static Logger.events.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Enqueue complete", v7, 0xCu);
    sub_10000D6F8(v8, &qword_100039DA0, &qword_10002A740);
  }

  v10 = *(v0 + 496);
  v43 = *(v0 + 488);
  v45 = *(v0 + 472);
  v47 = *(v0 + 480);
  v11 = *(v0 + 264);
  v12 = v4;
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 168);
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);

  v10(v11, v14);
  v43(v17, v18);
  v45(v15, v16);
  v20 = *(v0 + 392);
  v21 = *(v0 + 368);
  v23 = *(v0 + 336);
  v22 = *(v0 + 344);
  v24 = *(v0 + 320);
  v25 = *(v0 + 328);
  v27 = *(v0 + 288);
  v26 = *(v0 + 296);
  v28 = *(v0 + 280);
  v31 = *(v0 + 272);
  v32 = *(v0 + 264);
  v33 = *(v0 + 256);
  v34 = *(v0 + 232);
  v35 = *(v0 + 224);
  v36 = *(v0 + 216);
  v37 = *(v0 + 208);
  v38 = *(v0 + 200);
  v39 = *(v0 + 176);
  v40 = *(v0 + 168);
  v41 = *(v0 + 160);
  v42 = *(v0 + 152);
  v44 = *(v0 + 128);
  v46 = *(v0 + 120);
  v48 = *(v0 + 112);
  sub_100002B88(*(v0 + 72));

  v29 = *(v0 + 8);

  return v29();
}

void sub_100005D88(uint64_t a1, void *a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_1000395E0, &qword_10002A780);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v6 = a2;
    sub_100002AD8(&qword_1000395E0, &qword_10002A780);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_100005E30(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_1000395D8, &qword_10002A778);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      sub_10000D5F8(0, &qword_100039600, ACAccount_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100002AD8(&qword_1000395D8, &qword_10002A778);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100005F04()
{
  v1[19] = v0;
  v2 = sub_100002AD8(&qword_1000395C8, &qword_10002A768);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100005FD0, 0, 0);
}

uint64_t sub_100005FD0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1000061A0;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_10000D510(v1 + 14);
  sub_10000D5F8(0, &qword_1000395D0, NSString_ptr);
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100006794;
  v1[13] = &unk_100035890;
  [v11 resultWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_1000061A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100006340;
  }

  else
  {
    v3 = sub_1000062B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000062B0()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_100006340()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t InstallationEventManager.deinit()
{
  v1 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_container;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_aseMetrics);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InstallationEventManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_container;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_aseMetrics);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t static InstallationEvent.== infix(_:_:)()
{
  v0 = InstallationEvent.clientID.getter();
  v2 = v1;
  if (v0 == InstallationEvent.clientID.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t InstallationEvent.hash(into:)()
{
  InstallationEvent.id.getter();
  String.hash(into:)();
}

Swift::Int InstallationEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  InstallationEvent.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000065F8()
{
  Hasher.init(_seed:)();
  InstallationEvent.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t type metadata accessor for InstallationEventManager()
{
  result = qword_1000394F0;
  if (!qword_1000394F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000066EC()
{
  result = type metadata accessor for URL();
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

void sub_100006794(uint64_t a1, void *a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_1000395C8, &qword_10002A768);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100002AD8(&qword_1000395C8, &qword_10002A768);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100006844(void *a1)
{
  v13[1] = a1;
  v3 = *(v1 + 16);
  type metadata accessor for ASEEvent();
  sub_10000D7C4(&qword_100039640, type metadata accessor for ASEEvent);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13[0] = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:v13];

    v11 = v13[0];
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10000D80C(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10000D80C(v6, v7);
    }
  }

  return result;
}

void sub_1000069C4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100002AD8(&qword_100039608, &qword_10002A7A8);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100002AD8(&qword_100039608, &qword_10002A7A8);
    CheckedContinuation.resume(returning:)();
  }
}

unint64_t *sub_100006A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_100026684(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100026684((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_10000D7B4(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100006B68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002AD8(&qword_100039628, &qword_10002A7C0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    sub_10000D758(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_10000D7B4(v33, v32);
    sub_100002AD8(&qword_100039638, &qword_10002A7D0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000D7B4(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000D7B4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
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
    result = sub_10000D7B4(v32, (v2[7] + 32 * v10));
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

uint64_t sub_100006E64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002AD8(&qword_100039658, &unk_10002AE80);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000D7B4(v25, v37);
      }

      else
      {
        sub_10000D758(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000D7B4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000711C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002AD8(&qword_100039628, &qword_10002A7C0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10000D7B4((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10000D69C(v24, &v37);
        sub_10000D758(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10000D7B4(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_1000073D4()
{
  v1 = v0;
  sub_100002AD8(&qword_100039658, &unk_10002AE80);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000D758(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000D7B4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100007578()
{
  v1 = v0;
  sub_100002AD8(&qword_100039628, &qword_10002A7C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = 40 * v17;
        sub_10000D69C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000D758(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000D7B4(v22, (*(v4 + 56) + v17));
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

_OWORD *sub_100007754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v30 = &type metadata for String;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v10 = *a6;
  v12 = sub_1000134FC(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      sub_100002B88(v19);
      return sub_10000D7B4(&v29, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_1000073D4();
    goto LABEL_7;
  }

  sub_100006E64(v15, a5 & 1);
  v21 = *a6;
  v22 = sub_1000134FC(a3, a4);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_10000D860(&v29, &type metadata for String);
  v25 = *(*(&type metadata for String - 1) + 64);
  __chkstk_darwin(v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_100007CF0(v12, a3, a4, *v27, v27[1], v18);

  return sub_100002B88(&v29);
}

_OWORD *sub_100007938(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = &type metadata for Bool;
  v9 = *a5;
  v11 = sub_1000134FC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_100002B88(v18);
      return sub_10000D7B4(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1000073D4();
    goto LABEL_7;
  }

  sub_100006E64(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_1000134FC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_10000D860(&v24, &type metadata for Bool);
  sub_100007C6C(v11, a2, a3, *v23, v17);

  return sub_100002B88(&v24);
}

_OWORD *sub_100007A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = &type metadata for Int64;
  v9 = *a5;
  v11 = sub_1000134FC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_100002B88(v18);
      return sub_10000D7B4(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1000073D4();
    goto LABEL_7;
  }

  sub_100006E64(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_1000134FC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_10000D860(&v24, &type metadata for Int64);
  sub_100007BE8(v11, a2, a3, *v23, v17);

  return sub_100002B88(&v24);
}

_OWORD *sub_100007BE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = &type metadata for Int64;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000D7B4(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_100007C6C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000D7B4(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_100007CF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_10000D7B4(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_100007D74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_10000D69C(*(v3 + 48) + 40 * v13, &v18);
    sub_10000D758(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_10000D7B4(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_10000D6F8(&v18, &qword_100039630, &qword_10002A7C8);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100007EFC(uint64_t a1, void *a2, void *a3)
{
  v145 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v146 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar.Component();
  v151 = *(v8 - 8);
  v152 = v8;
  v9 = *(v151 + 64);
  __chkstk_darwin(v8);
  v149 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Date();
  v148 = *(v150 - 8);
  v11 = *(v148 + 64);
  __chkstk_darwin(v150);
  v147 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002AD8(&qword_100039648, &qword_10002A7D8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10002A610;
  *(v13 + 32) = 0x6449656C646E7562;
  *(v13 + 40) = 0xE800000000000000;
  *(v13 + 48) = InstallationEvent.bundleID.getter();
  *(v13 + 56) = v14;
  *(v13 + 72) = &type metadata for String;
  strcpy((v13 + 80), "clientEventId");
  *(v13 + 94) = -4864;
  *(v13 + 96) = InstallationEvent.clientID.getter();
  *(v13 + 104) = v15;
  *(v13 + 120) = &type metadata for String;
  strcpy((v13 + 128), "eventVersion");
  *(v13 + 141) = 0;
  *(v13 + 142) = -5120;
  *(v13 + 144) = 1;
  *(v13 + 168) = &type metadata for Int;
  *(v13 + 176) = 0x6F6973726556736FLL;
  *(v13 + 184) = 0xE90000000000006ELL;
  *(v13 + 192) = InstallationEvent.osVersion.getter();
  *(v13 + 200) = v16;
  *(v13 + 216) = &type metadata for String;
  *(v13 + 224) = 0x656372756F73;
  *(v13 + 232) = 0xE600000000000000;
  v17 = InstallationEvent.source.getter();
  *(v13 + 264) = &type metadata for String;
  *(v13 + 240) = v17;
  *(v13 + 248) = v18;
  v19 = sub_100013944(v13);
  swift_setDeallocating();
  sub_100002AD8(&qword_100039650, qword_10002A7E0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = InstallationEvent.webDomain.getter();
  if (v21)
  {
    v157 = &type metadata for String;
    *&v156 = v20;
    *(&v156 + 1) = v21;
    sub_10000D7B4(&v156, &v154);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v19;
    v23 = v155;
    v24 = sub_10000D860(&v154, v155);
    v25 = *(*(v23 - 8) + 64);
    __chkstk_darwin(v24);
    v27 = (&v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    sub_100007754(*v27, v27[1], 0x69616D6F44626577, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native, &v153);
    sub_100002B88(&v154);
    v19 = v153;
  }

  v29 = InstallationEvent.installType.getter();
  v157 = &type metadata for String;
  *&v156 = v29;
  *(&v156 + 1) = v30;
  sub_10000D7B4(&v156, &v154);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v19;
  v32 = v155;
  v33 = sub_10000D860(&v154, v155);
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  sub_100007754(*v36, v36[1], 0x546C6C6174736E69, 0xEB00000000657079, v31, &v153);
  sub_100002B88(&v154);
  v38 = v153;
  if (InstallationEvent.isBeta.getter())
  {
    v157 = &type metadata for Bool;
    LOBYTE(v156) = 1;
    sub_10000D7B4(&v156, &v154);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v40 = sub_10000D860(&v154, v155);
    sub_100007938(*v40, 0x617465427369, 0xE600000000000000, v39, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v41 = InstallationEvent.countryCode.getter();
  if (v42)
  {
    v157 = &type metadata for String;
    *&v156 = v41;
    *(&v156 + 1) = v42;
    sub_10000D7B4(&v156, &v154);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v44 = v155;
    v45 = sub_10000D860(&v154, v155);
    v46 = *(*(v44 - 8) + 64);
    __chkstk_darwin(v45);
    v48 = (&v145 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48);
    sub_100007754(*v48, v48[1], 0x437972746E756F63, 0xEB0000000065646FLL, v43, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v50 = InstallationEvent.storefront.getter();
  if (v51)
  {
    v157 = &type metadata for String;
    *&v156 = v50;
    *(&v156 + 1) = v51;
    sub_10000D7B4(&v156, &v154);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v53 = v155;
    v54 = sub_10000D860(&v154, v155);
    v55 = *(*(v53 - 8) + 64);
    __chkstk_darwin(v54);
    v57 = (&v145 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    sub_100007754(*v57, v57[1], 0x6F726665726F7473, 0xEA0000000000746ELL, v52, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v59 = InstallationEvent.altDsid.getter();
  if (v60)
  {
    v157 = &type metadata for String;
    *&v156 = v59;
    *(&v156 + 1) = v60;
    sub_10000D7B4(&v156, &v154);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v62 = v155;
    v63 = sub_10000D860(&v154, v155);
    v64 = *(*(v62 - 8) + 64);
    __chkstk_darwin(v63);
    v66 = (&v145 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v67 + 16))(v66);
    sub_100007754(*v66, v66[1], 0x64497344746C61, 0xE700000000000000, v61, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v68 = a2[4];
  sub_10000D5B4(a2, a2[3]);
  v69 = sub_100011A7C();
  v70 = InstallationEvent.dsid.getter();
  if (v71 & 1) == 0 && (v69)
  {
    v157 = &type metadata for Int64;
    *&v156 = v70;
    sub_10000D7B4(&v156, &v154);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v73 = sub_10000D860(&v154, v155);
    sub_100007A90(*v73, 1682535268, 0xE400000000000000, v72, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v74 = a2[4];
  sub_10000D5B4(a2, a2[3]);
  if (sub_100011AC8())
  {
    v75 = InstallationEvent.gsToken.getter();
    if (v76)
    {
      v157 = &type metadata for String;
      *&v156 = v75;
      *(&v156 + 1) = v76;
      sub_10000D7B4(&v156, &v154);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v38;
      v78 = v155;
      v79 = sub_10000D860(&v154, v155);
      v80 = *(*(v78 - 8) + 64);
      __chkstk_darwin(v79);
      v82 = (&v145 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v83 + 16))(v82);
      sub_100007754(*v82, v82[1], 0x6E656B6F547367, 0xE700000000000000, v77, &v153);
      sub_100002B88(&v154);
      v38 = v153;
    }
  }

  v84 = InstallationEvent.jwtGSToken.getter();
  if (v85)
  {
    v157 = &type metadata for String;
    *&v156 = v84;
    *(&v156 + 1) = v85;
    sub_10000D7B4(&v156, &v154);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v87 = v155;
    v88 = sub_10000D860(&v154, v155);
    v89 = *(*(v87 - 8) + 64);
    __chkstk_darwin(v88);
    v91 = (&v145 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v92 + 16))(v91);
    sub_100007754(*v91, v91[1], 0x6B6F54534774776ALL, 0xEA00000000006E65, v86, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v93 = InstallationEvent.token.getter();
  if (v94)
  {
    v157 = &type metadata for String;
    *&v156 = v93;
    *(&v156 + 1) = v94;
    sub_10000D7B4(&v156, &v154);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v96 = v155;
    v97 = sub_10000D860(&v154, v155);
    v98 = *(*(v96 - 8) + 64);
    __chkstk_darwin(v97);
    v100 = (&v145 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v101 + 16))(v100);
    sub_100007754(*v100, v100[1], 0x6E656B6F74, 0xE500000000000000, v95, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v102 = a2[4];
  sub_10000D5B4(a2, a2[3]);
  v103 = sub_100011B14();
  *&v156 = 0x6D726F6674616C70;
  *(&v156 + 1) = 0xE800000000000000;
  __chkstk_darwin(v103);
  *(&v145 - 2) = &v156;
  v104 = sub_100013620(sub_10000D8B0, (&v145 - 4), v103);
  if (v104)
  {
    v105 = InstallationEvent.platform.getter();
    v157 = &type metadata for String;
    *&v156 = v105;
    *(&v156 + 1) = v106;
    sub_10000D7B4(&v156, &v154);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v108 = v155;
    v109 = sub_10000D860(&v154, v155);
    v110 = *(*(v108 - 8) + 64);
    __chkstk_darwin(v109);
    v112 = (&v145 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v113 + 16))(v112);
    sub_100007754(*v112, v112[1], 0x6D726F6674616C70, 0xE800000000000000, v107, &v153);
    v104 = sub_100002B88(&v154);
    v38 = v153;
  }

  *&v156 = 0x64496D616461;
  *(&v156 + 1) = 0xE600000000000000;
  __chkstk_darwin(v104);
  *(&v145 - 2) = &v156;
  v114 = sub_100013620(sub_10000D8E8, (&v145 - 4), v103);
  if (v114)
  {
    v114 = InstallationEvent.itemID.getter();
    if ((v115 & 1) == 0)
    {
      v157 = &type metadata for Int64;
      *&v156 = v114;
      sub_10000D7B4(&v156, &v154);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v38;
      v117 = sub_10000D860(&v154, v155);
      sub_100007A90(*v117, 0x64496D616461, 0xE600000000000000, v116, &v153);
      v114 = sub_100002B88(&v154);
      v38 = v153;
    }
  }

  *&v156 = 0xD000000000000011;
  *(&v156 + 1) = 0x800000010002BBA0;
  __chkstk_darwin(v114);
  *(&v145 - 2) = &v156;
  v118 = sub_100013620(sub_10000D8E8, (&v145 - 4), v103);
  if (v118)
  {
    v118 = InstallationEvent.evid.getter();
    if ((v119 & 1) == 0)
    {
      v157 = &type metadata for Int64;
      *&v156 = v118;
      sub_10000D7B4(&v156, &v154);
      v120 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v38;
      v121 = sub_10000D860(&v154, v155);
      sub_100007A90(*v121, 0xD000000000000011, 0x800000010002BBA0, v120, &v153);
      v118 = sub_100002B88(&v154);
      v38 = v153;
    }
  }

  *&v156 = 0x646C697562;
  *(&v156 + 1) = 0xE500000000000000;
  __chkstk_darwin(v118);
  *(&v145 - 2) = &v156;
  v122 = sub_100013620(sub_10000D8E8, (&v145 - 4), v103);

  if (v122)
  {
    v123 = [objc_opt_self() buildVersion];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    v157 = &type metadata for String;
    *&v156 = v124;
    *(&v156 + 1) = v126;
    sub_10000D7B4(&v156, &v154);
    LOBYTE(v123) = swift_isUniquelyReferenced_nonNull_native();
    v153 = v38;
    v127 = v155;
    v128 = sub_10000D860(&v154, v155);
    v129 = *(*(v127 - 8) + 64);
    __chkstk_darwin(v128);
    v131 = (&v145 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v132 + 16))(v131);
    sub_100007754(*v131, v131[1], 0x646C697562, 0xE500000000000000, v123, &v153);
    sub_100002B88(&v154);
    v38 = v153;
  }

  v133 = v147;
  Date.init()();
  v135 = v151;
  v134 = v152;
  v136 = v149;
  (*(v151 + 104))(v149, enum case for Calendar.Component.hour(_:), v152);
  v137 = sub_100021790(v133, v136);
  (*(v135 + 8))(v136, v134);
  (*(v148 + 8))(v133, v150);
  if (v137)
  {
    type metadata accessor for ASEEvent();
    swift_allocObject();
    return sub_10000E6FC(v38, v137);
  }

  else
  {

    static Logger.events.getter();
    v139 = v145;
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v142 = 138412290;
      *(v142 + 4) = v139;
      *v143 = v139;
      v144 = v139;
      _os_log_impl(&_mh_execute_header, v140, v141, "[%@] Failed to derezz event", v142, 0xCu);
      sub_10000D6F8(v143, &qword_100039DA0, &qword_10002A740);
    }

    (*(v5 + 8))(v146, v4);
    return 0;
  }
}

uint64_t sub_1000091E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_100007D74(&v38);
  if (!*(&v39 + 1))
  {
LABEL_18:
    sub_10000D694();
  }

  while (1)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_10000D7B4(&v41, v34);
    v15 = *a5;
    v16 = sub_1000135DC(&v35);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_10000711C(v21, a4 & 1);
      v23 = *a5;
      v16 = sub_1000135DC(&v35);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v16;
    sub_100007578();
    v16 = v31;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_10000D758(*(*a5 + 56) + 32 * v16, v33);
      sub_100002B88(v34);
      sub_10000D640(&v35);
      v14 = *(v12 + 56);
      sub_100002B88((v14 + v13));
      sub_10000D7B4(v33, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v35;
    v28 = v36;
    *(v26 + 32) = v37;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_10000D7B4(v34, (v25[7] + 32 * v16));
    v29 = v25[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
LABEL_7:
    sub_100007D74(&v38);
    a4 = 1;
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100009424(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  type metadata accessor for DictionaryEncoder();
  inited = swift_initStackObject();
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(inited + 16) = JSONEncoder.init()();
  sub_100006844(a1);

  sub_100002AD8(&qword_100039620, &qword_10002A7B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v11;
  if (a1[14])
  {
    v9 = sub_100006B68(a1[14]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = v11;
    sub_1000091E0(v9, sub_10000771C, 0, isUniquelyReferenced_nonNull_native, v12);

    return v12[0];
  }

  return result;
}

id sub_1000097BC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009424(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  static Logger.metrics.getter();
  v11 = a2;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v64 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v67[0] = v17;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2082;
    v62 = v12;
    v63 = v4;
    v18 = v10;
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = v11;
    v22 = v20;
    v10 = v18;
    *(v15 + 14) = sub_10001DC98(v19, v22, v67);
    v23 = v62;
    _os_log_impl(&_mh_execute_header, v62, v13, "[%@] Building AMSMetricsEvent for topic: %{public}s", v15, 0x16u);
    sub_10000D6F8(v16, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v17);

    (*(v64 + 8))(v8, v63);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v25 = objc_allocWithZone(AMSMetricsEvent);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v24 = [v25 initWithUnderlyingDictionary:isa];

  if (*(a1 + 104))
  {
    [v24 setEventTime:?];
  }

  if (*(a1 + 80))
  {
    v27 = *(a1 + 72);
    v28 = String._bridgeToObjectiveC()();
    [v24 setDiagnosticsSubmissionBugType:v28];
  }

  v29 = *(a1 + 88);
  if (v29 != 2)
  {
    [v24 setPreventSampling:v29 & 1];
  }

  v30 = *(a1 + 96);
  v31 = &Dependencies;
  if (v30)
  {
    v32 = *(v30 + 16);
    v33 = &_swiftEmptyArrayStorage;
    if (v32)
    {
      v63 = v24;
      v64 = v10;
      v67[0] = &_swiftEmptyArrayStorage;
      sub_1000266A4(0, v32, 0);
      v34 = (v30 + 32);
      v33 = v67[0];
      do
      {
        v36 = *v34++;
        v35 = v36;
        v37 = v36 == 6;
        if (v36 == 6)
        {
          v38 = 0x6F6973726556736FLL;
        }

        else
        {
          v38 = 0x656E6F7A656D6974;
        }

        if (v37)
        {
          v39 = 0xE90000000000006ELL;
        }

        else
        {
          v39 = 0xEE0074657366664FLL;
        }

        if (v35 == 4)
        {
          v40 = 0x56646C697542736FLL;
        }

        else
        {
          v40 = 0x656D614E736FLL;
        }

        if (v35 == 4)
        {
          v41 = 0xEE006E6F69737265;
        }

        else
        {
          v41 = 0xE600000000000000;
        }

        if (v35 <= 5)
        {
          v38 = v40;
          v39 = v41;
        }

        v42 = 0x7372655665736162;
        if (v35 == 2)
        {
          v43 = 0xEB000000006E6F69;
        }

        else
        {
          v42 = 0x726556746E657665;
          v43 = 0xEC0000006E6F6973;
        }

        if (v35)
        {
          v44 = 0x6973726556707061;
        }

        else
        {
          v44 = 7368801;
        }

        if (v35)
        {
          v45 = 0xEA00000000006E6FLL;
        }

        else
        {
          v45 = 0xE300000000000000;
        }

        if (v35 <= 1)
        {
          v42 = v44;
          v43 = v45;
        }

        if (v35 <= 3)
        {
          v46 = v42;
        }

        else
        {
          v46 = v38;
        }

        if (v35 <= 3)
        {
          v47 = v43;
        }

        else
        {
          v47 = v39;
        }

        v67[0] = v33;
        v49 = v33[2];
        v48 = v33[3];
        if (v49 >= v48 >> 1)
        {
          sub_1000266A4((v48 > 1), v49 + 1, 1);
          v33 = v67[0];
        }

        v33[2] = v49 + 1;
        v50 = &v33[2 * v49];
        *(v50 + 4) = v46;
        *(v50 + 5) = v47;
        --v32;
      }

      while (v32);
      v24 = v63;
      v31 = &Dependencies;
    }

    sub_100006A68(v33);

    v51 = Array._bridgeToObjectiveC()().super.isa;

    [v24 *&v31[45].flags];
  }

  sub_100002AD8(&qword_100039618, &qword_10002A7B0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10002A620;
  *(v52 + 32) = 0x6973726556707061;
  *(v52 + 40) = 0xEA00000000006E6FLL;
  *(v52 + 56) = &type metadata for String;
  strcpy((v52 + 64), "hardwareFamily");
  *(v52 + 79) = -18;
  *(v52 + 120) = &type metadata for String;
  *(v52 + 88) = &type metadata for String;
  *(v52 + 96) = 29551;
  *(v52 + 104) = 0xE200000000000000;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v24 *&v31[45].flags];

  if (!isAppInstallationMetricsEnabled()())
  {

    [v24 setAnonymous:1];
    return v24;
  }

  v54 = [v24 underlyingDictionary];
  v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = 0x64497344746C61;
  v66 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v55 + 16) || (v56 = sub_1000135DC(v67), (v57 & 1) == 0))
  {

    sub_10000D640(v67);
    return v24;
  }

  sub_10000D758(*(v55 + 56) + 32 * v56, v68);
  sub_10000D640(v67);

  if ((swift_dynamicCast() & 1) == 0)
  {

    return v24;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v59 = result;

    v60 = String._bridgeToObjectiveC()();

    v61 = [v59 ams_iTunesAccountWithAltDSID:v60];

    if (v61)
    {
      [v24 setAccount:v61];
    }

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = sub_100002AD8(&qword_1000395D8, &qword_10002A778);
  v5[41] = v6;
  v7 = *(v6 - 8);
  v5[42] = v7;
  v8 = *(v7 + 64) + 15;
  v5[43] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[44] = v9;
  v10 = *(v9 - 8);
  v5[45] = v10;
  v11 = *(v10 + 64) + 15;
  v5[46] = swift_task_alloc();
  v12 = sub_100002AD8(&qword_1000395E0, &qword_10002A780);
  v5[47] = v12;
  v13 = *(v12 - 8);
  v5[48] = v13;
  v14 = *(v13 + 64) + 15;
  v5[49] = swift_task_alloc();

  return _swift_task_switch(sub_10000A15C, 0, 0);
}

uint64_t sub_10000A15C()
{
  if (v0[38])
  {
    v1 = v0 + 10;
    v2 = v0[48];
    v3 = v0[49];
    v4 = v0[47];
    v30 = v0[39];
    v5 = v0[37];
    v6 = String._bridgeToObjectiveC()();
    v0[50] = v6;
    v0[10] = v0;
    v0[15] = v0 + 35;
    v0[11] = sub_10000A630;
    swift_continuation_init();
    v0[33] = v4;
    v7 = sub_10000D510(v0 + 30);
    sub_100002AD8(&qword_1000395F8, &qword_10002A798);
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    CheckedContinuation.init(continuation:function:)();
    (*(v2 + 32))(v7, v3, v4);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100005D88;
    v0[29] = &unk_1000358E0;
    [v30 accountWithIdentifier:v6 completion:?];
    (*(v2 + 8))(v7, v4);
  }

  else
  {
    v8 = v0[46];
    v9 = v0[40];
    static Logger.events.getter();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[40];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Falling back to lookup by DSID", v14, 0xCu);
      sub_10000D6F8(v15, &qword_100039DA0, &qword_10002A740);
    }

    v1 = v0 + 2;
    v18 = v0[45];
    v17 = v0[46];
    v19 = v0[44];
    v29 = v0[43];
    v20 = v0[41];
    v21 = v0[42];
    v31 = v0[39];

    (*(v18 + 8))(v17, v19);
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10002A630;
    *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v22 + 40) = v23;
    *(v22 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v22 + 56) = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[52] = isa;

    v26 = Array._bridgeToObjectiveC()().super.isa;
    v0[53] = v26;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_10000AB14;
    swift_continuation_init();
    v0[25] = v20;
    v27 = sub_10000D510(v0 + 22);
    sub_100002AD8(&qword_1000395F0, &qword_10002A790);
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    CheckedContinuation.init(continuation:function:)();
    (*(v21 + 32))(v27, v29, v20);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100005E30;
    v0[21] = &unk_1000358B8;
    [v31 accountsWithAccountTypeIdentifiers:isa preloadedProperties:v26 completion:?];
    (*(v21 + 8))(v27, v20);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10000A630()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_10000ADCC;
  }

  else
  {
    v3 = sub_10000A740;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000A740()
{
  v1 = *(v0 + 280);

  if (v1)
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 368);
    v4 = *(v0 + 344);

    v5 = *(v0 + 8);

    return v5(v1);
  }

  else
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 320);
    static Logger.events.getter();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 320);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Falling back to lookup by DSID", v13, 0xCu);
      sub_10000D6F8(v14, &qword_100039DA0, &qword_10002A740);
    }

    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 352);
    v27 = *(v0 + 344);
    v19 = *(v0 + 328);
    v20 = *(v0 + 336);
    v28 = *(v0 + 312);

    (*(v17 + 8))(v16, v18);
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10002A630;
    *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v21 + 40) = v22;
    *(v21 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v21 + 56) = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 416) = isa;

    v25 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 424) = v25;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_10000AB14;
    swift_continuation_init();
    *(v0 + 200) = v19;
    v26 = sub_10000D510((v0 + 176));
    sub_100002AD8(&qword_1000395F0, &qword_10002A790);
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    CheckedContinuation.init(continuation:function:)();
    (*(v20 + 32))(v26, v27, v19);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100005E30;
    *(v0 + 168) = &unk_1000358B8;
    [v28 accountsWithAccountTypeIdentifiers:isa preloadedProperties:v25 completion:?];
    (*(v20 + 8))(v26, v19);

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10000AB14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  if (v2)
  {
    v3 = sub_10000AE5C;
  }

  else
  {
    v3 = sub_10000AC24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000AC24()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 272);

  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_15;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 ams_DSID];
        if (v9)
        {
          v10 = v19[36];
          v11 = v3;
          v12 = v9;
          v13 = [v9 longLongValue];

          v3 = v11;
          if (v13 == v10)
          {

            goto LABEL_19;
          }
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  v7 = 0;
LABEL_19:
  v14 = v19[49];
  v15 = v19[46];
  v16 = v19[43];

  v17 = v19[1];

  return v17(v7);
}

uint64_t sub_10000ADCC()
{
  v1 = v0[50];
  v2 = v0[51];
  swift_willThrow();

  v3 = v0[51];
  v4 = v0[49];
  v5 = v0[46];
  v6 = v0[43];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000AE5C()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  swift_willThrow();

  v4 = v0[54];
  v5 = v0[49];
  v6 = v0[46];
  v7 = v0[43];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000AEF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 184) = a2;
  *(v4 + 192) = a4;
  *(v4 + 528) = a3;
  *(v4 + 176) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 200) = v5;
  v6 = *(v5 - 8);
  *(v4 + 208) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v8 = type metadata accessor for AppInstallationEligibility();
  *(v4 + 280) = v8;
  v9 = *(v8 - 8);
  *(v4 + 288) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_10000B078, 0, 0);
}

uint64_t sub_10000B078()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[23];
  AppInstallationEvent.eligibility.getter();
  v5 = AppInstallationEligibility.accountID.getter();
  LOBYTE(v4) = v6;
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (v4)
  {
    v8 = v0[28];
    v9 = v0[24];
    static Logger.events.getter();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[24];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] GS lookup failed due to missing accountID", v14, 0xCu);
      sub_10000D6F8(v15, &qword_100039DA0, &qword_10002A740);
    }

    v17 = v0[28];
    v18 = v0[25];
    v19 = v0[26];

    (*(v19 + 8))(v17, v18);
    v21 = v0[37];
    v20 = v0[38];
    v23 = v0[33];
    v22 = v0[34];
    v25 = v0[31];
    v24 = v0[32];
    v27 = v0[29];
    v26 = v0[30];
    v28 = v0[28];
    v41 = v0[27];
    v29 = v0[22];

    v29[1] = 0u;
    v29[2] = 0u;
    *v29 = 0u;
    v30 = v0[1];

    return v30();
  }

  else
  {
    v32 = v0[37];
    v33 = v0[35];
    v34 = v0[23];
    v35 = [objc_opt_self() ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeProduction];
    v0[39] = v35;
    AppInstallationEvent.eligibility.getter();
    v36 = AppInstallationEligibility.accountIdentifier.getter();
    v38 = v37;
    v0[40] = v37;
    v7(v32, v33);
    v39 = swift_task_alloc();
    v0[41] = v39;
    *v39 = v0;
    v39[1] = sub_10000B394;
    v40 = v0[24];

    return sub_100009FC4(v5, v36, v38, v35, v40);
  }
}

uint64_t sub_10000B394(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 320);

  if (v1)
  {
    v8 = sub_10000B8D4;
  }

  else
  {
    v8 = sub_10000B4D0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000B4D0()
{
  v1 = v0[42];
  if (v1)
  {
    v2 = v0[39];
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v1 accountStore:v2 serviceIdentifier:v3 useCachedServiceToken:1];
    v0[44] = v4;

    v0[45] = [v4 perform];
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_10000B7BC;

    return sub_100005F04();
  }

  else
  {
    v7 = v0[29];
    v8 = v0[24];
    static Logger.events.getter();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[24];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] GS lookup failed due to missing account", v13, 0xCu);
      sub_10000D6F8(v14, &qword_100039DA0, &qword_10002A740);

      v16 = v0[39];
    }

    else
    {
      v16 = v10;
      v10 = v0[39];
    }

    v17 = v0[29];
    v18 = v0[25];
    v19 = v0[26];

    (*(v19 + 8))(v17, v18);
    v21 = v0[37];
    v20 = v0[38];
    v23 = v0[33];
    v22 = v0[34];
    v25 = v0[31];
    v24 = v0[32];
    v27 = v0[29];
    v26 = v0[30];
    v28 = v0[28];
    v31 = v0[27];
    v29 = v0[22];

    v29[1] = 0u;
    v29[2] = 0u;
    *v29 = 0u;
    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_10000B7BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 368);
  v8 = *v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {
    v6 = sub_10000BC18;
  }

  else
  {
    v6 = sub_10000BFB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000B8D4()
{
  v1 = v0[43];
  v2 = v0[34];
  v3 = v0[24];
  static Logger.events.getter();
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[43];
  if (v7)
  {
    v9 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2114;
    v12 = v9;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    v11[1] = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] GS lookup failed due to account lookup error: %{public}@", v10, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[43];
  }

  (*(v0[26] + 8))(v0[34], v0[25]);
  v15 = v0[29];
  v16 = v0[24];
  static Logger.events.getter();
  v17 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[24];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v20;
    *v22 = v20;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%@] GS lookup failed due to missing account", v21, 0xCu);
    sub_10000D6F8(v22, &qword_100039DA0, &qword_10002A740);

    v24 = v0[39];
  }

  else
  {
    v24 = v18;
    v18 = v0[39];
  }

  v25 = v0[29];
  v26 = v0[25];
  v27 = v0[26];

  (*(v27 + 8))(v25, v26);
  v29 = v0[37];
  v28 = v0[38];
  v31 = v0[33];
  v30 = v0[34];
  v33 = v0[31];
  v32 = v0[32];
  v35 = v0[29];
  v34 = v0[30];
  v36 = v0[28];
  v40 = v0[27];
  v37 = v0[22];

  v37[1] = 0u;
  v37[2] = 0u;
  *v37 = 0u;
  v38 = v0[1];

  return v38();
}

uint64_t sub_10000BC18()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);

  static Logger.events.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 392);
  if (v8)
  {
    v10 = *(v0 + 192);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2114;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Lookup failed while getting grandSlamJWT token due to error: %{public}@", v11, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 392);
  }

  v16 = *(*(v0 + 208) + 8);
  v16(*(v0 + 264), *(v0 + 200));
  *(v0 + 464) = 0;
  *(v0 + 472) = 0;
  *(v0 + 456) = v16;
  v17 = *(v0 + 336);
  if (*(v0 + 528))
  {
    v18 = *(v0 + 312);
    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v17 accountStore:v18 serviceIdentifier:v19 useCachedServiceToken:1];
    *(v0 + 480) = v20;

    *(v0 + 488) = [v20 perform];
    v21 = swift_task_alloc();
    *(v0 + 496) = v21;
    *v21 = v0;
    v21[1] = sub_10000CDA0;

    return sub_100005F04();
  }

  else
  {
    v23 = [*(v0 + 336) ams_altDSID];
    v24 = *(v0 + 336);
    v25 = *(v0 + 312);
    if (v23)
    {
      v26 = v23;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v28;
      v44 = v27;
    }

    else
    {

      v43 = 0;
      v44 = 0;
    }

    v41 = *(v0 + 464);
    v42 = *(v0 + 472);
    v30 = *(v0 + 296);
    v29 = *(v0 + 304);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v34 = *(v0 + 248);
    v33 = *(v0 + 256);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v37 = *(v0 + 224);
    v40 = *(v0 + 216);
    v38 = *(v0 + 176);

    *v38 = v44;
    v38[1] = v43;
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v41;
    v38[5] = v42;
    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_10000BFB8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);

  sub_100026C10(v3, v1, (v0 + 16));
  v5 = *(v0 + 192);
  if (v2)
  {
    v6 = *(v0 + 216);
    static Logger.events.getter();
    v7 = v5;
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 192);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v10;
      *v12 = v10;
      *(v11 + 12) = 2114;
      v13 = v10;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Verification failed while getting jwtGSToken token due to error: %{public}@", v11, 0x16u);
      sub_100002AD8(&qword_100039DA0, &qword_10002A740);
      swift_arrayDestroy();
    }

    else
    {
    }

    v27 = *(*(v0 + 208) + 8);
    v27(*(v0 + 216), *(v0 + 200));
    v1 = *(v0 + 384);
  }

  else
  {
    v15 = *(v0 + 256);
    v16 = sub_100024F48(*(v0 + 192));
    static Logger.events.getter();
    v17 = v5;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 192);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v20;
      *v22 = v20;
      *(v21 + 12) = 1026;
      *(v21 + 14) = v16 & 1;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Expired check for jwtGSToken returned: %{BOOL,public}d", v21, 0x12u);
      sub_10000D6F8(v22, &qword_100039DA0, &qword_10002A740);
    }

    v24 = *(v0 + 256);
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    sub_10000D4BC(v0 + 16);

    v27 = *(v26 + 8);
    *(v0 + 400) = v27;
    v27(v24, v25);
    if (v16)
    {
      v28 = *(v0 + 248);
      v29 = *(v0 + 192);
      static Logger.events.getter();
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 192);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v33;
        *v35 = v33;
        v36 = v33;
        _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Getting fresh jwtGSToken", v34, 0xCu);
        sub_10000D6F8(v35, &qword_100039DA0, &qword_10002A740);
      }

      v37 = *(v0 + 336);
      v38 = *(v0 + 312);
      v39 = *(v0 + 248);
      v40 = *(v0 + 200);

      v27(v39, v40);
      v41 = String._bridgeToObjectiveC()();
      v42 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v37 accountStore:v38 serviceIdentifier:v41 useCachedServiceToken:0];
      *(v0 + 408) = v42;

      *(v0 + 416) = [v42 perform];
      v43 = swift_task_alloc();
      *(v0 + 424) = v43;
      *v43 = v0;
      v44 = sub_10000C65C;
      goto LABEL_14;
    }
  }

  *(v0 + 464) = *(v0 + 376);
  *(v0 + 472) = v1;
  *(v0 + 456) = v27;
  v45 = *(v0 + 336);
  if (*(v0 + 528) == 1)
  {
    v46 = *(v0 + 312);
    v47 = String._bridgeToObjectiveC()();
    v48 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v45 accountStore:v46 serviceIdentifier:v47 useCachedServiceToken:1];
    *(v0 + 480) = v48;

    *(v0 + 488) = [v48 perform];
    v43 = swift_task_alloc();
    *(v0 + 496) = v43;
    *v43 = v0;
    v44 = sub_10000CDA0;
LABEL_14:
    v43[1] = v44;

    return sub_100005F04();
  }

  v50 = [*(v0 + 336) ams_altDSID];
  v51 = *(v0 + 336);
  v52 = *(v0 + 312);
  if (v50)
  {
    v53 = v50;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v55;
    v71 = v54;
  }

  else
  {

    v70 = 0;
    v71 = 0;
  }

  v68 = *(v0 + 464);
  v69 = *(v0 + 472);
  v57 = *(v0 + 296);
  v56 = *(v0 + 304);
  v59 = *(v0 + 264);
  v58 = *(v0 + 272);
  v61 = *(v0 + 248);
  v60 = *(v0 + 256);
  v63 = *(v0 + 232);
  v62 = *(v0 + 240);
  v64 = *(v0 + 224);
  v67 = *(v0 + 216);
  v65 = *(v0 + 176);

  *v65 = v71;
  v65[1] = v70;
  v65[2] = 0;
  v65[3] = 0;
  v65[4] = v68;
  v65[5] = v69;
  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10000C65C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 424);
  v8 = *v3;
  *(*v3 + 432) = v2;

  if (v2)
  {
    v9 = sub_10000CA00;
  }

  else
  {
    *(v6 + 440) = a2;
    *(v6 + 448) = a1;
    v9 = sub_10000C790;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000C790()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);

  v4 = *(v0 + 400);
  *(v0 + 464) = *(v0 + 448);
  *(v0 + 472) = v1;
  *(v0 + 456) = v4;
  v5 = *(v0 + 336);
  if (*(v0 + 528) == 1)
  {
    v6 = *(v0 + 312);
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v5 accountStore:v6 serviceIdentifier:v7 useCachedServiceToken:1];
    *(v0 + 480) = v8;

    *(v0 + 488) = [v8 perform];
    v9 = swift_task_alloc();
    *(v0 + 496) = v9;
    *v9 = v0;
    v9[1] = sub_10000CDA0;

    return sub_100005F04();
  }

  else
  {
    v11 = [*(v0 + 336) ams_altDSID];
    v12 = *(v0 + 336);
    v13 = *(v0 + 312);
    if (v11)
    {
      v14 = v11;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v16;
      v32 = v15;
    }

    else
    {

      v31 = 0;
      v32 = 0;
    }

    v29 = *(v0 + 464);
    v30 = *(v0 + 472);
    v18 = *(v0 + 296);
    v17 = *(v0 + 304);
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v22 = *(v0 + 248);
    v21 = *(v0 + 256);
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    v25 = *(v0 + 224);
    v28 = *(v0 + 216);
    v26 = *(v0 + 176);

    *v26 = v32;
    v26[1] = v31;
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v29;
    v26[5] = v30;
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_10000CA00()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 432);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  static Logger.events.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 192);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2114;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Verification failed while getting jwtGSToken token due to error: %{public}@", v9, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(*(v0 + 208) + 8);
  v13(*(v0 + 216), *(v0 + 200));
  v14 = *(v0 + 384);
  *(v0 + 464) = *(v0 + 376);
  *(v0 + 472) = v14;
  *(v0 + 456) = v13;
  v15 = *(v0 + 336);
  if (*(v0 + 528))
  {
    v16 = *(v0 + 312);
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v15 accountStore:v16 serviceIdentifier:v17 useCachedServiceToken:1];
    *(v0 + 480) = v18;

    *(v0 + 488) = [v18 perform];
    v19 = swift_task_alloc();
    *(v0 + 496) = v19;
    *v19 = v0;
    v19[1] = sub_10000CDA0;

    return sub_100005F04();
  }

  else
  {
    v21 = [*(v0 + 336) ams_altDSID];
    v22 = *(v0 + 336);
    v23 = *(v0 + 312);
    if (v21)
    {
      v24 = v21;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v26;
      v42 = v25;
    }

    else
    {

      v41 = 0;
      v42 = 0;
    }

    v39 = *(v0 + 464);
    v40 = *(v0 + 472);
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v32 = *(v0 + 248);
    v31 = *(v0 + 256);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    v35 = *(v0 + 224);
    v38 = *(v0 + 216);
    v36 = *(v0 + 176);

    *v36 = v42;
    v36[1] = v41;
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v39;
    v36[5] = v40;
    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_10000CDA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 496);
  v8 = *v3;
  *(*v3 + 504) = v2;

  if (v2)
  {
    v9 = sub_10000D040;
  }

  else
  {
    *(v6 + 512) = a2;
    *(v6 + 520) = a1;
    v9 = sub_10000CED8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000CED8()
{
  v26 = *(v0 + 512);
  v1 = *(v0 + 480);

  v25 = *(v0 + 520);
  v2 = [*(v0 + 336) ams_altDSID];
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  if (v2)
  {
    v5 = v2;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v7;
    v24 = v6;
  }

  else
  {

    v23 = 0;
    v24 = 0;
  }

  v21 = *(v0 + 464);
  v22 = *(v0 + 472);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  v20 = *(v0 + 216);
  v17 = *(v0 + 176);

  *v17 = v24;
  v17[1] = v23;
  v17[2] = v25;
  v17[3] = v26;
  v17[4] = v21;
  v17[5] = v22;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10000D040()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);

  static Logger.events.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 504);
  if (v8)
  {
    v10 = *(v0 + 192);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2114;
    v13 = v10;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Lookup failed while getting grandSlam token due to error: %{public}@", v11, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 504);
  }

  v16 = *(v0 + 208) + 8;
  (*(v0 + 456))(*(v0 + 240), *(v0 + 200));
  v17 = [*(v0 + 336) ams_altDSID];
  v18 = *(v0 + 336);
  v19 = *(v0 + 312);
  if (v17)
  {
    v20 = v17;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v22;
    v39 = v21;
  }

  else
  {

    v38 = 0;
    v39 = 0;
  }

  v36 = *(v0 + 464);
  v37 = *(v0 + 472);
  v24 = *(v0 + 296);
  v23 = *(v0 + 304);
  v26 = *(v0 + 264);
  v25 = *(v0 + 272);
  v28 = *(v0 + 248);
  v27 = *(v0 + 256);
  v30 = *(v0 + 232);
  v29 = *(v0 + 240);
  v31 = *(v0 + 224);
  v35 = *(v0 + 216);
  v32 = *(v0 + 176);

  *v32 = v39;
  v32[1] = v38;
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v36;
  v32[5] = v37;
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10000D2E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D31C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D3C8;

  return sub_1000283DC();
}

uint64_t sub_10000D3C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_10000D510(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10000D5B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000D5F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000D6F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002AD8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D758(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000D7B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D7C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D80C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000D860(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

Swift::Int sub_10000D914()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000D9C8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000DA68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000DB18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E6B0(*a1);
  *a2 = result;
  return result;
}

void sub_10000DB48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5129543;
  v5 = 0xE300000000000000;
  v6 = 5525065;
  v7 = 0xE300000000000000;
  v8 = 4144959;
  if (v2 != 3)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5064002;
    v3 = 0xE300000000000000;
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

uint64_t sub_10000DCCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100002B88(a1);
  }

  sub_10000D5B4(v10, v10[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v8 = v7;
  sub_100002B88(v10);
  result = sub_100002B88(a1);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_10000DDA0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10000DBB8(v2, v3, v4);
  sub_10000D860(v7, v7[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100002B88(v7);
}

void *sub_10000DE68(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = a1[4];
  v7 = sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100002B88(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10000D5B4(v13, v13[3]);
    sub_10000E3E0();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v9 = v12;
    v10 = &v3[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
    *v10 = v11[1];
    LOBYTE(v10[1].receiver) = v9;
    sub_100002B88(v13);
    v11[0].receiver = v3;
    v11[0].super_class = ObjectType;
    v7 = [(objc_super *)v11 init];
    sub_100002B88(a1);
  }

  return v7;
}

id sub_10000E0F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

id sub_10000E190()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000E210(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000E224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10000E26C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_10000E2D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_10000DE68(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000E320(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = *(v2 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation);
  v6 = *(v2 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation + 16);
  sub_10000D860(v7, v7[3]);
  sub_10000E434();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100002B88(v7);
}

unint64_t sub_10000E3E0()
{
  result = qword_100039690;
  if (!qword_100039690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039690);
  }

  return result;
}

unint64_t sub_10000E434()
{
  result = qword_100039698;
  if (!qword_100039698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039698);
  }

  return result;
}

unint64_t sub_10000E488()
{
  result = qword_1000396A0;
  if (!qword_1000396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A0);
  }

  return result;
}

uint64_t sub_10000E4DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogKey.Prefix(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LogKey.Prefix(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000E65C()
{
  result = qword_1000396A8;
  if (!qword_1000396A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A8);
  }

  return result;
}

unint64_t sub_10000E6B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000352C0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000E6FC(uint64_t a1, uint64_t a2)
{
  strcpy((v2 + 16), "xp_app_install");
  *(v2 + 31) = -18;
  *(v2 + 32) = &_swiftEmptyArrayStorage;
  *(v2 + 40) = 0x40F5180000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 2;
  *(v2 + 96) = &off_100035258;
  *(v2 + 104) = a2;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_10000E768(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x707954746E657665;
  }

  else
  {
    v4 = 0x6369706F74;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x707954746E657665;
  }

  else
  {
    v6 = 0x6369706F74;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
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

Swift::Int sub_10000E810()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000E894()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000E904()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000E984@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100035358, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10000E9E4(uint64_t *a1@<X8>)
{
  v2 = 0x6369706F74;
  if (*v1)
  {
    v2 = 0x707954746E657665;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000EA24()
{
  if (*v0)
  {
    result = 0x707954746E657665;
  }

  else
  {
    result = 0x6369706F74;
  }

  *v0;
  return result;
}

uint64_t sub_10000EA60@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100035358, v3);

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

uint64_t sub_10000EADC(uint64_t a1)
{
  v2 = sub_10000EDB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EB18(uint64_t a1)
{
  v2 = sub_10000EDB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EB54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  return v0;
}

uint64_t sub_10000EBA4()
{
  sub_10000EB54();

  return swift_deallocClassInstance();
}

uint64_t sub_10000EBFC(void *a1)
{
  v3 = sub_100002AD8(&qword_1000397A0, &qword_10002AAB0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  sub_10000EDB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10000ED3C(uint64_t a1)
{
  result = sub_10000ED64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000ED64()
{
  result = qword_100039640;
  if (!qword_100039640)
  {
    type metadata accessor for ASEEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039640);
  }

  return result;
}

unint64_t sub_10000EDB8()
{
  result = qword_1000397A8;
  if (!qword_1000397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupplementalField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SupplementalField(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000EF6C()
{
  result = qword_1000397B0;
  if (!qword_1000397B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B0);
  }

  return result;
}

unint64_t sub_10000EFC4()
{
  result = qword_1000397B8;
  if (!qword_1000397B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B8);
  }

  return result;
}

unint64_t sub_10000F01C()
{
  result = qword_1000397C0;
  if (!qword_1000397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397C0);
  }

  return result;
}

uint64_t sub_10000F070(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppInstallType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AppInstallType.autoDownload(_:))
  {
    return 0x6E776F446F747561;
  }

  if (v9 == enum case for AppInstallType.buy(_:))
  {
    return 7959906;
  }

  if (v9 == enum case for AppInstallType.clipBuy(_:))
  {
    return 0x79754270696C63;
  }

  if (v9 == enum case for AppInstallType.promotion(_:))
  {
    return 0x6F69746F6D6F7270;
  }

  if (v9 == enum case for AppInstallType.queue(_:))
  {
    return 0x6575657571;
  }

  if (v9 == enum case for AppInstallType.redownload(_:))
  {
    return 0x6F6C6E776F646572;
  }

  if (v9 == enum case for AppInstallType.restore(_:))
  {
    return 0x65726F74736572;
  }

  if (v9 == enum case for AppInstallType.restoreUpdate(_:))
  {
    return 0x5565726F74736572;
  }

  v11 = v9;
  result = 0x64705565726F7473;
  if (v11 != enum case for AppInstallType.storeUpdate(_:))
  {
    if (v11 == enum case for AppInstallType.updateAutomatic(_:))
    {
      if ((a1 & 1) == 0)
      {
        return 0x7541657461647075;
      }
    }

    else if (v11 == enum case for AppInstallType.betaInstall(_:))
    {
      return 0x74736E4961746562;
    }

    else if (v11 == enum case for AppInstallType.betaUpdate(_:))
    {
      return 0x6164705561746562;
    }

    else if (v11 == enum case for AppInstallType.deviceManagedInstall(_:))
    {
      return 0xD000000000000014;
    }

    else if (v11 == enum case for AppInstallType.deviceManagedUpdate(_:))
    {
      return 0xD000000000000013;
    }

    else if (v11 == enum case for AppInstallType.userManagedInstall(_:))
    {
      return 0xD000000000000012;
    }

    else if (v11 == enum case for AppInstallType.tvProviderBuy(_:))
    {
      return 0x6469766F72507674;
    }

    else if (v11 == enum case for AppInstallType.tvProviderUpdate(_:))
    {
      return 0xD000000000000010;
    }

    else if (v11 == enum case for AppInstallType.upp(_:))
    {
      return 7368821;
    }

    else if (v11 == enum case for AppInstallType.web(_:))
    {
      return 6448503;
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      return 0x6E776F6E6B6E75;
    }
  }

  return result;
}

uint64_t sub_10000F52C()
{
  v1 = v0;
  v2 = type metadata accessor for AppInstallType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  result = 1;
  if (v7 != enum case for AppInstallType.autoDownload(_:) && v7 != enum case for AppInstallType.buy(_:) && v7 != enum case for AppInstallType.clipBuy(_:) && v7 != enum case for AppInstallType.promotion(_:) && v7 != enum case for AppInstallType.queue(_:) && v7 != enum case for AppInstallType.redownload(_:) && v7 != enum case for AppInstallType.restore(_:) && v7 != enum case for AppInstallType.restoreUpdate(_:) && v7 != enum case for AppInstallType.storeUpdate(_:) && v7 != enum case for AppInstallType.updateAutomatic(_:) && v7 != enum case for AppInstallType.betaInstall(_:) && v7 != enum case for AppInstallType.betaUpdate(_:) && v7 != enum case for AppInstallType.deviceManagedInstall(_:) && v7 != enum case for AppInstallType.deviceManagedUpdate(_:) && v7 != enum case for AppInstallType.userManagedInstall(_:))
  {
    result = 0;
    if (v7 != enum case for AppInstallType.tvProviderBuy(_:) && v7 != enum case for AppInstallType.tvProviderUpdate(_:))
    {
      result = 1;
      if (v7 != enum case for AppInstallType.upp(_:) && v7 != enum case for AppInstallType.web(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000F7B4()
{
  v15 = type metadata accessor for URL();
  v0 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v1 = type metadata accessor for Logger();
  v13 = *(v1 - 8);
  v14 = v1;
  v2 = *(v13 + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002AD8(&qword_1000397C8, &qword_10002AC28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AC10;
  *(inited + 32) = NSURLIsExcludedFromBackupKey;
  v9 = NSURLIsExcludedFromBackupKey;
  sub_10000FF68(inited);
  swift_setDeallocating();
  sub_10000FFF4(inited + 32);
  URL.resourceValues(forKeys:)();

  v10 = URLResourceValues.isExcludedFromBackup.getter();
  (*(v4 + 8))(v7, v3);
  return v10 & 1;
}

uint64_t sub_10000FBC4(char a1)
{
  v1 = a1 & 1;
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10000F7B4();
  if ((result & 1) != v1)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_10000FF00(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_100039DA0, &qword_10002A740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FF68(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100010050();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001FD50(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10000FFF4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010050()
{
  result = qword_100039440;
  if (!qword_100039440)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039440);
  }

  return result;
}

uint64_t sub_1000100A8()
{
  v2 = *(v0 + 16);
  os_activity_scope_leave(&v2);
  return swift_deallocClassInstance();
}

uint64_t sub_100010134()
{
  qword_1000397D0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100010170(unint64_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_100039270 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_1000397D0;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(description))
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_100039270 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_1000397D0, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t type metadata accessor for ServiceListenerDelegate()
{
  result = qword_100039918;
  if (!qword_100039918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010490()
{
  result = type metadata accessor for BagService();
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

uint64_t sub_100010530(void *a1)
{
  v3 = type metadata accessor for BagService();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP22AppInstallationMetrics15ServiceProtocol_];
  [a1 setExportedInterface:v8];
  v9 = *(v1 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_dependencies);
  v10 = *(v4 + 16);
  v10(v7, v1 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_bagService, v3);
  v11 = type metadata accessor for Service();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_dependencies] = v9;
  v10(&v12[OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_bagService], v7, v3);
  v15.receiver = v12;
  v15.super_class = v11;

  v13 = objc_msgSendSuper2(&v15, "init");
  (*(v4 + 8))(v7, v3);
  [a1 setExportedObject:v13];

  [a1 setRemoteObjectInterface:v8];
  [a1 resume];

  return 1;
}

uint64_t _s14BasePropertiesOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14BasePropertiesOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100010880(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6F6973726556736FLL;
  v5 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v4 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v6 = 0x56646C697542736FLL;
  v7 = 0xEE006E6F69737265;
  if (a1 != 4)
  {
    v6 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7372655665736162;
  v9 = 0xEB000000006E6F69;
  if (a1 != 2)
  {
    v8 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  v10 = 0x6973726556707061;
  if (a1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  else
  {
    v10 = 7368801;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE90000000000006ELL;
        if (v11 != 0x6F6973726556736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x656E6F7A656D6974;
      v15 = 0x74657366664FLL;
    }

    else
    {
      if (a2 != 4)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x656D614E736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x56646C697542736FLL;
      v15 = 0x6E6F69737265;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v11 != v14)
    {
LABEL_45:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_46;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x7372655665736162)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEC0000006E6F6973;
      if (v11 != 0x726556746E657665)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006E6FLL;
    if (v11 != 0x6973726556707061)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368801)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_100010B3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5129543;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5064002;
    }

    else
    {
      v4 = 5129543;
    }

    v5 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v5 = 0xE300000000000000;
    v4 = 5525065;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 4144959;
    }

    else
    {
      v4 = 0;
    }

    if (v3 == 3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 5525065;
  v8 = 0xE300000000000000;
  v9 = 4144959;
  if (a2 != 3)
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (a2)
  {
    v2 = 5064002;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = v6;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100010C68()
{
  String.hash(into:)();
}

Swift::Int sub_100010DBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100010F4C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000110F8(*a1);
  *a2 = result;
  return result;
}

void sub_100010F7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE90000000000006ELL;
  v6 = 0x6F6973726556736FLL;
  if (v2 != 6)
  {
    v6 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v7 = 0xEE006E6F69737265;
  v8 = 0x56646C697542736FLL;
  if (v2 != 4)
  {
    v8 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E6F69;
  v10 = 0x7372655665736162;
  if (v2 != 2)
  {
    v10 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  if (*v1)
  {
    v4 = 0x6973726556707061;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1000110A4()
{
  result = qword_100039930;
  if (!qword_100039930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039930);
  }

  return result;
}

unint64_t sub_1000110F8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000353A8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100011144(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v49 = a1;
  v50 = a4;
  v48 = a3;
  v47 = a2;
  v46 = type metadata accessor for OSSignpostID();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v46);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignposter();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v40 - v23;
  v25 = v50;
  v26 = v47;
  *(v5 + 16) = v49;
  *(v5 + 24) = v26;
  *(v5 + 32) = v48;
  v27 = *(v13 + 16);
  v47 = v12;
  v27(v16, v25, v12);
  OSSignposter.init(logger:)();
  v28 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter;
  (*(v18 + 32))(v5 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter, v24, v17);
  (*(v18 + 16))(v22, v5 + v28, v17);
  static OSSignpostID.exclusive.getter();
  v29 = OSSignposter.logHandle.getter();
  v30 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v42 = v22;
  v43 = v5;
  v41 = v18;
  v44 = v13;
  if ((v48 & 1) == 0)
  {
    v32 = v49;
    if (v49)
    {
LABEL_9:
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v34, v32, "", v33, 2u);

      v5 = v43;
      v13 = v44;
      v18 = v41;
      v22 = v42;
LABEL_10:

      v35 = v46;
      (*(v6 + 16))(v45, v11, v46);
      v36 = type metadata accessor for OSSignpostIntervalState();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v13 + 8))(v50, v47);
      (*(v6 + 8))(v11, v35);
      (*(v18 + 8))(v22, v17);
      *(v5 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_interval) = v39;
      return v5;
    }

    __break(1u);
  }

  if (v49 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v49 & 0xFFFFF800) != 0xD800)
  {
    if (v49 >> 16 <= 0x10)
    {
      v32 = &v51;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100011558()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin();
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignposter();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter;
  (*(v10 + 16))(v13, v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter, v9);
  v37 = *(v0 + 16);
  v36 = *(v0 + 32);
  v15 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_interval;
  v16 = *(v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_interval);

  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v34 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v19 = v42;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v41 + 8))(v8, v19);
    v28 = *(v10 + 8);
    v28(v13, v9);
    v28((v1 + v14), v9);
    v29 = *(v1 + v15);

    return v1;
  }

  v35 = v16;
  v30 = v1;
  v31 = v15;
  v32 = v13;
  v33 = v14;
  v20 = v42;
  if ((v36 & 1) == 0)
  {
    v22 = v39;
    v21 = v40;
    v24 = v37;
    v23 = v38;
    if (v37)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v22 + 88))(v23, v21) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v22 + 8))(v23, v21);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v34, v27, v24, v25, v26, 2u);

      v19 = v20;
      v13 = v32;
      v14 = v33;
      v1 = v30;
      v15 = v31;
      goto LABEL_13;
    }

    __break(1u);
  }

  v23 = v38;
  v22 = v39;
  v21 = v40;
  if (v37 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v37 & 0xFFFFF800) != 0xD800)
  {
    if (v37 >> 16 <= 0x10)
    {
      v24 = &v43;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100011928()
{
  sub_100011558();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostInterval()
{
  result = qword_100039960;
  if (!qword_100039960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000119D4()
{
  result = type metadata accessor for OSSignposter();
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

char *sub_100011B14()
{
  v0 = type metadata accessor for AnyValue();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = dispatch thunk of Bag.subscript.getter();
  if (!v5)
  {
    return &off_100035208;
  }

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v1 + 16;
    v8 = *(v1 + 16);
    v9 = *(v1 + 80);
    v20 = v5;
    v10 = v5 + ((v9 + 32) & ~v9);
    v21 = *(v7 + 56);
    v22 = v8;
    v23 = v7;
    v11 = (v7 - 8);
    v12 = &_swiftEmptyArrayStorage;
    v8(v4, v10, v0);
    while (1)
    {
      v14 = AnyValue.string.getter();
      v16 = v15;
      (*v11)(v4, v0);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100026414(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = sub_100026414((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v13 = &v12[16 * v18];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v10 += v21;
      if (!--v6)
      {
        break;
      }

      v22(v4, v10, v0);
    }
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_100011DC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BagService.PermittedDataOrigin() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for BagService.UpdatePolicy() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for BagService.ExpiredDataUsage() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for BagService.Policy();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100011F78, 0, 0);
}

uint64_t sub_100011F78()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  static BagService.ExpiredDataUsage.notPermitted.getter();
  static BagService.UpdatePolicy.never.getter();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v5 = async function pointer to BagService.createBag(policy:)[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_100012054;
  v7 = v0[14];
  v8 = v0[2];
  v9 = v0[3];

  return BagService.createBag(policy:)(v8, v7);
}

uint64_t sub_100012054()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *v1;
  v6[16] = v0;

  v7 = *(v4 + 8);
  v6[17] = v7;
  v6[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_100012244, 0, 0);
  }

  else
  {
    v9 = v6[13];
    v8 = v6[14];
    v11 = v6[9];
    v10 = v6[10];
    v13 = v6[7];
    v12 = v6[8];
    v14 = v6[6];

    v15 = v6[1];

    return v15();
  }
}

uint64_t sub_100012244()
{
  v1 = v0[16];
  v2 = v0[7];
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to load non-expired bag; falling back to expired bag: %{public}@", v6, 0xCu);
    sub_10000FF00(v7);
  }

  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[4];
  v15 = v0[5];

  v16 = *(v15 + 8);
  v0[19] = v16;
  v0[20] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  static BagService.ExpiredDataUsage.permitted(maxExpirationDuration:)();
  static BagService.UpdatePolicy.never.getter();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v17 = async function pointer to BagService.createBag(policy:)[1];
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_100012438;
  v19 = v0[13];
  v20 = v0[2];
  v21 = v0[3];

  return BagService.createBag(policy:)(v20, v19);
}

uint64_t sub_100012438()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 176) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_10001266C;
  }

  else
  {
    v7 = sub_1000125B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000125B8()
{
  v1 = v0[16];

  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10001266C()
{
  v1 = v0[22];
  v2 = v0[6];
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to load bag from network or storage: %{public}@", v6, 0xCu);
    sub_10000FF00(v7);
  }

  v9 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[6];
  v13 = v0[4];
  v14 = v0[2];

  v11(v12, v13);
  *(v14 + 24) = &type metadata for EmptyBag;
  *(v14 + 32) = sub_10001283C();

  v15 = v0[16];

  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[9];
  v18 = v0[10];
  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];

  v23 = v0[1];

  return v23();
}

unint64_t sub_10001283C()
{
  result = qword_1000399F8;
  if (!qword_1000399F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000399F8);
  }

  return result;
}

uint64_t sub_100012914@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100012994(a1, a2);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_100012994(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10001DC98(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "Read key %s from an empty bag", v11, 0xCu);
    sub_100002B88(v12);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100012B44()
{
  v0 = sub_100002AD8(&qword_100039A08, &qword_10002AE08);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_100039A00 = result;
  return result;
}

uint64_t sub_100012BCC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

BOOL sub_100012C2C(uint64_t a1)
{
  v4 = sub_100012CEC(a1);
  if (!v1)
  {
    v5 = v4;
    v6 = (a1 + 56);
    v7 = *(a1 + 16) + 1;
    do
    {
      v2 = --v7 == 0;
      if (!v7)
      {
        break;
      }

      v8 = v6 + 4;
      v10 = *(v6 - 1);
      v9 = *v6;
      v12 = *(v6 - 3);
      v11 = *(v6 - 2);

      LOBYTE(v12) = sub_100013134(v5, v12, v11, v10, v9);

      v6 = v8;
    }

    while ((v12 & 1) != 0);
  }

  return v2;
}

unint64_t sub_100012CEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return sub_100013A74(&_swiftEmptyArrayStorage);
  }

  v29[0] = v6;
  error = 0;
  v30 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v10 = (a1 + 56);
  do
  {
    v12 = *(v10 - 3);
    v11 = *(v10 - 2);
    v13 = *v10;
    v10 += 4;

    String._bridgeToObjectiveC()();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v14 = v30[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    --v9;
  }

  while (v9);
  type metadata accessor for CFString(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = SecTaskCopyValuesForEntitlements(v2, isa, &error);

  if (v16)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v30 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      result = v30;
      if (v30)
      {
        return result;
      }
    }

    else
    {
    }
  }

  static Logger.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    swift_beginAccess();
    if (error)
    {
      v22 = error;
      v29[1] = v22;
      type metadata accessor for CFError(0);
      sub_1000138FC(&qword_100039B78, type metadata accessor for CFError);
      v23 = Error.localizedDescription.getter();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_10001DC98(v23, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Error obtaining entitlements: %s", v20, 0xCu);
    sub_100002B88(v21);
  }

  (*(v29[0] + 8))(v8, v4);
  v27 = type metadata accessor for AppInstallationMetricsError();
  sub_1000138FC(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, enum case for AppInstallationMetricsError.unknown(_:), v27);
  return swift_willThrow();
}

uint64_t sub_100013134(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v15 = sub_1000134FC(a2, a3), (v16 & 1) != 0))
  {
    sub_10000D758(*(a1 + 56) + 32 * v15, v34);
  }

  else
  {
    memset(v34, 0, sizeof(v34));
  }

  if (a5)
  {
    sub_100013DF4(v34, &v31, &qword_100039B60, "~!");
    if (v33)
    {
      sub_100002AD8(&qword_100039B68, &qword_10002AE68);
      v17 = swift_dynamicCast();
      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      v18 = v30;
      v31 = a4;
      v32 = a5;
      __chkstk_darwin(v17);
      *(&v28 - 2) = &v31;
      v19 = sub_100013620(sub_1000138A4, (&v28 - 4), v18);

      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:
      sub_100013574(v34);
      return 1;
    }
  }

  else
  {
    sub_100013DF4(v34, &v31, &qword_100039B60, "~!");
    if (v33)
    {
      if (!swift_dynamicCast() || (v30 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  sub_100013574(&v31);
LABEL_15:
  if (os_variant_has_internal_content())
  {
    v29 = a4;
    static Logger.daemon.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v28 = v11;
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v23 = 136446466;
      *(v23 + 4) = sub_10001DC98(a2, a3, &v30);
      *(v23 + 12) = 2082;
      if (a5)
      {
        v31 = 47;
        v32 = 0xE100000000000000;
        v24._countAndFlagsBits = v29;
        v24._object = a5;
        String.append(_:)(v24);
        v25 = v31;
        v26 = v32;
      }

      else
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_10001DC98(v25, v26, &v30);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing entitlement %{public}s%{public}s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v28 + 8))(v14, v10);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }

  sub_100013574(v34);
  return 0;
}

unint64_t sub_1000134FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000136CC(a1, a2, v6);
}

uint64_t sub_100013574(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_100039B60, "~!");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000135DC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100013784(a1, v4);
}

uint64_t sub_100013620(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_1000136CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100013784(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000D69C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000D640(v8);
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

uint64_t sub_10001384C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000138A4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000138FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100013944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002AD8(&qword_100039658, &unk_10002AE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013DF4(v4, &v13, &qword_100039650, qword_10002A7E0);
      v5 = v13;
      v6 = v14;
      result = sub_1000134FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D7B4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100013A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002AD8(&qword_100039B80, &qword_10002AE70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013DF4(v4, &v13, &qword_100039B88, &qword_10002AE78);
      v5 = v13;
      v6 = v14;
      result = sub_1000134FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D7B4(&v15, (v3[7] + 32 * result));
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

SecTaskRef sub_100013BA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v24 = HIDWORD(a4);
  v11 = type metadata accessor for Logger();
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  token.val[0] = v7;
  token.val[1] = v8;
  token.val[2] = v6;
  token.val[3] = v9;
  token.val[4] = v5;
  token.val[5] = v10;
  token.val[6] = v4;
  token.val[7] = v24;
  result = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!result)
  {
    v16 = v22;
    static Logger.daemon.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error creating security task for entitlement check", v19, 2u);
    }

    (*(v16 + 8))(v14, v11);
    v20 = type metadata accessor for AppInstallationMetricsError();
    sub_1000138FC(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for AppInstallationMetricsError.unknown(_:), v20);
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_100013DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002AD8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 sub_100013E5C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013E68(uint64_t a1, int a2)
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

uint64_t sub_100013EB0(uint64_t result, int a2, int a3)
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

void sub_100013F00()
{
  v1 = v0;
  v19 = type metadata accessor for Logger();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  v12 = String._bridgeToObjectiveC()();
  sub_1000150C8();
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.background(_:), v6);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v10, v6);
  aBlock[4] = sub_100015114;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000141F8;
  aBlock[3] = &unk_100035C80;
  v14 = _Block_copy(aBlock);

  LOBYTE(v1) = [v11 registerForTaskWithIdentifier:v12 usingQueue:v13 launchHandler:v14];
  _Block_release(v14);

  if ((v1 & 1) == 0)
  {
    static Logger.activity.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "[DailyWakeupTask] Error registering task", v17, 2u);
    }

    (*(v2 + 8))(v5, v19);
  }
}

void sub_1000141F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100014260()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = *(v0 + 16);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 taskRequestForIdentifier:v10];

  if (v11)
  {

    static Logger.activity.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[DailyWakeupTask] Task already scheduled", v14, 2u);
    }

    v8 = v6;
  }

  else
  {
    v15 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 initWithIdentifier:v16];

    v18 = v17;
    [v18 setRequiresNetworkConnectivity:1];
    [v18 setRequiresExternalPower:0];
    [v18 setInterval:86400.0];
    [v18 setExpectedDuration:10.0];

    v23 = 0;
    if (![v9 submitTaskRequest:v18 error:&v23])
    {
      v22 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v19 = v23;
    static Logger.activity.getter();
    v12 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v12, v20, "[DailyWakeupTask] Task submitted", v21, 2u);
    }

    else
    {

      v12 = v18;
    }
  }

  (*(v2 + 8))(v8, v1);
}

id sub_1000145D4(void *a1, uint64_t a2)
{
  v4 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;

  sub_100014C7C(0, 0, v7, &unk_10002AF30, v9);

  sub_100015228(v7);
  return [a1 setTaskCompleted];
}

uint64_t sub_1000146FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000147C8, 0, 0);
}

uint64_t sub_1000147C8()
{
  v1 = v0[9];
  static Logger.activity.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[DailyWakeupTask] Wakeup to flush metrics", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  v10 = *(v8 + 24);
  v0[11] = v10;

  return _swift_task_switch(sub_1000148DC, v10, 0);
}

uint64_t sub_1000148DC()
{
  super_class = v0[5].super_class;
  v2 = type metadata accessor for LogKey();
  v3 = objc_allocWithZone(v2);
  v0[2].receiver = 0;
  swift_stdlib_random();
  v4 = &v3[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
  *v4 = (v0[2].receiver << 32) | 1;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v5 = objc_msgSendSuper2(v0 + 1, "init");
  v0[6].receiver = v5;
  v6 = *(super_class + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_aseMetrics);
  v7 = swift_task_alloc();
  v0[6].super_class = v7;
  *v7 = v0;
  *(v7 + 1) = sub_1000149F0;

  return sub_10001ED00(v5);
}

uint64_t sub_1000149F0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100014B00, v2, 0);
}

uint64_t sub_100014B00()
{

  return _swift_task_switch(sub_100014B68, 0, 0);
}

uint64_t sub_100014B68()
{
  v1 = v0[8];
  static Logger.activity.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[DailyWakeupTask] Wakeup flush complete", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  v6(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100014C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100015290(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100015228(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
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

uint64_t sub_100014F1C()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon15DailyWakeupTask_bagService;
  v3 = type metadata accessor for BagService();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DailyWakeupTask()
{
  result = qword_100039BC0;
  if (!qword_100039BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001501C()
{
  result = type metadata accessor for BagService();
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

unint64_t sub_1000150C8()
{
  result = qword_100039C58;
  if (!qword_100039C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039C58);
  }

  return result;
}

uint64_t sub_10001511C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015134()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D3C8;

  return sub_1000146FC(a1, v4, v5, v6);
}

uint64_t sub_100015228(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015290(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015300()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015338(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D3C8;

  return sub_10001D8B8(a1, v5);
}

unint64_t sub_1000153F4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100002AD8(&qword_100039D08, &qword_10002AF88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v38[-v14];
  __chkstk_darwin(v13);
  v45 = &v38[-v16];
  v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  v18 = v1[2];
  result = os_transaction_get_timestamp();
  if (v17 < result)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v42 = v12;
    v44 = v3;
    v21 = objc_opt_self();
    v22 = [v21 nanoseconds];
    sub_100015894();
    v23 = v45;
    Measurement.init(value:unit:)();
    static Logger.general.getter();
    (*(v8 + 16))(v15, v23, v7);

    v43 = v6;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = v2;
      v27 = v26;
      v40 = swift_slowAlloc();
      v46 = v40;
      *v27 = 33555202;
      *(v27 + 4) = v20;
      v39 = v25;
      *(v27 + 6) = 2080;
      *(v27 + 8) = sub_10001DC98(v1[3], v1[4], &v46);
      *(v27 + 16) = 2080;
      v28 = [v21 milliseconds];
      v29 = v42;
      Measurement<>.converted(to:)();

      v30 = Measurement<>.formatted()();
      v32 = v31;
      v33 = *(v8 + 8);
      v33(v29, v7);
      v33(v15, v7);
      v34 = sub_10001DC98(v30, v32, &v46);

      *(v27 + 18) = v34;
      _os_log_impl(&_mh_execute_header, v24, v39, "[TXN%hx] 🐏 Ending transaction (%s) (%s)", v27, 0x1Au);
      swift_arrayDestroy();

      (*(v44 + 8))(v43, v41);
      v33(v45, v7);
    }

    else
    {

      v35 = *(v8 + 8);
      v35(v15, v7);
      (*(v44 + 8))(v43, v2);
      v35(v45, v7);
    }

    v36 = v1[2];
    swift_unknownObjectRelease();
    v37 = v1[4];

    return v1;
  }

  return result;
}

uint64_t sub_10001583C()
{
  sub_1000153F4();

  return swift_deallocClassInstance();
}

unint64_t sub_100015894()
{
  result = qword_100039D10;
  if (!qword_100039D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039D10);
  }

  return result;
}

uint64_t sub_1000158E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = StaticString.description.getter();
  v1[4] = v7;
  String.utf8CString.getter();
  v8 = os_transaction_create();

  if (v8)
  {
    v1[2] = v8;
    timestamp = os_transaction_get_timestamp();
    static Logger.general.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v21 = v2;
      v16 = v15;
      v23 = v15;
      *v14 = 33554946;
      *(v14 + 4) = timestamp;
      *(v14 + 6) = 2080;
      v17 = StaticString.description.getter();
      v19 = sub_10001DC98(v17, v18, &v23);

      *(v14 + 8) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "[TXN%hx] 🐏 Beginning transaction (%s)", v14, 0x10u);
      sub_100002B88(v16);

      (*(v22 + 8))(v6, v21);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015B1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v5;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_10002B0C8;
  *(v18 + 24) = v16;
  v19 = objc_opt_self();
  v20 = v5;

  sub_10001EA94(a1, a2);
  v21 = [v19 currentConnection];
  v22 = v21;
  if (v21)
  {
    [v21 auditToken];
    v28 = v33;
    v29 = v32;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  LOBYTE(v32) = v22 == 0;
  sub_100013DF4(v15, v13, &qword_1000395C0, &qword_10002AF20);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = "handleAppInstall";
  *(v23 + 40) = 16;
  *(v23 + 48) = 2;
  *(v23 + 56) = v20;
  v24 = v28;
  *(v23 + 64) = v29;
  *(v23 + 80) = v24;
  *(v23 + 96) = v32;
  *(v23 + 104) = &unk_10002B0D0;
  *(v23 + 112) = v18;
  v25 = ObjectType;
  *(v23 + 120) = v31;
  *(v23 + 128) = a4;
  *(v23 + 136) = v25;
  v26 = v20;

  sub_10001CE60(0, 0, v13, &unk_10002B0D8, v23);

  return sub_10000D6F8(v15, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100015DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = type metadata accessor for Logger();
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v10 = *(v9 + 64) + 15;
  v7[27] = swift_task_alloc();
  v11 = type metadata accessor for AppInstallationEvent();
  v7[28] = v11;
  v12 = *(v11 - 8);
  v7[29] = v12;
  v13 = *(v12 + 64) + 15;
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return _swift_task_switch(sub_100015F28, 0, 0);
}

uint64_t sub_100015F28()
{
  v51 = v0;
  v1 = sub_100013BA4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  v2 = sub_100012C2C(&off_100035488);

  sub_10001E28C(&unk_1000354A8);
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = type metadata accessor for LogKey();
    v8 = objc_allocWithZone(v7);
    *(v0 + 88) = 0;
    swift_stdlib_random();
    v9 = &v8[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
    *v9 = (*(v0 + 88) << 32) | 1;
    *(v9 + 1) = 0;
    v9[16] = 0;
    *(v0 + 56) = v8;
    *(v0 + 64) = v7;
    v10 = objc_msgSendSuper2((v0 + 56), "init");
    *(v0 + 256) = v10;
    *(v0 + 72) = v6;
    *(v0 + 80) = v5;
    *(v0 + 96) = v3;
    *(v0 + 104) = v0 + 72;
    sub_10001EA94(v6, v5);
    *(v0 + 112) = &type metadata for Data;
    *(v0 + 120) = v4;
    *(v0 + 128) = sub_10001EB3C();
    *(v0 + 136) = sub_10001EB90(&unk_100039DD0, &type metadata accessor for AppInstallationEvent);
    decodeXPCValues<each A, B>(from:)();
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 224);
    v21 = *(v0 + 232);
    v22 = *(v0 + 216);
    sub_10000D80C(*(v0 + 72), *(v0 + 80));
    static Logger.general.getter();
    (*(v21 + 16))(v19, v18, v20);
    v23 = v10;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    log = v24;
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v32 = *(v0 + 200);
    v31 = *(v0 + 208);
    if (v26)
    {
      v48 = *(v0 + 200);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v33 = 138412546;
      *(v33 + 4) = v23;
      *v34 = v23;
      *(v33 + 12) = 2080;
      v35 = v23;
      v36 = AppInstallationEvent.bundleID.getter();
      v47 = v30;
      v38 = v37;
      v45 = v25;
      v41 = *(v28 + 8);
      v39 = v28 + 8;
      v40 = v41;
      v41(v27, v29);
      v42 = sub_10001DC98(v36, v38, &v50);

      *(v33 + 14) = v42;
      _os_log_impl(&_mh_execute_header, log, v45, "[%@] Adding install for bundleID: %s", v33, 0x16u);
      sub_10000D6F8(v34, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v46);

      (*(v31 + 8))(v47, v48);
    }

    else
    {

      v43 = *(v28 + 8);
      v39 = v28 + 8;
      v40 = v43;
      v43(v27, v29);
      (*(v31 + 8))(v30, v32);
    }

    *(v0 + 264) = v39;
    *(v0 + 272) = v40;
    *(v0 + 280) = *(*(*(v0 + 192) + OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_dependencies) + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager);

    v44 = swift_task_alloc();
    *(v0 + 288) = v44;
    *v44 = v0;
    v44[1] = sub_100016458;

    return sub_100011DC0(v0 + 16);
  }

  else
  {
    v11 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppInstallationMetricsError.notAuthorized(_:), v11);
    swift_willThrow();
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 216);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100016458()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[37] = v4;
  *v4 = v3;
  v4[1] = sub_1000165C8;
  v5 = v1[35];
  v6 = v1[32];
  v7 = v1[31];

  return sub_1000040BC(v7, (v1 + 2), v6);
}

uint64_t sub_1000165C8()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_1000166E0, 0, 0);
}

uint64_t sub_1000166E0()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);

  v1(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100016864(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = [objc_opt_self() currentConnection];
  v15 = v14;
  if (v14)
  {
    [v14 auditToken];
    v20 = v23;
    v21 = v22;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  LOBYTE(v22) = v15 == 0;
  sub_100013DF4(v12, v10, &qword_1000395C0, &qword_10002AF20);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = "clearEvents";
  *(v16 + 40) = 11;
  *(v16 + 48) = 2;
  *(v16 + 56) = v2;
  v17 = v20;
  *(v16 + 64) = v21;
  *(v16 + 80) = v17;
  *(v16 + 96) = v22;
  *(v16 + 104) = &unk_10002B0A8;
  *(v16 + 112) = 0;
  *(v16 + 120) = a1;
  *(v16 + 128) = a2;
  *(v16 + 136) = ObjectType;
  v18 = v2;

  sub_10001CE60(0, 0, v10, &unk_10002B0B0, v16);

  return sub_10000D6F8(v12, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100016AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100016B68, 0, 0);
}

uint64_t sub_100016B68()
{
  v1 = sub_100013BA4(v0[2], v0[3], v0[4], v0[5]);
  v2 = sub_100012C2C(&off_1000354C8);

  sub_10001E28C(&unk_1000354E8);
  if (v2)
  {
    v3 = v0[8];
    static Logger.general.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Clearing events no longer supported", v6, 2u);
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];

    (*(v8 + 8))(v7, v9);

    v10 = v0[1];
  }

  else
  {
    v11 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppInstallationMetricsError.notAuthorized(_:), v11);
    swift_willThrow();
    v13 = v0[8];

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_100016DB0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = [objc_opt_self() currentConnection];
  v15 = v14;
  if (v14)
  {
    [v14 auditToken];
    v20 = v23;
    v21 = v22;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  LOBYTE(v22) = v15 == 0;
  sub_100013DF4(v12, v10, &qword_1000395C0, &qword_10002AF20);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = "handlePing";
  *(v16 + 40) = 10;
  *(v16 + 48) = 2;
  *(v16 + 56) = v2;
  v17 = v20;
  *(v16 + 64) = v21;
  *(v16 + 80) = v17;
  *(v16 + 96) = v22;
  *(v16 + 104) = &unk_10002B078;
  *(v16 + 112) = 0;
  *(v16 + 120) = a1;
  *(v16 + 128) = a2;
  *(v16 + 136) = ObjectType;
  v18 = v2;

  sub_10001CE60(0, 0, v10, &unk_10002B088, v16);

  return sub_10000D6F8(v12, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100016FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000170B8, 0, 0);
}

uint64_t sub_1000170B8()
{
  v1 = sub_100013BA4(v0[3], v0[4], v0[5], v0[6]);
  v2 = sub_100012C2C(&off_100035508);

  sub_10001E28C(&unk_100035528);
  if (v2)
  {
    v3 = v0[9];
    static Logger.general.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "ping", v6, 2u);
    }

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = v0[2];

    (*(v8 + 8))(v7, v9);
    *v10 = 1735290736;
    v10[1] = 0xE400000000000000;

    v11 = v0[1];
  }

  else
  {
    v12 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for AppInstallationMetricsError.notAuthorized(_:), v12);
    swift_willThrow();
    v14 = v0[9];

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_100017314(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1000173A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_10002B058;
  *(v14 + 24) = v12;
  v15 = objc_opt_self();
  v16 = v3;

  v17 = [v15 currentConnection];
  v18 = v17;
  if (v17)
  {
    [v17 auditToken];
    v24 = v29;
    v25 = v28;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  LOBYTE(v28) = v18 == 0;
  sub_100013DF4(v11, v9, &qword_1000395C0, &qword_10002AF20);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = "flush";
  *(v19 + 40) = 5;
  *(v19 + 48) = 2;
  *(v19 + 56) = v16;
  v20 = v24;
  *(v19 + 64) = v25;
  *(v19 + 80) = v20;
  *(v19 + 96) = v28;
  *(v19 + 104) = &unk_10002B068;
  *(v19 + 112) = v14;
  v21 = ObjectType;
  *(v19 + 120) = v27;
  *(v19 + 128) = a2;
  *(v19 + 136) = v21;
  v22 = v16;

  sub_10001CE60(0, 0, v9, &unk_10002B070, v19);

  return sub_10000D6F8(v11, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100017668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for Logger();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100017730, 0, 0);
}

uint64_t sub_100017730()
{
  v1 = sub_100013BA4(v0[5], v0[6], v0[7], v0[8]);
  v2 = sub_100012C2C(&off_100035548);

  sub_10001E28C(&unk_100035568);
  if (v2)
  {
    v3 = *(*(v0[9] + OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_dependencies) + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager);
    v0[13] = v3;

    return _swift_task_switch(sub_100017904, v3, 0);
  }

  else
  {
    v4 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for AppInstallationMetricsError.notAuthorized(_:), v4);
    swift_willThrow();
    v6 = v0[12];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100017904()
{
  super_class = v0[6].super_class;
  v2 = type metadata accessor for LogKey();
  v3 = objc_allocWithZone(v2);
  v0[2].receiver = 0;
  swift_stdlib_random();
  v4 = &v3[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
  *v4 = (v0[2].receiver << 32) | 1;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v5 = objc_msgSendSuper2(v0 + 1, "init");
  v0[7].receiver = v5;
  v6 = *(super_class + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_aseMetrics);
  v7 = swift_task_alloc();
  v0[7].super_class = v7;
  *v7 = v0;
  *(v7 + 1) = sub_100017A18;

  return sub_10001ED00(v5);
}

uint64_t sub_100017A18()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100017B28, v2, 0);
}

uint64_t sub_100017B28()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_100017B98, 0, 0);
}

uint64_t sub_100017B98()
{
  v1 = v0[12];
  static Logger.general.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "flush complete", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100017CD0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = [objc_opt_self() currentConnection];
  v15 = v14;
  if (v14)
  {
    [v14 auditToken];
    v20 = v23;
    v21 = v22;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  LOBYTE(v22) = v15 == 0;
  sub_100013DF4(v12, v10, &qword_1000395C0, &qword_10002AF20);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = "handlePostImmediately";
  *(v16 + 40) = 21;
  *(v16 + 48) = 2;
  *(v16 + 56) = v2;
  v17 = v20;
  *(v16 + 64) = v21;
  *(v16 + 80) = v17;
  *(v16 + 96) = v22;
  *(v16 + 104) = &unk_10002B018;
  *(v16 + 112) = 0;
  *(v16 + 120) = a1;
  *(v16 + 128) = a2;
  *(v16 + 136) = ObjectType;
  v18 = v2;

  sub_10001CE60(0, 0, v10, &unk_10002B028, v16);

  return sub_10000D6F8(v12, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100017F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100017FD4, 0, 0);
}

uint64_t sub_100017FD4()
{
  v1 = sub_100013BA4(v0[2], v0[3], v0[4], v0[5]);
  v2 = sub_100012C2C(&off_100035588);

  sub_10001E28C(&unk_1000355A8);
  if (v2)
  {
    v3 = v0[8];
    static Logger.general.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Post no longer supported", v6, 2u);
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];

    (*(v8 + 8))(v7, v9);

    v10 = v0[1];
  }

  else
  {
    v11 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppInstallationMetricsError.notAuthorized(_:), v11);
    swift_willThrow();
    v13 = v0[8];

    v10 = v0[1];
  }

  return v10();
}