uint64_t sub_1004CA958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[8] = type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_1004CA9F8, v9, v8);
}

uint64_t sub_1004CA9F8()
{
  v1 = v0[4];
  type metadata accessor for MapsSyncStore();
  v0[12] = static MapsSyncStore.sharedStore.getter();
  if (v1 >> 62)
  {
    type metadata accessor for MapsSyncObject();

    v2 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
    v2 = v0[4];
  }

  v0[13] = v2;
  v5 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1004CAB30;

  return v5(v2);
}

uint64_t sub_1004CAB30()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_1004CADFC;
  }

  else
  {
    v6 = v2[12];

    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_1004CAC50;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004CAC50()
{
  swift_unknownObjectWeakInit();

  return _swift_task_switch(sub_1004CACBC, 0, 0);
}

uint64_t sub_1004CACBC()
{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CAD48, v2, v1);
}

uint64_t sub_1004CAD48()
{
  v1 = v0[15];
  v2 = v0[6];

  sub_1004CB158((v0 + 3), v2);
  if (v1)
  {
  }

  else
  {
    swift_unknownObjectWeakDestroy();
    v4 = v0[10];
    v5 = v0[11];

    return _swift_task_switch(sub_1004CE0B4, v4, v5);
  }
}

uint64_t sub_1004CADFC()
{
  v1 = *(v0 + 96);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FF58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "FavoriteCollectionHandler: Error removing items: %@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  swift_unknownObjectWeakInit();

  return _swift_task_switch(sub_1004CAFAC, 0, 0);
}

uint64_t sub_1004CAFAC()
{
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CB038, v2, v1);
}

uint64_t sub_1004CB038()
{
  v1 = v0[6];

  sub_1004CB46C((v0 + 2), v1);
  swift_unknownObjectWeakDestroy();
  v2 = v0[10];
  v3 = v0[11];

  return _swift_task_switch(sub_1004CB0F0, v2, v3);
}

uint64_t sub_1004CB0F0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004CB158(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  sub_100014C84(0, &qword_10190B4F0);
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004CDE28;
  *(v7 + 24) = v6;
  v25 = sub_10025D234;
  v26 = v7;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100060ED8;
  v24 = &unk_10161DB08;
  v8 = _Block_copy(&aBlock);

  v9 = v4;

  v10 = v5;
  v11 = v8;
  v12 = v10;
  label = dispatch_queue_get_label(v12);
  v14 = dispatch_queue_get_label(0);
  if (label == v14)
  {

LABEL_8:
    v16 = objc_autoreleasePoolPush();
    v11[2](v11);
    objc_autoreleasePoolPop(v16);
    goto LABEL_11;
  }

  if (label && v14)
  {
    v15 = strcmp(label, v14);

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  dispatch_sync(v12, v11);
LABEL_11:

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v9;
    v25 = sub_10003893C;
    v26 = v18;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100038868;
    v24 = &unk_10161DB58;
    v19 = _Block_copy(&aBlock);
    v20 = v9;

    [v20 rebuildContent:v19];
    _Block_release(v19);
    if (a2)
    {
      a2(0);
    }
  }
}

void sub_1004CB46C(uint64_t a1, void (*a2)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  sub_100014C84(0, &qword_10190B4F0);
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004CE074;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10025D234;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100060ED8;
  aBlock[3] = &unk_10161DBD0;
  v8 = _Block_copy(aBlock);

  v9 = v4;

  v10 = v5;
  v11 = v8;
  v12 = v10;
  label = dispatch_queue_get_label(v12);
  v14 = dispatch_queue_get_label(0);
  if (label == v14)
  {

LABEL_8:
    v16 = objc_autoreleasePoolPush();
    v11[2](v11);
    objc_autoreleasePoolPop(v16);
    goto LABEL_11;
  }

  if (label && v14)
  {
    v15 = strcmp(label, v14);

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  dispatch_sync(v12, v11);
LABEL_11:

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v18 = objc_opt_self();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 GEOErrorWithCode:0 reason:v19];

      a2(v20);
    }
  }
}

void FavoriteCollectionHandler.updateTitle(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = [v5 itemForMapItem:{a3, v10}];
  if (v13)
  {
    v14 = v13;

    dispatch thunk of CollectionPlaceItem.customName.setter();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a4;
    v16[6] = a5;
    sub_1000D88A8(a4, a5);
    sub_10020AAE4(0, 0, v12, &unk_10120B448, v16);
  }

  else if (a4)
  {
    v17 = objc_opt_self();
    v18 = String._bridgeToObjectiveC()();
    v21 = [v17 GEOErrorWithCode:0 reason:v18];

    a4(v21);
    v19 = v21;
  }
}

uint64_t sub_1004CBA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1004CBA2C, 0, 0);
}

uint64_t sub_1004CBA2C()
{
  v1 = v0[2];
  type metadata accessor for MapsSyncStore();
  v0[5] = static MapsSyncStore.sharedStore.getter();
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_1011E47B0;
  *(v2 + 32) = v1;
  v6 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1004CBB38;

  return v6(v2);
}

uint64_t sub_1004CBB38()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1004CBD64;
  }

  else
  {
    v4 = *(v2 + 40);

    v3 = sub_1004CBC58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004CBC58()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CBCEC, v2, v1);
}

uint64_t sub_1004CBCEC()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004CBD64()
{
  v1 = *(v0 + 40);

  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FF58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "FavoriteCollectionHandler: Error editing item name: %@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CBF38, v9, v8);
}

uint64_t sub_1004CBF38()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(*(v0 + 64));
  }

  return _swift_task_switch(sub_10048BB58, 0, 0);
}

id FavoriteCollectionHandler.numberOfItems.getter()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount + 8))
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount)];
  }
}

uint64_t static FavoriteCollectionHandler.fetchPlaceCount()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1004CC204;

  return sub_1004CD1C0();
}

uint64_t sub_1004CC204(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t sub_1004CC348()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = ObjectType;
  v7 = v0;
  sub_10020AAE4(0, 0, v4, &unk_10120B4D8, v6);
}

uint64_t sub_1004CC458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1004CC4FC;

  return sub_1004CD1C0();
}

uint64_t sub_1004CC4FC(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_1004CC6E0;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 32) = a1;
    v7 = sub_1004CC638;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004CC638()
{
  v1 = *(v0 + 32);
  *(v0 + 57) = *(v0 + 56) & 1;
  *(v0 + 40) = v1;
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CC780, v3, v2);
}

uint64_t sub_1004CC6E0()
{
  *(v0 + 57) = 1;
  *(v0 + 40) = 0;
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004CC780, v2, v1);
}

uint64_t sub_1004CC780()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v4 = v3 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_placeCount;
  *v4 = v2;
  *(v4 + 8) = v1;
  if ((v1 & 1) == 0)
  {
    [*(v0 + 16) notifyObserversInfoUpdated];
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t FavoriteCollectionHandler.storeSubscriptionTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_storeSubscriptionTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1004CCA2C()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "FavoriteCollectionHandler: Error fetching contents: %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

id FavoriteCollectionHandler.__allocating_init(collection:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithCollection:a1];
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_1004CCCC8(unint64_t a1, uint64_t a2)
{
  v37 = a2;
  v41 = type metadata accessor for UUID();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000CE6B8(&unk_101926870);
  __chkstk_darwin(v36);
  v6 = &v27 - v5;
  v7 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v7 - 8);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v27 - v10;
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  if (a1 >> 62)
  {
LABEL_23:
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v38 = a1 & 0xC000000000000001;
  v15 = (v3 + 48);
  v28 = (v3 + 48);
  v29 = (v3 + 32);
  v32 = (v3 + 8);
  v34 = a1;
  while (1)
  {
    if (v39 == v14)
    {
      return 0;
    }

    if (v38)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v35 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v17 = *(a1 + 8 * v14 + 32);
    }

    v18 = v17;
    dispatch thunk of MapsSyncObject.identifier.getter();
    v19 = v13;
    v20 = v40;
    dispatch thunk of MapsSyncObject.identifier.getter();
    v21 = *(v36 + 48);
    sub_100240034(v19, v6);
    sub_100240034(v20, &v6[v21]);
    v3 = *v15;
    if ((*v15)(v6, 1, v41) == 1)
    {
      break;
    }

    v13 = v19;
    v22 = v33;
    sub_100240034(v6, v33);
    if ((v3)(&v6[v21], 1, v41) != 1)
    {
      v23 = v30;
      v24 = &v6[v21];
      v25 = v41;
      (*v29)(v30, v24, v41);
      sub_100041438(&qword_101916EA8, &type metadata accessor for UUID);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v3 = *v32;
      (*v32)(v23, v25);
      sub_100024F64(v40, &unk_101918E50);
      sub_100024F64(v13, &unk_101918E50);
      (v3)(v22, v25);
      v15 = v28;
      sub_100024F64(v6, &unk_101918E50);

      if (v31)
      {
        return v14;
      }

      goto LABEL_6;
    }

    v3 = &unk_101918E50;
    sub_100024F64(v40, &unk_101918E50);
    sub_100024F64(v19, &unk_101918E50);
    (*v32)(v22, v41);
LABEL_5:
    sub_100024F64(v6, &unk_101926870);

LABEL_6:
    v16 = __OFADD__(v14++, 1);
    a1 = v34;
    if (v16)
    {
      goto LABEL_22;
    }
  }

  sub_100024F64(v20, &unk_101918E50);
  sub_100024F64(v19, &unk_101918E50);
  v13 = v19;
  if ((v3)(&v6[v21], 1, v41) != 1)
  {
    goto LABEL_5;
  }

  sub_100024F64(v6, &unk_101918E50);

  return v14;
}

uint64_t sub_1004CD1DC()
{
  type metadata accessor for CollectionPlaceItemRequest();
  v0[2] = CollectionPlaceItemRequest.__allocating_init()();
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  *(v1 + 56) = &type metadata for Int16;
  *(v1 + 64) = &protocol witness table for Int16;
  *(v1 + 32) = 1;
  static MapsSyncQueryPredicate.withFormat(_:_:)();

  v2 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v3 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[3] = v3;
  v6 = (&async function pointer to dispatch thunk of MapsSyncRequest.count(options:) + async function pointer to dispatch thunk of MapsSyncRequest.count(options:));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1004CD358;

  return v6(v3);
}

uint64_t sub_1004CD358(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004CD4B4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 16);

    v6 = *(v4 + 8);

    return v6(a1, 0);
  }
}

uint64_t sub_1004CD4B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004CD52C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004CD588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1004CBA08(a1, v4, v5, v6, v7, v8);
}

void sub_1004CD650()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_modficationCount);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_modficationCount) = v4;
  }
}

unint64_t sub_1004CD674(unint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&unk_101926870);
  __chkstk_darwin(v7);
  v69 = v52 - v8;
  v9 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v52 - v13;
  __chkstk_darwin(v15);
  v17 = v52 - v16;
  v18 = *a1;
  v19 = v68;
  result = sub_1004CCCC8(*a1, a2);
  if (v19)
  {
    return v14;
  }

  v66 = v17;
  v58 = v11;
  v59 = v14;
  v62 = v7;
  v63 = v4;
  v55 = a1;
  if (v21)
  {
    if (v18 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52[1] = 0;
  v22 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v23 = v66;
  v61 = v67 + 48;
  v53 = (v67 + 32);
  v54 = v6;
  v57 = (v67 + 8);
  v24 = v63;
  v25 = v59;
  v65 = a2;
  while (1)
  {
    if (v18 >> 62)
    {
      if (v22 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v14;
      }
    }

    else if (v22 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v14;
    }

    v68 = v22;
    v64 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v27 = *(v18 + 8 * v22 + 32);
LABEL_16:
    v67 = v27;
    dispatch thunk of MapsSyncObject.identifier.getter();
    dispatch thunk of MapsSyncObject.identifier.getter();
    v28 = *(v62 + 48);
    v29 = v69;
    sub_100240034(v23, v69);
    sub_100240034(v25, v29 + v28);
    v30 = *v61;
    if ((*v61)(v29, 1, v24) == 1)
    {
      sub_100024F64(v25, &unk_101918E50);
      v31 = v23;
      v32 = v69;
      sub_100024F64(v31, &unk_101918E50);
      v33 = v30(v32 + v28, 1, v24);
      v34 = v68;
      if (v33 != 1)
      {
        goto LABEL_21;
      }

      sub_100024F64(v69, &unk_101918E50);
    }

    else
    {
      v60 = v14;
      v35 = v69;
      v36 = v58;
      sub_100240034(v69, v58);
      if (v30(v35 + v28, 1, v24) == 1)
      {
        v25 = v59;
        sub_100024F64(v59, &unk_101918E50);
        sub_100024F64(v66, &unk_101918E50);
        (*v57)(v36, v24);
        v14 = v60;
        v34 = v68;
LABEL_21:
        sub_100024F64(v69, &unk_101926870);

LABEL_22:
        if (v14 == v34)
        {
          v23 = v66;
          v26 = __OFADD__(v14++, 1);
          if (v26)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v64)
          {
            v37 = v24;
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            v44 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14 >= v44)
            {
              goto LABEL_56;
            }

            if (v34 >= v44)
            {
              goto LABEL_57;
            }

            v37 = v24;
            v45 = *(v18 + 32 + 8 * v34);
            v38 = *(v18 + 32 + 8 * v14);
            v39 = v45;
          }

          v46 = v39;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
          {
            v18 = sub_1000564AC(v18);
            v47 = (v18 >> 62) & 1;
          }

          else
          {
            LODWORD(v47) = 0;
          }

          v48 = v18 & 0xFFFFFFFFFFFFFF8;
          v49 = *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20);
          *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20) = v46;

          if ((v18 & 0x8000000000000000) != 0 || v47)
          {
            v18 = sub_1000564AC(v18);
            v48 = v18 & 0xFFFFFFFFFFFFFF8;
          }

          v24 = v37;
          v23 = v66;
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          if (v34 >= *(v48 + 16))
          {
            goto LABEL_54;
          }

          v50 = v48 + 8 * v34;
          v51 = *(v50 + 32);
          *(v50 + 32) = v38;

          *v55 = v18;
          v26 = __OFADD__(v14++, 1);
          if (v26)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_41;
      }

      v40 = v54;
      v41 = v69;
      (*v53)(v54, v69 + v28, v63);
      sub_100041438(&qword_101916EA8, &type metadata accessor for UUID);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *v57;
      v43 = v63;
      (*v57)(v40, v63);
      v25 = v59;
      sub_100024F64(v59, &unk_101918E50);
      sub_100024F64(v66, &unk_101918E50);
      v42(v36, v43);
      v24 = v43;
      sub_100024F64(v41, &unk_101918E50);

      v14 = v60;
      v34 = v68;
      if ((v56 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v23 = v66;
LABEL_41:
    v26 = __OFADD__(v34, 1);
    v22 = v34 + 1;
    if (v26)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1004CDD54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_1004CA958(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1004CDE2C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1004CDE84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_1004C8F38(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1004CDF58()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_modficationCount);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC4Maps25FavoriteCollectionHandler_modficationCount) = v4;
  }
}

uint64_t sub_1004CDF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1004CC458(a1, v4, v5, v6);
}

id sub_1004CE29C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EVChargerUtility();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004CE2F4(uint64_t a1, uint64_t a2, int a3, char a4)
{
  switch(a3)
  {
    case 2:
      if (a4)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v21._object = 0x800000010123C720;
        v12._countAndFlagsBits = 0x6C69617661206F6ELL;
        v12._object = 0xEF7974696C696261;
        v13._countAndFlagsBits = 0xD00000000000002ALL;
        v13._object = 0x800000010123C6F0;
        v21._countAndFlagsBits = 0xD00000000000002CLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, qword_1019600D8, v12, v21);
        v11 = static String.localizedStringWithFormat(_:_:)();
        goto LABEL_16;
      }

      if (qword_101906768 == -1)
      {
        goto LABEL_15;
      }

LABEL_18:
      swift_once();
LABEL_15:
      v15 = qword_1019600D8;
      v16 = String._bridgeToObjectiveC()();
      v17 = String._bridgeToObjectiveC()();
      v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000CE6B8(&unk_10190D5C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1011E1D60;
      *(v19 + 56) = &type metadata for UInt;
      *(v19 + 64) = &protocol witness table for UInt;
      *(v19 + 32) = a1;
      *(v19 + 96) = &type metadata for UInt;
      *(v19 + 104) = &protocol witness table for UInt;
      *(v19 + 72) = a2;
      v11 = static String.localizedStringWithFormat(_:_:)();

LABEL_16:

      return v11;
    case 1:
      if (qword_101906768 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    case 0:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v6 = qword_1019600D8;
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000CE6B8(&unk_10190D5C0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1011E1D30;
      *(v10 + 56) = &type metadata for UInt;
      *(v10 + 64) = &protocol witness table for UInt;
      *(v10 + 32) = a2;
      v11 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_16;
  }

  sub_1004CE758();
  v14 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return 0;
}

unint64_t sub_1004CE758()
{
  result = qword_10191F268;
  if (!qword_10191F268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10191F268);
  }

  return result;
}

id sub_1004CE7A4(void *a1, char a2)
{
  v4 = [objc_opt_self() sharedSearchVirtualGarageManager];
  v5 = [v4 virtualGarage];

  if (v5)
  {
    v6 = [objc_opt_self() getRealTimeEVChargerInfo:v5 charger:a1];
    v7 = [v6 total];
    v8 = [v6 available];
    result = [v6 status];
    if ((v8 | v7) < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = sub_1004CE2F4(v8, v7, result, a2 & 1);

      return v10;
    }
  }

  else
  {
    v11 = [a1 totalEVChargers];
    v12 = [a1 availableEVChargers];
    v13 = [a1 _realTimePlugAvailabilityStatus];

    return sub_1004CE2F4(v12, v11, v13, a2 & 1);
  }

  return result;
}

uint64_t sub_1004CE920(uint64_t a1)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2 = qword_1019600D8;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

void sub_1004CEAA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1004CEB10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004D020C(&qword_101922CB0, type metadata accessor for HomeUserGuidesSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots);
}

void *sub_1004CEBF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModelProvider);
  swift_getKeyPath();
  sub_1004D020C(&qword_101922CB0, type metadata accessor for HomeUserGuidesSnapshotProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(*(v1 + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__cellSnapshots) + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModel);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  v4 = sub_100062A9C();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 identifierPathByAppendingIdentifier:v5];

  sub_1000CE6B8(&qword_101915FE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E1D30;
  *(v7 + 64) = type metadata accessor for HomeUserGuidesCollectionRowCellModel();
  v8 = sub_1004D020C(&qword_1019239A8, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  result = v7;
  *(v7 + 72) = v8;
  *(v7 + 32) = v6;
  *(v7 + 40) = v3;
  return result;
}

void sub_1004CEDA4(uint64_t a1)
{
  if (!a1)
  {
    v9 = v1;
    v10 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10003E48C(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v8);
      v5 = swift_unknownObjectWeakLoadStrong();
      sub_10003E4E8(v8);
      if (v5)
      {
        sub_1000CE6B8(&qword_10191A630);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1011E1D30;
        *(inited + 32) = v4;
        *(inited + 40) = &off_10161DEA8;
        v7 = v4;
        sub_10005B5D4(inited, 1);

        swift_unknownObjectRelease();
        swift_setDeallocating();
      }

      else
      {
      }
    }
  }
}

void sub_1004CEEA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListCollectionsSectionController_cellModel);
}

