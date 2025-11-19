uint64_t type metadata accessor for ReflectionAsset()
{
  result = qword_100AE2678;
  if (!qword_100AE2678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MultiPinMapAsset()
{
  result = qword_100AD3860;
  if (!qword_100AD3860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003B948()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003B9B4()
{
  result = qword_100AE9450;
  if (!qword_100AE9450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE9450);
  }

  return result;
}

uint64_t sub_10003BA00()
{
  result = type metadata accessor for AssetAttachment.AssetType(319);
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

id sub_10003BB44(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal14CanvasGridView_indexBeforeCutoff] = 4;
  *&v4[OBJC_IVAR____TtC7Journal14CanvasGridView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView] = 0;
  v9 = OBJC_IVAR____TtC7Journal14CanvasGridView_mosaicLayout;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for MosaicLayout()) init];
  v10 = &v4[OBJC_IVAR____TtC7Journal14CanvasGridView_didDeletePhoto];
  *v10 = DebugData.init(name:);
  v10[1] = 0;
  v4[OBJC_IVAR____TtC7Journal14CanvasGridView_shouldAnimateDifferences] = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *&v4[OBJC_IVAR____TtC7Journal14CanvasGridView_outerCornerRadius] = _Q0;
  v16 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellPath;
  v17 = type metadata accessor for IndexPath();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC7Journal14CanvasGridView_lastSelectedCellTime;
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  *&v4[OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry] = 0;
  v4[OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing] = 0;
  v4[OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid] = 0;
  *&v4[OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource] = 0;
  v4[OBJC_IVAR____TtC7Journal14CanvasGridView_wantsContextMenuDismissalPreview] = 1;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for CanvasGridView();
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 layer];
  [v21 setMasksToBounds:1];

  v22 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor:v22];

  sub_10003BE84();
  return v20;
}

void sub_10003BE84()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(type metadata accessor for CanvasGridCollectionView()) initWithFrame:*&v0[OBJC_IVAR____TtC7Journal14CanvasGridView_mosaicLayout] collectionViewLayout:{v1, v2, v3, v4}];
  v6 = *&v0[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView];
  *&v0[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView] = v5;
  v7 = v5;

  if (v7)
  {
    v8 = v7;
    [v8 setDelegate:v0];
    [v8 setAllowsMultipleSelection:1];
    [v8 setSelectionFollowsFocus:1];
    [v8 setAllowsFocus:1];
    [v8 setAllowsSelectionDuringEditing:1];
    [v8 setAllowsMultipleSelectionDuringEditing:1];
    v9 = [v8 superview];
    if (v9)
    {
    }

    else
    {
      [v0 addSubview:v8];
      v10 = [v8 superview];
      if (v10)
      {
        v11 = v10;
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        v12 = [v8 topAnchor];
        v13 = [v11 topAnchor];
        v14 = [v12 constraintEqualToAnchor:v13];

        [v14 setConstant:-2.0];
        [v14 setActive:1];
      }

      v15 = [v8 superview];
      if (v15)
      {
        v16 = v15;
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [v8 leadingAnchor];
        v18 = [v16 leadingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];

        [v19 setConstant:-2.0];
        [v19 setActive:1];
      }

      v20 = v0;
      v21 = [v8 superview];
      if (v21)
      {
        v22 = v21;
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        v23 = [v8 trailingAnchor];
        v24 = [v22 trailingAnchor];
        v25 = [v23 constraintEqualToAnchor:v24];

        [v25 setConstant:2.0];
        [v25 setActive:1];
      }

      v26 = v8;
      [v26 setShowsHorizontalScrollIndicator:0];
      [v26 setShowsVerticalScrollIndicator:0];

      swift_getKeyPath();
      swift_getKeyPath();
      v27 = v26;
      static UIView.Invalidating.subscript.setter();
      [v27 setDragDelegate:v20];

      sub_1000491F0();
    }

    sub_1000542E8();
  }
}

uint64_t sub_10003C2FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = 0x6154656772614C78;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a1 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a1 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x69576D756964656DLL;
  v10 = 0xE500000000000000;
  if (a1 == 2)
  {
    v10 = 0xEA00000000006564;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  v11 = 0xE600000000000000;
  v12 = 0x656772614C78;
  if (!a1)
  {
    v12 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x6C6C616D73)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEA00000000006E65;
        if (v13 != 0x657263536C6C7566)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D756964656DLL)
      {
        goto LABEL_43;
      }
    }

    else if (v13 != 0x61546D756964656DLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000006564;
        if (v13 != 0x69576D756964656DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE500000000000000;
      v3 = 0x656772616CLL;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x656772614C78)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

unint64_t sub_10003C544()
{
  result = qword_100AD5D00;
  if (!qword_100AD5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D00);
  }

  return result;
}

uint64_t sub_10003C5A8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringArrayForKey:v2];

  if (v3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_3:
      v5 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
      v6 = swift_allocObject();
      v6[2] = v4;
      v6[3] = v5;
      v6[4] = v0;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100356858;
      *(v7 + 24) = v6;
      v12[4] = sub_100177C4C;
      v12[5] = v7;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_10001A7D4;
      v12[3] = &unk_100A68AF0;
      v8 = _Block_copy(v12);
      v9 = v5;

      [v9 performBlockAndWait:v8];

      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }
}

uint64_t sub_10003C800()
{

  return swift_deallocObject();
}

uint64_t sub_10003C84C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADF880);
  v1 = sub_10000617C(v0, qword_100ADF880);
  if (qword_100AD0180 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10003C938()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100356850;
  *(v3 + 24) = v2;
  v7[4] = sub_100177C4C;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10001A7D4;
  v7[3] = &unk_100A68A78;
  v4 = _Block_copy(v7);
  v5 = v1;

  [v5 performBlockAndWait:v4];

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AssetPostprocessingOperation()
{
  result = qword_100AF2318;
  if (!qword_100AF2318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003CB20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10003CC1C(a1, v4, v5, v6);
}

void sub_10003CC9C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for ProtectedData.ProtectedDataState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v6 + 104))(v9, enum case for ProtectedData.ProtectedDataState.available(_:), v5);
  v12 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    v14 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
    sub_1000F24EC(&unk_100AD4780);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100941D70;
    sub_1000065A8(0, &qword_100ADB900);
    *(v15 + 32) = static NSPredicate.attachmentNeedsProcessing.getter();
    *(v15 + 40) = static NSPredicate.attachmentAssetIsNotBeingEdited.getter();
    *(v15 + 48) = static NSPredicate.notRemovedFromCloud.getter();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v14 setPredicate:v17];
    v18 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = v14;
    v20[6] = v1;
    v21 = v18;
    sub_1003E9628(0, 0, v4, &unk_10095EC18, v20);
  }

  else
  {
    if (qword_100AD0030 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000617C(v22, qword_100AEA008);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skip running AssetPostprocessingOperation.scheduleAssetPostProcessing() because isProtectedDataAvailable == false. Most likely because the device is locked.", v25, 2u);
    }
  }
}

uint64_t sub_10003D0B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_10003D0FC()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  v1 = sub_10003D4B0(&off_100A57160);
  type metadata accessor for InsightsDataManager(0);
  swift_allocObject();
  v2 = sub_10003DFEC(v0, v1);

  qword_100B2FD90 = v2;
}

uint64_t sub_10003D1B4(uint64_t a1)
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

  return sub_10003D27C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003D27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_10003D340, 0, 0);
}

uint64_t sub_10003D340()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v5 = swift_allocObject();
  v0[17] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v6 = v4;
  v7 = swift_task_alloc();
  v0[18] = v7;
  v8 = sub_1000F24EC(&unk_100AEED10);
  *v7 = v0;
  v7[1] = sub_1000B1A54;
  v9 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 10, v9, sub_1005AA954, v5, v8);
}

uint64_t sub_10003D478()
{

  return swift_deallocObject();
}

uint64_t sub_10003D4E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_10003D590();
}

uint64_t sub_10003D590()
{
  v1 = type metadata accessor for URL();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v2 = sub_1000F24EC(&qword_100AD8858);
  v0[14] = v2;
  v0[15] = *(v2 - 8);
  v0[16] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1350);
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003D7D0, 0, 0);
}

uint64_t sub_10003D6F8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

unint64_t sub_10003D778()
{
  result = qword_100AECCE0;
  if (!qword_100AECCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECCE0);
  }

  return result;
}

uint64_t sub_10003D7D0()
{
  *(v0 + 144) = type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AFDD8, v2, v1);
}

unint64_t sub_10003D868()
{
  result = qword_100AECDD8;
  if (!qword_100AECDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AECDD8);
  }

  return result;
}

uint64_t sub_10003D8BC(_BYTE *a1, Swift::Int a2, uint64_t *a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_10003D9DC(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10003D9DC(Swift::Int result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028F0B0(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100295A74(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_100299220(v6 + 1, a4);
  }

  v9 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10003DB8C()
{
  sub_10004B740(319, &unk_100AECC30, &type metadata for InsightsDataManager.TimeSummary, type metadata accessor for DateBinDictionary);
  if (v0 <= 0x3F)
  {
    sub_10004B740(319, &unk_100AE7830, &type metadata for Int, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003DC78()
{
  type metadata accessor for UniformDateBins(319);
  if (v0 <= 0x3F)
  {
    sub_10003DEB8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Dictionary();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003DD48()
{
  sub_10003DDC4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10003DDC4()
{
  if (!qword_100AF73A8)
  {
    type metadata accessor for CalendarBinningUnit(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF73A8);
    }
  }
}

uint64_t sub_10003DE1C()
{
  result = type metadata accessor for Calendar.Component();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Calendar();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_10003DEB8()
{
  if (!qword_100AD9608)
  {
    type metadata accessor for Date();
    sub_10003DF1C();
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD9608);
    }
  }
}

unint64_t sub_10003DF1C()
{
  result = qword_100AD2698;
  if (!qword_100AD2698)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2698);
  }

  return result;
}

uint64_t sub_10003DF74()
{
  result = type metadata accessor for StreakSummary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003DFEC(void *a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v3 = type metadata accessor for UniformDateBins(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0) - 8;
  __chkstk_darwin(v44);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  v13 = Update - 8;
  __chkstk_darwin(Update);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  *&v15[*(v13 + 28)] = 0;
  *&v15[*(v13 + 32)] = &_swiftEmptySetSingleton;
  sub_10003E6D4(v15, v2 + OBJC_IVAR____TtC7Journal19InsightsDataManager__lastUpdated, type metadata accessor for InsightsDataManager.LastUpdate);
  *(v2 + OBJC_IVAR____TtC7Journal19InsightsDataManager____lazy_storage___workContext) = 0;
  static Calendar.autoupdatingCurrent.getter();
  v16 = *(v9 + 32);
  v42 = v2;
  v16(v2 + OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar, v11, v8);
  v17 = OBJC_IVAR____TtC7Journal19InsightsDataManager__referenceDate;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v2 + v17, 1, 1, v18);
  v20 = (v2 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = _swiftEmptyArrayStorage;
  v21 = type metadata accessor for CalendarBinningUnit(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  v23 = v43;
  sub_10003E89C(v6, v43);
  v24 = v44;
  v25 = v23 + *(v44 + 28);
  *v25 = 0;
  *(v25 + 8) = 1;
  v41 = v24[8];
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  sub_10003E89C(v6, v23 + v41);
  v41 = v24[9];
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  sub_10003E89C(v6, v23 + v41);
  v26 = v23 + v24[10];
  *v26 = 0;
  *(v26 + 8) = 1;
  static Date.distantFuture.getter();
  v27 = v42;
  sub_10003E6D4(v23, v42 + OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v28 = v27 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  v19(v27 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks, 1, 1, v18);
  v29 = type metadata accessor for StreakSummary();
  v19(v28 + v29[5], 1, 1, v18);
  v19(v28 + v29[6], 1, 1, v18);
  *(v28 + v29[7]) = 0;
  v30 = type metadata accessor for InsightsDataManager.Streaks(0);
  v31 = v28 + v30[5];
  v19(v31, 1, 1, v18);
  v19(v31 + v29[5], 1, 1, v18);
  v19(v31 + v29[6], 1, 1, v18);
  *(v31 + v29[7]) = 0;
  v32 = v28 + v30[6];
  v19(v32, 1, 1, v18);
  v19(v32 + v29[5], 1, 1, v18);
  v19(v32 + v29[6], 1, 1, v18);
  *(v32 + v29[7]) = 0;
  v33 = v28 + v30[7];
  v19(v33, 1, 1, v18);
  v19(v33 + v29[5], 1, 1, v18);
  v19(v33 + v29[6], 1, 1, v18);
  *(v33 + v29[7]) = 0;
  v34 = v28 + v30[8];
  v19(v34, 1, 1, v18);
  v19(v34 + v29[5], 1, 1, v18);
  v19(v34 + v29[6], 1, 1, v18);
  *(v34 + v29[7]) = 0;
  v35 = v28 + v30[9];
  v19(v35, 1, 1, v18);
  v19(v35 + v29[5], 1, 1, v18);
  v19(v35 + v29[6], 1, 1, v18);
  *(v35 + v29[7]) = 0;
  v36 = (v27 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime);
  *v36 = _swiftEmptyArrayStorage;
  v36[1] = _swiftEmptyArrayStorage;
  v36[2] = 0;
  v36[3] = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC7Journal19InsightsDataManager__places) = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC7Journal19InsightsDataManager__updateTask) = 0;
  ObservationRegistrar.init()();
  v37 = v45;
  v38 = v46;
  *(v27 + 16) = v45;
  *(v27 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options) = v38;
  v39 = v37;
  sub_10003FCAC();
  return v27;
}

uint64_t sub_10003E6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003E750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Calendar();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

char *sub_10003E8B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = sub_1000F24EC(&qword_100AD2680);
  v6 = __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v32 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v37 = sub_1000F24EC(&qword_100AD2688);
  v16 = __chkstk_darwin(v37);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  v32 = sub_1000F24EC(a2);
  *(a3 + *(v32 + 32)) = &_swiftEmptyDictionarySingleton;
  v34 = a3;
  sub_10003ED0C(a1, a3, type metadata accessor for UniformDateBins);
  sub_10003F084(0, v20);
  v21 = *(v11 + 16);
  v21(v15, v20, v10);
  sub_100004F84(v20, &qword_100AD2688);
  v22 = *(a1 + *(type metadata accessor for UniformDateBins(0) + 24));
  result = (v22 - 1);
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    sub_10003F084(result, v18);
    v21(v36, &v18[*(v37 + 36)], v10);
    sub_100004F84(v18, &qword_100AD2688);
    sub_100034024(&qword_100AD2698, &type metadata accessor for Date);
    v24 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = sub_10003F8FC(a1, type metadata accessor for UniformDateBins);
    if (v24)
    {
      v25 = v11;
      v26 = *(v11 + 32);
      v27 = v33;
      v26(v33, v15, v10);
      v28 = v35;
      v26((v27 + *(v35 + 48)), v36, v10);
      sub_1000082B4(v27, v8, &qword_100AD2680);
      v29 = *(v28 + 48);
      v30 = v34 + *(v32 + 28);
      v26(v30, v8, v10);
      v31 = *(v25 + 8);
      v31(&v8[v29], v10);
      sub_100021CEC(v27, v8, &qword_100AD2680);
      v26((v30 + *(v37 + 36)), &v8[*(v28 + 48)], v10);
      return (v31)(v8, v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003ED0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003ED74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003EDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Calendar();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10003EF30()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[19];
    v5 = v2[16];
    v6 = v2[17];
    v7 = *(v6 + 8);
    v2[32] = v7;
    v2[33] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    return _swift_task_switch(sub_10003F5AC, 0, 0);
  }
}

uint64_t sub_10003F084@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = sub_1000F24EC(&qword_100AD2680);
  v5 = __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v35 - v8;
  v9 = type metadata accessor for Date();
  v38 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = sub_1000F24EC(&qword_100AD6F90);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_1000F24EC(&qword_100AD6F98);
  __chkstk_darwin(v18 - 8);
  v20 = &v35 - v19;
  sub_1000082B4(v3, v17, &qword_100AD6F90);
  v21 = type metadata accessor for CalendarBinningUnit(0);
  if ((*(*(v21 - 8) + 48))(v17, 1, v21) != 1)
  {
    v33 = *(v3 + *(type metadata accessor for UniformDateBins(0) + 20));
    result = &v39[v33];
    if (!__OFADD__(v33, v39))
    {
      sub_1000AB968(result, v20);
      sub_1000ABD88(v17, type metadata accessor for CalendarBinningUnit);
      v34 = sub_1000F24EC(&qword_100AD2688);
      (*(*(v34 - 8) + 56))(v20, 0, 1, v34);
      return sub_100021CEC(v20, v40, &qword_100AD2688);
    }

LABEL_9:
    __break(1u);
    return result;
  }

  sub_100004F84(v17, &qword_100AD6F90);
  v22 = sub_1000F24EC(&qword_100AD2688);
  v23 = *(v22 - 8);
  (*(v23 + 56))(v20, 1, 1, v22);
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_10003F8B4(&qword_100AD2698, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = v38;
  v39 = v20;
  v36 = v22;
  v26 = *(v38 + 32);
  v27 = v37;
  v26(v37, v14, v9);
  v26((v27 + *(v4 + 48)), v12, v9);
  sub_1000082B4(v27, v7, &qword_100AD2680);
  v28 = *(v4 + 48);
  v35 = v4;
  v29 = v40;
  v26(v40, v7, v9);
  v30 = *(v25 + 8);
  v30(&v7[v28], v9);
  sub_100021CEC(v27, v7, &qword_100AD2680);
  v31 = v36;
  v26((v29 + *(v36 + 36)), &v7[*(v35 + 48)], v9);
  v32 = v39;
  v30(v7, v9);
  result = (*(v23 + 48))(v32, 1, v31);
  if (result != 1)
  {
    return sub_100004F84(v32, &qword_100AD6F98);
  }

  return result;
}

uint64_t sub_10003F5AC()
{
  v1 = *(v0 + 48);
  *(v0 + 272) = v1;
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 280) = v2;
  v3 = *(v0 + 272);
  if (v2)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)();
      }

      v4 = *(v3 + 32);
    }

    *(v0 + 288) = v4;
    *(v0 + 296) = 1;
    v20 = *(v0 + 232);
    v19 = *(v0 + 344);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v18 = *(v0 + 128);
    v7 = *(v0 + 112);
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v0 + 56);
    v11 = [v4 objectIDNotification];
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 304) = [v10 viewContext];
    (*(v9 + 16))(v7, v6, v8);
    v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v13 = swift_allocObject();
    *(v0 + 312) = v13;
    *(v13 + 16) = v10;
    (*(v9 + 32))(v13 + v12, v7, v8);
    v20(v5, v19, v18);
    v14 = v10;
    v15 = swift_task_alloc();
    *(v0 + 320) = v15;
    *v15 = v0;
    v15[1] = sub_10048E184;

    return NSManagedObjectContext.perform<A>(schedule:_:)();
  }

  static Clock<>.continuous.getter();
  v16 = swift_task_alloc();
  *(v0 + 328) = v16;
  *v16 = v0;
  v16[1] = sub_100094B3C;

  return sub_10003FA1C(250000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10003F8B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003F8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003F95C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003F9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10003FB1C, 0, 0);
}

