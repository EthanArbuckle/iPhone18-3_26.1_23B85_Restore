unint64_t sub_10004D03C(unint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v7 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v4 = *(v3 + 8 * result + 32);
LABEL_6:
    v5 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title];
    v6 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title + 8];

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_10004D110()
{
  result = qword_100109710;
  if (!qword_100109710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109710);
  }

  return result;
}

id sub_10004D3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAEnhancedLoggingInbox();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004D424()
{
  result = qword_100109990;
  if (!qword_100109990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109990);
  }

  return result;
}

uint64_t sub_10004D470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041AA0(&qword_1001098D8, qword_1000C2CC8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC18Feedback_Assistant27FBAAddAttachmentsController____lazy_storage___temporaryDirectory;
  swift_beginAccess();
  sub_100045460(v2 + v11, v10, &qword_1001098D8, qword_1000C2CC8);
  v12 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_100052BF8(v10, a1);
  }

  sub_1000454C8(v10, &qword_1001098D8, qword_1000C2CC8);
  sub_1000497E4(0, &unk_1001098E0, FBKFileManager_ptr);
  static FBKFileManager.temporaryDirectory(pathComponents:)();
  sub_100045460(a1, v8, &qword_100109790, &unk_1000C29E0);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_10005336C(v8, v2 + v11);
  return swift_endAccess();
}

double sub_10004D740(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v58._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x80000001000CB160;
  v11.value._countAndFlagsBits = v5;
  v11.value._object = v7;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v58);

  v14 = FBKSystemImageNameAttachDeviceDiagnostics;
  v15 = objc_opt_self();
  v16 = [v15 systemImageNamed:v14];
  v17 = swift_allocObject();
  *(v17 + 2) = v2;
  *(v17 + 3) = a1;
  *(v17 + 4) = ObjectType;
  v18 = type metadata accessor for FBAActionControllerAction();
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
  *&v19[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image] = 0;
  v19[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive] = 0;
  *&v19[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title] = v13;
  *&v19[v20] = v16;
  v21 = &v19[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
  *v21 = sub_10005314C;
  v21[1] = v17;
  v57.receiver = v19;
  v57.super_class = v18;
  v22 = v2;
  v23 = a1;
  v54 = objc_msgSendSuper2(&v57, "init");
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  v27 = [v8 mainBundle];
  v59._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000024;
  v28._object = 0x80000001000CB180;
  v29.value._countAndFlagsBits = v24;
  v29.value._object = v26;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v59);

  v32 = [v15 systemImageNamed:FBKSystemImageNameAttachPhoto];
  v33 = swift_allocObject();
  *(v33 + 16) = v22;
  *(v33 + 24) = v23;
  v34 = objc_allocWithZone(v18);
  v35 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
  *&v34[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image] = 0;
  v34[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive] = 0;
  *&v34[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title] = v31;
  *&v34[v35] = v32;
  v36 = &v34[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
  *v36 = sub_100053158;
  v36[1] = v33;
  v56.receiver = v34;
  v56.super_class = v18;
  v37 = v22;
  v38 = v23;
  v39 = objc_msgSendSuper2(&v56, "init");
  v40 = [v8 mainBundle];
  v60._object = 0x80000001000CB1D0;
  v41._countAndFlagsBits = 0x73656C6946;
  v42._countAndFlagsBits = 0xD00000000000001BLL;
  v42._object = 0x80000001000CB1B0;
  v41._object = 0xE500000000000000;
  v60._countAndFlagsBits = 0xD000000000000013;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v40, v41, v60);

  v44 = [v15 systemImageNamed:FBKSystemImageNameFolder];
  v45 = swift_allocObject();
  *(v45 + 16) = v37;
  *(v45 + 24) = v38;
  v46 = objc_allocWithZone(v18);
  v47 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
  *&v46[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image] = 0;
  v46[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive] = 0;
  *&v46[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title] = v43;
  *&v46[v47] = v44;
  v48 = &v46[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
  *v48 = sub_100053160;
  v48[1] = v45;
  v55.receiver = v46;
  v55.super_class = v18;
  v49 = v37;
  v50 = v38;
  v51 = objc_msgSendSuper2(&v55, "init");
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v52 = swift_allocObject();
  *&result = 3;
  *(v52 + 16) = xmmword_1000C2BD0;
  *(v52 + 32) = v54;
  *(v52 + 40) = v51;
  *(v52 + 48) = v39;
  return result;
}

void sub_10004DBEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  static os_log_type_t.default.getter();
  v8 = [objc_opt_self() attachHandle];
  if (v8)
  {
    v9 = v8;
    os_log(_:dso:log:_:_:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      if ([Strong respondsToSelector:"attachmentsAlertDidSelectOption:"])
      {
        [v11 attachmentsAlertDidSelectOption:a2];
      }

      swift_unknownObjectRelease();
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a3;
      v14[4] = a4;
      v17[4] = sub_100053270;
      v17[5] = v14;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_10004E610;
      v17[3] = &unk_1000E0B00;
      v15 = _Block_copy(v17);
      swift_unknownObjectRetain();
      v16 = a3;

      [v13 attachmentsAlert:a2 needsDeviceDiagnosticsController:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004DDB4(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = v6;
    v47 = a3;
    v44 = v13;
    v45 = v12;
    v16 = a1;
    v17 = [v16 additionalDeviceCandidates];
    sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
    sub_10005327C();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v19 = objc_allocWithZone(FBADevicePickingNavigationController);
    v20 = v16;
    isa = Set._bridgeToObjectiveC()().super.isa;

    v52 = sub_10005331C;
    v53 = v18;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_100087F70;
    v51 = &unk_1000E0B50;
    v22 = _Block_copy(&aBlock);
    v23 = [v19 initWithDeviceChoices:isa allowsMultipleSelection:1 completion:v22];

    _Block_release(v22);

    if (v23)
    {
      v24 = v23;
      [v24 setModalPresentationStyle:2];
      type metadata accessor for FBAActionSheetController();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        swift_unknownObjectRetain();

        v27 = swift_allocObject();
        v28 = v47;
        *(v27 + 16) = v47;
        *(v27 + 24) = v24;
        v52 = sub_100053324;
        v53 = v27;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_100088474;
        v51 = &unk_1000E0BF0;
        v29 = _Block_copy(&aBlock);
        v30 = v24;
        v31 = v28;

        [v26 dismissViewControllerAnimated:1 completion:v29];

        _Block_release(v29);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
        v43 = static OS_dispatch_queue.main.getter();
        v36 = swift_allocObject();
        v37 = v47;
        *(v36 + 16) = v47;
        *(v36 + 24) = v24;
        v52 = sub_100053478;
        v53 = v36;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_100088474;
        v51 = &unk_1000E0BA0;
        v38 = _Block_copy(&aBlock);
        v39 = v24;
        v40 = v37;

        static DispatchQoS.unspecified.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
        sub_100041AA0(&unk_100109980, &qword_1000C1B50);
        sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v41 = v43;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v38);

        (*(v46 + 8))(v9, v5);
        (*(v44 + 8))(v15, v45);
      }

      return;
    }

    static os_log_type_t.error.getter();
    v34 = [objc_opt_self() attachHandle];
    if (v34)
    {
      v35 = v34;
      os_log(_:dso:log:_:_:)();

      return;
    }

LABEL_13:
    __break(1u);
    return;
  }

  static os_log_type_t.error.getter();
  v32 = [objc_opt_self() attachHandle];
  if (!v32)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v32;
  os_log(_:dso:log:_:_:)();
  v33 = v47;
}

void sub_10004E41C(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
    sub_10005327C();
    Set.Iterator.init(_cocoa:)();
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v18 = v5;
  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_100053364();
      return;
    }

    while (1)
    {
      [a2 addDevice:{v16, v18, v19}];

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = __CocoaSet.Iterator.next()();
      if (v17)
      {
        v19 = v17;
        sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
        swift_dynamicCast();
        v16 = v20;
        v14 = v6;
        v15 = v7;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10004E610(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10004E67C(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PHPickerConfiguration();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  static os_log_type_t.default.getter();
  result = [objc_opt_self() attachHandle];
  if (result)
  {
    v21 = result;
    os_log(_:dso:log:_:_:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      if ([Strong respondsToSelector:"attachmentsAlertDidSelectOption:"])
      {
        [v23 attachmentsAlertDidSelectOption:a2];
      }

      swift_unknownObjectRelease();
    }

    PHPickerConfiguration.init()();
    PHPickerConfiguration.selectionLimit.setter();
    sub_1000497E4(0, &qword_1001098B8, PHPickerViewController_ptr);
    (*(v13 + 16))(v17, v19, v12);
    v24 = PHPickerViewController.init(configuration:)();
    sub_100052C68(&qword_1001098C0, type metadata accessor for FBAAddAttachmentsController);
    swift_unknownObjectRetain();
    PHPickerViewController.delegate.setter();
    (*(v13 + 8))(v19, v12);
    type metadata accessor for FBAActionSheetController();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      v27 = swift_allocObject();
      v28 = v44;
      *(v27 + 16) = v44;
      *(v27 + 24) = v24;
      v49 = sub_1000531C0;
      v50 = v27;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_100088474;
      v48 = &unk_1000E0A60;
      v29 = _Block_copy(&aBlock);
      v30 = v28;
      v31 = v24;
      swift_unknownObjectRetain();

      [v26 dismissViewControllerAnimated:1 completion:v29];

      _Block_release(v29);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
      v32 = static OS_dispatch_queue.main.getter();
      v33 = swift_allocObject();
      v34 = v44;
      *(v33 + 16) = v44;
      *(v33 + 24) = v24;
      v49 = sub_1000531A8;
      v50 = v33;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_100088474;
      v48 = &unk_1000E0A10;
      v35 = _Block_copy(&aBlock);
      v36 = v34;
      v37 = v24;

      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
      sub_100041AA0(&unk_100109980, &qword_1000C1B50);
      sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50);
      v38 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);

      (*(v42 + 8))(v7, v38);
      return (*(v40 + 8))(v11, v41);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10004EC70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  result = [objc_opt_self() attachHandle];
  if (result)
  {
    v15 = result;
    os_log(_:dso:log:_:_:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      if ([Strong respondsToSelector:"attachmentsAlertDidSelectOption:"])
      {
        [v17 attachmentsAlertDidSelectOption:a2];
      }

      swift_unknownObjectRelease();
    }

    v36 = v6;
    sub_100041AA0(&qword_1001098B0, &unk_1000C2CB8);
    v18 = *(type metadata accessor for UTType() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1000C29F0;
    static UTType.item.getter();
    v21 = objc_allocWithZone(UIDocumentPickerViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v21 initForOpeningContentTypes:isa asCopy:1];

    [v23 setDelegate:a2];
    [v23 setAllowsMultipleSelection:1];
    type metadata accessor for FBAActionSheetController();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = v23;
      v43 = sub_100053168;
      v44 = v26;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_100088474;
      v42 = &unk_1000E0970;
      v27 = _Block_copy(&aBlock);
      v28 = a3;
      v29 = v23;
      swift_unknownObjectRetain();

      [v25 dismissViewControllerAnimated:1 completion:v27];

      _Block_release(v27);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
      v30 = static OS_dispatch_queue.main.getter();
      v31 = swift_allocObject();
      *(v31 + 16) = a3;
      *(v31 + 24) = v23;
      v43 = sub_100053478;
      v44 = v31;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_100088474;
      v42 = &unk_1000E0920;
      v32 = _Block_copy(&aBlock);
      v33 = a3;
      v34 = v23;

      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
      sub_100041AA0(&unk_100109980, &qword_1000C1B50);
      sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v36 + 8))(v9, v5);
      return (*(v37 + 8))(v13, v38);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004F214(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

char *sub_10004F504(void *a1, uint64_t a2, void *a3)
{
  static os_log_type_t.info.getter();
  result = [objc_opt_self() appHandle];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  os_log(_:dso:log:_:_:)();

  v7 = [objc_opt_self() mainBundle];
  v21._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x415454415F444441;
  v8._object = 0xEE00544E454D4843;
  v9.value._countAndFlagsBits = 0x74536E6F6D6D6F43;
  v9.value._object = 0xED000073676E6972;
  v10._countAndFlagsBits = 0x6174744120646441;
  v10._object = 0xEE00746E656D6863;
  v21._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v21);

  sub_10004D740(a1);
  v13 = v12;
  v14 = objc_allocWithZone(type metadata accessor for FBAActionSheetController());
  v15 = sub_100069D74(v11._countAndFlagsBits, v11._object, 0, 0, v13);
  result = [a1 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = result;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v16 deselectRowAtIndexPath:isa animated:1];

  if (a3)
  {
    v18 = a3;
    v19 = [v15 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      [v18 bounds];
      [v20 setSourceRect:?];
      [v20 setSourceView:v18];
      [v20 setPermittedArrowDirections:2];
    }
  }

  return v15;
}

Class sub_10004F894(void *a1)
{
  sub_10004D740(a1);
  v2 = v1;
  v3 = type metadata accessor for FBAActionMenuController();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions] = _swiftEmptyArrayStorage;
  v6 = &v4[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle];
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_beginAccess();
  v8 = *&v4[v5];
  *&v4[v5] = v2;

  v12.receiver = v4;
  v12.super_class = v3;
  v9 = objc_msgSendSuper2(&v12, "init");
  v10 = sub_100069874();

  return v10;
}

id sub_10004F9F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAAddAttachmentsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FBAAddAttachmentsController()
{
  result = qword_100109778;
  if (!qword_100109778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004FAD0()
{
  sub_10004FB6C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10004FB6C()
{
  if (!qword_100109788)
  {
    sub_100041B4C(&qword_100109790, &unk_1000C29E0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100109788);
    }
  }
}

void sub_10004FBD0(void *a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  v5 = [objc_opt_self() attachHandle];
  if (v5)
  {
    v6 = v5;
    os_log(_:dso:log:_:_:)();

    [a1 dismissViewControllerAnimated:1 completion:0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      v11[4] = sub_100052938;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_10004E610;
      v11[3] = &unk_1000E05D8;
      v10 = _Block_copy(v11);

      [v8 attachmentsAlert:v2 needsDeviceDiagnosticsController:v10];
      swift_unknownObjectRelease();
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004FD58(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 16);
    if (!v3)
    {
      return;
    }

    v5 = *(type metadata accessor for PHPickerResult() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    v10 = a1;
    do
    {
      v8 = PHPickerResult.itemProvider.getter();
      [v10 addAttachmentWithItemProvider:v8];

      v6 += v7;
      --v3;
    }

    while (v3);
  }

  else
  {
    static os_log_type_t.error.getter();
    v9 = [objc_opt_self() attachHandle];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    os_log(_:dso:log:_:_:)();
  }
}

void sub_10004FEC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    static os_log_type_t.error.getter();
    v21 = [objc_opt_self() attachHandle];
    if (v21)
    {
      v24 = v21;
      os_log(_:dso:log:_:_:)();
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v24 = a1;
  static os_log_type_t.debug.getter();
  v9 = [objc_opt_self() attachHandle];
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000C29F0;
  *(v11 + 56) = sub_100041AA0(&qword_100109898, &qword_1000C2CA8);
  *(v11 + 64) = sub_1000456EC(&unk_1001098A0, &qword_100109898, &qword_1000C2CA8);
  *(v11 + 32) = a2;

  os_log(_:dso:log:_:_:)();

  v12 = *(a2 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v8, v16, v4);
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      [v24 moveFileFrom:v19];

      (*(v14 - 8))(v8, v4);
      v16 += v17;
      --v12;
    }

    while (v12);

    return;
  }

LABEL_9:
  v22 = v24;
}

void sub_100050218(void *a1, void *a2, void *a3, uint64_t a4)
{
  v64 = a4;
  v66 = a3;
  v67 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v65 = a2;
  v22 = [a2 presentedViewController];
  if (v22)
  {

    sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
    v60 = v6;
    v56 = v5;
    v61 = v10;
    v23 = v64;
    v57 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v24 = *(v15 + 8);
    v58 = v14;
    v59 = v24;
    v24(v19, v14);
    v25 = swift_allocObject();
    v26 = v62;
    v62 = v9;
    v27 = v66;
    v28 = v67;
    v25[2] = v26;
    v25[3] = v28;
    v29 = v65;
    v25[4] = v65;
    v25[5] = v27;
    v25[6] = v23;
    v72 = sub_1000529F8;
    v73 = v25;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100088474;
    v71 = &unk_1000E0678;
    v30 = _Block_copy(&aBlock);
    v31 = v28;
    v32 = v29;
    v33 = v27;
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
    sub_100041AA0(&unk_100109980, &qword_1000C1B50);
    sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50);
    v34 = v63;
    v35 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v57;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v60 + 8))(v34, v35);
    (*(v61 + 8))(v13, v62);
    v59(v21, v58);
  }

  else
  {
    v37 = objc_opt_self();
    v38 = v66;
    v39 = [v37 mainBundle];
    v74._object = 0x80000001000CAED0;
    v40._countAndFlagsBits = 0x545F44454C494146;
    v40._object = 0xEE0059504F435F4FLL;
    v41._object = 0x80000001000CAEB0;
    v74._countAndFlagsBits = 0xD000000000000044;
    v41._countAndFlagsBits = 0xD000000000000014;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v74);

    swift_getErrorValue();
    Error.localizedDescription.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = String._bridgeToObjectiveC()();

    v44 = [objc_opt_self() alertControllerWithTitle:v42 message:v43 preferredStyle:1];

    v45 = [v37 mainBundle];
    v75._object = 0xE000000000000000;
    v46._countAndFlagsBits = 19279;
    v46._object = 0xE200000000000000;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v75._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v75);

    v48 = swift_allocObject();
    v49 = v67;
    *(v48 + 16) = v38;
    *(v48 + 24) = v49;
    v50 = v49;
    v51 = v38;
    v52 = String._bridgeToObjectiveC()();

    v72 = sub_100052998;
    v73 = v48;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100040DDC;
    v71 = &unk_1000E0628;
    v53 = _Block_copy(&aBlock);

    v54 = [objc_opt_self() actionWithTitle:v52 style:0 handler:v53];
    _Block_release(v53);

    [v44 addAction:v54];
    [v65 presentViewController:v44 animated:1 completion:0];
  }
}

