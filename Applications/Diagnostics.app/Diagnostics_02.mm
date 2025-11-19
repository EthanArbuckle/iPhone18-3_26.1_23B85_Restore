unint64_t sub_10005A074()
{
  result = qword_1001FD890;
  if (!qword_1001FD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD890);
  }

  return result;
}

uint64_t sub_10005A0D0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A124(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005A16C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A1CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005A20C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_100052A28(a1, v4, v5, v6);
}

uint64_t sub_10005A2C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005A308(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000494BC;

  return sub_100053804(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for CosmeticAssessmentAssessorManager.AssessorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CosmeticAssessmentAssessorManager.AssessorError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005A524()
{
  result = qword_1001FD8A8;
  if (!qword_1001FD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD8A8);
  }

  return result;
}

id sub_10005A7A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005A7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_reviewBrowsingCellIdentifier];
  *v6 = 0xD00000000000001CLL;
  *(v6 + 1) = 0x800000010018B3E0;
  v7 = &v3[OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_completion];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_files] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_directoryURL] = a1;
  *v7 = a2;
  v7[1] = a3;

  sub_10003E418(a2, a3);
  v12.receiver = v3;
  v12.super_class = type metadata accessor for FileBrowsingTableViewController();
  v8 = objc_msgSendSuper2(&v12, "initWithStyle:", 0);
  v9 = [v8 tableView];
  if (v9)
  {
    v10 = v9;
    [v9 setDelegate:v8];

    v11 = [v8 tableView];
    if (v11)
    {
      [v11 setDataSource:v8];

      sub_10003C52C(a2);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10005AA00(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FileBrowsingTableViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationBar];

      [v5 setBackgroundImage:0 forBarMetrics:0];
    }

    v6 = [v1 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationBar];

      [v8 setShadowImage:0];
    }
  }
}

uint64_t sub_10005AB54()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FileBrowsingTableViewController();
  v22.receiver = v0;
  v22.super_class = v11;
  objc_msgSendSuper2(&v22, "viewDidLoad");
  sub_10003E110(0, &qword_1001FD040);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.userInitiated(_:), v7);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  aBlock[4] = sub_10005BD0C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0570;
  v14 = _Block_copy(aBlock);
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v3, v1);
  (*(v4 + 8))(v6, v18);
}

uint64_t sub_10005AEBC(char *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_1000AE810();

  v13 = v12;
  v14 = v12[2];
  if (v14)
  {
    v30 = a1;
    v31 = v10;
    v32 = v9;
    v33 = v7;
    v34 = v6;
    aBlock[0] = _swiftEmptyArrayStorage;
    v15 = v13;
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = v3 + 16;
    v17 = *(v3 + 16);
    v18 = *(v3 + 80);
    v29 = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v37 = *(v16 + 56);
    v38 = v17;
    v20 = (v16 + 16);
    do
    {
      v38(v5, v19, v2);
      type metadata accessor for ReviewableFile();
      v21 = swift_allocObject();
      *(v21 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists) = 2;
      *(v21 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory) = 2;
      (*v20)(v21 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_url, v5, v2);
      *(v21 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_isOnRemoteDevice) = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v19 += v37;
      --v14;
    }

    while (v14);

    v22 = aBlock[0];
    v7 = v33;
    v6 = v34;
    v10 = v31;
    v9 = v32;
    a1 = v30;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  *&a1[OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_files] = v22;

  sub_10003E110(0, &qword_1001FD040);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  aBlock[4] = sub_10005BD84;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C05C0;
  v25 = _Block_copy(aBlock);
  v26 = a1;

  v27 = v35;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v7 + 8))(v9, v6);
  return (*(v36 + 8))(v27, v10);
}

void sub_10005B354(void *a1)
{
  v1 = [a1 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10005B3F8()
{
  v1 = v0;

  sub_1000AECA8();

  v2 = String._bridgeToObjectiveC()();

  [v1 setTitle:v2];

  v3 = [v1 tableView];
  if (v3)
  {
    v4 = v3;
    sub_10003E110(0, &qword_1001FD920);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = String._bridgeToObjectiveC()();
    [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];
  }

  else
  {
    __break(1u);
  }
}

id sub_10005B63C(void *a1, unint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 dequeueReusableCellWithIdentifier:v5];

  if (!v6)
  {
    v7 = objc_allocWithZone(UITableViewCell);
    v8 = String._bridgeToObjectiveC()();
    v6 = [v7 initWithStyle:0 reuseIdentifier:v8];
  }

  v9 = *(v2 + OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_files);

  v10 = a2;
  v11 = IndexPath.row.getter();
  if (v9 >> 62)
  {
    v10 = v11;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_12:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:

    v15[3] = type metadata accessor for UIListContentConfiguration();
    v15[4] = &protocol witness table for UIListContentConfiguration;
    sub_10005BAD0(v15);
    sub_1000AD404();
    UITableViewCell.contentConfiguration.setter();
    [v6 setAccessoryType:1];

    return v6;
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < v12)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          goto LABEL_12;
        }

        if (v11 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_9;
        }

        __break(1u);
LABEL_14:
        v12 = v11;
        v11 = v10;
        if ((v10 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    v14 = [objc_allocWithZone(UITableViewCell) init];

    return v14;
  }
}

uint64_t sub_10005B99C()
{

  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_completion));
}

id sub_10005BA04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileBrowsingTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *sub_10005BAD0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10005BB34(unint64_t a1)
{
  v3 = v1;
  v5 = [v3 tableView];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v6 deselectRowAtIndexPath:isa animated:1];

  v2 = *&v3[OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_files];

  v5 = IndexPath.row.getter();
  if (v2 >> 62)
  {
    a1 = v5;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

    sub_1000AD8E4();
    v11 = v9;
    v10 = [v3 navigationController];
    [v10 pushViewController:v11 animated:1];
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v8)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          goto LABEL_13;
        }

        if (v5 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_8;
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        v8 = v5;
        v5 = a1;
        if ((a1 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }
  }
}

uint64_t sub_10005BCD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005BD2C()
{
  result = qword_1001FDE60;
  if (!qword_1001FDE60)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDE60);
  }

  return result;
}

uint64_t sub_10005BD98()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = type metadata accessor for ImageLoader();
  v5 = sub_10005C9A8();

  return StateObject.wrappedValue.getter(v1, v2, v3, v4, v5);
}

uint64_t sub_10005BDF8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ImageLoader();
  v4 = swift_allocObject();
  Published.init(initialValue:)();
  v5 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
  *(v4 + v5) = [objc_allocWithZone(NSLock) init];
  *(v4 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
  v6 = (v4 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  *v6 = a1;
  v6[1] = a2;

  return v4;
}

uint64_t sub_10005BEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 + 16);
  v22 = a1;
  v24 = *(v3 - 8);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModifiedContent();
  v25 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v23 = &v20 - v10;
  v21 = *(v2 + 3);
  sub_10005BD98();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v30;
  v12 = v31;
  v21(v30, *(&v30 + 1), v31);
  sub_10005C8C0(v11, *(&v11 + 1), v12);
  v30 = *v2;
  v31 = *(v2 + 16);
  v13 = swift_allocObject();
  v14 = *(v22 + 24);
  *(v13 + 16) = v3;
  *(v13 + 24) = v14;
  v15 = v2[1];
  *(v13 + 32) = *v2;
  *(v13 + 48) = v15;
  *(v13 + 64) = *(v2 + 4);
  sub_10005C938(&v30, v29);

  View.onAppear(perform:)();

  (*(v24 + 8))(v5, v3);
  v27 = v14;
  v28 = &protocol witness table for _AppearanceActionModifier;
  WitnessTable = swift_getWitnessTable();
  v17 = v23;
  sub_10012199C(v9, v6, WitnessTable);
  v18 = *(v25 + 8);
  v18(v9, v6);
  sub_10012199C(v17, v6, WitnessTable);
  return (v18)(v17, v6);
}

uint64_t sub_10005C1F0()
{
  type metadata accessor for AsyncImage();
  sub_10005BD98();
  sub_100086EF0();
}

uint64_t sub_10005C298(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  v5 = sub_10003C49C(&qword_1001FD928);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_10003C49C(&qword_1001FD930);
  __chkstk_darwin(v9);
  v11 = (&v16 - v10);
  if (v4)
  {
    ProgressView<>.init<>()();
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_10003C49C(&qword_1001FD938);
    sub_10005C610();
    sub_10005C71C(qword_1001FD960, &qword_1001FD928);
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v13 = sub_10005C528(a1);
    v14 = [objc_opt_self() systemBlueColor];
    v15 = Color.init(uiColor:)();
    *v11 = v13;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = v15;
    swift_storeEnumTagMultiPayload();
    sub_10003C49C(&qword_1001FD938);
    sub_10005C610();
    sub_10005C71C(qword_1001FD960, &qword_1001FD928);
    return _ConditionalContent<>.init(storage:)();
  }
}

id sub_10005C528(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setImage:a1];
  v3 = v2;
  [v3 setContentMode:1];
  [v3 setClipsToBounds:1];

  LODWORD(v4) = 1132068864;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v7];
  return v3;
}

unint64_t sub_10005C610()
{
  result = qword_1001FD940;
  if (!qword_1001FD940)
  {
    sub_10003C4E4(&qword_1001FD938);
    sub_10005C6C8();
    sub_10005C71C(&qword_1001FD950, &qword_1001FD958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD940);
  }

  return result;
}

unint64_t sub_10005C6C8()
{
  result = qword_1001FD948;
  if (!qword_1001FD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD948);
  }

  return result;
}

uint64_t sub_10005C71C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005C764()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10005C7B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005C7CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10005C814(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10005C8C0(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_10005C8E0()
{
  sub_10005C924();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005C938(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FD9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C9A8()
{
  result = qword_1001FD9F0;
  if (!qword_1001FD9F0)
  {
    type metadata accessor for ImageLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD9F0);
  }

  return result;
}

unint64_t sub_10005CA94(char a1)
{
  result = 0x53646E4577656976;
  switch(a1)
  {
    case 1:
    case 8:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6F43525177656976;
      break;
    case 4:
      result = 0x5274654777656976;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7473655277656976;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

unint64_t sub_10005CC84(char a1)
{
  result = 0x5374697845706174;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656E6F44706174;
      break;
    case 4:
      result = 0x65636E6143706174;
      break;
    case 5:
      result = 0x69666E6F43706174;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      v3 = 9;
      goto LABEL_9;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      v3 = 5;
LABEL_9:
      result = v3 | 0xD000000000000012;
      break;
    case 12:
      result = 0x6174736552706174;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_10005CE6C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 cloudKitEnvironment];

  if (v6 > 2)
  {
    v7 = &OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLStaging;
  }

  else
  {
    v7 = off_1001C09A8[v6];
  }

  (*(v2 + 16))(v4, v0 + *v7, v1);
  URL.appendingPathComponent(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10005CFD8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 cloudKitEnvironment];

  if (v6 > 2)
  {
    v7 = &OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLStaging;
  }

  else
  {
    v7 = off_1001C09A8[v6];
  }

  (*(v2 + 16))(v4, v0 + *v7, v1);
  URL.appendingPathComponent(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10005D144(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  type metadata accessor for URL();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10005D234, 0, 0);
}

uint64_t sub_10005D234()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_10005CE6C();
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  sub_1000D5698(&off_1001BDA70);
  sub_10003DD84(&unk_1001BDA90, &qword_100201D00);
  URLRequest.allHTTPHeaderFields.setter();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[5] = v2;
  v0[6] = v1;
  sub_10005F0E4();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  URLRequest.httpBody.setter();
  v0[14] = [objc_opt_self() sharedSession];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10005D460;
  v4 = v0[13];

  return NSURLSession.data(for:delegate:)(v4, 0);
}

uint64_t sub_10005D460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[16] = a1;
  v6[17] = a2;
  v6[18] = a3;
  v6[19] = v3;

  if (v3)
  {
    v7 = sub_10005DA68;
  }

  else
  {
    v7 = sub_10005D5A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005D5A0()
{
  v49 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] != 200)
  {
    v6 = static os_log_type_t.error.getter();
    if (qword_1001FC7A0 != -1)
    {
      swift_once();
    }

    v7 = qword_10020A4E8;
    if (os_log_type_enabled(qword_10020A4E8, v6))
    {
      v8 = *(v0 + 144);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, v6, "Check URL request failed: %@", v9, 0xCu);
      sub_10003DD84(v10, &qword_1001FF0C0);
    }

    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    sub_10005F138();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_10005F18C(v14, v12);

    (*(v16 + 8))(v15, v17);
    goto LABEL_10;
  }

  v2 = *(v0 + 152);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005FD18();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    v5 = *(v0 + 128);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    sub_10005F18C(v5, v3);
LABEL_10:

    v19 = *(v0 + 8);
    v20 = 0;
    goto LABEL_11;
  }

  v22 = *(v0 + 16);
  v23 = *(v0 + 32);
  if (v22)
  {
    v24 = *(v0 + 136);
    v25 = *(v0 + 128);
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 88);

    sub_10005F18C(v25, v24);

    (*(v27 + 8))(v26, v28);
  }

  else
  {
    v47 = *(v0 + 24);
    v29 = static os_log_type_t.error.getter();
    if (qword_1001FC7A0 != -1)
    {
      swift_once();
    }

    v30 = qword_10020A4E8;
    v31 = os_log_type_enabled(qword_10020A4E8, v29);
    v32 = *(v0 + 136);
    v33 = *(v0 + 128);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 88);
    if (v31)
    {
      v45 = *(v0 + 136);
      v46 = *(v0 + 88);
      v38 = *(v0 + 56);
      v37 = *(v0 + 64);
      v43 = *(v0 + 144);
      v44 = *(v0 + 128);
      v39 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_100056B7C(v38, v37, v48);
      *(v39 + 12) = 2080;
      if (v23)
      {
        v40 = v47;
      }

      else
      {
        v40 = 0;
      }

      if (v23)
      {
        v41 = v23;
      }

      else
      {
        v41 = 0xE000000000000000;
      }

      v42 = sub_100056B7C(v40, v41, v48);

      *(v39 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v30, v29, "Session not found for ticket: %s with reason %s", v39, 0x16u);
      swift_arrayDestroy();

      sub_10005F18C(v44, v45);
      (*(v35 + 8))(v34, v46);
    }

    else
    {

      sub_10005F18C(v33, v32);
      (*(v35 + 8))(v34, v36);
    }
  }

  v19 = *(v0 + 8);
  v20 = v22;
