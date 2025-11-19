uint64_t sub_10005C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10005C4C0(uint64_t a1)
{
  v2 = type metadata accessor for ResizeSheetView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10005CE14(a1, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10005CE7C(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  sub_10005CE14(a1, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = swift_allocObject();
  sub_10005CE7C(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v5);
  v9[0] = 1;
  v10 = sub_10005CEE0;
  v11 = v6;
  v12 = 513;
  v13 = sub_10005D098;
  v14 = v7;
  sub_100005804(&qword_100208150);
  TupleToolbarContent.init(_:)();
}

uint64_t sub_10005C69C(uint64_t a1)
{
  v16 = j___s7SwiftUI17EnvironmentValuesVMa();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_100208138);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResizeSheetView();
  sub_100006600(a1 + *(v12 + 24), v7, &qword_100208138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
    os_log(_:dso:log:_:_:)();

    j___s7SwiftUI17EnvironmentValuesVACycfC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10005C924(uint64_t a1)
{
  v22 = type metadata accessor for DismissAction();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResizeViewModel.SizeUnit();
  Description = v5[-1].Description;
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResizeSheetView();
  v10 = (a1 + *(v9 + 28));
  v11 = *v10;
  v20 = v10[1];
  v21 = v11;
  v12 = (a1 + *(v9 + 20));
  v14 = v12[1];
  v23 = *v12;
  v13 = v23;
  v24 = v14;
  sub_100005804(&qword_100208EF0);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  Description[13](v8, 0, v5);
  v15 = sub_100175544(v8);
  v17 = v16;

  (Description[1])(v8, v5);
  v23 = v13;
  v24 = v14;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v18 = sub_100171D88();

  v23 = v13;
  v24 = v14;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  LOBYTE(v5) = sub_100173098();

  v21(v5 & 1, v15, v17, v18);
  sub_10005952C(v4);
  DismissAction.callAsFunction()();
  return (*(v2 + 8))(v4, v22);
}

uint64_t sub_10005CBAC()
{
  sub_100005804(&qword_100208EA8);
  sub_1000059D4(&qword_100208EB0);
  sub_1000059D4(&qword_1002080F8);
  sub_1000059D4(&qword_100208EB8);
  sub_1000059D4(&qword_100208EC0);
  sub_1000059D4(&qword_100208EC8);
  sub_1000059D4(&qword_100208ED0);
  type metadata accessor for InsetGroupedListStyle();
  sub_100007888(&qword_100208ED8, &qword_100208ED0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100007888(&qword_100208118, &qword_1002080F8);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10005CE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResizeSheetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005CE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResizeSheetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005CEF8()
{
  v1 = type metadata accessor for ResizeSheetView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ResizeViewModel.SizeUnit();
  (*(v3[-1].Description + 1))(v2, v3);
  sub_100005804(&qword_100208DF8);

  v4 = *(v1 + 24);
  sub_100005804(&qword_100208138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10005D0B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ResizeSheetView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10005D124()
{
  result = qword_100208F10;
  if (!qword_100208F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208F10);
  }

  return result;
}

uint64_t sub_10005D250@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100173098();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D3B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100173910();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D46C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = type metadata accessor for Logger();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005804(&unk_10020A0B0);
  __chkstk_darwin(v7 - 8);
  v9 = v35 - v8;
  v10 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v36 = type metadata accessor for BookmarkableURL(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DocumentOpeningOptions();
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel) && (, v18 = sub_1001632E0(), , v18) && (v19 = sub_1001152D4(), v21 = v20, , (v35[1] = v19) != 0))
  {
    ObjectType = swift_getObjectType();
    if (sub_100128074(a1, ObjectType, v21))
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_100138E84(v17);

      sub_100138BF8(v31);
      v32 = type metadata accessor for URL();
      (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
      v33 = v37;
      (*(v37 + 16))(v9, v17, v15);
      (*(v33 + 56))(v9, 0, 1, v15);
      sub_100152B90(v12, v9, v14);
      sub_10006037C(&unk_100209FF0, type metadata accessor for BookmarkableURL);
      sub_10006037C(&qword_100208F80, type metadata accessor for BookmarkableURL);
      sub_10006037C(&qword_10020A000, type metadata accessor for BookmarkableURL);
      v34 = v36;
      OpenWindowAction.callAsFunction<A>(value:)();
      swift_unknownObjectRelease();
      (*(v38 + 8))(v14, v34);
      return (*(v33 + 8))(v17, v15);
    }
  }

  else
  {
    sub_1001450D4(v6);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (j__os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = a1;
      v43 = v27;
      *v26 = 136315138;
      type metadata accessor for NewDocumentAction(0);

      v28 = String.init<A>(describing:)();
      v30 = sub_10008B044(v28, v29, &v43);

      *(v26 + 4) = v30;
      j___os_log_impl(&dword_100000000, v24, v25, "No creationTarget yet! Request to %s will be dropped.", v26, 0xCu);
      sub_10000867C(v27);
    }

    return (*(v40 + 8))(v6, v41);
  }
}

uint64_t sub_10005DA00(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10005F93C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x80000001001B13F0;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005DB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006600(a3, v25 - v10, &unk_100206DF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007710(v11, &unk_100206DF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100007710(a3, &unk_100206DF0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007710(a3, &unk_100206DF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10005DE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006600(a3, v25 - v10, &unk_100206DF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007710(v11, &unk_100206DF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100005804(&qword_100208F88);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007710(a3, &unk_100206DF0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007710(a3, &unk_100206DF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100005804(&qword_100208F88);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10005E19C(uint64_t a1)
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

void sub_10005E290()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel))
  {
    v2 = objc_opt_self();

    v3 = [v2 generalPasteboard];
    type metadata accessor for Pasteboard();
    *(swift_initStackObject() + 16) = v3;
    LOBYTE(v2) = sub_100029C84();

    sub_100163BA0(v2 & 1);
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = v4;
  [v6 removeObserver:v1 name:v7 object:0];

  v8 = [v5 defaultCenter];
  v9 = [objc_opt_self() mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10005E578;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005E19C;
  aBlock[3] = &unk_1001F0E88;
  v11 = j___Block_copy(aBlock);

  v12 = [v8 addObserverForName:v7 object:0 queue:v9 usingBlock:v11];
  j___Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_10005E4D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10005E580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10005E598()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel))
    {
      v2 = objc_opt_self();

      v3 = [v2 generalPasteboard];
      type metadata accessor for Pasteboard();
      *(swift_initStackObject() + 16) = v3;
      v4 = sub_100029C84();

      sub_100163BA0(v4 & 1);
    }
  }

  else
  {
  }
}

uint64_t sub_10005E714(uint64_t a1, char a2, uint64_t a3)
{
  v31[1] = a3;
  v6 = type metadata accessor for Logger();
  v31[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005804(&unk_10020A0B0);
  __chkstk_darwin(v9 - 8);
  v11 = v31 - v10;
  v12 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - v13;
  v15 = type metadata accessor for BookmarkableURL(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v14, a1, v19);
    (*(v20 + 56))(v14, 0, 1, v19);
    v21 = type metadata accessor for DocumentOpeningOptions();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    sub_100152B90(v14, v11, v18);
    sub_10006037C(&unk_100209FF0, type metadata accessor for BookmarkableURL);
    sub_10006037C(&qword_100208F80, type metadata accessor for BookmarkableURL);
    sub_10006037C(&qword_10020A000, type metadata accessor for BookmarkableURL);
    OpenWindowAction.callAsFunction<A>(value:)();
    return (*(v16 + 8))(v18, v15);
  }

  else if (*(v3 + OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel) && (, v23 = sub_1001632E0(), , v23) && (v24 = sub_1001152D4(), v26 = v25, , v24))
  {
    ObjectType = swift_getObjectType();
    sub_100128088(a1, ObjectType, v26);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1001450D4(v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      j___os_log_impl(&dword_100000000, v28, v29, "No creationTarget yet and no support for multiple windows! Request to handleOpenDocument will be dropped.", v30, 2u);
    }

    return (*(v31[0] + 8))(v8, v6);
  }
}

uint64_t sub_10005EBB8(id a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v69 = a5;
  v70 = a7;
  v63 = a6;
  v76 = a3;
  v77 = a4;
  v65 = a2;
  v72 = a1;
  v7 = type metadata accessor for Logger();
  v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v9 - 8);
  v78 = &v61 - v10;
  v11 = sub_100005804(&unk_10020A0B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v61 - v12;
  v14 = type metadata accessor for BookmarkableURL(0);
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  __chkstk_darwin(v14);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v73 = &v61 - v17;
  v18 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MainActor();
  v29 = static MainActor.shared.getter();
  v74 = v28;
  v75 = v29;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006600(v72, v23, &qword_10020A4B0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v30 = v64;
    v31 = v7;
    sub_100007710(v23, &qword_10020A4B0);
    if (v65)
    {
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = v33;
    }

    else
    {
      v34 = 0x80000001001B1470;
      v32 = 0xD000000000000013;
    }

    v49 = v70;
    v48 = v71;
    sub_100145164(v71);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (j__os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v52 = 136315394;
      *(v52 + 4) = sub_10008B044(v63, v49, v79);
      *(v52 + 12) = 2080;
      v53 = sub_10008B044(v32, v34, v79);

      *(v52 + 14) = v53;
      j___os_log_impl(&dword_100000000, v50, v51, "%s failed - unable to import document: %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v30 + 8))(v48, v31);
    v54 = type metadata accessor for TaskPriority();
    v55 = v78;
    (*(*(v54 - 8) + 56))(v78, 1, 1, v54);
    v56 = v77;

    v57 = static MainActor.shared.getter();
    v58 = swift_allocObject();
    v58[2] = v57;
    v59 = v76;
    v58[3] = &protocol witness table for MainActor;
    v58[4] = v59;
    v58[5] = v56;
    sub_10005DB88(0, 0, v55, &unk_10019DED0, v58);
  }

  else
  {
    v35 = *(v25 + 32);
    v62 = v27;
    v35(v27, v23, v24);
    (*(v25 + 16))(v20, v27, v24);
    (*(v25 + 56))(v20, 0, 1, v24);
    v36 = type metadata accessor for DocumentOpeningOptions();
    (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
    v37 = v73;
    sub_100152B90(v20, v13, v73);
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v78, 1, 1, v38);
    v40 = v66;
    v39 = v67;
    v41 = v68;
    (*(v67 + 16))(v66, v37, v68);
    v42 = v77;

    v72 = v69;
    v43 = static MainActor.shared.getter();
    v44 = (*(v39 + 80) + 48) & ~*(v39 + 80);
    v45 = (v15 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 2) = v43;
    v47 = v76;
    *(v46 + 3) = &protocol witness table for MainActor;
    *(v46 + 4) = v47;
    *(v46 + 5) = v42;
    (*(v39 + 32))(&v46[v44], v40, v41);
    *&v46[v45] = v72;
    sub_10005DB88(0, 0, v78, &unk_10019DEE0, v46);

    (*(v39 + 8))(v73, v41);
    (*(v25 + 8))(v62, v24);
  }
}

uint64_t sub_10005F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100005804(&qword_1002074C0);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005F4B8, v8, v7);
}

uint64_t sub_10005F4B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  v4 = type metadata accessor for BookmarkableURL(0);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v3(v1);
  sub_100007710(v1, &qword_1002074C0);
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10005F630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100005804(&qword_1002074C0);
  v5[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005F700, v7, v6);
}

uint64_t sub_10005F700()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = type metadata accessor for BookmarkableURL(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v2(v1);
  sub_100007710(v1, &qword_1002074C0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005F7D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100007710(v8, &qword_10020A4B0);
}

uint64_t sub_10005F964(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005FA5C;

  return v6(a1);
}

uint64_t sub_10005FA5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005FB54(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10005FC48;

  return v5(v2 + 32);
}

uint64_t sub_10005FC48()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10005FD5C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v7 = sub_100005804(&qword_1002074C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for Logger();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - v14;
  v16 = type metadata accessor for UTType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v51 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  aBlock = 0xD00000000000001ALL;
  v51 = 0x80000001001B1430;
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x203A6C7275202CLL;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  type metadata accessor for URL();
  sub_10006037C(&qword_100206DD0, &type metadata accessor for URL);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = aBlock;
  v25 = v51;
  sub_100177DE4();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v26 = v48;
    sub_100007710(v15, &qword_10020A0C0);
    sub_100145164(v12);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (j__os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136315138;
      v31 = sub_10008B044(v24, v25, &aBlock);

      *(v29 + 4) = v31;
      sub_10000867C(v30);
    }

    else
    {
    }

    (*(v46 + 8))(v12, v47);
    v45 = type metadata accessor for BookmarkableURL(0);
    (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
    v26(v9);
    return sub_100007710(v9, &qword_1002074C0);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_100005804(&qword_100208B40);
    v32 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10019A9F0;
    (*(v17 + 16))(v33 + v32, v19, v16);
    v34 = objc_allocWithZone(UIDocumentBrowserViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v36 = [v34 initForOpeningContentTypes:isa];

    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v40 = swift_allocObject();
    v41 = v49;
    v40[2] = v48;
    v40[3] = v41;
    v40[4] = v36;
    v40[5] = v24;
    v40[6] = v25;
    v54 = sub_10006040C;
    v55 = v40;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_10005F7D8;
    v53 = &unk_1001F0F00;
    v42 = j___Block_copy(&aBlock);

    v43 = v36;

    [v43 revealDocumentAtURL:v39 importIfNeeded:1 completion:v42];
    j___Block_release(v42);

    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_10006037C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000603C4()
{

  return swift_deallocObject();
}

uint64_t sub_10006041C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006045C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013194;

  return sub_10005F630(a1, v4, v5, v7, v6);
}

uint64_t sub_10006051C()
{
  v1 = type metadata accessor for BookmarkableURL(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000605FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BookmarkableURL(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10002DD0C;

  return sub_10005F3E0(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100060734()
{

  return swift_deallocObject();
}

uint64_t sub_10006076C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002DD0C;

  return sub_10005F964(a1, v4);
}

uint64_t sub_100060824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002DD0C;

  return sub_10005FB54(a1, v4);
}

uint64_t sub_1000608DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013194;

  return sub_10005FB54(a1, v4);
}

uint64_t sub_1000609CC(char *a1)
{
  v2 = sub_100005804(&qword_100207328);
  __chkstk_darwin(v2 - 8);
  v43 = &v40[-v3];
  v4 = type metadata accessor for BannerViewModel.Configuration(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100005804(&qword_1002091D8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v40[-v9];
  v11 = sub_100005804(&unk_100207010);
  __chkstk_darwin(v11 - 8);
  v44 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  v48 = a1;
  v46 = *&a1[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController];
  sub_100005804(&qword_1002091E0);
  UIViewControllerRepresentableContext.coordinator.getter();
  v22 = v52;
  sub_1000699E8(v52 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_lastAppliedBannerConfiguration, v21);

  v49 = sub_100005804(&qword_1002090F8);
  Bindable.wrappedValue.getter();
  v47 = type metadata accessor for ImageDocumentViewModel();
  sub_1001331EC(v47, &off_1001F76D0, v18);

  v23 = *(v8 + 56);
  v51 = v18;
  sub_1000699E8(v18, v10);
  v50 = v21;
  sub_1000699E8(v21, &v10[v23]);
  v45 = v5;
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) == 1)
  {
    v25 = v24(&v10[v23], 1, v4);
    v26 = v46;
    if (v25 == 1)
    {
      sub_100007710(v10, &unk_100207010);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1000699E8(v10, v15);
  if (v24(&v10[v23], 1, v4) == 1)
  {
    (*(v45 + 8))(v15, v4);
    v26 = v46;
LABEL_6:
    sub_100007710(v10, &qword_1002091D8);
    v27 = v44;
LABEL_7:
    sub_1000699E8(v51, v27);
    v28 = v24(v27, 1, v4);
    v29 = v26;
    if (v28 == 1)
    {
      sub_100007710(v27, &unk_100207010);
      v30 = v43;
    }

    else
    {
      v30 = v43;
      sub_100082668(v43);
      (*(v45 + 8))(v27, v4);
      v28 = 0;
    }

    v31 = type metadata accessor for BannerViewConfiguration();
    (*(*(v31 - 8) + 56))(v30, v28, 1, v31);
    dispatch thunk of CanvasElementViewController.bannerViewConfiguration.setter();

    goto LABEL_11;
  }

  v37 = v45;
  v38 = v42;
  (*(v45 + 32))(v42, &v10[v23], v4);
  sub_100069BEC(&qword_1002091E8, 255, type metadata accessor for BannerViewModel.Configuration);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v37 + 8);
  v39(v38, v4);
  v39(v15, v4);
  sub_100007710(v10, &unk_100207010);
  v26 = v46;
  v27 = v44;
  if ((v41 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v32 = v26;
  v33 = [v48 traitCollection];
  [v33 horizontalSizeClass];

  dispatch thunk of CanvasElementViewController.automaticallyShowVisualSearchResults.setter();
  Bindable.wrappedValue.getter();
  v34 = v47;
  v35 = sub_10013B508(v47, &off_1001F76D0);

  if ((v35 & 1) == 0)
  {
    Bindable.wrappedValue.getter();
    sub_10013B720(v34, &off_1001F76D0);
  }

  dispatch thunk of CanvasElementViewController.activeInteractionTypes.setter();

  sub_100007710(v51, &unk_100207010);
  return sub_100007710(v50, &unk_100207010);
}

uint64_t sub_10006104C()
{
  sub_100005804(&qword_1002090F8);
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_100061094(uint64_t a1)
{
  sub_100066D88(a1);
  type metadata accessor for ImageDocumentContentViewController();

  return swift_dynamicCastClassUnconditional();
}

id sub_1000610E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(type metadata accessor for DocumentContentCoordinator());
  sub_100069B24(v2, v5, type metadata accessor for ImageDocumentViewRepresentable);
  result = sub_1000689E0(v5, v6);
  *a2 = result;
  return result;
}

uint64_t sub_10006118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100069BEC(&qword_1002091A0, 255, type metadata accessor for ImageDocumentViewRepresentable);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100061224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100069BEC(&qword_1002091A0, 255, type metadata accessor for ImageDocumentViewRepresentable);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000612BC()
{
  sub_100069BEC(&qword_1002091A0, 255, type metadata accessor for ImageDocumentViewRepresentable);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_100061330(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CapsuleWrapper();
  Description = v4[-1].Description;
  v55 = v4;
  __chkstk_darwin(v4);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&qword_1002071B0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v51 - v7);
  v9 = sub_100005804(&qword_1002090C0);
  __chkstk_darwin(v9 - 8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = sub_100005804(&qword_1002090C8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v51 = &v51 - v16;
  v17 = type metadata accessor for CanvasEditingMode();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_isFirstAppearance] = 1;
  *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher] = 0;
  *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_imageViewUpdates] = 0;
  v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_updatableMetadataTrackingEnabled] = 0;
  *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_pendingPaperKitCaptionUpdateTask] = 0;
  *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_viewModel] = a1;
  type metadata accessor for ImageCanvasElementViewController();

  v56 = a1;
  sub_10012DFF0();
  (*(v18 + 104))(v20, enum case for CanvasEditingMode.allowsPencilDrawingOnly(_:), v17);
  v21 = CanvasElementViewController.__allocating_init(context:editingMode:allowMediaCanvasElements:transparentBackground:)();
  dispatch thunk of ImageCanvasElementViewController.allowAutomaticZoomScaleAdjustment.setter();
  v22 = type metadata accessor for Radar147760182();
  if (sub_100187A14(v22, &off_1001F8530))
  {
    v23 = &_swiftEmptySetSingleton;
  }

  else
  {
    if (byte_100209C70)
    {
      v24 = &off_1001EE848;
    }

    else
    {
      v24 = &off_1001EE870;
    }

    v23 = sub_100069014(v24);
  }

  type metadata accessor for VisionKitUtilities();
  v25 = v21;
  sub_100164518();
  v26 = v55;
  dispatch thunk of CanvasElementViewController.isImageAnalysisEnabled.setter();
  sub_10012B098(v8);
  v27 = Description;
  if ((Description)[6](v8, 1, v26))
  {
    sub_100007710(v8, &qword_1002071B0);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_10:
    sub_100007710(v13, &qword_1002090C0);
    goto LABEL_11;
  }

  v28 = v23;
  v29 = v53;
  (v27)[2](v53, v8, v26);
  sub_100007710(v8, &qword_1002071B0);
  sub_1001781B0(aBlock);
  v30 = v29;
  v23 = v28;
  (v27[1])(v30, v26);
  v31 = swift_dynamicCast();
  v32 = *(v15 + 56);
  v32(v13, v31 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_10;
  }

  v49 = v51;
  (*(v15 + 32))(v51, v13, v14);
  v50 = v52;
  (*(v15 + 16))(v52, v49, v14);
  v32(v50, 0, 1, v14);
  dispatch thunk of CanvasElementViewController.rootElement.setter();
  (*(v15 + 8))(v49, v14);
LABEL_11:
  *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_imageAnalysisDeferrals] = v23;
  *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController] = v25;
  v33 = type metadata accessor for ImageDocumentContentViewController();
  v58.receiver = v2;
  v58.super_class = v33;
  v34 = v25;

  v35 = objc_msgSendSuper2(&v58, "init");
  sub_100069BEC(&qword_1002090D0, v36, type metadata accessor for ImageDocumentContentViewController);
  v37 = v35;
  sub_1001298E4();
  sub_100069BEC(&qword_1002090D8, v38, type metadata accessor for ImageDocumentContentViewController);
  dispatch thunk of AnyCanvasElementViewController.delegate.setter();
  v39 = dispatch thunk of CanvasElementViewController.canvasView.getter();

  if (v39)
  {
    [v39 setOverrideUserInterfaceStyle:1];
  }

  v40 = v34;
  v41 = AnyCanvasElementViewController.toolPicker.getter();

  [v41 setColorUserInterfaceStyle:1];
  if (sub_100061BB4(1, v23))
  {
    v42 = [objc_opt_self() defaultCenter];
    if (qword_100206068 != -1)
    {
      swift_once();
    }

    v43 = qword_100222510;
    v44 = [objc_opt_self() mainQueue];
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100069264;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005E19C;
    aBlock[3] = &unk_1001F1268;
    v46 = j___Block_copy(aBlock);

    v47 = [v42 addObserverForName:v43 object:0 queue:v44 usingBlock:v46];

    j___Block_release(v46);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v37;
}

uint64_t sub_100061BB4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1 & 1);
    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

void sub_100061CEC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10006247C();
  }

  else
  {
  }
}

uint64_t sub_100061DC8()
{
  v1 = type metadata accessor for CapsuleWrapper();
  Description = v1[-1].Description;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005804(&qword_1002071B0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v26 - v5);
  v7 = sub_100005804(&qword_1002090C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_100005804(&qword_1002090C8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = v0;
  sub_10012B098(v6);
  if (Description[6](v6, 1, v1))
  {
    sub_100007710(v6, &qword_1002071B0);
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_100007710(v12, &qword_1002090C0);
  }

  v27 = v16;
  v28 = v9;
  v18 = v29;
  Description[2](v29, v6, v1);
  sub_100007710(v6, &qword_1002071B0);
  sub_1001781B0(v30);
  (Description[1])(v18, v1);
  v19 = swift_dynamicCast();
  v20 = *(v14 + 56);
  v20(v12, v19 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_100007710(v12, &qword_1002090C0);
  }

  v22 = v27;
  (*(v14 + 32))(v27, v12, v13);
  v23 = *(v17 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  v24 = v28;
  (*(v14 + 16))(v28, v22, v13);
  v20(v24, 0, 1, v13);
  v25 = v23;
  dispatch thunk of CanvasElementViewController.rootElement.setter();

  return (*(v14 + 8))(v22, v13);
}

id sub_100062344()
{
  v1 = v0;
  v2 = type metadata accessor for CanvasEditingMode();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 isEditing];
  v8 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController;
  v9 = *&v1[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController];
  v10 = &enum case for CanvasEditingMode.allowsAll(_:);
  if (v7)
  {
    v11 = &selRef_becomeFirstResponder;
  }

  else
  {
    v10 = &enum case for CanvasEditingMode.allowsPencilDrawingOnly(_:);
    v11 = &selRef_resignFirstResponder;
  }

  (*(v3 + 104))(v6, *v10, v2);
  v12 = v9;
  dispatch thunk of CanvasElementViewController.editingMode.setter();

  return [*&v1[v8] *v11];
}

void sub_10006247C()
{
  v1 = v0;
  if ((byte_100209C70 & 1) == 0)
  {
    swift_beginAccess();
    sub_100067D60(1);
    swift_endAccess();
  }

  v2 = type metadata accessor for Radar147760182();
  if ((sub_100187A14(v2, &off_1001F8530) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_imageAnalysisDeferrals;
    swift_beginAccess();
    if (!*(*(v1 + v3) + 16))
    {
      type metadata accessor for VisionKitUtilities();
      if (sub_100164518())
      {
        v4 = *(v1 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
        dispatch thunk of CanvasElementViewController.isImageAnalysisEnabled.setter();
      }
    }
  }
}

void *sub_10006255C()
{
  v1 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher;
  if (*(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher);
  }

  else
  {
    if (qword_100206050 != -1)
    {
      swift_once();
    }

    v3 = qword_1002224D0;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ObservabilityWatcher();
    v2 = swift_allocObject();
    v2[2] = _swiftEmptyArrayStorage;
    v2[3] = sub_100069288;
    v2[4] = v4;
    v5 = objc_opt_self();
    v6 = v3;

    v7 = [v5 defaultCenter];
    v12[4] = sub_10001D128;
    v12[5] = v2;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10005E19C;
    v12[3] = &unk_1001F1290;
    v8 = j___Block_copy(v12);
    v9 = v6;

    v10 = [v7 addObserverForName:v9 object:0 queue:0 usingBlock:v8];
    j___Block_release(v8);

    swift_unknownObjectRelease();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100062774()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);

    v3 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v3)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000627F8()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100062890, v3, v2);
}

uint64_t sub_100062890()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_pendingPaperKitCaptionUpdateTask);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10006298C;

    return Task<>.value.getter();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10006298C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1000147C8, v3, v2);
}

void sub_100062AD0()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for ImageDocumentContentViewController();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v2 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController;
  v3 = *&v0[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController];
  v4 = dispatch thunk of CanvasElementViewController.scrollView.getter();

  [v4 setShowsVerticalScrollIndicator:0];
  v5 = *&v1[v2];
  v6 = dispatch thunk of CanvasElementViewController.scrollView.getter();

  [v6 setShowsHorizontalScrollIndicator:0];
  v7 = *&v1[v2];
  [v7 willMoveToParentViewController:v1];
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v1 view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame:{v13, v15, v17, v19}];
  v20 = [v7 view];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  [v20 setAutoresizingMask:18];

  [v1 addChildViewController:v7];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  v24 = [v7 view];
  if (v24)
  {
    v25 = v24;
    [v23 addSubview:v24];

    [v7 didMoveToParentViewController:v1];
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100062DB0(char a1)
{
  v2 = v1;
  v4 = sub_100005804(&qword_100207210);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = type metadata accessor for ImageDocumentContentViewController();
  v22.receiver = v2;
  v22.super_class = v7;
  objc_msgSendSuper2(&v22, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController;
  v9 = *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController];
  v10 = dispatch thunk of CanvasElementViewController.publisher.getter();

  v21[0] = v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005804(&qword_1002090E8);
  sub_100007888(&qword_1002090F0, &qword_1002090E8);
  v11 = Publisher<>.sink(receiveValue:)();

  *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_imageViewUpdates] = v11;

  if ((v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_updatableMetadataTrackingEnabled] & 1) == 0)
  {
    v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_updatableMetadataTrackingEnabled] = 1;
    __chkstk_darwin(v12);
    *(&v20 - 2) = v2;
    __chkstk_darwin(v13);
    *(&v20 - 2) = v2;
    withObservationTracking<A>(_:onChange:)();
  }

  if (qword_100206040 != -1)
  {
    swift_once();
  }

  v14 = *&v2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_viewModel];
  v21[3] = v7;
  v21[4] = &off_1001F10B8;
  v21[0] = v2;
  v15 = v2;
  sub_10004D0D4(v14, &off_1001F76D0, v21, v6);
  sub_10000867C(v21);
  v16 = type metadata accessor for FileEntityIdentifier();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  sub_100007710(v6, &qword_100207210);
  if (v15[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_isFirstAppearance] == 1)
  {
    v15[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_isFirstAppearance] = 0;
    v17 = *&v2[v8];
    dispatch thunk of ImageCanvasElementViewController.zoomToFit(animated:)();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_100014234();
  }
}

uint64_t sub_100063134(uint64_t a1)
{
  v2 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-1] - v3;
  v5 = sub_100005804(&qword_1002071B0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v19[-1] - v6);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_100005804(&qword_1002090C8);
    v20 = v10;
    v11 = sub_10001CF38(v19);
    (*(*(v10 - 8) + 16))(v11, a1, v10);
    sub_1001781A8(v19, v7);
    v12 = type metadata accessor for CapsuleWrapper();
    (*(v12[-1].Description + 7))(v7, 0, 1, v12);
    sub_10012B214(v7);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v14 = v9;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_10005DB88(0, 0, v4, &unk_10019E2C8, v16);
  }
}

uint64_t sub_100063408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100005804(&unk_100206DF0);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1000634DC, v6, v5);
}