id sub_100050A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100041AA0(&qword_100109880, &qword_1000C2C98);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_100045460(a3, v10, &qword_100109880, &qword_1000C2C98);
    v13 = type metadata accessor for IndexPath();
    v14 = *(v13 - 8);
    isa = 0;
    if ((*(v14 + 48))(v10, 1, v13) != 1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v14 + 8))(v10, v13);
    }

    v16 = [v12 isReadyForDropSessionFromController:v3 tableView:a1 dropSessionDidUpdate:a2 withDestinationIndexPath:isa];

    if (v16)
    {
      v17 = [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:2 intent:0];
      swift_unknownObjectRelease();
      return v17;
    }

    swift_unknownObjectRelease();
  }

  return [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:1];
}

void sub_100050D74(void *a1)
{
  v2 = v1;
  v67 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v67 - 8);
  v4 = *(v66 + 64);
  __chkstk_darwin(v67);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  v6 = *(v63 + 64);
  __chkstk_darwin(v65);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v60 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v80 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  v79 = UTType.identifier.getter();
  v82 = v23;
  (*(v19 + 8))(v22, v18);
  v83 = dispatch_group_create();
  v61 = v2;
  sub_10004D470(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000454C8(v11, &qword_100109790, &unk_1000C29E0);
    static os_log_type_t.error.getter();
    v24 = [objc_opt_self() attachHandle];
    if (v24)
    {
      v25 = v24;

      os_log(_:dso:log:_:_:)();

      return;
    }

    goto LABEL_17;
  }

  v74 = *(v13 + 32);
  v75 = v13 + 32;
  v74(v17, v11, v12);
  v76 = swift_allocObject();
  *(v76 + 16) = _swiftEmptyArrayStorage;
  v26 = [a1 items];
  sub_100041AA0(&qword_100109858, &unk_1000C2C80);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = v17;
  v78 = v12;
  v81 = v13;
  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v83;
    if (!v28)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v83;
    if (!v28)
    {
      goto LABEL_13;
    }
  }

  if (v28 < 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v30 = 0;
  v71 = v27 & 0xC000000000000001;
  v70 = v81 + 16;
  v69 = v14 + 7;
  v68 = &v87;
  v72 = v28;
  v73 = v27;
  do
  {
    if (v71)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v31 = *(v27 + 8 * v30 + 32);
      swift_unknownObjectRetain();
    }

    v32 = v81;
    v33 = v77;
    ++v30;
    dispatch_group_enter(v29);
    v34 = [v31 dragItem];
    v35 = [v34 itemProvider];

    v36 = String._bridgeToObjectiveC()();
    v37 = v80;
    v38 = v78;
    (*(v32 + 16))(v80, v33, v78);
    v39 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v40 = (v69 + v39) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = v38;
    v29 = v83;
    v74((v41 + v39), v37, v42);
    *(v41 + v40) = v76;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
    v89 = sub_100052AD4;
    v90 = v41;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_100052410;
    v88 = &unk_1000E06F0;
    v43 = _Block_copy(&aBlock);

    v44 = v29;

    v45 = [v35 loadFileRepresentationForTypeIdentifier:v36 completionHandler:v43];
    _Block_release(v43);
    swift_unknownObjectRelease();

    v27 = v73;
  }

  while (v72 != v30);
LABEL_13:

  dispatch_group_enter(v29);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v47 = v61;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    *(v50 + 24) = v29;
    v89 = sub_100052BA8;
    v90 = v50;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_10004E610;
    v88 = &unk_1000E0768;
    v51 = _Block_copy(&aBlock);
    v52 = v29;

    [v49 attachmentsAlert:v47 needsDeviceDiagnosticsController:v51];
    swift_unknownObjectRelease();
    _Block_release(v51);
  }

  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v83 = static OS_dispatch_queue.main.getter();
  v53 = swift_allocObject();
  v54 = v76;
  *(v53 + 16) = v46;
  *(v53 + 24) = v54;
  v89 = sub_100052BF0;
  v90 = v53;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_100088474;
  v88 = &unk_1000E07B8;
  v55 = _Block_copy(&aBlock);

  v56 = v62;
  static DispatchQoS.unspecified.getter();
  v84 = _swiftEmptyArrayStorage;
  sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50);
  v57 = v64;
  v58 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v83;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v55);

  (*(v66 + 8))(v57, v58);
  (*(v63 + 8))(v56, v65);
  (*(v81 + 8))(v77, v78);
}

void sub_100051768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v95 = a4;
  v102 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  __chkstk_darwin(v8);
  v98 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchQoS();
  v97 = *(v99 - 8);
  v11 = *(v97 + 64);
  __chkstk_darwin(v99);
  v96 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v112 = *(v13 - 8);
  v113 = v13;
  v14 = *(v112 + 64);
  v15 = __chkstk_darwin(v13);
  v94 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v104 = &v90 - v17;
  __chkstk_darwin(v16);
  v110 = &v90 - v18;
  v19 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v103 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v93 = &v90 - v24;
  v25 = __chkstk_darwin(v23);
  v92 = &v90 - v26;
  v27 = __chkstk_darwin(v25);
  v105 = &v90 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v90 - v30;
  __chkstk_darwin(v29);
  v33 = &v90 - v32;
  static os_log_type_t.default.getter();
  v111 = objc_opt_self();
  v34 = [v111 attachHandle];
  if (!v34)
  {
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v108 = sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v36 = swift_allocObject();
  v106 = xmmword_1000C29F0;
  *(v36 + 16) = xmmword_1000C29F0;
  sub_100045460(a1, v33, &qword_100109790, &unk_1000C29E0);
  v37 = String.init<A>(describing:)();
  v39 = v38;
  *(v36 + 56) = &type metadata for String;
  v107 = sub_100047484();
  *(v36 + 64) = v107;
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  os_log(_:dso:log:_:_:)();

  if (!a2)
  {
    goto LABEL_5;
  }

  static os_log_type_t.default.getter();
  v40 = [v111 attachHandle];
  if (!v40)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v106;
  aBlock[0] = a2;
  swift_errorRetain();
  sub_100041AA0(&qword_100109878, &qword_1000C2C90);
  v43 = String.init<A>(describing:)();
  v44 = v107;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v44;
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  os_log(_:dso:log:_:_:)();

LABEL_5:
  v109 = a5;
  sub_100045460(a1, v31, &qword_100109790, &unk_1000C29E0);
  v47 = v112;
  v46 = v113;
  v48 = *(v112 + 48);
  if (v48(v31, 1, v113) == 1)
  {
    sub_1000454C8(v31, &qword_100109790, &unk_1000C29E0);
    static os_log_type_t.error.getter();
    v49 = [v111 attachHandle];
    if (v49)
    {
      v50 = v49;
      os_log(_:dso:log:_:_:)();

      dispatch_group_leave(v109);
      return;
    }

    goto LABEL_24;
  }

  v91 = *(v47 + 32);
  v91(v110, v31, v46);
  v51 = URL.hasDirectoryPath.getter();
  v52 = objc_opt_self();
  URL._bridgeToObjectiveC()(v53);
  v55 = v54;
  URL._bridgeToObjectiveC()(v56);
  v58 = v57;
  if (v51)
  {
    v59 = [v52 copyAndReturn:v55 toDir:v57];

    v60 = v105;
    if (v59)
    {
      v61 = &v115;
LABEL_13:
      v62 = *(v61 - 32);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = 0;
      v65 = v112;
      v64 = v113;
      v66 = v103;
      goto LABEL_17;
    }

    v63 = 1;
    v65 = v112;
    v64 = v113;
    v66 = v103;
    v67 = &v115;
  }

  else
  {
    v59 = [v52 copyItem:v55 toDestinationDir:v57 zipped:0];

    v60 = v105;
    if (v59)
    {
      v61 = &v116;
      goto LABEL_13;
    }

    v63 = 1;
    v65 = v112;
    v64 = v113;
    v66 = v103;
    v67 = &v116;
  }

  v62 = *(v67 - 32);
LABEL_17:
  (*(v65 + 56))(v62, v63, 1, v64);
  sub_100052BF8(v62, v60);
  sub_100045460(v60, v66, &qword_100109790, &unk_1000C29E0);
  if (v48(v66, 1, v64) == 1)
  {
    sub_1000454C8(v66, &qword_100109790, &unk_1000C29E0);
    static os_log_type_t.error.getter();
    v68 = [v111 attachHandle];
    if (v68)
    {
      v69 = v68;
      v70 = swift_allocObject();
      *(v70 + 16) = v106;
      sub_100052C68(&qword_100109870, &type metadata accessor for URL);
      v71 = v110;
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v107;
      *(v70 + 56) = &type metadata for String;
      *(v70 + 64) = v73;
      *(v70 + 32) = v72;
      *(v70 + 40) = v74;
      os_log(_:dso:log:_:_:)();

      dispatch_group_leave(v109);
      sub_1000454C8(v60, &qword_100109790, &unk_1000C29E0);
      (*(v65 + 8))(v71, v64);
      return;
    }

    goto LABEL_25;
  }

  v75 = v104;
  v76 = v91;
  v91(v104, v66, v64);
  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v113 = static OS_dispatch_queue.main.getter();
  v77 = v94;
  (*(v65 + 16))(v94, v75, v64);
  v78 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v79 = (v14 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  *(v80 + 16) = v95;
  v76(v80 + v78, v77, v64);
  v81 = v109;
  *(v80 + v79) = v109;
  aBlock[4] = sub_100052D88;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E0808;
  v82 = _Block_copy(aBlock);

  v83 = v81;

  v84 = v96;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
  v85 = v64;
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50);
  v86 = v98;
  v87 = v101;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v88 = v113;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v82);

  (*(v100 + 8))(v86, v87);
  (*(v97 + 8))(v84, v99);
  v89 = *(v65 + 8);
  v89(v104, v85);
  sub_1000454C8(v105, &qword_100109790, &unk_1000C29E0);
  v89(v110, v85);
}

void sub_100052274(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  swift_beginAccess();
  v11 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1000775A0(0, v11[2] + 1, 1, v11);
    *(a1 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1000775A0(v13 > 1, v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  *(a1 + 16) = v11;
  dispatch_group_leave(a3);
}

uint64_t sub_100052410(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_1000454C8(v9, &qword_100109790, &unk_1000C29E0);
}

void sub_100052564(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  dispatch_group_leave(a3);
}

void sub_1000525C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (!v9)
  {
    static os_log_type_t.error.getter();
    v25 = [objc_opt_self() attachHandle];
    if (v25)
    {
      v26 = v25;
      os_log(_:dso:log:_:_:)();

      return;
    }

    goto LABEL_12;
  }

  v10 = v9;
  static os_log_type_t.info.getter();
  v11 = [objc_opt_self() attachHandle];
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000C29F0;
  swift_beginAccess();
  v14 = *(*(a2 + 16) + 16);
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v14;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v19 = *(v5 + 16);
    v17 = v5 + 16;
    v18 = v19;
    v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    v27 = *(a2 + 16);

    do
    {
      v18(v8, v20, v4);
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      (*(v17 - 8))(v8, v4);
      [v10 moveFileFrom:v24];

      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {
  }
}

uint64_t sub_100052900()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100052958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000529A8()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100052A28()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_100052AD4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100051768(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_100052BB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100052CB0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100052D88()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100052274(v3, v0 + v2, v4);
}

void sub_100052E18(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v7[4] = sub_100053104;
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10004E610;
    v7[3] = &unk_1000E0858;
    v6 = _Block_copy(v7);

    [v4 attachmentsAlert:v1 needsDeviceDiagnosticsController:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

uint64_t sub_100052F20(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  sub_1000497E4(0, &qword_100109888, UIImage_ptr);
  if ([a1 canLoadObjectsOfClass:swift_getObjCClassFromMetadata()])
  {
    return 1;
  }

  sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000C2530;
  static UTType.movie.getter();
  v12 = UTType.identifier.getter();
  v14 = v13;
  v15 = *(v3 + 8);
  v15(v9, v2);
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  static UTType.item.getter();
  v16 = UTType.identifier.getter();
  v18 = v17;
  v15(v7, v2);
  *(v11 + 48) = v16;
  *(v11 + 56) = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [a1 hasItemsConformingToTypeIdentifiers:isa];

  return v20;
}

uint64_t sub_10005310C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005321C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2, 7);
}

unint64_t sub_10005327C()
{
  result = qword_1001098D0;
  if (!qword_1001098D0)
  {
    sub_1000497E4(255, &qword_1001098C8, FBKGroupedDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001098D0);
  }

  return result;
}

uint64_t sub_1000532E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005336C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_1001098D8, qword_1000C2CC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000534A8()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_1001098F0);
  sub_1000466AC(v0, qword_1001098F0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100053520@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7[2])
  {
    v8 = v7[4];
    v9 = v7[5];

    URL.init(fileURLWithPath:)();

    sub_100054080();
    if ([swift_getObjCClassFromMetadata() platform] != 1)
    {
      v10._object = 0x80000001000CA0C0;
      v10._countAndFlagsBits = 0xD000000000000012;
      URL.appendPathComponent(_:)(v10);
    }

    (*(v18 + 32))(a1, v5, v2);
    return (*(v18 + 56))(a1, 0, 1, v2);
  }

  else
  {

    if (qword_100108DD0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000466AC(v12, qword_1001098F0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to find old library URL.", v15, 2u);
    }

    v16 = *(v18 + 56);

    return v16(a1, 1, 1, v2);
  }
}

void sub_1000537B8()
{
  v0 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v59 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v63 = "ssistant19FBAAppGroupMigrator";
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  if (v15)
  {
    if (qword_100108DD0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000466AC(v16, qword_1001098F0);
    v63 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v63, v17, "App Group migration already done.", v18, 2u);
    }

    v19 = v63;

    return;
  }

  sub_100053520(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000467E0(v3);
    if (qword_100108DD0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000466AC(v20, qword_1001098F0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Old library directory could not be derived, stopping migration", v23, 2u);
    }

    return;
  }

  (*(v5 + 32))(v11, v3, v4);
  if (qword_100108DD0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_1000466AC(v24, qword_1001098F0);
  (*(v5 + 16))(v9, v11, v4);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v61 = v25;
  v62 = v12;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v64 = v30;
    *v29 = 136315138;
    v31 = URL.absoluteString.getter();
    v33 = v32;
    v60 = v5;
    v34 = *(v5 + 8);
    v34(v9, v4);
    v35 = sub_10008D954(v31, v33, &v64);
    v12 = v62;

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Old Library directory: %s", v29, 0xCu);
    sub_1000466E4(v30);
    v36 = v34;
  }

  else
  {

    v36 = *(v5 + 8);
    v36(v9, v4);
  }

  v37 = URL.checkResourceIsReachable()();
  if (v38)
  {
    goto LABEL_21;
  }

  if (v37)
  {
    v47 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    v64 = 0;
    v51 = [v47 removeItemAtURL:v49 error:&v64];

    if (!v51)
    {
      v58 = v64;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v12 = v62;
LABEL_21:
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v60 = v36;
        v43 = v42;
        v64 = v42;
        *v41 = 136315138;
        swift_getErrorValue();
        v44 = Error.localizedDescription.getter();
        v46 = sub_10008D954(v44, v45, &v64);

        *(v41 + 4) = v46;
        v12 = v62;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to remove old library directory. %s", v41, 0xCu);
        sub_1000466E4(v43);
        v36 = v60;
      }

      else
      {
      }

      goto LABEL_27;
    }

    v52 = v64;
    v12 = v62;
  }

LABEL_27:
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Removed old library directory.", v55, 2u);
    v12 = v62;
  }

  v56 = [v12 standardUserDefaults];
  v57 = String._bridgeToObjectiveC()();
  [v56 setBool:1 forKey:v57];

  v36(v11, v4);
}

