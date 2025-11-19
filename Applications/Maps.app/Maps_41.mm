void *sub_10049B61C(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10049B738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101922F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049B7E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10056DDF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10049F674(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10049B85C()
{
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10049B8D0()
{
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

void *sub_10049B968()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v0[2] = _swiftEmptyArrayStorage;
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  sub_100024578();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D50;
  *(v6 + 32) = type metadata accessor for FavoriteItem();
  *(v6 + 40) = type metadata accessor for CollectionPlaceItem();
  *(v6 + 48) = type metadata accessor for Collection();
  *(v6 + 56) = type metadata accessor for CachedCuratedCollection();
  *(v6 + 64) = type metadata accessor for UserRoute();
  *(v6 + 72) = type metadata accessor for CuratedCollection();
  v1[5] = v6;
  ObservationRegistrar.init()();
  type metadata accessor for MapsSyncStore();
  v7 = static MapsSyncStore.sharedStore.getter();

  dispatch thunk of MapsSyncStore.subscribe(_:)();

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v2;

  sub_10020AAE4(0, 0, v5, &unk_10120A1A8, v9);

  return v1;
}

uint64_t LibraryRecentsDataProvider.storeSubscriptionTypes.setter()
{
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

Swift::Void __swiftcall LibraryRecentsDataProvider.storeDidChange(_:)(Swift::OpaquePointer a1)
{
  v2 = *v1;
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = v2;

  sub_10020AAE4(0, 0, v5, &unk_10120A0C0, v7);
}

uint64_t LibraryRecentsDataProvider.deinit()
{
  v1 = v0;
  type metadata accessor for MapsSyncStore();
  v2 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  sub_1000A09E0(v1 + 24);

  v3 = OBJC_IVAR____TtC4Maps26LibraryRecentsDataProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t LibraryRecentsDataProvider.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for MapsSyncStore();
  v2 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  sub_1000A09E0(v1 + 24);

  v3 = OBJC_IVAR____TtC4Maps26LibraryRecentsDataProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10049BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1000CE6B8(&qword_10190EBD0);
  *(v4 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_10049BF54, 0, 0);
}

uint64_t sub_10049BF54()
{
  v0[5] = type metadata accessor for MapsSyncQueryPredicate();
  v0[6] = sub_1000CE6B8(&unk_10190D5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  *(v1 + 56) = &type metadata for Int16;
  *(v1 + 64) = &protocol witness table for Int16;
  *(v1 + 32) = 6;
  static MapsSyncQueryPredicate.withFormat(_:_:)();

  v0[7] = sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E47B0;
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  v6 = type metadata accessor for MapsSyncRange();
  v0[8] = v6;
  v7 = objc_allocWithZone(v6);
  MapsSyncRange.init(offset:limit:)();
  Options = type metadata accessor for MapsSyncQueryOptions();
  v0[9] = Options;
  v9 = objc_allocWithZone(Options);
  v10 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[10] = v10;
  type metadata accessor for CollectionPlaceItemRequest();
  v0[11] = CollectionPlaceItemRequest.__allocating_init()();
  v14 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
  v11 = v10;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_10049C18C;

  return v14(v10);
}

uint64_t sub_10049C18C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_10049E484;
  }

  else
  {
    v5 = *(v3 + 88);

    v4 = sub_10049C2AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10049C2AC()
{
  if (v0[13] >> 62)
  {

    sub_1000CE6B8(&qword_101915298);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v1 = v0[13];
  }

  v0[15] = v1;
  v3 = v0[8];
  v2 = v0[9];

  static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E47B0;
  v5 = objc_allocWithZone(NSSortDescriptor);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithKey:v6 ascending:0];

  *(v4 + 32) = v7;
  v8 = objc_allocWithZone(v3);
  MapsSyncRange.init(offset:limit:)();
  v9 = objc_allocWithZone(v2);
  v10 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[16] = v10;
  type metadata accessor for FavoriteItemRequest();
  v0[17] = FavoriteItemRequest.__allocating_init()();
  v14 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
  v11 = v10;
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_10049C4CC;

  return v14(v10);
}

uint64_t sub_10049C4CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10049E63C, 0, 0);
  }

  else
  {
    v6 = *(v4 + 136);

    v7 = swift_task_alloc();
    *(v4 + 168) = v7;
    *v7 = v5;
    v7[1] = sub_10049C674;

    return sub_1004C6304(a1);
  }
}

uint64_t sub_10049C674(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_10049CBA8;
  }

  else
  {

    v4 = sub_10049C790;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10049C790()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  v0[24] = v2;
  *(v2 + 16) = xmmword_1011E47B0;
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(v1);
  v7 = MapsSyncRange.init(offset:limit:)();
  v0[25] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E1D30;
  v9 = objc_allocWithZone(NSUUID);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithUUIDString:v10];

  if (v11)
  {
    v12 = v0[9];
    *(v8 + 56) = sub_100014C84(0, &qword_101922DA0);
    *(v8 + 64) = sub_1002592A8();
    *(v8 + 32) = v11;
    v13 = static MapsSyncQueryPredicate.withFormat(_:_:)();
    v0[26] = v13;

    v14 = objc_allocWithZone(v12);
    v15 = v7;
    v16 = v13;

    v17 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v0[27] = v17;
    type metadata accessor for CollectionRequest();
    v0[28] = CollectionRequest.__allocating_init()();
    v20 = (&async function pointer to dispatch thunk of CollectionRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionRequest.fetch(options:));
    v18 = v17;
    v19 = swift_task_alloc();
    v0[29] = v19;
    *v19 = v0;
    v19[1] = sub_10049CA1C;

    v20(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10049CA1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = v4[25];

    v8 = sub_10049E808;
  }

  else
  {

    v8 = sub_10049CD70;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10049CBA8()
{
  v1 = v0[16];
  v2 = v0[10];

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FF58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Library Home: Error Fetching Recets: %@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10049CD70()
{
  if (v0[30] >> 62)
  {

    sub_1000CE6B8(&qword_101915298);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v1 = v0[30];
  }

  v0[32] = v1;
  v2 = v0[25];
  v3 = v0[9];

  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[33] = v6;
  type metadata accessor for CuratedCollectionRequest();
  v0[34] = CuratedCollectionRequest.__allocating_init()();
  v7 = v6;
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_10049CEE0;

  return sub_1004A086C(v6);
}

uint64_t sub_10049CEE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  v5 = v3[34];
  v6 = v3[33];
  if (v1)
  {
    v7 = v4[25];

    v8 = sub_10049D820;
  }

  else
  {

    v8 = sub_10049D070;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10049D070()
{
  v52 = v0;
  if (*(v0 + 288) >> 62)
  {
LABEL_28:

    sub_1000CE6B8(&qword_101915298);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v1 = *(v0 + 288);
  }

  *(v0 + 304) = v1;

  if (MapsFeature_IsEnabled_HikingiOS())
  {
    v2 = *(v0 + 72);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1011E47B0;
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithKey:v5 ascending:0];

    *(v3 + 32) = v6;
    v7 = objc_allocWithZone(v2);
    v8 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    *(v0 + 312) = v8;
    type metadata accessor for UserRouteRequest();
    *(v0 + 320) = UserRouteRequest.__allocating_init()();
    v49 = (&async function pointer to dispatch thunk of UserRouteRequest.fetch(options:) + async function pointer to dispatch thunk of UserRouteRequest.fetch(options:));
    v9 = v8;
    v10 = swift_task_alloc();
    *(v0 + 328) = v10;
    *v10 = v0;
    v10[1] = sub_10049D9F4;

    return v49(v8);
  }

  v50 = *(v0 + 296);
  *(v0 + 352) = _swiftEmptyArrayStorage;
  if (*(v0 + 176) >> 62)
  {

    sub_1000CE6B8(&qword_101915298);
    v12 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v12 = *(v0 + 176);
  }

  v13 = *(v0 + 304);
  v14 = *(v0 + 256);
  v15 = *(v0 + 120);

  sub_1002478CC(v12);
  sub_1002478CC(v14);
  sub_1002478CC(v13);

  sub_1002478CC(v16);
  v17 = v15;
  v51 = _swiftEmptyArrayStorage;
  if (v15 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_31;
    }
  }

  v19 = 0;
  do
  {
    v20 = v19;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v21 = *(v17 + 8 * v20 + 32);
        swift_unknownObjectRetain();
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v22 = [v21 createTime];
      v23 = *(v0 + 32);
      if (v22)
      {
        break;
      }

      swift_unknownObjectRelease();
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
      sub_100024F64(v23, &qword_10190EBD0);
      ++v20;
      if (v19 == v18)
      {
        goto LABEL_31;
      }
    }

    v25 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
    sub_100024F64(v23, &qword_10190EBD0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v19 != v18);
LABEL_31:

  v51 = sub_1002EEFEC(v27);
  v28 = v50;
  sub_10049B7E0(&v51);
  *(v0 + 360) = v50;
  if (!v50)
  {

    v29 = v51;
    v30 = v51 < 0 || (v51 & 0x4000000000000000) != 0;
    if (v30)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (v45 < 0)
      {
        __break(1u);
        return _swift_task_switch(v45, v46, v47);
      }

      if (v17 >= 0xF)
      {
        v48 = 15;
      }

      else
      {
        v48 = v17;
      }

      if (v17 >= 0)
      {
        v32 = v48;
      }

      else
      {
        v32 = 15;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v32)
      {
LABEL_43:
        if ((v29 & 0xC000000000000001) != 0)
        {

          if (v32)
          {
            for (i = 0; i != v32; ++i)
            {
              sub_1000CE6B8(&qword_101915298);
              _ArrayBuffer._typeCheckSlowPath(_:)(i);
            }
          }
        }

        else
        {
        }

        if (v30)
        {
          v34 = _CocoaArrayWrapper.subscript.getter();
          v28 = v35;
          v17 = v36;
          v32 = v37;

          v29 = v34;
          if (v32)
          {
LABEL_54:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v40 = swift_dynamicCastClass();
            if (!v40)
            {
              swift_unknownObjectRelease();
              v40 = _swiftEmptyArrayStorage;
            }

            v41 = v40[2];

            if (!__OFSUB__(v32 >> 1, v17))
            {
              if (v41 == (v32 >> 1) - v17)
              {
                v39 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v39)
                {
                  goto LABEL_61;
                }

                v39 = _swiftEmptyArrayStorage;
LABEL_60:
                swift_unknownObjectRelease();
LABEL_61:
                *(v0 + 368) = v39;
                swift_weakInit();
                type metadata accessor for MainActor();
                *(v0 + 376) = static MainActor.shared.getter();
                v42 = dispatch thunk of Actor.unownedExecutor.getter();
                v44 = v43;
                v45 = sub_10049E31C;
                v46 = v42;
                v47 = v44;

                return _swift_task_switch(v45, v46, v47);
              }

              goto LABEL_74;
            }

LABEL_73:
            __break(1u);
LABEL_74:
            swift_unknownObjectRelease_n();
          }
        }

        else
        {
          v17 = 0;
          v28 = v29 + 32;
          v32 = (2 * v32) | 1;
          if (v32)
          {
            goto LABEL_54;
          }
        }

        sub_1004163E0(v29, v28, v17, v32);
        v39 = v38;
        goto LABEL_60;
      }
    }

    else
    {
      v31 = *(v51 + 16);
      if (v31 >= 0xF)
      {
        v32 = 15;
      }

      else
      {
        v32 = *(v51 + 16);
      }

      if (v31 >= v32)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_73;
  }
}

uint64_t sub_10049D820()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_10195FF58);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Library Home: Error Fetching Recets: %@", v9, 0xCu);
    sub_100024F64(v10, &qword_1019144F0);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10049D9F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v5 = *(v3 + 320);

  if (v1)
  {

    v6 = sub_10049E9D4;
  }

  else
  {
    v6 = sub_10049DB88;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10049DB88()
{
  v57 = v0;
  v1 = v0[42];
  v56[0] = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_43;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v1;
  while (v2)
  {
    v4 = 0;
    v0 = (v1 & 0xC000000000000001);
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v3 + 32;
    while (1)
    {
      if (v0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_40;
        }

        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [objc_opt_self() routeDataForMapsSyncUserRoute:v7];
      if (v10 && (v1 = v10, v11 = [v10 isAvailableForCurrentCountry], v1, (v11 & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v56;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v9 == v2)
      {
        v0 = v55;
        v12 = v56[0];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v0[42];
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_17:

  v13 = v0[39];
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    sub_1000CE6B8(&qword_101915298);
    v53 = _bridgeCocoaArray<A>(_:)();

    v12 = v53;
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v14 = v0[43];
  v0[44] = v12;
  v55 = v14;
  if (v0[22] >> 62)
  {

    sub_1000CE6B8(&qword_101915298);
    v15 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v15 = v0[22];
  }

  v16 = v0[38];
  v17 = v0[32];
  v18 = v0[15];

  v56[0] = v18;
  sub_1002478CC(v15);
  sub_1002478CC(v17);
  sub_1002478CC(v16);

  sub_1002478CC(v19);
  v20 = v56[0];
  v56[0] = _swiftEmptyArrayStorage;
  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v0;
    if (!v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v0;
    if (!v21)
    {
      goto LABEL_46;
    }
  }

  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v23 = v0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v0 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v24 = *(v20 + 8 * v23 + 32);
        swift_unknownObjectRetain();
        v0 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_41;
        }
      }

      v25 = [v24 createTime];
      v26 = v22[4];
      if (v25)
      {
        break;
      }

      swift_unknownObjectRelease();
      v27 = type metadata accessor for Date();
      (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
      sub_100024F64(v26, &qword_10190EBD0);
      ++v23;
      if (v0 == v21)
      {
        goto LABEL_46;
      }
    }

    v28 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 56))(v26, 0, 1, v29);
    sub_100024F64(v26, &qword_10190EBD0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v56[0];
  }

  while (v0 != v21);
LABEL_46:

  v56[0] = sub_1002EEFEC(v30);
  v31 = v55;
  sub_10049B7E0(v56);
  v22[45] = v55;
  if (!v55)
  {
    v33 = v22;

    v34 = v56[0];
    v35 = v56[0] < 0 || (v56[0] & 0x4000000000000000) != 0;
    if (v35)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v50 = _CocoaArrayWrapper.endIndex.getter();
      if (v50 < 0)
      {
        __break(1u);
        return _swift_task_switch(v50, v51, v52);
      }

      if (v20 >= 0xF)
      {
        v54 = 15;
      }

      else
      {
        v54 = v20;
      }

      if (v20 >= 0)
      {
        v37 = v54;
      }

      else
      {
        v37 = 15;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v37)
      {
LABEL_58:
        if ((v34 & 0xC000000000000001) != 0)
        {

          if (v37)
          {
            for (i = 0; i != v37; ++i)
            {
              sub_1000CE6B8(&qword_101915298);
              _ArrayBuffer._typeCheckSlowPath(_:)(i);
            }
          }
        }

        else
        {
        }

        if (v35)
        {
          v39 = _CocoaArrayWrapper.subscript.getter();
          v31 = v40;
          v20 = v41;
          v37 = v42;

          v34 = v39;
          if (v37)
          {
LABEL_69:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v45 = swift_dynamicCastClass();
            if (!v45)
            {
              swift_unknownObjectRelease();
              v45 = _swiftEmptyArrayStorage;
            }

            v46 = v45[2];

            if (!__OFSUB__(v37 >> 1, v20))
            {
              if (v46 == (v37 >> 1) - v20)
              {
                v44 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v44)
                {
                  goto LABEL_76;
                }

                v44 = _swiftEmptyArrayStorage;
LABEL_75:
                swift_unknownObjectRelease();
LABEL_76:
                v33[46] = v44;
                swift_weakInit();
                type metadata accessor for MainActor();
                v33[47] = static MainActor.shared.getter();
                v47 = dispatch thunk of Actor.unownedExecutor.getter();
                v49 = v48;
                v50 = sub_10049E31C;
                v51 = v47;
                v52 = v49;

                return _swift_task_switch(v50, v51, v52);
              }

              goto LABEL_90;
            }

LABEL_89:
            __break(1u);
LABEL_90:
            swift_unknownObjectRelease_n();
          }
        }

        else
        {
          v20 = 0;
          v31 = v34 + 32;
          v37 = (2 * v37) | 1;
          if (v37)
          {
            goto LABEL_69;
          }
        }

        sub_1004163E0(v34, v31, v20, v37);
        v44 = v43;
        goto LABEL_75;
      }
    }

    else
    {
      v36 = *(v56[0] + 16);
      if (v36 >= 0xF)
      {
        v37 = 15;
      }

      else
      {
        v37 = *(v56[0] + 16);
      }

      if (v36 >= v37)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_89;
  }
}

uint64_t sub_10049E31C()
{
  v1 = *(v0 + 360);

  sub_10049EBB0();
  if (v1)
  {
  }

  else
  {
    swift_weakDestroy();

    return _swift_task_switch(sub_10049E3E8, 0, 0);
  }
}

uint64_t sub_10049E3E8()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 128);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10049E484()
{
  v1 = v0[10];
  v2 = v0[11];

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FF58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Library Home: Error Fetching Recets: %@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10049E63C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[10];

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_10195FF58);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Library Home: Error Fetching Recets: %@", v7, 0xCu);
    sub_100024F64(v8, &qword_1019144F0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10049E808()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_10195FF58);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Library Home: Error Fetching Recets: %@", v8, 0xCu);
    sub_100024F64(v9, &qword_1019144F0);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10049E9D4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 128);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100021540(v7, qword_10195FF58);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Library Home: Error Fetching Recets: %@", v10, 0xCu);
    sub_100024F64(v11, &qword_1019144F0);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10049EBB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100131CA8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t LibraryRecentsDataProvider.storeSubscriptionTypes.getter()
{
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10049EF7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_10049F00C()
{
  swift_getKeyPath();
  sub_100131CA8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10049F0A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t type metadata accessor for LibraryRecentsDataProvider()
{
  result = qword_101923060;
  if (!qword_101923060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10049F178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_10049BEB8(a1, v4, v5, v6);
}

void (*LibraryRecentsDataProvider.storeSubscriptionTypes.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC4Maps26LibraryRecentsDataProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100131CA8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10049F348;
}

void sub_10049F348(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_10049F508()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10049F5B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10049BEB8(a1, v4, v5, v6);
}

void sub_10049F674(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000CE6B8(&qword_101915298);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10049F9D0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10049F784(0, v2, 1, a1);
  }
}

void sub_10049F784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for Date();
  __chkstk_darwin(v36);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v34 = (v10 + 8);
    v37 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v37 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 createTime];
      if (!v19)
      {
        break;
      }

      v20 = v19;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = [v18 createTime];
      if (!v21)
      {
        goto LABEL_13;
      }

      v22 = v21;
      v23 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = static Date.> infix(_:_:)();
      v24 = v17;
      v25 = *v34;
      v26 = v23;
      v27 = v36;
      (*v34)(v26, v36);
      v25(v12, v27);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v38)
      {
        if (!v37)
        {
          goto LABEL_14;
        }

        v28 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v28;
        v14 -= 8;
        ++v17;
        if (v24 != -1)
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v14 = v32 + 8;
      v15 = v31 - 1;
      if (v33 + 1 == v30)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_10049F9D0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v135 = a1;
  v147 = type metadata accessor for Date();
  __chkstk_darwin(v147);
  v144 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v129 - v9;
  __chkstk_darwin(v11);
  v138 = &v129 - v12;
  __chkstk_darwin(v13);
  v139 = &v129 - v14;
  __chkstk_darwin(v15);
  v130 = &v129 - v16;
  __chkstk_darwin(v17);
  v131 = &v129 - v19;
  v142 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v21 = 0;
    v146 = (v18 + 8);
    v22 = _swiftEmptyArrayStorage;
    v23 = &selRef_connectedCarMainScreenInfo;
    v134 = a4;
    v148 = v10;
    while (1)
    {
      v24 = v21++;
      if (v21 < v20)
      {
        v141 = v20;
        v133 = v22;
        v25 = *v142;
        v26 = *(*v142 + 8 * v21);
        v27 = *(*v142 + 8 * v24);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v28 = [v26 v23[414]];
        if (!v28)
        {
          goto LABEL_139;
        }

        v29 = v28;
        v137 = v25;
        v30 = v131;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = [v27 v23[414]];
        if (!v31)
        {
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v32 = v31;
        v33 = v130;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v145) = static Date.> infix(_:_:)();
        v4 = v146;
        v34 = *v146;
        v35 = v33;
        v36 = v30;
        v37 = v147;
        (*v146)(v35, v147);
        v140 = v34;
        v34(v36, v37);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v38 = v24 + 2;
        v132 = v24;
        v136 = 8 * v24;
        v39 = (v137 + 8 * v24 + 16);
        while (1)
        {
          v21 = v141;
          if (v141 == v38)
          {
            break;
          }

          v40 = *(v39 - 1);
          v41 = *v39;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v42 = [v41 v23[414]];
          if (!v42)
          {
            goto LABEL_134;
          }

          v43 = v42;
          v44 = v139;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v45 = [v40 v23[414]];
          if (!v45)
          {
            goto LABEL_133;
          }

          v46 = v45;
          v47 = v138;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LODWORD(v46) = static Date.> infix(_:_:)() & 1;
          v48 = v47;
          v49 = v44;
          v50 = v147;
          v4 = v140;
          v140(v48, v147);
          (v4)(v49, v50);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          ++v38;
          ++v39;
          v10 = v148;
          v23 = &selRef_connectedCarMainScreenInfo;
          if ((v145 & 1) != v46)
          {
            v21 = v38 - 1;
            break;
          }
        }

        v24 = v132;
        v22 = v133;
        v51 = v136;
        if (v145)
        {
          if (v21 < v132)
          {
            goto LABEL_126;
          }

          if (v132 < v21)
          {
            v52 = 8 * v21 - 8;
            v53 = v21;
            v54 = v132;
            do
            {
              if (v54 != --v53)
              {
                v55 = *v142;
                if (!*v142)
                {
                  goto LABEL_136;
                }

                v56 = *(v55 + v51);
                *(v55 + v51) = *(v55 + v52);
                *(v55 + v52) = v56;
              }

              ++v54;
              v52 -= 8;
              v51 += 8;
            }

            while (v54 < v53);
          }
        }

        a4 = v134;
      }

      v57 = v142[1];
      if (v21 < v57)
      {
        if (__OFSUB__(v21, v24))
        {
          goto LABEL_125;
        }

        if (v21 - v24 < a4)
        {
          v58 = v24 + a4;
          if (__OFADD__(v24, a4))
          {
            goto LABEL_127;
          }

          if (v58 >= v57)
          {
            v58 = v142[1];
          }

          if (v58 < v24)
          {
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          if (v21 != v58)
          {
            v132 = v24;
            v133 = v22;
            v145 = *v142;
            v59 = v145 + 8 * v21 - 8;
            v60 = v24 - v21;
            v136 = v58;
            do
            {
              v140 = v59;
              v141 = v21;
              v4 = *(v145 + 8 * v21);
              v137 = v60;
              v61 = v59;
              while (1)
              {
                v62 = *v61;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v63 = [v4 v23[414]];
                if (!v63)
                {
                  goto LABEL_131;
                }

                v64 = v63;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v65 = [v62 v23[414]];
                if (!v65)
                {
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
LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
LABEL_139:
                  __break(1u);
                  goto LABEL_140;
                }

                v66 = v65;
                v67 = v144;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                LOBYTE(v66) = static Date.> infix(_:_:)();
                v68 = v10;
                v69 = *v146;
                v70 = v67;
                v71 = v147;
                (*v146)(v70, v147);
                v69(v68, v71);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if ((v66 & 1) == 0)
                {
                  break;
                }

                if (!v145)
                {
                  goto LABEL_132;
                }

                v72 = *v61;
                v4 = *(v61 + 8);
                *v61 = v4;
                *(v61 + 8) = v72;
                v61 -= 8;
                v73 = __CFADD__(v60++, 1);
                v10 = v148;
                v23 = &selRef_connectedCarMainScreenInfo;
                if (v73)
                {
                  goto LABEL_32;
                }
              }

              v10 = v148;
              v23 = &selRef_connectedCarMainScreenInfo;
LABEL_32:
              v21 = v141 + 1;
              v59 = v140 + 8;
              v60 = v137 - 1;
            }

            while (v141 + 1 != v136);
            v21 = v136;
            v24 = v132;
            v22 = v133;
          }
        }
      }

      if (v21 < v24)
      {
        goto LABEL_124;
      }

      v74 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v74;
      }

      else
      {
        v22 = sub_100097874(0, *(v74 + 2) + 1, 1, v74);
      }

      v76 = *(v22 + 2);
      v75 = *(v22 + 3);
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v22 = sub_100097874((v75 > 1), v76 + 1, 1, v22);
      }

      *(v22 + 2) = v77;
      v78 = &v22[16 * v76];
      *(v78 + 4) = v24;
      *(v78 + 5) = v21;
      v79 = *v135;
      if (!*v135)
      {
        goto LABEL_138;
      }

      if (v76)
      {
        while (1)
        {
          v4 = v77 - 1;
          if (v77 >= 4)
          {
            break;
          }

          if (v77 == 3)
          {
            v80 = *(v22 + 4);
            v81 = *(v22 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_62:
            if (v83)
            {
              goto LABEL_113;
            }

            v96 = &v22[16 * v77];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_116;
            }

            v102 = &v22[16 * v4 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_120;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v4 = v77 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v106 = &v22[16 * v77];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_76:
          if (v101)
          {
            goto LABEL_115;
          }

          v109 = &v22[16 * v4];
          v111 = *(v109 + 4);
          v110 = *(v109 + 5);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_118;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_83:
          v117 = v4 - 1;
          if (v4 - 1 >= v77)
          {
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
            goto LABEL_128;
          }

          if (!*v142)
          {
            goto LABEL_135;
          }

          v118 = v22;
          v119 = *&v22[16 * v117 + 32];
          v24 = *&v22[16 * v4 + 40];
          v120 = v143;
          sub_1004A0350((*v142 + 8 * v119), (*v142 + 8 * *&v22[16 * v4 + 32]), (*v142 + 8 * v24), v79);
          v143 = v120;
          if (v120)
          {
            goto LABEL_107;
          }

          if (v24 < v119)
          {
            goto LABEL_109;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v121 = v118;
          }

          else
          {
            v121 = sub_10056D550(v118);
          }

          v10 = v148;
          if (v117 >= *(v121 + 2))
          {
            goto LABEL_110;
          }

          v122 = &v121[16 * v117];
          *(v122 + 4) = v119;
          *(v122 + 5) = v24;
          v149 = v121;
          sub_10056D4C4(v4);
          v22 = v149;
          v77 = *(v149 + 2);
          if (v77 <= 1)
          {
            goto LABEL_3;
          }
        }

        v84 = &v22[16 * v77 + 32];
        v85 = *(v84 - 64);
        v86 = *(v84 - 56);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_111;
        }

        v89 = *(v84 - 48);
        v88 = *(v84 - 40);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_112;
        }

        v91 = &v22[16 * v77];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_114;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_117;
        }

        if (v95 >= v87)
        {
          v113 = &v22[16 * v4 + 32];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_121;
          }

          if (v82 < v116)
          {
            v4 = v77 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v20 = v142[1];
      a4 = v134;
      if (v21 >= v20)
      {
        goto LABEL_96;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_96:
  v4 = *v135;
  if (*v135)
  {
    v21 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v143;
    if (isUniquelyReferenced_nonNull_native)
    {
      v124 = v21;
    }

    else
    {
LABEL_129:
      v124 = sub_10056D550(v21);
    }

    v149 = v124;
    v21 = *(v124 + 2);
    if (v21 >= 2)
    {
      while (*v142)
      {
        v125 = *&v124[16 * v21];
        v126 = v124;
        v127 = *&v124[16 * v21 + 24];
        sub_1004A0350((*v142 + 8 * v125), (*v142 + 8 * *&v124[16 * v21 + 16]), (*v142 + 8 * v127), v4);
        if (v24)
        {
          goto LABEL_107;
        }

        if (v127 < v125)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_10056D550(v126);
        }

        if ((v21 - 2) >= *(v126 + 2))
        {
          goto LABEL_123;
        }

        v128 = &v126[16 * v21];
        *v128 = v125;
        *(v128 + 1) = v127;
        v149 = v126;
        sub_10056D4C4(v21 - 1);
        v124 = v149;
        v21 = *(v149 + 2);
        if (v21 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_137;
    }

LABEL_107:
  }

  else
  {
LABEL_141:
    __break(1u);
  }
}

uint64_t sub_1004A0350(void **a1, void **a2, void **a3, void **a4)
{
  v62 = type metadata accessor for Date();
  v8 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = (&v55 - v11);
  __chkstk_darwin(v12);
  v58 = &v55 - v13;
  __chkstk_darwin(v14);
  v60 = (&v55 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 < v18 >> 3)
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      v20 = v17;
      memmove(a4, a1, 8 * v17);
      v17 = v20;
    }

    v64 = &a4[v17];
    v21 = v60;
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v59 = (v8 + 8);
      v22 = &selRef_connectedCarMainScreenInfo;
      v63 = a3;
      v23 = (v8 + 8);
      while (1)
      {
        v24 = *a2;
        v61 = a4;
        v25 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        result = [v24 v22[414]];
        if (!result)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v27 = result;
        v28 = a1;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        result = [v25 v22[414]];
        if (!result)
        {
          goto LABEL_47;
        }

        v29 = result;
        v30 = v58;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v29) = static Date.> infix(_:_:)();
        v31 = v21;
        v32 = *v23;
        v33 = v30;
        v34 = v62;
        (*v23)(v33, v62);
        v32(v31, v34);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v29 & 1) == 0)
        {
          break;
        }

        v35 = a2;
        v36 = v28;
        v37 = v28 == a2++;
        a4 = v61;
        if (!v37)
        {
          goto LABEL_19;
        }

LABEL_20:
        a1 = v36 + 1;
        v21 = v60;
        v22 = &selRef_connectedCarMainScreenInfo;
        if (a4 >= v64 || a2 >= v63)
        {
          goto LABEL_22;
        }
      }

      v35 = v61;
      a4 = v61 + 1;
      v36 = v28;
      if (v28 == v61)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v36 = *v35;
      goto LABEL_20;
    }