uint64_t sub_1000634DC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10006357C;

  return sub_10012B5B8();
}

uint64_t sub_10006357C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10006369C, v3, v2);
}

uint64_t sub_10006369C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_10005DB88(0, 0, v1, &unk_10019E2D8, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000637CC(char a1)
{
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchTime();
  v36 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v27 = &v26 - v9;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ImageDocumentContentViewController();
  v39.receiver = v1;
  v39.super_class = v14;
  objc_msgSendSuper2(&v39, "viewDidAppear:", a1 & 1);
  static os_signpost_type_t.end.getter();
  v15 = sub_1001454D8();
  sub_100115224();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v11 + 8))(v13, v10);
  sub_100069290();
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v36 + 8);
  v36 += 8;
  v28 = v17;
  v18 = v29;
  v17(v7, v29);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000692DC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = &unk_1001F12B8;
  v20 = j___Block_copy(aBlock);

  v21 = v30;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100069BEC(&qword_100208000, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005804(&unk_100206DC0);
  sub_100007888(&qword_100208010, &unk_100206DC0);
  v23 = v31;
  v22 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  j___Block_release(v20);

  (*(v35 + 8))(v23, v22);
  (*(v33 + 8))(v21, v34);
  v28(v24, v18);
}

void sub_100063D00()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    sub_100067D60(0);
    swift_endAccess();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for Radar147760182();
    if ((sub_100187A14(v4, &off_1001F8530) & 1) != 0 || (v5 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_imageAnalysisDeferrals, swift_beginAccess(), *(*&v3[v5] + 16)) || (type metadata accessor for VisionKitUtilities(), !sub_100164518()))
    {
    }

    else
    {
      v6 = *&v3[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController];
      dispatch thunk of CanvasElementViewController.isImageAnalysisEnabled.setter();
    }
  }

  else
  {
  }
}

id sub_100063FC4(char a1)
{
  v1[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_updatableMetadataTrackingEnabled] = 0;
  if (*&v1[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_imageViewUpdates])
  {

    AnyCancellable.cancel()();
  }

  if (qword_100206040 != -1)
  {
    swift_once();
  }

  sub_10004D42C(*&v1[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_viewModel], &off_1001F76D0);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ImageDocumentContentViewController();
  return objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
}

void sub_1000640C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

uint64_t sub_1000641A4()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10012D0B0();
  sub_1000FCB88();

  sub_1000DF1CC();
}

uint64_t sub_10006427C()
{
  v0 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    *&v6[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_pendingPaperKitCaptionUpdateTask] = sub_10005DB88(0, 0, v2, &unk_10019E2B8, v8);
  }

  return result;
}

uint64_t sub_1000643E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006447C, v6, v5);
}

uint64_t sub_10006447C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_updatableMetadataTrackingEnabled;
  if (*(v1 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_updatableMetadataTrackingEnabled) == 1)
  {
    v3 = *(v0 + 16);
    sub_100064744();
    *(v3 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_pendingPaperKitCaptionUpdateTask) = 0;

    if (*(v1 + v2) == 1)
    {
      v4 = *(v0 + 16);
      *(swift_task_alloc() + 16) = v4;
      *(swift_task_alloc() + 16) = v4;
      withObservationTracking<A>(_:onChange:)();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100064594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006462C, v6, v5);
}

uint64_t sub_10006462C()
{
  v1 = *(v0 + 16);

  sub_10012D0B0();
  sub_1000FCB88();

  v2 = *(v1 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  v3 = CanvasElementViewController<>.imageCaption.getter();
  v5 = v4;

  if (v5)
  {
    sub_1000DF288(v3, v5);
  }

  v6 = sub_10012E058();
  if ((v8 & 1) == 0)
  {
    sub_1000DFDF0(*&v6, v7);
  }

  v9 = sub_10012E1BC();
  if ((v10 & 1) == 0)
  {
    sub_1000DFFD4(*&v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100064744()
{
  v1 = v0;
  sub_10012D0B0();
  sub_1000FCB88();

  v2 = sub_1000DF1CC();
  v4 = v3;
  v5 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController;
  v6 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  v7 = CanvasElementViewController<>.imageCaption.getter();
  v9 = v8;

  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  if (v2 != v7 || v4 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {

LABEL_12:
    }

LABEL_11:
    v12 = *(v1 + v5);
    CanvasElementViewController<>.imageCaption.setter();

    goto LABEL_12;
  }
}

uint64_t sub_100064898(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 216) = a8;
  *(v8 + 104) = a7;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  *(v8 + 80) = a6;
  v9 = type metadata accessor for ImageCanvasElementViewController.ResolutionUpdate();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  v10 = type metadata accessor for Image.Resize();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 160) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 168) = v12;
  *(v8 + 176) = v11;

  return _swift_task_switch(sub_1000649F4, v12, v11);
}

uint64_t sub_1000649F4()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController;
  v0[23] = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController;
  v3 = *(v1 + v2);
  v0[24] = v3;
  v3;
  static Image.Resize.pixels(_:)();
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100064AD0;
  v5 = v0[19];

  return ImageCanvasElementViewController.resizeImageCanvas(to:)(v5);
}