uint64_t sub_10003FB1C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100184A84(&qword_100AD5BC8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100184A84(&unk_100AD5BD0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000946E4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

void sub_10003FCAC()
{
  v1 = v0;
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  __chkstk_darwin(Update);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AF6CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = _s8SnapshotVMa();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7Journal19InsightsDataManager_options;
  if (sub_1000405A8(5, *(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options)))
  {
    sub_100026188();
    v12 = static NSUserDefaults.shared.getter();
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 dataForKey:v13];

    if (v14)
    {
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100040930(&qword_100AF6CE8, _s8SnapshotVMa);
      v37 = v15;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      (*(v8 + 56))(v6, 0, 1, v7);
      sub_100041F4C(v6, v10, _s8SnapshotVMa);
      swift_getKeyPath();
      v36 = 0;
      v40 = v1;
      sub_100040930(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v40 = v1;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v34 = v3;
      v18 = v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
      swift_beginAccess();
      sub_100041FB4(v10, v18);
      swift_endAccess();
      v40 = v1;
      v33 = v11;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v35 = v17;
      v19 = v7[5];
      swift_getKeyPath();
      v40 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v40 = v1;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v20 = type metadata accessor for InsightsDataManager.Streaks(0);
      sub_100041FB4(&v10[v19], v18 + *(v20 + 20));
      swift_endAccess();
      v40 = v1;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v21 = *&v10[v7[6]];
      swift_getKeyPath();
      v40 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v40 = v1;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      *(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount) = v21;
      v40 = v1;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v22 = *&v10[v7[7]];
      swift_getKeyPath();
      v40 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v40 = v1;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v23 = v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
      swift_beginAccess();
      v24 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
      v25 = v23 + *(v24 + 20);
      *v25 = v22;
      *(v25 + 8) = 0;
      v39 = v1;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v26 = *&v10[v7[8]];
      swift_getKeyPath();
      v39 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v39 = v1;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v27 = v23 + *(v24 + 32);
      *v27 = v26;
      *(v27 + 8) = 0;
      v39 = v1;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v28 = v34;
      static Date.now.getter();
      v29 = *(v1 + v33);
      v30 = Update;
      *(v28 + *(Update + 20)) = 0;
      *(v28 + *(v30 + 24)) = v29;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v32 - 2) = v1;
      *(&v32 - 1) = v28;
      v39 = v1;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      sub_1000340DC(v37, v35);

      sub_10003F9BC(v10, _s8SnapshotVMa);
      sub_10003F9BC(v28, type metadata accessor for InsightsDataManager.LastUpdate);
    }
  }
}

uint64_t sub_100040494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8SnapshotVMa()
{
  result = qword_100AF6D48;
  if (!qword_100AF6D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100040528()
{
  result = type metadata accessor for StreakSummary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1000405B0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10004067C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a2 + 48) + 88 * v8);
    v11 = *v10 == v4 && v10[1] == v5;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100040780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000407C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000408A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000408E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v30 = a2;
  v2 = type metadata accessor for StreakSummary();
  v3 = __chkstk_darwin(v2);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = &v27 - v5;
  v34 = sub_1000F24EC(&qword_100AF6DA8);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v27 - v6;
  v7 = _s8SnapshotVMa();
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(&v10[v2[5]], 1, 1, v11);
  v12(&v10[v2[6]], 1, 1, v11);
  *&v10[v2[7]] = 0;
  v13 = &v10[v8[7]];
  v12(v13, 1, 1, v11);
  v12(&v13[v2[5]], 1, 1, v11);
  v12(&v13[v2[6]], 1, 1, v11);
  *&v13[v2[7]] = 0;
  v14 = v8[8];
  *&v10[v14] = 0;
  v15 = v8[9];
  *&v10[v15] = 0;
  v16 = v8[10];
  v35 = v10;
  *&v10[v16] = 0;
  sub_10000CA14(v38, v38[3]);
  sub_100040F50();
  v17 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v18 = v35;
  }

  else
  {
    v19 = v13;
    v36 = v14;
    v28 = v16;
    v29 = v15;
    v20 = v31;
    v43 = 0;
    sub_100040930(&qword_100AF6DB0, type metadata accessor for StreakSummary);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v35;
    sub_100041D94(v33, v35);
    v42 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100041D94(v20, v19);
    v41 = 2;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v32;
    *(v18 + v36) = v21;
    v40 = 3;
    *(v18 + v29) = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = 4;
    v24 = v34;
    v25 = v37;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v22 + 8))(v25, v24);
    *(v18 + v28) = v26;
    sub_100041DF8(v18, v30, _s8SnapshotVMa);
  }

  sub_10000BA7C(v38);
  return sub_10003F9BC(v18, _s8SnapshotVMa);
}

unint64_t sub_100040EA4()
{
  result = qword_100AF6DC0;
  if (!qword_100AF6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6DC0);
  }

  return result;
}

unint64_t sub_100040EF8()
{
  result = qword_100AF6DC8;
  if (!qword_100AF6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6DC8);
  }

  return result;
}

unint64_t sub_100040F50()
{
  result = qword_100AF6D98;
  if (!qword_100AF6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6D98);
  }

  return result;
}

uint64_t sub_100040FA4()
{
  v1 = *v0;
  v2 = 0x6144657669746361;
  v3 = 0x6E756F4364726F77;
  v4 = 0x746E756F43796164;
  if (v1 != 3)
  {
    v4 = 0x5473656972746E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6557657669746361;
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

uint64_t storeEnumTagSinglePayload for CellularRadioAccessTechnology(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CellularRadioAccessTechnology(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000411B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  v4 = __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v36 = &v31 - v7;
  __chkstk_darwin(v6);
  v38 = &v31 - v8;
  v39 = sub_1000F24EC(&qword_100AF60B8);
  v35 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v31 - v9;
  v11 = type metadata accessor for StreakSummary();
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v33 = v12[7];
  v16(&v14[v33], 1, 1, v15);
  v17 = v12[8];
  v16(&v14[v17], 1, 1, v15);
  v18 = v12[9];
  v40 = v14;
  *&v14[v18] = 0;
  v19 = a1[3];
  v42 = a1;
  sub_10000CA14(a1, v19);
  sub_10004193C();
  v37 = v10;
  v20 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v21 = v40;
  }

  else
  {
    v41 = v17;
    v31 = v18;
    v22 = v35;
    v23 = v36;
    v46 = 0;
    sub_100041A68(&qword_100AE4998);
    v24 = v38;
    v25 = v37;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v40;
    sub_100041B1C(v24, v40);
    v45 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100041B1C(v23, v21 + v33);
    v44 = 2;
    v26 = v34;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100041B1C(v26, v21 + v41);
    v43 = 3;
    v28 = v39;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v22 + 8))(v25, v28);
    v30 = v32;
    *(v21 + v31) = v29;
    sub_100041C54(v21, v30);
  }

  sub_10000BA7C(v42);
  return sub_100041CB8(v21);
}

id sub_1000415E8()
{
  if (qword_100AD0AD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AF2100);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cancelling all ongoing downloads", v3, 2u);
  }

  if (qword_100AD0AE0 != -1)
  {
    swift_once();
  }

  v4 = qword_100AF2118;
  [*(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_assetMetadataQueue) cancelAllOperations];
  v5 = v4 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableAssetMetadataQueue;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableAssetMetadataQueue));
  [*(v5 + 8) removeAllObjects];
  os_unfair_lock_unlock(v5);
  [*(v4 + OBJC_IVAR____TtC7Journal17OperationsManager_fileAttachmentsQueue) cancelAllOperations];
  v6 = v4 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableFileAttachmentsQueue;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC7Journal17OperationsManager_mapTableFileAttachmentsQueue));
  [*(v6 + 8) removeAllObjects];
  os_unfair_lock_unlock(v6);
  v7 = *(v4 + OBJC_IVAR____TtC7Journal17OperationsManager_batchRecordDownloadQueue);

  return [v7 cancelAllOperations];
}

uint64_t sub_1000417AC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF2100);
  v1 = sub_10000617C(v0, qword_100AF2100);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100041874()
{
  result = qword_100AF60D8;
  if (!qword_100AF60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF60D8);
  }

  return result;
}

unint64_t sub_1000418E8()
{
  result = qword_100AF60E0;
  if (!qword_100AF60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF60E0);
  }

  return result;
}

unint64_t sub_10004193C()
{
  result = qword_100AF60C0;
  if (!qword_100AF60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF60C0);
  }

  return result;
}

uint64_t sub_100041990(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000419D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100041A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100041A68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041AAC()
{
  v1 = 0x7473726966;
  v2 = 0x6E4F676E69646E65;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 1953718636;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100041B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041B8C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEA028);
  v1 = sub_10000617C(v0, qword_100AEA028);
  if (qword_100AD01A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100041C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041CB8(uint64_t a1)
{
  v2 = type metadata accessor for StreakSummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100041D14()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B2FF98);
  sub_10000617C(v0, qword_100B2FF98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100041D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100041EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042070(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADFA80);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CKSyncEngine.Configuration();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v12 = qword_100B2F9E0;
  v13 = [*(*(qword_100B2F9E0 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer) privateCloudDatabase];
  sub_1000082B4(a1, v4, &qword_100ADFA80);
  sub_100042028(&qword_100AEA1F0, type metadata accessor for JournalSyncEngineDelegate);
  swift_unknownObjectRetain();
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  v14 = *(*(v12 + 24) + OBJC_IVAR____TtC7Journal13CloudKitStack_assetDownloadStagingManager);
  CKSyncEngine.Configuration.assetDownloadStagingManager.setter();
  CKSyncEngine.Configuration.automaticallySync.setter();
  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v15 = CKSyncEngine.init(_:)();
  (*(v6 + 8))(v11, v5);
  return v15;
}

uint64_t sub_100042314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  sub_10069503C(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_1000423C0()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v25 = &v23 - v2;
  v3 = sub_1000F24EC(&qword_100ADA688);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v23 - v5);
  v24 = sub_1000F24EC(&qword_100ADA690);
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v24);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  swift_getKeyPath();
  v26 = v0;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__updateTask))
  {
    *v6 = 1;
    (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
    v14 = sub_10004290C();
    *(&v23 - 2) = __chkstk_darwin(v14);
    AsyncStream.init(_:bufferingPolicy:_:)();

    v15 = v25;
    TaskPriority.init(rawValue:)();
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = v24;
    (*(v7 + 16))(v10, v12, v24);
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    (*(v7 + 32))(v21 + v19, v10, v18);
    *(v21 + v20) = v17;
    v22 = sub_10017AD28(0, 0, v15, &unk_10094A4A0, v21);
    sub_100004F84(v15, &qword_100AD5170);
    sub_100042C8C(v22);
    return (*(v7 + 8))(v12, v18);
  }

  return result;
}

uint64_t sub_1000427F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100042828()
{
  v1 = sub_1000F24EC(&qword_100ADA690);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_10004290C()
{
  v1 = OBJC_IVAR____TtC7Journal19InsightsDataManager____lazy_storage___workContext;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager____lazy_storage___workContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager____lazy_storage___workContext);
  }

  else
  {
    v4 = sub_10024B118();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10004296C(uint64_t a1, void *a2)
{
  v4 = sub_1000F24EC(&qword_100ADA6A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v13, v8, v4);
  *(v15 + v14) = a2;
  v16 = a2;
  sub_1004AAB54(0, 0, v11, &unk_10094A4C0, v15);
  sub_100004F84(v11, &qword_100AD5170);
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t sub_100042BA0()
{
  v1 = sub_1000F24EC(&qword_100ADA6A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100042C8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal19InsightsDataManager__updateTask;
  if (!*(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__updateTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034298(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000F24EC(&qword_100AD5BC0);
  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_100042E60()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7Journal19InsightsDataManager__updateTask) = *(v0 + 24);
}

uint64_t sub_100042EA4()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  result = sub_10043A1EC();
  if (result != 2)
  {
    if (qword_100ACFD80 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AE4380);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = 2;
      *(v7 + 12) = 2048;
      *(v7 + 14) = sub_10043A1EC();
      _os_log_impl(&_mh_execute_header, v5, v6, "Current Spotlight Version %ld != Stored Spotlight Version %ld. Migrating Spotlight Index...", v7, 0x16u);
    }

    static TaskPriority.background.getter();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    sub_1003E9628(0, 0, v2, &unk_1009565B8, v9);
  }

  return result;
}

uint64_t sub_10004308C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000430C4()
{
  sub_1000F24EC(&qword_100ADA690);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1000431AC;
  v2 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v0 + 144, 0, 0, v2);
}

uint64_t sub_1000431AC()
{

  return _swift_task_switch(sub_1000330EC, 0, 0);
}

uint64_t sub_1000432A8(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1000433A8, 0, 0);
}

uint64_t sub_1000433A8()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  *(v0 + 112) = v2;
  v3 = *(v1 + 16);
  *(v0 + 120) = v3;
  v4 = *(v0 + 104);
  if (v3)
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 64);
    v10 = *(*(v0 + 72) + 48);
    *(v0 + 232) = v10;
    v11 = *(v5 + 80);
    *(v0 + 236) = v11;
    *(v0 + 128) = *(v5 + 72);
    *(v0 + 136) = 0;
    sub_1002093E8(v4 + ((v11 + 32) & ~v11), v6);
    *(v0 + 144) = *v6;
    (*(v8 + 32))(v9, &v6[v10], v7);
    AudioIntensityProcessor.init()();
    v12 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v16 = [v12 initWithURL:v14 options:0];
    *(v0 + 152) = v16;

    v17 = swift_task_alloc();
    *(v0 + 160) = v17;
    *v17 = v0;
    v17[1] = sub_1002077F8;

    return AudioIntensityProcessor.readAudioIntensityLevels(from:)(0, 0, v16);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000435EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v4 = sub_1000F24EC(&qword_100ADA6A8);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AF6E60);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004374C, 0, 0);
}

uint64_t sub_10004374C()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100034024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100248830;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