LABEL_22:
    a2 = a1;
    goto LABEL_42;
  }

  if (a4 != a2 || &a2[v19] <= a4)
  {
    memmove(a4, a2, 8 * v19);
  }

  v64 = &a4[v19];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_42:
    if (a2 != a4 || a2 >= (a4 + ((v64 - a4 + (v64 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v64 - a4));
    }

    return 1;
  }

  v58 = (v8 + 8);
  v38 = &selRef_connectedCarMainScreenInfo;
  v56 = a1;
LABEL_29:
  v57 = a2;
  v39 = a2 - 1;
  v40 = a3 - 1;
  v41 = v64;
  v60 = a2 - 1;
  while (1)
  {
    v63 = v40;
    v42 = *--v41;
    v43 = *v39;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    result = [v42 v38[414]];
    if (!result)
    {
      goto LABEL_48;
    }

    v44 = result;
    v45 = a4;
    v46 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = [v43 v38[414]];
    if (!result)
    {
      break;
    }

    v47 = result;
    v48 = v59;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v47) = static Date.> infix(_:_:)();
    v49 = *v58;
    v50 = v48;
    v51 = v62;
    (*v58)(v50, v62);
    v49(v46, v51);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v47)
    {
      a3 = v63;
      v53 = v56;
      a4 = v45;
      v54 = v60;
      if (v63 + 1 != v57)
      {
        *v63 = *v60;
      }

      v38 = &selRef_connectedCarMainScreenInfo;
      if (v64 <= v45 || (a2 = v54, v54 <= v53))
      {
        a2 = v54;
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    v52 = v63;
    a4 = v45;
    if (v63 + 1 != v64)
    {
      *v63 = *v41;
    }

    v40 = v52 - 1;
    v64 = v41;
    v38 = &selRef_connectedCarMainScreenInfo;
    v39 = v60;
    if (v41 <= v45)
    {
      v64 = v41;
      a2 = v57;
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1004A086C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000CE6B8(&qword_10190EBD0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1004A0908, 0, 0);
}

uint64_t sub_1004A0908()
{
  type metadata accessor for CuratedCollectionRequest();
  v0[4] = CuratedCollectionRequest.__allocating_init()();
  v4 = (&async function pointer to dispatch thunk of CuratedCollectionRequest.fetch(options:) + async function pointer to dispatch thunk of CuratedCollectionRequest.fetch(options:));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1004A09C8;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1004A09C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1004A1198;
  }

  else
  {

    v4 = sub_1004A0AE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004A0AE4()
{
  v22 = v0;
  v1 = v0[6];
  v21 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (v0[8] = v2; v2; v0[8] = v2)
  {
    v3 = 0;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = v1 & 0xC000000000000001;
    v17 = v0[6] + 32;
    while (1)
    {
      if (v19)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v18 + 16))
        {
          goto LABEL_14;
        }

        v4 = *(v17 + 8 * v3);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      type metadata accessor for MapsSyncQueryPredicate();
      sub_1000CE6B8(&unk_101916430);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1011E1D60;
      v8 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:dispatch thunk of CuratedCollection.curatedCollectionIdentifier.getter()];
      v0 = sub_100014C84(0, &qword_101909920);
      *(v7 + 56) = v0;
      *(v7 + 32) = v8;
      v9 = [objc_allocWithZone(NSNumber) initWithInt:dispatch thunk of CuratedCollection.resultProviderIdentifier.getter()];
      *(v7 + 88) = v0;
      *(v7 + 64) = v9;
      static MapsSyncQueryPredicate.queryPredicate(format:argumentArray:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v0 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v1 = &v21;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
      if (v6 == v2)
      {
        v0 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_16:
  v10 = objc_allocWithZone(type metadata accessor for MapsSyncQueryPredicate());
  MapsSyncQueryPredicate.init(or:)();
  v11 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v12 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[9] = v12;
  type metadata accessor for CachedCuratedCollectionRequest();
  v0[10] = CachedCuratedCollectionRequest.__allocating_init()();
  v20 = (&async function pointer to dispatch thunk of CachedCuratedCollectionRequest.fetch(options:) + async function pointer to dispatch thunk of CachedCuratedCollectionRequest.fetch(options:));
  v13 = v12;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1004A0E28;

  return v20(v12);
}

uint64_t sub_1004A0E28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1004A1204;
  }

  else
  {
    v5 = *(v3 + 80);

    v4 = sub_1004A0F48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004A0F48()
{
  if (v0[8])
  {
    v1 = v0[12];
    if (v1 >> 62)
    {
      goto LABEL_36;
    }

    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[12];
LABEL_4:
    v4 = 0;
    v5 = v0[6];
    v25 = v5 & 0xFFFFFFFFFFFFFF8;
    v26 = v5 & 0xC000000000000001;
    v24 = v5 + 32;
    v6 = v1 & 0xC000000000000001;
    v7 = v3 + 32;
    while (1)
    {
      if (v26)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          goto LABEL_35;
        }

        v11 = *(v24 + 8 * v4);
      }

      v12 = v11;
      if (__OFADD__(v4++, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v27 = v1 & 0xFFFFFFFFFFFFFF8;
        v2 = _CocoaArrayWrapper.endIndex.getter();
        v3 = v0[12];
        goto LABEL_4;
      }

      if (!v2)
      {
        goto LABEL_8;
      }

      v14 = 0;
      while (1)
      {
        if (v6)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v27 + 16))
          {
            goto LABEL_33;
          }

          v15 = *(v7 + 8 * v14);
        }

        v16 = v15;
        v17 = dispatch thunk of CachedCuratedCollection.curatedCollectionIdentifier.getter();
        v1 = v12;
        if (v17 == dispatch thunk of CuratedCollection.curatedCollectionIdentifier.getter())
        {
          break;
        }

        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_26:
        ++v14;
        if (v19 == v2)
        {
          goto LABEL_8;
        }
      }

      v18 = dispatch thunk of CachedCuratedCollection.resultProviderIdentifier.getter();
      v1 = dispatch thunk of CuratedCollection.resultProviderIdentifier.getter();

      if (v18 != v1)
      {
        break;
      }

      if (v6)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v7 + 8 * v14);
      }

      v9 = v8;
      v10 = v12;
      dispatch thunk of MapsSyncObject.createTime.getter();

      dispatch thunk of MapsSyncObject.createTime.setter();
LABEL_8:
      v1 = v0[8];

      if (v4 == v1)
      {
        goto LABEL_29;
      }
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_29:
  v20 = v0[9];

  v21 = v0[1];
  v22 = v0[12];

  return v21(v22);
}