uint64_t sub_100064AD0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = v2[24];
  (*(v2[18] + 8))(v2[19], v2[17]);

  v4 = v2[22];
  v5 = v2[21];
  if (v0)
  {
    v6 = sub_100064E18;
  }

  else
  {
    v6 = sub_100064C70;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100064C70()
{

  if ((*(v0 + 216) & 1) == 0)
  {
    v1 = *(v0 + 208);
    v2 = *(*(v0 + 80) + *(v0 + 184));
    static ImageCanvasElementViewController.ResolutionUpdate.dpi(_:)();
    ImageCanvasElementViewController.updateResolution(to:)();
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    if (v1)
    {
      sub_100005804(&qword_1002093C0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_10019A9F0;
      _StringGuts.grow(_:)(35);
      v4._object = 0x80000001001B1670;
      v4._countAndFlagsBits = 0xD000000000000021;
      String.append(_:)(v4);
      swift_getErrorValue();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      *(v3 + 56) = &type metadata for String;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0xE000000000000000;
      print(_:separator:terminator:)();
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100064E18()
{

  sub_100005804(&qword_1002093C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10019A9F0;
  _StringGuts.grow(_:)(29);
  v2._object = 0x80000001001B1650;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v2);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  if ((*(v0 + 216) & 1) == 0)
  {
    v3 = *(*(v0 + 80) + *(v0 + 184));
    static ImageCanvasElementViewController.ResolutionUpdate.dpi(_:)();
    ImageCanvasElementViewController.updateResolution(to:)();
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100065118()
{

  swift_unknownObjectWeakDestroy();
}

id sub_1000651A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageDocumentContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000652B0()
{
  result = qword_1002090A8;
  if (!qword_1002090A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002090A8);
  }

  return result;
}

void *sub_10006533C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  v2 = v1;
  return v1;
}

void sub_100065388(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1000653D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  v2 = dispatch thunk of CanvasElementViewController.canvasView.getter();

  return v2;
}

BOOL sub_100065414()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  v2 = dispatch thunk of CanvasElementViewController.acceptSingleTouch(_:)();

  return (v2 & 1) == 0;
}

uint64_t sub_100065460()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  v2 = dispatch thunk of CanvasElementViewController.scrollView.getter();

  return v2;
}

uint64_t sub_1000654A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100013194;

  return sub_1000627F8();
}

uint64_t sub_100065530(uint64_t a1, char a2, char a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
    v7 = *(Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
    v8 = Strong;
    sub_100008638((Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v6);
    (*(v7 + 24))(v6, v7);
    v10 = v9;
    ObjectType = swift_getObjectType();
    sub_100142DAC(a2 & 1, ObjectType, v10);
    sub_100142B04(ObjectType, v10);
    sub_100148B50(a3 & 1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10006568C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_10006571C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

void sub_1000657AC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_100206050 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 postNotificationName:qword_1002224D0 object:v0];
}

void sub_1000658B8(uint64_t a1, char *a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015DD64(&v18);
  v5 = v18;
  v6 = *&a2[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController];
  if (v5 <= 1)
  {
    v7 = dispatch thunk of CanvasElementViewController.scrollView.getter();

    [v7 zoomScale];
    if (v5)
    {
      [v7 setZoomScale:v8 / 1.25];
    }

    else
    {
      [v7 setZoomScale:v8 * 1.25];
    }
  }

  else
  {
    if (v5 == 2)
    {
      dispatch thunk of ImageCanvasElementViewController.zoomToFit(animated:)();

      return;
    }

    if (v5 != 3)
    {
      v9 = dispatch thunk of CanvasElementViewController.scrollView.getter();

      [v9 zoomScale];
      v11 = v10;

      type metadata accessor for ZoomAction(0);
      v12 = sub_10015E5DC(v11);
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      v14[2] = v12;
      v14[3] = a2;
      v14[4] = a3;
      aBlock[4] = sub_100069CD0;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000834C4;
      aBlock[3] = &unk_1001F11F0;
      v15 = j___Block_copy(aBlock);

      v16 = a2;

      [v13 animateWithDuration:v15 animations:0.2];
      j___Block_release(v15);

      return;
    }

    v7 = dispatch thunk of CanvasElementViewController.scrollView.getter();

    [v7 setZoomScale:1.0];
  }
}

void sub_100065B6C(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v2;
  v6[4] = a1;
  v9[4] = sub_1000691C0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000834C4;
  v9[3] = &unk_1001F11A0;
  v7 = j___Block_copy(v9);

  v8 = v2;

  [v5 animateWithDuration:v7 animations:0.2];
  j___Block_release(v7);
}

uint64_t sub_100065C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10003D858(a3, WitnessTable);
}

uint64_t sub_100065CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D554(a3, WitnessTable);
}

uint64_t sub_100065D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D588(a3, WitnessTable);
}

uint64_t sub_100065D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D5BC(a3, WitnessTable);
}

uint64_t sub_100065DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D5F0(a3, WitnessTable);
}

void sub_100065E20()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  dispatch thunk of ImageCanvasElementViewController.removeImageBackground()();
}

uint64_t sub_100065ED4(double a1, double a2, double a3)
{
  v7 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = v3;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v11;
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  *(v13 + 64) = 0;
  sub_10005DB88(0, 0, v9, &unk_10019E258, v13);
}

uint64_t sub_100066020@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_viewModel);
  a1[3] = type metadata accessor for ImageDocumentViewModel();
  a1[4] = &off_1001F7890;
  *a1 = v3;
}

uint64_t sub_100066078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000315B8(a2, a3, WitnessTable);
}

uint64_t sub_1000660DC(uint64_t a1, unsigned int *a2, unsigned int *a3, void (*a4)(uint64_t))
{
  v9 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for PreviewTelemetryAction();
  Description = v12[-1].Description;
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = a2;
  }

  else
  {
    v17 = a3;
  }

  Description[13](v16, *v17, v12, v14);
  type metadata accessor for PreviewTelemetryLogger();
  sub_10012C330();
  sub_1001193FC(v11);

  v18 = type metadata accessor for UTType();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_100143D70(v16, v11);
  sub_100007710(v11, &qword_10020A0C0);
  v19 = *(v4 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  a4(a1);

  return (Description[1])(v16, v12);
}

void sub_1000662F0()
{
  v1 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for PreviewTelemetryAction();
  Description = v4[-1].Description;
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewTelemetryLogger();
  Description[13](v7, 16, v4);
  sub_10012C330();
  sub_1001193FC(v3);

  v8 = type metadata accessor for UTType();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  sub_100143D70(v7, v3);
  sub_100007710(v3, &qword_10020A0C0);
  (Description[1])(v7, v4);
  v9 = *(v0 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  dispatch thunk of ImageCanvasElementViewController.removeImageBackground()();
}

uint64_t sub_1000664EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for PreviewTelemetryAction();
  Description = v11[-1].Description;
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewTelemetryLogger();
  Description[13](v14, 17, v11);
  sub_10012C330();
  sub_1001193FC(v10);

  v15 = type metadata accessor for UTType();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  sub_100143D70(v14, v10);
  sub_100007710(v10, &qword_10020A0C0);
  (Description[1])(v14, v11);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v2;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = &protocol witness table for MainActor;
  *(v19 + 32) = v17;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = 0;
  *(v19 + 64) = 1;
  sub_10005DB88(0, 0, v7, &unk_10019E270, v19);
}

uint64_t sub_10006690C(uint64_t a1, uint64_t a2)
{
  result = sub_100069BEC(&qword_1002090B8, a2, type metadata accessor for ImageDocumentContentViewController);
  *(a1 + 8) = result;
  return result;
}

NSString sub_100066964()
{
  result = String._bridgeToObjectiveC()();
  qword_1002224D0 = result;
  return result;
}

id sub_10006699C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PDFDocumentViewRepresentable(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100145164(v13);
  v37 = v2;
  sub_100069B24(v2, v9, type metadata accessor for PDFDocumentViewRepresentable);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (j__os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315138;
    v34 = v10;
    sub_100069B24(v9, v7, type metadata accessor for PDFDocumentViewRepresentable);
    v19 = String.init<A>(describing:)();
    v35 = v4;
    v21 = v20;
    sub_100069B8C(v9, type metadata accessor for PDFDocumentViewRepresentable);
    v22 = sub_10008B044(v19, v21, &v38);
    v4 = v35;

    *(v17 + 4) = v22;
    j___os_log_impl(&dword_100000000, v14, v15, "[%s] makeViewController", v17, 0xCu);
    sub_10000867C(v18);

    (*(v11 + 8))(v13, v34);
  }

  else
  {

    sub_100069B8C(v9, type metadata accessor for PDFDocumentViewRepresentable);
    (*(v11 + 8))(v13, v10);
  }

  v23 = *(*(v37 + *(v4 + 20)) + 24);
  sub_100069BEC(&qword_1002072F8, 255, type metadata accessor for PDFDocumentContentViewController);
  v24 = sub_100069BEC(&unk_100209200, 255, type metadata accessor for PDFDocumentViewRepresentable);
  v25 = *(v24 + 24);
  v26 = v23;
  v25(v4, v24);
  v28 = v27;
  ObjectType = swift_getObjectType();
  sub_100142ADC(ObjectType, v28);
  swift_unknownObjectRelease();
  v30 = v26;
  sub_10011E018();

  sub_100005804(&qword_100207338);
  UIViewControllerRepresentableContext.coordinator.getter();
  v31 = v38;
  sub_100068BAC(v30, v38);

  return v30;
}

id sub_100066D88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageDocumentViewRepresentable();
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100145164(v13);
  v38 = v2;
  sub_100069B24(v2, v9, type metadata accessor for ImageDocumentViewRepresentable);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (j__os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v39 = v18;
    *v17 = 136315138;
    v35 = v10;
    sub_100069B24(v9, v6, type metadata accessor for ImageDocumentViewRepresentable);
    v19 = String.init<A>(describing:)();
    v36 = v4;
    v21 = v20;
    sub_100069B8C(v9, type metadata accessor for ImageDocumentViewRepresentable);
    v22 = sub_10008B044(v19, v21, &v39);
    v4 = v36;

    *(v17 + 4) = v22;
    j___os_log_impl(&dword_100000000, v14, v15, "[%s] makeViewController", v17, 0xCu);
    sub_10000867C(v18);

    (*(v11 + 8))(v13, v35);
  }

  else
  {

    sub_100069B8C(v9, type metadata accessor for ImageDocumentViewRepresentable);
    (*(v11 + 8))(v13, v10);
  }

  v24 = *(*(v38 + *(v4 + 20)) + 24);
  sub_100069BEC(&qword_1002091A8, v23, type metadata accessor for ImageDocumentContentViewController);
  v25 = sub_100069BEC(&qword_1002091F0, 255, type metadata accessor for ImageDocumentViewRepresentable);
  v26 = *(v25 + 24);
  v27 = v24;
  v26(v4, v25);
  v29 = v28;
  ObjectType = swift_getObjectType();
  sub_100142ADC(ObjectType, v29);
  swift_unknownObjectRelease();
  v31 = v27;
  sub_10011E018();

  sub_100005804(&qword_1002091E0);
  UIViewControllerRepresentableContext.coordinator.getter();
  v32 = v39;
  sub_100068D70(v31, v39);

  return v31;
}

void sub_100067170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v58 = a1;
  v4 = type metadata accessor for PDFDocumentViewRepresentable(0);
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100145164(v13);
  v57 = v3;
  sub_100069B24(v3, v9, type metadata accessor for PDFDocumentViewRepresentable);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = j__os_log_type_enabled(v14, v15);
  v56 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59 = v18;
    *v17 = 136315138;
    v54 = v10;
    sub_100069B24(v9, v6, type metadata accessor for PDFDocumentViewRepresentable);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_100069B8C(v9, type metadata accessor for PDFDocumentViewRepresentable);
    v22 = sub_10008B044(v19, v21, &v59);
    v4 = v56;

    *(v17 + 4) = v22;
    j___os_log_impl(&dword_100000000, v14, v15, "[%s] updateViewController", v17, 0xCu);
    sub_10000867C(v18);

    (*(v11 + 8))(v13, v54);
  }

  else
  {

    sub_100069B8C(v9, type metadata accessor for PDFDocumentViewRepresentable);
    (*(v11 + 8))(v13, v10);
  }

  v24 = v57;
  v23 = v58;
  sub_100016F1C(v58, v55);
  v25 = sub_100069BEC(&qword_1002072F8, 255, type metadata accessor for PDFDocumentContentViewController);
  v26 = [v23 isEditing];
  v27 = sub_100069BEC(&unk_100209200, 255, type metadata accessor for PDFDocumentViewRepresentable);
  v28 = *(v27 + 24);
  v28(v4, v27);
  v30 = v29;
  ObjectType = swift_getObjectType();
  LODWORD(v30) = sub_100142BB8(ObjectType, v30) & 1;
  v32 = swift_unknownObjectRelease();
  if (v26 != v30)
  {
    __chkstk_darwin(v32);
    *(&v54 - 4) = v23;
    *(&v54 - 3) = v25;
    *(&v54 - 2) = v24;
    sub_100005804(&qword_100207338);
    UIViewControllerRepresentableContext.animate(changes:completion:)();
  }

  v33 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController;
  v34 = *&v23[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController];
  if (v34)
  {
    v35 = swift_getObjectType();
    v36 = swift_conformsToProtocol2();
    if (!v36)
    {
      __break(1u);
      goto LABEL_15;
    }

    v37 = v36;
    v38 = *(v36 + 8);
    v39 = v34;
    LOBYTE(v34) = v38(v35, v37);

    v23 = v58;
  }

  v40 = v56;
  v28(v56, v27);
  v42 = v41;
  v43 = swift_getObjectType();
  LODWORD(v42) = sub_100142BF4(v43, v42) & 1;
  swift_unknownObjectRelease();
  if ((v34 & 1) != v42)
  {
    v28(v40, v27);
    v45 = v44;
    v46 = swift_getObjectType();
    v47 = sub_100142BF4(v46, v45);
    swift_unknownObjectRelease();
    v48 = *&v23[v33];
    if (v48)
    {
      v49 = swift_getObjectType();
      v50 = swift_conformsToProtocol2();
      if (v50)
      {
        v51 = v50;
        v52 = *(v50 + 16);
        v53 = v48;
        v52(v47 & 1, v49, v51);

        return;
      }

LABEL_15:
      __break(1u);
    }
  }
}

void sub_1000676D4(char *a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v57 = a1;
  v4 = type metadata accessor for ImageDocumentViewRepresentable();
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100145164(v13);
  v58 = v3;
  sub_100069B24(v3, v9, type metadata accessor for ImageDocumentViewRepresentable);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = j__os_log_type_enabled(v14, v15);
  v56 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v59 = v18;
    *v17 = 136315138;
    v54 = v10;
    sub_100069B24(v9, v6, type metadata accessor for ImageDocumentViewRepresentable);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_100069B8C(v9, type metadata accessor for ImageDocumentViewRepresentable);
    v22 = sub_10008B044(v19, v21, &v59);
    v4 = v56;

    *(v17 + 4) = v22;
    j___os_log_impl(&dword_100000000, v14, v15, "[%s] updateViewController", v17, 0xCu);
    sub_10000867C(v18);

    (*(v11 + 8))(v13, v54);
  }

  else
  {

    sub_100069B8C(v9, type metadata accessor for ImageDocumentViewRepresentable);
    (*(v11 + 8))(v13, v10);
  }

  v23 = v57;
  v24 = v58;
  sub_1000609CC(v57);
  v26 = sub_100069BEC(&qword_1002091A8, v25, type metadata accessor for ImageDocumentContentViewController);
  v27 = [v23 isEditing];
  v28 = sub_100069BEC(&qword_1002091F0, 255, type metadata accessor for ImageDocumentViewRepresentable);
  v29 = *(v28 + 24);
  v29(v4, v28);
  v31 = v30;
  ObjectType = swift_getObjectType();
  LODWORD(v31) = sub_100142BB8(ObjectType, v31) & 1;
  v33 = swift_unknownObjectRelease();
  if (v27 != v31)
  {
    __chkstk_darwin(v33);
    *(&v54 - 4) = v23;
    *(&v54 - 3) = v26;
    *(&v54 - 2) = v24;
    sub_100005804(&qword_1002091E0);
    UIViewControllerRepresentableContext.animate(changes:completion:)();
  }

  v55 = OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController;
  v34 = *&v23[OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController];
  v35 = swift_getObjectType();
  v36 = swift_conformsToProtocol2();
  if (!v36)
  {
    __break(1u);
    goto LABEL_12;
  }

  v37 = v36;
  v38 = *(v36 + 8);
  v39 = v34;
  LODWORD(v38) = v38(v35, v37) & 1;

  v40 = v56;
  v29(v56, v28);
  v42 = v41;
  v43 = swift_getObjectType();
  LODWORD(v42) = sub_100142BF4(v43, v42) & 1;
  swift_unknownObjectRelease();
  if (v38 == v42)
  {
    return;
  }

  v29(v40, v28);
  v45 = v44;
  v46 = swift_getObjectType();
  v47 = sub_100142BF4(v46, v45);
  swift_unknownObjectRelease();
  v48 = *&v57[v55];
  v49 = swift_getObjectType();
  v50 = swift_conformsToProtocol2();
  if (!v50)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v51 = v50;
  v52 = *(v50 + 16);
  v53 = v48;
  v52(v47 & 1, v49, v51);
}

uint64_t sub_100067C28(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_100069BEC(a4, 255, a5);
  v12 = *(v11 + 24);
  v13 = a7(0);
  v12(v13, v11);
  v15 = v14;
  ObjectType = swift_getObjectType();
  LOBYTE(v15) = sub_100142BB8(ObjectType, v15);
  swift_unknownObjectRelease();
  [a1 setEditing:v15 & 1];
}