void sub_10004387C()
{
  v1 = v0;
  if (qword_100AD0160 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AEE380);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Private [Sync] context - Resetting throttle subscription", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSaveSubscription);
  __chkstk_darwin(v7);
  os_unfair_lock_lock((v6 + 24));
  sub_100043DD0((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_1000439B0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEE380);
  v1 = sub_10000617C(v0, qword_100AEE380);
  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100043A78(uint64_t *a1, uint64_t a2)
{
  v16 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v14 = *(v3 - 8);
  v15 = v3;
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AEE398);
  v7 = *(v6 - 8);
  v17 = v6;
  v18 = v7;
  __chkstk_darwin(v6);
  v9 = &v13 - v8;

  v13 = a2;
  v20 = *(a2 + OBJC_IVAR____TtC7Journal13CoreDataStack_throttleSubject);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v19 = *(a2 + OBJC_IVAR____TtC7Journal13CoreDataStack_throttleDispatchQueue);
  sub_1000F24EC(&qword_100ADFA68);
  sub_1000065A8(0, &qword_100AD6210);
  sub_10000B58C(&qword_100ADFAB0, &qword_100ADFA68);
  sub_10006DAB0(&qword_100ADFAB8, &qword_100AD6210);
  Publisher.throttle<A>(for:scheduler:latest:)();
  (*(v14 + 8))(v5, v15);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000B58C(&qword_100AEE3A0, &qword_100AEE398);
  v10 = v17;
  v11 = Publisher<>.sink(receiveValue:)();

  result = (*(v18 + 8))(v9, v10);
  *v16 = v11;
  return result;
}

uint64_t sub_100043D98()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_100043DEC()
{
  v1 = v0;
  if (qword_100ACFCA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100ADF880);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Debounce Save - Resetting debounce subscription", v5, 2u);
  }

  v6 = *(v1 + 48);
  os_unfair_lock_lock((v6 + 24));
  sub_1000442FC((v6 + 16));

  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_100043F00(uint64_t *a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_1000F24EC(&qword_100ADFAA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100ADFAA8);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  __chkstk_darwin(v9);
  v19 = &v18 - v11;

  v20 = a2;
  v27 = *(a2 + 40);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v26 = *(a2 + 56);
  v12 = v26;
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v18 = v12;
  sub_1000F24EC(&qword_100ADFA68);
  sub_1000065A8(0, &qword_100AD6210);
  sub_10000B58C(&qword_100ADFAB0, &qword_100ADFA68);
  sub_10006DAB0(&qword_100ADFAB8, &qword_100AD6210);
  v14 = v19;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100004F84(v5, &qword_100ADFAA0);

  (*(v21 + 8))(v8, v22);

  swift_allocObject();
  swift_weakInit();
  sub_10000B58C(&qword_100ADFAC0, &qword_100ADFAA8);
  v15 = v24;
  v16 = Publisher<>.sink(receiveValue:)();

  result = (*(v25 + 8))(v14, v15);
  *v23 = v16;
  return result;
}

uint64_t sub_1000442C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100044318()
{

  return _swift_task_switch(sub_10004441C, 0, 0);
}

uint64_t sub_10004441C()
{
  sub_10004387C();
  sub_100043DEC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044488(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100089E70(a1, v4, v5, v6);
}

uint64_t sub_100044548()
{
  v1 = (type metadata accessor for SidebarPlacesBrickView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[8];
  v4 = type metadata accessor for SidebarBrickLayoutMetrics();
  v5 = *(v4 + 32);
  v6 = sub_1000F24EC(&qword_100AD2080);
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v7(v3 + *(v4 + 40), v6);

  return swift_deallocObject();
}

uint64_t sub_1000446B0()
{
  v1 = type metadata accessor for InsightsHighlightsView(0);
  v17 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v17 + 16) & ~v17);
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (!v5(v2, 1, v3))
  {
    (*(v4 + 8))(v2, v3);
  }

  v6 = v2 + v1[6];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  sub_1000F24EC(&qword_100AD3A48);

  v9 = (v2 + v1[7]);
  type metadata accessor for InsightsHighlightsView.Phase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {

    v11 = sub_1000F24EC(&qword_100AD3B60);
    v8(v9 + *(v11 + 48), v7);
  }

  v12 = *(type metadata accessor for InsightsHighlightsView.LoadingState(0) + 20);
  if (!v5(v9 + v12, 1, v3))
  {
    (*(v4 + 8))(v9 + v12, v3);
  }

  sub_1000F24EC(&qword_100AD3A50);

  v13 = v2 + v1[8];
  if (!v5(v13, 1, v3))
  {
    (*(v4 + 8))(v13, v3);
  }

  sub_1000F24EC(&qword_100AD3A58);

  v14 = v1[9];
  sub_1000F24EC(&qword_100AD9990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for Calendar();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);
  }

  else
  {
  }

  sub_100123028(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_1000467F0(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_100044A34()
{
  v1 = *(type metadata accessor for MacSettingsNotificationsTab() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1000F24EC(&qword_100AD3E70);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_100044B0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100044B4C(uint64_t *a1)
{
  v2 = sub_1000F24EC(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_100044BD0()
{

  return swift_deallocObject();
}

uint64_t sub_100044C10()
{

  return swift_deallocObject();
}

uint64_t sub_100044C50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100044C90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100044CD0()
{
  v1 = type metadata accessor for AdminMenu();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1000F24EC(&qword_100AD6FE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DismissAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 108);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  sub_1000F24EC(&qword_100AD7000);

  return swift_deallocObject();
}

uint64_t sub_100044F8C()
{
  v1 = type metadata accessor for InsightsCalendarView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(sub_1000F24EC(&unk_100AD97D0) + 32);
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v2 + *(v1 + 20);
  if (!v6(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_1000F24EC(&qword_100AD3A58);

  sub_1000467F0(*(v2 + *(v1 + 24)), *(v2 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_100045170()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000451BC()
{
  v1 = *(type metadata accessor for RecordingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1000F24EC(&qword_100ADC9B8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000452D4()
{
  v1 = (type metadata accessor for ScrollableWaveformView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_10000BA7C(v2);

  sub_1000467F0(*(v2 + 72), *(v2 + 80));
  sub_1000467F0(*(v2 + 88), *(v2 + 96));
  v3 = v1[11];
  v4 = type metadata accessor for Duration.UnitsFormatStyle();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000453E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100045430()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100045478()
{
  v1 = type metadata accessor for JournalingSuggestion.ItemContent();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100045500()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100045550()
{

  return swift_deallocObject();
}

uint64_t sub_100045590()
{
  v1 = sub_1000F24EC(&qword_100AE3BA8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045660()
{

  return swift_deallocObject();
}

uint64_t sub_1000456A8()
{

  return swift_deallocObject();
}

uint64_t sub_1000456E8()
{

  return swift_deallocObject();
}

uint64_t sub_100045728()
{
  v1 = type metadata accessor for InsightsView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_1004F085C(*(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192));
  v4 = *(v1 + 44);
  sub_1000F24EC(&qword_100AE27B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + *(v1 + 52);
  sub_1000F24EC(&qword_100AE27A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for OpenURLAction();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {
  }

  v8 = type metadata accessor for InsightsTipViewModel();

  v9 = v8[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v6 + v8[9];
  if (*(v11 + 24))
  {
    sub_10000BA7C(v11);
  }

  v12 = v6 + v8[10];
  if (*(v12 + 24))
  {
    sub_10000BA7C(v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1000459D8()
{
  v1 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + v4))
  {
  }

  if (*(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100045AC8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100045B18()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045BE4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045CB0()
{
  v1 = *(type metadata accessor for OpenSensitiveURLAction.Destination() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_100045D94()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100045DE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100045E2C()
{
  v1 = (type metadata accessor for InsightsBrickView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = type metadata accessor for DynamicTypeSize();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  v6 = type metadata accessor for SidebarBrickLayoutMetrics();
  v7 = *(v6 + 32);
  v8 = sub_1000F24EC(&qword_100AD2080);
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + *(v6 + 40), v8);

  sub_1000467F0(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_100045FFC()
{
  v1 = (type metadata accessor for InsightsButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for Subview();
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_100280C78(*(v2 + v1[9]), *(v2 + v1[9] + 8), *(v2 + v1[9] + 16), *(v2 + v1[9] + 17));
  sub_1000467F0(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_1000467F0(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  sub_1000467F0(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  sub_1000467F0(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v4 = v2 + v1[14];
  v5 = type metadata accessor for AccessibilityTechnologies();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  sub_1000F24EC(&qword_100ADD768);

  return swift_deallocObject();
}

uint64_t sub_1000461F0()
{
  v1 = type metadata accessor for InsightsCurrentStreakView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = type metadata accessor for StreakSummary();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = type metadata accessor for Date();
    v6 = *(v5 - 8);
    v7 = *(v6 + 48);
    if (!v7(v3, 1, v5))
    {
      (*(v6 + 8))(v3, v5);
    }

    v8 = *(v4 + 20);
    if (!v7(v3 + v8, 1, v5))
    {
      (*(v6 + 8))(v3 + v8, v5);
    }

    v9 = *(v4 + 24);
    if (!v7(v3 + v9, 1, v5))
    {
      (*(v6 + 8))(v3 + v9, v5);
    }
  }

  v10 = v1[5];
  sub_1000F24EC(&qword_100AE27A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  sub_1000467F0(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  sub_100280C78(*(v3 + v1[8]), *(v3 + v1[8] + 8), *(v3 + v1[8] + 16), *(v3 + v1[8] + 17));
  sub_1000467F0(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v12 = v1[10];
  sub_1000F24EC(&qword_100AD9990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Calendar();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  v14 = v1[11];
  sub_1000F24EC(&qword_100AE27B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for RedactionReasons();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
  }

  sub_1000467F0(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  v16 = v1[14];
  sub_1000F24EC(&qword_100AE27B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v17 - 8) + 8))(v3 + v16, v17);
  }

  else
  {
  }

  v18 = v1[16];
  v19 = sub_1000F24EC(&qword_100AD7DC8);
  (*(*(v19 - 8) + 8))(v3 + v18, v19);
  v20 = v3 + v1[18];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for OpenURLAction();
    (*(*(v21 - 8) + 8))(v20, v21);
  }

  else
  {
  }

  v22 = type metadata accessor for InsightsTipViewModel();

  v23 = v22[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v24 - 8) + 8))(v20 + v23, v24);
  }

  else
  {
  }

  v25 = v20 + v22[9];
  if (*(v25 + 24))
  {
    sub_10000BA7C(v25);
  }

  v26 = v20 + v22[10];
  if (*(v26 + 24))
  {
    sub_10000BA7C(v26);
  }

  v27 = v3 + v1[19];
  sub_1004F085C(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48), *(v27 + 56), *(v27 + 64), *(v27 + 72), *(v27 + 80), *(v27 + 88), *(v27 + 96), *(v27 + 104));

  return swift_deallocObject();
}

uint64_t sub_1000467F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000467FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for MergeableEntryAttributes();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JournalFeatureFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for JournalFeatureFlags.enhancedSync(_:), v11);
  v15 = JournalFeatureFlags.isEnabled.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    type metadata accessor for JournalEntryMO();
    sub_100786420(&qword_100ADAD38, &type metadata accessor for JournalEntryMO);
    MergeableProvider.unwrappedMergeableAttributes.getter();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100004F84(v6, &qword_100AD6260);
      sub_1000861EC(a1, a2);
    }

    else
    {
      v17 = *(v8 + 32);
      v17(v10, v6, v7);
      v17(a2, v10, v7);
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a2, v16, 1, v7);
}

uint64_t sub_100046ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA858);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA858);
  v13 = sub_1000F24EC(&qword_100AD5B20);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD5B20);
  }

  sub_100004F84(v11, &qword_100ADA858);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &unk_100AEE0A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for PhotoLibraryAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for PhotoLibraryAssetMetadata();
    sub_10004A6D8(&qword_100AD3370, &type metadata accessor for PhotoLibraryAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD5B20);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA858);
  return swift_endAccess();
}

id sub_100046EB4(double a1, double a2, double a3, double a4)
{
  v9 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v36 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v12 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICellAccessory.DisplayedState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_enforceShowCompressedAssetGrid] = 0;
  v19 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_contentStackView;
  *&v4[v19] = [objc_allocWithZone(UIStackView) init];
  v20 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView;
  *&v4[v20] = [objc_allocWithZone(UIStackView) init];
  v21 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetStackView;
  *&v4[v21] = [objc_allocWithZone(UIStackView) init];
  v22 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textStackView;
  *&v4[v22] = [objc_allocWithZone(UIStackView) init];
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_photoMemoriesBannerView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView] = 0;
  v23 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView;
  type metadata accessor for CanvasGridView();
  *&v4[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView;
  *&v4[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView;
  type metadata accessor for TimelineTextView();
  *&v4[v25] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v26 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_bundleTitle;
  type metadata accessor for TimelineMomentsTitleView();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_gridMargin] = 0x4010000000000000;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textViewMarginNoAssets] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryCellHeight] = 0x4069000000000000;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint] = 0;
  v27 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_chinView;
  type metadata accessor for JournalEntryCellChinView();
  *&v4[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_numCollapsedLinesWithAssets] = 5;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_numCollapsedLinesNoAssets] = 10;
  v28 = &v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight];
  *v28 = 0;
  v28[8] = 1;
  *&v4[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry] = 0;
  v29 = type metadata accessor for JournalEntryCollectionViewCell();
  v37.receiver = v4;
  v37.super_class = v29;
  v30 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  sub_10005CB44();
  v31 = [v30 traitCollection];

  v32 = [v31 userInterfaceIdiom];
  if (v32 != 5)
  {
    sub_1000F24EC(&unk_100AD4410);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100940080;
    (*(v16 + 104))(v18, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v15);
    v33 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.multiselect(displayed:options:)();
    (*(v12 + 8))(v14, v36);
    (*(v16 + 8))(v18, v15);
    UICollectionViewListCell.accessories.setter();
  }

  return v30;
}

id sub_100047468(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = type metadata accessor for UIView.Invalidations.IntrinsicContentSize();
  __chkstk_darwin(v11);
  v12 = sub_1000F24EC(&qword_100AEAA98);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC7Journal24CanvasGridCollectionView__isExpanded;
  v25 = 0;
  UIView.Invalidations.IntrinsicContentSize.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v13 + 32))(&v5[v16], v15, v12);
  v5[OBJC_IVAR____TtC7Journal24CanvasGridCollectionView_enforceShowCompressedAssetGrid] = 0;
  v17 = type metadata accessor for CanvasGridCollectionView();
  v24.receiver = v5;
  v24.super_class = v17;
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:collectionViewLayout:", a1, a2, a3, a4, a5);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [v20 setScrollEnabled:0];
  [v20 setClipsToBounds:0];
  [v20 setAllowsFocus:1];
  [v20 setAccessibilityContainerType:0];

  return v20;
}

id sub_100047788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a3];
  v4 = *(a2 + 16);
  v5 = v15;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v8 = (a2 + 48);
    v7 = v5;
    do
    {
      v9 = *v8;
      v13 = *(v8 - 1);
      v14 = v9;
      sub_100047884(&v15, &v13, &v12);

      v7 = v12;
      v15 = v12;
      v8 += 24;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v10;
}

id sub_100047884@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6 > 1)
  {
    v26 = a3;
    if (v6 == 2)
    {
      v25 = a2[1];
      sub_1000F24EC(&qword_100ADFE20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940080;
      *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
      sub_1000F24EC(&qword_100ADFE50);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100940080;
      sub_1000F24EC(&qword_100ADFE58);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_100940050;
      v18 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      *(v17 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
      v19 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
      *(v17 + 40) = v5;
      *(v17 + 48) = v19;
      *(v17 + 56) = v25;
      v20 = UIFontDescriptorFeatureSettingsAttribute;
      v21 = v18;
      v22 = v19;
      v23 = sub_10009C8B8(v17);
      swift_setDeallocating();
      sub_1000F24EC(&qword_100ADFE60);
      swift_arrayDestroy();
      *(v16 + 32) = v23;
      *(inited + 64) = sub_1000F24EC(&qword_100ADFE68);
      *(inited + 40) = v16;
      sub_100072088(inited, &unk_100AF41C0, &unk_10096D040, &unk_100ADFE40);
      swift_setDeallocating();
      sub_100004F84(inited + 32, &unk_100ADFE40);
      type metadata accessor for AttributeName(0);
      sub_10006F5AC(&qword_100AD1C78, type metadata accessor for AttributeName);
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    else
    {
      if (v6 != 3)
      {
        result = [v4 fontDescriptorWithDesign:v5];
        if (!result)
        {
          result = v4;
        }

        goto LABEL_12;
      }

      sub_1000F24EC(&qword_100ADFE20);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_100940080;
      *(v7 + 32) = UIFontDescriptorTraitsAttribute;
      sub_1000F24EC(&qword_100ADFE28);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_100940080;
      *(v8 + 32) = UIFontWeightTrait;
      *(v8 + 40) = v5;
      v9 = UIFontDescriptorTraitsAttribute;
      v10 = UIFontWeightTrait;
      v11 = sub_100363F54(v8);
      swift_setDeallocating();
      sub_100004F84(v8 + 32, &qword_100ADFE30);
      *(v7 + 64) = sub_1000F24EC(&qword_100ADFE38);
      *(v7 + 40) = v11;
      sub_100072088(v7, &unk_100AF41C0, &unk_10096D040, &unk_100ADFE40);
      swift_setDeallocating();
      sub_100004F84(v7 + 32, &unk_100ADFE40);
      type metadata accessor for AttributeName(0);
      sub_10006F5AC(&qword_100AD1C78, type metadata accessor for AttributeName);
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v13 = [v4 fontDescriptorByAddingAttributes:v12.super.isa];
    }

    v24 = v13;

    result = v24;
LABEL_12:
    a3 = v26;
    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") & ~v5}];
    if (result)
    {
      goto LABEL_13;
    }

LABEL_15:
    result = v4;
    goto LABEL_13;
  }

  result = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(*a1, "symbolicTraits") | v5}];
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_13:
  *a3 = result;
  return result;
}

id sub_100047F28()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setParagraphSpacingBefore:8.0];
  sub_100051308();
  return v0;
}

unint64_t sub_100047F78()
{
  result = qword_100AEBAD8;
  if (!qword_100AEBAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AEBAD8);
  }

  return result;
}

unint64_t sub_100047FD8()
{
  result = qword_100AD1B58;
  if (!qword_100AD1B58)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1B58);
  }

  return result;
}

Swift::Int sub_100048078()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

_OWORD *sub_100048154(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a5();
      v16 = v24;
      goto LABEL_8;
    }

    a6(v21, a3 & 1);
    v16 = a4(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a7(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (v26[7] + 32 * v16);
    sub_10000BA7C(v27);

    return sub_10002432C(a1, v27);
  }

  else
  {
    sub_1000482D0(v16, a2, a1, v26);

    return a2;
  }
}

_OWORD *sub_1000482D0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10002432C(a3, (a4[7] + 32 * a1));
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

double sub_1000483C8(char *a1, uint64_t a2, void *a3, SEL *a4)
{
  v4 = &a1[*a3];
  if ((v4[8] & 1) == 0)
  {
    return *v4;
  }

  v7.receiver = a1;
  v7.super_class = type metadata accessor for CanvasLayoutFragment();
  objc_msgSendSuper2(&v7, *a4);
  return result;
}

id sub_100048500(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v10 - 8);
  *&v4[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry] = 0;
  v11 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_metadataButton;
  type metadata accessor for JournalEntryMetadataButton();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton;
  sub_1000065A8(0, &qword_100ADFC10);
  static UIButton.Configuration.borderless()();
  *&v5[v12] = UIButton.init(configuration:primaryAction:)();
  v13 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkView;
  *&v5[v13] = [objc_allocWithZone(UIImageView) init];
  *&v5[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkViewLeadingSpaceConstraint] = 0;
  v14 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_dividerLineView;
  type metadata accessor for JournalDividerView();
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButton;
  static UIButton.Configuration.borderless()();
  *&v5[v15] = UIButton.init(configuration:primaryAction:)();
  *&v5[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButtonTrailingSpaceConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_itemMargin] = 0x4028000000000000;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for JournalEntryCellChinView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  sub_100057FD0();

  return v16;
}

uint64_t sub_1000487B0()
{
  sub_1000F2A18(&qword_100ADED88);
  sub_1000F2A18(&qword_100ADB0A0);
  sub_1003220EC();
  sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
  return swift_getOpaqueTypeConformance2();
}

void sub_1000488A0(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, char *a5, uint64_t a6, void *a7, char *a8, char a9, uint64_t a10)
{
  v48 = a8;
  v49 = a5;
  v50 = a7;
  v51 = a3;
  v52 = a4;
  v47 = a10;
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000594E0(a1, a2);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 imageByPreparingForDisplay];

    if (v21)
    {
      v50 = v21;
      v51(v21);

      v22 = v50;
LABEL_18:

      return;
    }
  }

  v23 = sub_10008A328(a1, a2);
  if (v23)
  {
    v48 = v23;
    v24 = *&v23[qword_100B302C0];
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 == v50)
    {
      v26 = swift_allocObject();
      v27 = v52;
      *(v26 + 16) = v51;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_10029A8C8;
      *(v28 + 24) = v26;
      v29 = *&v48[qword_100AE7BA8];
      __chkstk_darwin(v48);
      *(&v46 - 2) = sub_10029A8AC;
      *(&v46 - 1) = v28;

      os_unfair_lock_lock(v29 + 10);
      sub_10029A8B0(&v29[4]);
      os_unfair_lock_unlock(v29 + 10);

      return;
    }

    sub_10008A81C(v49, v51, v52);
    v22 = v48;
    goto LABEL_18;
  }

  sub_10008A5C8(a1, a2);
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    OS_dispatch_queue.qos.getter();
    v34 = DispatchQoS.relativePriority.getter();
    v35 = *(v13 + 8);
    v35(v18, v12);
    OS_dispatch_queue.qos.getter();
    v36 = DispatchQoS.relativePriority.getter();
    v35(v16, v12);
    if (v34 >= v36 && ((v37 = *&v32[qword_100B302C0], v37 >> 62) ? (v38 = _CocoaArrayWrapper.endIndex.getter()) : (v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10)), v38 == v50))
    {
      v39 = swift_allocObject();
      v40 = v52;
      *(v39 + 16) = v51;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_10008DD54;
      *(v41 + 24) = v39;
      v42 = *&v32[qword_100AE7BA8];
      v43 = __chkstk_darwin(v41);
      *(&v46 - 2) = sub_10008DD0C;
      *(&v46 - 1) = v43;

      os_unfair_lock_lock(v42 + 10);
      sub_10008AAE4(&v42[4]);
      os_unfair_lock_unlock(v42 + 10);
    }

    else
    {
      sub_10008A81C(v49, v51, v52);
    }
  }

  else
  {
    sub_10008A81C(v49, v51, v52);
    v45 = v47;
    v44 = v48;

    sub_10003881C(0, v44, a9 & 1, v45);
  }
}

uint64_t sub_100048DA8()
{

  return swift_deallocObject();
}

uint64_t sub_100048DF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return (sub_100049734)(a1);
}

uint64_t sub_100048E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048FD8(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + *(*v1 + 112)) = xmmword_100941EE0;
  v5 = *(*v1 + 120);
  v6 = _s8MetadataC5InputOMa();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t sub_100049130()
{
  sub_10004FECC(v0 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);

  return swift_deallocClassInstance();
}

void sub_1000491F0()
{
  v1 = sub_1000F24EC(&qword_100AE9B88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v8)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MosaicCell();
    type metadata accessor for UUID();
    v9 = v8;
    UICollectionView.CellRegistration.init(handler:)();
    (*(v2 + 16))(v5, v7, v1);
    v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v11 = swift_allocObject();
    (*(v2 + 32))(v11 + v10, v5, v1);
    v12 = objc_allocWithZone(sub_1000F24EC(&unk_100AE9B90));
    v13 = v0;
    v14 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    (*(v2 + 8))(v7, v1);
    v15 = *(v13 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource);
    *(v13 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource) = v14;
  }
}