uint64_t sub_1004A1198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004A1204()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1004A1384()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v26 = _swiftEmptyArrayStorage;
  v5 = *&v0[OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_categories];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v7;
    v15 = v0;
    static Published.subscript.setter();
    return;
  }

  if (v6 >= 1)
  {
    v17 = v0;
    v19 = v5 & 0xC000000000000001;

    v8 = 0;
    v18 = v6;
    do
    {
      if (v19)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v24 = &type metadata for BrowseCategoryImageProvider;
      v25 = sub_1004A3818();
      v23 = v10;
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v11 = v10;
      v12 = [v11 name];
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = v18;
      }

      v14 = type metadata accessor for BottomAccessoryViewModel();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      UUID.init()();
      type metadata accessor for ListCellViewModel();
      swift_allocObject();
      ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v18;
      }

      ++v8;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v6 != v8);
    v7 = v26;

    v0 = v17;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1004A1780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004A1874()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004A1958@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1004A19D8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1004A1A70@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CarSearchCategoriesCardViewController();
  sub_1004A38B8(&qword_101923150, type metadata accessor for CarSearchCategoriesCardViewController);
  v7 = v1;
  v8 = ObservedObject.init(wrappedValue:)();
  v10 = v9;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v14[0] = v8;
  *(&v14[0] + 1) = v10;
  *v6 = 0xD000000000000017;
  v6[1] = 0x800000010120A240;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v3);
  a1[3] = sub_1000CE6B8(&qword_101923158);
  v11 = sub_1000D6664(&qword_101923160);
  v12 = sub_1004A24B8();
  *&v15[0] = v11;
  *(&v15[0] + 1) = v12;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v3);
  v15[4] = v14[4];
  v15[5] = v14[5];
  v15[6] = v14[6];
  v15[7] = v14[7];
  v15[0] = v14[0];
  v15[1] = v14[1];
  v15[2] = v14[2];
  v15[3] = v14[3];
  return sub_100024F64(v15, &qword_101923160);
}

void sub_1004A1CF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_categories);
  if (v5 >> 62)
  {
LABEL_31:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = *(v5 + 8 * v7 + 32);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v19 = v8;
    v10 = [v8 name];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

LABEL_22:

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong searchCategoriesCard:v18 didSelectCategory:v19];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_22;
      }
    }

    ++v7;
  }

  while (v9 != v6);
}

void *sub_1004A1FAC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (a1 == 1)
  {
    v6 = &selRef_searchCategoriesCardDidSelectKeyboardSearch_usingInteractionModel_;
    goto LABEL_7;
  }

  if (!a1)
  {
    v6 = &selRef_searchCategoriesCardDidSelectSiriSearch_usingInteractionModel_;
LABEL_7:
    [result *v6];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1004A20D0()
{

  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_delegate);
  v1 = OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController__viewModels;
  v2 = sub_1000CE6B8(&qword_101926E50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController__showSearchBar;
  v4 = sub_1000CE6B8(&unk_101918B30);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id sub_1004A21B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarSearchCategoriesCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarSearchCategoriesCardViewController()
{
  result = qword_101923138;
  if (!qword_101923138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004A2320()
{
  sub_1004A2404();
  if (v0 <= 0x3F)
  {
    sub_1004A2468();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004A2404()
{
  if (!qword_101923148)
  {
    sub_1000D6664(&qword_101926E30);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101923148);
    }
  }
}

void sub_1004A2468()
{
  if (!qword_10190C1E8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10190C1E8);
    }
  }
}

unint64_t sub_1004A24B8()
{
  result = qword_101923168;
  if (!qword_101923168)
  {
    sub_1000D6664(&qword_101923160);
    sub_1004A2544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923168);
  }

  return result;
}

unint64_t sub_1004A2544()
{
  result = qword_101923170;
  if (!qword_101923170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923170);
  }

  return result;
}

uint64_t sub_1004A2598@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000CE6B8(&qword_1019231A8);
  return sub_1004A25FC(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_1004A25FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v80 = a3;
  v5 = sub_1000CE6B8(&qword_1019231B0);
  __chkstk_darwin(v5 - 8);
  v85 = &v74[-v6];
  v78 = sub_1000CE6B8(&qword_1019231B8);
  __chkstk_darwin(v78);
  v82 = &v74[-v7];
  v81 = sub_1000CE6B8(&qword_1019231C0);
  __chkstk_darwin(v81);
  v84 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v79 = &v74[-v10];
  __chkstk_darwin(v11);
  v83 = &v74[-v12];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v105 == 1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = swift_allocObject();
    v77 = a1;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    KeyPath = swift_getKeyPath();
    v15 = a2;
    v75 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LOBYTE(v87) = 0;
    v86 = 0;
    sub_1000CE6B8(&qword_101909FF0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1011E1D60;
    v25 = static Edge.Set.leading.getter();
    *(v24 + 32) = v25;
    v26 = static Edge.Set.trailing.getter();
    *(v24 + 33) = v26;
    v27 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v25)
    {
      v27 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v26)
    {
      v27 = Edge.Set.init(rawValue:)();
    }

    a1 = v77;
    EdgeInsets.init(_all:)();
    LOBYTE(v95[0]) = 0;
    *&v97 = sub_1004A38A8;
    *(&v97 + 1) = v13;
    *&v98 = sub_1004A38B0;
    *(&v98 + 1) = v14;
    *&v99 = KeyPath;
    BYTE8(v99) = 0;
    LOBYTE(v100) = v75;
    *(&v100 + 1) = v17;
    *&v101 = v19;
    *(&v101 + 1) = v21;
    *&v102 = v23;
    BYTE8(v102) = 0;
    LOBYTE(v103) = v27;
    *(&v103 + 1) = v28;
    *&v104[0] = v29;
    *(&v104[0] + 1) = v30;
    *&v104[1] = v31;
    BYTE8(v104[1]) = 0;
    UIView.annotateView(with:)(&v97);
    v110 = v102;
    v111 = v103;
    v112[0] = v104[0];
    *(v112 + 9) = *(v104 + 9);
    v107 = v99;
    v108 = v100;
    v109 = v101;
    v105 = v97;
    v106 = v98;
  }

  else
  {
    sub_10027DA38(&v105);
  }

  v32 = static HorizontalAlignment.leading.getter();
  v33 = qword_10193E340;
  v34 = v85;
  *v85 = v32;
  v34[1] = v33;
  *(v34 + 16) = 0;
  sub_1000CE6B8(&qword_1019231C8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a2;
  v36 = a2;
  sub_1000CE6B8(&qword_101926E30);
  type metadata accessor for UUID();
  type metadata accessor for PlaceCell();
  sub_1000414C8(&qword_101920568, &qword_101926E30);
  sub_1004A38B8(&qword_10190D640, &type metadata accessor for PlaceCell);
  sub_1004A38B8(&qword_1019231D0, &type metadata accessor for ListCellViewModel);
  ForEach<>.init(_:content:)();
  sub_1000CE6B8(&qword_101909FF0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1011E1D60;
  v38 = static Edge.Set.horizontal.getter();
  *(v37 + 32) = v38;
  v39 = static Edge.Set.bottom.getter();
  *(v37 + 33) = v39;
  v40 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v39)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v82;
  sub_1000F11C4(v85, v82, &qword_1019231B0);
  v50 = &v49[*(v78 + 36)];
  *v50 = v40;
  *(v50 + 1) = v42;
  *(v50 + 2) = v44;
  *(v50 + 3) = v46;
  *(v50 + 4) = v48;
  v50[40] = 0;
  v51 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v79;
  sub_1000F11C4(v49, v79, &qword_1019231B8);
  v61 = &v60[*(v81 + 36)];
  *v61 = v51;
  *(v61 + 1) = v53;
  *(v61 + 2) = v55;
  *(v61 + 3) = v57;
  *(v61 + 4) = v59;
  v61[40] = 0;
  v62 = v83;
  sub_1000F11C4(v60, v83, &qword_1019231C0);
  v93 = v111;
  v94[0] = v112[0];
  *(v94 + 9) = *(v112 + 9);
  v89 = v107;
  v90 = v108;
  v91 = v109;
  v92 = v110;
  v87 = v105;
  v88 = v106;
  v63 = v84;
  sub_1000D2DFC(v62, v84, &qword_1019231C0);
  v64 = v92;
  v95[5] = v92;
  v95[6] = v93;
  v65 = v94[0];
  v96[0] = v94[0];
  *(v96 + 9) = *(v94 + 9);
  v66 = v89;
  v67 = v90;
  v95[2] = v89;
  v95[3] = v90;
  v68 = v91;
  v95[4] = v91;
  v70 = v87;
  v69 = v88;
  v95[0] = v87;
  v95[1] = v88;
  v71 = v80;
  v80[6] = v93;
  v71[7] = v65;
  *(v71 + 121) = *(v94 + 9);
  v71[2] = v66;
  v71[3] = v67;
  v71[4] = v68;
  v71[5] = v64;
  *v71 = v70;
  v71[1] = v69;
  v72 = sub_1000CE6B8(&qword_1019231D8);
  sub_1000D2DFC(v63, v71 + *(v72 + 48), &qword_1019231C0);
  sub_1000D2DFC(v95, &v97, &qword_101916708);
  sub_100024F64(v62, &qword_1019231C0);
  sub_100024F64(v63, &qword_1019231C0);
  v103 = v93;
  v104[0] = v94[0];
  *(v104 + 9) = *(v94 + 9);
  v99 = v89;
  v100 = v90;
  v101 = v91;
  v102 = v92;
  v97 = v87;
  v98 = v88;
  return sub_100024F64(&v97, &qword_101916708);
}

void *sub_1004A2E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result searchCategoriesCardDidSelectKeyboardSearch:a3 usingInteractionModel:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1004A2EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result searchCategoriesCardDidSelectSiriSearch:a3 usingInteractionModel:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004A2F78(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  type metadata accessor for ListCellViewModel();
  sub_1004A38B8(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;
  swift_retain_n();
  v7 = a3;
  return PlaceCell.init(model:tapHandler:)();
}

uint64_t sub_1004A3058()
{
  result = dispatch thunk of ListCellViewModel.title.getter();
  if (v1)
  {
    sub_1004A1CF8(result, v1);
  }

  return result;
}

uint64_t sub_1004A30BC()
{
  v1 = sub_1000CE6B8(&qword_101923188);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = v0[1];
  v8 = *v0;
  v9 = v5;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101923190);
  sub_1000414C8(&qword_101923198, &qword_101923190);
  ScrollView.init(_:showsIndicators:content:)();
  sub_1000414C8(&qword_1019231A0, &qword_101923188);
  View.scrollAccessoryEdge(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004A326C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1004A32EC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

id sub_1004A3364(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v15 = sub_1000CE6B8(&unk_101918B30);
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = &v15 - v4;
  v6 = sub_1000CE6B8(&qword_101926E50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_categories;
  *&v2[OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_categories] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController__viewModels;
  v19 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101926E30);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v2[v11], v9, v6);
  v12 = OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController__showSearchBar;
  LOBYTE(v19) = 1;
  Published.init(initialValue:)();
  (*(v3 + 32))(&v2[v12], v5, v15);
  *&v2[v10] = v16;

  swift_unknownObjectWeakAssign();
  v13 = type metadata accessor for CarSearchCategoriesCardViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  return objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
}

void sub_1004A35A0()
{
  v1 = sub_1000CE6B8(&unk_101918B30);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-v3];
  v5 = sub_1000CE6B8(&qword_101926E50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  *(v0 + OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController_categories) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController__viewModels;
  v12 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101926E30);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC4Maps37CarSearchCategoriesCardViewController__showSearchBar;
  v11[7] = 1;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1004A37CC()
{
  result = qword_101923178;
  if (!qword_101923178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101923178);
  }

  return result;
}

unint64_t sub_1004A3818()
{
  result = qword_101923180;
  if (!qword_101923180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923180);
  }

  return result;
}