LABEL_11:

  return v19(v20);
}

uint64_t sub_10005DA68()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_10005DAF4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  type metadata accessor for URL();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10005DBE4, 0, 0);
}

uint64_t sub_10005DBE4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10005CFD8();
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  sub_1000D5698(&off_1001BDAB0);
  sub_10003DD84(&unk_1001BDAD0, &qword_100201D00);
  URLRequest.allHTTPHeaderFields.setter();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v2;
  v0[3] = v1;
  sub_10005F0E4();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  URLRequest.httpBody.setter();
  v0[11] = [objc_opt_self() sharedSession];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10005DE0C;
  v4 = v0[10];

  return NSURLSession.data(for:delegate:)(v4, 0);
}

uint64_t sub_10005DE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = a3;
  v6[16] = v3;

  if (v3)
  {
    v7 = sub_10005E30C;
  }

  else
  {
    v7 = sub_10005DF4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005DF4C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  v3 = *(v0 + 120);
  if ([v2 statusCode] != 200)
  {

LABEL_6:
    v12 = static os_log_type_t.error.getter();
    if (qword_1001FC7A0 != -1)
    {
      swift_once();
    }

    v13 = qword_10020A4E8;
    if (os_log_type_enabled(qword_10020A4E8, v12))
    {
      v14 = *(v0 + 120);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, v12, "Claim URL request failed: %@", v15, 0xCu);
      sub_10003DD84(v16, &qword_1001FF0C0);
    }

    v18 = *(v0 + 112);
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = *(v0 + 64);
    sub_10005F138();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    sub_10005F18C(v20, v18);

    (*(v22 + 8))(v21, v23);
    goto LABEL_11;
  }

  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_10005FC70(v5, v6);
  v7 = sub_10005F1E0(v5, v6);
  v9 = *(v0 + 120);
  if (v4)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    sub_10005F18C(v11, v10);
LABEL_11:

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = v7;
  v28 = v8;

  if ((v27 & 1) == 0)
  {

    goto LABEL_20;
  }

  if (!v28)
  {
LABEL_20:
    v36 = *(v0 + 112);
    v37 = *(v0 + 120);
    v38 = *(v0 + 104);
    v40 = *(v0 + 72);
    v39 = *(v0 + 80);
    v41 = *(v0 + 64);

    sub_10005F138();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();

    sub_10005F18C(v38, v36);
    (*(v40 + 8))(v39, v41);
    goto LABEL_11;
  }

  v29 = *(v0 + 112);
  v30 = *(v0 + 120);
  v31 = *(v0 + 104);
  v33 = *(v0 + 72);
  v32 = *(v0 + 80);
  v34 = *(v0 + 64);

  sub_10005F18C(v31, v29);

  (*(v33 + 8))(v32, v34);

  v35 = *(v0 + 8);

  return v35(v28);
}

uint64_t sub_10005E30C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

Swift::Int sub_10005E3BC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10005E428()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005E47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74656B636974 && a2 == 0xE600000000000000)
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

