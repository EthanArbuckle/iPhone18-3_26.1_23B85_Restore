uint64_t sub_100177634(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t, id))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v18 = a3;
    goto LABEL_7;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  v17 = a3;
  if (!v16)
  {

    goto LABEL_7;
  }

  v30 = v17;
  if ([v16 isBeingDismissed])
  {

LABEL_7:
    sub_100170C4C(1);
    swift_unknownObjectWeakAssign();
  }

  v20 = [v16 sheetPresentationController];
  if (v20)
  {
    v21 = v20;
    [v20 setDelegate:0];
  }

  if (*(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
  {
    v22 = [v16 viewIfLoaded];
    if (v22 && (v23 = v22, v24 = [v22 window], v23, v24) && (v25 = objc_msgSend(v24, "rootViewController"), v24, v25))
    {
      type metadata accessor for SceneSplitViewController(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v28 = v30;
        a7(a1 & 1, v27, v28);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    aBlock[4] = a5;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = a6;
    v29 = _Block_copy(aBlock);

    [v16 dismissViewControllerAnimated:a1 & 1 completion:v29];

    _Block_release(v29);
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_100177988()
{
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong || (sub_1000065A8(0, &qword_100AD4C80), sub_1000F24EC(&qword_100AD57E8), (swift_dynamicCast() & 1) == 0))
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    goto LABEL_6;
  }

  v1 = *(&v6 + 1);
  if (!*(&v6 + 1))
  {
LABEL_6:
    sub_100004F84(&v5, &qword_100AD57E0);
    v3 = 1;
    return v3 & 1;
  }

  v2 = v7;
  sub_10000CA14(&v5, *(&v6 + 1));
  v3 = (*(v2 + 16))(v1, v2);
  sub_10000BA7C(&v5);
  return v3 & 1;
}

uint64_t sub_100177AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD57F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177B38()
{

  return swift_deallocObject();
}

uint64_t sub_100177D00()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD5820);
  v1 = sub_10000617C(v0, qword_100AD5820);
  if (qword_100AD01E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100177DC8()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  type metadata accessor for DataAggregator(0);
  swift_allocObject();
  v1 = v0;
  v2 = sub_100183D1C(v1, 1);

  qword_100B2F408 = v2;
}

uint64_t sub_100177E68(char a1)
{
  v3 = *v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  if ((a1 & 1) != 0 && !v1[4])
  {
    v8 = [v1[2] persistentStoreCoordinator];
    static TaskPriority.low.getter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = v1[3];
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    v12[5] = v8;
    v12[6] = v10;
    v12[7] = v3;
    v13 = v11;
    v14 = v8;
    v15 = sub_10017AD28(0xD00000000000001ALL, 0x80000001008E2180, v7, &unk_100944530, v12);

    sub_100004F84(v7, &qword_100AD5170);
    v1[4] = v15;
  }

  return result;
}

uint64_t sub_100178044()
{
  v1 = v0;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v0 + 32))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v2 = OBJC_IVAR____TtC7Journal14DataAggregator__recentPlaces;
  v3 = sub_1000F24EC(&qword_100AD5B68);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByMapPlace;
  v5 = sub_1000F24EC(&qword_100AD5B60);
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);
  v6(v1 + OBJC_IVAR____TtC7Journal14DataAggregator__entriesByPhotoPlace, v5);
  v6(v1 + OBJC_IVAR____TtC7Journal14DataAggregator__entriesByRoutePlace, v5);
  v6(v1 + OBJC_IVAR____TtC7Journal14DataAggregator__mostRecentEntriesByPlace, v5);
  v7 = OBJC_IVAR____TtC7Journal14DataAggregator__hasCompletedFirstUpdate;
  v8 = sub_1000F24EC(&qword_100AD5B58);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = OBJC_IVAR____TtC7Journal14DataAggregator__assetTypeCount;
  v10 = sub_1000F24EC(&qword_100AD5B50);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  return v1;
}

uint64_t sub_1001782CC()
{
  sub_100178044();

  return swift_deallocClassInstance();
}

uint64_t sub_100178330()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();
  v3 = v2;

  return _swift_task_deinitOnExecutor(v0, sub_1001782CC, v1, v3, 0);
}

void sub_1001783EC()
{
  sub_1001785C4(319, &qword_100AD58A8, &qword_100AD58B0);
  if (v0 <= 0x3F)
  {
    sub_1001785C4(319, &qword_100AD58B8, &qword_100AD58C0);
    if (v1 <= 0x3F)
    {
      sub_100180884(319, &qword_100AD58C8, &type metadata for Bool, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_1001785C4(319, &qword_100AD58D0, &unk_100AD58D8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001785C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000F2A18(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100178618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for ContinuousClock.Instant();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = sub_1000F24EC(&qword_100AD5B70);
  v6[23] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AD5B78);
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = sub_1000F24EC(&qword_100AD5B80);
  v6[28] = swift_task_alloc();
  v6[29] = sub_1000F24EC(&qword_100AD5B88);
  v6[30] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AD5B90);
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001788C8, 0, 0);
}

uint64_t sub_1001788C8()
{
  v1 = v0[23];
  NSManagedObjectContext.didMergeChangesNotifications.getter();
  swift_getOpaqueTypeConformance2();
  AsyncFilterSequence.init(_:isIncluded:)();
  sub_10000B58C(&qword_100AD5B98, &qword_100AD5B88);
  AsyncMapSequence.init(_:transform:)();
  NSPersistentStoreCoordinator.storesDidChangeNotifications.getter();
  sub_1000F24EC(&qword_100AD5BA0);
  sub_10000B58C(&qword_100AD5BA8, &qword_100AD5BA0);
  sub_10000B58C(&qword_100AD5BB0, &qword_100AD5B90);
  swift_getOpaqueTypeConformance2();
  merge<A, B, C>(_:_:_:)();
  v2 = AsyncMerge3Sequence.makeAsyncIterator()();
  v0[34] = v2;
  sub_1000BE578(v1);
  v0[10] = v2;
  swift_beginAccess();
  v3 = swift_task_alloc();
  v0[35] = v3;
  v4 = sub_1000F24EC(&qword_100AD5BB8);
  *v3 = v0;
  v3[1] = sub_100178B88;

  return AsyncMerge3Sequence.Iterator.next()(v0 + 57, v4);
}

uint64_t sub_100178B88()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_100178EEC;
  }

  else
  {
    *(v2 + 58) = *(v2 + 57);
    v3 = sub_100178CA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178CC0()
{
  if (*(v0 + 58) == 1)
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);

    (*(v5 + 8))(v4, v6);
    (*(v3 + 8))(v1, v2);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 296) = Strong;
    if (Strong)
    {
      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_100178F78;

      return sub_100179B44();
    }

    else
    {
      *(v0 + 312) = type metadata accessor for MainActor();
      *(v0 + 320) = static MainActor.shared.getter();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100179128, v12, v11);
    }
  }
}

uint64_t sub_100178EEC()
{
  *(v0 + 88) = *(v0 + 288);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100178F78()
{

  return _swift_task_switch(sub_100179090, 0, 0);
}

uint64_t sub_100179090()
{
  *(v0 + 312) = type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100179128, v2, v1);
}

uint64_t sub_100179128()
{

  return _swift_task_switch(sub_100179190, 0, 0);
}

uint64_t sub_100179190()
{
  *(v0 + 328) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017921C, v2, v1);
}

uint64_t sub_10017921C()
{

  return _swift_task_switch(sub_100179284, 0, 0);
}

uint64_t sub_100179284()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = static Duration.seconds(_:)();
  v6 = v5;
  static Clock<>.continuous.getter();
  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v7 = sub_100184A84(&qword_100AD5BC8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100184A84(&unk_100AD5BD0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v2 + 8);
  *(v0 + 336) = v8;
  *(v0 + 344) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = swift_task_alloc();
  *(v0 + 352) = v9;
  *v9 = v0;
  v9[1] = sub_100179448;
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 40, v10, v7);
}

uint64_t sub_100179448()
{
  v2 = *v1;
  *(v2 + 360) = v0;

  if (v0)
  {
    (*(v2 + 336))(*(v2 + 144), *(v2 + 120));

    return _swift_task_switch(sub_100179620, 0, 0);
  }

  else
  {
    v4 = *(v2 + 160);
    v3 = *(v2 + 168);
    v5 = *(v2 + 152);
    (*(v2 + 336))(*(v2 + 144), *(v2 + 120));
    (*(v4 + 8))(v3, v5);
    v6 = swift_task_alloc();
    *(v2 + 280) = v6;
    v7 = sub_1000F24EC(&qword_100AD5BB8);
    *v6 = v2;
    v6[1] = sub_100178B88;

    return AsyncMerge3Sequence.Iterator.next()(v2 + 57, v7);
  }
}

uint64_t sub_100179620()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100179774()
{
  type metadata accessor for JournalEntryAssetMO();
  v1 = NSManagedObjectContext.ObjectIDNotification.affects<A>(_:where:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1001797FC()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AE4290);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  JournalEntryAssetMO.type.getter();
  v10 = type metadata accessor for AssetType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1000082B4(v9, v7, &qword_100AE4290);
    v13 = (*(v11 + 88))(v7, v10);
    if (v13 == enum case for AssetType.photo(_:) || v13 == enum case for AssetType.livePhoto(_:) || v13 == enum case for AssetType.video(_:))
    {
      sub_100004F84(v9, &qword_100AE4290);
      (*(v1 + 104))(v3, enum case for JournalFeatureFlags.mapViewPhotos(_:), v0);
      v12 = JournalFeatureFlags.isEnabled.getter();
      (*(v1 + 8))(v3, v0);
      return v12 & 1;
    }

    if (v13 == enum case for AssetType.multiPinMap(_:))
    {
      sub_100004F84(v9, &qword_100AE4290);
      v12 = 1;
      return v12 & 1;
    }

    if (v13 == enum case for AssetType.workoutRoute(_:))
    {
      (*(v1 + 104))(v3, enum case for JournalFeatureFlags.mapViewWorkouts(_:), v0);
      v12 = JournalFeatureFlags.isEnabled.getter();
      (*(v1 + 8))(v3, v0);
      sub_100004F84(v9, &qword_100AE4290);
      return v12 & 1;
    }

    (*(v11 + 8))(v7, v10);
  }

  sub_100004F84(v9, &qword_100AE4290);
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_100179B44()
{
  v1[25] = v0;
  v1[26] = *v0;
  sub_1000F24EC(&qword_100AD5170);
  v1[27] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v1[28] = swift_task_alloc();
  v2 = type metadata accessor for AssetType();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  v4 = type metadata accessor for ProtectedData.ProtectedDataState();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for MainActor();
  v1[40] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v6;
  v1[42] = v5;

  return _swift_task_switch(sub_100179D98, v6, v5);
}

uint64_t sub_100179D98()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v4 + 104))(v2, enum case for ProtectedData.ProtectedDataState.available(_:), v3);
  v5 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 272);
    v31 = *(v0 + 208);
    v32 = *(v0 + 264);
    v30 = *(v0 + 200);
    v7 = swift_allocObject();
    *(v0 + 344) = v7;
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    *(v0 + 352) = v8;
    *(v8 + 16) = _swiftEmptyArrayStorage;
    v29 = swift_allocObject();
    *(v0 + 360) = v29;
    *(v29 + 16) = _swiftEmptyArrayStorage;
    v28 = swift_allocObject();
    *(v0 + 368) = v28;
    *(v28 + 16) = _swiftEmptyArrayStorage;
    v9 = swift_allocObject();
    *(v0 + 376) = v9;
    *(v9 + 16) = _swiftEmptyArrayStorage;
    v10 = swift_allocObject();
    *(v0 + 384) = v10;
    *(v10 + 16) = &_swiftEmptyDictionarySingleton;
    *(v0 + 392) = CFAbsoluteTimeGetCurrent();
    type metadata accessor for JournalEntryAssetMO();
    v11 = static JournalEntryAssetMO.fetchRequest()();
    *(v0 + 400) = v11;
    sub_1000065A8(0, &unk_100AD5AF0);
    v12 = static NSPredicate.allNotDeletedAssets.getter();
    [v11 setPredicate:v12];

    sub_1000F24EC(&unk_100AD4780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100941D50;
    v14 = objc_allocWithZone(NSSortDescriptor);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithKey:v15 ascending:0];

    *(v13 + 32) = v16;
    sub_1000065A8(0, &qword_100AD5B00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setSortDescriptors:isa];

    v18 = swift_allocObject();
    *(v0 + 408) = v18;
    v18[2] = v7;
    v18[3] = v30;
    v18[4] = v11;
    v18[5] = v10;
    v18[6] = v8;
    v18[7] = v29;
    v18[8] = v9;
    v18[9] = v28;
    v18[10] = v31;
    (*(v32 + 104))(v34, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v33);

    v19 = v11;

    v20 = swift_task_alloc();
    *(v0 + 416) = v20;
    *v20 = v0;
    v20[1] = sub_10017A32C;
    v21 = *(v0 + 272);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_100183748, v18, &type metadata for () + 8);
  }

  else
  {

    if (qword_100ACF9C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000617C(v22, qword_100AD5820);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Returning early from DataAggregator.updateData() because isProtectedDataAvailable == false. Most likely because the device is locked.", v25, 2u);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10017A32C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);

    v4 = v2[41];
    v5 = v2[42];

    return _swift_task_switch(sub_10017A484, v4, v5);
  }
}

uint64_t sub_10017A484()
{
  v67 = v0;
  v3 = v0[48];
  v4 = v0[30];

  swift_beginAccess();
  v5 = *(v3 + 16);
  sub_1000F24EC(&qword_100AD5B08);
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v60 = v6 + 64;
  v62 = v4;
  v64 = v5;
  v59 = (v4 + 32);

  v13 = 0;
  for (i = v0; v11; v7[2] = v23)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_10:
    v2 = v14 | (v13 << 6);
    v17 = *(v62 + 72) * v2;
    (*(v62 + 16))(v0[31], *(v64 + 48) + v17, v0[29]);
    v1 = *(*(v64 + 56) + 8 * v2);
    if ((v1 & 0xC000000000000001) != 0)
    {

      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *(v1 + 16);
    }

    v0 = i;
    v19 = i[31];
    v20 = i[29];
    *(v60 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    (*v59)(v7[6] + v17, v19, v20);
    *(v7[7] + 8 * v2) = v18;
    v21 = v7[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_43;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v13 >= v12)
    {
      break;
    }

    v16 = *(v8 + 8 * v13);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  v24 = v0[53];
  v25 = v0[44];

  swift_getKeyPath();
  swift_getKeyPath();
  i[20] = v7;

  static Published.subscript.setter();
  swift_beginAccess();
  v66[0] = *(v25 + 16);
  swift_bridgeObjectRetain_n();
  sub_1001809F0(v66);
  if (v24)
  {
  }

  v26 = i[45];

  v27 = v66[0];
  swift_getKeyPath();
  swift_getKeyPath();
  i[21] = v27;
  v1 = i;

  static Published.subscript.setter();
  swift_beginAccess();
  v2 = *(v26 + 16);
  v66[0] = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_44;
  }

  for (j = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!j)
    {
      break;
    }

    v1 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v29 = *(v2 + 8 * v1 + 32);
      }

      v30 = v29;
      v31 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v32 = i[28];
      v33 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      swift_beginAccess();
      sub_1000082B4(v30 + v33, v32, &unk_100AD4790);
      v34 = type metadata accessor for Date();
      v35 = (*(*(v34 - 8) + 48))(v32, 1, v34);
      v36 = i[28];
      if (v35 == 1)
      {

        sub_100004F84(v36, &unk_100AD4790);
      }

      else
      {
        sub_100004F84(i[28], &unk_100AD4790);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v1;
      if (v31 == j)
      {
        v1 = i;
        goto LABEL_31;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_31:

  v66[0] = sub_1004FCDD4(v37);
  sub_100180974(v66);

  v39 = v66[0];
  if ((v66[0] & 0x8000000000000000) != 0 || (v66[0] & 0x4000000000000000) != 0)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_36;
    }

LABEL_46:

    v41 = 0;
    goto LABEL_47;
  }

  if (!v66[0][2])
  {
    goto LABEL_46;
  }

LABEL_36:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v39 + 16))
    {
      __break(1u);
      return result;
    }

    v40 = *(v39 + 32);
  }

  v41 = v40;

LABEL_47:
  v61 = v41;
  v63 = *(v1 + 400);
  v42 = *(v1 + 392);
  v43 = *(v1 + 376);
  v44 = *(v1 + 360);
  v45 = *(v1 + 368);
  v46 = *(v1 + 344);
  v47 = v1;
  v48 = *(v1 + 216);
  v49 = *(v47 + 200);
  v50 = *(v44 + 16);

  v51 = sub_1001841F0(v41, v50, 5);

  v52 = type metadata accessor for TaskPriority();
  (*(*(v52 - 8) + 56))(v48, 1, 1, v52);

  v53 = static MainActor.shared.getter();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = &protocol witness table for MainActor;
  v54[4] = v49;
  v54[5] = v51;
  sub_1003E9628(0, 0, v48, &unk_1009443A0, v54);

  v55 = *(v44 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 176) = v55;

  static Published.subscript.setter();
  swift_beginAccess();
  v56 = *(v45 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 184) = v56;

  static Published.subscript.setter();
  swift_beginAccess();
  v57 = *(v43 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 192) = v57;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 432) = 1;

  static Published.subscript.setter();

  sub_10017B128(v46, v42);

  v58 = *(v47 + 8);

  return v58();
}

uint64_t sub_10017AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000082B4(a3, v22 - v9, &qword_100AD5170);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100004F84(v10, &qword_100AD5170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10017B034()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10017B0BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10017B128(uint64_t a1, double a2)
{
  if (qword_100ACF9C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AD5820);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 134218498;
    swift_beginAccess();
    *(v7 + 4) = *(a1 + 16);

    *(v7 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = *(v15 + 16);

    *(v7 + 14) = v9;

    *(v7 + 22) = 2080;
    sub_1000F24EC(&unk_100AD5B10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v10 + 56) = &type metadata for Double;
    *(v10 + 64) = &protocol witness table for Double;
    *(v10 + 32) = Current - a2;
    v12 = String.init(format:_:)();
    v14 = sub_100008458(v12, v13, &v16);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "DataAggregator.updateData: processed %ld assets, %ld recent places. Compled in %s seconds", v7, 0x20u);
    sub_10000BA7C(v8);
  }

  else
  {
  }
}

