void sub_10000288C(unint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v3 setFromValue:isa];

  v5 = Int._bridgeToObjectiveC()().super.super.isa;
  [v3 setToValue:v5];

  v15 = v3;
  [v15 setDuration:0.8];
  v6 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v15 setTimingFunction:v6];

  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v11 = [v9 layer];
    v12 = String._bridgeToObjectiveC()();
    [v11 addAnimation:v15 forKey:v12];

    v13 = [v10 layer];
    LODWORD(v14) = 1.0;
    [v13 setOpacity:v14];
  }

  while (v7 != v8);
LABEL_10:
}

uint64_t sub_100002AE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002B24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100002FAC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000304C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

__n128 sub_100002C60(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002C70(uint64_t a1, int a2)
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

uint64_t sub_100002C90(uint64_t result, int a2, int a3)
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

BOOL sub_100002CFC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100002DA4(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002DF8(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100002E50@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *sub_100002E78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002EB4()
{
  v2 = *v0;
  sub_100003DF8(&qword_100052498, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_100003DF8(&unk_1000524A0, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100002FAC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10000304C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100003C64(&qword_100052450, &qword_100052448, &qword_100033DA8);
          for (i = 0; i != v6; ++i)
          {
            sub_100003B8C(&qword_100052448, &qword_100033DA8);
            v9 = sub_100003200(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003C1C(0, &qword_100052440, UIView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100003200(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100003280;
  }

  __break(1u);
  return result;
}

void sub_100003288(void *a1)
{
  v2 = [a1 contentView];
  v3 = [v2 titleView];

  if (v3)
  {
    v4 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v5 = [a1 contentView];
  v6 = [v5 subtitleLabel];

  if (v6)
  {
    v7 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v8 = [a1 contentView];
  v9 = [v8 auxiliaryViews];

  if (v9)
  {
    sub_100003C1C(0, &qword_100052440, UIView_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100002B24(v10);
    v11 = [a1 contentView];
    v12 = [v11 dismissButton];

    if (v12)
    {
      v13 = v12;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100003500(void *a1, int a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(*(v4 - 8) + 64);
  (__chkstk_darwin)();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  type metadata accessor for AssetLoader();
  v16 = sub_1000236AC();
  if (!v16)
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003AFC(v24, qword_100055D08);
    v48 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v48, v25, "Unable to load video asset!", v26, 2u);
    }

    goto LABEL_12;
  }

  v47 = v4;
  v46 = a2;
  v17 = a2;
  v18 = v16;
  v48 = v16;
  v19 = sub_100006C64(v18, v17 == 2);
  sub_10000510C(v19, v18, v17 == 2, 0, 2u);

  if (v17 != 2)
  {
    v44 = v9;
    v45 = v8;
    sub_100003288(a1);
    v29 = v28;
    if (v28 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v43 = v7;
      if (!v30)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = v7;
      if (!v30)
      {
        goto LABEL_24;
      }
    }

    if (v30 < 1)
    {
      __break(1u);
      return;
    }

    v31 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v34 = [v32 layer];
      [v34 setOpacity:0.0];
    }

    while (v30 != v31);
LABEL_24:
    sub_100003C1C(0, &qword_100052420, OS_dispatch_queue_ptr);
    v35 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v36 = v45;
    v37 = *(v44 + 8);
    v37(v13, v45);
    v38 = swift_allocObject();
    *(v38 + 16) = v29;
    aBlock[4] = sub_100003B6C;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002AE0;
    aBlock[3] = &unk_1000495C8;
    _Block_copy(aBlock);
    v49 = &_swiftEmptyArrayStorage;
    sub_100003DF8(&qword_100052CE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003B8C(&unk_100052430, &qword_100033DA0);
    sub_100003C64(&qword_100052CF0, &unk_100052430, &qword_100033DA0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = type metadata accessor for DispatchWorkItem();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v37(v15, v36);
    return;
  }

  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003AFC(v20, qword_100055D08);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "AnimationStyle nil.  Showing assets without fade in.", v23, 2u);
  }

LABEL_12:
  v27 = v48;
}

uint64_t sub_100003AFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003B34()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B8C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003BD4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C1C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003C64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003BD4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003CB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003CD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_100003D64(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100003DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003EF0()
{
  v1 = v0;
  v2 = sub_100003B8C(&qword_1000525D0, "Ћ");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15[-v4];
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003AFC(v6, qword_100055D08);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Redirecting user to Settings to upgrade account", v9, 2u);
  }

  URL.init(string:)();
  sub_10000A488(v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Successfully launched the Settings app to guide the user to upgrade their iCloud account. ", v12, 2u);
  }

  v13 = *(v1 + 16);
  v15[16] = 2;

  PassthroughSubject.send(_:)();

  return sub_10000427C(v5);
}

uint64_t sub_100004220()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000427C(uint64_t a1)
{
  v2 = sub_100003B8C(&qword_1000525D0, "Ћ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000042E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_100004330()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    v14[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100004904((v1 + 3));
  v11 = v1[8];

  v12 = v1[9];

  return v1;
}

uint64_t sub_1000044CC()
{
  sub_100004330();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_100004524(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000045BC, v4, v3);
}

uint64_t sub_1000045BC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = type metadata accessor for CompleteUIProvider();
  swift_allocObject();

  v7 = sub_10002F3D8(0xD000000000000013, 0x80000001000383E0, v4);

  v0[5] = v6;
  v0[6] = &off_10004ACE8;
  v0[2] = v7;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v6;
  v3[4] = &off_10004ACE8;
  *v3 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_1000046F4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_100004524(a1);
}

uint64_t sub_100004790()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004894(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_1000526A0, &unk_100034450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004904(uint64_t a1)
{
  v2 = sub_100003B8C(&qword_1000526A0, &unk_100034450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for VisualPairingAppClipCodeGenerationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VisualPairingAppClipCodeGenerationError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004AE0()
{
  result = qword_1000526A8;
  if (!qword_1000526A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000526A8);
  }

  return result;
}

Swift::Int sub_100004B48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100004BBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_100004C34()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    v14[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100004904((v1 + 3));
  v11 = v1[8];

  v12 = v1[9];

  sub_1000050E4((v1 + 10));
  return v1;
}

uint64_t sub_100004DD8()
{
  sub_100004C34();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100004E30(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004EC8, v4, v3);
}

uint64_t sub_100004EC8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v2[8];
  v5 = v2[9];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = v2[11];
  v8 = type metadata accessor for DeviceUnlockUIProvider();
  swift_allocObject();

  v9 = sub_10001E368(0xD000000000000017, 0x8000000100038490, 0xD000000000000020, 0x80000001000384B0, v4, Strong, v7, 1);
  swift_unknownObjectRelease();

  v0[5] = v8;
  v0[6] = &off_10004A2B8;
  v0[2] = v9;
  swift_beginAccess();

  sub_100004894((v0 + 2), (v2 + 3));
  swift_endAccess();
  v3[3] = v8;
  v3[4] = &off_10004A2B8;
  *v3 = v9;
  v10 = v0[1];

  return v10();
}

uint64_t sub_100005048(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_100004E30(a1);
}

void sub_10000510C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v6 contentView];
  [v9 addSubview:a1];

  v10 = [v6 contentView];
  v100 = [v10 mainContentGuide];

  v11 = objc_opt_self();
  sub_100003B8C(&qword_100052840, &unk_1000358F0);
  if (a5 <= 2u)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100034340;
        v29 = [a1 topAnchor];
        v30 = [v100 topAnchor];
        v31 = [v29 constraintEqualToAnchor:v30 constant:12.0];

        *(v28 + 32) = v31;
        v32 = [a1 centerXAnchor];
        v33 = [v100 centerXAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];

        *(v28 + 40) = v34;
        v35 = [a1 bottomAnchor];
        v36 = [v100 bottomAnchor];
        v37 = [v35 constraintEqualToAnchor:v36 constant:-27.0];

        *(v28 + 48) = v37;
        v38 = [a1 widthAnchor];
        v39 = [v38 constraintEqualToConstant:250.0];

        *(v28 + 56) = v39;
        v40 = [a1 heightAnchor];
        v41 = [v40 constraintEqualToConstant:136.0];
      }

      else
      {
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100034340;
        v68 = [a1 topAnchor];
        v69 = [v100 topAnchor];
        v70 = [v68 constraintEqualToAnchor:v69 constant:12.0];

        *(v28 + 32) = v70;
        v71 = [a1 centerXAnchor];
        v72 = [v100 centerXAnchor];
        v73 = [v71 constraintEqualToAnchor:v72];

        *(v28 + 40) = v73;
        v74 = [a1 bottomAnchor];
        v75 = [v100 bottomAnchor];
        v76 = [v74 constraintEqualToAnchor:v75 constant:-27.0];

        *(v28 + 48) = v76;
        v77 = [a1 widthAnchor];
        v78 = [v77 constraintEqualToConstant:370.0];

        *(v28 + 56) = v78;
        v40 = [a1 heightAnchor];
        v41 = [v40 constraintEqualToConstant:180.0];
      }

      v79 = v41;

      *(v28 + 64) = v79;
      goto LABEL_17;
    }

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100034330;
    v56 = [a1 centerYAnchor];
    v57 = [v100 centerYAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v55 + 32) = v58;
    v59 = [a1 centerXAnchor];
    v60 = [v100 centerXAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v55 + 40) = v61;
    v62 = [a1 widthAnchor];
    v63 = [v100 widthAnchor];
    v64 = [v62 constraintLessThanOrEqualToAnchor:v63];

    *(v55 + 48) = v64;
    v65 = [a1 heightAnchor];
    v66 = [v100 heightAnchor];
    v67 = [v65 constraintLessThanOrEqualToAnchor:v66];
  }

  else if (a5 > 4u)
  {
    if (a5 == 5)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100034340;
      v42 = [a1 topAnchor];
      v43 = [v100 topAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      *(v12 + 32) = v44;
      v45 = [a1 widthAnchor];
      v46 = [v100 widthAnchor];
      v47 = [v45 constraintEqualToAnchor:v46 multiplier:0.8];

      *(v12 + 40) = v47;
      v48 = [a1 heightAnchor];
      v49 = [v100 widthAnchor];
      v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49 multiplier:0.8];

      *(v12 + 48) = v50;
      v51 = [a1 centerYAnchor];
      v52 = [v100 centerYAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];

      *(v12 + 56) = v53;
      v25 = [a1 centerXAnchor];
      v26 = [v100 centerXAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      goto LABEL_10;
    }

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100034330;
    v89 = [a1 topAnchor];
    v90 = [v100 topAnchor];
    v91 = [v89 constraintGreaterThanOrEqualToAnchor:v90];

    *(v55 + 32) = v91;
    v92 = [a1 bottomAnchor];
    v93 = [v100 bottomAnchor];
    v94 = [v92 constraintLessThanOrEqualToAnchor:v93];

    *(v55 + 40) = v94;
    v95 = [a1 centerYAnchor];
    v96 = [v100 centerYAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:-35.0];

    *(v55 + 48) = v97;
    v65 = [a1 centerXAnchor];
    v66 = [v100 centerXAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
  }

  else
  {
    if (a5 == 3)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100034340;
      v13 = [a1 centerYAnchor];
      v14 = [v100 centerYAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];

      *(v12 + 32) = v15;
      v16 = [a1 centerXAnchor];
      v17 = [v100 centerXAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];

      *(v12 + 40) = v18;
      v19 = [a1 topAnchor];
      v20 = [v100 topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:25.0];

      *(v12 + 48) = v21;
      v22 = [a1 widthAnchor];
      v23 = [v100 widthAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 multiplier:0.9];

      *(v12 + 56) = v24;
      v25 = [a1 heightAnchor];
      v26 = [v100 widthAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 multiplier:0.9];
LABEL_10:
      v54 = v27;

      *(v12 + 64) = v54;
      goto LABEL_17;
    }

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100034330;
    v80 = [a1 topAnchor];
    v81 = [v100 topAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];

    *(v55 + 32) = v82;
    v83 = [a1 bottomAnchor];
    v84 = [v100 bottomAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];

    *(v55 + 40) = v85;
    v86 = [a1 centerXAnchor];
    v87 = [v100 centerXAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];

    *(v55 + 48) = v88;
    v65 = [a1 widthAnchor];
    v66 = [v100 widthAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
  }

  v98 = v67;

  *(v55 + 56) = v98;
LABEL_17:
  sub_100003C1C(0, &qword_100052848, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

void sub_10000687C()
{
  v9.receiver = v0;
  v9.super_class = _s15VideoPlayerViewCMa();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = [v0 layer];
  v2 = [v1 sublayers];

  if (v2)
  {
    sub_100003C1C(0, &qword_100052850, CALayer_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          ++v5;
          [v0 frame];
          Width = CGRectGetWidth(v10);
          [v0 frame];
          [v7 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v11)}];
        }

        while (v4 != v5);
      }
    }
  }
}

id sub_100006B38()
{
  v2.receiver = v0;
  v2.super_class = _s15VideoPlayerViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006B90(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_100006BF0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_100006C64(void *a1, char a2)
{
  _s15VideoPlayerViewCMa();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a1)
  {
    v5 = objc_allocWithZone(AVPlayer);
    v6 = a1;
    v7 = [v5 initWithPlayerItem:v6];
    v8 = [objc_opt_self() playerLayerWithPlayer:v7];
    [v8 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    v9 = [objc_opt_self() sharedInstance];
    v34 = 0;
    LODWORD(v5) = [v9 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:&v34];

    if (v5)
    {
      v10 = v34;
    }

    else
    {
      v15 = v34;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100052328 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100003AFC(v16, qword_100055D08);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138543362;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to configure AVAudioSession due to %{public}@", v19, 0xCu);
        sub_100007180(v20);
      }

      else
      {
      }
    }

    v22 = [v4 layer];
    [v22 addSublayer:v8];

    if (a2)
    {
      v23 = [v7 currentItem];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 asset];

        [v25 duration];
        v26 = v34;
        v27 = v36;
        v28 = v35;

        v34 = v26;
        v35 = v28;
        v36 = v27;
        [v7 seekToTime:&v34];
        [v7 pause];
      }

      else
      {
        if (qword_100052328 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100003AFC(v30, qword_100055D08);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Unable to find last seekable time range", v33, 2u);
        }
      }
    }

    else
    {
      [v7 play];
    }

    [v7 play];
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003AFC(v11, qword_100055D08);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "AVPlayerItem is nil, returning an empty video view", v14, 2u);
    }
  }

  return v4;
}

uint64_t sub_100007180(uint64_t a1)
{
  v2 = sub_100003B8C(&qword_100052D10, &unk_100034390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000071E8(uint64_t a1)
{
  if (a1)
  {
    v1 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  }

  else
  {
    v2 = [objc_opt_self() secondaryLabelColor];
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() _systemImageNamed:v3];

    v1 = [objc_allocWithZone(UIImageView) initWithImage:v4];
    [v1 setTintColor:v2];
    v5 = [objc_opt_self() configurationWithPointSize:72.0];
    [v1 setPreferredSymbolConfiguration:v5];
  }

  [v1 setContentMode:1];
  return v1;
}

uint64_t *sub_100007340()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    v15[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100007FE0((v1 + 3), &qword_1000526A0, &unk_100034450);
  v11 = v1[8];

  v12 = v1[9];

  v13 = v1[11];

  return v1;
}

uint64_t sub_1000074FC()
{
  sub_100007340();

  return _swift_deallocClassInstance(v0, 97, 7);
}

uint64_t sub_100007554(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for EnrollmentAssetService();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[16] = v7;
  v2[17] = v6;

  return _swift_task_switch(sub_100007648, v7, v6);
}

uint64_t sub_100007648()
{
  v1 = *(v0 + 112);
  EnrollmentAssetService.init()();
  v2 = async function pointer to EnrollmentAssetService.activate()[1];
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1000076E4;
  v4 = *(v0 + 112);

  return EnrollmentAssetService.activate()();
}

uint64_t sub_1000076E4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  v4 = async function pointer to EnrollmentAssetService.localDataExists()[1];
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  *v5 = v3;
  v5[1] = sub_100007828;
  v6 = *(v1 + 112);

  return EnrollmentAssetService.localDataExists()();
}

uint64_t sub_100007828(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = *(v4 + 128);
    v8 = *(v4 + 136);
    v9 = sub_100007BF8;
  }

  else
  {
    *(v4 + 168) = a1 & 1;
    v7 = *(v4 + 128);
    v8 = *(v4 + 136);
    v9 = sub_100007954;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100007954()
{
  v1 = 0xD000000000000010;
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);

  v4 = *(v0 + 88);
  if (v2 == 1)
  {
    v6 = *(v4 + 80);
    v5 = *(v4 + 88);
    type metadata accessor for IntroductionActionHandler();
    swift_allocObject();
    v7 = v6;

    v8 = sub_1000241F0(v7);
    v9 = *(v4 + 64);
    *(v4 + 64) = v8;

    v10 = *(v4 + 72);
    v27 = *(v4 + 96);
    v29 = type metadata accessor for IntroductionUIProvider();
    v28 = 0;
    v26 = 0xD000000000000015;
    swift_allocObject();
    v11 = "GUEST_MODE_DONT_SAVE";
    v23 = "GUEST_MODE_USE_SAVED_SETUP";
    v12 = "GUEST_MODE_ALLOW";
    v24 = 0xD00000000000001ALL;
    v25 = 0;
  }

  else
  {
    v28 = 0x80000001000387E0;
    v8 = *(v4 + 64);
    v13 = *(v4 + 72);
    v27 = *(v4 + 96);
    v29 = type metadata accessor for IntroductionUIProvider();
    swift_allocObject();

    v25 = 0xD000000000000025;
    v26 = 0xD000000000000014;
    v1 = 0xD000000000000016;
    v11 = "setupPinPublisher";
    v23 = "VED_SETUP_DESCRIPTION";
    v24 = 0xD000000000000019;
    v12 = "GUEST_MODE_START_SETUP";
  }

  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  v17 = *(v0 + 80);

  v18 = sub_100009664(v24, (v11 | 0x8000000000000000), v25, v28, v1, (v23 | 0x8000000000000000), v26, (v12 | 0x8000000000000000), v8, 1, v27);

  v17[3] = v29;
  v17[4] = &off_100049968;
  *v17 = v18;
  EnrollmentAssetService.invalidate()();
  (*(v15 + 8))(v14, v16);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  sub_100007F7C(*(v0 + 80), v0 + 16);
  swift_beginAccess();
  sub_100004894(v0 + 16, v20 + 24);
  swift_endAccess();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100007BF8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  EnrollmentAssetService.invalidate()();
  (*(v4 + 8))(v2, v3);
  if (qword_100052358 != -1)
  {
    swift_once();
  }

  v5 = v0[20];
  v6 = type metadata accessor for Logger();
  sub_100003AFC(v6, qword_100055D98);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to determine if local data exists for enrollment, falling back to no saved setup: %{public}@", v10, 0xCu);
    sub_100007FE0(v11, &qword_100052D10, &unk_100034390);
  }

  v24 = v0[20];
  v14 = v0[10];
  v13 = v0[11];

  v15 = *(v13 + 64);
  v16 = *(v13 + 72);
  v17 = *(v13 + 96);
  v18 = type metadata accessor for IntroductionUIProvider();
  swift_allocObject();

  v19 = sub_100009664(0xD000000000000019, 0x80000001000387C0, 0xD000000000000025, 0x80000001000387E0, 0xD000000000000016, 0x8000000100038810, 0xD000000000000014, 0x8000000100038830, v15, 1, v17);

  v14[3] = v18;
  v14[4] = &off_100049968;

  *v14 = v19;
  v20 = v0[14];
  v21 = v0[11];
  sub_100007F7C(v0[10], (v0 + 2));
  swift_beginAccess();
  sub_100004894((v0 + 2), v21 + 24);
  swift_endAccess();

  v22 = v0[1];

  return v22();
}

uint64_t sub_100007EE0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_100007554(a1);
}