id sub_1004CEEE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListCollectionsSectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004CEF68(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a2 || !a1)
  {
    goto LABEL_12;
  }

  if (a2 >> 62)
  {
    v18 = a1;
    v19 = a6;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    a6 = v19;
    v21 = v20;
    a1 = v18;
    if (v21 < 1)
    {
      goto LABEL_12;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    v8 = a6;
    v9 = a1;
    v10 = objc_allocWithZone(CuratedCollectionShareItemSource);
    sub_100014C84(0, &unk_101918390);
    v11 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v13 = [v10 initWithPlaceCollection:v11 refinedMapItems:isa];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v15 = Strong, sub_10003E48C(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v36), v15, v16 = swift_unknownObjectWeakLoadStrong(), sub_10003E4E8(v36), v16) && (v17 = [v16 homeShareDelegate], swift_unknownObjectRelease(), v17))
    {
      [v17 shareItem:v13 presentationOptions:v8 completion:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

LABEL_12:
  if (qword_101906710 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100021540(v22, qword_10195FFD0);
  v23 = a4;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36[0] = v27;
    *v25 = 136315394;
    v28 = [v23 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10004DEB8(v29, v31, v36);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2112;
    if (a3)
    {
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v33;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    *(v25 + 14) = v33;
    *v26 = v34;
    _os_log_impl(&_mh_execute_header, oslog, v24, "Failed to resolve curated collection with id: %s error: %@", v25, 0x16u);
    sub_100024F64(v26, &qword_1019144F0);

    sub_10004E3D0(v27);
  }

  else
  {
  }
}

void sub_1004CF334(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1004D0514;
      *(v10 + 24) = v9;
      aBlock[4] = sub_1004D051C;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004CEAA8;
      aBlock[3] = &unk_10161DF88;
      v11 = _Block_copy(aBlock);

      [a3 deleteCollection:v11];
      _Block_release(v11);
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      sub_1004D0558(a3, a5, 2038, 2009, 2081, 2088);
    }
  }
}

uint64_t sub_1004CF4BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v11._object = 0x800000010121E480;
  v3._countAndFlagsBits = 0x6975472072756F59;
  v3._object = 0xEB00000000736564;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x800000010123C7D0;
  v11._countAndFlagsBits = 0xD000000000000035;
  *a1 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, qword_1019600D8, v3, v11);
  *(a1 + 16) = 256;
  swift_unknownObjectWeakInit();
  v10 = sub_1000CE6B8(&qword_101915FE8);
  v8 = v1;
  v9 = &off_10161DE98;
  sub_10005E838(&v8, v10);
  DynamicType = swift_getDynamicType();
  v6 = v1;
  sub_10004E3D0(&v8);
  if (swift_isClassType() && DynamicType)
  {
    v8 = v6;
    v9 = &off_10161DE98;
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_unknownObjectWeakAssign();
    result = swift_unknownObjectRelease();
  }

  else
  {

    result = swift_unknownObjectWeakAssign();
  }

  *(a1 + 32) = 0xD000000000000013;
  *(a1 + 40) = 0x800000010123C7F0;
  return result;
}