uint64_t sub_100049428()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100049460()
{
  v1 = sub_1000F24EC(&qword_100AE9B88);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

char *sub_1000494F4(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC7Journal16TimelineTextView_isAlwaysTruncated] = 0;
  *&v5[OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade] = 0;
  *&v5[OBJC_IVAR____TtC7Journal16TimelineTextView_truncationFadeLength] = 0x4044000000000000;
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v22, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setScrollEnabled:0];
  [v14 setEditable:0];
  [v14 setSelectable:0];
  v16 = [v14 textLayoutManager];
  if (v16)
  {
    v17 = v16;
    [v16 setLimitsLayoutForSuspiciousContents:1];
  }

  v18 = [v14 textContainer];
  [v18 setLineBreakMode:4];

  [v14 setSupportsAdaptiveImageGlyph:0];
  [v14 setUserInteractionEnabled:0];

  v19 = sub_100051F80();
  [v19 setHidden:1];

  v20 = [*&v14[OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade] layer];
  [v20 setCompositingFilter:kCAFilterDestOut];

  return v14;
}

uint64_t sub_100049734(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ProtectedData.ProtectedDataState();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.Event();
  v2[24] = v9;
  v2[25] = *(v9 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v10 = type metadata accessor for OSSignpostID();
  v2[33] = v10;
  v2[34] = *(v10 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v2[37] = v11;
  v2[38] = *(v11 - 8);
  v2[39] = swift_task_alloc();
  v12 = type metadata accessor for OSSignposter();
  v2[40] = v12;
  v2[41] = *(v12 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000547E4, v1, 0);
}

uint64_t sub_100049BC8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADFA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049C30@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_100049ED8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100049F2C()
{
  v1 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_20:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      type metadata accessor for ReflectionAsset();
      if ([v6 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        break;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
LABEL_13:
  }

  return 0;
}

uint64_t sub_10004A07C(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v5 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 filePath];
  if (v8)
  {
    v9 = v8;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v10;
    v11 = [a1 index];
    v12 = [a1 name];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v26 = [objc_allocWithZone(NSString) initWithString:v9];

    v27 = [v26 lastPathComponent];
    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    v42 = v11;
    v28 = [objc_allocWithZone(NSString) initWithString:v27];

    v29 = [v28 stringByDeletingPathExtension];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v16)
    {
      if (v14 == 0x6567616D69 && v16 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 0x6F65646976 && v16 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        *v7 = v43;
LABEL_17:
        v33 = v7;
LABEL_20:
        v33[1] = v44;
        type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for AssetAttachment(0);
        v34 = swift_allocObject();
        *(v34 + 16) = v42;
        sub_100048E9C(v7, v34 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        result = v34;
        v36 = (v34 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v36 = v30;
        v36[1] = v32;
        return result;
      }

      if (v14 == 0x6F69647561 && v16 == 0xE500000000000000)
      {

LABEL_34:
        *v7 = v43;
        goto LABEL_17;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {

        goto LABEL_34;
      }
    }

    else
    {
    }

    v33 = (v7 + *(sub_1000F24EC(&qword_100AD33B8) + 48));
    *v7 = v14;
    v7[1] = v16;
    *v33 = v43;
    goto LABEL_20;
  }

  if (qword_100AD0B50 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000617C(v17, qword_100AF3B28);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v23 = [v18 id];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    }

    else
    {
      v37 = type metadata accessor for UUID();
      (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
    }

    v38 = String.init<A>(describing:)();
    v40 = sub_100008458(v38, v39, &v45);

    *(v21 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v19, v20, "JournalEntryAssetFileAttachmentMO is missing filePath. ID: %s", v21, 0xCu);
    sub_10000BA7C(v22);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10004A64C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004A694(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotoLibraryAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004A6D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CanvasGridView()
{
  result = qword_100AE9B18;
  if (!qword_100AE9B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CanvasGridCollectionView()
{
  result = qword_100AEAA80;
  if (!qword_100AEAA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004A7C8()
{
  swift_getObjectType();
  v1 = [v0 traitCollection];
  v2 = sub_10010BCB8(v1);

  [v0 setFont:v2];
  v3 = [objc_opt_self() labelColor];
  [v0 setTextColor:v3];

  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  sub_1000F24EC(&unk_100AEBEC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100940080;
  *(v4 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v4 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

id sub_10004A91C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADEC98);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v32 - v8;
  v10 = *&v1[OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_entry];
  if (v10)
  {
    v11 = *(v10 + 32);
    __chkstk_darwin(v7);
    v32[-2] = v11;
    v32[-1] = v1;
    type metadata accessor for JournalEntryMetadataButton.ContentView();
    sub_100052258(&qword_100ADECA0, type metadata accessor for JournalEntryMetadataButton.ContentView);
    v12 = v11;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    UIHostingConfiguration.margins(_:_:)();
    v13 = *(v3 + 8);
    v13(v6, v2);
    v14 = &v1[OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_contentView];
    v15 = *&v1[OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_contentView];
    if (v15)
    {
      v32[2] = v3 + 8;
      v33 = v13;
      v34 = v12;
      v16 = *(v14 + 1);
      ObjectType = swift_getObjectType();
      v36 = v2;
      v18 = sub_10000B58C(&qword_100ADECA8, &qword_100ADEC98);
      v37 = v18;
      v19 = sub_10001A770(v35);
      v20 = *(v3 + 16);
      v20(v19, v9, v2);
      v21 = v15;
      v32[0] = ObjectType;
      v32[1] = v16;
      LOBYTE(v16) = dispatch thunk of UIContentView.supports(_:)();
      sub_10000BA7C(v35);
      if (v16)
      {
        v36 = v2;
        v37 = v18;
        v22 = sub_10001A770(v35);
        v20(v22, v9, v2);
        dispatch thunk of UIContentView.configuration.setter();

        return v33(v9, v2);
      }

      v13 = v33;
      v12 = v34;
    }

    v24 = UIHostingConfiguration.makeContentView()();
    v26 = v25;
    [v1 hitTestDirectionalInsets];
    [v24 setHitTestDirectionalInsets:?];
    [v1 addSubview:v24];
    v27 = v24;
    sub_100013178(0.0);

    v28 = *v14;
    *v14 = v27;
    *(v14 + 1) = v26;
    v29 = v27;

    height = UILayoutFittingCompressedSize.height;
    v31 = v29;
    [v31 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];

    return (v13)(v9, v2);
  }

  else
  {
    result = *&v1[OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_contentView];
    if (result)
    {

      return [result setHidden:1];
    }
  }

  return result;
}

void sub_10004AD38()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static UIView.Invalidating.subscript.setter();
  }

  v3 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_mosaicLayout);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded);
  v5 = v3[OBJC_IVAR____TtC7Journal12MosaicLayout_isExpanded];
  v3[OBJC_IVAR____TtC7Journal12MosaicLayout_isExpanded] = v4;
  if (v4 != v5)
  {
    [v3 invalidateLayout];
  }

  sub_100053920();
}

unint64_t sub_10004AE0C()
{
  result = qword_100AE88F8;
  if (!qword_100AE88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE88F8);
  }

  return result;
}

uint64_t sub_10004AEF0()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = _s8MetadataC5InputOMa();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10004AFE0()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  if (v4 && (v5 = [v4 rootViewController]) != 0)
  {
    v6 = v5;
    if (qword_100ACFCA8 != -1)
    {
      swift_once();
    }

    v7 = qword_100B2F840;
    sub_100355340();
    type metadata accessor for AssetPostprocessingOperation();
    sub_10003CC9C();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    sub_1004EC158(0, 0, v3, &unk_1009584C0, v9);

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v10 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
    v11 = type metadata accessor for AssetContentTypeOperation();
    v12 = objc_allocWithZone(v11);
    *&v12[qword_100AE52E8] = v10;
    v12[qword_100AE52F0] = 0;
    v26.receiver = v12;
    v26.super_class = v11;
    v13 = v10;
    v14 = objc_msgSendSuper2(&v26, "init");
    if (qword_100AD0038 != -1)
    {
      swift_once();
    }

    [qword_100B2FC18 addOperation:v14];

    v15 = [*(*(v7 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    aBlock[4] = sub_10054CD68;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A72D18;
    v17 = _Block_copy(aBlock);
    v18 = v15;

    [v18 performBlock:v17];
    _Block_release(v17);

    type metadata accessor for CanvasViewController(0);
    sub_1003BA890();
  }

  else
  {
    if (qword_100ACFF50 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000617C(v19, qword_100AE8FB0);
    v24 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v24, v20, "Scene activated with an unprepared window.", v21, 2u);
    }

    v22 = v24;
  }
}

uint64_t sub_10004B404()
{

  return swift_deallocObject();
}

void sub_10004B460()
{
  type metadata accessor for InsightsDataManager.LastUpdate(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Calendar();
    if (v1 <= 0x3F)
    {
      sub_100008F84();
      if (v2 <= 0x3F)
      {
        type metadata accessor for InsightsDataManager.EntrySummaryGroup(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for InsightsDataManager.Streaks(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10004B658()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10004B6E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004B6E4()
{
  if (!qword_100AECCD8)
  {
    sub_10003D778();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100AECCD8);
    }
  }
}

void sub_10004B740(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10004B7D0()
{
  v2 = *(sub_1000F24EC(&qword_100ADA6A0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032EC8;

  return sub_1000435EC(v4, v5, v0 + v3);
}

uint64_t sub_10004B8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B990(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B9D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004BA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004BA74()
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

uint64_t sub_10004BAF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

Swift::Int sub_10004BBA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADB738);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_10004BD08()
{
  v0 = sub_10004BBA0(&off_100A5A2B8);
  sub_10004D740(&unk_100A5A2D8);
  return v0;
}

Swift::Int sub_10004BD5C()
{
  v0 = sub_10004BBA0(&off_100A5A2E8);
  sub_10004D740(&unk_100A5A308);
  return v0;
}

uint64_t sub_10004BD98()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for OperationBase();
  v1 = objc_msgSendSuper2(&v3, "isReady");
  if (v1)
  {
    sub_10004D8C8();
    type metadata accessor for OperationBase.State();
    swift_getWitnessTable();
    LOBYTE(v1) = == infix<A>(_:_:)();
  }

  return v1 & 1;
}

uint64_t sub_10004BE74@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for WorkoutIconAsset()
{
  result = qword_100AED098;
  if (!qword_100AED098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004BF68()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AssetType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AssetSource();
      if (v2 <= 0x3F)
      {
        sub_10000EE64(319, &qword_100ADE4E0, &type metadata accessor for UUID);
        if (v3 <= 0x3F)
        {
          sub_10000EE64(319, &qword_100AD59F0, &type metadata accessor for Date);
          if (v4 <= 0x3F)
          {
            sub_10000EE64(319, &qword_100AD2EE8, &type metadata accessor for URL);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10004C1E0()
{
  result = qword_100AE88F0;
  if (!qword_100AE88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE88F0);
  }

  return result;
}

uint64_t sub_10004C238@<X0>(uint64_t *a1@<X8>)
{
  v85 = a1;
  v1 = sub_1000F24EC(&qword_100AE8928);
  __chkstk_darwin(v1 - 8);
  v84 = &v65 - v2;
  v88 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v82 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AE82A8);
  __chkstk_darwin(v11 - 8);
  v73 = &v65 - v12;
  v70 = sub_1000F24EC(&qword_100AE8930);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v65 - v13;
  v14 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v14 - 8);
  v67 = &v65 - v15;
  v16 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v16 - 8);
  v71 = &v65 - v17;
  v97 = type metadata accessor for InputConnectionBehavior();
  v18 = *(v97 - 8);
  __chkstk_darwin(v97);
  v87 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F24EC(&qword_100AE8938);
  __chkstk_darwin(v20 - 8);
  v22 = &v65 - v21;
  v23 = sub_1000F24EC(&qword_100AE8940);
  __chkstk_darwin(v23 - 8);
  v25 = &v65 - v24;
  v26 = sub_1000F24EC(&qword_100AD9E60);
  __chkstk_darwin(v26 - 8);
  v28 = &v65 - v27;
  sub_1000F24EC(&qword_100AE8948);
  type metadata accessor for AppDependencyManager();
  v100 = 0u;
  v101 = 0u;
  v102 = 0;
  static AppDependencyManager.shared.getter();
  v81 = AppDependency.__allocating_init(key:manager:)();
  v74 = sub_1000F24EC(&qword_100AE8950);
  v98 = *(v9 + 56);
  v99 = v9 + 56;
  v94 = v8;
  v98(v28, 1, 1, v8);
  v77 = type metadata accessor for String.IntentInputOptions();
  v100 = 0uLL;
  v29 = *(v77 - 8);
  v76 = *(v29 + 56);
  v78 = v29 + 56;
  v72 = v25;
  v76(v25, 1, 1, v77);
  v92 = type metadata accessor for IntentDialog();
  v30 = *(v92 - 8);
  v95 = *(v30 + 56);
  v31 = v30 + 56;
  v95(v22, 1, 1, v92);
  v93 = enum case for InputConnectionBehavior.default(_:);
  v96 = *(v18 + 104);
  v32 = v87;
  v33 = v97;
  v96(v87);
  v90 = v18 + 104;
  v75 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v66 = sub_1000F24EC(&qword_100AE8958);
  v34 = v28;
  v98(v28, 1, 1, v8);
  v35 = v71;
  AttributedString.init(stringLiteral:)();
  v36 = type metadata accessor for AttributedString();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  IntentDialog.init(stringLiteral:)();
  v37 = v92;
  v89 = v31;
  v38 = v95;
  v95(v22, 0, 1, v92);
  v39 = v93;
  (v96)(v32, v93, v33);
  v65 = v34;
  v40 = v32;
  v71 = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  v66 = sub_1000F24EC(&qword_100AE8960);
  v41 = v94;
  v42 = v98;
  v98(v34, 1, 1, v94);
  v43 = type metadata accessor for Date();
  (*(*(v43 - 8) + 56))(v67, 1, 1, v43);
  v38(v22, 1, 1, v37);
  (*(v69 + 104))(v68, enum case for IntentParameter.DateKind.dateTime<A>(_:), v70);
  (v96)(v40, v39, v97);
  v44 = v65;
  v70 = IntentParameter<>.init(description:default:kind:requestValueDialog:inputConnectionBehavior:)();
  v69 = sub_1000F24EC(&qword_100AE8968);
  v45 = v44;
  v42(v44, 1, 1, v41);
  *&v100 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AE8970);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100940050;
  static UTType.image.getter();
  static UTType.movie.getter();
  v46 = v92;
  v95(v22, 1, 1, v92);
  v48 = v96;
  v47 = v97;
  (v96)(v40, enum case for InputConnectionBehavior.connectToPreviousIntentResult(_:), v97);
  v49 = v22;
  v69 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  sub_1000F24EC(&qword_100AE8978);
  v50 = v45;
  v98(v45, 1, 1, v94);
  v51 = type metadata accessor for PlaceDescriptor();
  (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
  v86 = v49;
  v95(v49, 1, 1, v46);
  (v48)(v40, v93, v47);
  sub_1005429D0(&qword_100AE8980, &type metadata accessor for PlaceDescriptor);
  v73 = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  v68 = sub_1000F24EC(&qword_100AE8988);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v52 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v54 = v91 + 104;
  v53 = *(v91 + 104);
  v55 = v83;
  v56 = v88;
  v53(v83, enum case for LocalizedStringResource.BundleDescription.main(_:), v88);
  v91 = v54;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v53(v55, v52, v56);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v98(v50, 0, 1, v94);
  LOBYTE(v100) = 2;
  v57 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v57 - 8) + 56))(v84, 1, 1, v57);
  v95(v86, 1, 1, v92);
  v58 = v87;
  (v96)(v87, v93, v97);
  v84 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v59 = v88;
  v53(v55, v52, v88);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v53(v55, v52, v59);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v98(v50, 0, 1, v94);
  v100 = 0uLL;
  v76(v72, 1, 1, v77);
  v95(v86, 1, 1, v92);
  (v96)(v58, v93, v97);
  result = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v61 = v85;
  v62 = v75;
  *v85 = v81;
  v61[1] = v62;
  v63 = v70;
  v61[2] = v71;
  v61[3] = v63;
  v64 = v73;
  v61[4] = v69;
  v61[5] = v64;
  v61[6] = v84;
  v61[7] = result;
  return result;
}

uint64_t sub_10004D1DC(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_10004D224()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FB98 = result;
  return result;
}

NSString sub_10004D260()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2FBA8 = result;
  return result;
}

uint64_t type metadata accessor for AssetContentTypeOperation()
{
  result = qword_100AE5320;
  if (!qword_100AE5320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D4F4()
{
  sub_1000F2A18(&qword_100AD5BC0);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  Array.init()();
  return 0;
}

id sub_10004D56C()
{
  v1 = qword_100AE7BA8;
  v7 = sub_10004D4F4();
  v8 = v2;
  v9 = v3;
  type metadata accessor for OperationBase.Locked();
  v4 = sub_10004BA74();

  *&v0[v1] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10004D64C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for GalleryCollectionViewLayout.ItemState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

Class sub_10004D69C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

Swift::Int sub_10004D704()
{
  v0 = sub_10004BBA0(&off_100A5A288);
  sub_10004D740(&unk_100A5A2A8);
  return v0;
}

id sub_10004D7AC()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  if (qword_100ACFB88 != -1)
  {
    swift_once();
  }

  [v0 setUnderlyingQueue:qword_100B2F620];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:1];
  result = [v0 setQualityOfService:9];
  qword_100B2FC18 = v0;
  return result;
}

uint64_t sub_10004D894(void *a1)
{
  v1 = a1;
  v2 = sub_10004BD98();

  return v2 & 1;
}

uint64_t sub_10004D8C8()
{
  v1 = *(v0 + qword_100AE7BA8);
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10004BE74((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  return v5;
}

uint64_t sub_10004D9E8()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_10004DA64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004DA90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10004DA90(char a1)
{
  if (!a1)
  {
    return 0x7964616572;
  }

  if (a1 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

uint64_t sub_10004DAE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_10004DB44()
{
  v1 = sub_1000F24EC(&qword_100AF6E60);
  __chkstk_darwin(v1 - 8);
  v3 = v75 - v2;
  v4 = sub_1000F24EC(qword_100AF2AC0);
  __chkstk_darwin(v4 - 8);
  v6 = v75 - v5;
  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v7 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window;
  v8 = *(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [v8 rootViewController];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  type metadata accessor for AppSecureAccessViewController();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_11:
    v83 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v83, v15, "applicationDidBecomeActive: Attempted to process scene event before window was ready!", v16, 2u);
    }

    goto LABEL_13;
  }

  v12 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
  if ((v11[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state] & 0xFE) == 2)
  {
    v83 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v83, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v83, v13, "applicationDidBecomeActive: Lock already enforced.", v14, 2u);
    }

LABEL_13:
    v17 = v83;

    return;
  }

  v83 = v11;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v6, v0 + v12, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  sub_100014590(v6, 0xD00000000000001ALL, 0x80000001008E2480);
  LOBYTE(v18) = v20;
  sub_100004F84(v6, qword_100AF2AC0);
  if (v18)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "applicationDidBecomeActive: Tracking result - Not tracking";
      v25 = v22;
      v26 = v21;
      v27 = v23;
      v28 = 2;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v26, v25, v24, v27, v28);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v29 = sub_100014964();
  if (v29 == 4)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v31 = qword_1009449B0[v30];
  if (static Runtime.hasAppProtectionLock.getter())
  {
    v21 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v31;
      v24 = "applicationDidBecomeActive: Tracking result - secondsLimit=%llu Protected Apps enforcement detected, isLocked=FALSE";
      v25 = v32;
      v26 = v21;
      v27 = v33;
      v28 = 12;
      goto LABEL_25;
    }

LABEL_26:

LABEL_27:
    v34 = type metadata accessor for Notification();
    (*(*(v34 - 8) + 56))(v3, 1, 1, v34);
    sub_10004E570(v3);

    sub_100004F84(v3, &qword_100AF6E60);
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_isNewAppLaunch) == 1)
  {
    v35 = v0;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v36, v37, "applicationDidBecomeActive: Tracking result - secondsLimit=%llu First launch detected, isLocked=TRUE", v38, 0xCu);
    }

    v39 = v35;
    goto LABEL_32;
  }

  if ((*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp + 8) & 1) == 0)
  {
    v49 = *(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp);
    v50 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (v50 < v49)
    {
      goto LABEL_68;
    }

    v51 = (v50 - v49) / 0x3B9ACA00;
    v52 = v0;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218496;
      *(v55 + 4) = v31;
      *(v55 + 12) = 2048;
      *(v55 + 14) = v51;
      *(v55 + 22) = 1024;
      *(v55 + 24) = v51 >= v31;
      _os_log_impl(&_mh_execute_header, v53, v54, "applicationDidBecomeActive: Tracking result - secondsLimit=%llu secondsElapsed=%llu isLocked=%{BOOL}d", v55, 0x1Cu);
    }

    v39 = v52;
    if (v51 < v31)
    {
      goto LABEL_27;
    }

LABEL_32:

    sub_1007E3B98(2u, 1, v83, v39);

LABEL_33:

    return;
  }

  v40 = *(v0 + v7);
  if (!v40)
  {
    goto LABEL_27;
  }

  v82 = [v40 windowScene];
  if (!v82)
  {
    goto LABEL_27;
  }

  v41 = [objc_opt_self() sharedApplication];
  v42 = [v41 connectedScenes];

  v43 = sub_1000065A8(0, &qword_100AE4620);
  sub_10002623C();
  v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v75[2] = v44;
  v79 = v43;
  if ((v44 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v44 = v86;
    v45 = v87;
    v46 = v88;
    v47 = v89;
    v48 = v90;
  }

  else
  {
    v56 = -1 << *(v44 + 32);
    v45 = v44 + 56;
    v57 = ~v56;
    v58 = -v56;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v48 = v59 & *(v44 + 56);

    v46 = v57;
    v47 = 0;
  }

  v75[1] = v46;
  v60 = (v46 + 64) >> 6;
  v80 = v0;
  v77 = v44;
  for (i = v45; ; v45 = i)
  {
    v81 = v47;
    if (v44 < 0)
    {
      v65 = __CocoaSet.Iterator.next()();
      if (!v65)
      {
        goto LABEL_64;
      }

      v84 = v65;
      swift_dynamicCast();
      v63 = v48;
      v64 = v85;
      v76 = v63;
      goto LABEL_58;
    }

    v61 = v47;
    v62 = v48;
    if (!v48)
    {
      break;
    }

LABEL_55:
    v76 = v48;
    v63 = (v62 - 1) & v62;
    v64 = *(*(v44 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v62)))));
LABEL_58:
    if (!v64)
    {
LABEL_64:
      sub_100014FF8();

      goto LABEL_27;
    }

    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v66 = v64;
      sub_10018BA40(v64);
      v68 = v67;

      if (v68)
      {
        sub_100014FF8();

        v69 = v66;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = 138412290;
          *(v72 + 4) = v69;
          *v73 = v64;
          v74 = v69;
          _os_log_impl(&_mh_execute_header, v70, v71, "applicationDidBecomeActive: Tracking result - a different scene is already locked: %@", v72, 0xCu);
          sub_100004F84(v73, &unk_100AD4BB0);

          v69 = v70;
          v70 = v74;
        }

        sub_1007E33D4(3u, 1, v83);
        goto LABEL_33;
      }
    }

    v48 = v63;
    v44 = v77;
  }

  while (1)
  {
    v47 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v47 >= v60)
    {
      goto LABEL_64;
    }

    v62 = *(v45 + 8 * v47);
    ++v61;
    if (v62)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_10004E570(uint64_t a1)
{
  v2 = v1;
  v101 = *v1;
  v4 = sub_1000F24EC(&qword_100AF6E60);
  __chkstk_darwin(v4 - 8);
  v6 = v89 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v100 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v103 = v89 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v89 - v14;
  __chkstk_darwin(v13);
  v17 = v89 - v16;
  v107 = v18;
  v108 = v8;
  v102 = *(v8 + 16);
  v102(v89 - v16, &v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger]);
  v19 = *&v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_sceneLogID + 8];
  v104 = *&v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_sceneLogID];
  v105 = v19;
  v20 = *&v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_sceneLogID + 24];
  v106 = *&v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_sceneLogID + 16];
  v21 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window;
  v22 = *&v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window];
  if (!v22)
  {

    goto LABEL_10;
  }

  v23 = [v22 windowScene];
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v25 = *&v2[v21];
  if (!v25 || (v26 = [v25 rootViewController]) == 0)
  {

    goto LABEL_10;
  }

  v27 = v26;
  type metadata accessor for AppSecureAccessViewController();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

