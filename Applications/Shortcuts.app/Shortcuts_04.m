uint64_t sub_100066EB8()
{

  return String.LocalizationValue.init(stringLiteral:)();
}

uint64_t sub_100066ED0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656C67676F74;
  }

  else
  {
    v3 = 1852994932;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852994932;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100066F64(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000686374;
  v3 = 0x61576E4F776F6873;
  v4 = a1;
  v5 = 0x61576E4F776F6873;
  v6 = 0xEB00000000686374;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v6 = 0x80000001000C6C20;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x6E654D6E496E6970;
      v7 = 1918976629;
      goto LABEL_7;
    case 4:
      v5 = 0x6E65657263536E6FLL;
      v6 = 0xEF746E65746E6F43;
      break;
    case 5:
      v5 = 0x7463416B63697571;
      v7 = 1936617321;
LABEL_7:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v5 = 0x656857776F6C6C61;
      v6 = 0xEF64656B636F4C6ELL;
      break;
    default:
      v6 = 0x80000001000C6C00;
      v5 = 0xD000000000000017;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000010;
      v2 = 0x80000001000C6C20;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x6E654D6E496E6970;
      v8 = 1918976629;
      goto LABEL_15;
    case 4:
      v3 = 0x6E65657263536E6FLL;
      v2 = 0xEF746E65746E6F43;
      break;
    case 5:
      v3 = 0x7463416B63697571;
      v8 = 1936617321;
LABEL_15:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v3 = 0x656857776F6C6C61;
      v2 = 0xEF64656B636F4C6ELL;
      break;
    default:
      v2 = 0x80000001000C6C00;
      v3 = 0xD000000000000017;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

BOOL sub_100067198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_100067284(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_100005BC0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong *a3];
  }
}

void sub_1000672DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong deleteSelected:a3];
  }
}

void sub_100067340()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = String._bridgeToObjectiveC()();
    [v1 removeSelected:v2];
  }
}

unint64_t sub_1000673C8(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v2 = sub_100090460(v19, 0);
      sub_10006B55C(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = &_swiftEmptyArrayStorage;
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_100069B54(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_100069B54(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

UIMenu sub_1000675D4(uint64_t a1, UIMenuElementSize a2)
{
  preferredElementSize = a2;
  if (a2 >> 62)
  {
    sub_100002FC4(0, &qword_100100C30);

    v5 = _bridgeCocoaArray<A>(_:)();

    preferredElementSize = v5;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100002FC4(0, &qword_100100C30);
  }

  sub_100002FC4(0, &unk_100101F20);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7.value.super.isa = 0;
  v7.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v7, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v6);
}

id sub_1000676C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100002FC4(0, &qword_100100C30);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

void sub_1000677B4(char a1, char a2)
{
  v3 = v2;
  v6 = sub_10002E87C(&unk_100101EB0);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  if (a1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      dispatch thunk of LibraryDelegate.runningWorkflow.getter();
      swift_unknownObjectRelease();
      v10 = type metadata accessor for RunningWorkflow();
      if (sub_10000AB80(v9, 1, v10) != 1)
      {
        sub_1000171D4(v9, &unk_100101EB0);
        return;
      }
    }

    else
    {
      v11 = type metadata accessor for RunningWorkflow();
      sub_1000042A8(v9, 1, 1, v11);
    }

    sub_1000171D4(v9, &unk_100101EB0);
  }

  v12 = [v2 isEditing];
  v13 = sub_10000E968();
  [v13 setEditing:a1 & 1];

  v14 = type metadata accessor for LibraryViewController();
  v17.receiver = v3;
  v17.super_class = v14;
  objc_msgSendSuper2(&v17, "setEditing:animated:", a1 & 1, a2 & 1);
  if (v12 != (a1 & 1))
  {
    sub_1000296C4();
    sub_1000679E8((a1 & 1) == 0);
    v15 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView;
    [*&v3[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView] reloadData];
    sub_10000E8F4();
    type metadata accessor for LibraryDataSource();
    v16 = method lookup function for LibraryDataSource();
    v16(a1 & 1);
    sub_1000AA990();

    if ((a1 & 1) == 0)
    {
      [*&v3[v15] cancelInteractiveMovement];
      [v3 deselectAllCells];
    }

    sub_100067AC8();
  }
}

void sub_1000679E8(char a1)
{
  v2 = v1;
  v4 = [v1 tabBarController];
  if (v4)
  {
    v5 = v4;
    v6 = &selRef_showBarWithTransition_;
    if ((a1 & 1) == 0)
    {
      v6 = &selRef_hideBarWithTransition_;
    }

    [v4 *v6];
  }

  v7 = [v2 traitCollection];
  v8 = [v7 horizontalSizeClass];

  sub_1000128E8();
  if (v9)
  {
    v10 = v9;
    sub_1000138C8(a1 & 1, v8 != 1);
  }

  sub_1000116F8(a1 & 1, 0.0);
}

void sub_100067AC8()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v0 = String._bridgeToObjectiveC()();
    v1 = String._bridgeToObjectiveC()();
    v2 = sub_100005D9C(v0);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v2) = UIAccessibilityAnnouncementNotification;
    argument = String._bridgeToObjectiveC()();

    UIAccessibilityPostNotification(v2, argument);
  }
}

void sub_100067CB4(void *a1)
{
  v2 = sub_1000297CC();
  sub_10000D55C(v2);

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100005D9C(v3);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for LibraryViewController();
  objc_allocWithZone(UIBarButtonItem);
  v6 = a1;
  sub_100012930();
}

uint64_t sub_100067E58(uint64_t a1)
{
  sub_1000297CC(a1);
  sub_100067E94();
}

uint64_t sub_100067E94()
{
  sub_10000E8F4();
  sub_1000AA6C4();

  sub_100003BD0();
  dispatch thunk of MoveToFolderCoordinator.move(_:presentingViewController:)();
}

id sub_100067F40(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database);
  sub_1000297CC(a1);
  sub_100002FC4(0, &unk_100101E80);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();
  v9 = 0;
  v5 = [v2 removeReferences:isa fromCollectionWithIdentifier:v4 error:&v9];

  v6 = v9;
  if (v5)
  {

    return v6;
  }

  else
  {
    v8 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100068108(void *a1)
{
  v3 = sub_10002E87C(&qword_100100008);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_1000042A8(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v1;
  v8 = a1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;
  v10[5] = v8;
  sub_100084AEC();
}

uint64_t sub_10006821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTime();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v10;
  v5[23] = v9;

  return _swift_task_switch(sub_1000683D4, v10, v9);
}

uint64_t sub_1000683D4(uint64_t a1)
{
  v2 = v1[10];
  v3 = sub_1000297CC(a1);
  v1[24] = v3;
  sub_100003A00();
  v4 = swift_allocObject();
  v1[25] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v6 = swift_task_alloc();
  v1[26] = v6;
  v7 = type metadata accessor for LibraryViewController();
  v8 = sub_100015B40(&qword_1001025E0, type metadata accessor for LibraryViewController);
  *v6 = v1;
  v6[1] = sub_100068514;

  return LibraryOperations.deleteWorkflows(_:alertCustomizationBlock:)(v3, sub_10006BCE0, v4, v7, v8);
}

uint64_t sub_100068514(char a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_10006867C, v4, v3);
}

uint64_t sub_10006867C()
{
  v1 = *(v0 + 216);
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v18 = v0[15];
  v19 = v0[14];
  v14 = v0[13];
  v17 = v0[12];
  v16 = v0[11];
  v7 = v0[9];

  sub_100002FC4(0, &qword_1001001B8);
  v13 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v3 + 8);
  v15(v4, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  v0[6] = sub_10006BCE8;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100003190;
  v0[5] = &unk_1000F27B8;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100015B40(&qword_100102610, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002E87C(&qword_1001001C0);
  sub_100009624(&qword_100102620, &qword_1001001C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v9);

  (*(v17 + 8))(v14, v16);
  (*(v18 + 8))(v6, v19);
  v15(v2, v5);

  v11 = v0[1];

  return v11();
}

void sub_100068964(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() sourceWithBarButtonItem:a2];
  [a1 setPresentationSource:v3];
}

uint64_t sub_100068A48()
{
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v21 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - v12;
  sub_1000297CC(v11);
  type metadata accessor for LibraryViewController();
  sub_100015B40(&qword_1001025E0, type metadata accessor for LibraryViewController);
  LibraryOperations.duplicateWorkflows(_:completion:)();

  sub_100002FC4(0, &qword_1001001B8);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v7 + 8);
  v20(v10, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_10006BB18;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003190;
  aBlock[3] = &unk_1000F2718;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100015B40(&qword_100102610, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002E87C(&qword_1001001C0);
  sub_100009624(&qword_100102620, &qword_1001001C0);
  v18 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v25 + 8))(v2, v18);
  (*(v23 + 8))(v5, v24);
  return (v20)(v13, v21);
}

void sub_100068ED4()
{
  sub_1000043AC();
  v2 = sub_10002E87C(&unk_1000FF9E0);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  v5 = &v89 - v4;
  v105 = type metadata accessor for ShortcutsLibraryItem.ItemType();
  sub_100004458();
  v90 = v6;
  __chkstk_darwin(v7);
  sub_1000039BC();
  v104 = v9 - v8;
  sub_1000042F8();
  v106 = type metadata accessor for IndexPath();
  sub_100004458();
  v89 = v10;
  __chkstk_darwin(v11);
  sub_1000039BC();
  v107 = v13 - v12;
  v14 = sub_10002E87C(&unk_100102410);
  sub_100002EE0(v14);
  sub_100005B90();
  __chkstk_darwin(v15);
  v93 = &v89 - v16;
  sub_1000042F8();
  v17 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v97 = v18;
  __chkstk_darwin(v19);
  sub_1000039BC();
  v103 = (v21 - v20);
  sub_1000042F8();
  v22 = type metadata accessor for ShortcutsLibrarySection();
  sub_100004458();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_10000F1A8();
  v95 = v26;
  sub_10000667C();
  __chkstk_darwin(v27);
  v102 = &v89 - v28;
  v29 = sub_10002E87C(&qword_1001031C0);
  sub_100004458();
  v31 = v30;
  sub_100005B90();
  __chkstk_darwin(v32);
  sub_1000043E0();
  v91 = sub_10000E8F4();
  v94 = v0;
  v96 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___dataSource;

  dispatch thunk of LibraryDataSource.sortedSections.getter();

  v33 = OrderedDictionary.values.getter();
  (*(v31 + 8))(v1, v29);
  v34 = *(v33 + 16);
  v108 = v17;
  v100 = v22;
  v92 = v24;
  if (v34)
  {
    v36 = *(v24 + 16);
    v35 = v24 + 16;
    v101 = v36;
    sub_100003A3C();
    v38 = v33 + v37;
    v39 = *(v35 + 56);
    v98 = v33;
    v99 = v39;
    v40 = (v35 - 8);
    v41 = _swiftEmptyArrayStorage;
    while (1)
    {
      v42 = v102;
      v101(v102, v38, v22);
      v43 = ShortcutsLibrarySection.items.getter();
      (*v40)(v42, v22);
      v44 = *(v43 + 16);
      v45 = v41[2];
      if (__OFADD__(v45, v44))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v45 + v44 > v41[3] >> 1)
      {
        sub_10008D230();
        v41 = v46;
      }

      v22 = v100;
      if (*(v43 + 16))
      {
        if ((v41[3] >> 1) - v41[2] < v44)
        {
          goto LABEL_43;
        }

        swift_arrayInitWithCopy();

        if (v44)
        {
          v47 = v41[2];
          v48 = __OFADD__(v47, v44);
          v49 = v47 + v44;
          if (v48)
          {
            goto LABEL_44;
          }

          v41[2] = v49;
        }
      }

      else
      {

        if (v44)
        {
          goto LABEL_42;
        }
      }

      v38 += v99;
      if (!--v34)
      {

        v17 = v108;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v50 = v41[2];
  if (v50)
  {
    v109 = _swiftEmptyArrayStorage;
    sub_10001A19C(0, v50, 0);
    v51 = v109;
    v101 = *(v97 + 16);
    v102 = (v97 + 16);
    sub_100003A3C();
    v53 = v41 + v52;
    v55 = *(v54 + 56);
    v98 = (v54 - 8);
    v99 = v55;
    do
    {
      v56 = v103;
      v101(v103, v53, v17);
      v57 = ShortcutsLibraryItem.id.getter();
      v59 = v58;
      (*v98)(v56, v17);
      v109 = v51;
      v61 = v51[2];
      v60 = v51[3];
      if (v61 >= v60 >> 1)
      {
        v63 = sub_100005E38(v60);
        sub_10001A19C(v63, v61 + 1, 1);
        v51 = v109;
      }

      v51[2] = v61 + 1;
      v62 = &v51[2 * v61];
      v62[4] = v57;
      v62[5] = v59;
      v53 = v99 + v53;
      --v50;
      v17 = v108;
    }

    while (v50);
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  v64 = sub_1000850C0(v51);
  type metadata accessor for LibraryDataSource();
  v65 = method lookup function for LibraryDataSource();
  v65(v64);
  sub_1000AA7B8();

  v66 = v94;
  sub_10000F730();
  v67 = method lookup function for LibraryDataSource();

  LOBYTE(v67) = (v67)(v68);
  v69 = v66;

  v70 = v92;
  if ((v67 & 1) == 0)
  {
LABEL_40:
    sub_1000296C4();
    sub_100002EEC();
    return;
  }

  v71 = v69;
  sub_10000E8F4();
  v72 = sub_1000ABB60();

  if ((v72 & 0x8000000000000000) == 0)
  {
    v73 = v93;
    if (v72)
    {
      v74 = 0;
      v99 = (v70 + 32);
      v102 = (v90 + 88);
      v103 = (v97 + 8);
      LODWORD(v101) = enum case for ShortcutsLibraryItem.ItemType.workflow(_:);
      v75 = (v90 + 8);
      v76 = (v89 + 8);
      v97 = v70 + 8;
      v98 = v72;
      do
      {
        v77 = v69;

        sub_10001AB2C();

        v78 = v100;
        if (sub_10000AB80(v73, 1, v100) == 1)
        {
          sub_1000171D4(v73, &unk_100102410);
          v69 = v77;
        }

        else
        {
          (*v99)(v95, v73, v78);

          v79 = sub_1000ABA64();

          if (v79 < 0)
          {
            goto LABEL_45;
          }

          v80 = v107;
          if (v79)
          {
            for (i = 0; i != v79; ++i)
            {
              IndexPath.init(item:section:)();
              sub_10000E8F4();
              sub_10001ADD8();

              v82 = v108;
              if (sub_10000AB80(v5, 1, v108) == 1)
              {
                sub_1000171D4(v5, &unk_1000FF9E0);
              }

              else
              {
                v83 = v104;
                ShortcutsLibraryItem.itemType.getter();
                (*v103)(v5, v82);
                v84 = v105;
                v85 = (*v102)(v83, v105);
                v86 = v83;
                v80 = v107;
                (*v75)(v86, v84);
                if (v85 == v101)
                {
                  v87 = sub_10000E968();
                  isa = IndexPath._bridgeToObjectiveC()().super.isa;
                  [v87 selectItemAtIndexPath:isa animated:1 scrollPosition:0];

                  v80 = v107;
                }
              }

              (*v76)(v80, v106);
            }
          }

          (*v97)(v95, v100);
          v73 = v93;
          v69 = v94;
          v72 = v98;
        }

        ++v74;
      }

      while (v74 != v72);
    }

    goto LABEL_40;
  }

LABEL_46:
  __break(1u);
}

void sub_10006981C()
{
  sub_1000043AC();
  v2 = type metadata accessor for IndexPath();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  sub_1000043E0();
  sub_10000E8F4();
  type metadata accessor for LibraryDataSource();
  v6 = method lookup function for LibraryDataSource();
  v7 = v6(v27);
  v9 = v8;

  *v9 = &_swiftEmptySetSingleton;
  v7(v27, 0);
  sub_1000AA7B8();

  sub_10000F730();
  v10 = method lookup function for LibraryDataSource();

  LOBYTE(v10) = (v10)(v11);

  if (v10)
  {
    v12 = sub_10000E968();
    v13 = sub_100029A18(v12);
    if (v13)
    {
      v24 = v13;
      v14 = *(v13 + 16);
      if (v14)
      {
        v16 = *(v4 + 16);
        v15 = v4 + 16;
        v25 = v16;
        v26 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView;
        sub_100003A3C();
        v18 = v24 + v17;
        v19 = *(v15 + 56);
        do
        {
          v25(v1, v18, v2);
          v20 = *(v0 + v26);
          v21 = v2;
          v22 = v0;
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v20 deselectItemAtIndexPath:isa animated:1];

          v0 = v22;
          v2 = v21;
          (*(v15 - 8))(v1, v21);
          v18 += v19;
          --v14;
        }

        while (v14);
      }
    }
  }

  sub_1000296C4();
  sub_100002EEC();
}

uint64_t sub_100069AC8()
{
  swift_arrayDestroy();
  v0 = sub_100005BF0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100069B04()
{
  type metadata accessor for WFWorkflowTypeName(0);
  swift_arrayDestroy();
  v0 = sub_100005BF0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100069B54(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100069BB8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void sub_100069C58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_100002FC4(0, &qword_1001002C0);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10009044C(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_100069D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v36 = v19;
      v37 = a3;
      v34 = v21;
      v35 = v20;
      v22 = v19;
      do
      {
        v23 = v44;
        v24 = v42;
        v42(v44, v21, v8);
        v25 = v45;
        v24(v45, v22, v8);
        sub_100015B40(&qword_100100C38, &type metadata accessor for IndexPath);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        v27 = *v18;
        (*v18)(v25, v8);
        result = v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return result;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v28)(v22, v29, v8);
        v22 += v38;
        v21 += v38;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v37 + 1;
      v19 = v36 + v32;
      v20 = v35 - 1;
      v21 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10006A054(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v132 = &v116 - v12;
  v13 = __chkstk_darwin(v11);
  v138 = &v116 - v14;
  __chkstk_darwin(v13);
  v137 = &v116 - v16;
  v129 = v9;
  v130 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = &_swiftEmptyArrayStorage;
LABEL_99:
    v139 = *v119;
    if (!v139)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v109 = (v19 + 16);
      v110 = *(v19 + 16);
      while (v110 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_138;
        }

        v111 = a4;
        v112 = v19;
        v113 = (v19 + 16 * v110);
        v19 = *v113;
        a4 = &v109[2 * v110];
        v114 = *(a4 + 8);
        sub_10006AA90(&(*v130)[v9[9] * *v113], &(*v130)[v9[9] * *a4], &(*v130)[v9[9] * v114], v139);
        v9 = v111;
        if (v111)
        {
          break;
        }

        if (v114 < v19)
        {
          goto LABEL_126;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_127;
        }

        *v113 = v19;
        v113[1] = v114;
        v115 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_128;
        }

        v110 = *v109 - 1;
        memmove(a4, (a4 + 16), 16 * v115);
        *v109 = v110;
        a4 = 0;
        v9 = v129;
        v19 = v112;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v19 = sub_10006B000(v19);
    goto LABEL_101;
  }

  v117 = a4;
  v18 = 0;
  v135 = (v9 + 1);
  v136 = v9 + 2;
  v134 = (v9 + 4);
  v19 = &_swiftEmptyArrayStorage;
  v122 = v15;
  v139 = v8;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v121 = v18;
    if (v18 + 1 < v17)
    {
      v123 = v5;
      v118 = v19;
      v22 = v18;
      v23 = *v130;
      v24 = v9[9];
      a4 = &(*v130)[v24 * v21];
      v25 = v9[2];
      v128 = v18 + 1;
      v26 = v137;
      v131 = v17;
      v25(v137, a4, v8);
      v27 = &v23[v24 * v22];
      v28 = v8;
      v29 = v138;
      v126 = v25;
      v25(v138, v27, v28);
      v125 = sub_100015B40(&qword_100100C38, &type metadata accessor for IndexPath);
      LODWORD(v127) = dispatch thunk of static Comparable.< infix(_:_:)();
      v19 = v9[1];
      (v19)(v29, v28);
      v30 = v26;
      v21 = v128;
      v124 = v19;
      (v19)(v30, v28);
      v31 = v131;
      v32 = (v121 + 2);
      v133 = v24;
      v33 = &v23[v24 * (v121 + 2)];
      while (1)
      {
        v9 = v32;
        v34 = v21 + 1;
        if (v34 >= v31)
        {
          break;
        }

        v35 = v137;
        v36 = v139;
        v37 = v126;
        (v126)(v137, v33, v139);
        v38 = v34;
        v39 = v138;
        v37(v138, a4, v36);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v39;
        v21 = v38;
        v19 = v124;
        v124(v41, v36);
        (v19)(v35, v36);
        v31 = v131;
        v33 += v133;
        a4 += v133;
        v32 = (v9 + 1);
        if ((v127 & 1) != v40)
        {
          goto LABEL_9;
        }
      }

      v21 = v31;
LABEL_9:
      if (v127)
      {
        v20 = v121;
        if (v21 < v121)
        {
          goto LABEL_132;
        }

        if (v121 >= v21)
        {
          v9 = v129;
          v19 = v118;
          v8 = v139;
          v5 = v123;
        }

        else
        {
          if (v31 >= v9)
          {
            v42 = v9;
          }

          else
          {
            v42 = v31;
          }

          v43 = v133 * (v42 - 1);
          v44 = v133 * v42;
          v45 = v121 * v133;
          v46 = v21;
          v47 = v121;
          v5 = v123;
          do
          {
            if (v47 != --v46)
            {
              v123 = v5;
              v48 = *v130;
              if (!*v130)
              {
                goto LABEL_139;
              }

              a4 = &v48[v45];
              v49 = v139;
              v131 = *v134;
              (v131)(v122, &v48[v45], v139);
              v50 = v45 < v43 || a4 >= &v48[v44];
              if (v50)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v131)(&v48[v43], v122, v49);
              v5 = v123;
              v20 = v121;
            }

            ++v47;
            v43 -= v133;
            v44 -= v133;
            v45 += v133;
          }

          while (v47 < v46);
          v9 = v129;
          v19 = v118;
          v8 = v139;
        }
      }

      else
      {
        v9 = v129;
        v19 = v118;
        v8 = v139;
        v5 = v123;
        v20 = v121;
      }
    }

    v51 = v130[1];
    if (v21 < v51)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v117)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10008D048(0, *(v19 + 16) + 1, 1, v19);
      v19 = v107;
    }

    v68 = *(v19 + 16);
    v67 = *(v19 + 24);
    a4 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      sub_10008D048(v67 > 1, v68 + 1, 1, v19);
      v19 = v108;
    }

    *(v19 + 16) = a4;
    v69 = v19 + 32;
    v70 = (v19 + 32 + 16 * v68);
    *v70 = v20;
    v70[1] = v21;
    v133 = *v119;
    if (!v133)
    {
      goto LABEL_140;
    }

    v128 = v21;
    if (v68)
    {
      while (1)
      {
        v71 = a4 - 1;
        v72 = (v69 + 16 * (a4 - 1));
        v73 = (v19 + 16 * a4);
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v74 = *(v19 + 32);
          v75 = *(v19 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_67:
          if (v77)
          {
            goto LABEL_117;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_120;
          }

          v93 = v72[1];
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_125;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_82:
        if (v92)
        {
          goto LABEL_122;
        }

        v98 = *v72;
        v97 = v72[1];
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_124;
        }

        if (v99 < v91)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v71 - 1 >= a4)
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v130)
        {
          goto LABEL_137;
        }

        v103 = v19;
        v104 = (v69 + 16 * (v71 - 1));
        a4 = *v104;
        v105 = (v69 + 16 * v71);
        v19 = v105[1];
        sub_10006AA90(&(*v130)[v9[9] * *v104], &(*v130)[v9[9] * *v105], &(*v130)[v9[9] * v19], v133);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v19 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v103 + 16);
        if (v71 > v9)
        {
          goto LABEL_113;
        }

        *v104 = a4;
        v104[1] = v19;
        if (v71 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        memmove((v69 + 16 * v71), v105 + 2, 16 * (v9 - v71 - 1));
        v19 = v103;
        *(v103 + 16) = v9 - 1;
        v106 = v9 > 2;
        v9 = v129;
        if (!v106)
        {
          goto LABEL_96;
        }
      }

      v78 = v69 + 16 * a4;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_115;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_116;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_118;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_121;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = v72[1];
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_129;
        }

        if (v76 < v102)
        {
          v71 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v17 = v130[1];
    v18 = v128;
    v8 = v139;
    if (v128 >= v17)
    {
      goto LABEL_99;
    }
  }

  v52 = (v20 + v117);
  if (__OFADD__(v20, v117))
  {
    goto LABEL_133;
  }

  if (v52 >= v51)
  {
    v52 = v130[1];
  }

  if (v52 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v52)
  {
    goto LABEL_47;
  }

  v118 = v19;
  v123 = v5;
  v124 = v52;
  v53 = *v130;
  v54 = v9[9];
  v133 = v9[2];
  v55 = &v53[v54 * (v21 - 1)];
  v56 = -v54;
  v57 = (v20 - v21);
  v131 = v53;
  v120 = v54;
  a4 = &v53[v21 * v54];