void sub_10017B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[0] = a1;
  v28[1] = a2;
  v29 = a9;
  v30 = a3;
  v14 = type metadata accessor for JournalFeatureFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for JournalFeatureFlags.mapViewWorkouts(_:), v14);
  JournalFeatureFlags.isEnabled.getter();
  (*(v15 + 8))(v17, v14);
  v31 = a4 + 16;
  v32 = a5 + 16;
  v33 = a6 + 16;
  v34 = a7 + 16;
  v35 = a8 + 16;
  v36 = v29;
  type metadata accessor for JournalEntryAssetMO();
  v18 = v37;
  v19 = NSManagedObjectContext.forEach<A>(_:batchSize:using:)();
  if (v18)
  {
    if (qword_100ACF9C0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000617C(v20, qword_100AD5820);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "DataAggregator updateRecentPlaces fetch error: %@", v23, 0xCu);
      sub_100004F84(v24, &unk_100AD4BB0);
    }

    else
    {
    }
  }

  else
  {
    v26 = v19;
    v27 = v28[0];
    swift_beginAccess();
    *(v27 + 16) = v26;
  }
}

uint64_t sub_10017B6CC(void *a1, char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v420 = a6;
  v421 = a5;
  v455 = a4;
  v457 = a3;
  v461 = a2;
  v467 = a1;
  v6 = sub_1000F24EC(&qword_100AD5B20);
  v7 = __chkstk_darwin(v6 - 8);
  v430 = &v409 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v431 = &v409 - v10;
  __chkstk_darwin(v9);
  v432 = &v409 - v11;
  v449 = type metadata accessor for PhotoLibraryAssetMetadata();
  v444 = *(v449 - 1);
  v12 = __chkstk_darwin(v449);
  v423 = (&v409 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v424 = (&v409 - v15);
  __chkstk_darwin(v14);
  v425 = (&v409 - v16);
  v17 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v17 - 8);
  v441 = &v409 - v18;
  v443 = type metadata accessor for WorkoutRouteAssetMetadata();
  v442 = *(v443 - 1);
  __chkstk_darwin(v443);
  v434 = &v409 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v460 = type metadata accessor for JournalFeatureFlags();
  v458 = *(v460 - 1);
  __chkstk_darwin(v460);
  v459 = &v409 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F24EC(&unk_100AD4790);
  v22 = __chkstk_darwin(v21 - 8);
  v451 = &v409 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v427 = &v409 - v25;
  v26 = __chkstk_darwin(v24);
  v436 = &v409 - v27;
  v28 = __chkstk_darwin(v26);
  v446 = &v409 - v29;
  v30 = __chkstk_darwin(v28);
  v440 = &v409 - v31;
  v32 = __chkstk_darwin(v30);
  v428 = &v409 - v33;
  __chkstk_darwin(v32);
  v435 = &v409 - v34;
  v456 = type metadata accessor for Date();
  v448 = *(v456 - 8);
  v35 = __chkstk_darwin(v456);
  v426 = &v409 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v439 = &v409 - v37;
  v450 = type metadata accessor for DataAggregator.Place(0);
  v465 = *(v450 - 8);
  v38 = __chkstk_darwin(v450);
  v438 = &v409 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v464 = &v409 - v40;
  v454 = type metadata accessor for VisitAssetMetadata();
  v462 = *(v454 - 8);
  __chkstk_darwin(v454);
  v463 = (&v409 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v453 = type metadata accessor for MultiPinMapAssetMetadata();
  v452 = *(v453 - 8);
  __chkstk_darwin(v453);
  v437 = &v409 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v43 - 8);
  v45 = &v409 - v44;
  v46 = sub_1000F24EC(&qword_100AE4290);
  v47 = __chkstk_darwin(v46 - 8);
  v445 = &v409 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v429 = &v409 - v50;
  __chkstk_darwin(v49);
  v52 = &v409 - v51;
  v468 = type metadata accessor for AssetType();
  v469 = *(v468 - 8);
  v53 = __chkstk_darwin(v468);
  v422 = &v409 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v433 = &v409 - v56;
  v57 = __chkstk_darwin(v55);
  v447 = (&v409 - v58);
  v59 = __chkstk_darwin(v57);
  v61 = &v409 - v60;
  v62 = __chkstk_darwin(v59);
  v64 = &v409 - v63;
  __chkstk_darwin(v62);
  v466 = (&v409 - v65);
  v66 = type metadata accessor for ProtectedData.ProtectedDataState();
  v67 = *(v66 - 8);
  v68 = __chkstk_darwin(v66);
  v70 = &v409 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v72 = &v409 - v71;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v67 + 104))(v70, enum case for ProtectedData.ProtectedDataState.available(_:), v66);
  v73 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v74 = *(v67 + 8);
  v74(v70, v66);
  v75 = v72;
  LODWORD(v72) = v73;
  v74(v75, v66);
  if ((v73 & 1) == 0)
  {
    if (qword_100ACF9C0 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000617C(v79, qword_100AD5820);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Returning early from DataAggregator.updateData() assets loop because isProtectedDataAvailable == false. Most likely because the device is locked.", v82, 2u);
    }

    return v72 & 1;
  }

  v76 = v467;
  JournalEntryAssetMO.type.getter();
  v77 = v469;
  v78 = v468;
  if ((*(v469 + 6))(v52, 1, v468) == 1)
  {
    sub_100004F84(v52, &qword_100AE4290);
    return v72 & 1;
  }

  v83 = v466;
  v77[4](v466, v52, v78);
  v84 = [v76 entry];
  if (v84)
  {
    v85 = v84;
    v86 = [v84 objectID];

    if (v86)
    {
      v87 = v461;
      swift_beginAccess();
      v88 = *v87;
      if (*(v88 + 16) && (v89 = sub_100362044(v83), (v90 & 1) != 0))
      {
        v91 = v72;
        v92 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v473 = v92;
      }

      else
      {
        v91 = v72;
        swift_endAccess();
        v473 = &_swiftEmptySetSingleton;
      }

      v93 = v86;
      sub_100288038(&v477, v93);

      v94 = v473;
      v72 = v461;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v472 = *v72;
      *v72 = 0x8000000000000000;
      sub_1002022DC(v94, v83, isUniquelyReferenced_nonNull_native);
      *v72 = v472;
      swift_endAccess();

      LODWORD(v72) = v91;
      v78 = v468;
    }
  }

  v96 = *(v469 + 13);
  v415 = enum case for AssetType.multiPinMap(_:);
  v418 = v469 + 104;
  v417 = v96;
  v96(v64);
  v97 = sub_100184A84(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v416 = v97;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v477 == v473 && v478 == v474)
  {
    v98 = 1;
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v99 = *(v469 + 1);
  v461 = v469 + 8;
  v419 = v99;
  v99(v64, v78);

  if ((v98 & 1) == 0)
  {
    v113 = v458;
    v114 = *(v458 + 13);
    v115 = v459;
    v116 = v460;
    v114(v459, enum case for JournalFeatureFlags.mapViewWorkouts(_:), v460);
    v117 = JournalFeatureFlags.isEnabled.getter();
    v118 = *(v113 + 1);
    v118(v115, v116);
    if (v117)
    {
      LODWORD(v465) = enum case for AssetType.workoutRoute(_:);
      v417(v61);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v477 == v473 && v478 == v474)
      {
        v419(v61, v78);

LABEL_39:
        v121 = sub_100039CE0();
        type metadata accessor for WorkoutRouteAsset();
        v122 = swift_dynamicCastClass();
        if (v122)
        {
          v123 = v466;
          if (*(v122 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata))
          {
            v124 = v121;

            v125 = v441;
            sub_10025B758(v441);

            v126 = v442;
            v127 = v443;
            if (v442[6](v125, 1, v443) != 1)
            {
              v314 = v434;
              (v126)[4](v434, v125, v127);
              v315 = [v467 entry];
              if (v315)
              {
                v316 = v315;
                v100 = [v315 objectID];

                if (v100)
                {
                  v317 = WorkoutRouteAssetMetadata.route.getter();
                  if (v317)
                  {
                    v76 = v317;
                    v196 = v317 & 0xFFFFFFFFFFFFFF8;
                    if (v317 >> 62)
                    {
                      goto LABEL_245;
                    }

                    if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_180;
                    }

LABEL_246:

                    goto LABEL_247;
                  }
                }
              }

LABEL_248:
              (v126[1])(v314, v127);
              v119 = v123;
              goto LABEL_249;
            }

            v419(v123, v78);
          }

          else
          {

            v419(v123, v78);
            v125 = v441;
            (v442[7])(v441, 1, 1, v443);
          }

          sub_100004F84(v125, &qword_100AD5B28);
          return v72 & 1;
        }

LABEL_171:
        v119 = v466;
        goto LABEL_249;
      }

      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v419(v61, v78);

      v116 = v460;
      v115 = v459;
      if (v120)
      {
        goto LABEL_39;
      }
    }

    v114(v115, enum case for JournalFeatureFlags.mapViewPhotos(_:), v116);
    v128 = v116;
    v129 = JournalFeatureFlags.isEnabled.getter();
    v118(v115, v128);
    if ((v129 & 1) == 0)
    {
      goto LABEL_171;
    }

    v130 = v447;
    (v417)(v447, enum case for AssetType.photo(_:), v78);
    v131 = v466;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v477 == v473 && v478 == v474)
    {
      v419(v130, v78);

      v132 = v451;
      v133 = v449;
      goto LABEL_188;
    }

    v134 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v419(v130, v78);

    v132 = v451;
    v133 = v449;
    if ((v134 & 1) == 0)
    {
      v135 = v433;
      (v417)(v433, enum case for AssetType.video(_:), v78);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v477 == v473 && v478 == v474)
      {
        goto LABEL_50;
      }

      v349 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v419(v135, v78);

      if ((v349 & 1) == 0)
      {
        v135 = v422;
        (v417)(v422, enum case for AssetType.livePhoto(_:), v78);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v477 == v473 && v478 == v474)
        {
LABEL_50:
          v419(v135, v78);

          goto LABEL_188;
        }

        v362 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v419(v135, v78);

        if ((v362 & 1) == 0)
        {
          goto LABEL_226;
        }
      }
    }