uint64_t sub_1004CF658(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v55 - v15;
  v61 = v10[13];
  v62 = v10 + 13;
  v61(&v55 - v15, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v9, v14);
  v17 = v10[2];
  v65 = v16;
  v66 = v9;
  v17(v12, v16, v9);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v63 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(v2 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &v67);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v67);
  if (Strong)
  {
    v56 = v4;
    v59 = a1;
    v60 = v6;
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v2)
    {
      goto LABEL_22;
    }

    v19 = v2;
    v20 = sub_10053C718();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v24 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v24)
    {
      v25 = v21;
      v55 = v2;
      v26 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v27 = v20;
      sub_1000F0120(v24);
      sub_100368A2C(v27, v25, v23, 0, v26, &v67);

      swift_bridgeObjectRelease_n();
      if (v67)
      {
        sub_100024F64(&v67, &unk_101915FD0);
        (*(v58 + 104))(v57, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v56);
        UICollectionLayoutListConfiguration.headerMode.setter();
        swift_unknownObjectRelease();
        v2 = v55;
        v6 = v60;
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
      v2 = v55;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    v6 = v60;
    sub_100024F64(&v67, &unk_101915FD0);
  }

LABEL_10:
  v28 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  sub_100014C84(0, &unk_101910E00);
  v29 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v29 contentInsets];
  [v29 setContentInsets:0.0];
  [v29 contentInsets];
  [v29 setContentInsets:?];
  v30 = v66;
  (v61)(v12, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v66);
  v31 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  v32 = v10[1];
  v32(v12, v30);
  if (v31)
  {
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  }

  [v29 contentInsets];
  [v29 setContentInsets:?];
  [v29 contentInsets];
  [v29 setContentInsets:?];
  (*(v64 + 8))(v8, v6);
  v32(v65, v66);
  sub_10003E48C(v2 + v63, &v67);
  v33 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v67);
  if (!v33)
  {
    return v29;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && v2)
  {
    v34 = v2;
    v35 = sub_10053C718();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    v39 = *(v33 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v39)
    {
      v40 = v36;
      v41 = *(v33 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v42 = v35;
      sub_1000F0120(v39);
      sub_100368A2C(v42, v40, v38, 0, v41, &v67);

      swift_bridgeObjectRelease_n();
      if (v67)
      {
        sub_100024F64(&v67, &unk_101915FD0);
        v43 = objc_opt_self();
        v44 = [v43 fractionalWidthDimension:1.0];
        [objc_opt_self() estimatedHeight];
        v45 = [v43 estimatedDimension:?];
        v46 = [objc_opt_self() sizeWithWidthDimension:v44 heightDimension:v45];

        v47 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v46 elementKind:UICollectionElementKindSectionHeader alignment:1];
        static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
        v49 = v48;
        v50 = v47;
        [v50 setContentInsets:{0.0, v49, 0.0, v49}];

        swift_unknownObjectRelease();
        sub_1000CE6B8(&qword_101908400);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1011E47B0;
        *(v51 + 32) = v50;
        sub_100014C84(0, &unk_101910E10);
        v52 = v50;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v29 setBoundarySupplementaryItems:isa];

        return v29;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    sub_100024F64(&v67, &unk_101915FD0);
    return v29;
  }

LABEL_22:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004CFF58()
{
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_10003E4E8(v3);
  if (Strong)
  {
    [Strong homeSectionHeaderButtonTapped:3];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004CFFCC()
{
  sub_1004CF4BC(v7);
  if (!v8)
  {
    v4 = &qword_101915FF0;
    v5 = v7;
    return sub_100024F64(v5, v4);
  }

  sub_1004D019C(&v9, v6);
  sub_100266460(v7);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v4 = &qword_101915FF8;
    v5 = v6;
    return sub_100024F64(v5, v4);
  }

  swift_unknownObjectRetain();
  swift_getObjectType();
  v0 = swift_conformsToProtocol2();
  if (v0)
  {
    v1 = v0;
    sub_100024F64(v6, &qword_101915FF8);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D0110()
{
  sub_1004CF4BC(v2);
  if (v2[1])
  {
    v0 = v3;
    sub_100266460(v2);
  }

  else
  {
    sub_100024F64(v2, &qword_101915FF0);
    return 0;
  }

  return v0;
}

uint64_t sub_1004D019C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101915FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D020C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1004D0254(void *a1, id a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &a3[OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex];
  *v7 = 0;
  v7[8] = 1;
  ObservationRegistrar.init()();
  *&a3[OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel_snapshotProvider] = a1;
  swift_unknownObjectWeakInit();
  v18 = sub_1000CE6B8(&unk_1019239B0);
  v16 = a2;
  v17 = &off_10161DEF0;
  sub_10005E838(&v16, v18);
  DynamicType = swift_getDynamicType();
  v9 = a1;
  v10 = a2;
  sub_10004E3D0(&v16);
  if (swift_isClassType() && DynamicType)
  {
    v16 = v10;
    v17 = &off_10161DEF0;
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectWeakAssign();
  }

  sub_1004D049C(v19, &a3[OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__delegate]);
  *&a3[OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__viewModels] = &_swiftEmptyArrayStorage;
  *v7 = 0;
  v7[8] = 1;
  v15.receiver = a3;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "init");
  swift_allocObject();
  v12 = swift_unknownObjectWeakInit();
  __chkstk_darwin(v12);
  v13 = v11;
  sub_1000CE6B8(&qword_101917228);
  withObservationTracking<A>(_:onChange:)();

  sub_100291234(v16);

  return v13;
}

uint64_t sub_1004D049C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101917230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1004D0558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_opt_self();
  [v12 captureUserAction:a3 target:8 value:0];
  [v12 captureUserAction:a4 target:8 value:0];
  result = [a1 handlerType];
  if (result == 4)
  {
    v15 = objc_opt_self();
    v14 = "captureCuratedCollectionAction:withCollectionHandler:verticalIndex:";
    v16 = a6;
    v17 = a1;
    v18 = a2;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v14 = "captureUserAction:target:value:";
    v15 = v12;
    v16 = a5;
    v17 = 8;
    v18 = 0;
  }

  return [v15 v14];
}

int64_t sub_1004D085C(int64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    goto LABEL_28;
  }

  v7 = a3;
  v4 = a2;
  v5 = result;
  if (result)
  {
    result = sub_100511768(0, result, 0);
    v3 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    v9 = v5;
    do
    {
      v10 = _swiftEmptyArrayStorage[3];
      v6 = v8 + 1;
      if (v8 >= v10 >> 1)
      {
        result = sub_100511768((v10 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6;
      _swiftEmptyArrayStorage[v8++ + 4] = _swiftEmptyArrayStorage;
      --v9;
    }

    while (v9);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    goto LABEL_29;
  }

  v6 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (!v4)
    {
      while (1)
      {
        __break(1u);
LABEL_32:
        result = sub_10041662C(v3);
        v3 = result;
LABEL_13:
        v11 = 0;
        v7 &= 0xC000000000000001;
        v12 = 0x8000000000000000;
        while (v12 || v4 != -1)
        {
          v13 = v11 / v4;
          if (v11 / v4 < v5)
          {
            if (v7)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_25:
                __break(1u);
                break;
              }
            }

            else
            {

              if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_25;
              }
            }

            if (v13 >= v3[2])
            {
              goto LABEL_27;
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v3[v13 + 4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[v13 + 4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          ++v12;
          ++v11;
          if (!--v6)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        result = _CocoaArrayWrapper.endIndex.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
      }

      v6 = result;
      if (!result)
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

LABEL_34:
  v14 = 0;
  v15 = v3[2];
  while (1)
  {
    if (v15 == v14)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v14 >= v3[2])
    {
      break;
    }

    v16 = v3[v14 + 4];
    if (v16 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      ++v14;
      if (result)
      {
LABEL_39:

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100511768(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_100511768((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        _swiftEmptyArrayStorage[v18 + 4] = v16;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      ++v14;
      if (result)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_1004D0B44(int64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v36 = type metadata accessor for NearbyTileViewModel();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    goto LABEL_40;
  }

  if (a1)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100511A60(0, a1, 0);
    v3 = v37;
    v8 = v37[2];
    v9 = a1;
    do
    {
      v37 = v3;
      v10 = v3[3];
      if (v8 >= v10 >> 1)
      {
        sub_100511A60((v10 > 1), v8 + 1, 1);
        v3 = v37;
      }

      v3[2] = v8 + 1;
      v3[v8++ + 4] = _swiftEmptyArrayStorage;
      --v9;
    }

    while (v9);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = *(v34 + 16);
  if (v4)
  {
    if (!a2)
    {
      goto LABEL_41;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v11 = 0;
      v31 = v3 + 4;
      v32 = v33 + 16;
      v29 = (v33 + 32);
      v30 = v4;
      while (v11 != 0x8000000000000000 || a2 != -1)
      {
        v13 = v11 / a2;
        if (v11 / a2 < a1)
        {
          v14 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v15 = *(v33 + 72);
          (*(v33 + 16))(v35, v34 + v14 + v15 * v11, v36);
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          if (v13 >= v3[2])
          {
            goto LABEL_39;
          }

          v16 = v31;
          v17 = v31[v13];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16[v13] = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = sub_100358948(0, *(v17 + 2) + 1, 1, v17);
            v31[v13] = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_100358948(v19 > 1, v20 + 1, 1, v17);
            v31[v13] = v17;
          }

          *(v17 + 2) = v20 + 1;
          (*v29)(&v17[v14 + v20 * v15], v35, v36);
          v4 = v30;
        }

        if (v4 == ++v11)
        {
          goto LABEL_26;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v3 = sub_1004166CC(v3);
    }
  }

LABEL_26:
  v21 = 0;
  v22 = v3[2];
  v4 = _swiftEmptyArrayStorage;
  while (v22 != v21)
  {
    if (v21 >= v3[2])
    {
      __break(1u);
      goto LABEL_37;
    }

    v23 = v3[v21++ + 4];
    if (*(v23 + 16))
    {

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v37 = v4;
      if ((v24 & 1) == 0)
      {
        sub_100511A60(0, v4[2] + 1, 1);
        v4 = v37;
      }

      v26 = v4[2];
      v25 = v4[3];
      a2 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_100511A60((v25 > 1), v26 + 1, 1);
        v4 = v37;
      }

      v4[2] = a2;
      v4[v26 + 4] = v23;
    }
  }

  return v4;
}

uint64_t sub_1004D0EEC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return dispatch thunk of ListCellViewModel.id.setter();
}

uint64_t sub_1004D0FF8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories) = a1;

  swift_unknownObjectWeakAssign();
  *(v4 + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_singleColumnLayout) = a3;
  *(v4 + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_searchAlongRoute) = a4;

  return sub_1004D1714();
}

uint64_t sub_1004D1128()
{
  v1 = v0;
  v2 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SearchHomeCategoriesViewCell();
  v17.receiver = v0;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v10 = [v0 contentView];
  [v10 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v11 = OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_currentContainerSize;
  swift_beginAccess();
  v12 = *(v3 + 16);
  v12(v5, &v1[v11], v2);
  sub_1004D4960(&qword_101922B90, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v3;
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v10 & 1) == 0)
  {
    v12(v5, v8, v2);
    swift_beginAccess();
    (*(v16 + 40))(&v1[v11], v5, v2);
    swift_endAccess();
    sub_1004D1714();
  }

  return (v13)(v8, v2);
}

uint64_t sub_1004D1714()
{
  v1 = 0;
  v2 = sub_1000CE6B8(&qword_101923A88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v66 - v4;
  v72 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ColumnViewConfig();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for UUID();
  v8 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NearbyTileViewModel();
  v84 = *(v82 - 8);
  __chkstk_darwin(v82);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_101923A90);
  Description = v12[-1].Description;
  __chkstk_darwin(v12);
  v15 = &v66 - v14;
  v16 = sub_1000CE6B8(&qword_101923A98);
  __chkstk_darwin(v16);
  v20 = *(v0 + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_searchAlongRoute);
  v77 = v0;
  if (v20 != 1)
  {
    v32 = *(v0 + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_singleColumnLayout);
    v24 = *(v0 + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories);
    v86 = v24;
    if (v32 == 1)
    {
      v85 = Description;
      if (v24 >> 62)
      {
        goto LABEL_59;
      }

      v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }

    v85 = v8;
    if (v24 >> 62)
    {
      v65 = v24;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      v24 = v65;
    }

    else
    {
      v21 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = _swiftEmptyArrayStorage;
    v69 = v3;
    if (v21)
    {
      v67 = v5;
      v68 = v2;
      v88[0] = _swiftEmptyArrayStorage;
      v1 = v21 & ~(v21 >> 63);
      v40 = v24;

      sub_100511AA0(0, v1, 0);
      if (v21 < 0)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:

        __break(1u);
        return result;
      }

      v15 = 0;
      v12 = v88[0];
      v41 = v40;
      v76 = v40 & 0xFFFFFFFFFFFFFF8;
      v79 = (v85 + 8);
      v80 = v40 & 0xC000000000000001;
      v78 = (v84 + 4);
      do
      {
        if (__OFADD__(v15, 1))
        {
          goto LABEL_53;
        }

        v85 = v15 + 1;
        if (v80)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v76 + 16))
          {
            goto LABEL_56;
          }

          v42 = *(&v41[2].Kind + v15);
        }

        v43 = v42;
        v1 = v21;
        v44 = [v42 name];
        if (!v44)
        {
          goto LABEL_66;
        }

        v45 = v44;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = &type metadata for BrowseCategoryImageProvider;
        v91 = sub_1004A3818();
        v89[0] = v43;
        v46 = v43;
        v47 = v81;
        UUID.init()();
        UUID.uuidString.getter();
        (*v79)(v47, v83);
        NearbyTileViewModel.init(id:title:imageProvider:)();

        v88[0] = v12;
        Kind = v12[1].Kind;
        v48 = v12[1].Description;
        if (Kind >= v48 >> 1)
        {
          sub_100511AA0(v48 > 1, Kind + 1, 1);
          v12 = v88[0];
        }

        v12[1].Kind = Kind + 1;
        v84[4](v12 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + v84[9] * Kind, v11, v82);
        ++v15;
        v41 = v86;
      }

      while (v85 != v21);

      v0 = v77;
      v2 = v68;
      v5 = v67;
    }

    v50 = round(v12[1].Kind * 0.5);
    if (v50 == INFINITY)
    {
      __break(1u);
    }

    else if (v50 > -9.22337204e18)
    {
      if (v50 < 9.22337204e18)
      {
        v51 = sub_1004D0B44(v50, 2, v12);
        v52 = OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_currentContainerSize;
        swift_beginAccess();
        v53 = v71;
        v54 = v0 + v52;
        v55 = v5;
        v56 = v12;
        v57 = v70;
        v58 = v72;
        (*(v71 + 16))(v70, v54, v72);
        v59 = v2;
        v60 = v73;
        static MapsDesignConstants.ColumnViews.SearchHome.findNearbyColumnViewConfig(itemCount:containerSize:)();
        v61 = (*(v53 + 8))(v57, v58);
        v86 = &v66;
        __chkstk_darwin(v61);
        *(&v66 - 4) = v0;
        *(&v66 - 3) = v60;
        *(&v66 - 2) = v51;
        *(&v66 - 1) = v56;
        sub_1000CE6B8(&qword_101923AA0);
        sub_1000414C8(&qword_101923AA8, &qword_101923AA0);
        UIHostingConfiguration<>.init(content:)();

        static Edge.Set.all.getter();
        v90 = v59;
        v91 = sub_1000414C8(&qword_101923AB0, &qword_101923A88);
        sub_10001A848(v89);
        UIHostingConfiguration.margins(_:_:)();
        (*(v69 + 8))(v55, v59);
        UICollectionViewCell.contentConfiguration.setter();
        return (*(v74 + 8))(v60, v75);
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v84 = (&v66 - v18);
  v85 = v19;
  v86 = v17;
  v21 = *(v0 + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories);
  if (v21 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v17)
  {
    v23 = _swiftEmptyArrayStorage;
    if (!i)
    {
LABEL_15:
      __chkstk_darwin(v17);
      v29 = v77;
      *(&v66 - 2) = v23;
      *(&v66 - 1) = v29;
      sub_1000CE6B8(&qword_101923AE8);
      sub_1004D4410();
      v30 = v84;
      UIHostingConfiguration<>.init(content:)();

      static Edge.Set.all.getter();
      v31 = v86;
      v90 = v86;
      v91 = sub_1000414C8(&qword_101923B08, &qword_101923A98);
      sub_10001A848(v89);
      UIHostingConfiguration.margins(_:_:)();
      (*(v85 + 8))(v30, v31);
      return UICollectionViewCell.contentConfiguration.setter();
    }

    v89[0] = _swiftEmptyArrayStorage;

    v24 = specialized ContiguousArray.reserveCapacity(_:)();
    if ((i & 0x8000000000000000) == 0)
    {
      v25 = 0;
      v15 = v21 & 0xC000000000000001;
      v12 = (v21 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v15)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v27 = *(v21 + 8 * v25 + 32);
        }

        v28 = v27;
        v87 = v27;
        sub_1004D2598(&v87, v88);

        if (v1)
        {
          goto LABEL_67;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v25;
        if (v26 == i)
        {

          v23 = v89[0];
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

    __break(1u);
LABEL_59:
    v62 = v24;
    v63 = _CocoaArrayWrapper.endIndex.getter();
    v64 = v62;
    v33 = v63;
    v24 = v64;
LABEL_19:
    v34 = _swiftEmptyArrayStorage;
    if (!v33)
    {
      break;
    }

    v84 = v12;
    v89[0] = _swiftEmptyArrayStorage;
    v35 = v24;

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v33 < 0)
    {
      goto LABEL_64;
    }

    v21 = 0;
    while (1)
    {
      v12 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v36 = *(&v86[2].Kind + v21);
      }

      v37 = v36;
      v87 = v36;
      sub_1004D2598(&v87, v88);

      if (v1)
      {
        goto LABEL_67;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v21;
      if (v12 == v33)
      {

        v34 = v89[0];
        v12 = v84;
        goto LABEL_30;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_30:
  __chkstk_darwin(v24);
  v38 = v77;
  *(&v66 - 2) = v34;
  *(&v66 - 1) = v38;
  sub_1000CE6B8(&qword_101923AB8);
  sub_1004D42B0();
  UIHostingConfiguration<>.init(content:)();

  static Edge.Set.all.getter();
  v90 = v12;
  v91 = sub_1000414C8(&qword_101923AE0, &qword_101923A90);
  sub_10001A848(v89);
  UIHostingConfiguration.margins(_:_:)();
  (*(v85 + 8))(v15, v12);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1004D2410(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  swift_bridgeObjectRetain_n();
  v5 = a2;
  sub_1000CE6B8(&qword_101926E30);
  type metadata accessor for NavigationCell();
  sub_1000414C8(&qword_101920568, &qword_101926E30);
  sub_1004D4960(&qword_1019156D0, &type metadata accessor for UUID);
  sub_1004D4960(&qword_10190A030, &type metadata accessor for NavigationCell);
  return ForEach<>.init(_:id:content:)();
}

id sub_1004D2598@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v5 - 8);
  v18 = &v17 - v6;
  v7 = type metadata accessor for RichTextType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v26 = &type metadata for BrowseCategoryImageProvider;
  v27 = sub_1004A3818();
  v24 = 0;
  v25 = v11;
  v22 = 0u;
  v23 = 0u;
  sub_1000CE6B8(&unk_1019157F0);
  v12 = swift_allocObject();
  v21 = xmmword_1011E1D30;
  *(v12 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  (*(v8 + 104))(v10, enum case for RichTextType.title(_:), v7);
  result = [v11 name];
  if (result)
  {
    v15 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v8 + 8))(v10, v7);
    *(v12 + 32) = v13;
    v16 = type metadata accessor for BottomAccessoryViewModel();
    (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
    UUID.init()();
    type metadata accessor for ListCellViewModel();
    swift_allocObject();
    result = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
    *v20 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D2954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  sub_1000CE6B8(a3);
  a5();
  return List<>.init(content:)();
}

uint64_t sub_1004D29C0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  swift_bridgeObjectRetain_n();
  v5 = a2;
  sub_1000CE6B8(&qword_101926E30);
  type metadata accessor for PlaceCell();
  sub_1000414C8(&qword_101920568, &qword_101926E30);
  sub_1004D4960(&qword_1019156D0, &type metadata accessor for UUID);
  sub_1004D4960(&qword_10190D640, &type metadata accessor for PlaceCell);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004D2B48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, void *))
{
  v9 = *a1;
  v13[3] = type metadata accessor for ListCellViewModel();
  v13[4] = sub_1004D4960(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v13[0] = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = v9;
  swift_retain_n();

  return a6(v13, a5, v11);
}

void sub_1004D2C54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = a4;
    v24 = Strong;
    if (a2 >> 62)
    {
LABEL_22:
      v25 = a2 & 0xFFFFFFFFFFFFFF8;
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = a2 & 0xFFFFFFFFFFFFFF8;
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v16 = a2 & 0xC000000000000001;
    a2 = v7 + 8;
    while (1)
    {
      if (v14 == v15)
      {
        goto LABEL_24;
      }

      if (v16)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v25 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      dispatch thunk of ListCellViewModel.id.getter();
      dispatch thunk of ListCellViewModel.id.getter();
      v7 = static UUID.== infix(_:_:)();

      v17 = *a2;
      (*a2)(v9, v6);
      v17(v12, v6);
      if (v7)
      {
        break;
      }

      if (__OFADD__(v15++, 1))
      {
        goto LABEL_21;
      }
    }

    v19 = *&v24[OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories];
    if (v19 >> 62)
    {
      if (v15 < _CocoaArrayWrapper.endIndex.getter())
      {
LABEL_16:
        v20 = v24;
        v21 = swift_unknownObjectWeakLoadStrong();
        if (v21)
        {
          [v21 didSelectBrowseCategoryAtIndex:v15];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    else if (v15 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_24:
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v28 = 0xD000000000000026;
    v29 = 0x800000010123C8E0;
    v27 = v26;
    type metadata accessor for ListCellViewModel();

    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1004D2F90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[0] = a2;
  v21[1] = a5;
  v8 = type metadata accessor for ColumnViewConfig();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v12 = a1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v15 = v12;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  (*(v9 + 16))(v11, v21[0], v8);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v15;
  v18[4] = a4;
  v19 = v15;

  sub_1000CE6B8(&qword_101923B30);
  sub_1000414C8(&qword_101923B38, &qword_101923B30);
  return ColumnView.init(config:scrollIndex:columnBuilder:)();
}

uint64_t sub_1004D3204@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  static MapsDesignConstants.Spacing.gridHorizontalGutter.getter();
  v9 = v8;
  *a4 = static HorizontalAlignment.center.getter();
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  result = sub_1000CE6B8(&qword_101923B40);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    swift_getKeyPath();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1004D47BC;
    *(v13 + 24) = v12;

    sub_1000CE6B8(&qword_101923B48);
    type metadata accessor for NearbyTile();
    sub_1004D482C();
    sub_1004D4960(&qword_101923B60, &type metadata accessor for NearbyTile);
    return ForEach<>.init(_:id:content:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D33DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v4 = type metadata accessor for NearbyTileViewModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v10 = *(v5 + 16);
  v10(&v18 - v11, a1, v4, v9);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (v10)(v7, a1, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = v19;
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  (*(v5 + 32))(v15 + v14, v7, v4);

  return NearbyTile.init(model:tapHandler:)();
}

void sub_1004D35B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NearbyTileViewModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  __chkstk_darwin(Strong);
  v17 = a3;
  v11 = sub_1005252E0(sub_1004D4940, (&v19 - 4), a2);
  if (v12)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v14 = *&v10[OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories];
  if (v14 >> 62)
  {
    if (v11 < _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_11:
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v19 = 0xD00000000000002BLL;
    v20 = 0x800000010123C910;
    (*(v6 + 16))(v8, a3, v5);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v18 = 0;
    v17 = 122;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      [v15 didSelectBrowseCategoryAtIndex:v13];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_12;
  }
}

uint64_t sub_1004D3820()
{
  v0 = NearbyTileViewModel.id.getter();
  v2 = v1;
  if (v0 == NearbyTileViewModel.id.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

id sub_1004D38BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHomeCategoriesViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchHomeCategoriesViewCell()
{
  result = qword_101923A78;
  if (!qword_101923A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D39D4()
{
  result = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
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

uint64_t sub_1004D3A94@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = type metadata accessor for ScrollBounceBehavior();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin(v1);
  v52 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  __chkstk_darwin(v3);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListSectionSpacing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_101923B70);
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v62 = sub_1000CE6B8(&qword_101923B78);
  __chkstk_darwin(v62);
  v63 = &v43 - v13;
  v58 = sub_1000CE6B8(&qword_101923B80);
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v43 - v14;
  v15 = sub_1000CE6B8(&qword_101923B88);
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin(v15);
  v54 = &v43 - v16;
  static Edge.Set.top.getter();
  sub_1000CE6B8(&qword_101923B90);
  sub_1000414C8(&qword_101923B98, &qword_101923B90);
  View.listPadding(_:_:)();
  static ListSectionSpacing.compact.getter();
  v17 = *(sub_1000CE6B8(&qword_101923BA0) + 36);
  v18 = v7;
  v48 = *(v7 + 16);
  v48(&v12[v17], v9, v6);
  v19 = *(v7 + 56);
  v44 = v12;
  v19(&v12[v17], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v21 = &v12[*(v10 + 36)];
  v22 = sub_1000CE6B8(&qword_10190CD00);
  v23 = *(v22 + 28);
  v24 = *(v18 + 32);
  v45 = v18 + 32;
  v46 = v24;
  v47 = v22;
  v24(v21 + v23, v9, v6);
  v19(v21 + v23, 0, 1, v6);
  *v21 = KeyPath;
  v25 = v49;
  InsetGroupedListStyle.init()();
  sub_1004D49D4(&qword_101923BA8, &qword_101923B70, &unk_10120B798, sub_1004D4A84);
  v26 = v63;
  v27 = v50;
  v28 = v44;
  View.listStyle<A>(_:)();
  (*(v51 + 8))(v25, v27);
  v29 = v52;
  sub_100024F64(v28, &qword_101923B70);
  static ListSectionSpacing.custom(_:)();
  v30 = *(sub_1000CE6B8(&qword_101923BB8) + 36);
  v48(&v26[v30], v9, v6);
  v19(&v26[v30], 0, 1, v6);
  v31 = swift_getKeyPath();
  v32 = &v26[*(v62 + 36)];
  v33 = *(v47 + 28);
  v46(v32 + v33, v9, v6);
  v19(v32 + v33, 0, 1, v6);
  *v32 = v31;
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v31) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v31)
  {
    Axis.Set.init(rawValue:)();
  }

  v34 = sub_1004D49D4(&qword_101923BC0, &qword_101923B78, &unk_10120B7A0, sub_1004D4BAC);
  v35 = v53;
  v36 = v62;
  v37 = v63;
  View.scrollBounceBehavior(_:axes:)();
  (*(v59 + 8))(v29, v60);
  sub_100024F64(v37, &qword_101923B78);
  v64 = v36;
  v65 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v54;
  v40 = v58;
  View.scrollContentBackground(_:)();
  (*(v55 + 8))(v35, v40);
  static Edge.Set.bottom.getter();
  v64 = v40;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v57;
  View.listPadding(_:_:)();
  return (*(v56 + 8))(v39, v41);
}

unint64_t sub_1004D42B0()
{
  result = qword_101923AC0;
  if (!qword_101923AC0)
  {
    sub_1000D6664(&qword_101923AB8);
    sub_1000414C8(&qword_101923AC8, &qword_101923AD0);
    sub_1004D4368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923AC0);
  }

  return result;
}

unint64_t sub_1004D4368()
{
  result = qword_101923AD8;
  if (!qword_101923AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923AD8);
  }

  return result;
}

unint64_t sub_1004D4410()
{
  result = qword_101923AF0;
  if (!qword_101923AF0)
  {
    sub_1000D6664(&qword_101923AE8);
    sub_1000414C8(&qword_101923AF8, &qword_101923B00);
    sub_1004D4368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923AF0);
  }

  return result;
}

unint64_t sub_1004D44D0()
{
  result = qword_101923B18;
  if (!qword_101923B18)
  {
    sub_1000D6664(&qword_101923B10);
    sub_1004D4960(&qword_10190A030, &type metadata accessor for NavigationCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923B18);
  }

  return result;
}

unint64_t sub_1004D45FC()
{
  result = qword_101923B28;
  if (!qword_101923B28)
  {
    sub_1000D6664(&qword_101923B20);
    sub_1004D4960(&qword_10190D640, &type metadata accessor for PlaceCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923B28);
  }

  return result;
}

uint64_t sub_1004D46FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1004D4768(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32) + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_scrollIndex;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1004D478C(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(v1 + 32) + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_scrollIndex;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1004D47C4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_1000CE6B8(&qword_101923B68);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_1004D482C()
{
  result = qword_101923B50;
  if (!qword_101923B50)
  {
    sub_1000D6664(&qword_101923B48);
    sub_1000414C8(&qword_101923B58, &qword_10191AEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923B50);
  }

  return result;
}

void sub_1004D48DC()
{
  v1 = *(type metadata accessor for NearbyTileViewModel() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1004D35B8(v2, v3, v4);
}

uint64_t sub_1004D4960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004D49D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004D4A84()
{
  result = qword_101923BB0;
  if (!qword_101923BB0)
  {
    sub_1000D6664(&qword_101923BA0);
    sub_1000D6664(&qword_101923B90);
    sub_1000414C8(&qword_101923B98, &qword_101923B90);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923BB0);
  }

  return result;
}

unint64_t sub_1004D4BAC()
{
  result = qword_101923BC8;
  if (!qword_101923BC8)
  {
    sub_1000D6664(&qword_101923BB8);
    sub_1000D6664(&qword_101923B70);
    type metadata accessor for InsetGroupedListStyle();
    sub_1004D49D4(&qword_101923BA8, &qword_101923B70, &unk_10120B798, sub_1004D4A84);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923BC8);
  }

  return result;
}

id sub_1004D4CF4(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = [a1 featureDiscoveryView];
  [v5 setModel:v4];

  v6 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityIdentifier:v6];

  v7 = UIAccessibilityTraitButton;

  return [a1 setAccessibilityTraits:v7];
}

uint64_t sub_1004D4DAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019068F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&unk_10191C290);
  v3 = sub_100021540(v2, qword_101960430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1004D4E64()
{
  result = qword_101923BD0;
  if (!qword_101923BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923BD0);
  }

  return result;
}

unint64_t sub_1004D4EB8(uint64_t a1)
{
  result = sub_1004D4EE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004D4EE0()
{
  result = qword_101923C10;
  if (!qword_101923C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923C10);
  }

  return result;
}

uint64_t type metadata accessor for PlaceItemRowViewModel()
{
  result = qword_101923C60;
  if (!qword_101923C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D5044()
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

uint64_t sub_1004D50E4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_placeItem);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

void *sub_1004D5100(void *a1)
{
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RichTextViewModel();
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v14.n128_f64[0] = __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v17 = a1[13];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = a1[12] & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2, v14);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v3 + 8))(v5, v2);
    v19 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_100355BD8(v20 > 1, v21 + 1, 1, v19);
    }

    v19[2] = v21 + 1;
    (*(v33 + 32))(v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, v16, v32);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v22 = a1[15];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = a1[14] & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v3 + 8))(v5, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100355BD8(0, v19[2] + 1, 1, v19);
    }

    v25 = v19[2];
    v24 = v19[3];
    if (v25 >= v24 >> 1)
    {
      v19 = sub_100355BD8(v24 > 1, v25 + 1, 1, v19);
    }

    v19[2] = v25 + 1;
    (*(v33 + 32))(v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, v12, v32);
  }

  if (!v19[2])
  {
    v27 = a1[16];
    v26 = a1[17];
    v28 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v28 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2);
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
      (*(v3 + 8))(v5, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100355BD8(0, v19[2] + 1, 1, v19);
      }

      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        v19 = sub_100355BD8(v29 > 1, v30 + 1, 1, v19);
      }

      v19[2] = v30 + 1;
      (*(v33 + 32))(v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, v9, v32);
    }
  }

  return v19;
}

id sub_1004D55E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&unk_10190D580);
  type metadata accessor for TrailingAccessoryViewModel();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  sub_100276280(a1, a2, a3);
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 != 1)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() sharedPlatform];
  if (result)
  {
    v8 = result;
    v9 = [result isInternalInstall];

    if (v9)
    {
      type metadata accessor for VisitedPlacesFakeDataHelper();
      v10 = static VisitedPlacesFakeDataHelper.fakeVisitCellActions(mapsSyncId:isPinned:)(*(a1 + 16), *(a1 + 24), *(a1 + 88));
      sub_1002470B0(v10);
    }

LABEL_7:
    static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D579C(uint64_t a1)
{
  v51 = type metadata accessor for RichTextType();
  v56 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_1000CE6B8(&unk_10190D600);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for AttributedString();
  v57 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 144);
  v22 = *(a1 + 152);
  if (*(a1 + 160))
  {
    if (*(a1 + 160) == 1)
    {
      v46 = v18;
      v47 = v17;
      v49 = v12;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v60._object = 0x800000010123C9D0;
      v23._countAndFlagsBits = 0x4025206E49;
      v24._countAndFlagsBits = 0xD000000000000017;
      v24._object = 0x800000010123C9B0;
      v60._countAndFlagsBits = 0xD000000000000029;
      v23._object = 0xE500000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v23, v60);
      sub_1000CE6B8(&unk_10190D5C0);
      v25 = swift_allocObject();
      v48 = xmmword_1011E1D30;
      *(v25 + 16) = xmmword_1011E1D30;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000DA61C();
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;

      static String.localizedStringWithFormat(_:_:)();

      AttributeContainer.init()();
      v26 = v54;
      AttributedString.init(_:attributes:)();
      v59[0] = v21;
      v59[1] = v22;
      v27 = type metadata accessor for Locale();
      (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
      sub_1004D6B8C();
      sub_1000E5580();

      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_100024F64(v5, &unk_10190D5F0);
      sub_1001F12E8(v21, v22, 1u);
      if ((*(v52 + 48))(v8, 1, v53) == 1)
      {
        v28 = &qword_10190B850;
        v29 = v8;
      }

      else
      {
        v36 = v50;
        sub_10011C7DC(v8, v50);
        v37 = static Color.blue.getter();
        sub_10011C84C();
        v38 = AttributedString.subscript.modify();
        v58 = v37;
        sub_10016EB80();
        AttributedSubstring.subscript.setter();
        v38(v59, 0);
        v28 = &unk_10190D600;
        v29 = v36;
      }

      sub_100024F64(v29, v28);
      v39 = v57;
      v40 = v26;
      v41 = v51;
      sub_1000CE6B8(&qword_10190D578);
      type metadata accessor for ContextLineAccessoryViewModel();
      v31 = swift_allocObject();
      *(v31 + 16) = v48;
      sub_1000CE6B8(&qword_10190A070);
      type metadata accessor for RichTextViewModel();
      v42 = swift_allocObject();
      *(v42 + 16) = v48;
      v43 = v55;
      v44 = v56;
      (*(v56 + 104))(v55, enum case for RichTextType.line(_:), v41);
      RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
      (*(v44 + 8))(v43, v41);
      *v20 = v42;
      (*(v46 + 104))(v20, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.inUserGuide(_:), v47);
      ContextLineAccessoryViewModel.init(type:)();
      (*(v39 + 8))(v40, v49);
    }

    else if (v21 | v22)
    {
      v32 = v18;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v61._object = 0x800000010123C0C0;
      v33._countAndFlagsBits = 0x64656E6E6950;
      v34._object = 0x800000010123CA00;
      v61._countAndFlagsBits = 0xD000000000000036;
      v34._countAndFlagsBits = 0xD000000000000015;
      v33._object = 0xE600000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v33, v61);
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      sub_1000CE6B8(&qword_10190D578);
      type metadata accessor for ContextLineAccessoryViewModel();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1011E1D30;
      v35 = v57;
      (*(v57 + 16))(v20, v16, v12);
      (*(v32 + 104))(v20, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.pinned(_:), v17);
      ContextLineAccessoryViewModel.init(type:)();
      (*(v35 + 8))(v16, v12);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v30 = v18;
    sub_1000CE6B8(&qword_10190D578);
    type metadata accessor for ContextLineAccessoryViewModel();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1011E1D30;
    *v20 = v21;
    *(v20 + 1) = v22;
    *(v20 + 2) = 0;
    v20[24] = 1;
    (*(v30 + 104))(v20, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.note(_:), v17);

    ContextLineAccessoryViewModel.init(type:)();
  }

  return v31;
}

uint64_t sub_1004D6214(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = type metadata accessor for MapsDesignAccessibilityString();
  v43 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = (v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for CellAction.Style();
  v42 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CellAction.Placement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  sub_1000CE6B8(&unk_101923750);
  v12 = *(type metadata accessor for CellAction() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v40 = *(v12 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1011E1D60;
  v15 = v7[13];
  LODWORD(object) = enum case for CellAction.Placement.default(_:);
  v36 = v15;
  v37 = v7 + 13;
  v15(v11);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v45 = v14 + v13;
  v34.super.isa = qword_1019600D8;
  v49._object = 0x800000010121D3F0;
  v16._countAndFlagsBits = 0x6570697753776F52;
  v16._object = 0xEF6574656C65445FLL;
  v17._countAndFlagsBits = 0x6574656C6544;
  v49._countAndFlagsBits = 0xD000000000000036;
  v17._object = 0xE600000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v17, v49);
  countAndFlagsBits = v18._countAndFlagsBits;
  v29[1] = v18._object;
  v19 = swift_allocObject();
  v39 = v14;
  v20 = v46;
  *(v19 + 16) = v47;
  *(v19 + 24) = a2;
  *(v19 + 32) = 11;
  v42 = *(v42 + 104);
  (v42)(v5, enum case for CellAction.Style.destructive(_:), v20);
  v29[0] = v5;
  v21 = v7[2];
  v30 = a2;
  v31 = v7 + 2;
  v35 = v21;
  v21(v44, v11, v6);
  v22 = v41;
  *v41 = 0x65442E6570697753;
  v22[1] = 0xEC0000006574656CLL;
  v33 = enum case for MapsDesignAccessibilityString.button(_:);
  v43 = *(v43 + 104);
  (v43)(v22);

  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  countAndFlagsBits = v7[1];
  countAndFlagsBits(v11, v6);
  v36(v11, object, v6);
  v50._object = 0x800000010121D3B0;
  v23._object = 0xEE0065726168535FLL;
  v24._countAndFlagsBits = 0x6572616853;
  v50._countAndFlagsBits = 0xD000000000000016;
  v23._countAndFlagsBits = 0x6570697753776F52;
  v24._object = 0xE500000000000000;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v34, v24, v50)._object;
  v25 = swift_allocObject();
  *(v25 + 16) = v47;
  *(v25 + 24) = v30;
  *(v25 + 32) = 10;

  v26 = static Color.blue.getter();
  v27 = v29[0];
  *v29[0] = v26;
  (v42)(v27, enum case for CellAction.Style.tintable(_:), v46);
  v35(v44, v11, v6);
  *v22 = 0x68532E6570697753;
  v22[1] = 0xEB00000000657261;
  (v43)(v22, v33, v48);
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  countAndFlagsBits(v11, v6);
  return v39;
}

id sub_1004D6894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8;
  sub_10005EB40(a1 + 48, v20);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16[2] = *(a1 + 32);
  sub_1000CE6B8(&unk_1019157F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E1D30;

  *(v10 + 32) = sub_1004D5100(a1);
  v16[1] = sub_1004D55E4(a1, a2, a3);
  sub_1004D579C(a1);
  v11 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1004D6214(a2, a3);
  v16[3] = sub_100276280(a1, a2, a3);
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 != 1)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() sharedPlatform];
  if (result)
  {
    v13 = result;
    v14 = [result isInternalInstall];

    if (v14)
    {
      type metadata accessor for VisitedPlacesFakeDataHelper();
      v15 = static VisitedPlacesFakeDataHelper.fakeVisitCellActions(mapsSyncId:isPinned:)(*(a1 + 16), *(a1 + 24), *(a1 + 88));
      sub_1002470B0(v15);
    }

LABEL_7:
    UUID.init()();
    type metadata accessor for ListCellViewModel();
    swift_allocObject();
    return ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  }

  __break(1u);
  return result;
}

unint64_t sub_1004D6B8C()
{
  result = qword_101910100;
  if (!qword_101910100)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101910100);
  }

  return result;
}