uint64_t sub_100007F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007FE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003B8C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008040(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008088(uint64_t result, int a2, int a3)
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

uint64_t sub_1000080D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003AFC(v6, qword_100055D08);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Renewing Apple ID", v9, 2u);
  }

  sub_10001C804(a1, a3, a2, a3);
}

uint64_t sub_100008204(char a1)
{
  if (a1)
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003AFC(v1, qword_100055D08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Apple ID Renewal Success", v4, 2u);
    }
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003AFC(v5, qword_100055D08);
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "Apple ID Renewal Failed", v7, 2u);
    }
  }

  return PassthroughSubject.send(_:)();
}

uint64_t sub_1000083B4(uint64_t a1)
{
  v1 = *sub_100008D18((a1 + 32), *(a1 + 56));
  sub_100008CCC();
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10000844C()
{
  v1 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  *(v0 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1000084D8, 0, 0);
}

uint64_t sub_1000084D8()
{
  if (qword_100052348 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_100003AFC(v1, qword_100055D68);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching prescription records…", v4, 2u);
  }

  v5 = [objc_allocWithZone(WFPrescriptionRecordCollector) initWithTimeout:5.0];
  v0[21] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000086C8;
  v6 = swift_continuation_init();
  v0[17] = sub_100003B8C(&qword_1000529D0, &qword_100034528);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000083B4;
  v0[13] = &unk_100049940;
  v0[14] = v6;
  [v5 fetchPrescriptionRecordsWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000086C8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000087A8, 0, 0);
}

uint64_t sub_1000087A8()
{
  v48 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = v2;

  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v6 = 136315138;
    sub_100008CCC();
    v8 = Array.description.getter();
    v10 = sub_10002EE20(v8, v9, &v47);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished fetching prescription record: %s", v6, 0xCu);
    sub_1000042E4(v7);
  }

  if (v5 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_20:

    v31 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_5:
  v47 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = v5;
  v45 = v11;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v14 + 8 * v13 + 32);
    }

    v22 = v21;
    v23 = [v21 accPayload];
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = [v22 enrollmentName];
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v26 = v46[19];
    v27 = [v22 enrollmentDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = [v22 leftCalibrationData];
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v30 = [v22 rightCalibrationData];
    if (v30)
    {
      v15 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v46[19];
    ++v13;
    v19 = objc_allocWithZone(type metadata accessor for PrescriptionRecord());
    v44 = v17;
    PrescriptionRecord.init(accPayload:enrollmentName:enrollmentDate:leftLensFactoryCalibrationData:rightLensFactoryCalibrationData:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v20 = v47[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v14 = v5;
  }

  while (v45 != v13);

  v31 = v47;
LABEL_21:
  v32 = v46[20];

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v46[21];
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v37 = 136315138;
    type metadata accessor for PrescriptionRecord();
    v39 = Array.description.getter();
    v41 = sub_10002EE20(v39, v40, &v47);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Generated prescription records: %s", v37, 0xCu);
    sub_1000042E4(v38);
  }

  v42 = v46[19];

  v43 = v46[1];

  return v43(v31);
}

uint64_t sub_100008C68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100008CCC()
{
  result = qword_1000529D8;
  if (!qword_1000529D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000529D8);
  }

  return result;
}

void *sub_100008D18(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008D5C()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handle failure action", v5, 2u);
  }

  v6 = *(v1 + 16);

  PassthroughSubject.send(_:)();
}

id sub_100008F7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntroductionUIProvider.IntroductionCardContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100008FC4(char a1, char a2)
{
  if (a1 & 1) == 0 || (a2)
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003AFC(v8, qword_100055D08);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Not automatically invoking introduction action handler since shouldAutoStart is false and there's a secondary option", v10, 2u);
    }
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003AFC(v2, qword_100055D08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invoking introduction action handler automatically", v5, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 24);

      sub_100023FDC();
    }
  }
}

void sub_1000091C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 mainBundle];
    v24._object = 0xE000000000000000;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._object = 0x8000000100038A50;
    v11._countAndFlagsBits = 0xD000000000000023;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v24);

    v13 = String._bridgeToObjectiveC()();

    [v8 showActivityIndicatorWithStatus:v13];

    v14 = *(v6 + 24);

    sub_100023FDC();
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003AFC(v15, qword_100055D08);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[0] = v19;
      *v18 = 136446210;
      v23[4] = a3;
      swift_getMetatypeMetadata();
      v20 = String.init<A>(describing:)();
      v22 = sub_10002EE20(v20, v21, v23);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s was unexpectedly deallocated.", v18, 0xCu);
      sub_1000042E4(v19);
    }
  }
}

void sub_100009430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24);

    sub_1000240E8();
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003AFC(v6, qword_100055D08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v14[4] = a3;
      swift_getMetatypeMetadata();
      v11 = String.init<A>(describing:)();
      v13 = sub_10002EE20(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s was unexpectedly deallocated.", v9, 0xCu);
      sub_1000042E4(v10);
    }
  }
}

uint64_t sub_1000095D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t *sub_100009664(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, char a10, char a11)
{
  v75 = *v11;
  v11[3] = a9;
  type metadata accessor for IntroductionUIProvider.IntroductionCardContentViewController();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v17 = [v16 init];
  v11[2] = v17;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = a11;
  *(v19 + 17) = a8 != 0;
  *(v19 + 24) = v18;
  v20 = &v17[OBJC_IVAR____TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController_viewDidLoadCompletionHandler];
  v22 = *&v17[OBJC_IVAR____TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController_viewDidLoadCompletionHandler];
  v21 = *&v17[OBJC_IVAR____TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController_viewDidLoadCompletionHandler + 8];
  *v20 = sub_100009EC0;
  v20[1] = v19;
  v74 = a8;

  v23 = v17;

  sub_100009ED0(v22);

  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 mainBundle];
  v82._object = 0xE000000000000000;
  v27._countAndFlagsBits = a1;
  v27._object = a2;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v82);

  v30 = String._bridgeToObjectiveC()();

  [v25 setTitle:v30];

  if (a4)
  {
    v31 = [v24 mainBundle];
    v83._object = 0xE000000000000000;
    v32._countAndFlagsBits = a3;
    v32._object = a4;
    v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v33.value._object = 0xEB00000000656C62;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v83._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v83);

    v35 = String._bridgeToObjectiveC()();

    [v25 setSubtitle:v35];
  }

  [v25 setDismissalType:1];

  if (a11)
  {
    v36 = v24;
    v37 = v74;
    v38 = v75;
    if (!v74)
    {

      v65 = [v36 mainBundle];
      v86._object = 0xE000000000000000;
      v66._object = 0x8000000100038A50;
      v66._countAndFlagsBits = 0xD000000000000023;
      v67.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v67.value._object = 0xEB00000000656C62;
      v68._countAndFlagsBits = 0;
      v68._object = 0xE000000000000000;
      v86._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v66, v67, v65, v68, v86);

      v69 = String._bridgeToObjectiveC()();

      [v25 showActivityIndicatorWithStatus:v69];

      v63 = 2;
      goto LABEL_13;
    }
  }

  else
  {

    v38 = v75;
    v36 = v24;
    v37 = v74;
  }

  v39 = [v36 mainBundle];
  v84._object = 0xE000000000000000;
  v40._countAndFlagsBits = a5;
  v40._object = a6;
  v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v41.value._object = 0xEB00000000656C62;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v84._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v84);

  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v38;

  v45 = String._bridgeToObjectiveC()();

  v80 = sub_100009F18;
  v81 = v44;
  aBlock = _NSConcreteStackBlock;
  v77 = 1107296256;
  v78 = sub_10002EA00;
  v79 = &unk_100049A00;
  v46 = _Block_copy(&aBlock);
  v47 = objc_opt_self();
  v48 = [v47 actionWithTitle:v45 style:0 handler:v46];

  _Block_release(v46);

  if (v37)
  {
    v49 = [v36 mainBundle];
    v85._object = 0xE000000000000000;
    v50._countAndFlagsBits = a7;
    v50._object = v37;
    v51.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v51.value._object = 0xEB00000000656C62;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v85._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v85);

    v53 = objc_opt_self();
    v54 = objc_opt_self();
    v55 = [v54 systemBlackColor];
    v56 = [v54 systemWhiteColor];
    v57 = [v53 initWithBackgroundColor:v55 textColor:v56];

    v58 = swift_allocObject();
    swift_weakInit();

    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v75;

    v60 = String._bridgeToObjectiveC()();

    v80 = sub_100009F38;
    v81 = v59;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_10002EA00;
    v79 = &unk_100049A50;
    v61 = _Block_copy(&aBlock);
    v62 = [v47 actionWithTitle:v60 customColors:v57 handler:v61];

    _Block_release(v61);
  }

  else
  {
  }

  if (a11)
  {
    v63 = 2;
  }

  else
  {
    v63 = a10 & 1;
  }

LABEL_13:
  sub_100003500(v25, v63);

  return v11;
}

uint64_t sub_100009E50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009E88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009ED0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009EE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t String.appleAccountRebrandStringKey.getter(uint64_t a1)
{
  v5[3] = &type metadata for AppleAccountFeatures;
  v5[4] = sub_10000A02C();
  v2 = isFeatureEnabled(_:)();
  sub_1000042E4(v5);
  if (v2)
  {
  }

  else
  {
    v5[0] = 0xD000000000000014;
    v5[1] = 0x8000000100038A80;

    v4 = String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    return v4;
  }

  return a1;
}

unint64_t sub_10000A02C()
{
  result = qword_100052B58;
  if (!qword_100052B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100052B58);
  }

  return result;
}

uint64_t *sub_10000A080()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    v12[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100004904((v1 + 3));
  return v1;
}

uint64_t sub_10000A20C()
{
  sub_10000A080();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10000A264(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A2FC, v4, v3);
}

uint64_t sub_10000A2FC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 64);
  v5 = type metadata accessor for InstructionUIProvider();
  swift_allocObject();
  v6 = sub_1000106B4(v4);
  v0[5] = v5;
  v0[6] = &off_100049CD0;
  v0[2] = v6;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v5;
  v3[4] = &off_100049CD0;
  *v3 = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_10000A3EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10000A264(a1);
}