LABEL_188:
    v350 = v467;
    v100 = sub_100039CE0();
    v351 = [v350 entry];
    if (!v351)
    {

      v119 = v131;
      goto LABEL_249;
    }

    v352 = v351;
    v353 = [v351 objectID];

    if (!v353)
    {
      v419(v131, v78);

      return v72 & 1;
    }

    v354 = *(v448 + 56);
    v448 += 56;
    v467 = v354;
    (v354)(v132, 1, 1, v456);
    type metadata accessor for PhotoAsset();
    v355 = swift_dynamicCastClass();
    if (v355)
    {
      if (!*(v355 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
      {
        v357 = v432;
        (*(v444 + 56))(v432, 1, 1, v133);
        goto LABEL_197;
      }

      v356 = v100;

      v357 = v432;
      sub_100046ADC(v432);

      v358 = v444;
      if ((*(v444 + 48))(v357, 1, v133) == 1)
      {

LABEL_197:
        sub_100004F84(v357, &qword_100AD5B20);
        goto LABEL_207;
      }

      v359 = v425;
      (*(v358 + 32))(v425, v357, v133);
      v360 = PhotoLibraryAssetMetadata.latitude.getter();
      if (v361)
      {
        (*(v358 + 8))(v359, v133);
      }

      else
      {
        v363 = *&v360;
        v364 = PhotoLibraryAssetMetadata.longitude.getter();
        if ((v365 & 1) == 0)
        {
          goto LABEL_234;
        }

        v133 = v449;
        (*(v444 + 8))(v359, v449);
      }

      v132 = v451;
    }

LABEL_207:
    type metadata accessor for LivePhotoAsset();
    v366 = swift_dynamicCastClass();
    if (v366)
    {
      if (*(v366 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
      {
        v367 = v100;

        v368 = v431;
        sub_100046ADC(v431);

        v369 = v444;
        if ((*(v444 + 48))(v368, 1, v133) != 1)
        {
          v359 = v424;
          (*(v369 + 32))(v424, v368, v133);
          v370 = PhotoLibraryAssetMetadata.latitude.getter();
          if (v371)
          {
            (*(v369 + 8))(v359, v133);
          }

          else
          {
            v363 = *&v370;
            v364 = PhotoLibraryAssetMetadata.longitude.getter();
            if ((v372 & 1) == 0)
            {
              goto LABEL_234;
            }

            v133 = v449;
            (*(v444 + 8))(v359, v449);
          }

          v132 = v451;
          goto LABEL_218;
        }
      }

      else
      {
        v368 = v431;
        (*(v444 + 56))(v431, 1, 1, v133);
      }

      sub_100004F84(v368, &qword_100AD5B20);
    }

LABEL_218:
    type metadata accessor for VideoAsset();
    v373 = swift_dynamicCastClass();
    if (!v373)
    {
LABEL_224:

LABEL_225:
      sub_100004F84(v132, &unk_100AD4790);
LABEL_226:
      v119 = v131;
      goto LABEL_249;
    }

    if (!*(v373 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
    {
      v375 = v430;
      (*(v444 + 56))(v430, 1, 1, v133);
      goto LABEL_223;
    }

    v374 = v100;

    v375 = v430;
    sub_100046ADC(v430);

    v376 = v444;
    if ((*(v444 + 48))(v375, 1, v133) == 1)
    {

LABEL_223:
      sub_100004F84(v375, &qword_100AD5B20);
      goto LABEL_224;
    }

    v359 = v423;
    (*(v376 + 32))(v423, v375, v133);
    v377 = PhotoLibraryAssetMetadata.latitude.getter();
    if (v378)
    {
      (*(v376 + 8))(v359, v133);
LABEL_233:

      v132 = v451;
      goto LABEL_225;
    }

    v363 = *&v377;
    v364 = PhotoLibraryAssetMetadata.longitude.getter();
    if (v379)
    {
      (*(v444 + 8))(v359, v449);
      goto LABEL_233;
    }

LABEL_234:
    v380 = [objc_allocWithZone(CLLocation) initWithLatitude:v363 longitude:*&v364];
    v464 = PhotoLibraryAssetMetadata.placeName.getter();
    v465 = v381;
    v382 = v427;
    PhotoLibraryAssetMetadata.date.getter();

    (*(v444 + 8))(v359, v449);
    v132 = v451;
    sub_100004F84(v451, &unk_100AD4790);
    sub_100021CEC(v382, v132, &unk_100AD4790);
    v463 = v380;
    if (v380)
    {
      v412 = v72;
      v383 = v469;
      v384 = v429;
      (*(v469 + 2))(v429, v100 + OBJC_IVAR____TtC7Journal5Asset_type, v78);
      v385 = *(v383 + 7);
      v385(v384, 0, 1, v78);
      sub_1000F24EC(&unk_100AD4780);
      v386 = swift_allocObject();
      v469 = v386;
      *(v386 + 16) = xmmword_100941D50;
      *(v386 + 32) = v353;
      sub_1000082B4(v132, v382, &unk_100AD4790);
      sub_1000F24EC(&unk_100AE1A40);
      v387 = type metadata accessor for UUID();
      v388 = *(v387 - 8);
      v389 = (*(v388 + 80) + 32) & ~*(v388 + 80);
      v390 = swift_allocObject();
      v462 = v390;
      *(v390 + 16) = xmmword_100940080;
      (*(v388 + 16))(v390 + v389, v100 + OBJC_IVAR____TtC7Journal5Asset_id, v387);
      v460 = type metadata accessor for DataAggregator.EntryPlace(0);
      v391 = objc_allocWithZone(v460);
      v392 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
      v385(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType, 1, 1, v78);
      v393 = v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName;
      *v393 = 0;
      v393[1] = 0;
      v394 = v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace;
      *v394 = 0;
      v394[1] = 0;
      v395 = v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city;
      *v395 = 0;
      v395[1] = 0;
      v396 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
      *(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes) = 0;
      v455 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
      *(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem) = 0;
      v458 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
      *(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork) = 2;
      v397 = v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_horizontalUncertainty;
      *v397 = 0;
      v397[8] = 0;
      v454 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
      *(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs) = 0;
      v457 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      (v467)(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate, 1, 1, v456);
      v459 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
      *(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs) = 0;
      v398 = v463;
      *(v391 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location) = v463;
      swift_beginAccess();
      v399 = v398;
      v467 = v353;
      v400 = v429;
      sub_100184ACC(v429, v391 + v392, &qword_100AE4290);
      swift_endAccess();
      v401 = v465;
      *v393 = v464;
      v393[1] = v401;
      v78 = v399;

      *v394 = 0;
      v394[1] = 0;

      *v395 = 0;
      v395[1] = 0;

      v402 = *(v391 + v396);
      *(v391 + v396) = 0;

      v403 = *(v455 + v391);
      *(v455 + v391) = 0;

      v458[v391] = 2;
      *v397 = 0;
      v397[8] = 1;
      *(v391 + v454) = v469;

      v404 = v457;
      swift_beginAccess();
      v405 = v427;
      sub_100184ACC(v427, v391 + v404, &unk_100AD4790);
      swift_endAccess();
      *&v459[v391] = v462;

      v476.receiver = v391;
      v476.super_class = v460;
      v406 = objc_msgSendSuper2(&v476, "init");

      sub_100004F84(v405, &unk_100AD4790);
      sub_100004F84(v400, &qword_100AE4290);
      v407 = v420;
      swift_beginAccess();
      v76 = v406;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v407 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v407 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_253;
      }

      goto LABEL_236;
    }

    goto LABEL_225;
  }

  v100 = sub_100039CE0();
  type metadata accessor for MultiPinMapAsset();
  v101 = swift_dynamicCastClass();
  if (!v101)
  {

    goto LABEL_37;
  }

  if (!*(v101 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
LABEL_27:
    if (qword_100ACF9C0 != -1)
    {
      goto LABEL_242;
    }

    goto LABEL_28;
  }

  v102 = v100;

  sub_1000768B4(v45);

  v103 = v452;
  v104 = v453;
  if ((*(v452 + 48))(v45, 1, v453))
  {

    sub_100004F84(v45, &unk_100AD5B30);
    goto LABEL_27;
  }

  v451 = v102;
  v136 = v437;
  (*(v103 + 16))(v437, v45, v104);
  sub_100004F84(v45, &unk_100AD5B30);
  v137 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v103 + 8))(v136, v104);
  if (!v137)
  {

    goto LABEL_27;
  }

  v138 = v450;
  v100 = v454;
  v139 = v463;
  v459 = v137[2];
  if (!v459)
  {
LABEL_174:
    v313 = v451;

    goto LABEL_37;
  }

  v411 = OBJC_IVAR____TtC7Journal5Asset_id;
  v460 = v137;
  v140 = v462;
  v458 = v460 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
  swift_beginAccess();
  v76 = v455;
  swift_beginAccess();
  swift_beginAccess();
  v127 = 0;
  v453 = v140 + 16;
  v444 = v448 + 48;
  v447 = (v448 + 32);
  v448 += 56;
  v449 = v469 + 56;
  v452 = v140 + 8;
  v141 = v460;
  v410 = xmmword_100941D50;
  v409 = xmmword_100940080;
  v412 = v72;
  while (1)
  {
    if (v127 >= v141[2])
    {
      goto LABEL_241;
    }

    (*(v462 + 16))(v139, &v458[*(v462 + 72) * v127], v100);
    v142 = VisitAssetMetadata.latitude.getter();
    if (v143)
    {
      goto LABEL_55;
    }

    v76 = v142;
    v144 = VisitAssetMetadata.longitude.getter();
    if (v145)
    {
      goto LABEL_55;
    }

    v146 = *&v76;
    v147 = *&v144;
    v469 = [objc_allocWithZone(CLLocation) initWithLatitude:*&v76 longitude:*&v144];
    v148 = *v457;
    v76 = *(*v457 + 16);
    if (v76 <= 0x13)
    {
      break;
    }

LABEL_86:
    v194 = [v467 entry];
    if (!v194)
    {

LABEL_55:
      (*v452)(v139, v100);
      goto LABEL_56;
    }

    v195 = v194;
    v76 = [v194 objectID];

    if (v76)
    {
      v196 = *v455;
      v78 = (*v455 & 0xFFFFFFFFFFFFFF8);
      if (*v455 >> 62)
      {
        v197 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v197 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v196 & 0xC000000000000001;

      v72 = -v197;
      v100 = 4;
      while (1)
      {
        if (v72 + v100 == 4)
        {
          v126 = v76;

          v78 = v468;
          v72 = v446;
          goto LABEL_111;
        }

        v198 = v100 - 4;
        if (v83)
        {
          v199 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v198 >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_239;
          }

          v199 = *(v196 + 8 * v100);
        }

        v200 = v199;
        v201 = *&v199[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location];
        [v201 distanceFromLocation:v469];
        v203 = v202;

        if (v203 <= 10.0)
        {
          break;
        }

        ++v100;
        if (__OFADD__(v198, 1))
        {
          goto LABEL_240;
        }
      }

      v124 = *v455;
      v123 = v463;
      v126 = v76;
      if (!(*v455 >> 62))
      {
        v78 = v468;
        v72 = v446;
        if (v198 < *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

LABEL_111:
        v213 = [objc_allocWithZone(CLLocation) initWithLatitude:v146 longitude:v147];
        v214 = v445;
        (v417)(v445, v415, v78);
        v442 = *v449;
        (v442)(v214, 0, 1, v78);
        v215 = VisitAssetMetadata.placeName.getter();
        if (v216)
        {
          v416 = v216;
          v420 = v215;
          v217 = v126;
        }

        else
        {
          v218 = VisitAssetMetadata.mapItemData.getter();
          v217 = v126;
          if (v219 >> 60 != 15 && (v220 = v218, v221 = v219, sub_1000065A8(0, &qword_100AD5A90), v222 = static NSCoding<>.create(from:)(), sub_10003A5C8(v220, v221), v222) && (v223 = [v222 name], v222, v223))
          {
            v420 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v416 = v224;
          }

          else
          {
            v420 = 0;
            v416 = 0xE000000000000000;
          }
        }

        v225 = VisitAssetMetadata.typeOfPlace.getter();
        if (v226)
        {
          v227 = v225;
        }

        else
        {
          v227 = 0;
        }

        v228 = 0xE000000000000000;
        if (v226)
        {
          v228 = v226;
        }

        v437 = v228;
        v229 = VisitAssetMetadata.city.getter();
        if (v230)
        {
          v413 = v230;
          v414 = v229;
        }

        else
        {
          v231 = VisitAssetMetadata.mapItemData.getter();
          if (v232 >> 60 != 15 && (v233 = v231, v234 = v232, sub_1000065A8(0, &qword_100AD5A90), v235 = static NSCoding<>.create(from:)(), sub_10003A5C8(v233, v234), v235) && (v236 = [v235 addressRepresentations], v235, v236) && (v237 = objc_msgSend(v236, "cityName"), v236, v237))
          {
            v414 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v413 = v238;
          }

          else
          {
            v414 = 0;
            v413 = 0xE000000000000000;
          }
        }

        v239 = sub_100579A18();
        v240 = VisitAssetMetadata.mapItemData.getter();
        v443 = v213;
        v441 = v227;
        v433 = v239;
        if (v241 >> 60 == 15)
        {
          v432 = 0;
        }

        else
        {
          v242 = v240;
          v243 = v241;
          sub_1000065A8(0, &qword_100AD5A90);
          v432 = static NSCoding<>.create(from:)();
          sub_10003A5C8(v242, v243);
        }

        v244 = v436;
        v245 = VisitAssetMetadata.isWork.getter();
        v246 = VisitAssetMetadata.horizontalAccuracy.getter();
        v248 = v247;
        sub_1000F24EC(&unk_100AD4780);
        v249 = swift_allocObject();
        *(v249 + 16) = v410;
        v431 = v249;
        *(v249 + 32) = v217;
        v434 = v217;
        VisitAssetMetadata.visitStartTime.getter();
        v250 = *v444;
        v251 = v456;
        if ((*v444)(v244, 1, v456) == 1)
        {
          VisitAssetMetadata.createdDate.getter();
          if (v250(v244, 1, v251) != 1)
          {
            sub_100004F84(v244, &unk_100AD4790);
          }
        }

        else
        {
          (*v447)(v72, v244, v251);
          (*v448)(v72, 0, 1, v251);
        }

        LODWORD(v430) = v245 & 1;
        if (v248)
        {
          v252 = 0;
        }

        else
        {
          v252 = v246;
        }

        v427 = v252;
        sub_1000F24EC(&unk_100AE1A40);
        v253 = type metadata accessor for UUID();
        v254 = *(v253 - 8);
        v255 = (*(v254 + 80) + 32) & ~*(v254 + 80);
        v256 = swift_allocObject();
        v425 = v256;
        *(v256 + 16) = v409;
        (*(v254 + 16))(v256 + v255, &v451[v411], v253);
        v424 = type metadata accessor for DataAggregator.EntryPlace(0);
        v257 = objc_allocWithZone(v424);
        v258 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
        (v442)(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType, 1, 1, v468);
        v259 = (v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName);
        *v259 = 0;
        v259[1] = 0;
        v260 = v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace;
        *v260 = 0;
        v260[1] = 0;
        v261 = (v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city);
        *v261 = 0;
        v261[1] = 0;
        v262 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
        *(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes) = 0;
        v263 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
        *(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem) = 0;
        v423 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
        *(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork) = 2;
        v264 = v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_horizontalUncertainty;
        *v264 = 0;
        v264[8] = 0;
        v421 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
        *(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs) = 0;
        v422 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        (*v448)(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate, 1, 1, v251);
        v442 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
        *(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs) = 0;
        v265 = v443;
        *(v257 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location) = v443;
        swift_beginAccess();
        v443 = v265;
        v266 = v257 + v258;
        v267 = v445;
        sub_100184ACC(v445, v266, &qword_100AE4290);
        swift_endAccess();
        v268 = v416;
        *v259 = v420;
        v259[1] = v268;

        v269 = v437;
        *v260 = v441;
        v260[1] = v269;

        v270 = v413;
        *v261 = v414;
        v261[1] = v270;

        v271 = *(v257 + v262);
        v272 = v433;
        *(v257 + v262) = v433;
        v273 = v272;

        v274 = *(v257 + v263);
        v275 = v432;
        *(v257 + v263) = v432;
        v276 = v275;

        *(v423 + v257) = v430;
        *v264 = v427;
        v264[8] = 0;
        *(v257 + v421) = v431;

        v277 = v422;
        swift_beginAccess();
        v278 = &v277[v257];
        v279 = v446;
        v76 = &unk_100AD4790;
        sub_100184ACC(v446, v278, &unk_100AD4790);
        swift_endAccess();
        *(v442 + v257) = v425;

        v470.receiver = v257;
        v280 = v443;
        v470.super_class = v424;
        objc_msgSendSuper2(&v470, "init");

        sub_100004F84(v279, &unk_100AD4790);
        sub_100004F84(v267, &qword_100AE4290);
        v281 = v455;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v281 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v281 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v76 = *((*v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

LABEL_144:
        v139 = v463;
        v100 = v454;
        (*v452)(v463, v454);
        LOBYTE(v72) = v412;
        v78 = v468;
        v83 = v466;
        v138 = v450;
        goto LABEL_56;
      }

      v312 = _CocoaArrayWrapper.endIndex.getter();
      if ((v312 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v78 = v468;
        v72 = v446;
        v123 = v463;
        if (v198 >= v312)
        {
          goto LABEL_111;
        }

LABEL_104:
        if ((v124 & 0xC000000000000001) != 0)
        {

          v204 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          goto LABEL_107;
        }

        if (v198 < *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v204 = *(v124 + 8 * v100);
LABEL_107:
          v205 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
          v206 = *&v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs];
          if (!v206)
          {

            goto LABEL_111;
          }

          swift_beginAccess();

          v207 = sub_100692B14(v198);
          swift_endAccess();

          sub_1000F24EC(&unk_100AD4780);
          inited = swift_initStackObject();
          *(inited + 16) = v410;
          *(inited + 32) = v126;
          v471 = v206;
          v209 = v126;
          sub_1006AD6A0(inited);
          *&v204[v205] = v471;

          v210 = &v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace];
          if (*&v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace + 8])
          {
            v212 = VisitAssetMetadata.typeOfPlace.getter();
          }

          else
          {
            v211 = 0;
            v212 = *v210;
          }

          *v210 = v212;
          v210[1] = v211;

          v282 = &v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city];
          if (*&v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city + 8])
          {
            v283 = VisitAssetMetadata.city.getter();
            v285 = v284;
          }

          else
          {
            v283 = *v210;
            v285 = v210[1];
          }

          *v282 = v283;
          v282[1] = v285;

          v286 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
          v287 = *&v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes];
          v288 = v287;
          v289 = v287;
          if (!v287)
          {
            v289 = sub_100579A18();
            v288 = *&v204[v286];
          }

          *&v204[v286] = v289;
          v290 = v287;

          v291 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
          v292 = *&v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem];
          v293 = v292;
          if (!v292)
          {
            v294 = VisitAssetMetadata.mapItemData.getter();
            if (v295 >> 60 == 15)
            {
              v293 = 0;
            }

            else
            {
              v296 = v294;
              v297 = v295;
              sub_1000065A8(0, &qword_100AD5A90);
              v293 = static NSCoding<>.create(from:)();
              sub_10003A5C8(v296, v297);
            }
          }

          v298 = *&v204[v291];
          *&v204[v291] = v293;
          v299 = v292;

          v300 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
          v301 = v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork];
          if (v301 == 2 || (v301 & 1) == 0)
          {
            v302 = VisitAssetMetadata.isWork.getter();
          }

          else
          {
            v302 = 1;
          }

          v303 = v468;
          v204[v300] = v302 & 1;
          v304 = v429;
          (v417)(v429, v415, v303);
          (*v449)(v304, 0, 1, v303);
          v305 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
          swift_beginAccess();
          sub_100184B34(v304, &v204[v305]);
          swift_endAccess();
          v76 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
          if (*&v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs])
          {
            v306 = *&v204[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs];
          }

          else
          {
            v306 = _swiftEmptyArrayStorage;
          }

          sub_1000F24EC(&unk_100AE1A40);
          v307 = type metadata accessor for UUID();
          v308 = *(v307 - 8);
          v309 = (*(v308 + 80) + 32) & ~*(v308 + 80);
          v310 = swift_allocObject();
          *(v310 + 16) = v409;
          (*(v308 + 16))(v310 + v309, &v451[v411], v307);
          v471 = v306;

          sub_1006AD938(v310);
          *&v204[v76] = v471;

          v311 = v455;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v311 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v311 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v76 = *((*v311 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          goto LABEL_144;
        }
      }

      __break(1u);
LABEL_245:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_246;
      }

LABEL_180:
      v412 = v72;
      if ((v76 & 0xC000000000000001) == 0)
      {
        if (*(v196 + 16))
        {
          v318 = v124;
          v319 = *(v76 + 32);
          goto LABEL_183;
        }

        __break(1u);
LABEL_253:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_236:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        sub_100004F84(v451, &unk_100AD4790);
        v419(v466, v468);
        LOBYTE(v72) = v412;
        return v72 & 1;
      }

      v318 = v124;
      v319 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_183:
      v320 = v319;
      v321 = v465;

      v322 = v429;
      (v417)(v429, v321, v78);
      v462 = *(v469 + 7);
      (v462)(v322, 0, 1, v78);
      sub_1000F24EC(&unk_100AD4780);
      v323 = swift_allocObject();
      v467 = v323;
      *(v323 + 16) = xmmword_100941D50;
      *(v323 + 32) = v100;
      v324 = v320;
      v469 = v100;
      WorkoutRouteAssetMetadata.startTime.getter();
      sub_1000F24EC(&unk_100AE1A40);
      v325 = type metadata accessor for UUID();
      v326 = *(v325 - 8);
      v327 = (*(v326 + 80) + 32) & ~*(v326 + 80);
      v328 = swift_allocObject();
      v465 = v328;
      *(v328 + 16) = xmmword_100940080;
      (*(v326 + 16))(v328 + v327, &v318[OBJC_IVAR____TtC7Journal5Asset_id], v325);
      v464 = v318;

      v463 = type metadata accessor for DataAggregator.EntryPlace(0);
      v329 = objc_allocWithZone(v463);
      v330 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
      (v462)(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType, 1, 1, v78);
      v331 = v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName;
      *v331 = 0;
      v331[1] = 0;
      v332 = v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace;
      *v332 = 0;
      v332[1] = 0;
      v333 = v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city;
      *v333 = 0;
      v333[1] = 0;
      v334 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
      *(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes) = 0;
      v335 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
      *(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem) = 0;
      v460 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
      *(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork) = 2;
      v336 = v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_horizontalUncertainty;
      *v336 = 0;
      v336[8] = 0;
      v337 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
      *(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs) = 0;
      v459 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      (*(v448 + 56))(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate, 1, 1, v456);
      v462 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
      *(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs) = 0;
      *(v329 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location) = v324;
      swift_beginAccess();
      v338 = v324;
      v339 = v329 + v330;
      v340 = v429;
      sub_100184ACC(v429, v339, &qword_100AE4290);
      swift_endAccess();
      *v331 = 0;
      v331[1] = 0;

      *v332 = 0;
      v332[1] = 0;

      *v333 = 0;
      v333[1] = 0;

      v341 = *(v329 + v334);
      *(v329 + v334) = 0;

      v342 = *(v329 + v335);
      *(v329 + v335) = 0;

      *(v460 + v329) = 2;
      *v336 = 0;
      v336[8] = 1;
      *(v329 + v337) = v467;

      v343 = v459;
      swift_beginAccess();
      v344 = &v343[v329];
      v345 = v427;
      sub_100184ACC(v427, v344, &unk_100AD4790);
      swift_endAccess();
      *(v329 + v462) = v465;

      v475.receiver = v329;
      v475.super_class = v463;
      v346 = objc_msgSendSuper2(&v475, "init");

      sub_100004F84(v345, &unk_100AD4790);
      sub_100004F84(v340, &qword_100AE4290);
      v347 = v421;
      swift_beginAccess();
      v348 = v346;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v347 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v347 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      LOBYTE(v72) = v412;
      v78 = v468;
      v123 = v466;
      v127 = v443;
      v126 = v442;
LABEL_247:
      v314 = v434;
      goto LABEL_248;
    }

    (*v452)(v139, v100);

LABEL_56:
    v141 = v460;
    if (++v127 == v459)
    {
      goto LABEL_174;
    }
  }

  v100 = 0;
  while (1)
  {
    if (v76 == v100)
    {

      v152 = v435;
      VisitAssetMetadata.visitStartTime.getter();
      v153 = *v444;
      v154 = v456;
      if ((*v444)(v152, 1, v456) == 1)
      {
        v155 = v467;
        v156 = [v467 createdDate];
        if (v156)
        {
          v157 = v426;
          v158 = v156;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v159 = *v447;
          v160 = v428;
          (*v447)(v428, v157, v154);
          (*v448)(v160, 0, 1, v154);
          v159(v439, v160, v154);
          v155 = v467;
        }

        else
        {
          v161 = v428;
          (*v448)(v428, 1, 1, v154);
          Date.init()();
          if (v153(v161, 1, v154) != 1)
          {
            sub_100004F84(v428, &unk_100AD4790);
          }
        }

        if (v153(v152, 1, v154) != 1)
        {
          sub_100004F84(v152, &unk_100AD4790);
        }
      }

      else
      {
        (*v447)(v439, v152, v154);
        v155 = v467;
      }

      VisitAssetMetadata.visitStartTime.getter();
      v162 = VisitAssetMetadata.placeName.getter();
      v164 = v163;
      v165 = VisitAssetMetadata.typeOfPlace.getter();
      v167 = v166;
      v168 = VisitAssetMetadata.city.getter();
      v170 = v169;
      v171 = [v155 entry];
      v443 = v165;
      v442 = v167;
      v441 = v168;
      v437 = v170;
      v172 = v164;
      v173 = v162;
      if (v171)
      {
        v174 = v171;
        v175 = [v171 objectID];
      }

      else
      {
        v175 = 0;
      }

      v176 = sub_100579A18();
      v177 = VisitAssetMetadata.mapItemData.getter();
      if (v178 >> 60 == 15)
      {
        v179 = 0;
      }

      else
      {
        v180 = v177;
        v181 = v178;
        sub_1000065A8(0, &qword_100AD5A90);
        v179 = static NSCoding<>.create(from:)();
        sub_10003A5C8(v180, v181);
      }

      v182 = v438;
      (*v447)(v438, v439, v456);
      v138 = v450;
      v183 = v469;
      *(v182 + *(v450 + 20)) = v469;
      sub_100021CEC(v440, v182 + v138[6], &unk_100AD4790);
      v184 = (v182 + v138[7]);
      *v184 = v173;
      v184[1] = v172;
      v185 = (v182 + v138[8]);
      v186 = v442;
      *v185 = v443;
      v185[1] = v186;
      v187 = (v182 + v138[9]);
      v188 = v437;
      *v187 = v441;
      v187[1] = v188;
      *(v182 + v138[10]) = v175;
      *(v182 + v138[11]) = v176;
      *(v182 + v138[12]) = v179;
      v189 = v457;
      swift_beginAccess();
      v190 = *v189;
      v191 = v183;
      v192 = swift_isUniquelyReferenced_nonNull_native();
      *v189 = v190;
      if ((v192 & 1) == 0)
      {
        v190 = sub_1003E4DCC(0, v190[2] + 1, 1, v190);
        *v457 = v190;
      }

      v78 = v468;
      v83 = v466;
      v139 = v463;
      v76 = v190[2];
      v193 = v190[3];
      if (v76 >= v193 >> 1)
      {
        v190 = sub_1003E4DCC(v193 > 1, v76 + 1, 1, v190);
        *v457 = v190;
      }

      v190[2] = v76 + 1;
      sub_100184A10(v438, v190 + ((*(v465 + 80) + 32) & ~*(v465 + 80)) + *(v465 + 72) * v76);
      swift_endAccess();
LABEL_85:
      v100 = v454;
      goto LABEL_86;
    }

    if (v100 >= *(v148 + 16))
    {
      break;
    }

    v149 = v464;
    sub_100184950(v148 + ((*(v465 + 80) + 32) & ~*(v465 + 80)) + *(v465 + 72) * v100++, v464);
    [*&v149[v138[5]] distanceFromLocation:v469];
    v151 = v150;
    sub_1001849B4(v149);
    if (v151 <= 10.0)
    {

      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  swift_once();
LABEL_28:
  v105 = type metadata accessor for Logger();
  sub_10000617C(v105, qword_100AD5820);
  v106 = v76;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v109 = 138412290;
    v111 = [v106 objectID];
    *(v109 + 4) = v111;
    *v110 = v111;
    _os_log_impl(&_mh_execute_header, v107, v108, "DataAggregator multiPinMap object is missing visitsData. Skipping location. AssetMO.objectID: %@", v109, 0xCu);
    sub_100004F84(v110, &unk_100AD4BB0);

    v112 = v100;
  }

  else
  {
    v112 = v107;
    v107 = v100;
  }

LABEL_37:
  v119 = v83;
LABEL_249:
  v419(v119, v78);
  return v72 & 1;
}