uint64_t sub_1004D6C08(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1004D6CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_101923D78);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_1000CE6B8(&qword_101923D80);
  v13[1] = a1;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  swift_bridgeObjectRetain_n();

  sub_1000CE6B8(&qword_101923D88);
  sub_1000CE6B8(&qword_101923D90);
  sub_1000414C8(&qword_101923D98, &qword_101923D88);
  sub_1004D8910();
  sub_1004D8A20();
  ForEach<>.init(_:content:)();
  v10 = [objc_opt_self() mainScreen];
  v11 = [v10 traitCollection];

  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  sub_1000414C8(&qword_101923DB8, &qword_101923D78);
  View.insetGroupedSectionBackground(cornerRadius:)();
  return sub_100024F64(v8, &qword_101923D78);
}

uint64_t sub_1004D6F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10010F810(a1, v26);
  sub_10010F810(a1, v21);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  sub_1004D8A74(v21, (v10 + 5));
  v27 = sub_1004D8AD0;
  v28 = v10;
  sub_10010F810(a1, v25);
  if (*(a2 + 16))
  {
    sub_10010F810(a2 + 32, v23);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
  }

  sub_1004D8B00(v25, v21);
  sub_1004D8B00(v23, v22);
  if (!v21[0])
  {

    sub_100024F64(v23, &qword_10190B330);
    sub_100024F64(v25, &qword_10190B330);
    if (!v22[0])
    {
      sub_100024F64(v21, &qword_10190B330);
      v12 = 1;
      goto LABEL_14;
    }

LABEL_11:
    sub_100024F64(v21, &unk_101923DC0);
    v12 = 0;
    goto LABEL_14;
  }

  sub_1004D8B00(v21, v19);
  if (!v22[0])
  {

    sub_100024F64(v23, &qword_10190B330);
    sub_100024F64(v25, &qword_10190B330);
    sub_1004D8BCC(v19);
    goto LABEL_11;
  }

  sub_1004D8A74(v22, v17);

  v11 = sub_100367750();
  if (v11 == sub_100367750())
  {
    v12 = sub_10010ED08(&v20, &v18);
  }

  else
  {
    v12 = 0;
  }

  sub_1004D8BCC(v17);
  sub_100024F64(v23, &qword_10190B330);
  sub_100024F64(v25, &qword_10190B330);
  sub_1004D8BCC(v19);
  sub_100024F64(v21, &qword_10190B330);
LABEL_14:
  KeyPath = swift_getKeyPath();
  v14 = (a5 + *(sub_1000CE6B8(&qword_101923D90) + 36));
  v15 = type metadata accessor for TopCellDividierModifier();
  *(v14 + *(v15 + 20)) = KeyPath;
  sub_1000CE6B8(&qword_10190BC28);
  swift_storeEnumTagMultiPayload();
  *v14 = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190CBC8);
  swift_storeEnumTagMultiPayload();
  *(v14 + *(v15 + 24)) = v12 & 1;
  return sub_1004D8B70(v26, a5);
}

uint64_t sub_1004D728C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for HomeRecentsShelfView(0);
  v3 = v2 - 8;
  v21 = *(v2 - 8);
  v20[1] = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColumnViewConfig();
  v20[0] = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  v13 = *v1;
  swift_getKeyPath();
  *&v23 = v13;
  sub_1004D8418(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static MapsDesignConstants.ColumnViews.MapsHome.recentsColumnViewConfig(itemCount:containerSize:)();
  (*(v7 + 16))(v9, v12, v6);
  v14 = v1 + *(v3 + 32);
  v15 = *v14;
  v16 = *(v14 + 2);
  LOBYTE(v14) = v14[24];
  v23 = v15;
  v24 = v16;
  v25 = v14;
  sub_1000CE6B8(&qword_10190DAE0);
  Binding.projectedValue.getter();
  sub_1004D8560(v1, v5);
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  sub_1004D85C4(v5, v18 + v17);
  sub_1004D86A8();
  ColumnView.init(config:scrollIndex:columnBuilder:)();
  return (*(v7 + 8))(v12, v20[0]);
}

uint64_t sub_1004D758C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for HomeRecentsShelfView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a2;
  swift_getKeyPath();
  v15[1] = v9;
  sub_1004D8418(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v9 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__groups);
    if (*(v11 + 16) > a1)
    {
      v12 = *(v11 + 8 * a1 + 32);
      sub_1004D8560(a2, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v14 = swift_allocObject();
      sub_1004D85C4(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
      *a3 = v12;
      a3[1] = sub_1004D8874;
      a3[2] = v14;
    }
  }

  __break(1u);
  return result;
}

id sub_1004D78E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v18 = v6;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v18;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  v11 = OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_currentContainerSize;
  swift_beginAccess();
  v12 = type metadata accessor for HomeRecentsShelfView(0);
  v13 = v12[5];
  v14 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v14 - 8) + 16))(&a3[v13], a2 + v11, v14);
  *a3 = v18;
  v15 = &a3[v12[6]];
  *v15 = v19;
  *(v15 + 2) = v20;
  v15[24] = v21;
  v16 = v12[7];
  *&a3[v16] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();

  return v18;
}

uint64_t sub_1004D7AD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1004D8418(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex + 8);
  *a2 = *(a1 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1004D7B94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = a4 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex;
  if (*(a4 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex + 8))
  {
    if (!*(result + 8))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1004D8418(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    if (*v6 == v4)
    {
      v8 = *(result + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_3;
    }
  }

  *v6 = v4;
  *(v6 + 8) = v5;
  return result;
}

uint64_t sub_1004D7CCC()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_101923EB0);
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v22 - v3;
  v4 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for HomeRecentsShelfCollectionViewCell(0);
  v29.receiver = v0;
  v29.super_class = v11;
  objc_msgSendSuper2(&v29, "layoutSubviews");
  v12 = [v0 contentView];
  [v12 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v13 = OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_currentContainerSize;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v27 = v1;
  v14(v7, &v1[v13], v4);
  sub_1004D8418(&qword_101922B90, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v7, v4);
  if (v12)
  {
    return (v15)(v10, v4);
  }

  v23 = v15;
  v14(v7, v10, v4);
  v17 = v27;
  swift_beginAccess();
  (*(v5 + 40))(&v17[v13], v7, v4);
  v18 = swift_endAccess();
  v19 = *&v17[OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_viewModel];
  if (v19)
  {
    __chkstk_darwin(v18);
    *(&v22 - 2) = v19;
    *(&v22 - 1) = v17;
    type metadata accessor for HomeRecentsShelfView(0);
    sub_1004D8418(&qword_101923CC0, type metadata accessor for HomeRecentsShelfView);
    v22 = v19;
    v20 = v24;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v21 = v26;
    v28[3] = v26;
    v28[4] = sub_1000414C8(&qword_101923EC0, &unk_101923EB0);
    sub_10001A848(v28);
    UIHostingConfiguration.margins(_:_:)();
    (*(v25 + 8))(v20, v21);
    UICollectionViewCell.contentConfiguration.setter();
  }

  return v23(v10, v4);
}

id sub_1004D8158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeRecentsShelfCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004D8234()
{
  result = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
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

uint64_t sub_1004D8308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004D8418(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1004D8418(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004D8490()
{
  type metadata accessor for HomeRecentsShelfCellModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    if (v1 <= 0x3F)
    {
      sub_100174E30();
      if (v2 <= 0x3F)
      {
        sub_10028FEB0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1004D8560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeRecentsShelfView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D85C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeRecentsShelfView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D8628@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HomeRecentsShelfView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1004D758C(a1, v6, a2);
}

unint64_t sub_1004D86A8()
{
  result = qword_101923D60;
  if (!qword_101923D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923D60);
  }

  return result;
}

uint64_t sub_1004D86FC()
{
  v1 = (type metadata accessor for HomeRecentsShelfView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v1[9];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1004D8910()
{
  result = qword_101923DA0;
  if (!qword_101923DA0)
  {
    sub_1000D6664(&qword_101923D90);
    sub_1004D89CC();
    sub_1004D8418(&qword_10190DB40, type metadata accessor for TopCellDividierModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923DA0);
  }

  return result;
}

unint64_t sub_1004D89CC()
{
  result = qword_101923DA8;
  if (!qword_101923DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923DA8);
  }

  return result;
}

unint64_t sub_1004D8A20()
{
  result = qword_101923DB0;
  if (!qword_101923DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923DB0);
  }

  return result;
}

uint64_t sub_1004D8B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190B330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D8C20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1004D8C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1004D8CDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_101923DE0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 56) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  sub_100098118(a1, a3);
  sub_1000D2DFC(a2, a3 + 48, &unk_101923ED0);
  sub_1000D2DFC(a1 + 8, &v28, &unk_10191C220);
  sub_10005E7BC(&v28, v31);
  sub_1000CE6B8(&unk_101911D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100024F64(a2, &unk_101923ED0);
    sub_10019D044(a1);
    v29 = 0;
    v28 = 0uLL;
    v30 = -1;
    sub_100024F64(&v28, &qword_101909870);
LABEL_7:
    *(a3 + 136) = 0;
    return;
  }

  sub_1000D671C(&v28, v34);
  v13 = sub_10033EF70();
  if (!v13)
  {
    sub_100024F64(a2, &unk_101923ED0);
    sub_10019D044(a1);
    sub_1003405A8(v34);
    goto LABEL_7;
  }

  v14 = v13;
  *(a3 + 136) = v13;
  ObjectType = &type metadata for TwoLinesContentImageProvider;
  v33 = sub_1004DB04C();
  v31[0] = v14;
  swift_unknownObjectRetain_n();
  sub_100203FCC(v31, a3 + 56);
  if ([v14 showOverlayImage])
  {
    ObjectType = &type metadata for TwoLinesContentImageOverlayProvider;
    v33 = sub_1004DB0A0();
    v31[0] = v14;
    sub_100203FCC(v31, a3 + 96);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1000D2DFC(a1 + 8, &v28, &unk_10191C220);
  sub_10005E7BC(&v28, v31);
  v15 = ObjectType;
  v16 = v33;
  sub_10005E838(v31, ObjectType);
  if (!(*(v16 + 32))(v15, v16))
  {
    goto LABEL_14;
  }

  v27[1] = &OBJC_PROTOCOL___HistoryEntryRecentsItemProtocol;
  v17 = swift_dynamicCastObjCProtocolConditional();
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_14:
    sub_100024F64(a2, &unk_101923ED0);
    sub_10019D044(a1);
    sub_1003405A8(v34);
    sub_10004E3D0(v31);
    return;
  }

  v18 = v17;
  sub_10004E3D0(v31);
  type metadata accessor for MyRecentsDataProvider(0);
  ObjectType = swift_getObjectType();
  v31[0] = v18;
  swift_unknownObjectRetain();
  sub_100274620(v31, v8);
  sub_10004E3D0(v31);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    swift_unknownObjectRelease();
    sub_100024F64(a2, &unk_101923ED0);
    sub_10019D044(a1);
    sub_1003405A8(v34);
    sub_100024F64(v8, &qword_101923DE0);
    return;
  }

  sub_10027579C(v8, v12);
  v19 = &v12[*(v9 + 24)];
  if (v19[8] != 1)
  {
    goto LABEL_21;
  }

  v20 = *v19;
  v21 = [swift_unknownObjectRetain() endWaypoint];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    sub_1000D87F0(v20, 1u);
LABEL_21:
    swift_unknownObjectRelease();
    sub_100024F64(a2, &unk_101923ED0);
    sub_10019D044(a1);
    sub_10017F128(v12);
    sub_1003405A8(v34);
    return;
  }

  v23 = [v22 route];
  v24 = [v23 persistentData];

  if (v24)
  {
    type metadata accessor for RouteItem();
    swift_allocObject();
    sub_1004EB10C(v24);
    v26 = v25;

    sub_1000D87F0(v20, 1u);
    swift_unknownObjectRelease();
    sub_100024F64(a2, &unk_101923ED0);
    sub_10019D044(a1);
    sub_10017F128(v12);
    sub_1003405A8(v34);
    *(a3 + 144) = v26;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004D9270()
{
  v1 = sub_1000CE6B8(&qword_101923DE0);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  v4 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2DFC(v0 + 8, v17, &unk_10191C220);
  sub_10005E7BC(v17, v18);
  v8 = ObjectType;
  v9 = v20;
  sub_10005E838(v18, ObjectType);
  if (!(*(v9 + 32))(v8, v9))
  {
    goto LABEL_6;
  }

  v16[1] = &OBJC_PROTOCOL___HistoryEntryRecentsItemProtocol;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_10004E3D0(v18);
    return 0;
  }

  v11 = v10;
  sub_10004E3D0(v18);
  type metadata accessor for MyRecentsDataProvider(0);
  ObjectType = swift_getObjectType();
  v18[0] = v11;
  sub_100274620(v18, v3);
  sub_10004E3D0(v18);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100024F64(v3, &qword_101923DE0);
  }

  else
  {
    sub_10027579C(v3, v7);
    v13 = &v7[*(v4 + 24)];
    v14 = *v13;
    v15 = v13[8];
    sub_1004DB0FC(*v13, v13[8]);
    sub_10017F128(v7);
    if (v15 == 4)
    {
      sub_1000D87F0(v14, 4u);
      return 1;
    }

    sub_1000D87F0(v14, v15);
  }

  return 0;
}

void *sub_1004D94D8()
{
  sub_1000D2DFC(v0 + 8, &v5, &unk_10191C220);
  sub_10005E7BC(&v5, v8);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    sub_1000D671C(&v5, v9);
    sub_1000CE6B8(&unk_10190D580);
    v1 = *(type metadata accessor for TrailingAccessoryViewModel() - 8);
    v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1011E1D30;
    sub_1004D9644(v3 + v2);
    sub_1003405A8(v9);
    return v3;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
    v7 = -1;
    sub_100024F64(&v5, &qword_101909870);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1004D9644@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v77 = type metadata accessor for MapsDesignAccessibilityString();
  v80 = *(v77 - 8);
  __chkstk_darwin(v77);
  v82 = v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for CellAction.Style();
  countAndFlagsBits = *(v79 - 8);
  __chkstk_darwin(v79);
  v3 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CellAction.Placement();
  v83 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v67 - v8;
  v10 = type metadata accessor for CellAction();
  v81 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v67 - v14;
  __chkstk_darwin(v16);
  v18 = v67 - v17;
  if (sub_10033FEB4())
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(ObjectType, v20);
    v22 = (*(v20 + 16))(ObjectType, v20);
    v24 = v23;
    static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();
    sub_1000D3B90(v22, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = v18;
    v72 = v15;
    v73 = v6;
    v74 = v3;
    v26 = v4;
    v27 = v82;
    v71 = v12;
    v75 = v10;
    sub_10010F810(v76, v85);
    v76 = swift_allocObject();
    sub_1004D8A74(v85, v76 + 16);
    if (sub_1004DA79C())
    {
      v28 = v83;
      v29 = *(v83 + 104);
      v69 = v9;
      v29(v9, enum case for CellAction.Placement.default(_:), v4);
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v87._object = 0x8000000101224A00;
      v30._countAndFlagsBits = 0x636F6C2074696445;
      v30._object = 0xED00006E6F697461;
      v31._countAndFlagsBits = 0xD000000000000015;
      v31._object = 0x80000001012249E0;
      v87._countAndFlagsBits = 0xD00000000000002ALL;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, qword_1019600D8, v30, v87)._object;
      v32 = swift_allocObject();
      v33 = v76;
      *(v32 + 16) = sub_1004DB0F4;
      *(v32 + 24) = v33;
      *(v32 + 32) = 6;
      (*(countAndFlagsBits + 104))(v74, enum case for CellAction.Style.default(_:), v79);
      v34 = v69;
      (*(v28 + 16))(v73, v69, v4);
      strcpy(v27, "EditLocation");
      v27[13] = 0;
      *(v27 + 7) = -5120;
      (*(v80 + 104))(v27, enum case for MapsDesignAccessibilityString.button(_:), v77);

      v35 = v70;
      CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
      (*(v28 + 8))(v34, v4);
      v36 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
      v38 = v36[2];
      v37 = v36[3];
      v39 = v34;
      if (v38 >= v37 >> 1)
      {
        v36 = sub_100355E1C(v37 > 1, v38 + 1, 1, v36);
      }

      v36[2] = v38 + 1;
      (*(v81 + 32))(v36 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v38, v35, v75);
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
      v28 = v83;
      v39 = v9;
    }

    v40 = countAndFlagsBits;
    p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
    if (sub_10033F658())
    {
      swift_unknownObjectRelease();
      v42 = *(v28 + 104);
      LODWORD(v70) = enum case for CellAction.Placement.default(_:);
      v69 = v42;
      (v42)(v39);
      object = v26;
      v43 = v39;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v88._object = 0x800000010121C800;
      v44._countAndFlagsBits = 0x7972617262694C5BLL;
      v44._object = 0xEF6572616853205DLL;
      v45._countAndFlagsBits = 0x6572616853;
      v88._countAndFlagsBits = 0xD00000000000002ELL;
      v45._object = 0xE500000000000000;
      v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, qword_1019600D8, v45, v88);
      v67[2] = v46._countAndFlagsBits;
      v67[1] = v46._object;
      v67[0] = "Swipe action for share";
      v47 = swift_allocObject();
      v48 = v76;
      *(v47 + 16) = sub_1004DB0F4;
      *(v47 + 24) = v48;
      *(v47 + 32) = 2;
      (*(v40 + 104))(v74, enum case for CellAction.Style.default(_:), v79);
      v49 = v83;
      v50 = v39;
      v51 = object;
      (*(v83 + 16))(v73, v50, object);
      v52 = v82;
      *v82 = 0x6572616853;
      *(v52 + 1) = 0xE500000000000000;
      (*(v80 + 104))(v52, enum case for MapsDesignAccessibilityString.button(_:), v77);

      CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
      (*(v49 + 8))(v43, v51);
      v26 = v51;
      v39 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100355E1C(0, v36[2] + 1, 1, v36);
      }

      v54 = v36[2];
      v53 = v36[3];
      v40 = countAndFlagsBits;
      if (v54 >= v53 >> 1)
      {
        v36 = sub_100355E1C(v53 > 1, v54 + 1, 1, v36);
      }

      v36[2] = v54 + 1;
      (*(v81 + 32))(v36 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v54, v72, v75);
      p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
      (v69)(v43, v70, v26);
    }

    else
    {
      (*(v28 + 104))(v39, enum case for CellAction.Placement.default(_:), v26);
    }

    v55 = v26;
    if (p_cache[237] != -1)
    {
      swift_once();
    }

    v89._object = 0x8000000101224A30;
    v56._countAndFlagsBits = 0x43205D756E654D5BLL;
    v56._object = 0xED0000207261656CLL;
    v57._countAndFlagsBits = 0x7261656C43;
    v89._countAndFlagsBits = 0xD000000000000017;
    v57._object = 0xE500000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, qword_1019600D8, v57, v89)._countAndFlagsBits;
    v58 = swift_allocObject();
    v59 = v76;
    *(v58 + 16) = sub_1004DB0F4;
    *(v58 + 24) = v59;
    *(v58 + 32) = 9;
    (*(v40 + 104))(v74, enum case for CellAction.Style.default(_:), v79);
    v60 = v83;
    (*(v83 + 16))(v73, v39, v55);
    v61 = v55;
    v62 = v82;
    *v82 = 0x7261656C43;
    *(v62 + 1) = 0xE500000000000000;
    (*(v80 + 104))(v62, enum case for MapsDesignAccessibilityString.button(_:), v77);

    v63 = v71;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    (*(v60 + 8))(v39, v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100355E1C(0, v36[2] + 1, 1, v36);
    }

    v64 = v81;
    v66 = v36[2];
    v65 = v36[3];
    if (v66 >= v65 >> 1)
    {
      v36 = sub_100355E1C(v65 > 1, v66 + 1, 1, v36);
    }

    v36[2] = v66 + 1;
    (*(v64 + 32))(v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v66, v63);
    static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();
  }
}