id sub_100054024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAAppGroupMigrator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100054080()
{
  result = qword_100109930;
  if (!qword_100109930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109930);
  }

  return result;
}

void *sub_1000540CC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage;
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for FBKFeedbackUpload.BugSession();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_10005424C()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_100109940);
  sub_1000466AC(v0, qword_100109940);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

void sub_1000542C0()
{
  v1 = v0;
  if (qword_100108DD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000466AC(v2, qword_100109940);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Looking up uploads for tracking", v5, 2u);
  }

  v6 = [v0 currentUser];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    aBlock[4] = sub_100057F84;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054930;
    aBlock[3] = &unk_1000E0DA8;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v10 allUploadTasksWithUser:v7 completion:v9];
    _Block_release(v9);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10008D954(0xD00000000000001ELL, 0x80000001000CB3A0, aBlock);
      _os_log_impl(&_mh_execute_header, oslog, v11, "No user in %s", v12, 0xCu);
      sub_1000466E4(v13);
    }

    else
    {
    }
  }
}

void sub_100054578(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    Set.Iterator.init(_cocoa:)();
    v3 = v31;
    v4 = v32;
    v5 = v33;
    v6 = v34;
    v7 = v35;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v12 = &selRef_boldSystemFontOfSize_;
  v28 = v3;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr), swift_dynamicCast(), v16 = v30, v29 = v7, !v30))
    {
LABEL_29:
      sub_100053364();
      return;
    }

LABEL_19:
    v20 = [v16 v12[344]];
    if (v20 || (v20 = [v16 feedbackFollowup]) != 0)
    {
      v17 = v20;
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
        v22 = v21;
        v23 = [a2 uploadManager];
        if (v23)
        {
          v24 = v23;
          [v23 trackUploadIfNeeded:v22];
        }

        goto LABEL_9;
      }
    }

    if (qword_100108DD8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000466AC(v25, qword_100109940);
    v17 = v16;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v13 = swift_slowAlloc();
      v14 = a2;
      v15 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v17;
      *v15 = v16;
      v16 = v17;
      _os_log_impl(&_mh_execute_header, v26, v27, "No filer form found in task %{public}@", v13, 0xCu);
      sub_10004BAB8(v15);
      a2 = v14;
      v3 = v28;

      v12 = &selRef_boldSystemFontOfSize_;

      v17 = v26;
    }

    else
    {
      v16 = v26;
    }

LABEL_9:
    v7 = v29;
  }

  v18 = v6;
  v19 = v7;
  if (v7)
  {
LABEL_15:
    v29 = (v19 - 1) & v19;
    v16 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v16)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_29;
    }

    v19 = *(v4 + 8 * v6);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100054930(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_100054A28(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v96 = a7;
  v99 = a6;
  v101 = a5;
  v102 = a4;
  v103 = a3;
  v106 = type metadata accessor for FBKFeedbackUpload();
  v105 = *(v106 - 8);
  v9 = *(v105 + 64);
  v10 = __chkstk_darwin(v106);
  v98 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v11;
  __chkstk_darwin(v10);
  v100 = v95 - v12;
  v104 = a1;
  v108 = FBKFeedbackUpload.feedbackID.getter();
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_100057CFC(&qword_100109998, &qword_100109990, FBKContentItem_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = aBlock[9];
    v13 = aBlock[10];
    v14 = aBlock[11];
    v15 = aBlock[12];
    v16 = aBlock[13];
  }

  else
  {
    v17 = -1 << *(a2 + 32);
    v13 = a2 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a2 + 56);

    v15 = 0;
  }

  v107 = v14;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = v15;
  v21 = v16;
  v22 = v15;
  if (!v16)
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v22 >= ((v14 + 64) >> 6))
      {
        break;
      }

      v21 = *(v13 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_12;
      }
    }

LABEL_20:
    sub_100053364();
    if (qword_100108DD8 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_21;
  }

LABEL_12:
  v23 = (v21 - 1) & v21;
  v24 = *(*(a2 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  if (!v24)
  {
    goto LABEL_20;
  }

  while (1)
  {
    isa = v24;
    v26 = [(objc_class *)v24 remoteID];
    if (!v26)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    v27 = v26;
    v28 = [v26 integerValue];

    if (v28 == v108)
    {
      break;
    }

    v15 = v22;
    v16 = v23;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v25 = __CocoaSet.Iterator.next()();
    if (v25)
    {
      v110 = v25;
      sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
      swift_dynamicCast();
      v24 = aBlock[0];
      v22 = v15;
      v23 = v16;
      if (aBlock[0])
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_100053364();
  v33 = v103;
  if ((v103 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    Set.Iterator.init(_cocoa:)();
    v33 = v110;
    v34 = v111;
    v35 = v112;
    v36 = v113;
    v37 = v114;
  }

  else
  {
    v38 = -1 << *(v103 + 32);
    v34 = (v103 + 56);
    v35 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v37 = v40 & *(v103 + 56);

    v36 = 0;
  }

  v95[1] = v35;
  v41 = &selRef_boldSystemFontOfSize_;
  v107 = v34;
  while (1)
  {
    v42 = v37;
    if (v33 < 0)
    {
      v46 = __CocoaSet.Iterator.next()();
      if (!v46 || (aBlock[6] = v46, sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr), swift_dynamicCast(), (v45 = aBlock[0]) == 0))
      {
LABEL_50:
        sub_100053364();
        if (qword_100108DD8 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000466AC(v59, qword_100109940);
        v60 = v105;
        v61 = *(v105 + 16);
        v62 = v100;
        v63 = v106;
        v61(v100, v104, v106);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        v66 = os_log_type_enabled(v64, v65);
        v108 = v61;
        if (v66)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          aBlock[0] = v68;
          *v67 = 136315138;
          sub_100057CB4(&qword_1001099A8, &type metadata accessor for FBKFeedbackUpload);
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v62;
          v72 = v71;
          (*(v60 + 8))(v70, v63);
          v73 = sub_10008D954(v69, v72, aBlock);

          *(v67 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v64, v65, "Will create upload task for framework upload %s", v67, 0xCu);
          sub_1000466E4(v68);
        }

        else
        {

          (*(v60 + 8))(v62, v63);
        }

        v30 = isa;
        v74 = v102;
        dispatch_group_enter(v102);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v103 = Strong;
          v76 = swift_allocObject();
          *(v76 + 2) = v74;
          *(v76 + 3) = v30;
          *(v76 + 4) = v96;
          sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
          v77 = v74;
          v107 = v30;

          v78 = v104;
          v79 = FBKFeedbackUpload.formResponseID.getter();
          isa = NSNumber.init(integerLiteral:)(v79).super.super.isa;
          v80 = v98;
          v81 = v106;
          v108(v98, v78, v106);
          v82 = v105;
          v83 = (*(v105 + 80) + 16) & ~*(v105 + 80);
          v84 = (v97 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
          v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
          v86 = swift_allocObject();
          (*(v82 + 32))(v86 + v83, v80, v81);
          v87 = (v86 + v84);
          *v87 = sub_100057D94;
          v87[1] = v76;
          v88 = v103;
          *(v86 + v85) = v103;
          v89 = v99;
          *(v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;
          aBlock[4] = sub_100057E68;
          aBlock[5] = v86;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000565DC;
          aBlock[3] = &unk_1000E0D58;
          v90 = _Block_copy(aBlock);

          v91 = v88;
          v92 = v89;

          v93 = isa;
          [v91 refreshFormResponseOnlyWithID:isa completion:v90];
          v94 = v90;
          v30 = v93;
          _Block_release(v94);
        }

        goto LABEL_23;
      }

      goto LABEL_41;
    }

    v43 = v36;
    v44 = v37;
    if (!v37)
    {
      break;
    }

LABEL_37:
    v37 = (v44 - 1) & v44;
    v45 = *(*(v33 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v44)))));
    if (!v45)
    {
      goto LABEL_50;
    }

LABEL_41:
    v47 = [v45 v41[342]];
    if (v47)
    {
      v48 = v37;
      v103 = v42;
      v49 = v33;

      v50 = v41;
      v51 = [v45 v41[342]];
      if (!v51)
      {
        goto LABEL_62;
      }

      v52 = v51;
      v53 = [v51 integerValue];

      v34 = v107;
      v54 = v53 == v108;
      v41 = v50;
      v33 = v49;
      v37 = v48;
      if (v54)
      {
        sub_100053364();
        if (qword_100108DD8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_1000466AC(v55, qword_100109940);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 134349056;
          *(v58 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v56, v57, "Feedback ID %{public}ld already tracked locally", v58, 0xCu);
        }

        v30 = isa;
        goto LABEL_23;
      }
    }

    else
    {

      v34 = v107;
    }
  }

  while (1)
  {
    v36 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v36 >= ((v35 + 64) >> 6))
    {
      goto LABEL_50;
    }

    v44 = v34[v36].isa;
    ++v43;
    if (v44)
    {
      goto LABEL_37;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  swift_once();
LABEL_21:
  v29 = type metadata accessor for Logger();
  sub_1000466AC(v29, qword_100109940);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134349056;
    *(v32 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v30, v31, "Feedback ID %{public}ld does not belong to this user. Will not track upload", v32, 0xCu);
  }

LABEL_23:
}

void sub_1000555A0(void *a1, dispatch_group_t group, void *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 formResponse];
    [a3 setFormResponse:v6];

    swift_beginAccess();
    v7 = v5;
    sub_100078CDC(&v8, v7);
    swift_endAccess();

    dispatch_group_leave(group);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

uint64_t sub_100055690(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v8 < 0)
  {
    v9 = *(a1 + 16);
  }

  v10 = *(a1 + 16);

  v11 = __CocoaSet.count.getter();

  if (v11)
  {
LABEL_7:
    v12 = [a2 mainQueueContext];
    if (v12)
    {
      v30[0] = 0;
      v13 = v12;
      v14 = [v12 save:v30];

      if (v14)
      {
        v15 = v30[0];
      }

      else
      {
        v16 = v30[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100108DD8 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000466AC(v17, qword_100109940);
        swift_errorRetain();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v30[0] = v29;
          *v20 = 136446210;
          swift_errorRetain();
          sub_100041AA0(&qword_100109968, &unk_1000C3080);
          v21 = String.init<A>(describing:)();
          v23 = sub_10008D954(v21, v22, v30);

          *(v20 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to save after creating FBK upload tasks %{public}s", v20, 0xCu);
          sub_1000466E4(v29);
        }

        else
        {
        }
      }
    }

    swift_beginAccess();
    v24 = *(a1 + 16);
    swift_beginAccess();

    sub_1000559AC(v25);
    swift_endAccess();
  }

LABEL_16:
  swift_beginAccess();
  v26 = *(a3 + 16);

  a4(v27);
}

void sub_1000559AC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
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

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100053364();
      return;
    }

    while (1)
    {
      sub_100078CDC(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100055C30(uint64_t a1, uint64_t a2)
{
  sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_100055D94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void *a6, uint64_t a7)
{
  v12 = type metadata accessor for FBKFeedbackUpload();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v12 = a1;
  [a6 prepareFilerFormForSubmission:v12];
  v17 = [v12 uploadTask];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v16 = v17;
  v18 = [v12 ID];
  [v16 setTaskIdentifier:v18];

  [v16 setLocalSubmissionStage:2];
  v19 = FBKFeedbackUpload.bugSessions.getter();
  v20 = v19;
  v21 = *(v19 + 16);
  if (!v21)
  {

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v22 = sub_100077A98(*(v19 + 16), 0);
  v23 = *(type metadata accessor for FBKFeedbackUpload.BugSession() - 8);
  v24 = sub_10007B800(&v40, &v22[(*(v23 + 80) + 32) & ~*(v23 + 80)], v21, v20);
  v25 = sub_100053364();
  if (v24 == v21)
  {
LABEL_11:
    __chkstk_darwin(v25);
    *(&v38 - 2) = a7;
    *(&v38 - 1) = a3;
    v35 = sub_1000540CC(sub_100057F30, (&v38 - 4), v22);

    sub_10007BC58(v35);

    sub_1000497E4(0, &qword_1001099B0, FBKBugSession_ptr);
    sub_100057CFC(&qword_1001099B8, &qword_1001099B0, FBKBugSession_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v16 setBugSessions:isa];

    v37 = v16;
    a4(v16);

    return;
  }

  __break(1u);
LABEL_6:
  if (qword_100108DD8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000466AC(v26, qword_100109940);
  (*(v13 + 16))(v16, a3, v12);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v29 = 136446210;
    sub_100057CB4(&qword_1001099A8, &type metadata accessor for FBKFeedbackUpload);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = a4;
    v33 = v32;
    (*(v13 + 8))(v16, v12);
    v34 = sub_10008D954(v30, v33, &v40);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "FR fetch failed. Cannot track upload on %{public}s", v29, 0xCu);
    sub_1000466E4(v39);

    v31(0);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    a4(0);
  }
}

void sub_100056264(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for FBKFeedbackUpload();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() entityName];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [objc_opt_self() insertNewObjectForEntityForName:v10 inManagedObjectContext:a1];

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    FBKFeedbackUpload.BugSession.sessionIdentifier.getter();
    v14 = String._bridgeToObjectiveC()();

    [v13 setIdentifier:v14];

    FBKFeedbackUpload.BugSession.deviceIdentifier.getter();
    v15 = String._bridgeToObjectiveC()();

    [v13 setDeviceIdentifier:v15];
  }

  else
  {

    if (qword_100108DD8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000466AC(v16, qword_100109940);
    (*(v6 + 16))(v9, a2, v5);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      sub_100057CB4(&qword_1001099A8, &type metadata accessor for FBKFeedbackUpload);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v6 + 8))(v9, v5);
      v24 = sub_10008D954(v21, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not create FBA bug session for feedback upload %s", v19, 0xCu);
      sub_1000466E4(v20);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v13 = 0;
  }

  *v25 = v13;
}