uint64_t sub_1004A38B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1004A39F0()
{
  v1 = OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager____lazy_storage___diffableDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager____lazy_storage___diffableDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager____lazy_storage___diffableDataSource);
  }

  else
  {
    if (qword_1019068D8 != -1)
    {
      swift_once();
    }

    v4 = sub_1000CE6B8(&qword_101923288);
    sub_100021540(v4, qword_1019603F0);
    v5 = *(*(v0 + OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager_configuration) + OBJC_IVAR____TtC4Maps47LibraryPlacesCollectionViewManagerConfiguration_collectionView);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(sub_1000CE6B8(&qword_101923290));
    v6 = v5;
    v7 = v0;
    v8 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void *sub_1004A3B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000CE6B8(&qword_101923288);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_10005EB40(a3, &v14);
    sub_1000CE6B8(&unk_101922F98);
    type metadata accessor for LibraryListSavedItemCellModel();
    if (swift_dynamicCast())
    {
      v9 = v13[1];
      if (qword_1019068D8 != -1)
      {
        swift_once();
      }

      v10 = sub_100021540(v4, qword_1019603F0);
      (*(v5 + 16))(v7, v10, v4);
      v14 = v9;
      sub_1004A42B4();
      v11 = v9;
      v12 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      (*(v5 + 8))(v7, v4);
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1004A3D24()
{
  sub_1000CE6B8(&qword_101922F90);
  sub_1004A4300();
  sub_1004A4354();
  NSDiffableDataSourceSnapshot.init()();
  sub_1000CE6B8(&qword_101922F88);
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101600258);
  v1 = *(v0 + OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager_cachedItems);
  *&v20 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_28:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v4 = *(v1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v6 = type metadata accessor for LibraryListSavedItemCellModel();
    swift_getObjectType();
    v7 = sub_1004BE674(v4, v6);
    ++v3;
    if (v7)
    {
      *&v7[OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_actionHandler + 8] = &off_10161C120;
      swift_unknownObjectWeakAssign();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v5;
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_30:

    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_17:
  result = sub_10051128C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = _swiftEmptyArrayStorage[v10 + 4];
      }

      v13 = v12;
      v14 = type metadata accessor for LibraryListSavedItemCellModel();
      v15 = sub_1004A43B8();
      v21 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v19 = v15;
        sub_10051128C((v16 > 1), v17 + 1, 1);
        v15 = v19;
        v11 = v21;
      }

      ++v10;
      v11[2] = v17 + 1;
      v18 = &v11[5 * v17];
      v18[4] = v13;
      *(v18 + 5) = v20;
      v18[7] = v14;
      v18[8] = v15;
    }

    while (v8 != v10);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_1004A417C()
{
  v1 = sub_1000CE6B8(&qword_101922F88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  if ((*(v0 + OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager_isInSelectionMode) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager_cachedItems) = *(*(v0 + OBJC_IVAR____TtC4Maps34LibraryPlacesCollectionViewManager_placesDataProvider) + 16);

    sub_1004A3D24();
    v5 = sub_1004A39F0();
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v2 + 8))(v4, v1);
  }
}

unint64_t sub_1004A42B4()
{
  result = qword_10191A560;
  if (!qword_10191A560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10191A560);
  }

  return result;
}

unint64_t sub_1004A4300()
{
  result = qword_101923298;
  if (!qword_101923298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923298);
  }

  return result;
}

unint64_t sub_1004A4354()
{
  result = qword_1019232A0;
  if (!qword_1019232A0)
  {
    sub_1000D6664(&qword_101922F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019232A0);
  }

  return result;
}

unint64_t sub_1004A43B8()
{
  result = qword_1019232A8;
  if (!qword_1019232A8)
  {
    type metadata accessor for LibraryListSavedItemCellModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019232A8);
  }

  return result;
}

uint64_t sub_1004A4410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004A4458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A44D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v28 = type metadata accessor for EnvironmentValues();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&qword_1019232B0);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  sub_1004A49FC(v1, v38);
  v30 = v38[0];
  v31 = BYTE2(v39);
  v7 = *(v1 + 48);
  v47 = *(v2 + 8);
  v33 = *v2;
  v29 = v47;
  v8 = *(v2 + 24);
  v45 = *(v2 + 16);
  v46 = v33;
  v9 = *(v2 + 40);
  v43 = *(v2 + 32);
  v44 = v8;
  v41[2] = v7;
  v42 = v9;
  v10 = swift_allocObject();
  v11 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 64) = *(v2 + 48);
  v12 = v7;
  sub_1000D2DFC(&v46, v41, &qword_101918608);
  sub_1000D2DFC(&v45, v41, &qword_101918610);
  sub_1000D2DFC(&v44, v41, &qword_101918618);
  sub_1000D2DFC(&v43, v41, &unk_101916610);
  sub_1000D2DFC(&v42, v41, &qword_101918620);
  v13 = sub_1000CE6B8(&qword_101918640);
  v14 = sub_1004A57D0();
  v15 = sub_1002BAADC();
  v16 = sub_1004A581C();
  v34 = v6;
  v32 = v16;
  View.onChange<A>(of:initial:_:)();

  j__swift_release();
  if (v29 == 1)
  {
    v17 = v33;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v19 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v46, &qword_101918608);
    (*(v27 + 8))(v19, v28);
    v17 = v38[0];
  }

  v41[0] = v17;
  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = *(v2 + 48);
  v22 = v12;
  sub_1000D2DFC(&v46, v38, &qword_101918608);
  sub_1000D2DFC(&v45, v38, &qword_101918610);
  sub_1000D2DFC(&v44, v38, &qword_101918618);
  sub_1000D2DFC(&v43, v38, &unk_101916610);
  sub_1000D2DFC(&v42, v38, &qword_101918620);
  v38[0] = v13;
  v38[1] = v14;
  v39 = v15;
  v40 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1001DF878();
  v23 = v36;
  v24 = v34;
  View.onChange<A>(of:initial:_:)();

  return (*(v35 + 8))(v24, v23);
}

double sub_1004A49FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 32);
  sub_1000CE6B8(&qword_101918668);
  State.wrappedValue.getter();
  if (v14)
  {
    v8 = v14;
    Image.init(uiImage:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v14 = v9;
    v15 = 0;
    v16 = 257;
    v17 = 0;

    sub_1000CE6B8(&qword_1019104B0);
    sub_1001CA284();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v14 = static Color.clear.getter();
    v15 = 0;
    v16 = 0;
    v17 = 1;
    sub_1000CE6B8(&qword_1019104B0);
    sub_1001CA284();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v18;
  v11 = v19;
  v12 = v20;
  *a2 = v18;
  *(a2 + 16) = v11;
  *(a2 + 18) = v12;
  return result;
}

uint64_t sub_1004A4C34()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = v0[2];
  v6 = v0[3];
  v24 = v6;
  v25 = v5;
  v18 = v5;
  v19 = v6;
  sub_1000D2DFC(&v25, &v22, &qword_101918610);
  sub_1000D2DFC(&v24, &v22, &qword_101918618);
  sub_1000CE6B8(&qword_101918660);
  State.wrappedValue.getter();
  if (v22)
  {
    sub_1000CE6B8(&qword_101915AB0);
    Task.cancel()();
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = *v0;
  v23 = *(v0 + 8);
  v9 = v0[5];
  v21 = v0[4];
  v22 = v8;
  v20 = v9;
  v10 = v0[6];
  type metadata accessor for MainActor();
  sub_1000D2DFC(&v25, &v18, &qword_101918610);
  sub_1000D2DFC(&v24, &v18, &qword_101918618);
  sub_1000D2DFC(&v22, &v18, &qword_101918608);
  sub_1000D2DFC(&v21, &v18, &unk_101916610);
  sub_1000D2DFC(&v20, &v18, &qword_101918620);
  v11 = v10;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  v14 = *(v1 + 1);
  *(v13 + 32) = *v1;
  *(v13 + 48) = v14;
  *(v13 + 64) = *(v1 + 2);
  *(v13 + 80) = v1[6];
  v15 = sub_10050D2C8(0, 0, v4, &unk_10120A5B0, v13);
  v18 = v5;
  v19 = v6;
  v17[1] = v15;
  State.wrappedValue.setter();
  sub_100024F64(&v25, &qword_101918610);
  return sub_100024F64(&v24, &qword_101918618);
}

uint64_t sub_1004A4F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v7;
  v4[16] = v6;

  return _swift_task_switch(sub_1004A5014, v7, v6);
}

uint64_t sub_1004A5014()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 8);
  *(v0 + 32) = *v1;
  *(v0 + 40) = v2;
  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(v0 + 32, &qword_101918608);
    (*(v4 + 8))(v3, v5);
    v1 = *(v0 + 72);
  }

  *(v0 + 136) = *(v1 + 48);
  *(v0 + 144) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 152) = v8;
  *(v0 + 160) = v7;

  return _swift_task_switch(sub_1004A5180, v8, v7);
}

uint64_t sub_1004A5180()
{
  v1 = v0[17];
  v2 = static MainActor.shared.getter();
  v0[21] = v2;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = sub_1000CE6B8(&unk_101916610);
  *v4 = v0;
  v4[1] = sub_1004A529C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v2, &protocol witness table for MainActor, 0xD000000000000023, 0x800000010123B040, sub_1004A594C, v3, v5);
}

uint64_t sub_1004A529C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1004A53FC, v3, v2);
}

uint64_t sub_1004A53FC()
{

  v0[24] = v0[7];
  v1 = v0[15];
  v2 = v0[16];

  return _swift_task_switch(sub_1004A5468, v1, v2);
}

uint64_t sub_1004A5468()
{

  static Task<>.checkCancellation()();
  v1 = *(v0 + 192);
  *(v0 + 16) = *(*(v0 + 72) + 32);
  *(v0 + 64) = v1;
  sub_1000CE6B8(&qword_101918668);
  State.wrappedValue.setter();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1004A554C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019232C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedCache];
  if (v8)
  {
    v9 = v8;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v7, v4);
    aBlock[4] = sub_1004A5954;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100271778;
    aBlock[3] = &unk_10161C710;
    v12 = _Block_copy(aBlock);

    [v9 getImageForStyleAttributes:a2 completion:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004A5730(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  sub_1000CE6B8(&qword_1019232C8);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_1004A57D0()
{
  result = qword_1019232B8;
  if (!qword_1019232B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019232B8);
  }

  return result;
}

unint64_t sub_1004A581C()
{
  result = qword_1019232C0;
  if (!qword_1019232C0)
  {
    sub_1004A57D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019232C0);
  }

  return result;
}

uint64_t sub_1004A589C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003AC4C;

  return sub_1004A4F1C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1004A5954(void *a1)
{
  sub_1000CE6B8(&qword_1019232C8);

  return sub_1004A5730(a1);
}

uint64_t *LibraryItemsCountManager.shared.unsafeMutableAddressor()
{
  if (qword_1019068B8 != -1)
  {
    swift_once();
  }

  return &static LibraryItemsCountManager.shared;
}

uint64_t sub_1004A5AA8()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount);
  }

  v2 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_routesCount);
  v3 = __OFADD__(v4, v5);
  v6 = v4 + v5;
  if (v3)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (*(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount);
  }

  result = v6 + v7;
  if (__OFADD__(v6, v7))
  {
    goto LABEL_13;
  }

  return result;
}

id sub_1004A5B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_pinnedItemsCount);
  v2 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount);
  v3 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_routesCount);
  if (*(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount);
  }

  v5 = v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount;
  v6 = *(v0 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount);
  v7 = *(v5 + 8);
  v8 = type metadata accessor for LibraryItemsCount();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v9[OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount];
  *v11 = 0;
  v11[8] = 1;
  *v10 = v4;
  v10[8] = 0;
  *&v9[OBJC_IVAR____TtC4Maps17LibraryItemsCount_pinnedItemsCount] = v1;
  *&v9[OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount] = v2;
  *&v9[OBJC_IVAR____TtC4Maps17LibraryItemsCount_routesCount] = v3;
  *v11 = v6;
  v11[8] = v7;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, "init");
}

id LibraryItemsCount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryItemsCount();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static LibraryItemsCountManager.shared.getter()
{
  if (qword_1019068B8 != -1)
  {
    swift_once();
  }

  v1 = static LibraryItemsCountManager.shared;

  return v1;
}

void sub_1004A5E38()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) == 1)
    {
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) = 1;
      v4 = Strong;
      v5 = type metadata accessor for TaskPriority();
      (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = v4;
      sub_10020AAE4(0, 0, v2, &unk_10120A680, v6);
    }
  }
}

id LibraryItemsCountManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observerToken];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver:v2];
    swift_unknownObjectRelease();
  }

  type metadata accessor for MapsSyncStore();
  v5 = static MapsSyncStore.sharedStore.getter();
  v6 = v1;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v8.receiver = v6;
  v8.super_class = type metadata accessor for LibraryItemsCountManager();
  return objc_msgSendSuper2(&v8, "dealloc");
}

id LibraryItemsCountManager.registerObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1004A7B74(a1, v1);
}

id LibraryItemsCountManager.unregisterObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1004A7B90(a1, v1);
}

void sub_1004A6190(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id, uint64_t))
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = a1;
  a4(a3, v8, ObjectType);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall LibraryItemsCountManager.setNeedsRefresh()()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if ((v0[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] = 1;
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v0;
    v6 = v0;
    sub_10020AAE4(0, 0, v3, &unk_10120A5E0, v5);
  }
}

uint64_t sub_1004A6450(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1004A6550, 0, 0);
}

uint64_t sub_1004A6550()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004A5B20();
  }

  else
  {
    v3 = 0;
  }

  v0[6] = v3;
  type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A6610, v5, v4);
}

uint64_t sub_1004A6610()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  *(v2 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) = 0;
  if (v1)
  {
    v3 = *(v0 + 40);
    v4 = qword_101906800;
    v5 = v3;
    if (v4 != -1)
    {
      v11 = v5;
      swift_once();
      v5 = v11;
      v3 = *(v0 + 40);
    }

    v6 = *(v0 + 16);
    v7 = *(static VisitedPlacesCountsManager.shared + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount + 8);
    v8 = &v5[OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount];
    *v8 = *(static VisitedPlacesCountsManager.shared + OBJC_IVAR____TtC4Maps26VisitedPlacesCountsManager_allVisitsCount);
    v8[8] = v7;
    v9 = *(v6 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
    *(v6 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts) = v3;
    v10 = v5;

    sub_1004A6740();
  }

  return _swift_task_switch(sub_100047C6C, 0, 0);
}

void sub_1004A6740()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers);
    v3 = v1;
    v4 = [v2 allObservers];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        sub_10004E374(v7, v9);
        sub_1000CE6B8(&qword_101923370);
        if (swift_dynamicCast())
        {
          [v8 libraryItemsCountManager:v0 didUpdateCounts:v3];
          swift_unknownObjectRelease();
        }

        v7 += 32;
        --v6;
      }

      while (v6);
    }
  }
}