void *sub_1004DA398()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 136);
  if (!v7 || (v8 = [v7 subtitleText]) == 0)
  {
    v11 = _swiftEmptyArrayStorage;
    v14 = *(v1 + 144);
    if (!v14)
    {
      return v11;
    }

    goto LABEL_8;
  }

  v9 = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E1D30;
  (*(v3 + 104))(v6, enum case for RichTextType.line(_:), v2);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v3 + 8))(v6, v2);
  v11 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100356AC0((v12 > 1), v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  v11[v13 + 4] = v10;
  v14 = *(v1 + 144);
  if (v14)
  {
LABEL_8:
    v15 = *(v14 + OBJC_IVAR____TtC4Maps9RouteItem_hikeInfoViewModel);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100356AC0(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_100356AC0((v16 > 1), v17 + 1, 1, v11);
    }

    v11[2] = v17 + 1;
    v11[v17 + 4] = v15;
  }

  return v11;
}

uint64_t sub_1004DA694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v8;
      sub_100098118(a3, v10);
      (*(v9 + 16))(v10, a2, a1, ObjectType, v9);
      swift_unknownObjectRelease();
      return sub_100024F64(v10, &qword_101916000);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

BOOL sub_1004DA79C()
{
  sub_100340568(v0, &v4);
  if (v7 == 2)
  {
    v1 = v4;
  }

  else
  {
    if (v7 != 1)
    {
      sub_1003405A8(&v4);
      return 0;
    }

    v1 = v4;
    sub_100024F64(&v6, &unk_10191A5F0);
    sub_100024F64(&v5, &qword_10191A550);
  }

  v2 = [v1 type];

  return v2 == 7;
}

Swift::UInt sub_1004DA854()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v7);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v8);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_100024F64(&v4, &qword_10191A570);
  }

  v1 = Hasher._finalize()();
  Hasher._combine(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v9 + 1))
    {
      v11[0] = v8;
      v11[1] = v9;
      v12 = v10;
      AnyHashable.hash(into:)();
      return sub_10005BF8C(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_100024F64(&v8, &qword_10191A570);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Hasher._combine(_:)(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int sub_1004DA9F4()
{
  Hasher.init(_seed:)();
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v8);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v9);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    sub_100024F64(&v5, &qword_10191A570);
  }

  v1 = Hasher._finalize()();
  Hasher._combine(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      v12[0] = v9;
      v12[1] = v10;
      v13 = v11;
      AnyHashable.hash(into:)();
      sub_10005BF8C(v12);
      return Hasher._finalize()();
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_100024F64(&v9, &qword_10191A570);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    Hasher._combine(_:)(v3);
    swift_unknownObjectRelease();
  }

  return Hasher._finalize()();
}

uint64_t sub_1004DABF8()
{
  v1 = *(v0 + 136);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 titleText];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Int sub_1004DAC70()
{
  Hasher.init(_seed:)();
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v8);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v9);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    sub_100024F64(&v5, &qword_10191A570);
  }

  v1 = Hasher._finalize()();
  Hasher._combine(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v10 + 1))
    {
      v12[0] = v9;
      v12[1] = v10;
      v13 = v11;
      AnyHashable.hash(into:)();
      sub_10005BF8C(v12);
      return Hasher._finalize()();
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_100024F64(&v9, &qword_10191A570);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    Hasher._combine(_:)(v3);
    swift_unknownObjectRelease();
  }

  return Hasher._finalize()();
}

Swift::Int sub_1004DAE10@<X0>(Swift::Int *a1@<X8>)
{
  result = sub_100367750();
  *a1 = result;
  return result;
}

uint64_t sub_1004DAE38(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(a1 + 8, v10);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v11);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_100024F64(&v7, &qword_10191A570);
  }

  v4 = Hasher._finalize()();
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(a2 + 8, v10);
  if (swift_dynamicCast())
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    AnyHashable.hash(into:)();
    sub_10005BF8C(&v11);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_100024F64(&v7, &qword_10191A570);
  }

  if (v4 == Hasher._finalize()())
  {
    v5 = sub_10010ED08(a1 + 48, a2 + 48);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1004DAFF4()
{
  result = qword_101923DD0;
  if (!qword_101923DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923DD0);
  }

  return result;
}

unint64_t sub_1004DB04C()
{
  result = qword_101923DE8;
  if (!qword_101923DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923DE8);
  }

  return result;
}

unint64_t sub_1004DB0A0()
{
  result = qword_101923DF8;
  if (!qword_101923DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923DF8);
  }

  return result;
}

id sub_1004DB0FC(id result, unsigned __int8 a2)
{
  if (a2 < 4u)
  {
    return swift_unknownObjectRetain();
  }

  if (a2 == 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1004DB138()
{
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1004DB1E4(uint64_t a1)
{
  swift_getKeyPath();
  v10 = v1;
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__delegate;
  swift_beginAccess();
  sub_1004DD384(v10 + v3, v9);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v7 = &unk_101923ED0;
    return sub_100024F64(v9, v7);
  }

  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v4;
    sub_100024F64(v9, &unk_101923ED0);
    ObjectType = swift_getObjectType();
    sub_100098118(a1, v9);
    (*(v5 + 8))(v9, ObjectType, v5);
    swift_unknownObjectRelease();
    v7 = &qword_101916000;
    return sub_100024F64(v9, v7);
  }

  swift_unknownObjectRelease();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004DB3A8()
{
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex);
}

uint64_t sub_1004DB458(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex;
  if ((*(v2 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1004DB598@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__delegate;
  swift_beginAccess();
  return sub_1004DD384(v5 + v3, a1);
}

uint64_t sub_1004DB660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__delegate;
  swift_beginAccess();
  return sub_1004DD384(v3 + v4, a2);
}

uint64_t sub_1004DB728(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__delegate;
  swift_beginAccess();
  sub_1004DD384(v1 + v3, v7);
  v4 = sub_10010ED08(v7, a1);
  sub_100024F64(v7, &unk_101923ED0);
  if (v4)
  {
    swift_beginAccess();
    sub_1004DD480(a1, v1 + v3);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v7[0] = v1;
    sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_100024F64(a1, &unk_101923ED0);
}

uint64_t sub_1004DB8B8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__delegate;
  swift_beginAccess();
  sub_1004DD480(a2, a1 + v4);
  return swift_endAccess();
}

id sub_1004DB924()
{
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider);

  return v1;
}

id sub_1004DB9DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider);
  *a2 = v4;

  return v4;
}

void sub_1004DBA9C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider);
  type metadata accessor for HomeRecentsCellSnapshotProvider();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004DBC00(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_1004DBC1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__groups);
}

uint64_t sub_1004DBCD0()
{
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1004DBD9C()
{
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__itemCount);
}

uint64_t sub_1004DBE44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__itemCount);
  return result;
}

uint64_t sub_1004DBEF4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__itemCount) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1004DC000()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1004DD33C(&qword_101923CB8, type metadata accessor for HomeRecentsShelfCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider);
  swift_getKeyPath();
  v59[0] = v2;
  sub_1004DD33C(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  v3 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v3[OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__cellSnapshots];

  v5 = *(v4 + 16);
  v53 = v1;
  if (v5)
  {
    v6 = OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__delegate;
    v7 = v4 + 32;
    swift_beginAccess();
    v8 = &_swiftEmptyArrayStorage;
    do
    {
      sub_100098118(v7, v60);
      sub_100098118(v60, v58);
      swift_getKeyPath();
      v59[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1004DD384(v1 + v6, &v57);
      sub_1004D8CDC(v58, &v57, v59);
      sub_10019D044(v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10035797C(0, v8[2] + 1, 1, v8);
      }

      v10 = v8[2];
      v9 = v8[3];
      if (v10 >= v9 >> 1)
      {
        v8 = sub_10035797C((v9 > 1), v10 + 1, 1, v8);
      }

      v8[2] = v10 + 1;
      sub_1004D8A74(v59, &v8[19 * v10 + 4]);
      v7 += 48;
      --v5;
    }

    while (v5);
  }

  else
  {

    v8 = &_swiftEmptyArrayStorage;
  }

  v54 = v8;
  v12 = v8[2];
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = __OFADD__(v14, 3);
      v14 += 3;
      if (v16)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v13;
      if (v14 >= v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_75;
  }

  v15 = 0;
LABEL_18:
  v59[0] = &_swiftEmptyArrayStorage;
  result = sub_1005117EC(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    goto LABEL_83;
  }

  v17 = v59[0];
  if (v15)
  {
    v18 = 0;
    v19 = 0;
    result = v8;
    v20 = v8 + 4;
    v21 = 3;
    while (1)
    {
      v22 = v12 >= v21 ? v21 : v12;
      if (v19 >= v12)
      {
        break;
      }

      if (v19 == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_76;
      }

      if (v12 >= (v19 + 3))
      {
        v23 = v19 + 3;
      }

      else
      {
        v23 = v12;
      }

      if (v23 < v19)
      {
        goto LABEL_77;
      }

      v24 = *(result + 16);
      if (v24 < v19 || v24 < v23)
      {
        goto LABEL_78;
      }

      v55 = v19 + 3;
      v25 = v22 + v18;
      if (v22 + v18 == v24)
      {
        v26 = v17;

        v17 = v26;
        result = v54;
        v27 = v54;
      }

      else
      {
        v27 = &_swiftEmptyArrayStorage;
        if (v19 != v23)
        {
          v31 = v17;
          if (v25 >= 1)
          {
            sub_1000CE6B8(&qword_10191AF58);
            v27 = swift_allocObject();
            v32 = j__malloc_size_0(v27);
            v27[2] = v25;
            v27[3] = 2 * ((v32 - 32) / 152);
          }

          swift_arrayInitWithCopy();
          result = v54;
          v17 = v31;
        }
      }

      v59[0] = v17;
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1005117EC((v28 > 1), v29 + 1, 1);
        result = v54;
        v17 = v59[0];
      }

      v21 += 3;
      *(v17 + 16) = v29 + 1;
      *(v17 + 8 * v29 + 32) = v27;
      v18 -= 3;
      v20 += 57;
      v30 = v55;
      v19 = v55;
      if (!--v15)
      {
        if (v55 < v12)
        {
          goto LABEL_46;
        }

        goto LABEL_71;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

  result = v8;
  if (v12)
  {
    v30 = 0;
LABEL_46:
    v33 = v30 + 3;
    v34 = -v30;
    v35 = result + 152 * v30 + 32;
    v36 = v30;
    v56 = v30;
    do
    {
      v37 = v12 >= v33 ? v33 : v12;
      v38 = v36 + 3;
      if (__OFADD__(v36, 3))
      {
        goto LABEL_79;
      }

      if (v12 >= v38)
      {
        v39 = v36 + 3;
      }

      else
      {
        v39 = v12;
      }

      if (v39 < v36)
      {
        goto LABEL_80;
      }

      if (v30 < 0)
      {
        goto LABEL_81;
      }

      v40 = *(result + 16);
      if (v40 < v36 || v40 < v39)
      {
        goto LABEL_82;
      }

      v42 = v37 + v34;
      if (v37 + v34 == v40)
      {
        v43 = v17;

        v17 = v43;
        result = v54;
        v44 = v54;
      }

      else
      {
        v44 = &_swiftEmptyArrayStorage;
        if (v36 != v39)
        {
          v47 = v17;
          if (v42 < 1)
          {
            v48 = &_swiftEmptyArrayStorage;
          }

          else
          {
            sub_1000CE6B8(&qword_10191AF58);
            v48 = swift_allocObject();
            v49 = j__malloc_size_0(v48);
            v48[2] = v42;
            v48[3] = 2 * ((v49 - 32) / 152);
          }

          swift_arrayInitWithCopy();
          v44 = v48;
          result = v54;
          v17 = v47;
        }
      }

      v59[0] = v17;
      v46 = *(v17 + 16);
      v45 = *(v17 + 24);
      if (v46 >= v45 >> 1)
      {
        v52 = v44;
        sub_1005117EC((v45 > 1), v46 + 1, 1);
        v44 = v52;
        result = v54;
        v17 = v59[0];
      }

      v36 += 3;
      *(v17 + 16) = v46 + 1;
      *(v17 + 8 * v46 + 32) = v44;
      v33 += 3;
      v34 -= 3;
      v35 += 456;
      v30 = v56;
    }

    while (v38 < v12);
  }

LABEL_71:

  if (*(v53 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__itemCount) != v12)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v59[0] = v53;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v51 = swift_getKeyPath();
  __chkstk_darwin(v51);
  v59[0] = v53;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1004DC778()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004DC000();
  }
}

uint64_t (*sub_1004DC7CC(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1004DD214;
}

uint64_t sub_1004DC830()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_10120BEF0, v6);
}

uint64_t sub_1004DC984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004DCA1C, v6, v5);
}

uint64_t sub_1004DCA1C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(swift_task_alloc() + 16) = v2;
    withObservationTracking<A>(_:onChange:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004DCB30()
{
  v0 = sub_1000CE6B8(&qword_10191C2B8);
  sub_100021578(v0, qword_101960448);
  sub_100021540(v0, qword_101960448);
  type metadata accessor for HomeRecentsShelfCollectionViewCell(0);
  type metadata accessor for HomeRecentsShelfCellModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

id sub_1004DCBC0(char *a1, uint64_t a2, void **a3)
{
  v5 = sub_1000CE6B8(&unk_101923EB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-1] - v7;
  v9 = *a3;
  v10 = OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_viewModel;
  v11 = *&a1[OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_viewModel];
  *&a1[OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_viewModel] = *a3;
  if (!v11)
  {
    v15 = v9;
    v16 = v9;
    if (!v9)
    {
LABEL_7:

      goto LABEL_8;
    }

LABEL_5:
    v20 = &v20;
    __chkstk_darwin(v15);
    *(&v20 - 2) = v16;
    *(&v20 - 1) = a1;
    type metadata accessor for HomeRecentsShelfView(0);
    sub_1004DD33C(&qword_101923CC0, type metadata accessor for HomeRecentsShelfView);
    v17 = v16;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v21[3] = v5;
    v21[4] = sub_1004DD190();
    sub_10001A848(v21);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();

LABEL_8:
    goto LABEL_9;
  }

  type metadata accessor for HomeRecentsShelfCellModel();
  v12 = v9;
  v13 = v11;
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    v16 = *&a1[v10];
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_9:
  v18 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityIdentifier:v18];

  return [a1 setAccessibilityTraits:UIAccessibilityTraitButton];
}

uint64_t type metadata accessor for HomeRecentsShelfCellModel()
{
  result = qword_101923E58;
  if (!qword_101923E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DCFA4()
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

uint64_t sub_1004DD084@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019068F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_10191C2B8);
  v3 = sub_100021540(v2, qword_101960448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1004DD138(uint64_t a1)
{
  result = sub_1004DD33C(&unk_101923EA0, type metadata accessor for HomeRecentsShelfCellModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004DD190()
{
  result = qword_101923EC0;
  if (!qword_101923EC0)
  {
    sub_1000D6664(&unk_101923EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923EC0);
  }

  return result;
}

void sub_1004DD1F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__scrollIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_1004DD21C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1004DC984(a1, v4, v5, v6);
}

uint64_t (*sub_1004DD2D8())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_1004DD214;
}

uint64_t sub_1004DD33C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004DD384(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101923ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004DD420()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__groups) = *(v0 + 24);
}

uint64_t sub_1004DD480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101923ED0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1004DD4F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider);
  *(v1 + OBJC_IVAR____TtC4Maps25HomeRecentsShelfCellModel__provider) = v2;
  v4 = v2;
}

id sub_1004DD570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  ObservationRegistrar.init()();
  *&v4[OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_routeItem] = a1;

  *&v4[OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_viewModel] = sub_1004DD62C(v9, a2, a3);
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");

  return v10;
}

uint64_t sub_1004DD62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_10005EB40(a1 + OBJC_IVAR____TtC4Maps9RouteItem_imageProvider, v13);
  v12 = 0;
  memset(v11, 0, sizeof(v11));

  sub_1004DDBAC(a1);
  sub_1004DDEE8(a1, a2, a3);
  sub_1004DD814(a1, v9);
  sub_1004DE2B0(a2, a3);
  sub_1004DEB0C(a1, a2, a3);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  return ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
}

uint64_t sub_1004DD814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BottomAccessoryViewModel.BottomAccessoryType();
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC4Maps9RouteItem_notes);
  v10 = *(a1 + OBJC_IVAR____TtC4Maps9RouteItem_notes + 8);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    *v8 = v9;
    *(v8 + 1) = v10;
    *(v8 + 2) = 0;
    v8[24] = 1;
    (*(v5 + 104))(v8, enum case for BottomAccessoryViewModel.BottomAccessoryType.note(_:), v6);

    BottomAccessoryViewModel.init(type:)();
    v12 = type metadata accessor for BottomAccessoryViewModel();
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for BottomAccessoryViewModel();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t type metadata accessor for RouteItemRowViewModel()
{
  result = qword_101923F28;
  if (!qword_101923F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DDB20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_routeItem);
  v4 = OBJC_IVAR____TtC4Maps9RouteItem_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_1004DDBAC(uint64_t a1)
{
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RichTextViewModel();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC4Maps9RouteItem_subtitle + 8);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + OBJC_IVAR____TtC4Maps9RouteItem_subtitle) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2, v8);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v3 + 8))(v5, v2);
    v13 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_100355BD8(v14 > 1, v15 + 1, 1, v13);
    }

    v13[2] = v15 + 1;
    (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
    v16 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100356AC0((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v16[v18 + 4] = v13;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v19 = *(a1 + OBJC_IVAR____TtC4Maps9RouteItem_hikeInfoViewModel);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_100356AC0(0, v16[2] + 1, 1, v16);
  }

  v21 = v16[2];
  v20 = v16[3];
  if (v21 >= v20 >> 1)
  {
    v16 = sub_100356AC0((v20 > 1), v21 + 1, 1, v16);
  }

  v16[2] = v21 + 1;
  v16[v21 + 4] = v19;
  return v16;
}

void *sub_1004DDEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrailingAccessoryViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  swift_getKeyPath();
  v27 = a1;
  sub_1004DE6B4(&qword_101923F38, type metadata accessor for RouteItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded) == 1)
  {
    v15 = *(sub_1000CE6B8(&qword_101923F40) + 48);
    *v7 = 0x4059000000000000;
    v16 = enum case for OfflineState.downloaded(_:);
    v17 = type metadata accessor for OfflineState();
    (*(*(v17 - 8) + 104))(&v7[v15], v16, v17);
    (*(v5 + 104))(v7, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.offline(_:), v4);
    TrailingAccessoryViewModel.init(type:)();
    v18 = sub_100358AC8(0, 1, 1, _swiftEmptyArrayStorage);
    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_100358AC8(v19 > 1, v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v14, v8);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  sub_1004DEB0C(a1, v25, v26);
  static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_100358AC8(0, v18[2] + 1, 1, v18);
  }

  v22 = v18[2];
  v21 = v18[3];
  if (v22 >= v21 >> 1)
  {
    v18 = sub_100358AC8(v21 > 1, v22 + 1, 1, v18);
  }

  v18[2] = v22 + 1;
  (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v11, v8);
  return v18;
}