id sub_10000A488(uint64_t a1)
{
  v2 = sub_100003B8C(&qword_1000525D0, "Ћ");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_10000A71C(a1, v5);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v11 = 0;
    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      URL._bridgeToObjectiveC()(v10);
      v11 = v12;
      (*(v9 + 8))(v5, v8);
    }

    sub_100003B8C(&qword_100052C18, &qword_1000346A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100034690;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v14;
    v15 = [objc_allocWithZone(NSNumber) initWithBool:1];
    *(inited + 72) = sub_10000A78C();
    *(inited + 48) = v15;
    sub_10000FEF0(inited);
    swift_setDeallocating();
    sub_10000A7D8(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = 0;
    v17 = [v7 openSensitiveURL:v11 withOptions:isa error:&v19];

    if (v17)
    {
      return v19;
    }

    else
    {
      v18 = v19;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10000A71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_1000525D0, "Ћ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000A78C()
{
  result = qword_100052C20;
  if (!qword_100052C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100052C20);
  }

  return result;
}

uint64_t sub_10000A7D8(uint64_t a1)
{
  v2 = sub_100003B8C(&qword_100052C28, &qword_1000346A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A840()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_10:
    sub_100007FE0(&v6, &qword_100052D18, &unk_100034728);
    return 0;
  }

  v1 = Strong;
  v2 = [Strong _remoteViewControllerProxy];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_10;
  }

  sub_100003B8C(&unk_100052D80, &qword_100034738);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000A938(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100052338 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003AFC(v13, qword_100055D38);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v17 = 136446466;
    *(v17 + 4) = sub_10002EE20(0xD00000000000001ALL, 0x8000000100038BD0, aBlock);
    *(v17 + 12) = 2082;
    v18 = [v14 description];
    v38 = v5;
    v39 = v9;
    v37 = v4;
    v19 = v18;
    v20 = v10;
    v21 = v8;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v14;
    v24 = v2;
    v26 = v25;

    v27 = v22;
    v8 = v21;
    v10 = v20;
    v28 = sub_10002EE20(v27, v26, aBlock);
    v2 = v24;
    v14 = v23;

    *(v17 + 14) = v28;
    v4 = v37;
    v5 = v38;
    v9 = v39;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s is invoked with viewController: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000CBE8();
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = v14;
  *(v30 + 24) = v2;
  aBlock[4] = sub_10000CF08;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002AE0;
  aBlock[3] = &unk_100049BE8;
  v31 = _Block_copy(aBlock);
  v32 = v14;
  v33 = v2;
  v34 = v40;
  static DispatchQoS.unspecified.getter();
  v41 = &_swiftEmptyArrayStorage;
  sub_10000CE34(&qword_100052CE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B8C(&unk_100052430, &qword_100033DA0);
  sub_10000CC90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v34, v9);
}

void sub_10000ADAC(void *a1, uint64_t a2)
{
  if (qword_100052338 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003AFC(v4, qword_100055D38);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v10 = [v5 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10002EE20(v11, v13, &v23);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Presenting prox card flow with initial view controller: %{public}s", v8, 0xCu);
    sub_1000042E4(v9);
  }

  v15 = [objc_opt_self() defaultConfiguration];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() blackColor];
    [v16 setCustomBackgroundColor:v17];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = [Strong presentProxCardFlowWithDelegate:a2 initialViewController:v5 configuration:v16];
    }

    v21 = [v5 navigationController];

    v22 = *(a2 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_navigationController);
    *(a2 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_navigationController) = v21;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000B028(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100052338 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003AFC(v14, qword_100055D38);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v6;
    v20 = a2;
    v21 = v19;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v18 = 136446722;
    *(v18 + 4) = sub_10002EE20(0xD00000000000001FLL, 0x8000000100038BB0, aBlock);
    *(v18 + 12) = 2114;
    *(v18 + 14) = v15;
    *v21 = v15;
    *(v18 + 22) = 1024;
    *(v18 + 24) = v20 & 1;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s is invoked with viewController: %{public}@, animated: %{BOOL}d", v18, 0x1Cu);
    sub_100007FE0(v21, &qword_100052D10, &unk_100034390);
    a2 = v20;
    v6 = v32;

    sub_1000042E4(v22);
  }

  v24 = *(v3 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredViewController);
  *(v3 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredViewController) = 0;

  *(v3 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredPushAnimated) = 2;
  sub_10000CBE8();
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v15;
  *(v27 + 32) = a2 & 1;
  aBlock[4] = sub_10000CEBC;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002AE0;
  aBlock[3] = &unk_100049B98;
  v28 = _Block_copy(aBlock);
  v29 = v15;

  static DispatchQoS.unspecified.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_10000CE34(&qword_100052CE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B8C(&unk_100052430, &qword_100033DA0);
  sub_10000CC90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v35 + 8))(v9, v6);
  (*(v33 + 8))(v13, v34);
}

void sub_10000B4CC(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_navigationController;
    v8 = *(Strong + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_navigationController);
    if (!v8 || ![v8 transitionCoordinator])
    {
      if (qword_100052338 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100003AFC(v10, qword_100055D38);
      v11 = a2;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v22 = a3;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v14 = 136446210;
        v16 = [v11 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = sub_10002EE20(v17, v19, &v23);

        *(v14 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v12, v13, "Pushing view controller: %{public}s on to the navigation stack", v14, 0xCu);
        sub_1000042E4(v15);

        a3 = v22;
      }

      v21 = *&v6[v7];
      [v21 pushViewController:v11 animated:a3 & 1];

      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    return;
  }

  v6 = v9;
  sub_10000B724(a2, a3 & 1);
LABEL_12:
}

uint64_t sub_10000B724(void *a1, char a2)
{
  v5 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredViewController);
  *(v2 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredViewController) = a1;
  v10 = a1;

  *(v2 + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredPushAnimated) = a2;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v13 = v10;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = v12;

  sub_100025434(0, 0, v8, &unk_100034710, v15);
}

uint64_t sub_10000B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v10;
  v5[18] = v9;

  return _swift_task_switch(sub_10000B9A8, v10, v9);
}

uint64_t sub_10000B9A8()
{
  v21 = v0;
  if (qword_100052338 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  v0[19] = sub_100003AFC(v2, qword_100055D38);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = Duration.description.getter();
    v10 = sub_10002EE20(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = [v6 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002EE20(v12, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deferring push of view controller for %{public}s: %{public}s on to the navigation stack", v7, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[15];
  static Clock<>.continuous.getter();
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_10000BC20;
  v18 = v0[15];

  return sub_10000C730(300000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10000BC20()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;

  v6 = v2[15];
  v7 = v2[14];
  v8 = v2[13];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[17];
    v10 = v3[18];
    v11 = sub_10000CF18;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[17];
    v10 = v3[18];
    v11 = sub_10000BDB4;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10000BDB4()
{
  v1 = v0[16];
  v2 = v0[12];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = *(Strong + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredViewController), v5 = Strong, v6 = v4, v5, !v4))
  {
LABEL_6:
    v10 = v0[19];
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v11, "Attempted to recover from deferred push but no view controller or animation state to restore.", v12, 2u);
    }

    goto LABEL_8;
  }

  v7 = v0[12];
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8[OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredPushAnimated], v8, v9 == 2))
  {

    goto LABEL_6;
  }

  v16 = v0[12];
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_10000B028(v6, v9 & 1);

    v6 = v18;
  }

LABEL_8:

  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000BF58(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100052338 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003AFC(v14, qword_100055D38);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v2;
    v20 = v9;
    v21 = v19;
    aBlock[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_10002EE20(0xD000000000000012, 0x8000000100038B90, aBlock);
    *(v18 + 12) = 1024;
    *(v18 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s is invoked with animated: %{BOOL}d", v18, 0x12u);
    sub_1000042E4(v21);
    v9 = v20;
    v2 = v28;

    v5 = v29;
  }

  sub_10000CBE8();
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1 & 1;
  aBlock[4] = sub_10000CC6C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002AE0;
  aBlock[3] = &unk_100049AF8;
  v24 = _Block_copy(aBlock);
  v25 = v2;
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_10000CE34(&qword_100052CE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B8C(&unk_100052430, &qword_100033DA0);
  sub_10000CC90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

void sub_10000C348(uint64_t a1, char a2)
{
  if (qword_100052338 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D38);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Dismissing remote alert service view controller", v6, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong dismissViewControllerAnimated:a2 & 1 completion:0];
  }
}

void *sub_10000C490()
{
  if (qword_100052338 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003AFC(v0, qword_100055D38);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Prox card flow did dismiss", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for BYDovePeaceRemoteViewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR___BYDovePeaceRemoteViewController_flowEngine);
      if (v7)
      {
        v8 = v7;
        sub_10001A144();
      }
    }
  }

  result = sub_10000A840();
  if (result)
  {
    [result invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000C67C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxCardPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000C830, 0, 0);
}

uint64_t sub_10000C830()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10000CE34(&qword_100052D00, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000CE34(&qword_100052D08, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10000C9C0;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10000C9C0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10000CB7C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10000CB7C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_10000CBE8()
{
  result = qword_100052420;
  if (!qword_100052420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100052420);
  }

  return result;
}

uint64_t sub_10000CC34()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000CC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CC90()
{
  result = qword_100052CF0;
  if (!qword_100052CF0)
  {
    sub_100003BD4(&unk_100052430, &qword_100033DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100052CF0);
  }

  return result;
}

uint64_t sub_10000CCF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CD2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000CD74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100004790;

  return sub_10000B8B4(a1, v4, v5, v7, v6);
}

uint64_t sub_10000CE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CE7C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000CEC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10000CF24(char **a1, uint64_t (*a2)(void))
{
  result = sub_10000D1BC(a1, a2);
  v4 = *(*a1 + 2);
  if (v4 >= result)
  {
    return sub_10000D3D4(result, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CF68(uint64_t *a1, char a2)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000D0C8(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_10000D0C8((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = a2;
  *a1 = v4;
  return result;
}

char *sub_10000D0C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B8C(&qword_1000530F8, &unk_100034800);
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

unint64_t sub_10000D1BC(char **a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(*a1 + 2);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    if (v7 >= *(v3 + 2))
    {
      __break(1u);
      goto LABEL_26;
    }

    v8 = a2(v3[v7 + 32]);
    if (v2)
    {
      return v7;
    }

    if (v8)
    {
      v4 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_30;
      }

      while (1)
      {
        v9 = *(v3 + 2);
        v10 = v4;
        if (v9 - 1 == v7)
        {
          break;
        }

        v11 = v7 + 33;
        v4 = v3 + 32;
        while (1)
        {
          v13 = v11 - 32;
          if (v11 - 32 >= v9)
          {
            break;
          }

          v14 = a2(v3[v11]);
          if (v10)
          {
            *a1 = v3;
            return v7;
          }

          if ((v14 & 1) == 0)
          {
            if (v13 != v7)
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_27;
              }

              v15 = *(v3 + 2);
              if (v7 >= v15)
              {
                goto LABEL_28;
              }

              if (v13 >= v15)
              {
                goto LABEL_29;
              }

              v16 = v4[v7];
              v4[v7] = v3[v11];
              v3[v11] = v16;
            }

            ++v7;
          }

          v9 = *(v3 + 2);
          v12 = v11 - 31;
          ++v11;
          if (v12 == v9)
          {
            goto LABEL_11;
          }
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v3 = sub_10000D31C(v3);
      }

LABEL_11:
      *a1 = v3;
      return v7;
    }

    if (v4 == ++v7)
    {
      return *(v3 + 2);
    }
  }
}

char *sub_10000D330(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_10000D3D4(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10000D0C8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10000D330(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10000D494(char a1)
{
  if (a1)
  {
    if (qword_100052358 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003AFC(v1, qword_100055D98);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Utilizing SimulatedFlow for list of stages to run", v4, 2u);
    }

    v5 = &off_100049320;
    goto LABEL_64;
  }

  if (MKBGetDeviceLockState() - 1 > 1)
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_100052358 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003AFC(v6, qword_100055D98);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Inserting device unlock stage since device is locked.", v9, 2u);
    }

    v5 = sub_10000D0C8(0, 1, 1, &_swiftEmptyArrayStorage);
    v10 = *(v5 + 2);
    memmove(v5 + 33, v5 + 32, v10);
    *(v5 + 2) = v10 + 1;
    v5[32] = 0;
  }

  v11 = sub_10001C270();
  if (qword_100052358 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003AFC(v12, qword_100055D98);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    v17 = 0xE700000000000000;
    *v15 = 136315138;
    v18 = 0x6E776F6E6B6E55;
    if (v11 == 2)
    {
      v18 = 0xD000000000000015;
      v17 = 0x8000000100038D60;
    }

    v19 = 0xD000000000000014;
    v20 = 0x8000000100038DA0;
    if (v11)
    {
      v19 = 0xD00000000000001ALL;
      v20 = 0x8000000100038D80;
    }

    if (v11 <= 1u)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    if (v11 <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v17;
    }

    v23 = sub_10002EE20(v21, v22, &v53);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Apple ID sign in status: %s", v15, 0xCu);
    sub_1000042E4(v16);
  }

  if (v11 <= 1u)
  {
    if (!v11)
    {
      goto LABEL_39;
    }

LABEL_32:
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "User signed into a non-HSA2 account. Adding the apple ID account upgrade stage to the flow. ", v26, 2u);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_10000D0C8(0, *(v5 + 2) + 1, 1, v5);
    }

    v28 = *(v5 + 2);
    v27 = *(v5 + 3);
    if (v28 >= v27 >> 1)
    {
      v5 = sub_10000D0C8((v27 > 1), v28 + 1, 1, v5);
    }

    *(v5 + 2) = v28 + 1;
    v5[v28 + 32] = 1;
    goto LABEL_39;
  }

  if (v11 != 2)
  {
    goto LABEL_32;
  }

LABEL_39:
  if (sub_10001CE28())
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Apple ID credentials needs to be renewed. Inserting the AppleIDAccountsRenewalStage to the flow", v31, 2u);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_10000D0C8(0, *(v5 + 2) + 1, 1, v5);
    }

    v33 = *(v5 + 2);
    v32 = *(v5 + 3);
    if (v33 >= v32 >> 1)
    {
      v5 = sub_10000D0C8((v32 > 1), v33 + 1, 1, v5);
    }

    *(v5 + 2) = v33 + 1;
    v5[v33 + 32] = 2;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10000D0C8(0, *(v5 + 2) + 1, 1, v5);
  }

  v35 = *(v5 + 2);
  v34 = *(v5 + 3);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
    v5 = sub_10000D0C8((v34 > 1), v35 + 1, 1, v5);
    v34 = *(v5 + 3);
    v36 = v34 >> 1;
  }

  *(v5 + 2) = v37;
  v5[v35 + 32] = 3;
  v38 = v35 + 2;
  if (v36 < (v35 + 2))
  {
    v5 = sub_10000D0C8((v34 > 1), v35 + 2, 1, v5);
    v34 = *(v5 + 3);
    v36 = v34 >> 1;
  }

  *(v5 + 2) = v38;
  v5[v37 + 32] = 4;
  v39 = v35 + 3;
  if (v36 < (v35 + 3))
  {
    v5 = sub_10000D0C8((v34 > 1), v35 + 3, 1, v5);
    v34 = *(v5 + 3);
    v36 = v34 >> 1;
  }

  *(v5 + 2) = v39;
  v5[v38 + 32] = 5;
  v40 = v35 + 4;
  if (v36 < (v35 + 4))
  {
    v5 = sub_10000D0C8((v34 > 1), v35 + 4, 1, v5);
    v34 = *(v5 + 3);
    v36 = v34 >> 1;
  }

  *(v5 + 2) = v40;
  v5[v39 + 32] = 6;
  v41 = v35 + 5;
  if (v36 < (v35 + 5))
  {
    v5 = sub_10000D0C8((v34 > 1), v35 + 5, 1, v5);
    v34 = *(v5 + 3);
    v36 = v34 >> 1;
  }

  *(v5 + 2) = v41;
  v5[v40 + 32] = 7;
  if (v36 < (v35 + 6))
  {
    v5 = sub_10000D0C8((v34 > 1), v35 + 6, 1, v5);
  }

  *(v5 + 2) = v35 + 6;
  v5[v41 + 32] = 8;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v44 = 136446210;

    v46 = Array.description.getter();
    v48 = v47;

    v49 = sub_10002EE20(v46, v48, &v53);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "Generated list of stages to run: %{public}s", v44, 0xCu);
    sub_1000042E4(v45);
  }