void sub_1000565DC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100056668(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_1000566DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  v4 = 0;
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
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = [v14 filerForm];
    if (v15)
    {
      v16 = [v15 filerFormType];

      swift_unknownObjectRelease();
      if (!v16)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v24++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (qword_100108DD8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000466AC(v18, qword_100109940);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Found upload task without a valid filer form, skipping.", v21, 2u);
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

      sub_1000788C4(a1, a2, v24, a3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void *sub_100056914(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1000566DC(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_10005698C(void *a1, void *a2, void *a3)
{
  v125 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v119 = *(v5 - 8);
  v6 = *(v119 + 64);
  __chkstk_darwin(v5);
  v8 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FBKFeedbackUpload();
  v127 = *(v14 - 8);
  v15 = *(v127 + 64);
  __chkstk_darwin(v14);
  isa = (v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  _Block_copy(a3);
  v18 = [a2 mainQueueContext];
  if (!v18)
  {
    if (qword_100108DD8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000466AC(v46, qword_100109940);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "No main queue managed object context found", v49, 2u);
    }

    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    v50.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v51 = a3[2];
    isa = v50.super.isa;
    v51(a3);

    v52 = isa;

    return;
  }

  v122 = v14;
  v111[1] = a3;
  v113 = v13;
  v114 = v10;
  v115 = v8;
  v19 = v18;
  v20 = swift_allocObject();
  v120 = a2;
  v126 = v19;
  v21 = [a2 uploadTasksFromDatabaseWithContext:v19];
  v22 = sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v112 = v20;
  *(v20 + 16) = v23;
  v118 = v17;
  v117 = v5;
  v116 = v9;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v17 = &_swiftEmptySetSingleton;
    aBlock[0] = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    v24 = __CocoaSet.Iterator.next()();
    p_cache = (_TtC18Feedback_Assistant26FBADevicePickerCoordinator + 16);
    if (v24)
    {
      p_ivar_lyt = &FBADirectoriesMigrator.ivar_lyt;
      while (1)
      {
        v129 = v24;
        swift_dynamicCast();
        v27 = [v130 filerForm];
        if (!v27)
        {
          break;
        }

        v28 = [v27 p_ivar_lyt[173]];
        swift_unknownObjectRelease();
        if (v28)
        {
          goto LABEL_6;
        }

        v29 = p_ivar_lyt;
        v30 = v130;
        v31 = *(v17 + 16);
        if (*(v17 + 24) <= v31)
        {
          sub_100077F28(v31 + 1);
        }

        v17 = aBlock[0];
        v32 = NSObject._rawHashValue(seed:)(*(aBlock[0] + 40));
        v33 = v17 + 56;
        v34 = -1 << *(v17 + 32);
        v35 = v32 & ~v34;
        v36 = v35 >> 6;
        if (((-1 << v35) & ~*(v17 + 56 + 8 * (v35 >> 6))) == 0)
        {
          v42 = 0;
          v43 = (63 - v34) >> 6;
          while (++v36 != v43 || (v42 & 1) == 0)
          {
            v44 = v36 == v43;
            if (v36 == v43)
            {
              v36 = 0;
            }

            v42 |= v44;
            v45 = *(v33 + 8 * v36);
            if (v45 != -1)
            {
              v37 = __clz(__rbit64(~v45)) + (v36 << 6);
              goto LABEL_26;
            }
          }

LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          swift_once();
LABEL_63:
          v76 = type metadata accessor for Logger();
          sub_1000466AC(v76, qword_100109940);

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 134217984;
            *(v79 + 4) = *(v22 + 16);

            v80 = "Found %ld FBK uploads to track";
            v81 = v78;
            v82 = v77;
            v83 = v79;
            v84 = 12;
            goto LABEL_69;
          }

          goto LABEL_72;
        }

        v37 = __clz(__rbit64((-1 << v35) & ~*(v17 + 56 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        *(*(v17 + 48) + 8 * v37) = v30;
        ++*(v17 + 16);
        p_ivar_lyt = v29;
LABEL_7:
        v24 = __CocoaSet.Iterator.next()();
        if (!v24)
        {
          goto LABEL_27;
        }
      }

      if (p_cache[443] != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000466AC(v38, qword_100109940);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Found upload task without a valid filer form, skipping.", v41, 2u);
        p_cache = _TtC18Feedback_Assistant26FBADevicePickerCoordinator.cache;
      }

LABEL_6:
      goto LABEL_7;
    }

LABEL_27:

    goto LABEL_58;
  }

  v53 = *(v23 + 32);
  v54 = v53 & 0x3F;
  v55 = ((1 << v53) + 63) >> 6;
  v56 = 8 * v55;

  if (v54 <= 0xD)
  {
    goto LABEL_36;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_36:
    v121 = v55;
    v111[0] = v111;
    __chkstk_darwin(v57);
    v123 = v111 - ((v56 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v123, v56);
    v124 = 0;
    v58 = 0;
    v59 = 1 << *(v23 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v22 = v60 & *(v23 + 56);
    v61 = (v59 + 63) >> 6;
    while (v22)
    {
      v62 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_47:
      v17 = v62 | (v58 << 6);
      v65 = *(*(v23 + 48) + 8 * v17);
      v66 = [v65 filerForm];
      if (v66)
      {
        v67 = [v66 filerFormType];

        swift_unknownObjectRelease();
        if (!v67)
        {
          *&v123[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          v68 = __OFADD__(v124, 1);
          v124 = (v124 + 1);
          if (v68)
          {
            __break(1u);
          }
        }
      }

      else
      {
        if (qword_100108DD8 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_1000466AC(v69, qword_100109940);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "Found upload task without a valid filer form, skipping.", v17, 2u);
        }
      }
    }

    v63 = v58;
    while (1)
    {
      v58 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_85;
      }

      if (v58 >= v61)
      {
        break;
      }

      v64 = *(v23 + 56 + 8 * v58);
      ++v63;
      if (v64)
      {
        v62 = __clz(__rbit64(v64));
        v22 = (v64 - 1) & v64;
        goto LABEL_47;
      }
    }

    v17 = sub_1000788C4(v123, v121, v124, v23);
    goto LABEL_57;
  }

  v110 = swift_slowAlloc();

  v17 = sub_100056914(v110, v55, v23);
  swift_bridgeObjectRelease_n();

LABEL_57:
  p_cache = _TtC18Feedback_Assistant26FBADevicePickerCoordinator.cache;
LABEL_58:
  v72 = [v125 feedbackContentItems];
  if (v72)
  {
    v73 = v72;
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_100057CFC(&qword_100109998, &qword_100109990, FBKContentItem_ptr);
    v123 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v123 = &_swiftEmptySetSingleton;
  }

  v125 = swift_allocObject();
  *(v125 + 2) = &_swiftEmptySetSingleton;
  v124 = dispatch_group_create();
  v74 = [objc_opt_self() sharedUserDefaults];
  v22 = static FBKFeedbackUpload.allFeedbackUploads(_:)();

  v75 = p_cache[443];
  if (*(v22 + 16))
  {
    if (v75 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_63;
  }

  if (v75 != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  sub_1000466AC(v85, qword_100109940);
  v77 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    v80 = "No FBK uploads found.";
    v81 = v86;
    v82 = v77;
    v83 = v87;
    v84 = 2;
LABEL_69:
    _os_log_impl(&_mh_execute_header, v82, v81, v80, v83, v84);
  }

LABEL_72:
  swift_unknownObjectWeakInit();
  v88 = v22 + 56;
  v89 = 1 << *(v22 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(v22 + 56);
  v92 = (v89 + 63) >> 6;
  v121 = v127 + 16;
  v93 = (v127 + 8);

  v94 = 0;
  for (i = v17; v91; v17 = i)
  {
    v96 = v94;
    v97 = isa;
LABEL_80:
    v98 = v22;
    v99 = *(v22 + 48) + *(v127 + 72) * (__clz(__rbit64(v91)) | (v96 << 6));
    v100 = v122;
    (*(v127 + 16))(v97, v99, v122);
    sub_100054A28(v97, v123, i, v124, aBlock, v126, v125);
    v91 &= v91 - 1;
    (*v93)(v97, v100);
    v94 = v96;
    v22 = v98;
  }

  v97 = isa;
  while (1)
  {
    v96 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      __break(1u);
      goto LABEL_84;
    }

    if (v96 >= v92)
    {
      break;
    }

    v91 = *(v88 + 8 * v96);
    ++v94;
    if (v91)
    {
      goto LABEL_80;
    }
  }

  swift_unknownObjectWeakDestroy();

  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v101 = static OS_dispatch_queue.main.getter();
  v102 = swift_allocObject();
  v103 = v120;
  v102[2] = v125;
  v102[3] = v103;
  v102[4] = v112;
  v102[5] = sub_100057BFC;
  v102[6] = v118;
  aBlock[4] = sub_100057C8C;
  aBlock[5] = v102;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E0CE0;
  v104 = _Block_copy(aBlock);

  v105 = v103;

  v106 = v113;
  static DispatchQoS.unspecified.getter();
  v130 = _swiftEmptyArrayStorage;
  sub_100057CB4(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_100041AE8();
  v107 = v115;
  v108 = v117;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v109 = v124;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();

  _Block_release(v104);
  (*(v119 + 8))(v107, v108);
  (*(v114 + 8))(v106, v116);
}

id sub_100057988()
{
  result = [objc_opt_self() entityName];
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:result];

    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    v3 = NSManagedObjectContext.fetch<A>(_:)();
    v4 = sub_10007BAB8(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100057BC4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057C04()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057C3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100057CFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000497E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057D4C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057DA0()
{
  v1 = type metadata accessor for FBKFeedbackUpload();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

void sub_100057E68(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FBKFeedbackUpload() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100055D94(a1, a2, v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_100057F4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100057FE4()
{
  v1 = [*&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController] searchBar];
  v2 = [v1 text];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants];

    v5 = sub_1000597B0(v4);

    v6 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants];
    *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = v5;

    v7 = [v0 tableView];
    if (v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants];
  *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants];

  v7 = [v0 tableView];
  if (!v7)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v9 = v7;
  [v7 reloadData];
}

void sub_10005813C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FBAParticipantTableViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 navigationItem];
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"dismissSelf"];
  [v1 setRightBarButtonItem:v2];

  v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  [*&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController] setSearchResultsUpdater:v0];
  [*&v0[v3] setDelegate:v0];
  [*&v0[v3] setObscuresBackgroundDuringPresentation:0];
  v4 = [*&v0[v3] searchBar];
  [v4 setDelegate:v0];

  [*&v0[v3] setHidesNavigationBarDuringPresentation:0];
  [v0 setDefinesPresentationContext:1];
  v5 = [v0 navigationItem];
  [v5 setSearchController:*&v0[v3]];
}

void sub_1000582FC(void *a1)
{
  v3 = [a1 singleTeam];
  if (v3)
  {
    v4 = v3;
    if ([v3 teamType])
    {
      v5 = [a1 assignee];
      v6 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee];
      *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = v5;

      v7 = [a1 originator];
      v8 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator];
      *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = v7;

      sub_100058714(v4);
      v9 = [objc_opt_self() sharedInstance];
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      *(v10 + 24) = v1;
      v16[4] = sub_100059BA0;
      v16[5] = v10;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_10005B208;
      v16[3] = &unk_1000E0DF8;
      v11 = _Block_copy(v16);
      v12 = v4;
      v13 = v1;

      [v9 refreshParticipantsWithTeam:v12 completion:v11];
      _Block_release(v11);

      return;
    }
  }

  static os_log_type_t.error.getter();
  v14 = [objc_opt_self() appHandle];
  if (v14)
  {
    v15 = v14;
    os_log(_:dso:log:_:_:)();

    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100058544(uint64_t a1, id a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    v2 = [objc_opt_self() appHandle];
    if (v2)
    {
      v3 = v2;
      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1000C29F0;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = v6;
      *(v4 + 56) = &type metadata for String;
      *(v4 + 64) = sub_100047484();
      *(v4 + 32) = v5;
      *(v4 + 40) = v7;
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = [a2 managedObjectContext];
    if (v9)
    {
      v10 = v9;
      [v9 refreshObject:a2 mergeChanges:1];
    }

    sub_100058714(a2);
  }
}

void sub_100058714(void *a1)
{
  v2 = [a1 participants];
  if (v2)
  {
    v3 = v2;
    sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
    sub_100059AF8();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
  sub_100059AF8();
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  isa = [objc_opt_self() sortDescriptors];
  if (!isa)
  {
    sub_1000497E4(0, &qword_100109620, NSSortDescriptor_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v6 = [(objc_class *)v4.super.isa sortedArrayUsingDescriptors:isa];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_100076C18(v7);

  v9 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants];
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = v8;

  sub_100057FE4();
  v10 = [v1 tableView];
  if (v10)
  {
    v11 = v10;
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100058940(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier);
  v10 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier + 8);
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:isa];

  result = IndexPath.row.getter();
  v15 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v38 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
    static UIListContentConfiguration.valueCell()();
    v17 = [v16 contactImage];
    UIListContentConfiguration.image.setter();
    v18 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.maximumSize.setter();
    v18(v40, 0);
    v19 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.cornerRadius.setter();
    v19(v40, 0);
    v20 = [v16 fullName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.text.setter();
    v21 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator);
    if (v21)
    {
      sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
      v22 = v16;
      v23 = v21;
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        v28 = [objc_opt_self() mainBundle];
        v41._object = 0xE000000000000000;
        v29._countAndFlagsBits = 0x54414E494749524FLL;
        v29._object = 0xEA0000000000524FLL;
        v30.value._countAndFlagsBits = v25;
        v30.value._object = v27;
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v41._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v41);
      }
    }

    else
    {
      v32 = v16;
    }

    UIListContentConfiguration.secondaryText.setter();
    v40[3] = v4;
    v40[4] = &protocol witness table for UIListContentConfiguration;
    v33 = sub_100049974(v40);
    (*(v5 + 16))(v33, v8, v4);
    UITableViewCell.contentConfiguration.setter();
    v34 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee);
    if (v34)
    {
      sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
      v35 = v34;
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        v37 = 3;
LABEL_14:
        [v13 setAccessoryType:v37];

        (*(v5 + 8))(v8, v4);
        return v13;
      }
    }

    else
    {
    }

    v37 = 0;
    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * result + 32);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100058E74(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = IndexPath.row.getter();
  v4 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);
LABEL_6:
  [v3 participantController:a1 didSelectParticipant:v5];

  return swift_unknownObjectRelease();
}

id sub_10005916C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier];
  *v3 = 0xD000000000000015;
  *(v3 + 1) = 0x80000001000CB5B0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = 0;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  *&v1[v4] = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FBAParticipantTableViewController();
  return objc_msgSendSuper2(&v6, "initWithStyle:", a1);
}

id sub_10005927C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier];
  *v6 = 0xD000000000000015;
  *(v6 + 1) = 0x80000001000CB5B0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = 0;
  v7 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  *&v3[v7] = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for FBAParticipantTableViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10005940C(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier];
  *v3 = 0xD000000000000015;
  *(v3 + 1) = 0x80000001000CB5B0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = 0;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  *&v1[v4] = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FBAParticipantTableViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_100059538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAParticipantTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100059630(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 text];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants];

    v6 = sub_1000597B0(v5);

    v7 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants];
    *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = v6;

    v8 = [v1 tableView];
    if (v8)
    {
      v9 = v8;
      [v8 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1000597B0(unint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = String.lowercased()();
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100045528();
  v7 = StringProtocol.trimmingCharacters(in:)();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = v7;

  if (String.count.getter())
  {
    v32 = _swiftEmptyArrayStorage;
    v11 = a1;
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v13 = 0;
      v28 = v11 & 0xFFFFFFFFFFFFFF8;
      v29 = v11 & 0xC000000000000001;
      v26 = v11;
      v27 = i;
      while (1)
      {
        if (v29)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v28 + 16))
          {
            goto LABEL_18;
          }

          v15 = *(v11 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v18 = [v15 fullName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = String.lowercased()();

        v33 = v19;
        v30 = v10;
        v31 = v9;
        v20 = StringProtocol.contains<A>(_:)();

        if (v20)
        {
          goto LABEL_5;
        }

        v21 = [v16 emailAddress];
        if (!v21)
        {
          goto LABEL_14;
        }

        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = String.lowercased()();

        v33 = v23;
        v30 = v10;
        v31 = v9;
        LOBYTE(v22) = StringProtocol.contains<A>(_:)();
        v11 = v26;

        if (v22)
        {
LABEL_5:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = v32[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
LABEL_14:
        }

        ++v13;
        if (v17 == v27)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    return v32;
  }

  else
  {

    return a1;
  }
}

unint64_t sub_100059AF8()
{
  result = qword_100109C20;
  if (!qword_100109C20)
  {
    sub_1000497E4(255, &qword_100109C18, FBKParticipant_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109C20);
  }

  return result;
}

uint64_t sub_100059B60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100059BA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100059BC0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100059C84()
{
  v1 = *(*(type metadata accessor for IndexPath() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_100058E74(v2);
}

void *sub_100059EA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 active])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return _swiftEmptyArrayStorage;
}

char *sub_100059FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_compoundType] = 1;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters] = a3;
  *v7 = a1;
  *(v7 + 1) = a2;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for FBAFilterGroup();
  v8 = objc_msgSendSuper2(&v17, "init");
  v9 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v11 = v8;

    if (!v10)
    {
      break;
    }

    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v9 + 8 * v12 + 32);
      }

      v13 = v8;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      swift_unknownObjectWeakAssign();

      ++v12;
      if (v14 == v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v16 = v8;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v16;
  }

LABEL_12:

  return v11;
}

id sub_10005A21C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAFilterGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10005A2D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10005A354;
  }

  __break(1u);
  return result;
}

id FBATargetedSurvey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBATargetedSurvey.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBATargetedSurvey();
  return objc_msgSendSuper2(&v2, "init");
}