uint64_t sub_1004DE2B0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CellAction.Placement();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v18 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CellAction.Style();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&unk_101923750);
  type metadata accessor for CellAction();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1011E1D30;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v22._object = 0x800000010121D3F0;
  v12._countAndFlagsBits = 0x6570697753776F52;
  v12._object = 0xEF6574656C65445FLL;
  v13._countAndFlagsBits = 0x6574656C6544;
  v13._object = 0xE600000000000000;
  v22._countAndFlagsBits = 0xD000000000000036;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, qword_1019600D8, v13, v22);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v21;
  *(v14 + 32) = 5;
  (*(v8 + 104))(v10, enum case for CellAction.Style.destructive(_:), v16);
  (*(v6 + 104))(v18, enum case for CellAction.Placement.default(_:), v17);
  strcpy(v5, "Swipe.Delete");
  v5[13] = 0;
  *(v5 + 7) = -5120;
  (*(v19 + 104))(v5, enum case for MapsDesignAccessibilityString.button(_:), v20);

  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  return v11;
}

uint64_t sub_1004DE6B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004DE6FC(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x800000010123CBC0;
      v3 = 0xD00000000000001BLL;
      v4 = 0x800000010123CBA0;
      v6 = 0x800000010123B810;
      v5 = 0xD000000000000023;
      v2 = 0xD000000000000010;
    }

    else if (a1 == 4)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x800000010123CB70;
      v2 = 0x52206574656C6544;
      v6 = 0xEC0000006574756FLL;
      v3 = 0xD00000000000001DLL;
      v4 = 0x800000010123CB50;
      v5 = 0xD000000000000025;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x800000010121D3F0;
      v3 = 0x6570697753776F52;
      v4 = 0xEF6574656C65445FLL;
      v2 = 0x6574656C6544;
      v5 = 0xD000000000000036;
      v6 = 0xE600000000000000;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x800000010123CCD0;
      v2 = 0x64616F6C6E776F44;
      v3 = 0xD000000000000026;
      v4 = 0x800000010123CCA0;
      v5 = 0xD000000000000037;
      v6 = 0xE800000000000000;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x800000010123CC20;
      v2 = 0x656E696C66664FLL;
      v3 = 0xD000000000000028;
      v4 = 0x800000010123CBF0;
      v5 = 0xD000000000000071;
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x800000010123CD40;
    v2 = 0x6F69746365726944;
    v3 = 0xD000000000000024;
    v4 = 0x800000010123CD10;
    v5 = 0xD000000000000029;
    v6 = 0xEA0000000000736ELL;
  }

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
}

void *sub_1004DEB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v76 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for CellAction.Placement();
  v74 = *(v69 - 8);
  __chkstk_darwin(v69);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CellAction.Style();
  v73 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for CellAction();
  v75 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v57 - v12;
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  v19 = *(a1 + OBJC_IVAR____TtC4Maps9RouteItem_isAvailable);
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  v21 = qword_101960000;
  v65 = v5;
  v66 = a3;
  if (v19 == 1 && *(a1 + OBJC_IVAR____TtC4Maps9RouteItem_isRouteCreationAvailable) == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v78._object = 0x800000010123CD40;
    v22._countAndFlagsBits = 0x6F69746365726944;
    v23._countAndFlagsBits = 0xD000000000000024;
    v23._object = 0x800000010123CD10;
    v78._countAndFlagsBits = 0xD000000000000029;
    v22._object = 0xEA0000000000736ELL;
    v63.super.isa = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, qword_1019600D8, v22, v78)._object;
    v24 = swift_allocObject();
    v26 = v66;
    v25 = v67;
    *(v24 + 16) = v72;
    *(v24 + 24) = v26;
    *(v24 + 32) = 0;
    (*(v73 + 104))(v68, enum case for CellAction.Style.default(_:), v25);
    (*(v74 + 104))(v70, enum case for CellAction.Placement.quickAction(_:), v69);
    *v7 = 0x6F69746365726944;
    v7[1] = 0xEA0000000000736ELL;
    (*(v76 + 104))(v7, enum case for MapsDesignAccessibilityString.button(_:), v65);

    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    v27 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = sub_100355E1C(v28 > 1, v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    v30 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v31 = *(v75 + 72);
    v63.super.isa = *(v75 + 32);
    (v63.super.isa)(v27 + v30 + v31 * v29, v18, v71);
    swift_getKeyPath();
    v77 = a1;
    sub_1004DFA60();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + OBJC_IVAR____TtC4Maps9RouteItem__isDownloaded))
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    a3 = v66;
    sub_1004DF534(v32, v72, v66, v15);
    v34 = v27[2];
    v33 = v27[3];
    if (v34 >= v33 >> 1)
    {
      v27 = sub_100355E1C(v33 > 1, v34 + 1, 1, v27);
    }

    v27[2] = v34 + 1;
    (v63.super.isa)(v27 + v30 + v34 * v31, v15, v71);
    v21 = qword_101960000;
    p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  if (p_cache[237] != -1)
  {
    v56 = v21;
    swift_once();
    v21 = v56;
  }

  v35._countAndFlagsBits = 0xD000000000000010;
  v36._countAndFlagsBits = 0xD00000000000001BLL;
  v79._object = 0x800000010123CBC0;
  v36._object = 0x800000010123CBA0;
  v35._object = 0x800000010123B810;
  v63.super.isa = v21[27];
  v79._countAndFlagsBits = 0xD000000000000023;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v63, v35, v79);
  v37 = swift_allocObject();
  *(v37 + 16) = v72;
  *(v37 + 24) = a3;
  *(v37 + 32) = 3;
  v38 = *(v73 + 104);
  v73 += 104;
  v61 = v38;
  v38(v68, enum case for CellAction.Style.default(_:), v67);
  v39 = *(v74 + 104);
  v60 = enum case for CellAction.Placement.default(_:);
  v74 += 104;
  v59 = v39;
  v39(v70);
  *v7 = 1953064005;
  v7[1] = 0xE400000000000000;
  v40 = *(v76 + 104);
  v58 = enum case for MapsDesignAccessibilityString.button(_:);
  v76 += 104;
  v57 = v40;
  v40(v7);

  v41 = v62;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_100355E1C(0, v27[2] + 1, 1, v27);
  }

  v43 = v27[2];
  v42 = v27[3];
  if (v43 >= v42 >> 1)
  {
    v27 = sub_100355E1C(v42 > 1, v43 + 1, 1, v27);
  }

  v27[2] = v43 + 1;
  v44 = *(v75 + 32);
  v45 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v46 = *(v75 + 72);
  v75 += 32;
  v62 = v44;
  (v44)(v27 + v45 + v46 * v43, v41, v71);
  v47._countAndFlagsBits = 0xD00000000000001DLL;
  v80._object = 0x800000010123CB70;
  v48._countAndFlagsBits = 0x52206574656C6544;
  v48._object = 0xEC0000006574756FLL;
  v47._object = 0x800000010123CB50;
  v80._countAndFlagsBits = 0xD000000000000025;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v63, v48, v80);
  v49 = swift_allocObject();
  v51 = v66;
  v50 = v67;
  *(v49 + 16) = v72;
  *(v49 + 24) = v51;
  *(v49 + 32) = 4;
  v61(v68, enum case for CellAction.Style.destructive(_:), v50);
  v59(v70, v60, v69);
  *v7 = 0x6574656C6544;
  v7[1] = 0xE600000000000000;
  v57(v7, v58, v65);

  v52 = v64;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v54 = v27[2];
  v53 = v27[3];
  if (v54 >= v53 >> 1)
  {
    v27 = sub_100355E1C(v53 > 1, v54 + 1, 1, v27);
  }

  v27[2] = v54 + 1;
  (v62)(v27 + v45 + v54 * v46, v52, v71);
  return v27;
}

uint64_t sub_1004DF534@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a3;
  v27 = a2;
  v32 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CellAction.Placement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CellAction.Style();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DE6FC(a1);
  v30 = v17;
  v31 = v16;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v28 = 0x6C69636E6570;
      v29 = 0xE600000000000000;
      goto LABEL_13;
    }

    if (a1 == 4)
    {
      v28 = 0x6873617274;
      v29 = 0xE500000000000000;
      goto LABEL_13;
    }

    v28 = 0x69662E6873617274;
    v18 = 0xEA00000000006C6CLL;
  }

  else
  {
    if (!a1)
    {
      v28 = 0xD000000000000023;
      v29 = 0x800000010123B790;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v28 = 0xD000000000000011;
      v29 = 0x800000010123BA90;
      goto LABEL_13;
    }

    v28 = 0xD000000000000010;
    v18 = 0x800000010123BB80;
  }

  v29 = v18;
LABEL_13:
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v27;
  *(v19 + 24) = v20;
  *(v19 + 32) = a1;
  v21 = &enum case for CellAction.Style.destructive(_:);
  if ((a1 & 0xFE) != 4)
  {
    v21 = &enum case for CellAction.Style.default(_:);
  }

  (*(v13 + 104))(v15, *v21, v12);
  v22 = *(v9 + 104);
  switch(a1)
  {
    case 2u:
      v22(v11, enum case for CellAction.Placement.quickAction(_:), v8);
      v23 = 0xE700000000000000;
      v24 = 0x656E696C66664FLL;
      goto LABEL_25;
    case 1u:
      v22(v11, enum case for CellAction.Placement.quickAction(_:), v8);
      v23 = 0xE800000000000000;
      v24 = 0x64616F6C6E776F44;
      goto LABEL_25;
    case 0u:
      v22(v11, enum case for CellAction.Placement.quickAction(_:), v8);
      v23 = 0xEA0000000000736ELL;
      v24 = 0x6F69746365726944;
LABEL_25:
      v25 = v32;
      goto LABEL_26;
  }

  v22(v11, enum case for CellAction.Placement.default(_:), v8);
  if (a1 == 3)
  {
    v23 = 0xE400000000000000;
    v24 = 1953064005;
    goto LABEL_25;
  }

  v25 = v32;
  if (a1 == 4)
  {
    v23 = 0xE600000000000000;
    v24 = 0x6574656C6544;
  }

  else
  {
    v23 = 0xEC0000006574656CLL;
    v24 = 0x65442E6570697753;
  }

LABEL_26:
  *v7 = v24;
  v7[1] = v23;
  (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.button(_:), v25);

  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

unint64_t sub_1004DFA60()
{
  result = qword_101923F38;
  if (!qword_101923F38)
  {
    type metadata accessor for RouteItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101923F38);
  }

  return result;
}

uint64_t sub_1004DFAE8()
{
  v1 = type metadata accessor for RouteCell.RouteCellType();
  v2 = __chkstk_darwin(v1);
  v4 = *v0;
  (*(v5 + 104))(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for RouteCell.RouteCellType.mediumImageLeft(_:), v2);
  v6 = *(v4 + OBJC_IVAR____TtC4Maps21RouteItemRowViewModel_viewModel);
  v8[4] = type metadata accessor for ListCellViewModel();
  v8[5] = sub_1004DFC40(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v8[1] = v6;

  return RouteCell.init(_:model:tapHandler:)();
}

uint64_t sub_1004DFC40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004DFC88(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004DFD7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1004E19D0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1004E19D0();
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_1004DFE84()
{
  swift_getKeyPath();
  sub_1004E11A0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1004DFF18(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

uint64_t sub_1004DFF58()
{
  swift_getKeyPath();
  sub_1004E11A0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes);
}

uint64_t sub_1004DFFD0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004E11A0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1004E00B8()
{
  swift_getKeyPath();
  sub_1004E11A0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1004E0148(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps20RouteItemsController__routeById;
  swift_beginAccess();

  sub_10022666C(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004E11A0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004E0268(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps20RouteItemsController__routeById;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

_BYTE *sub_1004E02D8(unint64_t a1, unint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC4Maps20RouteItemsController__availableRoutes] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC4Maps20RouteItemsController__unavailableRoutes] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC4Maps20RouteItemsController__routeById] = sub_1000D216C(_swiftEmptyArrayStorage);
  ObservationRegistrar.init()();
  v3[OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes] = a3;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v14, "init");
  sub_1004E04D0();
  sub_1004E1210(a1, a2);

  swift_getKeyPath();
  v13[0] = v8;
  sub_1004E11A0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v8[OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes] == 1)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_1004E19C8;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1004DFD7C;
    v13[3] = &unk_10161E6D0;
    v11 = _Block_copy(v13);

    [v9 fetchSavedRoutesWithType:3 completion:v11];
    _Block_release(v11);
  }

  return v8;
}

void sub_1004E04D0()
{
  v0 = MURouteSnapshotManagerDidPurgeNotification;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1004E1A5C;
  v18 = v5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1004DFC88;
  v16 = &unk_10161E6F8;
  v6 = _Block_copy(&v13);

  v7 = [v2 addObserverForName:v0 object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  v8 = [v1 defaultCenter];
  v9 = [v3 mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1004E1A94;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1004DFC88;
  v16 = &unk_10161E720;
  v11 = _Block_copy(&v13);

  v12 = [v8 addObserverForName:@"MapsSavedRoutesDidUpdateNotification" object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

id sub_1004E0754()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for RouteItemsController()
{
  result = qword_101923FA0;
  if (!qword_101923FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1004E095C(uint64_t a1)
{
  swift_getKeyPath();
  v10 = v1;
  sub_1004E11A0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps20RouteItemsController__routeById;
  swift_beginAccess();
  v4 = *(v10 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1002972F8(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1004E0A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004E0AC8, v6, v5);
}

uint64_t sub_1004E0AC8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    v0[2] = Strong;
    sub_1004E11A0();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (Strong[OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes] == 1)
    {
      v2 = objc_opt_self();
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_1004E1C44;
      v0[7] = v3;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004DFD7C;
      v0[5] = &unk_10161E7C0;
      v4 = _Block_copy(v0 + 2);

      [v2 fetchSavedRoutesWithType:3 completion:v4];
      _Block_release(v4);
    }
  }

  *v0[11] = Strong == 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1004E0C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;

  sub_10020ADD4(0, 0, v7, a4, v12);
}

uint64_t sub_1004E0DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004E0E88, v6, v5);
}

uint64_t sub_1004E0E88()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    v0[2] = Strong;
    sub_1004E11A0();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (Strong[OBJC_IVAR____TtC4Maps20RouteItemsController__isAllSavedRoutes] == 1)
    {
      v2 = objc_opt_self();
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_1004E1C44;
      v0[7] = v3;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1004DFD7C;
      v0[5] = &unk_10161E770;
      v4 = _Block_copy(v0 + 2);

      [v2 fetchSavedRoutesWithType:3 completion:v4];
      _Block_release(v4);
    }
  }

  *v0[11] = Strong == 0;
  v5 = v0[1];

  return v5();
}

void sub_1004E1038(unint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1004E1210(a1, a2);
  }
}

uint64_t sub_1004E10D8()
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

unint64_t sub_1004E11A0()
{
  result = qword_101924580;
  if (!qword_101924580)
  {
    type metadata accessor for RouteItemsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924580);
  }

  return result;
}

uint64_t sub_1004E1210(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v46 = type metadata accessor for UUID();
  v43 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC4Maps20RouteItemsController___observationRegistrar;
  v52 = v2;
  v7 = sub_1004E11A0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC4Maps20RouteItemsController__routeById;
  swift_beginAccess();
  v42 = v8;
  *(v3 + v8) = _swiftEmptyDictionarySingleton;

  v50 = v3;
  swift_getKeyPath();
  v47 = v6;
  v48 = v7;
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v9 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v51 = _swiftEmptyArrayStorage;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_38;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }
  }

LABEL_17:
  while (1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v37 - 2) = v3;
    *(&v37 - 1) = v9;
    v50 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v21 = _swiftEmptyArrayStorage;
    v22 = v44;
    if (!v44)
    {
      break;
    }

    v51 = _swiftEmptyArrayStorage;
    v10 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v44 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v41 = 0;
      if (!v23)
      {
        break;
      }
    }

    else
    {
      v23 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = 0;
      if (!v23)
      {
        break;
      }
    }

    v9 = 0;
    v24 = v22 & 0xC000000000000001;
    v39 = (v43 + 1);
    v40 = (v43 + 2);
    a1 = &OBJC_IVAR____TtC4Maps9RouteItem_id;
LABEL_21:
    v43 = v21;
    v25 = v9;
    while (1)
    {
      if (v24)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v10 + 16))
        {
          goto LABEL_37;
        }

        v26 = *(v22 + 8 * v25 + 32);
      }

      v27 = v26;
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      type metadata accessor for RouteItem();
      swift_allocObject();
      v28 = v27;
      sub_1004EB10C(v28);
      if (v29)
      {
        v30 = *v40;
        v43 = v29;
        v30(v45, v29 + OBJC_IVAR____TtC4Maps9RouteItem_id, v46);
        swift_getKeyPath();
        v50 = v3;
        v38 = v28;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v50 = v3;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v31 = v42;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v3 + v31);
        *(v3 + v31) = 0x8000000000000000;
        v33 = v38;
        v34 = v45;
        sub_10012B82C(v38, v45, isUniquelyReferenced_nonNull_native);
        (*v39)(v34, v46);
        *(v3 + v31) = v49;
        swift_endAccess();
        v50 = v3;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v51;
        v22 = v44;
        a1 = &OBJC_IVAR____TtC4Maps9RouteItem_id;
        if (v9 != v23)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      ++v25;
      if (v9 == v23)
      {
        v21 = v43;
        goto LABEL_33;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
LABEL_4:
      v12 = 0;
      v39 = (v43 + 1);
      v40 = (v43 + 2);
      do
      {
        v41 = v9;
        v9 = v12;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(v10 + 16))
            {
              goto LABEL_35;
            }

            v13 = *(a1 + 8 * v9 + 32);
          }

          v14 = v13;
          v12 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          type metadata accessor for RouteItem();
          swift_allocObject();
          v15 = v14;
          sub_1004EB10C(v15);
          if (v16)
          {
            break;
          }

          ++v9;
          if (v12 == v11)
          {
            v9 = v41;
            goto LABEL_17;
          }
        }

        (*v40)(v45, v16 + OBJC_IVAR____TtC4Maps9RouteItem_id, v46);
        swift_getKeyPath();
        v50 = v3;
        v41 = v15;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v50 = v3;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v17 = v42;
        swift_beginAccess();
        v18 = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v3 + v17);
        *(v3 + v17) = 0x8000000000000000;
        v19 = v45;
        sub_10012B82C(v41, v45, v18);
        (*v39)(v19, v46);
        *(v3 + v17) = v49;
        swift_endAccess();
        v50 = v3;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = v51;
      }

      while (v12 != v11);
    }
  }

LABEL_33:
  v35 = swift_getKeyPath();
  __chkstk_darwin(v35);
  *(&v37 - 2) = v3;
  *(&v37 - 1) = v21;
  v50 = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_1004E19D0()
{
  result = qword_10190EC50;
  if (!qword_10190EC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190EC50);
  }

  return result;
}

uint64_t sub_1004E1ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1004E0DF0(a1, v4, v5, v6);
}

uint64_t sub_1004E1B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1004E0A30(a1, v4, v5, v6);
}