LABEL_64:
  type metadata accessor for ProxCardFlow();
  v50 = swift_allocObject();
  sub_100003B8C(&qword_1000530F0, &qword_1000347F8);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  *(v51 + 16) = v5;
  *(v50 + 16) = v51;
  return v50;
}

uint64_t sub_10000DCFC()
{
  if (MKBGetDeviceLockState() - 1 > 1)
  {
    v4 = &_swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_100052358 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100003AFC(v0, qword_100055D98);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Inserting device unlock stage since device is locked.", v3, 2u);
    }

    v4 = sub_10000D0C8(0, 1, 1, &_swiftEmptyArrayStorage);
    v5 = *(v4 + 2);
    memmove(v4 + 33, v4 + 32, v5);
    *(v4 + 2) = v5 + 1;
    v4[32] = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10000D0C8(0, *(v4 + 2) + 1, 1, v4);
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    v4 = sub_10000D0C8((v6 > 1), v7 + 1, 1, v4);
    v6 = *(v4 + 3);
    v8 = v6 >> 1;
  }

  *(v4 + 2) = v9;
  v4[v7 + 32] = 3;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    v4 = sub_10000D0C8((v6 > 1), v7 + 2, 1, v4);
    v6 = *(v4 + 3);
    v8 = v6 >> 1;
  }

  *(v4 + 2) = v10;
  v4[v9 + 32] = 4;
  v11 = v7 + 3;
  if (v8 < (v7 + 3))
  {
    v4 = sub_10000D0C8((v6 > 1), v7 + 3, 1, v4);
    v6 = *(v4 + 3);
    v8 = v6 >> 1;
  }

  *(v4 + 2) = v11;
  v4[v10 + 32] = 5;
  v12 = v7 + 4;
  if (v8 < (v7 + 4))
  {
    v4 = sub_10000D0C8((v6 > 1), v7 + 4, 1, v4);
    v6 = *(v4 + 3);
    v8 = v6 >> 1;
  }

  *(v4 + 2) = v12;
  v4[v11 + 32] = 6;
  v13 = v7 + 5;
  if (v8 < (v7 + 5))
  {
    v4 = sub_10000D0C8((v6 > 1), v7 + 5, 1, v4);
    v6 = *(v4 + 3);
    v8 = v6 >> 1;
  }

  *(v4 + 2) = v13;
  v4[v12 + 32] = 7;
  if (v8 < (v7 + 6))
  {
    v4 = sub_10000D0C8((v6 > 1), v7 + 6, 1, v4);
  }

  *(v4 + 2) = v7 + 6;
  v4[v13 + 32] = 8;
  if (qword_100052358 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003AFC(v14, qword_100055D98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136446210;

    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_10002EE20(v19, v21, &v26);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Generated list of stages to run: %{public}s", v17, 0xCu);
    sub_1000042E4(v18);
  }

  type metadata accessor for ProxCardFlow();
  v23 = swift_allocObject();
  sub_100003B8C(&qword_1000530F0, &qword_1000347F8);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v4;
  *(v23 + 16) = v24;
  return v23;
}

id sub_10000E2D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualPairingUIProvider.CardContentController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10000E308()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136446210;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002EE20(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s is being deinitialized.", v6, 0xCu);
    sub_1000042E4(v7);
  }

  swift_beginAccess();
  if (v1[6])
  {
    sub_100007F7C((v1 + 3), v12);
    sub_100008D18(v12, v12[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_1000042E4(v12);
  }

  sub_100007FE0((v1 + 3), &qword_1000531F8, &unk_1000348A0);
  return v1;
}

uint64_t sub_10000E4F4()
{
  sub_10000E308();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t *sub_10000E570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  *(v3 + 3) = 0u;
  v44 = (v3 + 3);
  *(v3 + 5) = 0u;
  *(v3 + 49) = 0u;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055D08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v47 = a1;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136446210;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002EE20(v12, v13, &v48);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Initializing %{public}s.", v10, 0xCu);
    sub_1000042E4(v11);
  }

  v4[9] = a3;
  type metadata accessor for VisualPairingUIProvider.CardContentController();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakAssign();
  v4[2] = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 mainBundle];
  v52._object = 0xE000000000000000;
  v19._object = 0x8000000100038EE0;
  v19._countAndFlagsBits = 0xD000000000000014;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v52);

  v22 = String._bridgeToObjectiveC()();

  [v17 setTitle:v22];
  v45 = v17;

  v23 = v4[2];
  v24 = [v16 mainBundle];
  v53._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000100038F00;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v53);

  v28 = String._bridgeToObjectiveC()();

  [v23 setSubtitle:v28];

  [v4[2] setDismissalType:1];
  v29 = v4[2];
  sub_100005EC8(a3);

  v48 = v47;

  sub_100003B8C(&qword_1000531E8, &qword_100034898);
  sub_100003C64(&qword_1000531F0, &qword_1000531E8, &qword_100034898);
  v30 = Publisher<>.sink(receiveValue:)();

  v50 = type metadata accessor for AnyCancellable();
  v51 = &protocol witness table for AnyCancellable;
  v48 = v30;
  swift_beginAccess();
  sub_10000FB98(&v48, v44);
  swift_endAccess();
  v31 = v4[2];
  type metadata accessor for ViewServiceUIViewControllerExtendedHeight();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = (v32 + OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler);
    v34 = *(v32 + OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler);
    v35 = *(v32 + OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler + 8);
    *v33 = sub_10000EB44;
    v33[1] = 0;
    v36 = v31;
    sub_100009ED0(v34);
  }

  CurrentValueSubject.value.getter();
  if (v49)
  {
    sub_10000EE9C(v48, v49);
  }

  else
  {
    v37 = v4[2];
    v38 = [v16 mainBundle];
    v54._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0xD00000000000001FLL;
    v39._object = 0x8000000100038F20;
    v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v40.value._object = 0xEB00000000656C62;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v54);

    v42 = String._bridgeToObjectiveC()();

    [v37 showActivityIndicatorWithStatus:v42];
  }

  return v4;
}

uint64_t sub_10000EB44()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchTime();
  v17 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  sub_10000CBE8();
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v7, v2);
  aBlock[4] = sub_10000EDEC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002AE0;
  aBlock[3] = &unk_100049C30;
  _Block_copy(aBlock);
  v19 = &_swiftEmptyArrayStorage;
  sub_10000FC5C();
  sub_100003B8C(&unk_100052430, &qword_100033DA0);
  sub_100003C64(&qword_100052CF0, &unk_100052430, &qword_100033DA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = type metadata accessor for DispatchWorkItem();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();
  v14 = v18;
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v10)(v9, v17);
}

void sub_10000EDEC()
{
  v0 = UIAccessibilityAnnouncementNotification;
  sub_100010020(&off_100049350);
  sub_100007FE0(&unk_100049370, &qword_100053200, &qword_1000348B0);
  argument = Dictionary._bridgeToObjectiveC()().super.isa;

  UIAccessibilityPostNotification(v0, argument);
}

void sub_10000EE9C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100003B8C(&qword_100053210, &unk_1000348C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = (v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (v45 - v13);
  __chkstk_darwin(v12);
  v16 = (v45 - v15);
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003AFC(v22, qword_100055D80);
    v46 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v46, v19))
    {
      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Setup pin not yet received.";
    goto LABEL_13;
  }

  if (v2[8])
  {
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003AFC(v18, qword_100055D80);
    v46 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v46, v19))
    {
      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Already showing the app clip code";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v46, v19, v21, v20, 2u);

LABEL_14:
    v23 = v46;

    return;
  }

  if (qword_100052350 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100003AFC(v24, qword_100055D80);

  v45[1] = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v46 = v16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10002EE20(a1, a2, v47);
    _os_log_impl(&_mh_execute_header, v26, v27, "Encoding this pin: %s", v29, 0xCu);
    sub_1000042E4(v30);

    v16 = v46;
  }

  sub_10002A8DC(a1, a2, v14);
  v31 = type metadata accessor for VisualPairingAppClipCode();
  (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
  sub_100010214(v14, v16);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v47[0] = v35;
    *v34 = 136446210;
    v36 = _typeName(_:qualified:)();
    v38 = sub_10002EE20(v36, v37, v47);
    v16 = v46;

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Successfully generated ACC in %{public}s.", v34, 0xCu);
    sub_1000042E4(v35);
  }

  *(v3 + 64) = 1;
  [v3[2] hideActivityIndicator];
  v39 = v3[2];
  sub_100010504(v16, v11, &qword_100053210, &unk_1000348C0);
  type metadata accessor for VisualPairingAppClipCode();
  if ((*(*(v31 - 8) + 48))(v11, 1, v31) == 1)
  {
    v40 = v39;
    sub_100007FE0(v11, &qword_100053210, &unk_1000348C0);
    v41 = 0;
  }

  else
  {
    v42 = *v11;
    v43 = v39;
    v41 = v42;
    sub_1000101B8(v11);
  }

  v44 = sub_1000071E8(v41);
  sub_10000510C(v44, v41, 0, 0, 3u);

  sub_100007FE0(v16, &qword_100053210, &unk_1000348C0);
  sub_10001011C(v41, 0, 0, 3u);
}

void sub_10000F634(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  isa = v5[8].isa;
  __chkstk_darwin(v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  if (v15)
  {
    v33 = v12;
    v16 = *a1;
    v17 = qword_100052328;

    if (v17 != -1)
    {
      swift_once();
    }

    v34 = v5;
    v18 = type metadata accessor for Logger();
    sub_100003AFC(v18, qword_100055D08);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32[1] = a2;
      v22 = v21;
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10002EE20(v16, v15, aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "Received this pin: %s", v22, 0xCu);
      sub_1000042E4(v23);
    }

    sub_10000CBE8();
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v16;
    v26[4] = v15;
    aBlock[4] = sub_1000102FC;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002AE0;
    aBlock[3] = &unk_100049CA8;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000FC5C();
    sub_100003B8C(&unk_100052430, &qword_100033DA0);
    sub_100003C64(&qword_100052CF0, &unk_100052430, &qword_100033DA0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (v34[1].isa)(v8, v4);
    (*(v10 + 8))(v14, v33);
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100003AFC(v28, qword_100055D08);
    v34 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v34, v29, "No pin received from setup pin publisher", v30, 2u);
    }

    v31 = v34;
  }
}

uint64_t sub_10000FB1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000EE9C(a2, a3);
  }

  return result;
}

uint64_t sub_10000FB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_1000531F8, &unk_1000348A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FC08(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t sub_10000FC44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000FC5C()
{
  result = qword_100052CE0;
  if (!qword_100052CE0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100052CE0);
  }

  return result;
}

unint64_t sub_10000FCB4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000FD70(a1, a2, v6);
}

unint64_t sub_10000FD2C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000FE28(a1, v4);
}

unint64_t sub_10000FD70(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000FE28(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100010454(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000104B0(v8);
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

unint64_t sub_10000FEF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B8C(&qword_100053228, &unk_1000348E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010504(v4, &v13, &qword_100052C28, &qword_1000346A8);
      v5 = v13;
      v6 = v14;
      result = sub_10000FCB4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010444(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100010020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B8C(&qword_100053208, &qword_1000348B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000FCB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

void sub_10001011C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      goto LABEL_5;
    }

    if (a4 == 4 || a4 == 5)
    {
    }
  }

  else
  {
    if (!a4)
    {

      a1 = a3;

      goto LABEL_7;
    }

    if (a4 == 1 || a4 == 2)
    {
LABEL_5:

LABEL_7:
    }
  }
}

uint64_t sub_1000101B8(uint64_t a1)
{
  v2 = type metadata accessor for VisualPairingAppClipCode();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010214(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_100053210, &unk_1000348C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010284()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000102BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100010308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B8C(&qword_100053218, &qword_1000348D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010504(v4, v13, &qword_100053220, &qword_1000348D8);
      result = sub_10000FD2C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100010444(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_100010444(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100010504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003B8C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010574()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "InstructionUIProvider is being deinitialized", v5, 2u);
  }

  return v1;
}

uint64_t sub_10001065C()
{
  sub_100010574();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000106B4(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(PRXCardContentViewController) init];
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;
  v5 = v4;
  [v5 setDismissalType:1];
  sub_100005EC8(a1);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v22._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100038F90;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v22);

  v11 = String._bridgeToObjectiveC()();

  [v5 showActivityIndicatorWithStatus:v11];

  v12 = [v6 mainBundle];
  v23._object = 0xE000000000000000;
  v13._object = 0x8000000100038FC0;
  v13._countAndFlagsBits = 0xD000000000000016;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v23);

  v17 = [objc_allocWithZone(UILabel) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setText:v18];

  v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleExtraLargeTitle2];
  [v17 setFont:v19];

  [v17 setTextAlignment:1];
  [v17 setNumberOfLines:0];
  v20 = v17;
  sub_10000510C(v20, v16._countAndFlagsBits, v16._object, 0, 5u);

  return v2;
}

uint64_t sub_100010940()
{
  v1 = 0x676E696E6E7572;
  if (*v0 != 1)
  {
    v1 = 0x676E69646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

id sub_100010990()
{
  v1 = v0;
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10002EE20(0x74696E696564, 0xE600000000000000, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "[ProxCardEngine::%{public}s] invoked.", v5, 0xCu);
    sub_1000042E4(v6);
  }

  v7 = type metadata accessor for ProxCardFlowEngine();
  v10.receiver = v1;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_100010C0C()
{
  v1 = v0;
  v2 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003AFC(v6, qword_100055D20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10002EE20(0x29286E7572, 0xE500000000000000, &v23);
    _os_log_impl(&_mh_execute_header, v7, v8, "[ProxCardEngine::%{public}s] invoked.", v9, 0xCu);
    sub_1000042E4(v10);
  }

  v11 = *&v1[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupClient];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of WFSetupClient.setupProgressEventHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of WFSetupClient.interruptionHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of WFSetupClient.invalidationHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of WFSetupClient.userInteractionProgressEventHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of WFSetupClient.showPinHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of WFSetupClient.setupSecurePairingCompletionHandler.setter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Register to receive SFDeviceSetupNotifications", v14, 2u);
  }

  v15 = [objc_opt_self() defaultCenter];
  v16 = String._bridgeToObjectiveC()();
  [v15 addObserver:v1 selector:"handleDeviceSetupNotification:" name:v16 object:0 suspensionBehavior:4];

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  type metadata accessor for MainActor();
  v18 = v1;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  sub_100025434(0, 0, v5, &unk_100034B10, v20);
}

void sub_100011110(int64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100015B34(a1, a2);
  }
}

void sub_100011180()
{
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003AFC(v0, qword_100055D20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "connection to server interrupted", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter);

    sub_10000BF58(1);
  }
}

void sub_1000112AC()
{
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003AFC(v0, qword_100055D20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[ProxCardFlowEngine::InvalidationHandler] invoked", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 136446466;
      v10 = v5[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress];
      v29 = v9;
      v11 = 0xE700000000000000;
      v12 = 0x676E696E6E7572;
      if (v10 != 1)
      {
        v12 = 0x676E69646E65;
        v11 = 0xE600000000000000;
      }

      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1701602409;
      }

      if (v10)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      v15 = sub_10002EE20(v13, v14, &v29);

      *(v8 + 4) = v15;
      *(v8 + 12) = 2082;
      if (v5[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_requestedAutoDismiss])
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if (v5[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_requestedAutoDismiss])
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      v18 = sub_10002EE20(v16, v17, &v29);

      *(v8 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "EngineFlow: %{public}s - RequestedAutoDismiss: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v19 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress;
    if (v5[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress] || v5[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_requestedAutoDismiss] == 1)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Enabling Service Relaunch", v22, 2u);
      }

      v23 = *&v5[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupClient];
      dispatch thunk of WFSetupClient.enableServiceRelaunch()();
    }

    else
    {
      v23 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v23, v27, "Not Enabling Service Relaunch", v28, 2u);
      }
    }

    v5[v19] = 0;
    v24 = *&v5[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter];
    sub_10000BF58(1);
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "[ProxCardFlowEngine::InvalidationHandler] invoked on nil self.", v26, 2u);
    }
  }
}