uint64_t sub_100067D60(char a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 2;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != (a1 & 1))
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100067E68();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_100068418(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void *sub_100067E68()
{
  v1 = v0;
  sub_100005804(&qword_1002090E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = j__memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100067FA8()
{
  v1 = v0;
  v2 = *v0;
  sub_100005804(&qword_1002090E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000681C8()
{
  v1 = v0;
  v2 = *v0;
  sub_100005804(&qword_1002090E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      j__bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_100068418(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000685C0(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000686C0(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

Swift::Int sub_1000686C0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000681C8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100067E68();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100067FA8();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4 & 1);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100068814(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v15[3] = type metadata accessor for PDFDocumentViewRepresentable(0);
  v15[4] = sub_100069BEC(&unk_100209200, 255, type metadata accessor for PDFDocumentViewRepresentable);
  v5 = sub_10001CF38(v15);
  sub_100069ABC(a1, v5, type metadata accessor for PDFDocumentViewRepresentable);
  v6 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_lastAppliedBannerConfiguration;
  v7 = type metadata accessor for BannerViewModel.Configuration(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentGestures] = 0;
  v9 = &a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_undoTrackingObservance];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v10 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_activePropertiesTrackingID;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  sub_100012F6C(v15, &a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent]);
  v14.receiver = a2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_1000135CC(1);

  sub_10000867C(v15);
  return v12;
}

id sub_1000689E0(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v15[3] = type metadata accessor for ImageDocumentViewRepresentable();
  v15[4] = sub_100069BEC(&qword_1002091F0, 255, type metadata accessor for ImageDocumentViewRepresentable);
  v5 = sub_10001CF38(v15);
  sub_100069ABC(a1, v5, type metadata accessor for ImageDocumentViewRepresentable);
  v6 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_lastAppliedBannerConfiguration;
  v7 = type metadata accessor for BannerViewModel.Configuration(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentGestures] = 0;
  v9 = &a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_undoTrackingObservance];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v10 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_activePropertiesTrackingID;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  sub_100012F6C(v15, &a2[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent]);
  v14.receiver = a2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_1000135CC(1);

  sub_10000867C(v15);
  return v12;
}

uint64_t sub_100068BAC(void *a1, uint64_t a2)
{
  result = sub_100069BEC(&qword_1002072F8, 255, type metadata accessor for PDFDocumentContentViewController);
  v5 = a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController;
  v6 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_1000139A8();
    }

    sub_1000139A8();
    v11 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
    v12 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
    sub_100008638((a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v11);
    (*(v12 + 24))(v11, v12);
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = sub_100069BEC(&qword_1002091F8, 255, type metadata accessor for DocumentContentCoordinator);
    v17 = swift_unknownObjectRetain();
    sub_100142A3C(v17, v16, ObjectType, v14);
    swift_unknownObjectRelease();
    v18 = *v5;
    *v5 = a1;
    *(v5 + 8) = v8;

    v19 = a1;
    sub_100030B90();
    sub_100013C10();

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_100068D70(void *a1, uint64_t a2)
{
  result = sub_100069BEC(&qword_1002091A8, a2, type metadata accessor for ImageDocumentContentViewController);
  v5 = a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController;
  v6 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_1000139A8();
    }

    sub_1000139A8();
    v11 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
    v12 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
    sub_100008638((a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v11);
    (*(v12 + 24))(v11, v12);
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = sub_100069BEC(&qword_1002091F8, 255, type metadata accessor for DocumentContentCoordinator);
    v17 = swift_unknownObjectRetain();
    sub_100142A3C(v17, v16, ObjectType, v14);
    swift_unknownObjectRelease();
    v18 = *v5;
    *v5 = a1;
    *(v5 + 8) = v8;

    v19 = a1;
    sub_100030B90();
    sub_100013C10();

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_100068F34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002DD0C;

  return sub_100064898(v7, v8, a1, v4, v5, v6, v9, v10);
}

Swift::Int sub_100069014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005804(&qword_1002090E0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100069150(uint64_t a1, void (*a2)(BOOL))
{
  sub_10015DD64(&v6);
  v4 = v6;
  v5 = *(v2 + OBJC_IVAR____TtC7Preview34ImageDocumentContentViewController_paperKitViewController);
  a2((v4 & 1) == 0);
}

uint64_t sub_1000691CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000691E4()
{

  return swift_deallocObject();
}

uint64_t sub_10006922C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_100069290()
{
  result = qword_100206DB0;
  if (!qword_100206DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100206DB0);
  }

  return result;
}

uint64_t sub_100069308(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DD0C;

  return sub_1000643E4(a1, v4, v5, v6);
}

uint64_t (*sub_1000693BC())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1000692F8;
}

uint64_t sub_100069418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DD0C;

  return sub_100063408(a1, v4, v5, v6);
}

uint64_t sub_1000694CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100069518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013194;

  return sub_100064594(a1, v4, v5, v6);
}

uint64_t sub_1000695E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_1002090F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000696BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_1002090F8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ImageDocumentViewRepresentable()
{
  result = qword_100209158;
  if (!qword_100209158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000697CC()
{
  sub_100069844();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageDocumentViewRepresentable.Components();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100069844()
{
  if (!qword_100209168)
  {
    type metadata accessor for ImageDocumentViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_100209168);
    }
  }
}

uint64_t sub_1000698E8(uint64_t a1)
{
  result = sub_100069BEC(&qword_1002091A0, 255, type metadata accessor for ImageDocumentViewRepresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006998C(uint64_t a1)
{
  result = sub_100069BEC(&qword_1002091D0, 255, type metadata accessor for ImageDocumentViewRepresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000699E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&unk_100207010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069BEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100069CD4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 valueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000065F0(&v9, v10);
    sub_100029B88(v10);
    v7 = String._bridgeToObjectiveC()();
    a3 = [v3 BOOLForKey:v7];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_100029B88(v10);
  }

  return a3 & 1;
}

id sub_100069DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a2 + 20));
  (*(v9 + 16))(v7, v2, v5);
  v10 = objc_allocWithZone(type metadata accessor for DocumentShareSheetViewController(0));

  v11 = sub_10006BC00(v7, v8);

  return v11;
}

uint64_t sub_100069EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006BBB8(&unk_100209390, type metadata accessor for DocumentShareSheet);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100069F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006BBB8(&unk_100209390, type metadata accessor for DocumentShareSheet);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100069FD4()
{
  sub_10006BBB8(&unk_100209390, type metadata accessor for DocumentShareSheet);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

BOOL sub_10006A15C()
{
  v1 = [v0 presentationController];
  if (!v1)
  {
    if ([v0 _isInPopoverPresentation])
    {
      return 0;
    }

    v3 = 0;
LABEL_7:

    return 0;
  }

  v2 = v1;
  v3 = [v1 traitCollection];

  if (([v0 _isInPopoverPresentation] & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = [v3 verticalSizeClass];

    return v4 == 1;
  }

  return 0;
}

uint64_t sub_10006A218()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_1002060A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  v9 = *(v8[-1].Description + 8);
  v10 = __chkstk_darwin(v8);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  v16 = *&v0[OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController_customizationController];
  if (v16)
  {
    v41 = v0;
    v42 = v2;
    v43 = v1;
    v17 = OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69341DocumentShareSheetCustomizationController_exportSheetViewModel;
    v18 = v12;
    v19 = v13;
    v44 = v16;
    sub_100105724(v7);
    if ((*(v19 + 48))(v7, 1, v18) != 1)
    {
      v38 = v15;
      v39 = v18;
      v41 = *(v19 + 32);
      (v41)(v15, v7, v18);
      v24 = *&v16[v17];

      v25 = v19;
      sub_100106B3C();
      v26 = [objc_allocWithZone(NSItemProvider) init];
      v40 = v26;
      v27 = String._bridgeToObjectiveC()();

      [v26 setSuggestedName:v27];

      v28 = v38;
      sub_100104428();
      UTType.identifier.getter();
      (*(v42 + 8))(v4, v43);
      v29 = String._bridgeToObjectiveC()();

      v30 = v28;
      v31 = v39;
      (*(v25 + 16))(v11, v28, v39);
      v32 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v24;
      (v41)(v33 + v32, v11, v31);
      aBlock[4] = sub_10006C034;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10006B028;
      aBlock[3] = &unk_1001F13E8;
      v34 = j___Block_copy(aBlock);

      v35 = v40;
      [v40 registerDataRepresentationForTypeIdentifier:v29 visibility:0 loadHandler:v34];
      j___Block_release(v34);

      sub_100005804(&qword_1002093C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10019A9F0;
      *(v20 + 56) = sub_1000085D8(0, &unk_1002093C8);
      *(v20 + 32) = v35;

      (*(v25 + 8))(v30, v31);
      return v20;
    }

    sub_100007710(v7, &qword_1002060A0);
    v0 = v41;
  }

  sub_100005804(&qword_1002093C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10019A9F0;
  v21 = OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController_documentURL;
  v22 = type metadata accessor for URL();
  *(v20 + 56) = v22;
  v23 = sub_10001CF38((v20 + 32));
  (*(*(v22 - 8) + 16))(v23, &v0[v21], v22);
  return v20;
}

uint64_t sub_10006A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  Description = v8[-1].Description;
  v10 = Description[8];
  __chkstk_darwin(v8);
  v11 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (Description[2])(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v15 = (*(Description + 80) + 56) & ~*(Description + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a3;
  *(v16 + 5) = a1;
  *(v16 + 6) = a2;
  (Description[4])(&v16[v15], &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_10005DB88(0, 0, v13, &unk_10019E598, v16);

  return 0;
}

uint64_t sub_10006A938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v8 = type metadata accessor for UTType();
  v7[5] = v8;
  v7[6] = *(v8 - 8);
  v7[7] = swift_task_alloc();
  v9 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  v7[8] = v9;
  v7[9] = v9[-1].Description;
  v7[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[14] = v11;
  *v11 = v7;
  v11[1] = sub_10006AAE8;

  return sub_10010B058();
}

uint64_t sub_10006AAE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = sub_10006ACDC;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v7 = sub_10006AC1C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10006AC1C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[2];
  sub_10006C2F0(v1, v2);
  v3(v1, v2, 0);
  sub_10006C344(v1, v2);
  sub_10006C344(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006ACDC()
{
  v36 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  sub_100145164(v0[13]);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (j__os_log_type_enabled(v5, v6))
  {
    v32 = v0[12];
    v7 = v0[10];
    v33 = v0[11];
    v34 = v0[13];
    v29 = v6;
    v8 = v0[9];
    v28 = v0[8];
    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v12 = 136315394;
    sub_100104428();
    sub_10006BBB8(&qword_1002093D8, &type metadata accessor for UTType);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    (*(v8 + 8))(v7, v28);
    v16 = sub_10008B044(v13, v15, &v35);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v30 = v17;
    j___os_log_impl(&dword_100000000, v5, v29, "Could not export file to format %s: %@", v12, 0x16u);
    sub_100007710(v30, &unk_1002093E0);

    sub_10000867C(v31);

    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v19 = v0[12];
    v18 = v0[13];
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[8];
    v23 = v0[9];

    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
  }

  v24 = v0[15];
  v25 = v0[2];
  swift_errorRetain();
  v25(0, 0xF000000000000000, v24);

  v26 = v0[1];

  return v26();
}

id sub_10006B028(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = j___Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_10006C108, v4);

  return v5;
}

void sub_10006B0C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10006B2A8()
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

void sub_10006B48C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69341DocumentShareSheetCustomizationController_presentedActivityViewController);

    sub_10006A218();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 _updateActivityItems:isa];
  }
}

id sub_10006B7C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006B888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10006B964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_10006BA3C()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10006BAC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006BAC0()
{
  if (!qword_100209358)
  {
    type metadata accessor for ExportSheetViewModel(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100209358);
    }
  }
}

uint64_t sub_10006BB60(uint64_t a1)
{
  result = sub_10006BBB8(&unk_100209390, type metadata accessor for DocumentShareSheet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006BBB8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10006BC00(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005804(&qword_1002060A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  *&v2[OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController_customizationController] = 0;
  v8 = OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController_documentURL;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v30 = a1;
  v11(&v2[v8], a1, v9);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = type metadata accessor for DocumentShareSheetViewController(0);
  v32.receiver = v2;
  v32.super_class = v13;
  v14 = objc_msgSendSuper2(&v32, "initWithActivityItems:applicationActivities:", isa, 0);

  sub_100005804(&unk_1002093A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10019B3A0;
  *(v15 + 32) = UIActivityTypeAddToReadingList;
  *(v15 + 40) = UIActivityTypeMarkupAsPDF;
  type metadata accessor for ActivityType(0);
  v16 = v14;
  v17 = UIActivityTypeAddToReadingList;
  v18 = UIActivityTypeMarkupAsPDF;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setExcludedActivityTypes:v19];

  if (a2)
  {
    v20 = type metadata accessor for ExportSheetViewModel.ImageFormat();
    (*(v20[-1].Description + 7))(v7, 1, 1, v20);

    sub_100104C7C(v7);
    v21 = type metadata accessor for DocumentShareSheetCustomizationController();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69341DocumentShareSheetCustomizationController_presentedActivityViewController] = v16;
    *&v22[OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69341DocumentShareSheetCustomizationController_exportSheetViewModel] = a2;
    v31.receiver = v22;
    v31.super_class = v21;
    v23 = v16;

    v24 = objc_msgSendSuper2(&v31, "init");
    v25 = *&v23[OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController_customizationController];
    *&v23[OBJC_IVAR____TtC7PreviewP33_A22D73F1BBD8537A10652A1CB219D69332DocumentShareSheetViewController_customizationController] = v24;
    v26 = v24;

    [v23 setObjectManipulationDelegate:v26];
  }

  sub_10006A218();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v16 _updateActivityItems:v27];

  (*(v10 + 8))(v30, v9);
  return v16;
}

uint64_t sub_10006BF30()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10006BF70()
{
  v1 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 24) & ~*(Description + 80);

  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006C034(uint64_t a1, uint64_t a2)
{
  Description = type metadata accessor for ExportSheetViewModel.ImageFormat()[-1].Description;
  v6 = *(v2 + 16);
  v7 = v2 + ((Description[80] + 24) & ~Description[80]);

  return sub_10006A738(a1, a2, v6, v7);
}

uint64_t sub_10006C0B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006C0D0()
{
  j___Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10006C110()
{
  v1 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 56) & ~*(Description + 80);
  swift_unknownObjectRelease();

  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006C1E4(uint64_t a1)
{
  Description = type metadata accessor for ExportSheetViewModel.ImageFormat()[-1].Description;
  v5 = (Description[80] + 56) & ~Description[80];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100013194;

  return sub_10006A938(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10006C2F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10006C344(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10006C39C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_10006C46C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10006C51C()
{
  swift_getKeyPath();
  sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10006C5EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__exportSheetViewModel);
}

uint64_t sub_10006C6A0()
{
  swift_getKeyPath();
  sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10006C76C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider);
  v5 = *(v3 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10007A8F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_10000BDBC(v4);
}

uint64_t sub_10006C864(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10007A8B4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10000BDBC(v1);
  sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10000BDCC(v4);
}

uint64_t sub_10006C9E4(uint64_t a1)
{
  v2 = sub_100005804(&unk_10020A0D0);
  __chkstk_darwin(v2 - 8);
  sub_100006600(a1, &v5 - v3, &unk_10020A0D0);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_10006CA8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10006CCBC(void *a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for Document(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = a1;
      sub_100182E80();
    }
  }

  else
  {
    v4 = 0;
  }

  sub_100006600(v2 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentStateObservation, &v11, &qword_100206500);
  if (v12)
  {
    sub_1000065F0(&v11, &v13);
    v6 = [objc_opt_self() defaultCenter];
    sub_100008638(&v13, v14);
    [v6 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_10000867C(&v13);
  }

  else
  {
    sub_100007710(&v11, &qword_100206500);
  }

  v7 = [v2 document];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for Document(0);
    if (swift_dynamicCastClass())
    {
      sub_100078C20(&qword_100209740, type metadata accessor for DocumentViewController);
      v9 = v8;
      v10 = v2;
      sub_100182E80();
    }

    else
    {
      v9 = v4;
      v4 = v8;
    }
  }
}

char *sub_10006CF44(uint64_t a1, uint64_t a2)
{
  UUID.init()();
  v5 = &v2[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC7Preview22DocumentViewController_delegate];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = &v2[OBJC_IVAR____TtC7Preview22DocumentViewController_documentStateObservation];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC7Preview22DocumentViewController_documentLaunchController] = 0;
  *&v2[OBJC_IVAR____TtC7Preview22DocumentViewController_fileURLObservation] = 0;
  v8 = OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorModel;
  type metadata accessor for DocumentViewToolbarAdaptor.Model(0);
  swift_allocObject();
  *&v2[v8] = sub_10000ADF4();
  *&v2[OBJC_IVAR____TtC7Preview22DocumentViewController____lazy_storage___allToolbarAdaptors] = 0;
  *&v2[OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorDestinationItem] = 0;
  *&v2[OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseActionWhenShown] = 0;
  v9 = OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseButtonState;
  v10 = type metadata accessor for DocumentCloseButtonState();
  (*(v10[-1].Description + 13))(&v2[v9], 0, v10);
  *&v2[OBJC_IVAR____TtC7Preview22DocumentViewController_contentHostingViewController] = 0;
  *&v2[OBJC_IVAR____TtC7Preview22DocumentViewController_pendingNewDocumentAction] = 0;
  *v5 = a1;
  *(v5 + 1) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v23.receiver = v2;
  v23.super_class = type metadata accessor for DocumentViewController(0);
  v11 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  v12 = objc_allocWithZone(type metadata accessor for DocumentLaunchController());
  v13 = v11;
  v14 = sub_10000D380(v13);
  v15 = *&v13[OBJC_IVAR____TtC7Preview22DocumentViewController_documentLaunchController];
  *&v13[OBJC_IVAR____TtC7Preview22DocumentViewController_documentLaunchController] = v14;

  v16 = [objc_opt_self() defaultCenter];
  v17 = [objc_opt_self() mainQueue];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22[4] = sub_100079A38;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10005E19C;
  v22[3] = &unk_1001F1658;
  v19 = j___Block_copy(v22);

  v20 = [v16 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v17 usingBlock:v19];
  j___Block_release(v19);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

void sub_10006D2BC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10006FE38();
  }

  else
  {
  }
}

id sub_10006D398()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DocumentViewController(0);
  v39.receiver = v1;
  v39.super_class = v10;
  objc_msgSendSuper2(&v39, "viewDidLoad");
  if (*&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel])
  {
    v37 = v3;
    v11 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
    swift_unknownObjectRetain();
    sub_100145164(v9);
    swift_unknownObjectRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (j__os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v36 = v6;
      v15 = v14;
      v35 = swift_slowAlloc();
      v38 = v35;
      *v15 = 136315138;
      ObjectType = swift_getObjectType();
      v33 = v13;
      v17 = sub_1001429C4(ObjectType, v11);
      v18 = [v17 fileURL];
      v34 = v7;
      v19 = v2;
      v20 = v18;

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = URL.lastPathComponent.getter();
      v23 = v22;
      (*(v37 + 8))(v5, v19);
      v24 = sub_10008B044(v21, v23, &v38);

      *(v15 + 4) = v24;
      j___os_log_impl(&dword_100000000, v12, v33, "DocumentViewController: viewDidLoad Presenting document for %s", v15, 0xCu);
      sub_10000867C(v35);

      (*(v34 + 8))(v9, v36);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v25 = [v1 document];
    v26 = swift_getObjectType();
    v27 = sub_1001429C4(v26, v11);
    v28 = v27;
    if (v25)
    {
      sub_1000085D8(0, &qword_100209710);
      v29 = static NSObject.== infix(_:_:)();

      if (v29)
      {
        swift_unknownObjectRelease();
        return sub_1000710A4();
      }
    }

    else
    {
    }

    v30 = sub_1001429C4(v26, v11);
    [v1 setDocument:v30];
    swift_unknownObjectRelease();
  }

  return sub_1000710A4();
}

void sub_10006D78C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for DocumentViewController(0);
  v55.receiver = v0;
  v55.super_class = v11;
  objc_msgSendSuper2(&v55, "documentDidOpen");
  sub_100145164(v10);
  v12 = v0;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (j__os_log_type_enabled(v13, v14))
  {
    v50 = v2;
    v51 = v6;
    v52 = v5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    if (*&v12[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel])
    {
      v17 = *&v12[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
      ObjectType = swift_getObjectType();
      v49 = v1;
      v19 = ObjectType;
      swift_unknownObjectRetain();
      v20 = sub_1001429C4(v19, v17);
      swift_unknownObjectRelease();
      v21 = [v20 fileURL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = URL.lastPathComponent.getter();
      v24 = v23;
      (*(v50 + 8))(v4, v49);
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 4271950;
    }

    v25 = sub_10008B044(v22, v24, aBlock);

    *(v15 + 4) = v25;
    j___os_log_impl(&dword_100000000, v13, v14, "Document did Open: %s", v15, 0xCu);
    sub_10000867C(v16);

    v6 = v51;
    v5 = v52;
  }

  else
  {
  }

  v26 = *(v6 + 8);
  v26(v10, v5);
  v27 = [v12 document];
  if (v27)
  {
    v28 = v27;
    if ([v27 documentState])
    {
      v37 = [v12 document];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 documentState];

        if ((v39 & 2) != 0)
        {
          if (*&v12[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel])
          {
            v40 = *&v12[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
            v41 = swift_getObjectType();
            swift_unknownObjectRetain();
            v42 = sub_10013B9E8(v41, v40);
            swift_unknownObjectRelease();
          }

          v43 = [v12 document];
          if (v43)
          {
            v44 = v43;
            v45 = swift_allocObject();
            *(v45 + 16) = v12;
            aBlock[4] = sub_10007AE04;
            aBlock[5] = v45;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10006CA8C;
            aBlock[3] = &unk_1001F19A0;
            v46 = j___Block_copy(aBlock);
            v47 = v12;

            [v44 openWithCompletionHandler:v46];

            j___Block_release(v46);
            return;
          }
        }
      }
    }

    else
    {
      sub_10006DFF0();
    }
  }

  else
  {
    v29 = v53;
    sub_1001450D4(v53);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v30, v31))
    {
      v32 = v5;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10008B044(0xD000000000000011, 0x80000001001B1C00, aBlock);
      j___os_log_impl(&dword_100000000, v30, v31, "%s: document is nil", v33, 0xCu);
      sub_10000867C(v34);

      v35 = v29;
      v36 = v32;
    }

    else
    {

      v35 = v29;
      v36 = v5;
    }

    v26(v35, v36);
  }
}

uint64_t sub_10006DD4C()
{
  v0 = sub_100005804(&unk_100206DF0);
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

  sub_10005DE88(0, 0, v2, &unk_10019EC28, v6);
}

uint64_t sub_10006DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DF38, v6, v5);
}

uint64_t sub_10006DF38()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10006DFF0();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006DFF0()
{
  v1 = v0;
  v2 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = sub_100005804(&unk_10020A0B0);
  v50 = *(v5 - 8);
  v6 = *(v50 + 8);
  __chkstk_darwin(v5 - 8);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  sub_100145164(&v49 - v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (j__os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    j___os_log_impl(&dword_100000000, v16, v17, "DocumentViewController: will prepare for display.", v18, 2u);
  }

  v19 = *(v11 + 8);
  v19(v15, v10);
  v20 = [v1 document];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for Document(0);
    if (swift_dynamicCastClass())
    {
      sub_100182DB0();

      goto LABEL_8;
    }
  }

  v22 = type metadata accessor for DocumentOpeningOptions();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
LABEL_8:
  v23 = [v1 document];
  if (v23)
  {
    v24 = v23;
    type metadata accessor for Document(0);
    if (swift_dynamicCastClass())
    {
      v25 = type metadata accessor for DocumentOpeningOptions();
      (*(*(v25 - 8) + 56))(v51, 1, 1, v25);
      sub_100182DE4();
    }
  }

  v26 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel];
  if (v26)
  {
    v49 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
    v28 = v51;
    sub_100006600(v9, v51, &unk_10020A0B0);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain_n();
    v29 = v1;
    v30 = static MainActor.shared.getter();
    v31 = (v50[80] + 32) & ~v50[80];
    v32 = v4;
    v33 = (v6 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = v9;
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    *(v34 + 24) = &protocol witness table for MainActor;
    sub_100023CD8(v28, v34 + v31, &unk_10020A0B0);
    v35 = (v34 + v33);
    v36 = v49;
    *v35 = v26;
    v35[1] = v36;
    *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;
    sub_10005DB88(0, 0, v32, &unk_10019EBC8, v34);

    ObjectType = swift_getObjectType();
    v38 = v36;
    v39 = sub_1001429C4(ObjectType, v36);
    v52 = v39;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v9 = v50;

    v41 = *&v29[OBJC_IVAR____TtC7Preview22DocumentViewController_fileURLObservation];
    *&v29[OBJC_IVAR____TtC7Preview22DocumentViewController_fileURLObservation] = v40;

    __chkstk_darwin(v42);
    *(&v49 - 2) = v26;
    *(&v49 - 1) = v38;
    __chkstk_darwin(v43);
    *(&v49 - 2) = v29;
    withObservationTracking<A>(_:onChange:)();
    sub_1000710A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = v49;
    sub_100145164(v49);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      j___os_log_impl(&dword_100000000, v45, v46, "DocumentViewController: missing documentViewModel while preparing for display.", v47, 2u);
    }

    v19(v44, v10);
  }

  return sub_100007710(v9, &unk_10020A0B0);
}