id sub_1004A6890()
{
  result = [objc_opt_self() sharedData];
  v0[3] = result;
  if (result)
  {
    v2 = v0[2];
    v3 = OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount;
    v0[4] = OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount;
    v4 = *(v2 + v3);
    if (v4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v4 <= 0x7FFFFFFF)
    {
      [result setMapFeatureLibrarySavedPlacesCount:v4];
      v0[5] = type metadata accessor for MapsSyncQueryPredicate();
      v5 = static MapsSyncQueryPredicate.withFormat(_:_:)();
      v0[6] = v5;
      v0[7] = type metadata accessor for CollectionPlaceItemRequest();
      v0[8] = CollectionPlaceItemRequest.__allocating_init()();
      Options = type metadata accessor for MapsSyncQueryOptions();
      v0[9] = Options;
      v7 = objc_allocWithZone(Options);
      v8 = v5;
      v9 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
      v0[10] = v9;
      v12 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = sub_1004A6A6C;

      return v12(v9);
    }

    __break(1u);
    return result;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004A6A6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  v5 = v3[10];
  v6 = v3[8];
  if (v1)
  {
    v7 = v4[3];

    v8 = sub_1004A6F78;
  }

  else
  {

    v8 = sub_1004A6BD0;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_1004A6BD0()
{
  v2 = *(v0 + 96);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  [*(v0 + 24) setMapFeatureLibraryPlacesWithNoteCount:?];
  v5 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  *(v0 + 112) = v5;
  sub_1000CE6B8(&unk_10190D5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  *(v6 + 56) = &type metadata for Int16;
  *(v6 + 64) = &protocol witness table for Int16;
  *(v6 + 32) = 1;
  v7 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  *(v0 + 120) = v7;

  *(v0 + 128) = CollectionPlaceItemRequest.__allocating_init()();
  sub_1000CE6B8(&qword_101908400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E4FD0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  objc_allocWithZone(v4);
  v9 = v5;
  v10 = v7;
  MapsSyncQueryPredicate.init(or:)();
  v11 = objc_allocWithZone(v3);
  v12 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  *(v0 + 136) = v12;
  v14 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1004A6E14;

  v14(v12);
}

uint64_t sub_1004A6E14(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v5 = v3[17];
  v6 = v3[16];
  if (v1)
  {
    v7 = v4[3];

    v8 = sub_1004A7118;
  }

  else
  {

    v8 = sub_100047298;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1004A6F78()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching anaytics Counts: %@", v4, 0xCu);
    sub_1000DCD10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004A7118()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FF58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching anaytics Counts: %@", v6, 0xCu);
    sub_1000DCD10(v7);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004A72C8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FF58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching anaytics Counts: %@", v6, 0xCu);
    sub_1000DCD10(v7);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

Swift::Void __swiftcall LibraryItemsCountManager.collectionManager(_:contentDidChange:)(CollectionManager *_, Swift::OpaquePointer contentDidChange)
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  if ((v2[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] & 1) == 0)
  {
    v2[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] = 1;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v2;
    v8 = v2;
    sub_10020AAE4(0, 0, v5, &unk_10120A5E8, v7);
  }
}

uint64_t LibraryItemsCountManager.storeSubscriptionTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_storeSubscriptionTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall LibraryItemsCountManager.storeDidChange(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  if ((v1[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] = 1;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;
    v7 = v1;
    sub_10020AAE4(0, 0, v4, &unk_10120A5F0, v6);
  }
}

uint64_t sub_1004A7BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10005DF30(a1, v4, v5, v6);
}

uint64_t sub_1004A7C7C()
{
  type metadata accessor for CollectionRequest();
  *(v0 + 48) = CollectionRequest.__allocating_init()();
  v3 = (&async function pointer to dispatch thunk of MapsSyncRequest.count() + async function pointer to dispatch thunk of MapsSyncRequest.count());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1004A7D34;

  return v3();
}

uint64_t sub_1004A7D34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1004A8398;
  }

  else
  {

    v4 = sub_1004A7E50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004A7E50()
{
  type metadata accessor for CachedCuratedCollectionRequest();
  *(v0 + 80) = CachedCuratedCollectionRequest.__allocating_init()();
  v3 = (&async function pointer to dispatch thunk of MapsSyncRequest.count() + async function pointer to dispatch thunk of MapsSyncRequest.count());
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1004A7F08;

  return v3();
}

uint64_t sub_1004A7F08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004A8538, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    *(v3 + 112) = v4;
    *v4 = v3;
    v4[1] = sub_1004A8094;

    return sub_1004CD1C0();
  }
}

uint64_t sub_1004A8094(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 40) = v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  *(v4 + 120) = v2;

  if (v2)
  {
    v5 = sub_1004A8200;
  }

  else
  {
    v5 = sub_1004A81B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004A81B4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  result = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + 32))
    {
      return (*(v0 + 8))(result, 0);
    }

    if (*(v0 + 24) < 1)
    {
      return (*(v0 + 8))(result, 0);
    }

    if (!__OFADD__(result++, 1))
    {
      return (*(v0 + 8))(result, 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A8200()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching all guides Counts: %@", v4, 0xCu);
    sub_1000DCD10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0, 1);
}

uint64_t sub_1004A8398()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching all guides Counts: %@", v4, 0xCu);
    sub_1000DCD10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0, 1);
}

uint64_t sub_1004A8538()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching all guides Counts: %@", v4, 0xCu);
    sub_1000DCD10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0, 1);
}

uint64_t sub_1004A86D8(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 176) = a2;

  return _swift_task_switch(sub_1004A87DC, 0, 0);
}

uint64_t sub_1004A87DC()
{
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1004A88B0;

  return sub_1000589D8(1);
}

uint64_t sub_1004A88B0(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004A8A38, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[9] = v4;
    *v4 = v3;
    v4[1] = sub_100058E64;

    return sub_1000589D8(0);
  }
}

uint64_t sub_1004A8A38()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error Fetching Counts: %@", v4, 0xCu);
    sub_1000DCD10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1004A8BCC()
{
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  *(v1 + 56) = &type metadata for Int16;
  *(v1 + 64) = &protocol witness table for Int16;
  *(v1 + 32) = 6;
  static MapsSyncQueryPredicate.withFormat(_:_:)();

  v2 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v3 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[12] = v3;
  type metadata accessor for CollectionPlaceItemRequest();
  v0[13] = CollectionPlaceItemRequest.__allocating_init()();
  v7 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
  v4 = v3;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1004A8D48;

  return v7(v3);
}

uint64_t sub_1004A8D48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1004A9250;
  }

  else
  {
    v6 = *(v4 + 104);

    *(v4 + 128) = a1;
    v5 = sub_1004A9010;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004A8E7C()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error Fetching Counts: %@", v4, 0xCu);
    sub_1000DCD10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1004A9010()
{
  v2 = v0[16];
  v3 = v0[10];
  v0[17] = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v7 = v1;
    v0[18] = [objc_opt_self() savedRoutesCount];
    if (qword_101906800 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v0[19] = static VisitedPlacesCountsManager.shared;
  type metadata accessor for MainActor();
  v0[20] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100059704, v5, v4);
}

void sub_1004A9118()
{
  v1 = *(v0 + 144);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 177);
    v3 = *(v0 + 168);
    v4 = *(v0 + 136);
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 176);
    v8 = *(v0 + 40);
    v9 = type metadata accessor for LibraryItemsCount();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount];
    *v11 = 0;
    v11[8] = 1;
    v12 = &v10[OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount];
    *v12 = 0;
    v12[8] = 1;
    *v11 = v8;
    v11[8] = v7 & 1;
    *&v10[OBJC_IVAR____TtC4Maps17LibraryItemsCount_pinnedItemsCount] = v6;
    *&v10[OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount] = v4;
    *&v10[OBJC_IVAR____TtC4Maps17LibraryItemsCount_routesCount] = v1;
    *v12 = v3;
    v12[8] = v2;
    *(v0 + 16) = v10;
    *(v0 + 24) = v9;
    v13 = objc_msgSendSuper2((v0 + 16), "init");

    v14 = *(v0 + 8);

    v14(v13);
  }
}

uint64_t sub_1004A9250()
{
  v1 = v0[12];
  v2 = v0[13];

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FF58);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error Fetching Counts: %@", v6, 0xCu);
    sub_1000DCD10(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1004A93F4(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
    if (v2)
    {
      v3 = &v2[OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount];
      *v3 = result;
      v3[8] = 0;
      v4 = *(v1 + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers);
      v5 = v2;
      v6 = [v4 allObservers];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 32;
        do
        {
          sub_10004E374(v9, v11);
          sub_1000CE6B8(&qword_101923370);
          if (swift_dynamicCast())
          {
            [v10 libraryItemsCountManager:v1 didUpdateCounts:v5];
            swift_unknownObjectRelease();
          }

          v9 += 32;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t sub_1004A9550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1004A6870(a1, v4, v5, v6);
}

Swift::Int sub_1004A9604(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10056D564(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_1004AB074(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1004A9670(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10056DDF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1004AB17C(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1004A96EC(uint64_t result)
{
  if (*(v1 + 48) == result)
  {
    return result;
  }

  *(v1 + 48) = result;
  v2 = *(v1 + 16);
  if (!result)
  {

    v4 = sub_1004ADB44(v5);
    goto LABEL_6;
  }

  if (result == 1)
  {

    v4 = sub_1004AF46C(v3);
LABEL_6:
    v6 = v4;

    goto LABEL_8;
  }

  swift_bridgeObjectRetain_n();
  v9 = sub_1002EEF94(v2);
  sub_1004A9670(&v9);

  v6 = v9;
LABEL_8:
  *(v1 + 16) = v6;

  *(v1 + 24) = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004A9814(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (v2[9])
  {

    Task.cancel()();
  }

  if (a2)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9;
  }

  if (v11)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0;
  }

  v2[7] = a1;
  v2[8] = a2;

  v12 = *(v2 + 48);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = v12;
  *(v14 + 56) = v2;
  *(v14 + 64) = v5;

  v2[9] = sub_10020AAE4(0, 0, v8, &unk_10120A750, v14);
}

uint64_t sub_1004A9A0C(char a1)
{
  v2 = v1;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_100024578();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D60;
  *(v4 + 32) = type metadata accessor for FavoriteItem();
  *(v4 + 40) = type metadata accessor for CollectionPlaceItem();
  *(v2 + 80) = v4;
  *(v2 + 48) = a1;
  type metadata accessor for MapsSyncStore();
  v5 = static MapsSyncStore.sharedStore.getter();

  dispatch thunk of MapsSyncStore.subscribe(_:)();

  v6 = *(v2 + 56);
  v7 = *(v2 + 64);

  sub_1004A9814(v6, v7);

  return v2;
}

Swift::Void __swiftcall LibraryPlacesDataProvider.storeDidChange(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  sub_1004A9814(v2, v3);
}

uint64_t LibraryPlacesDataProvider.deinit()
{
  v1 = v0;
  type metadata accessor for MapsSyncStore();
  v2 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  if (*(v1 + 72))
  {

    Task.cancel()();
  }

  sub_1000A09E0(v1 + 32);

  return v1;
}

uint64_t LibraryPlacesDataProvider.__deallocating_deinit()
{
  LibraryPlacesDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004A9C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 64) = a5;
  *(v7 + 72) = a7;
  *(v7 + 136) = a6;
  *(v7 + 56) = a4;
  v11 = type metadata accessor for CancellationError();
  *(v7 + 80) = v11;
  *(v7 + 88) = *(v11 - 8);
  *(v7 + 96) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v7 + 104) = v12;
  *v12 = v7;
  v12[1] = sub_1004A9D54;

  return sub_1004AF660(a4, a5, a6);
}

uint64_t sub_1004A9D54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1004AA248;
  }

  else
  {
    v4 = sub_1004A9E68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004A9E68()
{
  v24 = v0;
  v1 = v0[15];
  static Task<>.checkCancellation()();
  if (v1)
  {

    v0[5] = v1;
    swift_errorRetain();
    sub_1000CE6B8(&qword_101915AB0);
    if (swift_dynamicCast())
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      if (qword_1019066E8 != -1)
      {
        swift_once();
      }

      v2 = v0[8];
      v3 = type metadata accessor for Logger();
      sub_100021540(v3, qword_10195FF58);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_21;
      }

      v7 = v0[7];
      v6 = v0[8];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      v10 = v6 == 0;
      if (v6)
      {
        v11 = v7;
      }

      else
      {
        v11 = 7104878;
      }

      if (v10)
      {
        v12 = 0xE300000000000000;
      }

      else
      {
        v12 = v2;
      }

      v13 = sub_10004DEB8(v11, v12, &v23);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Query Processing was cancelled for searchTerm: %s", v8, 0xCu);
      sub_10004E3D0(v9);
    }

    else
    {
      if (qword_1019066E8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100021540(v16, qword_10195FF58);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v4, v17))
      {

        goto LABEL_23;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v4, v17, "LibraryPlacesDataProvider error fetching search results: %@", v18, 0xCu);
      sub_100024F64(v19, &qword_1019144F0);
    }

LABEL_21:

LABEL_23:

    v21 = v0[1];

    return v21();
  }

  swift_weakInit();
  type metadata accessor for MainActor();
  v0[16] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004AA594, v15, v14);
}

uint64_t sub_1004AA248()
{
  v21 = v0;
  v0[5] = v0[15];
  swift_errorRetain();
  sub_1000CE6B8(&qword_101915AB0);
  if (swift_dynamicCast())
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v1 = v0[8];
    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_10195FF58);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = v5 == 0;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 7104878;
    }

    if (v9)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v1;
    }

    v12 = sub_10004DEB8(v10, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Query Processing was cancelled for searchTerm: %s", v7, 0xCu);
    sub_10004E3D0(v8);

LABEL_16:

LABEL_17:

    goto LABEL_19;
  }

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_10195FF58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v3, v14, "LibraryPlacesDataProvider error fetching search results: %@", v15, 0xCu);
    sub_100024F64(v16, &qword_1019144F0);

    goto LABEL_16;
  }

LABEL_19:

  v18 = v0[1];

  return v18();
}

uint64_t sub_1004AA594()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_weakDestroy();

    goto LABEL_18;
  }

  v2 = Strong;
  v3 = *(v0 + 64);
  v4 = *(Strong + 64);
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

LABEL_12:

LABEL_16:

    swift_weakDestroy();
    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(Strong + 56) == *(v0 + 56) && v4 == v3;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (*(v2 + 48) == *(v0 + 136))
  {
    *(v2 + 16) = *(v0 + 112);

    *(v2 + 24) = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

LABEL_17:
  swift_weakDestroy();

LABEL_18:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004AA744(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = *sub_10005E838((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000CE6B8(&qword_101915AB0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    a4(0);
    **(*(v6 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_1004AA82C(id *a1, void **a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v36 - v8;
  v39 = sub_1000CE6B8(&qword_10191BA20);
  __chkstk_darwin(v39);
  v10 = &v36 - v9;
  v11 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v36 - v19;
  v21 = *a2;
  v22 = [*a1 createTime];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = v5[7];
    v24(v20, 0, 1, v4);
  }

  else
  {
    v24 = v5[7];
    v24(v20, 1, 1, v4);
  }

  v25 = [v21 createTime];
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v24(v16, v27, 1, v4);
  v28 = *(v39 + 48);
  sub_100335D8C(v20, v10);
  sub_100335D8C(v16, &v10[v28]);
  v29 = v5[6];
  if (v29(v10, 1, v4) == 1)
  {
    sub_100024F64(&v10[v28], &qword_10190EBD0);
    v30 = 1;
LABEL_13:
    sub_100024F64(v10, &qword_10190EBD0);
    return v30 & 1;
  }

  sub_1002323DC(v10, v13);
  if (v29(&v10[v28], 1, v4) != 1)
  {
    v31 = v5[4];
    v32 = v37;
    v31(v37, v13, v4);
    v33 = v38;
    v31(v38, &v10[v28], v4);
    v30 = static Date.> infix(_:_:)();
    v34 = v5[1];
    v34(v33, v4);
    v34(v32, v4);
    goto LABEL_13;
  }

  (v5[1])(v13, v4);
  if (v29(&v10[v28], 1, v4) == 1)
  {
    v30 = 0;
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

BOOL sub_1004AAC38(id *a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 latitude];
  v7 = [v4 longitude];
  v8 = [v5 latitude];
  v9 = [v5 longitude];
  if (v6)
  {
    if (v7)
    {
      if (v8)
      {
        if (v9)
        {
          v10 = v9;
          [v6 doubleValue];
          v12 = v11;
          [v7 doubleValue];
          v14 = [objc_allocWithZone(CLLocation) initWithLatitude:v12 longitude:v13];
          [v14 distanceFromLocation:a3];
          v16 = v15;

          [v8 doubleValue];
          v18 = v17;
          [v10 doubleValue];
          v20 = [objc_allocWithZone(CLLocation) initWithLatitude:v18 longitude:v19];
          [v20 distanceFromLocation:a3];
          v22 = v21;

          return v16 < v22;
        }
      }

      else
      {
      }

      return 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t LibraryPlacesDataProvider.storeSubscriptionTypes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

Swift::Int sub_1004AB074(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
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
        sub_1000CE6B8(&qword_1019250F0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1004AB8F0(v7, v8, a1, v4);
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
    return sub_1004AB28C(0, v2, 1, a1);
  }

  return result;
}

void sub_1004AB17C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000CE6B8(&qword_1019151C0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1004ABFA0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004AB3A0(0, v2, 1, a1);
  }
}

uint64_t sub_1004AB28C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1000E5580();
    v7 = (v6 + 24 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 3;
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

      v12 = *v10;
      v11 = v10[1];
      v13 = v10[2];
      *v10 = *(v10 - 3);
      v10[2] = *(v10 - 1);
      *(v10 - 2) = v11;
      *(v10 - 1) = v13;
      *(v10 - 3) = v12;
      v10 -= 3;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1004AB3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v48 - v12;
  v59 = sub_1000CE6B8(&qword_10191BA20);
  __chkstk_darwin(v59);
  v63 = &v48 - v13;
  v14 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v14 - 8);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v60 = &v48 - v17;
  __chkstk_darwin(v18);
  v65 = &v48 - v19;
  v49 = a2;
  if (a3 != a2)
  {
    v64 = (v9 + 56);
    v20 = *a4;
    v61 = (v9 + 48);
    v62 = v20;
    v53 = (v9 + 32);
    v56 = (v9 + 8);
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
    v23 = &selRef_connectedCarMainScreenInfo;
LABEL_5:
    v51 = v21;
    v52 = a3;
    v24 = v63;
    v25 = *(v62 + 8 * a3);
    v50 = v22;
    v26 = v21;
    while (1)
    {
      v27 = *v26;
      swift_unknownObjectRetain();
      v66 = v27;
      swift_unknownObjectRetain();
      v28 = [v25 v23[414]];
      if (v28)
      {
        v29 = v65;
        v30 = v28;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = v29;
        v32 = 0;
      }

      else
      {
        v32 = 1;
        v31 = v65;
      }

      v33 = *v64;
      (*v64)(v31, v32, 1, v8);
      v34 = [v66 v23[414]];
      if (v34)
      {
        v35 = v34;
        v36 = v60;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v36;
      }

      else
      {
        v37 = v60;
      }

      v38 = v37;
      v33();
      v39 = *(v59 + 48);
      sub_100335D8C(v65, v24);
      sub_100335D8C(v38, v24 + v39);
      v40 = *v61;
      if ((*v61)(v24, 1, v8) == 1)
      {
        sub_100024F64(v24 + v39, &qword_10190EBD0);
        sub_100024F64(v24, &qword_10190EBD0);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = v57;
        sub_1002323DC(v24, v57);
        if (v40(v24 + v39, 1, v8) == 1)
        {
          (*v56)(v41, v8);
          if (v40(v24 + v39, 1, v8) != 1)
          {
            goto LABEL_23;
          }

          sub_100024F64(v24, &qword_10190EBD0);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v23 = &selRef_connectedCarMainScreenInfo;
LABEL_4:
          a3 = v52 + 1;
          v21 = v51 + 8;
          v22 = v50 - 1;
          if (v52 + 1 == v49)
          {
            return;
          }

          goto LABEL_5;
        }

        v42 = v54;
        v43 = *v53;
        (*v53)(v54, v41, v8);
        v44 = v55;
        v43(v55, &v63[v39], v8);
        v58 = static Date.> infix(_:_:)();
        v45 = *v56;
        (*v56)(v44, v8);
        v24 = v63;
        v45(v42, v8);
        sub_100024F64(v24, &qword_10190EBD0);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v23 = &selRef_connectedCarMainScreenInfo;
        if ((v58 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v62)
      {
        break;
      }

      v46 = *v26;
      v25 = *(v26 + 8);
      *v26 = v25;
      *(v26 + 8) = v46;
      v26 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_23:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_1004AB8F0(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v91 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v89 = v5;
        v10 = 24 * v7;
        v11 = *a3 + 24 * v7;
        sub_1000E5580();
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v12 = result;
        v13 = (v7 + 2);
        v14 = v11 + 64;
        while (v6 != v13)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v13;
          v14 += 24;
          if ((v12 == -1) == (result != -1))
          {
            v6 = v13 - 1;
            break;
          }
        }

        v5 = v89;
        if (v12 == -1)
        {
          v9 = v7;
          if (v6 < v7)
          {
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
            return result;
          }

          if (v7 < v6)
          {
            v63 = 0;
            v64 = 24 * v6;
            v65 = v7;
            do
            {
              if (v65 != &v6[v63 - 1])
              {
                v71 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v66 = (v71 + v10);
                v67 = v71 + v64;
                v68 = *v66;
                v69 = *(v66 + 2);
                v70 = *(v67 - 8);
                *v66 = *(v67 - 24);
                *(v66 + 2) = v70;
                *(v67 - 24) = v68;
                *(v67 - 8) = v69;
              }

              ++v65;
              --v63;
              v64 -= 24;
              v10 += 24;
            }

            while (v65 < &v6[v63]);
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v15 = *(a3 + 1);
      if (v6 >= v15)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v6, v9))
      {
        goto LABEL_118;
      }

      if (&v6[-v9] >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_119;
      }

      if (v9 + a4 < v15)
      {
        v15 = (v9 + a4);
      }

      if (v15 < v9)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v6 == v15)
      {
LABEL_20:
        v7 = v6;
      }

      else
      {
        v92 = v15;
        v90 = v5;
        v72 = v9;
        v73 = *a3;
        sub_1000E5580();
        v74 = (v73 + 24 * v6);
        v88 = v72;
        v75 = v72 - v6;
        do
        {
          v76 = v75;
          v77 = v74;
          do
          {
            result = StringProtocol.localizedStandardCompare<A>(_:)();
            if (result != -1)
            {
              break;
            }

            if (!v73)
            {
              goto LABEL_123;
            }

            v79 = *v77;
            v78 = v77[1];
            v80 = v77[2];
            *v77 = *(v77 - 3);
            v77[2] = *(v77 - 1);
            *(v77 - 2) = v78;
            *(v77 - 1) = v80;
            *(v77 - 3) = v79;
            v77 -= 3;
          }

          while (!__CFADD__(v76++, 1));
          ++v6;
          v74 += 3;
          --v75;
        }

        while (v6 != v92);
        v9 = v88;
        v5 = v90;
        v7 = v92;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100097874(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_100097874((v16 > 1), v17 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v18;
      v19 = &v8[16 * v17];
      *(v19 + 4) = v9;
      *(v19 + 5) = v7;
      v20 = *v91;
      if (!*v91)
      {
        goto LABEL_127;
      }

      if (v17)
      {
        while (1)
        {
          v21 = v18 - 1;
          if (v18 >= 4)
          {
            break;
          }

          if (v18 == 3)
          {
            v22 = *(v8 + 4);
            v23 = *(v8 + 5);
            v32 = __OFSUB__(v23, v22);
            v24 = v23 - v22;
            v25 = v32;
LABEL_41:
            if (v25)
            {
              goto LABEL_106;
            }

            v38 = &v8[16 * v18];
            v40 = *v38;
            v39 = *(v38 + 1);
            v41 = __OFSUB__(v39, v40);
            v42 = v39 - v40;
            v43 = v41;
            if (v41)
            {
              goto LABEL_109;
            }

            v44 = &v8[16 * v21 + 32];
            v46 = *v44;
            v45 = *(v44 + 1);
            v32 = __OFSUB__(v45, v46);
            v47 = v45 - v46;
            if (v32)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v42, v47))
            {
              goto LABEL_113;
            }

            if (v42 + v47 >= v24)
            {
              if (v24 < v47)
              {
                v21 = v18 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v48 = &v8[16 * v18];
          v50 = *v48;
          v49 = *(v48 + 1);
          v32 = __OFSUB__(v49, v50);
          v42 = v49 - v50;
          v43 = v32;
LABEL_55:
          if (v43)
          {
            goto LABEL_108;
          }

          v51 = &v8[16 * v21];
          v53 = *(v51 + 4);
          v52 = *(v51 + 5);
          v32 = __OFSUB__(v52, v53);
          v54 = v52 - v53;
          if (v32)
          {
            goto LABEL_111;
          }

          if (v54 < v42)
          {
            goto LABEL_3;
          }

LABEL_62:
          v59 = v21 - 1;
          if (v21 - 1 >= v18)
          {
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
            goto LABEL_120;
          }

          if (!*a3)
          {
            goto LABEL_124;
          }

          v60 = *&v8[16 * v59 + 32];
          v61 = *&v8[16 * v21 + 40];
          sub_1004ACE44((*a3 + 24 * v60), (*a3 + 24 * *&v8[16 * v21 + 32]), *a3 + 24 * v61, v20);
          if (v5)
          {
          }

          if (v61 < v60)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10056D550(v8);
          }

          if (v59 >= *(v8 + 2))
          {
            goto LABEL_103;
          }

          v62 = &v8[16 * v59];
          *(v62 + 4) = v60;
          *(v62 + 5) = v61;
          result = sub_10056D4C4(v21);
          v18 = *(v8 + 2);
          if (v18 <= 1)
          {
            goto LABEL_3;
          }
        }

        v26 = &v8[16 * v18 + 32];
        v27 = *(v26 - 64);
        v28 = *(v26 - 56);
        v32 = __OFSUB__(v28, v27);
        v29 = v28 - v27;
        if (v32)
        {
          goto LABEL_104;
        }

        v31 = *(v26 - 48);
        v30 = *(v26 - 40);
        v32 = __OFSUB__(v30, v31);
        v24 = v30 - v31;
        v25 = v32;
        if (v32)
        {
          goto LABEL_105;
        }

        v33 = &v8[16 * v18];
        v35 = *v33;
        v34 = *(v33 + 1);
        v32 = __OFSUB__(v34, v35);
        v36 = v34 - v35;
        if (v32)
        {
          goto LABEL_107;
        }

        v32 = __OFADD__(v24, v36);
        v37 = v24 + v36;
        if (v32)
        {
          goto LABEL_110;
        }

        if (v37 >= v29)
        {
          v55 = &v8[16 * v21 + 32];
          v57 = *v55;
          v56 = *(v55 + 1);
          v32 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v32)
          {
            goto LABEL_114;
          }

          if (v24 < v58)
          {
            v21 = v18 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v6 = *(a3 + 1);
      if (v7 >= v6)
      {
        goto LABEL_89;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_89:
  v6 = *v91;
  if (!*v91)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_10056D550(v8);
    v8 = result;
  }

  v82 = v5;
  v83 = *(v8 + 2);
  if (v83 >= 2)
  {
    while (*a3)
    {
      v5 = v83 - 1;
      v84 = *&v8[16 * v83];
      v85 = *&v8[16 * v83 + 24];
      sub_1004ACE44((*a3 + 24 * v84), (*a3 + 24 * *&v8[16 * v83 + 16]), *a3 + 24 * v85, v6);
      if (v82)
      {
      }

      if (v85 < v84)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10056D550(v8);
      }

      if (v83 - 2 >= *(v8 + 2))
      {
        goto LABEL_116;
      }

      v86 = &v8[16 * v83];
      *v86 = v84;
      *(v86 + 1) = v85;
      result = sub_10056D4C4(v5);
      v83 = *(v8 + 2);
      if (v83 <= 1)
      {
      }
    }

    goto LABEL_125;
  }
}

uint64_t sub_1004ABFA0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v155 = a4;
  v156 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v172 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v171 = &v154 - v11;
  v176 = sub_1000CE6B8(&qword_10191BA20);
  __chkstk_darwin(v176);
  v181 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v154 - v14;
  v16 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v16 - 8);
  __chkstk_darwin(v17);
  v19 = &v154 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v164 = &v154 - v23;
  __chkstk_darwin(v24);
  v163 = &v154 - v28;
  v166 = a3;
  if (*(a3 + 8) < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_113:
    a3 = *v156;
    if (!*v156)
    {
      goto LABEL_154;
    }

    v15 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v148 = v15;
LABEL_116:
      v185 = v148;
      v15 = *(v148 + 2);
      if (v15 >= 2)
      {
        while (*v166)
        {
          v149 = *&v148[16 * v15];
          v150 = v148;
          v151 = *&v148[16 * v15 + 24];
          sub_1004AD0F8(*v166 + 8 * v149, (*v166 + 8 * *&v148[16 * v15 + 16]), (*v166 + 8 * v151), a3);
          if (v5)
          {
          }

          if (v151 < v149)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_10056D550(v150);
          }

          if (v15 - 2 >= *(v150 + 2))
          {
            goto LABEL_142;
          }

          v152 = &v150[16 * v15];
          *v152 = v149;
          *(v152 + 1) = v151;
          v185 = v150;
          sub_10056D4C4(v15 - 1);
          v148 = v185;
          v15 = *(v185 + 16);
          if (v15 <= 1)
          {
          }
        }

        goto LABEL_152;
      }
    }

LABEL_148:
    v148 = sub_10056D550(v15);
    goto LABEL_116;
  }

  v29 = *(a3 + 8);
  v159 = v26;
  v168 = v25;
  v30 = 0;
  v180 = (v8 + 56);
  v177 = (v8 + 48);
  v170 = (v8 + 32);
  v31 = _swiftEmptyArrayStorage;
  v173 = (v8 + 8);
  v174 = v19;
  v32 = &selRef_connectedCarMainScreenInfo;
  v182 = v7;
  v162 = v15;
  v169 = v27;
  while (1)
  {
    v33 = v30;
    v157 = v30;
    if (v30 + 1 >= v29)
    {
      v37 = v30 + 1;
      v64 = v155;
    }

    else
    {
      v167 = v29;
      v154 = v31;
      a3 = *v166;
      v34 = *(*v166 + 8 * (v30 + 1));
      v35 = v33;
      v183 = *(*v166 + 8 * v33);
      v184 = v34;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      LODWORD(v175) = sub_1004AA82C(&v184, &v183);
      if (v5)
      {

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v15 = v35 + 2;
      v161 = 8 * v35;
      v36 = (a3 + 8 * v35 + 16);
      v165 = 0;
      v37 = v167;
      while (v37 != v15)
      {
        v41 = *(v36 - 1);
        v40 = *v36;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v42 = v32[414];
        v178 = v40;
        v43 = [v40 v42];
        if (v43)
        {
          v44 = v163;
          v45 = v43;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = 0;
          v47 = v182;
          v48 = v164;
        }

        else
        {
          v46 = 1;
          v47 = v182;
          v48 = v164;
          v44 = v163;
        }

        v49 = *v180;
        v50 = 1;
        (*v180)(v44, v46, 1, v47);
        v51 = [v41 createTime];
        v179 = v41;
        if (v51)
        {
          v52 = v51;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = 0;
        }

        v53 = v182;
        v49(v48, v50, 1, v182);
        v54 = *(v176 + 48);
        v55 = v44;
        v56 = v162;
        sub_100335D8C(v55, v162);
        sub_100335D8C(v48, v56 + v54);
        v57 = *v177;
        if ((*v177)(v56, 1, v53) == 1)
        {
          a3 = &qword_10190EBD0;
          sub_100024F64(v56 + v54, &qword_10190EBD0);
          v38 = 1;
          v39 = v56;
          v32 = &selRef_connectedCarMainScreenInfo;
        }

        else
        {
          v58 = v159;
          sub_1002323DC(v56, v159);
          if (v57(v56 + v54, 1, v53) == 1)
          {
            (*v173)(v58, v53);
            if (v57(v56 + v54, 1, v53) != 1)
            {
              goto LABEL_155;
            }

            v39 = v56;
            v38 = 0;
          }

          else
          {
            v59 = v171;
            v60 = *v170;
            (*v170)(v171, v58, v182);
            v61 = v56 + v54;
            v62 = v172;
            v60(v172, v61, v182);
            v38 = static Date.> infix(_:_:)();
            v63 = *v173;
            (*v173)(v62, v182);
            v63(v59, v182);
            v39 = v56;
          }

          v32 = &selRef_connectedCarMainScreenInfo;
          a3 = &qword_10190EBD0;
        }

        v5 = v165;
        v37 = v167;
        sub_100024F64(v39, &qword_10190EBD0);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v15;
        ++v36;
        if ((v175 ^ v38))
        {
          v37 = v15 - 1;
          break;
        }
      }

      v64 = v155;
      v31 = v154;
      v33 = v157;
      v65 = v161;
      if (v175)
      {
        if (v37 < v157)
        {
          goto LABEL_147;
        }

        if (v157 < v37)
        {
          v66 = 8 * v37 - 8;
          v67 = v37;
          v68 = v157;
          do
          {
            if (v68 != --v67)
            {
              v69 = *v166;
              if (!*v166)
              {
                goto LABEL_151;
              }

              v70 = *(v69 + v65);
              *(v69 + v65) = *(v69 + v66);
              *(v69 + v66) = v70;
            }

            ++v68;
            v66 -= 8;
            v65 += 8;
          }

          while (v68 < v67);
        }
      }
    }

    v71 = v166[1];
    if (v37 >= v71)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v37, v33))
    {
      goto LABEL_144;
    }

    if (v37 - v33 >= v64)
    {
LABEL_40:
      v30 = v37;
      if (v37 < v33)
      {
        goto LABEL_143;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v33, v64))
    {
      goto LABEL_145;
    }

    if (v33 + v64 >= v71)
    {
      v72 = v166[1];
    }

    else
    {
      v72 = v33 + v64;
    }

    if (v72 < v33)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v37 == v72)
    {
      goto LABEL_40;
    }

    v154 = v31;
    v165 = v5;
    v175 = *v166;
    v119 = v175 + 8 * v37 - 8;
    v120 = (v33 - v37);
    v121 = v169;
    v158 = v72;
LABEL_93:
    v167 = v37;
    v122 = v120;
    v123 = *(v175 + 8 * v37);
    v160 = v120;
    v161 = v119;
    v124 = v119;
LABEL_94:
    v178 = v122;
    v125 = *v124;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v126 = [v123 v32[414]];
    if (v126)
    {
      v127 = v126;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v128 = 0;
    }

    else
    {
      v128 = 1;
    }

    v129 = v174;
    v130 = *v180;
    v131 = 1;
    (*v180)(v121, v128, 1, v182);
    v132 = [v125 v32[414]];
    v179 = v125;
    if (v132)
    {
      v133 = v132;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v131 = 0;
    }

    v134 = v182;
    v130(v129, v131, 1, v182);
    v135 = *(v176 + 48);
    v15 = v121;
    v136 = v121;
    v137 = v181;
    sub_100335D8C(v136, v181);
    sub_100335D8C(v129, v137 + v135);
    a3 = *v177;
    if ((*v177)(v137, 1, v134) == 1)
    {
      a3 = v181;
      sub_100024F64(v181 + v135, &qword_10190EBD0);
      sub_100024F64(a3, &qword_10190EBD0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v121 = v15;
      goto LABEL_103;
    }

    v138 = v181;
    v139 = v168;
    sub_1002323DC(v181, v168);
    if ((a3)(v138 + v135, 1, v134) != 1)
    {
      break;
    }

    (*v173)(v139, v134);
    v32 = &selRef_connectedCarMainScreenInfo;
    if ((a3)(v181 + v135, 1, v134) != 1)
    {
      goto LABEL_155;
    }

    sub_100024F64(v181, &qword_10190EBD0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v121 = v169;
LABEL_92:
    v37 = v167 + 1;
    v119 = v161 + 8;
    v120 = v160 - 1;
    v30 = v158;
    if (v167 + 1 != v158)
    {
      goto LABEL_93;
    }

    v5 = v165;
    v31 = v154;
    if (v158 < v157)
    {
      goto LABEL_143;
    }

LABEL_41:
    v73 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v73;
    }

    else
    {
      v31 = sub_100097874(0, *(v73 + 2) + 1, 1, v73);
    }

    a3 = *(v31 + 2);
    v74 = *(v31 + 3);
    v75 = a3 + 1;
    if (a3 >= v74 >> 1)
    {
      v31 = sub_100097874((v74 > 1), a3 + 1, 1, v31);
    }

    *(v31 + 2) = v75;
    v76 = &v31[16 * a3];
    *(v76 + 4) = v157;
    *(v76 + 5) = v30;
    if (!*v156)
    {
      goto LABEL_153;
    }

    if (a3)
    {
      v77 = *v156;
      while (1)
      {
        v78 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v79 = *(v31 + 4);
          v80 = *(v31 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_61:
          if (v82)
          {
            goto LABEL_132;
          }

          v95 = &v31[16 * v75];
          v97 = *v95;
          v96 = *(v95 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_135;
          }

          v101 = &v31[16 * v78 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_139;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v75 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v105 = &v31[16 * v75];
        v107 = *v105;
        v106 = *(v105 + 1);
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_75:
        if (v100)
        {
          goto LABEL_134;
        }

        v108 = &v31[16 * v78];
        v110 = *(v108 + 4);
        v109 = *(v108 + 5);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_137;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_82:
        v15 = v78 - 1;
        if (v78 - 1 >= v75)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*v166)
        {
          goto LABEL_150;
        }

        a3 = v31;
        v116 = *&v31[16 * v15 + 32];
        v117 = *&v31[16 * v78 + 40];
        sub_1004AD0F8(*v166 + 8 * v116, (*v166 + 8 * *&v31[16 * v78 + 32]), (*v166 + 8 * v117), v77);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_10056D550(a3);
        }

        if (v15 >= *(a3 + 16))
        {
          goto LABEL_129;
        }

        v118 = a3 + 16 * v15;
        *(v118 + 32) = v116;
        *(v118 + 40) = v117;
        v185 = a3;
        v15 = &v185;
        sub_10056D4C4(v78);
        v31 = v185;
        v75 = *(v185 + 16);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = &v31[16 * v75 + 32];
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_130;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_131;
      }

      v90 = &v31[16 * v75];
      v92 = *v90;
      v91 = *(v90 + 1);
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_133;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_136;
      }

      if (v94 >= v86)
      {
        v112 = &v31[16 * v78 + 32];
        v114 = *v112;
        v113 = *(v112 + 1);
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_140;
        }

        if (v81 < v115)
        {
          v78 = v75 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v29 = v166[1];
    v32 = &selRef_connectedCarMainScreenInfo;
    if (v30 >= v29)
    {
      goto LABEL_113;
    }
  }

  v140 = v171;
  v141 = *v170;
  v142 = v181;
  (*v170)(v171, v139, v134);
  v143 = v172;
  v141(v172, v142 + v135, v182);
  v144 = static Date.> infix(_:_:)();
  v15 = v173;
  a3 = *v173;
  v145 = v182;
  (*v173)(v143, v182);
  (a3)(v140, v145);
  sub_100024F64(v142, &qword_10190EBD0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v121 = v169;
  v32 = &selRef_connectedCarMainScreenInfo;
  if ((v144 & 1) == 0)
  {
    goto LABEL_92;
  }

LABEL_103:
  v146 = v178;
  if (v175)
  {
    v147 = *v124;
    v123 = *(v124 + 8);
    *v124 = v123;
    *(v124 + 8) = v147;
    v124 -= 8;
    v122 = v146 + 1;
    if (v146 == -1)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  __break(1u);
LABEL_150:
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
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004ACE44(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      sub_1000E5580();
LABEL_23:
      v5 -= 24;
      do
      {
        v16 = (v5 + 24);
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          v19 = v6 - 24;
          if (v16 != v6)
          {
            v20 = *v19;
            *(v5 + 16) = *(v6 - 1);
            *v5 = v20;
          }

          if (v12 <= v4 || (v6 -= 24, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v17 = v12 - 24;
        if (v16 != v12)
        {
          v18 = *v17;
          *(v5 + 16) = *(v12 - 1);
          *v5 = v18;
        }

        v5 -= 24;
        v12 -= 24;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      sub_1000E5580();
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 24;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 24;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      *(v7 + 2) = *(v13 + 2);
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_1004AD0F8(uint64_t a1, void **a2, void **a3, void **a4)
{
  v109 = type metadata accessor for Date();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v95 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v91 - v11;
  v103 = sub_1000CE6B8(&qword_10191BA20);
  __chkstk_darwin(v103);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v91 - v15;
  v17 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v17 - 8);
  v99 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v97 = (&v91 - v20);
  __chkstk_darwin(v21);
  v106 = (&v91 - v22);
  __chkstk_darwin(v23);
  v98 = (&v91 - v24);
  __chkstk_darwin(v25);
  v101 = &v91 - v26;
  __chkstk_darwin(v27);
  v105 = (&v91 - v29);
  v30 = a2 - a1;
  v31 = v30 / 8;
  v108 = a3;
  v32 = a3 - a2;
  v33 = v32 / 8;
  if (v30 / 8 >= v32 / 8)
  {
    v104 = v28;
    v35 = a4;
    if (a4 != a2 || &a2[v33] <= a4)
    {
      memmove(a4, a2, 8 * v33);
    }

    v107 = &a4[v33];
    if (v32 >= 8 && a2 > v104)
    {
      v105 = (v8 + 56);
      v96 = (v8 + 48);
      v92 = (v8 + 32);
      v93 = (v8 + 8);
      v100 = a4;
      v63 = v106;
LABEL_33:
      v102 = a2;
      v64 = a2 - 1;
      v65 = v107;
      --v108;
      v66 = &selRef_connectedCarMainScreenInfo;
      v98 = v64;
      while (1)
      {
        v67 = *--v65;
        v68 = *v64;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v69 = [v67 v66[414]];
        if (v69)
        {
          v70 = v69;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v71 = 0;
        }

        else
        {
          v71 = 1;
        }

        v72 = *v105;
        v73 = 1;
        (*v105)(v63, v71, 1, v109);
        v74 = [v68 v66[414]];
        v101 = v68;
        if (v74)
        {
          v75 = v74;
          v76 = v97;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v73 = 0;
          v77 = v99;
        }

        else
        {
          v77 = v99;
          v76 = v97;
        }

        v78 = v109;
        v72(v76, v73, 1, v109);
        v79 = *(v103 + 48);
        sub_100335D8C(v106, v13);
        sub_100335D8C(v76, &v13[v79]);
        v80 = *v96;
        if ((*v96)(v13, 1, v78) == 1)
        {
          sub_100024F64(&v13[v79], &qword_10190EBD0);
          v81 = 1;
          v35 = v100;
          v63 = v106;
        }

        else
        {
          sub_1002323DC(v13, v77);
          if (v80(&v13[v79], 1, v109) == 1)
          {
            v82 = v109;
            (*v93)(v77, v109);
            if (v80(&v13[v79], 1, v82) != 1)
            {
LABEL_62:
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            v81 = 0;
          }

          else
          {
            v83 = *v92;
            v84 = v94;
            v85 = v109;
            (*v92)(v94, v77, v109);
            v86 = v95;
            v83(v95, &v13[v79], v85);
            v81 = static Date.> infix(_:_:)();
            v87 = *v93;
            (*v93)(v86, v85);
            v88 = v85;
            v66 = &selRef_connectedCarMainScreenInfo;
            (v87)(v84, v88);
          }

          v35 = v100;
          v63 = v106;
        }

        sub_100024F64(v13, &qword_10190EBD0);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v81)
        {
          v89 = v98;
          if (v108 + 1 != v102)
          {
            *v108 = *v98;
          }

          if (v107 <= v35 || (a2 = v89, v89 <= v104))
          {
            a2 = v89;
            break;
          }

          goto LABEL_33;
        }

        v64 = v98;
        if (v108 + 1 != v107)
        {
          *v108 = *v65;
        }

        v107 = v65;
        --v108;
        if (v65 <= v35)
        {
          v107 = v65;
          a2 = v102;
          break;
        }
      }
    }
  }

  else
  {
    v34 = v28;
    if (a4 != v28 || &v28[v31] <= a4)
    {
      memmove(a4, v28, 8 * v31);
    }

    v107 = &a4[v31];
    v35 = a4;
    if (v30 >= 8 && a2 < v108)
    {
      v36 = a2;
      v106 = (v8 + 56);
      v37 = (v8 + 48);
      v93 = (v8 + 32);
      v97 = (v8 + 8);
      v38 = &selRef_connectedCarMainScreenInfo;
      v39 = v105;
      v99 = v37;
      while (1)
      {
        v104 = v34;
        v102 = v36;
        v40 = *v36;
        v41 = *v35;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v42 = [v40 v38[414]];
        if (v42)
        {
          v43 = v42;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = 0;
        }

        else
        {
          v44 = 1;
        }

        v45 = *v106;
        v46 = 1;
        (*v106)(v39, v44, 1, v109);
        v47 = [v41 v38[414]];
        if (v47)
        {
          v48 = v47;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = 0;
        }

        v49 = v98;
        v50 = v101;
        v51 = v109;
        v45(v101, v46, 1, v109);
        v52 = *(v103 + 48);
        sub_100335D8C(v105, v16);
        sub_100335D8C(v50, &v16[v52]);
        v53 = *v99;
        if ((*v99)(v16, 1, v51) == 1)
        {
          break;
        }

        sub_1002323DC(v16, v49);
        if (v53(&v16[v52], 1, v109) == 1)
        {
          v56 = v109;
          (*v97)(v49, v109);
          if (v53(&v16[v52], 1, v56) != 1)
          {
            goto LABEL_62;
          }

          sub_100024F64(v16, &qword_10190EBD0);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v39 = v105;
          v38 = &selRef_connectedCarMainScreenInfo;
        }

        else
        {
          v100 = v35;
          v57 = v94;
          v58 = *v93;
          v59 = v109;
          (*v93)(v94, v49, v109);
          v60 = v95;
          (v58)(v95, &v16[v52], v59);
          v35 = v100;
          LODWORD(v96) = static Date.> infix(_:_:)();
          v61 = *v97;
          (*v97)(v60, v59);
          v61(v57, v59);
          sub_100024F64(v16, &qword_10190EBD0);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v39 = v105;
          v38 = &selRef_connectedCarMainScreenInfo;
          if (v96)
          {
            goto LABEL_15;
          }
        }

        v54 = v35;
        v55 = v104;
        v62 = v104 == v35++;
        v36 = v102;
        if (!v62)
        {
          goto LABEL_16;
        }

LABEL_17:
        v34 = v55 + 1;
        if (v35 >= v107 || v36 >= v108)
        {
          goto LABEL_56;
        }
      }

      sub_100024F64(&v16[v52], &qword_10190EBD0);
      sub_100024F64(v16, &qword_10190EBD0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v39 = v105;
      v38 = &selRef_connectedCarMainScreenInfo;
LABEL_15:
      v54 = v102;
      v36 = v102 + 1;
      v55 = v104;
      if (v104 == v102)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v55 = *v54;
      goto LABEL_17;
    }

LABEL_56:
    a2 = v34;
  }

  if (a2 != v35 || a2 >= (v35 + ((v107 - v35 + (v107 - v35 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v35, 8 * (v107 - v35));
  }

  return 1;
}

void *sub_1004ADB44(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v2)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_10051126C(0, v2 & ~(v2 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = v19;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            v2 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v5 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v6 = [swift_unknownObjectRetain() customName];
        if (v6 || (v6 = [v5 mapItemName]) != 0)
        {
          v7 = v6;
        }

        else
        {
          v14 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
          if (!v14 || (v15 = v14, v7 = [v14 name], v15, !v7))
          {
            swift_unknownObjectRelease();
            v8 = 0;
            v10 = 0xE000000000000000;
            goto LABEL_15;
          }
        }

        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;
        swift_unknownObjectRelease();

LABEL_15:
        v19 = v4;
        v12 = v4[2];
        v11 = v4[3];
        if (v12 >= v11 >> 1)
        {
          sub_10051126C((v11 > 1), v12 + 1, 1);
          v4 = v19;
        }

        ++v3;
        v4[2] = v12 + 1;
        v13 = &v4[3 * v12];
        v13[4] = v5;
        v13[5] = v8;
        v13[6] = v10;
        if (v2 == v3)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_23:
    v19 = v4;

    sub_1004A9604(&v19);

    v16 = v19[2];
    if (v16)
    {
      v19 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v17 = 32;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 += 24;
        --v16;
      }

      while (v16);

      return v19;
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_1004ADE1C(void **__src, void **__dst, void **a3, void **a4, uint64_t a5)
{
  v5 = __dst - __src;
  v6 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v6 = __dst - __src;
  }

  v7 = v6 >> 3;
  v68 = a3;
  v8 = a3 - __dst;
  v9 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v9 = a3 - __dst;
  }

  v10 = v9 >> 3;
  if (v7 < v9 >> 3)
  {
    v11 = __dst;
    v12 = a4;
    if (a4 != __src || &__src[v7] <= a4)
    {
      v13 = __src;
      memmove(a4, __src, 8 * v7);
      __src = v13;
    }

    v67 = &v12[v7];
    if (v5 < 8)
    {
      goto LABEL_56;
    }

    while (1)
    {
      if (v11 >= v68)
      {
        goto LABEL_56;
      }

      v65 = __src;
      v14 = *v11;
      v15 = *v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v16 = [v14 latitude];
      v17 = [v14 longitude];
      v18 = [v15 latitude];
      v19 = [v15 longitude];
      v20 = v19;
      if (!v16)
      {
        goto LABEL_21;
      }

      if (!v17)
      {
        v17 = v16;
LABEL_21:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_22:
        v33 = v12;
        v34 = v65;
        v35 = v65 == v12++;
        if (v35)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (!v18)
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        break;
      }

      [v16 doubleValue];
      v22 = v21;
      [v17 doubleValue];
      v62 = v12;
      v24 = [objc_allocWithZone(CLLocation) initWithLatitude:v22 longitude:v23];
      [v24 distanceFromLocation:a5];
      v26 = v25;

      [v18 doubleValue];
      v28 = v27;
      [v20 doubleValue];
      v30 = [objc_allocWithZone(CLLocation) initWithLatitude:v28 longitude:v29];
      [v30 distanceFromLocation:a5];
      v32 = v31;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v12 = v62;
      if (v26 >= v32)
      {
        goto LABEL_22;
      }

LABEL_27:
      v33 = v11;
      v34 = v65;
      v35 = v65 == v11++;
      if (v35)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v34 = *v33;
LABEL_12:
      __src = v34 + 1;
      if (v12 >= v67)
      {
        goto LABEL_56;
      }
    }

    v20 = v18;
LABEL_26:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v66 = __src;
  if (a4 != __dst || &__dst[v10] <= a4)
  {
    v36 = __dst;
    v37 = a4;
    memmove(a4, __dst, 8 * v10);
    __dst = v36;
    a4 = v37;
  }

  __src = __dst;
  v63 = a4;
  v67 = &a4[v10];
  if (v8 < 8)
  {
    v12 = a4;
    goto LABEL_56;
  }

  v12 = a4;
  if (__dst > v66)
  {
LABEL_35:
    v60 = __src;
    v38 = __src - 1;
    v39 = v67;
    --v68;
    v64 = __src - 1;
    while (1)
    {
      v40 = *--v39;
      v41 = *v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v42 = [v40 latitude];
      v43 = [v40 longitude];
      v44 = [v41 latitude];
      v45 = [v41 longitude];
      v46 = v45;
      if (v42)
      {
        if (v43)
        {
          if (!v44)
          {
            goto LABEL_48;
          }

          if (!v45)
          {
            v46 = v44;
LABEL_48:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

LABEL_49:
            if (v68 + 1 != v60)
            {
              *v68 = *v64;
            }

            if (v67 <= v12 || (__src = v64, v64 <= v66))
            {
              __src = v64;
              break;
            }

            goto LABEL_35;
          }

          [v42 doubleValue];
          v48 = v47;
          [v43 doubleValue];
          v50 = [objc_allocWithZone(CLLocation) initWithLatitude:v48 longitude:v49];
          [v50 distanceFromLocation:a5];
          v52 = v51;

          [v44 doubleValue];
          v54 = v53;
          [v46 doubleValue];
          v56 = [objc_allocWithZone(CLLocation) initWithLatitude:v54 longitude:v55];
          [v56 distanceFromLocation:a5];
          v58 = v57;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v12 = v63;
          if (v52 < v58)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v43 = v42;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_45:
      if (v68 + 1 != v67)
      {
        *v68 = *v39;
      }

      v67 = v39;
      --v68;
      v38 = v64;
      if (v39 <= v12)
      {
        v67 = v39;
        __src = v60;
        break;
      }
    }
  }

LABEL_56:
  if (__src != v12 || __src >= (v12 + ((v67 - v12 + (v67 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__src, v12, 8 * (v67 - v12));
  }

  return 1;
}

void sub_1004AE440(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_10056D550(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 8 * *v10);
      __dst = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_1004ADE1C(__src, __dst, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_1004AE5E0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v147 = _swiftEmptyArrayStorage;
  v141 = a5;
  if (v8 >= 1)
  {
    v125 = a4;
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      if (v9 + 1 >= v8)
      {
        v138 = v9 + 1;
      }

      else
      {
        v132 = v10;
        v12 = *a3;
        v13 = *(*a3 + 8 * (v9 + 1));
        v145 = *(*a3 + 8 * v9);
        v146 = v13;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v14 = v6;
        v142 = sub_1004AAC38(&v146, &v145, v141);
        if (v6)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_118;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v15 = v11 + 2;
        if (v11 + 2 < v8)
        {
          v138 = v11 + 2;
          v16 = (v12 + 8 * v11 + 16);
          v129 = v8;
          while (1)
          {
            v18 = *(v16 - 1);
            v19 = *v16;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v20 = [v19 latitude];
            v17 = [v19 longitude];
            v21 = [v18 latitude];
            v22 = [v18 longitude];
            v23 = v22;
            if (!v20)
            {
              goto LABEL_10;
            }

            if (!v17)
            {
              break;
            }

            if (!v21)
            {
              goto LABEL_19;
            }

            if (!v22)
            {
              v23 = v21;
LABEL_19:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              if (!v142)
              {
                v10 = v132;
                v6 = v14;
                goto LABEL_34;
              }

              goto LABEL_11;
            }

            [v20 doubleValue];
            v25 = v24;
            [v17 doubleValue];
            v27 = [objc_allocWithZone(CLLocation) initWithLatitude:v25 longitude:v26];
            [v27 distanceFromLocation:v141];
            v29 = v28;

            [v21 doubleValue];
            v31 = v30;
            [v23 doubleValue];
            v33 = [objc_allocWithZone(CLLocation) initWithLatitude:v31 longitude:v32];
            [v33 distanceFromLocation:v141];
            v35 = v34;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            v8 = v129;
            if (((v142 ^ (v29 >= v35)) & 1) == 0)
            {
              v15 = v138;
LABEL_23:
              v6 = v14;
              goto LABEL_24;
            }

LABEL_11:
            ++v16;
            if (v8 == ++v138)
            {
              v15 = v8;
              goto LABEL_23;
            }
          }

          v17 = v20;
LABEL_10:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v142)
          {
            v10 = v132;
            v6 = v14;
            v15 = v138;
            goto LABEL_27;
          }

          goto LABEL_11;
        }

LABEL_24:
        v10 = v132;
        if (v142)
        {
LABEL_27:
          if (v15 < v11)
          {
            goto LABEL_139;
          }

          v138 = v15;
          if (v11 < v15)
          {
            v36 = 8 * v15 - 8;
            v37 = 8 * v11;
            v38 = v11;
            do
            {
              if (v38 != --v15)
              {
                v39 = *a3;
                if (!*a3)
                {
                  goto LABEL_144;
                }

                v40 = *(v39 + v37);
                *(v39 + v37) = *(v39 + v36);
                *(v39 + v36) = v40;
              }

              ++v38;
              v36 -= 8;
              v37 += 8;
            }

            while (v38 < v15);
          }
        }

        else
        {
          v138 = v15;
        }
      }

LABEL_34:
      v41 = a3[1];
      if (v138 >= v41)
      {
        v43 = v138;
        if (v138 < v11)
        {
          goto LABEL_137;
        }

        goto LABEL_63;
      }

      if (__OFSUB__(v138, v11))
      {
        goto LABEL_138;
      }

      if (v138 - v11 >= v125)
      {
        v43 = v138;
LABEL_62:
        if (v43 < v11)
        {
          goto LABEL_137;
        }

        goto LABEL_63;
      }

      v42 = v11 + v125;
      if (__OFADD__(v11, v125))
      {
        goto LABEL_140;
      }

      if (v42 >= v41)
      {
        v42 = a3[1];
      }

      if (v42 < v11)
      {
        break;
      }

      v43 = v138;
      if (v138 == v42)
      {
        goto LABEL_62;
      }

      v133 = v10;
      v136 = v6;
      v143 = *a3;
      v44 = *a3 + 8 * v138 - 8;
      v45 = v138;
      v124 = v11;
      v46 = v11 - v138;
      v127 = v42;
      while (2)
      {
        v139 = v45;
        v48 = v143[v45];
        v128 = v46;
        v130 = v44;
        while (1)
        {
          v49 = *v44;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v50 = [v48 latitude];
          v47 = [v48 longitude];
          v51 = [v49 latitude];
          v52 = [v49 longitude];
          v53 = v52;
          if (!v50)
          {
            break;
          }

          if (!v47)
          {
            v47 = v50;
            break;
          }

          if (v51)
          {
            if (v52)
            {
              [v50 doubleValue];
              v55 = v54;
              [v47 doubleValue];
              v57 = [objc_allocWithZone(CLLocation) initWithLatitude:v55 longitude:v56];
              [v57 distanceFromLocation:v141];
              v59 = v58;

              [v51 doubleValue];
              v61 = v60;
              [v53 doubleValue];
              v63 = [objc_allocWithZone(CLLocation) initWithLatitude:v61 longitude:v62];
              [v63 distanceFromLocation:v141];
              v65 = v64;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              if (v59 >= v65)
              {
                goto LABEL_45;
              }

              goto LABEL_55;
            }

            v53 = v51;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

LABEL_55:
          if (!v143)
          {
            goto LABEL_142;
          }

          v66 = *v44;
          v48 = *(v44 + 8);
          *v44 = v48;
          *(v44 + 8) = v66;
          v44 -= 8;
          if (__CFADD__(v46++, 1))
          {
            goto LABEL_45;
          }
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_45:
        v45 = v139 + 1;
        v44 = v130 + 8;
        v46 = v128 - 1;
        if (v139 + 1 != v127)
        {
          continue;
        }

        break;
      }

      v43 = v127;
      v6 = v136;
      v10 = v133;
      v11 = v124;
      if (v127 < v124)
      {
        goto LABEL_137;
      }

LABEL_63:
      v140 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100097874(0, *(v10 + 2) + 1, 1, v10);
      }

      v69 = *(v10 + 2);
      v68 = *(v10 + 3);
      v70 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        v10 = sub_100097874((v68 > 1), v69 + 1, 1, v10);
      }

      *(v10 + 2) = v70;
      v71 = v10 + 32;
      v72 = &v10[16 * v69 + 32];
      *v72 = v11;
      *(v72 + 1) = v140;
      v147 = v10;
      v144 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (v69)
      {
        v137 = v6;
        v131 = v10 + 32;
        v134 = v10;
        while (1)
        {
          v73 = v70 - 1;
          if (v70 >= 4)
          {
            break;
          }

          if (v70 == 3)
          {
            v74 = *(v10 + 4);
            v75 = *(v10 + 5);
            v84 = __OFSUB__(v75, v74);
            v76 = v75 - v74;
            v77 = v84;
LABEL_83:
            if (v77)
            {
              goto LABEL_128;
            }

            v90 = &v10[16 * v70];
            v92 = *v90;
            v91 = *(v90 + 1);
            v93 = __OFSUB__(v91, v92);
            v94 = v91 - v92;
            v95 = v93;
            if (v93)
            {
              goto LABEL_131;
            }

            v96 = &v71[16 * v73];
            v98 = *v96;
            v97 = *(v96 + 1);
            v84 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v84)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v94, v99))
            {
              goto LABEL_135;
            }

            if (v94 + v99 >= v76)
            {
              if (v76 < v99)
              {
                v73 = v70 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          v100 = &v10[16 * v70];
          v102 = *v100;
          v101 = *(v100 + 1);
          v84 = __OFSUB__(v101, v102);
          v94 = v101 - v102;
          v95 = v84;
LABEL_97:
          if (v95)
          {
            goto LABEL_130;
          }

          v103 = &v71[16 * v73];
          v105 = *v103;
          v104 = *(v103 + 1);
          v84 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v84)
          {
            goto LABEL_133;
          }

          if (v106 < v94)
          {
            goto LABEL_3;
          }

LABEL_104:
          if (v73 - 1 >= v70)
          {
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v111 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v112 = &v71[16 * v73 - 16];
          v113 = *v112;
          v114 = v73;
          v115 = &v71[16 * v73];
          v116 = *(v115 + 1);
          v117 = (v111 + 8 * *v112);
          v118 = (v111 + 8 * *v115);
          v119 = (v111 + 8 * v116);
          v120 = v141;
          sub_1004ADE1C(v117, v118, v119, v144, v120);
          if (v137)
          {

            goto LABEL_118;
          }

          if (v116 < v113)
          {
            goto LABEL_123;
          }

          v10 = v134;
          v121 = *(v134 + 2);
          if (v114 > v121)
          {
            goto LABEL_124;
          }

          *v112 = v113;
          *(v112 + 1) = v116;
          if (v114 >= v121)
          {
            goto LABEL_125;
          }

          v70 = v121 - 1;
          memmove(v115, v115 + 16, 16 * (v121 - 1 - v114));
          *(v134 + 2) = v121 - 1;
          v71 = v131;
          if (v121 <= 2)
          {
LABEL_3:
            v147 = v10;
            v6 = v137;
            goto LABEL_4;
          }
        }

        v78 = &v71[16 * v70];
        v79 = *(v78 - 8);
        v80 = *(v78 - 7);
        v84 = __OFSUB__(v80, v79);
        v81 = v80 - v79;
        if (v84)
        {
          goto LABEL_126;
        }

        v83 = *(v78 - 6);
        v82 = *(v78 - 5);
        v84 = __OFSUB__(v82, v83);
        v76 = v82 - v83;
        v77 = v84;
        if (v84)
        {
          goto LABEL_127;
        }

        v85 = &v10[16 * v70];
        v87 = *v85;
        v86 = *(v85 + 1);
        v84 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v84)
        {
          goto LABEL_129;
        }

        v84 = __OFADD__(v76, v88);
        v89 = v76 + v88;
        if (v84)
        {
          goto LABEL_132;
        }

        if (v89 >= v81)
        {
          v107 = &v71[16 * v73];
          v109 = *v107;
          v108 = *(v107 + 1);
          v84 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v84)
          {
            goto LABEL_136;
          }

          if (v76 < v110)
          {
            v73 = v70 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_83;
      }

LABEL_4:
      v8 = a3[1];
      v9 = v140;
      if (v140 >= v8)
      {
        goto LABEL_115;
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:

    __break(1u);
LABEL_143:

    __break(1u);
LABEL_144:

    __break(1u);
LABEL_145:

    __break(1u);
    goto LABEL_146;
  }

LABEL_115:
  v122 = *a1;
  if (!*a1)
  {
LABEL_146:

    __break(1u);
    return;
  }

  v123 = v141;
  sub_1004AE440(&v147, v122, a3, v123);
  if (v6)
  {

LABEL_118:
  }

  else
  {
  }
}

void sub_1004AEFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v33 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_7:
    v30 = v5;
    v31 = a3;
    v8 = *(v33 + 8 * a3);
    v29 = v6;
    while (1)
    {
      v9 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [v8 latitude];
      v7 = [v8 longitude];
      v11 = [v9 latitude];
      v12 = [v9 longitude];
      v13 = v12;
      if (!v10)
      {
        goto LABEL_5;
      }

      if (!v7)
      {
        v7 = v10;
LABEL_5:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_6:
        a3 = v31 + 1;
        v5 = v30 + 8;
        v6 = v29 - 1;
        if (v31 + 1 == a2)
        {
          return;
        }

        goto LABEL_7;
      }

      if (!v11)
      {
        goto LABEL_15;
      }

      if (!v12)
      {
        break;
      }

      [v10 doubleValue];
      v15 = v14;
      [v7 doubleValue];
      v17 = [objc_allocWithZone(CLLocation) initWithLatitude:v15 longitude:v16];
      [v17 distanceFromLocation:a5];
      v19 = v18;

      [v11 doubleValue];
      v21 = v20;
      [v13 doubleValue];
      v23 = [objc_allocWithZone(CLLocation) initWithLatitude:v21 longitude:v22];
      [v23 distanceFromLocation:a5];
      v25 = v24;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v19 >= v25)
      {
        goto LABEL_6;
      }

LABEL_16:
      if (!v33)
      {
        __break(1u);
        return;
      }

      v26 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v26;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_6;
      }
    }

    v13 = v11;
LABEL_15:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }
}

void sub_1004AF27C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000CE6B8(&qword_1019151C0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_1004AE5E0(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1004AEFF8(0, v3, 1, a1, v4);
  }
}

void sub_1004AF3CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10056DDF4(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1004AF27C(v8, v7);

  specialized ContiguousArray._endMutation()();
}