uint64_t sub_10017F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017F6C4, v7, v6);
}

uint64_t sub_10017F6C4()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  static Published.subscript.setter();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10017F784(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v25[-v15];
  v17 = *a1;
  v18 = *a2;
  v19 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_1000082B4(v17 + v19, v9, &unk_100AD4790);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v9, 1, v10) != 1)
    {
      sub_100004F84(v9, &unk_100AD4790);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_1000082B4(v18 + v21, v7, &unk_100AD4790);
  if (v20(v7, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v7, 1, v10) != 1)
    {
      sub_100004F84(v7, &unk_100AD4790);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v7, v10);
  }

  v22 = static Date.> infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v23(v16, v10);
  return v22 & 1;
}

void sub_10017FAA8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_100184A84(&unk_100AEE080, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for DataAggregator.Place(0);
  NSObject.hash(into:)();
  sub_1000082B4(v0 + v9[6], v8, &unk_100AD4790);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v0 + v9[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v9[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v9[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = *(v0 + v9[10]);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    v11 = v10;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = *(v1 + v9[11]);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    v13 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v14 = *(v1 + v9[12]);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    v15 = v14;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10017FE3C()
{
  Hasher.init(_seed:)();
  sub_10017FAA8();
  return Hasher._finalize()();
}

Swift::Int sub_10017FE80()
{
  Hasher.init(_seed:)();
  sub_10017FAA8();
  return Hasher._finalize()();
}

id sub_10017FF08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataAggregator.EntryPlace(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100180060()
{
  sub_1001801A0(319, &qword_100AD59E8, &type metadata accessor for AssetType);
  if (v0 <= 0x3F)
  {
    sub_1001801A0(319, &qword_100AD59F0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001801A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001801F4()
{
  v1 = sub_1000F24EC(&unk_100AD4790);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  type metadata accessor for DataAggregator.EntryPlace(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  v34 = v11;
  v36 = v13;
  v37 = v4;
  v39 = v7;
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  v38 = xmmword_100941D50;
  *(inited + 16) = xmmword_100941D50;
  *(inited + 32) = v0;
  swift_unknownObjectRetain();
  v35 = v0;
  v17 = sub_100184C78();
  swift_setDeallocating();
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = v38;
  *(v18 + 32) = v15;
  swift_unknownObjectRetain();
  v19 = sub_100184C78();
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v17 == 1)
  {
    v20 = v8;
    v21 = v39;
    if (v19 != 1)
    {
      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {
    v20 = v8;
    v21 = v39;
    if (v19 == 1)
    {
      swift_unknownObjectRelease();
      return -1;
    }
  }

  v23 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_1000082B4(v15 + v23, v6, &unk_100AD4790);
  v24 = *(v20 + 48);
  if (v24(v6, 1, v21) == 1)
  {
    swift_unknownObjectRelease();
    v25 = v6;
  }

  else
  {
    v26 = v36;
    (*(v20 + 32))(v36, v6, v21);
    v27 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    v28 = v35;
    swift_beginAccess();
    v29 = v28 + v27;
    v30 = v37;
    sub_1000082B4(v29, v37, &unk_100AD4790);
    if (!v24(v30, 1, v21))
    {
      v31 = v34;
      (*(v20 + 16))(v34, v30, v21);
      sub_100004F84(v30, &unk_100AD4790);
      v32 = Date.compare(_:)();
      swift_unknownObjectRelease();
      v33 = *(v20 + 8);
      v33(v31, v21);
      v33(v26, v21);
      return v32;
    }

    (*(v20 + 8))(v26, v21);
    swift_unknownObjectRelease();
    v25 = v30;
  }

  sub_100004F84(v25, &unk_100AD4790);
  return 1;
}

void sub_1001806E8()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000065A8(319, &unk_100AD2BF0);
    if (v1 <= 0x3F)
    {
      sub_1001801A0(319, &qword_100AD59F0, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        sub_100180884(319, &qword_100AD5A70, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001808D4(319, &qword_100AD5A78, &qword_100AD43F0);
          if (v4 <= 0x3F)
          {
            sub_1001808D4(319, qword_100AEE020, &qword_100AD5A80);
            if (v5 <= 0x3F)
            {
              sub_1001808D4(319, &qword_100AEE000, &qword_100AD5A90);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100180884(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1001808D4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1000065A8(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100180974(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100206E70(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100180D3C(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1001809F0(void **a1)
{
  v2 = *(type metadata accessor for DataAggregator.Place(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100205034(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1001811CC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_100180AE8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100180B64()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100180BDC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100180C5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100180CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100180D3C(uint64_t *a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v43 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = v43 - v14;
  v15 = a1[1];
  v16 = _minimumMergeRunLength(_:)(v15);
  if (v16 < v15)
  {
    if (v15 >= -1)
    {
      v17 = v16;
      if (v15 <= 1)
      {
        v18 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DataAggregator.EntryPlace(0);
        v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) = v15 / 2;
      }

      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      v57[0] = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
      v57[1] = v15 / 2;
      sub_1001814EC(v57, v56, a1, v17);
      *(v42 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v15 >= 2)
  {
    v52 = v13;
    v53 = v6;
    v43[1] = v1;
    v44 = v15;
    v19 = *a1;
    v48 = (v10 + 8);
    v49 = (v10 + 32);
    v20 = (v10 + 48);
    v21 = -1;
    v22 = 1;
    v23 = &unk_100B2F000;
    v54 = v19;
    v50 = v20;
    v51 = v8;
    do
    {
      v46 = v22;
      v47 = v21;
      v24 = *(v54 + 8 * v22);
      v45 = v19;
      do
      {
        v25 = *v19;
        v26 = v23[139];
        swift_beginAccess();
        sub_1000082B4(v24 + v26, v8, &unk_100AD4790);
        v27 = *v20;
        if ((*v20)(v8, 1, v9) == 1)
        {
          v28 = v24;
          v29 = v25;
          Date.init()();
          if (v27(v8, 1, v9) != 1)
          {
            sub_100004F84(v8, &unk_100AD4790);
          }
        }

        else
        {
          (*v49)(v58, v8, v9);
          v30 = v24;
          v31 = v25;
        }

        v32 = v23[139];
        swift_beginAccess();
        v55 = v25;
        v33 = v25 + v32;
        v34 = v53;
        sub_1000082B4(v33, v53, &unk_100AD4790);
        if (v27(v34, 1, v9) == 1)
        {
          v35 = v52;
          Date.init()();
          v36 = v9;
          if (v27(v34, 1, v9) != 1)
          {
            sub_100004F84(v34, &unk_100AD4790);
          }
        }

        else
        {
          v35 = v52;
          (*v49)(v52, v34, v9);
          v36 = v9;
        }

        v37 = v58;
        v38 = static Date.> infix(_:_:)();
        v39 = *v48;
        (*v48)(v35, v36);
        v39(v37, v36);

        v20 = v50;
        v8 = v51;
        v9 = v36;
        v23 = &unk_100B2F000;
        if ((v38 & 1) == 0)
        {
          break;
        }

        if (!v54)
        {
          goto LABEL_28;
        }

        v40 = *v19;
        v24 = *(v19 + 8);
        *v19 = v24;
        *(v19 + 8) = v40;
        v19 -= 8;
      }

      while (!__CFADD__(v21++, 1));
      v22 = v46 + 1;
      v19 = v45 + 8;
      v21 = v47 - 1;
    }

    while (v46 + 1 != v44);
  }
}

Swift::Int sub_1001811CC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DataAggregator.Place(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DataAggregator.Place(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100182204(v8, v9, a1, v4);
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
    return sub_1001812F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001812F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for DataAggregator.Place(0);
  v8 = __chkstk_darwin(v33);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_100184950(v23, v17);
      sub_100184950(v20, v13);
      v24 = Date.compare(_:)();
      sub_1001849B4(v13);
      result = sub_1001849B4(v17);
      if (v24 != 1)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      sub_100184A10(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100184A10(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001814EC(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = sub_1000F24EC(&unk_100AD4790);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v134 - v13;
  v15 = __chkstk_darwin(v12);
  v142 = &v134 - v16;
  __chkstk_darwin(v15);
  v144 = &v134 - v17;
  v18 = type metadata accessor for Date();
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v156 = &v134 - v21;
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v146 = &v134 - v26;
  v145 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_109:
    a3 = *v137;
    if (!*v137)
    {
      goto LABEL_150;
    }

    v28 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v129 = v28;
LABEL_112:
      v159 = v129;
      v28 = *(v129 + 2);
      if (v28 >= 2)
      {
        while (*v145)
        {
          v130 = *&v129[16 * v28];
          v131 = v129;
          v132 = *&v129[16 * v28 + 24];
          sub_100182A54((*v145 + 8 * v130), (*v145 + 8 * *&v129[16 * v28 + 16]), (*v145 + 8 * v132), a3);
          if (v5)
          {
            goto LABEL_120;
          }

          if (v132 < v130)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_100204C44(v131);
          }

          if (v28 - 2 >= *(v131 + 2))
          {
            goto LABEL_138;
          }

          v133 = &v131[16 * v28];
          *v133 = v130;
          *(v133 + 1) = v132;
          v159 = v131;
          sub_100204BB8(v28 - 1);
          v129 = v159;
          v28 = *(v159 + 2);
          if (v28 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_148;
      }

LABEL_120:

      return;
    }

LABEL_144:
    v129 = sub_100204C44(v28);
    goto LABEL_112;
  }

  v141 = v25;
  v148 = v24;
  v134 = a4;
  v28 = 0;
  v29 = (v23 + 48);
  v153 = (v23 + 32);
  v30 = _swiftEmptyArrayStorage;
  v152 = (v23 + 8);
  v149 = v11;
  v154 = v14;
  v151 = (v23 + 48);
  while (1)
  {
    if ((v28 + 1) >= v27)
    {
      v27 = v28 + 1;
    }

    else
    {
      v136 = v30;
      v31 = *v145;
      v32 = *(*v145 + 8 * (v28 + 1));
      v157 = *(*v145 + 8 * v28);
      v33 = v157;
      v158 = v32;
      v34 = v32;
      v35 = v33;
      LODWORD(v150) = sub_10017F784(&v158, &v157);
      if (v5)
      {

        return;
      }

      v36 = v28;
      v37 = v28 + 2;
      v135 = v36;
      v140 = 8 * v36;
      v38 = (v31 + 8 * v36 + 16);
      v147 = v27;
      v143 = 0;
      while (1)
      {
        a3 = v144;
        if (v27 == v37)
        {
          break;
        }

        v42 = *(v38 - 1);
        v43 = *v38;
        v44 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        sub_1000082B4(v43 + v44, a3, &unk_100AD4790);
        v45 = *v29;
        if ((*v29)(a3, 1, v18) == 1)
        {
          v46 = v43;
          v47 = v42;
          Date.init()();
          if (v45(a3, 1, v18) != 1)
          {
            sub_100004F84(a3, &unk_100AD4790);
          }
        }

        else
        {
          (*v153)(v146, a3, v18);
          v48 = v43;
          v49 = v42;
        }

        v50 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        v51 = v42 + v50;
        v52 = v142;
        sub_1000082B4(v51, v142, &unk_100AD4790);
        v53 = v45(v52, 1, v18);
        v155 = v42;
        if (v53 == 1)
        {
          v39 = v141;
          Date.init()();
          if (v45(v52, 1, v18) != 1)
          {
            sub_100004F84(v52, &unk_100AD4790);
          }
        }

        else
        {
          v39 = v141;
          (*v153)(v141, v52, v18);
        }

        v40 = v146;
        v41 = static Date.> infix(_:_:)();
        a3 = *v152;
        (*v152)(v39, v18);
        (a3)(v40, v18);

        ++v37;
        ++v38;
        v5 = v143;
        v14 = v154;
        v29 = v151;
        v27 = v147;
        if ((v150 ^ v41))
        {
          v27 = v37 - 1;
          break;
        }
      }

      v30 = v136;
      v28 = v135;
      if (v150)
      {
        if (v27 < v135)
        {
          goto LABEL_143;
        }

        if (v135 < v27)
        {
          v54 = 8 * v27 - 8;
          v55 = v27;
          v56 = v135;
          v57 = v140;
          do
          {
            if (v56 != --v55)
            {
              v59 = *v145;
              if (!*v145)
              {
                goto LABEL_147;
              }

              v58 = *(v59 + v57);
              *(v59 + v57) = *(v59 + v54);
              *(v59 + v54) = v58;
            }

            ++v56;
            v54 -= 8;
            v57 += 8;
          }

          while (v56 < v55);
        }
      }
    }

    v60 = v145[1];
    if (v27 >= v60)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v27, v28))
    {
      goto LABEL_140;
    }

    if ((v27 - v28) >= v134)
    {
LABEL_36:
      v62 = v27;
      if (v27 < v28)
      {
        goto LABEL_139;
      }

      goto LABEL_37;
    }

    v61 = v28 + v134;
    if (__OFADD__(v28, v134))
    {
      goto LABEL_141;
    }

    if (v61 >= v60)
    {
      v61 = v145[1];
    }

    if (v61 < v28)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v27 == v61)
    {
      goto LABEL_36;
    }

    v136 = v30;
    v143 = v5;
    v150 = *v145;
    v110 = v150 + 8 * v27 - 8;
    v135 = v28;
    v111 = v28 - v27;
    v138 = v61;
LABEL_90:
    v147 = v27;
    v112 = *(v150 + 8 * v27);
    v139 = v111;
    v140 = v110;
LABEL_91:
    v113 = *v110;
    v114 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    swift_beginAccess();
    sub_1000082B4(v112 + v114, v14, &unk_100AD4790);
    v115 = *v29;
    if ((*v29)(v14, 1, v18) == 1)
    {
      v116 = v112;
      v117 = v113;
      Date.init()();
      if (v115(v14, 1, v18) != 1)
      {
        sub_100004F84(v14, &unk_100AD4790);
      }
    }

    else
    {
      (*v153)(v156, v14, v18);
      v118 = v112;
      v119 = v113;
    }

    v120 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    swift_beginAccess();
    v155 = v113;
    v121 = v113 + v120;
    v122 = v149;
    sub_1000082B4(v121, v149, &unk_100AD4790);
    if (v115(v122, 1, v18) == 1)
    {
      v123 = v148;
      Date.init()();
      v124 = v18;
      if (v115(v122, 1, v18) != 1)
      {
        sub_100004F84(v122, &unk_100AD4790);
      }
    }

    else
    {
      v123 = v148;
      (*v153)(v148, v122, v18);
      v124 = v18;
    }

    v125 = v156;
    a3 = static Date.> infix(_:_:)();
    v126 = *v152;
    (*v152)(v123, v124);
    v126(v125, v124);

    if (a3)
    {
      break;
    }

    v14 = v154;
    v29 = v151;
    v18 = v124;
LABEL_89:
    v27 = v147 + 1;
    v110 = v140 + 8;
    v111 = v139 - 1;
    v62 = v138;
    if (v147 + 1 != v138)
    {
      goto LABEL_90;
    }

    v5 = v143;
    v30 = v136;
    v28 = v135;
    if (v138 < v135)
    {
      goto LABEL_139;
    }

LABEL_37:
    v138 = v62;
    v63 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = v63;
    }

    else
    {
      v30 = sub_1003E4B80(0, *(v63 + 2) + 1, 1, v63);
    }

    a3 = *(v30 + 2);
    v64 = *(v30 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v30 = sub_1003E4B80((v64 > 1), a3 + 1, 1, v30);
    }

    *(v30 + 2) = v65;
    v66 = &v30[16 * a3];
    v67 = v138;
    *(v66 + 4) = v28;
    *(v66 + 5) = v67;
    v155 = *v137;
    if (!v155)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          v72 = &v30[16 * v65 + 32];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_126;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_127;
          }

          v79 = &v30[16 * v65];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_129;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_132;
          }

          if (v83 >= v75)
          {
            v101 = &v30[16 * a3 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_136;
            }

            if (v70 < v104)
            {
              a3 = v65 - 2;
            }
          }

          else
          {
LABEL_56:
            if (v71)
            {
              goto LABEL_128;
            }

            v84 = &v30[16 * v65];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_131;
            }

            v90 = &v30[16 * a3 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_135;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_70;
            }

            if (v70 < v93)
            {
              a3 = v65 - 2;
            }
          }
        }

        else
        {
          if (v65 == 3)
          {
            v68 = *(v30 + 4);
            v69 = *(v30 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_56;
          }

          v94 = &v30[16 * v65];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_70:
          if (v89)
          {
            goto LABEL_130;
          }

          v97 = &v30[16 * a3];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_133;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        v28 = a3 - 1;
        if (a3 - 1 >= v65)
        {
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
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v145)
        {
          goto LABEL_146;
        }

        v105 = v30;
        v106 = *&v30[16 * v28 + 32];
        v107 = *&v30[16 * a3 + 40];
        sub_100182A54((*v145 + 8 * v106), (*v145 + 8 * *&v30[16 * a3 + 32]), (*v145 + 8 * v107), v155);
        if (v5)
        {
          goto LABEL_120;
        }

        if (v107 < v106)
        {
          goto LABEL_124;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v108 = v105;
        }

        else
        {
          v108 = sub_100204C44(v105);
        }

        v14 = v154;
        if (v28 >= *(v108 + 2))
        {
          goto LABEL_125;
        }

        v109 = &v108[16 * v28];
        *(v109 + 4) = v106;
        *(v109 + 5) = v107;
        v159 = v108;
        v28 = &v159;
        sub_100204BB8(a3);
        v30 = v159;
        v65 = *(v159 + 2);
        if (v65 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = v145[1];
    v28 = v138;
    if (v138 >= v27)
    {
      goto LABEL_109;
    }
  }

  v14 = v154;
  if (v150)
  {
    v127 = *v110;
    v112 = *(v110 + 8);
    *v110 = v112;
    *(v110 + 8) = v127;
    v110 -= 8;
    v128 = __CFADD__(v111++, 1);
    v29 = v151;
    v18 = v124;
    if (v128)
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_100182204(int64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v110 = type metadata accessor for DataAggregator.Place(0);
  v106 = *(v110 - 8);
  v9 = __chkstk_darwin(v110);
  v100 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v109 = &v95 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v95 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v95 - v17;
  v108 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_100204C44(a4);
    }

    v111 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v108)
      {
        v91 = *(result + 16 * a4);
        v92 = result;
        v93 = *(result + 16 * (a4 - 1) + 40);
        sub_1001832C8(*v108 + *(v106 + 72) * v91, *v108 + *(v106 + 72) * *(result + 16 * (a4 - 1) + 32), *v108 + *(v106 + 72) * v93, v5);
        if (v6)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_100204C44(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_123;
        }

        v94 = &v92[16 * a4];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_100204BB8(a4 - 1);
        result = v111;
        a4 = *(v111 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v97 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v101 = v21;
    if (v23 >= v19)
    {
      v30 = v23;
    }

    else
    {
      v24 = *v108;
      v104 = v24;
      v25 = *(v106 + 72);
      v5 = v24 + v25 * v23;
      sub_100184950(v5, v18);
      sub_100184950(v24 + v25 * v22, v15);
      v105 = Date.compare(_:)();
      sub_1001849B4(v15);
      result = sub_1001849B4(v18);
      v96 = v22;
      v26 = v22 + 2;
      v107 = v25;
      v27 = v104 + v25 * (v22 + 2);
      while (v19 != v26)
      {
        v28 = v105 == 1;
        sub_100184950(v27, v18);
        sub_100184950(v5, v15);
        v29 = Date.compare(_:)();
        sub_1001849B4(v15);
        result = sub_1001849B4(v18);
        ++v26;
        v27 += v107;
        v5 += v107;
        if (((v28 ^ (v29 != 1)) & 1) == 0)
        {
          v30 = v26 - 1;
          goto LABEL_11;
        }
      }

      v30 = v19;
LABEL_11:
      v22 = v96;
      a4 = v97;
      if (v105 == 1)
      {
        if (v30 < v96)
        {
          goto LABEL_126;
        }

        if (v96 < v30)
        {
          v95 = v6;
          v31 = v30;
          v32 = v107 * (v30 - 1);
          v5 = v30 * v107;
          v105 = v30;
          v33 = v96;
          v34 = v96 * v107;
          do
          {
            if (v33 != --v31)
            {
              v35 = *v108;
              if (!*v108)
              {
                goto LABEL_132;
              }

              sub_100184A10(v35 + v34, v100);
              if (v34 < v32 || v35 + v34 >= (v35 + v5))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100184A10(v100, v35 + v32);
            }

            ++v33;
            v32 -= v107;
            v5 -= v107;
            v34 += v107;
          }

          while (v33 < v31);
          v6 = v95;
          v22 = v96;
          a4 = v97;
          v30 = v105;
        }
      }
    }

    v36 = v108[1];
    if (v30 < v36)
    {
      if (__OFSUB__(v30, v22))
      {
        goto LABEL_125;
      }

      if (v30 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v36)
        {
          v5 = v108[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v30 != v5)
        {
          break;
        }
      }
    }

    v5 = v30;
    if (v30 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v101;
    }

    else
    {
      result = sub_1003E4B80(0, *(v101 + 2) + 1, 1, v101);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v37 = *(v21 + 3);
    v38 = a4 + 1;
    if (a4 >= v37 >> 1)
    {
      result = sub_1003E4B80((v37 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v38;
    v39 = &v21[16 * a4];
    *(v39 + 4) = v22;
    *(v39 + 5) = v5;
    v40 = *v98;
    if (!*v98)
    {
      goto LABEL_134;
    }

    v102 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v41 = *(v21 + 4);
          v42 = *(v21 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_54:
          if (v44)
          {
            goto LABEL_113;
          }

          v57 = &v21[16 * v38];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_116;
          }

          v63 = &v21[16 * v5 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_120;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v5 = v38 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v67 = &v21[16 * v38];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_68:
        if (v62)
        {
          goto LABEL_115;
        }

        v70 = &v21[16 * v5];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_118;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v5 - 1;
        if (v5 - 1 >= v38)
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

        if (!*v108)
        {
          goto LABEL_131;
        }

        v78 = v21;
        v79 = *&v21[16 * a4 + 32];
        v80 = *&v21[16 * v5 + 40];
        sub_1001832C8(*v108 + *(v106 + 72) * v79, *v108 + *(v106 + 72) * *&v21[16 * v5 + 32], *v108 + *(v106 + 72) * v80, v40);
        if (v6)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_100204C44(v78);
        }

        if (a4 >= *(v78 + 2))
        {
          goto LABEL_110;
        }

        v81 = &v78[16 * a4];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        v111 = v78;
        result = sub_100204BB8(v5);
        v21 = v111;
        v38 = *(v111 + 16);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v21[16 * v38 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_111;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_112;
      }

      v52 = &v21[16 * v38];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_114;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_117;
      }

      if (v56 >= v48)
      {
        v74 = &v21[16 * v5 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_121;
        }

        if (v43 < v77)
        {
          v5 = v38 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v108[1];
    v20 = v102;
    a4 = v97;
    if (v102 >= v19)
    {
      goto LABEL_96;
    }
  }

  v95 = v6;
  v82 = v22;
  v83 = *v108;
  v84 = *(v106 + 72);
  v85 = *v108 + v84 * (v30 - 1);
  v86 = -v84;
  v96 = v82;
  v87 = v82 - v30;
  v99 = v84;
  v88 = v83 + v30 * v84;
  v102 = v5;
LABEL_86:
  v104 = v87;
  v105 = v30;
  v103 = v88;
  v89 = v88;
  v107 = v85;
  while (1)
  {
    sub_100184950(v89, v18);
    sub_100184950(v85, v15);
    a4 = Date.compare(_:)();
    sub_1001849B4(v15);
    result = sub_1001849B4(v18);
    if (a4 != 1)
    {
LABEL_85:
      v30 = v105 + 1;
      v85 = v107 + v99;
      v87 = v104 - 1;
      v5 = v102;
      v88 = v103 + v99;
      if (v105 + 1 != v102)
      {
        goto LABEL_86;
      }

      v6 = v95;
      v22 = v96;
      if (v102 < v96)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v83)
    {
      break;
    }

    a4 = v109;
    sub_100184A10(v89, v109);
    swift_arrayInitWithTakeFrontToBack();
    sub_100184A10(a4, v85);
    v85 += v86;
    v89 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_100182A54(void **a1, void **a2, char *a3, void **a4)
{
  v8 = sub_1000F24EC(&unk_100AD4790);
  v9 = __chkstk_darwin(v8 - 8);
  v86 = (&v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v88 = &v80 - v12;
  v13 = __chkstk_darwin(v11);
  v85 = (&v80 - v14);
  __chkstk_darwin(v13);
  v87 = (&v80 - v15);
  v16 = type metadata accessor for Date();
  v17 = __chkstk_darwin(v16);
  v84 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v91 = &v80 - v20;
  v21 = __chkstk_darwin(v19);
  v83 = (&v80 - v22);
  __chkstk_darwin(v21);
  v90 = (&v80 - v24);
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  v92 = a4;
  if (v26 < v27 >> 3)
  {
    v29 = a4;
    if (a4 != a1 || &a1[v26] <= a4)
    {
      v30 = v23;
      memmove(a4, a1, 8 * v26);
      v23 = v30;
      v29 = v92;
    }

    v93 = &v29[v26];
    if (a2 - a1 < 8 || a2 >= a3)
    {
      a2 = a1;
      goto LABEL_55;
    }

    v31 = a2;
    v32 = (v23 + 48);
    v91 = (v23 + 32);
    v88 = (v23 + 8);
    v33 = v87;
    v86 = (v23 + 48);
    while (1)
    {
      v89 = v31;
      v34 = *v31;
      v92 = v29;
      v35 = *v29;
      v36 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      swift_beginAccess();
      sub_1000082B4(v34 + v36, v33, &unk_100AD4790);
      v37 = *v32;
      if ((*v32)(v33, 1, v16) == 1)
      {
        v38 = v34;
        v39 = v35;
        Date.init()();
        if (v37(v33, 1, v16) != 1)
        {
          sub_100004F84(v33, &unk_100AD4790);
        }
      }

      else
      {
        (*v91)(v90, v33, v16);
        v40 = v34;
        v41 = v35;
      }

      v42 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      swift_beginAccess();
      v43 = v35 + v42;
      v44 = v85;
      sub_1000082B4(v43, v85, &unk_100AD4790);
      if (v37(v44, 1, v16) == 1)
      {
        v45 = v83;
        Date.init()();
        if (v37(v44, 1, v16) != 1)
        {
          sub_100004F84(v44, &unk_100AD4790);
        }
      }

      else
      {
        v45 = v83;
        (*v91)(v83, v44, v16);
      }

      v46 = v90;
      v47 = static Date.> infix(_:_:)();
      v48 = v45;
      v49 = v47;
      v50 = *v88;
      (*v88)(v48, v16);
      v50(v46, v16);

      if ((v49 & 1) == 0)
      {
        break;
      }

      v51 = v89;
      v31 = v89 + 1;
      v29 = v92;
      v33 = v87;
      if (a1 != v89)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++a1;
      v32 = v86;
      if (v29 >= v93 || v31 >= a3)
      {
        a2 = a1;
        goto LABEL_55;
      }
    }

    v51 = v92;
    v29 = v92 + 1;
    v31 = v89;
    v33 = v87;
    if (a1 == v92)
    {
      goto LABEL_25;
    }

LABEL_24:
    *a1 = *v51;
    goto LABEL_25;
  }

  v29 = a4;
  if (a4 != a2 || &a2[v28] <= a4)
  {
    v52 = v23;
    memmove(a4, a2, 8 * v28);
    v23 = v52;
    v29 = v92;
  }

  v93 = &v29[v28];
  if (a3 - a2 >= 8 && a2 > a1)
  {
    v53 = (v23 + 48);
    v82 = (v23 + 8);
    v83 = (v23 + 32);
    v54 = &unk_100B2F000;
    v55 = v88;
    v85 = (v23 + 48);
    v81 = a1;
    while (1)
    {
      v89 = a2;
      v56 = a2 - 1;
      v57 = (a3 - 8);
      v58 = v93;
      v87 = a2 - 1;
      while (1)
      {
        v59 = *(v58 - 1);
        v90 = v58 - 1;
        v60 = *v56;
        v61 = v54[139];
        swift_beginAccess();
        sub_1000082B4(v59 + v61, v55, &unk_100AD4790);
        v62 = *v53;
        if ((*v53)(v55, 1, v16) == 1)
        {
          v63 = v59;
          v64 = v60;
          Date.init()();
          if (v62(v55, 1, v16) != 1)
          {
            sub_100004F84(v55, &unk_100AD4790);
          }
        }

        else
        {
          (*v83)(v91, v55, v16);
          v65 = v59;
          v66 = v60;
        }

        v67 = v54[139];
        swift_beginAccess();
        v68 = v60 + v67;
        v69 = v86;
        sub_1000082B4(v68, v86, &unk_100AD4790);
        v70 = v57;
        if (v62(v69, 1, v16) == 1)
        {
          v71 = v84;
          Date.init()();
          if (v62(v69, 1, v16) != 1)
          {
            sub_100004F84(v69, &unk_100AD4790);
          }
        }

        else
        {
          v71 = v84;
          (*v83)(v84, v69, v16);
        }

        v72 = v91;
        v73 = static Date.> infix(_:_:)();
        v74 = v71;
        v75 = v73;
        v76 = *v82;
        (*v82)(v74, v16);
        v76(v72, v16);

        a3 = v70;
        v77 = v70 + 1;
        if (v75)
        {
          break;
        }

        v29 = v92;
        v55 = v88;
        v58 = v90;
        if (v77 != v93)
        {
          *v70 = *v90;
        }

        v57 = v70 - 1;
        v93 = v58;
        v53 = v85;
        v54 = &unk_100B2F000;
        v56 = v87;
        if (v58 <= v29)
        {
          v93 = v58;
          a2 = v89;
          goto LABEL_55;
        }
      }

      v55 = v88;
      v29 = v92;
      v78 = v87;
      if (v77 != v89)
      {
        *v70 = *v87;
      }

      v53 = v85;
      v54 = &unk_100B2F000;
      if (v93 > v29)
      {
        a2 = v78;
        if (v78 > v81)
        {
          continue;
        }
      }

      a2 = v78;
      break;
    }
  }

LABEL_55:
  if (a2 != v29 || a2 >= (v29 + ((v93 - v29 + (v93 - v29 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v29, 8 * (v93 - v29));
  }

  return 1;
}

uint64_t sub_1001832C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = a3;
  v40 = type metadata accessor for DataAggregator.Place(0);
  v8 = __chkstk_darwin(v40);
  v41 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v36 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v42 - a2;
  if (v42 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v45 = a1;
  v44 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v38 = v24;
      v39 = a4;
      do
      {
        v36[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v42;
          if (v27 <= a1)
          {
            v45 = v27;
            v43 = v36[0];
            goto LABEL_59;
          }

          v37 = v26;
          v42 += v24;
          v31 = v25 + v24;
          sub_100184950(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v41;
          sub_100184950(v33, v41);
          v35 = Date.compare(_:)();
          sub_1001849B4(v34);
          sub_1001849B4(v12);
          if (v35 == 1)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v42 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v39;
          v24 = v38;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v42 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v37;
          v24 = v38;
        }

        else
        {
          v26 = v37;
          v24 = v38;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v39);
    }

LABEL_58:
    v45 = a2;
    v43 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v43 = a4 + v17;
    if (v17 >= 1 && a2 < v42)
    {
      do
      {
        sub_100184950(a2, v12);
        v21 = v41;
        sub_100184950(a4, v41);
        v22 = Date.compare(_:)();
        sub_1001849B4(v21);
        sub_1001849B4(v12);
        if (v22 == 1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v45 = a1;
      }

      while (a4 < v19 && a2 < v42);
    }
  }

LABEL_59:
  sub_100204C70(&v45, &v44, &v43);
  return 1;
}

uint64_t sub_100183780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_1000F24EC(&unk_100AD5BE0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000065A8(0, &unk_100AD43A0);
  v14 = type metadata accessor for DataAggregator.Place(0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1;
  v16 = a2;
  v60 = v15;
  v61 = v14;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  sub_1000082B4(v15 + v17, v13, &unk_100AD4790);
  v19 = v16 + v17;
  v20 = v16;
  sub_1000082B4(v19, &v13[v18], &unk_100AD4790);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_1000082B4(v13, v10, &unk_100AD4790);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_100184A84(&qword_100AD5BF0, &type metadata accessor for Date);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      v20 = v16;
      sub_100004F84(v13, &unk_100AD4790);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_100004F84(v13, &unk_100AD5BE0);
    return 0;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_100004F84(v13, &unk_100AD4790);
LABEL_12:
  v26 = v60;
  v25 = v61;
  v27 = v61[7];
  v28 = (v60 + v27);
  v29 = *(v60 + v27 + 8);
  v30 = (v20 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v25[8];
  v33 = (v26 + v32);
  v34 = *(v26 + v32 + 8);
  v35 = (v20 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v25[9];
  v38 = (v26 + v37);
  v39 = *(v26 + v37 + 8);
  v40 = (v20 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v25[10];
  v43 = *(v26 + v42);
  v44 = *(v20 + v42);
  if (v43)
  {
    if (!v44)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD43F0);
    v45 = v44;
    v46 = v43;
    v47 = static NSObject.== infix(_:_:)();

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v48 = v61[11];
  v49 = *(v26 + v48);
  v50 = *(v20 + v48);
  if (v49)
  {
    if (!v50)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD5A80);
    v51 = v50;
    v52 = v49;
    v53 = static NSObject.== infix(_:_:)();

    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  v54 = v61[12];
  v55 = *(v26 + v54);
  v56 = *(v20 + v54);
  if (v55)
  {
    if (v56)
    {
      sub_1000065A8(0, &qword_100AD5A90);
      v57 = v56;
      v58 = v55;
      v59 = static NSObject.== infix(_:_:)();

      if (v59)
      {
        return 1;
      }
    }
  }

  else if (!v56)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100183D1C(void *a1, int a2)
{
  v3 = v2;
  v39 = a2;
  v38 = a1;
  v4 = sub_1000F24EC(&qword_100AD5B50);
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v33 - v5;
  v6 = sub_1000F24EC(&qword_100AD5B58);
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_1000F24EC(&qword_100AD5B60);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = sub_1000F24EC(&qword_100AD5B68);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0x415B9ECD00000000;
  v17 = OBJC_IVAR____TtC7Journal14DataAggregator__recentPlaces;
  v40 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD58B0);
  Published.init(initialValue:)();
  (*(v14 + 32))(v2 + v17, v16, v13);
  v18 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByMapPlace;
  v40 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD58C0);
  Published.init(initialValue:)();
  v19 = *(v10 + 32);
  v19(v2 + v18, v12, v9);
  v20 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByPhotoPlace;
  v40 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v19(v2 + v20, v12, v9);
  v21 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByRoutePlace;
  v40 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v19(v2 + v21, v12, v9);
  v22 = OBJC_IVAR____TtC7Journal14DataAggregator__mostRecentEntriesByPlace;
  v40 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v19(v2 + v22, v12, v9);
  v23 = OBJC_IVAR____TtC7Journal14DataAggregator__hasCompletedFirstUpdate;
  LOBYTE(v40) = 0;
  Published.init(initialValue:)();
  (*(v33 + 32))(v3 + v23, v8, v34);
  v24 = OBJC_IVAR____TtC7Journal14DataAggregator__assetTypeCount;
  v40 = &_swiftEmptyDictionarySingleton;
  sub_1000F24EC(&unk_100AD58D8);
  v25 = v35;
  Published.init(initialValue:)();
  (*(v36 + 32))(v3 + v24, v25, v37);
  v26 = v38;
  *(v3 + 16) = v38;
  v27 = [v26 newBackgroundContext];
  *(v3 + 24) = v27;
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 mergeByPropertyStoreTrumpMergePolicy];
  [v29 setMergePolicy:v30];

  [*(v3 + 24) setAutomaticallyMergesChangesFromParent:1];
  v31 = *(v3 + 24);
  NSManagedObjectContext.setInitialQueryGeneration()();

  sub_100177E68(v39);
  return v3;
}

void *sub_1001841F0(char *a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v59 = a2;
  v62 = a1;
  if (a1)
  {
    v63 = _swiftEmptyArrayStorage;
    if (a2 >> 62)
    {
      goto LABEL_74;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v61 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location;
      v12 = v62;
      v5 = v12;
      if (!i)
      {
        break;
      }

      v57 = a3;
      v58 = v12;
      v13 = 0;
      v60 = a2 & 0xC000000000000001;
      v14 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v60)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v14 + 16))
          {
            goto LABEL_73;
          }

          v15 = *(a2 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        a3 = i;
        [*&v15[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location] distanceFromLocation:*&v62[v61]];
        v19 = v18;
        v20 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        sub_1000082B4(v16 + v20, v11, &unk_100AD4790);
        v21 = type metadata accessor for Date();
        if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
        {

          sub_100004F84(v11, &unk_100AD4790);
        }

        else
        {
          sub_100004F84(v11, &unk_100AD4790);
          if (v19 >= 7240500.0)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a2 = v59;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }
        }

        i = a3;
        ++v13;
        if (v17 == a3)
        {
          a3 = v57;
          v5 = v58;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

LABEL_33:

    v63 = sub_1004FCDD4(v31);
    v4 = 0;
    sub_100180974(&v63);

    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      i = v63;
      if ((v63 & 0x8000000000000000) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = (v63 >> 62) & 1;
      }

      if ((v4 & 1) == 0)
      {
        v32 = *(v63 + 16);
        if (v32 >= a3)
        {
          v33 = a3;
        }

        else
        {
          v33 = *(v63 + 16);
        }

        if (a3)
        {
          a2 = v33;
        }

        else
        {
          a2 = 0;
        }

        if (v32 >= a2)
        {
          goto LABEL_45;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    v53 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v53 >= a3)
    {
      v54 = a3;
    }

    else
    {
      v54 = v53;
    }

    if (v53 < 0)
    {
      v54 = a3;
    }

    if (a3)
    {
      a2 = v54;
    }

    else
    {
      a2 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= a2)
    {
LABEL_45:
      if ((i & 0xC000000000000001) != 0 && a2)
      {
        type metadata accessor for DataAggregator.EntryPlace(0);

        v34 = 0;
        do
        {
          v35 = v34 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v34);
          v34 = v35;
        }

        while (a2 != v35);
      }

      else
      {
      }

      if (v4)
      {
        v36 = _CocoaArrayWrapper.subscript.getter();
        v4 = v37;
        a1 = v38;
        v24 = v39;

        i = v36;
        if (v24)
        {
LABEL_56:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v43 = swift_dynamicCastClass();
          if (!v43)
          {
            swift_unknownObjectRelease();
            v43 = _swiftEmptyArrayStorage;
          }

          v44 = v43[2];

          if (!__OFSUB__(v24 >> 1, a1))
          {
            if (v44 == (v24 >> 1) - a1)
            {
              v45 = swift_dynamicCastClass();

              swift_unknownObjectRelease_n();
              if (v45)
              {
                return v45;
              }

              goto LABEL_71;
            }

            goto LABEL_103;
          }

LABEL_102:
          __break(1u);
LABEL_103:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        a1 = 0;
        v4 = i + 32;
        v24 = (2 * a2) | 1;
        if (v24)
        {
          goto LABEL_56;
        }
      }

      sub_10060FDFC(i, v4, a1, v24);
      v41 = v40;
      swift_unknownObjectRelease();

      return v41;
    }

    goto LABEL_86;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22 >= a3)
      {
        v23 = a3;
      }

      else
      {
        v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < v24)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

LABEL_27:
      if ((v59 & 0xC000000000000001) != 0 && v24)
      {
        type metadata accessor for DataAggregator.EntryPlace(0);

        v25 = 0;
        do
        {
          v26 = v25 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v25);
          v25 = v26;
        }

        while (v24 != v26);
        if (!v4)
        {
          goto LABEL_32;
        }
      }

      else
      {

        if (!v4)
        {
LABEL_32:
          v27 = 0;
          v28 = v59 & 0xFFFFFFFFFFFFFF8;
          v29 = (v59 & 0xFFFFFFFFFFFFFF8) + 32;
          v30 = (2 * v24) | 1;
LABEL_65:
          v50 = v29;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v51 = swift_dynamicCastClass();
          if (!v51)
          {
            swift_unknownObjectRelease();
            v51 = _swiftEmptyArrayStorage;
          }

          v52 = v51[2];

          if (__OFSUB__(v30 >> 1, v27))
          {
            __break(1u);
          }

          else if (v52 == (v30 >> 1) - v27)
          {
            v49 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v49)
            {
LABEL_71:
              swift_unknownObjectRelease();
              return _swiftEmptyArrayStorage;
            }

            return v49;
          }

          swift_unknownObjectRelease();
          v29 = v50;
LABEL_64:
          sub_10060FDFC(v28, v29, v27, v30);
          v49 = v48;
          swift_unknownObjectRelease();
          return v49;
        }
      }

      v28 = _CocoaArrayWrapper.subscript.getter();
      v27 = v46;
      v30 = v47;
      if ((v47 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    goto LABEL_88;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  if (a2 < 0)
  {
    a1 = a2;
  }

  else
  {
    a1 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  i = _CocoaArrayWrapper.endIndex.getter();
  if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
  {
    if (i >= a3)
    {
      v55 = a3;
    }

    else
    {
      v55 = i;
    }

    if (i < 0)
    {
      v55 = a3;
    }

    if (a3)
    {
      v24 = v55;
    }

    else
    {
      v24 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v24)
    {
      goto LABEL_101;
    }

    goto LABEL_27;
  }

LABEL_107:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100184890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10017F62C(a1, v4, v5, v7, v6);
}

uint64_t sub_100184950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataAggregator.Place(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001849B4(uint64_t a1)
{
  v2 = type metadata accessor for DataAggregator.Place(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100184A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataAggregator.Place(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100184A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100184ACC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000F24EC(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_100184B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100184BA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100178618(a1, v4, v5, v6, v7, v8);
}

size_t sub_100184C78()
{
  v0 = sub_1000F24EC(&qword_100AD5BF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v58 - v1;
  v66 = type metadata accessor for AssetType();
  v3 = *(v66 - 8);
  v4 = __chkstk_darwin(v66);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v58 - v6;
  v7 = sub_1000F24EC(&qword_100AE4290);
  v68 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v58 - v15;
  __chkstk_darwin(v14);
  v65 = &v58 - v18;
  if (v17 >> 62)
  {
    v56 = v17;
    v57 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v56;
    v19 = v57;
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = _swiftEmptyArrayStorage;
  v63 = v2;
  v64 = v3;
  v61 = v13;
  v62 = v7;
  if (v19)
  {
    v21 = v17;
    v71 = _swiftEmptyArrayStorage;
    result = sub_100199B94(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v71;
    v23 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = v23;
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
        swift_beginAccess();
        sub_1000082B4(v26 + v27, v16, &qword_100AE4290);
        swift_unknownObjectRelease();
        v71 = v20;
        v29 = v20[2];
        v28 = v20[3];
        if (v29 >= v28 >> 1)
        {
          sub_100199B94(v28 > 1, v29 + 1, 1);
          v20 = v71;
        }

        ++v24;
        v20[2] = v29 + 1;
        sub_100021CEC(v16, v20 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v29, &qword_100AE4290);
        v23 = v25;
      }

      while (v19 != v24);
    }

    else
    {
      v30 = (v21 + 32);
      do
      {
        v31 = *v30;
        v32 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
        swift_beginAccess();
        sub_1000082B4(v31 + v32, v10, &qword_100AE4290);
        v71 = v20;
        v34 = v20[2];
        v33 = v20[3];
        if (v34 >= v33 >> 1)
        {
          sub_100199B94(v33 > 1, v34 + 1, 1);
          v20 = v71;
        }

        v20[2] = v34 + 1;
        sub_100021CEC(v10, v20 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v34, &qword_100AE4290);
        ++v30;
        --v19;
      }

      while (v19);
    }

    v3 = v64;
  }

  v35 = sub_100890B20(v20);

  v36 = *(v3 + 104);
  v37 = v65;
  v38 = v66;
  v36(v65, enum case for AssetType.photo(_:), v66);
  v39 = *(v3 + 56);
  v67 = 1;
  v39(v37, 0, 1, v38);
  v40 = sub_1006278CC(v37, v35);
  sub_100004F84(v37, &qword_100AE4290);
  if ((v40 & 1) == 0)
  {
    v36(v37, enum case for AssetType.livePhoto(_:), v38);
    v67 = 1;
    v39(v37, 0, 1, v38);
    v41 = sub_1006278CC(v37, v35);
    sub_100004F84(v37, &qword_100AE4290);
    if ((v41 & 1) == 0)
    {
      v36(v37, enum case for AssetType.video(_:), v38);
      v39(v37, 0, 1, v38);
      v67 = sub_1006278CC(v37, v35);
      sub_100004F84(v37, &qword_100AE4290);
    }
  }

  v42 = enum case for AssetType.workoutRoute(_:);
  v36(v37, enum case for AssetType.workoutRoute(_:), v38);
  v39(v37, 0, 1, v38);
  v43 = sub_1006278CC(v37, v35);
  sub_100004F84(v37, &qword_100AE4290);
  if ((v43 & 1) == 0)
  {
    v36(v37, enum case for AssetType.multiPinMap(_:), v38);
    v39(v37, 0, 1, v38);
    v48 = sub_1006278CC(v37, v35);
    sub_100004F84(v37, &qword_100AE4290);
    v44 = v67;
    if ((v48 & v67 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:

    return 4;
  }

  v44 = v67;
  if (v67)
  {
    goto LABEL_25;
  }

LABEL_21:
  v45 = v63;
  if (!((*(v35 + 16) < 2uLL) | v44 & 1))
  {

    return 3;
  }

  sub_100603C44(v35, v63);

  if ((*(v68 + 48))(v45, 1, v62) == 1)
  {
    v46 = &qword_100AD5BF8;
    v47 = v45;
LABEL_29:
    sub_100004F84(v47, v46);
    return v44 & 1;
  }

  v49 = v61;
  sub_100021CEC(v45, v61, &qword_100AE4290);
  v50 = v64;
  if ((*(v64 + 48))(v49, 1, v38) == 1)
  {
    v46 = &qword_100AE4290;
    v47 = v49;
    goto LABEL_29;
  }

  v51 = v60;
  (*(v50 + 32))(v60, v49, v38);
  v52 = v59;
  v36(v59, v42, v38);
  sub_100184A84(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v71 == v69 && v72 == v70)
  {
    v53 = *(v64 + 8);
    v53(v52, v38);
    v53(v51, v38);
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v55 = *(v64 + 8);
    v55(v52, v38);
    v55(v51, v38);

    v44 = v67;
    if ((v54 & 1) == 0)
    {
      return v44 & 1;
    }
  }

  return 2;
}

double *sub_100185544(double *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5C00);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1000F24EC(&qword_100AD5C08);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v31[0] = a2;
  v33 = a1;
  sub_1000F24EC(&qword_100AD58C0);
  sub_10000B58C(&unk_100AD5C10, &qword_100AD58C0);
  sub_100184A84(&qword_100AE9C40, type metadata accessor for DataAggregator.EntryPlace);
  v12 = v8;
  BidirectionalCollection<>.difference<A>(from:)();
  v32 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  (*(v9 + 16))(v7, v11, v8);
  v13 = *(v5 + 44);
  v14 = sub_10000B58C(&unk_100AD5C20, &qword_100AD5C08);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v15 = _swiftEmptyArrayStorage;
  if (*&v7[v13] != v31[0])
  {
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    v26 = v11;
    v27 = v9;
    v29 = v14;
    v30 = v13;
    do
    {
      v25 = v16;
      while (1)
      {
        v28 = v15;
        v17 = v7;
        v18 = dispatch thunk of Collection.subscript.read();
        v20 = *(v19 + 8);
        v21 = *(v19 + 25);
        v22 = v20;
        v18(v31, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v23 = v20;
        if (v21 == 1)
        {
          break;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v15 = v33;
        v7 = v17;
        dispatch thunk of Collection.endIndex.getter();
        if (*&v17[v30] == v31[0])
        {
          v11 = v26;
          v9 = v27;
          goto LABEL_12;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v16 = v32;
      v7 = v17;
      dispatch thunk of Collection.endIndex.getter();
      v11 = v26;
      v9 = v27;
      v15 = v28;
    }

    while (*&v17[v30] != v31[0]);
  }

LABEL_12:
  sub_100004F84(v7, &qword_100AD5C00);
  (*(v9 + 8))(v11, v12);
  return v15;
}

uint64_t sub_1001859CC()
{
  v0 = type metadata accessor for EntryListType();
  sub_100006118(v0, qword_100B2F468);
  v1 = sub_10000617C(v0, qword_100B2F468);
  type metadata accessor for JournalMO();
  static JournalMO.defaultJournalID.getter();
  v2 = sub_1000F24EC(&qword_100AD47A0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 2, v2);
}

uint64_t sub_100185A80()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD5CF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for EntryListType();
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  sub_100022B50(v0, &v29 - v12);
  v14 = sub_1000F24EC(&qword_100AD47A0);
  v15 = *(*(v14 - 8) + 48);
  if (!v15(v13, 2, v14))
  {
    v31 = v7;
    v32 = v0;
    v18 = v13;
    v19 = v33;
    v29 = *(v34 + 8);
    v30 = v11;
    v29(v18);
    if (qword_100ACF9D0 != -1)
    {
      swift_once();
    }

    v20 = sub_10000617C(v8, qword_100B2F468);
    v21 = *(v5 + 48);
    v22 = v31;
    sub_100022B50(v32, v31);
    sub_100022B50(v20, v22 + v21);
    v23 = v15(v22, 2, v14);
    if (!v23)
    {
      v24 = v4;
      v25 = v30;
      sub_100022B50(v22, v30);
      if (!v15(v22 + v21, 2, v14))
      {
        (*(v34 + 32))(v4, v22 + v21, v19);
        v27 = static UUID.== infix(_:_:)();
        v28 = v29;
        (v29)(v24, v19);
        v28(v25, v19);
        sub_100011478(v22);
        v17 = v27 ^ 1;
        return v17 & 1;
      }

      (v29)(v25, v19);
      goto LABEL_14;
    }

    if (v23 == 1)
    {
      if (v15(v22 + v21, 2, v14) != 1)
      {
        goto LABEL_14;
      }
    }

    else if (v15(v22 + v21, 2, v14) != 2)
    {
LABEL_14:
      sub_1000117D0(v22);
      v17 = 1;
      return v17 & 1;
    }

    v16 = v22;
    goto LABEL_3;
  }

  v16 = v13;
LABEL_3:
  sub_100011478(v16);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100185E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryListType();
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022B50(a2, v6);
  sub_100186174(a1, *(a1 + 24));
  return sub_1000346D0(v6);
}

uint64_t sub_100185EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100186218();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100185F28()
{
  sub_1001861C4();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t sub_100185F88@<X0>(_BYTE *a1@<X8>)
{
  sub_1001861C4();
  result = UITraitCollection.subscript.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100186024()
{
  sub_10003C544();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_10018606C()
{
  sub_1001860A8();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1001860A8()
{
  result = qword_100AD5CF8;
  if (!qword_100AD5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5CF8);
  }

  return result;
}

unint64_t sub_100186120()
{
  result = qword_100AD5D10;
  if (!qword_100AD5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D10);
  }

  return result;
}

uint64_t sub_100186174(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1001861C4()
{
  result = qword_100ADE690;
  if (!qword_100ADE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE690);
  }

  return result;
}

unint64_t sub_100186218()
{
  result = qword_100AD5D20;
  if (!qword_100AD5D20)
  {
    type metadata accessor for EntryListType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D20);
  }

  return result;
}

uint64_t sub_100186270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_1000082B4(a1, v20 - v9, &qword_100AD5170);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &qword_100AD5170);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

NSString sub_100186484()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F498 = result;
  return result;
}

uint64_t sub_1001864BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001880F4();
  }

  return result;
}

void *sub_100186514()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result isHidden];

    return (v2 ^ 1);
  }

  return result;
}

uint64_t sub_100186578(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void sub_1001865B8()
{
  v1 = v0;
  v2 = 0;
  v117 = *v0;
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v118 = &v111 - v4;
  v5 = sub_1000F24EC(qword_100AF2AC0);
  __chkstk_darwin(v5 - 8);
  v119 = &v111 - v6;
  v7 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext;
  [*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext) invalidate];
  v8 = *(v0 + v7);
  *(v0 + v7) = 0;

  v9 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask;
  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 connectedScenes];

  v12 = sub_1000065A8(0, &qword_100AE4620);
  v13 = sub_10002623C();
  v124 = v12;
  v120 = v13;
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = v1;
  v115 = 0;
  v116 = v9;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = &_swiftEmptySetSingleton;
    v127 = &_swiftEmptySetSingleton;
    v17 = __CocoaSet.makeIterator()();
    v12 = v17;
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
LABEL_27:

      if ((v16 & 0xC000000000000001) != 0)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
    }

    v19 = -1;
LABEL_10:
    v125 = v18;
    swift_dynamicCast();
    v27 = [v126 session];
    v28 = [v27 role];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v29;
    v2 = v32;
    if (v34 == v33 && v31 == v32)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {

        goto LABEL_9;
      }
    }

    v36 = v126;
    v37 = *(v16 + 16);
    if (*(v16 + 24) <= v37)
    {
      sub_10028D564(v37 + 1);
    }

    v16 = v127;
    v20 = NSObject._rawHashValue(seed:)(v127[5]);
    v22 = v16 + 56;
    v23 = -1 << *(v16 + 32);
    v24 = v20 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6))) != 0)
    {
      v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_8;
    }

    v38 = 0;
    v39 = (63 - v23) >> 6;
    while (++v25 != v39 || (v38 & 1) == 0)
    {
      v40 = v25 == v39;
      if (v25 == v39)
      {
        v25 = 0;
      }

      v38 |= v40;
      v41 = *(v22 + 8 * v25);
      if (v41 != -1)
      {
        v26 = __clz(__rbit64(~v41)) + (v25 << 6);
LABEL_8:
        *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v16 + 48) + 8 * v26) = v36;
        ++*(v16 + 16);
LABEL_9:
        v12 = v17;
        v18 = __CocoaSet.Iterator.next()();
        if (!v18)
        {
          goto LABEL_27;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v70 = v21;

    v12 = v70;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_30;
    }

    v71 = swift_slowAlloc();
    v16 = sub_1005112C8(v71, v19, v14, sub_100187310);
    v115 = v2;

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_51;
    }

LABEL_56:
    v72 = -1 << *(v16 + 32);
    v65 = v16 + 56;
    v67 = ~v72;
    v73 = -v72;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    else
    {
      v74 = -1;
    }

    v69 = v74 & *(v16 + 56);

    v68 = 0;
    v66 = v16;
    goto LABEL_60;
  }

  v42 = *(v14 + 32);
  v19 = ((1 << v42) + 63) >> 6;
  v21 = 8 * v19;
  if ((v42 & 0x3Fu) > 0xD)
  {
    goto LABEL_53;
  }

LABEL_30:
  v112 = v19;
  v111 = &v111;
  __chkstk_darwin(v15);
  v113 = &v111 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v113, v43);
  v114 = 0;
  v19 = 0;
  v44 = v14 + 56;
  v45 = 1 << *(v14 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v14 + 56);
  v48 = (v45 + 63) >> 6;
  v123 = UIWindowSceneSessionRoleApplication;
  do
  {
    do
    {
      if (!v47)
      {
        v50 = v19;
        while (1)
        {
          v19 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_52;
          }

          if (v19 >= v48)
          {
            goto LABEL_50;
          }

          v51 = *(v44 + 8 * v19);
          ++v50;
          if (v51)
          {
            v49 = __clz(__rbit64(v51));
            v47 = (v51 - 1) & v51;
            goto LABEL_40;
          }
        }
      }

      v49 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
LABEL_40:
      v52 = v49 | (v19 << 6);
      v12 = v14;
      v53 = *(v14 + 48);
      v121 = v52;
      v54 = *(v53 + 8 * v52);
      v55 = [v54 session];
      v56 = [v55 role];

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v61;
      if (v57 == v60 && v59 == v61)
      {

        v14 = v12;
        break;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v12;
    }

    while ((v63 & 1) == 0);
    *&v113[(v121 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v121;
  }

  while (!__OFADD__(v114++, 1));
  __break(1u);
LABEL_50:
  v16 = sub_100652008(v113, v112, v114, v14);
  if ((v16 & 0xC000000000000001) == 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  Set.Iterator.init(_cocoa:)();
  v66 = v127;
  v65 = v128;
  v67 = v129;
  v68 = v130;
  v69 = v131;
LABEL_60:
  v123 = v67;
  v75 = ((v67 + 64) >> 6);
  while (2)
  {
    if ((v66 & 0x8000000000000000) == 0)
    {
      v76 = v68;
      v77 = v69;
      if (!v69)
      {
        while (1)
        {
          v68 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            break;
          }

          if (v68 >= v75)
          {
            goto LABEL_72;
          }

          v77 = *(v65 + 8 * v68);
          ++v76;
          if (v77)
          {
            goto LABEL_66;
          }
        }

        __break(1u);
LABEL_94:
        swift_once();
LABEL_86:
        [v75 postNotificationName:qword_100B2F498 object:0];

        goto LABEL_87;
      }

LABEL_66:
      v69 = (v77 - 1) & v77;
      v12 = *(*(v66 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v77)))));
      if (!v12)
      {
        break;
      }

      goto LABEL_70;
    }

    v78 = __CocoaSet.Iterator.next()();
    if (v78)
    {
      v125 = v78;
      swift_dynamicCast();
      v12 = v126;
      if (v126)
      {
LABEL_70:
        v79 = [v12 activationState];

        if (!v79)
        {
          sub_100014FF8();

          return;
        }

        continue;
      }
    }

    break;
  }

LABEL_72:
  sub_100014FF8();

  v80 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
  v81 = v122;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "All scenes have entered the background", v84, 2u);
  }

  v85 = v81 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp;
  if (*(v81 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp + 8) == 1)
  {
    *v85 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    *(v85 + 8) = 0;
  }

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v86, v87))
  {

    goto LABEL_80;
  }

  v88 = swift_slowAlloc();
  *v88 = 134217984;
  if (*(v85 + 8))
  {

    __break(1u);
    return;
  }

  *(v88 + 4) = *v85;
  v89 = v88;

  _os_log_impl(&_mh_execute_header, v86, v87, "applicationDidEnterBackground: backgroundedAt=%llu", v89, 0xCu);

LABEL_80:
  v90 = *(v81 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
  if (!v90 || (v91 = [v90 rootViewController]) == 0)
  {
LABEL_89:
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "sceneDidEnterBackground: Attempted to process scene event before window was ready!", v103, 2u);
    }

    return;
  }

  v12 = v91;
  type metadata accessor for AppSecureAccessViewController();
  v92 = swift_dynamicCastClass();
  if (!v92)
  {

    goto LABEL_89;
  }

  v93 = v92;
  v94 = type metadata accessor for Logger();
  v95 = *(v94 - 8);
  v96 = v81 + v80;
  v97 = v119;
  (*(v95 + 16))(v119, v96, v94);
  (*(v95 + 56))(v97, 0, 1, v94);
  sub_100014590(v97, 0xD000000000000017, 0x80000001008E24C0);
  LOBYTE(v94) = v98;
  sub_100004F84(v97, qword_100AF2AC0);
  if (v94)
  {
    sub_1007E33D4(0, 0, v93);
    v99 = [v93 traitCollection];
    v100 = [v99 userInterfaceIdiom];

    if (v100 == 5)
    {
      v75 = [objc_opt_self() defaultCenter];
      if (qword_100ACF9F8 == -1)
      {
        goto LABEL_86;
      }

      goto LABEL_94;
    }

LABEL_87:

    return;
  }

  v104 = type metadata accessor for TaskPriority();
  v105 = v118;
  (*(*(v104 - 8) + 56))(v118, 1, 1, v104);
  type metadata accessor for MainActor();
  v106 = v12;
  v107 = static MainActor.shared.getter();
  v108 = swift_allocObject();
  v108[2] = v107;
  v108[3] = &protocol witness table for MainActor;
  v109 = v117;
  v108[4] = v93;
  v108[5] = v109;
  v110 = sub_10018B728(0, 0, v105, 0, 0, &unk_1009448C8, v108);

  sub_100004F84(v105, &qword_100AD5170);
  *(v81 + v116) = v110;
}

uint64_t sub_100187310(id *a1)
{
  v1 = [*a1 session];
  v2 = [v1 role];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001873EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1001874E0, v7, v6);
}

uint64_t sub_1001874E0()
{
  v1 = [*(v0 + 16) traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    v3 = sub_100014964();
    if (v3 == 4)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = qword_1009449B0[v4];
    v6 = 1000000000000000000 * v5;
    v7 = (v5 * 0xDE0B6B3A7640000uLL) >> 64;
    static Clock<>.continuous.getter();
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_10018771C;

    return sub_10003FA1C(v6, v7, 0, 0, 1);
  }

  else
  {

    v10 = *(v0 + 16);
    sub_1007E33D4(1u, 0, v10);
    v11 = [v10 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 5)
    {
      v13 = [objc_opt_self() defaultCenter];
      if (qword_100ACF9F8 != -1)
      {
        swift_once();
      }

      [v13 postNotificationName:qword_100B2F498 object:0];
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10018771C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1001879E0;
  }

  else
  {
    v8 = sub_1001878B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001878B4()
{

  v1 = *(v0 + 16);
  sub_1007E33D4(1u, 0, v1);
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_100ACF9F8 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_100B2F498 object:0];
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001879E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100187A64()
{
  v1 = type metadata accessor for JournalFeatureFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(qword_100AF2AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v8 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window;
  v9 = *(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [v9 rootViewController];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  type metadata accessor for AppSecureAccessViewController();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

LABEL_11:
    v34 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v34, v16, "applicationRequestedManualLock: Attempted to process scene event before window was ready!", v17, 2u);
    }

    goto LABEL_13;
  }

  v13 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
  if ((v12[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state] & 0xFE) == 2)
  {
    v34 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v34, v14, "applicationRequestedManualLock: Ignoring duplicate lock request. App is already locked.", v15, 2u);
    }

LABEL_13:
    v18 = v34;

    return;
  }

  v34 = v12;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v7, v0 + v13, v19);
  (*(v20 + 56))(v7, 0, 1, v19);
  sub_100014590(v7, 0xD00000000000001ELL, 0x80000001008E24A0);
  LOBYTE(v19) = v21;
  sub_100004F84(v7, qword_100AF2AC0);
  if (v19)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "applicationRequestedManualLock: Ignoring request, feature disabled", v24, 2u);
    }
  }

  else
  {
    v25 = v0;
    (*(v2 + 104))(v4, enum case for JournalFeatureFlags.suggestionsAPI(_:), v1);
    v26 = JournalFeatureFlags.isEnabled.getter();
    (*(v2 + 8))(v4, v1);
    if (v26)
    {
      v27 = *(v25 + v8);
      if (v27)
      {
        v28 = [v27 windowScene];
        if (v28)
        {
          v29 = v28;
          if (qword_100ACFCD0 != -1)
          {
            swift_once();
          }

          if ([v29 _sceneComponentForKey:qword_100AE1160])
          {
            type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent();
            if (swift_dynamicCastClass())
            {
              sub_1003ABAF8();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }

          else
          {
          }
        }
      }
    }

    else
    {
      if (qword_100ACFD50 != -1)
      {
        swift_once();
      }

      sub_1003ED2C8(0, 1);
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "applicationRequestedManualLock", v32, 2u);
    }

    sub_1007E33D4(3u, 1, v34);
  }
}

unint64_t sub_1001880B8()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1001880F4()
{
  v1 = v0;
  v2 = type metadata accessor for ProtectedData.ProtectedDataState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v9 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext;
  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext))
  {
    v43 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v43, v10, "onAuthenticateRequested: Attempted to authenticate when there was already another active auth attempt.", v11, 2u);
    }

    v12 = v43;

    return;
  }

  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v3 + 104))(v6, enum case for ProtectedData.ProtectedDataState.available(_:), v2);
  v13 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  if ((v13 & 1) == 0)
  {
    sub_10018B6A4();
    v28 = swift_allocError();
    *v29 = 0;
LABEL_18:
    sub_10018894C(v28);

    return;
  }

  v15 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window;
  v16 = *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
  if (v16)
  {
    v17 = [v16 rootViewController];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for AppSecureAccessViewController();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = [v19 traitCollection];

        v21 = [v20 userInterfaceIdiom];
        if (v21 == 5)
        {
          v22 = *(v1 + v15);
          if (!v22)
          {
            goto LABEL_25;
          }

          v23 = [v22 rootViewController];
          if (!v23)
          {
            goto LABEL_25;
          }

          v24 = v23;
          v25 = swift_dynamicCastClass();
          if (!v25)
          {

LABEL_25:
            sub_10018B6A4();
            v28 = swift_allocError();
            *v41 = 1;
            goto LABEL_18;
          }

          v26 = [v25 traitCollection];

          v27 = [v26 activeAppearance];
          if (v27 != 1)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
      }
    }
  }

  v30 = [objc_allocWithZone(LAContext) init];
  v31 = *(v1 + v9);
  *(v1 + v9) = v30;
  v32 = v30;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "onAuthenticateRequested: Starting new auth attempt...", v35, 2u);
  }

  v36 = [objc_opt_self() mainBundle];
  v46._object = 0x80000001008E2420;
  v37._object = 0x80000001008E2400;
  v46._countAndFlagsBits = 0xD000000000000054;
  v37._countAndFlagsBits = 0xD000000000000013;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

  v39 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10018B6F8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FC710;
  aBlock[3] = &unk_100A5FA58;
  v40 = _Block_copy(aBlock);

  [v32 evaluatePolicy:2 localizedReason:v39 reply:v40];
  _Block_release(v40);
}

uint64_t sub_100188648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10018B700;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A5FAA8;
  v13 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100015024(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

void sub_10018894C(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AF6E60);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - v4;
  v6 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext;
  if (*(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext))
  {
    v7 = *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
    if (v7)
    {
      v8 = [v7 rootViewController];
      if (v8)
      {
        v25[0] = v8;
        type metadata accessor for AppSecureAccessViewController();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = v9;
          v11 = *(v1 + v6);
          *(v1 + v6) = 0;

          if (a1)
          {
            type metadata accessor for Code(0);
            v25[1] = -9;
            sub_100015024(&qword_100AD19B8, type metadata accessor for Code);
            if (static _ErrorCodeProtocol.~= infix(_:_:)())
            {
              v12 = Logger.logObject.getter();
              v13 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v12, v13))
              {
                v14 = swift_slowAlloc();
                *v14 = 0;
                _os_log_impl(&_mh_execute_header, v12, v13, "onAuthenticateComplete: Attempt failed from app cancel (app moving to background)", v14, 2u);
              }
            }

            else
            {
              swift_errorRetain();
              v20 = Logger.logObject.getter();
              v21 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v20, v21))
              {
                v22 = swift_slowAlloc();
                v23 = swift_slowAlloc();
                *v22 = 138412290;
                swift_errorRetain();
                v24 = _swift_stdlib_bridgeErrorToNSError();
                *(v22 + 4) = v24;
                *v23 = v24;
                _os_log_impl(&_mh_execute_header, v20, v21, "onAuthenticateComplete: Attempt failed w/ error - %@", v22, 0xCu);
                sub_100004F84(v23, &unk_100AD4BB0);
              }

              sub_1007E33D4(3u, 1, v10);
            }
          }

          else
          {
            v16 = Logger.logObject.getter();
            v17 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              *v18 = 0;
              _os_log_impl(&_mh_execute_header, v16, v17, "onAuthenticateComplete: Attempt succeeded!", v18, 2u);
            }

            v19 = type metadata accessor for Notification();
            (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
            sub_10004E570(v5);

            sub_100004F84(v5, &qword_100AF6E60);
          }
        }

        else
        {
          v15 = v25[0];
        }
      }
    }
  }
}

void sub_100188D20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = static String._fromSubstring(_:)();
    v15 = sub_100008458(v13, v14, &v20);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_100008458(v16, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "onAppUnlocked[%s]: Posting %s.", v12, 0x16u);
    swift_arrayDestroy();
  }

  v19 = [objc_opt_self() defaultCenter];
  [v19 postNotificationName:v9 object:a7];
}

uint64_t sub_100188EF4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v12 = result;
      if ([a3 activationState])
      {

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v20 = v16;
          *v15 = 136315138;
          v17 = static String._fromSubstring(_:)();
          v19 = sub_100008458(v17, v18, &v20);

          *(v15 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v13, v14, "onAppUnlocked[%s]: Scene not yet active, deferring didUnlock...", v15, 0xCu);
          sub_10000BA7C(v16);
        }

        *(v12 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_unlockRequestedWhileWindowInactive) = 1;
      }

      else
      {
        if (qword_100ACF9E8 != -1)
        {
          swift_once();
        }

        a9(qword_100B2F488);
      }
    }
  }

  return result;
}

uint64_t sub_1001890D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100189174, v4, v3);
}