uint64_t sub_10005E518(uint64_t a1)
{
  v2 = sub_100060068();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E554(uint64_t a1)
{
  v2 = sub_100060068();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E590(void *a1)
{
  v2 = sub_10003C49C(&qword_1001FDB50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000442A0(a1, a1[3]);
  sub_100060068();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10005E6CC()
{
  if (*v0)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x737473697865;
  }
}

uint64_t sub_10005E6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
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

uint64_t sub_10005E7D8(uint64_t a1)
{
  v2 = sub_1000602B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E814(uint64_t a1)
{
  v2 = sub_1000602B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000600BC(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10005E884(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64616F6C796170;
  if (v2 != 1)
  {
    v5 = 0x6E6F73616572;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x73736563637573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64616F6C796170;
  if (*a2 != 1)
  {
    v8 = 0x6E6F73616572;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73736563637573;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10005E97C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10005EA1C()
{
  String.hash(into:)();
}

Swift::Int sub_10005EAA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10005EB44@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060268(*a1);
  *a2 = result;
  return result;
}

void sub_10005EB74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64616F6C796170;
  if (v2 != 1)
  {
    v5 = 0x6E6F73616572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73736563637573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10005EBD0()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x6E6F73616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

unint64_t sub_10005EC28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100060268(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005EC5C(uint64_t a1)
{
  v2 = sub_10005FCC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EC98(uint64_t a1)
{
  v2 = sub_10005FCC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005ECD4()
{
  v1 = OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLProduction;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLUAT, v2);
  v3(v0 + OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLStaging, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimberLorryDevelopmentConnection()
{
  result = qword_1001FDA38;
  if (!qword_1001FDA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005EE10()
{
  result = type metadata accessor for URL();
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

uint64_t sub_10005EEA4()
{
  v1 = sub_10003C49C(&qword_1001FDF40);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - v6;
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  result = v12(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = *(v11 + 32);
  v14(v0 + OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLProduction, v9, v10);
  URL.init(string:)();
  result = v12(v7, 1, v10);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14(v0 + OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLUAT, v7, v10);
  URL.init(string:)();
  result = v12(v4, 1, v10);
  if (result != 1)
  {
    v14(v0 + OBJC_IVAR____TtC11Diagnostics32TimberLorryDevelopmentConnection_logShuttleURLStaging, v4, v10);
    return v0;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_10005F0E4()
{
  result = qword_1001FDAF8;
  if (!qword_1001FDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDAF8);
  }

  return result;
}

unint64_t sub_10005F138()
{
  result = qword_1001FDB00;
  if (!qword_1001FDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB00);
  }

  return result;
}

uint64_t sub_10005F18C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10005F1E0(uint64_t a1, unint64_t a2)
{
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v51[0] = 0;
  v7 = [v5 JSONObjectWithData:isa options:0 error:v51];

  if (!v7)
  {
    v22 = v51[0];
    _convertNSErrorToError(_:)();

LABEL_18:
    swift_willThrow();
    sub_10005F18C(a1, a2);
    return v2 & 1;
  }

  v8 = v51[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v9 = sub_10003C49C(&unk_1001FDF60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v24;
    sub_10003C49C(&qword_1001FDB08);
    *v25 = v9;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
    goto LABEL_18;
  }

  v10 = v50[0];
  v11 = static os_log_type_t.info.getter();
  if (qword_1001FC7A0 != -1)
  {
    swift_once();
  }

  v12 = qword_10020A4E8;
  if (os_log_type_enabled(qword_10020A4E8, v11))
  {
    v48 = a2;
    v13 = swift_slowAlloc();
    v47 = a1;
    v14 = swift_slowAlloc();
    v51[0] = v14;
    *v13 = 136315138;
    v15 = Dictionary.description.getter();
    v17 = sub_100056B7C(v15, v16, v51);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v12, v11, "Claim response body: %s", v13, 0xCu);
    sub_100044554(v14);
    a1 = v47;

    a2 = v48;
  }

  if (!*(v10 + 16) || (v18 = sub_100064AFC(0x73736563637573, 0xE700000000000000), (v19 & 1) == 0))
  {

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    sub_10003C49C(&qword_1001FDB08);
    *v28 = &type metadata for Bool;
    sub_10003C49C(&qword_1001FDB10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10017EC00;
    *(v2 + 56) = &type metadata for TimberLorryDevelopmentConnection.ClaimResponseBody.CodingKeys;
    *(v2 + 64) = sub_10005FCC4();
    *(v2 + 32) = 0;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.valueNotFound(_:), v26);
    goto LABEL_18;
  }

  sub_10003E010(*(v10 + 56) + 32 * v18, v51);
  sub_10003E010(v51, v50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    sub_10003C49C(&qword_1001FDB08);
    *v32 = &type metadata for Bool;
    sub_10003C49C(&qword_1001FDB10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10017EC00;
    *(v2 + 56) = &type metadata for TimberLorryDevelopmentConnection.ClaimResponseBody.CodingKeys;
    *(v2 + 64) = sub_10005FCC4();
    *(v2 + 32) = 0;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v33 = &enum case for DecodingError.typeMismatch(_:);
LABEL_27:
    (*(*(v30 - 8) + 104))(v32, *v33, v30);
    goto LABEL_28;
  }

  LOBYTE(v2) = v49[0];
  if (v49[0] != 1)
  {
    if (*(v10 + 16))
    {
      v34 = sub_100064AFC(0x6E6F73616572, 0xE600000000000000);
      if (v35)
      {
        sub_10003E010(*(v10 + 56) + 32 * v34, v50);

        sub_10003E010(v50, v49);
        if (swift_dynamicCast())
        {
          goto LABEL_14;
        }

        v44 = type metadata accessor for DecodingError();
        swift_allocError();
        v46 = v45;
        sub_10003C49C(&qword_1001FDB08);
        *v46 = &type metadata for String;
        sub_10003C49C(&qword_1001FDB10);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_10017EC00;
        *(v2 + 56) = &type metadata for TimberLorryDevelopmentConnection.ClaimResponseBody.CodingKeys;
        *(v2 + 64) = sub_10005FCC4();
        *(v2 + 32) = 2;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
        goto LABEL_32;
      }
    }

    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v39;
    sub_10003C49C(&qword_1001FDB20);
    v32[3] = &type metadata for TimberLorryDevelopmentConnection.ClaimResponseBody.CodingKeys;
    v2 = sub_10005FCC4();
    v32[4] = v2;
    *v32 = 2;
    sub_10003C49C(&qword_1001FDB10);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10017EC00;
    *(v40 + 56) = &type metadata for TimberLorryDevelopmentConnection.ClaimResponseBody.CodingKeys;
    *(v40 + 64) = v2;
    *(v40 + 32) = 2;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v33 = &enum case for DecodingError.keyNotFound(_:);
    goto LABEL_27;
  }

  if (!*(v10 + 16) || (v20 = sub_100064AFC(0x64616F6C796170, 0xE700000000000000), (v21 & 1) == 0))
  {

    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    sub_10003C49C(&qword_1001FDB08);
    *v38 = v9;
    sub_10003C49C(&qword_1001FDB10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10017EC00;
    *(v2 + 56) = &type metadata for TimberLorryDevelopmentConnection.ClaimResponseBody.CodingKeys;
    *(v2 + 64) = sub_10005FCC4();
    *(v2 + 32) = 1;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.valueNotFound(_:), v36);
LABEL_28:
    swift_willThrow();
    sub_10005F18C(a1, a2);
LABEL_29:
    sub_100044554(v51);
    return v2 & 1;
  }

  sub_10003E010(*(v10 + 56) + 32 * v20, v50);

  sub_10003E010(v50, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    sub_10003C49C(&qword_1001FDB08);
    *v43 = v9;
    sub_10003C49C(&qword_1001FDB10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10017EC00;
    *(v2 + 56) = &type metadata for TimberLorryDevelopmentConnection.ClaimResponseBody.CodingKeys;
    *(v2 + 64) = sub_10005FCC4();
    *(v2 + 32) = 1;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.typeMismatch(_:), v41);
LABEL_32:
    swift_willThrow();
    sub_10005F18C(a1, a2);
    sub_100044554(v50);
    goto LABEL_29;
  }

LABEL_14:
  sub_10005F18C(a1, a2);
  sub_100044554(v50);
  sub_100044554(v51);
  return v2 & 1;
}

uint64_t sub_10005FC70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10005FCC4()
{
  result = qword_1001FDB18;
  if (!qword_1001FDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB18);
  }

  return result;
}

unint64_t sub_10005FD18()
{
  result = qword_1001FDB28;
  if (!qword_1001FDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB28);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for UserAccelerationBuffer.UserAcceleration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10005FD80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10005FDDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10005FE74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10005FEBC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10005FF0C()
{
  result = qword_1001FDB30;
  if (!qword_1001FDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB30);
  }

  return result;
}

unint64_t sub_10005FF64()
{
  result = qword_1001FDB38;
  if (!qword_1001FDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB38);
  }

  return result;
}

unint64_t sub_10005FFBC()
{
  result = qword_1001FDB40;
  if (!qword_1001FDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB40);
  }

  return result;
}

unint64_t sub_100060014()
{
  result = qword_1001FDB48;
  if (!qword_1001FDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB48);
  }

  return result;
}

unint64_t sub_100060068()
{
  result = qword_1001FDB58;
  if (!qword_1001FDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB58);
  }

  return result;
}

uint64_t sub_1000600BC(void *a1)
{
  v3 = sub_10003C49C(&qword_1001FDB60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000442A0(a1, v7);
  sub_1000602B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    LOBYTE(v7) = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100044554(a1);
  return v7 & 1;
}

unint64_t sub_100060268(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BDAF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000602B4()
{
  result = qword_1001FDB68;
  if (!qword_1001FDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CosmeticAssessmentRole(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CosmeticAssessmentRole(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TimberLorryDevelopmentConnection.RequestBody.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TimberLorryDevelopmentConnection.RequestBody.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100060544()
{
  result = qword_1001FDB70;
  if (!qword_1001FDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB70);
  }

  return result;
}

unint64_t sub_10006059C()
{
  result = qword_1001FDB78;
  if (!qword_1001FDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB78);
  }

  return result;
}

unint64_t sub_1000605F4()
{
  result = qword_1001FDB80;
  if (!qword_1001FDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB80);
  }

  return result;
}

unint64_t sub_10006064C()
{
  result = qword_1001FDB88;
  if (!qword_1001FDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB88);
  }

  return result;
}

unint64_t sub_1000606A4()
{
  result = qword_1001FDB90;
  if (!qword_1001FDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB90);
  }

  return result;
}

unint64_t sub_1000606FC()
{
  result = qword_1001FDB98;
  if (!qword_1001FDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDB98);
  }

  return result;
}

uint64_t sub_100060770(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000660CC();
  if (result)
  {
    sub_10003E110(0, &qword_1001FD040);
    v19 = v6;
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInteractive(_:), v10);
    v18 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v10);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v20;
    aBlock[4] = sub_1000667DC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C09F8;
    v16 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v21 = &_swiftEmptyArrayStorage;
    sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v19);
  }

  return result;
}

uint64_t sub_100060B2C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id sub_100060C70()
{
  type metadata accessor for RootViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_10020A380 = result;
  return result;
}

void sub_100060CB0()
{
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A358;
  v1 = objc_allocWithZone(UINavigationController);
  v2 = v0;
  v3 = [v1 initWithRootViewController:v2];

  qword_10020A388 = v3;
}

id sub_100060D40()
{
  result = [objc_allocWithZone(type metadata accessor for DKViewControllerDelegateResponder()) init];
  qword_10020A390 = result;
  return result;
}

char *sub_100060D74()
{
  v1 = OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController;
  v2 = *(v0 + OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController);
  }

  else
  {
    type metadata accessor for EnhancedLoggingCompletedNavigationController();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *(*&v4[OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController] + OBJC_IVAR____TtC11Diagnostics38EnhancedLoggingCompletedViewController_delegate + 8) = &off_1001C09C0;
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100060E24()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_100060EBC()
{
  sub_100061268(0);
  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A3A8;
  v2 = *(v0 + OBJC_IVAR___DARootViewController_remoteCardFilter + 8);
  v3 = *(v0 + OBJC_IVAR___DARootViewController_remoteCardFilter + 16);
  *(qword_10020A3A8 + 16) = *(v0 + OBJC_IVAR___DARootViewController_remoteCardFilter);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;

  v4 = [objc_opt_self() defaultCenter];
  if (qword_1001FC710 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_10020A3B0 object:0];

  v14 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    goto LABEL_17;
  }

  v6 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  if (*(*(v5 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager) + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) != 1)
  {

LABEL_17:

    return;
  }

  v7 = v5;
  v8 = qword_1001FC7B0;
  v9 = v14;
  if (v8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  if (qword_1001FC7C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_100200F00;
  if (*(off_100200F00 + 2) && (v11 = sub_100064AFC(0x6C6172656E6567, 0xE700000000000000), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + v11);
    swift_endAccess();
    if (v13 == 1)
    {
      *(*&v7[v6] + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) = 0;
      sub_100151130();
    }
  }

  else
  {
    swift_endAccess();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v9 = v9;
    sub_1000E7D04(0, 0, v7);
  }
}

id sub_100061268(uint64_t (*a1)(id))
{
  v3 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v4 = swift_dynamicCastClass();

  if (v4)
  {
    if (qword_1001FC6D8 != -1)
    {
      swift_once();
    }

    type metadata accessor for DKViewControllerDelegateResponder();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = objc_opt_self();
      swift_unknownObjectRetain();
      v8 = [v7 sharedApplication];
      [v8 userInterfaceLayoutDirection];

      v9 = v6 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle;
      *v9 = 0;
      *(v9 + 8) = 1;
      v10 = [v7 sharedApplication];
      [v10 userInterfaceLayoutDirection];

      v11 = v6 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle;
      *v11 = 0;
      *(v11 + 8) = 1;
      swift_unknownObjectRelease();
    }
  }

  [v1 setNeedsStatusBarAppearanceUpdate];
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v12 = qword_10020A388;

  return sub_100066A88(v12, v1, a1);
}

void sub_100061428(void *a1, char a2, char a3, void (*a4)(id))
{
  v8 = sub_100066608();
  v9 = [v8 navigationController];

  if (v9)
  {
    [v9 setNavigationBarHidden:0];
  }

  v10 = qword_1001FDBA0;
  qword_1001FDBA0 = a1;

  v11 = a1;
  v12 = [v11 navigationItem];
  [v12 setHidesBackButton:1 animated:0];

  v13 = sub_1000882F0();
  if (v13 != 2 && (v13 & 1) != 0)
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    v14 = [qword_10020A388 presentViewController:v11 animated:a2 & 1 completion:0];
    if (!a4)
    {
      return;
    }

LABEL_19:
    a4(v14);
    return;
  }

  if (a3)
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    v15 = qword_10020A388;
    v16 = [qword_10020A388 viewControllers];
    sub_10003E110(0, &qword_1001FDE30);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = sub_1000616F4(1, v17);
    v18 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setViewControllers:isa animated:a2 & 1];

    if (a4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    v14 = [qword_10020A388 pushViewController:v11 animated:a2 & 1];
    if (a4)
    {
      goto LABEL_19;
    }
  }
}

void *sub_1000616F4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (a1)
  {
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage;
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

LABEL_28:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v21 = 0;
      while (1)
      {
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              goto LABEL_26;
            }

            v7 = *(v2 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v10 = v22;
          v11 = v22[2];
          if (v11 >= v3)
          {
            break;
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          if (v9 == v5)
          {
            goto LABEL_29;
          }
        }

        if (v21 >= v11)
        {
          break;
        }

        v22[v21 + 4];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000658A4(v22);
          v22 = v10;
        }

        if (v21 >= *(v10 + 16))
        {
          goto LABEL_32;
        }

        v12 = v10 + 8 * v21;
        v13 = *(v12 + 32);
        *(v12 + 32) = v8;

        specialized ContiguousArray._endMutation()();
        if ((v21 + 1) < v3)
        {
          v14 = v21 + 1;
        }

        else
        {
          v14 = 0;
        }

        v21 = v14;
        v6 = v9;
        if (v9 == v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:

    v15 = v23;

    return v15;
  }

  if (!(a2 >> 62))
  {
    return (a2 & 0xFFFFFFFFFFFFFF8);
  }

LABEL_33:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
LABEL_36:

    return _swiftEmptyArrayStorage;
  }

  v18 = v17;
  v15 = sub_100064958(v17, 0);
  sub_100065AA8((v15 + 4), v18, v2);
  v20 = v19;

  if (v20 != v18)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v15;
}

void sub_10006195C(char a1)
{
  if (sub_1000660CC())
  {
    v3 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
    v7 = [objc_opt_self() actionWithType:1 object:v3];

    sub_10003E110(0, &unk_1001FDE50);
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    v4 = sub_100119F98(qword_10020A380);
    v5 = [v4 _hostedWindowScene];

    if (v5)
    {
      [v5 sendAction:v7];
    }
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___DARootViewController_responder);

    [v6 enableVolumeHUD:a1 & 1];
  }
}

void sub_100061B10(char a1, float a2)
{
  if (sub_1000660CC())
  {
    sub_10003C49C(&qword_1001FDF48);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656E746867697262;
    *(inited + 16) = xmmword_10017EC10;
    *(inited + 40) = 0xEA00000000007373;
    v7 = objc_allocWithZone(NSNumber);
    *&v8 = a2;
    v9 = [v7 initWithFloat:v8];
    v10 = sub_10003E110(0, &qword_1001FDF50);
    *(inited + 48) = v9;
    *(inited + 72) = v10;
    *(inited + 80) = 0x6574616D696E61;
    *(inited + 88) = 0xE700000000000000;
    v11 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
    *(inited + 120) = v10;
    *(inited + 96) = v11;
    sub_1000D59EC(inited);
    swift_setDeallocating();
    sub_10003C49C(&qword_1001FDF58);
    swift_arrayDestroy();
    sub_10003C49C(&unk_1001FDF60);
    v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v13 = [objc_opt_self() actionWithType:0 object:v12];
    swift_unknownObjectRelease();
    sub_10003E110(0, &unk_1001FDE50);
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    v14 = sub_100119F98(qword_10020A380);
    v15 = [v14 _hostedWindowScene];

    if (v15)
    {
      [v15 sendAction:v13];
    }
  }

  else
  {
    v16 = *(v2 + OBJC_IVAR___DARootViewController_responder);
    *&v5 = a2;

    [v16 setScreenToBrightness:a1 & 1 animate:v5];
  }
}

void sub_100061F08(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100061F78(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v100 = a8;
  v98 = a6;
  v97 = a4;
  v86 = a2;
  v83 = sub_10003C49C(&qword_1001FDF98);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v78 - v17;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v90 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v91 = *(v20 - 8);
  v92 = v20;
  __chkstk_darwin(v20);
  v89 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC820 != -1)
  {
    swift_once();
  }

  v87 = qword_10020A588;
  v22 = sub_100107734(a1);
  v23 = qword_1001FC738;
  v24 = v22;
  swift_bridgeObjectRetain_n();
  v25 = a5;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v95 = a13;
  swift_retain_n();
  v26 = swift_bridgeObjectRetain_n();
  if (v23 != -1)
  {
    v26 = swift_once();
  }

  v27 = v97;
  v102 = a7;
  v99 = v24;
  v96 = a5;
  if (!qword_1001FEED8)
  {
    sub_10003E110(0, &qword_1001FD040);
    v87 = a3;
    v86 = static OS_dispatch_queue.main.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    *(v51 + 24) = v24;
    *(v51 + 32) = a5;
    *(v51 + 40) = v98;
    *(v51 + 48) = a7;
    *(v51 + 56) = v100;
    *(v51 + 64) = a9;
    *(v51 + 72) = a10;
    *(v51 + 80) = a11;
    *(v51 + 88) = 0;
    *(v51 + 96) = a12;
    *(v51 + 104) = v95;
    v108 = sub_100068B2C;
    v109 = v51;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100031FA8;
    v107 = &unk_1001C0CA0;
    v52 = _Block_copy(&aBlock);
    v88 = a10;
    v53 = v52;

    v54 = v89;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
    v55 = v90;
    v56 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v86;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v93 + 8))(v55, v56);
    return (*(v91 + 8))(v54, v92);
  }

  v84 = a12;
  v101 = a11;
  __chkstk_darwin(v26);
  *(&v78 - 4) = v29;
  *(&v78 - 3) = v28;
  *(&v78 - 2) = v30;
  *(&v78 - 1) = a3;
  v86 = a3;
  sub_10003C49C(&qword_1001FDF90);
  OS_dispatch_queue.sync<A>(execute:)();
  v31 = aBlock;
  v85 = a9;
  if (!aBlock)
  {
    sub_10003E110(0, &qword_1001FD040);
    v87 = static OS_dispatch_queue.main.getter();
    v58 = swift_allocObject();
    *(v58 + 16) = v27;
    *(v58 + 24) = v24;
    *(v58 + 32) = a5;
    v60 = v101;
    v59 = v102;
    *(v58 + 40) = v98;
    *(v58 + 48) = v59;
    *(v58 + 56) = v100;
    *(v58 + 64) = a9;
    *(v58 + 72) = a10;
    *(v58 + 80) = v60;
    v61 = v84;
    *(v58 + 88) = 0;
    *(v58 + 96) = v61;
    *(v58 + 104) = v95;
    v108 = sub_100068E74;
    v109 = v58;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100031FA8;
    v107 = &unk_1001C0CF0;
    v62 = _Block_copy(&aBlock);

    v54 = v89;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
    v63 = v90;
    v64 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v65 = v87;
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v62);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v93 + 8))(v63, v64);
    return (*(v91 + 8))(v54, v92);
  }

  v80 = v31;
  v32 = [v31 primaryAssetLocator];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = swift_allocObject();
  *(v36 + 16) = v27;
  *(v36 + 24) = v24;
  *(v36 + 32) = v25;
  v37 = v102;
  *(v36 + 40) = v98;
  *(v36 + 48) = v37;
  v38 = v101;
  *(v36 + 56) = v100;
  *(v36 + 64) = a9;
  *(v36 + 72) = a10;
  *(v36 + 80) = v38;
  v39 = v95;
  *(v36 + 88) = v84;
  *(v36 + 96) = v39;
  v40 = *(v87 + 5);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v88 = a10;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v41 = v39;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v42 = v40;
  [v40 lock];
  v43 = HIBYTE(v35) & 0xF;
  v79 = v35;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v43 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    type metadata accessor for ImageLoader();
    v44 = swift_allocObject();
    aBlock = 0;
    v105 = 0;
    LOBYTE(v106) = 2;
    Published.init(initialValue:)();
    v45 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v44 + v45) = [objc_allocWithZone(NSLock) init];
    *(v44 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v46 = (v44 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    v47 = v79;
    *v46 = v33;
    v46[1] = v47;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0);
    v48 = v81;
    Published.projectedValue.getter();
    swift_endAccess();
    v49 = swift_allocObject();
    v49[2] = sub_100068B98;
    v49[3] = v36;
    v49[4] = v87;
    v49[5] = v44;
    sub_10005C71C(&qword_1001FDFA8, &qword_1001FDF98);

    v50 = v83;
    Publisher<>.sink(receiveValue:)();

    (*(v82 + 8))(v48, v50);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(&v103, v44);
    swift_endAccess();

    sub_100086EF0();
    [v42 unlock];
  }

  else
  {
    [v40 unlock];
    sub_10003E110(0, &qword_1001FD040);
    v87 = static OS_dispatch_queue.main.getter();
    v67 = swift_allocObject();
    *(v67 + 16) = v97;
    v68 = v96;
    *(v67 + 24) = v99;
    *(v67 + 32) = v68;
    v70 = v101;
    v69 = v102;
    *(v67 + 40) = v98;
    *(v67 + 48) = v69;
    v71 = v85;
    *(v67 + 56) = v100;
    *(v67 + 64) = v71;
    *(v67 + 72) = v88;
    *(v67 + 80) = v70;
    v72 = v84;
    *(v67 + 88) = 0;
    *(v67 + 96) = v72;
    *(v67 + 104) = v41;
    v108 = sub_100068E74;
    v109 = v67;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100031FA8;
    v107 = &unk_1001C0D90;
    v100 = _Block_copy(&aBlock);

    v73 = v89;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
    v74 = v90;
    v75 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v76 = v100;
    v77 = v87;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v76);

    (*(v93 + 8))(v74, v75);
    (*(v91 + 8))(v73, v92);
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

void sub_100062EF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSString a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = a1;
  v17 = type metadata accessor for SelfServiceInstructionsViewController();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActionsMaxCount] = 2;
  *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_defaultTransitionDuration] = 0x3FC999999999999ALL;
  v19 = _UISolariumEnabled();
  v20 = 15.0;
  if (v19)
  {
    v20 = 0.0;
  }

  *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructionsViewHorizontalSpacing] = v20;
  v21 = &v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onDismiss];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_images] = a2;
  *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructions] = a3;
  *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_style] = v16;
  *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_options] = a8;
  if (*(a9 + 16) <= 2uLL)
  {
    *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActions] = a9;
  }

  else
  {
    sub_100098AE8(a9, a9 + 32, 0, 5uLL);
    *&v18[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActions] = v24;
  }

  v25 = String._bridgeToObjectiveC()();
  if (a7)
  {
    a7 = String._bridgeToObjectiveC()();
  }

  v31.receiver = v18;
  v31.super_class = v17;
  v26 = objc_msgSendSuper2(&v31, "initWithTitle:detailText:icon:contentLayout:", v25, a7, a10, 2, a6);

  v27 = swift_allocObject();
  *(v27 + 16) = a11;
  *(v27 + 24) = a12;
  v28 = &v26[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  v29 = *&v26[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  *v28 = sub_100068D18;
  v28[1] = v27;

  sub_10003C52C(v29);
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  [qword_10020A388 pushViewController:v26 animated:1];
}

void sub_100063348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id sub_1000633E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___DARootViewController_hostAppBundleIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR___DARootViewController_responder;
  *&v3[v7] = [objc_opt_self() sharedInstance];
  v8 = &v3[OBJC_IVAR___DARootViewController_remoteCardFilter];
  *v8 = &_swiftEmptySetSingleton;
  *(v8 + 1) = &_swiftEmptySetSingleton;
  v8[16] = 1;
  *&v3[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] = 0;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for RootViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100063544(void *a1)
{
  v3 = &v1[OBJC_IVAR___DARootViewController_hostAppBundleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR___DARootViewController_responder;
  *&v1[v4] = [objc_opt_self() sharedInstance];
  v5 = &v1[OBJC_IVAR___DARootViewController_remoteCardFilter];
  *v5 = &_swiftEmptySetSingleton;
  *(v5 + 1) = &_swiftEmptySetSingleton;
  v5[16] = 1;
  *&v1[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RootViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_10006363C()
{

  v1 = *(v0 + OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController);
}

id sub_1000636B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100063788(uint64_t result, uint64_t a2)
{
  if (result == 1)
  {
    *(*(a2 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager) + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) = 0;
    return sub_100151130();
  }

  return result;
}

uint64_t sub_1000637D8(unsigned __int8 a1)
{
  v2 = a1 - 1;
  v3 = 2;
  switch(v2)
  {
    case 0:
    case 12:
      goto LABEL_21;
    case 2:
      sub_100067B6C();
      v3 = 0;

      break;
    case 3:
    case 11:
      v3 = 1;

      break;
    case 4:
      v3 = 3;

      break;
    case 7:
      v3 = 5;

      break;
    case 8:
      v3 = 6;

      break;
    case 9:
      v3 = 7;

      break;
    case 10:
      v3 = 8;

      break;
    case 13:
      v3 = 0;

      break;
    case 14:
      v3 = 10;

      break;
    case 15:
      v3 = 9;

      break;
    case 16:
      v3 = 15;

      break;
    case 17:
      v3 = 11;

      break;
    case 18:
      v3 = 12;

      break;
    case 19:
      v3 = 13;

      break;
    case 20:
      v3 = 14;

      break;
    default:
      v3 = 4;
LABEL_21:

      break;
  }

  return sub_10006631C(v3);
}

void sub_1000639B8(uint64_t a1)
{
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100125DD8(0, 0);
  swift_endAccess();
  v2 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1];
  v3 = [objc_opt_self() actionWithType:3 object:v2];

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_10003E110(0, &unk_1001FDE50);
  v4 = sub_100119F98(qword_10020A380);
  v5 = [v4 _hostedWindowScene];

  if (v5)
  {
    [v5 sendAction:v3];
  }
}

void sub_100063B30(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItem];

  if (v2)
  {
    [v2 setEnabled:0];
  }
}

uint64_t sub_100063BC8()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_100064B74(v5), (v3 & 1) == 0))
  {

    sub_10003DB48(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_10003E010(*(v1 + 56) + 32 * v2, &v6);
  sub_10003DB48(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_10003DD84(&v6, &unk_1001FD720);
    return OS_dispatch_semaphore.signal()();
  }

  result = swift_dynamicCast();
  if (!result || v5[0] <= 0)
  {
    return OS_dispatch_semaphore.signal()();
  }

  return result;
}

id sub_100063D04(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

uint64_t sub_100063D58()
{
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100125DD8(0, 0);
  swift_endAccess();
  sub_100067B6C();
  type metadata accessor for AppDelegate();
  return sub_1000F1D80();
}

uint64_t sub_100063E58(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1000689CC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0BB0;
  v11 = _Block_copy(aBlock);

  v12 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_100064158(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000B7C9C(0, v3, 0);
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];

      if (v8 >= v9 >> 1)
      {
        sub_1000B7C9C((v9 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v8];
      v10[4] = v7;
      v10[5] = v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v11 = sub_1000F7A18(_swiftEmptyArrayStorage);

  v12 = a2 + OBJC_IVAR___DARootViewController_remoteCardFilter;
  *(v12 + 8) = v11;
  *(v12 + 16) = 1;

  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v13 = qword_10020A3A8;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  *(qword_10020A3A8 + 16) = *v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v15;

  v16 = [objc_opt_self() defaultCenter];
  v17 = v16;
  if (qword_1001FC710 != -1)
  {
    swift_once();
    v16 = v17;
  }

  [v16 postNotificationName:qword_10020A3B0 object:{0, v17}];
}

uint64_t sub_100064368(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100068984;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0B60;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_100064668(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR___DARootViewController_remoteCardFilter;
  v3 = *(a1 + OBJC_IVAR___DARootViewController_remoteCardFilter + 8);
  v4 = *(a2 + 16);
  if (v4)
  {

    sub_1000B7C9C(0, v4, 0);
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];

      if (v9 >= v10 >> 1)
      {
        sub_1000B7C9C((v10 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v9];
      v11[4] = v8;
      v11[5] = v7;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  v12 = sub_1000F7A18(_swiftEmptyArrayStorage);

  *v2 = v12;
  *(v2 + 8) = v3;
  *(v2 + 16) = 1;
}

uint64_t sub_1000647B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);
}

void *sub_1000648D0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10003C49C(&qword_100201290);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100064958(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10003C49C(&unk_1001FD020);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1000649E0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10003C49C(&unk_1001FDEA0);
  v4 = *(type metadata accessor for TargetDevice.DeviceType() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100064ADC(void *__src, uint64_t a2, void *__dst)
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

unint64_t sub_100064AFC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10006504C(a1, a2, v4);
}

unint64_t sub_100064B74(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100065104(a1, v4);
}

unint64_t sub_100064BB8(int a1)
{
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000651CC(a1, v2);
}

unint64_t sub_100064C04(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_100065238(a1, v2);
}

unint64_t sub_100064C6C(uint64_t a1)
{
  type metadata accessor for TargetDevice();
  sub_100068260(&unk_1001FDED0, &type metadata accessor for TargetDevice);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000652A8(a1, v2, &type metadata accessor for TargetDevice, &qword_100201EE0, &type metadata accessor for TargetDevice, &protocol conformance descriptor for TargetDevice);
}

unint64_t sub_100064D40(uint64_t a1)
{
  type metadata accessor for TargetDevice.DeviceType();
  sub_100068260(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000652A8(a1, v2, &type metadata accessor for TargetDevice.DeviceType, &qword_1001FDEB0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
}

unint64_t sub_100064E14(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100068260(&unk_1001FDFB0, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100065448(a1, v2);
}

unint64_t sub_100064ECC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100065554(a1, v2);
}

unint64_t sub_100064F5C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100065658(a1, v4);
}

unint64_t sub_100064FA0(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = [*(a1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  v3 = Hasher._finalize()();

  return sub_10006572C(a1, v3);
}

unint64_t sub_10006504C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100065104(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000681EC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10003DB48(v8);
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

unint64_t sub_1000651CC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100065238(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000652A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100068260(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100065448(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100068260(&unk_1001FDFB0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

unint64_t sub_100065554(uint64_t a1, uint64_t a2)
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

unint64_t sub_100065658(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10003E110(0, &qword_1001FDE80);
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

unint64_t sub_10006572C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    while (1)
    {
      v5 = *(*(*(v2 + 48) + 8 * v4) + 40);

      v6 = [v5 serialNumber];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = [*(a1 + 40) serialNumber];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (v7 == v11 && v9 == v13)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
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

uint64_t sub_1000658F4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10005C71C(&qword_1001FDFC8, &qword_1001FDFC0);
          for (i = 0; i != v6; ++i)
          {
            sub_10003C49C(&qword_1001FDFC0);
            v9 = sub_100065FC4(v13, i, a3);
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
        sub_10003E110(0, &qword_1001FD550);
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

uint64_t sub_100065AA8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10005C71C(&unk_1001FDE40, &qword_1001FDE38);
          for (i = 0; i != v6; ++i)
          {
            sub_10003C49C(&qword_1001FDE38);
            v9 = sub_100065FC4(v13, i, a3);
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
        sub_10003E110(0, &qword_1001FDE30);
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

uint64_t sub_100065C5C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10005C71C(&qword_1001FDEC8, &qword_1001FDEC0);
          for (i = 0; i != v6; ++i)
          {
            sub_10003C49C(&qword_1001FDEC0);
            v9 = sub_100066044(v13, i, a3);
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
        sub_10003E110(0, &qword_1001FDEB8);
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

uint64_t sub_100065E10(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10005C71C(&qword_1001FDE98, &qword_1001FDE90);
          for (i = 0; i != v6; ++i)
          {
            sub_10003C49C(&qword_1001FDE90);
            v9 = sub_100065FC4(v13, i, a3);
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
        sub_10003E110(0, &qword_100202990);
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

uint64_t (*sub_100065FC4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_100068E80;
  }

  __break(1u);
  return result;
}

void (*sub_100066044(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000660C4;
  }

  __break(1u);
  return result;
}

BOOL sub_1000660CC()
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_10003E110(0, &unk_1001FDE50);
  v0 = sub_100119F98(qword_10020A380);
  v1 = [v0 _hostedWindowScene];

  if (v1)
  {
  }

  sub_10003E110(0, &qword_1001FD6F0);
  v2 = static OS_os_log.default.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1 != 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Remote View Controller: %{BOOL}d", v4, 8u);
  }

  return v1 != 0;
}

uint64_t sub_100066220()
{
  v3 = [objc_opt_self() actionWithType:2 object:0];
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_10003E110(0, &unk_1001FDE50);
  v0 = sub_100119F98(qword_10020A380);
  v1 = [v0 _hostedWindowScene];

  if (v1)
  {
    [v1 sendAction:v3];
  }

  return _objc_release_x2();
}

uint64_t sub_10006631C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_100068258;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0B10;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

id sub_100066608()
{
  v9 = qword_1001FDBA0;
  if (!qword_1001FDBA0 || (type metadata accessor for SelfServiceDestinationPickerViewController(), swift_dynamicCastClass()) || (type metadata accessor for AssessmentQRCodeViewController(), swift_dynamicCastClass()))
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    v0 = [qword_10020A388 viewControllers];
    sub_10003E110(0, &qword_1001FDE30);
    v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v1 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (v2)
      {
LABEL_8:
        v3 = __OFSUB__(v2, 1);
        v4 = v2 - 1;
        if (v3)
        {
          __break(1u);
        }

        else if ((v1 & 0xC000000000000001) == 0)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v4 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v5 = *(v1 + 8 * v4 + 32);
LABEL_13:
            v6 = v5;

            return v6;
          }

          __break(1u);
          goto LABEL_25;
        }

        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_13;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        goto LABEL_8;
      }
    }

    if (qword_1001FC6C8 == -1)
    {
LABEL_17:
      v8 = qword_10020A380;
      goto LABEL_18;
    }

LABEL_25:
    swift_once();
    goto LABEL_17;
  }

  v8 = v9;
LABEL_18:

  return v8;
}

uint64_t sub_1000667E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100066800(char a1, char a2)
{
  v4 = static os_log_type_t.debug.getter();
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v5 = qword_10020A4F8;
  if (os_log_type_enabled(qword_10020A4F8, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100056B7C(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v4, "Returning to Setup for reason: %s", v6, 0xCu);
    sub_100044554(v7);
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v11 = qword_10020A388;
  v12 = [qword_10020A388 topViewController];
  v13 = v12;
  if (qword_1001FC6A0 == -1)
  {
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    swift_once();
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v14 = qword_10020A358;
  sub_10003E110(0, &qword_1001FDE30);
  v15 = v14;
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {
    static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)();
    return;
  }

LABEL_12:
  v17 = qword_1001FDBA0;
  qword_1001FDBA0 = 0;

  *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason) = a1;
}

id sub_100066A88(void *a1, void *a2, uint64_t (*a3)(id))
{
  v6 = [a1 parentViewController];
  if (v6)
  {
    v7 = v6;
    sub_10003E110(0, &qword_1001FDE30);
    v8 = a2;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      goto LABEL_11;
    }
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10017EC10;
  v11 = sub_10003E110(0, &qword_1001FDE30);
  *(v10 + 56) = v11;
  v12 = sub_1000689D4(&unk_1001FDF70, &qword_1001FDE30);
  *(v10 + 32) = a1;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a2;
  v13 = a2;
  v14 = a1;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [v14 willMoveToParentViewController:v13];
  [v13 addChildViewController:v14];
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = result;
  result = [v13 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = result;
  [result bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v16 setFrame:{v19, v21, v23, v25}];
  result = [v14 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = result;
  [result setAutoresizingMask:18];

  result = [v13 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = result;
  result = [v14 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v28 = result;
  [v27 addSubview:result];

  [v14 didMoveToParentViewController:v13];
LABEL_11:
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_10020A5E0 == 1)
  {
    sub_10003C49C(&unk_1001FEAD0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v30 = qword_10020A4F8;
    *(v29 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v29 + 64) = sub_1000689D4(&qword_100201280, &qword_1001FD6F0);
    *(v29 + 32) = v30;
    v31 = v30;
    v32 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    byte_10020A5E0 = 0;
    sub_1001262B0();
  }

  result = swift_endAccess();
  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_100066F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v11 = a5[2];
  if (v11)
  {
  }

  else
  {
    sub_10003C49C(&qword_100201290);
    a5 = swift_allocObject();
    *(a5 + 1) = xmmword_10017EC00;
    a5[4] = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x5353494D534944, 0xE700000000000000);
    a5[5] = v12;
    v11 = a5[2];
    if (!v11)
    {
LABEL_7:

      [v21 showOnTopWithAnimated:1 completion:0];

      return;
    }
  }

  v13 = 0;
  v14 = a5 + 5;
  while (v13 < a5[2])
  {
    v15 = v13 + 1;
    v16 = swift_allocObject();
    v16[2] = a6;
    v16[3] = a7;
    v16[4] = v13;

    v17 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100068DBC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100072168;
    aBlock[3] = &unk_1001C0E80;
    v18 = _Block_copy(aBlock);

    v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];
    _Block_release(v18);

    [v21 addAction:v19];

    v14 += 2;
    v13 = v15;
    if (v11 == v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_100067194(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a7;
  v52 = a8;
  v50 = a6;
  v53 = a3;
  v54 = a1;
  v49 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  result = __chkstk_darwin(v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC730 != -1)
  {
    result = swift_once();
  }

  v47 = a4;
  v48 = a5;
  v21 = qword_10020A3C8;
  if (qword_1001FC738 != -1)
  {
    result = swift_once();
  }

  v22 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v23 = qword_1001FEED0;
    __chkstk_darwin(result);
    *(&v44 - 4) = v21;
    *(&v44 - 3) = v23;
    *(&v44 - 2) = v22;
    sub_10003C49C(&unk_1001FF0A0);
    result = OS_dispatch_queue.sync<A>(execute:)();
    if (aBlock[0])
    {
      v46 = a11;
      v44 = a10;
      v45 = a9;
      __chkstk_darwin(result);
      *(&v44 - 4) = v21;
      *(&v44 - 3) = v23;
      *(&v44 - 2) = v22;
      *(&v44 - 1) = v24;
      v25 = v24;
      sub_10003C49C(&qword_1001FDF90);
      OS_dispatch_queue.sync<A>(execute:)();
      v26 = aBlock[0];
      if (aBlock[0])
      {
        v27 = [aBlock[0] suiteNameLocalizedString];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {

        v30 = v48;

        v28 = v47;
      }

      sub_10003E110(0, &qword_1001FD040);
      (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*(v17 + 8))(v20, v16);
      v32 = swift_allocObject();
      v33 = v54;
      *(v32 + 16) = v53;
      *(v32 + 24) = v21;
      *(v32 + 32) = v25;
      *(v32 + 40) = v49;
      *(v32 + 48) = v33;
      *(v32 + 56) = v28;
      v34 = v50;
      v35 = v51;
      *(v32 + 64) = v30;
      *(v32 + 72) = v34;
      v36 = v52;
      *(v32 + 80) = v35;
      *(v32 + 88) = v36;
      v37 = v44;
      *(v32 + 96) = v45;
      *(v32 + 104) = v37;
      *(v32 + 112) = v46;
      aBlock[4] = sub_100068AE4;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C0C50;
      v38 = _Block_copy(aBlock);

      v39 = v25;

      v40 = v21;

      v41 = v55;
      static DispatchQoS.unspecified.getter();
      v61 = _swiftEmptyArrayStorage;
      sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
      v42 = v57;
      v43 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v59 + 8))(v42, v43);
      (*(v56 + 8))(v41, v58);
    }
  }

  return result;
}

uint64_t sub_1000677EC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a12;
  v35 = a7;
  v32 = a11;
  v33 = a6;
  v30[1] = a10;
  v31 = a5;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v39 = *(v18 - 8);
  v40 = v18;
  __chkstk_darwin(v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v38 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  v22 = v33;
  *(v21 + 40) = v31;
  *(v21 + 48) = v22;
  *(v21 + 56) = v35;
  *(v21 + 64) = a8;
  *(v21 + 72) = a9;
  *(v21 + 80) = a10;
  v23 = v32;
  *(v21 + 88) = a1;
  *(v21 + 96) = v23;
  *(v21 + 104) = v34;
  aBlock[4] = sub_100068E74;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0DE0;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
  v27 = v36;
  v26 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v38;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v41 + 8))(v27, v26);
  return (*(v39 + 8))(v20, v40);
}

void sub_100067B6C()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = (__chkstk_darwin)();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  v45 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    v20 = v45;

    return;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  v10 = *(v7 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager);
  v11 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v12 = *&v10[v11];
  if (!*(v12 + 16) || (v13 = sub_100064C04(1u), (v14 & 1) == 0))
  {

    return;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = v45;
  if (v15 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v45;
    if (v38)
    {
      goto LABEL_6;
    }

LABEL_22:

    return;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_6:
  v44 = v1;
  v43 = v10;
  v17 = dispatch_semaphore_create(0);
  if ([objc_opt_self() isMainThread])
  {
    v18 = [v8 navigationItem];
    v19 = [v18 leftBarButtonItem];

    if (v19)
    {
      [v19 setEnabled:0];
    }

    v41 = 0;
    v42 = 0;
  }

  else
  {
    v40 = v17;
    sub_10003E110(0, &qword_1001FD040);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v8;
    v23 = swift_allocObject();
    v41 = sub_1000681DC;
    v42 = v22;
    *(v23 + 16) = sub_1000681DC;
    *(v23 + 24) = v22;
    v50 = sub_10003D960;
    v51 = v23;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100060C48;
    v49 = &unk_1001C0A70;
    v24 = _Block_copy(&aBlock);
    v25 = v45;

    dispatch_sync(v21, v24);

    _Block_release(v24);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
      return;
    }

    v17 = v40;
  }

  v40 = objc_opt_self();
  v26 = [v40 defaultCenter];
  if (qword_1001FC850 != -1)
  {
    swift_once();
  }

  v27 = qword_10020A650;
  v28 = [objc_opt_self() mainQueue];
  v29 = swift_allocObject();
  *(v29 + 16) = v17;
  v50 = sub_1000681E4;
  v51 = v29;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_100060B2C;
  v49 = &unk_1001C0AC0;
  v30 = _Block_copy(&aBlock);
  v39 = v17;

  v31 = [v26 addObserverForName:v27 object:0 queue:v28 usingBlock:v30];
  _Block_release(v30);

  v32 = *&v8[v9];
  sub_100104F3C();

  static DispatchTime.now()();
  + infix(_:_:)();
  v33 = *(v44 + 8);
  v34 = v4;
  v35 = v39;
  v33(v34, v0);
  OS_dispatch_semaphore.wait(timeout:)();
  v33(v6, v0);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v36 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  v37 = [v40 defaultCenter];
  swift_unknownObjectRetain();
  [v37 removeObserver:v31];

  swift_unknownObjectRelease_n();
  sub_10003C52C(v41);
}

uint64_t sub_1000681A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100068570(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10003DD84(v6, &qword_1001FDF40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = URL.host.getter();
    if (v12)
    {
      qword_10020A500 = v11;
      qword_10020A508 = v12;

      return (*(v8 + 8))(v10, v7);
    }

    (*(v8 + 8))(v10, v7);
  }

  qword_10020A500 = a1;
  qword_10020A508 = a2;
}

void sub_100068758(void *a1)
{
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A358;
  v3 = *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow);
  *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) = a1;
  v4 = v2;

  v5 = a1;
  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5)
  {
    v6 = sub_100066608();
    type metadata accessor for SetupViewController();
    v7 = swift_dynamicCastClass();

    if (!v7)
    {
      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10003DAAC(v8, qword_10020A510);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Returning to setup for assessment flow", v11, 2u);
      }

      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(0, 0);
    }
  }
}

uint64_t sub_100068944()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006898C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000689D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003E110(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100068A6C()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100068B30()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100068BD8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100068C2C()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100068CE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068D44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068D84()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100068DBC()
{
  v1 = *(v0 + 16);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1(isa, 0);
}

uint64_t sub_100068EC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100068F08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100068F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v28 = *(a2 + 16);
  v29 = *(a2 + 32);
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a2 + 32);
  (*(v5 + 32))(v10 + v9, v7, v4);
  v22 = 0;
  v23 = 0;
  v21 = v8;
  v24 = sub_10006957C;
  v25 = v10;
  v26 = 0;
  v27 = 0;
  v12 = v8;
  sub_100069440(&v28, v20);
  GeometryProxy.size.getter();
  v19[0] = v13;
  v19[1] = v14;
  v15 = swift_allocObject();
  v16 = *(a2 + 16);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a2 + 32);
  v17 = v12;
  sub_100069440(&v28, v20);
  sub_10003C49C(&qword_1001FE098);
  type metadata accessor for CGSize(0);
  sub_100069628();
  sub_1000696B4();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_1000691C4(uint64_t a1)
{
  GeometryProxy.size.getter();
  v2 = *a1;
  [*a1 setPreferredMaxLayoutWidth:v3 - (*(a1 + 8) + *(a1 + 8))];
  [v2 sizeToFit];
  [v2 intrinsicContentSize];
  sub_10003C49C(&qword_1001FE090);
  return State.wrappedValue.setter();
}

uint64_t sub_10006926C(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a3;
  [*a3 setPreferredMaxLayoutWidth:*a2 - (*(a3 + 8) + *(a3 + 8))];
  [v3 sizeToFit];
  [v3 intrinsicContentSize];
  sub_10003C49C(&qword_1001FE090);
  return State.wrappedValue.setter();
}

double sub_100069310@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v16 = *(v1 + 16);
  v17 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(v1 + 8);
  *(v4 + 40) = *(v1 + 24);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  v5 = v3;
  sub_100069440(&v16, v11);
  sub_10003C49C(&qword_1001FE090);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = v12;
  v7 = BYTE8(v12);
  v8 = v13;
  v9 = v14;
  *a1 = sub_100069438;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  result = *&v15;
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_100069440(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FE090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000694B0()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006957C()
{
  type metadata accessor for GeometryProxy();

  return sub_1000691C4(v0 + 16);
}

uint64_t sub_1000695E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100069628()
{
  result = qword_1001FE0A0;
  if (!qword_1001FE0A0)
  {
    sub_10003C4E4(&qword_1001FE098);
    sub_10005C6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE0A0);
  }

  return result;
}

unint64_t sub_1000696B4()
{
  result = qword_1001FE0A8;
  if (!qword_1001FE0A8)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE0A8);
  }

  return result;
}

unint64_t sub_100069710()
{
  result = qword_1001FE0B0;
  if (!qword_1001FE0B0)
  {
    sub_10003C4E4(&qword_1001FE0B8);
    sub_10006979C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE0B0);
  }

  return result;
}

unint64_t sub_10006979C()
{
  result = qword_1001FE0C0;
  if (!qword_1001FE0C0)
  {
    sub_10003C4E4(&qword_1001FE0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE0C0);
  }

  return result;
}

char *sub_100069804()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_isReadyToScanPublisher] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_verticalPadding] = 0x4042800000000000;
  v2 = OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_continueButton;
  *&v1[v2] = [objc_opt_self() boldButton];
  v3 = OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_imageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarStandardAppearance] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarScrollEdgeAppearance] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_barButton] = 0;
  v4 = OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_instructionsView;
  sub_10003C49C(&qword_1001FE168);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017EF10;
  _StringGuts.grow(_:)(52);
  DeviceClass = GestaltGetDeviceClass();
  v7._countAndFlagsBits = sub_100100580(DeviceClass);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000032;
  v8._object = 0x800000010018BD60;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = objc_opt_self();
  v11 = [v10 _systemImageNamed:v9];

  *(v5 + 32) = v11;
  *(v5 + 40) = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000034, 0x800000010018BDA0);
  *(v5 + 48) = v12;
  _StringGuts.grow(_:)(16);
  v13 = GestaltGetDeviceClass();
  sub_100100580(v13);

  v14._countAndFlagsBits = 0x79616C707369642ELL;
  v14._object = 0xEE006E61656C632ELL;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v10 _systemImageNamed:v15];

  *(v5 + 56) = v16;
  *(v5 + 64) = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000035, 0x800000010018BDE0);
  *(v5 + 72) = v17;
  v18 = GestaltGetDeviceClass();
  v41 = sub_100100580(v18);
  v42 = v19;
  v20._countAndFlagsBits = 0x657361632ELL;
  v20._object = 0xE500000000000000;
  String.append(_:)(v20);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v10 _systemImageNamed:v21];

  *(v5 + 80) = v22;
  *(v5 + 88) = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002FLL, 0x800000010018BE20);
  *(v5 + 96) = v23;
  v24 = [objc_allocWithZone(type metadata accessor for InstructionList()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v24[OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions] = v5;

  *&v1[v4] = v24;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x800000010018BE50);
  v25 = String._bridgeToObjectiveC()();

  v40.receiver = v1;
  v40.super_class = type metadata accessor for AssessmentDamageCheckGuideViewController();
  v26 = objc_msgSendSuper2(&v40, "initWithTitle:detailText:symbolName:contentLayout:", v25, 0, 0, 4);

  v27 = v26;
  v28 = [v27 navigationController];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 navigationBar];

    v31 = [v30 standardAppearance];
    v32 = [v31 copy];
  }

  else
  {
    v32 = 0;
  }

  v33 = *&v27[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarStandardAppearance];
  *&v27[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarStandardAppearance] = v32;

  v34 = [v27 navigationController];
  if (v34 && (v35 = [v34 navigationBar], v34, v36 = objc_msgSend(v35, "scrollEdgeAppearance"), v35, v36))
  {
    v37 = [v36 copy];
  }

  else
  {
    v37 = 0;
  }

  v38 = *&v27[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarScrollEdgeAppearance];
  *&v27[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarScrollEdgeAppearance] = v37;

  return v27;
}