LABEL_10:

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v110 = v34;
      *v33 = 136315138;
      v35 = static String._fromSubstring(_:)();
      v37 = v36;

      v38 = sub_100008458(v35, v37, &v110);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "onAppUnlocked[%s]: Attempted to process an app unlock event before the window was ready.", v33, 0xCu);
      sub_10000BA7C(v34);
    }

    else
    {
    }

    return (*(v108 + 8))(v17, v107);
  }

  v95 = v28;
  v98 = v27;
  sub_1000082B4(a1, v6, &qword_100AF6E60);
  v29 = type metadata accessor for Notification();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v6, 1, v29) == 1)
  {
    sub_100004F84(v6, &qword_100AF6E60);
    v110 = 0u;
    v111 = 0u;
LABEL_20:
    sub_100004F84(&v110, &qword_100AD13D0);
    goto LABEL_21;
  }

  Notification.object.getter();
  (*(v30 + 8))(v6, v29);
  if (!*(&v111 + 1))
  {
    goto LABEL_20;
  }

  v40 = sub_1000065A8(0, &qword_100AD5F60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v41 = 0;
    goto LABEL_22;
  }

  v41 = v109;
  v42 = v24;
  v97 = v40;
  v99 = v42;
  v43 = v41;
  v44 = static NSObject.== infix(_:_:)();
  v97 = v43;

  if (v44)
  {

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v110 = v48;
      *v47 = 136315138;
      v49 = static String._fromSubstring(_:)();
      v51 = v50;

      v52 = sub_100008458(v49, v51, &v110);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "onAppUnlocked[%s]: Ignoring self-posted willUnlock notification.", v47, 0xCu);
      sub_10000BA7C(v48);
    }

    else
    {
    }

    return (*(v108 + 8))(v17, v107);
  }

LABEL_22:
  v99 = v41;
  v53 = v107;
  v54 = v102;
  (v102)(v15, v17, v107);
  v54(v103, v15, v53);
  v55 = v108;
  v56 = *(v108 + 80);
  v57 = (v56 + 16) & ~v56;
  v92 = v9 + 7;
  v97 = ((v9 + 7 + v57) & 0xFFFFFFFFFFFFFFF8);
  v96 = (v97 + 39) & 0xFFFFFFFFFFFFFFF8;
  v94 = v56;
  v58 = swift_allocObject();
  v60 = *(v55 + 32);
  v59 = v55 + 32;
  v93 = v60;
  v60(v58 + v57, v15, v53);
  v61 = &v97[v58];
  v62 = v105;
  *v61 = v104;
  *(v61 + 1) = v62;
  *(v61 + 2) = v106;
  *(v61 + 3) = v20;
  v97 = v58;
  *(v58 + v96) = v24;
  v63 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_unlockRequestedWhileWindowInactive;
  LODWORD(v58) = v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_unlockRequestedWhileWindowInactive];

  v64 = v24;
  v65 = v64;
  if (v58 == 1 && ![v64 activationState])
  {
    v2[v63] = 0;
    v84 = v99;
    if (qword_100ACF9E8 != -1)
    {
      swift_once();
    }

    v85 = v103;
    sub_100188D20(qword_100B2F488, v103, v104, v105, v106, v20, v65);

    v86 = *(v108 + 8);
    v87 = v85;
    v88 = v107;
    v86(v87, v107);
    return (v86)(v17, v88);
  }

  else
  {
    v96 = v59;
    v66 = v94;
    v67 = v99;
    if (!v99)
    {
      if (qword_100ACF9E0 != -1)
      {
        swift_once();
      }

      sub_100188D20(qword_100B2F480, v103, v104, v105, v106, v20, v65);
    }

    v90 = v67 == 0;
    v68 = *(v108 + 8);
    v108 += 8;
    v91 = v68;
    v69 = v103;
    v103 = v65;
    v70 = v107;
    v68(v69, v107);
    v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_isNewAppLaunch] = 0;
    v71 = &v2[OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp];
    *v71 = 0;
    v71[8] = 1;
    v72 = swift_allocObject();
    v89[1] = v72;
    swift_weakInit();
    v73 = v100;
    (v102)(v100, v17, v70);
    v74 = (v66 + 40) & ~v66;
    v75 = (v92 + v74) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 39) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = v72;
    *(v77 + 24) = v90;
    v78 = v103;
    *(v77 + 32) = v103;
    v93(v77 + v74, v73, v70);
    v79 = (v77 + v75);
    v80 = v105;
    *v79 = v104;
    v79[1] = v80;
    v79[2] = v106;
    v79[3] = v20;
    v81 = (v77 + v76);
    v82 = v97;
    *v81 = sub_10018B534;
    v81[1] = v82;
    *(v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8)) = v101;
    v83 = v78;

    sub_10005C4D8(0, 1, sub_10018B5E4, v77);

    v91(v17, v107);
  }
}

uint64_t sub_10004EFB8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10004F068()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_10004F2E8()
{
  v1 = sub_1000F24EC(&qword_100AD4D20);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  result = *(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  if (result)
  {
    result = [result rootViewController];
    if (result)
    {
      v5 = result;
      type metadata accessor for SceneSplitViewController(0);
      if (swift_dynamicCastClass())
      {
        sub_1002E8160(v3);

        v6 = type metadata accessor for SceneSplitViewController.Content(0);
        if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
        {
          sub_100004F84(v3, &qword_100AD4D20);
        }

        else
        {
          v7 = *&v3[*(v6 + 20)];
          sub_10054C06C(v3, type metadata accessor for SceneSplitViewController.Content);
          type metadata accessor for JournalTimelineViewController(0);
          result = swift_dynamicCastClass();
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

void sub_10004F468()
{
  v1 = sub_1000F24EC(&qword_100AD4D20);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  if (v4)
  {
    v15 = [v4 rootViewController];
    if (v15)
    {
      type metadata accessor for SceneSplitViewController(0);
      if (swift_dynamicCastClass())
      {
        v5 = v0;
        sub_1002E8160(v3);

        v6 = type metadata accessor for SceneSplitViewController.Content(0);
        if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
        {
          sub_100004F84(v3, &qword_100AD4D20);
          return;
        }

        v8 = *&v3[*(v6 + 20)];
        sub_10054C06C(v3, type metadata accessor for SceneSplitViewController.Content);
        type metadata accessor for JournalTimelineViewController(0);
        if (swift_dynamicCastClass())
        {
          v9 = *(sub_1000144C8() + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_isNewAppLaunch);

          if (v9)
          {
            v10 = 1;
          }

          else
          {
            v11 = *(v5 + OBJC_IVAR____TtC7Journal13SceneDelegate____lazy_storage___accessManager) + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp;
            if (*(v11 + 8))
            {
              v10 = 0;
            }

            else
            {
              v12 = *v11;
              v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
              if (v13 < v12)
              {
                __break(1u);
                return;
              }

              v10 = v13 - v12 > 0xDF84757FFLL;
            }
          }

          sub_100055D14(v10);
        }
      }

      else
      {
        v7 = v15;
      }
    }
  }
}

uint64_t sub_10004F698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004F700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004F760(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10007E510;

  return sub_10004FA04(a2);
}

uint64_t sub_10004F808()
{
  static Task<>.checkCancellation()();
  v4 = (*((swift_isaMask & **(v0 + 16)) + 0x68) + **((swift_isaMask & **(v0 + 16)) + 0x68));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10007E88C;
  v2 = *(v0 + 72);

  return v4(v2, 0, 0);
}

uint64_t sub_10004FA04(uint64_t a1)
{
  v2[3] = v1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for AssetType();
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for ProtectedData.ProtectedDataState();
  v2[10] = v6;
  v2[11] = *(v6 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[14] = v7;
  v2[15] = *(v7 - 8);
  v2[16] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v2[17] = v8;
  v2[18] = *(v8 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v2[21] = v9;
  v2[22] = v11;

  return _swift_task_switch(sub_10005B15C, v9, v11);
}

__n128 sub_10004FC88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004FCAC()
{
  v1 = *(*v0 + 104);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100057C04(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  v3 = *(*v0 + 120);
  v4 = _s8MetadataC5InputOMa();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

void sub_10004FE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004FE4C()
{
  if (!qword_100AF3C90)
  {
    sub_1000F2A18(&unk_100AE4870);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AF3C90);
    }
  }
}

uint64_t sub_10004FECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004FF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10004FFB0()
{
  sub_100050048();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100050048()
{
  if (!qword_100AEAA90)
  {
    type metadata accessor for UIView.Invalidations.IntrinsicContentSize();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEAA90);
    }
  }
}

char *sub_10005018C(char *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v11 - 8);
  v82 = &v79 - v12;
  v13 = type metadata accessor for JournalFeatureFlags();
  v14 = *(v13 - 8);
  v88 = v13;
  v89 = v14;
  __chkstk_darwin(v13);
  v87 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for UTType();
  v16 = *(v85 - 8);
  v17 = __chkstk_darwin(v85);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v79 - v20;
  *&v5[OBJC_IVAR____TtC7Journal14CanvasTextView_canvasViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v22 = &v5[OBJC_IVAR____TtC7Journal14CanvasTextView_resizingViewBeginSize];
  *v22 = 0;
  v22[1] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments] = _swiftEmptyArrayStorage;
  v23 = &v5[OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v5[OBJC_IVAR____TtC7Journal14CanvasTextView_snapToValidSize] = 1;
  v24 = OBJC_IVAR____TtC7Journal14CanvasTextView_externalDataManager;
  type metadata accessor for ExternalAssetDataManager();
  *&v5[v24] = swift_allocObject();
  v25 = OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for PlatformCanvasToolPicker()) init];
  v26 = &v5[OBJC_IVAR____TtC7Journal14CanvasTextView_navBarHeight];
  *v26 = 0;
  v26[8] = 1;
  v5[OBJC_IVAR____TtC7Journal14CanvasTextView_addingBottomCanvas] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator] = 0;
  v5[OBJC_IVAR____TtC7Journal14CanvasTextView_showDrawingToolsPending] = 0;
  v27 = &v5[OBJC_IVAR____TtC7Journal14CanvasTextView_lastAppliedContentSize];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v5[OBJC_IVAR____TtC7Journal14CanvasTextView_ignoreCanvasRemovalRequests] = 0;
  v28 = type metadata accessor for CanvasTextView();
  v91.receiver = v5;
  v91.super_class = v28;
  v86 = a1;
  v29 = objc_msgSendSuper2(&v91, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 systemBackgroundColor];
  [v31 setBackgroundColor:v32];

  v33 = v31;
  [v33 setFindInteractionEnabled:1];
  v34 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v33];

  [v33 addInteraction:v34];
  v35 = [objc_allocWithZone(UIPasteConfiguration) init];
  v90 = v35;
  sub_1000065A8(0, &qword_100ADC668);
  [v35 addTypeIdentifiersForAcceptingClass:swift_getObjCClassFromMetadata()];
  sub_1000065A8(0, &qword_100AE4890);
  [v35 addTypeIdentifiersForAcceptingClass:swift_getObjCClassFromMetadata()];
  sub_1000065A8(0, &qword_100AD13A0);
  [v35 addTypeIdentifiersForAcceptingClass:swift_getObjCClassFromMetadata()];
  sub_1000F24EC(&unk_100AD9A60);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100940050;
  static UTType.heic.getter();
  v37 = UTType.identifier.getter();
  v39 = v38;
  v80 = v16;
  v81 = v21;
  v40 = *(v16 + 8);
  v41 = v21;
  v42 = v85;
  v40(v41, v85);
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  static UTType.jpeg.getter();
  v43 = UTType.identifier.getter();
  v45 = v44;
  v40(v19, v42);
  *(v36 + 48) = v43;
  *(v36 + 56) = v45;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 addAcceptableTypeIdentifiers:isa];

  v47 = v88;
  v48 = v89;
  v49 = *(v89 + 104);
  v50 = v87;
  v84 = enum case for JournalFeatureFlags.richCanvas(_:);
  v83 = v49;
  v49(v87);
  LOBYTE(v36) = JournalFeatureFlags.isEnabled.getter();
  v51 = v48 + 8;
  v52 = *(v48 + 8);
  v89 = v51;
  v52(v50, v47);
  if (v36)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100940080;
    v54 = v52;
    v55 = v42;
    (*(v80 + 56))(v82, 1, 1, v42);
    v56 = v81;
    UTType.init(importedAs:conformingTo:)();
    v57 = UTType.identifier.getter();
    v59 = v58;
    v60 = v55;
    v52 = v54;
    v40(v56, v60);
    *(v53 + 32) = v57;
    *(v53 + 40) = v59;
    v61 = Array._bridgeToObjectiveC()().super.isa;

    [v90 addAcceptableTypeIdentifiers:v61];
  }

  [v33 setPasteConfiguration:v90];
  [v33 setTextDragDelegate:v33];
  v62 = v33;
  [v62 setTextDropDelegate:v62];
  v63 = [objc_allocWithZone(UIDropInteraction) initWithDelegate:v62];

  [v62 addInteraction:v63];
  v64 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFB0 != -1)
  {
    swift_once();
  }

  [v64 addObserver:v62 selector:? name:? object:?];

  v65 = [v62 traitCollection];
  v66 = [v65 userInterfaceIdiom];

  v67 = v86;
  if (v66 == 5)
  {
    v68 = [objc_allocWithZone(type metadata accessor for TouchDetectionRecognizer()) initWithTarget:v62 action:"onTouchesDetected:"];
    v69 = String._bridgeToObjectiveC()();
    [v68 setName:v69];

    [v62 addGestureRecognizer:v68];
  }

  v70 = v87;
  v71 = v88;
  v83(v87, v84, v88);
  v72 = JournalFeatureFlags.isEnabled.getter();
  v52(v70, v71);
  if ((v72 & 1) != 0 && (v73 = [v62 textLayoutManager]) != 0 && (v74 = v73, v75 = objc_msgSend(v73, "textContentManager"), v74, v75))
  {
    objc_opt_self();
    v76 = swift_dynamicCastObjCClass();
    if (v76)
    {
      v77 = v67;
      [v76 setSupportsAnchoredTextAttachments:1];
      *(*&v62[OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker] + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate + 8) = &off_100A635B8;
      swift_unknownObjectWeakAssign();
      v67 = [v62 textStorage];
      [v67 setDelegate:v62];

      v90 = v75;
      v75 = v77;
    }

    v90 = v67;
    v67 = v62;
  }

  else
  {
    v75 = v62;
  }

  return v62;
}