LABEL_40:
  v127 = v55;
  v128 = v21;
  v125 = a4;
  v126 = v57;
  v58 = v55;
  while (1)
  {
    v59 = v137;
    v60 = v133;
    (v133)(v137, a4, v8);
    v61 = v138;
    v60(v138, v58, v139);
    sub_100015B40(&qword_100100C38, &type metadata accessor for IndexPath);
    v62 = dispatch thunk of static Comparable.< infix(_:_:)();
    v63 = *v135;
    v64 = v61;
    v8 = v139;
    (*v135)(v64, v139);
    v63(v59, v8);
    if ((v62 & 1) == 0)
    {
LABEL_45:
      v21 = v128 + 1;
      v55 = &v127[v120];
      v57 = v126 - 1;
      a4 = v125 + v120;
      if ((v128 + 1) == v124)
      {
        v21 = v124;
        v5 = v123;
        v9 = v129;
        v19 = v118;
        v20 = v121;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v131)
    {
      break;
    }

    v65 = *v134;
    v66 = v132;
    (*v134)(v132, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v65(v58, v66, v8);
    v58 += v56;
    a4 += v56;
    v50 = __CFADD__(v57++, 1);
    if (v50)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t sub_10006AA90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = a4;
  v7 = type metadata accessor for IndexPath();
  v8 = __chkstk_darwin(v7);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v60 = &v51 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v66 = a1;
  v65 = v63;
  v58 = (v11 + 8);
  v59 = (v11 + 16);
  v19 = v14;
  v20 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v35 = v63;
    sub_10008D70C(a2, v16 / v14, v63);
    v36 = v35 + v20 * v19;
    v37 = -v19;
    v38 = v36;
    v54 = -v19;
    v55 = a1;
LABEL_36:
    v56 = a2;
    v57 = a2 + v37;
    v39 = a3;
    v52 = v38;
    while (1)
    {
      if (v36 <= v63)
      {
        v66 = a2;
        v64 = v38;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v38;
      v62 = v39 + v37;
      v40 = v36 + v37;
      v41 = v36;
      v42 = v60;
      v43 = *v59;
      (*v59)(v60, v40, v7);
      v44 = v61;
      v43(v61, v57, v7);
      sub_100015B40(&qword_100100C38, &type metadata accessor for IndexPath);
      LOBYTE(v43) = dispatch thunk of static Comparable.< infix(_:_:)();
      v45 = *v58;
      (*v58)(v44, v7);
      v45(v42, v7);
      if (v43)
      {
        v36 = v41;
        a3 = v62;
        if (v39 < v56 || v62 >= v56)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v53;
          v37 = v54;
          a1 = v55;
        }

        else
        {
          v49 = v53;
          v37 = v54;
          v38 = v53;
          v15 = v39 == v56;
          v50 = v57;
          a2 = v57;
          a1 = v55;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v50;
            v38 = v49;
          }
        }

        goto LABEL_36;
      }

      v46 = v62;
      if (v39 < v41 || v62 >= v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v39 = v46;
        v36 = v40;
        v38 = v40;
        a1 = v55;
        a2 = v56;
        v37 = v54;
      }

      else
      {
        v38 = v40;
        v15 = v41 == v39;
        v39 = v62;
        v36 = v40;
        a1 = v55;
        a2 = v56;
        v37 = v54;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v39 = v46;
          v36 = v40;
          v38 = v40;
        }
      }
    }

    v66 = a2;
    v64 = v52;
  }

  else
  {
    v21 = v63;
    sub_10008D70C(a1, (a2 - a1) / v14, v63);
    v57 = v21 + v18 * v19;
    v64 = v57;
    v22 = v19;
    v62 = a3;
    while (v63 < v57 && a2 < a3)
    {
      v24 = a1;
      v25 = v60;
      v26 = *v59;
      (*v59)(v60, a2, v7);
      v27 = a2;
      v28 = v61;
      v26(v61, v63, v7);
      sub_100015B40(&qword_100100C38, &type metadata accessor for IndexPath);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      v30 = *v58;
      (*v58)(v28, v7);
      v30(v25, v7);
      if (v29)
      {
        a2 = v27 + v22;
        v31 = v24;
        if (v24 < v27 || v24 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v62;
        }

        else
        {
          a3 = v62;
          if (v24 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v33 = v63 + v22;
        v31 = v24;
        if (v24 < v63 || v24 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v27;
          a3 = v62;
        }

        else
        {
          a3 = v62;
          a2 = v27;
          if (v24 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v33;
        v63 = v33;
      }

      a1 = v31 + v22;
      v66 = a1;
    }
  }

LABEL_58:
  sub_10006B014(&v66, &v65, &v64);
  return 1;
}

uint64_t sub_10006B014(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10006B0F4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_10006B120(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002E87C(&unk_100101EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_10006B2C8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_1000060D8();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_10002E87C(&qword_100100C90);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_12:
        sub_10002CE5C((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_10002E87C(&qword_100100C98);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    sub_100011894();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_10006B47C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B4E0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_100002FC4(0, &qword_1001002C0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10006B55C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10000D55C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100002FC4(0, &qword_1001002C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100009624(&qword_100100C50, &qword_100100C48);
        for (i = 0; i != v7; ++i)
        {
          sub_10002E87C(&qword_100100C48);
          v9 = sub_10006B96C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10006B6F4()
{
  sub_10000A8B4();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_10000D55C(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    sub_100002FC4(0, &qword_1000FFFA8);
    sub_100012B1C();
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v24 = v6;
  sub_10001C8B4(&qword_100100180);
  do
  {
    v7 = sub_100011DAC();
    v8 = sub_10002E87C(v7);
    v16 = sub_10006BD5C(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
    v19 = sub_10006B9E0(v16, v17, v18);
    v21 = *v20;
    (v19)(v25, 0);
    sub_10000E8E0();
  }

  while (!v22);
}

void sub_10006B830()
{
  sub_10000A8B4();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_10000D55C(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    sub_100002FC4(0, &qword_1001000C0);
    sub_100012B1C();
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v24 = v6;
  sub_10001C8B4(&qword_100100208);
  do
  {
    v7 = sub_100011DAC();
    v8 = sub_10002E87C(v7);
    v16 = sub_10006BD5C(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
    v19 = sub_10006B9E0(v16, v17, v18);
    v21 = *v20;
    (v19)(v25, 0);
    sub_10000E8E0();
  }

  while (!v22);
}

void (*sub_10006B96C(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = sub_100003F30(a1, a2, a3);
  sub_100066898(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v10;
  return sub_10006B9D8;
}

void (*sub_10006B9E0(uint64_t a1, uint64_t a2, uint64_t a3))(id *)
{
  v7 = sub_100003F30(a1, a2, a3);
  sub_100066898(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v10;
  return sub_10006BD2C;
}

uint64_t sub_10006BA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_100100010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006BB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006BBEC;

  return sub_10006821C(a1, v4, v5, v7, v6);
}

uint64_t sub_10006BBEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_10006BCE8()
{
  if (*(v0 + 16) == 1)
  {
    return sub_100013370(*(v0 + 24), "setEditing:animated:", 0);
  }

  return result;
}

id sub_10006BD44()
{
  v3 = *(v1 + 392);

  return [v0 v3];
}

uint64_t sub_10006BD74(char a1)
{
  v3 = sub_10002E87C(&unk_1000FF9E0);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  v46 = &v43 - v5;
  v47 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v44 = v6;
  __chkstk_darwin(v7);
  sub_1000039BC();
  v45 = v9 - v8;
  type metadata accessor for RunningWorkflow.WorkflowType();
  sub_100004458();
  v48 = v11;
  v49 = v10;
  __chkstk_darwin(v10);
  sub_1000039BC();
  v14 = (v13 - v12);
  v15 = sub_10002E87C(&unk_100101EB0);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  type metadata accessor for RunningWorkflow();
  sub_100004458();
  v51 = v20;
  v52 = v19;
  __chkstk_darwin(v19);
  sub_1000039BC();
  v50 = v22 - v21;
  if ([v1 isEditing])
  {
    [v1 setEditing:0 animated:1];
  }

  sub_100013B1C();
  v23 = sub_10000E968();
  v24 = [v23 visibleCells];

  sub_100002FC4(0, &qword_1000FF9C0);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000D55C(v25);
  if (result)
  {
    v27 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v27; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v25 + 8 * i + 32);
      }

      v30 = v29;
      type metadata accessor for LibraryCell();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        sub_100027CB0(v31, a1 & 1, 0, 1);
      }
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    dispatch thunk of LibraryDelegate.runningWorkflow.getter();
    swift_unknownObjectRelease();
    v32 = v52;
    if (sub_10000AB80(v18, 1, v52) != 1)
    {
      v34 = v50;
      v33 = v51;
      (*(v51 + 32))(v50, v18, v32);
      RunningWorkflow.workflowType.getter();
      v36 = v48;
      v35 = v49;
      if ((*(v48 + 88))(v14, v49) != enum case for RunningWorkflow.WorkflowType.reference(_:))
      {
        (*(v33 + 8))(v34, v32);
        return (*(v36 + 8))(v14, v35);
      }

      (*(v36 + 96))(v14, v35);
      v37 = *v14;
      sub_10000E8F4();
      v38 = v46;
      dispatch thunk of LibraryDataSource.libraryItem(for:)();

      v39 = v47;
      if (sub_10000AB80(v38, 1, v47) != 1)
      {
        v42 = v44;
        (*(v44 + 32))(v45, v38, v39);
        ShortcutsLibraryItem.nameIconViewModel.getter();
        type metadata accessor for NameIconView.Model();
        sub_10006C4E0();
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();

        dispatch thunk of NameIconView.Model.progress.getter();
        RunningWorkflow.progress.getter();
        dispatch thunk of ShortcutChiclet.Progress.apply(value:cancelled:)();

        (*(v42 + 8))(v45, v39);
        return (*(v33 + 8))(v34, v32);
      }

      (*(v33 + 8))(v34, v32);

      v40 = &unk_1000FF9E0;
      v41 = v38;
      return sub_1000171D4(v41, v40);
    }
  }

  else
  {
    sub_1000042A8(v18, 1, 1, v52);
  }

  v40 = &unk_100101EB0;
  v41 = v18;
  return sub_1000171D4(v41, v40);
}

uint64_t sub_10006C300(void *a1)
{
  v2 = sub_10002E87C(&unk_100101EB0);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for RunningWorkflow();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v12 = v11 - v10;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_1000042A8(v5, 1, 1, v6);
    goto LABEL_6;
  }

  swift_getObjectType();
  dispatch thunk of LibraryDelegate.runningWorkflow.getter();
  swift_unknownObjectRelease();
  if (sub_10000AB80(v5, 1, v6) == 1)
  {
LABEL_6:
    sub_1000171D4(v5, &unk_100101EB0);
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v12, v5, v6);
  if (!a1)
  {
    (*(v8 + 8))(v12, v6);
    goto LABEL_7;
  }

  v13 = a1;
  v14 = RunningWorkflow.matchesReference(_:)();

  (*(v8 + 8))(v12, v6);
  return v14 & 1;
}

unint64_t sub_10006C4E0()
{
  result = qword_100100CA0;
  if (!qword_100100CA0)
  {
    type metadata accessor for NameIconView.Model();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100CA0);
  }

  return result;
}

id sub_10006C538()
{
  v0 = type metadata accessor for Date();
  sub_100004458();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 syncShortcutsUserDefaults];
  v8 = WFSyncUnavailableMessageCountKey;
  v9 = [v7 integerForKey:WFSyncUnavailableMessageCountKey];

  result = [v6 syncShortcutsUserDefaults];
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    [result setInteger:v9 + 1 forKey:v8];

    v12 = [v6 syncShortcutsUserDefaults];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v5, v0);
    [v12 setObject:isa forKey:WFSyncUnavailableMessageDateKey];

    v14 = [v6 syncShortcutsUserDefaults];
    [v14 setBool:1 forKey:WFSyncUnavailableMessageDismissedByUserKey];

    sub_10000E8F4();
    sub_100010CE4();
  }

  return result;
}

void sub_10006C72C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_hostingView;
  v2 = *&v0[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_hostingView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

id sub_10006C7E4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_hostingView] = 0;
  *&v4[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_layoutConstraints] = _swiftEmptyArrayStorage;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10006C890(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_hostingView] = 0;
  *&v1[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_layoutConstraints] = _swiftEmptyArrayStorage;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10006C944()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10002E87C(&qword_100100CF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &__src[-v8];
  v10 = sub_10002E87C(&qword_100100CF8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &__src[-v12];
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = sub_10002E87C(&qword_100100D00);
  sub_10006CC68(a1, a2, &v9[*(v14 + 44)]);
  v15 = static Edge.Set.all.getter();
  v16 = &v9[*(v7 + 44)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10006D554(v9, v13, &qword_100100CF0);
  memcpy(&v13[*(v11 + 44)], __src, 0x70uLL);
  v17 = (a3 + *(sub_10002E87C(&qword_100100D08) + 36));
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_100003EC8();
  (*(v20 + 104))(&v17[v18], v19);
  __asm { FMOV            V0.2D, #15.0 }

  *v17 = _Q0;
  v26 = sub_10002E87C(&qword_100100D10);
  *&v17[*(v26 + 52)] = 1;
  *&v17[*(v26 + 56)] = 256;
  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = &v17[*(sub_10002E87C(&qword_100100D18) + 36)];
  *v30 = v27;
  v30[1] = v29;
  return sub_10006D554(v13, a3, &qword_100100CF8);
}

uint64_t sub_10006CC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_10002E87C(&qword_100100D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_10002E87C(&qword_100100D28);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10002E87C(&qword_100100D30);
  sub_10006CF64(a1, a2, &v13[*(v14 + 44)]);
  sub_100041FA8();
  v15 = type metadata accessor for Font.Design();
  sub_1000042A8(v7, 1, 1, v15);
  static Font.system(size:weight:design:)();
  sub_1000069B0(v7, &qword_100100D20);
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  v34 = static HierarchicalShapeStyle.secondary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  LOBYTE(a1) = v24;
  v26 = v25;
  sub_10002072C(v16, v18, v20 & 1);

  sub_10006D674(v13, v11, &qword_100100D28);
  v27 = v33;
  sub_10006D674(v11, v33, &qword_100100D28);
  v28 = sub_10002E87C(&qword_100100D38);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v27 + *(v28 + 64);
  *v30 = v21;
  *(v30 + 8) = v23;
  *(v30 + 16) = a1 & 1;
  *(v30 + 24) = v26;
  sub_10006D5A4(v21, v23, a1 & 1);

  sub_1000069B0(v13, &qword_100100D28);
  sub_10002072C(v21, v23, a1 & 1);

  return sub_1000069B0(v11, &qword_100100D28);
}

uint64_t sub_10006CF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v38 = sub_10002E87C(&qword_100100D40) - 8;
  v4 = __chkstk_darwin(v38);
  v37 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v33[-v6];
  v8 = sub_10002E87C(&qword_100100D20);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-v9];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = sub_100005D9C(v11);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v39 = v14;
  v40 = v16;
  sub_1000200D8();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v14) = v20;
  static Font.Weight.semibold.getter();
  v21 = type metadata accessor for Font.Design();
  sub_1000042A8(v10, 1, 1, v21);
  static Font.system(size:weight:design:)();
  sub_1000069B0(v10, &qword_100100D20);
  v22 = Text.font(_:)();
  v24 = v23;
  v34 = v25;
  v27 = v26;

  sub_10002072C(v17, v19, v14 & 1);

  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 16) = v35;
  *(v28 + 24) = v29;
  swift_unknownObjectRetain();
  sub_10002E87C(&qword_100100D48);
  sub_10006D5BC();
  Button.init(action:label:)();
  v30 = v37;
  *&v7[*(v38 + 44)] = xmmword_1000C40A0;
  sub_10006D674(v7, v30, &qword_100100D40);
  *a3 = v22;
  *(a3 + 8) = v24;
  LOBYTE(v14) = v34 & 1;
  *(a3 + 16) = v34 & 1;
  *(a3 + 24) = v27;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v31 = sub_10002E87C(&qword_100100D78);
  sub_10006D674(v30, a3 + *(v31 + 64), &qword_100100D40);
  sub_10006D5A4(v22, v24, v14);

  sub_1000069B0(v7, &qword_100100D40);
  sub_1000069B0(v30, &qword_100100D40);
  sub_10002072C(v22, v24, v14);
}

id sub_10006D304(id result)
{
  if (result)
  {
    return sub_10006C538();
  }

  return result;
}

uint64_t sub_10006D330@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002E87C(&qword_100100D20);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = Image.init(systemName:)();
  static Font.Weight.semibold.getter();
  v6 = type metadata accessor for Font.Design();
  sub_1000042A8(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_1000069B0(v4, &qword_100100D20);
  KeyPath = swift_getKeyPath();
  v9 = [objc_opt_self() systemGray2Color];
  v10 = Color.init(uiColor:)();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = result;
  a1[4] = v10;
  return result;
}

_OWORD *sub_10006D474(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10006D484(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006D4D8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10006D554(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000137E4(a1, a2, a3);
  sub_100003EC8();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_10006D5A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10006D5BC()
{
  result = qword_100100D50;
  if (!qword_100100D50)
  {
    sub_100041CB4(&qword_100100D48);
    sub_1000212A0();
    sub_100009624(&qword_100100D68, &qword_100100D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100D50);
  }

  return result;
}

uint64_t sub_10006D674(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000137E4(a1, a2, a3);
  sub_100003EC8();
  (*(v5 + 16))(v3, v4);
  return v3;
}

unint64_t sub_10006D6C4()
{
  result = qword_100100D80;
  if (!qword_100100D80)
  {
    sub_100041CB4(&qword_100100D08);
    sub_10006D77C();
    sub_100009624(&qword_100100DA8, &qword_100100D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100D80);
  }

  return result;
}

unint64_t sub_10006D77C()
{
  result = qword_100100D88;
  if (!qword_100100D88)
  {
    sub_100041CB4(&qword_100100CF8);
    sub_10006D808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100D88);
  }

  return result;
}

unint64_t sub_10006D808()
{
  result = qword_100100D90;
  if (!qword_100100D90)
  {
    sub_100041CB4(&qword_100100CF0);
    sub_100009624(&qword_100100D98, &qword_100100DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100D90);
  }

  return result;
}

void sub_10006D8C0(uint64_t a1, NSObject *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = 0;
  v21 = a1 & 0xC000000000000001;
  v22 = sub_10000D55C(a1);
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  while (1)
  {
    if (v22 == v10)
    {

      return;
    }

    if (v21)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v19 + 16))
      {
        goto LABEL_13;
      }

      v11 = *(v20 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    dispatch_group_enter(a2);
    sub_100002FC4(0, &unk_100101E80);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a4;
    v14[4] = a5;
    aBlock[4] = sub_10007480C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100074D2C;
    aBlock[3] = &unk_1000F2BB0;
    v15 = _Block_copy(aBlock);
    v16 = a2;
    v17 = a4;

    v18 = [v12 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v15];
    _Block_release(v15);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v10;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t property wrapper backing initializer of LibraryTable.dataSource()
{
  type metadata accessor for LibraryDataSource();
  sub_1000044E4();
  sub_100073904(v0, v1);
  sub_100005BCC();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t LibraryTable.dataSource.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t LibraryTable.$dataSource.getter()
{
  type metadata accessor for LibraryDataSource();
  sub_1000044E4();
  sub_100073904(v0, v1);
  sub_100005BCC();

  return ObservedObject.projectedValue.getter();
}

uint64_t property wrapper backing initializer of LibraryTable.selectedAutoShortcut()
{
  sub_10002E87C(&unk_100102640);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t LibraryTable.init(dataSource:database:libraryDelegate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  swift_unknownObjectWeakInit();
  sub_10002E87C(&unk_100102640);
  State.init(wrappedValue:)();
  *(a3 + 40) = v10;
  *(a3 + 56) = 0x403A000000000000;
  type metadata accessor for LibraryDataSource();
  sub_1000044E4();
  sub_100073904(v6, v7);
  *a3 = ObservedObject.init(wrappedValue:)();
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t LibraryTable.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  sub_10006E7C8(v1, v5);
  v3 = swift_allocObject();
  result = sub_10006E800(v5, v3 + 16);
  *a1 = sub_10006E838;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006DDC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a2;
  v41 = sub_10002E87C(&qword_100100FB8);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = v37 - v3;
  v40 = sub_10002E87C(&qword_100100FC0);
  __chkstk_darwin(v40);
  v39 = v37 - v4;
  v46 = sub_10002E87C(&qword_100100FC8);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v37 - v5;
  v47 = sub_10002E87C(&qword_100100FD0);
  __chkstk_darwin(v47);
  v45 = v37 - v6;
  v50 = sub_10002E87C(&qword_100100FD8);
  __chkstk_darwin(v50);
  v49 = v37 - v7;
  v8 = *(a1 + 8);
  type metadata accessor for LibraryDataSource();
  sub_100073904(&qword_100100DB0, &type metadata accessor for LibraryDataSource);
  v44 = v8;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v37[3] = *(&v55 + 1);
  v37[4] = v55;
  v37[2] = v56;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v37[1] = v60;
  v37[0] = v61;
  v52 = a1;
  v54 = a1;
  v53 = a1;
  type metadata accessor for ShortcutsLibraryItem();
  sub_10002E87C(&qword_100100FE0);
  sub_10002E87C(&qword_100100FE8);
  sub_10002E87C(&qword_100100FF0);
  sub_100073C58();
  sub_1000749C4(&qword_100101010, &qword_100100FE8);
  sub_1000749C4(&qword_100101018, &qword_100100FF0);
  v9 = v38;
  Table.init<A>(selection:sortOrder:columns:rows:)();
  v10 = v52;
  sub_10006E7C8(v52, &v55);
  v11 = swift_allocObject();
  sub_10006E800(&v55, v11 + 16);
  sub_1000749C4(&qword_100101020, &qword_100100FB8);
  v12 = v39;
  v13 = v41;
  View.contextAction<A>(forSelectionType:action:)();

  (*(v42 + 8))(v9, v13);
  KeyPath = swift_getKeyPath();
  v15 = v40;
  v16 = v12 + *(v40 + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 1;
  *(v16 + 16) = 0;
  sub_10006E7C8(v10, &v55);
  v17 = swift_allocObject();
  sub_10006E800(&v55, v17 + 16);
  v18 = type metadata accessor for LibraryMenu();
  v19 = sub_100073DE4();
  v20 = sub_100073904(&qword_100101040, &type metadata accessor for LibraryMenu);
  v21 = v43;
  View.contextMenu<A, B>(forSelectionType:menu:primaryAction:)();

  sub_1000742AC(v12, &qword_100100FC0);
  v60 = *(v10 + 40);
  sub_10002E87C(&qword_100101048);
  State.projectedValue.getter();
  v22 = v56;
  v60 = v55;
  v61 = v56;
  sub_100002FC4(0, &qword_100100158);
  type metadata accessor for GalleryShortcutActionsView();
  *&v55 = v15;
  *(&v55 + 1) = &type metadata for String;
  v56 = v18;
  v57 = v19;
  v58 = &protocol witness table for String;
  v59 = v20;
  swift_getOpaqueTypeConformance2();
  sub_100073F20();
  sub_100073904(&qword_100101058, &type metadata accessor for GalleryShortcutActionsView);
  v23 = v45;
  v24 = v46;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v48 + 8))(v21, v24);
  v25 = swift_getKeyPath();
  v26 = &v23[*(v47 + 36)];
  v27 = v23;
  v28 = *(sub_10002E87C(&qword_100101060) + 28);
  v29 = v52;
  sub_1000712A4();
  v30 = sub_10002E87C(&qword_100101068);
  sub_1000042A8(v26 + v28, 0, 1, v30);
  *v26 = v25;
  LOBYTE(v60) = dispatch thunk of LibraryDataSource.isEditing.getter() & 1;
  sub_10006E7C8(v29, &v55);
  v31 = swift_allocObject();
  sub_10006E800(&v55, v31 + 16);
  sub_100073F90();
  v32 = v49;
  View.onChange<A>(of:initial:_:)();

  sub_1000742AC(v27, &qword_100100FD0);
  v33 = static Animation.default.getter();
  v34 = dispatch thunk of LibraryDataSource.isEditing.getter();
  v35 = v32 + *(v50 + 36);
  *v35 = v33;
  *(v35 + 8) = v34 & 1;
  sub_1000741A4();
  View.accessibilityIdentifier(_:)();
  return sub_1000742AC(v32, &qword_100100FD8);
}

uint64_t sub_10006E898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = sub_10002E87C(&qword_100101118);
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v35 - v3;
  v4 = sub_10002E87C(&qword_100101120);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v39 = "roviderReading>8@NSError16";
  v10 = String._bridgeToObjectiveC()();
  v11 = sub_1000B6C14(v8, v9);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v43 = v12;
  v44 = v14;
  swift_getKeyPath();
  sub_10006E7C8(a1, &v41);
  v15 = swift_allocObject();
  sub_10006E800(&v41, v15 + 16);
  sub_10002E87C(&qword_100101128);
  v16 = sub_100073904(&qword_1001010E8, &type metadata accessor for ShortcutsLibraryItem);
  sub_1000748DC();
  v35[2] = sub_1000200D8();
  v35[1] = v16;
  TableColumn<>.init<A, B>(_:value:content:)();
  TableColumn.width(min:ideal:max:)();
  (*(v5 + 8))(v7, v4);
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_1000B6C14(v17, v18);

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v41 = v21;
  v42 = v23;
  swift_getKeyPath();
  v35[0] = sub_10002E87C(&qword_100101150);
  sub_1000749C4(&qword_100101158, &qword_100101150);
  v24 = v36;
  TableColumn<>.init<A, B>(_:value:content:)();
  sub_10002E87C(&qword_100101160);
  v25 = v37;
  TableColumn.width(min:ideal:max:)();
  v26 = *(v40 + 8);
  v40 += 8;
  v26(v24, v25);
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_1000B6C14(v27, v28);

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v41 = v31;
  v42 = v33;
  swift_getKeyPath();
  TableColumn<>.init<A, B>(_:value:content:)();
  TableColumn.width(min:ideal:max:)();
  return (v26)(v24, v25);
}

uint64_t sub_10006EEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShortcutsLibraryItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_10002E87C(&qword_100101170);
  v8 = *(v5 + 16);
  v8(v7, a1, v4);

  NameIconView.init(item:dataSource:)();
  v9 = sub_10002E87C(&qword_100101128);
  return (v8)(a2 + *(v9 + 36), a1, v4);
}

uint64_t sub_10006F034@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_10002E87C(&qword_100101168);
  return sub_10006F09C();
}

uint64_t sub_10006F09C()
{
  sub_10001387C();
  v0();
  sub_1000200D8();
  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4 & 1;
  static Color.secondary.getter();
  static Color.secondary.getter();
  View.foregroundColor(isSelected:activeColor:inactiveColor:)();

  sub_10002072C(v1, v3, v5);
}

uint64_t sub_10006F17C(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_1001031C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  dispatch thunk of LibraryDataSource.sortedSections.getter();
  v6 = OrderedDictionary.values.getter();
  (*(v3 + 8))(v5, v2);
  sub_10006E7C8(a1, v10);
  v7 = swift_allocObject();
  sub_10006E800(v10, v7 + 16);
  v10[0] = v6;
  v9[0] = sub_10002E87C(&qword_100101090);
  v9[1] = &type metadata for String;
  v9[2] = sub_10002E87C(&qword_100101008);
  v9[3] = type metadata accessor for ShortcutsLibraryItem();
  v9[4] = sub_1000749C4(&qword_100101098, &qword_100101090);
  v9[5] = sub_1000749C4(&qword_100101000, &qword_100101008);
  v9[6] = sub_100073904(&qword_1001010A0, &type metadata accessor for ShortcutsLibrarySection);
  swift_getKeyPath();
  return ForEach<>.init<A>(_:id:content:)();
}

uint64_t sub_10006F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ShortcutsLibrarySection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  ShortcutsLibrarySection.options.getter();
  (*(v7 + 16))(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  sub_10006E7C8(a2, v13);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  sub_10006E800(v13, v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = sub_10002E87C(&qword_100101008);
  v12 = (a3 + *(result + 36));
  *v12 = sub_10007443C;
  v12[1] = v10;
  return result;
}

uint64_t sub_10006F57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v20 = a1;
  v29 = a3;
  v25 = type metadata accessor for ShortcutsLibrarySection();
  v3 = *(v25 - 8);
  v26 = *(v3 + 64);
  __chkstk_darwin(v25);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UTType();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002E87C(&qword_1001010A8);
  v27 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v20 - v7;
  v37[0] = ShortcutsLibrarySection.tableItems.getter();
  v30 = sub_10002E87C(&qword_1001010B0);
  v31 = &type metadata for String;
  v32 = sub_10002E87C(&qword_1001010B8);
  v33 = type metadata accessor for ShortcutsLibraryItem();
  v34 = sub_1000749C4(&qword_1001010C0, &qword_1001010B0);
  v35 = sub_1000744D8();
  v36 = sub_100073904(&qword_1001010E8, &type metadata accessor for ShortcutsLibraryItem);
  swift_getKeyPath();
  ForEach<>.init<A>(_:id:content:)();
  sub_10002E87C(&qword_1001010F0);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C0C20;
  v11 = WFWorkflowReferenceType();
  v12 = v21;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v10 + v9, v12, v22);
  v13 = v23;
  v14 = v25;
  (*(v3 + 16))(v23, v20, v25);
  sub_10006E7C8(v28, v37);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = (v26 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v15, v13, v14);
  sub_10006E800(v37, v17 + v16);
  sub_100074720();
  v18 = v24;
  DynamicTableRowContent.onInsert(of:perform:)();

  return (*(v27 + 8))(v8, v18);
}

uint64_t sub_10006FA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = type metadata accessor for ShortcutsLibraryItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10002E87C(&qword_1001010D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  v10 = *(v4 + 16);
  v10(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_100073904(&qword_1001010E8, &type metadata accessor for ShortcutsLibraryItem);
  TableRow.init(_:)();
  v10(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1000749C4(&qword_1001010D0, &qword_1001010D8);
  TableRowContent.itemProvider(_:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10006FC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibrarySectionOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ShortcutsLibrarySection.workflowInsertionAllowed.getter();
  if (result)
  {
    ShortcutsLibrarySection.options.getter();
    sub_10006FD94(a2, a1, v7);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_10006FD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v46 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LibrarySectionOptions();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = v6;
  v40 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v38 - 1);
  __chkstk_darwin(v38);
  v36 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v34);
  v35 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = _swiftEmptyArrayStorage;
  v10 = sub_10000D55C(a1);
  v11 = 0;
  v12 = &WFMainViewController__prots;
  while (v10 != v11)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v13 = *(a1 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    sub_100002FC4(0, &unk_100101E80);
    if ([v14 v12[332].count])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 = &WFMainViewController__prots;
    }

    else
    {
    }

    ++v11;
  }

  v15 = v54[0];
  if (sub_10000D55C(v54[0]))
  {
    v16 = dispatch_group_create();
    sub_100002FC4(0, &qword_1001001B8);
    v17 = v45;
    static DispatchQoS.unspecified.getter();
    v54[0] = _swiftEmptyArrayStorage;
    sub_100073904(&qword_100101100, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10002E87C(&qword_100101108);
    v33[1] = &protocol conformance descriptor for [A];
    sub_1000749C4(&qword_100101110, &qword_100101108);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
    v18 = v17;
    v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v20 = swift_allocObject();
    *(v20 + 16) = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage;
    v21 = v16;
    v22 = v19;
    v38 = v22;

    sub_10006D8C0(v15, v21, &v55, v22, v20);

    v23 = static OS_dispatch_queue.main.getter();
    sub_10006E7C8(v42, v54);
    v24 = v41;
    v25 = v40;
    v26 = v43;
    (*(v41 + 16))(v40, v44, v43);
    v27 = (*(v24 + 80) + 96) & ~*(v24 + 80);
    v28 = swift_allocObject();
    sub_10006E800(v54, v28 + 16);
    v29 = v46;
    *(v28 + 80) = v20;
    *(v28 + 88) = v29;
    (*(v24 + 32))(v28 + v27, v25, v26);
    aBlock[4] = sub_1000747A4;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003190;
    aBlock[3] = &unk_1000F2B60;
    v30 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_100073904(&qword_100102610, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002E87C(&qword_1001001C0);
    sub_1000749C4(&qword_100102620, &qword_1001001C0);
    v31 = v49;
    v32 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();

    _Block_release(v30);
    (*(v50 + 8))(v31, v32);
    (*(v47 + 8))(v18, v48);
  }

  else
  {
  }
}

void sub_1000705DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002E87C(&qword_100100008);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - v4;
  v6 = sub_10002E87C(&unk_1000FF9E0);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for ShortcutsLibraryItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(dispatch thunk of LibraryDataSource.selectedTableItems.getter() + 16);

  if (v13 == 1)
  {
    v14 = dispatch thunk of LibraryDataSource.selectedTableItems.getter();
    sub_100084A10(v14, v8);

    if (sub_10000AB80(v8, 1, v9) == 1)
    {
      sub_1000742AC(v8, &unk_1000FF9E0);
      return;
    }

    (*(v10 + 32))(v12, v8, v9);
    v15 = ShortcutsLibraryItem.workflow.getter();
    if (!v15)
    {
      v19 = ShortcutsLibraryItem.autoShortcut.getter();
      if (v19)
      {
        v20 = v19;
        v21 = type metadata accessor for TaskPriority();
        sub_1000042A8(v5, 1, 1, v21);
        sub_10006E7C8(a2, v25);
        type metadata accessor for MainActor();
        v22 = v20;
        v23 = static MainActor.shared.getter();
        v24 = swift_allocObject();
        v24[2] = v23;
        v24[3] = &protocol witness table for MainActor;
        v24[4] = v22;
        sub_10006E800(v25, (v24 + 5));
        sub_100084AEC();
      }

      goto LABEL_9;
    }

    v16 = v15;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      swift_getObjectType();
      v25[0] = v18;
      WorkflowOpener.openWorkflow(_:)();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
LABEL_9:
      (*(v10 + 8))(v12, v9);
      return;
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100070908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1000709A0, v7, v6);
}

uint64_t sub_1000709A0()
{
  v1 = objc_allocWithZone(type metadata accessor for AutoShortcutsAppsDataSource());
  v0[10] = AutoShortcutsAppsDataSource.init(organizedCollections:)();
  v5 = (&async function pointer to dispatch thunk of AutoShortcutsAppsDataSource.getWFWorkflow(for:) + async function pointer to dispatch thunk of AutoShortcutsAppsDataSource.getWFWorkflow(for:));
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100070A68;
  v3 = v0[5];

  return v5(v3);
}

uint64_t sub_100070A68(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_100070C78;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_100070B94;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100070B94()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];

  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v0[2] = v5;
  v0[3] = v4;
  v0[4] = v1;

  v6 = v1;
  v7 = v5;
  sub_10002E87C(&qword_100101048);
  State.wrappedValue.setter();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100070C78()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100070CE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45[1] = a2;
  v54 = type metadata accessor for ShortcutsLibraryItem();
  v52 = *(v54 - 8);
  v3 = __chkstk_darwin(v54);
  v48 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = v45 - v5;
  v51 = type metadata accessor for ShortcutsLibrarySection();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002E87C(&qword_1001031C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v45 - v11;
  dispatch thunk of LibraryDataSource.sortedSections.getter();
  v13 = OrderedDictionary.values.getter();
  (*(v10 + 8))(v12, v9);
  v14 = *(v13 + 16);
  if (v14)
  {
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v17 = *(v15 + 64);
    v46 = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v47 = *(v15 + 56);
    v49 = (v15 - 8);
    v50 = v16;
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      v20 = v51;
      v50(v8, v18, v51);
      v21 = ShortcutsLibrarySection.items.getter();
      (*v49)(v8, v20);
      v22 = *(v21 + 16);
      v23 = *(v19 + 2);
      if (__OFADD__(v23, v22))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v19 + 3) >> 1)
      {
        sub_10008D230();
        v19 = v24;
      }

      if (*(v21 + 16))
      {
        if ((*(v19 + 3) >> 1) - *(v19 + 2) < v22)
        {
          goto LABEL_37;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v25 = *(v19 + 2);
          v26 = __OFADD__(v25, v22);
          v27 = v25 + v22;
          if (v26)
          {
            goto LABEL_38;
          }

          *(v19 + 2) = v27;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_36;
        }
      }

      v18 += v47;
      if (!--v14)
      {

        goto LABEL_16;
      }
    }
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
LABEL_16:
    v28 = 0;
    v29 = *(v19 + 2);
    v49 = (v52 + 16);
    v50 = v29;
    v46 = (v52 + 8);
    v47 = (v52 + 32);
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
LABEL_17:
      if (v28 == v50)
      {

        LibraryMenu.init(tableItems:)();
        return;
      }

      if (v28 >= *(v19 + 2))
      {
        break;
      }

      v51 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v31 = *(v52 + 72);
      (*(v52 + 16))(v53, &v19[v51 + v31 * v28++], v54);
      v32 = ShortcutsLibraryItem.id.getter();
      v34 = v33;
      if (*(a1 + 16))
      {
        v35 = v32;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v36 = Hasher._finalize()();
        v37 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v38 = v36 & v37;
          if (((*(a1 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
          {
            break;
          }

          v39 = (*(a1 + 48) + 16 * v38);
          if (*v39 != v35 || v39[1] != v34)
          {
            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v36 = v38 + 1;
            if ((v41 & 1) == 0)
            {
              continue;
            }
          }

          v42 = *v47;
          (*v47)(v48, v53, v54);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100062D58();
            v30 = v55;
          }

          v44 = v30[2];
          if (v44 >= v30[3] >> 1)
          {
            sub_100062D58();
            v30 = v55;
          }

          v30[2] = v44 + 1;
          v42(v30 + v51 + v44 * v31, v48, v54);
          goto LABEL_17;
        }
      }

      (*v46)(v53, v54);
    }

    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_100071268(id *a1)
{
  v1 = *a1;

  return GalleryShortcutActionsView.init(workflow:)(v1);
}

uint64_t sub_1000712A4()
{
  sub_10006E7C8(v0, v6);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = &protocol witness table for MainActor;
  sub_10006E800(v6, v2 + 32);
  sub_10006E7C8(v0, v6);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = &protocol witness table for MainActor;
  sub_10006E800(v6, v4 + 32);
  type metadata accessor for EditMode();
  return Binding.init(get:set:)();
}

void sub_1000713B0(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v2 = dispatch thunk of LibraryDataSource.selectedWorkflowIds.modify();
    v4 = v3;

    *v4 = &_swiftEmptySetSingleton;
    v2(&v5, 0);
  }
}

uint64_t sub_100071428@<X0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of LibraryDataSource.isEditing.getter();
  v3 = type metadata accessor for EditMode();
  v4 = *(*(v3 - 8) + 104);
  v5 = &enum case for EditMode.active(_:);
  if ((v2 & 1) == 0)
  {
    v5 = &enum case for EditMode.inactive(_:);
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

uint64_t sub_1000714B4()
{
  v0 = type metadata accessor for EditMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for EditMode.active(_:), v0);
  static EditMode.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return dispatch thunk of LibraryDataSource.isEditing.setter();
}

void sub_1000715C0(uint64_t a1, int a2, dispatch_group_t group, NSObject *a4, uint64_t a5)
{
  if (a1 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    v10 = a5 + 16;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100074818;
    *(v12 + 24) = v11;
    v15[4] = sub_100041BDC;
    v15[5] = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100071808;
    v15[3] = &unk_1000F2C28;
    v13 = _Block_copy(v15);
    swift_unknownObjectRetain_n();

    dispatch_sync(a4, v13);
    swift_unknownObjectRelease();
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      dispatch_group_leave(group);
    }
  }

  else
  {

    dispatch_group_leave(group);
  }
}

uint64_t sub_100071790(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_100062C28(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100071830()
{
  LibraryDataSource.shortcutMoveService.getter();
  swift_beginAccess();

  v0 = LibrarySectionOptions.collection.getter();
  dispatch thunk of ShortcutMoveService.move(_:to:of:source:)();
}

uint64_t sub_1000718F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for EmptyTableRowContent();
  v10 = type metadata accessor for Section();
  v57 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v51 - v14;
  v15 = sub_100041CB4(&qword_100100F40);
  v16 = sub_10007394C();
  v66 = AssociatedTypeWitness;
  v88 = AssociatedTypeWitness;
  v89 = v15;
  v53 = v15;
  v90 = AssociatedConformanceWitness;
  v91 = v16;
  v52 = v16;
  v65 = type metadata accessor for TableHeaderRowContent();
  v67 = v9;
  v17 = type metadata accessor for Section();
  v55 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v54 = &v51 - v21;
  v22 = type metadata accessor for LibrarySectionOptions.Header();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v17;
  v59 = v10;
  v62 = type metadata accessor for _ConditionalContent();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v51 - v26;
  LibrarySectionOptions.header.getter();
  LOBYTE(v17) = LibrarySectionOptions.Header.shouldShowInTable.getter();
  (*(v23 + 8))(v25, v22);
  if (v17)
  {
    __chkstk_darwin(*(v3 + *(a1 + 36)));
    v27 = v63;
    *(&v51 - 4) = v5;
    *(&v51 - 3) = v27;
    v50 = v52;
    Section<>.init<A, B>(content:header:)();
    WitnessTable = swift_getWitnessTable();
    v29 = swift_getWitnessTable();
    v71 = WitnessTable;
    v72 = v27;
    v73 = v29;
    v30 = v58;
    v57 = swift_getWitnessTable();
    v31 = v55;
    v32 = *(v55 + 16);
    v33 = v54;
    v32(v54, v20, v30);
    v34 = *(v31 + 8);
    v34(v20, v30);
    v32(v20, v33, v30);
    v68 = v29;
    v69 = v27;
    v70 = v29;
    swift_getWitnessTable();
    v35 = v60;
    sub_100072ED8(v20, v66, v30);
    v34(v20, v30);
    v34(v33, v30);
  }

  else
  {
    v27 = v63;
    Section<>.init<A>(content:)();
    v36 = swift_getWitnessTable();
    v85 = v36;
    v86 = v27;
    v87 = v36;
    v37 = v59;
    v55 = swift_getWitnessTable();
    v38 = v57;
    v39 = *(v57 + 16);
    v40 = v56;
    v39(v56, v13, v37);
    v41 = *(v38 + 8);
    v41(v13, v37);
    v39(v13, v40, v37);
    v82 = swift_getWitnessTable();
    v83 = v27;
    v84 = v36;
    v42 = v58;
    swift_getWitnessTable();
    v35 = v60;
    sub_100072FD8(v13, v66, v42, v37);
    v41(v13, v37);
    v41(v40, v37);
  }

  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v79 = v43;
  v80 = v27;
  v81 = v44;
  v45 = swift_getWitnessTable();
  v76 = v44;
  v77 = v27;
  v78 = v44;
  v46 = swift_getWitnessTable();
  v74 = v45;
  v75 = v46;
  v47 = v62;
  swift_getWitnessTable();
  v48 = v61;
  (*(v61 + 16))(v64, v35, v47);
  return (*(v48 + 8))(v35, v47);
}

uint64_t sub_10007215C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = type metadata accessor for AutoShortcutApp();
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v47 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10002E87C(&qword_100100FA0);
  __chkstk_darwin(v54);
  v56 = &v46 - v3;
  v53 = sub_10002E87C(&qword_100100FA8);
  __chkstk_darwin(v53);
  v5 = &v46 - v4;
  v6 = sub_10002E87C(&qword_100100FB0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v51 = sub_10002E87C(&qword_100100F68);
  __chkstk_darwin(v51);
  v10 = &v46 - v9;
  v55 = sub_10002E87C(&qword_100100F58);
  __chkstk_darwin(v55);
  v52 = &v46 - v11;
  v12 = sub_10002E87C(&qword_100100F78);
  v50 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for LibrarySectionOptions.Header();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LibrarySectionOptions.header.getter();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for LibrarySectionOptions.Header.nameAndIconName(_:))
  {
    v20 = (*(v16 + 96))(v18, v15);
    v21 = *(v18 + 1);
    v22 = *(v18 + 3);
    v23 = __chkstk_darwin(v20);
    *(&v46 - 2) = v24;
    *(&v46 - 1) = v21;
    __chkstk_darwin(v23);
    *(&v46 - 2) = v25;
    *(&v46 - 1) = v22;
    v26 = v14;
    v46 = v14;
    Label.init(title:icon:)();

    v27 = v50;
    (*(v50 + 16))(v8, v26, v12);
    swift_storeEnumTagMultiPayload();
    sub_1000749C4(&qword_100100F70, &qword_100100F78);
    _ConditionalContent<>.init(storage:)();
    sub_100073BD4(v10, v5, &qword_100100F68);
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F88);
    sub_100073AA4();
    sub_100073B5C(&qword_100100F80, &qword_100100F88);
    v28 = v52;
    _ConditionalContent<>.init(storage:)();
    sub_1000742AC(v10, &qword_100100F68);
    sub_100073BD4(v28, v56, &qword_100100F58);
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F98);
    sub_1000739F8();
    sub_100073B5C(&qword_100100F90, &qword_100100F98);
    _ConditionalContent<>.init(storage:)();
    sub_1000742AC(v28, &qword_100100F58);
    return (*(v27 + 8))(v46, v12);
  }

  if (v19 == enum case for LibrarySectionOptions.Header.appAttributedUserShortcut(_:))
  {
    (*(v16 + 8))(v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_1000749C4(&qword_100100F70, &qword_100100F78);
    _ConditionalContent<>.init(storage:)();
    sub_100073BD4(v10, v5, &qword_100100F68);
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F88);
    sub_100073AA4();
    sub_100073B5C(&qword_100100F80, &qword_100100F88);
    v30 = v52;
    _ConditionalContent<>.init(storage:)();
    sub_1000742AC(v10, &qword_100100F68);
    sub_100073BD4(v30, v56, &qword_100100F58);
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F98);
    sub_1000739F8();
    sub_100073B5C(&qword_100100F90, &qword_100100F98);
    _ConditionalContent<>.init(storage:)();
    v31 = v30;
    return sub_1000742AC(v31, &qword_100100F58);
  }

  if (v19 == enum case for LibrarySectionOptions.Header.appShortcut(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v48 + 32))(v47, v18, v49);
    *&v61 = AutoShortcutApp.localizedName.getter();
    *(&v61 + 1) = v32;
    sub_1000200D8();
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v50 = v36;
    *&v58 = v33;
    *(&v58 + 1) = v34;
    v38 = v37 & 1;
    *&v59 = v37 & 1;
    *(&v59 + 1) = v36;
    v60 = 0;
    sub_10006D5A4(v33, v34, v37 & 1);

    _ConditionalContent<>.init(storage:)();
    v39 = v63;
    v40 = v62;
    *v5 = v61;
    *(v5 + 1) = v40;
    v5[32] = v39;
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F88);
    sub_100073AA4();
    sub_100073B5C(&qword_100100F80, &qword_100100F88);
    v41 = v52;
    _ConditionalContent<>.init(storage:)();
    sub_100073BD4(v41, v56, &qword_100100F58);
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F98);
    sub_1000739F8();
    sub_100073B5C(&qword_100100F90, &qword_100100F98);
    _ConditionalContent<>.init(storage:)();
    sub_10002072C(v33, v35, v38);

    sub_1000742AC(v41, &qword_100100F58);
    return (*(v48 + 8))(v47, v49);
  }

  if (v19 == enum case for LibrarySectionOptions.Header.tip(_:))
  {
    LOBYTE(v58) = 0;
    _ConditionalContent<>.init(storage:)();
    *v56 = v61;
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F98);
    sub_1000739F8();
    sub_100073B5C(&qword_100100F90, &qword_100100F98);
  }

  else
  {
    v42 = v56;
    if (v19 == enum case for LibrarySectionOptions.Header.none(_:))
    {
      v58 = 0u;
      v59 = 0u;
      v60 = 1;
      _ConditionalContent<>.init(storage:)();
      v43 = v63;
      v44 = v62;
      *v5 = v61;
      *(v5 + 1) = v44;
      v5[32] = v43;
      swift_storeEnumTagMultiPayload();
      sub_10002E87C(&qword_100100F88);
      sub_100073AA4();
      sub_100073B5C(&qword_100100F80, &qword_100100F88);
      v45 = v52;
      _ConditionalContent<>.init(storage:)();
      sub_100073BD4(v45, v42, &qword_100100F58);
      swift_storeEnumTagMultiPayload();
      sub_10002E87C(&qword_100100F98);
      sub_1000739F8();
      sub_100073B5C(&qword_100100F90, &qword_100100F98);
      _ConditionalContent<>.init(storage:)();
      v31 = v45;
      return sub_1000742AC(v31, &qword_100100F58);
    }

    if (v19 != enum case for LibrarySectionOptions.Header.syncUnavailable(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    LOBYTE(v58) = 1;
    _ConditionalContent<>.init(storage:)();
    *v42 = v61;
    swift_storeEnumTagMultiPayload();
    sub_10002E87C(&qword_100100F98);
    sub_1000739F8();
    sub_100073B5C(&qword_100100F90, &qword_100100F98);
  }

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100072ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100072FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v6);
  (*(*(a4 - 8) + 16))(&v9 - v7, a1, a4);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000730D8@<X0>(uint64_t a1@<X8>)
{
  sub_1000200D8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100073144@<X0>(uint64_t *a1@<X8>)
{

  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000731F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100073238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppEntityAnnotationModifier()
{
  result = qword_100100E20;
  if (!qword_100100E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000732FC()
{
  result = type metadata accessor for ShortcutsLibraryItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100073370()
{
  result = type metadata accessor for LibrarySectionOptions();
  if (v1 <= 0x3F)
  {
    result = sub_10001CF3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100073474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = sub_10002E87C(&qword_100100F10);
  __chkstk_darwin(v30);
  v4 = &v24 - v3;
  v5 = type metadata accessor for AppEntityVisualState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002E87C(&qword_100100F18);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = ShortcutsLibraryItem.workflow.getter();
  if (v13)
  {
    v28 = v13;
    v14 = WFDatabaseObjectDescriptor.id.getter();
    v26 = v15;
    v32 = v14;
    v33 = v15;
    v31 = _swiftEmptyArrayStorage;
    sub_100073904(&qword_100100F30, &type metadata accessor for AppEntityVisualState);
    v27 = a2;
    v24 = v4;
    v25 = v9;
    sub_10002E87C(&unk_100103260);
    sub_1000749C4(&qword_100100F38, &unk_100103260);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = sub_10002E87C(&qword_100100F20);
    v17 = sub_1000749C4(&qword_100100F28, &qword_100100F20);
    v18 = sub_100021C0C();
    View.appEntity<A>(entityType:identifier:state:)();
    (*(v6 + 8))(v8, v5);

    v19 = v25;
    (*(v10 + 16))(v24, v12, v25);
    swift_storeEnumTagMultiPayload();
    v32 = v16;
    v33 = &type metadata for WorkflowEntity;
    v34 = v17;
    v35 = v18;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();

    return (*(v10 + 8))(v12, v19);
  }

  else
  {
    v21 = sub_10002E87C(&qword_100100F20);
    (*(*(v21 - 8) + 16))(v4, v29, v21);
    swift_storeEnumTagMultiPayload();
    v22 = sub_1000749C4(&qword_100100F28, &qword_100100F20);
    v23 = sub_100021C0C();
    v32 = v21;
    v33 = &type metadata for WorkflowEntity;
    v34 = v22;
    v35 = v23;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100073904(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007394C()
{
  result = qword_100100F48;
  if (!qword_100100F48)
  {
    sub_100041CB4(&qword_100100F40);
    sub_1000739F8();
    sub_100073B5C(&qword_100100F90, &unk_100100F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100F48);
  }

  return result;
}

unint64_t sub_1000739F8()
{
  result = qword_100100F50;
  if (!qword_100100F50)
  {
    sub_100041CB4(&qword_100100F58);
    sub_100073AA4();
    sub_100073B5C(&qword_100100F80, &unk_100100F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100F50);
  }

  return result;
}

unint64_t sub_100073AA4()
{
  result = qword_100100F60;
  if (!qword_100100F60)
  {
    sub_100041CB4(&qword_100100F68);
    sub_1000749C4(&qword_100100F70, &unk_100100F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100F60);
  }

  return result;
}

uint64_t sub_100073B5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003F74(0, a2);
    sub_100041CB4(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100073BD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10002E87C(a3);
  v4 = sub_100005BCC();
  v5(v4);
  return a2;
}

unint64_t sub_100073C58()
{
  result = qword_100100FF8;
  if (!qword_100100FF8)
  {
    sub_100041CB4(&qword_100100FE0);
    sub_1000749C4(&qword_100101000, &qword_100101008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100FF8);
  }

  return result;
}

uint64_t sub_100073D7C()
{
  sub_10001387C();
  result = EnvironmentValues.lineLimit.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_100073DE4()
{
  result = qword_100101028;
  if (!qword_100101028)
  {
    sub_100041CB4(&qword_100100FC0);
    sub_100041CB4(&qword_100100FB8);
    sub_1000749C4(&qword_100101020, &qword_100100FB8);
    swift_getOpaqueTypeConformance2();
    sub_1000749C4(&qword_100101030, &unk_100101038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101028);
  }

  return result;
}

unint64_t sub_100073F20()
{
  result = qword_100101050;
  if (!qword_100101050)
  {
    sub_100002FC4(255, &qword_100100158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101050);
  }

  return result;
}

unint64_t sub_100073F90()
{
  result = qword_100101070;
  if (!qword_100101070)
  {
    sub_100041CB4(&qword_100100FD0);
    sub_100041CB4(&qword_100100FC8);
    sub_100002FC4(255, &qword_100100158);
    type metadata accessor for GalleryShortcutActionsView();
    sub_100041CB4(&qword_100100FC0);
    type metadata accessor for LibraryMenu();
    sub_100073DE4();
    sub_100073904(&qword_100101040, &type metadata accessor for LibraryMenu);
    swift_getOpaqueTypeConformance2();
    sub_100073F20();
    sub_100073904(&qword_100101058, &type metadata accessor for GalleryShortcutActionsView);
    swift_getOpaqueTypeConformance2();
    sub_1000749C4(&qword_100101078, &unk_100101060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101070);
  }

  return result;
}

unint64_t sub_1000741A4()
{
  result = qword_100101080;
  if (!qword_100101080)
  {
    sub_100041CB4(&qword_100100FD8);
    sub_100041CB4(&qword_100100FD0);
    sub_100073F90();
    swift_getOpaqueTypeConformance2();
    sub_1000749C4(&qword_100101088, &unk_1001032C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101080);
  }

  return result;
}

uint64_t sub_1000742AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F74(a1, a2);
  sub_10002E87C(v3);
  sub_1000044FC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100074308()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100074374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006BBEC;

  return sub_100070908(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10007443C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShortcutsLibrarySection() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10006F57C(v1 + v4, v5, a1);
}

unint64_t sub_1000744D8()
{
  result = qword_1001010C8;
  if (!qword_1001010C8)
  {
    sub_100041CB4(&qword_1001010B8);
    sub_1000749C4(&qword_1001010D0, &qword_1001010D8);
    sub_100073904(&qword_1001010E0, &type metadata accessor for ItemProviderTableRowModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001010C8);
  }

  return result;
}

uint64_t sub_1000745C0()
{
  type metadata accessor for ShortcutsLibrarySection();
  sub_1000044FC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v4 + 64, v2 | 7);
}

uint64_t sub_100074674(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShortcutsLibrarySection();

  return sub_10006FC98(a1, a2);
}

unint64_t sub_100074720()
{
  result = qword_1001010F8;
  if (!qword_1001010F8)
  {
    sub_100041CB4(&qword_1001010A8);
    sub_1000744D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001010F8);
  }

  return result;
}

uint64_t sub_1000747A4()
{
  type metadata accessor for LibrarySectionOptions();

  return sub_100071830();
}

uint64_t sub_10007487C()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1000748DC()
{
  result = qword_100101130;
  if (!qword_100101130)
  {
    sub_100041CB4(&qword_100101128);
    sub_1000749C4(&qword_100101138, &unk_100101140);
    sub_100073904(&qword_100101148, type metadata accessor for AppEntityAnnotationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101130);
  }

  return result;
}

uint64_t sub_1000749C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003F74(0, a2);
    sub_100041CB4(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100074A08()
{
  result = qword_100101178;
  if (!qword_100101178)
  {
    sub_100041CB4(&qword_100101180);
    sub_100041CB4(&qword_100100F20);
    sub_1000749C4(&qword_100100F28, &qword_100100F20);
    sub_100021C0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101178);
  }

  return result;
}

id sub_100074B24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligencePlatformHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100074B7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligencePlatformHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100074BD8()
{
  result = qword_1001001B8;
  if (!qword_1001001B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001001B8);
  }

  return result;
}

uint64_t sub_100074C1C(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_1000FFFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100074CA8()
{
  v0 = sub_100006144();
  v1 = sub_10002E87C(v0);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005E58();
  sub_100002F88();
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_100074D2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100074DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100074EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

unint64_t sub_100074F9C(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_100074FDC()
{
  v79 = sub_10002E87C(&qword_100101A20);
  __chkstk_darwin(v79);
  v82 = &v67 - v1;
  v2 = sub_10002E87C(&unk_1001026E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v78 = &v67 - v7;
  v8 = __chkstk_darwin(v6);
  v80 = &v67 - v9;
  __chkstk_darwin(v8);
  v81 = &v67 - v10;
  v11 = type metadata accessor for AutoShortcutApp();
  v84 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v67 - v14;
  v15 = sub_10002E87C(&qword_1001017B8);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = sub_10002E87C(&qword_100100028);
  v19 = __chkstk_darwin(v18 - 8);
  v85 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v67 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v67 - v25;
  __chkstk_darwin(v24);
  v28 = &v67 - v27;
  v29 = type metadata accessor for RootNavigationDestination();
  v86 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v31 = __chkstk_darwin(v30);
  v33 = &v67 - v32;
  result = __chkstk_darwin(v31);
  v87 = &v67 - v36;
  if ((*(v0 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact) & 1) == 0)
  {
    v74 = v5;
    v75 = v35;
    v76 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (sub_10000AB80(v28, 1, v29) == 1)
    {
      return sub_100083220(v28, &qword_100100028);
    }

    v38 = v86;
    v37 = v87;
    v39 = *(v86 + 32);
    v73 = v86 + 32;
    v72 = v39;
    v39(v87, v28, v29);
    v40 = *(v38 + 16);
    v69 = (v38 + 16);
    v68 = v40;
    v40(v26, v37, v29);
    sub_1000042A8(v26, 0, 1, v29);
    v41 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_lastSelectedDestination;
    swift_beginAccess();
    v42 = *(v15 + 48);
    sub_10000823C(v26, v17, &qword_100100028);
    v71 = v0;
    v70 = v41;
    sub_10000823C(v0 + v41, &v17[v42], &qword_100100028);
    if (sub_10000AB80(v17, 1, v29) == 1)
    {
      sub_100083220(v26, &qword_100100028);
      v43 = sub_10000AB80(&v17[v42], 1, v29);
      v44 = v86;
      if (v43 == 1)
      {
        sub_100083220(v17, &qword_100100028);
        return (*(v44 + 8))(v87, v29);
      }

      goto LABEL_9;
    }

    sub_10000823C(v17, v23, &qword_100100028);
    if (sub_10000AB80(&v17[v42], 1, v29) == 1)
    {
      sub_100083220(v26, &qword_100100028);
      v44 = v86;
      (*(v86 + 8))(v23, v29);
LABEL_9:
      sub_100083220(v17, &qword_1001017B8);
      goto LABEL_10;
    }

    v72(v33, &v17[v42], v29);
    sub_100009C48(&qword_100100090, &type metadata accessor for RootNavigationDestination);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v44 = v86;
    v58 = *(v86 + 8);
    v58(v33, v29);
    sub_100083220(v26, &qword_100100028);
    v58(v23, v29);
    sub_100083220(v17, &qword_100100028);
    if ((v57 & 1) == 0)
    {
LABEL_10:
      v45 = v71;
      if (*(v71 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_shouldNavigateWhenDestinationChanges) != 1)
      {
LABEL_26:
        v65 = v85;
        v72(v85, v87, v29);
        sub_1000042A8(v65, 0, 1, v29);
        v66 = v70;
        swift_beginAccess();
        sub_100083B38(v65, v45 + v66);
        return swift_endAccess();
      }

      v46 = v75;
      v68(v75, v87, v29);
      if ((*(v44 + 88))(v46, v29) != enum case for RootNavigationDestination.autoShortcuts(_:))
      {
        (*(v44 + 8))(v46, v29);
        goto LABEL_25;
      }

      (*(v44 + 96))(v46, v29);
      v48 = v83;
      v47 = v84;
      v49 = v76;
      v69 = *(v84 + 32);
      v69(v83, v46, v76);
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v81;
      static Published.subscript.getter();

      v51 = v47 + 16;
      v52 = *(v47 + 16);
      v53 = v80;
      v86 = v51;
      v75 = v52;
      v52(v80, v48, v49);
      sub_1000042A8(v53, 0, 1, v49);
      v54 = *(v79 + 48);
      v55 = v82;
      sub_10000823C(v50, v82, &unk_1001026E0);
      sub_10000823C(v53, v55 + v54, &unk_1001026E0);
      if (sub_10000AB80(v55, 1, v49) == 1)
      {
        sub_100083220(v53, &unk_1001026E0);
        v56 = v82;
        sub_100083220(v50, &unk_1001026E0);
        if (sub_10000AB80(v56 + v54, 1, v49) == 1)
        {
          sub_100083220(v56, &unk_1001026E0);
          (*(v84 + 8))(v83, v76);
LABEL_25:
          sub_10007684C();
          goto LABEL_26;
        }
      }

      else
      {
        v59 = v78;
        sub_10000823C(v55, v78, &unk_1001026E0);
        if (sub_10000AB80(v55 + v54, 1, v49) != 1)
        {
          v63 = v77;
          v69(v77, v55 + v54, v49);
          sub_100009C48(&qword_100101A28, &type metadata accessor for AutoShortcutApp);
          LODWORD(v79) = dispatch thunk of static Equatable.== infix(_:_:)();
          v64 = *(v84 + 8);
          v64(v63, v49);
          sub_100083220(v80, &unk_1001026E0);
          sub_100083220(v81, &unk_1001026E0);
          v64(v59, v49);
          sub_100083220(v55, &unk_1001026E0);
          if (v79)
          {
            v64(v83, v76);
            goto LABEL_25;
          }

          goto LABEL_22;
        }

        sub_100083220(v80, &unk_1001026E0);
        v56 = v82;
        sub_100083220(v81, &unk_1001026E0);
        (*(v84 + 8))(v59, v49);
      }

      sub_100083220(v56, &qword_100101A20);
LABEL_22:
      v60 = v74;
      v61 = v83;
      v62 = v76;
      v75(v74, v83, v76);
      sub_1000042A8(v60, 0, 1, v62);
      sub_100075FD0();
      (*(v84 + 8))(v61, v62);
      goto LABEL_26;
    }

    return (v58)(v87, v29);
  }

  return result;
}

void sub_100075B94()
{
  sub_1000079FC();
  v0 = sub_100006144();
  v1 = sub_10002E87C(v0);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005E58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100002F88();

  sub_1000179DC();
  sub_100074FDC();
  v3 = sub_1000042EC();
  sub_100083220(v3, v4);
  sub_1000046DC();
}

void sub_100075C48(uint64_t a1, char a2)
{
  v5 = sub_10002E87C(&qword_100100028);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_shouldNavigateWhenDestinationChanges;
  *(v2 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_shouldNavigateWhenDestinationChanges) = a2;
  v10 = type metadata accessor for RootNavigationDestination();
  sub_100003EC8();
  (*(v11 + 16))(v8, a1, v10);
  sub_1000060AC();
  sub_1000042A8(v12, v13, v14, v10);
  sub_100075B94();
  *(v2 + v9) = 1;
}

uint64_t sub_100075D28()
{
  v0 = type metadata accessor for RootNavigationDestination();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002E87C(&unk_1001026E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AutoShortcutApp();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (sub_10000AB80(v6, 1, v7) == 1)
  {
    return sub_100083220(v6, &unk_1001026E0);
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 16))(v3, v10, v7);
  (*(v1 + 104))(v3, enum case for RootNavigationDestination.autoShortcuts(_:), v0);
  sub_10007684C();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

void sub_100075FD0()
{
  sub_1000079FC();
  v0 = sub_100006144();
  v1 = sub_10002E87C(v0);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005E58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100002F88();

  sub_1000179DC();
  sub_100075D28();
  v3 = sub_1000042EC();
  sub_100083220(v3, v4);
  sub_1000046DC();
}

uint64_t sub_100076084()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000AB3C();

  return v1;
}

uint64_t sub_1000760E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100011D6C();
}

uint64_t sub_100076144()
{
  v0 = type metadata accessor for EditMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000A4B88();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_100076290()
{
  sub_1000079FC();
  sub_100005730();
  type metadata accessor for EditMode();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_10000F748();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_1000043C4();
  v2(v1);

  static Published.subscript.setter();
  sub_100076144();
  v3 = sub_1000042EC();
  v4(v3);
  sub_1000046DC();
}

uint64_t sub_1000763A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void sub_100076410()
{
  sub_1000079FC();
  v0 = sub_100006144();
  v1 = sub_10002E87C(v0);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  sub_100005E58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100002F88();

  sub_1000179DC();
  v3 = sub_1000042EC();
  sub_100083220(v3, v4);
  sub_1000046DC();
}

void *sub_1000764C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  memcpy(__dst, v3, sizeof(__dst));
  return memcpy(a1, __dst, 0x48uLL);
}

uint64_t sub_100076554(const void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy(__dst, a1, sizeof(__dst));

  return sub_100011D6C();
}

double sub_1000765C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000AB3C();

  return v1;
}

uint64_t sub_100076620()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100076698(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_numberOfShortcutsByDestination;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_1000815E4(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      return v8;
    }
  }

  v9 = sub_100076084();
  v10 = RootNavigationDestination.countOfItems(in:autoShortcutsDataSource:)();
  v12 = v11;

  v8 = 0;
  if ((v12 & 1) == 0 && v10)
  {
    v13 = objc_opt_self();
    v14 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v10];
    v15 = [v13 localizedStringFromNumber:v14 numberStyle:0];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + v4);
    sub_1000AF460();
    *(v2 + v4) = v17;
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_10007684C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100007DC8();
    sub_1000A48E4();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000768A8()
{
  sub_1000043AC();
  v2 = v1;
  type metadata accessor for Logger();
  sub_100004458();
  __chkstk_darwin(v3);
  sub_10000F748();
  sub_10007703C();
  v4 = *(v0 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_database);
  sub_100002FC4(0, &qword_100100098);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19[0] = 0;
  LODWORD(v4) = [v4 moveCollections:isa toIndex:v2 error:v19];

  if (v4)
  {
    sub_100002EEC();

    v8 = v6;
  }

  else
  {
    v9 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static WFLog.subscript.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_10000DA48(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to move folders: %{public}s", v12, 0xCu);
      sub_10000DF90(v13);
      sub_1000046C4();
      sub_1000046C4();
    }

    else
    {
    }

    v17 = sub_1000043C4();
    v18(v17);
    sub_100002EEC();
  }
}

uint64_t sub_100076B74()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100007DC8();
    sub_1000A4B28();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100076BD0(void *a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5._rawValue = a1;
    sub_1000A4978(v5, a2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100076C48(Swift::OpaquePointer a1@<X0>, uint64_t *a2@<X8>)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_100083AE4();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    return;
  }

  v41 = a2;
  v5 = sub_10000D55C(a1._rawValue);
  v6 = sub_10000D55C(a1._rawValue);
  v42 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_database;
  v59 = a1._rawValue & 0xC000000000000001;
  v7 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  rawValue = a1._rawValue;
  v9 = 0;
  if (v5 <= 1)
  {
    v17 = _swiftEmptyArrayStorage;
    while (v6 != v9)
    {
      if (v59)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_44;
        }

        v18 = *(a1._rawValue + v9 + 4);
      }

      v19 = v18;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

      v20 = [*(v2 + v42) sortedVisibleWorkflowsInCollection:v18];
      v21 = [v20 count];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10008D308(0, *(v17 + 2) + 1, 1, v17);
        v17 = v24;
      }

      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      if (v23 >= v22 >> 1)
      {
        v25 = sub_100005E38(v22);
        sub_10008D308(v25, v23 + 1, 1, v17);
        v17 = v26;
      }

      *(v17 + 2) = v23 + 1;
      *&v17[8 * v23 + 32] = v21;
      ++v9;
      a1._rawValue = rawValue;
    }

    v35 = *(v17 + 2);
    if (v35)
    {
      v36 = 0;
      v37 = 32;
      while (1)
      {
        v38 = *&v17[v37];
        v15 = __OFADD__(v36, v38);
        v36 += v38;
        if (v15)
        {
          goto LABEL_45;
        }

        v37 += 8;
        if (!--v35)
        {

          if (!v36)
          {
            swift_unknownObjectRelease();
            goto LABEL_39;
          }

          sub_1000A4A1C(a1, v36, 1, &v51);
          v27 = v52;
          if (v52)
          {
            v28 = v57;
            v29 = v58;
            v31 = v55;
            v30 = v56;
            v33 = v53;
            v32 = v54;
            v34 = v51;
            goto LABEL_35;
          }

          sub_100083AE4();
          swift_allocError();
          *v40 = 1;
          goto LABEL_42;
        }
      }
    }

    swift_unknownObjectRelease();

LABEL_39:
    v34 = 0;
    v27 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_40;
  }

  v10 = 0;
  do
  {
    if (v6 == v9)
    {
      break;
    }

    if (v59)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_47;
      }

      v11 = *(a1._rawValue + v9 + 4);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_46;
    }

    v13 = [*(v2 + v42) sortedVisibleWorkflowsInCollection:v11];
    v14 = [v13 count];

    v15 = __OFADD__(v10, v14);
    v10 += v14;
    if (v15)
    {
      goto LABEL_48;
    }

    ++v9;
    a1._rawValue = rawValue;
  }

  while (v10 < 2);
  sub_1000A4A1C(a1, v10, 0, &v43);
  v27 = v44;
  if (v44)
  {
    v28 = v49;
    v29 = v50;
    v31 = v47;
    v30 = v48;
    v33 = v45;
    v32 = v46;
    v34 = v43;
LABEL_35:
    swift_unknownObjectRelease();
LABEL_40:
    *v41 = v34;
    v41[1] = v27;
    v41[2] = v33;
    v41[3] = v32;
    v41[4] = v31;
    v41[5] = v30;
    v41[6] = v28;
    v41[7] = v29;
    return;
  }

  sub_100083AE4();
  swift_allocError();
  *v39 = 1;
LABEL_42:
  swift_willThrow();
  swift_unknownObjectRelease();
}

void sub_10007703C()
{
  sub_1000043AC();
  v60 = v0;
  v64 = v1;
  v3 = v2;
  v4 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v63 = v5;
  __chkstk_darwin(v6);
  sub_100003EF4();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = (&v50 - v11);
  type metadata accessor for IndexSet.Index();
  sub_100004458();
  v52 = v14;
  v53 = v13;
  __chkstk_darwin(v13);
  sub_1000039BC();
  v17 = v16 - v15;
  v18 = _swiftEmptyArrayStorage;
  v67 = _swiftEmptyArrayStorage;
  v19 = type metadata accessor for IndexSet();
  v20 = sub_100009C48(&qword_1001018D0, &type metadata accessor for IndexSet);
  v21 = dispatch thunk of Collection.count.getter();
  if (v21)
  {
    v22 = v21;
    v66 = _swiftEmptyArrayStorage;
    sub_100062D78();
    v51 = v66;
    v62 = v19;
    dispatch thunk of Collection.startIndex.getter();
    if (v22 < 0)
    {
      goto LABEL_24;
    }

    v23 = v17;
    v24 = v51;
    v61 = v4;
    ObjectType = swift_getObjectType();
    v58 = v12;
    v59 = ObjectType;
    v54 = (v63 + 32);
    v55 = v63 + 16;
    v56 = v20;
    v57 = v3;
    while (1)
    {
      v26 = dispatch thunk of Collection.subscript.read();
      v28 = *v27;
      v26(&v65, 0);
      v29 = dispatch thunk of SidebarSection.destinations.getter();
      if ((v28 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v28 >= *(v29 + 16))
      {
        goto LABEL_23;
      }

      v30 = v23;
      v31 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v32 = *(v63 + 72);
      v33 = v61;
      (*(v63 + 16))(v9, v29 + v31 + v32 * v28, v61);

      v34 = v24;
      v66 = v24;
      v36 = v24[2];
      v35 = v24[3];
      if (v36 >= v35 >> 1)
      {
        sub_100005E38(v35);
        sub_100062D78();
        v34 = v66;
      }

      v34[2] = v36 + 1;
      v24 = v34;
      (*v54)(v34 + v31 + v36 * v32, v9, v33);
      v23 = v30;
      dispatch thunk of Collection.formIndex(after:)();
      --v22;
      v12 = v58;
      if (!v22)
      {
        (*(v52 + 8))(v30, v53);
        v4 = v61;
        v18 = v24;
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v37 = 0;
    v38 = *(v18 + 2);
    v39 = v63;
    v64 = v63 + 16;
    v40 = enum case for RootNavigationDestination.folder(_:);
    v61 = v63 + 96;
    v62 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v38 == v37)
      {

        sub_100002EEC();
        return;
      }

      if (v37 >= v38)
      {
        break;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_21;
      }

      sub_100003A3C();
      (*(v39 + 16))(v12, &v18[v41 + *(v39 + 72) * v37], v4);
      v42 = sub_1000043C4();
      if (v43(v42) == v40)
      {
        v46 = sub_1000043C4();
        v47(v46);
        v62 = *v12;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v48 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
        {
          sub_100005E38(v48);
          v60 = v49;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v62 = v67;
        ++v37;
      }

      else
      {
        v44 = sub_1000043C4();
        v45(v44);
        ++v37;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1000774D0()
{
  sub_1000043AC();
  v1 = v0;
  v3._rawValue = v2;
  type metadata accessor for Logger();
  sub_100004458();
  __chkstk_darwin(v4);
  sub_10000F748();
  v5 = sub_10002E87C(&qword_100100028);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_100076C48(v3, &v18);
  if (v19)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v23[0] = v3._rawValue;
    v23[1] = v18;
    v23[2] = v19;

    sub_100076554(v23);
    v9 = type metadata accessor for RootNavigationDestination();
    sub_100003EC8();
    (*(v10 + 16))(v8, v1, v9);
    sub_1000060AC();
    sub_1000042A8(v11, v12, v13, v9);
    sub_100076410();
    sub_100002EEC();
  }

  else
  {
    sub_100002EEC();

    sub_100076BD0(v14, v15);
  }
}

void sub_1000777A0()
{
  sub_1000043AC();
  v38 = v0;
  v33 = v1;
  v3 = v2;
  type metadata accessor for LibraryWorkflowCreationBehavior();
  sub_100004458();
  v36 = v5;
  v37 = v4;
  __chkstk_darwin(v4);
  v34 = v6;
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002E87C(&qword_100100008);
  sub_100002EE0(v7);
  sub_100005B90();
  __chkstk_darwin(v8);
  sub_100005B00();
  v39 = v9;
  v41 = _swiftEmptyArrayStorage;
  v10 = sub_10000D55C(v3);
  v11 = 0;
  v12 = v3 & 0xFFFFFFFFFFFFFF8;
  Strong = v3 & 0xFFFFFFFFFFFFFF8;
  while (v10 != v11)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v12 + 16))
      {
        goto LABEL_18;
      }

      v13 = *(v3 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    sub_100002FC4(0, &unk_100101E80);
    if ([v14 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 = Strong;
    }

    else
    {
    }

    ++v11;
  }

  v15 = v41;
  if (sub_10000D55C(v41))
  {
    type metadata accessor for TaskPriority();
    sub_100004730();
    sub_1000042A8(v16, v17, v18, v19);
    v20 = v38;
    v21 = v38 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v32 = *(v21 + 8);
    v22 = v35;
    v23 = v36;
    v24 = v37;
    (*(v36 + 16))(v35, v33, v37);
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v27 = (v34 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = v25;
    *(v28 + 3) = &protocol witness table for MainActor;
    *(v28 + 4) = v15;
    (*(v23 + 32))(&v28[v26], v22, v24);
    *&v28[v27] = v20;
    v29 = &v28[(v27 + 15) & 0xFFFFFFFFFFFFFFF8];
    v30 = v32;
    *v29 = Strong;
    v29[1] = v30;
    sub_100084AEC();

    sub_100002EEC();
  }

  else
  {
    sub_100002EEC();
  }
}

uint64_t sub_100077B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();
  sub_10002E87C(&qword_100100008);
  v8[12] = swift_task_alloc();
  v8[13] = type metadata accessor for MainActor();
  v8[14] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[15] = v12;
  v8[16] = v11;

  return _swift_task_switch(sub_100077C40, v12, v11);
}

uint64_t sub_100077C40()
{
  sub_100004304();
  v1 = v0[3];
  v2 = sub_10002E87C(&qword_1001019F8);
  v3 = static MainActor.shared.getter();
  v0[17] = v3;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *(v4 + 16) = v1;
  v5 = sub_10002E87C(&qword_100101A00);
  swift_task_alloc();
  sub_100006180();
  v0[19] = v6;
  *v6 = v7;
  v6[1] = sub_100077D68;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v2, v5, v3, &protocol witness table for MainActor, &unk_1000C4DD0, v4, v2);
}

uint64_t sub_100077D68()
{
  sub_100004304();
  v1 = *v0;
  v2 = *v0;
  sub_100005224();
  *v3 = v2;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_100077EBC, v5, v4);
}

uint64_t sub_100077EBC()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[8];
  v18 = v3;
  v22 = v0[7];
  v4 = v0[5];
  v19 = v0[6];
  v20 = v0[10];
  v5 = v0[4];

  v21 = v0[2];
  type metadata accessor for TaskPriority();
  sub_100004730();
  sub_1000042A8(v6, v7, v8, v9);
  (*(v2 + 16))(v1, v5, v3);
  swift_unknownObjectRetain();

  v10 = static MainActor.shared.getter();
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v2 + 32))(v14 + v11, v1, v18);
  *(v14 + v12) = v4;
  *(v14 + v13) = v21;
  v15 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v19;
  v15[1] = v22;
  sub_100084AEC();

  sub_100003BDC();

  return v16();
}

uint64_t sub_100078078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_10002E87C(&qword_100101A08);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_10002E87C(&qword_100100008);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v6;
  v3[22] = v5;

  return _swift_task_switch(sub_1000781C4, v6, v5);
}

uint64_t sub_1000781C4()
{
  v1 = *(v0 + 104);
  *(v0 + 72) = _swiftEmptyArrayStorage;
  v2 = sub_10000D55C(v1);
  v3 = 0;
  v27 = v1 & 0xC000000000000001;
  v28 = v2;
  v25 = v1 + 32;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v28 != v3)
  {
    if (v27)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v26 + 16))
      {
        goto LABEL_21;
      }

      v2 = *(v25 + 8 * v3);
    }

    v4 = v2;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v2);
    }

    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = type metadata accessor for TaskPriority();
    sub_100004730();
    sub_1000042A8(v8, v9, v10, v7);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    sub_10000823C(v5, v6, &qword_100100008);
    LODWORD(v5) = sub_10000AB80(v6, 1, v7);
    v12 = v4;
    v13 = *(v0 + 136);
    if (v5 == 1)
    {
      sub_100083220(*(v0 + 136), &qword_100100008);
    }

    else
    {
      TaskPriority.rawValue.getter();
      sub_100002F04();
      (*(v14 + 8))(v13, v7);
    }

    if (v11[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = **(v0 + 96);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_1000C4E00;
    *(v19 + 24) = v11;

    sub_10002E87C(&qword_1001019F8);
    v20 = v17 | v15;
    if (v17 | v15)
    {
      v20 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v15;
      *(v0 + 40) = v17;
    }

    v21 = *(v0 + 144);
    *(v0 + 48) = 1;
    *(v0 + 56) = v20;
    *(v0 + 64) = v18;
    swift_task_create();

    v2 = sub_100083220(v21, &qword_100100008);
    ++v3;
  }

  sub_10002E87C(&qword_1001019F8);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 184) = _swiftEmptyArrayStorage;
  *(v0 + 192) = static MainActor.shared.getter();
  swift_task_alloc();
  sub_100006180();
  *(v0 + 200) = v22;
  *v22 = v23;
  sub_10001C7BC(v22);
  v2 = (v0 + 80);

  return TaskGroup.Iterator.next(isolation:)(v2);
}