void sub_100069D18()
{
  v1 = v0;
  swift_getObjectType();
  v75.receiver = v0;
  v75.super_class = type metadata accessor for AssessmentDamageCheckGuideViewController();
  objc_msgSendSuper2(&v75, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v74 = *&v0[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_instructionsView];
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 scrollView];
  [v3 setShowsVerticalScrollIndicator:0];

  v4 = OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_imageView;
  [*&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_imageView] setContentMode:2];
  [*&v1[v4] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v4] setClipsToBounds:1];
  v5 = *&v1[v4];
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() imageNamed:v6];

  [v5 setImage:v7];
  v8 = [v1 contentView];
  [v8 addSubview:*&v1[v4]];

  sub_10006BDC0();
  sub_10003C49C(&qword_1001FE160);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10017EC00;
  *(v9 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v9 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_10003E110(0, &qword_1001FD3B8);
  sub_10003E110(0, &qword_1002023B0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v10;
  v76.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v76.is_nil = 0;
  v11.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v76, v77).super.super.isa;
  v12 = OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_barButton;
  v13 = *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_barButton];
  *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_barButton] = v11;

  LODWORD(v10) = _UISolariumEnabled();
  v14 = [v1 navigationItem];
  v15 = *&v1[v12];
  v16 = &selRef_setLeftBarButtonItem_;
  if (!v10)
  {
    v16 = &selRef_setRightBarButtonItem_;
  }

  [v14 *v16];

  v17 = *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_continueButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x45554E49544E4F43, 0xE800000000000000);
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18 forState:0];

  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  v20 = v1;
  v72 = v19;
  v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v73 = v17;
  [v17 addAction:v21 forControlEvents:{64, 0, 0, 0, sub_10006C31C, v72}];

  v22 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10017ED60;
  v24 = [*&v1[v4] topAnchor];
  v25 = [v20 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v23 + 32) = v27;
  v28 = [*&v1[v4] bottomAnchor];
  v29 = [v20 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v23 + 40) = v31;
  v32 = [*&v1[v4] leadingAnchor];
  v33 = [v20 contentView];
  v34 = [v33 leadingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v23 + 48) = v35;
  v36 = [*&v1[v4] trailingAnchor];
  v37 = [v20 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38];
  *(v23 + 56) = v39;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];

  v41 = [v20 secondaryContentView];
  if (v41)
  {
    v42 = v41;
    v43 = [objc_opt_self() systemBackgroundColor];
    [v42 setBackgroundColor:v43];

    [v42 addSubview:v74];
    v44 = [v20 buttonTray];
    [v44 addButton:v73];

    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10017ED60;
    v46 = [v74 topAnchor];
    v47 = [v42 topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:37.0];

    *(v45 + 32) = v48;
    v49 = [v74 bottomAnchor];
    v50 = [v42 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v45 + 40) = v51;
    v52 = [v74 widthAnchor];
    v53 = [objc_opt_self() currentDevice];
    v54 = [v53 userInterfaceIdiom];

    if (v54 == 1)
    {
      v55 = 326.0;
    }

    else
    {
      v56 = [v20 view];
      if (!v56)
      {
        __break(1u);
        return;
      }

      v57 = v56;
      [v56 bounds];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      v78.origin.x = v59;
      v78.origin.y = v61;
      v78.size.width = v63;
      v78.size.height = v65;
      v55 = CGRectGetWidth(v78) + -88.0;
    }

    v66 = [v52 constraintEqualToConstant:v55];

    *(v45 + 48) = v66;
    v67 = [v74 centerXAnchor];
    v68 = [v42 centerXAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    *(v45 + 56) = v69;
    v70 = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints:v70];

    [v74 invalidateIntrinsicContentSize];
  }
}