void sub_1000116F0(int a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100018624(a1, a2, a3);
  }
}

void sub_100011768(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

uint64_t sub_1000117D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[54] = a4;
  type metadata accessor for MainActor();
  v4[55] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[56] = v6;
  v4[57] = v5;

  return _swift_task_switch(sub_100011870, v6, v5);
}

uint64_t sub_100011870()
{
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[58] = sub_100003AFC(v1, qword_100055D20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching assets from server.", v4, 2u);
  }

  v5 = v0[54];

  v6 = *(v5 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_assetLoader);
  v7 = swift_task_alloc();
  v0[59] = v7;
  *v7 = v0;
  v7[1] = sub_1000119CC;

  return sub_100023210();
}

uint64_t sub_1000119CC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 472);
  v8 = *v1;

  v5 = *(v3 + 456);
  v6 = *(v3 + 448);

  return _swift_task_switch(sub_100011AFC, v6, v5);
}

uint64_t sub_100011AFC()
{
  v63 = v0;
  v1 = v0[58];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running prox card flow engine", v4, 2u);
  }

  v5 = v0[54];

  v6 = *(*(v5 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  if (*(v7 + 16))
  {
    v8 = *(v7 + 32);
    sub_10000D3D4(0, 1);
  }

  else
  {
    v8 = 10;
  }

  os_unfair_lock_unlock((v6 + 24));

  if (v8 == 10)
  {
    v9 = v0[58];
    v10 = v0[55];

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to show initial stage. No stages defined.", v13, 2u);
    }

    v14 = v0[54];

    v15 = *(v14 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter);
    sub_10000BF58(1);
    v16 = v0[1];

    return v16();
  }

  v18 = v0[54];
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v0[50] = 0;
  v0[51] = 0xE000000000000000;
  v19._object = 0x80000001000394B0;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v19);
  v21 = *(v18 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_utilInitialStageIdentifier);
  v20 = *(v18 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_utilInitialStageIdentifier + 8);
  v0[52] = v21;
  v0[53] = v20;
  sub_100003B8C(&qword_100053450, &qword_100034B18);
  _print_unlocked<A, B>(_:_:)();
  v22 = v0[50];
  v23 = v0[51];
  NSLog(_:_:)();

  if (v20)
  {
    v24 = v0[58];

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v62[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10002EE20(v21, v20, v62);
      _os_log_impl(&_mh_execute_header, v25, v26, "Engine launched with initial test card '%s'", v27, 0xCu);
      sub_1000042E4(v28);
    }

    v65._countAndFlagsBits = v21;
    v65._object = v20;
    v29 = sub_100030284(v65);
    v30 = v0[58];
    if (v29 != 10)
    {
      v36 = v29;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v62[0] = v40;
        *v39 = 136315138;
        v41 = sub_10002FCBC(v36);
        v43 = sub_10002EE20(v41, v42, v62);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v37, v38, "Overriding initialStageIdentifier '%s'", v39, 0xCu);
        sub_1000042E4(v40);
      }

      v44 = v36;
      goto LABEL_23;
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v62[0] = v34;
      *v33 = 136315138;
      v35 = sub_10002EE20(v21, v20, v62);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to create ProxCardStageIdentifier from initialTestCard '%s'", v33, 0xCu);
      sub_1000042E4(v34);
    }

    else
    {
    }
  }

  v44 = v8;
LABEL_23:
  v45 = v0[58];
  v46 = v0[54];
  sub_100014F00(v44, v0 + 2);
  sub_100007F7C((v0 + 2), (v0 + 7));
  v47 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_currentStage;
  swift_beginAccess();
  sub_10001AB7C((v0 + 7), v46 + v47);
  swift_endAccess();
  sub_100007F7C((v0 + 2), (v0 + 12));
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v62[0] = v51;
    *v50 = 136446210;
    sub_100007F7C((v0 + 12), (v0 + 42));
    sub_100003B8C(&qword_1000533D8, &qword_100034AB8);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    sub_1000042E4(v0 + 12);
    v55 = sub_10002EE20(v52, v54, v62);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Generating UI provider for stage %{public}s", v50, 0xCu);
    sub_1000042E4(v51);
  }

  else
  {

    sub_1000042E4(v0 + 12);
  }

  v56 = v0[5];
  v57 = v0[6];
  sub_100008D18(v0 + 2, v56);
  v58 = *(v57 + 80);
  v61 = (v58 + *v58);
  v59 = v58[1];
  v60 = swift_task_alloc();
  v0[60] = v60;
  *v60 = v0;
  v60[1] = sub_100012280;

  return (v61)(v0 + 17, v56, v57);
}

uint64_t sub_100012280()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v6 = *v0;

  v3 = *(v1 + 456);
  v4 = *(v1 + 448);

  return _swift_task_switch(sub_1000123A0, v4, v3);
}

uint64_t sub_1000123A0()
{
  v27 = v0;
  v1 = v0[58];
  v2 = v0[55];

  sub_100007F7C((v0 + 2), (v0 + 22));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    sub_100007F7C((v0 + 22), (v0 + 37));
    sub_100003B8C(&qword_1000533D8, &qword_100034AB8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_1000042E4(v0 + 22);
    v10 = sub_10002EE20(v7, v9, &v26);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished generating UI provider for stage %{public}s", v5, 0xCu);
    sub_1000042E4(v6);
  }

  else
  {

    sub_1000042E4(v0 + 22);
  }

  v11 = v0[58];
  v12 = *(v0[54] + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter);
  v13 = v0[20];
  v14 = v0[21];
  sub_100008D18(v0 + 17, v13);
  v15 = (*(v14 + 8))(v13, v14);
  sub_10000A938(v15);

  sub_100007F7C((v0 + 2), (v0 + 27));
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136446210;
    sub_100007F7C((v0 + 27), (v0 + 32));
    sub_100003B8C(&qword_1000533D8, &qword_100034AB8);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    sub_1000042E4(v0 + 27);
    v23 = sub_10002EE20(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Presented UI for stage %{public}s", v18, 0xCu);
    sub_1000042E4(v19);
  }

  else
  {

    sub_1000042E4(v0 + 27);
  }

  if (*(v0[54] + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_shouldSimulate) == 1)
  {
    sub_1000126D8();
  }

  else
  {
    sub_100012DE4((v0 + 2));
  }

  sub_1000042E4(v0 + 17);
  sub_1000042E4(v0 + 2);
  v24 = v0[1];

  return v24();
}

uint64_t sub_1000126D8()
{
  v1 = v0;
  v2 = sub_100003B8C(&qword_1000533E0, &qword_100034AD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_100003B8C(&qword_100053418, &qword_100034AF0);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_100003B8C(&qword_100053420, &qword_100034AF8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003AFC(v14, qword_100055D20);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10002EE20(0xD000000000000015, 0x8000000100039490, v36);
    _os_log_impl(&_mh_execute_header, v15, v16, "[ProxCardEngine::%{public}s] invoked.", v17, 0xCu);
    sub_1000042E4(v18);
  }

  v19 = *(*(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);

  os_unfair_lock_lock((v19 + 24));
  v33 = *(*(v19 + 16) + 16);
  os_unfair_lock_unlock((v19 + 24));

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_100003C1C(0, &qword_100053428, NSTimer_ptr);
  v21 = [objc_opt_self() mainRunLoop];
  v22 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100007FE0(v13, &qword_100053420, &qword_100034AF8);
  v36[0] = v23;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_10001ADD4(&qword_100053430, &type metadata accessor for NSTimer.TimerPublisher);
  v24 = ConnectablePublisher.autoconnect()();

  v36[0] = v24;
  v37 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  v25 = v37;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  v27 = v25;
  sub_100003B8C(&qword_100053438, &qword_100034B00);
  sub_100003C1C(0, &qword_100052420, OS_dispatch_queue_ptr);
  sub_100003C64(&qword_100053440, &qword_100053438, &qword_100034B00);
  sub_10001ACF8();
  Publisher.receive<A>(on:options:)();
  sub_100007FE0(v5, &qword_1000533E0, &qword_100034AD0);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v20;
  v29[4] = v33;
  v29[5] = v24;
  sub_100003C64(&qword_100053448, &qword_100053418, &qword_100034AF0);

  v30 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v34 + 8))(v9, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100012CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100013814();
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  if (v8 == a4)
  {
    Publishers.Autoconnect.upstream.getter();
    NSTimer.TimerPublisher.connect()();

    sub_100008D18(v10, v10[3]);
    dispatch thunk of Cancellable.cancel()();
    return sub_1000042E4(v10);
  }

  else
  {
    result = swift_beginAccess();
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      *(a3 + 16) = v8 + 1;
    }
  }

  return result;
}

void sub_100012DE4(uint64_t a1)
{
  v3 = sub_100003B8C(&qword_1000533E0, &qword_100034AD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_100003B8C(&qword_1000533E8, &qword_100034AD8);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003AFC(v11, qword_100055D20);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10002EE20(0xD000000000000019, 0x8000000100039470, v55);
    _os_log_impl(&_mh_execute_header, v12, v13, "[ProxCardEngine::%{public}s] invoked.", v14, 0xCu);
    sub_1000042E4(v15);
  }

  sub_100007F7C(a1, &v52);
  sub_100003B8C(&qword_1000533D8, &qword_100034AB8);
  sub_100003B8C(&qword_1000533F0, &qword_100034AE0);
  if (swift_dynamicCast())
  {
    v47 = v7;
    v48 = v1;
    sub_10001ADA0(v50, v55);
    sub_100007F7C(a1, &v52);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v50[0] = v19;
      *v18 = 136446210;
      v20 = v53;
      v21 = v54;
      sub_100008D18(&v52, v53);
      v22 = (*(v21 + 32))(v20, v21);
      v23 = sub_10002FCBC(v22);
      v25 = v24;
      sub_1000042E4(&v52);
      v26 = sub_10002EE20(v23, v25, v50);

      *(v18 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "Subscribing to completion status for %{public}s stage", v18, 0xCu);
      sub_1000042E4(v19);
    }

    else
    {

      sub_1000042E4(&v52);
    }

    v38 = v56;
    v39 = v57;
    sub_100008D18(v55, v56);
    *&v52 = (*(v39 + 8))(v38, v39);
    *&v50[0] = *(v48 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
    v40 = *&v50[0];
    v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    v42 = v40;
    sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
    sub_100003C1C(0, &qword_100052420, OS_dispatch_queue_ptr);
    sub_100003C64(&qword_100053400, &qword_1000533C0, &qword_100034AA0);
    sub_10001ACF8();
    Publisher.receive<A>(on:options:)();
    sub_100007FE0(v6, &qword_1000533E0, &qword_100034AD0);

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100007F7C(a1, &v52);
    v44 = swift_allocObject();
    sub_10001ADA0(&v52, v44 + 16);
    *(v44 + 56) = v43;
    sub_100003C64(&qword_100053410, &qword_1000533E8, &qword_100034AD8);
    v45 = v47;
    Publisher<>.sink(receiveValue:)();

    (*(v49 + 8))(v10, v45);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_100007FE0(v50, &qword_1000533F8, &qword_100034AE8);
    sub_100007F7C(a1, v55);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v52 = v30;
      *v29 = 136446210;
      v31 = v56;
      v32 = v57;
      sub_100008D18(v55, v56);
      v33 = (*(v32 + 32))(v31, v32);
      v34 = sub_10002FCBC(v33);
      v36 = v35;
      sub_1000042E4(v55);
      v37 = sub_10002EE20(v34, v36, &v52);

      *(v29 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s stage is not subscribable", v29, 0xCu);
      sub_1000042E4(v30);

      return;
    }
  }

  sub_1000042E4(v55);
}

void sub_10001352C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003AFC(v4, qword_100055D20);
  sub_100007F7C(a2, v27);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v8 = 0xE600000000000000;
    *v7 = 136315394;
    v9 = 0x64656C696166;
    v10 = 0xE700000000000000;
    v11 = 0x73736563637573;
    if (v3 != 2)
    {
      v11 = 0x657373696D736964;
      v10 = 0xE900000000000064;
    }

    if (v3)
    {
      v9 = 0x6E776F6E6B6E75;
      v8 = 0xE700000000000000;
    }

    if (v3 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (v3 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    v14 = sub_10002EE20(v12, v13, &v26);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2082;
    v15 = v28;
    v16 = v29;
    sub_100008D18(v27, v28);
    v17 = (*(v16 + 32))(v15, v16);
    v18 = sub_10002FCBC(v17);
    v20 = v19;
    sub_1000042E4(v27);
    v21 = sub_10002EE20(v18, v20, &v26);

    *(v7 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received status: %s, for %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000042E4(v27);
  }

  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v23 = Strong;
      sub_100013814();
    }

    else
    {
      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (!v25)
      {
        return;
      }

      v23 = v25;
      sub_100016578();
    }
  }

  else
  {
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (!v22)
    {
      return;
    }

    v23 = v22;
    sub_10001608C();
  }
}