uint64_t sub_100189174()
{
  v1 = [*(v0 + 16) presentingViewController];
  v2 = *(v0 + 16);
  if (v1)
  {
    do
    {
      v3 = v1;

      v1 = [v3 presentingViewController];
      v2 = v3;
    }

    while (v1);
  }

  else
  {
    v3 = *(v0 + 16);
  }

  v4 = [v3 viewIfLoaded];
  v5 = [v4 window];

  v6 = [v5 windowScene];
  *(v0 + 64) = v6;

  if (!v6)
  {
LABEL_9:
    v10 = *(v0 + 24);
    v11 = static MainActor.shared.getter();
    *(v0 + 72) = v11;
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *(v12 + 16) = v6;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_1001893A4;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 96, &type metadata for Bool, &type metadata for Bool, v11, &protocol witness table for MainActor, &unk_100944840, v12, &type metadata for Bool);
  }

  v7 = v6;
  if ([v7 activationState])
  {

    goto LABEL_9;
  }

  sub_10018AEBC(v6);
  v9 = v8;

  if (v9)
  {
    goto LABEL_9;
  }

  v14 = *(v0 + 8);

  return v14(1);
}

uint64_t sub_1001893A4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100189504, v3, v2);
}

uint64_t sub_100189504()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100189574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_1000F24EC(&qword_100AD5F28);
  v4[8] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AD5F30);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AD5F38);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_100189754, v8, v7);
}