uint64_t sub_10007854C()
{
  sub_100004304();
  v1 = *v0;
  v2 = *v0;
  sub_100005224();
  *v3 = v2;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return _swift_task_switch(sub_100078684, v5, v4);
}

uint64_t sub_100078684()
{
  v1 = v0[10];
  if (v1 == 1)
  {
    v7 = v0[23];
    v8 = v0[11];
    (*(v0[15] + 8))(v0[16], v0[14]);

    *v8 = v7;

    sub_100003BDC();

    return v9();
  }

  else
  {
    if (v1)
    {
      v2 = v1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v3 = *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v3 >> 1)
      {
        sub_100005E38(v3);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100012F04(v1);
      v0[23] = v0[9];
    }

    v0[24] = static MainActor.shared.getter();
    swift_task_alloc();
    sub_100006180();
    v0[25] = v4;
    *v4 = v5;
    sub_10001C7BC();
    v6 = sub_100004320();

    return TaskGroup.Iterator.next(isolation:)(v6);
  }
}

uint64_t sub_100078810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100078830, 0, 0);
}

uint64_t sub_100078830()
{
  sub_100004304();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_10002E87C(&qword_1001019F8);
  *v3 = v0;
  v3[1] = sub_100078934;
  v5 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001000C8C70, sub_100083A54, v2, v4);
}