uint64_t sub_100013814()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003AFC(v10, qword_100055D20);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10002EE20(0x537478654E6E7572, 0xEE00292865676174, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "[ProxCardEngine::%{public}s] invoked.", v13, 0xCu);
    sub_1000042E4(v14);
  }

  v15 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10001ABEC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002AE0;
  aBlock[3] = &unk_100049E30;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10001ADD4(&qword_100052CE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B8C(&unk_100052430, &qword_100033DA0);
  sub_100003C64(&qword_100052CF0, &unk_100052430, &qword_100033DA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v5, v2);
  (*(v19 + 8))(v9, v20);
}

void sub_100013C14(uint64_t a1)
{
  v2 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_hasReceivedServerInteractionEvent))
    {
      v8 = *(*(Strong + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);

      os_unfair_lock_lock((v8 + 24));
      v9 = *(v8 + 16);
      if (*(v9 + 16) && (sub_100018000(*(v9 + 32)) & 1) != 0)
      {
        if (!*(v9 + 16))
        {
          __break(1u);
          return;
        }

        sub_10000D3D4(0, 1);
      }

      os_unfair_lock_unlock((v8 + 24));
    }

    v10 = *(*&v7[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow] + 16);

    os_unfair_lock_lock((v10 + 24));
    v11 = *(v10 + 16);
    if (*(v11 + 16))
    {
      v12 = *(v11 + 32);
      sub_10000D3D4(0, 1);
    }

    else
    {
      v12 = 10;
    }

    os_unfair_lock_unlock((v10 + 24));

    if (v12 == 10)
    {
      if (qword_100052330 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003AFC(v17, qword_100055D20);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "No next stage found", v20, 2u);
      }

      v7[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress] = 2;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Finished running proximity setup", v23, 2u);
      }

      v24 = *&v7[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter];
      sub_10000BF58(1);
    }

    else
    {
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
      type metadata accessor for MainActor();

      v26 = static MainActor.shared.getter();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = &protocol witness table for MainActor;
      *(v27 + 32) = a1;
      *(v27 + 40) = v12;
      sub_100025724(0, 0, v5, &unk_100034AC8, v27);
    }
  }

  else
  {
    if (qword_100052330 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003AFC(v13, qword_100055D20);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ProxCard flow engine is unexpectedly deallocated.", v16, 2u);
    }
  }
}

uint64_t sub_100014060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return _swift_task_switch(sub_1000140FC, v7, v6);
}

uint64_t sub_1000140FC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_100014208;
    v4 = *(v0 + 96);

    return sub_1000143BC(v4);
  }

  else
  {
    v6 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100014208()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_100014348, v5, v4);
}

uint64_t sub_100014348()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000143BC(char a1)
{
  *(v2 + 440) = v1;
  *(v2 + 512) = a1;
  v3 = type metadata accessor for DispatchPredicate();
  *(v2 + 448) = v3;
  v4 = *(v3 - 8);
  *(v2 + 456) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 464) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 472) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 480) = v7;
  *(v2 + 488) = v6;

  return _swift_task_switch(sub_1000144B4, v7, v6);
}

uint64_t sub_1000144B4()
{
  v46 = v0;
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 496) = sub_100003AFC(v1, qword_100055D20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v45 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10002EE20(0xD000000000000016, 0x8000000100039450, &v45);
    _os_log_impl(&_mh_execute_header, v2, v3, "[ProxCardEngine::%{public}s] invoked.", v4, 0xCu);
    sub_1000042E4(v5);
  }

  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 448);
  sub_100003C1C(0, &qword_100052420, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v8);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v6, v8);
  if (v9)
  {
    v11 = *(v0 + 440);
    sub_100014F00(*(v0 + 512), (v0 + 16));
    sub_100007F7C(v0 + 16, v0 + 56);
    v12 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_currentStage;
    swift_beginAccess();
    sub_10001AB7C(v0 + 56, v11 + v12);
    swift_endAccess();
    sub_100012DE4(v0 + 16);
    sub_100007F7C(v0 + 16, v0 + 96);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 440);
      v17 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = *(v0 + 120);
      v19 = *(v0 + 128);
      sub_100008D18((v0 + 96), v18);
      v20 = (*(v19 + 32))(v18, v19);
      v21 = sub_10002FB48(v20);
      v23 = v22;
      sub_1000042E4((v0 + 96));
      v24 = sub_10002EE20(v21, v23, &v45);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2080;
      v25 = *(*(v16 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter) + OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_navigationController);
      if (v25)
      {
        v26 = [v25 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      v30 = sub_10002EE20(v27, v29, &v45);

      *(v17 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v14, v15, "Pushing %s on to navigation controller %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000042E4((v0 + 96));
    }

    sub_100007F7C(v0 + 16, v0 + 136);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136446210;
      sub_100007F7C(v0 + 136, v0 + 376);
      sub_100003B8C(&qword_1000533D8, &qword_100034AB8);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      sub_1000042E4((v0 + 136));
      v38 = sub_10002EE20(v35, v37, &v45);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Generating UI provider for stage %{public}s", v33, 0xCu);
      sub_1000042E4(v34);
    }

    else
    {

      sub_1000042E4((v0 + 136));
    }

    v39 = *(v0 + 40);
    v40 = *(v0 + 48);
    sub_100008D18((v0 + 16), v39);
    v41 = *(v40 + 80);
    v44 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    *(v0 + 504) = v43;
    *v43 = v0;
    v43[1] = sub_100014AC0;

    return v44(v0 + 176, v39, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100014AC0()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v6 = *v0;

  v3 = *(v1 + 488);
  v4 = *(v1 + 480);

  return _swift_task_switch(sub_100014BE0, v4, v3);
}

uint64_t sub_100014BE0()
{
  v28 = v0;
  v1 = v0[62];
  v2 = v0[59];

  sub_100007F7C((v0 + 2), (v0 + 27));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136446210;
    sub_100007F7C((v0 + 27), (v0 + 42));
    sub_100003B8C(&qword_1000533D8, &qword_100034AB8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_1000042E4(v0 + 27);
    v10 = sub_10002EE20(v7, v9, &v27);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished generating UI provider for stage %{public}s", v5, 0xCu);
    sub_1000042E4(v6);
  }

  else
  {

    sub_1000042E4(v0 + 27);
  }

  v11 = v0[62];
  v12 = *(v0[55] + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter);
  v13 = v0[25];
  v14 = v0[26];
  sub_100008D18(v0 + 22, v13);
  v15 = (*(v14 + 8))(v13, v14);
  sub_10000B028(v15, 1);

  sub_100007F7C((v0 + 22), (v0 + 32));
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446210;
    sub_100007F7C((v0 + 32), (v0 + 37));
    sub_100003B8C(&qword_1000533D0, &qword_100034AB0);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    sub_1000042E4(v0 + 32);
    v23 = sub_10002EE20(v20, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Presented UI %{public}s", v18, 0xCu);
    sub_1000042E4(v19);
  }

  else
  {

    sub_1000042E4(v0 + 32);
  }

  v24 = v0[58];
  sub_1000042E4(v0 + 22);
  sub_1000042E4(v0 + 2);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100014F00@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003AFC(v5, qword_100055D20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v97 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10002EE20(0xD00000000000001ALL, 0x8000000100039430, &v97);
    _os_log_impl(&_mh_execute_header, v6, v7, "[ProxCardEngine::%{public}s] invoked.", v8, 0xCu);
    sub_1000042E4(v9);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v97 = v13;
    *v12 = 136446210;
    v14 = sub_10002FCBC(a1);
    v16 = sub_10002EE20(v14, v15, &v97);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Generate proximity stage for %{public}s", v12, 0xCu);
    sub_1000042E4(v13);
  }

  v17 = v2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v97 = v21;
    *v20 = 136315138;
    v22 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
    v23 = WFSetupServerActivationFlow.description.getter();
    v25 = sub_10002EE20(v23, v24, &v97);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Activation flow %s", v20, 0xCu);
    sub_1000042E4(v21);
  }

  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          v26 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
          v27 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupClient];
          v28 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupPinPublisher];
          sub_100003B8C(&qword_1000533C8, &qword_100034AA8);
          v29 = swift_allocObject();
          *(v29 + 16) = v28;
          v30 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_assetLoader];
          v31 = v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_shouldAutoStart];
          if (v26 == 4)
          {
            v32 = type metadata accessor for ReverseBYOEIntroductionStage();
            v33 = swift_allocObject();
            *(v33 + 16) = 3;
            type metadata accessor for IntroductionActionHandler();
            *(v33 + 24) = 0u;
            *(v33 + 40) = 0u;
            *(v33 + 56) = 0;
            swift_allocObject();
            v84 = v27;

            result = sub_1000241F0(v84);
            *(v33 + 64) = result;
            *(v33 + 72) = v30;
            *(v33 + 80) = v31;
            v36 = &off_10004A1F8;
          }

          else if (v26 == 2)
          {
            v32 = type metadata accessor for GuestModeIntroductionStage();
            v33 = swift_allocObject();
            *(v33 + 16) = 3;
            *(v33 + 24) = 0u;
            *(v33 + 40) = 0u;
            *(v33 + 56) = 0;
            *(v33 + 72) = v30;
            *(v33 + 80) = v27;
            *(v33 + 88) = v29;
            *(v33 + 96) = v31;
            type metadata accessor for IntroductionActionHandler();
            swift_allocObject();
            v34 = v27;

            result = sub_1000241F0(v34);
            *(v33 + 64) = result;
            v36 = &off_100049868;
          }

          else
          {
            v32 = type metadata accessor for IntroductionStage();
            v33 = swift_allocObject();
            *(v33 + 16) = 3;
            *(v33 + 24) = 0u;
            *(v33 + 40) = 0u;
            *(v33 + 56) = 0;
            *(v33 + 72) = v30;
            type metadata accessor for IntroductionActionHandler();
            swift_allocObject();
            v91 = v27;

            result = sub_1000241F0(v91);
            *(v33 + 64) = result;
            *(v33 + 80) = v31;
            v36 = &off_10004A7F0;
          }

          a2[3] = v32;
          a2[4] = v36;
          *a2 = v33;
        }

        else
        {
          v68 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
          v69 = type metadata accessor for InstructionStage();
          result = swift_allocObject();
          *(result + 16) = 4;
          *(result + 24) = 0u;
          *(result + 40) = 0u;
          *(result + 56) = 0;
          *(result + 64) = v68;
          a2[3] = v69;
          a2[4] = &off_100049A78;
          *a2 = result;
        }

        return result;
      }

      v57 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_appleIDManager];
      v39 = type metadata accessor for AppleIDAccountRenewalStage();
      v40 = swift_allocObject();
      *(v40 + 16) = 2;
      *(v40 + 24) = 0u;
      *(v40 + 40) = 0u;
      *(v40 + 56) = 0;
      v58 = sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      swift_allocObject();

      result = PassthroughSubject.init()();
      *(v40 + 64) = result;
      *(v40 + 72) = v57;
      v45 = &off_10004A030;
LABEL_46:
      a2[3] = v39;
      a2[4] = v45;
      *a2 = v40;
      return result;
    }

    if (a1)
    {
      v76 = type metadata accessor for AppleIDAccountUpgradeStage();
      v77 = swift_allocObject();
      *(v77 + 16) = 1;
      type metadata accessor for AppleIDAccountUpgradeActionHandler();
      *(v77 + 24) = 0u;
      *(v77 + 40) = 0u;
      *(v77 + 56) = 0;
      v78 = swift_allocObject();
      v79 = sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
      v80 = *(v79 + 48);
      v81 = *(v79 + 52);
      swift_allocObject();
      result = PassthroughSubject.init()();
      *(v78 + 16) = result;
      *(v77 + 64) = v78;
      a2[3] = v76;
      a2[4] = &off_10004A4B0;
      *a2 = v77;
      return result;
    }

    v46 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
    v47 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_assetLoader];
    if (v46 == 4)
    {
      v48 = type metadata accessor for ReverseBYOEUnlockStage();
      v89 = swift_allocObject();
      v50 = sub_10001AAF0(v47, v17, v89);
      v51 = &off_100049800;
    }

    else if (v46 == 2)
    {
      v48 = type metadata accessor for GuestModeUnlockStage();
      v49 = swift_allocObject();
      v50 = sub_10001AAF0(v47, v17, v49);
      v51 = &off_10004AE10;
    }

    else
    {
      v48 = type metadata accessor for DeviceUnlockStage();
      v96 = swift_allocObject();
      v50 = sub_10001AAF0(v47, v17, v96);
      v51 = &off_10004A350;
    }

    goto LABEL_48;
  }

  if (a1 > 6u)
  {
    if (a1 != 7)
    {
      if (a1 == 8)
      {
        v37 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
        v38 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_assetLoader];
        if (v37 == 4)
        {
          v39 = type metadata accessor for ReverseBYOECompleteStage();
          v40 = swift_allocObject();
          *(v40 + 16) = 8;
          type metadata accessor for CompleteActionHandler();
          *(v40 + 24) = 0u;
          *(v40 + 40) = 0u;
          *(v40 + 56) = 0;
          v85 = swift_allocObject();
          v86 = sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
          v87 = *(v86 + 48);
          v88 = *(v86 + 52);
          swift_allocObject();

          result = PassthroughSubject.init()();
          *(v85 + 16) = result;
          *(v40 + 64) = v85;
          *(v40 + 72) = v38;
          v45 = &off_10004A858;
        }

        else if (v37 == 2)
        {
          v39 = type metadata accessor for GuestModeCompleteStage();
          v40 = swift_allocObject();
          *(v40 + 16) = 8;
          type metadata accessor for CompleteActionHandler();
          *(v40 + 24) = 0u;
          *(v40 + 40) = 0u;
          *(v40 + 56) = 0;
          v41 = swift_allocObject();
          v42 = sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          swift_allocObject();

          result = PassthroughSubject.init()();
          *(v41 + 16) = result;
          *(v40 + 64) = v41;
          *(v40 + 72) = v38;
          v45 = &off_100049718;
        }

        else
        {
          v39 = type metadata accessor for CompleteStage();
          v40 = swift_allocObject();
          *(v40 + 16) = 8;
          type metadata accessor for CompleteActionHandler();
          *(v40 + 24) = 0u;
          *(v40 + 40) = 0u;
          *(v40 + 56) = 0;
          v92 = swift_allocObject();
          v93 = sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
          v94 = *(v93 + 48);
          v95 = *(v93 + 52);
          swift_allocObject();

          result = PassthroughSubject.init()();
          *(v92 + 16) = result;
          *(v40 + 64) = v92;
          *(v40 + 72) = v38;
          v45 = &off_10004A0F0;
        }
      }

      else
      {
        v70 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_layoutCache];
        v71 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
        v39 = type metadata accessor for FailureStage();
        v40 = swift_allocObject();
        *(v40 + 16) = 9;
        type metadata accessor for FailureActionHandler();
        *(v40 + 24) = 0u;
        *(v40 + 40) = 0u;
        *(v40 + 56) = 0;
        v72 = swift_allocObject();
        v73 = sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
        v74 = *(v73 + 48);
        v75 = *(v73 + 52);
        swift_allocObject();

        result = PassthroughSubject.init()();
        *(v72 + 16) = result;
        *(v40 + 64) = v72;
        *(v40 + 72) = v70;
        *(v40 + 80) = v71;
        v45 = &off_10004A260;
      }

      goto LABEL_46;
    }

    v61 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
    v62 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupClient];
    v63 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_layoutCache];
    v64 = type metadata accessor for ProgressStage();
    v65 = swift_allocObject();
    *(v65 + 16) = 7;
    type metadata accessor for PrescriptionRecordProvider();
    *(v65 + 24) = 0u;
    *(v65 + 40) = 0u;
    *(v65 + 56) = 0;
    v66 = swift_allocObject();
    *(v65 + 64) = v62;
    *(v65 + 72) = v66;
    *(v65 + 80) = v63;
    if (v61 == 4)
    {
      *(v65 + 88) = 0xD00000000000001BLL;
      *(v65 + 96) = 0x80000001000393F0;
      v67 = 4;
    }

    else
    {
      if (v61 != 2)
      {
        *(v65 + 88) = 0xD000000000000014;
        *(v65 + 96) = 0x80000001000393D0;
        *(v65 + 104) = v61;
        goto LABEL_42;
      }

      *(v65 + 88) = 0xD00000000000001FLL;
      *(v65 + 96) = 0x8000000100039410;
      v67 = 2;
    }

    *(v65 + 104) = v67;