void sub_10006A724()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    v3 = [v2 navigationItem];
    v4 = [v3 rightBarButtonItem];

    sub_100088E48(0, v4);

    v5 = *&v2[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_barButton];
    if (v5)
    {
      v6 = v5;
      [v6 setEnabled:0];
    }
  }
}

uint64_t sub_10006A858()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000EC128(5);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_10017FF90, v5);
}

uint64_t sub_10006A96C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_10006AA00, v2, v1);
}

uint64_t sub_10006AA00()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10006AAC4;

  return sub_100137348();
}

uint64_t sub_10006AAC4()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_100048CCC;
  }

  else
  {
    v5 = sub_100048570;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10006ACB0(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AssessmentDamageCheckGuideViewController();
  objc_msgSendSuper2(&v12, "viewWillDisappear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarStandardAppearance];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      [v7 setStandardAppearance:v4];
    }
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    v11 = *&v1[OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_navigationBarScrollEdgeAppearance];
    [v10 setScrollEdgeAppearance:v11];
  }
}

void sub_10006AE2C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = __chkstk_darwin(v8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v30 - v11;
  v12 = sub_10003C49C(&qword_1001FE138);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  [*(v0 + OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_continueButton) showsBusyIndicator];
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  aBlock[0] = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isReadyToScan);
  v45 = 2;

  sub_10003C49C(&qword_1001FE140);
  sub_10003C49C(&qword_1001FE148);
  sub_10005C71C(&qword_1001FE150, &qword_1001FE140);
  Publisher.scan<A>(_:_:)();

  sub_10005C71C(&qword_1001FE158, &qword_1001FE138);
  v16 = Publisher<>.sink(receiveValue:)();
  (*(v13 + 8))(v15, v12);
  *(v1 + OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_isReadyToScanPublisher) = v16;

  if (os_variant_has_internal_content())
  {
    v17 = [objc_opt_self() standardUserDefaults];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 BOOLForKey:v18];

    if (v19)
    {
      sub_10003E110(0, &qword_1001FD040);
      v31 = static OS_dispatch_queue.main.getter();
      v20 = v32;
      static DispatchTime.now()();
      *v7 = 1;
      v22 = v33;
      v21 = v34;
      (*(v33 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v34);
      v23 = v35;
      + infix(_:_:)();
      (*(v22 + 8))(v7, v21);
      v24 = v37;
      v36 = *(v36 + 8);
      (v36)(v20, v37);
      aBlock[4] = sub_10006BD30;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C0FA8;
      v25 = _Block_copy(aBlock);
      v26 = v38;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10005BD2C();
      sub_10003C49C(&unk_1001FD050);
      sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
      v27 = v40;
      v28 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v29 = v31;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v25);

      (*(v42 + 8))(v27, v28);
      (*(v39 + 8))(v26, v41);
      (v36)(v23, v24);
    }
  }
}