uint64_t sub_100189754()
{
  v1 = v0[15];
  v2 = v0[11];
  v15 = v0[9];
  v16 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v9 = v4;
  sub_100186270(v1, &unk_100944870, v8);
  sub_100004F84(v1, &qword_100AD5170);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100186270(v1, &unk_100944880, v10);
  sub_100004F84(v1, &qword_100AD5170);
  v11 = *v5;
  v0[20] = *v5;
  v0[2] = v11;
  sub_1000F24EC(&qword_100AD5F40);
  sub_10000B58C(&qword_100AD5F48, &qword_100AD5F40);
  AsyncPrefixSequence.init(_:count:)();
  AsyncPrefixSequence.base.getter();
  TaskGroup.makeAsyncIterator()();
  AsyncPrefixSequence.count.getter();
  (*(v16 + 8))(v2, v15);
  AsyncPrefixSequence.Iterator.init(_:count:)();
  v12 = static MainActor.shared.getter();
  v0[21] = v12;
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_100189A44;

  return sub_10018A624(v12, &protocol witness table for MainActor);
}

uint64_t sub_100189A44(char a1)
{
  v3 = *v2;
  *(*v2 + 184) = a1;

  if (!v1)
  {

    v5 = *(v3 + 144);
    v6 = *(v3 + 152);

    return _swift_task_switch(sub_100189B5C, v5, v6);
  }

  return result;
}