id FBATargetedSurvey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBATargetedSurvey();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10005A4F4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = NSClassFromString(v1);

  if (v2)
  {
    v3 = [v0 subviews];
    sub_10005A6CC();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 isKindOfClass:v2])
        {

          return v8;
        }

        ++v6;
        if (v9 == i)
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

  return 0;
}

unint64_t sub_10005A6CC()
{
  result = qword_100109D00;
  if (!qword_100109D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109D00);
  }

  return result;
}

uint64_t sub_10005A718()
{
  result = FBKIsSolariumEnabled();
  byte_10010CEB8 = result;
  return result;
}

id sub_10005A93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v60[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_itemIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button] = 0;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for FBAAddAttachmentsCell();
  v61.receiver = v3;
  v61.super_class = v13;
  v14 = objc_msgSendSuper2(&v61, "initWithStyle:reuseIdentifier:", a1, v12);

  if (qword_100108DE0 != -1)
  {
    swift_once();
  }

  if (byte_10010CEB8 == 1)
  {

    v15 = [objc_allocWithZone(UIButton) init];
    v16 = [v15 titleLabel];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v17 setFont:v18];
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = [objc_opt_self() mainBundle];
    v62._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x415454415F444441;
    v23._object = 0xEE00544E454D4843;
    v24.value._countAndFlagsBits = v19;
    v24.value._object = v21;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v62._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v62);

    v26 = String._bridgeToObjectiveC()();

    [v15 setTitle:v26 forState:0];

    v27 = [objc_opt_self() tintColor];
    [v15 setTitleColor:v27 forState:0];

    v28 = [objc_opt_self() systemImageNamed:FBKSystemImageNamePaperclip];
    [v15 setImage:v28 forState:0];

    v29 = v15;
    [v29 setShowsMenuAsPrimaryAction:1];
    v30 = v29;
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 setContentEdgeInsets:{10.0, 0.0, 10.0, 0.0}];
    [v30 setContentHorizontalAlignment:4];

    v31 = v14;
    [v31 separatorInset];
    [v30 setImageEdgeInsets:0.0];
    [v31 separatorInset];
    [v30 setTitleEdgeInsets:{0.0, v32 + 20.0, 0.0, 0.0}];
    v33 = *&v31[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button];
    *&v31[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button] = v30;
    v34 = v30;

    v35 = [v31 contentView];
    [v35 addSubview:v34];

    v36 = objc_opt_self();
    sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1000C2E20;
    v38 = [v34 widthAnchor];
    v39 = [v31 contentView];
    v40 = [v39 widthAnchor];

    v41 = [v38 constraintEqualToAnchor:v40];
    *(v37 + 32) = v41;
    v42 = [v34 heightAnchor];

    v43 = [v31 contentView];
    v44 = [v43 heightAnchor];

    v45 = [v42 constraintEqualToAnchor:v44];
    *(v37 + 40) = v45;
    sub_10005B1BC();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 activateConstraints:isa];

    return v14;
  }

  static UIListContentConfiguration.cell()();
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  v50 = [objc_opt_self() mainBundle];
  v63._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0x415454415F444441;
  v51._object = 0xEE00544E454D4843;
  v52.value._countAndFlagsBits = v47;
  v52.value._object = v49;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v63);

  UIListContentConfiguration.text.setter();
  v54 = [objc_opt_self() systemImageNamed:FBKSystemImageNamePaperclip];
  UIListContentConfiguration.image.setter();
  result = [objc_opt_self() tintColor];
  if (result)
  {

    v56 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v56(v60, 0);
    v60[3] = v6;
    v60[4] = &protocol witness table for UIListContentConfiguration;
    v57 = sub_100049974(v60);
    (*(v7 + 16))(v57, v10, v6);
    v58 = v14;
    UITableViewCell.contentConfiguration.setter();

    (*(v7 + 8))(v10, v6);
    return v14;
  }

  __break(1u);
  return result;
}

id sub_10005B114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAAddAttachmentsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10005B1BC()
{
  result = qword_100109D60[0];
  if (!qword_100109D60[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_100109D60);
  }

  return result;
}

void sub_10005B208(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void NSNotification.keyboardAttributes.getter(uint64_t a1@<X8>)
{
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v6 = sub_100065FB4(v27), (v7 & 1) != 0))
    {
      sub_100046784(*(v5 + 56) + 32 * v6, v28);
      sub_100065FF8(v27);
      sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v8 = v22;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        if (*(v5 + 16) && (v9 = sub_100065FB4(v27), (v10 & 1) != 0))
        {
          sub_100046784(*(v5 + 56) + 32 * v9, v28);
          sub_100065FF8(v27);
          if (swift_dynamicCast())
          {
            v11 = v23;
            *&v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v24 + 1) = v12;
            AnyHashable.init<A>(_:)();
            if (*(v5 + 16) && (v13 = sub_100065FB4(v27), (v14 & 1) != 0))
            {
              sub_100046784(*(v5 + 56) + 32 * v13, v28);
              sub_100065FF8(v27);
              type metadata accessor for CGRect(0);
              if (swift_dynamicCast())
              {
                v21 = v24;
                *&v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                *(&v25 + 1) = v15;
                AnyHashable.init<A>(_:)();
                if (*(v5 + 16) && (v16 = sub_100065FB4(v27), (v17 & 1) != 0))
                {
                  sub_100046784(*(v5 + 56) + 32 * v16, v28);
                  sub_100065FF8(v27);
                  if (swift_dynamicCast())
                  {

                    v18 = [v8 unsignedIntegerValue];
                    [v11 doubleValue];
                    v20 = v19;

                    *a1 = v18;
                    *(a1 + 8) = v20;
                    *(a1 + 16) = v21;
                    *(a1 + 32) = v26;
                    *(a1 + 48) = v25;
                    *(a1 + 64) = v26;
                    return;
                  }
                }

                else
                {
                  sub_100065FF8(v27);
                }
              }
            }

            else
            {
              sub_100065FF8(v27);
            }
          }
        }

        else
        {
          sub_100065FF8(v27);
        }
      }
    }

    else
    {
      sub_100065FF8(v27);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005B6A0()
{
  sub_1000497E4(0, &qword_10010A0C0, OS_os_log_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = OS_os_log.init(subsystem:category:)();
  qword_10010CEC0 = result;
  return result;
}

id sub_10005BA28(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t sub_10005BA90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

id sub_10005BAE0()
{
  v0 = [objc_allocWithZone(UITextView) init];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  sub_100041AA0(&qword_10010A0F0, &unk_1000C3090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C29F0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100041AA0(&qword_10010A0F8, &qword_1000C3520);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1000C29F0;
  *(v3 + 32) = UIFontWeightTrait;
  *(v3 + 40) = UIFontWeightBold;
  v4 = UIFontDescriptorTraitsAttribute;
  v5 = UIFontWeightTrait;
  v6 = sub_100076028(v3);
  swift_setDeallocating();
  sub_1000454C8(v3 + 32, &qword_10010A100, &qword_1000C30A0);
  *(inited + 64) = sub_100041AA0(&qword_10010A108, &qword_1000C30A8);
  *(inited + 40) = v6;
  sub_100076118(inited);
  swift_setDeallocating();
  sub_1000454C8(inited + 32, &qword_10010A110, qword_1000C30B0);
  type metadata accessor for AttributeName(0);
  sub_100068EF4(&qword_100109068, type metadata accessor for AttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v1 fontDescriptorByAddingAttributes:isa];

  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  [v0 setFont:v9];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  [v0 setTextColor:v11];

  v12 = v0;
  v13 = [v10 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setEditable:0];
  [v12 setScrollEnabled:0];
  v14 = [v12 textContainer];
  [v14 setLineFragmentPadding:0.0];

  [v12 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v15 = [v12 textContainer];
  [v15 setMaximumNumberOfLines:2];

  v16 = [v12 textContainer];
  [v16 setLineBreakMode:0];

  v17 = [v12 textContainer];
  [v17 setWidthTracksTextView:1];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v12;
}

id sub_10005BEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_itemIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView;
  *&v3[v7] = sub_10005BAE0();
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for FBAFeedbackTitleCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_10005C0BC();

  return v10;
}

id sub_10005C004(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_itemIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView;
  *&v1[v4] = sub_10005BAE0();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FBAFeedbackTitleCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10005C0BC();
  }

  return v6;
}

void sub_10005C0BC()
{
  [v0 setSelectionStyle:0];
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView];
  [v1 addSubview:v2];

  [v0 setSeparatorInset:{0.0, 0.0, 0.0, 1.79769313e308}];
  v23 = objc_opt_self();
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C2E70;
  v4 = [v2 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 layoutMarginsGuide];

  v7 = [v6 topAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(v3 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 layoutMarginsGuide];

  v12 = [v11 leadingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v3 + 40) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v0 contentView];
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 trailingAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v3 + 48) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:0.0];
  *(v3 + 56) = v22;
  sub_1000497E4(0, qword_100109D60, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

uint64_t sub_10005C4AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000605EC();
    v3 = v2;

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_10005C514(void *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a1;
    sub_1000605EC();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v11 = 0;
  }

  return v11 & 1;
}

id sub_10005C684(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005C6CC()
{
  v0 = objc_allocWithZone(type metadata accessor for FollowupDataSource());
  v0[qword_100109DE8] = 0;
  swift_unknownObjectWeakInit();
  return UITableViewDiffableDataSource.init(tableView:cellProvider:)();
}

uint64_t sub_10005C754()
{
  v1 = *v0;
  v2 = 0x74655320746F4ELL;
  v3 = 0x676E69736F6C43;
  v4 = 0x6F74207964616552;
  if (v1 != 4)
  {
    v4 = 0x697474696D627553;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E61656C43;
  if (v1 != 1)
  {
    v5 = 0x7974726944;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_10005C818(char a1)
{
  v2 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState;
  if (v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] == a1)
  {
    return;
  }

  static os_log_type_t.default.getter();
  v3 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_1000C29F0;
  v6 = v1[v2];
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = 0xE700000000000000;
      v8 = 0x676E69736F6C43;
    }

    else if (v6 == 4)
    {
      v7 = 0xEF74696D62755320;
      v8 = 0x6F74207964616552;
    }

    else
    {
      v7 = 0xEA0000000000676ELL;
      v8 = 0x697474696D627553;
    }
  }

  else if (v1[v2])
  {
    v7 = 0xE500000000000000;
    if (v6 == 1)
    {
      v8 = 0x6E61656C43;
    }

    else
    {
      v8 = 0x7974726944;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x74655320746F4ELL;
  }

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100047484();
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  v9 = v1[v2];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      [v1 setModalInPresentation:1];
      v17 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
      if (!v17)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      [v17 setEnabled:0];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v21 = [objc_opt_self() mainBundle];
      v39._object = 0xE000000000000000;
      v22._object = 0x80000001000CBF60;
      v22._countAndFlagsBits = 0xD000000000000010;
      v23.value._countAndFlagsBits = v18;
      v23.value._object = v20;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v39._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v39);

      v25 = String._bridgeToObjectiveC()();

      [v1 fbkShowSpinnerWithStatus:v25 userInteractionEnabled:0];

      v26 = [v1 navigationItem];
      v27 = [v26 leftBarButtonItem];
    }

    else
    {
      if (v9 == 4)
      {
        [v1 setModalInPresentation:1];
        v12 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
        if (!v12)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v13 = [v12 setEnabled:1];
        v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
        sub_10005CDE4(v13);
        [v1 fbkHideSpinner];
        v14 = [v1 navigationItem];
        v15 = [v14 leftBarButtonItem];
        goto LABEL_24;
      }

      [v1 setModalInPresentation:1];
      v28 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
      if (!v28)
      {
LABEL_38:
        __break(1u);
        return;
      }

      [v28 setEnabled:0];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      v32 = [objc_opt_self() mainBundle];
      v40._object = 0xE000000000000000;
      v33._countAndFlagsBits = 0x495454494D425553;
      v33._object = 0xEA0000000000474ELL;
      v34.value._countAndFlagsBits = v29;
      v34.value._object = v31;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v40._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v40);

      v36 = String._bridgeToObjectiveC()();

      [v1 fbkShowSpinnerWithStatus:v36 userInteractionEnabled:0];

      v26 = [v1 navigationItem];
      v27 = [v26 leftBarButtonItem];
    }

    v37 = v27;

    [v37 setEnabled:0];
    goto LABEL_31;
  }

  if (v9 < 2)
  {
    [v1 setModalInPresentation:0];
    v10 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
    if (v10)
    {
      [v10 setEnabled:0];
      v11 = [v1 navigationItem];
      v37 = [v11 leftBarButtonItem];

      if (!v37)
      {
        return;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_35;
  }

  [v1 setModalInPresentation:1];
  v16 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
  if (!v16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v16 setEnabled:0];
  v14 = [v1 navigationItem];
  v15 = [v14 leftBarButtonItem];
LABEL_24:
  v37 = v15;

LABEL_25:
  [v37 setEnabled:1];
LABEL_31:
}

void sub_10005CDE4()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState;
  v8 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState);
  if (v8 != 3)
  {
    if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting))
    {
      *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState) = 5;

      sub_10005C818(v8);
    }

    else
    {
      v9 = v0;
      v10 = v4;
      v11 = sub_100063AC4();
      sub_100081380();
      v13 = v12;
      v15 = v14;

      v21[0] = v13;
      v21[1] = v15;
      v16 = [objc_opt_self() whitespaceAndNewlineCharacterSet];
      static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100045528();
      StringProtocol.trimmingCharacters(in:)();
      (*(v2 + 8))(v6, v10);

      v17 = String.count.getter();

      if (sub_100065E38(v17 != 0))
      {
        v18 = *(v9 + v7);
        *(v9 + v7) = 4;
      }

      else
      {
        if (v17 || (v20 = *(v9 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController)) != 0 && ([v20 hasFilePromises] & 1) != 0 || *(v9 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice) != 2)
        {
          v18 = *(v9 + v7);
          v19 = 2;
        }

        else
        {
          v18 = *(v9 + v7);
          v19 = 1;
        }

        *(v9 + v7) = v19;
      }

      sub_10005C818(v18);
    }
  }
}

void sub_10005D090(void *a1)
{
  v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup;
  v4 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
  if (v4 && a1)
  {
    v15 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
    v14 = a1;
    v5 = v15;
    static os_log_type_t.fault.getter();
    v13 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000C2530;
    v7 = [v5 ID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 integerValue];

      *(v6 + 56) = &type metadata for Int;
      *(v6 + 64) = &protocol witness table for Int;
      *(v6 + 32) = v9;
      v10 = [v14 ID];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 integerValue];

        *(v6 + 96) = &type metadata for Int;
        *(v6 + 104) = &protocol witness table for Int;
        *(v6 + 72) = v12;
        os_log(_:dso:log:_:_:)();

        v4 = *(v1 + v3);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:
  *(v1 + v3) = a1;
}

id sub_10005D2A8()
{
  v1 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController;
  v2 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController);
  }

  else
  {
    v4 = type metadata accessor for FBAAddAttachmentsController();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    v6 = OBJC_IVAR____TtC18Feedback_Assistant27FBAAddAttachmentsController____lazy_storage___temporaryDirectory;
    v7 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
    (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
    swift_unknownObjectWeakAssign();
    v12.receiver = v5;
    v12.super_class = v4;
    v8 = objc_msgSendSuper2(&v12, "init");
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_10005D3B4()
{
  v1 = (v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText);
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText + 8);
  }

  else
  {
    v2 = sub_10005D430(v0);
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

id sub_10005D430(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited) == 1)
  {
    v1 = [objc_opt_self() mainBundle];
    v11._object = 0xE000000000000000;
    v2._object = 0x80000001000CC820;
    v2._countAndFlagsBits = 0xD00000000000001BLL;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v11)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v5 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
  if (!v5)
  {
    static os_log_type_t.error.getter();
    v10 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
    os_log(_:dso:log:_:_:)();
    return 0;
  }

  v6 = v5;
  result = [v6 displayText];
  if (result)
  {
    v8 = result;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

void sub_10005D634()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FBAFollowupResponseViewController();
  objc_msgSendSuper2(&v6, "awakeFromNib");
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentationController];
    if (v3)
    {
      v4 = v3;
      [v3 setDelegate:v0];
    }
  }

  else
  {
    v5 = [v0 presentationController];
    if (!v5)
    {
      return;
    }

    v2 = v5;
    [v5 setDelegate:v0];
  }
}