id sub_100050B80()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setDataDetectorTypes:-1];
  v31 = 0;
  result = [v0 attributedText];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  result = [v1 attributedText];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result length];

  v6 = swift_allocObject();
  *(v6 + 16) = &v31;
  *(v6 + 24) = &v31 + 1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1007C82A4;
  *(v7 + 24) = v6;
  v29 = sub_1007C82F8;
  v30 = v7;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v27 = sub_10007F714;
  v28 = &unk_100A7E940;
  v8 = _Block_copy(&aBlock);

  [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v8}];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  if ((v31 & 1) == 0)
  {
    v10 = [v1 traitCollection];
    v11 = sub_10010BBF4(v10);

    [v1 setFont:v11];
  }

  if ((v31 & 0x100) != 0)
  {
    goto LABEL_9;
  }

  if (qword_100AD0AC0 != -1)
  {
    goto LABEL_19;
  }

LABEL_8:
  [v1 setTextColor:qword_100B31098];
LABEL_9:
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setSupportsAdaptiveImageGlyph:0];
  [v1 setAllowsEditingTextAttributes:1];
  [v1 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v12 = [v1 textContainer];
  [v12 setLineFragmentPadding:0.0];

  v13 = [v1 textLayoutManager];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 textContentManager];

    if (v15)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        [v16 setDelegate:v1];
      }
    }
  }

  v17 = sub_1000065A8(0, &qword_100AD2A80);
  v18 = sub_100047F28();
  v28 = v17;
  *&aBlock = v18;
  v19 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = v20;
  if (v28)
  {
    sub_10002432C(&aBlock, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v24, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v25 = v20;
  }

  else
  {
    sub_100004F84(&aBlock, &qword_100AD13D0);
    sub_100080694(v24);
    sub_100004F84(v24, &qword_100AD13D0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 setTypingAttributes:isa];

  sub_100051A70();
  sub_1000F24EC(&unk_100AEBEC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100940080;
  *(v23 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v23 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

id sub_100051130()
{
  result = [objc_opt_self() labelColor];
  qword_100B31098 = result;
  return result;
}

id sub_100051190(double a1, double a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
  if (v9)
  {
    [v9 bounds];
    Height = CGRectGetHeight(v21);
  }

  else
  {
    Height = 0.0;
  }

  v11 = ceil(Height + a1);
  [v4 textContainerInset];
  if (v15 != v11 || v12 != a2 || v13 != a3 || v14 != a4)
  {
    v20.receiver = v4;
    v20.super_class = type metadata accessor for JournalTextView();
    objc_msgSendSuper2(&v20, "setTextContainerInset:", v11, a2, a3, a4);
  }

  [*&v4[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint] setConstant:a1];
  [*&v4[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint] setConstant:a2];
  return [*&v4[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint] setConstant:a4];
}

id sub_100051308()
{
  isa = v0;
  result = [(objc_class *)v0 tabStops];
  if (result)
  {
    v3 = result;
    sub_100047F78();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = isa;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;
      v8 = objc_allocWithZone(NSTextTab);
      type metadata accessor for OptionKey(0);
      sub_100047FD8();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v8 initWithTextAlignment:2 location:isa options:26.0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isa = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (i == 1)
      {
LABEL_10:
        isa = v19;
        break;
      }

      v9 = 36.0;
      v10 = 5;
      while (1)
      {
        v11 = v10 - 4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(v4 + 8 * v10);
        }

        v13 = v12;
        v14 = v10 - 3;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 alignment];
        v16 = objc_allocWithZone(NSTextTab);
        v17 = Dictionary._bridgeToObjectiveC()().super.isa;
        [v16 initWithTextAlignment:v15 location:v17 options:v9];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        isa = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (isa >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v9 + 10.0;
        ++v10;
        if (v14 == i)
        {
          goto LABEL_10;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v18 = Array._bridgeToObjectiveC()().super.isa;

    [(objc_class *)isa setTabStops:v18];

    return [(objc_class *)isa setDefaultTabInterval:10.0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000516C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051798(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000517E0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10005196C(a1, v2);
}

char *sub_100051870(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AF4128);
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

unint64_t sub_10005196C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
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

void sub_100051A70()
{
  v1 = [v0 textLayoutManager];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 textViewportLayoutController];

    if (v3)
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8[4] = sub_100095FA4;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100095DB0;
      v8[3] = &unk_100A7E8C8;
      v5 = _Block_copy(v8);

      [v3 setRenderingSurfaceUpdater:v5];
      _Block_release(v5);
      v6 = _UITextViewportLayoutControllerDidLayoutNotification;
      v7 = [objc_opt_self() defaultCenter];
      [v7 addObserver:v0 selector:"viewportDidLayout" name:v6 object:v3];
    }
  }
}

uint64_t sub_100051BE0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_100051C18(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor] = 0;
  *&v5[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint] = 0;
  v5[OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController] = 0;
  *&v5[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry] = 0;
  *&v5[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView] = 0;
  v11 = OBJC_IVAR____TtC7Journal15JournalTextView_blockQuoteLayerView;
  type metadata accessor for BlockQuoteLayerView();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear] = 0;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for JournalTextView();
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  [v12 setPasteDelegate:v12];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  sub_100050B80();
  if (qword_100AD0838 != -1)
  {
    swift_once();
  }

  v16 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityLabel:v16];

  sub_1000F24EC(&unk_100AEBEC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100940050;
  *(v17 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v17 + 48) = type metadata accessor for UITraitLegibilityWeight();
  *(v17 + 56) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v14;
}

void sub_100051E78()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905030;
  v1._countAndFlagsBits = 0x206C616E72756F4ALL;
  v1._object = 0xEC00000074786554;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C50 = v3;
}

id sub_100051F80()
{
  v1 = OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade);
  }

  else
  {
    sub_1000F24EC(&unk_100AD4780);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100941D60;
    v5 = objc_opt_self();
    *(v4 + 32) = [v5 clearColor];
    *(v4 + 40) = [v5 blackColor];
    static UnitPoint.leading.getter();
    static UnitPoint.trailing.getter();
    v6 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1000521E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD47A0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100052258(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000522A0()
{
  result = qword_100AD5D08;
  if (!qword_100AD5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D08);
  }

  return result;
}

void sub_100052340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F24EC(&qword_100ADB7D8);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = type metadata accessor for JournalMO();
  v29[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  if (v3 == &type metadata for String)
  {
    v24 = (v5 + 63) >> 6;

    v25 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v26 = v25;
LABEL_31:
      sub_10001F45C(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v26 << 6)), v29);
      v27.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100177B94(v29);
      v28 = swift_dynamicCastClass();
      if (!v28)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1002D1FF8(v28);
      v25 = v26;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v26);
      ++v25;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = (v2 + 7);

    v10 = 0;
    while (v7)
    {
LABEL_16:
      sub_10001F45C(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v10 << 6)), v29);
      v13.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100177B94(v29);
      v14 = swift_dynamicCastClass();
      if (!v14)
      {

        return;
      }

      v15 = v14;
      v16 = NSObject._rawHashValue(seed:)(v2[5]);
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*&v9[8 * (v18 >> 6)]) == 0)
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
          v23 = *&v9[8 * v19];
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*&v9[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v9[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
      *(v2[6] + 8 * v11) = v15;
      ++v2[2];
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for JournalEntryMetadataButton.ContentView()
{
  result = qword_100ADED20;
  if (!qword_100ADED20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005269C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100052704()
{
  v1 = v0;
  v2 = type metadata accessor for CKSyncEngine.Event();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v7 = 0x6470556574617473;
    goto LABEL_16;
  }

  if (v6 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v7 = 0x43746E756F636361;
    goto LABEL_16;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v7 = 0xD000000000000016;
    goto LABEL_16;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v7 = 0xD000000000000018;
    goto LABEL_16;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    v7 = 0xD000000000000013;
    goto LABEL_16;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v8 = 5;
LABEL_13:
    v7 = v8 | 0xD000000000000010;
    goto LABEL_16;
  }

  if (v6 == enum case for CKSyncEngine.Event.willFetchChanges(_:))
  {
    v7 = 0xD000000000000010;
    goto LABEL_16;
  }

  if (v6 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
  {
    v8 = 10;
    goto LABEL_13;
  }

  if (v6 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
  {
    v8 = 9;
    goto LABEL_13;
  }

  v7 = 0x6863746546646964;
  if (v6 != enum case for CKSyncEngine.Event.didFetchChanges(_:))
  {
    if (v6 == enum case for CKSyncEngine.Event.willSendChanges(_:))
    {
      v7 = 0x646E65536C6C6977;
    }

    else if (v6 == enum case for CKSyncEngine.Event.didSendChanges(_:))
    {
      v7 = 0x43646E6553646964;
    }

    else if (v6 == enum case for CKSyncEngine.Event.willFetchAsset(_:))
    {
      v7 = 0x637465466C6C6977;
    }

    else if (v6 == enum case for CKSyncEngine.Event.fetchedAsset(_:))
    {
      v7 = 0x4164656863746566;
    }

    else if (v6 != enum case for CKSyncEngine.Event.didFetchAsset(_:))
    {
      v7 = 0x6E776F6E6B6E75;
    }
  }

LABEL_16:
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_100052B10()
{
  v28 = v0;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
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
    v7 = v0[7];
    v8 = *(qword_100B2F9E0 + 24);
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    v9 = type metadata accessor for CKSyncEngine.State.Serialization();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    v10 = &v8[OBJC_IVAR____TtC7Journal13CloudKitStack_pendingSyncEngineStateTokenMutex];
    os_unfair_lock_lock(&v8[OBJC_IVAR____TtC7Journal13CloudKitStack_pendingSyncEngineStateTokenMutex]);
    v11 = *(sub_1000F24EC(&qword_100AE5DD0) + 28);
    sub_100049BC8(v10 + v11);
    sub_100052EAC(v7, v10 + v11);
    os_unfair_lock_unlock(v10);

    sub_100049BC8(v7);
  }

  else
  {
    if (qword_100ACFEC8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100AE6C10);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[5];
      v15 = v0[6];
      v18 = v0[3];
      v17 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136446210;
      (*(v16 + 16))(v15, v18 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_sessionID, v17);
      sub_100500278();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v16 + 8))(v15, v17);
      v24 = sub_100008458(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s (handleStateUpdate) isProtectedDataAvailable false", v19, 0xCu);
      sub_10000BA7C(v20);
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100052EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADFA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AudioAsset()
{
  result = qword_100AD8F40;
  if (!qword_100AD8F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100052FA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_photoMemoriesBannerView;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_photoMemoriesBannerView);
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  v6 = &unk_100AEB000;
  if (v1[OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner] == 1)
  {
    if (v4)
    {
    }

    else
    {
      type metadata accessor for CanvasPhotosMemoriesBanner();
      v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v8 = [v7 init];
      v9 = *(v2 + v3);
      *(v2 + v3) = v8;

      v4 = *(v2 + v3);
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    v10 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetStackView);
    v11 = v4;
    v12 = [v10 arrangedSubviews];
    sub_1000065A8(0, &qword_100ADC670);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView);
    if (v14)
    {
      v15 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView);
    }

    else
    {
      v15 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView);
      v14 = 0;
    }

    v16 = v14;
    v17 = sub_100691390(v15, v13);
    v19 = v18;

    if (v19)
    {

      p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      v6 = &unk_100AEB000;
    }

    else
    {
      v20 = *(v11 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing);
      *(v11 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing) = 0;
      if (v20)
      {
        sub_10080B524();
      }

      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      [v11 setHidden:0];
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_67;
      }

      v6 = &unk_100AEB000;
      [v10 insertArrangedSubview:v11 atIndex:(v17 - 1) & ~((v17 - 1) >> 63)];
    }
  }

  else
  {

    if (v4)
    {
      [v4 setHidden:1];
    }
  }

LABEL_18:
  v21 = sub_100049F2C();
  if (v21)
  {
    sub_10053256C(v21);
    v23 = v22;

    v25 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView;
    v26 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView);
    v27 = &selRef_sharedScheduler;
    if (v26 || (type metadata accessor for CanvasReflectionPromptView(), v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v29 = *(v2 + v25), *(v2 + v25) = v28, v29, (v26 = *(v2 + v25)) != 0))
    {
      v30 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetStackView);
      v31 = v26;
      v32 = [v30 arrangedSubviews];
      sub_1000065A8(0, &qword_100ADC670);
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = sub_100691390(*(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView), v33);
      v36 = v35;

      if (v36)
      {

        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
        v6 = &unk_100AEB000;
        goto LABEL_30;
      }

      v38 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_photoMemoriesBannerView);
      if (v38)
      {
        v39 = v38;
        v40 = [v30 arrangedSubviews];
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = sub_100691390(v39, v41);
        LOBYTE(v40) = v43;

        if ((v40 & 1) == 0)
        {
          v34 = v42 + 2;
          if (__OFADD__(v42, 2))
          {
LABEL_68:
            __break(1u);
            return;
          }
        }
      }

      *&v31[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_journalEntry] = v1;
      swift_retain_n();

      sub_10043B5F4();

      v44 = v31[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing];
      v31[OBJC_IVAR____TtC7Journal26CanvasReflectionPromptView_isEditing] = 0;
      sub_10043AAF8(v44);
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      [v31 setHidden:0];
      if (!__OFSUB__(v34, 1))
      {
        [v30 insertArrangedSubview:v31 atIndex:(v34 - 1) & ~((v34 - 1) >> 63)];

        v6 = &unk_100AEB000;
        v27 = &selRef_sharedScheduler;
        goto LABEL_30;
      }

      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

  else
  {
    v37 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView);
    v27 = &selRef_sharedScheduler;
    if (v37)
    {
      [v37 p:1 ivar:?lyt[418]];
    }
  }

LABEL_30:
  v45 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView);
  *&v45[OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry] = v1;
  swift_retain_n();

  sub_1000542E8();
  sub_100053CE0(0);

  v46 = *&v1[OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets];
  if (v46 >> 62)
  {
LABEL_64:
    v47 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v45 p:v47 == 0 ivar:?lyt[418]];
  if ((sub_10005AAB0(128) & 1) == 0 || (v48 = *&v1[OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset]) == 0)
  {

    v53 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView;
    v54 = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView);
    if (!v54)
    {
      goto LABEL_48;
    }

    [v54 p:1 ivar:?lyt[418]];
    v55 = *(v2 + v53);
    if (!v55)
    {
      goto LABEL_48;
    }

    v56 = &v55[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
    v57 = *&v55[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
    v58 = *&v55[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8];
    *v56 = 0;
    *(v56 + 1) = 0;
    if (v57)
    {
      ObjectType = swift_getObjectType();
      v60 = (*(v58 + 80))(ObjectType, v58);
      v61 = v55;
    }

    else
    {
      v75 = v55;
    }

    sub_1007FF930();

    goto LABEL_47;
  }

  v49 = v27;
  v50 = *&v1[OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset + 8];
  v51 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView;
  p_ivar_lyt = *(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView);
  if (p_ivar_lyt)
  {
    v52 = v48;
LABEL_41:
    *(p_ivar_lyt + OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry) = v1;
    v68 = p_ivar_lyt;

    v69 = (v68 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset);
    p_ivar_lyt = *(v68 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset);
    v70 = *(v68 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8);
    *v69 = v48;
    v69[1] = v50;
    v55 = v48;
    if (sub_1007FDF38(p_ivar_lyt, v70, v48, v50))
    {
      v71 = objc_opt_self();
      v72 = swift_allocObject();
      *(v72 + 16) = v68;
      v82[4] = sub_100603A58;
      v82[5] = v72;
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 1107296256;
      v82[2] = sub_100006C7C;
      v82[3] = &unk_100A75CC8;
      v73 = _Block_copy(v82);
      v74 = v68;

      [v71 animateWithDuration:1 delay:v73 options:0 animations:0.11 completion:0.0];
      _Block_release(v73);
      [*(v74 + OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView) setClipsToBounds:1];
      [*(v74 + OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView) setClipsToBounds:1];
    }

    else
    {
      sub_1007FF930();
    }

    v6 = &unk_100AEB000;
    v27 = v49;
    *(v68 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate + 8) = &off_100A75C48;
    swift_unknownObjectWeakAssign();
    sub_100804680();
    [(SEL *)v68 setHidden:0];
    [*(v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetStackView) addArrangedSubview:v68];

LABEL_47:
    goto LABEL_48;
  }

  type metadata accessor for SlimAssetView();
  v62 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v63 = v48;
  v64 = [v62 init];
  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = [v64 heightAnchor];
  v66 = [v65 constraintEqualToConstant:32.0];

  [v66 setActive:1];
  v67 = *(v2 + v51);
  *(v2 + v51) = v64;

  p_ivar_lyt = *(v2 + v51);
  if (p_ivar_lyt)
  {
    goto LABEL_41;
  }

  v6 = &unk_100AEB000;
  v27 = v49;
LABEL_48:
  v45 = *(v2 + v6[88]);
  v76 = [v45 v27[95]];
  sub_1000065A8(0, &qword_100ADC670);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = (v2 & 0xFFFFFFFFFFFFFF8);
  if (v2 >> 62)
  {
    v77 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v77 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = 0;
  v27 = (v2 & 0xC000000000000001);
  do
  {
    v79 = v78;
    if (v77 == v78)
    {
      break;
    }

    if (v27)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v78 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v80 = *(v2 + 8 * v78 + 32);
    }

    v81 = v80;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    p_ivar_lyt = [v80 isHidden];

    v78 = v79 + 1;
  }

  while ((p_ivar_lyt & 1) != 0);

  [v45 setHidden:v77 == v79];
}