uint64_t sub_10006B528@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *(result + 1);
  a3[1] = v3;
  return result;
}

uint64_t sub_10006B53C(char *a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  if (a1[1] == 1)
  {
    v6 = *a1;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = &protocol witness table for MainActor;
    *(v9 + 32) = v6;
    *(v9 + 33) = 1;
    sub_1000EC574(0, 0, v5, &unk_10017FF70, v9);
  }

  return result;
}

uint64_t sub_10006B670(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 72) = a4;
  type metadata accessor for MainActor();
  *(v4 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_10006B708, v6, v5);
}

uint64_t sub_10006B708()
{
  v1 = *(v0 + 72);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10003DAAC(v8, qword_10020A510);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "[AssessmentDamageCheckGuideViewController] Starting assessment", v11, 2u);
    }

    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v12 = swift_task_alloc();
    *(v0 + 56) = v12;
    *v12 = v0;
    v12[1] = sub_10006BB2C;

    return sub_100137DB0();
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10003DAAC(v2, qword_10020A510);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[AssessmentDamageCheckGuideViewController] Retrying assessment", v5, 2u);
    }

    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_10006B9F0;

    return sub_100137BF0();
  }
}

uint64_t sub_10006B9F0()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_10006BC68;
  }

  else
  {
    v5 = sub_1000494C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006BB2C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_10006BCCC;
  }

  else
  {
    v5 = sub_1000494C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006BC68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006BCCC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10006BD30()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(ASTAction) init];
  sub_1001387D4(v0);
}

void sub_10006BDC0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    v3 = 4085077;
  }

  else
  {
    v3 = 14741230;
  }

  v4 = [objc_allocWithZone(UIColor) initWithRed:(v3 >> 16) / 255.0 green:BYTE1(v3) / 255.0 blue:v3 / 255.0 alpha:1.0];
  v5 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v5 configureWithOpaqueBackground];
  v6 = [objc_opt_self() clearColor];
  [v5 setShadowColor:v6];

  v14 = v4;
  [v5 setBackgroundColor:?];

  v7 = [v0 navigationController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationBar];

    [v9 setStandardAppearance:v5];
  }

  v10 = [v0 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 navigationBar];

    [v12 setScrollEdgeAppearance:v5];
  }

  v13 = [v0 contentView];
  [v13 setBackgroundColor:v14];
}

id sub_10006C070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentDamageCheckGuideViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006C164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006C17C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_10006C1B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 33))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000494BC;

  return sub_10006B670(a1, v4, v5, v7 | v6);
}

uint64_t sub_10006C2A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C2E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10006C31C()
{
  sub_10006AE2C();

  sub_1000EC128(7);
}

id sub_10006C354()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics40AssessmentDamageCheckGuideViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_10006C37C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C3B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

id sub_10006C470(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (qword_1001FC6E0 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = 60.0;
  v2 = round(a1 / 60.0);
  if (a1 >= 60.0)
  {
    v1 = v2 * 60.0;
  }

  v3 = round(a1 / 3600.0);
  if (a1 >= 3600.0)
  {
    v4 = v3 * 3600.0;
  }

  else
  {
    v4 = v1;
  }

  result = [qword_1001FE170 stringFromTimeInterval:{v4, 3600.0}];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  return result;
}

uint64_t sub_10006C57C(double a1)
{
  if (a1 <= 0.0)
  {
    return 4;
  }

  v1 = 3600.0;
  if (a1 < 3600.0)
  {
    v1 = 60.0;
    if (a1 < 60.0)
    {
      return 0;
    }
  }

  v2 = round(a1 / v1) * v1;
  if (v2 >= 7200.0)
  {
    return 3;
  }

  if (v2 >= 3600.0)
  {
    return 2;
  }

  return v2 >= 120.0;
}

id sub_10006C614()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:3];
  [v0 setAllowedUnits:96];
  [v0 setMaximumUnitCount:1];
  result = [v0 setCollapsesLargestUnit:0];
  qword_1001FE170 = v0;
  return result;
}

id sub_10006C6A0()
{
  v1 = v0;
  v2 = sub_10003C49C(&unk_1001FD540);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC11Diagnostics38EnhancedLoggingCompletedViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (!SessionManager.currentSession.getter())
  {
    goto LABEL_12;
  }

  v9 = Session.status.getter();

  if (v9 != 6)
  {
    if (v9 == 7)
    {
      v10 = "_COMPLETE_SUBTITLE";
      v11 = 0xD000000000000027;
LABEL_13:
      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v11, (v10 | 0x8000000000000000));
      goto LABEL_14;
    }

LABEL_12:
    v10 = "ngCompletedViewController";
    v11 = 0xD000000000000028;
    goto LABEL_13;
  }

  if (!SessionManager.currentSession.getter())
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_11;
  }

  Session.projectedCollectionEndDate.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_11:
    sub_10004E6A0(v4);
    goto LABEL_12;
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  [v12 setDateStyle:3];
  [v12 setTimeStyle:0];
  v25 = "ENHANCED_LOGGING_FOLLOWUP_TITLE";
  sub_10003C49C(&unk_1001FEAD0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10017EC00;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = [v12 stringFromDate:isa];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_10003DFBC();
  *(v13 + 32) = v16;
  *(v13 + 40) = v18;
  sub_1000494C8(0, 0, v13, 0xD000000000000022, (v25 | 0x8000000000000000));

  (*(v6 + 8))(v8, v5);
LABEL_14:
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018BEE0);
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();

  v21 = type metadata accessor for EnhancedLoggingCompletedViewController();
  v26.receiver = v1;
  v26.super_class = v21;
  v22 = objc_msgSendSuper2(&v26, "initWithTitle:detailText:icon:contentLayout:", v19, v20, 0, 2);

  return v22;
}

void sub_10006CAC8()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EnhancedLoggingCompletedViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v2 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3 forState:0];

  sub_10006D004();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v2 addAction:v5 forControlEvents:{64, 0, 0, 0, sub_10006D088, v4}];

  v6 = [v1 buttonTray];
  [v6 addButton:v2];
}