void sub_10005D740()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for FBAFollowupResponseViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v1;
  static os_log_type_t.info.getter();
  v5 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C2530;
  v7 = [v4 ID];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 unsignedLongLongValue];

    *(v6 + 56) = &type metadata for UInt64;
    *(v6 + 64) = &protocol witness table for UInt64;
    *(v6 + 32) = v9;
    v10 = [v3 ID];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 unsignedIntegerValue];

      *(v6 + 96) = &type metadata for UInt;
      *(v6 + 104) = &protocol witness table for UInt;
      *(v6 + 72) = v12;
      os_log(_:dso:log:_:_:)();

LABEL_6:
      sub_100063FF8();
      sub_100062F74();
      sub_100064778();
      sub_10005CDE4();
      sub_10006256C(0, 0, 0, 0, 0, 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10005D9EC()
{
  static os_log_type_t.info.getter();
  v1 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  os_log(_:dso:log:_:_:)();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for FBAFollowupResponseViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005DD18(void *a1)
{
  v3 = [a1 identifier];
  if (!v3)
  {
LABEL_7:
    static os_log_type_t.error.getter();
    v10 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000C29F0;
    v12 = [a1 identifier];
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

    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100047484();
    if (v16)
    {
      v28 = v14;
    }

    else
    {
      v28 = 0;
    }

    v29 = 0xE000000000000000;
    if (v16)
    {
      v29 = v16;
    }

    *(v11 + 32) = v28;
    *(v11 + 40) = v29;
    os_log(_:dso:log:_:_:)();
    goto LABEL_21;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000024 && 0x80000001000CC980 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v17 = [a1 destinationViewController];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18 && (v19 = [v18 topViewController]) != 0)
  {
    v20 = v19;
    type metadata accessor for FBAFFUDisplayTextViewController();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = sub_10005D3B4();
      v25 = v24;

      v26 = (v22 + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
      v27 = *(v22 + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText + 8);
      *v26 = v23;
      v26[1] = v25;

LABEL_21:
    }
  }

  else
  {
    v20 = v17;
  }

  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  v32 = [a1 identifier];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v35;
  }

  else
  {
    v34 = 0;
  }

  v36._countAndFlagsBits = v34;
  v36._object = v31;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0xD00000000000002DLL;
  v37._object = 0x80000001000CCA10;
  String.append(_:)(v37);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10005E0C0()
{
  v1 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = Strong;

  v4 = v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v4 != 1)
  {
LABEL_11:
    static os_log_type_t.default.getter();
    v19 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000C2530;
    v21 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
    if (v21)
    {
      v22 = [v21 ID];
      if (!v22)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v23 = v22;
      v24 = [v22 unsignedIntegerValue];

      v32 = &protocol witness table for UInt;
      v31 = &type metadata for UInt;
      *&v30 = v24;
      sub_100068C00(&v30, v20 + 32);
    }

    else
    {
      *(v20 + 56) = &type metadata for Int;
      *(v20 + 64) = &protocol witness table for Int;
      *(v20 + 32) = 0;
    }

    v25 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (v25)
    {
      v26 = [v25 ID];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 unsignedIntegerValue];

        *(v20 + 96) = &type metadata for UInt;
        *(v20 + 104) = &protocol witness table for UInt;
        *(v20 + 72) = v28;
        os_log(_:dso:log:_:_:)();

        v29 = v0;
        sub_1000670DC(v29, v29);

        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell];
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = v5;
  [v7 resignFirstResponder];

  static os_log_type_t.default.getter();
  v9 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C2530;
  v11 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (!v11)
  {
    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = 0;
    goto LABEL_8;
  }

  v12 = [v11 ID];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 unsignedIntegerValue];

    v32 = &protocol witness table for UInt;
    v31 = &type metadata for UInt;
    *&v30 = v14;
    sub_100068C00(&v30, v10 + 32);
LABEL_8:
    v15 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (!v15)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v16 = [v15 ID];
    if (!v16)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v17 = v16;
    v18 = [v16 unsignedIntegerValue];

    *(v10 + 96) = &type metadata for UInt;
    *(v10 + 104) = &protocol witness table for UInt;
    *(v10 + 72) = v18;
    os_log(_:dso:log:_:_:)();

    goto LABEL_11;
  }

LABEL_25:
  __break(1u);
}

void sub_10005E458(char a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 1;
  sub_10005CDE4();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  if (*&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup])
  {
    v5 = a2;
    sub_1000644F8();
    v20 = v5;
    sub_100066DCC(v20, v20, a1 & 1);
  }

  else if (a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] == 1)
  {
    v6 = a2;
    static os_log_type_t.default.getter();
    v7 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    os_log(_:dso:log:_:_:)();
    v8 = &v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v9 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v10 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler + 8];
    *v8 = sub_100068E5C;
    v8[1] = v4;

    sub_10004BA44(v9);
  }

  else
  {
    if (a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] == 1)
    {
      a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 1;
      v11 = objc_opt_self();
      v12 = a2;
      v13 = [v11 sharedInstance];
      v14 = *&v12[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
      if (v14)
      {
        v15 = v13;
        v16 = swift_allocObject();
        v16[2] = v12;
        v16[3] = sub_100068E5C;
        v16[4] = v4;
        aBlock[4] = sub_100069020;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000565DC;
        aBlock[3] = &unk_1000E1538;
        v17 = _Block_copy(aBlock);
        v18 = v12;
        v19 = v14;

        [v15 createUnsolicitedFeedbackFollowupForItem:v19 completion:v17];

        _Block_release(v17);

        return;
      }

      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_10005E754(void *a1, char a2)
{
  sub_1000644F8();
  v4 = a1;
  sub_100066DCC(v4, v4, a2);
}

void sub_10005E7F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  *(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup) = 0;
  if (!a1 || a2)
  {
    static os_log_type_t.error.getter();
    v14 = *(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
    os_log(_:dso:log:_:_:)();
    if (*(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting) == 1)
    {
      sub_10005F390();
    }
  }

  else
  {
    v7 = a1;
    sub_10005D090(a1);
    a4();
    v8 = (a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler);
    v9 = *(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler);
    if (v9)
    {
      v10 = v8[1];

      v9(v11);
      sub_10004BA44(v9);
      v12 = *v8;
      v13 = v8[1];
      *v8 = 0;
      v8[1] = 0;

      sub_10004BA44(v12);
    }
  }
}

uint64_t sub_10005E904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  static os_log_type_t.default.getter();
  v5 = *(a2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  os_log(_:dso:log:_:_:)();
  v6 = *(a2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v6)
  {
    [v6 gatherAllMissingRequirementsWithAnswers:0];
  }

  return a3(0);
}

uint64_t sub_10005EFDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  static os_log_type_t.error.getter();
  v10 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000C29F0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100047484();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  os_log(_:dso:log:_:_:)();

  result = swift_beginAccess();
  if (*(a5 + 24))
  {
    __break(1u);
  }

  else
  {
    [a4 endBackgroundTask:*(a5 + 16)];
    result = swift_beginAccess();
    *(a5 + 16) = UIBackgroundTaskInvalid;
    *(a5 + 24) = 0;
  }

  return result;
}

id sub_10005F11C(uint64_t a1, char *a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    v3 = *&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000C29F0;
    swift_errorRetain();
    sub_100041AA0(&qword_100109968, &unk_1000C3080);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100047484();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)();

    sub_10005F390();
  }

  static os_log_type_t.default.getter();
  v9 = *&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C29F0;
  result = *&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result ID];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = [result integerValue];

  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v12;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000642E4();
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() sharedInstance];
    [v15 deleteSession:v14];
  }

  return [a2 dismissViewControllerAnimated:1 completion:0];
}

void sub_10005F390()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v19._object = 0xE000000000000000;
  v3._object = 0x80000001000CC520;
  v3._countAndFlagsBits = 0xD000000000000015;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v19);

  v5 = [v1 mainBundle];
  v20._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000017;
  v6._object = 0x80000001000CC540;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v20);

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = [v1 mainBundle];
  v21._object = 0xE000000000000000;
  v12._countAndFlagsBits = 19279;
  v12._object = 0xE200000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v21);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v15 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100068CC4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100040DDC;
  aBlock[3] = &unk_1000E12E0;
  v16 = _Block_copy(aBlock);

  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v10 addAction:v17];
  [v0 presentViewController:v10 animated:1 completion:0];
}

void sub_10005F684()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    static os_log_type_t.default.getter();
    v2 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    os_log(_:dso:log:_:_:)();

    v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 1;
    v3 = v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState];
    v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 4;
    sub_10005C818(v3);
  }
}

void *sub_10005F750()
{
  v1 = v0;
  if (sub_1000612D0())
  {
    v2 = &FBKFeedbackFollowupResponseRoleComments;
  }

  else
  {
    v2 = &FBKFeedbackFollowupResponseRoleAdditionalInfo;
  }

  v3 = *v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = sub_100063AC4();
  sub_100081380();
  v9 = v8;
  v11 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100066A28(v9, v11, v4, v6, isUniquelyReferenced_nonNull_native);

  result = &_swiftEmptyDictionarySingleton;
  v14 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice);
  if (v14 != 2 && (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited) & 1) == 0 && *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup))
  {
    v15 = [*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup) type];
    if (v15 == 7 || v15 == 4)
    {
      if (v14)
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (v14)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_100066A28(v17, v18, v19, v21, v22);

      return &_swiftEmptyDictionarySingleton;
    }

    else
    {
      return &_swiftEmptyDictionarySingleton;
    }
  }

  return result;
}

void sub_10005F8DC()
{
  static os_log_type_t.default.getter();
  v1 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C2530;
  v3 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (v3)
  {
    v4 = [v3 ID];
    if (!v4)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v5 = v4;
    v6 = [v4 unsignedIntegerValue];

    v21 = &type metadata for UInt;
    v22 = &protocol witness table for UInt;
    *&v20 = v6;
    sub_100068C00(&v20, v2 + 32);
  }

  else
  {
    *(v2 + 56) = &type metadata for Int;
    *(v2 + 64) = &protocol witness table for Int;
    *(v2 + 32) = 0;
  }

  v7 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = [v7 ID];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = [v8 unsignedIntegerValue];

  *(v2 + 96) = &type metadata for UInt;
  *(v2 + 104) = &protocol witness table for UInt;
  *(v2 + 72) = v10;
  os_log(_:dso:log:_:_:)();

  if (v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] == 5)
  {
    return;
  }

  v11 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v13 = Strong;

  v14 = v13[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v14 == 1)
  {
    v15 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell];
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      [v17 resignFirstResponder];

      return;
    }

    goto LABEL_20;
  }

  if ([v0 isModalInPresentation])
  {
    v19 = sub_1000600B8();
    [v0 presentViewController:v19 animated:1 completion:0];
  }

  else
  {
    sub_10005FB8C();
  }
}

void sub_10005FB8C()
{
  static os_log_type_t.default.getter();
  v1 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C2530;
  v30 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup;
  v3 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (v3)
  {
    v4 = [v3 ID];
    if (!v4)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 unsignedIntegerValue];

    v33 = &type metadata for UInt;
    v34 = &protocol witness table for UInt;
    *&aBlock = v6;
    sub_100068C00(&aBlock, v2 + 32);
  }

  else
  {
    *(v2 + 56) = &type metadata for Int;
    *(v2 + 64) = &protocol witness table for Int;
    *(v2 + 32) = 0;
  }

  v7 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem;
  v8 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = [v8 ID];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v9 unsignedIntegerValue];

  *(v2 + 96) = &type metadata for UInt;
  *(v2 + 104) = &protocol witness table for UInt;
  *(v2 + 72) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState];
  v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 3;
  sub_10005C818(v12);
  [*&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] abortAllSessions];
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v1;
  if (v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] == 1)
  {
    v14 = *&v0[v30];
    if (v14)
    {
      v15 = objc_opt_self();
      v16 = v1;
      v17 = v0;
      v18 = v14;
      v19 = [v15 sharedInstance];
      v20 = *&v0[v7];
      if (v20)
      {
        v21 = v19;
        v22 = swift_allocObject();
        v22[2] = v17;
        v22[3] = sub_100068C58;
        v22[4] = v13;
        v34 = sub_100068CB8;
        v35 = v22;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v32 = sub_10005B208;
        v33 = &unk_1000E1268;
        v23 = _Block_copy(&aBlock);
        v24 = v17;
        v25 = v20;

        [v21 deleteUnsolicitedFollowup:v18 withFeedbackItem:v25 completion:v23];

        _Block_release(v23);

        return;
      }

      goto LABEL_16;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  v34 = sub_100068C60;
  v35 = v26;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v32 = sub_100088474;
  v33 = &unk_1000E1218;
  v27 = _Block_copy(&aBlock);
  v28 = v1;
  v29 = v0;

  [v29 dismissViewControllerAnimated:1 completion:v27];
  _Block_release(v27);
}

void sub_10005FF90(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_100068FEC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100088474;
  v7[3] = &unk_1000E12B8;
  v5 = _Block_copy(v7);
  v6 = a2;

  [a1 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
}

id sub_1000600B8()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v37._object = 0x80000001000CC390;
  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x80000001000CC330;
  v4._countAndFlagsBits = 0xD000000000000034;
  v4._object = 0x80000001000CC350;
  v37._countAndFlagsBits = 0xD000000000000045;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v37);

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:0 message:v5 preferredStyle:0];

  v7 = [v1 mainBundle];
  v38._object = 0x80000001000CC400;
  v8._countAndFlagsBits = 0x6574656C6544;
  v9._object = 0x80000001000CC3E0;
  v38._countAndFlagsBits = 0xD00000000000004ELL;
  v9._countAndFlagsBits = 0xD000000000000011;
  v8._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v7, v8, v38);

  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = v0;
  v12 = String._bridgeToObjectiveC()();

  v35 = sub_100068BDC;
  v36 = v10;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100040DDC;
  v34 = &unk_1000E1178;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:2 handler:v13];
  _Block_release(v13);

  [v6 addAction:v15];
  v16 = [v1 mainBundle];
  v39._object = 0xED00006E6F747475;
  v17._countAndFlagsBits = 0x4C45434E4143;
  v18._countAndFlagsBits = 0x6C65636E6143;
  v39._countAndFlagsBits = 0x62206C65636E6143;
  v17._object = 0xE600000000000000;
  v18._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v39);

  v19 = String._bridgeToObjectiveC()();

  v35 = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
  v36 = 0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100040DDC;
  v34 = &unk_1000E11A0;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];
  _Block_release(v20);

  [v6 addAction:v21];
  v22 = v6;
  v23 = [v22 presentationController];
  if (v23)
  {
    v24 = v23;
    v25 = [v11 navigationItem];
    v26 = [v25 leftBarButtonItem];

    [v24 setBarButtonItem:v26];
  }

  v27 = [v22 popoverPresentationController];

  if (v27)
  {
    v28 = [v11 navigationItem];
    v29 = [v28 leftBarButtonItem];

    [v27 setSourceItem:v29];
  }

  return v22;
}

uint64_t sub_10006057C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    static os_log_type_t.error.getter();
    v5 = *(a2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
    a1 = os_log(_:dso:log:_:_:)();
  }

  return a3(a1);
}

void sub_1000605EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource);
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      dispatch thunk of UITableViewDiffableDataSource.itemIdentifier(for:)();

      if (!v10)
      {
        goto LABEL_6;
      }

      v5 = String._bridgeToObjectiveC()();
      v6 = [v4 maybeAttachmentWithIdentifier:v5];

      if (v6)
      {

        if ([v4 canDeleteAttachment:v6])
        {
LABEL_6:

          return;
        }

        v8 = [v4 canCancelAttachmentCollection:v6];
      }

      else
      {
        v7 = String._bridgeToObjectiveC()();

        v6 = [v4 maybeDeviceWithIdentifier:v7];

        if (!v6)
        {
          goto LABEL_6;
        }

        v8 = [v4 canRemoveDevice:v6];
      }

      v9 = v8;

      if ((v9 & 1) == 0)
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10006087C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    static os_log_type_t.default.getter();
    v4 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
    v5 = *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000C29F0;
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = a1;
    v7 = v5;
    os_log(_:dso:log:_:_:)();

    if (a1)
    {
      if (a1 == 2)
      {
        v8 = v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice];
        v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 1;
        if (v8 != 2 && (v8 & 1) != 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (a1 != 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }

        v10 = v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice];
        v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 0;
        if (v10 != 2 && (v10 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      sub_10006256C(0, 0, 0, 0, 0, 0);
      sub_10005CDE4();
    }

    else
    {
      static os_log_type_t.debug.getter();
      v9 = *&v3[v4];
      os_log(_:dso:log:_:_:)();

      v3 = v9;
    }

LABEL_12:
  }
}