uint64_t sub_10006E6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for DocumentCloseButtonState();
  v7[9] = v8;
  v7[10] = v8[-1].Description;
  v7[11] = swift_task_alloc();
  sub_100005804(&unk_10020A0B0);
  v7[12] = swift_task_alloc();
  v9 = type metadata accessor for DocumentOpeningOptions();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[16] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006E834, v11, v10);
}

uint64_t sub_10006E834()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[5];

  sub_100006600(v4, v3, &unk_10020A0B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007710(v0[12], &unk_10020A0B0);
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    (*(v6 + 32))(v5, v0[12], v7);
    sub_100138F50(v13, v12);
    sub_100138814(v8);
    v14 = OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseButtonState;
    swift_beginAccess();
    (*(v9 + 24))(v11 + v14, v8, v10);
    swift_endAccess();
    sub_10006F2C4();
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
  }

  v15 = v0[1];

  return v15();
}

void sub_10006E9FC(id *a1)
{
  v1 = [*a1 fileURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10006EA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a3;
  sub_10005DE88(0, 0, v6, &unk_10019EC18, v9);
}

uint64_t sub_10006EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006EC18, v6, v5);
}

uint64_t sub_10006EC18()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10006F2C4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006ECB4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EncryptionState();
  Description = v3[-1].Description;
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ObjectType = swift_getObjectType();
  sub_100142B68(ObjectType, a2);
  Description[1](v6, v3);
}

uint64_t sub_10006EE00(uint64_t a1)
{
  v2 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_10005DE88(0, 0, v4, &unk_10019EC08, v7);
}

uint64_t sub_10006EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007B39C, v6, v5);
}

void *sub_10006EFBC()
{
  v1 = OBJC_IVAR____TtC7Preview22DocumentViewController____lazy_storage___allToolbarAdaptors;
  if (*(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController____lazy_storage___allToolbarAdaptors))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController____lazy_storage___allToolbarAdaptors);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorModel);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v2 = sub_10000BDDC(v3, sub_10007A928, v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10006F09C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorDestinationItem);
    *(Strong + OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorDestinationItem) = a1;
    v4 = Strong;
    v5 = a1;
  }
}

uint64_t sub_10006F2C4()
{
  v1 = v0;
  v2 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v2 - 8);
  v51 = &v47 - v3;
  v4 = type metadata accessor for DocumentCloseButtonState();
  Description = v4[-1].Description;
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorModel;

  v12 = [v0 navigationItem];
  v13 = [v12 title];

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_100008B68(v14, v16);

  v17 = OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseButtonState;
  swift_beginAccess();
  Description[2](v10, &v0[v17], v4);
  Description[13](v7, 0, v4);

  LOBYTE(v17) = sub_1001433D4(v10, v7);
  v18 = Description[1];
  (v18)(v7, v4);
  (v18)(v10, v4);
  v19 = 0;
  if (v17)
  {
    v19 = *&v0[OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseActionWhenShown];
    v20 = v19;
  }

  sub_100008FF8(v19);

  v21 = *&v0[v11];

  v22 = [v0 navigationItem];
  v23 = [v22 largeTitleDisplayMode];

  if (*(v21 + 32) == v23)
  {

    v48 = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v47 - 2) = v21;
    *(&v47 - 1) = v23;
    v52 = v21;
    sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v48 = 0;
  }

  v25 = *&v1[v11];

  v26 = [v1 navigationItem];
  v27 = sub_100029330();
  v29 = v28;

  v30 = swift_getKeyPath();
  v47 = &v47;
  __chkstk_darwin(v30);
  *(&v47 - 4) = v25;
  *(&v47 - 3) = v27;
  *(&v47 - 2) = v29;
  v52 = v25;
  v50 = sub_100078C20(&qword_100206A58, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();

  v31 = [v1 document];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 fileURL];

    v34 = v51;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v51;
  }

  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(v34, v35, 1, v36);
  sub_100009484(v34);

  v37 = *&v1[v11];
  v38 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel];
  v49 = v1;
  if (v38)
  {
    v39 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    sub_100142ADC(ObjectType, v39);
    swift_unknownObjectRelease();
    v41 = sub_1001196F8();
  }

  else
  {

    v41 = 0;
  }

  v42 = swift_getKeyPath();
  __chkstk_darwin(v42);
  *(&v47 - 2) = v37;
  *(&v47 - 1) = v41;
  v52 = v37;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v43 = *&v49[v11];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_getKeyPath();
  __chkstk_darwin(v45);
  *(&v47 - 4) = v43;
  *(&v47 - 3) = sub_10007A884;
  *(&v47 - 2) = v44;
  v52 = v43;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10006FA40(UIMenuElementSize a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for EncryptionState();
  Description = v6[-1].Description;
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v12 = (Strong + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel);
  if (!*(Strong + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel))
  {
    v32 = a1;
    goto LABEL_9;
  }

  v29[1] = v4;
  v13 = a1;
  v14 = v12[1];
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10013AF74(ObjectType, v14);
  swift_unknownObjectRelease();
  v16 = *v12;
  v32 = v13;
  if (!v16)
  {
LABEL_9:

    goto LABEL_10;
  }

  v17 = v12[1];
  v18 = swift_getObjectType();

  swift_unknownObjectRetain();
  sub_100142B68(v18, v17);
  swift_unknownObjectRelease();
  v19 = sub_100137B90();
  Description[1](v9, v6);
  if (!v19)
  {
LABEL_10:
    sub_1000085D8(0, &unk_100206E20);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v33.value.super.isa = 0;
    v33.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v33, 0, 0xFFFFFFFFFFFFFFFFLL, v32, v28).super.super.isa;

    return isa;
  }

  sub_1000085D8(0, &qword_100209738);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = [objc_opt_self() mainBundle];
  v21 = v13;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() systemImageNamed:v22];

  v30 = 0u;
  v31 = 0u;
  v24 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (!(v21 >> 62) || (result = _CocoaArrayWrapper.endIndex.getter(), (result & 0x8000000000000000) == 0))
  {
    sub_100079E20(0, 0, v24);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006FE38()
{
  v1 = type metadata accessor for DocumentCloseButtonState();
  Description = v1[-1].Description;
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseButtonState;
  swift_beginAccess();
  v9 = Description[2];
  v16 = v0;
  v9(v7, v0 + v8, v1);
  v10 = Description[13];
  v10(v4, 2, v1);
  v11 = sub_1001433D4(v7, v4);
  v12 = Description[1];
  v12(v4, v1);
  result = (v12)(v7, v1);
  if (v11)
  {
    v10(v7, 0, v1);
    v14 = v16;
    swift_beginAccess();
    (Description[3])(v14 + v8, v7, v1);
    swift_endAccess();
    sub_10006F2C4();
    return (v12)(v7, v1);
  }

  return result;
}

void sub_100070050()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 backAction];

  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;

    v6 = v3;
    v3 = sub_100029888(sub_10007A7E8, v5);
  }

  v7 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseActionWhenShown];
  *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseActionWhenShown] = v3;
}

id sub_100070164(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1 && *&v4[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel])
    {
      v7 = *&v4[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100142ADC(ObjectType, v7);
      swift_unknownObjectRelease();
      sub_1001159D0(0);
    }
  }

  return [a2 performWithSender:0 target:0];
}

uint64_t sub_10007026C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23[-1] - v11;
  if (*(v1 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel))
  {
    v13 = *(v1 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1001429C4(ObjectType, v13);
    swift_unknownObjectRelease();
    v16 = [v15 fileURL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v12, v9, v6);
    v17 = OBJC_IVAR____TtC7Preview22DocumentViewController_delegate;
    swift_beginAccess();
    sub_100006600(v1 + v17, v24, &qword_100206DD8);
    if (v25)
    {
      sub_100012F6C(v24, v23);
      sub_100007710(v24, &qword_100206DD8);
      sub_100008638(v23, v23[3]);
      type metadata accessor for DocumentSceneUIKitRepresentable.DocumentCoordinator(0);
      sub_100020D6C();
      (*(v7 + 8))(v12, v6);
      return sub_10000867C(v23);
    }

    else
    {
      (*(v7 + 8))(v12, v6);
      return sub_100007710(v24, &qword_100206DD8);
    }
  }

  else
  {
    sub_1001450D4(v5);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      j___os_log_impl(&dword_100000000, v19, v20, "Trying to Lock a document without URL", v21, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_100070604(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_1000706D0()
{
  v1[2] = v0;
  sub_100005804(&unk_100206DF0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_1000707A4, v3, v2);
}

uint64_t sub_1000707A4()
{
  v1 = [*(v0 + 16) viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      [v3 endEditing:1];
    }
  }

  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = v5;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  *(v0 + 64) = sub_10005DB88(0, 0, v4, &unk_10019EB10, v9);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_100070950;

  return Task<>.value.getter();
}

uint64_t sub_100070950()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100070A70, v3, v2);
}

uint64_t sub_100070A70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100070B80, v6, v5);
}

uint64_t sub_100070B80()
{
  v1 = (v0[2] + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel);
  if (*v1 && (v2 = v1[1], v3 = swift_getObjectType(), swift_unknownObjectRetain(), v4 = sub_100142A28(v3, v2), v6 = v5, swift_unknownObjectRelease(), (v0[6] = v4) != 0))
  {
    ObjectType = swift_getObjectType();
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_100070CC0;

    return sub_100142884(ObjectType, v6);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100070CC0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100070DE0, v3, v2);
}

uint64_t sub_100070DE0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