uint64_t sub_1000538E8()
{

  return swift_deallocObject();
}

void sub_100053920()
{
  v1 = sub_1000F24EC(&unk_100AE9B38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (!v8)
  {
    return;
  }

  v9 = *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid) == 1)
  {
    if (v10 < 6)
    {
      return;
    }
  }

  else
  {
    v11 = qword_100AD0A28;

    if (v11 != -1)
    {
      swift_once();
    }

    if (qword_100B30F70 >= v10)
    {

      return;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
    {
      __break(1u);
      return;
    }

    v12 = *(v9 + 64);
  }

  v25 = v12;

  v13 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource;
  v14 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource);
  if (v14)
  {
    v15 = v14;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    (*(v2 + 32))(v7, v4, v1);
    sub_1000F24EC(&unk_100AE1A40);
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100940080;
    (*(v17 + 16))(v19 + v18, &v25[OBJC_IVAR____TtC7Journal5Asset_id], v16);
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v19);

    v20 = *(v0 + v13);
    if (v20)
    {
      v21 = v20;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      v22 = v21;
    }

    else
    {
      v22 = v25;
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v23 = v25;
  }
}

uint64_t sub_100053CE0(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AE9B38);
  v35 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = (&v30 - v13);
  v15 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (v15)
  {
    v31 = a1;
    v16 = *(v15 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    v30 = OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource;
    v17 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridDataSource);
    if (v17)
    {

      v18 = v17;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      (*(v35 + 32))(v14, v11, v8);
      NSDiffableDataSourceSnapshot.deleteAllItems()();
    }

    else
    {
      sub_100590FC8();
      sub_100034250(&qword_100AD4B40, &type metadata accessor for UUID);

      NSDiffableDataSourceSnapshot.init()();
    }

    v19 = v16;
    v39 = v16;
    if (v16 >> 62)
    {
      goto LABEL_31;
    }

    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v32 = v14;
      v33 = v8;
      v34 = v2;
      if (!v20)
      {
        break;
      }

      v21 = 0;
      v37 = v19 & 0xFFFFFFFFFFFFFF8;
      v38 = v19 & 0xC000000000000001;
      v36 = v5 + 32;
      v14 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v38)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v37 + 16))
          {
            goto LABEL_30;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v2 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        (*(v5 + 16))(v7, v22 + OBJC_IVAR____TtC7Journal5Asset_id, v4);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100055CEC(0, v14[2] + 1, 1, v14);
        }

        v8 = v14[2];
        v24 = v14[3];
        if (v8 >= v24 >> 1)
        {
          v14 = sub_100055CEC(v24 > 1, v8 + 1, 1, v14);
        }

        v14[2] = v8 + 1;
        (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, v4);
        ++v21;
        v19 = v39;
        if (v2 == v20)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v39;
    }

    v14 = &_swiftEmptyArrayStorage;
LABEL_21:

    v41 = v14;
    sub_1000F24EC(&qword_100AD4D90);
    sub_10000B58C(&qword_100AE42B0, &qword_100AD4D90);
    sub_100034250(&qword_100AD4B40, &type metadata accessor for UUID);
    Collection<>.uniqued()();

    v26 = v32;
    v25 = v33;
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A564B8);
    v40 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v27 = *(v34 + v30);
    if (v31)
    {
      v28 = v35;
      if (v27)
      {
        v29 = v27;
        dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
LABEL_26:
      }
    }

    else
    {
      v28 = v35;
      if (v27)
      {
        v29 = v27;
        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
        goto LABEL_26;
      }
    }

    sub_10007A1D8();
    return (*(v28 + 8))(v26, v25);
  }

  return result;
}

Swift::Int sub_100054220()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100054264()
{
  result = qword_100ADF5D0;
  if (!qword_100ADF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF5D0);
  }

  return result;
}

void sub_1000542E8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_mosaicLayout);
  v3 = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == 1 && _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = 2;
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = sub_100088B38(v6);

  v8 = v7;
LABEL_11:
  v9 = v2[OBJC_IVAR____TtC7Journal12MosaicLayout_sizeType];
  v2[OBJC_IVAR____TtC7Journal12MosaicLayout_sizeType] = v8;
  if ((sub_10003C2FC(v8, v9) & 1) == 0)
  {
    [v2 invalidateLayout];
  }

  v10 = 0.0;
  if (!*(v1 + v3))
  {
    goto LABEL_16;
  }

  v11 = sub_100049F2C();
  if (v11)
  {
    sub_10053256C(v11);
    v13 = v12;
    v15 = v14;

LABEL_16:
    v16 = 1;
    v17 = 0.0;
    goto LABEL_17;
  }

  v32 = *(v1 + v3);
  if (!v32 || (*(v32 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) & 1) != 0)
  {
    goto LABEL_16;
  }

  v16 = 0;
  v10 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_outerCornerRadius);
  v17 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_outerCornerRadius + 8);
LABEL_17:
  v18 = &v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius];
  v19 = *&v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius];
  v20 = *&v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius + 8];
  v21 = v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius + 16];
  *v18 = v10;
  v18[1] = v17;
  *(v18 + 16) = v16;
  if (v16)
  {
    if (v21)
    {
      goto LABEL_26;
    }
  }

  else if ((v21 & 1) == 0 && v10 == v19 && v17 == v20)
  {
    goto LABEL_26;
  }

  [v2 invalidateLayout];
LABEL_26:
  v23 = 0.0;
  if (*(v1 + v3) && (, v24 = sub_10005AAB0(128), , (v24 & 1) == 0))
  {
    v25 = 0;
    v23 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_outerCornerRadius);
    v26 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_outerCornerRadius + 8);
  }

  else
  {
    v25 = 1;
    v26 = 0.0;
  }

  v27 = &v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius];
  v28 = *&v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius];
  v29 = *&v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius + 8];
  v30 = v2[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius + 16];
  *v27 = v23;
  v27[1] = v26;
  *(v27 + 16) = v25;
  if (v25)
  {
    if (v30)
    {
      return;
    }

    goto LABEL_40;
  }

  if ((v30 & 1) != 0 || (v23 == v28 ? (v31 = v26 == v29) : (v31 = 0), !v31))
  {
LABEL_40:

    [v2 invalidateLayout];
  }
}

id sub_100054650()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC7Journal18JournalDividerView_dividerView];
  v4 = [v1 separatorColor];
  [v3 setBackgroundColor:v4];

  [v0 addSubview:v3];
  [v0 setClipsToBounds:0];
  LODWORD(v5) = 1148846080;

  return [v0 setContentCompressionResistancePriority:1 forAxis:v5];
}

uint64_t sub_100054754(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000F24EC(&qword_100AD47A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000547E4()
{
  v159 = v0;
  v1 = v0;
  if (qword_100AD0048 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[32];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v1[2];
  sub_10000617C(v1[37], qword_100AEA028);
  (*(v2 + 16))(v3);
  OSSignposter.init(logger:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v8 = *(v5 + 16);
  v8(v4, v7, v6);
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  v153 = v8;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v11 = v1[32];
    v13 = v1[24];
    v12 = v1[25];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v158 = v15;
    *v14 = 136315138;
    v152 = v10;
    v16 = sub_100052704();
    v18 = v17;
    v154 = *(v12 + 8);
    (v154)(v11, v13);
    v19 = sub_100008458(v16, v18, &v158);

    *(v14 + 4) = v19;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v152, v20, "JournalSyncEngineDelegate.handleEvent", "Event: %s", v14, 0xCu);
    sub_10000BA7C(v15);
  }

  else
  {
    v21 = v1[32];
    v23 = v1[24];
    v22 = v1[25];

    v154 = *(v22 + 8);
    (v154)(v21, v23);
  }

  v24 = v1;
  v25 = v1[31];
  v26 = v1[24];
  v27 = v1[2];
  (*(v1[34] + 16))(v1[35], v1[36], v1[33]);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v1[43] = OSSignpostIntervalState.init(id:isOpen:)();
  v8(v25, v27, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v1[31];
  v32 = v1[24];
  if (v30)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v158 = v34;
    *v33 = 136446210;
    v35 = sub_100052704();
    v37 = v36;
    v38 = v32;
    v39 = v154;
    (v154)(v31, v38);
    v40 = sub_100008458(v35, v37, &v158);

    *(v33 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "SyncEngine received event: %{public}s", v33, 0xCu);
    sub_10000BA7C(v34);

    v8 = v153;
  }

  else
  {

    v41 = v32;
    v39 = v154;
    (v154)(v31, v41);
  }

  v42 = v1[30];
  v43 = v1[24];
  v44 = v1[25];
  v8(v42, v1[2], v43);
  v45 = (*(v44 + 88))(v42, v43);
  if (v45 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v46 = v1[30];
    v48 = v1[22];
    v47 = v1[23];
    v49 = v1[21];
    (*(v1[25] + 96))(v46, v1[24]);
    (*(v48 + 32))(v47, v46, v49);
    v50 = swift_task_alloc();
    v1[44] = v50;
    *v50 = v1;
    v50[1] = sub_100059A20;
    v51 = v1[23];

    return sub_1000598C0(v51);
  }

  if (v45 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v53 = v1[30];
    v55 = v1[19];
    v54 = v1[20];
    v56 = v1[18];
    (*(v1[25] + 96))(v53, v1[24]);
    (*(v55 + 32))(v54, v53, v56);
    v57 = swift_task_alloc();
    v1[45] = v57;
    *v57 = v1;
    v57[1] = sub_1005AF8A4;
    v58 = v1[20];

    return sub_10078D6B8(v58);
  }

  if (v45 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v59 = v1[30];
    v61 = v1[9];
    v60 = v1[10];
    v62 = v1[8];
    (*(v1[25] + 96))(v59, v1[24]);
    (*(v61 + 32))(v60, v59, v62);
    v155 = sub_100710B9C;
    v63 = swift_task_alloc();
    v1[48] = v63;
    *v63 = v1;
    v63[1] = sub_1005B01E8;
    v64 = v1[10];
LABEL_21:

    return (v155)(v64);
  }

  if (v45 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v65 = v1[30];
    v67 = v1[12];
    v66 = v1[13];
    v68 = v1[11];
    (*(v1[25] + 96))(v65, v1[24]);
    (*(v67 + 32))(v66, v65, v68);
    v155 = sub_10070F8A8;
    v69 = swift_task_alloc();
    v1[47] = v69;
    *v69 = v1;
    v69[1] = sub_1005AFF00;
    v64 = v1[13];
    goto LABEL_21;
  }

  if (v45 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    goto LABEL_25;
  }

  if (v45 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v84 = v1[30];
    v86 = v1[15];
    v85 = v1[16];
    v87 = v1[14];
    (*(v1[25] + 96))(v84, v1[24]);
    (*(v86 + 32))(v85, v84, v87);
    v155 = sub_1006C22D8;
    v88 = swift_task_alloc();
    v1[46] = v88;
    *v88 = v1;
    v88[1] = sub_1005AFC18;
    v64 = v1[16];
    goto LABEL_21;
  }

  if (v45 == enum case for CKSyncEngine.Event.willFetchChanges(_:))
  {
    v89 = v1[30];
    v90 = v1[24];
    v91 = v1[17];
    *(v1[3] + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineFetching) = 1;
    v92 = type metadata accessor for TaskPriority();
    (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
    v93 = swift_allocObject();
    *(v93 + 16) = 0;
    *(v93 + 24) = 0;
    v94 = &unk_10095EE30;
    goto LABEL_33;
  }

  if (v45 != enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:) && v45 != enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
  {
    if (v45 == enum case for CKSyncEngine.Event.didFetchChanges(_:))
    {
      v102 = v1[17];
      v103 = v1[3];
      v104 = OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineFetching;
      *(v103 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineFetching) = 0;
      v105 = type metadata accessor for TaskPriority();
      (*(*(v105 - 8) + 56))(v102, 1, 1, v105);
      v106 = swift_allocObject();
      *(v106 + 16) = 0;
      *(v106 + 24) = 0;
      sub_1003E9628(0, 0, v102, &unk_1009586B8, v106);

      sub_1000415E8();
      if (qword_100ACFE28 != -1)
      {
        swift_once();
      }

      v108 = v1[6];
      v107 = v1[7];
      v109 = v1[4];
      v110 = v1[5];
      type metadata accessor for ProtectedData();
      static ProtectedData.shared.getter();
      ProtectedData.state.getter();

      (*(v110 + 104))(v108, enum case for ProtectedData.ProtectedDataState.available(_:), v109);
      v111 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
      v112 = *(v110 + 8);
      v112(v108, v109);
      v112(v107, v109);
      if (v111)
      {
        v113 = v1[30];
        v114 = v1[24];
        v115 = v1[3];
        type metadata accessor for CloudKitStack();
        sub_100340690(*(v103 + v104), *(v115 + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineSending));
        sub_1004C042C();
      }

      else
      {
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&_mh_execute_header, v117, v118, "ProtectedData not available during didFetchChanges event - not scheduling asset downloads", v119, 2u);
        }

        v113 = v1[30];
        v114 = v1[24];
      }

      (v154)(v113, v114);
      goto LABEL_34;
    }

    if (v45 == enum case for CKSyncEngine.Event.willSendChanges(_:))
    {
      v89 = v1[30];
      v90 = v1[24];
      v91 = v1[17];
      *(v1[3] + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineSending) = 1;
      v116 = type metadata accessor for TaskPriority();
      (*(*(v116 - 8) + 56))(v91, 1, 1, v116);
      v93 = swift_allocObject();
      *(v93 + 16) = 0;
      *(v93 + 24) = 0;
      v94 = &unk_10095EE40;
    }

    else
    {
      if (v45 != enum case for CKSyncEngine.Event.didSendChanges(_:))
      {
        if (v45 != enum case for CKSyncEngine.Event.willFetchAsset(_:) && v45 != enum case for CKSyncEngine.Event.fetchedAsset(_:) && v45 != enum case for CKSyncEngine.Event.didFetchAsset(_:))
        {
          v8(v1[26], v1[2], v1[24]);
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.default.getter();
          v123 = os_log_type_enabled(v121, v122);
          v124 = v1[26];
          v125 = v1[24];
          if (v123)
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v158 = v127;
            *v126 = 136315138;
            sub_100042028(&qword_100AEA1E8, &type metadata accessor for CKSyncEngine.Event);
            v128 = dispatch thunk of CustomStringConvertible.description.getter();
            v130 = v129;
            v131 = v125;
            v132 = v154;
            (v154)(v124, v131);
            v133 = sub_100008458(v128, v130, &v158);

            *(v126 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v121, v122, "SyncEngineDelegate Received unknown event: %s", v126, 0xCu);
            sub_10000BA7C(v127);
          }

          else
          {

            v151 = v125;
            v132 = v154;
            (v154)(v124, v151);
          }

          (v132)(v1[30], v1[24]);
          goto LABEL_34;
        }

        v134 = v1[27];
        v135 = v1[28];
        v136 = v1[24];
        v137 = v1[2];
        (v39)(v1[30], v136);
        v8(v135, v137, v136);
        v8(v134, v137, v136);
        v73 = Logger.logObject.getter();
        v157 = static os_log_type_t.error.getter();
        v138 = os_log_type_enabled(v73, v157);
        v140 = v1[27];
        v139 = v1[28];
        v141 = v1[24];
        if (!v138)
        {

          (v39)(v140, v141);
          (v39)(v139, v141);
          goto LABEL_34;
        }

        v142 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        *v142 = 136315394;
        v143 = sub_100052704();
        v145 = v144;
        (v39)(v139, v141);
        v146 = sub_100008458(v143, v145, &v158);

        *(v142 + 4) = v146;
        *(v142 + 12) = 2080;
        sub_100042028(&qword_100AEA1E8, &type metadata accessor for CKSyncEngine.Event);
        v147 = dispatch thunk of CustomStringConvertible.description.getter();
        v149 = v148;
        (v39)(v140, v141);
        v150 = sub_100008458(v147, v149, &v158);

        *(v142 + 14) = v150;
        _os_log_impl(&_mh_execute_header, v73, v157, "SyncEngineDelegate ignoring new [fall2025] event %s. Event: %s", v142, 0x16u);
        swift_arrayDestroy();

        goto LABEL_27;
      }

      v89 = v1[30];
      v90 = v1[24];
      v91 = v1[17];
      *(v1[3] + OBJC_IVAR____TtC7Journal25JournalSyncEngineDelegate_isEngineSending) = 0;
      v120 = type metadata accessor for TaskPriority();
      (*(*(v120 - 8) + 56))(v91, 1, 1, v120);
      v93 = swift_allocObject();
      *(v93 + 16) = 0;
      *(v93 + 24) = 0;
      v94 = &unk_10095EE38;
    }

LABEL_33:
    sub_1003E9628(0, 0, v91, v94, v93);

    (v39)(v89, v90);
    goto LABEL_34;
  }

LABEL_25:
  v70 = v1[29];
  v71 = v1[24];
  v72 = v1[2];
  (v39)(v1[30], v71);
  v8(v70, v72, v71);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v73, v74);
  v76 = v1[29];
  v77 = v1[24];
  if (!v75)
  {

    (v39)(v76, v77);
    goto LABEL_34;
  }

  v78 = swift_slowAlloc();
  v156 = v39;
  v158 = swift_slowAlloc();
  v79 = v158;
  *v78 = 136315138;
  v80 = sub_100052704();
  v82 = v81;
  (v156)(v76, v77);
  v83 = sub_100008458(v80, v82, &v158);

  *(v78 + 4) = v83;
  _os_log_impl(&_mh_execute_header, v73, v74, "SyncEngineDelegate ignoring %s event.", v78, 0xCu);
  sub_10000BA7C(v79);