uint64_t sub_100078934()
{
  v1 = *v0;
  sub_100005224();
  *v2 = v1;

  sub_100003BDC();

  return v3();
}

void sub_100078A38(uint64_t a1, void *a2)
{
  v4 = sub_10002E87C(&qword_100101A10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_100002FC4(0, &unk_100101E80);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100083A5C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100074D2C;
  aBlock[3] = &unk_1000F3010;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_100078C1C(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
    }
  }

  sub_10002E87C(&qword_100101A10);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100078CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for Logger();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[17] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100078E30, v11, v10);
}

uint64_t sub_100078E30()
{
  v30 = v0;
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[7];

  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for LibraryWorkflowCreationBehavior.inFolder(_:))
  {
    v6 = v0[16];
    (*(v0[15] + 96))(v6, v0[14]);
    v7 = *v6;
    sub_100007BF4();
    sub_1000042EC();
    dispatch thunk of ShortcutMoveService.prepend(_:to:source:)();
  }

  else if (v5 == enum case for LibraryWorkflowCreationBehavior.forWorkflowType(_:))
  {
    v8 = v0[16];
    v9 = v0[8];
    (*(v0[15] + 96))(v8, v0[14]);
    v10 = *v8;
    v11 = *(v9 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_database);
    sub_100002FC4(0, &unk_100101E80);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[5] = 0;
    LODWORD(v11) = [v11 prependReferences:isa toCollectionWithType:v10 error:v0 + 5];

    v13 = v0[5];
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v15 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static WFLog.subscript.getter();
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      v18 = os_log_type_enabled(v16, v17);
      v20 = v0[12];
      v19 = v0[13];
      v21 = v0[11];
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136315138;
        swift_getErrorValue();
        v24 = Error.localizedDescription.getter();
        v26 = sub_10000DA48(v24, v25, &v29);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unable to move workflows: %s", v22, 0xCu);
        sub_10000DF90(v23);
        sub_1000046C4();
        sub_1000046C4();

        (*(v20 + 8))(v19, v21);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }
    }
  }

  else
  {
    if (v5 == enum case for LibraryWorkflowCreationBehavior.none(_:))
    {
      goto LABEL_14;
    }

    if (v5 != enum case for LibraryWorkflowCreationBehavior.inRoot(_:))
    {
      (*(v0[15] + 8))(v0[16], v0[14]);
      goto LABEL_14;
    }

    sub_100007BF4();
    dispatch thunk of ShortcutMoveService.prepend(_:to:source:)();
  }

  if (v0[10])
  {
    sub_1000A4D10();
  }