LABEL_42:
    a2[3] = v64;
    a2[4] = &off_10004A088;
    *a2 = v65;
    v90 = v62;
    goto LABEL_49;
  }

  if (a1 != 5)
  {
    v82 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupPinPublisher];
    v83 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
    v48 = type metadata accessor for PinPairingStage();
    v50 = swift_allocObject();
    *(v50 + 16) = 6;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 0u;
    *(v50 + 56) = 0;
    *(v50 + 64) = v82;
    *(v50 + 72) = v83;
    v51 = &off_10004A9F0;
LABEL_48:
    a2[3] = v48;
    a2[4] = v51;
    *a2 = v50;
    goto LABEL_49;
  }

  v52 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupPinPublisher];
  v53 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_layoutCache];
  v54 = *&v17[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow];
  v55 = type metadata accessor for VisualPairingStage();
  v56 = swift_allocObject();
  *(v56 + 16) = 5;
  *(v56 + 24) = 0u;
  *(v56 + 40) = 0u;
  *(v56 + 56) = 0;
  *(v56 + 64) = v52;
  *(v56 + 72) = v53;
  *(v56 + 80) = v54;
  a2[3] = v55;
  a2[4] = &off_10004AAE0;
  *a2 = v56;

LABEL_49:
}

void sub_100015B34(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100003AFC(v11, qword_100055D20);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = v3;
    v16 = v15;
    v17 = a1;
    v18 = a2;
    v19 = swift_slowAlloc();
    v44 = v19;
    *v16 = 136446210;
    *(v16 + 4) = sub_10002EE20(0xD000000000000022, 0x80000001000393A0, &v44);
    _os_log_impl(&_mh_execute_header, v13, v14, "[ProxCardEngine::%{public}s] invoked.", v16, 0xCu);
    sub_1000042E4(v19);
    a2 = v18;
    a1 = v17;

    v3 = v42;
  }

  v20 = *(v3 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v10 = v20;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v24 = 136446466;
    v25 = sub_10001AA9C(a1);
    v42 = v12;
    v26 = v25;
    v27 = a1;
    v28 = a2;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = v29;
    a2 = v28;
    a1 = v27;
    v33 = sub_10002EE20(v32, v31, &v44);

    *(v24 + 4) = v33;
    *(v24 + 12) = 2082;
    v43 = a2;

    sub_100003B8C(&qword_1000533B8, &qword_100034A98);
    v34 = String.init<A>(describing:)();
    v36 = sub_10002EE20(v34, v35, &v44);

    *(v24 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received progress setup event: %{public}s, with info: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 <= 7)
  {
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          sub_100016A58();
          return;
        }
      }

      else if (a1 != 4)
      {
        sub_10001682C();
        return;
      }
    }

    else
    {
      if (a1 <= 1)
      {
        if (!a1)
        {
          sub_1000175F8();
          return;
        }

        if (a1 == 1)
        {
          sub_100016F30(a2);
          return;
        }

        goto LABEL_26;
      }

      if (a1 != 2)
      {
        return;
      }
    }

LABEL_24:
    sub_10001608C();
    return;
  }

  if ((a1 - 8) < 6)
  {
    return;
  }

  if (a1 == 14)
  {
    goto LABEL_24;
  }

  if (a1 == 15)
  {
    sub_100017334();
    return;
  }

LABEL_26:
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_10002EE20(0xD000000000000022, 0x80000001000393A0, &v44);
    *(v39 + 12) = 2050;
    *(v39 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s received unknown setup progress event: %{public}ld", v39, 0x16u);
    sub_1000042E4(v40);
  }
}

void sub_10001608C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24);
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055D20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10002EE20(0xD000000000000016, 0x8000000100039380, v33);
    _os_log_impl(&_mh_execute_header, v8, v9, "[ProxCardEngine::%{public}s] invoked.", v10, 0xCu);
    sub_1000042E4(v11);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failure UI requested", v14, 2u);
  }

  v15 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v6 = v15;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v17 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_currentStage;
  swift_beginAccess();
  sub_10001A9D8(v1 + v17, v33);
  v18 = v34;
  if (!v34)
  {
    sub_100007FE0(v33, &qword_1000533B0, &unk_100034A88);
    v23 = 0;
LABEL_14:
    v24 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress);
    v22 = v24 == 2;
    if (v24 != 2 && (v23 & 1) == 0)
    {
      v25 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow;
      v26 = *(*(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);

      os_unfair_lock_lock((v26 + 24));
      v27 = *(v26 + 16);

      *(v26 + 16) = &_swiftEmptyArrayStorage;
      os_unfair_lock_unlock((v26 + 24));

      v28 = *(*(v1 + v25) + 16);

      os_unfair_lock_lock((v28 + 24));
      sub_10000CF68((v28 + 16), 9);
      os_unfair_lock_unlock((v28 + 24));

      sub_100013814();
      return;
    }

    goto LABEL_17;
  }

  v19 = v35;
  sub_100008D18(v33, v34);
  v20 = (*(v19 + 32))(v18, v19);
  sub_100007FE0(v33, &qword_1000533B0, &unk_100034A88);
  if (sub_10002FB48(v20) != 0x6974656C706D6F63 || v21 != 0xEA00000000006E6FLL)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    goto LABEL_14;
  }

  v22 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress) == 2;
  v23 = 1;
LABEL_17:
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 67109376;
    *(v31 + 4) = v22;
    *(v31 + 8) = 1024;
    *(v31 + 10) = v23 & 1;
    _os_log_impl(&_mh_execute_header, v29, v30, "Ignoring failure and not showing failure prox card: setup is already complete. (Engine finished:%{BOOL}d, Completion card:%{BOOL}d)", v31, 0xEu);
  }
}

uint64_t sub_100016578()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055D20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10002EE20(0xD000000000000014, 0x8000000100039360, &v20);
    _os_log_impl(&_mh_execute_header, v8, v9, "[ProxCardEngine::%{public}s] invoked.", v10, 0xCu);
    sub_1000042E4(v11);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deny requested, closing prox card", v14, 2u);
  }

  v15 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v6 = v15;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v15)
  {
    v18 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter);
    return sub_10000BF58(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001682C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055D20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10002EE20(0xD00000000000001ALL, 0x8000000100039340, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "[ProxCardEngine::%{public}s] invoked.", v10, 0xCu);
    sub_1000042E4(v11);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v6 = v12;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016A58()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055D20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10002EE20(0xD00000000000001BLL, 0x8000000100039320, v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "[ProxCardEngine::%{public}s] invoked.", v10, 0xCu);
    sub_1000042E4(v11);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v6 = v12;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v12)
  {
    v15 = *(*(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);
    __chkstk_darwin(result);
    v16[-2] = sub_100016D04;
    v16[-1] = 0;

    os_unfair_lock_lock((v15 + 24));
    sub_10001AFF8((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));

    return sub_100013814();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016D04(unsigned __int8 a1)
{
  if (a1 == 5)
  {
    goto LABEL_5;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return 1;
  }

  if (sub_10002FB48(a1) == 0x69726961506E6970 && v3 == 0xEA0000000000676ELL)
  {
LABEL_5:

    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v5 & 1;
}

uint64_t sub_100016F30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003AFC(v9, qword_100055D20);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10002EE20(0xD00000000000001CLL, 0x8000000100039300, v27);
    _os_log_impl(&_mh_execute_header, v10, v11, "[ProxCardEngine::%{public}s] invoked.", v12, 0xCu);
    sub_1000042E4(v13);
  }

  v14 = *(v2 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v8 = v14;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (!a1)
  {
    goto LABEL_15;
  }

  v26[5] = 28517;
  v26[6] = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v17 = sub_10000FD2C(v27), (v18 & 1) == 0))
  {
    sub_1000104B0(v27);
LABEL_15:
    v28 = 0u;
    v29 = 0u;
    return sub_100007FE0(&v28, &qword_100052D18, &unk_100034728);
  }

  sub_100008C68(*(a1 + 56) + 32 * v17, &v28);
  sub_1000104B0(v27);
  if (!*(&v29 + 1))
  {
    return sub_100007FE0(&v28, &qword_100052D18, &unk_100034728);
  }

  sub_100003B8C(&qword_1000525D8, "Ћ");
  result = swift_dynamicCast();
  if (result)
  {
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136446210;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_10002EE20(v23, v24, v27);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Presenting failed stage due to error: %{public}s", v21, 0xCu);
      sub_1000042E4(v22);
    }

    sub_10001608C();
  }

  return result;
}

void sub_100017334()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003AFC(v6, qword_100055D20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10002EE20(0xD00000000000001BLL, 0x80000001000392E0, &v17);
    _os_log_impl(&_mh_execute_header, v7, v8, "[ProxCardEngine::%{public}s] invoked.", v9, 0xCu);
    sub_1000042E4(v10);
  }

  v11 = *(v0 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v5 = v11;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v11)
  {
    if (*(v0 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_hasReceivedSetupCompletedEvent))
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Already received setup completed event. Ignoring setup completed event.", v15, 2u);
      }
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_hasReceivedSetupCompletedEvent) = 1;
      sub_100013814();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000175F8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055D20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10002EE20(0xD000000000000019, 0x80000001000392C0, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "[ProxCardEngine::%{public}s] invoked.", v10, 0xCu);
    sub_1000042E4(v11);
  }

  v12 = *(v0 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v6 = v12;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v12)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Setup started event received. Transitioning the engine flow progress to running. ", v16, 2u);
    }

    *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000178A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003AFC(v9, qword_100055D20);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v52 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v51 = v2;
    v14 = v13;
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v14 = 136446466;
    *(v14 + 4) = sub_10002EE20(0xD000000000000023, 0x8000000100039290, v53);
    *(v14 + 12) = 2082;
    v15 = sub_10001AA48(a1);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10002EE20(v16, v18, v53);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[ProxCardEngine::%{public}s] invoked with event: (%{public}s)", v14, 0x16u);
    swift_arrayDestroy();

    v2 = v51;
  }

  v20 = *(v2 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v8 = v20;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v22 = v52;
  if (v52 == 1)
  {
    sub_1000181B0();
    v23 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v23, v32, "User chose pin pairing setup. ", v33, 2u);
      goto LABEL_15;
    }