void sub_10006CC44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {

        if (qword_1001FC6A0 != -1)
        {
          swift_once();
        }

        *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason) = 3;
        v4 = sub_100060D74();
        [v4 dismissViewControllerAnimated:1 completion:0];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10006CD98(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for EnhancedLoggingCompletedViewController();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  if (qword_1001FC7D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10003DAAC(v3, qword_10020A528);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "User has seen confirmation pane appear, flushing...", v6, 2u);
  }

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  result = SessionManager.currentSession.getter();
  if (result)
  {
    Session.flush()();
  }

  return result;
}

id sub_10006CF9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnhancedLoggingCompletedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10006D004()
{
  result = qword_1002023B0;
  if (!qword_1002023B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002023B0);
  }

  return result;
}

uint64_t sub_10006D050()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D0B8()
{
  type metadata accessor for DefaultsManager();
  result = swift_initStaticObject();
  qword_10020A398 = result;
  return result;
}

void sub_10006D118()
{
  if (os_variant_has_internal_content())
  {
    v0 = objc_opt_self();
    v1 = [v0 standardUserDefaults];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 objectForKey:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10005173C(v7);
      v4 = [v0 standardUserDefaults];
      v5 = String._bridgeToObjectiveC()();
      v6 = [v4 integerForKey:v5];

      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      sub_10005173C(v7);
    }
  }
}

uint64_t sub_10006D264()
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10006D330()
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10006D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000696B4();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_10006D468()
{
  sub_10006D4A4();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_10006D4A4()
{
  result = qword_1001FE240;
  if (!qword_1001FE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE240);
  }

  return result;
}

id sub_10006D528(void *a1, id (*a2)(), uint64_t a3)
{
  result = [a1 alpha];
  if (v7 == 0.0)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v15 = sub_10006D8C8;
    v16 = v8;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_100031FA8;
    v14 = &unk_1001C1180;
    v9 = _Block_copy(&v11);
    v10 = a1;

    if (a2)
    {
      v15 = a2;
      v16 = a3;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_100084F94;
      v14 = &unk_1001C11A8;
      a2 = _Block_copy(&v11);
    }

    [objc_opt_self() animateWithDuration:0x10000 delay:v9 options:a2 animations:0.375 completion:0.0];
    _Block_release(a2);
    _Block_release(v9);
  }

  return result;
}

id sub_10006D6C4(void *a1, id (*a2)(), uint64_t a3)
{
  result = [a1 alpha];
  if (v7 == 1.0)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v15 = sub_10006D89C;
    v16 = v8;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_100031FA8;
    v14 = &unk_1001C1108;
    v9 = _Block_copy(&v11);
    v10 = a1;

    if (a2)
    {
      v15 = a2;
      v16 = a3;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_100084F94;
      v14 = &unk_1001C1130;
      a2 = _Block_copy(&v11);
    }

    [objc_opt_self() animateWithDuration:0x20000 delay:v9 options:a2 animations:0.125 completion:0.0];
    _Block_release(a2);
    _Block_release(v9);
  }

  return result;
}

uint64_t sub_10006D864()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D8B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10006D8F8()
{
  v1 = v0;
  v2 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for NWListener.Service();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  if (sub_10008EEF0(*(v1 + 80), *(v1 + 88)))
  {

    NWListener.Service.init(name:type:domain:txtRecord:)();
    (*(v6 + 16))(v9, v11, v5);
    type metadata accessor for NWActorSystem();
    swift_allocObject();

    v12 = NWActorSystem.init(service:parameters:)();
    if (*(v1 + 96))
    {
      type metadata accessor for AssessorDevicePeerConnection();
      swift_allocObject();

      v14 = sub_1000DAAC8(v13);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v12;
      v16[5] = v14;
      v17 = &unk_100180240;
    }

    else
    {
      type metadata accessor for TargetDevicePeerConnection();
      swift_allocObject();

      v23 = sub_1000E1BB4(v22);
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v12;
      v16[5] = v23;
      v17 = &unk_100180250;
    }

    v25 = sub_1000EC574(0, 0, v4, v17, v16);

    (*(v6 + 8))(v11, v5);
    *(v1 + 16) = v25;
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10003DAAC(v18, qword_10020A510);
    v27 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v27, v19, "Failed to create listener parameters", v20, 2u);
    }

    v21 = v27;
  }
}

uint64_t sub_10006DD30()
{

  swift_unknownObjectRelease();
  sub_10005A598(*(v0 + 48));

  sub_10005F18C(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_10006DDC0()
{
  result = qword_1001FE378;
  if (!qword_1001FE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE378);
  }

  return result;
}

uint64_t sub_10006DE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10006DE34, 0, 0);
}

uint64_t sub_10006DE34()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting target device server", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for TargetDevicePeerConnection();
  v7 = sub_100070988(&qword_1001FE3A0, type metadata accessor for TargetDevicePeerConnection);
  *v5 = v0;
  v5[1] = sub_10006DFD4;
  v8 = v0[3];

  return NWActorSystem.publish<A>(_:)(v8, v6, v7);
}

uint64_t sub_10006DFD4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100070D38, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10006E108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10006E128, 0, 0);
}

uint64_t sub_10006E128()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting assessor device server", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for AssessorDevicePeerConnection();
  v7 = sub_100070988(&qword_1001FE398, type metadata accessor for AssessorDevicePeerConnection);
  *v5 = v0;
  v5[1] = sub_10006E2C8;
  v8 = v0[3];

  return NWActorSystem.publish<A>(_:)(v8, v6, v7);
}

uint64_t sub_10006E2C8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10006E3FC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10006E3FC()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to publish actor: %@", v3, 0xCu);
    sub_10003DD84(v4, &qword_1001FF0C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006E560(uint64_t a1)
{
  v53 = type metadata accessor for NWEndpoint();
  v2 = *(v53 - 8);
  v3 = __chkstk_darwin(v53);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v39 - v6);
  v49 = type metadata accessor for NWBrowser.Result();
  v52 = *(v49 - 8);
  v8 = __chkstk_darwin(v49);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v39 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (*(result + 24))
  {
  }

  v50 = v10;
  v39 = v5;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v46 = v52 + 32;
  v47 = v52 + 16;
  v45 = (v2 + 88);
  v44 = enum case for NWEndpoint.service(_:);
  v42 = (v2 + 8);
  v43 = (v52 + 8);
  v40 = (v2 + 96);

  v19 = 0;
  v20 = v49;
  v41 = a1;
  for (i = v13; v17; a1 = v41)
  {
LABEL_12:
    while (1)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v52;
      v24 = *(a1 + 48) + *(v52 + 72) * (v22 | (v19 << 6));
      v25 = a1;
      v26 = v51;
      (*(v52 + 16))(v51, v24, v20);
      v27 = v50;
      (*(v23 + 32))(v50, v26, v20);
      NWBrowser.Result.endpoint.getter();
      v28 = v53;
      v29 = (*v45)(v7, v53);
      if (v29 == v44)
      {
        break;
      }

      (*v43)(v27, v20);
      result = (*v42)(v7, v28);
      a1 = v25;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    (*v40)(v7, v28);
    v30 = *v7;
    v31 = v7[1];

    v32 = sub_10003C49C(&qword_1001FE380);
    sub_10003DD84(v7 + *(v32 + 80), &qword_1001FE388);
    v33 = i;
    if (v30 == *(i + 64) && v31 == *(i + 72))
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        v37 = *v43;
        v38 = v50;
        goto LABEL_19;
      }
    }

    *(v33 + 24) = 1;
    v35 = v39;
    v36 = v50;
    NWBrowser.Result.endpoint.getter();
    sub_10006E9DC(v35);
    (*v42)(v35, v53);
    v37 = *v43;
    v38 = v36;
LABEL_19:
    v20 = v49;
    result = (v37)(v38, v49);
  }

LABEL_8:
  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_10006E9DC(uint64_t a1)
{
  v3 = type metadata accessor for NWEndpoint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_10008F14C(*(v1 + 80), *(v1 + 88));
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v1;
    (*(v4 + 32))(&v13[v12], &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    *&v13[(v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v10;

    sub_1000539D8(0, 0, v8, &unk_100180200, v13);
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10003DAAC(v14, qword_10020A510);
    v19 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v19, v15, "Failed to create client parameters", v16, 2u);
    }

    v17 = v19;
  }
}

uint64_t sub_10006ECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for NWEndpoint();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006ED98, 0, 0);
}

uint64_t sub_10006ED98()
{
  if (*(v0[2] + 96))
  {
    type metadata accessor for TargetDevicePeerConnection();
    type metadata accessor for NWActorSystem();
    static NWActorSystem.default.getter();
    sub_100070988(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
    v0[13] = static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)();

    v1 = static NWActorSystem.default.getter();
    type metadata accessor for AssessorDevicePeerConnection();
    swift_allocObject();
    v2 = sub_1000DAAC8(v1);
    v0[14] = v2;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_10006F60C;

    return sub_1000DEBD0(v2);
  }

  else
  {
    type metadata accessor for AssessorDevicePeerConnection();
    type metadata accessor for NWActorSystem();
    static NWActorSystem.default.getter();
    sub_100070988(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
    v0[9] = static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)();

    v5 = static NWActorSystem.default.getter();
    type metadata accessor for TargetDevicePeerConnection();
    swift_allocObject();
    v6 = sub_1000E1BB4(v5);
    v0[10] = v6;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_10006F200;

    return sub_1000D78BC(v6);
  }
}

uint64_t sub_10006F200()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10006FA18;
  }

  else
  {
    v2 = sub_10006F314;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006F314()
{
  v27 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_10003DAAC(v5, qword_10020A510);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = NWEndpoint.debugDescription.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_100056B7C(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully connected to %s", v12, 0xCu);
    sub_100044554(v13);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = v0[10];
  v19 = v0[2];
  v20 = sub_100070988(&qword_1001FE3A0, type metadata accessor for TargetDevicePeerConnection);
  v19[4] = v18;
  v19[5] = v20;

  swift_unknownObjectRelease();
  v21 = v19[6];
  if (v21)
  {
    v22 = sub_100070988(&qword_1001FE398, type metadata accessor for AssessorDevicePeerConnection);
    sub_10003C48C(v21);

    v21(v23, v22);

    sub_10005A598(v21);
  }

  else
  {
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10006F60C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10006FBD8;
  }

  else
  {
    v2 = sub_10006F720;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006F720()
{
  v27 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_10003DAAC(v5, qword_10020A510);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = NWEndpoint.debugDescription.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100056B7C(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully connected to %s", v12, 0xCu);
    sub_100044554(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[14];
  v19 = v0[2];
  v20 = sub_100070988(&qword_1001FE398, type metadata accessor for AssessorDevicePeerConnection);
  v19[4] = v18;
  v19[5] = v20;

  swift_unknownObjectRelease();
  v21 = v19[6];
  if (v21)
  {
    v22 = sub_100070988(&qword_1001FE3A0, type metadata accessor for TargetDevicePeerConnection);
    sub_10003C48C(v21);

    v21(v23, v22);

    sub_10005A598(v21);
  }

  else
  {
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10006FA18()
{

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to handle found endpoint: %@", v4, 0xCu);
    sub_10003DD84(v5, &qword_1001FF0C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006FBD8()
{

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to handle found endpoint: %@", v4, 0xCu);
    sub_10003DD84(v5, &qword_1001FF0C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006FDE4()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006FE7C, v2, v1);
}

uint64_t sub_10006FE7C()
{

  *(v0 + 32) = sub_1000B95A8(sub_100070D3C, 0);

  return _swift_task_switch(sub_10006FF04, 0, 0);
}

uint64_t sub_10006FF04()
{
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100070D30, v2, v1);
}

void sub_10006FFC0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  if (*a2)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10003DAAC(v12, qword_10020A510);
    v27 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v27, v13, a5, v14, 2u);
    }

    v15 = v27;
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10003DAAC(v16, qword_10020A510);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = a1;
      v29 = v20;
      *v19 = 136315138;
      swift_errorRetain();
      sub_10003C49C(&qword_1001FE3B0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100056B7C(v21, v22, &v29);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Connection failed: %s", v19, 0xCu);
      sub_100044554(v20);
    }

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_1000539D8(0, 0, v11, a4, v25);
  }
}

uint64_t sub_100070308()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000703A0, v2, v1);
}

uint64_t sub_1000703A0()
{

  *(v0 + 32) = sub_1000B95A8(sub_100070D3C, 0);

  return _swift_task_switch(sub_100070428, 0, 0);
}

uint64_t sub_100070428()
{
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000704B4, v2, v1);
}

uint64_t sub_1000704B4()
{
  v1 = *(v0 + 32);

  [v1 showOnTopWithAnimated:1 completion:0];

  v2 = *(v0 + 8);

  return v2();
}

void sub_100070534()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v0)
  {
    [v0 setResultCode:-1];
  }

  sub_1000F6FF8(16);
}

uint64_t sub_1000705B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;

  if (os_variant_has_internal_content())
  {
    v23 = a5;
    v13 = sub_10006D264();
    if (v14)
    {
      v15 = v13;
      v16 = v14;

      a1 = v15;
      a2 = v16;
    }

    sub_10006D330();
    if (v17)
    {
    }

    LOBYTE(a5) = v23;
  }

  *(v5 + 64) = a1;
  *(v5 + 72) = a2;

  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  result = (*(v10 + 8))(v12, v9);
  if (v20 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    *(v5 + 80) = v18;
    *(v5 + 88) = v20;
    *(v5 + 96) = a5 & 1;
    return v5;
  }

  return result;
}

uint64_t sub_100070778()
{
  v1 = type metadata accessor for NWEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100070858(uint64_t a1)
{
  v4 = *(type metadata accessor for NWEndpoint() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003DEC8;

  return sub_10006ECC8(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100070988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000709D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070A08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10006FDC8();
}

uint64_t sub_100070AB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000702EC();
}

uint64_t sub_100070B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003DEC8;

  return sub_10006E108(a1, v4, v5, v7, v6);
}

uint64_t sub_100070C24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100070C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000494BC;

  return sub_10006DE14(a1, v4, v5, v7, v6);
}