uint64_t sub_100189B5C()
{
  v1 = *(v0 + 184);

  if (v1 == 2)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 184);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    TaskGroup.cancelAll()();
    (*(v5 + 8))(v4, v6);
    v2 = v3 & 1;
  }

  **(v0 + 32) = v2;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100189C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_1000F24EC(&qword_100AF6E60);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100189D50, 0, 0);
}

uint64_t sub_100189D50()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACF9E8 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100015024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100189EAC;
  v4 = v0[5];
  v5 = v0[6];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100189EAC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10018A0D0;
  }

  else
  {
    v2 = sub_100189FC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100189FDC()
{
  v1 = *(v0 + 40);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = 0;
  }

  else
  {
    sub_100004F84(*(v0 + 40), &qword_100AF6E60);
    v3 = 1;
  }

  **(v0 + 24) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018A0D0()
{
  *(v0 + 16) = *(v0 + 80);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10018A15C(uint64_t a1)
{
  v1[3] = a1;
  sub_1000F24EC(&qword_100AF6E60);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10018A254, 0, 0);
}

uint64_t sub_10018A254()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100015024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10018A384;
  v4 = v0[4];
  v5 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_10018A384()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10018A598;
  }

  else
  {
    v2 = sub_10018A498;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018A4B4()
{
  v1 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    sub_100004F84(*(v0 + 32), &qword_100AF6E60);
  }

  **(v0 + 24) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10018A598()
{
  *(v0 + 16) = *(v0 + 72);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10018A624(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_10018A6B8, v4, v6);
}

uint64_t sub_10018A6B8()
{
  sub_1000F24EC(&qword_100AD5F38);
  if (AsyncPrefixSequence.Iterator.remaining.getter())
  {
    v1 = AsyncPrefixSequence.Iterator.remaining.modify();
    --*v2;
    v1(v0 + 2, 0);
    v0[15] = AsyncPrefixSequence.Iterator.baseIterator.modify();
    sub_1000F24EC(&qword_100AD5F28);
    sub_10000B58C(&qword_100AD5F50, &qword_100AD5F28);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_10018A85C;
    v4 = v0[10];
    v5 = v0[11];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 17, v4, v5);
  }

  else
  {
    v6 = v0[1];

    return v6(2);
  }
}