id sub_100070E4C()
{
  v1 = OBJC_IVAR____TtC7Preview22DocumentViewController_contentHostingViewController;
  v2 = *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_contentHostingViewController);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v3 parentViewController];
  if (!v4)
  {
    v9 = [v3 viewIfLoaded];
    v10 = [v9 superview];

    if (!v10)
    {
      goto LABEL_10;
    }

    result = [v3 view];
    if (result)
    {
      v11 = result;
      [result removeFromSuperview];

      v3 = v11;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  [v3 willMoveToParentViewController:0];
  v5 = [v3 viewIfLoaded];
  v6 = [v5 superview];

  if (v6)
  {

    result = [v3 view];
    if (result)
    {
      v8 = result;
      [result removeFromSuperview];

      goto LABEL_6;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_6:
  [v3 removeFromParentViewController];
LABEL_10:

LABEL_11:
  v12 = *(v0 + v1);
  *(v0 + v1) = 0;

  v13 = OBJC_IVAR____TtC7Preview22DocumentViewController_delegate;
  swift_beginAccess();
  sub_100006600(v0 + v13, v15, &qword_100206DD8);
  if (!v16)
  {
    return sub_100007710(v15, &qword_100206DD8);
  }

  sub_100012F6C(v15, v14);
  sub_100007710(v15, &qword_100206DD8);
  sub_100008638(v14, v14[3]);
  type metadata accessor for DocumentSceneUIKitRepresentable.DocumentCoordinator(0);
  sub_100020E8C();
  return sub_10000867C(v14);
}

id sub_1000710A4()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin(v2);
  v91 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIDocumentHostedContentView(0);
  v96 = *(v4 - 8);
  v97 = v4;
  __chkstk_darwin(v4);
  v94 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = &v86 - v7;
  v8 = sub_100005804(&qword_100209728);
  __chkstk_darwin(v8 - 8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v86 - v12;
  v99 = type metadata accessor for Logger();
  v13 = *(v99 - 8);
  __chkstk_darwin(v99);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v86 - v17;
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  __chkstk_darwin(v22);
  v90 = &v86 - v23;
  __chkstk_darwin(v24);
  v26 = &v86 - v25;
  sub_100145164(&v86 - v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (j__os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    j___os_log_impl(&dword_100000000, v27, v28, "DocumentViewController: will start configureContentView.", v29, 2u);
  }

  v30 = *(v13 + 8);
  v30(v26, v99);
  v31 = [v1 document];
  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = v31;
  type metadata accessor for Document(0);
  v33 = swift_dynamicCastClass();
  if (!v33 || (v34 = v33, ([v33 documentState] & 1) != 0) || !objc_msgSend(v1, "isViewLoaded"))
  {

LABEL_16:
    sub_100145164(v15);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      j___os_log_impl(&dword_100000000, v45, v46, "DocumentViewController: configureContentView: view not loaded or document not ready.", v47, 2u);
    }

    v48 = v15;
    return (v30)(v48, v99);
  }

  v35 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel];
  if (!v35)
  {
    sub_100145164(v18);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      j___os_log_impl(&dword_100000000, v49, v50, "DocumentViewController: configureContentView: missing documentViewModel.", v51, 2u);
    }

    else
    {
    }

    v48 = v18;
    return (v30)(v48, v99);
  }

  v36 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
  v88 = v34;
  v89 = v36;
  v37 = OBJC_IVAR____TtC7Preview22DocumentViewController_contentHostingViewController;
  v38 = *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_contentHostingViewController];
  if (!v38)
  {
    swift_unknownObjectRetain();
    v52 = v98;
    goto LABEL_29;
  }

  v87 = v1;
  v39 = v38;
  swift_unknownObjectRetain();
  v40 = [v39 parentViewController];
  if (v40)
  {

    [v39 willMoveToParentViewController:0];
    v41 = [v39 viewIfLoaded];
    v42 = [v41 superview];

    if (v42)
    {

      result = [v39 view];
      if (!result)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v44 = result;
      [result removeFromSuperview];
    }

    [v39 removeFromParentViewController];
    goto LABEL_14;
  }

  v53 = [v39 viewIfLoaded];
  v54 = [v53 superview];

  if (!v54)
  {
LABEL_14:

LABEL_28:
    v52 = v98;
    v1 = v87;
LABEL_29:
    v56 = *&v1[v37];
    *&v1[v37] = 0;

    swift_unknownObjectRetain();
    v57 = sub_10006EFBC();
    sub_100071B28(v35, v89, v57, v52);
    sub_100006600(v52, v10, &qword_100209728);
    if ((*(v96 + 48))(v10, 1, v97) == 1)
    {
      sub_100007710(v10, &qword_100209728);
      sub_100145164(v21);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (j__os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        j___os_log_impl(&dword_100000000, v58, v59, "DocumentViewController: configureContentView: missing containerView.", v60, 2u);
      }

      swift_unknownObjectRelease();
      v30(v21, v99);
      return sub_100007710(v52, &qword_100209728);
    }

    v98 = v35;
    v61 = v95;
    sub_100077BAC(v10, v95);
    sub_100079850(v61, v94, type metadata accessor for UIDocumentHostedContentView);
    v62 = objc_allocWithZone(sub_100005804(&qword_100209730));
    v63 = UIHostingController.init(rootView:)();
    [v63 willMoveToParentViewController:v1];
    result = [v63 view];
    if (result)
    {
      v64 = v1;
      v65 = result;
      v66 = v64;
      result = [v64 view];
      if (result)
      {
        v67 = result;
        [result bounds];
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;

        [v65 setFrame:{v69, v71, v73, v75}];
        result = [v63 view];
        if (result)
        {
          v76 = result;
          [result setAutoresizingMask:18];

          [v66 addChildViewController:v63];
          result = [v66 view];
          if (result)
          {
            v77 = result;
            result = [v63 view];
            if (result)
            {
              v78 = result;
              [v77 addSubview:result];

              [v63 didMoveToParentViewController:v66];
              v79 = *&v66[v37];
              *&v66[v37] = v63;
              v80 = v63;

              v81 = v91;
              sub_1001830A4();
              (*(v92 + 8))(v81, v93);
              v82 = v90;
              sub_100145164(v90);
              v83 = Logger.logObject.getter();
              v84 = static os_log_type_t.default.getter();
              if (j__os_log_type_enabled(v83, v84))
              {
                v85 = swift_slowAlloc();
                *v85 = 0;
                j___os_log_impl(&dword_100000000, v83, v84, "DocumentViewController: did finish configureContentView.", v85, 2u);
              }

              swift_unknownObjectRelease();
              v30(v82, v99);
              sub_1000798B8(v95, type metadata accessor for UIDocumentHostedContentView);
              return sub_100007710(v52, &qword_100209728);
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  result = [v39 view];
  if (result)
  {
    v55 = result;
    [result removeFromSuperview];

    goto LABEL_28;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_100071B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for UIDocumentHostedContentView(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  sub_100005804(&qword_100209600);
  swift_storeEnumTagMultiPayload();
  v13 = v7[11];
  *(v10 + v13) = swift_getKeyPath();
  sub_100005804(&qword_100209608);
  swift_storeEnumTagMultiPayload();
  v14 = v10 + v7[12];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v7[13];
  *(v10 + v15) = swift_getKeyPath();
  sub_100005804(&qword_100207808);
  swift_storeEnumTagMultiPayload();
  *(v10 + v7[14]) = 0;
  swift_unknownObjectRetain();
  v16 = sub_100079BF0();
  if ((~v16 & 0xF000000000000007) != 0)
  {
    *v10 = a1;
    v10[1] = a2;
    v10[2] = v16;
    v10[3] = a3;
    type metadata accessor for MainActor();
    swift_unknownObjectRetain_n();
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = a1;
    v19[5] = a2;
    swift_unknownObjectRetain();
    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = a1;
    v21[5] = a2;
    j___s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC();
    v22 = v36;
    v23 = v37;
    v24 = v10 + v7[8];
    *v24 = v35;
    *(v24 + 1) = v22;
    v24[16] = v23;
    swift_unknownObjectRetain();
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = a1;
    v26[5] = a2;
    swift_unknownObjectRetain();
    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = a1;
    v28[5] = a2;
    j___s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC();
    v29 = v36;
    v30 = v37;
    v31 = v10 + v7[9];
    *v31 = v35;
    *(v31 + 1) = v29;
    v31[16] = v30;
    ObjectType = swift_getObjectType();
    sub_100142AA0(ObjectType, a2);
    sub_100191330();

    swift_unknownObjectRelease();
    v33 = v34;
    sub_100079850(v10, v34, type metadata accessor for UIDocumentHostedContentView);
    (*(v8 + 56))(v33, 0, 1, v7);
    return sub_1000798B8(v10, type metadata accessor for UIDocumentHostedContentView);
  }

  else
  {
    swift_unknownObjectRelease();

    sub_100007710(v10 + v12, &qword_100209478);
    sub_100007710(v10 + v13, &qword_100209480);

    sub_100007710(v10 + v15, qword_100208D40);
    return (*(v8 + 56))(v34, 1, 1, v7);
  }
}

uint64_t sub_100072094(uint64_t a1)
{
  if ([v1 _appearState] != 2 && objc_msgSend(v1, "_appearState") != 1)
  {
    v3 = [v1 document];
    if (!v3)
    {
      *&v1[OBJC_IVAR____TtC7Preview22DocumentViewController_pendingNewDocumentAction] = a1;

      goto LABEL_9;
    }
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;

  v5 = [v1 document];
  if (v5)
  {

    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 supportsMultipleScenes];

    if (v7)
    {

      return 0;
    }
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_10007A510;
  *(v9 + 24) = v4;

  sub_100072880(sub_10007A550, v9);

LABEL_9:

  return 1;
}

void sub_100072218(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentLaunchController);
  if (v1)
  {
    v2 = v1;
    sub_10000D440();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100072280(uint64_t a1)
{
  v3 = type metadata accessor for DocumentOpeningOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Preview22DocumentViewController_delegate;
  swift_beginAccess();
  sub_100006600(v1 + v7, v11, &qword_100206DD8);
  if (!v12)
  {
    return sub_100007710(v11, &qword_100206DD8);
  }

  sub_100012F6C(v11, v10);
  sub_100007710(v11, &qword_100206DD8);
  sub_100008638(v10, v10[3]);
  sub_100138E84(v6);
  sub_1000220E0(a1, v6);
  (*(v4 + 8))(v6, v3);
  return sub_10000867C(v10);
}

uint64_t sub_1000723F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v24 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_1000085D8(0, &qword_100206DB0);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_10007A558;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = &unk_1001F1798;
  v18 = j___Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_100078C20(&qword_100208000, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005804(&unk_100206DC0);
  sub_100007888(&qword_100208010, &unk_100206DC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  j___Block_release(v18);

  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v9, v26);
  v23(v16, v24);
}

uint64_t sub_1000727D0(void (*a1)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

void sub_100072880(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005804(&unk_100206DF0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = aBlock - v7;
  v9 = [v2 document];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for Document(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      v13[2] = v2;
      v13[3] = a1;
      v13[4] = a2;
      aBlock[4] = sub_10007A3B4;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10006CA8C;
      aBlock[3] = &unk_1001F16D0;
      v14 = j___Block_copy(aBlock);
      v15 = v2;

      [v12 closeWithCompletionHandler:v14];
      j___Block_release(v14);

      return;
    }
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = a1;
  v18[5] = a2;
  sub_10005DB88(0, 0, v8, &unk_10019EA20, v18);
}

void sub_100072AB0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  if (a1)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = a2;

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    v14[5] = a3;
    v14[6] = a4;
    sub_10005DB88(0, 0, v10, &unk_10019EA30, v14);
  }
}

uint64_t sub_100072BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100072C98, v8, v7);
}

uint64_t sub_100072C98()
{
  v1 = *(v0 + 16);

  v2 = [v1 document];
  if (v2)
  {
    v3 = *(v0 + 16);

    [v3 setDocument:0];
    v2 = sub_100070E4C();
  }

  (*(v0 + 24))(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100072D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100072DDC, v7, v6);
}

uint64_t sub_100072DDC()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

id sub_100072F60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007313C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentCloseButtonState();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100073244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100013194;

  return sub_1000706D0();
}

uint64_t sub_1000732E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Preview22DocumentViewController_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100073398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  sub_1000734D8(v9, a5);

  sub_100007710(v11, &qword_100206500);
}

uint64_t sub_1000734D8(uint64_t a1, uint64_t (*a2)(void))
{
  type metadata accessor for PreviewAction(0);
  v4 = a2();
  if (*(v2 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel))
  {
    v5 = *(v2 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100142ADC(ObjectType, v5);
    swift_unknownObjectRelease();
    sub_100122EC8(v4, 1);
  }
}

id sub_1000735A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100079F0C(a1);
  if (!v6)
  {
    sub_100006600(a2, v37, &qword_100206500);
    v21 = v38;
    if (v38)
    {
      v22 = sub_100008638(v37, v38);
      v23 = *(v21 - 8);
      v24 = __chkstk_darwin(v22);
      v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v23 + 8))(v26, v21);
      sub_10000867C(v37);
    }

    else
    {
      v27 = 0;
    }

    v34 = type metadata accessor for DocumentViewController(0);
    v36.receiver = v3;
    v36.super_class = v34;
    v33 = objc_msgSendSuper2(&v36, "canPerformAction:withSender:", a1, v27);
    swift_unknownObjectRelease();
    return v33;
  }

  v7 = v6;
  type metadata accessor for PreviewAction(0);
  v8 = sub_10015DA98();
  v9 = sub_10015E77C(v7, v8);

  if (v9)
  {
    if (qword_100206060 != -1)
    {
      swift_once();
    }

    v10 = qword_100222508;
    swift_getKeyPath();
    v37[0] = v10;
    sub_100078C20(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 32);
    v12 = v11;

    if (v11)
    {
      sub_100006600(a2, v37, &qword_100206500);
      v13 = v38;
      if (v38)
      {
        v14 = sub_100008638(v37, v38);
        v15 = *(v13 - 8);
        v16 = __chkstk_darwin(v14);
        v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v18, v16);
        v19 = v12;
        v20 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v15 + 8))(v18, v13);
        sub_10000867C(v37);
      }

      else
      {
        v35 = v12;
        v20 = 0;
      }

      v33 = [v12 canPerformAction:a1 withSender:v20];
      swift_unknownObjectRelease();

      return v33;
    }
  }

  else
  {
    v28 = [v3 document];
    if (v28)
    {

      if (*&v3[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel])
      {
        v29 = *&v3[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100142ADC(ObjectType, v29);
        swift_unknownObjectRelease();
        v31 = sub_100121700(v7);

        return (v31 & 1);
      }
    }
  }

  return 0;
}

uint64_t sub_100073C08(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100005804(&qword_100209470);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100005804(&qword_100209478);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_100005804(&qword_100209480);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_100005804(qword_100208D40);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

char *sub_100073E00(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100005804(&qword_100209470);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100005804(&qword_100209478);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_100005804(&qword_100209480);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = sub_100005804(qword_100208D40);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[13]];

  return v16(v17, a2, a2, v15);
}

void sub_100074004()
{
  sub_100074220();
  if (v0 <= 0x3F)
  {
    sub_100074280(319, &qword_100206AF0, type metadata accessor for DocumentViewToolbarAdaptor, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100074280(319, &qword_1002094F8, &type metadata accessor for NavigationSplitViewVisibility, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_1000742E4(319, qword_100209AF0, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_100074280(319, &qword_100209500, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100074280(319, &qword_100209F10, &type metadata accessor for OpenWindowAction, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1000742E4(319, &unk_100209508, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_100028220();
                if (v7 <= 0x3F)
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
}

unint64_t sub_100074220()
{
  result = qword_1002094F0;
  if (!qword_1002094F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002094F0);
  }

  return result;
}

void sub_100074280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000742E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100074350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000743AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_10007444C@<X0>(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t, uint64_t)@<X5>, _BYTE *a3@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ObjectType = swift_getObjectType();
  v7 = a2(ObjectType, a1);

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10007451C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v9 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ObjectType = swift_getObjectType();
  a7(v9, ObjectType, a5);
}

uint64_t sub_1000745F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v137 = a1;
  v136 = type metadata accessor for ColorScheme();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for InspectorToolbarContentModifier();
  __chkstk_darwin(v133);
  v128 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIDocumentHostedContentView(0);
  v150 = *(v5 - 8);
  __chkstk_darwin(v5);
  v153 = v6;
  v146 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for AlternateRepresentationPlacement();
  v149 = *(v151 - 1);
  __chkstk_darwin(v151);
  v148 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for NavigationSplitViewColumnVisibilityGestureBehavior();
  v119 = *(v138 - 1);
  __chkstk_darwin(v138);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005804(&qword_100209470);
  __chkstk_darwin(v10);
  v11 = sub_100005804(&qword_100209560);
  v116 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v109 - v12;
  ObjectType = sub_100005804(&qword_100209568);
  v139 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v15 = &v109 - v14;
  v120 = sub_100005804(&qword_100209570);
  v118 = *(v120 - 1);
  __chkstk_darwin(v120);
  v117 = &v109 - v16;
  v141 = sub_100005804(&qword_100209578);
  __chkstk_darwin(v141);
  v140 = &v109 - v17;
  v122 = sub_100005804(&qword_100209580);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v142 = &v109 - v18;
  v124 = sub_100005804(&qword_100209588);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v143 = &v109 - v19;
  v126 = sub_100005804(&qword_100209590);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v144 = &v109 - v20;
  v130 = sub_100005804(&qword_100209598);
  v127 = *(v130 - 8);
  __chkstk_darwin(v130);
  v145 = &v109 - v21;
  v132 = sub_100005804(&qword_1002095A0);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v109 - v22;
  v152 = v5;
  Binding.projectedValue.getter();
  v156 = v2;
  v155 = v2;
  sub_100005804(&qword_1002095A8);
  sub_100005804(&qword_1002095B0);
  v23 = sub_1000059D4(&qword_1002095B8);
  v24 = sub_1000059D4(&qword_1002095C0);
  v25 = sub_1000779A4();
  v157 = v24;
  v158 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v157 = v23;
  v158 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v108 = sub_100077A28();
  NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
  if ((v2[2] & 0x8000000000000000) != 0)
  {
    static NavigationSplitViewColumnVisibilityGestureBehavior.disabled.getter();
  }

  else
  {
    static NavigationSplitViewColumnVisibilityGestureBehavior.automatic.getter();
  }

  v27 = sub_100007888(&qword_1002095E8, &qword_100209560);
  View.navigationSplitViewColumnVisibilityGesture(_:)();
  (*(v119 + 8))(v9, v138);
  (*(v116 + 8))(v13, v11);
  v28 = v148;
  v29 = static AlternateRepresentationPlacement.navigationSplitViewCompact.getter();
  __chkstk_darwin(v29);
  v108 = v2;
  sub_100005804(&qword_1002095F0);
  v157 = v11;
  v158 = v27;
  swift_getOpaqueTypeConformance2();
  sub_100007888(&qword_1002095F8, &qword_1002095F0);
  v30 = v117;
  v31 = ObjectType;
  View.alternateRepresentation<A>(for:content:)();
  (*(v149 + 8))(v28, v151);
  (*(v139 + 8))(v15, v31);
  KeyPath = swift_getKeyPath();
  v119 = *(v2 + *(v152 + 56));
  v33 = Namespace.wrappedValue.getter();
  v34 = v140;
  (*(v118 + 32))(v140, v30, v120);
  v35 = v141;
  v36 = &v34[*(v141 + 36)];
  *v36 = KeyPath;
  *(v36 + 1) = v33;
  v36[16] = 0;
  v38 = *v2;
  v149 = v2[1];
  v37 = v149;
  v154 = v2;
  v148 = v38;
  ObjectType = swift_getObjectType();
  v39 = sub_100142ADC(ObjectType, v37);
  v151 = type metadata accessor for UIDocumentHostedContentView;
  v40 = v146;
  sub_100079850(v2, v146, type metadata accessor for UIDocumentHostedContentView);
  v139 = *(v150 + 80);
  v41 = (v139 + 16) & ~v139;
  v150 = v41;
  v42 = swift_allocObject();
  sub_100077BAC(v40, v42 + v41);
  sub_100005804(&qword_100209610);
  v43 = swift_allocBox();
  v118 = type metadata accessor for ToolbarViewModel(0);
  v117 = sub_100078C20(&qword_100209618, type metadata accessor for ToolbarViewModel);
  v116 = v39;

  Bindable<A>.init(wrappedValue:)();
  v138 = type metadata accessor for Radar154080867();
  v115 = &v109;
  __chkstk_darwin(v138);
  v114 = v43;
  __chkstk_darwin(v44);
  v113 = sub_100005804(&qword_100209620);
  v45 = sub_100005804(&qword_100209628);
  v110 = v45;
  v46 = sub_100078A5C();
  v47 = sub_1000059D4(&qword_100209648);
  v48 = type metadata accessor for URL();
  v49 = sub_100078C20(&qword_100209650, &type metadata accessor for URL);
  v157 = v35;
  v158 = v48;
  v159 = v46;
  v160 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v157 = v47;
  v158 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v112 = v51;
  v52 = sub_1000059D4(&qword_100209658);
  v53 = type metadata accessor for DuplicateSheet(255);
  v157 = v35;
  v158 = v46;
  v111 = v46;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_100078C20(&qword_100209B30, type metadata accessor for DuplicateSheet);
  v157 = v52;
  v158 = v53;
  v159 = v54;
  v160 = v55;
  v120 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  v56 = swift_getOpaqueTypeConformance2();
  v106[0] = v45;
  v57 = v113;
  v58 = v140;
  sub_100187734(v138, sub_100078308, v106, sub_100078A50, v106, v35, v138, v113, v106[0], v46, &off_1001F8540, v51, v56);

  sub_100078C68(v58);

  v59 = v152;
  v60 = v154 + *(v152 + 32);
  v61 = *v60;
  v62 = *(v60 + 1);
  LOBYTE(v60) = v60[16];
  v157 = v61;
  v158 = v62;
  LOBYTE(v159) = v60;
  v140 = sub_100005804(&unk_100209B50);
  Binding.projectedValue.getter();
  v63 = v165;
  v64 = v166;
  LODWORD(v116) = v167;
  v65 = ObjectType;
  v66 = v149;
  v67 = sub_100142AF0(ObjectType, v149);
  v68 = Namespace.wrappedValue.getter();
  sub_100142ADC(v65, v66);
  v69 = v128;
  Bindable<A>.init(wrappedValue:)();
  v157 = v141;
  v158 = v138;
  v159 = v57;
  v160 = v110;
  v161 = v111;
  v162 = &off_1001F8540;
  v163 = v112;
  v164 = v56;
  v70 = swift_getOpaqueTypeConformance2();
  v141 = v70;
  v71 = sub_100078C20(&qword_100209660, type metadata accessor for InspectorToolbarContentModifier);
  v107 = v70;
  v72 = v133;
  v73 = v122;
  v74 = v142;
  sub_1000D0D48(v63, v64, v116, v67, v68, 0, v69, v122, v143, v133, v107, v71);

  sub_1000798B8(v69, type metadata accessor for InspectorToolbarContentModifier);
  (*(v121 + 8))(v74, v73);
  v75 = v154;
  v76 = v154 + *(v59 + 36);
  v77 = *v76;
  v78 = *(v76 + 1);
  LOBYTE(v76) = v76[16];
  v157 = v77;
  v158 = v78;
  LOBYTE(v159) = v76;
  Binding.projectedValue.getter();
  v79 = v75;
  v80 = v146;
  v81 = v151;
  sub_100079850(v79, v146, v151);
  v82 = v150;
  v83 = swift_allocObject();
  sub_100077BAC(v80, v83 + v82);
  v84 = type metadata accessor for ExportSheetView();
  v142 = v84;
  v157 = v73;
  v158 = v72;
  v159 = v141;
  v160 = v71;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_100078C20(&qword_100209668, type metadata accessor for ExportSheetView);
  v107 = v85;
  v108 = v86;
  v106[2] = v84;
  v87 = v124;
  v88 = v143;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v123 + 8))(v88, v87);
  v89 = v154;
  v90 = v134;
  sub_10008A254(v134);
  sub_100079850(v89, v80, v81);
  v91 = v150;
  v92 = swift_allocObject();
  sub_100077BAC(v80, v92 + v91);
  v157 = v87;
  v158 = v142;
  v159 = v85;
  v160 = v86;
  v152 = swift_getOpaqueTypeConformance2();
  v93 = sub_100078C20(&qword_100209670, &type metadata accessor for ColorScheme);
  v94 = v126;
  v95 = v136;
  v96 = v144;
  j___s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lF();

  (*(v135 + 8))(v90, v95);
  (*(v125 + 8))(v96, v94);
  sub_100142ADC(ObjectType, v149);
  LOBYTE(v86) = sub_10011CB7C();

  LOBYTE(v165) = v86 & 1;
  sub_100079850(v154, v80, v151);
  v97 = v150;
  v98 = swift_allocObject();
  sub_100077BAC(v80, v98 + v97);
  v157 = v94;
  v158 = v95;
  v159 = v152;
  v160 = v93;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v129;
  v101 = v130;
  v102 = v145;
  j___s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lF();

  (*(v127 + 8))(v102, v101);
  LOBYTE(v165) = sub_100142C6C(ObjectType, v149) & 1;
  sub_100079850(v154, v80, v151);
  v103 = swift_allocObject();
  sub_100077BAC(v80, v103 + v97);
  v157 = v101;
  v158 = &type metadata for Bool;
  v159 = v99;
  v160 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v104 = v132;
  j___s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lF();

  return (*(v131 + 8))(v100, v104);
}

uint64_t sub_100075CDC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100075D8C();
}

uint64_t sub_100075D8C()
{
  v1 = sub_100005804(&qword_1002096F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_100005804(&qword_1002095B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = *(v0 + 16);
  sub_10007732C(v8, &v16);
  v9 = v16;
  v10 = v17;
  v18 = v16;
  v19 = v17;
  if (v8 < 0)
  {
    static ToolbarDefaultItemKind.sidebarToggle.getter();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for ToolbarDefaultItemKind();
  (*(*(v12 - 8) + 56))(v3, v11, 1, v12);
  v13 = sub_100005804(&qword_1002095C0);
  v14 = sub_1000779A4();
  View.toolbar(removing:)();
  sub_100007710(v3, &qword_1002096F0);
  sub_100077BA0(v9, v10);
  v16 = v13;
  v17 = v14;
  swift_getOpaqueTypeConformance2();
  View.navigationSplitViewColumnWidth(min:ideal:max:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100075FE4()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_100005804(&qword_1002095B0);
  sub_100077A28();
  NavigationStack.init<>(root:)();
}

uint64_t sub_1000760E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v23[1] = a2;
  v24 = a1;
  v26 = a4;
  v4 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_1002096A0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  v11 = sub_100005804(&qword_1002096A8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13;
  type metadata accessor for MainActor();
  v23[2] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = v24;
  sub_10007746C(v24, v10);
  (*(v5 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v4);
  sub_1000796E0();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v5 + 8))(v7, v4);
  sub_100007710(v10, &qword_1002096A0);
  v16 = *(v15 + 24);
  v17 = sub_100005804(&qword_1002095E0);
  v18 = v26;
  (*(v12 + 16))(v26 + *(v17 + 40), v14, v11);
  *v18 = v25;
  *(v18 + 8) = v16;

  v19 = static SafeAreaRegions.all.getter();
  v20 = static Edge.Set.all.getter();
  (*(v12 + 8))(v14, v11);

  result = sub_100005804(&qword_1002095B0);
  v22 = v18 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20;
  return result;
}

uint64_t sub_10007640C@<X0>(uint64_t a1@<X8>)
{
  sub_100079668();
  result = j___s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluig();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1000764B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenWindowAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = j___s7SwiftUI17EnvironmentValuesVMa();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100206060 != -1)
  {
    swift_once();
  }

  v11 = qword_100222508;
  swift_getKeyPath();
  v26 = v11;
  sub_100078C20(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 32);
  v13 = v12;

  if (v12)
  {
    v15 = a2 + *(type metadata accessor for UIDocumentHostedContentView(0) + 48);
    v16 = *v15;
    if (*(v15 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v17 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
      v22[1] = a2;
      v18 = v5;
      v19 = v4;
      v20 = a1;
      v21 = v17;
      os_log(_:dso:log:_:_:)();

      a1 = v20;
      v4 = v19;
      v5 = v18;
      j___s7SwiftUI17EnvironmentValuesVACycfC();
      swift_getAtKeyPath();
      sub_100077BA0(v16, 0);
      (*(v23 + 8))(v10, v24);
      LOBYTE(v16) = v25;
    }

    sub_10008A02C(v7);
    sub_10005E714(a1, v16 & 1, v7);

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1000767C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  sub_100142ADC(ObjectType, v4);
  sub_1001196F8();

  *a2 = swift_getKeyPath();
  sub_100005804(&qword_100208138);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ExportSheetView();
  type metadata accessor for ExportSheetViewModel(0);
  sub_100078C20(&qword_100208130, type metadata accessor for ExportSheetViewModel);
  Bindable<A>.init(wrappedValue:)();
}

uint64_t sub_100076924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a3 + 8);
  ObjectType = swift_getObjectType();
  sub_100142ADC(ObjectType, v8);
  (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
  v10 = static ColorScheme.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  sub_100115FF8(v10 & 1);
}

void sub_100076AB8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *((*(a3 + 16) & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  v6 = [v5 viewIfLoaded];
  v7 = [v6 window];

  sub_100077B98();
  if (v7)
  {
    sub_100076DB4();
    v8 = [objc_opt_self() defaultCenter];
    if (qword_100206058 != -1)
    {
      swift_once();
    }

    v9 = qword_1002224D8;
    sub_100005804(&qword_100209688);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10019B3A0;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v4;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = sub_1000085D8(0, &qword_100209690);
    *(inited + 144) = v7;
    v11 = v7;
    sub_100006170(inited);
    swift_setDeallocating();
    sub_100005804(&qword_1002061A8);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 postNotificationName:v9 object:0 userInfo:{isa, 0x776F646E6977, 0xE600000000000000}];
  }

  else
  {
  }
}

uint64_t sub_100076DB4()
{
  v1 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100005804(&qword_100209678);
  __chkstk_darwin(v34);
  v4 = &v28 - v3;
  v5 = sub_100005804(&unk_10020A0D0);
  __chkstk_darwin(v5 - 8);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = *v0;
  v14 = v0[1];
  ObjectType = swift_getObjectType();
  if (sub_100142C6C(ObjectType, v14) & 1) != 0 || (sub_100142ADC(ObjectType, v14), v16 = sub_10011CB7C(), result = , (v16))
  {
    v29 = ObjectType;
    v30 = v14;
    v31 = v13;
    type metadata accessor for UIDocumentHostedContentView(0);
    sub_100089E4C(v12);
    v18 = v35;
    (*(v35 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v1);
    (*(v18 + 56))(v9, 0, 1, v1);
    v19 = *(v34 + 48);
    sub_100006600(v12, v4, &unk_10020A0D0);
    sub_100006600(v9, &v4[v19], &unk_10020A0D0);
    v20 = *(v18 + 48);
    if (v20(v4, 1, v1) == 1)
    {
      sub_100007710(v9, &unk_10020A0D0);
      sub_100007710(v12, &unk_10020A0D0);
      if (v20(&v4[v19], 1, v1) == 1)
      {
        sub_100007710(v4, &unk_10020A0D0);
        v21 = v30;
        result = v29;
LABEL_10:
        sub_100142ADC(result, v21);
        sub_100119D68(0);
      }
    }

    else
    {
      v22 = v33;
      sub_100006600(v4, v33, &unk_10020A0D0);
      if (v20(&v4[v19], 1, v1) != 1)
      {
        v23 = v35;
        v24 = v32;
        (*(v35 + 32))(v32, &v4[v19], v1);
        sub_100078C20(&qword_100209680, &type metadata accessor for UserInterfaceSizeClass);
        v25 = v22;
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v23 + 8);
        v27(v24, v1);
        sub_100007710(v9, &unk_10020A0D0);
        sub_100007710(v12, &unk_10020A0D0);
        v27(v25, v1);
        sub_100007710(v4, &unk_10020A0D0);
        v21 = v30;
        result = v29;
        if ((v26 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      sub_100007710(v9, &unk_10020A0D0);
      sub_100007710(v12, &unk_10020A0D0);
      (*(v35 + 8))(v22, v1);
    }

    return sub_100007710(v4, &qword_100209678);
  }

  return result;
}

uint64_t sub_10007728C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100076DB4();
}

id sub_10007732C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    goto LABEL_4;
  }

  v3 = *(*(a1 + 24) + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperThumbnailViewController);
  result = [v3 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];

    v7 = v3;
    v8 = static SafeAreaRegions.all.getter();
    static Edge.Set.all.getter();
    sub_100005804(&qword_1002096F8);
    sub_100079920();
    j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
LABEL_4:
    result = j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
    *a2 = v7;
    *(a2 + 8) = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007746C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageDocumentView();
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005804(&qword_1002096D8);
  __chkstk_darwin(v24);
  v8 = &v22 - v7;
  v9 = type metadata accessor for PDFDocumentView();
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005804(&qword_1002096C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  type metadata accessor for MainActor();
  v25 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(a1 + 16);
  if (v15 < 0)
  {
    v23 = v4;
    v18 = objc_opt_self();

    v19 = [v18 defaultCenter];
    type metadata accessor for AnyCanvas();
    v20 = static AnyCanvas.canvasDidCropNotification.getter();
    NSNotificationCenter.publisher(for:object:)();

    type metadata accessor for ImageDocumentViewModel();
    sub_100078C20(&qword_1002096E0, type metadata accessor for ImageDocumentViewModel);

    Bindable<A>.init(wrappedValue:)();
    *&v6[*(v23 + 20)] = v15 & 0x7FFFFFFFFFFFFFFFLL;
    sub_100079850(v6, v8, type metadata accessor for ImageDocumentView);
    swift_storeEnumTagMultiPayload();
    sub_100078C20(&qword_1002096C8, type metadata accessor for PDFDocumentView);
    sub_100078C20(&qword_1002096D0, type metadata accessor for ImageDocumentView);
    j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
    v16 = type metadata accessor for ImageDocumentView;
    v17 = v6;
  }

  else
  {
    sub_100079918();
    type metadata accessor for PDFDocumentViewModel();
    sub_100078C20(&qword_1002096E8, type metadata accessor for PDFDocumentViewModel);

    Bindable<A>.init(wrappedValue:)();
    *&v11[*(v9 + 20)] = v15;
    sub_100079850(v11, v8, type metadata accessor for PDFDocumentView);
    swift_storeEnumTagMultiPayload();
    sub_100078C20(&qword_1002096C8, type metadata accessor for PDFDocumentView);
    sub_100078C20(&qword_1002096D0, type metadata accessor for ImageDocumentView);
    j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
    v16 = type metadata accessor for PDFDocumentView;
    v17 = v11;
  }

  sub_1000798B8(v17, v16);
  sub_100023CD8(v14, a2, &qword_1002096C0);
}

unint64_t sub_1000779A4()
{
  result = qword_1002095C8;
  if (!qword_1002095C8)
  {
    sub_1000059D4(&qword_1002095C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002095C8);
  }

  return result;
}

unint64_t sub_100077A28()
{
  result = qword_1002095D0;
  if (!qword_1002095D0)
  {
    sub_1000059D4(&qword_1002095B0);
    sub_100007888(&qword_1002095D8, &qword_1002095E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002095D0);
  }

  return result;
}

uint64_t sub_100077AE8@<X0>(uint64_t a1@<X8>)
{
  sub_100079668();
  result = j___s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluig();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100077BA0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100077BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIDocumentHostedContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100077C10(uint64_t a1)
{
  v3 = *(type metadata accessor for UIDocumentHostedContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000764B8(a1, v4);
}

NSString sub_100077C80()
{
  result = String._bridgeToObjectiveC()();
  qword_1002224D8 = result;
  return result;
}

uint64_t sub_100077CB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v47 = a4;
  v4 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v4 - 8);
  v48 = v33 - v5;
  v6 = sub_100005804(&qword_100209610);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = sub_100005804(&qword_100209648);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  __chkstk_darwin(v13);
  v49 = v33 - v15;
  v16 = swift_projectBox();
  v17 = *(v7 + 16);
  v38 = v16;
  v17(v9, v16, v6);
  v39 = v7 + 16;
  Bindable.projectedValue.getter();
  v18 = *(v7 + 8);
  v18(v9, v6);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v37 = v18;
  v18(v12, v6);
  v33[1] = v50;
  v33[0] = v51;
  v34 = v52;
  v17(v9, v16, v6);
  Bindable.wrappedValue.getter();
  v18(v9, v6);
  v19 = sub_1001156B0();

  v20 = v48;
  sub_1001830A4();

  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v40 = *(v22 + 56);
  v41 = v22 + 56;
  v23 = v20;
  v35 = v21;
  v40(v20, 0, 1);
  v24 = swift_allocObject();
  *(v24 + 16) = v42;
  *(v24 + 24) = v43;

  v36 = sub_100005804(&qword_100209578);
  v42 = sub_100078A5C();
  v43 = sub_100078C20(&qword_100209650, &type metadata accessor for URL);
  View.fileExporter<A>(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)();

  sub_100007710(v23, &qword_10020A4B0);
  v25 = v38;
  v17(v9, v38, v6);
  Bindable.projectedValue.getter();
  v26 = v37;
  v37(v9, v6);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v26(v12, v6);
  LODWORD(v44) = v54;
  v17(v9, v25, v6);
  Bindable.wrappedValue.getter();
  v26(v9, v6);
  v27 = sub_1001156B0();

  v28 = v48;
  sub_1001830A4();

  v29 = v35;
  (v40)(v28, 0, 1, v35);
  v50 = v36;
  v51 = v29;
  v52 = v42;
  v53 = v43;
  swift_getOpaqueTypeConformance2();
  v30 = v45;
  v31 = v49;
  View.fileMover(isPresented:file:onCompletion:)();

  sub_100007710(v28, &qword_10020A4B0);
  return (*(v46 + 8))(v31, v30);
}

uint64_t sub_100078314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v52 = a2;
  v53 = a3;
  v56 = a4;
  v57 = a1;
  v61 = type metadata accessor for URL();
  v59 = *(v61 - 8);
  v51 = *(v59 + 64);
  __chkstk_darwin(v61);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v42 - v6;
  v7 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v7 - 8);
  v47 = &v42 - v8;
  v9 = sub_100005804(&qword_100209610);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_100005804(&qword_100209658);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  __chkstk_darwin(v16);
  v60 = &v42 - v18;
  v19 = swift_projectBox();
  v20 = *(v10 + 16);
  v46 = v19;
  v20(v12, v19, v9);
  v45 = v10 + 16;
  Bindable.projectedValue.getter();
  v21 = *(v10 + 8);
  v21(v12, v9);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v44 = v21;
  v21(v15, v9);
  v42 = v64;
  v43 = v66;
  v20(v12, v19, v9);
  Bindable.wrappedValue.getter();
  v21(v12, v9);
  v22 = sub_1001156B0();

  v23 = v47;
  sub_1001830A4();

  (*(v59 + 56))(v23, 0, 1, v61);
  v49 = sub_100005804(&qword_100209578);
  v48 = sub_100078A5C();
  View.fileMover(isPresented:file:onCompletion:)();

  sub_100007710(v23, &qword_10020A4B0);
  v24 = v46;
  v20(v12, v46, v9);
  Bindable.projectedValue.getter();
  v25 = v44;
  v44(v12, v9);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25(v15, v9);
  v27 = v64;
  v26 = v65;
  LODWORD(v57) = v66;
  v20(v12, v24, v9);
  Bindable.wrappedValue.getter();
  v25(v12, v9);
  v28 = sub_1001156B0();

  v29 = v58;
  sub_1001830A4();

  v30 = swift_allocObject();
  v31 = v53;
  *(v30 + 16) = v52;
  *(v30 + 24) = v31;
  v32 = v59;
  v33 = v50;
  v34 = v61;
  (*(v59 + 16))(v50, v29, v61);
  v35 = (*(v32 + 80) + 33) & ~*(v32 + 80);
  v36 = (v51 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v27;
  *(v37 + 24) = v26;
  *(v37 + 32) = v57;
  (*(v32 + 32))(v37 + v35, v33, v34);
  v38 = (v37 + v36);
  *v38 = sub_1000794C4;
  v38[1] = v30;
  type metadata accessor for DuplicateSheet(0);

  v62 = v49;
  v63 = v48;
  swift_getOpaqueTypeConformance2();
  sub_100078C20(&qword_100209B30, type metadata accessor for DuplicateSheet);
  v39 = v54;
  v40 = v60;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v32 + 8))(v58, v34);
  return (*(v55 + 8))(v40, v39);
}

unint64_t sub_100078A5C()
{
  result = qword_100209630;
  if (!qword_100209630)
  {
    sub_1000059D4(&qword_100209578);
    sub_1000059D4(&qword_100209568);
    sub_1000059D4(&qword_1002095F0);
    sub_1000059D4(&qword_100209560);
    sub_100007888(&qword_1002095E8, &qword_100209560);
    swift_getOpaqueTypeConformance2();
    sub_100007888(&qword_1002095F8, &qword_1002095F0);
    swift_getOpaqueTypeConformance2();
    sub_100007888(&qword_100209638, &qword_100209640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209630);
  }

  return result;
}

uint64_t sub_100078C20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100078C68(uint64_t a1)
{
  v2 = sub_100005804(&qword_100209578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100078CD0()
{
  v1 = type metadata accessor for UIDocumentHostedContentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  swift_unknownObjectRelease();
  sub_100077B98();

  v3 = v2 + v1[7];

  v4 = *(sub_100005804(&qword_100209470) + 32);
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v1[10];
  sub_100005804(&qword_100209600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = v1[11];
  sub_100005804(&qword_100209608);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenWindowAction();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  sub_100077BA0(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  v10 = v1[13];
  sub_100005804(&qword_100207808);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100078FE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for UIDocumentHostedContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000767C4(v4, a1);
}

uint64_t sub_100079054(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UIDocumentHostedContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100076924(a1, a2, v6);
}

uint64_t sub_100079104(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for UIDocumentHostedContentView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1000791BC(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100079284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel];
  *v6 = a1;
  *(v6 + 1) = a2;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (a1)
  {
    v7 = [v2 document];
    ObjectType = swift_getObjectType();
    v9 = sub_1001429C4(ObjectType, a2);
    v10 = v9;
    if (v7)
    {
      sub_1000085D8(0, &qword_100209710);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        swift_unknownObjectRelease();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = sub_1001429C4(ObjectType, a2);
    [v3 setDocument:v13];
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = [v2 document];
    if (v12)
    {

      [v2 setDocument:0];
      sub_100070E4C();
    }
  }

LABEL_9:

  return sub_10006F2C4();
}

uint64_t sub_100079414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011B96C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10007946C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011B7C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000794CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000795B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_10007FF50(v5, v6, v7, v1 + v4, v9, v10, a1);
}

unint64_t sub_100079668()
{
  result = qword_100209698;
  if (!qword_100209698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209698);
  }

  return result;
}

unint64_t sub_1000796E0()
{
  result = qword_1002096B0;
  if (!qword_1002096B0)
  {
    sub_1000059D4(&qword_1002096A0);
    sub_100079764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002096B0);
  }

  return result;
}

unint64_t sub_100079764()
{
  result = qword_1002096B8;
  if (!qword_1002096B8)
  {
    sub_1000059D4(&qword_1002096C0);
    sub_100078C20(&qword_1002096C8, type metadata accessor for PDFDocumentView);
    sub_100078C20(&qword_1002096D0, type metadata accessor for ImageDocumentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002096B8);
  }

  return result;
}

uint64_t sub_100079850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000798B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100079920()
{
  result = qword_100209700;
  if (!qword_100209700)
  {
    sub_1000059D4(&qword_1002096F8);
    sub_1000799AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209700);
  }

  return result;
}

unint64_t sub_1000799AC()
{
  result = qword_100209708;
  if (!qword_100209708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209708);
  }

  return result;
}

uint64_t sub_100079A00()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100079A40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100079A74()
{
  UUID.init()();
  v1 = (v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_delegate;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = (v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentStateObservation);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentLaunchController) = 0;
  *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_fileURLObservation) = 0;
  v4 = OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorModel;
  type metadata accessor for DocumentViewToolbarAdaptor.Model(0);
  swift_allocObject();
  *(v0 + v4) = sub_10000ADF4();
  *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController____lazy_storage___allToolbarAdaptors) = 0;
  *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_toolbarAdaptorDestinationItem) = 0;
  *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseActionWhenShown) = 0;
  v5 = OBJC_IVAR____TtC7Preview22DocumentViewController_documentCloseButtonState;
  v6 = type metadata accessor for DocumentCloseButtonState();
  (*(v6[-1].Description + 13))(v0 + v5, 0, v6);
  *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_contentHostingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC7Preview22DocumentViewController_pendingNewDocumentAction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100079BF0()
{
  type metadata accessor for PDFDocumentViewModel();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for PDFDocumentViewRepresentable.Components();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    objc_allocWithZone(type metadata accessor for PDFDocumentContentViewController(0));
    swift_unknownObjectRetain();
    v3 = sub_100017914(v1);
    result = v2;
    *(v2 + 24) = v3;
  }

  else
  {
    type metadata accessor for ImageDocumentViewModel();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for ImageDocumentViewRepresentable.Components();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      objc_allocWithZone(type metadata accessor for ImageDocumentContentViewController());
      swift_unknownObjectRetain();
      *(v7 + 24) = sub_100061330(v6);
      return v7 | 0x8000000000000000;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0xF000000000000007;
    }
  }

  return result;
}