void sub_100070DAC()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FD068);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics10TextButton_button);
  v6 = String._bridgeToObjectiveC()();
  [v5 setTitle:v6 forState:0];

  [v5 setContentHorizontalAlignment:0];
  [v5 addTarget:v1 action:"buttonActionWithSender:" forControlEvents:64];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 6)
  {
    sub_10003E110(0, &unk_1001FD080);
    static UIShape.capsule.getter();
    v9 = type metadata accessor for UIShape();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = UIHoverStyle.init(shape:)();
    [v5 setHoverStyle:v10];
  }
}

void sub_100070F94()
{
  v1 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED60;
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics10TextButton_button];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id sub_100071268()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_opt_self();
  v6[4] = sub_100071530;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100031FA8;
  v6[3] = &unk_1001C1368;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v2 animateWithDuration:0x20000 delay:v3 options:0 animations:0.125 completion:0.0];
  _Block_release(v3);

  return [*&v4[OBJC_IVAR____TtC11Diagnostics10TextButton_button] setUserInteractionEnabled:0];
}

void sub_1000713C8()
{

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics10TextButton_button);
}

id sub_100071420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000714F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100071764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000717C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100073348(a1);

  *a2 = v3;
  return result;
}

NSString sub_100071800()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A3A0 = result;
  return result;
}

uint64_t sub_100071838()
{
  if (qword_1001FC6F8 != -1)
  {
LABEL_34:
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1001FE428;
  if ((off_1001FE428 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CardState();
    sub_100073BC0(&qword_1001FE6B0, v1, type metadata accessor for CardState);
    Set.Iterator.init(_cocoa:)();
    v0 = v34;
    v2 = v35;
    v3 = v36;
    v4 = v37;
    v5 = v38;
  }

  else
  {
    v6 = -1 << *(off_1001FE428 + 32);
    v2 = off_1001FE428 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(off_1001FE428 + 7);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
  while ((v0 & 0x8000000000000000) == 0)
  {
    v11 = v4;
    v12 = v5;
    v13 = v4;
    if (!v5)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v9)
        {
          goto LABEL_31;
        }

        v12 = *&v2[8 * v13];
        ++v11;
        if (v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v0 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      goto LABEL_31;
    }

LABEL_19:
    if (*(v15 + 88))
    {
      goto LABEL_25;
    }

    if ((p_opt_class_meths[132] & 1) == 0)
    {
      if (!*(v15 + 80))
      {
        goto LABEL_9;
      }

      v28 = v14;
      type metadata accessor for CardState();
      swift_allocObject();

      v17 = sub_1000737F8(v16);

      v18 = *(v15 + 80);
      *(v15 + 80) = 0;
      v19 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v20 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      strcpy(&aBlock, "changeInfoKey");
      HIWORD(aBlock) = -4864;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(inited + 72) = v17;
      *(inited + 80) = v18;

      sub_1000D57AC(inited);
      swift_setDeallocating();
      sub_100073B40(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 postNotificationName:v20 object:v15 userInfo:isa];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      v14 = v28;
LABEL_25:
      if (*(p_opt_class_meths + 1056) != 1)
      {
        goto LABEL_9;
      }
    }

    if (*(v15 + 80))
    {
      if (qword_1001FC700 != -1)
      {
        swift_once();
      }

      v23 = qword_1001FE430;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_100073BA8;
      *(v24 + 24) = v15;
      v32 = sub_10003DAA4;
      v33 = v24;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v30 = sub_100060C48;
      v31 = &unk_1001C1510;
      v25 = _Block_copy(&aBlock);

      dispatch_sync(v23, v25);

      _Block_release(v25);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v4 = v13;
      v5 = v14;
      p_opt_class_meths = (&OBJC_PROTOCOL___UIWindowSceneDelegate + 48);
      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_9:

      v4 = v13;
      v5 = v14;
    }
  }

  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for CardState();
    swift_dynamicCast();
    v15 = aBlock;
    v13 = v4;
    v14 = v5;
    if (aBlock)
    {
      goto LABEL_19;
    }
  }

LABEL_31:
  sub_10004A320();
  off_1001FE428 = &_swiftEmptySetSingleton;
}

uint64_t sub_100071DD0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10003E110(0, &qword_1001FD040);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100073BC0(&unk_1001FD740, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10003C49C(&unk_1001FCEA0);
  sub_100051840();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1001FE430 = result;
  return result;
}

void sub_10007201C()
{
  v0 = Notification.userInfo.getter();
  if (v0)
  {
    v1 = v0;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100064B74(v7), (v3 & 1) != 0))
    {
      sub_10003E010(*(v1 + 56) + 32 * v2, v8);
      sub_10003DB48(v7);

      sub_10003E110(0, &unk_100201860);
      if (swift_dynamicCast())
      {
        if ([v6 changedProperties])
        {
          v4 = [v6 snapshot];
          v5 = [v4 phase];

          sub_10007230C(v5);
        }
      }
    }

    else
    {

      sub_10003DB48(v7);
    }
  }
}

void sub_100072168(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000721D0()
{
  v1 = [*(v0 + 40) attributes];
  sub_10003C49C(&unk_1001FD010);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {
    v7 = 4407891;

LABEL_7:

    return v7;
  }

  sub_100064AFC(v3, v4);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    v7 = 4407891;
    goto LABEL_7;
  }

  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 4407891;
  }
}

uint64_t sub_10007230C(uint64_t result)
{
  switch(result)
  {
    case 1:
      v9 = *(v1 + 32);
      *(v1 + 32) = 4;
      if (v9 != 4)
      {
        goto LABEL_5;
      }

      break;
    case 2:
      v7 = *(v1 + 32);
      *(v1 + 32) = 1;
      if (v7 != 1)
      {
        goto LABEL_5;
      }

      break;
    case 3:
    case 4:
      v2 = *(v1 + 32);
      *(v1 + 32) = 2;
      if (v2 != 2)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      v11 = *(v1 + 32);
      *(v1 + 32) = 3;
      if (v11 != 3)
      {
        goto LABEL_5;
      }

      break;
    case 6:
      v13 = *(v1 + 32);
      *(v1 + 32) = 5;
      if (v13 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 7:
      v10 = *(v1 + 32);
      *(v1 + 32) = 6;
      if (v10 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 8:
      v15 = *(v1 + 32);
      *(v1 + 32) = 7;
      if (v15 != 7)
      {
        goto LABEL_5;
      }

      break;
    case 9:
      v8 = *(v1 + 32);
      *(v1 + 32) = 8;
      if (v8 != 8)
      {
        goto LABEL_5;
      }

      break;
    case 10:
      v14 = *(v1 + 32);
      *(v1 + 32) = 9;
      if (v14 != 9)
      {
        goto LABEL_5;
      }

      break;
    case 11:
      v5 = *(v1 + 32);
      *(v1 + 32) = 10;
      if (v5 != 10)
      {
        goto LABEL_5;
      }

      break;
    case 12:
      v6 = *(v1 + 32);
      *(v1 + 32) = 11;
      if (v6 != 11)
      {
        goto LABEL_5;
      }

      break;
    case 13:
      v12 = *(v1 + 32);
      *(v1 + 32) = 12;
      if (v12 != 12)
      {
        goto LABEL_5;
      }

      break;
    default:
      v3 = *(v1 + 32);
      *(v1 + 32) = 0;
      if (v3)
      {
LABEL_5:
        v4 = *(v1 + 80);
        if ((v4 & 0x20) == 0)
        {
          *(v1 + 80) = v4 | 0x20;
        }

        result = sub_1000724B4();
      }

      break;
  }

  return result;
}

void sub_1000724B4()
{
  v2 = v0;
  if (*(v0 + 88))
  {
    goto LABEL_6;
  }

  if (byte_1001FE420)
  {
    goto LABEL_7;
  }

  if (*(v0 + 80))
  {
    type metadata accessor for CardState();
    swift_allocObject();

    v4 = sub_1000737F8(v3);

    v1 = *(v2 + 80);
    *(v2 + 80) = 0;
    isEscapingClosureAtFileLocation = [objc_opt_self() defaultCenter];
    if (qword_1001FC6F0 != -1)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v6 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      strcpy(&aBlock, "changeInfoKey");
      HIWORD(aBlock) = -4864;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(inited + 72) = v4;
      *(inited + 80) = v1;

      v1 = sub_1000D57AC(inited);
      swift_setDeallocating();
      sub_100073B40(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [isEscapingClosureAtFileLocation postNotificationName:v6 object:v2 userInfo:isa];

LABEL_6:
      if (byte_1001FE420 != 1)
      {
        break;
      }

LABEL_7:
      if (!*(v2 + 80))
      {
        return;
      }

      if (qword_1001FC700 != -1)
      {
        swift_once();
      }

      v9 = qword_1001FE430;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_100074384;
      *(v4 + 24) = v2;
      v14 = sub_10003E41C;
      v15 = v4;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v12 = sub_100060C48;
      v13 = &unk_1001C1588;
      v10 = _Block_copy(&aBlock);

      dispatch_sync(v9, v10);
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_13:
      swift_once();
    }
  }
}

uint64_t sub_1000727E4(uint64_t a1)
{
  if (qword_1001FC6F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1001090EC(&v3, a1);
  swift_endAccess();
}

void sub_10007287C(uint64_t a1)
{
  v3 = *(v1 + 88);
  *(v1 + 88) = 1;
  v4 = *(a1 + 16);
  v5 = *(v1 + 16);
  *(v1 + 16) = v4;
  if (v4 != v5)
  {
    v6 = *(v1 + 80);
    if ((v6 & 1) == 0)
    {
      *(v1 + 80) = v6 | 1;
    }

    sub_1000724B4();
  }

  v7 = *(a1 + 17);
  v8 = *(v1 + 17);
  *(v1 + 17) = v7;
  if (v7 != v8)
  {
    v9 = *(v1 + 80);
    if ((v9 & 4) == 0)
    {
      *(v1 + 80) = v9 | 4;
    }

    sub_1000724B4();
  }

  v10 = *(a1 + 18);
  v11 = *(v1 + 18);
  *(v1 + 18) = v10;
  if (v10 != v11)
  {
    v12 = *(v1 + 80);
    if ((v12 & 2) == 0)
    {
      *(v1 + 80) = v12 | 2;
    }

    sub_1000724B4();
  }

  v13 = *(a1 + 19);
  v14 = *(v1 + 19);
  *(v1 + 19) = v13;
  if (v13 != v14)
  {
    v15 = *(v1 + 80);
    if ((v15 & 8) == 0)
    {
      *(v1 + 80) = v15 | 8;
    }

    sub_1000724B4();
  }

  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(v1 + 56);
  *(v1 + 56) = v16;
  *(v1 + 64) = v17;
  sub_10003E418(v16, v17);
  sub_10003C52C(v18);
  v19 = *(a1 + 32);
  v20 = *(v1 + 32);
  *(v1 + 32) = v19;
  if (v19 != v20)
  {
    v21 = *(v1 + 80);
    if ((v21 & 0x20) == 0)
    {
      *(v1 + 80) = v21 | 0x20;
    }

    sub_1000724B4();
  }

  v22 = *(a1 + 24);
  v23 = *(v1 + 24);
  *(v1 + 24) = v22;
  if (v22 != v23)
  {
    v24 = *(v1 + 80);
    if ((v24 & 0x10) == 0)
    {
      *(v1 + 80) = v24 | 0x10;
    }

    sub_1000724B4();
  }

  v25 = *(v1 + 88);
  *(v1 + 88) = v3;
  if ((v3 & 1) == 0 && v25)
  {

    sub_1000724B4();
  }
}

uint64_t sub_1000729F8()
{
  _StringGuts.grow(_:)(47);

  strcpy(&v27, "isRequired: ");
  BYTE5(v27._object) = 0;
  HIWORD(v27._object) = -5120;
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  v4._countAndFlagsBits = 0x646469487369203BLL;
  v4._object = 0xEC000000203A6E65;
  String.append(_:)(v4);
  if (*(v0 + 17))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 17))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._object = 0x800000010018C340;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  if (*(v0 + 18))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 18))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 59;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  countAndFlagsBits = v27._countAndFlagsBits;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x800000010018C360;
  String.append(_:)(v14);
  if (*(v0 + 19))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v0 + 19))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 0x685064726163203BLL;
  v18._object = 0xED0000203A657361;
  String.append(_:)(v18);
  _print_unlocked<A, B>(_:_:)();
  v19._countAndFlagsBits = 0xD000000000000011;
  v19._object = 0x800000010018C380;
  String.append(_:)(v19);
  _print_unlocked<A, B>(_:_:)();
  v20._countAndFlagsBits = 0x656369766564203BLL;
  v20._object = 0xEF203A6574617453;
  String.append(_:)(v20);
  v21 = [*(v0 + 40) description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  String.append(_:)(v27);

  return countAndFlagsBits;
}

uint64_t sub_100072CF8()
{

  sub_10003C52C(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CardState.Phase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CardState.Phase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100072ED0()
{
  result = qword_1001FE680;
  if (!qword_1001FE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE680);
  }

  return result;
}

unint64_t sub_100072F28()
{
  result = qword_1001FE688;
  if (!qword_1001FE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE688);
  }

  return result;
}

unint64_t sub_100072F80()
{
  result = qword_1001FE690;
  if (!qword_1001FE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE690);
  }

  return result;
}

unint64_t sub_100072FD8()
{
  result = qword_1001FE698;
  if (!qword_1001FE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE698);
  }

  return result;
}

unint64_t sub_100073030()
{
  result = qword_1001FE6A0;
  if (!qword_1001FE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6A0);
  }

  return result;
}

Swift::Int sub_1000730A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = [*(v1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100073130()
{
  v1 = [*(*v0 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();
}