uint64_t sub_10018A85C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10018A9A0;
  }

  else
  {
    (*(v2 + 120))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10018A984;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10018A9A0()
{
  (*(v0 + 120))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018AA14()
{
  v1 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10018AAFC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v6 = (v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_sceneLogID);
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = sub_10018B258(6uLL, v7, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *v6 = v10;
  v6[1] = v12;
  v6[2] = v14;
  v6[3] = v16;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window) = 0;
  v17 = v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_unlockRequestedWhileWindowInactive) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_isNewAppLaunch) = 0;
  return v1;
}

uint64_t sub_10018ACB4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10018ADA8;

  return v5(v2 + 32);
}

uint64_t sub_10018ADA8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void sub_10018AEBC(void *a1)
{
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = a1;
  if ([v3 activationState] == -1)
  {

    return;
  }

  v5 = [v3 windows];
  sub_1000065A8(0, &unk_100AE3160);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_32:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = v8;
      if (v7)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v13 = *(v6 + 8 * v9 + 32);
    }

    v14 = v13;
    v15 = [v13 rootViewController];
    if (v15)
    {
      break;
    }

    v11 = v14;
LABEL_8:

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_31;
    }
  }

  v11 = v15;
  type metadata accessor for AppSecureAccessViewController();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_27:
    if (v9 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

    return;
  }

LABEL_19:
  if (v10)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
    v9 = v16;
    v17 = [v16 rootViewController];
    if (!v17)
    {
      goto LABEL_35;
    }

    v18 = v17;
    type metadata accessor for AppSecureAccessViewController();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  else
  {
    if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v6 + 32 + 8 * v9);
      goto LABEL_22;
    }

    __break(1u);
LABEL_35:
    v18 = v9;
  }

  __break(1u);
}

BOOL sub_10018B14C(void *a1)
{
  v1 = a1;
  v2 = [v1 presentingViewController];
  if (v2)
  {
    do
    {
      v3 = v2;

      v2 = [v3 presentingViewController];
      v1 = v3;
    }

    while (v2);
  }

  else
  {
    v3 = v1;
  }

  v4 = [v3 viewIfLoaded];
  v5 = [v4 window];

  v6 = [v5 windowScene];
  if (!v6)
  {
    return 0;
  }

  if ([v6 activationState])
  {

    return 0;
  }

  sub_10018AEBC(v6);
  v8 = v7;

  return !v8;
}

unint64_t sub_10018B258(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_10018B314(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100032EC8;

  return sub_100189574(a1, a2, v7, v6);
}

uint64_t sub_10018B3C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100189C58(a1, v4, v5, v6);
}

uint64_t sub_10018B488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return sub_10018A15C(a1);
}

void sub_10018B534(void *a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = *(v1 + v6);

  sub_100188D20(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_10018B5E4()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100188EF4(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_10018B6A4()
{
  result = qword_100AD5F68;
  if (!qword_100AD5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5F68);
  }

  return result;
}

uint64_t sub_10018B728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v26 = a5;
  v27 = a1;
  v11 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1000082B4(a3, v13, &qword_100AD5170);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_100004F84(v13, &qword_100AD5170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v34[0] = 0;
      v34[1] = 0;
      v24 = v34;
      v34[2] = v14;
      v34[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v22 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v22;
        }

        goto LABEL_12;
      }
    }

    v33[4] = 6;
    v33[5] = v24;
    v33[6] = a4;
    v33[7] = v26;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v33[0] = 0;
    v33[1] = 0;
    v21 = v33;
    v33[2] = v14;
    v33[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v32[0] = 6;
    v32[1] = v21;
    v32[2] = a4;
    v32[3] = v26;
    v21 = v32;
  }

LABEL_11:
  v29 = 7;
  v30 = v21;
  v31 = v20;
  v22 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v22;
}

void sub_10018BA40(void *a1)
{
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = a1;
  if ([v3 activationState] == -1)
  {

    return;
  }

  v5 = [v3 windows];
  sub_1000065A8(0, &unk_100AE3160);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_32:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = v8;
      if (v7)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v13 = *(v6 + 8 * v9 + 32);
    }

    v14 = v13;
    v15 = [v13 rootViewController];
    if (v15)
    {
      break;
    }

    v11 = v14;
LABEL_8:

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_31;
    }
  }

  v11 = v15;
  type metadata accessor for AppSecureAccessViewController();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_27:
    if (v9 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

    return;
  }

LABEL_19:
  if (v10)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
    v9 = v16;
    v17 = [v16 rootViewController];
    if (!v17)
    {
      goto LABEL_35;
    }

    v18 = v17;
    type metadata accessor for AppSecureAccessViewController();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  else
  {
    if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v6 + 32 + 8 * v9);
      goto LABEL_22;
    }

    __break(1u);
LABEL_35:
    v18 = v9;
  }

  __break(1u);
}

uint64_t sub_10018BCD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1001873EC(a1, v4, v5, v6);
}

unint64_t sub_10018BDB8()
{
  result = qword_100AD5F78;
  if (!qword_100AD5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5F78);
  }

  return result;
}

char *sub_10018BE1C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing] = 0;
  *&v4[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isTrackingObserver] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for VideoSeekSlider();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v9 setPreferredBehavioralStyle:1];
  [v9 setSliderStyle:1];
  [v9 setContinuous:1];
  [v9 setSemanticContentAttribute:1];
  [v9 addTarget:v9 action:"editingDidBegin" forControlEvents:1];
  [v9 addTarget:v9 action:"editingDidEnd" forControlEvents:448];
  swift_getKeyPath();
  v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v11 = *&v9[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isTrackingObserver];
  *&v9[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isTrackingObserver] = v10;

  return v9;
}

id sub_10018BF9C(id *a1)
{
  v1 = *a1;
  result = [*a1 isTracking];
  if (result)
  {
    if (v1[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing])
    {
      return result;
    }

    v3 = 1;
    v4 = 0x10000;
  }

  else
  {
    if (!v1[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing])
    {
      return result;
    }

    v3 = 0;
    v4 = 0x40000;
  }

  v1[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing] = v3;

  return [v1 sendActionsForControlEvents:v4];
}

id sub_10018C0F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoSeekSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018C168()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t sub_10018C1DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();
}

char *sub_10018C254(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1000F24EC(&qword_100AD6048);
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v43 - v11;
  v48 = sub_1000F24EC(&qword_100AD6030);
  v12 = __chkstk_darwin(v48);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v43 - v14;
  v45 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v45);
  v44 = sub_1000F24EC(&qword_100AD6050);
  v15 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v43 - v16;
  v18 = type metadata accessor for ColorResource();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView;
  *&v5[v22] = [objc_allocWithZone(UIView) init];
  v23 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView;
  *&v5[v23] = [objc_allocWithZone(UIView) init];
  v24 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView;
  *&v5[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__fillColor;
  sub_10018D564();
  if (qword_100AD0C00 != -1)
  {
    swift_once();
  }

  v26 = sub_10000617C(v18, qword_100B31310);
  (*(v19 + 16))(v21, v26, v18);
  v53 = UIColor.init(resource:)();
  v27 = v53;
  UIView.Invalidations.Layout.init()();
  sub_10018D6FC(&qword_100AD6020, sub_10018D564);
  UIView.Invalidating.init(wrappedValue:_:)();

  (*(v15 + 32))(&v5[v25], v17, v44);
  v28 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__colorVariant;
  v29 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v30 = v47;
  (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
  sub_10018D744(v30, v46);
  UIView.Invalidations.Layout.init()();
  sub_10018D648();
  v31 = v49;
  UIView.Invalidating.init(wrappedValue:_:)();
  sub_10018D7B4(v30);
  (*(v50 + 32))(&v5[v28], v31, v51);
  v32 = type metadata accessor for ThirdPartyMediaColorEffectView();
  v52.receiver = v5;
  v52.super_class = v32;
  v33 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView;
  v35 = *&v33[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView];
  v36 = v33;
  v37 = v35;
  [v36 bounds];
  [v37 setFrame:?];

  [*&v33[v34] setAutoresizingMask:18];
  [*&v33[v34] setContentMode:2];
  [v36 addSubview:*&v33[v34]];
  v38 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView;
  v39 = *&v36[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView];
  [v36 bounds];
  [v39 setFrame:?];

  [*&v36[v38] setAutoresizingMask:18];
  [v36 addSubview:*&v36[v38]];
  v40 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView;
  v41 = *&v36[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView];
  [v36 bounds];
  [v41 setFrame:?];

  [*&v36[v40] setAutoresizingMask:18];
  [v36 addSubview:*&v36[v40]];

  return v36;
}

uint64_t sub_10018C88C(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1000F24EC(&qword_100AD6048);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v34 - v4;
  v42 = sub_1000F24EC(&qword_100AD6030);
  v5 = __chkstk_darwin(v42);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v34 - v7;
  v39 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v39);
  v41 = sub_1000F24EC(&qword_100AD6050);
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ColorResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView;
  v16 = [objc_allocWithZone(UIView) init];
  v38 = v15;
  *(v1 + v15) = v16;
  v17 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  v36 = v17;
  *(v1 + v17) = v18;
  v19 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView;
  v20 = [objc_allocWithZone(UIView) init];
  v35 = v19;
  *(v1 + v19) = v20;
  v21 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__fillColor;
  sub_10018D564();
  if (qword_100AD0C00 != -1)
  {
    swift_once();
  }

  v22 = sub_10000617C(v11, qword_100B31310);
  (*(v12 + 16))(v14, v22, v11);
  v47 = UIColor.init(resource:)();
  v23 = v47;
  UIView.Invalidations.Layout.init()();
  sub_10018D6FC(&qword_100AD6020, sub_10018D564);
  UIView.Invalidating.init(wrappedValue:_:)();

  v24 = v10;
  v25 = v41;
  (*(v8 + 32))(v1 + v21, v24, v41);
  v26 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__colorVariant;
  v27 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v28 = *(*(v27 - 8) + 56);
  v34 = v21;
  v29 = v37;
  v28(v37, 1, 1, v27);
  sub_10018D744(v29, v40);
  UIView.Invalidations.Layout.init()();
  sub_10018D648();
  v30 = v43;
  UIView.Invalidating.init(wrappedValue:_:)();

  sub_10018D7B4(v29);
  v32 = v45;
  v31 = v46;
  (*(v45 + 32))(v2 + v26, v30, v46);

  (*(v8 + 8))(v2 + v34, v25);
  (*(v32 + 8))(v2 + v26, v31);
  type metadata accessor for ThirdPartyMediaColorEffectView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10018CE30()
{
  v1 = sub_1000F24EC(&qword_100AD6030);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = type metadata accessor for ThirdPartyMediaColorEffectView();
  v25.receiver = v0;
  v25.super_class = v4;
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v5 = *&v0[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  v6 = v24;
  [v5 setBackgroundColor:v24];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  v7 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v9 = v24;
    v10 = [v24 CGColor];
    UISColorLuminance();
    v12 = v11;

    if (v12 <= 0.1)
    {
      goto LABEL_9;
    }

LABEL_7:
    v14 = &kCAFilterPlusL;
    v15 = &selRef_systemBlackColor;
    v16 = 0.6;
LABEL_10:
    v17 = 2;
    goto LABEL_11;
  }

  v13 = (*(v8 + 88))(v3, v7);
  if (v13 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.light(_:))
  {
    v14 = &kCAFilterPlusD;
    v15 = &selRef_systemWhiteColor;
    v16 = 0.78;
    v17 = 1;
LABEL_11:
    [v0 setOverrideUserInterfaceStyle:v17];
    v18 = *&v0[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView];
    v19 = [objc_opt_self() *v15];
    v20 = [v19 colorWithAlphaComponent:v16];

    [v18 setBackgroundColor:v20];
    v21 = [v18 layer];
    [v21 setCompositingFilter:0];

    v22 = [*&v0[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView] layer];
    [v22 setCompositingFilter:*v14];

    return;
  }

  if (v13 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.dark(_:))
  {
    goto LABEL_7;
  }

  if (v13 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.veryDark(_:))
  {
LABEL_9:
    v14 = &kCAFilterPlusL;
    v15 = &selRef_systemWhiteColor;
    v16 = 0.13;
    goto LABEL_10;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

id sub_10018D248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaColorEffectView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ThirdPartyMediaColorEffectView()
{
  result = qword_100AD6008;
  if (!qword_100AD6008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018D3C8()
{
  sub_10018D4A8();
  if (v0 <= 0x3F)
  {
    sub_10018D5B0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018D4A8()
{
  if (!qword_100AD6018)
  {
    sub_10018D564();
    type metadata accessor for UIView.Invalidations.Layout();
    sub_10018D6FC(&qword_100AD6020, sub_10018D564);
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD6018);
    }
  }
}

unint64_t sub_10018D564()
{
  result = qword_100AD4C70;
  if (!qword_100AD4C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD4C70);
  }

  return result;
}

void sub_10018D5B0()
{
  if (!qword_100AD6028)
  {
    sub_1000F2A18(&qword_100AD6030);
    type metadata accessor for UIView.Invalidations.Layout();
    sub_10018D648();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD6028);
    }
  }
}

unint64_t sub_10018D648()
{
  result = qword_100AD6038;
  if (!qword_100AD6038)
  {
    sub_1000F2A18(&qword_100AD6030);
    sub_10018D6FC(&qword_100AD6040, &type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6038);
  }

  return result;
}

uint64_t sub_10018D6FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018D744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018D7B4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD6030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10018D81C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ColorResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC7Journal20TimelineGradientView_gradientColor] = 0;
  sub_1000F24EC(&unk_100AD4780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100941D70;
  sub_10018D564();
  if (qword_100AD0D50 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v10, qword_100B31700);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  *(v14 + 32) = UIColor.init(resource:)();
  if (qword_100AD0D48 != -1)
  {
    swift_once();
  }

  v17 = sub_10000617C(v10, qword_100B316E8);
  v16(v13, v17, v10);
  *(v14 + 40) = UIColor.init(resource:)();
  if (qword_100AD0D40 != -1)
  {
    swift_once();
  }

  v18 = sub_10000617C(v10, qword_100B316D0);
  v16(v13, v18, v10);
  *(v14 + 48) = UIColor.init(resource:)();
  static UnitPoint.top.getter();
  v20 = v19;
  v22 = v21;
  static UnitPoint.bottom.getter();
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for GradientView();
  v28 = [objc_allocWithZone(v27) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v14;
  v29 = v28;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = 0;
  v30 = v29;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v20;
  v55 = v22;
  v31 = v30;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v24;
  v55 = v26;
  static UIView.Invalidating.subscript.setter();
  *&v5[OBJC_IVAR____TtC7Journal20TimelineGradientView_defaultGradientView] = v31;
  static UnitPoint.top.getter();
  v33 = v32;
  v35 = v34;
  static UnitPoint.bottom.getter();
  v37 = v36;
  v39 = v38;
  v40 = [objc_allocWithZone(v27) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = _swiftEmptyArrayStorage;
  v41 = v40;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = 0;
  v42 = v41;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v33;
  v55 = v35;
  v43 = v42;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v37;
  v55 = v39;
  static UIView.Invalidating.subscript.setter();
  *&v5[OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView] = v43;
  v44 = type metadata accessor for TimelineGradientView();
  v53.receiver = v5;
  v53.super_class = v44;
  v45 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v46 = OBJC_IVAR____TtC7Journal20TimelineGradientView_defaultGradientView;
  v47 = *&v45[OBJC_IVAR____TtC7Journal20TimelineGradientView_defaultGradientView];
  v48 = v45;
  [v48 addSubview:v47];
  v49 = *&v45[v46];
  sub_100013178(0.0);

  v50 = OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView;
  [v48 addSubview:*&v48[OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView]];
  v51 = *&v48[v50];
  sub_100013178(0.0);

  return v48;
}

void sub_10018DE54()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20TimelineGradientView_gradientColor);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView);
  if (v1)
  {
    sub_1000F24EC(&unk_100AD4780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100941D60;
    v4 = v1;
    v5 = v2;
    *(v3 + 32) = [v4 colorWithAlphaComponent:0.1];
    *(v3 + 40) = [v4 colorWithAlphaComponent:0.0];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v2;
    static UIView.Invalidating.subscript.setter();
  }
}

id sub_10018DFA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimelineGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018E05C()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  qword_100B2F4A8 = v2;
}

void sub_10018E0DC()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:1 multiValued:1];

  qword_100B2F4B0 = v2;
}