char *sub_100079CF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1000085D8(0, &qword_1002064F8);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        j__memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_100079E20(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1000B6838(result, 1);

  return sub_100079CF4(v6, v5, 1, v3);
}

uint64_t sub_100079F0C(uint64_t a1)
{
  sub_100005804(&qword_100209718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019D7A0;
  *(inited + 32) = "duplicate:";
  type metadata accessor for PreviewAction(0);
  *(inited + 40) = sub_10015DC14();
  *(inited + 48) = "move:";
  *(inited + 56) = sub_10015DCB4();
  *(inited + 64) = "print:";
  *(inited + 72) = sub_10015D704();
  *(inited + 80) = "export:";
  *(inited + 88) = sub_10015D754();
  *(inited + 96) = "find:";
  *(inited + 104) = sub_10015D7F4();
  *(inited + 112) = "newFromPasteboard:";
  *(inited + 120) = sub_10015DA98();
  v3 = sub_100006080(inited);
  swift_setDeallocating();
  sub_100005804(&qword_100209720);
  swift_arrayDestroy();
  if (*(v3 + 16) && (v4 = sub_10008BE60(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10007A04C(uint64_t a1)
{
  if (qword_100206060 != -1)
  {
    swift_once();
  }

  v2 = qword_100222508;
  swift_getKeyPath();
  v14[0] = v2;
  sub_100078C20(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 32);
  v4 = v3;

  if (v3)
  {
    sub_100006600(a1, v14, &qword_100206500);
    v5 = v15;
    if (v15)
    {
      v6 = sub_100008638(v14, v15);
      v7 = *(v5 - 8);
      v8 = __chkstk_darwin(v6);
      v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10, v8);
      v11 = v4;
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v7 + 8))(v10, v5);
      sub_10000867C(v14);
    }

    else
    {
      v13 = v4;
      v12 = 0;
    }

    [v4 newFromPasteboard:{v12, v14[0]}];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10007A274()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A2B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002DD0C;

  return sub_100072D44(a1, v4, v5, v7, v6);
}

uint64_t sub_10007A374()
{

  return swift_deallocObject();
}

uint64_t sub_10007A3C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100013194;

  return sub_100072BFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007A4D0()
{

  return swift_deallocObject();
}

uint64_t sub_10007A518()
{

  return swift_deallocObject();
}

uint64_t sub_10007A6B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A6F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DD0C;

  return sub_100070AE8(a1, v4, v5, v6);
}

uint64_t sub_10007A7A8()
{

  return swift_deallocObject();
}

uint64_t sub_10007A8B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_10007A8F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007A930()
{
  v1 = *(sub_100005804(&unk_10020A0B0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for DocumentOpeningOptions();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007AA74(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100005804(&unk_10020A0B0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10002DD0C;

  return sub_10006E6A8(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t (*sub_10007ABE4())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_10007AC40;
}

uint64_t sub_10007AC64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DD0C;

  return sub_10006EF24(a1, v4, v5, v6);
}

uint64_t sub_10007AD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DD0C;

  return sub_10006EB80(a1, v4, v5, v6);
}

uint64_t sub_10007ADCC()
{

  return swift_deallocObject();
}

uint64_t sub_10007AE0C(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_10007AE68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DD0C;

  return sub_10006DEA0(a1, v4, v5, v6);
}

uint64_t sub_10007AF1C()
{
  sub_1000059D4(&qword_1002095A0);
  sub_1000059D4(&qword_100209598);
  sub_1000059D4(&qword_100209590);
  type metadata accessor for ColorScheme();
  sub_1000059D4(&qword_100209588);
  type metadata accessor for ExportSheetView();
  sub_1000059D4(&qword_100209580);
  type metadata accessor for InspectorToolbarContentModifier();
  sub_1000059D4(&qword_100209578);
  type metadata accessor for Radar154080867();
  sub_1000059D4(&qword_100209620);
  sub_1000059D4(&qword_100209628);
  sub_100078A5C();
  sub_1000059D4(&qword_100209648);
  type metadata accessor for URL();
  sub_100078C20(&qword_100209650, &type metadata accessor for URL);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000059D4(&qword_100209658);
  type metadata accessor for DuplicateSheet(255);
  swift_getOpaqueTypeConformance2();
  sub_100078C20(&qword_100209B30, type metadata accessor for DuplicateSheet);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100078C20(&qword_100209660, type metadata accessor for InspectorToolbarContentModifier);
  swift_getOpaqueTypeConformance2();
  sub_100078C20(&qword_100209668, type metadata accessor for ExportSheetView);
  swift_getOpaqueTypeConformance2();
  sub_100078C20(&qword_100209670, &type metadata accessor for ColorScheme);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007B3F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10007B440(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

ValueMetadata *type metadata accessor for ToolbarCancellationItem()
{
  return &type metadata for ToolbarCancellationItem;
}

{
  return &type metadata for ToolbarCancellationItem;
}

uint64_t sub_10007B4AC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static ButtonRole.cancel.getter();
  v8 = type metadata accessor for SystemRoleButton();
  v9 = v8[5];
  v10 = type metadata accessor for LocalizedStringResource();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = swift_allocObject();
  v12 = a1 & 1;
  *(v11 + 16) = v12;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;

  *(a4 + v8[6]) = v12;
  v14 = (a4 + v8[7]);
  *v14 = sub_10007C1D0;
  v14[1] = v11;
  return result;
}

uint64_t sub_10007B5F8@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = type metadata accessor for ToolbarItemPlacement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = sub_100005804(&qword_100209788);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - v11;
  v13 = *v1;
  static ToolbarItemPlacement.cancellationAction.getter();
  v16 = v13;
  v17 = *(v1 + 8);
  (*(v3 + 16))(v5, v8, v2);
  type metadata accessor for SystemRoleButton();
  sub_10007BFB8();
  ToolbarItem<>.init(id:placement:showsByDefault:content:)();
  (*(v3 + 8))(v8, v2);
  sub_100007888(&qword_100209790, &qword_100209788);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10007B878@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v29 = a4;
  v5 = type metadata accessor for SystemRoleButton();
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100209780);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_100005804(&qword_100209768);
  v25 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_100005804(&qword_100209750);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  type metadata accessor for MainActor();
  v28 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (HIBYTE(a1) == 2 || (a1 & 0x100) == 0)
  {
    static ButtonRole.confirm.getter();
    v18 = v5[5];
    v19 = type metadata accessor for LocalizedStringResource();
    (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = a1 & 1;
    *(v20 + 17) = HIBYTE(a1);
    v21 = v27;
    *(v20 + 24) = v26;
    *(v20 + 32) = v21;
    v7[v5[6]] = a1 & 1;
    v22 = &v7[v5[7]];
    *v22 = sub_10007D4A4;
    v22[1] = v20;
    sub_10007C094(v7, v10);
    swift_storeEnumTagMultiPayload();
    sub_100007888(&qword_100209760, &qword_100209768);
    sub_10007BFB8();

    j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
    sub_10007C0F8(v7);
  }

  else
  {
    ProgressView<>.init<>()();
    v17 = v25;
    (*(v25 + 16))(v10, v13, v11);
    swift_storeEnumTagMultiPayload();
    sub_100007888(&qword_100209760, &qword_100209768);
    sub_10007BFB8();
    j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
    (*(v17 + 8))(v13, v11);
  }

  sub_10007C154(v16, v29);
}

uint64_t sub_10007BC80@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = type metadata accessor for ToolbarItemPlacement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = sub_100005804(&qword_100209748);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - v11;
  v13 = *v1;
  v14 = v1[1];
  static ToolbarItemPlacement.confirmationAction.getter();
  v17 = v13;
  v18 = v14;
  v19 = *(v1 + 8);
  (*(v3 + 16))(v5, v8, v2);
  sub_100005804(&qword_100209750);
  sub_10007BF00();
  ToolbarItem<>.init(id:placement:showsByDefault:content:)();
  (*(v3 + 8))(v8, v2);
  sub_100007888(&qword_100209778, &qword_100209748);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_10007BF00()
{
  result = qword_100209758;
  if (!qword_100209758)
  {
    sub_1000059D4(&qword_100209750);
    sub_100007888(&qword_100209760, &qword_100209768);
    sub_10007BFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209758);
  }

  return result;
}

unint64_t sub_10007BFB8()
{
  result = qword_100209770;
  if (!qword_100209770)
  {
    type metadata accessor for SystemRoleButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209770);
  }

  return result;
}

uint64_t type metadata accessor for SystemRoleButton()
{
  result = qword_1002097F0;
  if (!qword_1002097F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  result = qword_10020B820;
  if (!qword_10020B820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007C05C()
{

  return swift_deallocObject();
}

uint64_t sub_10007C094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemRoleButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C0F8(uint64_t a1)
{
  v2 = type metadata accessor for SystemRoleButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007C154(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100209750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonRole();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005804(&qword_100208290);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10007C338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonRole();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100005804(&qword_100208290);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}