uint64_t type metadata accessor for RouteItemsView()
{
  result = qword_101924008;
  if (!qword_101924008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E1CCC()
{
  sub_1004E1E48(319, &qword_101924018, type metadata accessor for RouteItemsViewModel);
  if (v0 <= 0x3F)
  {
    sub_1004E1E48(319, &qword_10190CAB0, &type metadata accessor for EditMode);
    if (v1 <= 0x3F)
    {
      sub_1004E1DE4();
      if (v2 <= 0x3F)
      {
        sub_1004E1E48(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004E1DE4()
{
  if (!qword_101924020)
  {
    sub_1000D6664(&unk_101924028);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_101924020);
    }
  }
}

void sub_1004E1E48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004E1EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 2) & 0x3F80 | (*a1 >> 1) | (*a1 >> 3) & 0xFFFFC000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1004E1F0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF80001FFFFLL | ((-a2 >> 14) << 17);
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

uint64_t sub_1004E2008@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = EnvironmentValues.listCellAccessoryTapHandler.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_100186B18;
  a1[1] = result;
  return result;
}

uint64_t sub_1004E206C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return EnvironmentValues.listCellAccessoryTapHandler.setter();
}

uint64_t sub_1004E20D8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldShowActionBar.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1004E2130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v75 = a2;
  v77 = type metadata accessor for RouteItemsView();
  v70 = *(v77 - 8);
  v79 = *(v70 + 64);
  __chkstk_darwin(v77);
  v78 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ContainerBackgroundPlacement();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_1019240C8);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v12 = sub_1000CE6B8(&qword_1019240C0);
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v63 = sub_1000CE6B8(&qword_1019240B0);
  __chkstk_darwin(v63);
  v61 = &v60 - v16;
  v69 = sub_1000CE6B8(&qword_101924098) - 8;
  __chkstk_darwin(v69);
  v76 = &v60 - v17;
  v71 = sub_1000CE6B8(&qword_101924088);
  __chkstk_darwin(v71);
  v72 = &v60 - v18;
  v73 = sub_1000CE6B8(&qword_101924070);
  __chkstk_darwin(v73);
  v74 = &v60 - v19;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v20 = sub_1000CE6B8(&qword_1019240E8);
  sub_1004E2BC0(a1, &v11[*(v20 + 44)]);
  v81 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v21 = sub_1000414C8(&qword_1019240D0, &qword_1019240C8);
  View.containerBackground<A>(_:for:)();
  (*(v62 + 8))(v8, v64);

  sub_100024F64(v11, &qword_1019240C8);
  strcpy(v6, "LibraryRoutes");
  *(v6 + 7) = -4864;
  v23 = v67;
  v22 = v68;
  (*(v67 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v68);
  v81 = v9;
  v82 = &type metadata for Color;
  v83 = v21;
  v84 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v24 = v61;
  v25 = v65;
  View.mapsDesignAXContainer(withID:)();
  v26 = v78;
  (*(v23 + 8))(v6, v22);
  (*(v66 + 8))(v15, v25);
  v27 = v24 + *(v63 + 36);
  v28 = v60;
  sub_1004E6828(v60, v27);
  *(v27 + *(sub_1000CE6B8(&qword_1019240E0) + 36)) = 1;
  v29 = (v28 + *(v77 + 28));
  v31 = *v29;
  v30 = v29[1];
  v81 = v31;
  v82 = v30;
  sub_1000CE6B8(&qword_10190A148);
  State.wrappedValue.getter();
  sub_1004E8F38(v28, v26);
  v32 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v70 = *(v70 + 80);
  v33 = swift_allocObject();
  v68 = v32;
  sub_1004E8F9C(v26, v33 + v32);
  sub_1004E8DB8();
  v34 = v76;
  View.actionBar(_:onSelect:)();

  sub_100024F64(v24, &qword_1019240B0);
  v35 = static Animation.default.getter();
  v36 = (v34 + *(sub_1000CE6B8(&qword_1019240A8) + 36));
  sub_1000CE6B8(&qword_10190A110);
  sub_1000CE6B8(&qword_10190CA30);
  State.wrappedValue.getter();
  *v36 = v35;
  KeyPath = swift_getKeyPath();
  v38 = (v34 + *(v69 + 44));
  v39 = *(sub_1000CE6B8(&qword_10190A120) + 28);
  State.projectedValue.getter();
  v40 = sub_1000CE6B8(&qword_10190A168);
  (*(*(v40 - 8) + 56))(v38 + v39, 0, 1, v40);
  *v38 = KeyPath;
  v41 = swift_getKeyPath();
  v42 = v28[1];
  v81 = *v28;
  v82 = v42;
  sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  v43 = v80;
  swift_getKeyPath();
  v81 = v43;
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + 16);
  sub_1004E9214(v44);

  if (v44 < 0)
  {
  }

  else
  {
    sub_1004E9304(v44);
  }

  v45 = v72;
  sub_1000F11C4(v76, v72, &qword_101924098);
  v46 = v45 + *(v71 + 36);
  *v46 = v41;
  *(v46 + 8) = v44 < 0;
  v47 = v78;
  sub_1004E8F38(v28, v78);
  v48 = v68;
  v49 = swift_allocObject();
  sub_1004E8F9C(v47, v49 + v48);
  v50 = v45;
  v51 = v74;
  sub_1000F11C4(v50, v74, &qword_101924088);
  v52 = (v51 + *(v73 + 36));
  *v52 = sub_1004E926C;
  v52[1] = v49;
  v52[2] = 0;
  v52[3] = 0;
  v53 = (v28 + *(v77 + 24));
  v55 = *v53;
  v54 = v53[1];
  v81 = v55;
  v82 = v54;
  sub_1000CE6B8(&qword_1019240F8);
  State.wrappedValue.getter();
  if ((v80 & 0xC000000000000001) != 0)
  {
    v56 = __CocoaSet.count.getter();
  }

  else
  {
    v56 = *(v80 + 16);
  }

  v81 = v56;
  v57 = v78;
  sub_1004E8F38(v28, v78);
  v58 = swift_allocObject();
  sub_1004E8F9C(v57, v58 + v48);
  sub_1004E8AC8();
  View.onChange<A>(of:initial:_:)();

  return sub_100024F64(v51, &qword_101924070);
}

uint64_t sub_1004E2BC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v174 = sub_1000CE6B8(&qword_101924110);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v141 - v3;
  v192 = sub_1000CE6B8(&qword_101924118);
  __chkstk_darwin(v192);
  v175 = &v141 - v4;
  v190 = sub_1000CE6B8(&qword_101924120);
  __chkstk_darwin(v190);
  v196 = &v141 - v5;
  v191 = sub_1000CE6B8(&qword_101924128);
  __chkstk_darwin(v191);
  v185 = (&v141 - v6);
  v184 = sub_1000CE6B8(&qword_101924130);
  __chkstk_darwin(v184);
  v167 = &v141 - v7;
  v166 = sub_1000CE6B8(&qword_101924138);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v147 = &v141 - v8;
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v146 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v11 - 8);
  v145 = &v141 - v12;
  v161 = type metadata accessor for RichTextType();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v176 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_101924140);
  __chkstk_darwin(v14 - 8);
  v163 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v141 - v17;
  *&v195 = type metadata accessor for RouteItemsView();
  v142 = *(v195 - 8);
  __chkstk_darwin(v195);
  v143 = v18;
  v144 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000CE6B8(&qword_101924148);
  __chkstk_darwin(v19);
  v159 = &v141 - v20;
  v21 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v21 - 8);
  v158 = &v141 - v22;
  v152 = type metadata accessor for EmptyStateViewModel.Icon();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v154 = (&v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v24 - 8);
  v153 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for EmptyStateView();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000CE6B8(&qword_101924150);
  __chkstk_darwin(v27 - 8);
  v162 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v178 = &v141 - v30;
  v181 = sub_1000CE6B8(&qword_101924158);
  __chkstk_darwin(v181);
  v183 = &v141 - v31;
  v189 = type metadata accessor for ListSectionSpacing();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MapsDesignAccessibilityString();
  v186 = *(v33 - 8);
  __chkstk_darwin(v33);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000CE6B8(&qword_101924160);
  v149 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v141 - v37;
  v179 = sub_1000CE6B8(&qword_101924168);
  __chkstk_darwin(v179);
  v150 = &v141 - v39;
  v40 = sub_1000CE6B8(&qword_101924170);
  __chkstk_darwin(v40 - 8);
  v180 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v182 = &v141 - v43;
  v44 = a1[1];
  v45 = a1;
  v171 = *a1;
  *&v201 = v171;
  *(&v201 + 1) = v44;
  v170 = v44;
  v169 = sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  v46 = v198;
  swift_getKeyPath();
  *&v201 = v46;
  v168 = sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = v46[2];
  v48 = v46[3];
  v49 = v46[4];
  sub_1004E9214(v47);

  v194 = v45;
  if (v47 < 0)
  {
    v65 = (v45 + *(v195 + 24));
    v67 = *v65;
    v66 = v65[1];
    *&v198 = v67;
    *(&v198 + 1) = v66;
    sub_1000CE6B8(&qword_1019240F8);
    v68 = State.projectedValue.getter();
    v184 = &v141;
    v182 = *(&v201 + 1);
    v183 = v201;
    v181 = v202;
    __chkstk_darwin(v68);
    type metadata accessor for RouteItemRowViewModel();
    sub_1000CE6B8(&qword_101924178);
    sub_1004EA814(&qword_1019209A0, type metadata accessor for RouteItemRowViewModel);
    v185 = &protocol conformance descriptor for TupleView<A>;
    sub_1000414C8(&qword_101924180, &qword_101924178);
    v69 = v172;
    List.init(selection:content:)();

    strcpy(v35, "LibraryRoutes");
    *(v35 + 7) = -4864;
    v70 = v186;
    (*(v186 + 104))(v35, enum case for MapsDesignAccessibilityString.list(_:), v33);
    sub_1000414C8(&qword_101924188, &qword_101924110);
    v71 = v175;
    v72 = v174;
    View.mapsDesignAXID(_:)();
    (*(v70 + 8))(v35, v33);
    (*(v173 + 8))(v69, v72);
    v73 = v187;
    static ListSectionSpacing.compact.getter();
    v74 = *(sub_1000CE6B8(&qword_101924190) + 36);
    v75 = v188;
    v76 = v189;
    (*(v188 + 16))(v71 + v74, v73, v189);
    v77 = *(v75 + 56);
    v77(v71 + v74, 0, 1, v76);
    KeyPath = swift_getKeyPath();
    v79 = (v71 + *(sub_1000CE6B8(&qword_101924198) + 36));
    v80 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
    (*(v75 + 32))(v79 + v80, v73, v76);
    v77(v79 + v80, 0, 1, v76);
    *v79 = KeyPath;
    v81 = static Animation.default.getter();
    *&v201 = v171;
    *(&v201 + 1) = v170;
    State.wrappedValue.getter();
    v82 = v198;
    swift_getKeyPath();
    *&v201 = v82;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v83 = *(v82 + 40);

    v84 = (v71 + *(sub_1000CE6B8(&qword_1019241A0) + 36));
    *v84 = v81;
    v84[1] = v83;
    v85 = swift_getKeyPath();
    v86 = (v71 + *(v192 + 36));
    v87 = *(sub_1000CE6B8(&qword_10190A120) + 28);
    sub_1000CE6B8(&qword_10190CA30);
    State.projectedValue.getter();
    v88 = sub_1000CE6B8(&qword_10190A168);
    (*(*(v88 - 8) + 56))(v86 + v87, 0, 1, v88);
    *v86 = v85;
    v89 = &qword_101924118;
    sub_1000D2DFC(v71, v196, &qword_101924118);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_1019241A8, &qword_101924128);
    sub_1004E9A64();
    _ConditionalContent<>.init(storage:)();
    v90 = v71;
  }

  else
  {
    v174 = v19;
    v175 = v49;
    v177 = v48;
    v148 = v47;
    if (v47)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v204._object = 0x800000010123D240;
      v50._countAndFlagsBits = 0xD000000000000031;
      v50._object = 0x800000010123D1B0;
      v51._countAndFlagsBits = 0x1000000000000046;
      v51._object = 0x800000010123D1F0;
      v204._countAndFlagsBits = 0xD00000000000002DLL;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, qword_1019600D8, v51, v204)._countAndFlagsBits;
      __chkstk_darwin(countAndFlagsBits);
      sub_1000CE6B8(&qword_101924278);
      sub_1004EA450();
      List<>.init(content:)();
      sub_1004E9304(v148);

      strcpy(v35, "LibraryRoutes");
      *(v35 + 7) = -4864;
      v53 = v186;
      (*(v186 + 104))(v35, enum case for MapsDesignAccessibilityString.list(_:), v33);
      sub_1000414C8(&qword_101924260, &qword_101924160);
      v54 = v150;
      View.mapsDesignAXID(_:)();
      (*(v53 + 8))(v35, v33);
      (*(v149 + 8))(v38, v36);
      v55 = v187;
      static ListSectionSpacing.compact.getter();
      v56 = *(sub_1000CE6B8(&qword_101924238) + 36);
      v57 = v188;
      v58 = v189;
      (*(v188 + 16))(v54 + v56, v55, v189);
      v59 = *(v57 + 56);
      v59(v54 + v56, 0, 1, v58);
      v60 = swift_getKeyPath();
      v61 = (v54 + *(v179 + 36));
      v62 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
      (*(v57 + 32))(v61 + v62, v55, v58);
      v59(v61 + v62, 0, 1, v58);
      *v61 = v60;
      sub_1000D2DFC(v54, v183, &qword_101924168);
      swift_storeEnumTagMultiPayload();
      sub_1004EA110();
      sub_1000414C8(&qword_101924268, &qword_101924130);
      v63 = v182;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v54, &qword_101924168);
      v64 = v196;
    }

    else
    {
      v189 = v47 & 0x100;
      v173 = v47 & 0x10000;
      if ((v47 & 0x100) != 0)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v91.super.isa = qword_1019600D8;
        v100._countAndFlagsBits = 0xD000000000000015;
        v206._countAndFlagsBits = 0xD00000000000001FLL;
        v101._countAndFlagsBits = 0xD000000000000029;
        v206._object = 0x800000010123D0B0;
        v101._object = 0x800000010123D080;
        v100._object = 0x8000000101223150;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, qword_1019600D8, v100, v206);
        v97 = 0xD000000000000020;
        v140 = 0x800000010123D180;
        v95 = 0x800000010123D0D0;
        v99 = 0xD000000000000076;
        v96 = 0x800000010123D100;
        v94 = 0xD00000000000002ALL;
        v98.super.isa = v91.super.isa;
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v91.super.isa = qword_1019600D8;
        v92._countAndFlagsBits = 0xD000000000000010;
        v205._object = 0x800000010123CF10;
        v93._countAndFlagsBits = 0xD000000000000035;
        v93._object = 0x800000010123CEB0;
        v92._object = 0x800000010123CEF0;
        v205._countAndFlagsBits = 0xD000000000000042;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, qword_1019600D8, v92, v205);
        v140 = 0x800000010123CFE0;
        v94 = 0xD000000000000036;
        v95 = 0x800000010123CF60;
        v96 = 0x800000010123CFA0;
        v97 = 0xD000000000000043;
        v98.super.isa = v91.super.isa;
        v99 = 0x100000000000003FLL;
      }

      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v94, 0, v98, *&v99, *&v97);
      if (v173)
      {
        v110 = v154;
        *v154 = 0xD000000000000038;
        v110[1] = 0x800000010123BD40;
        (*(v151 + 104))(v110, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v152);
        v109 = 1;
        v108 = v158;
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v207._countAndFlagsBits = 0xD000000000000019;
        v207._object = 0x800000010123D060;
        v102._countAndFlagsBits = 0x5220657461657243;
        v102._object = 0xEC0000006574756FLL;
        v103._object = 0x800000010123D030;
        v103._countAndFlagsBits = 0xD00000000000002ALL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v91, v102, v207);
        v104 = v154;
        *v154 = 0xD000000000000038;
        v104[1] = 0x800000010123BD40;
        (*(v151 + 104))(v104, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v152);
        v105 = v144;
        sub_1004E8F38(v194, v144);
        v106 = (*(v142 + 80) + 16) & ~*(v142 + 80);
        v107 = swift_allocObject();
        sub_1004E8F9C(v105, v107 + v106);
        v108 = v158;
        EmptyStateViewModel.ButtonConfig.init(systemImage:label:tapAction:)();
        v109 = 0;
      }

      v111 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
      (*(*(v111 - 8) + 56))(v108, v109, 1, v111);
      EmptyStateViewModel.init(icon:title:details:button:)();
      v112 = v155;
      EmptyStateView.init(model:)();
      v113 = v156;
      v114 = v157;
      (*(v156 + 16))(v159, v112, v157);
      swift_storeEnumTagMultiPayload();
      sub_1004EA814(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
      _ConditionalContent<>.init(storage:)();
      (*(v113 + 8))(v112, v114);
      v115 = v177;
      v64 = v196;
      if (v177 >> 62)
      {
        v116 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v116 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v117 = v161;
      v118 = v160;
      if (v116)
      {
        v203 = 0;
        v201 = 0u;
        v202 = 0u;
        v200 = 0;
        v198 = 0u;
        v199 = 0u;
        sub_1000CE6B8(&unk_1019157F0);
        v119 = swift_allocObject();
        v195 = xmmword_1011E1D30;
        *(v119 + 16) = xmmword_1011E1D30;
        sub_1000CE6B8(&qword_10190A070);
        type metadata accessor for RichTextViewModel();
        v120 = swift_allocObject();
        *(v120 + 16) = v195;
        (*(v118 + 104))(v176, enum case for RichTextType.line(_:), v117);
        if (v115 >> 62)
        {
          v121 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v121 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v197 = v121;

        dispatch thunk of CustomStringConvertible.description.getter();
        v126 = v176;
        RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

        (*(v118 + 8))(v126, v117);
        *(v119 + 32) = v120;
        v127 = type metadata accessor for BottomAccessoryViewModel();
        (*(*(v127 - 8) + 56))(v145, 1, 1, v127);
        UUID.init()();
        type metadata accessor for ListCellViewModel();
        swift_allocObject();
        v128 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
        __chkstk_darwin(v128);
        sub_1000CE6B8(&qword_1019241F0);
        sub_1004E9EFC();
        v129 = v147;
        List<>.init(content:)();
        sub_1004E9304(v148);

        v124 = v165;
        v125 = v164;
        v123 = v166;
        (*(v165 + 32))(v164, v129, v166);
        v122 = 0;
        v64 = v196;
      }

      else
      {
        sub_1004E9304(v148);
        v122 = 1;
        v123 = v166;
        v124 = v165;
        v125 = v164;
      }

      (*(v124 + 56))(v125, v122, 1, v123);
      v130 = v178;
      v131 = v162;
      sub_1000D2DFC(v178, v162, &qword_101924150);
      v132 = v163;
      sub_1000D2DFC(v125, v163, &qword_101924140);
      v133 = v167;
      sub_1000D2DFC(v131, v167, &qword_101924150);
      v134 = sub_1000CE6B8(&qword_101924220);
      sub_1000D2DFC(v132, v133 + *(v134 + 48), &qword_101924140);
      sub_100024F64(v132, &qword_101924140);
      sub_100024F64(v131, &qword_101924150);
      sub_1000D2DFC(v133, v183, &qword_101924130);
      swift_storeEnumTagMultiPayload();
      sub_1004EA110();
      sub_1000414C8(&qword_101924268, &qword_101924130);
      v63 = v182;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v133, &qword_101924130);
      sub_100024F64(v125, &qword_101924140);
      sub_100024F64(v130, &qword_101924150);
    }

    v89 = &qword_101924170;
    v135 = v180;
    sub_1000D2DFC(v63, v180, &qword_101924170);
    v136 = v185;
    *v185 = 0;
    *(v136 + 8) = 1;
    v137 = sub_1000CE6B8(&qword_101924270);
    sub_1000D2DFC(v135, v136 + *(v137 + 48), &qword_101924170);
    v138 = v136 + *(v137 + 64);
    *v138 = 0;
    *(v138 + 8) = 1;
    sub_100024F64(v135, &qword_101924170);
    sub_1000D2DFC(v136, v64, &qword_101924128);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_1019241A8, &qword_101924128);
    sub_1004E9A64();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v136, &qword_101924128);
    v90 = v63;
  }

  return sub_100024F64(v90, v89);
}

uint64_t sub_1004E4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_1000CE6B8(&qword_1019242C0);
  sub_1000CE6B8(&qword_101924290);
  sub_1000414C8(&qword_1019242C8, &qword_1019242C0);
  sub_1004EA814(&qword_1019209A0, type metadata accessor for RouteItemRowViewModel);
  sub_1004EA4D4();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004E4DA0()
{
  sub_1000E5580();

  Text.init<A>(_:)();
  static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  sub_1000CE6B8(&qword_1019242B8);
  sub_1004EA5F8();
  sub_1004EA64C();
  return Section<>.init(footer:content:)();
}

uint64_t sub_1004E4F04()
{
  sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v4 + 72);
  if (!v0)
  {
  }

  v1 = *(v4 + 80);

  v0(v2);

  return sub_1000D3B90(v0, v1);
}

uint64_t sub_1004E5004()
{
  sub_1000CE6B8(&qword_101924218);
  sub_1004E9FB4();
  return Section<>.init(content:)();
}