LABEL_16:

    return;
  }

  if (v52)
  {
    v23 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_10002EE20(0xD000000000000023, 0x8000000100039290, v53);
      *(v35 + 12) = 2050;
      *(v35 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v23, v34, "%s received unknown user interaction event: %{public}ld", v35, 0x16u);
      sub_1000042E4(v36);

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (*(v2 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_hasReceivedServerInteractionEvent))
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v53[0] = v26;
      *v25 = 136446210;
      v27 = sub_10001AA48(0);
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10002EE20(v28, v30, v53);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring event: %{public}s since the flow has already received this event", v25, 0xCu);
      sub_1000042E4(v26);

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  *(v2 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_hasReceivedServerInteractionEvent) = 1;
  v37 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_currentStage;
  swift_beginAccess();
  sub_10001A9D8(v2 + v37, v53);
  v38 = v54;
  if (v54)
  {
    v39 = v55;
    sub_100008D18(v53, v54);
    LOBYTE(v39) = (*(v39 + 32))(v38, v39);
    sub_100007FE0(v53, &qword_1000533B0, &unk_100034A88);
    if (sub_10002FB48(v39) == 0x7463757274736E69 && v40 == 0xEB000000006E6F69)
    {

LABEL_23:
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Proceeding from the instruction pane since the user interacted with the first pane on the server side", v44, 2u);
      }

      sub_100013814();
      return;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_100007FE0(v53, &qword_1000533B0, &unk_100034A88);
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Removing instructions pane from flow since user already interacted with first pane on the server side", v47, 2u);
  }

  v48 = *(*(v2 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);
  __chkstk_darwin(v49);
  *(&v50 - 2) = sub_100017FFC;
  *(&v50 - 1) = 0;

  os_unfair_lock_lock((v48 + 24));
  sub_10001AFF8((v48 + 16));
  os_unfair_lock_unlock((v48 + 24));
}

uint64_t sub_100018000(char a1)
{
  if (a1 == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t sub_1000181B0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055D20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10002EE20(0xD000000000000020, 0x8000000100039260, v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "[ProxCardEngine::%{public}s] invoked.", v10, 0xCu);
    sub_1000042E4(v11);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v6 = v12;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v12)
  {
    v15 = *(*(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);
    __chkstk_darwin(result);
    *(&v17 - 2) = sub_100018474;
    *(&v17 - 1) = 0;

    os_unfair_lock_lock((v15 + 24));
    sub_10001A9BC((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));

    v16 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupPinPublisher);
    v18[0] = 0;
    v18[1] = 0;
    CurrentValueSubject.value.setter();
    return sub_100013814();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100018474(char a1)
{
  if (a1 == 5)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t sub_100018624(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003AFC(v12, qword_100055D20);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v15 = 136446722;
    *(v15 + 4) = sub_10002EE20(0xD000000000000025, 0x8000000100039230, v22);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10002EE20(v21, a3, v22);
    *(v15 + 22) = 1026;
    *(v15 + 24) = a1;
    _os_log_impl(&_mh_execute_header, v13, v14, "[ProxCardEngine::%{public}s] invoked with pin: %s, pairingFlags: %{public}u", v15, 0x1Cu);
    swift_arrayDestroy();
  }

  v16 = *(v4 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  *v11 = v16;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v16)
  {
    v19 = *(v4 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupPinPublisher);
    v22[0] = v21;
    v22[1] = a3;

    CurrentValueSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000188D8(uint64_t a1)
{
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D20);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10002EE20(0xD000000000000024, 0x8000000100039200, &v16);
    *(v5 + 12) = 2082;
    swift_errorRetain();
    sub_100003B8C(&qword_1000533A8, &qword_100034A80);
    v6 = String.init<A>(describing:)();
    v8 = sub_10002EE20(v6, v7, &v16);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[ProxCardEngine::%{public}s] invoked with error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_100003B8C(&qword_1000533A8, &qword_100034A80);
      v13 = String.init<A>(describing:)();
      v15 = sub_10002EE20(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Secure pairing failed with error: %{public}s", v11, 0xCu);
      sub_1000042E4(v12);
    }

    sub_10001608C();
  }
}

uint64_t sub_100018BA0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003AFC(v12, qword_100055D20);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v4;
    aBlock[0] = v31;
    *v16 = 136446466;
    *(v16 + 4) = sub_10002EE20(0xD000000000000021, 0x80000001000391D0, aBlock);
    *(v16 + 12) = 2082;
    v17 = [v13 debugDescription];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v11;
    v20 = v7;
    v21 = v2;
    v23 = v22;

    v24 = sub_10002EE20(v18, v23, aBlock);
    v2 = v21;
    v7 = v20;
    v11 = v19;

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "[ProxCardEngine::%{public}s] invoked with notification: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    v4 = v32;
  }

  v25 = *(v2 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v13;
  aBlock[4] = sub_10001A874;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002AE0;
  aBlock[3] = &unk_100049DE0;
  v28 = _Block_copy(aBlock);
  v29 = v13;

  static DispatchQoS.unspecified.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_10001ADD4(&qword_100052CE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B8C(&unk_100052430, &qword_100033DA0);
  sub_100003C64(&qword_100052CF0, &unk_100052430, &qword_100033DA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v35 + 8))(v7, v4);
  (*(v33 + 8))(v11, v34);
}

void sub_10001904C(uint64_t a1, void *a2)
{
  v3 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v108 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003B8C(&qword_1000533A0, &unk_100034A60);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v108 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100052330 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003AFC(v35, qword_100055D20);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Ignoring setup notification, self == nil", v38, 2u);
    }

    return;
  }

  v20 = Strong;
  v21 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress;
  if (Strong[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress])
  {
    if (qword_100052330 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003AFC(v22, qword_100055D20);
    v23 = v20;
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v113[0] = swift_slowAlloc();
      *v27 = 136446466;
      v28 = [v24 debugDescription];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_10002EE20(v29, v31, v113);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      if (*(v20 + v21))
      {
        if (*(v20 + v21) == 1)
        {
          v33 = 0xE700000000000000;
          v34 = 0x676E696E6E7572;
        }

        else
        {
          v33 = 0xE600000000000000;
          v34 = 0x676E69646E65;
        }
      }

      else
      {
        v33 = 0xE400000000000000;
        v34 = 1701602409;
      }

      v67 = sub_10002EE20(v34, v33, v113);

      *(v27 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v25, v26, "Ignoring setup notification: %{public}s since the engine flow progress: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_42;
  }

  v109 = Strong;
  v110 = a2;
  v39 = [a2 name];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v40 == 0xD00000000000001DLL && 0x8000000100039190 == v42)
  {

    v43 = v109;
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v43 = v109;
    if ((v44 & 1) == 0)
    {
      if (qword_100052330 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_100003AFC(v68, qword_100055D20);
      v69 = v110;
      v25 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v25, v58))
      {
        goto LABEL_41;
      }

      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v113[0] = v60;
      *v59 = 136446210;
      v70 = [v69 name];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = sub_10002EE20(v71, v73, v113);

      *(v59 + 4) = v74;
      v66 = "Ignoring notification: %{public}s since it is not an SFDeviceSetupNotification";
      goto LABEL_40;
    }
  }

  v45 = v110;
  v46 = [v110 userInfo];
  if (!v46)
  {
    v114 = 0u;
    v115 = 0u;
    goto LABEL_27;
  }

  v47 = v46;
  v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v111 = 0x4449656369766564;
  v112 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v48 + 16) || (v49 = sub_10000FD2C(v113), (v50 & 1) == 0))
  {

    sub_1000104B0(v113);
    v114 = 0u;
    v115 = 0u;
    v45 = v110;
    goto LABEL_27;
  }

  sub_100008C68(*(v48 + 56) + 32 * v49, &v114);
  sub_1000104B0(v113);

  v45 = v110;
  if (!*(&v115 + 1))
  {
LABEL_27:
    sub_100007FE0(&v114, &qword_100052D18, &unk_100034728);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    if (qword_100052330 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100003AFC(v56, qword_100055D20);
    v57 = v45;
    v25 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v58))
    {
      goto LABEL_41;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v113[0] = v60;
    *v59 = 136446210;
    v61 = [v57 debugDescription];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = sub_10002EE20(v62, v64, v113);

    *(v59 + 4) = v65;
    v66 = "Missing value for key SFDeviceSetupNotificationKeyDeviceIdentifier in notification: %{public}s";
    goto LABEL_40;
  }

  v51 = v113[1];
  v108 = v113[0];
  v52 = *&v43[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupClient];
  v53 = dispatch thunk of WFSetupClient.peerDevice.getter();
  v54 = [v53 identifier];

  if (v54)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  (*(v8 + 56))(v16, v55, 1, v7);
  sub_10001A894(v16, v18);
  if ((*(v8 + 48))(v18, 1, v7))
  {
    sub_100007FE0(v18, &qword_1000533A0, &unk_100034A60);
LABEL_46:
    if (qword_100052330 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100003AFC(v75, qword_100055D20);

    v25 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v25, v58))
    {

      goto LABEL_41;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v113[0] = v60;
    *v59 = 136446210;
    v76 = sub_10002EE20(v108, v51, v113);

    *(v59 + 4) = v76;
    v66 = "Ignoring device setup notification targeted for peer device with identifier: %{public}s";
LABEL_40:
    _os_log_impl(&_mh_execute_header, v25, v58, v66, v59, 0xCu);
    sub_1000042E4(v60);

LABEL_41:

LABEL_42:
    return;
  }

  (*(v8 + 16))(v11, v18, v7);
  sub_100007FE0(v18, &qword_1000533A0, &unk_100034A60);
  v77 = UUID.uuidString.getter();
  v79 = v78;
  (*(v8 + 8))(v11, v7);
  if (v108 == v77 && v51 == v79)
  {
  }

  else
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v80 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v81 = v110;
  v82 = [v110 userInfo];
  if (!v82)
  {
    goto LABEL_67;
  }

  v83 = v82;
  v84 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v111 = 0x746553736465656ELL;
  v112 = 0xEA00000000007075;
  AnyHashable.init<A>(_:)();
  if (!*(v84 + 16) || (v85 = sub_10000FD2C(v113), (v86 & 1) == 0))
  {

    sub_1000104B0(v113);
LABEL_67:
    v114 = 0u;
    v115 = 0u;
    goto LABEL_68;
  }

  sub_100008C68(*(v84 + 56) + 32 * v85, &v114);
  sub_1000104B0(v113);

  if (!*(&v115 + 1))
  {
LABEL_68:
    sub_100007FE0(&v114, &qword_100052D18, &unk_100034728);
    goto LABEL_69;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:
    if (qword_100052330 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100003AFC(v97, qword_100055D20);
    v98 = v81;
    v25 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v58))
    {
      goto LABEL_41;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v113[0] = v60;
    *v59 = 136446210;
    v99 = [v98 debugDescription];
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    v103 = sub_10002EE20(v100, v102, v113);

    *(v59 + 4) = v103;
    v66 = "Missing value for key SFDeviceSetupNotificationKeyNeedsSetup in notification: %{public}s";
    goto LABEL_40;
  }

  if (v113[0])
  {
    if (qword_100052330 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100003AFC(v87, qword_100055D20);
    v88 = v81;
    v25 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v113[0] = v91;
      *v90 = 136446210;
      v92 = [v88 debugDescription];
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v96 = sub_10002EE20(v93, v95, v113);

      *(v90 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v25, v89, "Device needs to be setup. Ignoring the notification: %{public}s", v90, 0xCu);
      sub_1000042E4(v91);
    }

    goto LABEL_42;
  }

  v104 = type metadata accessor for TaskPriority();
  (*(*(v104 - 8) + 56))(v6, 1, 1, v104);
  type metadata accessor for MainActor();
  v105 = v43;
  v106 = static MainActor.shared.getter();
  v107 = swift_allocObject();
  v107[2] = v106;
  v107[3] = &protocol witness table for MainActor;
  v107[4] = v105;
  sub_100025434(0, 0, v6, &unk_100034A78, v107);
}

uint64_t sub_100019F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100019F98, v6, v5);
}

uint64_t sub_100019F98()
{
  v1 = v0[3];

  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Auto-dismissing proximity setup flow.", v5, 2u);
  }

  v6 = v0[2];

  *(v6 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_requestedAutoDismiss) = 1;
  v7 = *(v6 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter);
  sub_10000BF58(1);
  v8 = v0[1];

  return v8();
}

uint64_t sub_10001A144()
{
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003AFC(v0, qword_100055D20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10002EE20(0xD000000000000019, 0x80000001000391B0, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "[ProxCardEngine::%{public}s] invoked.", v3, 0xCu);
    sub_1000042E4(v4);
  }

  return sub_10001A298();
}

uint64_t sub_10001A298()
{
  v1 = v0;
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10002EE20(0x6164696C61766E69, 0xEC00000029286574, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "[ProxCardEngine::%{public}s] invoked.", v5, 0xCu);
    sub_1000042E4(v6);
  }

  v7 = [objc_opt_self() defaultCenter];
  v8 = String._bridgeToObjectiveC()();
  [v7 removeObserver:v1 name:v8 object:0];

  v9 = *(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupClient);
  dispatch thunk of WFSetupClient.invalidate()();
  v10 = *(*(v1 + OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow) + 16);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  *(v10 + 16) = &_swiftEmptyArrayStorage;

  os_unfair_lock_unlock((v10 + 24));
}

uint64_t getEnumTagSinglePayload for ProxCardFlowEngine.ProxCardEngineFlowProgress(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProxCardFlowEngine.ProxCardEngineFlowProgress(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001A650()
{
  result = qword_100053398;
  if (!qword_100053398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053398);
  }

  return result;
}

uint64_t sub_10001A6A4()
{
  if (qword_100052330 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003AFC(v0, qword_100055D20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10002EE20(0xD000000000000017, 0x8000000100039170, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "[ProxCardEngine::%{public}s] invoked.", v3, 0xCu);
    sub_1000042E4(v4);
  }

  return sub_10001A144();
}

uint64_t sub_10001A7FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A834()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A87C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A894(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_1000533A0, &unk_100034A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A908(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AFEC;

  return sub_100019F00(a1, v4, v5, v6);
}

uint64_t sub_10001A9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_1000533B0, &unk_100034A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__CFString *sub_10001AA48(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v1 = @"WFSetupServerUserInteractionProgressEventChosePinPairingSetup";
  }

  else
  {
    v1 = @"WFSetupServerUserInteractionProgressEventBeganInteractingWithDevice";
  }

  v2 = v1;
LABEL_6:

  return v1;
}

__CFString *sub_10001AA9C(unint64_t a1)
{
  if (a1 <= 0xF)
  {
    v1 = off_100049FA0[a1];
    v2 = off_100049F20[a1];
  }

  return v1;
}

uint64_t sub_10001AAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  type metadata accessor for DeviceUnlockActionHandler();
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 64) = swift_allocObject();
  *(a3 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 72) = a1;
  *(a3 + 88) = &off_100049D80;
  swift_unknownObjectWeakAssign();
  return a3;
}

uint64_t sub_10001AB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_1000533B0, &unk_100034A88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001ABF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001AC34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100004790;

  return sub_100014060(a1, v4, v5, v6, v7);
}

unint64_t sub_10001ACF8()
{
  result = qword_100053408;
  if (!qword_100053408)
  {
    sub_100003C1C(255, &qword_100052420, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053408);
  }

  return result;
}

uint64_t sub_10001AD60()
{
  sub_1000042E4((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001ADA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001ADD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001AE1C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001AEF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001AF30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AFEC;

  return sub_1000117D8(a1, v4, v5, v6);
}

uint64_t *sub_10001B010()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    v14[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100004904((v1 + 3));
  v12 = v1[8];
  v11 = v1[9];

  return v1;
}

uint64_t sub_10001B1AC()
{
  sub_10001B010();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10001B204(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B29C, v4, v3);
}

uint64_t sub_10001B29C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v5 = *(v2 + 64);
  v4 = *(v2 + 72);
  v6 = type metadata accessor for AppleIDAccountRenewalUIProvider();
  swift_allocObject();

  v7 = sub_10002E1E8(v5, v4);
  v0[5] = v6;
  v0[6] = &off_10004AC78;
  v0[2] = v7;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v6;
  v3[4] = &off_10004AC78;
  *v3 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_10001B3A0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10001B204(a1);
}

void *sub_10001B448()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    v16[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100004904((v1 + 3));
  v12 = v1[8];
  v11 = v1[9];

  v13 = v1[10];

  v14 = v1[12];

  return v1;
}

uint64_t sub_10001B5F0()
{
  sub_10001B448();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_10001B648(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B6E0, v4, v3);
}

uint64_t sub_10001B6E0()
{
  v2 = v0[11];
  v1 = v0[12];
  v32 = v0[10];

  v3 = v2[8];
  v4 = v2[9];
  v5 = v2[10];
  _ = v2[11];
  v7 = v2[12];
  v6 = v2[13];
  v31 = type metadata accessor for ProgressUIProvider();
  v8 = swift_allocObject();
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v6;
  type metadata accessor for ProgressViewServiceUIViewController();
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = v3;
  swift_retain_n();
  v11 = v10;

  v12 = [v9 init];
  swift_weakAssign();
  v8[2] = v12;
  v13 = &v12[OBJC_IVAR____TtC21TDGSharingViewService35ProgressViewServiceUIViewController_actionHandler];
  v15 = *&v12[OBJC_IVAR____TtC21TDGSharingViewService35ProgressViewServiceUIViewController_actionHandler];
  v14 = *&v12[OBJC_IVAR____TtC21TDGSharingViewService35ProgressViewServiceUIViewController_actionHandler + 8];
  *v13 = v11;
  *(v13 + 1) = v4;
  v16 = v12;
  __8 = v11;

  v17 = v16;
  sub_10001BAB4(v15);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 mainBundle];
  v34._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = _;
  v22._object = v7;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v34);

  v24 = String._bridgeToObjectiveC()();

  [v19 setTitle:v24];

  [v19 setDismissalType:1];
  sub_100005EC8(v6);
  v25 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 startAnimating];

  v26 = v25;
  sub_10000510C(v26, 0, 0, 0, 6u);

  v0[5] = v31;
  v0[6] = &off_10004AB38;
  v0[2] = v8;
  swift_beginAccess();

  sub_100004894((v0 + 2), (v2 + 3));
  swift_endAccess();
  v32[3] = v31;
  v32[4] = &off_10004AB38;
  *v32 = v8;
  v27 = v0[1];

  return v27();
}

uint64_t sub_10001BA18(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10001B648(a1);
}

void *sub_10001BAB4(void *result)
{
  if (result)
  {
  }

  return result;
}