LABEL_14:

  sub_100003BDC();

  return v27();
}

uint64_t sub_10007921C()
{
  v1 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_style;
  type metadata accessor for SidebarStyle();
  sub_1000044FC();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__currentDestination;
  v4 = sub_10002E87C(&qword_100101718);
  sub_100003EC8();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  sub_100083220(v0 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_lastSelectedDestination, &qword_100100028);
  v7 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__selectedApp;
  sub_10002E87C(&qword_100101710);
  sub_1000044FC();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__autoShortcutsAppsDataSource;
  sub_10002E87C(&qword_100101A30);
  sub_1000044FC();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__editMode;
  sub_10002E87C(&qword_100101708);
  sub_1000044FC();
  (*(v12 + 8))(v0 + v11);
  v6(v0 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__presentConfirmationDestination, v4);
  v13 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__deleteAlertData;
  sub_10002E87C(&qword_100101700);
  sub_1000044FC();
  (*(v14 + 8))(v0 + v13);
  v15 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__bottomInset;
  sub_10002E87C(&qword_1001016F8);
  sub_1000044FC();
  (*(v16 + 8))(v0 + v15);
  sub_100017968(v0 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_delegate);

  return v0;
}

uint64_t sub_1000794A4()
{
  sub_10007921C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10007954C()
{
  sub_1000795FC();
  if (v0 <= 0x3F)
  {
    sub_10000891C(319, &unk_100101618, &qword_100100028, &unk_1000C12A8, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000795FC()
{
  if (!qword_100101608)
  {
    type metadata accessor for SidebarView.DataSource(255);
    sub_100009C48(&qword_100101610, type metadata accessor for SidebarView.DataSource);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100101608);
    }
  }
}

void sub_1000796D8()
{
  type metadata accessor for RootNavigationDestination();
  if (v0 <= 0x3F)
  {
    sub_10000891C(319, &unk_1001016B8, &qword_100100028, &unk_1000C12A8, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1000795FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000797BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SidebarView.DataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000797FC()
{
  v1 = type metadata accessor for SidebarView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100082A70(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_100082BF0(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100082A70(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_100082BF0(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  Binding.init(get:set:)();
  return v10[1];
}

uint64_t sub_1000799CC@<X0>(_BYTE *a1@<X8>)
{
  v35 = sub_10002E87C(&qword_1001017B8);
  __chkstk_darwin(v35);
  v3 = &v30 - v2;
  v4 = sub_10002E87C(&qword_100100028);
  v5 = __chkstk_darwin(v4 - 8);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for RootNavigationDestination();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v33 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v30 - v19;
  type metadata accessor for SidebarView(0);
  sub_10002E87C(&qword_100101598);
  State.wrappedValue.getter();
  if (sub_10000AB80(v14, 1, v15) != 1)
  {
    v32 = a1;
    v31 = *(v16 + 32);
    v31(v20, v14, v15);
    (*(v16 + 16))(v12, v20, v15);
    sub_1000042A8(v12, 0, 1, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23 = *(v35 + 48);
    sub_10000823C(v12, v3, &qword_100100028);
    sub_10000823C(v9, &v3[v23], &qword_100100028);
    if (sub_10000AB80(v3, 1, v15) == 1)
    {
      sub_100083220(v9, &qword_100100028);
      sub_100083220(v12, &qword_100100028);
      (*(v16 + 8))(v20, v15);
      if (sub_10000AB80(&v3[v23], 1, v15) == 1)
      {
        result = sub_100083220(v3, &qword_100100028);
        v24 = 1;
LABEL_10:
        a1 = v32;
        v22 = v24 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v25 = v34;
      sub_10000823C(v3, v34, &qword_100100028);
      if (sub_10000AB80(&v3[v23], 1, v15) != 1)
      {
        v27 = &v3[v23];
        v28 = v33;
        v31(v33, v27, v15);
        sub_100009C48(&qword_100100090, &type metadata accessor for RootNavigationDestination);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v16 + 8);
        v29(v28, v15);
        sub_100083220(v9, &qword_100100028);
        sub_100083220(v12, &qword_100100028);
        v29(v20, v15);
        v29(v34, v15);
        result = sub_100083220(v3, &qword_100100028);
        goto LABEL_10;
      }

      sub_100083220(v9, &qword_100100028);
      sub_100083220(v12, &qword_100100028);
      v26 = *(v16 + 8);
      v26(v20, v15);
      v26(v25, v15);
    }

    result = sub_100083220(v3, &qword_1001017B8);
    v24 = 0;
    goto LABEL_10;
  }

  result = sub_100083220(v14, &qword_100100028);
  v22 = 0;
LABEL_11:
  *a1 = v22;
  return result;
}

void sub_100079F38(_BYTE *a1)
{
  v2 = sub_10002E87C(&qword_100100028);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  if (*a1 == 1)
  {
    type metadata accessor for SidebarView(0);
    sub_10002E87C(&qword_100101598);
    State.wrappedValue.getter();
  }

  else
  {
    v5 = type metadata accessor for RootNavigationDestination();
    sub_1000042A8(v4, 1, 1, v5);
  }

  sub_100076410();
}

void sub_10007A01C()
{
  sub_1000043AC();
  v1 = v0;
  v103 = v2;
  v98 = type metadata accessor for SidebarListStyle();
  sub_100004458();
  v97 = v3;
  __chkstk_darwin(v4);
  sub_1000039BC();
  sub_100003A48(v6 - v5);
  v7 = sub_10002E87C(&qword_100101648);
  sub_100002EE0(v7);
  sub_100005B90();
  __chkstk_darwin(v8);
  v10 = &v75 - v9;
  v11 = sub_10002E87C(&qword_100101730);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v92 = sub_10002E87C(&qword_100101738);
  sub_100004458();
  v89 = v15;
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005B00();
  sub_100003A48(v17);
  v91 = sub_10002E87C(&qword_100101740);
  sub_100004458();
  v90 = v18;
  sub_100005B90();
  __chkstk_darwin(v19);
  sub_100005B00();
  sub_100003A48(v20);
  v95 = sub_10002E87C(&qword_100101748);
  sub_100004458();
  v94 = v21;
  sub_100005B90();
  __chkstk_darwin(v22);
  sub_100005B00();
  sub_100003A48(v23);
  v100 = sub_10002E87C(&qword_100101750);
  sub_100003EC8();
  sub_100005B90();
  __chkstk_darwin(v24);
  sub_100005B00();
  sub_100003A48(v25);
  v102 = sub_10002E87C(&qword_100101758);
  sub_100004458();
  v101 = v26;
  sub_100005B90();
  __chkstk_darwin(v27);
  sub_100005B00();
  sub_100003A48(v28);
  v29 = *v1;
  v30 = v1[1];
  v31 = type metadata accessor for SidebarView.DataSource(0);
  v32 = sub_100009C48(&qword_100101610, type metadata accessor for SidebarView.DataSource);
  v84 = v29;
  v83 = v31;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  v82 = v32;
  ObservedObject.Wrapper.subscript.getter();

  v81 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact;
  LOBYTE(v29) = *(v30 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact);
  sub_10000823C(v10, v14, &qword_100101648);
  v14[*(v11 + 52)] = (v29 & 1) == 0;
  v86 = v11;
  v85 = v14;
  sub_10007ABBC(v1);
  sub_100083220(v10, &qword_100101648);
  sub_1000764C0(&v107);
  v33 = v108;
  v34 = v109;
  if (v107)
  {
    v106[0] = v107;
    v106[1] = v108;
    sub_10000A814();

    sub_100083220(v106, &qword_100101268);
  }

  else
  {
    v106[0] = 0;
    v106[1] = v108;
    sub_10000A814();
    sub_100083220(v106, &qword_100101268);
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  v105[9] = v33;
  v105[10] = v34;
  sub_1000797FC();
  v77 = v35;
  v36 = sub_1000764C0(v105);
  v78 = &v75;
  __chkstk_darwin(v36);
  v79 = v30;
  v76 = sub_10002E87C(&qword_100101760);
  v37 = sub_10002E87C(&qword_100101768);
  v38 = sub_100009624(&qword_100101770, &qword_100101730);
  v80 = v1;
  v39 = v38;
  v40 = sub_1000200D8();
  v73 = sub_100009624(&qword_100101778, &qword_100101760);
  v41 = v86;
  v42 = v87;
  v43 = v85;
  View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:)();

  memcpy(v106, v105, sizeof(v106));
  sub_100083220(v106, &qword_100101268);

  sub_100083220(v43, &qword_100101730);
  v44 = v96;
  SidebarListStyle.init()();
  v105[0] = v41;
  v105[1] = &type metadata for String;
  v105[2] = v76;
  v105[3] = &type metadata for Text;
  v105[4] = v37;
  v105[5] = v39;
  v105[6] = v40;
  v105[7] = v73;
  v105[8] = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v88;
  v47 = v92;
  v48 = v98;
  View.listStyle<A>(_:)();
  sub_100084830();
  v49(v44, v48);
  sub_100084830();
  v50(v42, v47);
  v105[0] = v47;
  v105[1] = v48;
  v105[2] = OpaqueTypeConformance2;
  v105[3] = &protocol witness table for SidebarListStyle;
  sub_100005190();
  v51 = v93;
  v52 = v91;
  View.prefersExpandedSidebars(_:)();
  sub_100084830();
  v53(v46, v52);
  KeyPath = swift_getKeyPath();
  v55 = v100;
  v56 = v104;
  v57 = (v104 + *(v100 + 36));
  sub_10002E87C(&qword_100101060);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10002E87C(&qword_100101068);
  sub_1000060AC();
  sub_1000042A8(v58, v59, v60, v61);
  *v57 = KeyPath;
  sub_1000070D8();
  v62(v56, v51, v95);
  v63 = Solarium.init()();
  v98 = &v75;
  v64 = __chkstk_darwin(v63);
  __chkstk_darwin(v64);
  v65 = sub_10002E87C(&qword_100101780);
  v66 = sub_10002E87C(&qword_100101788);
  v67 = sub_100081A34();
  v105[0] = v55;
  v105[1] = v67;
  v68 = sub_100005190();
  v74 = sub_100081C98();
  v69 = v99;
  v70 = v104;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_100083220(v70, &qword_100101750);
  v105[0] = v55;
  v105[1] = &type metadata for Solarium;
  v105[2] = v65;
  v105[3] = v66;
  v105[4] = v67;
  v105[5] = &protocol witness table for Solarium;
  v105[6] = v68;
  v105[7] = v74;
  sub_100005190();
  v71 = v102;
  View.accessibilityIdentifier(_:)();
  sub_100084830();
  v72(v69, v71);
  sub_100002EEC();
}

uint64_t sub_10007ABBC(uint64_t a1)
{
  v2 = type metadata accessor for SidebarView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *(*(a1 + 8) + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_sections);
  swift_getKeyPath();
  sub_100082A70(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100082BF0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_10002E87C(&qword_1001017C0);
  sub_10002E87C(&qword_1001017C8);
  sub_100009624(&qword_1001017D0, &qword_1001017C0);
  sub_100009C48(&qword_1001017D8, &type metadata accessor for UUID);
  sub_10008218C();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10007AE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v5 = type metadata accessor for SidebarView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = *a1;
  v9 = a1[1];
  swift_getObjectType();
  result = dispatch thunk of SidebarSection.shouldDisplay.getter();
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (result)
  {
    v11 = dispatch thunk of SidebarSection.name.getter();
    v12 = v15;
    sub_100082A70(v18, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v9;
    sub_100082BF0(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v16);
    result = swift_unknownObjectRetain();
    v13 = sub_10008223C;
  }

  *a3 = v11;
  a3[1] = v12;
  a3[2] = v13;
  a3[3] = v14;
  return result;
}

uint64_t sub_10007AFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = type metadata accessor for SidebarView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002E87C(&qword_1001017F8);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_10002E87C(&qword_100101800);
  v66 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v52 - v15;
  v69 = sub_10002E87C(&qword_100101808);
  __chkstk_darwin(v69);
  v68 = &v52 - v16;
  v71 = type metadata accessor for AutoShortcutsAppGrid(0);
  __chkstk_darwin(v71);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AutoShortcutsSidebarSection();
  if (swift_dynamicCastClass())
  {
    v19 = *(a3 + 8);
    sub_100076084();
    type metadata accessor for SidebarView.DataSource(0);
    sub_100009C48(&qword_100101610, type metadata accessor for SidebarView.DataSource);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    v20 = v71;
    ObservedObject.Wrapper.subscript.getter();

    v21 = *(v19 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact);
    type metadata accessor for AutoShortcutsAppsDataSource();
    sub_100009C48(&qword_1001018C8, &type metadata accessor for AutoShortcutsAppsDataSource);
    *v18 = ObservedObject.init(wrappedValue:)();
    v18[1] = v22;
    *(v18 + *(v20 + 24)) = v21;
    sub_100082A70(v18, v68);
    swift_storeEnumTagMultiPayload();
    sub_100009C48(&qword_1001018C0, type metadata accessor for AutoShortcutsAppGrid);
    v23 = sub_100082594();
    v72 = v11;
    v73 = v23;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_100082AE8();
  }

  else
  {
    ObjectType = swift_getObjectType();
    v57 = a2;
    v76 = dispatch thunk of SidebarSection.destinations.getter();
    v59 = type metadata accessor for SidebarView;
    v65 = a3;
    sub_100082A70(a3, &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v63 = v11;
    v25 = *(v8 + 80);
    v60 = ((v25 + 16) & ~v25) + v9;
    v61 = (v25 + 16) & ~v25;
    v26 = swift_allocObject();
    v58 = type metadata accessor for SidebarView;
    sub_100082BF0(&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + ((v25 + 16) & ~v25));
    v64 = v14;
    v56 = sub_10002E87C(&qword_100100C98);
    v55 = sub_10002E87C(&qword_100101810);
    v54 = sub_100009624(&qword_100101818, &qword_100100C98);
    v53 = sub_100041CB4(&qword_100101820);
    v52 = type metadata accessor for NavigationDestinationEntity();
    v27 = sub_100041CB4(&qword_1000FF620);
    v28 = type metadata accessor for RootNavigationDestination();
    v29 = type metadata accessor for DestinationRow(255);
    v30 = sub_100009C48(&qword_100101828, type metadata accessor for DestinationRow);
    v72 = v29;
    v73 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = sub_100009C48(&qword_100101720, &type metadata accessor for RootNavigationDestination);
    v72 = v27;
    v73 = v28;
    v74 = OpaqueTypeConformance2;
    v75 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_100009C48(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
    v72 = v53;
    v73 = v52;
    v74 = v33;
    v75 = v34;
    swift_getOpaqueTypeConformance2();
    sub_100009C48(&qword_100101830, &type metadata accessor for RootNavigationDestination);
    ForEach<>.init(_:content:)();
    v35 = v65;
    sub_100082A70(v65, &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = swift_allocObject();
    v37 = v57;
    *(v36 + 16) = a1;
    *(v36 + 24) = v37;
    sub_100082BF0(v10, v36 + ((v25 + 32) & ~v25));
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1000823E4;
    *(v38 + 24) = v36;
    v39 = &v13[*(sub_10002E87C(&qword_100101838) + 36)];
    *v39 = sub_1000824A0;
    v39[1] = v38;
    sub_100082A70(v35, v10);
    v40 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_100082BF0(v10, v41 + v61);
    v42 = (v41 + v40);
    *v42 = a1;
    v42[1] = v37;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1000824C8;
    *(v43 + 24) = v41;
    v44 = &v13[*(sub_10002E87C(&qword_100101840) + 36)];
    *v44 = sub_100082568;
    *(v44 + 1) = v43;
    swift_unknownObjectRetain_n();
    sub_1000A1738();
    v13[*(sub_10002E87C(&qword_100101848) + 36)] = (v45 & 1) == 0;
    sub_1000A1738();
    v46 = v63;
    v13[*(v63 + 36)] = (v47 & 1) == 0;
    static VerticalEdge.Set.all.getter();
    v48 = sub_100082594();
    v49 = v67;
    View.listRowSeparator(_:edges:)();
    sub_100083220(v13, &qword_1001017F8);
    v50 = v66;
    v51 = v64;
    (*(v66 + 16))(v68, v49, v64);
    swift_storeEnumTagMultiPayload();
    sub_100009C48(&qword_1001018C0, type metadata accessor for AutoShortcutsAppGrid);
    v72 = v46;
    v73 = v48;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v50 + 8))(v49, v51);
  }
}

uint64_t sub_10007B9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v67 = a1;
  v84 = a3;
  v4 = type metadata accessor for RootNavigationDestination();
  v66 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v61 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10002E87C(&qword_1001017B8) - 8;
  __chkstk_darwin(v77);
  v76 = &v61 - v7;
  v8 = sub_10002E87C(&qword_100100028);
  v9 = __chkstk_darwin(v8 - 8);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v75 = &v61 - v12;
  __chkstk_darwin(v11);
  v74 = &v61 - v13;
  v14 = type metadata accessor for AppEntityVisualState();
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v81 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for NavigationDestinationEntity();
  __chkstk_darwin(v80);
  v87 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UTType();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DestinationRow(0);
  __chkstk_darwin(v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10002E87C(&qword_1000FF620);
  v72 = *(v85 - 8);
  __chkstk_darwin(v85);
  v70 = &v61 - v21;
  v22 = sub_10002E87C(&qword_100101820);
  v78 = *(v22 - 8);
  v79 = v22;
  __chkstk_darwin(v22);
  v86 = &v61 - v23;
  v63 = v5;
  v65 = *(v5 + 16);
  v65(v20, a1, v4);
  type metadata accessor for SidebarView(0);
  v88 = v18;
  sub_10002E87C(&qword_100101598);
  v24 = v73;
  State.projectedValue.getter();
  v25 = *(v24 + 8);
  v26 = &v20[*(v18 + 24)];
  type metadata accessor for SidebarView.DataSource(0);
  sub_100009C48(&qword_100101610, type metadata accessor for SidebarView.DataSource);
  swift_retain_n();
  v64 = v25;
  *v26 = ObservedObject.init(wrappedValue:)();
  v26[1] = v27;
  sub_10002E87C(&qword_1001010F0);
  v28 = v68;
  v29 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000C0C20;
  v31 = WFWorkflowReferenceType();
  v32 = v69;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v28 + 32))(v30 + v29, v32, v71);
  v33 = v85;
  v34 = type metadata accessor for SidebarDropDelegate(0);
  v92 = v34;
  v93 = sub_100009C48(&qword_1001018D8, type metadata accessor for SidebarDropDelegate);
  v35 = sub_10002A304(&v89);
  v36 = v67;
  v37 = v66;
  v38 = v65;
  v65(v35, v67, v66);
  *(v35 + *(v34 + 20)) = v25;
  v39 = sub_100009C48(&qword_100101828, type metadata accessor for DestinationRow);
  v40 = v70;
  v73 = v39;
  View.onDrop(of:delegate:)();
  v41 = v86;

  v42 = v37;
  sub_100082AE8();
  sub_10000DF90(&v89);
  v43 = &v41[*(sub_10002E87C(&qword_1000FF610) + 36)];
  v38(v43, v36, v37);
  v43[*(sub_10002E87C(&qword_1000FF618) + 36)] = 1;
  v44 = v40;
  v45 = v33;
  (*(v72 + 32))(v41, v44, v33);
  v38(v87, v36, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v74;
  v47 = v76;
  static Published.subscript.getter();

  v48 = v75;
  v38(v75, v36, v42);
  sub_1000042A8(v48, 0, 1, v42);
  v49 = *(v77 + 56);
  sub_10000823C(v46, v47, &qword_100100028);
  sub_10000823C(v48, v47 + v49, &qword_100100028);
  if (sub_10000AB80(v47, 1, v42) != 1)
  {
    v50 = v62;
    sub_10000823C(v47, v62, &qword_100100028);
    if (sub_10000AB80(v47 + v49, 1, v42) != 1)
    {
      v51 = v46;
      v52 = v63;
      v53 = v61;
      (*(v63 + 32))(v61, v47 + v49, v42);
      sub_100009C48(&qword_100100090, &type metadata accessor for RootNavigationDestination);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v52 + 8);
      v54(v53, v42);
      sub_100083220(v48, &qword_100100028);
      sub_100083220(v51, &qword_100100028);
      v54(v50, v42);
      v45 = v85;
      sub_100083220(v47, &qword_100100028);
      goto LABEL_8;
    }

    sub_100083220(v48, &qword_100100028);
    sub_100083220(v46, &qword_100100028);
    (*(v63 + 8))(v50, v42);
    goto LABEL_6;
  }

  sub_100083220(v48, &qword_100100028);
  sub_100083220(v46, &qword_100100028);
  if (sub_10000AB80(v47 + v49, 1, v42) != 1)
  {
LABEL_6:
    sub_100083220(v47, &qword_1001017B8);
    goto LABEL_8;
  }

  sub_100083220(v47, &qword_100100028);
LABEL_8:
  v55 = v81;
  AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
  v89 = v88;
  v90 = v73;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_100009C48(&qword_100101720, &type metadata accessor for RootNavigationDestination);
  v89 = v45;
  v90 = v42;
  v91 = OpaqueTypeConformance2;
  v92 = v57;
  swift_getOpaqueTypeConformance2();
  sub_100009C48(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
  v58 = v86;
  v59 = v79;
  View.appEntity<A>(_:state:)();
  (*(v82 + 8))(v55, v83);
  sub_100082AE8();
  return (*(v78 + 8))(v58, v59);
}

uint64_t sub_10007C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v55 = a3;
  v57 = a2;
  v5 = sub_10002E87C(&qword_100100028);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v43 = &v40 - v10;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = type metadata accessor for IndexSet.Index();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for RootNavigationDestination();
  v56 = *(v47 - 8);
  v16 = __chkstk_darwin(v47);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v42 = &v40 - v19;
  v20 = type metadata accessor for IndexSet();
  v21 = sub_100009C48(&qword_1001018D0, &type metadata accessor for IndexSet);
  v22 = dispatch thunk of Collection.count.getter();
  v23 = _swiftEmptyArrayStorage;
  if (v22)
  {
    v24 = v22;
    v59 = _swiftEmptyArrayStorage;
    sub_100062D78();
    v23 = v59;
    v53 = v21;
    v54 = v20;
    result = dispatch thunk of Collection.startIndex.getter();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v50 = v18;
      v40 = v12;
      v41 = v8;
      ObjectType = swift_getObjectType();
      v51 = a1;
      v52 = ObjectType;
      v48 = (v56 + 32);
      v49 = v56 + 16;
      v27 = v47;
      while (1)
      {
        v28 = dispatch thunk of Collection.subscript.read();
        v30 = *v29;
        v28(v58, 0);
        result = dispatch thunk of SidebarSection.destinations.getter();
        if ((v30 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v30 >= *(result + 16))
        {
          goto LABEL_14;
        }

        v31 = v15;
        v32 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v33 = *(v56 + 72);
        v34 = v50;
        (*(v56 + 16))(v50, result + v32 + v33 * v30, v27);

        v59 = v23;
        v35 = v23[2];
        if (v35 >= v23[3] >> 1)
        {
          sub_100062D78();
          v23 = v59;
        }

        v23[2] = v35 + 1;
        (*v48)(v23 + v32 + v35 * v33, v34, v27);
        v15 = v31;
        dispatch thunk of Collection.formIndex(after:)();
        if (!--v24)
        {
          (*(v44 + 8))(v31, v45);
          v8 = v41;
          v12 = v40;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_100084A28(v23, v12);

    v36 = v47;
    if (sub_10000AB80(v12, 1, v47) == 1)
    {
      return sub_100083220(v12, &qword_100100028);
    }

    else
    {
      v37 = v56;
      v38 = v42;
      (*(v56 + 32))(v42, v12, v36);
      v39 = v43;
      (*(v37 + 16))(v43, v38, v36);
      sub_1000042A8(v39, 0, 1, v36);
      type metadata accessor for SidebarView(0);
      sub_10000823C(v39, v8, &qword_100100028);
      sub_10002E87C(&qword_100101598);
      State.wrappedValue.setter();
      sub_100083220(v39, &qword_100100028);
      sub_10007703C();
      sub_1000774D0();

      return (*(v37 + 8))(v38, v36);
    }
  }

  return result;
}

uint64_t sub_10007CB38@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *&v61 = a2;
  v70 = a3;
  v5 = type metadata accessor for SidebarView(0);
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v5 - 8);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002E87C(&qword_100101ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  *&v62 = &v52 - v8;
  v10 = sub_10002E87C(&qword_1001017A8);
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v67 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v66 = &v52 - v14;
  v15 = __chkstk_darwin(v13);
  v65 = &v52 - v16;
  __chkstk_darwin(v15);
  v63 = &v52 - v17;
  memcpy(__dst, a1, 0x48uLL);
  static ButtonRole.destructive.getter();
  v18 = type metadata accessor for ButtonRole();
  sub_1000042A8(v9, 0, 1, v18);
  *&v60 = type metadata accessor for SidebarView;
  sub_100082A70(a2, &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __dst[0];
  v20 = *&__dst[1];
  v55 = *(&__dst[2] + 1);
  v21 = *&__dst[2];
  *&v56 = *(&__dst[1] + 1);
  v22 = __dst[3];
  v54 = *&__dst[4];
  v23 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v64 = *(v64 + 80);
  v59 = v23;
  v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = v24;
  v25 = swift_allocObject();
  v58 = type metadata accessor for SidebarView;
  v26 = v25 + v23;
  v27 = v53;
  sub_100082BF0(v53, v26);
  v28 = v25 + v24;
  *v28 = v19;
  v30 = v55;
  v29 = v56;
  *(v28 + 16) = v20;
  *(v28 + 24) = v29;
  *(v28 + 32) = v21;
  *(v28 + 40) = v30;
  *(v28 + 48) = v22;
  v31 = v54;
  *(v28 + 64) = v54;
  v76 = v19;
  v77 = v20;
  v78 = v29;
  v79 = v21;
  v80 = v30;
  v81 = v22;
  v82 = v31;
  sub_10000823C(__dst, v83, &qword_100101768);
  v32 = v63;
  Button.init(role:action:label:)();
  v33 = v27;
  sub_100082A70(v61, v27);
  v61 = __dst[1];
  v62 = __dst[0];
  v60 = __dst[2];
  v56 = __dst[3];
  v34 = *&__dst[4];
  v35 = v57;
  v36 = swift_allocObject();
  sub_100082BF0(v33, v36 + v59);
  v37 = v36 + v35;
  v38 = v61;
  *v37 = v62;
  *(v37 + 16) = v38;
  v39 = v56;
  *(v37 + 32) = v60;
  *(v37 + 48) = v39;
  *(v37 + 64) = v34;
  v71 = __dst[0];
  v72 = __dst[1];
  v73 = __dst[2];
  v74 = __dst[3];
  v75 = *&__dst[4];
  sub_10000823C(__dst, v83, &qword_100101768);
  v40 = v65;
  Button.init(action:label:)();
  v41 = v68;
  v42 = *(v68 + 16);
  v43 = v66;
  v44 = v32;
  v45 = v32;
  v46 = v69;
  v42(v66, v44, v69);
  v47 = v67;
  v42(v67, v40, v46);
  v48 = v70;
  v42(v70, v43, v46);
  v49 = sub_10002E87C(&qword_1001017B0);
  v42(&v48[*(v49 + 48)], v47, v46);
  v50 = *(v41 + 8);
  v50(v40, v46);
  v50(v45, v46);
  v50(v47, v46);
  return (v50)(v43, v46);
}

uint64_t sub_10007D0E0@<X0>(uint64_t a1@<X8>)
{
  sub_1000200D8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007D17C@<X0>(uint64_t a1@<X8>)
{
  sub_1000200D8();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007D1E8@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_10000823C(__dst, v9, &qword_100101768);

  v3 = __dst[3];
  v4 = __dst[4];

  v9[0] = v3;
  v9[1] = v4;
  sub_1000200D8();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

void sub_10007D2A8(uint64_t a1)
{
  v2 = type metadata accessor for EditMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100076290();
}

uint64_t sub_10007D374()
{
  v0 = type metadata accessor for ContentMarginPlacement();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Edge.Set.bottom.getter();
  sub_1000765C0();
  static ContentMarginPlacement.automatic.getter();
  sub_10002E87C(&qword_100101750);
  sub_100081A34();
  View.contentMargins(_:_:for:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10007D4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.bottom.getter();
  sub_1000765C0();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10000823C(a1, a2, &qword_100101750);
  result = sub_10002E87C(&qword_100101788);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_10007D55C()
{
  v1 = v0;
  v2 = type metadata accessor for RootNavigationDestination();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002E87C(&qword_1001017B8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_10002E87C(&qword_100100028);
  v10 = __chkstk_darwin(v9 - 8);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = *(v1 + *(type metadata accessor for DestinationRow(0) + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v17;
  static Published.subscript.getter();

  v18 = v3;
  (*(v3 + 16))(v14, v1, v2);
  sub_1000042A8(v14, 0, 1, v2);
  v19 = *(v6 + 56);
  sub_10000823C(v16, v8, &qword_100100028);
  sub_10000823C(v14, &v8[v19], &qword_100100028);
  if (sub_10000AB80(v8, 1, v2) == 1)
  {
    sub_100083220(v14, &qword_100100028);
    sub_100083220(v16, &qword_100100028);
    if (sub_10000AB80(&v8[v19], 1, v2) == 1)
    {
      sub_100083220(v8, &qword_100100028);
LABEL_9:
      v21 = *(v29 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact) ^ 1;
      return v21 & 1;
    }

    goto LABEL_6;
  }

  v20 = v30;
  sub_10000823C(v8, v30, &qword_100100028);
  if (sub_10000AB80(&v8[v19], 1, v2) == 1)
  {
    sub_100083220(v14, &qword_100100028);
    sub_100083220(v16, &qword_100100028);
    (*(v3 + 8))(v20, v2);
LABEL_6:
    sub_100083220(v8, &qword_1001017B8);
    goto LABEL_7;
  }

  v22 = v3;
  v23 = v28;
  (*(v18 + 32))(v28, &v8[v19], v2);
  sub_100009C48(&qword_100100090, &type metadata accessor for RootNavigationDestination);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v22 + 8);
  v25(v23, v2);
  sub_100083220(v14, &qword_100100028);
  sub_100083220(v16, &qword_100100028);
  v25(v20, v2);
  sub_100083220(v8, &qword_100100028);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_10007D9E8()
{
  v1 = sub_10002E87C(&qword_1001018E0);
  __chkstk_darwin(v1);
  v3 = &v6[-v2];
  *v3 = static VerticalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = sub_10002E87C(&qword_1001018E8);
  sub_10007DB4C(v0, &v3[*(v4 + 44)]);
  v7 = v0;
  sub_10002E87C(&qword_1001018F0);
  sub_100009624(&qword_1001018F8, &qword_1001018E0);
  sub_100082B40();
  View.contextMenu<A>(menuItems:)();
  return sub_100083220(v3, &qword_1001018E0);
}

uint64_t sub_10007DB4C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a1;
  v146 = a2;
  v117 = type metadata accessor for BorderlessButtonStyle();
  v122 = *(v117 - 8);
  __chkstk_darwin(v117);
  v121 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10002E87C(&qword_100101928);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v113 - v3;
  v132 = sub_10002E87C(&qword_100101930);
  __chkstk_darwin(v132);
  v123 = &v113 - v4;
  v5 = type metadata accessor for RootNavigationDestination();
  v139 = *(v5 - 8);
  __chkstk_darwin(v5);
  v138 = (&v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_10002E87C(&qword_100101938);
  __chkstk_darwin(v130);
  v131 = (&v113 - v7);
  v8 = sub_10002E87C(&qword_100100D20);
  __chkstk_darwin(v8 - 8);
  v128 = &v113 - v9;
  v129 = type metadata accessor for Font.TextStyle();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v126 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002E87C(&qword_100101940);
  v12 = __chkstk_darwin(v11 - 8);
  v145 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = &v113 - v14;
  v137 = sub_10002E87C(&qword_100101948);
  __chkstk_darwin(v137);
  v124 = (&v113 - v15);
  v149 = type metadata accessor for EditMode();
  v151 = *(v149 - 8);
  v16 = __chkstk_darwin(v149);
  v148 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v147 = &v113 - v18;
  v19 = sub_10002E87C(&qword_100101950);
  v20 = __chkstk_darwin(v19 - 8);
  v143 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v142 = &v113 - v22;
  v135 = type metadata accessor for DestinationLabel(0);
  __chkstk_darwin(v135);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10002E87C(&qword_100101958);
  __chkstk_darwin(v134);
  v26 = &v113 - v25;
  v27 = type metadata accessor for DestinationRow(0);
  v28 = v27 - 8;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  v31 = sub_10002E87C(&qword_100101960);
  v125 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v113 - v32;
  v34 = sub_10002E87C(&qword_100101968);
  v35 = __chkstk_darwin(v34 - 8);
  v141 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = *&v136[*(v28 + 32) + 8];
  v38 = *(v37 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact) == 1;
  v133 = v37;
  v150 = &v113 - v39;
  v140 = v5;
  v116 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v29;
  v114 = v30;
  if (v38)
  {
    v40 = v136;
    sub_100082A70(v136, &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v42 = swift_allocObject();
    v43 = sub_100082BF0(&v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
    __chkstk_darwin(v43);
    *(&v113 - 2) = v40;
    sub_100009C48(&qword_100101978, type metadata accessor for DestinationLabel);
    Button.init(action:label:)();
    v44 = v125;
    (*(v125 + 16))(v26, v33, v31);
    swift_storeEnumTagMultiPayload();
    sub_100009624(&qword_100101970, &qword_100101960);
    _ConditionalContent<>.init(storage:)();
    (*(v44 + 8))(v33, v31);
    v45 = v40;
  }

  else
  {
    v45 = v136;
    (*(v139 + 16))(v24, v136, v5);
    sub_100082A70(v24, v26);
    swift_storeEnumTagMultiPayload();
    sub_100009624(&qword_100101970, &qword_100101960);
    sub_100009C48(&qword_100101978, type metadata accessor for DestinationLabel);
    _ConditionalContent<>.init(storage:)();
    sub_100082AE8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v147;
  static Published.subscript.getter();

  v47 = enum case for EditMode.active(_:);
  v48 = v151;
  v50 = v148;
  v49 = v149;
  v136 = *(v151 + 104);
  (v136)(v148, enum case for EditMode.active(_:), v149);
  sub_100009C48(&qword_100101980, &type metadata accessor for EditMode);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v48 + 8);
  v52(v50, v49);
  v151 = v48 + 8;
  v52(v46, v49);
  v53 = v142;
  if (v51)
  {
    v54 = 1;
  }

  else
  {
    sub_100076698(v45);
    v54 = 1;
    if (v55)
    {
      v56 = static VerticalAlignment.center.getter();
      v57 = v53;
      v58 = v124;
      *v124 = v56;
      v58[1] = 0;
      *(v58 + 16) = 1;
      sub_10002E87C(&qword_1001019F0);
      sub_10007F03C();

      v59 = v58;
      v53 = v57;
      sub_10002C47C(v59, v57);
      v54 = 0;
    }
  }

  v60 = v140;
  v61 = v138;
  sub_1000042A8(v53, v54, 1, v137);
  if ((sub_10007F2C8() & 1) == 0)
  {
    v76 = v139;
    (*(v139 + 16))(v61, v45, v60);
    if ((*(v76 + 88))(v61, v60) == enum case for RootNavigationDestination.folder(_:))
    {
      (*(v76 + 96))(v61, v60);
      v77 = *v61;
      swift_getKeyPath();
      swift_getKeyPath();
      v78 = v147;
      static Published.subscript.getter();

      v80 = v148;
      v79 = v149;
      (v136)(v148, v47, v149);
      v81 = static EditMode.== infix(_:_:)();
      v52(v80, v79);
      v52(v78, v79);
      if (v81)
      {
        v82 = v116;
        sub_100082A70(v45, v116);
        v83 = (*(v115 + 80) + 16) & ~*(v115 + 80);
        v84 = (v114 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
        v85 = swift_allocObject();
        sub_100082BF0(v82, v85 + v83);
        *(v85 + v84) = v77;
        v86 = v77;
        sub_10002E87C(&qword_100101998);
        sub_100082F64();
        v87 = v118;
        Button.init(action:label:)();
        v88 = v121;
        BorderlessButtonStyle.init()();
        sub_100009624(&qword_1001019B8, &qword_100101928);
        sub_100009C48(&qword_1001019C0, &type metadata accessor for BorderlessButtonStyle);
        v89 = v123;
        v90 = v120;
        v91 = v117;
        View.buttonStyle<A>(_:)();
        (*(v122 + 8))(v88, v91);
        (*(v119 + 8))(v87, v90);
        LOBYTE(v85) = static Edge.Set.trailing.getter();
        EdgeInsets.init(_all:)();
        v93 = v92;
        v95 = v94;
        v97 = v96;
        v99 = v98;
        v100 = v89 + *(sub_10002E87C(&qword_1001019C8) + 36);
        *v100 = v85;
        *(v100 + 8) = v93;
        *(v100 + 16) = v95;
        *(v100 + 24) = v97;
        *(v100 + 32) = v99;
        *(v100 + 40) = 0;
        static AnyTransition.opacity.getter();
        static Animation.easeInOut(duration:)();
        Animation.delay(_:)();

        AnyTransition.animation(_:)();

        static AnyTransition.opacity.getter();
        static Animation.easeInOut(duration:)();
        AnyTransition.animation(_:)();

        v101 = static AnyTransition.asymmetric(insertion:removal:)();

        *(v89 + *(v132 + 36)) = v101;
        sub_10000823C(v89, v131, &qword_100101930);
        swift_storeEnumTagMultiPayload();
        sub_10002E87C(&qword_100100D48);
        sub_10006D5BC();
        sub_10008301C();
        v74 = v144;
        _ConditionalContent<>.init(storage:)();

        sub_100083220(v89, &qword_100101930);
        goto LABEL_10;
      }
    }

    else
    {
      (*(v76 + 8))(v61, v60);
    }

    v75 = 1;
    v74 = v144;
    goto LABEL_17;
  }

  v62 = Image.init(systemName:)();
  v63 = v127;
  v64 = v126;
  v65 = v129;
  (*(v127 + 104))(v126, enum case for Font.TextStyle.caption(_:), v129);
  v66 = type metadata accessor for Font.Design();
  v67 = v128;
  sub_1000042A8(v128, 1, 1, v66);
  static Font.system(_:design:weight:)();
  sub_100083220(v67, &qword_100100D20);
  (*(v63 + 8))(v64, v65);
  static Font.Weight.bold.getter();
  v68 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v70 = [objc_opt_self() tertiaryLabelColor];
  v71 = Color.init(_:)();
  v72 = swift_getKeyPath();
  v73 = v131;
  *v131 = v62;
  v73[1] = KeyPath;
  v73[2] = v68;
  v73[3] = v72;
  v73[4] = v71;
  swift_storeEnumTagMultiPayload();
  sub_10002E87C(&qword_100100D48);
  sub_10006D5BC();
  sub_10008301C();
  v74 = v144;
  _ConditionalContent<>.init(storage:)();
LABEL_10:
  v75 = 0;
LABEL_17:
  v102 = v150;
  v103 = sub_10002E87C(&qword_100101988);
  sub_1000042A8(v74, v75, 1, v103);
  v104 = v141;
  sub_10000823C(v102, v141, &qword_100101968);
  v105 = v143;
  sub_10000823C(v53, v143, &qword_100101950);
  v106 = v145;
  sub_10000823C(v74, v145, &qword_100101940);
  v107 = v53;
  v108 = v146;
  sub_10000823C(v104, v146, &qword_100101968);
  v109 = v74;
  v110 = sub_10002E87C(&qword_100101990);
  v111 = v108 + v110[12];
  *v111 = 0;
  *(v111 + 8) = 1;
  sub_10000823C(v105, v108 + v110[16], &qword_100101950);
  sub_10000823C(v106, v108 + v110[20], &qword_100101940);
  sub_100083220(v109, &qword_100101940);
  sub_100083220(v107, &qword_100101950);
  sub_100083220(v150, &qword_100101968);
  sub_100083220(v106, &qword_100101940);
  sub_100083220(v105, &qword_100101950);
  return sub_100083220(v104, &qword_100101968);
}

uint64_t sub_10007EFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RootNavigationDestination();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10007F03C()
{
  sub_1000200D8();

  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3;
  static Font.body.getter();
  v5 = Text.font(_:)();
  v7 = v6;
  v9 = v8;

  sub_10002072C(v0, v2, v4 & 1);

  Solarium.init()();
  View.staticIf<A, B, C>(_:then:else:)();
  sub_10002072C(v5, v7, v9 & 1);
}

uint64_t sub_10007F1AC@<X0>(uint64_t a1@<X8>)
{
  if (sub_10007D55C())
  {
    static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    static HierarchicalShapeStyle.secondary.getter();
  }

  result = Text.foregroundStyle<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007F244@<X0>(uint64_t a1@<X8>)
{
  static HierarchicalShapeStyle.secondary.getter();
  result = Text.foregroundStyle<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007F2C8()
{
  v1 = type metadata accessor for EditMode();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *(v0 + *(type metadata accessor for DestinationRow(0) + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v2 + 104))(v5, enum case for EditMode.active(_:), v1);
  sub_100009C48(&qword_100101980, &type metadata accessor for EditMode);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  if (v9)
  {
    return 0;
  }

  else
  {
    return *(v8 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact);
  }
}

uint64_t sub_10007F4AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  result = static Color.primary.getter();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = 3;
  return result;
}

uint64_t sub_10007F520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_10002E87C(&qword_100101910);
  __chkstk_darwin(v60);
  v58 = &v47 - v4;
  v5 = sub_10002E87C(&qword_100101ED0);
  __chkstk_darwin(v5 - 8);
  v56 = &v47 - v6;
  v7 = type metadata accessor for DestinationRow(0);
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002E87C(&qword_100101918);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v57 = &v47 - v16;
  v17 = __chkstk_darwin(v15);
  v55 = &v47 - v18;
  __chkstk_darwin(v17);
  v59 = &v47 - v19;
  v20 = type metadata accessor for RootNavigationDestination();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v23, a1, v20);
  if ((*(v21 + 88))(v23, v20) == enum case for RootNavigationDestination.folder(_:))
  {
    (*(v21 + 96))(v23, v20);
    v24 = *v23;
    v51 = type metadata accessor for DestinationRow;
    sub_100082A70(a1, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v52 = v11;
    v53 = v14;
    v25 = *(v54 + 80);
    v50 = (v25 + 16) & ~v25;
    v26 = (v8 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v54 = a2;
    v28 = v27;
    v49 = type metadata accessor for DestinationRow;
    v29 = sub_100082BF0(v9, v27 + ((v25 + 16) & ~v25));
    v47 = &v47;
    *(v28 + v26) = v24;
    __chkstk_darwin(v29);
    *(&v47 - 2) = v24;
    v30 = v24;
    v48 = a1;
    sub_10002E87C(&qword_100100F78);
    sub_100009624(&qword_100100F70, &qword_100100F78);
    Button.init(action:label:)();
    v31 = v56;
    static ButtonRole.destructive.getter();
    v32 = type metadata accessor for ButtonRole();
    sub_1000042A8(v31, 0, 1, v32);
    sub_100082A70(v48, v9);
    v33 = swift_allocObject();
    v34 = sub_100082BF0(v9, v33 + v50);
    *(v33 + v26) = v30;
    __chkstk_darwin(v34);
    *(&v47 - 2) = v30;
    v51 = v30;
    v35 = v55;
    Button.init(role:action:label:)();
    v36 = v54;
    v37 = v52;
    v38 = *(v52 + 16);
    v39 = v57;
    v40 = v59;
    v38(v57, v59, v10);
    v41 = v53;
    v38(v53, v35, v10);
    v42 = v58;
    v38(v58, v39, v10);
    v43 = sub_10002E87C(&qword_100101920);
    v38((v42 + *(v43 + 48)), v41, v10);

    v44 = *(v37 + 8);
    v44(v35, v10);
    v44(v40, v10);
    v44(v41, v10);
    v44(v39, v10);
    a2 = v36;
    sub_100082E60(v42, v36);
    v45 = 0;
  }

  else
  {
    (*(v21 + 8))(v23, v20);
    v45 = 1;
  }

  return sub_1000042A8(a2, v45, 1, v60);
}

uint64_t sub_10007FBD0()
{
  v0 = sub_100003A0C();
  type metadata accessor for DestinationRow(v0);
  return sub_100076B74();
}

uint64_t sub_10007FC0C(uint64_t a1, void *a2)
{
  v4 = sub_10002E87C(&qword_100100028);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RootNavigationDestination();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  sub_1000042A8(v9, 0, 1, v10);
  type metadata accessor for DestinationRow(0);
  sub_10000823C(v9, v7, &qword_100100028);
  sub_10002E87C(&qword_100101648);
  Binding.wrappedValue.setter();
  sub_100083220(v9, &qword_100100028);
  sub_10002E87C(&qword_1001000E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000C0DB0;
  *(v11 + 32) = a2;
  v12 = a2;
  sub_1000774D0();
}

uint64_t sub_10007FDC8(void *a1, unsigned int *a2)
{
  v4 = type metadata accessor for LibraryEditingOption();
  sub_100004458();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039BC();
  v10 = v9 - v8;
  *(v9 - v8) = a1;
  (*(v6 + 104))(v9 - v8, *a2, v4);
  v11 = a1;
  LibraryEditingOption.title.getter();
  LibraryEditingOption.symbolName.getter();
  sub_1000200D8();
  Label<>.init<A>(_:systemImage:)();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_10007FF14@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10002E87C(&qword_100101C78);
  return sub_10007FF68(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_10007FF68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10002E87C(&qword_100101C80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v37 = a1;
  Label.init(title:icon:)();
  v39 = RootNavigationDestination.displayName.getter();
  v40 = v10;
  sub_1000200D8();
  v11 = Text.init<A>(_:)();
  v35 = v12;
  v14 = v13;
  v34 = v15;
  v16 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v14 & 1;
  LOBYTE(v39) = v14 & 1;
  LOBYTE(__src[0]) = 0;
  v26 = *(v5 + 16);
  v27 = v36;
  v26(v36, v9, v4);
  v26(a2, v27, v4);
  v28 = *(sub_10002E87C(&qword_100101C88) + 48);
  __src[0] = v11;
  v29 = v35;
  __src[1] = v35;
  LOBYTE(__src[2]) = v14 & 1;
  v30 = v34;
  __src[3] = v34;
  LOBYTE(__src[4]) = v16;
  __src[5] = v18;
  __src[6] = v20;
  __src[7] = v22;
  __src[8] = v24;
  LOBYTE(__src[9]) = 0;
  memcpy(&a2[v28], __src, 0x49uLL);
  sub_10000823C(__src, &v39, &qword_100101C90);
  v31 = *(v5 + 8);
  v31(v9, v4);
  v39 = v11;
  v40 = v29;
  v41 = v25;
  v42 = v30;
  v43 = v16;
  v44 = v18;
  v45 = v20;
  v46 = v22;
  v47 = v24;
  v48 = 0;
  sub_100083220(&v39, &qword_100101C90);
  return (v31)(v36, v4);
}

uint64_t sub_10008025C@<X0>(uint64_t *a1@<X8>)
{
  RootNavigationDestination.symbolName.getter();
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000802A0()
{
  v0 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  RootNavigationDestination.dropBehavior.getter();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = v4 == enum case for LibraryWorkflowCreationBehavior.inFolder(_:) || v4 == enum case for LibraryWorkflowCreationBehavior.forWorkflowType(_:);
  v6 = v5;
  if (!v5)
  {
    if (v4 == enum case for LibraryWorkflowCreationBehavior.none(_:))
    {
      return 0;
    }

    if (v4 == enum case for LibraryWorkflowCreationBehavior.inRoot(_:))
    {
      return 1;
    }
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

BOOL sub_1000803E0()
{
  v0 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v20 = *(v0 - 8);
  v21 = v0;
  __chkstk_darwin(v0);
  v19 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002E87C(&qword_1001010F0);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = v6;
  v8 = swift_allocObject();
  v16 = xmmword_1000C0C20;
  *(v8 + 16) = xmmword_1000C0C20;
  v9 = WFWorkflowReferenceType();
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = *(v3 + 32);
  v18 = v2;
  v10(v8 + v7, v5, v2);
  v11 = DropInfo.hasItemsConforming(to:)(v8);

  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v16;
    v13 = WFWorkflowReferenceType();
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v10(v12 + v7, v5, v18);
    DropInfo.itemProviders(for:)();

    type metadata accessor for SidebarDropDelegate(0);
    v14 = v19;
    RootNavigationDestination.dropBehavior.getter();
    sub_1000777A0();

    (*(v20 + 8))(v14, v21);
  }

  return v11;
}

uint64_t sub_100080690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *&v59 = &type metadata for Never;
  *(&v59 + 1) = v3;
  *&v60 = &protocol witness table for Never;
  *(&v60 + 1) = v4;
  v5 = type metadata accessor for List();
  v47 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v44 - v9;
  v10 = *(a1 + 16);
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v45 = *(a1 + 32);
  *&v15 = v45;
  v51 = v3;
  v52 = v4;
  *(&v15 + 1) = v4;
  *&v16 = v10;
  *(&v16 + 1) = v3;
  v48 = v16;
  v49 = v15;
  v59 = v16;
  v60 = v15;
  v17 = type metadata accessor for List();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  v24 = type metadata accessor for _ConditionalContent();
  v53 = *(v24 - 8);
  v54 = v24;
  v25 = __chkstk_darwin(v24);
  v56 = &v44 - v26;
  v27 = *(a1 + 52);
  v28 = v50;
  if (*(v50 + v27) == 1)
  {
    (*(*(v11 - 8) + 16))(v14, v50, v11);
    v29 = sub_1000042A8(v14, 0, 1, v11);
    __chkstk_darwin(v29);
    v30 = v49;
    *(&v44 - 3) = v48;
    *(&v44 - 2) = v30;
    *(&v44 - 2) = v28;
    List.init(selection:content:)();
    swift_getWitnessTable();
    v31 = *(v18 + 16);
    v31(v23, v21, v17);
    v32 = *(v18 + 8);
    v32(v21, v17);
    v31(v21, v23, v17);
    swift_getWitnessTable();
    sub_100074DAC(v21, v17);
    v32(v21, v17);
    v32(v23, v17);
  }

  else
  {
    __chkstk_darwin(v25);
    v33 = v49;
    *(&v44 - 3) = v48;
    *(&v44 - 2) = v33;
    *(&v44 - 2) = v28;
    List<>.init(content:)();
    swift_getWitnessTable();
    v35 = v46;
    v34 = v47;
    v36 = *(v47 + 16);
    v36(v46, v8, v5);
    v37 = *(v34 + 8);
    v37(v8, v5);
    v36(v8, v35, v5);
    swift_getWitnessTable();
    sub_100074EA4(v8, v17, v5);
    v37(v8, v5);
    v37(v35, v5);
  }

  WitnessTable = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v39;
  v40 = v54;
  swift_getWitnessTable();
  v41 = v53;
  v42 = v56;
  (*(v53 + 16))(v55, v56, v40);
  return (*(v41 + 8))(v42, v40);
}

void sub_100080C78()
{
  sub_1000079FC();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 - 8);
  __chkstk_darwin(v3);
  sub_10000F748();
  v6 = type metadata accessor for ConditionalSelectionList();
  v7 = *(v5 + 16);
  v7(v0, v4 + *(v6 + 56), v2);
  v8 = sub_100006144();
  (v7)(v8);
  v9 = sub_1000043C4();
  v10(v9);
  sub_1000046DC();
}

uint64_t sub_100080D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  OpaqueTypeConformance2 = a3;
  v56 = a4;
  v52 = a1;
  v57 = a7;
  v49 = *(a5 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v13;
  v14 = type metadata accessor for Prominence();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Section();
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v67 = &protocol witness table for Text;
  v68 = a6;
  v61 = a6;
  v69 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v65 = v17;
  v66 = WitnessTable;
  v62 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v23 = __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v50 = &v47 - v26;
  v27 = type metadata accessor for _ConditionalContent();
  v59 = *(v27 - 8);
  v60 = v27;
  v28 = __chkstk_darwin(v27);
  v58 = &v47 - v29;
  if (a2)
  {
    v65 = v52;
    v66 = a2;
    sub_1000200D8();

    v47 = a5;
    Section<>.init<A>(_:content:)();
    v30 = v53;
    v31 = v54;
    (*(v53 + 104))(v16, enum case for Prominence.increased(_:), v54);
    v32 = v62;
    View.headerProminence(_:)();
    (*(v30 + 8))(v16, v31);
    (*(v51 + 8))(v19, v17);
    v65 = v17;
    v66 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = *(v22 + 16);
    v34 = v50;
    v33(v50, v25, OpaqueTypeMetadata2);
    v56 = v17;
    v35 = *(v22 + 8);
    v35(v25, OpaqueTypeMetadata2);
    v33(v25, v34, OpaqueTypeMetadata2);
    v36 = v58;
    sub_100074DAC(v25, OpaqueTypeMetadata2);
    v35(v25, OpaqueTypeMetadata2);
    v35(v34, OpaqueTypeMetadata2);
    v17 = v56;
  }

  else
  {
    OpaqueTypeConformance2(v28);
    v37 = v49;
    v38 = *(v49 + 16);
    v39 = v48;
    v38(v48, v12, a5);
    v40 = *(v37 + 8);
    v40(v12, a5);
    v38(v12, v39, a5);
    v65 = v17;
    v66 = v62;
    swift_getOpaqueTypeConformance2();
    v41 = v58;
    sub_100074EA4(v12, OpaqueTypeMetadata2, a5);
    v42 = v12;
    v36 = v41;
    v40(v42, a5);
    v40(v39, a5);
  }

  v65 = v17;
  v66 = v62;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v60;
  v63 = v43;
  v64 = v61;
  swift_getWitnessTable();
  v45 = v59;
  (*(v59 + 16))(v57, v36, v44);
  return (*(v45 + 8))(v36, v44);
}

uint64_t sub_100081424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_10002E87C(a5);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_10000823C(a1, &v15 - v12, a5);
  return a7(v13);
}

uint64_t sub_10008150C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_10000823C(__dst, &v2, &qword_100101268);
  return sub_100076554(__dst);
}

unint64_t sub_10008156C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100081668(a1, a2, v4);
}

unint64_t sub_1000815E4(uint64_t a1)
{
  type metadata accessor for RootNavigationDestination();
  sub_10000F1BC();
  sub_100009C48(v2, v3);
  sub_100006144();
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10008171C(a1, v4);
}

unint64_t sub_100081668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10008171C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for RootNavigationDestination();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100009C48(&qword_100100090, &type metadata accessor for RootNavigationDestination);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000818D8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000815E4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  sub_10002E87C(&qword_100103270);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v12 + 48);
  v9 = type metadata accessor for RootNavigationDestination();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 16 * v5);
  sub_100009C48(&qword_100101720, &type metadata accessor for RootNavigationDestination);
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

unint64_t sub_100081A34()
{
  result = qword_100101790;
  if (!qword_100101790)
  {
    sub_100041CB4(&qword_100101750);
    sub_100041CB4(&qword_100101740);
    sub_100041CB4(&qword_100101738);
    type metadata accessor for SidebarListStyle();
    sub_100041CB4(&qword_100101730);
    sub_100041CB4(&qword_100101760);
    sub_100041CB4(&qword_100101768);
    sub_100009624(&qword_100101770, &qword_100101730);
    sub_1000200D8();
    sub_100009624(&qword_100101778, &qword_100101760);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100009624(&qword_100101078, &qword_100101060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101790);
  }

  return result;
}

unint64_t sub_100081C98()
{
  result = qword_100101798;
  if (!qword_100101798)
  {
    sub_100041CB4(&qword_100101788);
    sub_100081A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101798);
  }

  return result;
}

uint64_t sub_100081D54()
{
  type metadata accessor for SidebarView(0);
  sub_10000B120();
  sub_10000F44C();
  v0 = sub_100012B3C();
  if (!sub_100084810(v0))
  {
    sub_100002F04();
    v1 = sub_1000042EC();
    v2(v1);
  }

  sub_10002E87C(&qword_100101598);
  sub_100017438();

  v3 = sub_1000118C4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100081E84()
{
  v2 = sub_100005730();
  v3 = type metadata accessor for SidebarView(v2);
  sub_10000A804(v3);
  sub_100019C64();
  sub_100007A1C();
  v8 = v4;
  return v0(v1 + v5, v7);
}

uint64_t sub_100081F38()
{
  sub_100007A1C();
  v4 = v0;
  return v1(v3);
}

uint64_t sub_100081F78@<X0>(_BYTE *a1@<X8>)
{
  sub_10000799C();
  sub_100003A3C();

  return sub_1000799CC(a1);
}

uint64_t sub_100081FDC()
{
  type metadata accessor for SidebarView(0);
  sub_10000B120();
  swift_unknownObjectRelease();
  sub_10000F44C();
  v0 = sub_100012B3C();
  if (!sub_100084810(v0))
  {
    sub_100002F04();
    v1 = sub_1000042EC();
    v2(v1);
  }

  sub_10002E87C(&qword_100101598);
  sub_100017438();
  v3 = sub_1000118C4();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_1000820C4(_BYTE *a1)
{
  sub_10000799C();
  sub_100003A3C();

  sub_100079F38(a1);
}

uint64_t sub_100082128()
{
  sub_10000799C();
  v0 = sub_100007B30();

  return sub_10007AE20(v0, v1, v2);
}

unint64_t sub_10008218C()
{
  result = qword_1001017E0;
  if (!qword_1001017E0)
  {
    sub_100041CB4(&qword_1001017C8);
    sub_100009624(&qword_1001017E8, &qword_1001017F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001017E0);
  }

  return result;
}

uint64_t sub_10008223C@<X0>(uint64_t a1@<X8>)
{
  sub_10000799C();
  sub_100003A3C();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_10007AFA8(v4, v5, v1 + v3, a1);
}

uint64_t sub_1000822A0()
{
  type metadata accessor for SidebarView(0);
  sub_10000B120();
  sub_10000F44C();
  v0 = sub_100012B3C();
  if (!sub_100084810(v0))
  {
    sub_100002F04();
    v1 = sub_1000042EC();
    v2(v1);
  }

  sub_10002E87C(&qword_100101598);
  sub_100017438();
  v3 = sub_1000118C4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100082380()
{
  sub_10000799C();
  v0 = sub_100007B30();

  return sub_10007B9C8(v0, v1, v2);
}

uint64_t sub_1000823E4(uint64_t a1)
{
  sub_10000799C();
  sub_100003A3C();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_10007C588(a1, v4, v5, v1 + v3);
}

uint64_t sub_100082448@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

void sub_1000824C8()
{
  v0 = type metadata accessor for SidebarView(0);
  sub_10000A804(v0);
  sub_100019C64();

  sub_10007CB0C();
}

unint64_t sub_100082594()
{
  result = qword_100101850;
  if (!qword_100101850)
  {
    sub_100041CB4(&qword_1001017F8);
    sub_10008264C();
    sub_100009624(&qword_1001018B0, &qword_1001018B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101850);
  }

  return result;
}

unint64_t sub_10008264C()
{
  result = qword_100101858;
  if (!qword_100101858)
  {
    sub_100041CB4(&qword_100101848);
    sub_100082704();
    sub_100009624(&qword_1001018A0, &qword_1001018A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101858);
  }

  return result;
}

unint64_t sub_100082704()
{
  result = qword_100101860;
  if (!qword_100101860)
  {
    sub_100041CB4(&qword_100101840);
    sub_1000827BC();
    sub_100009624(&qword_100101890, &qword_100101898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101860);
  }

  return result;
}

unint64_t sub_1000827BC()
{
  result = qword_100101868;
  if (!qword_100101868)
  {
    sub_100041CB4(&qword_100101838);
    sub_100082874();
    sub_100009624(&qword_100101880, &qword_100101888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101868);
  }

  return result;
}

unint64_t sub_100082874()
{
  result = qword_100101870;
  if (!qword_100101870)
  {
    sub_100041CB4(&qword_100101878);
    sub_100041CB4(&qword_100101820);
    type metadata accessor for NavigationDestinationEntity();
    sub_100041CB4(&qword_1000FF620);
    type metadata accessor for RootNavigationDestination();
    type metadata accessor for DestinationRow(255);
    sub_100009C48(&qword_100101828, type metadata accessor for DestinationRow);
    swift_getOpaqueTypeConformance2();
    sub_100009C48(&qword_100101720, &type metadata accessor for RootNavigationDestination);
    swift_getOpaqueTypeConformance2();
    sub_100009C48(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101870);
  }

  return result;
}

uint64_t sub_100082A70(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A0C();
  v4(v3);
  sub_100003EC8();
  v5 = sub_100005BCC();
  v6(v5);
  return a2;
}

uint64_t sub_100082AE8()
{
  v1 = sub_100005730();
  v2(v1);
  sub_1000044FC();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_100082B40()
{
  result = qword_100101900;
  if (!qword_100101900)
  {
    sub_100041CB4(&qword_1001018F0);
    sub_100009624(&qword_100101908, &qword_100101910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101900);
  }

  return result;
}

uint64_t sub_100082BF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A0C();
  v4(v3);
  sub_100003EC8();
  v5 = sub_100005BCC();
  v6(v5);
  return a2;
}

uint64_t sub_100082C6C()
{
  type metadata accessor for DestinationRow(0);
  sub_10000F804();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v15 = *(v6 + 64);
  v7 = type metadata accessor for RootNavigationDestination();
  sub_100003EC8();
  v9 = *(v8 + 8);
  v10 = sub_100006144();
  v9(v10);
  v11 = v1 + v5 + *(v0 + 20);

  v12 = sub_10002E87C(&qword_100101648);
  if (!sub_10008483C(v12))
  {
    (v9)(v11 + v2, v7);
  }

  v13 = (v15 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v1, v13 + 8, v4 | 7);
}

uint64_t sub_100082DC0()
{
  v1 = type metadata accessor for DestinationRow(0);
  sub_10000A804(v1);
  sub_100019C64();
  v4 = *(v0 + v3);

  return sub_10007FC0C(v0 + v2, v4);
}

uint64_t sub_100082E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_100101910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082EF4()
{
  v0 = type metadata accessor for DestinationRow(0);
  sub_10000A804(v0);
  sub_100019C64();
  return sub_10007FBD0();
}

unint64_t sub_100082F64()
{
  result = qword_1001019A0;
  if (!qword_1001019A0)
  {
    sub_100041CB4(&qword_100101998);
    sub_1000212A0();
    sub_100009624(&qword_1001019A8, &qword_1001019B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001019A0);
  }

  return result;
}

unint64_t sub_10008301C()
{
  result = qword_1001019D0;
  if (!qword_1001019D0)
  {
    sub_100041CB4(&qword_100101930);
    sub_1000830D4();
    sub_100009624(&qword_1001019E0, &qword_1001019E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001019D0);
  }

  return result;
}

unint64_t sub_1000830D4()
{
  result = qword_1001019D8;
  if (!qword_1001019D8)
  {
    sub_100041CB4(&qword_1001019C8);
    sub_100041CB4(&qword_100101928);
    type metadata accessor for BorderlessButtonStyle();
    sub_100009624(&qword_1001019B8, &qword_100101928);
    sub_100009C48(&qword_1001019C0, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001019D8);
  }

  return result;
}

uint64_t sub_100083220(uint64_t a1, uint64_t *a2)
{
  sub_10002E87C(a2);
  sub_1000044FC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100083274()
{
  v0 = type metadata accessor for DestinationRow(0);
  sub_100002EE0(v0);

  return sub_10007EF94();
}

uint64_t sub_1000832E0(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for LibraryWorkflowCreationBehavior();
  sub_10000A804(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  sub_100019CC0();
  v8 = v1[2];
  v9 = v1[3];
  v11 = *(v1 + v10);
  v12 = v1[4];
  v14 = *(v1 + v13);
  v15 = *(v1 + v13 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100084800;

  return sub_100077B00(a1, v8, v9, v12, v1 + v7, v11, v14, v15);
}

uint64_t sub_10008341C()
{
  sub_100004304();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  swift_task_alloc();
  sub_100006180();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1000834C4;

  return sub_100078078(v5, v3, v6);
}

uint64_t sub_1000834C4()
{
  v1 = *v0;
  sub_100005224();
  *v2 = v1;

  sub_100003BDC();

  return v3();
}

uint64_t sub_1000835AC(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for LibraryWorkflowCreationBehavior();
  sub_10000A804(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_100019CC0();
  v9 = *(v1 + v8);
  v11 = *(v1 + v10);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100084800;

  return sub_100078CA8(a1, v12, v13, v1 + v7, v9, v11, v14);
}

uint64_t sub_1000836F0()
{
  sub_100004304();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_task_alloc();
  sub_100006180();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_100084800;
  v6 = sub_100004320();

  return sub_100078810(v6, v7, v2, v3);
}

uint64_t sub_100083794(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100083888;

  return v5(v2 + 16);
}

uint64_t sub_100083888()
{
  sub_100004304();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_100005224();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}