LABEL_27:

LABEL_34:
  v95 = v24[42];
  v96 = v24[40];
  v97 = v24[41];
  v98 = v24[36];
  v99 = v24[33];
  v100 = v24[34];
  sub_100059D08(v95, "JournalSyncEngineDelegate.handleEvent", 37, 2);

  (*(v100 + 8))(v98, v99);
  (*(v97 + 8))(v95, v96);

  v101 = v24[1];

  return v101();
}

uint64_t sub_100055B0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100055B50(char *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext) objectWithID:v4];
    type metadata accessor for JournalEntryMO();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      v11 = [v9 managedObjectContext];
      if (!v11)
      {
        v11 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v9, 0, 0, v11);
      *&a1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate + 8] = &off_100A66DF8;
      swift_unknownObjectWeakAssign();

      sub_10005A9EC(v12);
      if (IndexPath.row.getter())
      {
        v13 = a1;
        v14 = 0;
      }

      else
      {
        v13 = a1;
        v14 = 2000;
      }

      [v13 setFocusGroupPriority:v14];
    }

    else
    {
    }
  }
}

id sub_100055D14(int a1)
{
  v2 = v1;
  LODWORD(v148) = a1;
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v146 = &v128 - v4;
  v5 = type metadata accessor for UUID();
  v143 = *(v5 - 8);
  v144 = v5;
  v6 = __chkstk_darwin(v5);
  v135 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v130 = &v128 - v8;
  v9 = sub_1000F24EC(&unk_100ADE5F0);
  v10 = __chkstk_darwin(v9 - 8);
  v136 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v128 - v12;
  v141 = type metadata accessor for EntrySource();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD57F0);
  v15 = __chkstk_darwin(v14 - 8);
  v145 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v128 - v18;
  __chkstk_darwin(v17);
  v142 = &v128 - v20;
  v21 = sub_1000F24EC(&qword_100AD1420);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v138 = &v128 - v26;
  __chkstk_darwin(v25);
  v28 = &v128 - v27;
  v134 = type metadata accessor for EntryListType();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for JournalFeatureFlags();
  v132 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000F24EC(&qword_100AE3C90);
  __chkstk_darwin(v33 - 8);
  isEscapingClosureAtFileLocation = &v128 - v34;
  v36 = sub_1000F24EC(&qword_100AE3E08);
  v37 = __chkstk_darwin(v36 - 8);
  v39 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v128 - v40;
  v42 = type metadata accessor for JournalTimelineViewController.State(0);
  v150 = *(v42 - 8);
  v151 = v42;
  __chkstk_darwin(v42);
  v147 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 viewIfLoaded];
  if (result)
  {
    v149 = v39;

    v45 = v2;
    v46 = [v2 viewIfLoaded];
    v47 = [v46 window];

    if (!v47)
    {
LABEL_5:
      v49 = v149;
      (*(v150 + 56))(v149, 1, 1, v151);
      v50 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
      swift_beginAccess();
      v51 = v45 + v50;
      v52 = v49;
LABEL_6:
      sub_100014318(v52, v51, &qword_100AE3E08);
      return swift_endAccess();
    }

    v48 = [v45 presentedViewController];
    if (v48)
    {

      goto LABEL_5;
    }

    v53 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_stateToRestore;
    swift_beginAccess();
    v129 = v45;
    sub_1000082B4(v45 + v53, v41, &qword_100AE3E08);
    if ((*(v150 + 48))(v41, 1, v151) == 1)
    {
      sub_100004F84(v41, &qword_100AE3E08);
      v54 = v149;
      if (v148)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    v61 = v147;
    sub_10005741C(v41, v147, type metadata accessor for JournalTimelineViewController.State);
    sub_1000082B4(v61, isEscapingClosureAtFileLocation, &qword_100AE3C90);
    v62 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
    v63 = (*(*(v62 - 8) + 48))(isEscapingClosureAtFileLocation, 1, v62);
    v54 = v149;
    if (v63 == 1)
    {
      v64 = v61;
      goto LABEL_16;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_34;
      }

      sub_100021CEC(isEscapingClosureAtFileLocation, v28, &qword_100AD1420);
      v69 = sub_1006D1378();
      if ((v69 - 3) >= 2)
      {
        if (v69 == 5)
        {
          sub_10089CC58(v28, 1);
        }

        else
        {
          v114 = objc_allocWithZone(type metadata accessor for MOOnboardingNavigationController());
          v115 = v129;
          v116 = MOOnboardingNavigationController.init(onboardingDelegate:)();
          [v116 setModalInPresentation:1];
          [v116 setModalPresentationStyle:2];
          [v115 presentViewController:v116 animated:1 completion:0];
        }

        v117 = v147;
        sub_100004F84(v28, &qword_100AD1420);
        sub_100057734(v117, type metadata accessor for JournalTimelineViewController.State);
        goto LABEL_50;
      }

      sub_100004F84(v28, &qword_100AD1420);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v66 = objc_allocWithZone(type metadata accessor for AdminMenuController());
          v67 = UIHostingController.init(rootView:)();
          [v67 setModalPresentationStyle:2];
          v68 = v129;
          [v129 presentViewController:v67 animated:0 completion:0];
LABEL_41:

          sub_100057734(v147, type metadata accessor for JournalTimelineViewController.State);
          goto LABEL_55;
        }

        v85 = v132;
        (*(v132 + 104))(v32, enum case for JournalFeatureFlags.search(_:), v30);
        v86 = JournalFeatureFlags.isEnabled.getter();
        (*(v85 + 8))(v32, v30);
        if ((v86 & 1) == 0)
        {
          v68 = v129;
          v103 = [v129 userActivity];
          v104 = type metadata accessor for JournalSearchViewController();
          v105 = objc_allocWithZone(v104);
          *&v105[OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel] = 0;
          v106 = objc_allocWithZone(type metadata accessor for JournalSearchResultsViewController());
          v107 = v103;
          v108 = sub_1005600B4(v103, 1);
          *&v105[OBJC_IVAR____TtC7Journal27JournalSearchViewController_resultsViewController] = v108;
          v153.receiver = v105;
          v153.super_class = v104;
          v67 = objc_msgSendSuper2(&v153, "initWithSearchResultsController:", v108);
          [v67 setHidesNavigationBarDuringPresentation:0];
          [v67 setShowsSearchResultsController:1];

          if (qword_100ACFE28 != -1)
          {
            swift_once();
          }

          v109 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
          v110 = sub_1000F24EC(&qword_100AD47A0);
          v111 = v131;
          (*(*(v110 - 8) + 56))(v131, 2, 2, v110);
          type metadata accessor for EntryListViewModel(0);
          swift_allocObject();
          v112 = sub_100010AF4(v111, v109);
          *&v67[OBJC_IVAR____TtC7Journal27JournalSearchViewController_searchResultsViewModel] = v112;

          sub_1003032B4(v112, 1, 0);

          [v68 presentViewController:v67 animated:0 completion:0];
          goto LABEL_41;
        }

        v87 = swift_allocObject();
        v68 = v129;
        *(v87 + 16) = v129;
        v88 = objc_opt_self();
        v89 = swift_allocObject();
        *(v89 + 16) = sub_1000348A0;
        *(v89 + 24) = v87;
        aBlock[4] = sub_100028EF4;
        aBlock[5] = v89;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001A7D4;
        aBlock[3] = &unk_100A6C798;
        v90 = _Block_copy(aBlock);
        v91 = v68;

        [v88 performWithoutAnimation:v90];
        _Block_release(v90);
        sub_100057734(v147, type metadata accessor for JournalTimelineViewController.State);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
LABEL_55:
          v127 = v149;
          (*(v150 + 56))(v149, 1, 1, v151);
          swift_beginAccess();
          v51 = v68 + v53;
          v52 = v127;
          goto LABEL_6;
        }

        __break(1u);
LABEL_34:
        v92 = *(isEscapingClosureAtFileLocation + 8);
        v146 = *isEscapingClosureAtFileLocation;
        v148 = v92;
        v93 = sub_1000F24EC(&qword_100AD8498);
        sub_100021CEC(isEscapingClosureAtFileLocation + *(v93 + 48), v142, &qword_100AD57F0);
        (*(v140 + 104))(v139, enum case for EntrySource.blankEntry(_:), v141);
        v94 = v133;
        v95 = v137;
        v96 = v134;
        (*(v133 + 56))(v137, 1, 1, v134);
        if (qword_100ACFE28 != -1)
        {
          swift_once();
        }

        v97 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
        v98 = v138;
        UUID.init()();
        (*(v143 + 56))(v98, 0, 1, v144);
        type metadata accessor for JournalEntryMO();
        v99 = static JournalEntryMO.create(type:context:uuid:)();
        type metadata accessor for EntryViewModel();
        swift_allocObject();
        v100 = v97;
        v101 = v99;
        sub_100035ADC(v101, 1, 1, v100);
        v102 = v136;
        sub_1000082B4(v95, v136, &unk_100ADE5F0);
        if ((*(v94 + 48))(v102, 1, v96) == 1)
        {

          sub_100004F84(v98, &qword_100AD1420);
          sub_100004F84(v95, &unk_100ADE5F0);
          (*(v140 + 8))(v139, v141);
          sub_100004F84(v102, &unk_100ADE5F0);
        }

        else
        {
          v113 = sub_1000F24EC(&qword_100AD47A0);
          if ((*(*(v113 - 8) + 48))(v102, 2, v113))
          {

            sub_100004F84(v138, &qword_100AD1420);
            sub_100004F84(v95, &unk_100ADE5F0);
            (*(v140 + 8))(v139, v141);
            sub_100057734(v102, type metadata accessor for EntryListType);
          }

          else
          {
            v118 = v143;
            v119 = v130;
            v120 = v102;
            v121 = v144;
            (*(v143 + 32))(v130, v120, v144);

            sub_1007788F0(v119);

            (*(v118 + 8))(v119, v121);
            sub_100004F84(v138, &qword_100AD1420);
            sub_100004F84(v95, &unk_100ADE5F0);
            (*(v140 + 8))(v139, v141);
          }
        }

        if (v148)
        {
          v122 = objc_allocWithZone(NSAttributedString);
          v123 = String._bridgeToObjectiveC()();

          v124 = [v122 initWithString:v123];

          sub_100786300(v124);
        }

        v68 = v129;

        v126 = v142;
        sub_1003054F0(v125, v142, 0);

        sub_100004F84(v126, &qword_100AD57F0);
        sub_100057734(v147, type metadata accessor for JournalTimelineViewController.State);

        goto LABEL_55;
      }

      v79 = *(sub_1000F24EC(&unk_100AE9060) + 48);
      v81 = v143;
      v80 = v144;
      v82 = v135;
      (*(v143 + 32))(v135, isEscapingClosureAtFileLocation, v144);
      sub_100021CEC(isEscapingClosureAtFileLocation + v79, v19, &qword_100AD57F0);
      (*(v81 + 16))(v24, v82, v80);
      (*(v81 + 56))(v24, 0, 1, v80);
      v83 = sub_100316564(v24);
      sub_100004F84(v24, &qword_100AD1420);
      if (v83)
      {

        sub_1003054F0(v84, v19, 0);

        sub_100004F84(v19, &qword_100AD57F0);
        (*(v81 + 8))(v82, v80);
        sub_100057734(v147, type metadata accessor for JournalTimelineViewController.State);

LABEL_50:
        v68 = v129;
        goto LABEL_55;
      }

      sub_100004F84(v19, &qword_100AD57F0);
      (*(v81 + 8))(v82, v80);
    }

    v64 = v147;
LABEL_16:
    sub_100057734(v64, type metadata accessor for JournalTimelineViewController.State);
    if (v148)
    {
LABEL_10:
      v55 = sub_100057794();
      if (v55)
      {
        v56 = v55;
        if (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16))
        {
          v57 = type metadata accessor for CanvasContentInputType();
          v58 = v145;
          swift_storeEnumTagMultiPayload();
          (*(*(v57 - 8) + 56))(v58, 0, 1, v57);
          v59 = v129;

          sub_1003054F0(v60, v58, 0);

          sub_100004F84(v58, &qword_100AD57F0);
LABEL_27:

          (*(v150 + 56))(v54, 1, 1, v151);
          goto LABEL_28;
        }

        v70 = type metadata accessor for TaskPriority();
        v71 = v146;
        (*(*(v70 - 8) + 56))(v146, 1, 1, v70);
        type metadata accessor for MainActor();

        v72 = static MainActor.shared.getter();
        v73 = swift_allocObject();
        v73[2] = v72;
        v73[3] = &protocol witness table for MainActor;
        v73[4] = v56;
        sub_1003E9628(0, 0, v71, &unk_100955770, v73);
      }

      v74 = type metadata accessor for TaskPriority();
      v75 = v146;
      (*(*(v74 - 8) + 56))(v146, 1, 1, v74);
      v76 = swift_allocObject();
      v59 = v129;
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v77 = static MainActor.shared.getter();
      v78 = swift_allocObject();
      v78[2] = v77;
      v78[3] = &protocol witness table for MainActor;
      v78[4] = v76;

      sub_1003E9628(0, 0, v75, &unk_100955760, v78);
      goto LABEL_27;
    }

LABEL_17:
    (*(v150 + 56))(v54, 1, 1, v151);
    v59 = v129;
LABEL_28:
    swift_beginAccess();
    v51 = v59 + v53;
    v52 = v54;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000573D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10005741C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100057544()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 numberOfSections] < 1)
  {
    goto LABEL_10;
  }

  v6 = [v1 numberOfItemsInSection:0];
  if (*(v1 + OBJC_IVAR____TtC7Journal24CanvasGridCollectionView_enforceShowCompressedAssetGrid) == 1)
  {
    if (v6 <= 5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_100AD0A28 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    if (qword_100B30F70 >= v6)
    {
      goto LABEL_10;
    }
  }

  IndexPath.init(arrayLiteral:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v8 = [v1 layoutAttributesForItemAtIndexPath:isa];

  if (v8)
  {
    [v1 contentSize];
    [v8 frame];
    CGRectGetMaxY(v11);

    return;
  }

LABEL_10:
  [v1 contentSize];
}

uint64_t sub_100057734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100057794()
{
  type metadata accessor for JournalEntryMO();
  v0 = static JournalEntryMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100941D70;
  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100940080;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100031B20();
  *(v2 + 32) = 0x737465737361;
  *(v2 + 40) = 0xE600000000000000;
  *(v1 + 32) = NSPredicate.init(format:_:)();
  *(v1 + 40) = static NSPredicate.hasNonEmptyText.getter();
  *(v1 + 48) = static NSPredicate.hasNonEmptyTitle.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 orPredicateWithSubpredicates:isa];

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100941830;
  *(v6 + 32) = v5;
  v7 = v5;
  *(v6 + 40) = static NSPredicate.notRemovedFromCloud.getter();
  *(v6 + 48) = static NSPredicate.entryDateNotNil.getter();
  *(v6 + 56) = static NSPredicate.isNotTipEntry.getter();
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v4 andPredicateWithSubpredicates:v8];

  v10 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  static NSPredicate.isDraftEntry.getter();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v4 andPredicateWithSubpredicates:v11];

  [v0 setPredicate:v12];
  __chkstk_darwin(v13);
  sub_1000F24EC(&qword_100AD3748);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v15;
}