uint64_t sub_100060A74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100060BC0(char *a1)
{
  v2 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - v7;
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = [a1 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [v21 window];

  if (!v23)
  {
    v26 = v12;
    v25 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
    if (v25)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v24 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource;
  v25 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  if (!v25)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v25[qword_100109DE8])
  {
    v26 = v12;
LABEL_7:
    v27 = v25[qword_100109DE8];
    static os_log_type_t.debug.getter();
    v28 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    os_log(_:dso:log:_:_:)();
    sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
    v29 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = a1;
    *(v30 + 32) = 1;
    *(v30 + 40) = sub_100066348;
    *(v30 + 48) = v20;
    aBlock[4] = sub_100066354;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100088474;
    aBlock[3] = &unk_1000E0F98;
    v31 = _Block_copy(aBlock);
    v32 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100068EF4(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
    sub_100041AA0(&unk_100109980, &qword_1000C1B50);
    sub_100041AE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v26 + 8))(v15, v11);
    (*(v43 + 8))(v19, v44);
LABEL_12:

    return;
  }

  v25[qword_100109DE8] = 1;
  v33 = sub_100041AA0(&unk_10010A020, &qword_1000C3068);
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v35(v10, 1, 1, v33);
  v36 = v25;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v35(v8, 0, 1, v33);
  sub_100066370(v8, v10);
  v37 = *&a1[v24];
  if (!v37)
  {
    goto LABEL_16;
  }

  v38 = v42;
  sub_1000663E0(v10, v42);
  if ((*(v34 + 48))(v38, 1, v33) == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = v37;
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v34 + 8))(v38, v33);
  v40 = *&a1[v24];
  if (v40)
  {
    *(v40 + qword_100109DE8) = 0;
    sub_1000454C8(v10, &qword_10010A018, &unk_1000C3058);
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
}

void sub_1000611B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100063AC4();
    v3 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight];
    v4 = [v1 tableView];
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          [v8 frame];
          v11 = v10;

          [v7 fbkScrollTableToAvoidKeyboardInTableView:v5 keyboardHeight:v3 withPadding:v11];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1000612D0()
{
  v1 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments);
  if (v2 == 2)
  {
    if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited))
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v2 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
      if (v2)
      {
        LOBYTE(v2) = [v2 requiresComments];
      }
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

char *sub_10006133C(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  static os_log_type_t.debug.getter();
  v8 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000C29F0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100047484();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;

  os_log(_:dso:log:_:_:)();

  if (a3 == 0xD000000000000014 && 0x80000001000C2EC0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_100063C40();
  }

  if (qword_100109D10 == a3 && off_100109D18 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = v4;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:isa];

    v15 = v14;
    v16 = v12;
    a4 = sub_10006395C();
    [a4 separatorInset];
    v18 = v17;

    if (v15)
    {
      [v15 setSeparatorInset:{0.0, v18, 0.0, 0.0}];

      if (qword_100108DE0 != -1)
      {
        swift_once();
      }

      if (byte_10010CEB8 != 1)
      {
        return v15;
      }

      type metadata accessor for FBAAddAttachmentsCell();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        return v15;
      }

      v20 = v19;
      v15 = v15;
      v21 = v16;
      v22 = sub_10005D2A8();
      a4 = sub_10004F894(v21);

      v23 = *(v20 + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button);
      if (v23)
      {
        [v23 setMenu:a4];

        return v15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_64;
  }

  v24 = v4;
  v25 = sub_100063AC4();
  v27 = *&v25[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier];
  v26 = *&v25[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier + 8];

  if (v27 == a3 && v26 == a4)
  {

    goto LABEL_29;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_29:
    v30 = *&v24[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell];
    v31 = *&v24[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
    v32 = v31;
    v15 = v30;
    sub_100081234(v31);

    return v15;
  }

  if ((a3 != 0xD00000000000001ALL || 0x80000001000C2EA0 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v33._countAndFlagsBits = 0xD000000000000015;
    v33._object = 0x80000001000CC2E0;
    if (String.hasPrefix(_:)(v33))
    {
      v34 = [v24 tableView];
      if (v34)
      {
        v35 = v34;
        v36 = String._bridgeToObjectiveC()();
        v37 = IndexPath._bridgeToObjectiveC()().super.isa;
        a4 = [v35 dequeueReusableCellWithIdentifier:v36 forIndexPath:v37];

        type metadata accessor for FBAFFUValidationCell();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {
LABEL_66:

LABEL_71:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v15 = v38;
        v39 = v24[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice];
        *(v38 + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_choice) = v39;
        a4 = a4;
        sub_100086BEC(v39);
        v40 = *&v24[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
        if (v40)
        {
          v41 = v40;
          v42 = [v41 choiceText];
          if (!v42)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v43 = v42;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = &v15[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_validationQuery];
          v48 = *&v15[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_validationQuery + 8];
          *v47 = v44;
          v47[1] = v46;

          v49 = [v15 textLabel];
          if (v49)
          {
            v50 = v49;
            v51 = *v47;
            v52 = v47[1];

            v53 = String._bridgeToObjectiveC()();

            [v50 setText:v53];
          }
        }

        return v15;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v54 = *&v24[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    if (v54)
    {
      v55 = v54;
      v56 = String._bridgeToObjectiveC()();
      v57 = [v55 maybeDeviceWithIdentifier:v56];

      v58 = String._bridgeToObjectiveC()();
      v59 = [v55 maybeAttachmentWithIdentifier:v58];

      if (v57)
      {
        v60 = [objc_opt_self() reuseIdentifier];
        if (!v60)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = String._bridgeToObjectiveC()();
        }

        v61 = IndexPath._bridgeToObjectiveC()().super.isa;
        v62 = [a1 dequeueReusableCellWithIdentifier:v60 forIndexPath:v61];

        objc_opt_self();
        v63 = swift_dynamicCastObjCClass();
        if (v63)
        {
          v15 = v63;
          v64 = v62;
          [v15 updateWithDevice:v57];
          if (sub_100061CBC(a3, a4, 1852399949, 0xE400000000000000))
          {
            sub_100063F88();
          }

          else
          {
            sub_100063E10();
          }

          UITableViewCell.updateWithSeparatorSpacing(_:)();

LABEL_61:
          return v15;
        }

        goto LABEL_70;
      }

      if (v59)
      {
        v65 = [objc_opt_self() reuseIdentifier];
        if (!v65)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = String._bridgeToObjectiveC()();
        }

        v66 = IndexPath._bridgeToObjectiveC()().super.isa;
        v62 = [a1 dequeueReusableCellWithIdentifier:v65 forIndexPath:v66];

        objc_opt_self();
        v67 = swift_dynamicCastObjCClass();
        if (v67)
        {
          v15 = v67;
          v64 = v62;
          [v15 setShowsIcon:0];
          [v15 setAttachment:v59];
          v68 = sub_1000642E4();
          if (v68)
          {
            v69 = v68;
            if ([v59 state] == 8)
            {
              [v15 updateDeferredStateWith:v69];
            }
          }

          if (sub_100061CBC(a3, a4, 1852399949, 0xE400000000000000))
          {
            sub_100063F88();
          }

          else
          {
            sub_100063E10();
          }

          UITableViewCell.updateWithSeparatorSpacing(_:)();
          [v15 updateSuperviewToAttachmentLabelSpacing:sub_100063E10()];

          goto LABEL_61;
        }

LABEL_70:

        goto LABEL_71;
      }
    }

    _StringGuts.grow(_:)(41);

    v70._countAndFlagsBits = a3;
    v70._object = a4;
    String.append(_:)(v70);
    goto LABEL_71;
  }

  return sub_10006395C();
}

uint64_t sub_100061CBC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = sub_100041AA0(&unk_10010A020, &qword_1000C3068);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v27[-v13];
  v15 = *(v4 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource);
  if (v15)
  {
    v16 = v15;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    v28 = a3;
    v29 = a4;
    v17 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    (*(v10 + 8))(v14, v9);
    v18 = *(v17 + 16);
    if (v18)
    {
      a4 = 0;
      v19 = (v17 + 40);
      while (1)
      {
        v20 = *(v19 - 1);
        if (v20 == a1 && *v19 == a2)
        {
          break;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (v20)
        {
          break;
        }

        ++a4;
        v19 += 2;
        if (v18 == a4)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v26 = 0;
      v25 = 914;
      v20 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v28 = qword_100109D10;
    v29 = off_100109D18;
    __chkstk_darwin(v20);
    v25 = &v28;

    v22 = sub_100066D28(sub_100068B4C, &v27[-32], v17);
    v24 = v23;

    if (v24)
    {
      goto LABEL_16;
    }

    if (!__OFSUB__(v22, 1))
    {
      return v22 - 1 == a4;
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void *sub_100061F1C()
{
  v1 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSectionIdentifier:v2];

  v4 = [v3 givenRowIdentifiers];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100077778(0, *(v5 + 16) + 1, 1, v5);
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100077778((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 16 * v7;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x80000001000C2EC0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setGivenRowIdentifiers:isa];

  sub_10005D3B4();
  v10 = String.count.getter();

  if (v10 >= 1)
  {
    v11 = [v3 givenRowIdentifiers];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100077778(0, *(v12 + 16) + 1, 1, v12);
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_100077778((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 16) = v14 + 1;
    v15 = v12 + 16 * v14;
    *(v15 + 32) = 0xD00000000000001ALL;
    *(v15 + 40) = 0x80000001000C2EA0;
    v16 = Array._bridgeToObjectiveC()().super.isa;

    [v3 setGivenRowIdentifiers:v16];
  }

  if ((*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited) & 1) == 0)
  {
    v17 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
    if (v17)
    {
      v18 = [v17 type];
      if (v18 == 7 || v18 == 4)
      {
        v19 = sub_10005D578();
        v21 = v20;
        v22 = [v3 givenRowIdentifiers];
        v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100077778(0, *(v23 + 16) + 1, 1, v23);
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v54 = sub_100077778((v24 > 1), v25 + 1, 1, v23);
          v26 = v25 + 1;
          v23 = v54;
        }

        *(v23 + 16) = v26;
        v27 = v23 + 16 * v25;
        *(v27 + 32) = v19;
        *(v27 + 40) = v21;
        v28 = Array._bridgeToObjectiveC()().super.isa;

        [v3 setGivenRowIdentifiers:v28];
      }
    }
  }

  v29 = sub_100063AC4();
  v31 = *&v29[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier];
  v30 = *&v29[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier + 8];

  v32 = [v3 givenRowIdentifiers];
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_100077778(0, *(v33 + 16) + 1, 1, v33);
  }

  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_100077778((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 16) = v35 + 1;
  v36 = v33 + 16 * v35;
  *(v36 + 32) = v31;
  *(v36 + 40) = v30;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setGivenRowIdentifiers:v37];

  v38 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v38)
  {
    v39 = [v38 generateSnapshotIdentifiersTrackingLastDevice:1];
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = [v3 givenRowIdentifiers];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100074870(v40);
    v42 = Array._bridgeToObjectiveC()().super.isa;

    [v3 setGivenRowIdentifiers:v42];
  }

  v44 = qword_100109D10;
  v43 = off_100109D18;

  v45 = [v3 givenRowIdentifiers];
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_100077778(0, *(v46 + 16) + 1, 1, v46);
  }

  v48 = *(v46 + 16);
  v47 = *(v46 + 24);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_100077778((v47 > 1), v48 + 1, 1, v46);
  }

  *(v46 + 16) = v48 + 1;
  v49 = v46 + 16 * v48;
  *(v49 + 32) = v44;
  *(v49 + 40) = v43;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setGivenRowIdentifiers:v50];

  v51 = v3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v53 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return _swiftEmptyArrayStorage;
}

void sub_10006256C(int a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v80 = a5;
  v81 = a6;
  v82 = a1;
  v11 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v79 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v77 - v16;
  __chkstk_darwin(v15);
  v90 = &v77 - v18;
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v19 - 8);
  v20 = *(v91 + 64);
  __chkstk_darwin(v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v89 = *(v23 - 8);
  v24 = *(v89 + 64);
  __chkstk_darwin(v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  v27 = [v7 view];
  if (!v27)
  {
    goto LABEL_50;
  }

  v28 = v27;
  v29 = [v27 window];

  if (!v29)
  {
    v31 = v83;
    v30 = *&v83[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
    if (!v30)
    {
      goto LABEL_52;
    }

    goto LABEL_7;
  }

  v78 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource;
  v30 = *&v83[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  if (!v30)
  {
    goto LABEL_51;
  }

  if (v30[qword_100109DE8])
  {
    v31 = v83;
LABEL_7:
    v32 = v30[qword_100109DE8];
    static os_log_type_t.debug.getter();
    v33 = *&v31[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    os_log(_:dso:log:_:_:)();
    if (a4 <= 2)
    {
      sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
      v90 = static OS_dispatch_queue.main.getter();
      v34 = swift_allocObject();
      *(v34 + 16) = a4;
      *(v34 + 24) = v31;
      *(v34 + 32) = v82 & 1;
      v35 = v80;
      v36 = v81;
      *(v34 + 40) = v80;
      *(v34 + 48) = v36;
      v96 = sub_100069004;
      v97 = v34;
      aBlock = _NSConcreteStackBlock;
      v93 = 1107296256;
      v94 = sub_100088474;
      v95 = &unk_1000E1128;
      v37 = _Block_copy(&aBlock);
      v38 = v31;
      sub_10004374C(v35);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100068EF4(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
      sub_100041AA0(&unk_100109980, &qword_1000C1B50);
      sub_100041AE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v90;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v91 + 8))(v22, v19);
      (*(v89 + 8))(v26, v23);
    }

    return;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.info.getter();
    v40 = v83;
    v41 = *&v83[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000C2530;
    *(v42 + 56) = &type metadata for Bool;
    *(v42 + 64) = &protocol witness table for Bool;
    *(v42 + 32) = v82 & 1;
    *(v42 + 96) = &type metadata for Bool;
    *(v42 + 104) = &protocol witness table for Bool;
    *(v42 + 72) = a3 & 1;
    os_log(_:dso:log:_:_:)();

    v30 = *&v40[v78];
    if (!v30)
    {
      goto LABEL_56;
    }
  }

  v30[qword_100109DE8] = 1;
  v43 = sub_100041AA0(&unk_10010A020, &qword_1000C3068);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v46 = v90;
  v45(v90, 1, 1, v43);
  if (a3)
  {
    v47 = v30;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    v45(v17, 0, 1, v43);
    sub_100066370(v17, v46);
LABEL_39:
    v71 = v83;
    v73 = v78;
    v72 = v79;
    v74 = *&v83[v78];
    if (!v74)
    {
      goto LABEL_53;
    }

    sub_1000663E0(v46, v79);
    if ((*(v44 + 48))(v72, 1, v43) == 1)
    {
      goto LABEL_54;
    }

    v75 = v74;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v44 + 8))(v72, v43);
    v76 = *&v71[v73];
    if (!v76)
    {
      goto LABEL_55;
    }

    *(v76 + qword_100109DE8) = 0;
    sub_1000454C8(v46, &qword_10010A018, &unk_1000C3058);
    return;
  }

  NSDiffableDataSourceSnapshot.init()();
  v45(v17, 0, 1, v43);
  sub_100066370(v17, v46);
  v48 = v83;
  v49 = sub_100061F1C();
  v50 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  v51 = *(v48 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot);
  *(v48 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot) = v49;

  v52 = *(v48 + v50);
  v77 = v44;
  if (v52 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v54 = _swiftEmptyArrayStorage;
    v89 = v43;
    if (!i)
    {
      goto LABEL_25;
    }

    v91 = v50;
    aBlock = _swiftEmptyArrayStorage;

    sub_100077CEC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v55 = 0;
    v54 = aBlock;
    do
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v56 = *(v52 + 8 * v55 + 32);
      }

      v57 = v56;
      v58 = [v56 sectionIdentifier];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      aBlock = v54;
      v63 = v54[2];
      v62 = v54[3];
      if (v63 >= v62 >> 1)
      {
        sub_100077CEC((v62 > 1), v63 + 1, 1);
        v54 = aBlock;
      }

      ++v55;
      v54[2] = (v63 + 1);
      v64 = &v54[2 * v63];
      v64[4] = v59;
      v64[5] = v61;
    }

    while (i != v55);

    v48 = v83;
    v43 = v89;
    v46 = v90;
    v50 = v91;
LABEL_25:
    v87 = *(v77 + 48);
    v88 = v77 + 48;
    if (v87(v46, 1, v43) == 1)
    {
      goto LABEL_57;
    }

    NSDiffableDataSourceSnapshot.appendSections(_:)(v54);
    v48 = *(v48 + v50);
    if (v48 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v65 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v65)
    {
LABEL_38:

      v43 = v89;
      v46 = v90;
      v44 = v77;
      goto LABEL_39;
    }

    v50 = 0;
    v85 = v48 & 0xFFFFFFFFFFFFFF8;
    v86 = v48 & 0xC000000000000001;
    v84 = v54;
    while (1)
    {
      if (v86)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *(v85 + 16))
        {
          goto LABEL_45;
        }

        v66 = *(v48 + 8 * v50 + 32);
      }

      v67 = v66;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      v91 = v50 + 1;
      v68 = [v66 rowIdentifiers];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = [v67 sectionIdentifier];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v70;
      aBlock = v69;
      v93 = v70;
      v52 = v89;
      if (v87(v90, 1, v89) == 1)
      {
        goto LABEL_49;
      }

      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      ++v50;
      if (v91 == v65)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  __break(1u);
LABEL_49:
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
}

void sub_100062F74()
{
  v2 = v0;
  v3 = [v0 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v0 = v3;
  [v3 setEditing:0];

  v4 = [v2 tableView];
  if (!v4)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v5 = v4;
  v6 = sub_10005D2A8();
  [v5 setDropDelegate:v6];

  v7 = [objc_opt_self() reuseIdentifier];
  v8 = v7;
  v0 = v7;
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 mainBundle];
  v12 = objc_opt_self();
  v13 = [v12 nibWithNibName:v8 bundle:v11];

  v1 = v13;
  v14 = [v2 tableView];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  [v14 registerNib:v1 forCellReuseIdentifier:v0];

  v16 = [v9 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v12 nibWithNibName:v17 bundle:v16];

  v19 = v18;
  v20 = [v2 tableView];
  if (!v20)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  v22 = String._bridgeToObjectiveC()();
  [v21 registerNib:v19 forCellReuseIdentifier:v22];

  v23 = [objc_opt_self() reuseIdentifier];
  v24 = v23;
  v1 = v23;
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  sub_1000497E4(0, &qword_10010A038, NSBundle_ptr);
  v25 = v23;
  v26 = static NSBundle.feedbackCoreFramework.getter();
  v27 = [v12 nibWithNibName:v24 bundle:v26];

  sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000C29F0;
  v29 = v27;
  v30 = [v29 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  *(v28 + 56) = &type metadata for String;
  *(v28 + 32) = 0x62696E206C6C6543;
  *(v28 + 40) = 0xE900000000000020;
  print(_:separator:terminator:)();

  v35 = [v2 tableView];
  if (!v35)
  {
    goto LABEL_24;
  }

  v36 = v35;
  [v35 registerNib:v29 forCellReuseIdentifier:v1];

  v37 = [v9 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v12 nibWithNibName:v38 bundle:v37];

  v62 = v39;
  v40 = [v2 tableView];
  if (!v40)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v42 = String._bridgeToObjectiveC()();
  [v41 registerNib:v62 forCellReuseIdentifier:v42];

  v43 = [v2 tableView];
  if (!v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = v43;
  type metadata accessor for FBAAddAttachmentsCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v46 = String._bridgeToObjectiveC()();

  [v44 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v46];

  v47 = [v2 tableView];
  if (!v47)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = v47;
  type metadata accessor for FBAFeedbackTitleCell();
  v49 = swift_getObjCClassFromMetadata();
  v50 = String._bridgeToObjectiveC()();
  [v48 registerClass:v49 forCellReuseIdentifier:v50];

  v51 = [v2 tableView];
  if (!v51)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v52 = v51;
  [v51 setRowHeight:UITableViewAutomaticDimension];

  v53 = [v2 tableView];
  if (!v53)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v54 = v53;
  [v53 setEstimatedRowHeight:80.0];

  if (![v2 tableView])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v55 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(objc_allocWithZone(type metadata accessor for FollowupDataSource()) + qword_100109DE8) = 0;
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_100068A50;
  *(v56 + 24) = v55;
  v57 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v58 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = v57;
  v59 = v57;

  swift_unknownObjectWeakAssign();
  v60 = [v2 tableView];
  if (!v60)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v61 = v60;
  [v60 setDelegate:v2];
}

uint64_t sub_100063754(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_10006133C(a1, a2, a3, a4);

  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10 || (v10 = swift_dynamicCastObjCProtocolConditional()) != 0)
  {
    v11 = v10;
    v12 = v9;
    v13 = String._bridgeToObjectiveC()();
    [v11 setItemIdentifier:v13];

    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006397C(void *a1)
{
  v2 = [a1 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v1 = [v3 dequeueReusableCellWithIdentifier:v4];

  if (v1)
  {
    type metadata accessor for FBAFollowupDisplayTextCell();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
LABEL_8:

      goto LABEL_9;
    }

    v6 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_10005D3B4();
      v9 = String._bridgeToObjectiveC()();

      [v8 setText:v9];

      return v6;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100063AE4(void *a1)
{
  v2 = [a1 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v1 = [v3 dequeueReusableCellWithIdentifier:v4];

  if (v1)
  {
    type metadata accessor for FBAExpandingTextInputCell();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
LABEL_8:

      goto LABEL_9;
    }

    v6 = v5;
    *(v5 + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_delegate + 8) = &off_1000E0F00;
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [Strong setConstant:150.0];

      return v6;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100063C60(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_100063CC4(char *a1)
{
  v3 = [a1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v1 = [v4 dequeueReusableCellWithIdentifier:v5];

  if (v1)
  {
    type metadata accessor for FBAFeedbackTitleCell();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
LABEL_10:

      goto LABEL_11;
    }

    v7 = v6;
    v8 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (v8)
    {
      v9 = [v8 itemTitle];
      if (v9)
      {
        v10 = v9;
        [*(v7 + OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView) setText:v9];

        return v7;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_100063E10()
{
  v1 = &v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  if ((v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset + 8] & 1) == 0)
  {
    return *v1;
  }

  sub_100063E58(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_100063E58(void *a1)
{
  v2 = [a1 tableView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() reuseIdentifier];
    if (!v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();
    }

    v1 = [v3 dequeueReusableCellWithIdentifier:v4];

    if (!v1)
    {
      goto LABEL_9;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 spaceFromSuperViewToLabel];

      return;
    }
  }

  else
  {
    __break(1u);
  }

LABEL_9:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100063F88()
{
  v1 = (v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset);
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset + 8))
  {
    v2 = sub_100063AC4();
    [v2 separatorInset];
    v4 = v3;

    *v1 = v4;
    *(v1 + 8) = 0;
  }

  else
  {
    v5 = *v1;
  }
}

void sub_100063FF8()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode:2];

  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    [v4 setPrefersLargeTitles:0];
  }

  v5 = [v0 navigationItem];
  v6 = objc_allocWithZone(UIBarButtonItem);
  v7 = v0;
  v8 = [v6 initWithBarButtonSystemItem:1 target:v7 action:"userDidCancel"];
  [v5 setLeftBarButtonItem:v8];

  v9 = [v7 navigationItem];
  [v9 setTitle:0];

  v10 = [objc_opt_self() mainBundle];
  v23._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x425F54494D425553;
  v11._object = 0xED00004E4F545455;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v23);

  v13 = [objc_opt_self() systemImageNamed:FBKSystemImageNameSendArrowUp];
  v14 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v13 style:0 target:v7 action:"beginSubmission"];

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityLabel:v16];

  v17 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton;
  v18 = *&v7[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
  *&v7[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = v15;
  v19 = v15;

  v21 = [v7 navigationItem];
  v20 = *&v7[v17];
  [v21 setRightBarButtonItem:v20];
}

void *sub_1000642E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
  if (v1)
  {
    v2 = objc_opt_self();
    v16 = v1;
    v3 = [v2 sharedInstance];
    v4 = [v3 sessions];

    sub_1000497E4(0, &qword_10010A030, FBKEnhancedLoggingSessionInformation_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 followupID];
        v12 = [v16 ID];
        v13 = v12;
        if (!v11)
        {
          if (!v12)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }

        if (!v12)
        {
          v13 = v11;
LABEL_6:

          goto LABEL_7;
        }

        sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
LABEL_18:

          return v9;
        }

LABEL_7:

        ++v7;
        if (v10 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

void sub_1000644F8()
{
  v1 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController;
    v3 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    v20 = v1;
    if (v3)
    {
      static os_log_type_t.info.getter();
      v4 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      v6 = sub_1000642E4();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 deviceIdentifiers];

        v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = sub_1000821A0(v9);
        v12 = v11;

        if (v12)
        {
          sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000C29F0;
          *(inited + 32) = v10;
          v14 = inited + 32;
          *(inited + 40) = v12;
          v12 = sub_10007BDF8(inited);
          swift_setDeallocating();
          sub_1000689C4(v14);
        }
      }

      else
      {
        v12 = 0;
      }

      v15 = [objc_opt_self() sharedInstance];
      v16 = v0;
      if (v12)
      {
        v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v17.super.isa = 0;
      }

      v18 = [objc_allocWithZone(FBKDeviceDiagnosticsController) initWithDeviceManager:v15 delegate:v0 filerForm:v20 pendingFileUrls:0 pendingURLExtensions:0 draftDeviceIds:v17.super.isa];

      v19 = *&v0[v2];
      *&v0[v2] = v18;
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    v5 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];

    os_log(_:dso:log:_:_:)();
  }
}

void sub_100064778()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  os_log(_:dso:log:_:_:)();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v0 selector:"keyboardWillShowWithNotification:" name:UIKeyboardWillShowNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v0 selector:"keyboardWillHideWithNotification:" name:UIKeyboardWillHideNotification object:0];
}

id sub_100064A94(uint64_t a1)
{
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = 0;
  v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C2E80;
  v5 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSectionIdentifier:v6];

  *&v1[v3] = v4;
  *(v4 + 32) = v7;
  v8 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
  if (qword_100108DE8 != -1)
  {
    swift_once();
  }

  v9 = qword_10010CEC0;
  *&v1[v8] = qword_10010CEC0;
  v10 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText];
  *v10 = 0;
  v10[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 2;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_didAppear] = 0;
  v11 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
  *v11 = 0;
  v11[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments] = 2;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFollowupDisplayTextCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFeedbackTitleCell] = 0;
  v12 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset];
  *v13 = 0;
  v13[8] = 1;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for FBAFollowupResponseViewController();
  v14 = v9;
  return objc_msgSendSuper2(&v16, "initWithStyle:", a1);
}

id sub_100064D18(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = 0;
  v6 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C2E80;
  v8 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSectionIdentifier:v9];

  *&v3[v6] = v7;
  *(v7 + 32) = v10;
  v11 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
  if (qword_100108DE8 != -1)
  {
    swift_once();
  }

  v12 = qword_10010CEC0;
  *&v3[v11] = qword_10010CEC0;
  v13 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText];
  *v13 = 0;
  v13[1] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 2;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_didAppear] = 0;
  v14 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
  *v14 = 0;
  v14[1] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments] = 2;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFollowupDisplayTextCell] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFeedbackTitleCell] = 0;
  v15 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset];
  *v16 = 0;
  v16[8] = 1;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight] = 0;
  v17 = v12;
  if (a2)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = v3;
  v21.super_class = type metadata accessor for FBAFollowupResponseViewController();
  v19 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v18, a3);

  return v19;
}

