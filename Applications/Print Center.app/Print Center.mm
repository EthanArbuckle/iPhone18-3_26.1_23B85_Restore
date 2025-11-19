BOOL sub_100002504(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(NSString *)v4 hasPrefix:@"cups-missing-filter"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSString *)v4 hasPrefix:@"cups-insecure-filter"];
  }

  return v5;
}

uint64_t sub_100002E14()
{
  v0 = type metadata accessor for PrintMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100002EC8();
  qword_1000292F8 = result;
  return result;
}

uint64_t sub_100002E54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100002EC8()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v1 - 8);
  v22 = v1;
  v2 = *(v21 + 64);
  __chkstk_darwin(v1);
  v20 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v19[1] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100004A84(&qword_100028C78, &qword_10001BD08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v19 - v12;
  v14 = OBJC_IVAR____TtC12Print_Center12PrintMonitor__completedJobs;
  v23 = &_swiftEmptyArrayStorage;
  sub_100004A84(&unk_100028B40, &qword_10001BB80);
  Published.init(initialValue:)();
  v15 = *(v10 + 32);
  v15(v0 + v14, v13, v9);
  v16 = OBJC_IVAR____TtC12Print_Center12PrintMonitor__pendingJobs;
  v23 = &_swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v15(v0 + v16, v13, v9);
  v17 = OBJC_IVAR____TtC12Print_Center12PrintMonitor_workQueue;
  sub_100005080(0, &qword_100028C80, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100005150(&qword_100028C88, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004A84(&qword_100028C90, &qword_10001BD10);
  sub_100005198(&qword_100028C98, &qword_100028C90, &qword_10001BD10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *(v0 + v17) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000036F4();
  return v0;
}

uint64_t sub_100003254()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v2 = OBJC_IVAR____TtC12Print_Center12PrintMonitor__completedJobs;
  v3 = sub_100004A84(&qword_100028C78, &qword_10001BD08);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC12Print_Center12PrintMonitor__pendingJobs, v3);

  return v0;
}

uint64_t sub_100003388()
{
  sub_100003254();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000033E0(void **a1, void **a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v32 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v31 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v31 - v14;
  __chkstk_darwin(v13);
  v17 = v31 - v16;
  v18 = *a1;
  v19 = *a2;
  if (([v18 state] == 5 || objc_msgSend(v18, "state") == 10) && (objc_msgSend(v19, "state") == 5 || objc_msgSend(v19, "state") == 10))
  {
    v20 = [v18 timeAtProcessing];
    if (v20)
    {
      v31[1] = v2;
      v21 = v20;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v15;
      v23 = v6[4];
      v23(v17, v22, v5);
      v24 = [v19 timeAtProcessing];
      if (v24)
      {
        v25 = v32;
        v26 = v24;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23(v12, v25, v5);
        v27 = static Date.< infix(_:_:)();
        v28 = v6[1];
        v28(v12, v5);
        v28(v17, v5);
        return v27 & 1;
      }

      (v6[1])(v17, v5);
    }
  }

  if ([v18 state] == 5 || objc_msgSend(v18, "state") == 10)
  {
    v27 = 1;
  }

  else if ([v19 state] == 5 || objc_msgSend(v19, "state") == 10)
  {
    v27 = 0;
  }

  else
  {
    v30 = [v18 localJobID];
    v27 = v30 < [v19 localJobID];
  }

  return v27 & 1;
}

void sub_1000036F4()
{
  sub_100003A3C();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v15 = sub_100005A40;
  v16 = v0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100003948;
  v14 = &unk_100025880;
  v5 = _Block_copy(&v11);

  v6 = [v2 addObserverForName:@"PKJobListNotification" object:0 queue:v4 usingBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  v7 = [v1 defaultCenter];
  v8 = [v3 mainQueue];
  v15 = sub_100005A44;
  v16 = v0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100003948;
  v14 = &unk_1000258A8;
  v9 = _Block_copy(&v11);

  v10 = [v7 addObserverForName:@"PKJobProgressNotification" object:0 queue:v8 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_100003948(uint64_t a1)
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

uint64_t sub_100003A3C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC12Print_Center12PrintMonitor_workQueue);
  aBlock[4] = sub_100005130;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005A54;
  aBlock[3] = &unk_1000257E0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_100005150(&qword_100028CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004A84(&qword_100028CB8, &unk_10001BD60);
  sub_100005198(&qword_100028CC0, &qword_100028CB8, &unk_10001BD60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_100003CE4(uint64_t a1)
{
  v32 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  base_props = v5[-1].base_props;
  v6 = base_props[8];
  __chkstk_darwin(v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = [objc_opt_self() jobs];
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v8;
  *(v8 + 16) = v10;
  v38 = (v8 + 16);
  aBlock[0] = &_swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v12 = &_swiftEmptyArrayStorage;
    v37 = v5;
    if (!i)
    {
      break;
    }

    v30 = v2;
    v31 = v1;
    v13 = 0;
    v1 = v10 & 0xC000000000000001;
    v2 = v10 & 0xFFFFFFFFFFFFFF8;
    v5 = &PCPrintJob__metaData;
    while (1)
    {
      if (v1)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v14 state] == 7 || objc_msgSend(v15, "state") == 9 || objc_msgSend(v15, "state") == 10 || objc_msgSend(v15, "state") == 8)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v13;
      if (v16 == i)
      {
        v12 = aBlock[0];
        v2 = v30;
        v1 = v31;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_18:

  v18 = v38;
  v19 = sub_1000054F0(v38, v12);

  v21 = *v18;
  if (*v18 >> 62)
  {
    if (v21 < 0)
    {
      v29 = *v18;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v22 = result;
    if (result >= v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22 >= v19)
    {
LABEL_20:
      sub_10000589C(v19, v22);

      sub_100005080(0, &qword_100028C80, OS_dispatch_queue_ptr);
      v23 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      v25 = v32;
      *(v24 + 16) = v33;
      *(v24 + 24) = v25;
      aBlock[4] = sub_1000059B4;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100005A54;
      aBlock[3] = &unk_100025858;
      v26 = _Block_copy(aBlock);

      v27 = v34;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100005150(&qword_100028CB0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100004A84(&qword_100028CB8, &unk_10001BD60);
      sub_100005198(&qword_100028CC0, &qword_100028CB8, &unk_10001BD60);
      v28 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v2 + 8))(v28, v1);
      (base_props[1])(v27, v37);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004218(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  type metadata accessor for PrintMonitor();
  sub_100005150(&qword_100028CC8, type metadata accessor for PrintMonitor);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_10000430C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100004350()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v2 = *(v6 + 8 * j + 32);
      }

      v3 = v2;
      v4 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v2 update];
      sub_100005080(0, &qword_100028CA0, &off_100024940);
      sub_1000050C8();
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      if (v4 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1000044C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PrintMonitor();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100004508@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PrintMonitor();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of CancelPrintJob._jobContextIdentifier()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin();
  v30 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(sub_100004A84(&qword_100028AC8, &qword_10001BB48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v29 = &v24 - v4;
  v5 = (*(*(sub_100004A84(&qword_100028AD0, &qword_10001BB50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v28 = &v24 - v6;
  v7 = (*(*(sub_100004A84(&qword_100028AD8, &qword_10001C210) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v27 = &v24 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v15 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  v25 = type metadata accessor for LocalizedStringResource();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v26 = sub_100004A84(&qword_100028AE0, &qword_10001BB58);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v9);
  v20 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v16 + 56))(v20, 0, 1, v25);
  v21 = type metadata accessor for String.IntentInputOptions();
  v33 = 0;
  v34 = 0;
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100004A84(uint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for PrintMonitor()
{
  result = qword_100028B28;
  if (!qword_100028B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004B20()
{
  sub_100004BC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100004BC0()
{
  if (!qword_100028B38)
  {
    sub_100004C24(&unk_100028B40, &qword_10001BB80);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100028B38);
    }
  }
}

uint64_t sub_100004C24(uint64_t *a1, uint64_t *a2)
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

void sub_100004C94(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100004CE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100004D60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void *sub_100004DE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004E24(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100004F4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void (*sub_100004FF8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100005078;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005080(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1000050C8()
{
  result = qword_100028CA8;
  if (!qword_100028CA8)
  {
    sub_100005080(255, &qword_100028CA0, &off_100024940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CA8);
  }

  return result;
}

uint64_t sub_100005138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005198(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004C24(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000051EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005224(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000052E0(unint64_t a1)
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

uint64_t sub_100005344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_1000053A8(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v13 = v6;
    __chkstk_darwin(v6);
    v11[2] = &v13;
    v8 = sub_100004E24(sub_100005A70, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000054F0(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_1000053A8(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    __chkstk_darwin(v12);
    v25[2] = &v27;
    v14 = sub_100004E24(sub_1000059BC, v25, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1000052E0(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1000052E0(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10000578C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000589C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100005224(result);

  return sub_10000578C(v4, v2, 0);
}

uint64_t sub_100005974()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000059D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_100005A90()
{
  result = qword_100028CD0;
  if (!qword_100028CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD0);
  }

  return result;
}

unint64_t sub_100005AE4()
{
  result = qword_100028CD8;
  if (!qword_100028CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD8);
  }

  return result;
}

uint64_t sub_100005B6C()
{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  sub_100007368(v0, qword_100029318);
  v1 = sub_100007330(v0, qword_100029318);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void (*sub_100005C3C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100005CB0;
}

void sub_100005CB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100005D00()
{
  result = qword_100028CE0;
  if (!qword_100028CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE0);
  }

  return result;
}

unint64_t sub_100005D58()
{
  result = qword_100028CE8;
  if (!qword_100028CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE8);
  }

  return result;
}

unint64_t sub_100005DB0()
{
  result = qword_100028CF0;
  if (!qword_100028CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CF0);
  }

  return result;
}

unint64_t sub_100005E30()
{
  result = qword_100028CF8;
  if (!qword_100028CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CF8);
  }

  return result;
}

uint64_t sub_100005EE8(uint64_t a1)
{
  v2 = sub_100005E30();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100005F6C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to OpenIntent.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005E30();
  *v6 = v2;
  v6[1] = sub_100006020;

  return OpenIntent.perform()(a1, a2, v7);
}

uint64_t sub_100006020()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006D0C();
  *a1 = result;
  return result;
}

uint64_t sub_10000613C(uint64_t a1)
{
  v2 = sub_100005D00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000061AC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_100007368(v6, a3);
  sub_100007330(v6, a3);
  return a4(0xD000000000000011, 0x800000010001A420);
}

uint64_t sub_100006220()
{
  sub_100004A84(&qword_100028D68, &qword_10001C1F0);
  v0 = *(sub_100004A84(&qword_100028D70, &qword_10001C1F8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001BD70;
  DisplayRepresentation.init(stringLiteral:)();
  v4 = sub_1000070A0(v3);
  swift_setDeallocating();
  sub_100007258(v3 + v2);
  result = swift_deallocClassInstance();
  qword_100029348 = v4;
  return result;
}

unint64_t sub_10000632C()
{
  result = qword_100028D00;
  if (!qword_100028D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D00);
  }

  return result;
}

Swift::Int sub_100006380()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000063E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100006430@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100025628, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1000064A4()
{
  result = qword_100028D08;
  if (!qword_100028D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D08);
  }

  return result;
}

unint64_t sub_1000064FC()
{
  result = qword_100028D10;
  if (!qword_100028D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D10);
  }

  return result;
}

unint64_t sub_100006560()
{
  result = qword_100028D18;
  if (!qword_100028D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D18);
  }

  return result;
}

unint64_t sub_1000065B8()
{
  result = qword_100028D20;
  if (!qword_100028D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D20);
  }

  return result;
}

unint64_t sub_100006610()
{
  result = qword_100028D28;
  if (!qword_100028D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D28);
  }

  return result;
}

unint64_t sub_100006668()
{
  result = qword_100028D30;
  if (!qword_100028D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D30);
  }

  return result;
}

uint64_t sub_1000066F8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100007330(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_100006814()
{
  result = qword_100028D38;
  if (!qword_100028D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D38);
  }

  return result;
}

uint64_t sub_100006868(uint64_t a1)
{
  v2 = sub_100006814();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000068B8()
{
  result = qword_100028D40;
  if (!qword_100028D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D40);
  }

  return result;
}

unint64_t sub_100006910()
{
  result = qword_100028D48;
  if (!qword_100028D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D48);
  }

  return result;
}

unint64_t sub_100006968()
{
  result = qword_100028D50;
  if (!qword_100028D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D50);
  }

  return result;
}

uint64_t sub_1000069BC()
{
  if (qword_100028A20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100006A18(uint64_t a1)
{
  v2 = sub_100006668();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006A68()
{
  result = qword_100028D58;
  if (!qword_100028D58)
  {
    sub_100004C24(&qword_100028D60, &qword_10001C138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchPrintCenterEnum(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchPrintCenterEnum(_WORD *result, int a2, int a3)
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

unint64_t sub_100006BDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100006C54(a1, a2, v6);
}

unint64_t sub_100006C54(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100006D0C()
{
  v20 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100004A84(&qword_100028AC8, &qword_10001BB48) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100004A84(&qword_100028AD8, &qword_10001C210);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100004A84(&qword_100028D80, &unk_10001C218);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 1;
  v17 = type metadata accessor for IntentDialog();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100006814();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t sub_100007010(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_10000703C()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100007010(v2);
}

unint64_t sub_1000070A0(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028D70, &qword_10001C1F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004A84(&qword_100028D78, &unk_10001C200);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000072C0(v9, v6);
      result = sub_10000703C();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_100007258(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028D70, &qword_10001C1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028D70, &qword_10001C1F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007330(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007368(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 sub_1000073D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000073E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100007440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000074BC@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v22 = 1;
  v3 = static VerticalAlignment.center.getter();
  v21 = 1;
  sub_1000075F0(&v15);
  v25 = v17;
  v26 = v18;
  v23 = v15;
  v24 = v16;
  v28[2] = v17;
  v28[3] = v18;
  v28[4] = v19;
  v28[1] = v16;
  v27 = v19;
  v28[0] = v15;
  sub_100007824(&v23, &v14);
  sub_10000793C(v28, &qword_100028D88, &qword_10001C2B8);
  *&v20[23] = v24;
  *&v20[39] = v25;
  *&v20[55] = v26;
  *&v20[71] = v27;
  *&v20[7] = v23;
  v4 = v21;
  v5 = v22;
  v6 = static Edge.Set.top.getter();
  result = EdgeInsets.init(_all:)();
  v8 = *&v20[48];
  *(a1 + 73) = *&v20[32];
  *(a1 + 89) = v8;
  *(a1 + 105) = *&v20[64];
  v9 = *&v20[16];
  *(a1 + 41) = *v20;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = v4;
  *(a1 + 120) = *&v20[79];
  *(a1 + 57) = v9;
  *(a1 + 128) = v6;
  *(a1 + 136) = v10;
  *(a1 + 144) = v11;
  *(a1 + 152) = v12;
  *(a1 + 160) = v13;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_1000075F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004A84(&qword_100028D90, &qword_10001C2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = [objc_opt_self() mainBundle];
  v24._object = 0x800000010001A460;
  v7._object = 0x800000010001A440;
  v24._countAndFlagsBits = 0xD000000000000023;
  v7._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v24);

  v23 = v9;
  sub_100007894();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = static Font.system(size:weight:design:)();
  sub_10000793C(v5, &qword_100028D90, &qword_10001C2C0);
  v20 = swift_getKeyPath();
  LOBYTE(v23._countAndFlagsBits) = v14 & 1;
  v21 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v20;
  *(a1 + 56) = v19;
  *(a1 + 64) = result;
  *(a1 + 72) = v21;
  return result;
}

uint64_t sub_100007824(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028D88, &qword_10001C2B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100007894()
{
  result = qword_100028D98;
  if (!qword_100028D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D98);
  }

  return result;
}

uint64_t sub_1000078E8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000793C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004A84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000799C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000079C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000079F4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100007A20(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100007A4C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100007A78(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_100007AA8()
{
  result = qword_100028DA0;
  if (!qword_100028DA0)
  {
    sub_100004C24(&qword_100028DA8, &qword_10001C358);
    sub_100007B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DA0);
  }

  return result;
}

unint64_t sub_100007B34()
{
  result = qword_100028DB0;
  if (!qword_100028DB0)
  {
    sub_100004C24(&qword_100028DB8, &qword_10001C360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DB0);
  }

  return result;
}

__n128 sub_100007B98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007BAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100007BF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100007C60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, _OWORD *a4@<X8>)
{
  v37 = a3;
  v36 = a1;
  v6 = sub_100004A84(&qword_100028DC8, &qword_10001C400);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F684();
  (*(v13 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v12);
  v17 = Image.resizable(capInsets:resizingMode:)();

  (*(v13 + 8))(v16, v12);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = 1;
  *&v50[6] = v52;
  *&v50[22] = v53;
  *&v50[38] = v54;
  v18 = sub_10000F794();
  v19 = 1.0;
  v55[0] = v17;
  v55[1] = 0;
  if ((v18 & 1) == 0)
  {
    v19 = 0.0;
  }

  v56 = 1;
  v57 = *v50;
  v58 = *&v50[16];
  *v59 = *&v50[32];
  *&v59[14] = *&v50[46];
  v60 = v19;
  v20 = static Color.secondary.getter();
  sub_100008034(v20, &v38);

  sub_10000793C(v55, &qword_100028DD0, &qword_10001C408);
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v21 = sub_100004A84(&qword_100028DD8, &qword_10001C410);
  sub_100008200(v36, a2, v37, &v11[*(v21 + 44)]);
  v22 = v35;
  sub_100009EF0(v11, v35, &qword_100028DC8, &qword_10001C400);
  v23 = v45;
  v48[6] = v44;
  v48[7] = v45;
  v24 = v46;
  v25 = v47;
  v48[8] = v46;
  v48[9] = v47;
  v26 = v40;
  v27 = v41;
  v48[2] = v40;
  v48[3] = v41;
  v28 = v42;
  v29 = v43;
  v48[4] = v42;
  v48[5] = v43;
  v30 = v38;
  v31 = v39;
  v48[0] = v38;
  v48[1] = v39;
  a4[6] = v44;
  a4[7] = v23;
  a4[8] = v24;
  a4[9] = v25;
  a4[2] = v26;
  a4[3] = v27;
  a4[4] = v28;
  a4[5] = v29;
  *a4 = v30;
  a4[1] = v31;
  v32 = a4 + *(sub_100004A84(&qword_100028DE0, &qword_10001C418) + 48);
  sub_100009EF0(v22, v32, &qword_100028DC8, &qword_10001C400);
  sub_100009EF0(v48, v49, &qword_100028DE8, &qword_10001C420);
  sub_10000793C(v11, &qword_100028DC8, &qword_10001C400);
  sub_10000793C(v22, &qword_100028DC8, &qword_10001C400);
  v49[6] = v44;
  v49[7] = v45;
  v49[8] = v46;
  v49[9] = v47;
  v49[2] = v40;
  v49[3] = v41;
  v49[4] = v42;
  v49[5] = v43;
  v49[0] = v38;
  v49[1] = v39;
  return sub_10000793C(v49, &qword_100028DE8, &qword_10001C420);
}

uint64_t sub_100008034@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = v34;
  v6 = v34 * 0.5;
  v7 = v35;
  v8 = DWORD1(v35);
  v9 = *(&v35 + 1);
  v10 = v36;

  v11 = static Alignment.center.getter();
  *v37 = v34 * 0.5;
  *(v37 + 1) = v34;
  v37[1] = v35;
  *v38 = v36;
  *&v38[16] = a1;
  *&v38[24] = 256;
  v32 = v35;
  *v33 = v36;
  *&v33[10] = *&v38[10];
  v31 = v37[0];
  v12 = *v33;
  v13 = *&v33[16];
  v41 = *v33;
  v42 = *&v33[16];
  v39 = v37[0];
  v40 = v35;
  *&v43 = v11;
  *(&v43 + 1) = v14;
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[3];
  v18 = v2[4];
  a2[2] = v2[2];
  a2[3] = v17;
  *a2 = v15;
  a2[1] = v16;
  v19 = v39;
  v20 = v40;
  a2[4] = v18;
  a2[5] = v19;
  v21 = v41;
  v22 = v43;
  a2[8] = v42;
  a2[9] = v22;
  a2[6] = v20;
  a2[7] = v21;
  v44[2] = v12;
  v44[3] = v13;
  v44[0] = v31;
  v44[1] = v32;
  v45 = v11;
  v46 = v14;
  sub_100009EF0(v37, v24, &qword_100028F00, &qword_10001C550);
  sub_100009EF0(v2, v24, &qword_100028DD0, &qword_10001C408);
  sub_100009EF0(&v39, v24, &qword_100028F08, &qword_10001C558);
  sub_10000793C(v44, &qword_100028F08, &qword_10001C558);
  *v24 = v6;
  *&v24[1] = v5;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = a1;
  v30 = 256;
  return sub_10000793C(v24, &qword_100028F00, &qword_10001C550);
}

uint64_t sub_100008200@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, char *a4@<X8>)
{
  v91 = a3;
  v81 = a2;
  v90 = a1;
  v96 = a4;
  v4 = sub_100004A84(&qword_100028DF0, &qword_10001C428);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v95 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = (&v81 - v8);
  v97 = sub_100004A84(&qword_100028DF8, &qword_10001C430);
  v9 = *(*(v97 - 8) + 64);
  v10 = __chkstk_darwin(v97);
  v94 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v81 - v12;
  v93 = sub_100004A84(&qword_100028E00, &qword_10001C438);
  v98 = *(v93 - 8);
  v14 = v98[8];
  v15 = __chkstk_darwin(v93);
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v100 = &v81 - v17;
  v104 = sub_10000FA3C();
  v105 = v18;
  v87 = sub_100007894();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.subheadline.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_100009990(v19, v21, v23 & 1);

  v89 = sub_100004A84(&qword_100028E08, &qword_10001C440);
  v31 = &v13[*(v89 + 36)];
  v88 = sub_100004A84(&qword_100028E10, &qword_10001C870);
  v32 = *(v88 + 28);
  v33 = enum case for Text.TruncationMode.middle(_:);
  v85 = enum case for Text.TruncationMode.middle(_:);
  v84 = type metadata accessor for Text.TruncationMode();
  v34 = *(v84 - 8);
  v83 = *(v34 + 104);
  v86 = v34 + 104;
  v83(v31 + v32, v33, v84);
  *v31 = swift_getKeyPath();
  *v13 = v24;
  *(v13 + 1) = v26;
  v13[16] = v28 & 1;
  *(v13 + 3) = v30;
  KeyPath = swift_getKeyPath();
  v82 = sub_100004A84(&qword_100028E18, &qword_10001C4A8);
  v36 = &v13[*(v82 + 36)];
  *v36 = KeyPath;
  *(v36 + 1) = 0;
  v36[16] = 1;
  LOBYTE(KeyPath) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v37 = &v13[*(v97 + 36)];
  *v37 = KeyPath;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v42 = v90;
  v43 = v81;
  v101 = v90;
  v102 = v81;
  v44 = v91;
  v103 = v91;
  sub_100004A84(&qword_100028E20, &qword_10001C4B0);
  sub_100009B24();
  sub_100009D20();
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  sub_10000793C(v13, &qword_100028DF8, &qword_10001C430);
  v45 = static VerticalAlignment.center.getter();
  v46 = v99;
  *v99 = v45;
  v46[1] = 0;
  *(v46 + 16) = 1;
  v47 = v46;
  v48 = sub_100004A84(&qword_100028E80, &qword_10001C4D0);
  sub_100008B14(v42, v43, v44, v47 + *(v48 + 44));
  v104 = sub_10000FC44(v44);
  v105 = v49;
  v50 = Text.init<A>(_:)();
  v52 = v51;
  LOBYTE(v44) = v53;
  static Font.subheadline.getter();
  v54 = Text.font(_:)();
  v56 = v55;
  LOBYTE(v42) = v57;

  sub_100009990(v50, v52, v44 & 1);

  v58 = Text.monospacedDigit()();
  v60 = v59;
  LOBYTE(v44) = v61;
  v63 = v62;
  sub_100009990(v54, v56, v42 & 1);

  v64 = &v13[*(v89 + 36)];
  v83(v64 + *(v88 + 28), v85, v84);
  *v64 = swift_getKeyPath();
  *v13 = v58;
  *(v13 + 1) = v60;
  v13[16] = v44 & 1;
  *(v13 + 3) = v63;
  v65 = swift_getKeyPath();
  v66 = &v13[*(v82 + 36)];
  *v66 = v65;
  *(v66 + 1) = 0;
  v66[16] = 1;
  LOBYTE(v58) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v67 = &v13[*(v97 + 36)];
  *v67 = v58;
  *(v67 + 1) = v68;
  *(v67 + 2) = v69;
  *(v67 + 3) = v70;
  *(v67 + 4) = v71;
  v67[40] = 0;
  v72 = v98[2];
  v74 = v92;
  v73 = v93;
  v72(v92, v100, v93);
  v75 = v95;
  sub_100009EF0(v99, v95, &qword_100028DF0, &qword_10001C428);
  v76 = v94;
  sub_100009EF0(v13, v94, &qword_100028DF8, &qword_10001C430);
  v77 = v96;
  v72(v96, v74, v73);
  v78 = sub_100004A84(&qword_100028E88, &qword_10001C4D8);
  sub_100009EF0(v75, &v77[*(v78 + 48)], &qword_100028DF0, &qword_10001C428);
  sub_100009EF0(v76, &v77[*(v78 + 64)], &qword_100028DF8, &qword_10001C430);
  sub_10000793C(v13, &qword_100028DF8, &qword_10001C430);
  sub_10000793C(v99, &qword_100028DF0, &qword_10001C428);
  v79 = v98[1];
  v79(v100, v73);
  sub_10000793C(v76, &qword_100028DF8, &qword_10001C430);
  sub_10000793C(v75, &qword_100028DF0, &qword_10001C428);
  return (v79)(v74, v73);
}

uint64_t sub_100008968@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = a2;
  sub_100004A84(&qword_100028EF0, &qword_10001C518);
  sub_10000A0B0(&qword_100028EF8, &qword_100028EF0, &qword_10001C518);
  Button.init(action:label:)();
  static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v11 = AnyShapeStyle.init<A>(_:)();
  result = sub_100004A84(&qword_100028E20, &qword_10001C4B0);
  v13 = (a4 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  return result;
}

uint64_t sub_100008AB0()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100008B14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v68 = a1;
  v77 = a4;
  v5 = sub_100004A84(&qword_100028E90, &qword_10001C4E0);
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  __chkstk_darwin(v5);
  v70 = &v61 - v7;
  v8 = sub_100004A84(&qword_100028E98, &qword_10001C4E8);
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  v10 = __chkstk_darwin(v8);
  v74 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v61 - v12;
  v65 = sub_100004A84(&qword_100028EA0, &qword_10001C4F0);
  v13 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = &v61 - v14;
  v15 = type metadata accessor for LinearProgressViewStyle();
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004A84(&qword_100028EA8, &qword_10001C4F8);
  v62 = *(v19 - 8);
  v20 = *(v62 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v61 - v24;
  v26 = sub_100004A84(&qword_100028EB0, &qword_10001C500);
  v64 = *(v26 - 8);
  v27 = *(v64 + 64);
  v28 = __chkstk_darwin(v26);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v61 - v31;
  v33 = sub_100004A84(&qword_100028EB8, &qword_10001C508);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v67 = &v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v78 = &v61 - v37;
  if (sub_10000FB80() == 0.0 && ([a2 state] == 5 || objc_msgSend(a2, "state") == 10))
  {
    ProgressView<>.init<>()();
    LinearProgressViewStyle.init()();
    v38 = sub_10000A0B0(&qword_100028EC8, &qword_100028EA8, &qword_10001C4F8);
    v39 = sub_100009FBC(&qword_100028ED0, &type metadata accessor for LinearProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v63 + 8))(v18, v15);
    (*(v62 + 8))(v25, v19);
    v40 = v64;
    (*(v64 + 16))(v66, v32, v26);
    swift_storeEnumTagMultiPayload();
    v79 = *&v19;
    v80 = v15;
    v81 = v38;
    v82 = v39;
    swift_getOpaqueTypeConformance2();
    v41 = v78;
    _ConditionalContent<>.init(storage:)();
    v30 = v32;
  }

  else
  {
    v42 = 0.0;
    if ([a2 state] == 5 && sub_10000FB80() != 0.0)
    {
      v42 = sub_10000FB80() * 100.0;
    }

    v79 = v42;
    LOBYTE(v80) = 0;
    v83 = 0x4059000000000000;
    sub_100009E04();
    ProgressView.init<A>(value:total:)();
    LinearProgressViewStyle.init()();
    v43 = sub_10000A0B0(&qword_100028EC8, &qword_100028EA8, &qword_10001C4F8);
    v44 = sub_100009FBC(&qword_100028ED0, &type metadata accessor for LinearProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v63 + 8))(v18, v15);
    (*(v62 + 8))(v23, v19);
    v40 = v64;
    (*(v64 + 16))(v66, v30, v26);
    swift_storeEnumTagMultiPayload();
    v79 = *&v19;
    v80 = v15;
    v81 = v43;
    v82 = v44;
    swift_getOpaqueTypeConformance2();
    v41 = v78;
    _ConditionalContent<>.init(storage:)();
  }

  (*(v40 + 8))(v30, v26);
  v45 = swift_allocObject();
  *(v45 + 16) = v68;
  *(v45 + 24) = a2;
  *(v45 + 32) = v69 & 1;
  v46 = a2;
  v47 = v70;
  Button.init(action:label:)();
  v48 = static Color.secondary.getter();
  v49 = static Color.white.getter();
  v79 = *&v48;
  v80 = v49;
  sub_10000A0B0(&qword_100028ED8, &qword_100028E90, &qword_10001C4E0);
  sub_100009E9C();
  v50 = v71;
  v51 = v73;
  View.buttonStyle<A>(_:)();

  (*(v72 + 8))(v47, v51);
  v52 = v67;
  sub_100009EF0(v41, v67, &qword_100028EB8, &qword_10001C508);
  v54 = v74;
  v53 = v75;
  v55 = *(v75 + 16);
  v56 = v76;
  v55(v74, v50, v76);
  v57 = v77;
  sub_100009EF0(v52, v77, &qword_100028EB8, &qword_10001C508);
  v58 = sub_100004A84(&qword_100028EE8, &qword_10001C510);
  v55((v57 + *(v58 + 48)), v54, v56);
  v59 = *(v53 + 8);
  v59(v50, v56);
  sub_10000793C(v78, &qword_100028EB8, &qword_10001C508);
  v59(v54, v56);
  return sub_10000793C(v52, &qword_100028EB8, &qword_10001C508);
}

uint64_t sub_1000094C4(uint64_t a1, void *a2)
{
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  [a2 cancel];
  sub_100009F58();
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v11 + 8);
  v22(v15, v10);
  aBlock[4] = sub_100009874;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005A54;
  aBlock[3] = &unk_100025AB0;
  v19 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100009FBC(&qword_100028CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004A84(&qword_100028CB8, &unk_10001BD60);
  sub_10000A0B0(&qword_100028CC0, &qword_100028CB8, &unk_10001BD60);
  v20 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v5, v20);
  (*(v25 + 8))(v9, v26);
  return (v22)(v17, v23);
}

void sub_100009874()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:@"PKJobListNotification" object:0];
}

uint64_t sub_1000098E4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100009924@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.top.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100004A84(&qword_100028DC0, &qword_10001C3F8);
  return sub_100007C60(v3, v4, v5, (a1 + *(v6 + 44)));
}

uint64_t sub_100009990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000099E8(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_100009AB4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100009AE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

unint64_t sub_100009B24()
{
  result = qword_100028E28;
  if (!qword_100028E28)
  {
    sub_100004C24(&qword_100028DF8, &qword_10001C430);
    sub_100009BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E28);
  }

  return result;
}

unint64_t sub_100009BB0()
{
  result = qword_100028E30;
  if (!qword_100028E30)
  {
    sub_100004C24(&qword_100028E18, &qword_10001C4A8);
    sub_100009C68();
    sub_10000A0B0(&qword_100028E48, &qword_100028E50, &qword_10001C4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E30);
  }

  return result;
}

unint64_t sub_100009C68()
{
  result = qword_100028E38;
  if (!qword_100028E38)
  {
    sub_100004C24(&qword_100028E08, &qword_10001C440);
    sub_10000A0B0(&qword_100028E40, &qword_100028E10, &qword_10001C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E38);
  }

  return result;
}

unint64_t sub_100009D20()
{
  result = qword_100028E58;
  if (!qword_100028E58)
  {
    sub_100004C24(&qword_100028E20, &qword_10001C4B0);
    sub_10000A0B0(&qword_100028E60, &qword_100028E68, &qword_10001C4C0);
    sub_10000A0B0(&qword_100028E70, &qword_100028E78, &qword_10001C4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E58);
  }

  return result;
}

unint64_t sub_100009E04()
{
  result = qword_100028EC0;
  if (!qword_100028EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028EC0);
  }

  return result;
}

uint64_t sub_100009E58()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100009E9C()
{
  result = qword_100028EE0;
  if (!qword_100028EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028EE0);
  }

  return result;
}

uint64_t sub_100009EF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004A84(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100009F58()
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

uint64_t sub_100009FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A014@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000A040(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_10000A0B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004C24(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A224(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_10000A26C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A2B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000A328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004C24(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A398()
{
  result = static Font.headline.getter();
  qword_100029350 = result;
  return result;
}

void sub_10000A3B8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A540;
  v1._object = 0x800000010001A5F0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029358 = v3;
}

void sub_10000A470()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A590;
  v1._object = 0x800000010001A570;
  v4._countAndFlagsBits = 0xD000000000000035;
  v1._countAndFlagsBits = 0xD000000000000015;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029368 = v3;
}

void sub_10000A528()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A4B0;
  v1._countAndFlagsBits = 0x676E6974696157;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029378 = v3;
}

void sub_10000A5D8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A520;
  v1._countAndFlagsBits = 0x646573756150;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000015;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029388 = v3;
}

void sub_10000A684()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A540;
  v1._countAndFlagsBits = 0x676E69746E697250;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029398 = v3;
}

void sub_10000A734()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A5D0;
  v1._countAndFlagsBits = 0x646570706F7453;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293A8 = v3;
}

void sub_10000A7E4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A610;
  v1._countAndFlagsBits = 0x64656C65636E6143;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293B8 = v3;
}

void sub_10000A894()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A630;
  v1._countAndFlagsBits = 0x64656C696146;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293C8 = v3;
}

void sub_10000A940()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A650;
  v1._countAndFlagsBits = 0x6574656C706D6F43;
  v1._object = 0xE900000000000064;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293D8 = v3;
}

void sub_10000A9F4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A710;
  v1._countAndFlagsBits = 0x6E776F6E6B6E55;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293E8 = v3;
}

void sub_10000AAA4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A670;
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000027;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293F8 = v3;
}

void sub_10000AB48()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE400000000000000;
  v1._countAndFlagsBits = 9666786;
  v1._object = 0xA300000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 1752392036;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029408 = v3;
}

void sub_10000ABE4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x676E696D6F636E49;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029418 = v3;
}

void sub_10000AC84()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A4F0;
  v1._object = 0x800000010001A4D0;
  v4._countAndFlagsBits = 0xD000000000000026;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029428 = v3;
}

void sub_10000AD3C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A6E0;
  v1._object = 0x800000010001A6C0;
  v1._countAndFlagsBits = 0x1000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029438 = v3;
}

void sub_10000ADF0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A6A0;
  v1._countAndFlagsBits = 541074806;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029448 = v3;
}

__n128 sub_10000AE98@<Q0>(uint64_t a1@<X8>)
{
  sub_100004A84(&qword_100028F88, &qword_10001C7A8);
  State.projectedValue.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = AppStorage.init<A>(wrappedValue:_:store:)();
  if (qword_100028A00 != -1)
  {
    swift_once();
  }

  type metadata accessor for PrintMonitor();
  sub_10000B41C();

  v3 = ObservedObject.init(wrappedValue:)();
  *a1 = v6;
  result = v7;
  *(a1 + 8) = v7;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10000AFAC()
{
  v1 = sub_100004A84(&qword_100028F60, &qword_10001C798);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  v7 = *v0;
  v6 = v0[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  sub_100004A84(&qword_100028F68, &qword_10001C7A0);
  sub_10000A0B0(&qword_100028F70, &qword_100028F68, &qword_10001C7A0);
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000A0B0(&qword_100028F78, &qword_100028F60, &qword_10001C798);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10000B184@<X0>(void *a1@<X8>)
{
  sub_100004A84(&qword_100028F58, &qword_10001C790);
  result = State.init(wrappedValue:)();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000B21C();
  static App.main()();
  return 0;
}

unint64_t sub_10000B21C()
{
  result = qword_100028F50;
  if (!qword_100028F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F50);
  }

  return result;
}

uint64_t sub_10000B270(uint64_t *a1, int a2)
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

uint64_t sub_10000B2B8(uint64_t result, int a2, int a3)
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

uint64_t sub_10000B320()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B360()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_10000B3C8();
  return NavigationStack.init<>(root:)();
}

double sub_10000B3C0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *&result = sub_10000AE98(a1).n128_u64[0];
  return result;
}

unint64_t sub_10000B3C8()
{
  result = qword_100028F80;
  if (!qword_100028F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F80);
  }

  return result;
}

unint64_t sub_10000B41C()
{
  result = qword_100028CC8;
  if (!qword_100028CC8)
  {
    type metadata accessor for PrintMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CC8);
  }

  return result;
}

__n128 sub_10000B4B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000B4C4(uint64_t a1, int a2)
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

uint64_t sub_10000B50C(uint64_t result, int a2, int a3)
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

uint64_t sub_10000B578@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = sub_100004A84(&qword_100028F98, &unk_10001C860);
  v6 = *(v5 - 8);
  v40 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v43 = a1;
  v44 = a2;
  sub_100007894();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.headline.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_100009990(v12, v14, v16 & 1);

  static Font.Weight.medium.getter();
  v22 = Text.fontWeight(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_100009990(v17, v19, v21 & 1);

  v29 = &v11[*(sub_100004A84(&qword_100028E08, &qword_10001C440) + 36)];
  v30 = *(sub_100004A84(&qword_100028E10, &qword_10001C870) + 28);
  v31 = enum case for Text.TruncationMode.middle(_:);
  v32 = type metadata accessor for Text.TruncationMode();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  *v11 = v22;
  *(v11 + 1) = v24;
  v11[16] = v26 & 1;
  *(v11 + 3) = v28;
  v33 = static Edge.Set.leading.getter();
  v34 = v41;
  v35 = &v11[*(v40 + 44)];
  *v35 = v33;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  v35[40] = 1;
  sub_10000B8BC(v11, v34);
  v36 = v42;
  sub_10000B8BC(v34, v42);
  v37 = v36 + *(sub_100004A84(&qword_100028FA0, &qword_10001C8A8) + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_10000B92C(v11);
  return sub_10000B92C(v34);
}

uint64_t sub_10000B820@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  sub_100016F40(v3, v4);

  *a1 = static VerticalAlignment.firstTextBaseline.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v7 = sub_100004A84(&qword_100028F90, &qword_10001C858);
  return sub_10000B578(v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_10000B8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028F98, &unk_10001C860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B92C(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028F98, &unk_10001C860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B998()
{
  result = qword_100028FA8;
  if (!qword_100028FA8)
  {
    sub_100004C24(&qword_100028FB0, &qword_10001C8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FA8);
  }

  return result;
}

__n128 sub_10000B9FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000BA10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10000BA58(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000BAD0()
{
  v1 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004A84(&qword_100028FB8, &qword_10001C968);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v40 = sub_100004A84(&qword_100028FC0, &qword_10001C970);
  v10 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v41 = &v38 - v11;
  v39 = v0;
  v12 = sub_10000BE70();
  v13 = sub_10000EEFC(v12);
  v14 = v13;
  v16 = v15;
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    v18 = sub_100016F40(v14, v16);
    v21 = sub_100015410(v18, v19, v20);
    v38 = v5;
    v22 = v2;
    v23 = v1;
    v25 = v24;

    if (v25)
    {
      v26 = v21;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v1 = v23;
    v2 = v22;
    v5 = v38;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v28 = sub_100004A84(&qword_100028FC8, &qword_10001C978);
  sub_10000C014(v12, v26, v27, v14, v16, v39, &v9[*(v28 + 44)]);

  v29 = static Edge.Set.leading.getter();
  v30 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  v31 = v9;
  v32 = v41;
  sub_10000F008(v31, v41);
  *(v32 + *(v40 + 36)) = v30;
  v33 = [objc_opt_self() mainBundle];
  v34._object = 0xEB00000000726564;
  v43._object = 0xEB00000000726564;
  v34._countAndFlagsBits = 0x724F20746E697250;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0x724F20746E697250;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v43);

  v42 = v36;
  (*(v2 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v1);
  sub_10000F078();
  sub_100007894();
  View.navigationBarTitle<A>(_:displayMode:)();
  (*(v2 + 8))(v5, v1);

  return sub_10000F130(v32);
}

unint64_t sub_10000BE70()
{
  v1 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = sub_10000E608(v2);
  sub_10000CB40(&v11);

  v3 = v11;
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v14 = v6;
  v15 = v5;
  v11 = v5;
  v12 = v4;
  v13 = v6;
  sub_10000F32C(&v15, &v10);

  sub_100009EF0(&v14, &v10, &qword_100028F58, &qword_10001C790);
  sub_100004A84(&qword_100029060, &qword_10001CA30);
  Binding.wrappedValue.getter();
  v7 = v10;

  v8 = sub_10000ECA8(v7, v3);

  v11 = v5;
  v12 = v4;
  v13 = v6;
  v10 = v8;
  Binding.wrappedValue.setter();
  sub_10000F420(&v15);

  sub_10000793C(&v14, &qword_100028F58, &qword_10001C790);
  return v3;
}

uint64_t sub_10000C014@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v61 = a6;
  *&v73 = a5;
  v68 = a7;
  v63 = type metadata accessor for PlainListStyle();
  v62 = *(v63 - 8);
  v11 = *(v62 + 64);
  __chkstk_darwin(v63);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004A84(&qword_100028FE0, &qword_10001C980);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v67 = sub_100004A84(&qword_100028FE8, &qword_10001C988);
  v64 = *(v67 - 8);
  v18 = *(v64 + 64);
  v19 = __chkstk_darwin(v67);
  v75 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v69 = &v54 - v21;
  v65 = type metadata accessor for Divider();
  v66 = *(v65 - 8);
  v22 = *(v66 + 64);
  v23 = __chkstk_darwin(v65);
  v74 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v54 - v25;
  Divider.init()();
  if (!(a1 >> 62))
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_9:
    *&v76 = 0;
    sub_100004A84(&qword_100029038, &unk_10001C9B0);
    State.init(wrappedValue:)();
    v87 = 0;
    v76 = v80;
    v79[24] = 0;
    sub_100004A84(&qword_100028FF0, &qword_10001C990);
    sub_10000F198();
    sub_10000A0B0(&qword_100029000, &qword_100028FF0, &qword_10001C990);
    v27 = _ConditionalContent<>.init(storage:)();
    goto LABEL_10;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_9;
  }

LABEL_3:
  v28 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v28 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = v73;

    v30 = static Animation.easeInOut(duration:)();
    v55 = a1;
    v31 = v30;
    v56 = v13;
    v86 = 1;
    swift_bridgeObjectRetain_n();

    v87 = 1;
    *&v76 = 0;
    BYTE8(v76) = 1;
    *&v77 = a4;
    *(&v77 + 1) = v29;
    *&v78 = a2;
    *(&v78 + 1) = a3;
    *v79 = v31;
    *&v79[8] = a2;
    *&v79[16] = a3;
    v79[24] = 1;
    sub_100004A84(&qword_100028FF0, &qword_10001C990);
    sub_10000F198();
    sub_10000A0B0(&qword_100029000, &qword_100028FF0, &qword_10001C990);
    v13 = v56;
    _ConditionalContent<>.init(storage:)();
    a1 = v55;

    swift_bridgeObjectRelease_n();

LABEL_10:
    v72 = v81;
    v73 = v80;
    v71 = v83;
    v70 = v82;
    v60 = v84;
    v59 = v85;
    goto LABEL_11;
  }

  v60 = 0;
  v73 = 0u;
  v59 = 255;
  v72 = 0u;
  v70 = 0u;
  v71 = 0u;
LABEL_11:
  v58 = v26;
  __chkstk_darwin(v27);
  v32 = v61;
  *(&v54 - 2) = a1;
  *(&v54 - 1) = v32;
  sub_100004A84(&qword_100029008, &qword_10001C998);
  sub_10000F1F4();
  List<>.init(content:)();
  v33 = v57;
  PlainListStyle.init()();
  sub_10000A0B0(&qword_100029020, &qword_100028FE0, &qword_10001C980);
  v34 = v69;
  v35 = v63;
  View.listStyle<A>(_:)();
  (*(v62 + 8))(v33, v35);
  (*(v14 + 8))(v17, v13);
  v36 = v66;
  v37 = *(v66 + 16);
  v38 = v74;
  v39 = v65;
  v37(v74, v26, v65);
  v40 = v64;
  v41 = *(v64 + 16);
  v42 = v67;
  v41(v75, v34, v67);
  v43 = v68;
  v37(v68, v38, v39);
  v44 = sub_100004A84(&qword_100029028, &qword_10001C9A0);
  v45 = &v43[*(v44 + 48)];
  v76 = v73;
  v77 = v72;
  v78 = v70;
  *v79 = v71;
  v46 = v60;
  *&v79[16] = v60;
  LOBYTE(v37) = v59;
  v79[24] = v59;
  v48 = v72;
  v47 = v70;
  *v45 = v73;
  *(v45 + 1) = v48;
  v49 = *v79;
  *(v45 + 2) = v47;
  *(v45 + 3) = v49;
  *(v45 + 57) = *&v79[9];
  v50 = v75;
  v41(&v43[*(v44 + 64)], v75, v42);
  sub_100009EF0(&v76, &v80, &qword_100029030, &qword_10001C9A8);
  v51 = *(v40 + 8);
  v51(v69, v42);
  v52 = *(v36 + 8);
  v52(v58, v39);
  v51(v50, v42);
  v80 = v73;
  v81 = v72;
  v82 = v70;
  v83 = v71;
  v84 = v46;
  v85 = v37;
  sub_10000793C(&v80, &qword_100029030, &qword_10001C9A8);
  return (v52)(v74, v39);
}

uint64_t sub_10000C8D4(uint64_t a1, uint64_t *a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = a2[1];
  v13 = *a2;
  v4 = a2[2];
  v11 = a2[3];
  v12 = v4;
  v10 = *(a2 + 2);
  v5 = swift_allocObject();
  v6 = *(a2 + 1);
  v5[1] = *a2;
  v5[2] = v6;
  v5[3] = *(a2 + 2);

  sub_10000F32C(&v13, v8);

  sub_100009EF0(&v12, v8, &qword_100028F58, &qword_10001C790);
  sub_100009EF0(&v11, v8, &qword_100029040, &qword_10001C9D8);
  sub_100009EF0(&v10, v8, &qword_100029048, &qword_10001C9E0);
  sub_100004A84(&unk_100028B40, &qword_10001BB80);
  sub_10000A0B0(&qword_100029050, &unk_100028B40, &qword_10001BB80);
  sub_10000F3D4(&qword_100029058);
  sub_10000F278();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10000CA8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10000F388();
  sub_10000F3D4(&qword_100028CA8);
  v4 = v3;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_10000CB04()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_10000BAD0();
}

uint64_t sub_10000CB40(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100016868(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10000CC44(v6);
  return specialized ContiguousArray._endMutation()();
}

void *sub_10000CBBC(uint64_t a1, uint64_t a2)
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

  sub_100004A84(&qword_100029078, qword_10001CA40);
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

void sub_10000CC44(uint64_t *a1)
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
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000F388();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10000D124(v8, v9, a1, v4);
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
    sub_10000CD48(0, v2, 1, a1);
  }
}

void sub_10000CD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = type metadata accessor for Date();
  v8 = *(*(v52 - 8) + 64);
  v9 = __chkstk_darwin(v52);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v46 = &v41 - v12;
  v13 = __chkstk_darwin(v11);
  v50 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  v42 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v48 = (v15 + 8);
    v49 = (v15 + 32);
    v53 = v18;
    v19 = v18 + 8 * a3 - 8;
    v20 = a1 - a3;
    v21 = &PCPrintJob__metaData;
LABEL_6:
    v44 = v19;
    v45 = a3;
    v22 = *(v53 + 8 * a3);
    v43 = v20;
    while (1)
    {
      v23 = *v19;
      v24 = v22;
      v25 = v23;
      if (([v24 *&v21[19].ivar_base_size] == 5 || objc_msgSend(v24, *&v21[19].ivar_base_size) == 10) && (objc_msgSend(v25, *&v21[19].ivar_base_size) == 5 || objc_msgSend(v25, *&v21[19].ivar_base_size) == 10))
      {
        v26 = [v24 timeAtProcessing];
        if (v26)
        {
          v27 = v50;
          v28 = v26;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = *v49;
          v51(v17, v27, v52);
          v29 = [v25 timeAtProcessing];
          if (v29)
          {
            v30 = v29;
            v31 = v47;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v32 = v17;
            v33 = v46;
            v34 = v52;
            v51(v46, v31, v52);
            LODWORD(v51) = static Date.< infix(_:_:)();
            v35 = *v48;
            v36 = v33;
            v17 = v32;
            (*v48)(v36, v34);
            v35(v32, v34);
            v21 = &PCPrintJob__metaData;

            if ((v51 & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_22;
          }

          (*v48)(v17, v52);
        }
      }

      if ([v24 *&v21[19].ivar_base_size] == 5 || objc_msgSend(v24, *&v21[19].ivar_base_size) == 10)
      {
      }

      else
      {
        if ([v25 *&v21[19].ivar_base_size] == 5 || objc_msgSend(v25, *&v21[19].ivar_base_size) == 10)
        {

LABEL_5:
          a3 = v45 + 1;
          v19 = v44 + 8;
          v20 = v43 - 1;
          if (v45 + 1 == v42)
          {
            return;
          }

          goto LABEL_6;
        }

        v37 = [v24 localJobID];
        v38 = [v25 localJobID];

        if (v37 >= v38)
        {
          goto LABEL_5;
        }
      }

LABEL_22:
      if (!v53)
      {
        __break(1u);
        return;
      }

      v39 = *v19;
      v22 = *(v19 + 8);
      *v19 = v22;
      *(v19 + 8) = v39;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_10000D124(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v146 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v154 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v153 = &v141 - v11;
  v12 = __chkstk_darwin(v10);
  v158 = &v141 - v13;
  v14 = __chkstk_darwin(v12);
  v163 = &v141 - v15;
  v16 = __chkstk_darwin(v14);
  v145 = &v141 - v17;
  v18 = __chkstk_darwin(v16);
  v144 = &v141 - v19;
  v20 = __chkstk_darwin(v18);
  v149 = &v141 - v21;
  v22 = __chkstk_darwin(v20);
  v25 = a3[1];
  if (v25 >= 1)
  {
    v147 = &v141 - v24;
    v160 = v22;
    v142 = a4;
    v26 = 0;
    v162 = (v23 + 32);
    v159 = (v23 + 8);
    v27 = &_swiftEmptyArrayStorage;
    v28 = &PCPrintJob__metaData;
    v29 = 0x100028000;
    v148 = a3;
    while (1)
    {
      v30 = v26;
      if (v26 + 1 >= v25)
      {
        v156 = v26 + 1;
        goto LABEL_44;
      }

      v143 = v27;
      v31 = *a3;
      v32 = *(*a3 + 8 * (v26 + 1));
      v164 = *(*a3 + 8 * v26);
      v33 = v164;
      v165 = v32;
      v34 = v32;
      v35 = v33;
      v36 = v155;
      LODWORD(v161) = sub_1000033E0(&v165, &v164);
      v155 = v36;
      if (v36)
      {

        return;
      }

      v156 = v30 + 2;
      if (v30 + 2 >= v25)
      {
        v29 = 0x100028000;
        goto LABEL_34;
      }

      v141 = v30;
      v37 = (v31 + 8 * v30 + 16);
      v157 = v25;
      v38 = v161;
      do
      {
        v39 = *(v37 - 1);
        v40 = *v37;
        v41 = v39;
        if (([v40 *&v28[19].ivar_base_size] == 5 || objc_msgSend(v40, *&v28[19].ivar_base_size) == 10) && (objc_msgSend(v41, *&v28[19].ivar_base_size, v141) == 5 || objc_msgSend(v41, *&v28[19].ivar_base_size) == 10))
        {
          v42 = [v40 timeAtProcessing];
          if (v42)
          {
            v43 = v149;
            v44 = v42;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v45 = *v162;
            v46 = v147;
            v47 = v43;
            a4 = v160;
            (*v162)(v147, v47, v160);
            v48 = [v41 timeAtProcessing];
            if (v48)
            {
              v49 = v145;
              v50 = v48;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v51 = v144;
              v45(v144, v49, a4);
              LOBYTE(v49) = static Date.< infix(_:_:)();
              v52 = *v159;
              (*v159)(v51, a4);
              v52(v46, a4);
              v28 = &PCPrintJob__metaData;

              v53 = v161 ^ v49;
              v38 = v161;
              a3 = v148;
              v25 = v157;
              if (v53)
              {
                goto LABEL_33;
              }

              goto LABEL_9;
            }

            (*v159)(v46, a4);
            a3 = v148;
            v25 = v157;
          }
        }

        if ([v40 *&v28[19].ivar:v141 base:?size] == 5 || objc_msgSend(v40, *&v28[19].ivar_base_size) == 10)
        {

          if ((v38 & 1) == 0)
          {
            v27 = v143;
            v29 = 0x100028000;
            v30 = v141;
            goto LABEL_44;
          }
        }

        else if ([v41 *&v28[19].ivar_base_size] == 5 || objc_msgSend(v41, *&v28[19].ivar_base_size) == 10)
        {

          if (v38)
          {
            v27 = v143;
            v29 = 0x100028000;
            v30 = v141;
            goto LABEL_35;
          }
        }

        else
        {
          a4 = &PCPrintJob__metaData;
          v54 = [v40 localJobID];
          v55 = [v41 localJobID];

          v56 = v54 < v55;
          v25 = v157;
          v57 = !v56;
          if ((v38 & 1) == v57)
          {
            goto LABEL_33;
          }
        }

LABEL_9:
        ++v37;
        ++v156;
      }

      while (v25 != v156);
      v156 = v25;
LABEL_33:
      v29 = 0x100028000;
      v30 = v141;
LABEL_34:
      v27 = v143;
      if (v161)
      {
LABEL_35:
        v58 = v156;
        if (v156 >= v30)
        {
          if (v30 < v156)
          {
            v59 = 8 * v156 - 8;
            v60 = 8 * v30;
            v61 = v30;
            while (1)
            {
              if (v61 != --v58)
              {
                v63 = *a3;
                if (!*a3)
                {
                  goto LABEL_167;
                }

                v62 = *(v63 + v60);
                *(v63 + v60) = *(v63 + v59);
                *(v63 + v59) = v62;
              }

              ++v61;
              v59 -= 8;
              v60 += 8;
              if (v61 >= v58)
              {
                goto LABEL_44;
              }
            }
          }

          goto LABEL_44;
        }

LABEL_163:
        __break(1u);
LABEL_164:
        v136 = sub_100016504(a4);
        goto LABEL_133;
      }

LABEL_44:
      v64 = a3[1];
      if (v156 >= v64)
      {
        goto LABEL_77;
      }

      if (__OFSUB__(v156, v30))
      {
        goto LABEL_160;
      }

      if (v156 - v30 >= v142)
      {
        goto LABEL_77;
      }

      if (__OFADD__(v30, v142))
      {
        goto LABEL_161;
      }

      if (v30 + v142 >= v64)
      {
        v65 = a3[1];
      }

      else
      {
        v65 = v30 + v142;
      }

      if (v65 < v30)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (v156 == v65)
      {
        goto LABEL_77;
      }

      v143 = v27;
      v66 = *a3;
      v67 = (*a3 + 8 * v156 - 8);
      v141 = v30;
      v68 = v30 - v156;
      v69 = v66;
      v70 = v156;
      v150 = v65;
      v157 = v66;
      while (2)
      {
        v156 = v70;
        v71 = *(v69 + 8 * v70);
        v151 = v68;
        v152 = v67;
        while (2)
        {
          a4 = *v67;
          v72 = v71;
          v25 = a4;
          if (([v72 *&v28[19].ivar_base_size] == 5 || objc_msgSend(v72, *&v28[19].ivar_base_size) == 10) && (objc_msgSend(v25, *&v28[19].ivar_base_size, v141) == 5 || objc_msgSend(v25, *&v28[19].ivar_base_size) == 10))
          {
            v73 = [v72 *(v29 + 1416)];
            if (v73)
            {
              v74 = v158;
              v75 = v25;
              v76 = v73;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v25 = v75;
              a4 = *v162;
              v77 = v74;
              v78 = v160;
              (*v162)(v163, v77, v160);
              v79 = [v25 *(v29 + 1416)];
              if (v79)
              {
                v80 = v154;
                v161 = v25;
                v81 = v79;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v82 = v153;
                v83 = v80;
                v84 = v163;
                (a4)(v153, v83, v78);
                v25 = static Date.< infix(_:_:)();
                a4 = *v159;
                (*v159)(v82, v78);
                v85 = v84;
                v28 = &PCPrintJob__metaData;
                (a4)(v85, v78);
                v29 = &PCPrintJob__metaData;

                v69 = v157;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_72;
              }

              (*v159)(v163, v78);
              v69 = v157;
            }
          }

          if ([v72 *&v28[19].ivar:v141 base:?size] == 5 || objc_msgSend(v72, *&v28[19].ivar_base_size) == 10)
          {

            goto LABEL_72;
          }

          if ([v25 *&v28[19].ivar_base_size] != 5 && objc_msgSend(v25, *&v28[19].ivar_base_size) != 10)
          {
            v86 = [v72 localJobID];
            a4 = [v25 localJobID];

            if (v86 >= a4)
            {
              goto LABEL_55;
            }

LABEL_72:
            if (v69)
            {
              v87 = *v67;
              v71 = v67[1];
              *v67 = v71;
              v67[1] = v87;
              --v67;
              if (__CFADD__(v68++, 1))
              {
                goto LABEL_55;
              }

              continue;
            }

            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
            return;
          }

          break;
        }

LABEL_55:
        v70 = v156 + 1;
        v67 = v152 + 1;
        v68 = v151 - 1;
        if (v156 + 1 != v150)
        {
          continue;
        }

        break;
      }

      v156 = v150;
      a3 = v148;
      v27 = v143;
      v30 = v141;
LABEL_77:
      if (v156 < v30)
      {
        goto LABEL_159;
      }

      v89 = v27;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v89;
      }

      else
      {
        v27 = sub_100016518(0, *(v89 + 2) + 1, 1, v89);
      }

      a4 = *(v27 + 2);
      v90 = *(v27 + 3);
      v25 = a4 + 1;
      if (a4 >= v90 >> 1)
      {
        v27 = sub_100016518((v90 > 1), a4 + 1, 1, v27);
      }

      *(v27 + 2) = v25;
      v91 = &v27[16 * a4];
      v92 = v156;
      *(v91 + 4) = v30;
      *(v91 + 5) = v92;
      v93 = *v146;
      if (!*v146)
      {
        goto LABEL_169;
      }

      if (a4)
      {
        while (2)
        {
          v29 = v25 - 1;
          if (v25 >= 4)
          {
            v98 = &v27[16 * v25 + 32];
            v99 = *(v98 - 64);
            v100 = *(v98 - 56);
            v104 = __OFSUB__(v100, v99);
            v101 = v100 - v99;
            if (v104)
            {
              goto LABEL_146;
            }

            v103 = *(v98 - 48);
            v102 = *(v98 - 40);
            v104 = __OFSUB__(v102, v103);
            v96 = v102 - v103;
            v97 = v104;
            if (v104)
            {
              goto LABEL_147;
            }

            v105 = &v27[16 * v25];
            v107 = *v105;
            v106 = *(v105 + 1);
            v104 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v104)
            {
              goto LABEL_149;
            }

            v104 = __OFADD__(v96, v108);
            v109 = v96 + v108;
            if (v104)
            {
              goto LABEL_152;
            }

            if (v109 >= v101)
            {
              v127 = &v27[16 * v29 + 32];
              v129 = *v127;
              v128 = *(v127 + 1);
              v104 = __OFSUB__(v128, v129);
              v130 = v128 - v129;
              if (v104)
              {
                goto LABEL_156;
              }

              if (v96 < v130)
              {
                v29 = v25 - 2;
              }
            }

            else
            {
LABEL_97:
              if (v97)
              {
                goto LABEL_148;
              }

              v110 = &v27[16 * v25];
              v112 = *v110;
              v111 = *(v110 + 1);
              v113 = __OFSUB__(v111, v112);
              v114 = v111 - v112;
              v115 = v113;
              if (v113)
              {
                goto LABEL_151;
              }

              v116 = &v27[16 * v29 + 32];
              v118 = *v116;
              v117 = *(v116 + 1);
              v104 = __OFSUB__(v117, v118);
              v119 = v117 - v118;
              if (v104)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v114, v119))
              {
                goto LABEL_155;
              }

              if (v114 + v119 < v96)
              {
                goto LABEL_111;
              }

              if (v96 < v119)
              {
                v29 = v25 - 2;
              }
            }
          }

          else
          {
            if (v25 == 3)
            {
              v94 = *(v27 + 4);
              v95 = *(v27 + 5);
              v104 = __OFSUB__(v95, v94);
              v96 = v95 - v94;
              v97 = v104;
              goto LABEL_97;
            }

            v120 = &v27[16 * v25];
            v122 = *v120;
            v121 = *(v120 + 1);
            v104 = __OFSUB__(v121, v122);
            v114 = v121 - v122;
            v115 = v104;
LABEL_111:
            if (v115)
            {
              goto LABEL_150;
            }

            v123 = &v27[16 * v29];
            v125 = *(v123 + 4);
            v124 = *(v123 + 5);
            v104 = __OFSUB__(v124, v125);
            v126 = v124 - v125;
            if (v104)
            {
              goto LABEL_153;
            }

            if (v126 < v114)
            {
              break;
            }
          }

          a4 = v29 - 1;
          if (v29 - 1 >= v25)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
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
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          if (!*a3)
          {
            goto LABEL_166;
          }

          v131 = v27;
          v132 = *&v27[16 * a4 + 32];
          v25 = *&v27[16 * v29 + 40];
          v133 = v155;
          sub_10000DDB4((*a3 + 8 * v132), (*a3 + 8 * *&v27[16 * v29 + 32]), (*a3 + 8 * v25), v93);
          v155 = v133;
          if (v133)
          {
            goto LABEL_141;
          }

          if (v25 < v132)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_100016504(v131);
          }

          if (a4 >= *(v131 + 2))
          {
            goto LABEL_145;
          }

          v134 = &v131[16 * a4];
          *(v134 + 4) = v132;
          *(v134 + 5) = v25;
          v166 = v131;
          sub_100016478(v29);
          v27 = v166;
          v25 = *(v166 + 2);
          if (v25 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v25 = a3[1];
      v26 = v156;
      v29 = 0x100028000;
      if (v156 >= v25)
      {
        goto LABEL_130;
      }
    }
  }

  v27 = &_swiftEmptyArrayStorage;
LABEL_130:
  v29 = *v146;
  if (!*v146)
  {
    goto LABEL_170;
  }

  a4 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v155;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_164;
  }

  v136 = a4;
LABEL_133:
  v166 = v136;
  a4 = *(v136 + 2);
  if (a4 >= 2)
  {
    while (*a3)
    {
      v137 = *&v136[16 * a4];
      v138 = v136;
      v139 = *&v136[16 * a4 + 24];
      sub_10000DDB4((*a3 + 8 * v137), (*a3 + 8 * *&v136[16 * a4 + 16]), (*a3 + 8 * v139), v29);
      if (v25)
      {
        goto LABEL_141;
      }

      if (v139 < v137)
      {
        goto LABEL_157;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_100016504(v138);
      }

      if (a4 - 2 >= *(v138 + 2))
      {
        goto LABEL_158;
      }

      v140 = &v138[16 * a4];
      *v140 = v137;
      *(v140 + 1) = v139;
      v166 = v138;
      sub_100016478(a4 - 1);
      v136 = v166;
      a4 = *(v166 + 2);
      if (a4 <= 1)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_168;
  }

LABEL_141:
}

uint64_t sub_10000DDB4(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1000033E0(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1000033E0(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_10000E150(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004A84(&qword_100029068, &qword_10001CA38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t *sub_10000E378(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
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

    sub_10000E840(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_10000E414(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004A84(&qword_100029068, &qword_10001CA38);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10000E608(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10000CBBC(v3, 0);
  sub_10000E69C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10000E69C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000A0B0(&qword_100029070, &unk_100028B40, &qword_10001BB80);
          for (i = 0; i != v6; ++i)
          {
            sub_100004A84(&unk_100028B40, &qword_10001BB80);
            v9 = sub_100004FF8(v13, i, a3);
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
        sub_10000F388();
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

void sub_10000E840(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    __chkstk_darwin(a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_100004E24(sub_10000F510, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_10000E414(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10000E9E8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = &v26;
    v27 = v5;
    __chkstk_darwin(v7);
    v28 = &v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v32 = *(*(v30 + 48) + 8 * v17);
      __chkstk_darwin(v8);
      *(&v26 - 2) = &v32;
      v19 = v18;
      v20 = sub_100004E24(sub_10000F510, (&v26 - 4), v31);

      if (v20)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_10000E414(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_10000E378(v24, v5, v2, v25);

LABEL_17:

  return v22;
}

Swift::Int sub_10000ECA8(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10000E9E8(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;
  v24 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v4 = __CocoaSet.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_10000F388();
    v6 = v5;
    do
    {
      v22 = v6;
      v7 = swift_dynamicCast();
      v22 = v23;
      __chkstk_darwin(v7);
      v21[2] = &v22;
      v8 = sub_100004E24(sub_10000F474, v21, a2);
      v9 = v23;
      if (v8)
      {
        v10 = v3[2];
        if (v3[3] <= v10)
        {
          sub_10000E150(v10 + 1);
        }

        v3 = v24;
        result = NSObject._rawHashValue(seed:)(v24[5]);
        v12 = (v3 + 7);
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~v3[(v14 >> 6) + 7]) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~v3[(v14 >> 6) + 7])) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *&v12[8 * v15];
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        *(v3[6] + 8 * v16) = v9;
        ++v3[2];
      }

      else
      {
      }

      v6 = __CocoaSet.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_10000EEFC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_17:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v4 state] == 5)
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  sub_100010DC4();
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F008(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028FB8, &qword_10001C968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000F078()
{
  result = qword_100028FD0;
  if (!qword_100028FD0)
  {
    sub_100004C24(&qword_100028FC0, &qword_10001C970);
    sub_10000A0B0(&qword_100028FD8, &qword_100028FB8, &qword_10001C968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FD0);
  }

  return result;
}

uint64_t sub_10000F130(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028FC0, &qword_10001C970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F198()
{
  result = qword_100028FF8;
  if (!qword_100028FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FF8);
  }

  return result;
}

unint64_t sub_10000F1F4()
{
  result = qword_100029010;
  if (!qword_100029010)
  {
    sub_100004C24(&qword_100029008, &qword_10001C998);
    sub_10000F278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029010);
  }

  return result;
}

unint64_t sub_10000F278()
{
  result = qword_100029018;
  if (!qword_100029018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029018);
  }

  return result;
}

uint64_t sub_10000F2CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10000F388()
{
  result = qword_100028CA0;
  if (!qword_100028CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028CA0);
  }

  return result;
}

uint64_t sub_10000F3D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000F388();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F498()
{
  sub_100004C24(&qword_100028FC0, &qword_10001C970);
  sub_10000F078();
  sub_100007894();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PCPrinter.id.getter()
{
  v1 = [v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10000F584@<X0>(uint64_t *a1@<X8>)
{
  sub_10000F628();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10000F5D0(uint64_t *a1@<X8>)
{
  v3 = [*v1 name];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t sub_10000F628()
{
  result = qword_100029080;
  if (!qword_100029080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029080);
  }

  return result;
}

uint64_t sub_10000F684()
{
  v1 = [v0 thumbnailImage];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_allocWithZone(UIImage);
    sub_100012488(v3, v5);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [v6 initWithData:isa];

    sub_1000124DC(v3, v5);
    if (v8)
    {
      v9 = Image.init(uiImage:)();
      sub_1000124DC(v3, v5);
      return v9;
    }

    sub_1000124DC(v3, v5);
  }

  return Image.init(_:bundle:)(0xD000000000000010, 0x800000010001AC20, 0);
}

uint64_t sub_10000F794()
{
  v1 = [v0 settings];
  v2 = [v1 objectForKey:PKOutputModeKey];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    sub_10000793C(&v14, &qword_1000290A0, &qword_10001CBA0);
LABEL_10:
    v6 = [v0 settings];
    v7 = [v6 objectForKey:@"ColorModel"];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14 = v12;
    v15 = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v11 + 1) == v8)
        {

          v5 = 1;
        }

        else
        {
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return v5 & 1;
      }
    }

    else
    {
      sub_10000793C(&v14, &qword_1000290A0, &qword_10001CBA0);
    }

    v5 = 0;
    return v5 & 1;
  }

  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_100028AB0 != -1)
  {
    v3 = swift_once();
  }

  v14 = v11;
  __chkstk_darwin(v3);
  v10[2] = &v14;
  v5 = sub_100004F4C(sub_100012530, v10, v4);

  return v5 & 1;
}

uint64_t sub_10000FA3C()
{
  v1 = v0;
  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v2 = xmmword_100029408;

  v3 = [v1 settings];
  v4 = [v3 objectForKey:@"job-name"];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {

      return v6;
    }
  }

  else
  {
    sub_10000793C(v9, &qword_1000290A0, &qword_10001CBA0);
  }

  return v2;
}

double sub_10000FB80()
{
  v1 = 0.0;
  if ([v0 mediaSheets] >= 1)
  {
    v2 = 1.0 / [v0 mediaSheets];
    v3 = [v0 mediaSheetsCompleted];
    v4 = v3 / [v0 mediaSheets];
    v5 = [v0 mediaProgress];
    v6 = v4 + v2 * v5 / 100.0;
    if (v6 >= 0.0)
    {
      if (v6 <= 1.0)
      {
        return v4 + v2 * v5 / 100.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v1;
}

uint64_t sub_100010DC4()
{
  v1 = [v0 jobPrinterStateReasons];
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16))
    {
      v4 = sub_1000170C0(v3);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    if (*(v4 + 2))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_8:
      v6 = *(v4 + 5);
      v7 = *(v4 + 6);
      v5 = *(v4 + 16);

      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t sub_100010E90()
{
  v1 = [v0 jobStateReasons];
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  strcpy(v11, "account-closed");
  HIBYTE(v11[1]) = -18;
  __chkstk_darwin(v1);
  v10 = v11;
  v4 = sub_100004F4C(sub_100012530, v9, v3);
  if (v4)
  {

    return 2;
  }

  else
  {
    v11[0] = 0xD000000000000013;
    v11[1] = 0x800000010001ABC0;
    __chkstk_darwin(v4);
    v10 = v11;
    v6 = sub_100004F4C(sub_100012530, v9, v3);
    if (v6)
    {

      return 1;
    }

    else
    {
      v11[0] = 0xD000000000000015;
      v11[1] = 0x800000010001ABE0;
      __chkstk_darwin(v6);
      v10 = v11;
      v7 = sub_100004F4C(sub_100012530, v9, v3);
      if (v7)
      {

        return 3;
      }

      else
      {
        v11[0] = 0xD00000000000001CLL;
        v11[1] = 0x800000010001AC00;
        __chkstk_darwin(v7);
        v10 = v11;
        v8 = sub_100004F4C(sub_100012530, v9, v3);

        if (v8)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

id sub_1000110F0()
{
  v1 = v0;
  v2 = sub_100004A84(&qword_1000290B0, &qword_10001CBA8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v29 - v4;
  v6 = [v0 printerDisplayName];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_100028A88 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_100028A88 != -1)
    {
      swift_once();
    }

    v10 = *(&xmmword_100029408 + 1);
    v8 = xmmword_100029408;
  }

  if ([v1 printerKind] == 3)
  {
    goto LABEL_15;
  }

  v11 = [v1 printerLocation];
  if (!v11)
  {
    goto LABEL_15;
  }

  result = [v1 printerLocation];
  if (!result)
  {
    goto LABEL_26;
  }

  v13 = result;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 && (v18 = [v1 printerLocation]) != 0)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
LABEL_15:
    v21 = 0;
  }

  v29[2] = v8;
  v29[3] = v10;
  v29[0] = 2113568;
  v29[1] = 0xE300000000000000;
  v22 = type metadata accessor for Locale();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_100007894();
  StringProtocol.range<A>(of:options:range:locale:)();
  v24 = v23;
  v26 = v25;
  sub_10000793C(v5, &qword_1000290B0, &qword_10001CBA8);
  if (v26)
  {
    return v8;
  }

  String.subscript.getter();
  v27 = static String._fromSubstring(_:)();

  if (v21)
  {
    goto LABEL_24;
  }

  result = [v1 printerKind];
  if (result == 3)
  {
    goto LABEL_24;
  }

  v28 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v28 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v28 >= v24 >> 14)
  {
    String.subscript.getter();

    static String._fromSubstring(_:)();
LABEL_24:

    return v27;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10001149C()
{
  v1 = [v0 settings];
  v2 = [v1 objectForKey:PKCopiesKey];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100005080(0, &qword_1000290A8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_10000793C(v8, &qword_1000290A0, &qword_10001CBA0);
  }

  return 1;
}

uint64_t sub_1000121EC()
{
  sub_100004A84(&qword_1000290D0, &qword_10001CBC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10001CAF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = result;
  *(v0 + 72) = v4;
  qword_100029088 = v0;
  return result;
}

uint64_t sub_10001227C@<X0>(uint64_t *a1@<X8>)
{
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_1000122CC@<X0>(void *a1@<X8>)
{
  result = [*v1 localJobID];
  *a1 = result;
  return result;
}

unint64_t sub_100012300()
{
  result = qword_100029098;
  if (!qword_100029098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029098);
  }

  return result;
}

unint64_t sub_100012370()
{
  result = qword_1000290C8;
  if (!qword_1000290C8)
  {
    sub_100004C24(&qword_1000290C0, &qword_10001CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290C8);
  }

  return result;
}

uint64_t sub_1000123D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012430(void *a1)
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

uint64_t sub_100012488(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000124DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CancelPrintJob.init(jobContextIdentifier:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = type metadata accessor for InputConnectionBehavior();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004A84(&qword_100028AC8, &qword_10001BB48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v37 = &v32 - v7;
  v8 = sub_100004A84(&qword_100028AD0, &qword_10001BB50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v36 = &v32 - v10;
  v11 = sub_100004A84(&qword_100028AD8, &qword_10001C210);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v35 = &v32 - v13;
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Locale();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v33 = type metadata accessor for LocalizedStringResource();
  v23 = *(v33 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v33);
  v34 = sub_100004A84(&qword_100028AE0, &qword_10001BB58);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v15 + 104);
  v26(v18, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v18, v25, v14);
  v27 = v35;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v23 + 56))(v27, 0, 1, v33);
  v28 = type metadata accessor for String.IntentInputOptions();
  v43 = 0;
  v44 = 0;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v29 = type metadata accessor for IntentDialog();
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  (*(v39 + 104))(v38, enum case for InputConnectionBehavior.default(_:), v40);
  v30 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v43 = v41;
  v44 = v42;

  IntentParameter.wrappedValue.setter();

  return v30;
}

uint64_t sub_100012B80(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_100007368(v6, a3);
  sub_100007330(v6, a3);
  return a4(0xD000000000000010, 0x800000010001AC40);
}

uint64_t sub_100012C2C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100007330(v4, a3);
}

uint64_t sub_100012CC4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100007330(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t CancelPrintJob.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100012E00, v3, v2);
}

uint64_t sub_100012E00()
{
  v2 = v0[2];
  v1 = v0[3];

  static IntentResult.result<>()();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100012E6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028AB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100007330(v2, static CancelPrintJob.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100012F18@<X0>(uint64_t *a1@<X8>)
{
  result = _s12Print_Center06CancelA3JobVACycfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_100012F40(uint64_t a1)
{
  v2 = sub_1000135E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t _s12Print_Center06CancelA3JobVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  __chkstk_darwin(v0);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004A84(&qword_100028AC8, &qword_10001BB48);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - v5;
  v6 = sub_100004A84(&qword_100028AD0, &qword_10001BB50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v34 = &v30 - v8;
  v9 = sub_100004A84(&qword_100028AD8, &qword_10001C210);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v33 = &v30 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v31 = type metadata accessor for LocalizedStringResource();
  v21 = *(v31 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v31);
  v32 = sub_100004A84(&qword_100028AE0, &qword_10001BB58);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v13 + 104);
  v24(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v16, v23, v12);
  v25 = v33;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v21 + 56))(v25, 0, 1, v31);
  v26 = type metadata accessor for String.IntentInputOptions();
  v39 = 0;
  v40 = 0;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  v27 = type metadata accessor for IntentDialog();
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  (*(v37 + 104))(v36, enum case for InputConnectionBehavior.default(_:), v38);
  v28 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v39 = 0;
  v40 = 0;

  IntentParameter.wrappedValue.setter();

  return v28;
}

unint64_t sub_1000134D0()
{
  result = qword_1000290D8;
  if (!qword_1000290D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290D8);
  }

  return result;
}

unint64_t sub_100013528()
{
  result = qword_1000290E0;
  if (!qword_1000290E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290E0);
  }

  return result;
}

unint64_t sub_1000135E8()
{
  result = qword_1000290E8;
  if (!qword_1000290E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290E8);
  }

  return result;
}

unint64_t sub_100013650()
{
  result = qword_1000290F0;
  if (!qword_1000290F0)
  {
    sub_100004C24(&qword_1000290F8, " \x1B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290F0);
  }

  return result;
}

uint64_t sub_1000136D0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100013718(uint64_t a1)
{
  v2 = sub_100014FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013754(uint64_t a1)
{
  v2 = sub_100014FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100013790(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x537265746E697270;
    v6 = 0x617453726F727265;
    if (a1 != 8)
    {
      v6 = 0x6567616D49626F6ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x50746E6572727563;
    if (a1 != 5)
    {
      v7 = 0x72676F7250626F6ALL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4449626F6ALL;
    v2 = 0x656C746954626F6ALL;
    v3 = 0x73656761506D756ELL;
    if (a1 != 3)
    {
      v3 = 0x4E7265746E697270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100013904(void *a1)
{
  v3 = v1;
  v5 = sub_100004A84(&qword_100029140, &qword_10001CE90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  sub_100014E5C(a1, a1[3]);
  sub_100014EA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v27[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v27[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v27[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[5];
  v27[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v27[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v27[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[9];
  v27[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = v3[10];
  v27[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = v3[11];
  v23 = v3[12];
  v27[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v25 = v3[13];
  v26 = v3[14];
  v27[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100013B84()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 64));
  v7 = *(v0 + 72);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  Hasher._combine(_:)(*(v0 + 80));
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  String.hash(into:)();
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);

  return String.hash(into:)();
}

Swift::Int sub_100013C28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v17 = *(v0 + 64);
  v9 = *(v0 + 72);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  String.hash(into:)();
  Hasher._combine(_:)(v17);
  v10 = 0.0;
  if (v9 != 0.0)
  {
    v10 = v9;
  }

  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);
  Hasher._combine(_:)(*&v10);
  Hasher._combine(_:)(v11);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100013D74(void *a1)
{
  v2 = sub_100004A84(&qword_100029148, &qword_10001CE98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100014E5C(a1, a1[3]);
  sub_100014FA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100013E8C()
{
  result = qword_100029100;
  if (!qword_100029100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029100);
  }

  return result;
}

unint64_t sub_100013EE4()
{
  result = qword_100029108;
  if (!qword_100029108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029108);
  }

  return result;
}

unint64_t sub_100013F3C()
{
  result = qword_100029110;
  if (!qword_100029110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029110);
  }

  return result;
}

unint64_t sub_100013F94()
{
  result = qword_100029118;
  if (!qword_100029118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029118);
  }

  return result;
}

unint64_t sub_100013FEC()
{
  result = qword_100029120;
  if (!qword_100029120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029120);
  }

  return result;
}

unint64_t sub_100014044()
{
  result = qword_100029128;
  if (!qword_100029128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029128);
  }

  return result;
}

Swift::Int sub_1000140AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100014120()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10001416C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100014584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000141A0(uint64_t a1)
{
  v2 = sub_100014EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000141DC(uint64_t a1)
{
  v2 = sub_100014EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100014218@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000148CC(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

Swift::Int sub_1000142A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 96);
  v17 = *(v0 + 104);
  v15 = *(v0 + 88);
  v16 = *(v0 + 112);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  String.hash(into:)();
  Hasher._combine(_:)(v9);
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v11 = v10;
  }

  Hasher._combine(_:)(*&v11);
  Hasher._combine(_:)(v13);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000143BC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_100014440(v12, v14) & 1;
}

uint64_t sub_100014440(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100014584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010001AC60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656761506D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E7265746E697270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72676F7250626F6ALL && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x537265746E697270 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617453726F727265 && a2 == 0xEB00000000737574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6567616D49626F6ALL && a2 == 0xEC00000068746150)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1000148CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004A84(&qword_100029130, &qword_10001CE88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_100014E5C(a1, a1[3]);
  sub_100014EA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014EF4(a1);
  }

  LOBYTE(v49[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49[0]) = 1;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v12;
  LOBYTE(v49[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v14;
  v36 = v13;
  LOBYTE(v49[0]) = 3;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49[0]) = 4;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v15;
  LOBYTE(v49[0]) = 5;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49[0]) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  LOBYTE(v49[0]) = 7;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49[0]) = 8;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v18;
  v50 = 9;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  *&v41 = v11;
  *(&v41 + 1) = v38;
  v22 = v40;
  *&v42 = v40;
  *(&v42 + 1) = v36;
  v23 = v39;
  *&v43 = v39;
  *(&v43 + 1) = v35;
  *&v44 = v34;
  v24 = v37;
  *(&v44 + 1) = v37;
  *&v45 = v33;
  *(&v45 + 1) = v17;
  *&v46 = v31;
  *(&v46 + 1) = v30;
  *&v47 = v32;
  *(&v47 + 1) = v19;
  v48 = v21;
  sub_100014F40(&v41, v49);
  sub_100014EF4(a1);
  v49[0] = v11;
  v49[1] = v38;
  v49[2] = v22;
  v49[3] = v36;
  v49[4] = v23;
  v49[5] = v35;
  v49[6] = v34;
  v49[7] = v24;
  v49[8] = v33;
  v49[9] = v17;
  v49[10] = v31;
  v49[11] = v30;
  v49[12] = v32;
  v49[13] = v19;
  v49[14] = v21;
  result = sub_100014F78(v49);
  v26 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v26;
  *(a2 + 96) = v47;
  *(a2 + 112) = v48;
  v27 = v42;
  *a2 = v41;
  *(a2 + 16) = v27;
  v28 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v28;
  return result;
}

void *sub_100014E5C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100014EA0()
{
  result = qword_100029138;
  if (!qword_100029138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029138);
  }

  return result;
}

uint64_t sub_100014EF4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100014FA8()
{
  result = qword_100029150;
  if (!qword_100029150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrintJobState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrintJobState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100015178(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000151A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000151EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001525C()
{
  result = qword_100029158;
  if (!qword_100029158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029158);
  }

  return result;
}

unint64_t sub_1000152B4()
{
  result = qword_100029160;
  if (!qword_100029160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029160);
  }

  return result;
}

unint64_t sub_10001530C()
{
  result = qword_100029168;
  if (!qword_100029168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029168);
  }

  return result;
}

unint64_t sub_100015364()
{
  result = qword_100029170;
  if (!qword_100029170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029170);
  }

  return result;
}

unint64_t sub_1000153BC()
{
  result = qword_100029178;
  if (!qword_100029178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029178);
  }

  return result;
}

uint64_t sub_100015410(unsigned __int16 a1, uint64_t a2, unint64_t a3)
{
  v4 = a2 == 0x646573756170 && a3 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  result = 0;
  switch(a1)
  {
    case 4:
    case 18:
    case 20:
    case 21:
    case 22:
    case 24:
    case 25:
      if (a1 < 0x100u)
      {
        return 0;
      }

      goto LABEL_12;
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 19:
    case 23:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
LABEL_12:
      v9 = [objc_opt_self() mainBundle];
      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();

      v12 = String._bridgeToObjectiveC()();
      v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      result = v14;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100015754@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = *v1;
  result = sub_100017430();
  *a1 = result;
  a1[1] = v6;
  return result;
}

Swift::Int sub_100015784()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100015800()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);

  return String.hash(into:)();
}

Swift::Int sub_100015868()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000158E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t *sub_10001593C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100015960@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017884(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10001599C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10001687C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100015A08(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100015A08(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100015BB8(v7, v8, a1, v4);
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
    return sub_100015B00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100015B00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (v7 != 26)
      {
        v10 = v9[1];
        v11 = v9[25];
        result = v10 < v11;
        if (!(v11 == v10 ? *v9 < v7 : v10 < v11))
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v13 = v9[25];
      v14 = *(v9 + 4);
      v15 = *(v9 + 5);
      *(v9 + 24) = *v9;
      result = *(v9 + 2);
      *(v9 + 5) = result;
      *v9 = v7;
      v9[1] = v13;
      *(v9 + 1) = v14;
      *(v9 + 2) = v15;
      v9 -= 24;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100015BB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v103 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_101:
    v103 = *v103;
    if (!v103)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_103;
  }

  v6 = a4;
  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *a3;
      v11 = (*a3 + 24 * v7);
      v12 = *v11;
      if (v12 == 26)
      {
        v13 = 1;
      }

      else
      {
        v14 = (v10 + 24 * v9);
        v15 = *v14;
        v16 = v14[1];
        v17 = v11[1];
        v18 = v15 < v12;
        if (v17 == v16)
        {
          v13 = v18;
        }

        else
        {
          v13 = v16 < v17;
        }
      }

      v7 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v19 = (v10 + 24 * v9 + 49);
        do
        {
          v23 = *(v19 - 1);
          if (v23 == 26)
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v20 = *(v19 - 24);
            v21 = *v19;
            v22 = *(v19 - 25) >= v23;
            if (v21 != v20)
            {
              v22 = v20 >= v21;
            }

            if (v13 == v22)
            {
              goto LABEL_20;
            }
          }

          ++v7;
          v19 += 24;
        }

        while (v5 != v7);
        v7 = v5;
      }

LABEL_20:
      if (v13)
      {
        if (v7 < v9)
        {
          goto LABEL_132;
        }

        if (v9 < v7)
        {
          v24 = 24 * v7 - 8;
          v25 = 24 * v9 + 16;
          v26 = v7;
          v27 = v9;
          do
          {
            if (v27 != --v26)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v29 = (v28 + v25);
              v30 = (v28 + v24);
              v31 = *(v29 - 8);
              v32 = *(v29 - 1);
              v33 = *v29;
              v34 = *v30;
              *(v29 - 1) = *(v30 - 1);
              *v29 = v34;
              *(v30 - 8) = v31;
              *(v30 - 1) = v32;
              *v30 = v33;
            }

            ++v27;
            v24 -= 24;
            v25 += 24;
          }

          while (v27 < v26);
          v5 = a3[1];
        }
      }
    }

LABEL_29:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_129;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_130;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          result = sub_100016504(v8);
          v8 = result;
LABEL_103:
          v95 = v8 + 16;
          v96 = *(v8 + 2);
          if (v96 >= 2)
          {
            while (*a3)
            {
              v97 = &v8[16 * v96];
              v98 = *v97;
              v99 = &v95[2 * v96];
              v100 = v99[1];
              sub_1000161EC((*a3 + 24 * *v97), (*a3 + 24 * *v99), *a3 + 24 * v100, v103);
              if (v4)
              {
              }

              if (v100 < v98)
              {
                goto LABEL_125;
              }

              if (v96 - 2 >= *v95)
              {
                goto LABEL_126;
              }

              *v97 = v98;
              *(v97 + 1) = v100;
              v101 = *v95 - v96;
              if (*v95 < v96)
              {
                goto LABEL_127;
              }

              v96 = *v95 - 1;
              result = memmove(v99, v99 + 2, 16 * v101);
              *v95 = v96;
              if (v96 <= 1)
              {
              }
            }

            goto LABEL_137;
          }
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v7 < v9)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100016518(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_100016518((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v103;
    if (!*v103)
    {
      goto LABEL_138;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_70:
          if (v57)
          {
            goto LABEL_116;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_119;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_123;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_84:
        if (v75)
        {
          goto LABEL_118;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_121;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_91:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_1000161EC((*a3 + 24 * v92), (*a3 + 24 * *&v8[16 * v53 + 32]), *a3 + 24 * v93, v52);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100016504(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_113;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        result = sub_100016478(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_114;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_115;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_117;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_120;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_124;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_101;
    }
  }

  v35 = *a3;
  v36 = *a3 + 24 * v7 - 24;
  v37 = v9 - v7;
LABEL_39:
  v38 = *(v35 + 24 * v7);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    if (v38 != 26)
    {
      v41 = v40[1];
      v42 = v40[25];
      if (!(v42 == v41 ? *v40 < v38 : v41 < v42))
      {
LABEL_38:
        ++v7;
        v36 += 24;
        --v37;
        if (v7 != v5)
        {
          goto LABEL_39;
        }

        v7 = v5;
        goto LABEL_50;
      }
    }

    if (!v35)
    {
      break;
    }

    v44 = v40[25];
    v45 = *(v40 + 4);
    v46 = *(v40 + 5);
    *(v40 + 24) = *v40;
    *(v40 + 5) = *(v40 + 2);
    *v40 = v38;
    v40[1] = v44;
    *(v40 + 1) = v45;
    *(v40 + 2) = v46;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

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
  return result;
}

uint64_t sub_1000161EC(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6;
      if (v16 != 26)
      {
        v17 = v4[1];
        v18 = v6[1];
        v19 = *v4 < v16;
        if (v18 != v17)
        {
          v19 = v17 < v18;
        }

        if (!v19)
        {
          break;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_23:
    v20 = v6 - 24;
    v5 -= 24;
    v21 = v12;
    do
    {
      v22 = (v5 + 24);
      v24 = *(v21 - 24);
      v21 -= 24;
      v23 = v24;
      if (v24 == 26)
      {
        goto LABEL_31;
      }

      v25 = *(v6 - 23);
      v26 = *(v12 - 23);
      v27 = *(v6 - 24) < v23;
      if (v26 != v25)
      {
        v27 = v25 < v26;
      }

      if (v27)
      {
LABEL_31:
        if (v22 != v6)
        {
          v29 = *v20;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v29;
        }

        if (v12 <= v4 || (v6 -= 24, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      if (v22 != v12)
      {
        v28 = *v21;
        *(v5 + 16) = *(v21 + 16);
        *v5 = v28;
      }

      v5 -= 24;
      v12 = v21;
    }

    while (v21 > v4);
    v12 = v21;
  }

LABEL_37:
  v30 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v31 = (v30 >> 2) + (v30 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v31])
  {
    memmove(v6, v4, 24 * v31);
  }

  return 1;
}

uint64_t sub_100016478(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100016504(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100016518(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004A84(&qword_100029180, &qword_10001D0B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10001661C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004A84(&qword_1000290D0, &qword_10001CBC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100016728(char *a1, int64_t a2, char a3)
{
  result = sub_100016748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100016748(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004A84(&qword_100029188, &qword_10001D0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100016890(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000010001AF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x800000010001AFB0;
  if (String.hasPrefix(_:)(v5))
  {
    return 20;
  }

  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x800000010001AFD0;
  if (String.hasPrefix(_:)(v6))
  {
    return 4;
  }

  if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  v7._countAndFlagsBits = 0x6F6C2D616964656DLL;
  v7._object = 0xE900000000000077;
  if (String.hasPrefix(_:)(v7))
  {
    return 5;
  }

  v8._object = 0xED0000776F6C2D72;
  v8._countAndFlagsBits = 0x65706F6C65766564;
  if (String.hasPrefix(_:)(v8))
  {
    return 6;
  }

  v9._countAndFlagsBits = 0x6F6C2D72656E6F74;
  v9._object = 0xE900000000000077;
  if (String.hasPrefix(_:)(v9))
  {
    return 6;
  }

  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x800000010001AFF0;
  if (String.hasPrefix(_:)(v10))
  {
    return 7;
  }

  v11._countAndFlagsBits = 0x6D652D616964656DLL;
  v11._object = 0xEB00000000797470;
  if (String.hasPrefix(_:)(v11))
  {
    return 10;
  }

  v12._object = 0xE90000000000006DLL;
  v12._countAndFlagsBits = 0x616A2D616964656DLL;
  if (String.hasPrefix(_:)(v12))
  {
    return 12;
  }

  v13._countAndFlagsBits = 0x656E2D616964656DLL;
  v13._object = 0xEC00000064656465;
  if (String.hasPrefix(_:)(v13))
  {
    return 11;
  }

  v14._object = 0xEF7974706D652D72;
  v14._countAndFlagsBits = 0x65706F6C65766564;
  if (String.hasPrefix(_:)(v14))
  {
    return 13;
  }

  v15._countAndFlagsBits = 0x6D652D72656E6F74;
  v15._object = 0xEB00000000797470;
  if (String.hasPrefix(_:)(v15))
  {
    return 13;
  }

  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x800000010001B010;
  if (String.hasPrefix(_:)(v16))
  {
    return 14;
  }

  v17._countAndFlagsBits = 0xD000000000000012;
  v17._object = 0x800000010001B030;
  if (String.hasPrefix(_:)(v17))
  {
    return 15;
  }

  v18._countAndFlagsBits = 0xD000000000000013;
  v18._object = 0x800000010001B050;
  if (String.hasPrefix(_:)(v18))
  {
    return 15;
  }

  v19._object = 0xE90000000000006ELL;
  v19._countAndFlagsBits = 0x65706F2D726F6F64;
  if (String.hasPrefix(_:)(v19))
  {
    return 16;
  }

  v20._countAndFlagsBits = 0x706F2D7265766F63;
  v20._object = 0xEA00000000006E65;
  if (String.hasPrefix(_:)(v20))
  {
    return 17;
  }

  v21._countAndFlagsBits = 0x636F6C7265746E69;
  v21._object = 0xEE006E65706F2D6BLL;
  if (String.hasPrefix(_:)(v21))
  {
    return 17;
  }

  v22._countAndFlagsBits = 0x2D656E696C66666FLL;
  v22._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v22))
  {
    return 26;
  }

  v23._countAndFlagsBits = 0x72612D6C6F6F7073;
  v23._object = 0xEF6C6C75662D6165;
  if (String.hasPrefix(_:)(v23))
  {
    return 21;
  }

  v24._object = 0x800000010001B070;
  v24._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v24))
  {
    return 22;
  }

  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x800000010001B090;
  if (String.hasPrefix(_:)(v25))
  {
    return 18;
  }

  v26._countAndFlagsBits = 0x766F2D7265737566;
  v26._object = 0xEF706D65742D7265;
  if (String.hasPrefix(_:)(v26))
  {
    return 18;
  }

  v27._object = 0x800000010001B0B0;
  v27._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v27))
  {
    return 18;
  }

  v28._countAndFlagsBits = 0x7261656E2D63706FLL;
  v28._object = 0xEC0000006C6F652DLL;
  if (String.hasPrefix(_:)(v28))
  {
    return 18;
  }

  v29._countAndFlagsBits = 0x6566696C2D63706FLL;
  v29._object = 0xED00007265766F2DLL;
  if (String.hasPrefix(_:)(v29))
  {
    return 25;
  }

  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x800000010001B0D0;
  if (String.hasPrefix(_:)(v30))
  {
    return 23;
  }

  v31._countAndFlagsBits = 0xD00000000000001CLL;
  v31._object = 0x800000010001B0F0;
  if (String.hasPrefix(_:)(v31))
  {
    return 27;
  }

  v32._object = 0x800000010001B110;
  v32._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v32))
  {
    return 28;
  }

  v33._object = 0x800000010001B130;
  v33._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v33))
  {
    return 29;
  }

  v34._object = 0x800000010001B150;
  v34._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v34))
  {
    return 30;
  }

  v35._object = 0x800000010001B170;
  v35._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v35))
  {
    return 31;
  }

  v36._countAndFlagsBits = 0x726F7272652DLL;
  v36._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v36))
  {
    return 25;
  }

  v37._countAndFlagsBits = 0x676E696E7261772DLL;
  v37._object = 0xE800000000000000;
  if (String.hasSuffix(_:)(v37))
  {
    return 18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016F40(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v15._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6.value._countAndFlagsBits = 1684957515;
  v6.value._object = 0xE400000000000000;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v15._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v15);

  v9 = sub_100016890(v8._countAndFlagsBits, v8._object);
  v10 = 0;
  if (v9 <= 4u)
  {
    if (v9 < 3u)
    {
      return v9 | (v10 << 8);
    }

    if (v9 == 3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 > 0x1Fu)
    {
LABEL_13:
      if (v9 - 5 >= 3)
      {
        return v9 | (v10 << 8);
      }

      goto LABEL_14;
    }

    if (((1 << v9) & 0x77F400) == 0)
    {
      if (((1 << v9) & 0xFF880800) != 0)
      {
        v10 = 2;
        return v9 | (v10 << 8);
      }

      if (v9 != 9)
      {
        goto LABEL_13;
      }

LABEL_14:
      v10 = 1;
      return v9 | (v10 << 8);
    }
  }

  v11 = v9;
  v12._countAndFlagsBits = 0x726F7272652DLL;
  v12._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v12))
  {
    v10 = 2;
  }

  else
  {
    v13._countAndFlagsBits = 0x676E696E7261772DLL;
    v13._object = 0xE800000000000000;
    v10 = String.hasSuffix(_:)(v13);
  }

  v9 = v11;
  return v9 | (v10 << 8);
}

char *sub_1000170C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v23 = &_swiftEmptyArrayStorage;
    sub_100016728(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = objc_opt_self();
    v5 = (a1 + 40);
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = [v4 mainBundle];
      v24._object = 0xE000000000000000;
      v9._countAndFlagsBits = v6;
      v9._object = v7;
      v10.value._countAndFlagsBits = 1684957515;
      v10.value._object = 0xE400000000000000;
      v11._countAndFlagsBits = v6;
      v11._object = v7;
      v24._countAndFlagsBits = 0;
      v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v24);

      v13 = sub_100016890(v12._countAndFlagsBits, v12._object);
      v14 = 0;
      if (v13 <= 4u)
      {
        break;
      }

      if (v13 <= 0x1Fu)
      {
        if (((1 << v13) & 0x77F400) != 0)
        {
          goto LABEL_10;
        }

        if (((1 << v13) & 0xFF880800) != 0)
        {
          v14 = 2;
          goto LABEL_17;
        }

        if (v13 == 9)
        {
          goto LABEL_16;
        }
      }

      if (v13 - 5 < 3)
      {
LABEL_16:
        v14 = 1;
      }

LABEL_17:
      v23 = v2;
      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v22 = v13;
        sub_100016728((v18 > 1), v19 + 1, 1);
        v13 = v22;
        v2 = v23;
      }

      *(v2 + 2) = v19 + 1;
      v20 = &v2[24 * v19];
      v20[32] = v13;
      v20[33] = v14;
      *(v20 + 40) = v12;
      v5 += 2;
      if (!--v1)
      {
        goto LABEL_20;
      }
    }

    if (v13 < 3u)
    {
      goto LABEL_17;
    }

    if (v13 == 3)
    {
      goto LABEL_16;
    }

LABEL_10:
    v15 = v13;
    v16._countAndFlagsBits = 0x726F7272652DLL;
    v16._object = 0xE600000000000000;
    if (String.hasSuffix(_:)(v16))
    {
      v14 = 2;
    }

    else
    {
      v17._countAndFlagsBits = 0x676E696E7261772DLL;
      v17._object = 0xE800000000000000;
      v14 = String.hasSuffix(_:)(v17);
    }

    v13 = v15;
    goto LABEL_17;
  }

LABEL_20:
  v23 = v2;

  sub_10001599C(&v23);

  return v23;
}

__n128 sub_10001732C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100017388(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1000173DC()
{
  result = qword_100029190;
  if (!qword_100029190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029190);
  }

  return result;
}

uint64_t sub_100017430()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

uint64_t getEnumTagSinglePayload for PrintStateReasonSeverity(unsigned __int8 *a1, unsigned int a2)
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