uint64_t sub_1004E5090@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33[0] = a3;
  v33[1] = a4;
  v35 = a5;
  v34 = sub_1000CE6B8(&qword_10190C918);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = v33 - v8;
  v10 = type metadata accessor for RouteItemsView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_1000CE6B8(&qword_10190C920);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - v15;
  sub_1004E8F38(a1, v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_1004E8F9C(v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a2 & 1;
  *(v19 + 1) = BYTE1(a2) & 1;
  *(v19 + 2) = BYTE2(a2) & 1;
  *(v19 + 8) = v33[0];
  type metadata accessor for ProfileCell();
  sub_1004EA814(&qword_10190C938, &type metadata accessor for ProfileCell);

  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.navigationLink.getter();
  sub_1000414C8(&qword_10190C940, &qword_10190C920);
  sub_1000414C8(&qword_10190C948, &qword_10190C918);
  v21 = v34;
  v20 = v35;
  View.buttonStyle<A>(_:)();
  (*(v7 + 8))(v9, v21);
  (*(v14 + 8))(v16, v13);
  v22 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = sub_1000CE6B8(&qword_101924218);
  v32 = v20 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_1004E5468(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  sub_1004EC780(a3);
}

uint64_t sub_1004E54CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v60 = a3;
  v57 = a1;
  v69 = a5;
  v7 = sub_1000CE6B8(&qword_1019241F0);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v59 = &v52 - v8;
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v11 - 8);
  v55 = &v52 - v12;
  v13 = type metadata accessor for RichTextType();
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&qword_1019242D8);
  __chkstk_darwin(v16 - 8);
  v66 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v52 - v19;
  v20 = type metadata accessor for RouteItemsView();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v62 = sub_1000CE6B8(&qword_1019242E0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v65 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v52 - v25;
  *&v75 = a2;
  swift_getKeyPath();
  v70 = a4;
  sub_1004E8F38(a4, &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v28 = swift_allocObject();
  sub_1004E8F9C(&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v58 = a2;

  sub_1000CE6B8(&qword_1019242C0);
  sub_1000CE6B8(&qword_1019242E8);
  sub_1000414C8(&qword_1019242C8, &qword_1019242C0);
  sub_1004EA814(&qword_1019209A0, type metadata accessor for RouteItemRowViewModel);
  sub_1004EA8DC();
  v64 = v26;
  v29 = v60;
  ForEach<>.init(_:id:content:)();
  if (v29 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    v41 = 1;
    v40 = v63;
    goto LABEL_9;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v30 = v13;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v31 = (v70 + *(v20 + 36));
  v32 = v31[1];
  v53 = *v31;
  sub_1000CE6B8(&unk_1019157F0);
  v33 = swift_allocObject();
  v52 = xmmword_1011E1D30;
  *(v33 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v34 = swift_allocObject();
  *(v34 + 16) = v52;
  v35 = v54;
  (*(v54 + 104))(v15, enum case for RichTextType.line(_:), v30);
  if (v29 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v36;

  *&v52 = v32;
  dispatch thunk of CustomStringConvertible.description.getter();
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v35 + 8))(v15, v30);
  *(v33 + 32) = v34;
  v37 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v37 - 8) + 56))(v55, 1, 1, v37);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  v38 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  __chkstk_darwin(v38);
  sub_1000CE6B8(&qword_101924218);
  sub_1004E9FB4();
  v39 = v59;
  Section<>.init(content:)();

  v40 = v63;
  sub_1000F11C4(v39, v63, &qword_1019241F0);
  v41 = 0;
LABEL_9:
  (*(v67 + 56))(v40, v41, 1, v68);
  v42 = v61;
  v43 = *(v61 + 16);
  v45 = v64;
  v44 = v65;
  v46 = v62;
  v43(v65, v64, v62);
  v47 = v66;
  sub_1000D2DFC(v40, v66, &qword_1019242D8);
  v48 = v69;
  v43(v69, v44, v46);
  v49 = sub_1000CE6B8(&qword_101924318);
  sub_1000D2DFC(v47, &v48[*(v49 + 48)], &qword_1019242D8);
  sub_100024F64(v40, &qword_1019242D8);
  v50 = *(v42 + 8);
  v50(v45, v46);
  sub_100024F64(v47, &qword_1019242D8);
  return (v50)(v44, v46);
}

uint64_t sub_1004E5E58()
{
  sub_1000CE6B8(&qword_101924310);
  sub_1004EAA1C();
  return Section<>.init(content:)();
}

id sub_1004E5ECC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for RouteItemsView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E8F38(a2, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_1004E8F9C(v9, v12 + v10);
  *(v12 + v11) = a1;
  KeyPath = swift_getKeyPath();
  sub_1004E8F38(a2, v9);
  v14 = swift_allocObject();
  sub_1004E8F9C(v9, v14 + v10);
  *(v14 + v11) = a1;
  *a3 = a1;
  a3[1] = sub_1004EABA0;
  a3[2] = v12;
  a3[3] = KeyPath;
  a3[4] = sub_1004EADA4;
  a3[5] = v14;
  v15 = a1;

  return v15;
}

uint64_t sub_1004E605C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  type metadata accessor for RouteItemsView();
  sub_1000CE6B8(&qword_10190CA30);
  State.wrappedValue.getter();
  (*(v5 + 104))(v7, enum case for EditMode.inactive(_:), v4);
  v11 = static EditMode.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  result = (v12)(v10, v4);
  if (v11)
  {
    v14 = a1[1];
    v15[2] = *a1;
    v15[3] = v14;
    sub_1000CE6B8(&qword_1019240F0);
    State.wrappedValue.getter();
    sub_1004ECB8C(a2);
  }

  return result;
}

uint64_t sub_1004E6208(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  if ((*(v7 + 88))(v10, v6) != enum case for AccessoryType.note(_:))
  {
    return (*(v7 + 8))(v10, v6);
  }

  v11 = a2[1];
  v13[2] = *a2;
  v13[3] = v11;
  sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  sub_1004ECD44(a3);
}

uint64_t sub_1004E6368@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v37 = a2;
  v41 = a6;
  v40 = sub_1000CE6B8(&qword_10190C918);
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v36[-v9];
  v11 = type metadata accessor for RouteItemsView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000CE6B8(&qword_10190C920);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36[-v17];
  sub_1004E8F38(a1, v14);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1004E8F9C(v14, v21 + v19);
  v22 = v21 + v20;
  *v22 = v37;
  v23 = v38;
  *(v22 + 8) = a3;
  *(v22 + 16) = v23;
  type metadata accessor for ProfileCell();
  sub_1004EA814(&qword_10190C938, &type metadata accessor for ProfileCell);

  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.navigationLink.getter();
  sub_1000414C8(&qword_10190C940, &qword_10190C920);
  sub_1000414C8(&qword_10190C948, &qword_10190C918);
  v25 = v40;
  v24 = v41;
  View.buttonStyle<A>(_:)();
  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);
  LOBYTE(v21) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = sub_1000CE6B8(&qword_101924218);
  v35 = v24 + *(result + 36);
  *v35 = v21;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_1004E673C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  sub_1004EC780(a4);
}

uint64_t sub_1004E67A0()
{
  type metadata accessor for ListCellViewModel();
  sub_1004EA814(&qword_10190B068, &type metadata accessor for ListCellViewModel);

  return ProfileCell.init(model:)();
}

uint64_t sub_1004E6828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v119 = type metadata accessor for LeadingCardHeader();
  v96 = *(v119 - 8);
  __chkstk_darwin(v119);
  v95 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1000CE6B8(&qword_10190CBE0);
  v99 = *(v120 - 8);
  __chkstk_darwin(v120);
  v98 = &v82 - v4;
  countAndFlagsBits = type metadata accessor for LeadingCardHeaderViewModel();
  v97 = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  object = &v82 - v7;
  v8 = type metadata accessor for RouteItemsView();
  v83 = *(v8 - 8);
  __chkstk_darwin(v8);
  v84 = v9;
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for CardButtonViewModel();
  v94 = *(v110 - 8);
  __chkstk_darwin(v110);
  v102 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1000CE6B8(&qword_101924108);
  __chkstk_darwin(v116);
  v118 = &v82 - v11;
  v114 = type metadata accessor for MapsDesignAccessibilityString();
  v109 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for CenteredCardHeaderNavigation();
  v89 = *(v115 - 8);
  __chkstk_darwin(v115);
  v87 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1000CE6B8(&qword_10190CC00);
  v92 = *(v117 - 8);
  __chkstk_darwin(v117);
  v91 = &v82 - v14;
  v107 = type metadata accessor for CardHeaderSize();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v108 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v88 = *(v105 - 8);
  __chkstk_darwin(v105);
  v82 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = &v82 - v18;
  v19 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v19 - 8);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v82 - v23;
  __chkstk_darwin(v25);
  v104 = &v82 - v26;
  v101 = type metadata accessor for CardHeaderTextViewModel();
  v86 = *(v101 - 8);
  __chkstk_darwin(v101);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v100 = &v82 - v30;
  v31 = type metadata accessor for EditMode();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v82 - v36;
  v90 = v8;
  sub_1000CE6B8(&qword_10190CA30);
  State.wrappedValue.getter();
  (*(v32 + 104))(v34, enum case for EditMode.active(_:), v31);
  LOBYTE(v8) = static EditMode.== infix(_:_:)();
  v38 = *(v32 + 8);
  v38(v34, v31);
  v38(v37, v31);
  if (v8)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v126._object = 0x800000010123CE60;
    v39._countAndFlagsBits = 0x52207463656C6553;
    v39._object = 0xED0000736574756FLL;
    v40._countAndFlagsBits = 0xD00000000000002FLL;
    v40._object = 0x800000010123CE30;
    v126._countAndFlagsBits = 0xD000000000000042;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, qword_1019600D8, v39, v126);
    object = v41._object;
    countAndFlagsBits = v41._countAndFlagsBits;
    v42 = v109;
    v43 = *(v109 + 104);
    v44 = v104;
    v45 = v114;
    v43(v104, enum case for MapsDesignAccessibilityString.titleLabel(_:), v114);
    v46 = *(v42 + 56);
    v46(v44, 0, 1, v45);
    v43(v24, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v45);
    v46(v24, 0, 1, v45);
    v43(v21, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v45);
    v46(v21, 0, 1, v45);
    static HorizontalAlignment.center.getter();
    v47 = v100;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    v48 = v86;
    (*(v86 + 16))(v28, v47, v101);
    (*(v106 + 104))(v108, enum case for CardHeaderSize.medium(_:), v107);
    v49 = v103;
    CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
    v50 = v88;
    (*(v88 + 16))(v82, v49, v105);
    v51 = v87;
    CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
    v52 = v113;
    *v113 = 0xD000000000000011;
    *(v52 + 1) = 0x800000010123CE10;
    v43(v52, enum case for MapsDesignAccessibilityString.header(_:), v45);
    v53 = sub_1004EA814(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation);
    v54 = v91;
    v55 = v115;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v42 + 8))(v52, v45);
    (*(v89 + 8))(v51, v55);
    v56 = v92;
    v57 = v117;
    (*(v92 + 16))(v118, v54, v117);
    swift_storeEnumTagMultiPayload();
    *&v122 = v55;
    *(&v122 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    v58 = sub_1004EA814(&qword_10190AF00, &type metadata accessor for LeadingCardHeader);
    *&v122 = v119;
    *(&v122 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v56 + 8))(v54, v57);
    (*(v50 + 8))(v103, v105);
    return (*(v48 + 8))(v100, v101);
  }

  else
  {
    v60 = v85;
    sub_1004E8F38(a1, v85);
    v61 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v62 = swift_allocObject();
    sub_1004E8F9C(v60, v62 + v61);
    v63 = v102;
    static CardButtonViewModel.close(tintColor:enabled:action:)();

    v64 = a1[1];
    *&v122 = *a1;
    *(&v122 + 1) = v64;
    sub_1000CE6B8(&qword_1019240F0);
    State.wrappedValue.getter();
    v65 = v125;
    swift_getKeyPath();
    *&v122 = v65;
    sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v66 = *(v65 + 16);
    sub_1004E9214(v66);

    if (v66 < 0)
    {
    }

    else
    {
      sub_1004E9304(v66);
    }

    v67 = v109;
    v68 = v114;
    (*(v109 + 56))(v104, 1, 1, v114);
    (*(v106 + 104))(v108, enum case for CardHeaderSize.large(_:), v107);
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    sub_1000CE6B8(&qword_10191D770);
    v69 = v94;
    v70 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1011E1D30;
    (*(v69 + 16))(v71 + v70, v63, v110);
    v72 = object;
    LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
    v73 = v97;
    (*(v97 + 16))(v93, v72, countAndFlagsBits);
    v74 = v95;
    LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
    v75 = v113;
    *v113 = 0xD000000000000011;
    *(v75 + 1) = 0x800000010123CE10;
    (*(v67 + 104))(v75, enum case for MapsDesignAccessibilityString.header(_:), v68);
    v76 = sub_1004EA814(&qword_10190AF00, &type metadata accessor for LeadingCardHeader);
    v77 = v98;
    v78 = v119;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v67 + 8))(v75, v68);
    (*(v96 + 8))(v74, v78);
    v79 = v99;
    v80 = v120;
    (*(v99 + 16))(v118, v77, v120);
    swift_storeEnumTagMultiPayload();
    v81 = sub_1004EA814(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation);
    *&v122 = v115;
    *(&v122 + 1) = v81;
    swift_getOpaqueTypeConformance2();
    *&v122 = v78;
    *(&v122 + 1) = v76;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v79 + 8))(v77, v80);
    (*(v73 + 8))(object, countAndFlagsBits);
    return (*(v69 + 8))(v102, v110);
  }
}

uint64_t sub_1004E7A54()
{
  sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v4 + 56);
  if (!v0)
  {
  }

  v1 = *(v4 + 64);

  v0(v2);

  return sub_1000D3B90(v0, v1);
}

void sub_1004E7B54(uint64_t a1, void *a2, uint64_t *a3)
{
  v39 = a2;
  v4 = type metadata accessor for EditMode();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for RouteItemsView();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionBarItemType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ActionBarItemViewModel.type.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for ActionBarItemType.addToList(_:))
  {
    v17 = a3[1];
    v42 = *a3;
    v43 = v17;
    sub_1000CE6B8(&qword_1019240F0);
    State.wrappedValue.getter();
    v18 = v41;
    swift_getKeyPath();
    v42 = v18;
    sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + 72);
    if (v19)
    {
      v20 = *(v18 + 80);

      v19(v21);

      sub_1000D3B90(v19, v20);
    }

    else
    {
    }

    return;
  }

  if (v16 == enum case for ActionBarItemType.select(_:))
  {
    v22 = &enum case for EditMode.active(_:);
    goto LABEL_6;
  }

  if (v16 != enum case for ActionBarItemType.delete(_:))
  {
    if (v16 != enum case for ActionBarItemType.done(_:))
    {
      (*(v13 + 8))(v15, v12);
      return;
    }

    v22 = &enum case for EditMode.inactive(_:);
LABEL_6:
    v23 = v40;
    (*(v40 + 104))(v9, *v22, v4);
    (*(v23 + 16))(v6, v9, v4);
    sub_1000CE6B8(&qword_10190CA30);
    State.wrappedValue.setter();
    (*(v23 + 8))(v9, v4);
    return;
  }

  v24 = v39;
  if (v39)
  {
    v25 = a3[1];
    v42 = *a3;
    v43 = v25;
    v26 = v39;
    sub_1000CE6B8(&qword_1019240F0);
    State.wrappedValue.getter();
    v27 = (a3 + *(v10 + 24));
    v29 = *v27;
    v28 = v27[1];
    v42 = v29;
    v43 = v28;
    sub_1000CE6B8(&qword_1019240F8);
    State.wrappedValue.getter();
    v30 = sub_1004164D0(v41);

    v31 = a3;
    v32 = v38;
    sub_1004E8F38(v31, v38);
    v33 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v34 = swift_allocObject();
    sub_1004E8F9C(v32, v34 + v33);
    v35 = v26;
    sub_1004ECF9C(v30, v24, sub_1004E98D4, v34);
  }
}

uint64_t sub_1004E8048()
{
  v0 = type metadata accessor for EditMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v9 - v6;
  (*(v1 + 104))(&v9 - v6, enum case for EditMode.inactive(_:), v0, v5);
  type metadata accessor for RouteItemsView();
  (*(v1 + 16))(v3, v7, v0);
  sub_1000CE6B8(&qword_10190CA30);
  State.wrappedValue.setter();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_1004E81A4(uint64_t *a1)
{
  v2 = type metadata accessor for ActionBarItemType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v20 = *a1;
  v21 = v6;
  sub_1000CE6B8(&qword_1019240F0);
  State.wrappedValue.getter();
  v7 = v19;
  swift_getKeyPath();
  v20 = v7;
  sub_1004EA814(&unk_101924650, type metadata accessor for RouteItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + 16);
  sub_1004E9214(v8);

  if (v8 < 0)
  {

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000CE6B8(&qword_101908400);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1011E4FD0;
    v10 = *(v3 + 104);
    v10(v5, enum case for ActionBarItemType.addToList(_:), v2);
    type metadata accessor for ActionBarItemViewModel();
    swift_allocObject();
    *(v9 + 32) = ActionBarItemViewModel.init(_:)();
    v10(v5, enum case for ActionBarItemType.select(_:), v2);
    swift_allocObject();
    *(v9 + 40) = ActionBarItemViewModel.init(_:)();
    v11 = swift_allocObject();
    v18 = xmmword_1011E47B0;
    *(v11 + 16) = xmmword_1011E47B0;
    v10(v5, enum case for ActionBarItemType.delete(_:), v2);
    swift_allocObject();
    *(v11 + 32) = ActionBarItemViewModel.init(_:disabled:)();
    v12 = swift_allocObject();
    *(v12 + 16) = v18;
    v10(v5, enum case for ActionBarItemType.done(_:), v2);
    swift_allocObject();
    *(v12 + 32) = ActionBarItemViewModel.init(_:)();
    type metadata accessor for ActionBarViewModel();
    swift_allocObject();
    goto LABEL_6;
  }

  sub_1004E9304(v8);
  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
LABEL_6:
  v13 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  v14 = (a1 + *(type metadata accessor for RouteItemsView() + 28));
  v16 = *v14;
  v15 = v14[1];
  v20 = v16;
  v21 = v15;
  v19 = v13;
  sub_1000CE6B8(&qword_10190A148);
  return State.wrappedValue.setter();
}

uint64_t sub_1004E8584()
{
  type metadata accessor for RouteItemsView();
  sub_1000CE6B8(&qword_10190A148);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190A178);
  v0 = type metadata accessor for ActionBarItemType();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E1D30;
  (*(v1 + 104))(v3 + v2, enum case for ActionBarItemType.delete(_:), v0);
  dispatch thunk of ActionBarViewModel.updateItems(with:disabled:)();
}

uint64_t sub_1004E86D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v28 = a1;
  type metadata accessor for RouteItemsViewModel();
  State.init(wrappedValue:)();
  v11 = v30;
  *a2 = v29;
  a2[1] = v11;
  v12 = type metadata accessor for RouteItemsView();
  (*(v5 + 104))(v10, enum case for EditMode.inactive(_:), v4);
  (*(v5 + 16))(v7, v10, v4);
  State.init(wrappedValue:)();
  (*(v5 + 8))(v10, v4);
  v13 = (a2 + v12[6]);
  v28 = &_swiftEmptySetSingleton;
  sub_1000CE6B8(&unk_101924028);
  State.init(wrappedValue:)();
  v14 = v30;
  *v13 = v29;
  v13[1] = v14;
  v15 = (a2 + v12[7]);
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  v28 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  State.init(wrappedValue:)();
  v16 = v30;
  *v15 = v29;
  v15[1] = v16;
  v17 = v12[8];
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v18 = (a2 + v17);
  v19.super.isa = qword_1019600D8;
  v31._object = 0x800000010123D2A0;
  v20._countAndFlagsBits = 0x736574756F52;
  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x800000010123D270;
  v31._countAndFlagsBits = 0xD00000000000001DLL;
  v20._object = 0xE600000000000000;
  *v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, qword_1019600D8, v20, v31);
  v22 = (a2 + v12[9]);
  v32._object = 0x800000010123D310;
  v23._countAndFlagsBits = 0xD00000000000002FLL;
  v23._object = 0x800000010123D2C0;
  v24._object = 0x800000010123D2F0;
  v32._countAndFlagsBits = 0xD000000000000024;
  v24._countAndFlagsBits = 0xD000000000000012;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v19, v24, v32);
  result = v26._countAndFlagsBits;
  *v22 = v26;
  return result;
}

uint64_t sub_1004E89F8()
{
  sub_1000CE6B8(&qword_101924068);
  sub_1000D6664(&qword_101924070);
  sub_1004E8AC8();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1004E8AC8()
{
  result = qword_101924078;
  if (!qword_101924078)
  {
    sub_1000D6664(&qword_101924070);
    sub_1004E8B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924078);
  }

  return result;
}

unint64_t sub_1004E8B54()
{
  result = qword_101924080;
  if (!qword_101924080)
  {
    sub_1000D6664(&qword_101924088);
    sub_1004E8C0C();
    sub_1000414C8(&qword_101916F20, &qword_10190CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924080);
  }

  return result;
}

unint64_t sub_1004E8C0C()
{
  result = qword_101924090;
  if (!qword_101924090)
  {
    sub_1000D6664(&qword_101924098);
    sub_1004E8CC4();
    sub_1000414C8(&qword_10190A118, &qword_10190A120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924090);
  }

  return result;
}