id sub_10006501C(void *a1)
{
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = 0;
  v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C2E80;
  v5 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSectionIdentifier:v6];

  *&v1[v3] = v4;
  *(v4 + 32) = v7;
  v8 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
  if (qword_100108DE8 != -1)
  {
    swift_once();
  }

  v9 = qword_10010CEC0;
  *&v1[v8] = qword_10010CEC0;
  v10 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText];
  *v10 = 0;
  v10[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 2;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_didAppear] = 0;
  v11 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
  *v11 = 0;
  v11[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments] = 2;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFollowupDisplayTextCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFeedbackTitleCell] = 0;
  v12 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset];
  *v13 = 0;
  v13[8] = 1;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight] = 0;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for FBAFollowupResponseViewController();
  v14 = v9;
  v15 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);

  if (v15)
  {
  }

  return v15;
}

void sub_1000655D8(void *a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      static os_log_type_t.info.getter();
      v3 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
      os_log(_:dso:log:_:_:)();
      v4 = v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions];
      v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 1;
      if ((v4 & 1) == 0)
      {
        sub_10005CDE4();
      }

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v8 = [objc_opt_self() mainBundle];
      v18._object = 0xE000000000000000;
      v9._object = 0x80000001000CC100;
      v9._countAndFlagsBits = 0xD000000000000015;
      v10.value._countAndFlagsBits = v5;
      v10.value._object = v7;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v18);

      v16 = String._bridgeToObjectiveC()();
      goto LABEL_8;
    }

    if (a2 == 1)
    {
      goto LABEL_14;
    }

LABEL_21:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (a2 == 3)
  {
    static os_log_type_t.info.getter();
    v13 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    os_log(_:dso:log:_:_:)();
    v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 1;
    sub_10005CDE4();
    sub_1000658D4([a1 filesBeingAttachedCount]);
    v16 = String._bridgeToObjectiveC()();
LABEL_8:

    [v2 fbkShowSpinnerWithStatus:v16 userInteractionEnabled:1];

    return;
  }

  if (a2 != 2)
  {
    goto LABEL_21;
  }

LABEL_14:
  static os_log_type_t.info.getter();
  v14 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  os_log(_:dso:log:_:_:)();
  if ((v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] & 1) == 0)
  {
    [v2 fbkHideSpinner];
  }

  v15 = v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions];
  v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  if (v15 == 1)
  {
    sub_10005CDE4();
  }

  v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;

  sub_10005CDE4();
}

uint64_t sub_1000658D4(uint64_t a1)
{
  if (a1 < 1)
  {
    v12 = [objc_opt_self() mainBundle];
    v17._object = 0x80000001000CC130;
    v13._countAndFlagsBits = 0x5F474E4959504F43;
    v13._object = 0xED000053454C4946;
    v14._countAndFlagsBits = 0x6E69686361747441;
    v14._object = 0xEF73656C69662067;
    v17._countAndFlagsBits = 0xD000000000000053;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v17)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    v5 = [objc_opt_self() mainBundle];
    v16._object = 0xE000000000000000;
    v6._object = 0x80000001000CC190;
    v6._countAndFlagsBits = 0xD000000000000012;
    v7.value._countAndFlagsBits = v2;
    v7.value._object = v4;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v16);

    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000C29F0;
    *(v9 + 56) = &type metadata for Int;
    *(v9 + 64) = &protocol witness table for Int;
    *(v9 + 32) = a1;
    v10 = String.init(format:_:)();

    return v10;
  }
}

void sub_100065C60(uint64_t a1, void (*a2)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup))
    {
      static os_log_type_t.error.getter();
      v5 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
      os_log(_:dso:log:_:_:)();
    }

    sub_1000644F8();
    v6 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    v7 = v6;
    a2(v6);
  }
}

BOOL sub_100065E38(char a1)
{
  result = 0;
  if (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles) & 1) == 0 && ((sub_1000612D0() & 1) == 0 || (a1))
  {
    if (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited))
    {
      return 1;
    }

    v4 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
    if (!v4)
    {
      return 1;
    }

    v5 = [v4 type];
    v6 = v5 == 7 || v5 == 4;
    if (!v6 || *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice) != 2)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_100065F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000664E4(a1, a2, v6);
}

unint64_t sub_100065FB4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10006659C(a1, v4);
}

uint64_t type metadata accessor for FollowupDataSource()
{
  result = qword_100109E08;
  if (!qword_100109E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBAFollowupResponseViewController.ReadinessState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBAFollowupResponseViewController.ReadinessState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000662BC()
{
  result = qword_10010A010;
  if (!qword_10010A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A010);
  }

  return result;
}

uint64_t sub_100066310()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100066370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000663E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100066454(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100066664(a1, v4);
}

unint64_t sub_1000664E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10006659C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100068F44(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100065FF8(v8);
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

unint64_t sub_100066664(uint64_t a1, uint64_t a2)
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