void sub_10009DE78()
{
  if (!qword_10020A6A8)
  {
    type metadata accessor for UTType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020A6A8);
    }
  }
}

uint64_t sub_10009DEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009DFA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedStringResource();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ToolbarGroup()
{
  result = qword_10020A708;
  if (!qword_10020A708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009E094()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10009E128()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10009E17C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_10007D7A8();
    if (v1 <= 0x3F)
    {
      sub_10009DE78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10009E240(uint64_t *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_100005804(&qword_10020A0C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_10009E310(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005804(&qword_10020A0C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009E4E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10009E664()
{
  result = qword_10020A860;
  if (!qword_10020A860)
  {
    sub_1000059D4(&qword_10020A850);
    sub_100007888(&qword_10020A868, &qword_10020A870);
    sub_100007888(&qword_1002064D8, &qword_1002064E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A860);
  }

  return result;
}

uint64_t sub_10009E788(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E7F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009E850()
{
  v1 = *(sub_100005804(&qword_10020A0C0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10009E988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A0C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009EAD4()
{
  sub_1000059D4(&qword_10020A880);
  sub_1000059D4(&qword_10020A878);
  sub_100007888(&qword_10020A898, &qword_10020A878);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009EBA8()
{
  sub_1000059D4(&qword_10020A8A8);
  sub_1000059D4(&qword_10020A8A0);
  sub_100007888(&qword_10020A8B0, &qword_10020A8A0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009ECA8(void *a1, void (*a2)(uint64_t, void))
{
  a2(255, *a1);
  swift_getWitnessTable();
  type metadata accessor for ToolbarItem();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009EDB0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (v5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t sub_10009EED8()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_100222528 = result;
  unk_100222530 = v1;
  return result;
}

id sub_10009EF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

char *sub_10009F0D0(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC7Preview9LoupeView_loupeRotation] = 0;
  *&v5[OBJC_IVAR____TtC7Preview9LoupeView_loupeScale] = 0x3FF0000000000000;
  *&v5[OBJC_IVAR____TtC7Preview9LoupeView_loupeVerticalOffset] = 0;
  result = [a1 rootLayer];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  [result setGeometryFlipped:{objc_msgSend(a1, "isGeometryFlipped")}];
  type metadata accessor for BaseNativeView();
  *&v5[OBJC_IVAR____TtC7Preview9LoupeView_containerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 bounds];
  v14 = &v5[OBJC_IVAR____TtC7Preview9LoupeView_assetSize];
  *v14 = v15;
  *(v14 + 1) = v16;
  *&v5[OBJC_IVAR____TtC7Preview9LoupeView_packageRootLayer] = v13;
  v17 = v13;
  result = [v17 sublayers];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = result;
  sub_1000085D8(0, &qword_10020A938);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_12:
  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v21 = v20;

  *&v5[OBJC_IVAR____TtC7Preview9LoupeView_loupeLayer] = v21;
  result = [objc_allocWithZone(CAStateController) initWithLayer:v17];
  if (result)
  {
    *&v5[OBJC_IVAR____TtC7Preview9LoupeView_stateController] = result;
    v28.receiver = v5;
    v28.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a2, a3, a4, a5);
    v23 = OBJC_IVAR____TtC7Preview9LoupeView_containerView;
    v24 = *&v22[OBJC_IVAR____TtC7Preview9LoupeView_containerView];
    v25 = v22;
    [v25 addSubview:v24];
    v26 = [*&v22[v23] layer];
    [v26 addSublayer:v17];

    sub_10009F408();
    sub_100005804(&qword_100207228);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10019A9F0;
    *(v27 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v27 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v25;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_10009F408()
{
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  v2 = *&v0[OBJC_IVAR____TtC7Preview9LoupeView_packageRootLayer];
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 stateWithName:v3];

  [*&v0[OBJC_IVAR____TtC7Preview9LoupeView_stateController] setState:v4 ofLayer:v2];
}

void sub_10009F518()
{
  v1 = *&v0[OBJC_IVAR____TtC7Preview9LoupeView_assetSize];
  if (v1 > 0.0)
  {
    v2 = *&v0[OBJC_IVAR____TtC7Preview9LoupeView_assetSize + 8];
    if (v2 > 0.0)
    {
      [v0 bounds];
      v4 = v3;
      v6 = v5;
      v7 = *&v0[OBJC_IVAR____TtC7Preview9LoupeView_containerView];
      [v7 bounds];
      [v7 setBounds:?];
      [v0 bounds];
      MidX = CGRectGetMidX(v15);
      [v0 bounds];
      [v7 setCenter:{MidX, CGRectGetMidY(v16)}];
      CGAffineTransformMakeScale(&v13, *&v0[OBJC_IVAR____TtC7Preview9LoupeView_loupeScale], *&v0[OBJC_IVAR____TtC7Preview9LoupeView_loupeScale]);
      CGAffineTransformRotate(&v14, &v13, *&v0[OBJC_IVAR____TtC7Preview9LoupeView_loupeRotation] * 0.0174532925);
      *&v13.m11 = *&v14.a;
      *&v13.m13 = *&v14.c;
      *&v13.m21 = *&v14.tx;
      [v7 setTransform:&v13];
      CGAffineTransformMakeTranslation(&v13, 0.0, *&v0[OBJC_IVAR____TtC7Preview9LoupeView_loupeVerticalOffset]);
      [v0 setTransform:&v13];
      v9 = objc_opt_self();
      v10 = [v9 disableActions];
      [v9 setDisableActions:1];
      v11 = v4 / v1;
      if (v6 / v2 < v4 / v1)
      {
        v11 = v6 / v2;
      }

      v12 = *&v0[OBJC_IVAR____TtC7Preview9LoupeView_packageRootLayer];
      CATransform3DMakeScale(&v13, v11, v11, 1.0);
      [v12 setTransform:&v13];
      [v12 setPosition:{v4 * 0.5, v6 * 0.5}];
      [v9 setDisableActions:v10];
    }
  }
}

void sub_10009F8AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview9LoupeView_stateController);
}

uint64_t sub_10009F99C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10009F408();
}

char *sub_10009FA3C(double a1, double a2, double a3, double a4)
{
  v8 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34[-v9];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v34[-v16];
  sub_10009EDB0(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100007710(v10, &qword_10020A4B0);
    v18 = objc_allocWithZone(NSError);
    v19 = String._bridgeToObjectiveC()();
    [v18 initWithDomain:v19 code:-1 userInfo:0];

    swift_willThrow();
    v22 = static os_log_type_t.fault.getter();
    sub_1000085D8(0, &qword_10020A928);
    v23 = static OS_os_log.default.getter();
    if (j__os_log_type_enabled(v23, v22))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      j___os_log_impl(&dword_100000000, v23, v22, "Error loading LandingUI-Loupe: %@", v25, 0xCu);
      sub_100007710(v26, &unk_1002093E0);
    }

    else
    {
    }

    return 0;
  }

  (*(v12 + 32))(v17, v10, v11);
  sub_1000085D8(0, &qword_10020A930);
  (*(v12 + 16))(v14, v17, v11);
  if (qword_100206070 != -1)
  {
    swift_once();
  }

  v20 = qword_100222528;
  v21 = unk_100222530;

  v29 = sub_10009EF08(v14, v20, v21, 0);
  (*(v12 + 8))(v17, v11);
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  v31 = [v30 rootLayer];
  if (!v31)
  {

    return 0;
  }

  v32 = objc_allocWithZone(type metadata accessor for LoupeView());
  v33 = sub_10009F0D0(v30, a1, a2, a3, a4);

  return v33;
}

void sub_10009FE78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10009FEE0(uint64_t a1, uint64_t a2, void *a3)
{
  v23._countAndFlagsBits = a2;
  v23._object = a3;
  v3 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  type metadata accessor for MainActor();
  v22[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v24 = 0xD000000000000014;
  v25 = 0x80000001001B2570;
  String.append(_:)(v23);
  v16._countAndFlagsBits = 0xD000000000000016;
  v16._object = 0x80000001001B2590;
  String.append(_:)(v16);
  URL.init(string:)();

  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *(v10 + 32);
    v18(v15, v8, v9);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    (*(v10 + 16))(v12, v15, v9);
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v18((v21 + v20), v12, v9);
    sub_1000A039C(0, 0, v5, &unk_1001A00A0, v21);

    sub_100007710(v5, &unk_100206DF0);
    (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_1000A0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1000A0294, 0, 0);
}

uint64_t sub_1000A0294()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v3 = v1;
    URL._bridgeToObjectiveC()(v2);
    v5 = v4;
    sub_1000064C0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [v3 openSensitiveURL:v5 withOptions:isa];
  }

  else
  {
    v7 = 2;
  }

  **(v0 + 16) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000A039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      sub_100005804(&qword_1002076E0);
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100005804(&qword_1002076E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000A0670()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_1000A0700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a1;
  v4[16] = a4;
  v4[17] = sub_100005804(&qword_10020A9D8);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v4[21] = *(v6 + 64);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0830, 0, 0);
}

uint64_t sub_1000A0830()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v2 = swift_allocBox();
  v4 = v3;
  v5 = type metadata accessor for SystemPhotoLibrary.ImportError();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  if (URL.startAccessingSecurityScopedResource()())
  {
    v45 = v6;
    v46 = (v1 + 2);
    v44 = v4;
    v8 = v0[21];
    v7 = v0[22];
    v47 = v5;
    v48 = v7;
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[16];
    v49 = [objc_opt_self() sharedPhotoLibrary];
    (*(v9 + 16))(v7, v11, v10);
    v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = v1;
    v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v12, v48, v10);
    *(v17 + v13) = v2;
    *(v17 + v15) = v14;
    v18 = v14;
    *(v17 + v16) = v49;
    v0[6] = sub_1000A21F8;
    v0[7] = v17;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000834C4;
    v0[5] = &unk_1001F2848;
    v19 = j___Block_copy(v0 + 2);

    v20 = v49;

    v0[14] = 0;
    LODWORD(v10) = [v20 performChangesAndWait:v19 error:v0 + 14];
    j___Block_release(v19);
    v21 = v0[14];
    if (v10)
    {
      swift_beginAccess();
      v22 = *v46;
      if (*v46)
      {
        v23 = v0[15];
        v25 = v18[3];
        v24 = v18[4];
        v26 = v21;
        sub_10002D758(v22);

        *v23 = v22;
        v23[1] = v25;
        v23[2] = v24;
        URL.stopAccessingSecurityScopedResource()();

        v27 = v0[1];
        goto LABEL_13;
      }

      v34 = v0[18];
      swift_beginAccess();
      sub_100006600(v44, v34, &qword_10020A9D8);
      sub_1000A20DC();
      v31 = swift_allocError();
      v50 = v35;
      v36 = *(v45 + 48);
      v37 = v36(v34, 1, v47);
      v38 = v0[18];
      if (v37 == 1)
      {
        swift_storeEnumTagMultiPayload();
        v39 = v36(v38, 1, v47);
        v40 = v21;
        if (v39 != 1)
        {
          sub_100007710(v0[18], &qword_10020A9D8);
        }
      }

      else
      {
        sub_1000A229C(v0[18], v50);
        v41 = v21;
      }

      swift_willThrow();

      URL.stopAccessingSecurityScopedResource()();
    }

    else
    {
      v33 = v21;
      v31 = _convertNSErrorToError(_:)();

      swift_willThrow();
      URL.stopAccessingSecurityScopedResource()();
    }
  }

  else
  {
    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[16];
    sub_1000A20DC();
    v31 = swift_allocError();
    (*(v28 + 16))(v32, v30, v29);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  sub_1000A20DC();
  swift_allocError();
  *v42 = v31;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v27 = v0[1];
LABEL_13:

  return v27();
}

void *sub_1000A0DA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_100005804(&qword_10020A9D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = swift_projectBox();
  sub_1000A2300();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [ObjCClassFromMetadata creationRequestForAssetFromImageAtFileURL:v12];

  if (v14)
  {
    v15 = [v14 placeholderForCreatedAsset];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 localIdentifier];

      if (!v17)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = String._bridgeToObjectiveC()();
      }

      v18 = [objc_opt_self() uuidFromLocalIdentifier:v17];

      if (v18)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        swift_beginAccess();
        v22 = a3[2];
        a3[2] = a4;
        a3[3] = v19;
        a3[4] = v21;
        v23 = a4;
        return sub_10002D9E0(v22);
      }
    }

    v25 = type metadata accessor for SystemPhotoLibrary.ImportError();
  }

  else
  {
    v25 = type metadata accessor for SystemPhotoLibrary.ImportError();
  }

  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  swift_beginAccess();
  return sub_1000A234C(v8, v9);
}

uint64_t sub_1000A0FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100006600(a3, v22 - v9, &unk_100206DF0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007710(v10, &unk_100206DF0);
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

      sub_100007710(a3, &unk_100206DF0);

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

  sub_100007710(a3, &unk_100206DF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t type metadata accessor for SystemPhotoLibrary()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t sub_1000A12C4(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  sub_100005804(&unk_100206DF0);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000A13C4, 0, 0);
}

uint64_t sub_1000A13C4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  (*(v3 + 16))(v1, v5, v4);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = sub_1000A0FFC(0, 0, v2, &unk_1001A00D8, v8);
  v0[11] = v9;
  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = sub_100005804(&qword_100208148);
  *v10 = v0;
  v10[1] = sub_1000A1580;

  return Task.value.getter(v0 + 2, v9, &type metadata for SystemPhotoLibrary.ImportResult, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000A1580()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000A1738;
  }

  else
  {
    v2 = sub_1000A16B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A16B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t sub_1000A1738()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000A17A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);

  String.LocalizationValue.init(stringLiteral:)();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  v7 = [v5 mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  v11 = [v5 mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = String._bridgeToObjectiveC()();

  v27 = sub_1000A1C94;
  v28 = v12;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10009FE78;
  v26 = &unk_1001F2708;
  v14 = j___Block_copy(&aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
  j___Block_release(v14);

  [v10 addAction:v16];
  String.LocalizationValue.init(stringLiteral:)();
  v17 = [v5 mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();

  v27 = sub_1000A0670;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10009FE78;
  v26 = &unk_1001F2730;
  v19 = j___Block_copy(&aBlock);

  v20 = [v15 actionWithTitle:v18 style:1 handler:v19];
  j___Block_release(v19);

  [v10 addAction:v20];
  return v10;
}

uint64_t sub_1000A1C5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000A1C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A1CB4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013194;

  return sub_1000A0274(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000A1DA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A1DDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002DD0C;

  return sub_10005FB54(a1, v4);
}

uint64_t sub_1000A1E98()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A1F5C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013194;

  return sub_1000A0700(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000A204C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for SystemPhotoLibrary.ImportError()
{
  result = qword_10020AA60;
  if (!qword_10020AA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A20DC()
{
  result = qword_10020A9E0;
  if (!qword_10020A9E0)
  {
    type metadata accessor for SystemPhotoLibrary.ImportError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A9E0);
  }

  return result;
}

uint64_t sub_1000A2134()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void *sub_1000A21F8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A0DA0(v0 + v2, v5, v6, v7);
}

uint64_t sub_1000A229C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemPhotoLibrary.ImportError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A2300()
{
  result = qword_10020A9E8;
  if (!qword_10020A9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020A9E8);
  }

  return result;
}

uint64_t sub_1000A234C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A9D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A240C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_1000A2480();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000A2480()
{
  result = qword_10020AA70;
  if (!qword_10020AA70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10020AA70);
  }

  return result;
}

uint64_t sub_1000A250C(uint64_t a1, uint64_t a2)
{
  result = sub_1000A2564(a1, a2);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

uint64_t sub_1000A2564(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A25DC()
{
  result = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();
  if (result)
  {
    v1 = result;
    v2 = dispatch thunk of PaperDocumentView.isInCanvasSelectionMode.getter();

    return v2 & 1;
  }

  return result;
}

void sub_1000A2614()
{
  v0 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();
  if (v0)
  {
    v1 = v0;
    dispatch thunk of PaperDocumentView.isInCanvasSelectionMode.setter();
  }
}

uint64_t sub_1000A26B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v15 = a2;
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_10020A098);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v15 - v10);
  v12 = [objc_opt_self() standardUserDefaults];
  sub_100145610(v11);
  sub_100189EE4(&type metadata for Bool, &off_1001F9B10, &v16);

  (*(v9 + 8))(v11, v8);
  v13 = *(v5 + 16);
  v13(v7, v3, a1);
  v13(v15, v7, a1);
  return (*(v5 + 8))(v7, a1);
}

uint64_t sub_1000A28B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v9 = [v2 childViewControllers];
    sub_1000A2A04();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
LABEL_18:
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v11 != i; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v7 = sub_1000A28B8(a1, a2);

      if (v7)
      {

        return v7;
      }
    }

    return 0;
  }

  return v7;
}

unint64_t sub_1000A2A04()
{
  result = qword_10020AAA0;
  if (!qword_10020AAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020AAA0);
  }

  return result;
}

uint64_t sub_1000A2A5C()
{
  sub_100079668();
  j___s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluig();
  return v1;
}

ValueMetadata *type metadata accessor for ZoomPresentationNamespaceKey()
{
  return &type metadata for ZoomPresentationNamespaceKey;
}

{
  return &type metadata for ZoomPresentationNamespaceKey;
}

uint64_t sub_1000A2ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000A2B20();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_1000A2B20()
{
  result = qword_10020AAA8;
  if (!qword_10020AAA8)
  {
    sub_1000059D4(&qword_10020AAB0);
    sub_1000A2BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AAA8);
  }

  return result;
}

unint64_t sub_1000A2BA4()
{
  result = qword_10020AAB8;
  if (!qword_10020AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AAB8);
  }

  return result;
}

uint64_t sub_1000A2BF8(uint64_t a1, uint64_t a2)
{
  v4 = j___s7SwiftUI19_ConditionalContentV7StorageOMa();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
}

uint64_t sub_1000A2CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = j___s7SwiftUI19_ConditionalContentV7StorageOMa();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
}

uint64_t sub_1000A2DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v31 = a5;
  v30 = sub_100005804(&qword_10020AD28);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v25 - v8;
  v29 = sub_100005804(&qword_10020AD30);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v25 - v10;
  v12 = sub_100005804(&qword_10020AD38);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v28 = sub_100005804(&qword_10020AD40);
  __chkstk_darwin(v28);
  v17 = &v25 - v16;
  v36 = a1;
  v37 = a2;
  v18 = sub_100005804(&qword_10020ACD8);
  v19 = sub_100007888(&qword_10020AD48, &qword_10020ACD8);
  if (a4)
  {
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v32 = v18;
    v33 = &type metadata for String;
    v34 = v19;
    v35 = &protocol witness table for String;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v12;
    v33 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v32 = v18;
    v33 = v19;
    swift_getOpaqueTypeConformance2();
    v21 = v30;
    static ToolbarContentBuilder.buildEither<A, B>(second:)();
    (*(v27 + 8))(v9, v21);
  }

  else
  {
    CustomizableToolbarContent.matchedTransitionSource<A>(id:in:)();
    v32 = v18;
    v33 = &type metadata for String;
    v34 = v19;
    v35 = &protocol witness table for String;
    v22 = swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v32 = v12;
    v33 = v22;
    swift_getOpaqueTypeConformance2();
    v32 = v18;
    v33 = v19;
    swift_getOpaqueTypeConformance2();
    v23 = v29;
    static ToolbarContentBuilder.buildEither<A, B>(first:)();
    (*(v26 + 8))(v11, v23);
    (*(v13 + 8))(v15, v12);
  }

  sub_1000AE2F0();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_100007710(v17, &qword_10020AD40);
}

uint64_t sub_1000A3268@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v4 = sub_100005804(&qword_10020AB58);
  v5 = v4[9];
  v6 = sub_100005804(qword_10020AB60);
  (*(*(v6 - 8) + 16))(&a2[v5], a1, v6);
  v7 = sub_1000A670C();
  v9 = v8;
  *a2 = 1;
  type metadata accessor for ToolbarViewModel(0);
  sub_1000AEDB8(&qword_100209618, type metadata accessor for ToolbarViewModel);
  Bindable<A>.init(wrappedValue:)();
  v10 = v4[11];
  *&a2[v10] = swift_getKeyPath();
  sub_100005804(&qword_100207808);
  swift_storeEnumTagMultiPayload();
  v11 = v4[12];
  *&a2[v11] = swift_getKeyPath();
  sub_100005804(&qword_1002099D0);
  swift_storeEnumTagMultiPayload();
  v12 = &a2[v4[13]];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 4) = 0;
  v14 = &a2[v4[14]];
  *v14 = v7;
  v14[1] = v9;
  return result;
}

uint64_t sub_1000A3438(uint64_t a1, void (*a2)(char *))
{
  v12 = a2;
  v3 = sub_100005804(&qword_100208140);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006600(a1, v5, &qword_100208140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007710(v5, &qword_100208140);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12(v9);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1000A3660()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_1000A3730(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100209610);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A37BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100209610);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for InspectorToolbarContentModifier()
{
  result = qword_10020AB18;
  if (!qword_10020AB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A3884()
{
  sub_1000ADE30(319, &unk_10020AB28, type metadata accessor for ToolbarViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

Swift::Int sub_1000A3974(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A39F0()
{
  Hasher.init(_seed:)();
  sub_1000A394C(v2, *v0);
  return Hasher._finalize()();
}

BOOL sub_1000A3A38()
{
  if (sub_1000A3AB0())
  {
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v0 = sub_100119C00();

    return !v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A3AB0()
{
  v0 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005804(&qword_100209678);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100005804(&unk_10020A0D0);
  __chkstk_darwin(v7 - 8);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_100089E4C(&v22 - v13);
  (*(v1 + 104))(v11, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_100006600(v14, v6, &unk_10020A0D0);
  sub_100006600(v11, &v6[v15], &unk_10020A0D0);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_100006600(v6, v23, &unk_10020A0D0);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v6[v15], v0);
      sub_1000AEDB8(&qword_100209680, &type metadata accessor for UserInterfaceSizeClass);
      v19 = v23;
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v18, v0);
      sub_100007710(v11, &unk_10020A0D0);
      sub_100007710(v14, &unk_10020A0D0);
      v20(v19, v0);
      sub_100007710(v6, &unk_10020A0D0);
      return v17 & 1;
    }

    sub_100007710(v11, &unk_10020A0D0);
    sub_100007710(v14, &unk_10020A0D0);
    (*(v1 + 8))(v23, v0);
    goto LABEL_6;
  }

  sub_100007710(v11, &unk_10020A0D0);
  sub_100007710(v14, &unk_10020A0D0);
  if (v16(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_100007710(v6, &qword_100209678);
    v17 = 0;
    return v17 & 1;
  }

  sub_100007710(v6, &unk_10020A0D0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1000A3EFC@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolbarViewModel.FormFillingState();
  Description = v2[-1].Description;
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_10011A188(v5);

  v6 = sub_100115644();
  Description[1](v5, v2);

  *a1 = v6 & 1;
  return result;
}

uint64_t sub_1000A40A0(unsigned __int8 *a1)
{
  v2 = sub_100005804(&qword_1002071C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ToolbarViewModel.FormFillingState();
  __chkstk_darwin(&v5[-1].Description);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v9 = type metadata accessor for ToolbarViewModel.FormFillingState.ActivationSource();
  Description = v9[-1].Description;
  Description[13](v4, 0, v9);
  (Description[7])(v4, 0, 1, v9);
  sub_100115634(v8, v4, v7);
  sub_100119F60(v7);
}

uint64_t sub_1000A42C4@<X0>(unsigned __int8 *a1@<X2>, _BYTE *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  type metadata accessor for DocumentToolbarContainingView();
  if (v4 != 1)
  {
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v8 = sub_10011AD6C();

    if (v8)
    {
      goto LABEL_5;
    }

LABEL_7:
    type metadata accessor for DocumentToolbarContainingView();
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v9 = sub_10011B624();

    v7 = v9 & 1;
    goto LABEL_8;
  }

  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v5 = sub_10011AD6C();

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_5:

  v7 = 0;
LABEL_8:
  *a2 = v7;
  return result;
}

uint64_t sub_1000A4458(char *a1)
{
  v1 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_100115B70(v1);
}

uint64_t sub_1000A4550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v23 = *(v6 + 16);
  v23(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = &protocol witness table for MainActor;
  v12 = *(a1 + 16);
  v21 = *(a1 + 24);
  v13 = v21;
  v22 = v12;
  *(v11 + 4) = v12;
  *(v11 + 5) = v13;
  v20 = *(v6 + 32);
  v20(&v11[v10], &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (v23)(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24, a1);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 2) = v14;
  v16 = v21;
  v17 = v22;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v17;
  *(v15 + 5) = v16;
  v20(&v15[v10], &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  j___s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC();
  return v28;
}

uint64_t sub_1000A472C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v2 = sub_10011AD6C();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1000A482C(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_1001159D0(v1);

  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_10011C408(v1);
}

uint64_t sub_1000A4960()
{
  v1 = type metadata accessor for PresentationKind();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  if (*v0)
  {
    sub_10008A27C(&v12 - v6);
    static PresentationKind.none.getter();
    v8 = static PresentationKind.== infix(_:_:)();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
    if (v8)
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  else if ((sub_1000A3AB0() & 1) != 0 || (sub_100005804(&qword_100209610), Bindable.wrappedValue.getter(), v11 = sub_10011AD6C(), , (v11 & 1) == 0))
  {
    if (sub_1000A3A38())
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1000A4B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = *(a1 + 16);
  sub_1000059D4(&qword_10020AC80);
  v38 = a1;
  v4 = *(a1 + 24);
  v5 = sub_100007888(&qword_10020AC88, &qword_10020AC80);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = v4;
  v52 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = OpaqueTypeMetadata2;
  v49 = OpaqueTypeMetadata2;
  v50 = OpaqueTypeConformance2;
  v7 = swift_getOpaqueTypeMetadata2();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1000059D4(&qword_10020AC90);
  v14 = sub_1000059D4(&qword_10020AC98);
  v15 = sub_1000ADF98();
  v49 = v14;
  v50 = v15;
  v16 = *(swift_getOpaqueTypeConformance2() + 8);
  v45 = v4;
  v46 = v3;
  v49 = v3;
  v50 = v13;
  v41 = v16;
  v42 = v13;
  v51 = v4;
  v52 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v35 - v22;
  v24 = j___s7SwiftUI19_ConditionalContentVMa();
  v39 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v35 - v25;
  if (*v37 == 1)
  {
    sub_1000A511C(v38, v20);
    v49 = v46;
    v50 = v42;
    v51 = v45;
    v52 = v41;
    v27 = swift_getOpaqueTypeConformance2();
    sub_1000A2A58(v20, v17, v27);
    v28 = *(v18 + 8);
    v28(v20, v17);
    sub_1000A2A58(v23, v17, v27);
    v49 = v44;
    v50 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1000A2BF8(v20, v17);
    v28(v20, v17);
    v28(v23, v17);
  }

  else
  {
    sub_1000A533C(v38, v9);
    v49 = v44;
    v50 = OpaqueTypeConformance2;
    v29 = swift_getOpaqueTypeConformance2();
    sub_1000A2A58(v9, v7, v29);
    v30 = *(v36 + 8);
    v30(v9, v7);
    sub_1000A2A58(v12, v7, v29);
    v49 = v46;
    v50 = v42;
    v51 = v45;
    v52 = v41;
    swift_getOpaqueTypeConformance2();
    sub_1000A2CF0(v9, v17, v7);
    v30(v9, v7);
    v30(v12, v7);
  }

  v49 = v46;
  v50 = v42;
  v51 = v45;
  v52 = v41;
  v31 = swift_getOpaqueTypeConformance2();
  v49 = v44;
  v50 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v47 = v31;
  v48 = v32;
  WitnessTable = swift_getWitnessTable();
  sub_1000A2A58(v26, v24, WitnessTable);
  return (*(v39 + 8))(v26, v24);
}

uint64_t sub_1000A511C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = *(a1 + 16);
  v5 = sub_1000059D4(&qword_10020AC90);
  v6 = *(a1 + 24);
  v20 = sub_1000059D4(&qword_10020AC98);
  v21 = sub_1000ADF98();
  v7 = *(swift_getOpaqueTypeConformance2() + 8);
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v18[0] = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v18 - v13;
  v18[4] = v4;
  v18[5] = v6;
  v19 = v2;
  View.toolbar<A>(content:)();
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000A2A58(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v16 = *(v9 + 8);
  v16(v11, OpaqueTypeMetadata2);
  sub_1000A2A58(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v16)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1000A533C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for ToolbarRole();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = sub_1000059D4(&qword_10020AC80);
  v7 = *(a1 + 24);
  v8 = sub_100007888(&qword_10020AC88, &qword_10020AC80);
  v35 = v5;
  v36 = v6;
  v25[1] = v8;
  v25[2] = v6;
  v37 = v7;
  v38 = v8;
  v9 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = v25 - v11;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeMetadata2;
  v36 = OpaqueTypeConformance2;
  v25[3] = &opaque type descriptor for <<opaque return type of View.toolbarRole(_:)>>;
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v25 - v19;
  v32 = v5;
  v33 = v7;
  v34 = v27;
  View.toolbar<A>(id:content:)();
  v21 = v28;
  static ToolbarRole.editor.getter();
  View.toolbarRole(_:)();
  (*(v29 + 8))(v21, v30);
  (*(v26 + 8))(v12, OpaqueTypeMetadata2);
  v35 = OpaqueTypeMetadata2;
  v36 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  sub_1000A2A58(v17, v14, v22);
  v23 = *(v15 + 8);
  v23(v17, v14);
  sub_1000A2A58(v20, v14, v22);
  return (v23)(v20, v14);
}

uint64_t sub_1000A56E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v21 = a3;
  v3 = sub_100005804(&qword_10020ACB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - v5;
  v7 = sub_100005804(&qword_10020ACA8);
  v19[0] = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  v20 = sub_100005804(&qword_10020AC98);
  __chkstk_darwin(v20);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  type metadata accessor for MainActor();
  v19[3] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for DocumentToolbarContainingView();
  if (sub_1000A4960() == 4)
  {
    (*(v4 + 56))(v11, 1, 1, v3);
    v16 = sub_100007888(&qword_10020ACB0, &qword_10020ACA8);
    v22 = v7;
    v23 = v16;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v11, &qword_10020AC98);
  }

  else
  {
    sub_1000A5B20(v15, v9);
    v17 = sub_100007888(&qword_10020ACB0, &qword_10020ACA8);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v11, v6, v3);
    (*(v4 + 56))(v11, 0, 1, v3);
    v22 = v7;
    v23 = v17;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v11, &qword_10020AC98);
    (*(v4 + 8))(v6, v3);
    (*(v19[0] + 8))(v9, v7);
  }

  sub_1000ADF98();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  sub_100007710(v14, &qword_10020AC98);
}

uint64_t sub_1000A5B20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v87 = a2;
  v86 = sub_100005804(&qword_10020ACC0);
  __chkstk_darwin(v86);
  v85 = &v67 - v3;
  v89 = a1;
  v81 = *(a1 - 8);
  __chkstk_darwin(v4);
  v78 = v5;
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&qword_10020ACC8);
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v67 - v7;
  v76 = sub_100005804(&qword_10020ACD0);
  __chkstk_darwin(v76);
  v75 = &v67 - v8;
  v69 = j___s7SwiftUI17EnvironmentValuesVMa();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100005804(&qword_10020ACD8);
  __chkstk_darwin(v73);
  v11 = &v67 - v10;
  v80 = sub_100005804(&qword_10020ACE0);
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v88 = &v67 - v12;
  v13 = sub_100005804(&qword_10020ACE8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v67 - v15;
  v17 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for SpacerSizing();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for ToolbarSpacer();
  v72 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005804(&qword_10020ACF0);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v91 = v27;
  v74 = &v67 - v28;
  if (v27 == 3)
  {
    static SpacerSizing.flexible.getter();
    static ToolbarItemPlacement.bottomBar.getter();
    ToolbarSpacer.init(_:placement:)();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v14 + 16))(v24, v16, v13);
    (*(v14 + 56))(v24, 0, 1, v13);
    v92 = v19;
    v93 = &protocol witness table for ToolbarSpacer;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v24, &qword_10020ACF0);
    (*(v14 + 8))(v16, v13);
    (*(v72 + 8))(v21, v19);
  }

  else
  {
    (*(v14 + 56))(v24, 1, 1, v13, v26);
    v92 = v19;
    v93 = &protocol witness table for ToolbarSpacer;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v24, &qword_10020ACF0);
  }

  v72 = type metadata accessor for PreviewAction(0);
  v71 = sub_10015D524();
  v30 = v89;
  v29 = v90;
  v70 = sub_1000A4550(v89, &unk_1001F2B18, &unk_1001F2B40, sub_1000AE45C, sub_1000AE474);
  v32 = v31;
  v34 = v33;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v35 = sub_1001206C0();

  v36 = *(v73 + 40);
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_1001193FC(&v11[v36]);

  v37 = type metadata accessor for UTType();
  (*(*(v37 - 8) + 56))(&v11[v36], 0, 1, v37);
  *v11 = v71;
  *(v11 + 4) = v91;
  *(v11 + 2) = v70;
  *(v11 + 3) = v32;
  v11[32] = v34 & 1;
  v11[33] = v35 & 1;
  v38 = v29 + *(v30 + 52);
  v39 = *v38;
  v40 = *(v38 + 8);
  if (*(v38 + 9) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
    os_log(_:dso:log:_:_:)();

    v42 = v67;
    j___s7SwiftUI17EnvironmentValuesVACycfC();
    swift_getAtKeyPath();
    sub_1000AE098(v39, v40, 0);
    (*(v68 + 8))(v42, v69);
    v39 = v92;
    LOBYTE(v40) = v93;
  }

  sub_1000A2DE8(0x6F74636570736E69, 0xE900000000000072, v39, v40 & 1, v88);
  sub_100007710(v11, &qword_10020ACD8);
  v73 = sub_10015D7A4();
  v44 = v89;
  v43 = v90;
  v45 = *(v89 + 16);
  v46 = *(v89 + 24);
  sub_1000A9818(v90, v45, v46, v75);
  sub_100007888(&qword_10020ACF8, &qword_10020ACD0);
  v76 = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  v47 = sub_10015D7F4();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v48 = sub_100120A08();

  v49 = v81;
  v50 = v79;
  (*(v81 + 16))(v79, v43, v44);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v45;
  *(v52 + 24) = v46;
  (*(v49 + 32))(v52 + v51, v50, v44);
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v53 = sub_100120A08();

  if (v48)
  {
    v54 = 0x10000;
  }

  else
  {
    v54 = 0;
  }

  v55 = v91;
  v56 = v82;
  sub_1000AA168(v53 & 1, v47, v54 & 0xFFFF0000 | v91, sub_1000AFE40, v52, v82);

  v57 = v85;
  v58 = v86[12];
  v59 = v85 + v86[16];
  v90 = v86[20];
  v60 = v74;
  sub_100006600(v74, v85, &qword_10020ACF0);
  v61 = v77;
  v62 = v88;
  v63 = v80;
  (*(v77 + 16))(v57 + v58, v88, v80);
  *v59 = v73;
  *(v59 + 8) = v55;
  *(v59 + 16) = v76;
  v65 = v83;
  v64 = v84;
  (*(v83 + 16))(v57 + v90, v56, v84);
  TupleToolbarContent.init(_:)();
  (*(v65 + 8))(v56, v64);
  (*(v61 + 8))(v62, v63);
  return sub_100007710(v60, &qword_10020ACF0);
}

unint64_t sub_1000A670C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100005804(&qword_10020A098);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100145670(v7);
  sub_100189EE4(&type metadata for Bool, &off_1001F9B10, &v12);

  (*(v5 + 8))(v7, v4);
  if (v12 == 2 || (v12 & 1) == 0)
  {
    return 0xD000000000000018;
  }

  UUID.init()();
  v9 = UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  return v9;
}

uint64_t sub_1000A6928@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a2;
  v47 = a3;
  v46 = sub_100005804(&qword_10020AD58);
  __chkstk_darwin(v46);
  v45 = &v35 - v3;
  v44 = sub_100005804(&qword_10020ACB8);
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v37 = &v35 - v5;
  v6 = sub_100005804(&qword_10020ACA8);
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_100005804(&qword_10020AC98);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_100005804(&qword_10020AD60);
  v42 = *(v15 - 8);
  v43 = v15;
  __chkstk_darwin(v15);
  v48 = &v35 - v16;
  v17 = sub_100005804(&qword_10020AD68);
  v41 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  type metadata accessor for MainActor();
  v40 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for DocumentToolbarContainingView();
  sub_1000A6F94(v20, v19);
  sub_1000A89AC(v20, v48);
  if (sub_1000A4960() == 4)
  {
    (*(v4 + 56))(v11, 1, 1, v44);
    v21 = sub_100007888(&qword_10020ACB0, &qword_10020ACA8);
    v49 = v6;
    v50 = v21;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v11, &qword_10020AC98);
  }

  else
  {
    sub_1000A5B20(v20, v8);
    v22 = sub_100007888(&qword_10020ACB0, &qword_10020ACA8);
    v23 = v37;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v24 = v44;
    (*(v4 + 16))(v11, v23, v44);
    (*(v4 + 56))(v11, 0, 1, v24);
    v49 = v6;
    v50 = v22;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v11, &qword_10020AC98);
    (*(v4 + 8))(v23, v24);
    (*(v36 + 8))(v8, v6);
  }

  v25 = v45;
  v26 = *(v46 + 48);
  v27 = *(v46 + 64);
  v28 = v41;
  v29 = v19;
  (*(v41 + 16))(v45, v19, v17);
  v31 = v42;
  v30 = v43;
  v32 = *(v42 + 16);
  v44 = v17;
  v33 = v48;
  v32(&v25[v26], v48, v43);
  sub_100006600(v14, &v25[v27], &qword_10020AC98);
  TupleToolbarContent.init(_:)();
  sub_100007710(v14, &qword_10020AC98);
  (*(v31 + 8))(v33, v30);
  (*(v28 + 8))(v29, v44);
}

uint64_t sub_1000A6F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v151 = sub_100005804(&qword_10020ADD0);
  __chkstk_darwin(v151);
  v150 = &v130 - v4;
  v146 = *(a1 - 8);
  __chkstk_darwin(v5);
  v166 = v6;
  v145 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100005804(&qword_10020ADD8);
  __chkstk_darwin(v143);
  v142 = &v130 - v7;
  v141 = sub_100005804(&qword_10020ADE0);
  __chkstk_darwin(v141);
  v140 = (&v130 - v8);
  v149 = sub_100005804(&qword_10020ADE8);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v168 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v177 = &v130 - v11;
  v139 = sub_100005804(&qword_10020AD28);
  v136 = *(v139 - 8);
  __chkstk_darwin(v139);
  v131 = &v130 - v12;
  v13 = sub_100005804(&qword_10020ADF0);
  __chkstk_darwin(v13 - 8);
  v137 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v176 = &v130 - v16;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v165 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v171 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  v162 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for ToolbarGroup();
  __chkstk_darwin(v170);
  v144 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v138 = &v130 - v24;
  __chkstk_darwin(v25);
  v175 = &v130 - v26;
  v167 = sub_100005804(&qword_10020ADF8);
  v147 = *(v167 - 8);
  __chkstk_darwin(v167);
  v174 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v173 = &v130 - v29;
  v30 = sub_100005804(&qword_100209610);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v130 - v32;
  v34 = sub_100005804(&qword_10020ACD8);
  __chkstk_darwin(v34);
  v130 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v161 = &v130 - v37;
  __chkstk_darwin(v38);
  v40 = &v130 - v39;
  __chkstk_darwin(v41);
  v172 = &v130 - v42;
  v43 = sub_1000A3A38();
  v44 = 3;
  if (!v43)
  {
    if (sub_1000A3AB0())
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }
  }

  LODWORD(v160) = v44;
  v178 = type metadata accessor for PreviewAction(0);
  v135 = sub_10015D348();
  sub_100005804(&qword_100209610);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v158 = v33;
  Bindable<A>.subscript.getter();

  v45 = *(v31 + 8);
  v154 = (v31 + 8);
  v153 = v45;
  v45(v33, v30);
  v155 = v30;
  v134 = v180;
  v133 = v181;
  v132 = v182;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v46 = sub_10011E2BC();

  v179 = v2;
  v47 = *(v34 + 40);
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v48 = v34;
  v159 = v34;
  v49 = v172;
  sub_1001193FC(v172 + v47);

  v50 = type metadata accessor for UTType();
  v51 = *(v50 - 8);
  v169 = *(v51 + 56);
  v52 = v51 + 56;
  v157 = v50;
  v169(v49 + v47, 0, 1, v50);
  v156 = v52;
  *v49 = v135;
  *(v49 + 8) = v160;
  v53 = v133;
  *(v49 + 16) = v134;
  *(v49 + 24) = v53;
  *(v49 + 32) = v132;
  *(v49 + 33) = v46 & 1;
  v160 = sub_10015D484();
  if (sub_1000A3A38())
  {
    v54 = 3;
  }

  else
  {
    v54 = 1;
  }

  LODWORD(v135) = v54;
  v134 = sub_1000A4550(a1, &unk_1001F2F00, &unk_1001F2F28, sub_1000AF7B4, sub_1000AFB0C);
  v133 = v55;
  v132 = v56;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v57 = sub_10011E460();

  v58 = *(v48 + 40);
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_1001193FC(&v40[v58]);

  v169(&v40[v58], 0, 1, v50);
  *v40 = v160;
  *(v40 + 4) = v135;
  v59 = v133;
  *(v40 + 2) = v134;
  *(v40 + 3) = v59;
  v40[32] = v132 & 1;
  v40[33] = v57 & 1;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v60 = sub_10011E460();

  sub_1000AA4E8(v60 & 1);
  sub_100007710(v40, &qword_10020ACD8);
  v160 = sub_10015D4D4();
  if (sub_1000A3A38())
  {
    v61 = 3;
  }

  else
  {
    v61 = 1;
  }

  LODWORD(v135) = v61;
  sub_100005804(&qword_100209610);
  v62 = v158;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v63 = v155;
  Bindable<A>.subscript.getter();

  v153(v62, v63);
  v65 = v180;
  v64 = v181;
  v66 = v182;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v67 = sub_10011E604();

  v68 = *(v159 + 40);
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v69 = v161;
  sub_1001193FC(v161 + v68);

  v169(v69 + v68, 0, 1, v157);
  *v69 = v160;
  *(v69 + 8) = v135;
  *(v69 + 16) = v65;
  *(v69 + 24) = v64;
  *(v69 + 32) = v66;
  *(v69 + 33) = v67 & 1;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v70 = sub_10011E604();

  sub_1000AA4E8(v70 & 1);
  sub_100007710(v69, &qword_10020ACD8);
  String.LocalizationValue.init(stringLiteral:)();
  v71 = *(v171 + 104);
  LODWORD(v135) = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v171 += 104;
  v134 = v71;
  v71(v163);
  static Locale.current.getter();
  v72 = v175;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *v72 = 0x6465722D6F646E75;
  *(v72 + 8) = 0xEF70756F72672D6FLL;
  *(v72 + 16) = 256;
  v73 = *(a1 + 24);
  v161 = *(a1 + 16);
  v160 = v73;
  sub_1000AAED4(v179, v161, v73, &v180);
  sub_100005804(&qword_10020AE00);
  sub_100007888(&qword_10020AE08, &qword_10020AE00);
  *(v72 + 24) = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v74 = sub_10010EFE8();

  if (v74)
  {
    v133 = sub_10015D5C4();
    sub_100005804(&qword_100209610);
    v75 = v158;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v76 = v155;
    Bindable<A>.subscript.getter();

    v153(v75, v76);
    v78 = v180;
    v77 = v181;
    LOBYTE(v75) = v182;
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v79 = sub_100120D50();

    v80 = v159;
    v81 = *(v159 + 40);
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v82 = v130;
    sub_1001193FC(&v130[v81]);

    v169(v82 + v81, 0, 1, v157);
    *v82 = v133;
    *(v82 + 8) = 256;
    *(v82 + 16) = v78;
    *(v82 + 24) = v77;
    *(v82 + 32) = v75;
    *(v82 + 33) = v79 & 1;
    v83 = sub_100007888(&qword_10020AD48, &qword_10020ACD8);
    v84 = v131;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v85 = v136;
    v86 = v137;
    v87 = v139;
    (*(v136 + 16))(v137, v84, v139);
    (*(v85 + 56))(v86, 0, 1, v87);
    v180 = v80;
    v181 = v83;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v86, &qword_10020ADF0);
    (*(v85 + 8))(v84, v87);
    sub_100007710(v82, &qword_10020ACD8);
  }

  else
  {
    v88 = v137;
    (*(v136 + 56))(v137, 1, 1, v139);
    v89 = sub_100007888(&qword_10020AD48, &qword_10020ACD8);
    v180 = v159;
    v181 = v89;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v88, &qword_10020ADF0);
  }

  v90 = v138;
  LocalizedStringResource.init(stringLiteral:)();
  *v90 = 0xD000000000000015;
  *(v90 + 8) = 0x80000001001B2640;
  *(v90 + 16) = 256;
  v91 = v161;
  v92 = v160;
  sub_1000AB160(v140);
  sub_100007888(&qword_10020AE10, &qword_10020ADE0);
  *(v90 + 24) = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v93 = sub_100120EF4();

  sub_1000AA828(v93 & 1);
  sub_1000AE4FC(v90);
  v169 = sub_10015D844();
  sub_1000AB5C8(v179, v91, v92, v142);
  v94 = sub_1000059D4(&qword_1002060E0);
  v95 = sub_1000059D4(&qword_10020AE18);
  v96 = v179;
  v97 = sub_100007888(&qword_1002060F0, &qword_1002060E0);
  v98 = sub_1000AE844();
  v180 = v94;
  v181 = v95;
  v182 = v97;
  v183 = v98;
  swift_getOpaqueTypeConformance2();
  v159 = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  v158 = sub_10015C868();
  sub_100005804(&qword_100209610);
  v99 = v96;
  Bindable.wrappedValue.getter();
  LODWORD(v157) = sub_10011E7A8();

  v100 = v146;
  v154 = *(v146 + 16);
  v101 = v145;
  v154(v145, v99, a1);
  v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v103 = swift_allocObject();
  v104 = v161;
  v105 = v160;
  *(v103 + 16) = v161;
  *(v103 + 24) = v105;
  v153 = *(v100 + 32);
  v156 = v103;
  (v153)(v103 + v102, v101, a1);
  v178 = sub_10015C990();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  LODWORD(v155) = sub_10011E94C();

  v154(v101, v99, a1);
  v106 = swift_allocObject();
  *(v106 + 16) = v104;
  *(v106 + 24) = v105;
  v166 = v106;
  (v153)(v106 + v102, v101, a1);
  String.LocalizationValue.init(stringLiteral:)();
  v134(v163, v135, v164);
  static Locale.current.getter();
  v107 = v144;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *v107 = 0x6F72672D70696C66;
  *(v107 + 8) = 0xEA00000000007075;
  *(v107 + 16) = 256;
  v108 = 1;
  sub_1000AC0A8(v99, v104, v105, &v180);
  sub_100005804(&qword_10020AE30);
  sub_100007888(&qword_10020AE38, &qword_10020AE30);
  *(v107 + 24) = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  LOBYTE(v104) = sub_10011F4C8();

  if ((v104 & 1) == 0)
  {
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v108 = sub_10011F66C();
  }

  sub_1000AA828(v108 & 1);
  sub_1000AE4FC(v107);
  v109 = v151[12];
  v110 = v151[16];
  v165 = v151[20];
  v111 = v151[28];
  v170 = v151[24];
  v171 = v111;
  v112 = v150;
  v113 = v150 + v151[32];
  v114 = v150 + v151[36];
  v115 = v150 + v151[40];
  v179 = v151[44];
  sub_100006600(v172, v150, &qword_10020ACD8);
  v116 = v147;
  v117 = *(v147 + 16);
  v118 = v112 + v109;
  v119 = v167;
  v117(v118, v173, v167);
  v117(v112 + v110, v174, v119);
  sub_1000AE498(v175, &v165[v112]);
  sub_100006600(v176, v112 + v170, &qword_10020ADF0);
  v120 = v148;
  v121 = *(v148 + 16);
  v122 = v149;
  v121(v112 + v171, v177, v149);
  *v113 = v169;
  *(v113 + 8) = 256;
  *(v113 + 16) = v159;
  *v114 = v158;
  *(v114 + 8) = 257;
  *(v114 + 10) = v157 & 1;
  v123 = v156;
  *(v114 + 16) = sub_1000AFE40;
  *(v114 + 24) = v123;
  *v115 = v178;
  *(v115 + 8) = 256;
  *(v115 + 10) = v155 & 1;
  v124 = v166;
  *(v115 + 16) = sub_1000AFE40;
  *(v115 + 24) = v124;
  v125 = v168;
  v121(v112 + v179, v168, v122);
  TupleToolbarContent.init(_:)();
  v126 = *(v120 + 8);
  v126(v125, v122);
  v126(v177, v122);
  sub_100007710(v176, &qword_10020ADF0);
  sub_1000AE4FC(v175);
  v127 = *(v116 + 8);
  v128 = v167;
  v127(v174, v167);
  v127(v173, v128);
  return sub_100007710(v172, &qword_10020ACD8);
}

uint64_t sub_1000A89AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v103 = sub_100005804(&qword_10020AD70);
  __chkstk_darwin(v103);
  v102 = (&v77 - v5);
  v98 = sub_100005804(&qword_10020AD78);
  __chkstk_darwin(v98);
  v97 = &v77 - v6;
  v101 = sub_100005804(&qword_10020AD80);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v77 - v7;
  v82 = type metadata accessor for URL();
  v78 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v116 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v109 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ToolbarGroup();
  __chkstk_darwin(v108);
  v113 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v112 = &v77 - v17;
  v18 = *(a1 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  v115 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for PreviewAction(0);
  v96 = sub_10015D664();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v21 = sub_10011F324();

  if (v21)
  {
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v95 = sub_10011C97C();
  }

  else
  {
    v95 = 0;
  }

  v22 = *(v18 + 16);
  v114 = v18 + 16;
  v105 = v22;
  v23 = v115;
  v22(v115, v3, a1);
  v24 = *(v18 + 80);
  v106 = ((v24 + 32) & ~v24) + v19;
  v25 = (v24 + 32) & ~v24;
  v81 = v25;
  v107 = v24;
  v26 = swift_allocObject();
  v28 = *(a1 + 16);
  v118 = *(a1 + 24);
  v27 = v118;
  v119 = v3;
  *(v26 + 16) = v28;
  *(v26 + 24) = v27;
  v80 = *(v18 + 32);
  v94 = v26;
  v80(v26 + v25, v23, a1);
  String.LocalizationValue.init(stringLiteral:)();
  v29 = *(v116 + 104);
  v84 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v116 += 104;
  v83 = v29;
  v29(v110);
  static Locale.current.getter();
  v30 = v112;
  v93 = v11;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *v30 = 0xD000000000000011;
  *(v30 + 8) = 0x80000001001B2600;
  *(v30 + 16) = 0;
  v31 = v118;
  sub_1000AC334(v119, v28, v118, &v120);
  sub_100005804(&qword_10020AD88);
  sub_100007888(&qword_10020AD90, &qword_10020AD88);
  *(v30 + 24) = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  v91 = sub_10015C4E4();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v90 = sub_10011EE38();

  v32 = v115;
  v33 = v105;
  v105(v115, v119, a1);
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  *(v34 + 24) = v31;
  v89 = v34;
  v35 = v81;
  v36 = v80;
  v80(v34 + v81, v32, a1);
  v88 = sub_10015C610();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v87 = sub_10011EFDC();

  v33(v32, v119, a1);
  v37 = swift_allocObject();
  v92 = v28;
  *(v37 + 16) = v28;
  v38 = v119;
  *(v37 + 24) = v118;
  v86 = v37;
  v79 = v18 + 32;
  v39 = v36;
  v36(v37 + v35, v32, a1);
  v85 = sub_10015D704();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  LOBYTE(v33) = sub_10012051C();

  v40 = 0;
  if (v33)
  {
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    v41 = sub_1001156B0();

    v42 = v77;
    sub_1001830A4();

    v40 = sub_10015F9E8();
    (*(v78 + 8))(v42, v82);
  }

  LODWORD(v82) = v40;
  v43 = v115;
  v105(v115, v38, a1);
  v44 = swift_allocObject();
  v114 = v44;
  v45 = v38;
  v46 = v92;
  v47 = v118;
  *(v44 + 16) = v92;
  *(v44 + 24) = v47;
  v39(v44 + v35, v43, a1);
  String.LocalizationValue.init(stringLiteral:)();
  v83(v110, v84, v111);
  static Locale.current.getter();
  v48 = v113;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  *v48 = 0xD00000000000001ELL;
  *(v48 + 8) = 0x80000001001B2620;
  *(v48 + 16) = 0;
  sub_1000AC5C0(v45, v46, v47, &v120);
  sub_100005804(&qword_10020AD98);
  sub_100007888(&qword_10020ADA0, &qword_10020AD98);
  *(v48 + 24) = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  v49 = sub_10015CF84();
  sub_1000AC84C(v45, v46, v47, v97);
  v50 = sub_1000059D4(&qword_100206110);
  v51 = sub_1000059D4(&qword_100206118);
  v52 = sub_100007888(&qword_100206120, &qword_100206110);
  v53 = sub_1000059D4(&qword_100206128);
  v54 = sub_100005AD8();
  v120 = v53;
  v121 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = v50;
  v121 = v51;
  v122 = v52;
  v123 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v56 = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v57 = sub_10011FEA0();

  v58 = v57 & 1;
  v59 = v99;
  sub_1000AAB58(v58, v49, 256, v56, v99);

  v117 = sub_10015D754();
  sub_1000AD250(v45, v46, v118, &v120);
  sub_100005804(&qword_1002060E0);
  sub_100007888(&qword_1002060F0, &qword_1002060E0);
  v119 = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  v60 = v103[12];
  v61 = v102;
  v62 = v102 + v103[16];
  v63 = v102 + v103[20];
  v64 = v102 + v103[24];
  v65 = v103[28];
  v66 = v103[32];
  v67 = v102 + v103[36];
  *v102 = v96;
  *(v61 + 4) = 256;
  *(v61 + 10) = v95 & 1;
  v68 = v94;
  v61[2] = sub_1000AFE40;
  v61[3] = v68;
  v69 = v112;
  sub_1000AE498(v112, v61 + v60);
  *v62 = v91;
  *(v62 + 4) = 0;
  v62[10] = v90 & 1;
  v70 = v89;
  *(v62 + 2) = sub_1000AFE40;
  *(v62 + 3) = v70;
  *v63 = v88;
  *(v63 + 4) = 0;
  v63[10] = v87 & 1;
  v71 = v86;
  *(v63 + 2) = sub_1000AFE40;
  *(v63 + 3) = v71;
  *v64 = v85;
  *(v64 + 4) = 0;
  v64[10] = v82 & 1;
  v72 = v114;
  *(v64 + 2) = sub_1000AFE40;
  *(v64 + 3) = v72;
  v73 = v113;
  sub_1000AE498(v113, v61 + v65);
  v74 = v100;
  v75 = v101;
  (*(v100 + 16))(v61 + v66, v59, v101);
  *v67 = v117;
  *(v67 + 4) = 0;
  *(v67 + 2) = v119;
  TupleToolbarContent.init(_:)();
  (*(v74 + 8))(v59, v75);
  sub_1000AE4FC(v73);
  return sub_1000AE4FC(v69);
}

uint64_t sub_1000A9818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v50 = a4;
  v6 = type metadata accessor for PopoverAttachmentAnchor();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v44 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a2;
  v9 = type metadata accessor for DocumentToolbarContainingView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  type metadata accessor for PreviewAction(0);
  v40 = sub_10015D7A4();
  sub_100005804(&qword_100209610);
  v53 = a1;
  Bindable.wrappedValue.getter();
  v38 = sub_100120864();

  v54 = *(v10 + 16);
  v54(v13, a1, v9);
  v48 = v11;
  v49 = v10 + 16;
  v14 = v10;
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v46 = *(v10 + 80);
  v16 = swift_allocObject();
  v37 = v16;
  v17 = v8;
  v47 = v8;
  v18 = v52;
  *(v16 + 16) = v8;
  *(v16 + 24) = v18;
  v19 = *(v14 + 32);
  v51 = v14 + 32;
  v19(v16 + v15, v13, v9);
  v45 = v19;
  v20 = v53;
  v43 = sub_1000A4550(v9, &unk_1001F2AC8, &unk_1001F2AF0, sub_1000AE2C0, sub_1000AE2D8);
  v42 = v21;
  v41 = v22;
  v39 = v9;
  v54(v13, v20, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = v18;
  v24 = v13;
  v19(v23 + v15, v13, v9);
  v25 = static Anchor.Source<A>.bounds.getter();
  v26 = v44;
  *v44 = v25;
  (*(v55 + 104))(v26, enum case for PopoverAttachmentAnchor.rect(_:), v56);
  v59 = v40;
  v60 = v38 & 1;
  v61 = sub_1000AFE40;
  v62 = v37;
  sub_100005804(&qword_1002060E0);
  sub_100005804(&qword_1002060E8);
  sub_100007888(&qword_1002060F0, &qword_1002060E0);
  v27 = sub_1000059D4(&qword_1002060F8);
  v28 = sub_100005A1C();
  v57 = v27;
  v58 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v50;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v55 + 8))(v26, v56);

  v30 = [objc_opt_self() defaultCenter];
  v31 = sub_100005804(&qword_10020ACD0);
  NSNotificationCenter.publisher(for:object:)();

  v32 = v39;
  v54(v24, v53, v39);
  v33 = swift_allocObject();
  v34 = v52;
  *(v33 + 16) = v47;
  *(v33 + 24) = v34;
  result = v45(v33 + v15, v24, v32);
  v36 = (v29 + *(v31 + 56));
  *v36 = sub_1000AE234;
  v36[1] = v33;
  return result;
}

uint64_t sub_1000A9DAC@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v13 = type metadata accessor for PresentationAdaptation();
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005804(&qword_1002060F8);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_10011BB10(v6);

  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v7 = sub_1001196F8();

  *&v6[*(type metadata accessor for DocumentShareSheet(0) + 20)] = v7;
  v8 = static SafeAreaRegions.all.getter();
  v9 = static Edge.Set.all.getter();
  v10 = &v6[*(v4 + 36)];
  *v10 = v8;
  v10[8] = v9;
  static PresentationAdaptation.popover.getter();
  sub_100005A1C();
  View.presentationCompactAdaptation(_:)();
  (*(v1 + 8))(v3, v13);
  sub_100007710(v6, &qword_1002060F8);
}

uint64_t sub_1000AA034()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = type metadata accessor for Radar161260100();
  if (sub_100187A14(v0, &off_1001F8550))
  {
  }

  else
  {
    type metadata accessor for DocumentToolbarContainingView();
    sub_100005804(&qword_100209610);
    Bindable.wrappedValue.getter();
    sub_100115B70(0);
  }
}

uint64_t sub_1000AA168@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[1] = a6;
  v11 = sub_100005804(&qword_10020AD00);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - v13;
  v26[0] = sub_100005804(&qword_10020AD08);
  __chkstk_darwin(v26[0]);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v26 - v19;
  if (a1)
  {
    v27 = a2;
    LOWORD(v28) = a3;
    BYTE2(v28) = BYTE2(a3) & 1;
    v29 = a4;
    v30 = a5;

    v21 = sub_100005804(&qword_10020AD10);
    v22 = sub_100007888(&qword_10020AD18, &qword_10020AD10);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v12 + 16))(v16, v14, v11);
    (*(v12 + 56))(v16, 0, 1, v11);
    v26[2] = v21;
    v26[3] = v22;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v16, &qword_10020AD08);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v12 + 56))(v16, 1, 1, v11, v18);
    v23 = sub_1000059D4(&qword_10020AD10);
    v24 = sub_100007888(&qword_10020AD18, &qword_10020AD10);
    v27 = v23;
    v28 = v24;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v16, &qword_10020AD08);
  }

  sub_1000AE0A8();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_100007710(v20, &qword_10020AD08);
}

uint64_t sub_1000AA4E8(char a1)
{
  v2 = sub_100005804(&qword_10020AD28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = sub_100005804(&qword_10020ADF0);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - v11;
  if (a1)
  {
    v13 = sub_100005804(&qword_10020ACD8);
    v14 = sub_100007888(&qword_10020AD48, &qword_10020ACD8);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v3 + 16))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    v18 = v13;
    v19 = v14;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v8, &qword_10020ADF0);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2, v10);
    v15 = sub_1000059D4(&qword_10020ACD8);
    v16 = sub_100007888(&qword_10020AD48, &qword_10020ACD8);
    v18 = v15;
    v19 = v16;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v8, &qword_10020ADF0);
  }

  sub_1000AF6BC();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_100007710(v12, &qword_10020ADF0);
}

uint64_t sub_1000AA828(char a1)
{
  v2 = sub_100005804(&qword_10020AE48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = sub_100005804(&qword_10020AE50);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - v11;
  if (a1)
  {
    v13 = type metadata accessor for ToolbarGroup();
    v14 = sub_1000AEDB8(&qword_10020AE58, type metadata accessor for ToolbarGroup);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v3 + 16))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    v18 = v13;
    v19 = v14;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v8, &qword_10020AE50);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2, v10);
    v15 = type metadata accessor for ToolbarGroup();
    v16 = sub_1000AEDB8(&qword_10020AE58, type metadata accessor for ToolbarGroup);
    v18 = v15;
    v19 = v16;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v8, &qword_10020AE50);
  }

  sub_1000AEE00();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_100007710(v12, &qword_10020AE50);
}

uint64_t sub_1000AAB58@<X0>(char a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[2] = a5;
  v9 = sub_100005804(&qword_10020ADA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_100005804(&qword_10020ADB0);
  __chkstk_darwin(v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = v26 - v18;
  if (a1)
  {
    v27 = a2;
    LOWORD(v28) = a3;
    v29 = a4;

    v20 = sub_100005804(&qword_10020ADB8);
    v26[1] = a2;
    v21 = v20;
    v22 = sub_100007888(&qword_10020ADC0, &qword_10020ADB8);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v10 + 16))(v15, v12, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
    v26[3] = v21;
    v26[4] = v22;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v15, &qword_10020ADB0);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v10 + 56))(v15, 1, 1, v9, v17);
    v23 = sub_1000059D4(&qword_10020ADB8);
    v24 = sub_100007888(&qword_10020ADC0, &qword_10020ADB8);
    v27 = v23;
    v28 = v24;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100007710(v15, &qword_10020ADB0);
  }

  sub_1000AE558();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_100007710(v19, &qword_10020ADB0);
}

uint64_t sub_1000AAED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for DocumentToolbarContainingView();
  v7 = *(v6 - 8);
  v23 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  type metadata accessor for PreviewAction(0);
  v27 = sub_10015D1CC();
  sub_100005804(&qword_100209610);
  v21 = a1;
  Bindable.wrappedValue.getter();
  v26 = sub_10011F810();

  v25 = *(v7 + 16);
  v25(v9, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = v29;
  *(v11 + 16) = v28;
  *(v11 + 24) = v12;
  v22 = *(v7 + 32);
  v22(v11 + v10, v9, v6);
  v24 = sub_10015D2F8();
  sub_100005804(&qword_100209610);
  v13 = v21;
  Bindable.wrappedValue.getter();
  v20 = sub_10011F9B4();

  v25(v9, v13, v6);
  v14 = swift_allocObject();
  v15 = v29;
  *(v14 + 16) = v28;
  *(v14 + 24) = v15;
  v22(v14 + v10, v9, v6);
  v16 = v26 & 1;
  v17 = v20 & 1;
  *a4 = v27;
  *(a4 + 8) = v16;
  *(a4 + 16) = sub_1000AFE40;
  *(a4 + 24) = v11;
  *(a4 + 32) = v24;
  *(a4 + 40) = v17;
  *(a4 + 48) = sub_1000AF6B8;
  *(a4 + 56) = v14;
}

uint64_t sub_1000AB160@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_100005804(&qword_10020A0C0);
  v32 = *(v1 - 8);
  v31 = *(v32 + 64);
  __chkstk_darwin(v1 - 8);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = &v27 - v4;
  v5 = sub_100005804(&qword_100209610);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  type metadata accessor for PreviewAction(0);
  v34 = sub_10015D614();
  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v6 + 8))(v8, v5);
  v10 = v39;
  v9 = v40;
  v28 = v41;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v29 = sub_100120EF4();

  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v11 = v33;
  sub_1001193FC(v33);

  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = v35;
  *v35 = v34;
  v14 = v13 + *(sub_100005804(&qword_10020ADE0) + 36);
  v15 = v11;
  sub_100006600(v11, v14, &qword_10020A0C0);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v10;
  *(v17 + 40) = v9;
  LOBYTE(v11) = v28;
  *(v17 + 48) = v28;
  v18 = v15;
  v19 = v30;
  sub_100006600(v18, v30, &qword_10020A0C0);

  v20 = static MainActor.shared.getter();
  v21 = (*(v32 + 80) + 64) & ~*(v32 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = &protocol witness table for MainActor;
  *(v22 + 32) = v10;
  *(v22 + 40) = v9;
  *(v22 + 48) = v11;
  *(v22 + 56) = v34;
  sub_100023CD8(v19, v22 + v21, &qword_10020A0C0);
  j___s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC();

  result = sub_100007710(v33, &qword_10020A0C0);
  v24 = v37;
  v25 = v38;
  v26 = v35;
  v35[1] = v36;
  v26[2] = v24;
  *(v26 + 24) = v25;
  *(v26 + 25) = v29 & 1;
  return result;
}

uint64_t sub_1000AB5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v33 = a4;
  v5 = sub_100005804(&qword_100209610);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  __chkstk_darwin(v5);
  v28 = &v22 - v7;
  v8 = type metadata accessor for DocumentToolbarContainingView();
  v9 = *(v8 - 8);
  v26 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  type metadata accessor for PreviewAction(0);
  v12 = sub_10015D844();
  v30 = v12;
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v24 = sub_100120BAC();

  v27 = *(v9 + 16);
  v23 = a1;
  v27(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v35;
  *(v14 + 16) = v34;
  *(v14 + 24) = v15;
  v25 = *(v9 + 32);
  v16 = v14;
  v29 = v14;
  v25(v14 + v13, v11, v8);
  v37 = v12;
  v38 = v24 & 1;
  v39 = sub_1000AFE40;
  v40 = v16;
  sub_100005804(&qword_100209610);
  v17 = v28;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v18 = v31;
  Bindable<A>.subscript.getter();

  (*(v32 + 8))(v17, v18);
  LODWORD(v32) = v36;
  v27(v11, v23, v8);
  v19 = swift_allocObject();
  v20 = v35;
  *(v19 + 16) = v34;
  *(v19 + 24) = v20;
  v25(v19 + v13, v11, v8);
  sub_100005804(&qword_1002060E0);
  sub_100005804(&qword_10020AE18);
  sub_100007888(&qword_1002060F0, &qword_1002060E0);
  sub_1000AE844();
  View.sheet<A>(isPresented:onDismiss:content:)();
}

uint64_t sub_1000AB9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ResizeViewModel.SizeUnit();
  Description = v8[-1].Description;
  v49 = v8;
  __chkstk_darwin(v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v39 - v11;
  v44 = a2;
  v45 = a3;
  v12 = type metadata accessor for DocumentToolbarContainingView();
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = &v39 - v13;
  v14 = type metadata accessor for ResizeSheetView();
  v51 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005804(&qword_10020AE18);
  __chkstk_darwin(v17 - 8);
  v19 = &v39 - v18;
  type metadata accessor for MainActor();
  v50 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v20 = sub_10011DDB0();
  v22 = v21;

  if (!v20)
  {
    goto LABEL_7;
  }

  v40 = v14;
  v41 = a4;
  ObjectType = swift_getObjectType();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_100128038(v53[0], ObjectType, v22);

  if (!v55)
  {
    swift_unknownObjectRelease();
    sub_100007710(&v54, &qword_10020AE40);
    a4 = v41;
    v14 = v40;
LABEL_7:
    (*(v51 + 56))(v19, 1, 1, v14);
    goto LABEL_8;
  }

  sub_1000429A4(&v54, v56);
  sub_100012F6C(v56, &v54);
  v24 = v43;
  v25 = v42;
  (*(v43 + 16))(v42, a1, v12);
  v26 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v28 = v45;
  *(v27 + 2) = v44;
  *(v27 + 3) = v28;
  *(v27 + 4) = v20;
  *(v27 + 5) = v22;
  (*(v24 + 32))(&v27[v26], v25, v12);
  v30 = Description;
  v29 = v49;
  v31 = v46;
  Description[13](v46, 0, v49);
  (v30)[2](v47, v31, v29);
  swift_unknownObjectRetain();
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  (v30[1])(v31, v29);
  v32 = v40;
  v33 = *(v40 + 24);
  *&v16[v33] = swift_getKeyPath();
  sub_100005804(&qword_100208138);
  swift_storeEnumTagMultiPayload();
  sub_100012F6C(&v54, v53);
  type metadata accessor for ResizeViewModel();
  swift_allocObject();
  v34 = sub_100172920(v53);
  v35 = &v16[*(v32 + 20)];
  v52 = v34;
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  swift_unknownObjectRelease();
  sub_10000867C(&v54);
  sub_10000867C(v56);
  v36 = v53[1];
  *v35 = v53[0];
  *(v35 + 1) = v36;
  v37 = &v16[*(v32 + 28)];
  *v37 = sub_1000AECFC;
  v37[1] = v27;
  sub_10005CE7C(v16, v19);
  (*(v51 + 56))(v19, 0, 1, v32);
  a4 = v41;
LABEL_8:
  sub_100023CD8(v19, a4, &qword_10020AE18);
}

uint64_t sub_1000ABFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_100128024(v7, a1, ObjectType, a3);
}

uint64_t sub_1000AC0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for DocumentToolbarContainingView();
  v7 = *(v6 - 8);
  v23 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  type metadata accessor for PreviewAction(0);
  v27 = sub_10015CAB8();
  sub_100005804(&qword_100209610);
  v21 = a1;
  Bindable.wrappedValue.getter();
  v26 = sub_10011F4C8();

  v25 = *(v7 + 16);
  v25(v9, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = v29;
  *(v11 + 16) = v28;
  *(v11 + 24) = v12;
  v22 = *(v7 + 32);
  v22(v11 + v10, v9, v6);
  v24 = sub_10015CBE4();
  sub_100005804(&qword_100209610);
  v13 = v21;
  Bindable.wrappedValue.getter();
  v20 = sub_10011F66C();

  v25(v9, v13, v6);
  v14 = swift_allocObject();
  v15 = v29;
  *(v14 + 16) = v28;
  *(v14 + 24) = v15;
  v22(v14 + v10, v9, v6);
  v16 = v26 & 1;
  v17 = v20 & 1;
  *a4 = v27;
  *(a4 + 8) = v16;
  *(a4 + 16) = sub_1000AFE40;
  *(a4 + 24) = v11;
  *(a4 + 32) = v24;
  *(a4 + 40) = v17;
  *(a4 + 48) = sub_1000AFE40;
  *(a4 + 56) = v14;
}

uint64_t sub_1000AC334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for DocumentToolbarContainingView();
  v7 = *(v6 - 8);
  v23 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  type metadata accessor for PreviewAction(0);
  v27 = sub_10015C28C();
  sub_100005804(&qword_100209610);
  v21 = a1;
  Bindable.wrappedValue.getter();
  v26 = sub_10011EAF0();

  v25 = *(v7 + 16);
  v25(v9, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = v29;
  *(v11 + 16) = v28;
  *(v11 + 24) = v12;
  v22 = *(v7 + 32);
  v22(v11 + v10, v9, v6);
  v24 = sub_10015C3B8();
  sub_100005804(&qword_100209610);
  v13 = v21;
  Bindable.wrappedValue.getter();
  v20 = sub_10011EC94();

  v25(v9, v13, v6);
  v14 = swift_allocObject();
  v15 = v29;
  *(v14 + 16) = v28;
  *(v14 + 24) = v15;
  v22(v14 + v10, v9, v6);
  v16 = v26 & 1;
  v17 = v20 & 1;
  *a4 = v27;
  *(a4 + 8) = v16;
  *(a4 + 16) = sub_1000AFE40;
  *(a4 + 24) = v11;
  *(a4 + 32) = v24;
  *(a4 + 40) = v17;
  *(a4 + 48) = sub_1000AFE40;
  *(a4 + 56) = v14;
}

uint64_t sub_1000AC5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for DocumentToolbarContainingView();
  v7 = *(v6 - 8);
  v23 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  type metadata accessor for PreviewAction(0);
  v27 = sub_10015CD18();
  sub_100005804(&qword_100209610);
  v21 = a1;
  Bindable.wrappedValue.getter();
  v26 = sub_10011FB58();

  v25 = *(v7 + 16);
  v25(v9, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = v29;
  *(v11 + 16) = v28;
  *(v11 + 24) = v12;
  v22 = *(v7 + 32);
  v22(v11 + v10, v9, v6);
  v24 = sub_10015CE50();
  sub_100005804(&qword_100209610);
  v13 = v21;
  Bindable.wrappedValue.getter();
  v20 = sub_10011FCFC();

  v25(v9, v13, v6);
  v14 = swift_allocObject();
  v15 = v29;
  *(v14 + 16) = v28;
  *(v14 + 24) = v15;
  v22(v14 + v10, v9, v6);
  v16 = v26 & 1;
  v17 = v20 & 1;
  *a4 = v27;
  *(a4 + 8) = v16;
  *(a4 + 16) = sub_1000AFE40;
  *(a4 + 24) = v11;
  *(a4 + 32) = v24;
  *(a4 + 40) = v17;
  *(a4 + 48) = sub_1000AFE40;
  *(a4 + 56) = v14;
}

uint64_t sub_1000AC84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v45 = a2;
  v6 = type metadata accessor for PopoverAttachmentAnchor();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100005804(&qword_100209610);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  __chkstk_darwin(v8);
  v37 = &v29 - v10;
  v11 = a3;
  v33 = a3;
  v12 = type metadata accessor for DocumentToolbarContainingView();
  v13 = *(v12 - 8);
  v32 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  type metadata accessor for PreviewAction(0);
  v40 = sub_10015CF84();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v36 = sub_10011FEA0();

  v34 = *(v13 + 16);
  v30 = a1;
  v34(v15, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v35 = v17;
  *(v17 + 16) = v45;
  *(v17 + 24) = v11;
  v31 = *(v13 + 32);
  v31(v17 + v16, v15, v12);
  sub_100005804(&qword_100209610);
  v18 = v37;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v19 = v38;
  Bindable<A>.subscript.getter();

  (*(v39 + 8))(v18, v19);
  v37 = v53;
  v38 = v52;
  LODWORD(v39) = v54;
  v34(v15, v30, v12);
  v20 = swift_allocObject();
  v21 = v33;
  *(v20 + 16) = v45;
  *(v20 + 24) = v21;
  v31(v20 + v16, v15, v12);
  v22 = static Anchor.Source<A>.bounds.getter();
  v24 = v41;
  v23 = v42;
  *v41 = v22;
  v25 = v43;
  (*(v23 + 104))(v24, enum case for PopoverAttachmentAnchor.rect(_:), v43);
  v48 = v40;
  v49 = v36 & 1;
  v50 = sub_1000AE64C;
  v51 = v35;
  sub_100005804(&qword_100206110);
  sub_100005804(&qword_100206118);
  sub_100007888(&qword_100206120, &qword_100206110);
  v26 = sub_1000059D4(&qword_100206128);
  v27 = sub_100005AD8();
  v46 = v26;
  v47 = v27;
  swift_getOpaqueTypeConformance2();
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v23 + 8))(v24, v25);
}

uint64_t sub_1000ACD8C()
{
  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_1001168E4(1);
}

uint64_t sub_1000ACDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v33 = a4;
  v6 = type metadata accessor for PresentationAdaptation();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v31 = a2;
  v32 = a3;
  v12 = type metadata accessor for DocumentToolbarContainingView();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v29 - v14;
  v16 = sub_100005804(&qword_100206128);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  type metadata accessor for MainActor();
  v29[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v30;
  sub_100089E4C(v18);
  (*(v13 + 16))(v15, v19, v12);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 16) = v31;
  *(v21 + 24) = v22;
  (*(v13 + 32))(v21 + v20, v15, v12);
  v23 = &v18[*(type metadata accessor for GoToPopoverView(0) + 20)];
  *v23 = sub_1000AE748;
  v23[1] = v21;
  v24 = static Edge.Set.all.getter();
  v25 = &v18[*(v16 + 36)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  static PresentationAdaptation.popover.getter();
  static PresentationAdaptation.popover.getter();
  sub_100005AD8();
  View.presentationCompactAdaptation(horizontal:vertical:)();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v8, v35);
  v27(v11, v26);
  sub_100007710(v18, &qword_100206128);
}

uint64_t sub_1000AD15C(uint64_t a1, char a2)
{
  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_1001168E4(0);

  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  type metadata accessor for PreviewAction(0);
  v4 = sub_10015CFA8(a1, a2 & 1);
  sub_100122EC8(v4, 1);
}

uint64_t sub_1000AD250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DocumentToolbarContainingView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  type metadata accessor for PreviewAction(0);
  v16 = sub_10015D754();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  v12 = sub_100120378();

  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v9 + 32))(v14 + v13, v11, v8);
  *a4 = v16;
  *(a4 + 8) = v12 & 1;
  *(a4 + 16) = sub_1000AFE40;
  *(a4 + 24) = v14;
  return result;
}

uint64_t sub_1000AD3F0(uint64_t a1)
{
  type metadata accessor for DocumentToolbarContainingView();
  sub_100005804(&qword_100209610);
  Bindable.wrappedValue.getter();
  sub_100122EC8(a1, 1);
}

void sub_1000AD4C0()
{
  type metadata accessor for DocumentToolbarContainingView.PresentationContext();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1000ADE30(319, &unk_10020AB28, type metadata accessor for ToolbarViewModel, &type metadata accessor for Bindable);
      if (v2 <= 0x3F)
      {
        sub_1000ADE94(319, &qword_1002077C8, &unk_10020A0D0);
        if (v3 <= 0x3F)
        {
          sub_1000ADE30(319, &qword_10020ABE8, &type metadata accessor for PresentationKind, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1000ADE94(319, qword_10020ABF0, &qword_10020AAB0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000AD648(int *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 16);
  v4 = *(v38 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_100005804(&qword_100209610) - 8);
  v37 = *(v6 + 84);
  if (v5 <= v37)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = v5;
  }

  v8 = *(j___s7SwiftUI22UserInterfaceSizeClassOMa() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PresentationKind() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v7;
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  if (v9)
  {
    v18 = v10;
  }

  else
  {
    v18 = v10 + 1;
  }

  if (v18 <= 8)
  {
    v18 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v8 + 80) & 0xF8 | 7;
  v20 = *(v11 + 80) & 0xF8 | 7;
  v21 = v18 + v20 + 1;
  v22 = v12 + 8;
  if (v13 >= a2)
  {
    goto LABEL_38;
  }

  v23 = ((((v22 + ((v21 + ((v17 + v19 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16)) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 16;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v13 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v28 = *(a1 + v23);
      if (!v28)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v28 = *(a1 + v23);
      if (!v28)
      {
        goto LABEL_38;
      }
    }

LABEL_35:
    v30 = v28 - 1;
    if (v24)
    {
      v30 = 0;
      v31 = *a1;
    }

    else
    {
      v31 = 0;
    }

    return v13 + (v31 | v30) + 1;
  }

  if (v27)
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  v32 = (a1 + v14 + 1) & ~v14;
  if (v5 == v13)
  {
    v33 = *(v4 + 48);

    return v33(v32, v5, v38);
  }

  else
  {
    v34 = (v32 + v15 + v16) & ~v16;
    if (v37 == v13)
    {
      v35 = *(v6 + 48);

      return v35(v34);
    }

    else
    {
      v36 = *(((((v22 + ((v21 + ((v34 + v17 + v19) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v36 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      return (v36 + 1);
    }
  }
}

void sub_1000ADA08(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v35 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_100005804(&qword_100209610) - 8);
  v34 = *(v7 + 84);
  if (v6 <= v34)
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = v6;
  }

  v9 = *(j___s7SwiftUI22UserInterfaceSizeClassOMa() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for PresentationKind() - 8);
  v13 = 8;
  if (*(v12 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v12 + 64);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v8;
  }

  v16 = *(v5 + 80);
  v17 = *(v5 + 64);
  v18 = *(v7 + 80);
  v19 = *(v7 + 64);
  v20 = *(v9 + 80) & 0xF8 | 7;
  if (v10)
  {
    v21 = v11;
  }

  else
  {
    v21 = v11 + 1;
  }

  if (v21 > 8)
  {
    v13 = v21;
  }

  v22 = *(v12 + 80) & 0xF8 | 7;
  v23 = v13 + v22 + 1;
  v24 = v14 + 8;
  v25 = ((((v14 + 8 + ((v23 + ((v19 + v20 + ((v17 + v18 + ((v16 + 1) & ~v16)) & ~v18)) & ~v20)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15 >= a3)
  {
    v28 = 0;
  }

  else
  {
    if (((((v14 + 8 + ((v23 + ((v19 + v20 + ((v17 + v18 + ((v16 + 1) & ~v16)) & ~v18)) & ~v20)) & ~v22)) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v15 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  if (a2 <= v15)
  {
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_46:
        v31 = (a1 + v16 + 1) & ~v16;
        if (v6 == v15)
        {
          v32 = *(v35 + 56);
        }

        else
        {
          v31 = (v31 + v17 + v18) & ~v18;
          if (v34 != v15)
          {
            v33 = ((((v24 + ((v23 + ((v31 + v19 + v20) & ~v20)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v33 = a2 & 0x7FFFFFFF;
              v33[1] = 0;
            }

            else
            {
              v33[1] = a2 - 1;
            }

            return;
          }

          v32 = *(v7 + 56);
        }

        v32(v31);
        return;
      }

      *(a1 + v25) = 0;
    }

    else if (v28)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (v25)
  {
    v29 = 1;
  }

  else
  {
    v29 = a2 - v15;
  }

  if (v25)
  {
    v30 = ~v15 + a2;
    j__bzero(a1, v25);
    *a1 = v30;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v29;
    }

    else
    {
      *(a1 + v25) = v29;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v29;
  }
}

void sub_1000ADE30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000ADE94(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000059D4(a3);
    v4 = j___s7SwiftUI11EnvironmentVMa();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000ADF98()
{
  result = qword_10020ACA0;
  if (!qword_10020ACA0)
  {
    sub_1000059D4(&qword_10020AC98);
    sub_1000059D4(&qword_10020ACA8);
    sub_100007888(&qword_10020ACB0, &qword_10020ACA8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020ACA0);
  }

  return result;
}

uint64_t sub_1000AE098(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1000AE0A8()
{
  result = qword_10020AD20;
  if (!qword_10020AD20)
  {
    sub_1000059D4(&qword_10020AD08);
    sub_1000059D4(&qword_10020AD10);
    sub_100007888(&qword_10020AD18, &qword_10020AD10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AD20);
  }

  return result;
}

uint64_t sub_1000AE234()
{
  type metadata accessor for DocumentToolbarContainingView();

  return sub_1000AA034();
}

unint64_t sub_1000AE2F0()
{
  result = qword_10020AD50;
  if (!qword_10020AD50)
  {
    sub_1000059D4(&qword_10020AD40);
    sub_1000059D4(&qword_10020AD38);
    sub_1000059D4(&qword_10020ACD8);
    sub_100007888(&qword_10020AD48, &qword_10020ACD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AD50);
  }

  return result;
}

uint64_t sub_1000AE498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AE4FC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000AE558()
{
  result = qword_10020ADC8;
  if (!qword_10020ADC8)
  {
    sub_1000059D4(&qword_10020ADB0);
    sub_1000059D4(&qword_10020ADB8);
    sub_100007888(&qword_10020ADC0, &qword_10020ADB8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020ADC8);
  }

  return result;
}

uint64_t sub_1000AE64C()
{
  type metadata accessor for DocumentToolbarContainingView();

  return sub_1000ACD8C();
}

uint64_t sub_1000AE6D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011CDF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AE748(uint64_t a1, char a2)
{
  type metadata accessor for DocumentToolbarContainingView();

  return sub_1000AD15C(a1, a2 & 1);
}

BOOL sub_1000AE7EC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_10011A5E8();
  *a1 = result;
  return result;
}

unint64_t sub_1000AE844()
{
  result = qword_10020AE20;
  if (!qword_10020AE20)
  {
    sub_1000059D4(&qword_10020AE18);
    sub_1000AEDB8(&qword_10020AE28, type metadata accessor for ResizeSheetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AE20);
  }

  return result;
}

uint64_t sub_1000AE8F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011C054();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AE950@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011B480();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AE9C0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for DocumentToolbarContainingView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1000AEA60()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DocumentToolbarContainingView();
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[9], v1);
  v5 = v2[10];
  v6 = sub_100005804(&qword_100209610);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v2[11];
  sub_100005804(&qword_100207808);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v4 + v7, 1, v8))
    {
      (*(v9 + 8))(v4 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v2[12];
  sub_100005804(&qword_1002099D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for PresentationKind();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  sub_1000AE098(*(v4 + v2[13]), *(v4 + v2[13] + 8), *(v4 + v2[13] + 9));

  return swift_deallocObject();
}

uint64_t sub_1000AECFC(uint64_t a1)
{
  type metadata accessor for DocumentToolbarContainingView();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);

  return sub_1000ABFC8(a1, v3, v4);
}

uint64_t sub_1000AEDB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AEE00()
{
  result = qword_10020AE60;
  if (!qword_10020AE60)
  {
    sub_1000059D4(&qword_10020AE50);
    type metadata accessor for ToolbarGroup();
    sub_1000AEDB8(&qword_10020AE58, type metadata accessor for ToolbarGroup);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AE60);
  }

  return result;
}

uint64_t sub_1000AEEEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000AEF34()
{
  v1 = *(sub_100005804(&qword_10020A0C0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000AF06C(char *a1)
{
  v3 = *(sub_100005804(&qword_10020A0C0) - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *a1;
  v9 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1000AF0F4(v8, v4, v5, v6, v7, v9);
}

uint64_t sub_1000AF0F4(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v22 = a5;
  v23 = a2;
  v24 = a3;
  v8 = sub_100005804(&qword_1002064C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v20 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PreviewTelemetryAction();
  Description = v14[-1].Description;
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = v23;
  v27 = v24;
  v28 = a4 & 1;
  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  if (v25 != (a1 & 1))
  {
    if (a1)
    {
      sub_10015C110(v13);
      sub_100164588(v10);
      (*(v20 + 8))(v13, v11);
      v17 = Description;
      if (Description[6](v10, 1, v14) == 1)
      {
        sub_100007710(v10, &qword_1002064C0);
      }

      else
      {
        v17[4](v16, v10, v14);
        type metadata accessor for PreviewTelemetryLogger();
        sub_100143D70(v16, v19);
        (v17[1])(v16, v14);
      }
    }

    v26 = v23;
    v27 = v24;
    v28 = a4 & 1;
    v25 = a1 & 1;
    j___s7SwiftUI7BindingV12wrappedValuexvs();
  }
}

uint64_t sub_1000AF424()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DocumentToolbarContainingView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3 + v2[9], v1);
  v4 = v2[10];
  v5 = sub_100005804(&qword_100209610);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v2[11];
  sub_100005804(&qword_100207808);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v2[12];
  sub_100005804(&qword_1002099D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for PresentationKind();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  sub_1000AE098(*(v3 + v2[13]), *(v3 + v2[13] + 8), *(v3 + v2[13] + 9));

  return swift_deallocObject();
}

unint64_t sub_1000AF6BC()
{
  result = qword_10020AE68;
  if (!qword_10020AE68)
  {
    sub_1000059D4(&qword_10020ADF0);
    sub_1000059D4(&qword_10020ACD8);
    sub_100007888(&qword_10020AD48, &qword_10020ACD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AE68);
  }

  return result;
}

uint64_t sub_1000AF7CC(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = *(type metadata accessor for DocumentToolbarContainingView() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return a1(v5, v6, v7, v2, v3);
}

uint64_t sub_1000AF870()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for DocumentToolbarContainingView();
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[9], v1);
  v5 = v2[10];
  v6 = sub_100005804(&qword_100209610);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v2[11];
  sub_100005804(&qword_100207808);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v4 + v7, 1, v8))
    {
      (*(v9 + 8))(v4 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v2[12];
  sub_100005804(&qword_1002099D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for PresentationKind();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  sub_1000AE098(*(v4 + v2[13]), *(v4 + v2[13] + 8), *(v4 + v2[13] + 9));

  return swift_deallocObject();
}

uint64_t sub_1000AFB24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v4 = v2[4];
  v5 = v2[5];
  v6 = *(type metadata accessor for DocumentToolbarContainingView() - 8);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a2(a1, v7, v8, v9, v4, v5);
}

uint64_t sub_1000AFBC8()
{
  sub_1000059D4(&qword_10020AC90);
  sub_1000059D4(&qword_10020AC98);
  sub_1000ADF98();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1000059D4(&qword_10020AC80);
  sub_100007888(&qword_10020AC88, &qword_10020AC80);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  j___s7SwiftUI19_ConditionalContentVMa();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1000AFE44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  type metadata accessor for LockingViewModel();
  sub_1000AFF94();
  Bindable<A>.init(wrappedValue:)();
  v8 = type metadata accessor for LockingView();
  v9 = a4 + v8[5];
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v10 = a4 + v8[6];
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v10 = v15;
  *(v10 + 8) = *(&v15 + 1);
  v11 = a4 + v8[7];
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v11 = v15;
  *(v11 + 16) = v16;
  v12 = a4 + v8[8];
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v12 = v15;
  *(v12 + 16) = v16;
  v13 = a4 + v8[9];
  result = j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v13 = v15;
  *(v13 + 8) = *(&v15 + 1);
  return result;
}

unint64_t sub_1000AFF94()
{
  result = qword_10020AE70;
  if (!qword_10020AE70)
  {
    type metadata accessor for LockingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AE70);
  }

  return result;
}

uint64_t type metadata accessor for LockingView()
{
  result = qword_10020AED8;
  if (!qword_10020AED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B004C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_10020AE78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B012C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_10020AE78);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000B01F4()
{
  sub_1000B0320();
  if (v0 <= 0x3F)
  {
    sub_1000B0378(319, qword_100209AF0, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1000B0378(319, &qword_1002075C0, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1000B0378(319, &unk_10020AEF0, &type metadata for String, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000B0320()
{
  if (!qword_10020AEE8)
  {
    type metadata accessor for LockingViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_10020AEE8);
    }
  }
}

void sub_1000B0378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000B03E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v69 = a2;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v65 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for LocalizedStringResource();
  v51 = *(v70 - 8);
  __chkstk_darwin(v70);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v47 - v11;
  v12 = type metadata accessor for InsetGroupedListStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005804(&qword_10020AF58);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - v18;
  v55 = sub_100005804(&qword_10020AF50);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v21 = &v47 - v20;
  v59 = sub_100005804(&qword_10020AF48);
  v54 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = &v47 - v22;
  v64 = sub_100005804(&qword_10020AF40);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v47 - v23;
  type metadata accessor for MainActor();
  v57 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v47 - 2) = v71;
  sub_100005804(&qword_10020AF70);
  sub_1000B3178();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v25 = sub_100007888(&qword_10020AF60, &qword_10020AF58);
  v48 = v21;
  v26 = v16;
  View.listStyle<A>(_:)();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v60 + 104))(v61, enum case for LocalizedStringResource.BundleDescription.main(_:), v63);
  static Locale.current.getter();
  v27 = v49;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v28 = v51;
  (*(v51 + 16))(v56, v27, v70);
  v29 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v31 = v30;
  v33 = v32;
  v72 = v26;
  v73 = v12;
  v74 = v25;
  v75 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v53;
  v36 = v55;
  v37 = v48;
  View.navigationTitle(_:)();
  sub_100028DF8(v29, v31, v33 & 1);

  (*(v28 + 8))(v27, v70);
  (*(v52 + 8))(v37, v36);
  v39 = v66;
  v38 = v67;
  v40 = v68;
  (*(v67 + 104))(v66, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v68);
  v72 = v36;
  v73 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v43 = v58;
  v42 = v59;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v38 + 8))(v39, v40);
  v44 = (*(v54 + 8))(v35, v42);
  __chkstk_darwin(v44);
  *(&v47 - 2) = v71;
  sub_100005804(&qword_1002080F8);
  v72 = v42;
  v73 = v41;
  swift_getOpaqueTypeConformance2();
  sub_100007888(&qword_100208118, &qword_1002080F8);
  v45 = v64;
  View.toolbar<A>(content:)();
  (*(v62 + 8))(v43, v45);
}

uint64_t sub_1000B0DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9 - 8);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v16 = v10;
  v17 = v11 & 1;
  v18 = v12;
  __chkstk_darwin(v15);
  *(&v14 - 2) = a1;
  sub_100005804(&qword_10020AF88);
  sub_100007888(&qword_10020AF80, &qword_10020AF88);
  Section<>.init(header:content:)();
}

uint64_t sub_1000B10CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a1;
  v57 = a2;
  v2 = sub_100005804(&qword_10020AF90);
  __chkstk_darwin(v2 - 8);
  v58 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = &v44 - v5;
  __chkstk_darwin(v6);
  v55 = (&v44 - v7);
  __chkstk_darwin(v8);
  v48 = (&v44 - v9);
  v10 = sub_100005804(&qword_10020AE78);
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v47 = &v44 - v11;
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v45 = type metadata accessor for LocalizedStringResource();
  v18 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100005804(&qword_100208510);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v53 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v44 - v23;
  type metadata accessor for MainActor();
  v50 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v14 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25 = v47;
  v26 = v52;
  v27 = v54;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v51 + 8))(v25, v26);
  __chkstk_darwin(v59);
  *(&v44 - 2) = v20;
  v28 = v24;
  v44 = v24;
  Toggle.init(isOn:label:)();
  (*(v18 + 8))(v20, v45);
  v29 = static VerticalAlignment.center.getter();
  v30 = v48;
  *v48 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v31 = sub_100005804(&qword_10020AF98);
  sub_1000B177C(v27, (v30 + *(v31 + 44)));
  v32 = static VerticalAlignment.center.getter();
  v33 = v55;
  *v55 = v32;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  sub_1000B2144(v27, (v33 + *(v31 + 44)));
  v34 = v46;
  v35 = *(v46 + 16);
  v36 = v53;
  v37 = v49;
  v35(v53, v28, v49);
  v38 = v56;
  sub_1000B356C(v30, v56);
  v39 = v58;
  sub_1000B356C(v33, v58);
  v40 = v57;
  v35(v57, v36, v37);
  v41 = sub_100005804(&qword_10020AFA0);
  sub_1000B356C(v38, &v40[*(v41 + 48)]);
  sub_1000B356C(v39, &v40[*(v41 + 64)]);
  sub_1000B35DC(v33);
  sub_1000B35DC(v30);
  v42 = *(v34 + 8);
  v42(v44, v37);
  sub_1000B35DC(v39);
  sub_1000B35DC(v38);
  v42(v36, v37);
}

uint64_t sub_1000B177C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a1;
  v78 = a2;
  v2 = sub_100005804(&qword_10020AFA8);
  __chkstk_darwin(v2 - 8);
  v73 = &v58 - v3;
  v4 = sub_100005804(&qword_10020AE78);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v58 - v5;
  v72 = sub_100005804(&qword_10020AFB0);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v58 - v6;
  v7 = sub_100005804(&qword_10020AFB8);
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v68 = &v58 - v8;
  v9 = sub_100005804(&qword_10020AFC0);
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v58 - v12;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  v59 = *(v19 - 8);
  v60 = v19;
  __chkstk_darwin(v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v66 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v15 + 104);
  v23(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v61 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v80 = v24;
  v81 = v25;
  v27 = v26;
  v56 = static Alignment.leading.getter();
  v57 = v28;
  LOBYTE(v55) = 1;
  v54 = 0;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v79 = v27 & 1;
  v111 = v27 & 1;
  String.LocalizationValue.init(stringLiteral:)();
  v23(v17, v22, v14);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v29 = v62;
  v30 = v64;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v63 + 8))(v29, v30);
  __chkstk_darwin(v98);
  v57 = &protocol witness table for Text;
  v55 = &v54;
  v56 = &type metadata for Text;
  v54 = sub_1000B3900;
  v31 = v67;
  SecureField.init(text:prompt:label:)();
  (*(v59 + 8))(v21, v60);
  v32 = v73;
  static TextInputAutocapitalization.never.getter();
  v33 = type metadata accessor for TextInputAutocapitalization();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = sub_100007888(&qword_10020AFC8, &qword_10020AFB0);
  v35 = v68;
  v36 = v72;
  View.textInputAutocapitalization(_:)();
  sub_100007710(v32, &qword_10020AFA8);
  (*(v69 + 8))(v31, v36);
  v98 = v36;
  v99 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v74;
  v38 = v71;
  View.disableAutocorrection(_:)();
  (*(v70 + 8))(v35, v38);
  v40 = v75;
  v39 = v76;
  v41 = *(v76 + 16);
  v42 = v77;
  v41(v75, v37, v77);
  v43 = v61;
  *&v89 = v61;
  *(&v89 + 1) = v80;
  LOBYTE(v90) = v79;
  *(&v90 + 1) = *v110;
  DWORD1(v90) = *&v110[3];
  *(&v90 + 1) = v81;
  v95 = v86;
  v96 = v87;
  v97 = v88;
  v91 = v82;
  v92 = v83;
  v93 = v84;
  v94 = v85;
  v44 = v85;
  v45 = v87;
  v46 = v88;
  v47 = v78;
  *(v78 + 6) = v86;
  *(v47 + 7) = v45;
  *(v47 + 8) = v46;
  v48 = v90;
  v49 = v92;
  v50 = v93;
  *(v47 + 2) = v91;
  *(v47 + 3) = v49;
  *(v47 + 4) = v50;
  *(v47 + 5) = v44;
  *v47 = v89;
  *(v47 + 1) = v48;
  v51 = sub_100005804(&qword_10020AFD0);
  v41(&v47[*(v51 + 48)], v40, v42);
  sub_1000B3768(&v89, &v98);
  v52 = *(v39 + 8);
  v52(v37, v42);
  v52(v40, v42);
  v98 = v43;
  v99 = v80;
  v100 = v79;
  *v101 = *v110;
  *&v101[3] = *&v110[3];
  v102 = v81;
  v107 = v86;
  v108 = v87;
  v109 = v88;
  v103 = v82;
  v104 = v83;
  v105 = v84;
  v106 = v85;
  sub_100007710(&v98, &qword_10020AFD8);
}

uint64_t sub_1000B2144@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a1;
  v77 = a2;
  v2 = sub_100005804(&qword_10020AFA8);
  __chkstk_darwin(v2 - 8);
  v72 = &v57 - v3;
  v4 = sub_100005804(&qword_10020AE78);
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v57 - v5;
  v71 = sub_100005804(&qword_10020AFB0);
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &v57 - v6;
  v7 = sub_100005804(&qword_10020AFB8);
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v67 = &v57 - v8;
  v9 = sub_100005804(&qword_10020AFC0);
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v74 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v57 - v12;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v60 = type metadata accessor for LocalizedStringResource();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v65 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v15 + 104);
  v22(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v59 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v79 = v23;
  v80 = v24;
  v26 = v25;
  v55 = static Alignment.leading.getter();
  v56 = v27;
  LOBYTE(v54) = 1;
  v53 = 0;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v78 = v26 & 1;
  v110 = v26 & 1;
  String.LocalizationValue.init(stringLiteral:)();
  v22(v17, v21, v14);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v28 = v61;
  v29 = v63;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v62 + 8))(v28, v29);
  __chkstk_darwin(v97);
  v56 = &protocol witness table for Text;
  v54 = &v53;
  v55 = &type metadata for Text;
  v53 = sub_1000B3760;
  v30 = v66;
  SecureField.init(text:prompt:label:)();
  (*(v58 + 8))(v20, v60);
  v31 = v72;
  static TextInputAutocapitalization.never.getter();
  v32 = type metadata accessor for TextInputAutocapitalization();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = sub_100007888(&qword_10020AFC8, &qword_10020AFB0);
  v34 = v67;
  v35 = v71;
  View.textInputAutocapitalization(_:)();
  sub_100007710(v31, &qword_10020AFA8);
  (*(v68 + 8))(v30, v35);
  v97 = v35;
  v98 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v73;
  v37 = v70;
  View.disableAutocorrection(_:)();
  (*(v69 + 8))(v34, v37);
  v39 = v74;
  v38 = v75;
  v40 = *(v75 + 16);
  v41 = v76;
  v40(v74, v36, v76);
  v42 = v59;
  *&v88 = v59;
  *(&v88 + 1) = v79;
  LOBYTE(v89) = v78;
  *(&v89 + 1) = *v109;
  DWORD1(v89) = *&v109[3];
  *(&v89 + 1) = v80;
  v94 = v85;
  v95 = v86;
  v96 = v87;
  v90 = v81;
  v91 = v82;
  v92 = v83;
  v93 = v84;
  v43 = v84;
  v44 = v86;
  v45 = v87;
  v46 = v77;
  *(v77 + 6) = v85;
  *(v46 + 7) = v44;
  *(v46 + 8) = v45;
  v47 = v89;
  v48 = v91;
  v49 = v92;
  *(v46 + 2) = v90;
  *(v46 + 3) = v48;
  *(v46 + 4) = v49;
  *(v46 + 5) = v43;
  *v46 = v88;
  *(v46 + 1) = v47;
  v50 = sub_100005804(&qword_10020AFD0);
  v40(&v46[*(v50 + 48)], v39, v41);
  sub_1000B3768(&v88, &v97);
  v51 = *(v38 + 8);
  v51(v36, v41);
  v51(v39, v41);
  v97 = v42;
  v98 = v79;
  v99 = v78;
  *v100 = *v109;
  *&v100[3] = *&v109[3];
  v101 = v80;
  v106 = v85;
  v107 = v86;
  v108 = v87;
  v102 = v81;
  v103 = v82;
  v104 = v83;
  v105 = v84;
  sub_100007710(&v97, &qword_10020AFD8);
}

uint64_t sub_1000B2B08(uint64_t a1)
{
  v2 = type metadata accessor for LockingView();
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

  sub_1000B3244(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000B32AC(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100005804(&qword_10020AE78);
  Bindable.wrappedValue.getter();
  v7 = sub_100103414();

  sub_1000B3244(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_1000B32AC(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  LOBYTE(v10[0]) = 1;
  v10[1] = sub_1000B3310;
  v10[2] = v6;
  v11 = v7;
  v12 = 2;
  v13 = sub_1000B3480;
  v14 = v8;
  sub_100005804(&qword_100208150);
  TupleToolbarContent.init(_:)();
}

uint64_t sub_1000B2D2C()
{
  type metadata accessor for LockingView();
  sub_100005804(&unk_100209B50);
  return j___s7SwiftUI7BindingV12wrappedValuexvs();
}

uint64_t sub_1000B2D9C()
{
  sub_100005804(&qword_10020AE78);
  Bindable.wrappedValue.getter();
  sub_10010398C();

  type metadata accessor for LockingView();
  sub_100005804(&unk_100209B50);
  return j___s7SwiftUI7BindingV12wrappedValuexvs();
}

uint64_t sub_1000B2E3C@<X0>(uint64_t a1@<X8>)
{
  v17[3] = a1;
  v2 = sub_100005804(&qword_10020AF30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v18 = v1;
  v17[1] = sub_100005804(&qword_10020AF38);
  v17[0] = sub_1000059D4(&qword_10020AF40);
  v6 = sub_1000059D4(&qword_1002080F8);
  v7 = sub_1000059D4(&qword_10020AF48);
  v8 = sub_1000059D4(&qword_10020AF50);
  v9 = sub_1000059D4(&qword_10020AF58);
  v10 = type metadata accessor for InsetGroupedListStyle();
  v11 = sub_100007888(&qword_10020AF60, &qword_10020AF58);
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v8;
  v20 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v19 = v7;
  v20 = v13;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = sub_100007888(&qword_100208118, &qword_1002080F8);
  v19 = v17[0];
  v20 = v6;
  v21 = v14;
  v22 = v15;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  sub_100005804(&qword_10020AE78);
  Bindable.wrappedValue.getter();
  sub_1001030A8();

  sub_100007888(&qword_10020AF68, &qword_10020AF30);
  View.interactiveDismissDisabled(_:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1000B3178()
{
  result = qword_10020AF78;
  if (!qword_10020AF78)
  {
    sub_1000059D4(&qword_10020AF70);
    sub_100007888(&qword_10020AF80, &qword_10020AF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020AF78);
  }

  return result;
}

uint64_t sub_1000B3244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B32AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B3328()
{
  v1 = *(type metadata accessor for LockingView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_100005804(&qword_10020AE78);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000B3498(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LockingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000B3514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001030A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000B356C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020AF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B35DC(uint64_t a1)
{
  v2 = sub_100005804(&qword_10020AF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B3644@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001029BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B3688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1000B3768(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020AFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B37D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10010225C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B381C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1000B3864()
{
  sub_1000059D4(&qword_10020AF30);
  sub_100007888(&qword_10020AF68, &qword_10020AF30);
  return swift_getOpaqueTypeConformance2();
}

double sub_1000B3904()
{
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.6 green:0.741 blue:0.945 alpha:1.0];
  xmmword_10020AFE0 = xmmword_1001A0910;
  *&qword_10020AFF0 = xmmword_1001A0920;
  xmmword_10020B000 = xmmword_1001A0930;
  qword_10020B010 = 0x4044000000000000;
  dword_10020B018 = 1034147594;
  result = 0.0;
  xmmword_10020B020 = xmmword_1001A0940;
  qword_10020B030 = 0x402C000000000000;
  qword_10020B038 = v0;
  return result;
}

char *sub_1000B39A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23DocumentLaunchCardViews_pdfCard;
  sub_1000B6DAC();
  *&v1[v2] = v3;
  v4 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23DocumentLaunchCardViews_imageCard;
  v5 = objc_allocWithZone(type metadata accessor for ImageCard());
  v6 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD9ImageCard_tiledImageView;
  *&v5[v6] = [objc_allocWithZone(type metadata accessor for ImageCardTiledImageView()) init];
  v7 = sub_1000B4374(0, 1);
  v8 = *(v7 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer);
  v9 = *(v7 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD9ImageCard_tiledImageView);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [v11 bounds];
  [v12 setFrame:?];
  [v12 setAutoresizingMask:18];
  p_name = &stru_100200FF8.name;
  [v11 addSubview:v12];

  *&v1[v4] = v10;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for DocumentLaunchCardViews();
  v14 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100005804(&qword_1002064F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019A6B0;
  v16 = *&v14[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23DocumentLaunchCardViews_pdfCard];
  *(inited + 32) = v16;
  v17 = *&v14[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23DocumentLaunchCardViews_imageCard];
  *(inited + 40) = v17;
  v18 = v14;
  v19 = v16;
  v20 = v17;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  v21 = &stru_100200FF8.name;
  for (i = v19; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v23 = i;
    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    p_name = v21;
    [v18 v21[492]];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v24 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v21 = p_name;
  }

  v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v18 v21[492]];

  swift_setDeallocating();
  swift_arrayDestroy();
  return v18;
}

id sub_1000B3CE8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DocumentLaunchCardViews();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  if (qword_100206078 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_10020AFE0 + 1);
  v1 = *&xmmword_10020AFE0;
  [v0 center];
  v4 = v3;
  [v0 center];
  v6 = v5;
  v7 = *(&xmmword_10020B000 + 1);
  [v0 frame];
  if (CGRectGetWidth(v13) >= v1 + v1 + v7 + v7 - v2)
  {
    v7 = v2 * 0.5 + v4 - v1;
    v8 = v6 - v2 * 0.5;
  }

  else
  {
    [v0 bounds];
    v1 = CGRectGetWidth(v14) * 0.5;
    [v0 bounds];
    v8 = CGRectGetMaxX(v15) - v7 - v1;
  }

  v9 = *&qword_10020AFF0;
  [v0 bounds];
  v10 = CGRectGetMaxY(v16) - v9 - *&qword_10020AFF8;
  [*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23DocumentLaunchCardViews_pdfCard] setFrame:{v7, v9, v1, v10}];
  return [*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23DocumentLaunchCardViews_imageCard] setFrame:{v8, v9, v1, v10}];
}

void sub_1000B3ECC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23DocumentLaunchCardViews_imageCard);
}

void *sub_1000B3F94(void *a1, void *a2)
{
  swift_getObjectType();
  v5 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfView;
  *(v2 + v5) = [objc_allocWithZone(PDFView) init];
  v6 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor;
  v7 = objc_opt_self();
  *(v2 + v6) = [v7 systemBackgroundColor];
  v8 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_borderColor;
  *(v2 + v8) = [v7 clearColor];
  *(v2 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfDocument) = a1;
  *(v2 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfFirstPage) = a2;
  v9 = a1;
  v10 = a2;
  v11 = sub_1000B4374(1, 0);
  v12 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfView;
  v13 = *(v11 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfView);
  v14 = v11;
  [v13 setEnableRoundPageCorners:0];
  [*(v11 + v12) setUserInteractionEnabled:0];
  [*(v11 + v12) setDocumentAnalysisEnabled:0];
  [*(v11 + v12) setAutoScales:1];
  [*(v11 + v12) enablePageShadows:0];
  [*(v11 + v12) setDisplayMode:0];
  v15 = qword_100206078;
  v16 = *(v11 + v12);
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = [v14 traitCollection];
  v18 = [v7 secondarySystemBackgroundColor];
  v19 = [v18 resolvedColorWithTraitCollection:v17];

  [v16 setDarkModeBackgroundColor:v19];
  [*(v11 + v12) setAllowsDarkAppearanceContent:1];
  [*(v11 + v12) setDocument:v9];
  v20 = *(v11 + v12);
  v21 = [v20 document];
  if (!v21 || (v22 = v21, v23 = [v21 pageAtIndex:0], v22, !v23))
  {
    v23 = [objc_allocWithZone(PDFPage) init];
  }

  [v20 goToPage:v23];

  v24 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer;
  v25 = *(v14 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer);
  v26 = v14;
  v27 = v25;
  v28 = [v7 systemBackgroundColor];
  [v27 setBackgroundColor:v28];

  v29 = *(v14 + v24);
  [v29 addSubview:*(v11 + v12)];

  sub_1000B48C4();
  sub_1000085D8(0, &qword_10020B1C8);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v26;
}

void *sub_1000B4374(char a1, char a2)
{
  LOBYTE(v3) = a2;
  v5 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v34.receiver = v2;
  v34.super_class = type metadata accessor for CardView();
  v6 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = &selRef_addGestureRecognizer_;
  v10 = [v7 clearColor];
  [v8 setBackgroundColor:v10];

  v11 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer;
  v12 = &selRef_addGestureRecognizer_;
  v13 = [*(v8 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer) layer];
  if (qword_100206078 != -1)
  {
LABEL_34:
    swift_once();
  }

  v14 = *&xmmword_10020B000;
  [v13 setMaskedCorners:15];
  [v13 setCornerRadius:v14];
  [v13 setCornerCurve:kCACornerCurveContinuous];

  v15 = [*&v11[v8] *(v12 + 1768)];
  [v15 setMasksToBounds:1];

  [*&v11[v8] setClipsToBounds:1];
  if (a1)
  {
    v16 = [v7 systemBackgroundColor];
    v13 = [v7 v9[170]];
    v17 = objc_allocWithZone(type metadata accessor for CardShadowPlatterView());
    v18 = sub_1000B5AB0(v13, v16, 0.0);
  }

  else
  {
    v18 = 0;
  }

  v31[4] = v18;
  v32 = *&v11[v8];
  v19 = v32;
  v30 = v8;
  if (v3)
  {
    v20 = [v7 whiteColor];
    v21 = *&qword_10020B030;
    v22 = [v7 v9[170]];
    v23 = objc_allocWithZone(type metadata accessor for CardShadowPlatterView());
    v24 = sub_1000B5AB0(v20, v22, v21);
  }

  else
  {
    v24 = 0;
  }

  v25 = 0;
  v33 = v24;
  v3 = _swiftEmptyArrayStorage;
  v8 = v31;
  v7 = &protocol witness table for MainActor;
LABEL_9:
  if (v25 <= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = v25;
  }

  while (v25 != 3)
  {
    if (v12 == v25)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v13 = v31[v25 + 4];
    type metadata accessor for MainActor();
    v26 = v13;
    a1 = v26;
    static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v27;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    ++v25;
    if (v13)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }
  }

  sub_100005804(&qword_10020B1C0);
  swift_arrayDestroy();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v30;
    if (v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v30;
    if (v7)
    {
LABEL_22:
      v13 = 0;
      v9 = (_swiftEmptyArrayStorage & 0xC000000000000001);
      a1 = _swiftEmptyArrayStorage & 0xF8;
      do
      {
        if (v9)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v28 = _swiftEmptyArrayStorage[v13 + 4];
        }

        v11 = v28;
        v12 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_32;
        }

        type metadata accessor for MainActor();
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v8 = v30;
        [v30 bounds];
        [v11 setFrame:?];
        [v11 setAutoresizingMask:18];
        [v30 addSubview:v11];

        ++v13;
      }

      while (v12 != v7);
    }
  }

  return v8;
}

void sub_1000B48C4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (qword_100206078 != -1)
  {
    swift_once();
  }

  v3 = [v0 traitCollection];
  v4 = objc_opt_self();
  v5 = &selRef_secondarySystemBackgroundColor;
  if (v2 != 2)
  {
    v5 = &selRef_systemBackgroundColor;
  }

  v6 = [v4 *v5];
  v7 = [v6 resolvedColorWithTraitCollection:v3];

  v8 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor;
  v9 = *&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor];
  *&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor] = v7;
  v10 = v7;

  v11 = *&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer];
  [v11 setBackgroundColor:v10];

  v12 = *&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfView];
  [v12 setBackgroundColor:*&v0[v8]];
  [v12 setPageColor:*&v0[v8]];

  v13 = [v0 traitCollection];
  v14 = objc_opt_self();
  if (v2 == 2)
  {
    v15 = [v14 whiteColor];
    v16 = [v15 colorWithAlphaComponent:0.2];
  }

  else
  {
    v16 = [v14 clearColor];
  }

  v17 = [v16 resolvedColorWithTraitCollection:v13];

  v18 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_borderColor;
  v19 = *&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_borderColor];
  *&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_borderColor] = v17;
  v20 = v17;

  v23 = [v11 layer];
  v21 = *&xmmword_10020B000;
  [v23 setMaskedCorners:15];
  [v23 setCornerRadius:v21];
  [v23 setCornerCurve:kCACornerCurveContinuous];
  v22 = [*&v0[v18] CGColor];
  [v23 setBorderColor:v22];

  [v23 setBorderWidth:0.5];
}

id sub_1000B4BE0()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfFirstPage] boundsForBox:0];
  v2 = v1;
  v4 = v3;
  v5 = [v0 superview];
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v24.origin.x = v8;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = v14;
    v15 = CGRectGetWidth(v24) + -750.0;
  }

  else
  {
    v15 = -750.0;
  }

  if (qword_100206078 != -1)
  {
    swift_once();
  }

  v16 = [v0 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 == 1)
  {
    v18 = 24.0;
    v19 = 8.0;
  }

  else
  {
    v20 = v15 / 250.0;
    if (v15 / 250.0 <= 0.0)
    {
      v18 = 16.0;
      v19 = 20.0;
    }

    else if (v20 <= 1.0)
    {
      v21 = v20 * 28.0;
      v19 = v20 * 28.0 + 20.0;
      v18 = v21 + 16.0;
    }

    else
    {
      v18 = 44.0;
      v19 = 48.0;
    }
  }

  return [*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfView] setFrame:{v19, v18, v2, v4}];
}

void sub_1000B4F64()
{
  v1 = *(v0 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_borderColor);
}

void sub_1000B50B8()
{
  if (qword_100206078 != -1)
  {
    swift_once();
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1];

  if (v2)
  {
    *&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_baseImage] = v2;
    v3 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_tiledImages;
    sub_100005804(&qword_10020B1B8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10019B3A0;
    *(v4 + 32) = _swiftEmptyArrayStorage;
    *(v4 + 40) = _swiftEmptyArrayStorage;
    *&v0[v3] = v4;
    v10.receiver = v0;
    v10.super_class = type metadata accessor for ImageCardTiledImageView();
    v5 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v6 = qword_10020B038;
    v7 = v5;
    [v7 setBackgroundColor:v6];
    v8 = [v7 layer];
    v9 = *&xmmword_10020B000;
    [v8 setMaskedCorners:15];
    [v8 setCornerRadius:v9];
    [v8 setCornerCurve:kCACornerCurveContinuous];

    [v7 setClipsToBounds:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B52B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = a4(isCurrentExecutor);

  return v6;
}

void sub_1000B5364()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for ImageCardTiledImageView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_baseImage] size];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  if (!CGRectIsEmpty(v22))
  {
    v6 = v3 * 0.8;
    v7 = v5 * 0.8;
    sub_1000B5754(v6);
    v8 = *(*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_tiledImages] + 16);
    v19 = *&v1[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_tiledImages];

    if (v8)
    {
      v9 = 0;
      v18 = v1;
      v10 = 0.0;
      while (v9 < *(v19 + 16))
      {
        v11 = *(v19 + 32 + 8 * v9);
        type metadata accessor for MainActor();

        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        [v1 bounds];
        MaxX = CGRectGetMaxX(v23);
        v20 = v9;
        if (v11 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (v13)
          {
LABEL_10:
            v14 = 0;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_24;
                }

                v15 = *(v11 + 8 * v14 + 32);
              }

              v16 = v15;
              v17 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              static MainActor.shared.getter();
              dispatch thunk of Actor.unownedExecutor.getter();
              if ((swift_task_isCurrentExecutor() & 1) == 0)
              {
                swift_task_reportUnexpectedExecutor();
              }

              MaxX = MaxX - v6;

              [v16 setFrame:{MaxX, v10, v6, v7}];

              ++v14;
              if (v17 == v13)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_24:
            __break(1u);
            break;
          }
        }

        else
        {
          v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_10;
          }
        }

LABEL_4:
        ++v9;

        v10 = v7 + v10;
        v1 = v18;
        if (v20 + 1 == v8)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:
    }
  }
}

void sub_1000B5688(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

void sub_1000B5754(double a1)
{
  v2 = v1;
  [v1 bounds];
  v4 = ceil(CGRectGetWidth(v18) / a1);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v5 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_tiledImages;
  v6 = *&v1[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_tiledImages];
  v7 = *(v6 + 16);
  if (v7)
  {
    v15 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_tiledImages;
    v16 = v4;

    sub_1000B631C(0, v7, 0);
    v8 = 0;
    v9 = *(v6 + 16);
    while (v9 != v8)
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v6 + 8 * v8 + 32);

      v11 = v2;
      v12 = sub_1000B6FE8(v8, v10, v16, v2);

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000B631C((v13 > 1), v14 + 1, 1);
      }

      v8 = (v8 + 1);
      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
      v2 = v11;
      if (v7 == v8)
      {

        v5 = v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  *&v2[v5] = _swiftEmptyArrayStorage;
}

uint64_t sub_1000B5938()
{
}

id sub_1000B5A3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000B5AB0(void *a1, void *a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD21CardShadowPlatterView_borderWidth] = a3;
  *&v3[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD21CardShadowPlatterView_borderColor] = a1;
  *&v3[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD21CardShadowPlatterView_fillColor] = a2;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v8 = a1;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000B5BFC();
  sub_100005804(&qword_100207228);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10019A9F0;
  *(v11 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v11 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v10;
}

void sub_1000B5BFC()
{
  v1 = [v0 layer];
  v2 = [*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD21CardShadowPlatterView_fillColor] CGColor];
  [v1 setBackgroundColor:v2];

  v3 = [v0 layer];
  v4 = [*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD21CardShadowPlatterView_borderColor] CGColor];
  [v3 setBorderColor:v4];

  v5 = [v0 layer];
  [v5 setBorderWidth:*&v0[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD21CardShadowPlatterView_borderWidth]];

  v6 = [v0 layer];
  if (qword_100206078 != -1)
  {
    swift_once();
  }

  v7 = *&xmmword_10020B000;
  [v6 setMaskedCorners:15];
  [v6 setCornerRadius:v7];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  v8 = [v0 layer];
  v9 = [objc_opt_self() blackColor];
  v10 = [v9 CGColor];

  [v8 setShadowColor:v10];
  v11 = [v0 layer];
  LODWORD(v12) = dword_10020B018;
  [v11 setShadowOpacity:v12];

  v13 = [v0 layer];
  [v13 setShadowOffset:xmmword_10020B020];

  v14 = [v0 layer];
  [v14 setShadowRadius:*&qword_10020B010];

  v15 = [v0 layer];
  [v15 setMasksToBounds:0];
}

uint64_t sub_1000B5EFC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

void sub_1000B5F98()
{
  v1 = *(v0 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD21CardShadowPlatterView_fillColor);
}

void sub_1000B6048(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100005804(&qword_100208B38);
      v7 = *(type metadata accessor for DocumentEntity() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j_j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for DocumentEntity();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1000B61E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000085D8(0, &qword_10020B1A0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100005804(&qword_1002064F0);
      v7 = swift_allocObject();
      v8 = j_j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

size_t sub_1000B62DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B633C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000B62FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B6514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000B631C(void *a1, int64_t a2, char a3)
{
  result = sub_1000B6704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000B633C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005804(&qword_100208B38);
  v10 = *(type metadata accessor for DocumentEntity() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j_j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DocumentEntity() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1000B6514(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005804(&qword_1002089B8);
  v10 = *(sub_100005804(&qword_100208980) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j_j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100005804(&qword_100208980) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000B6704(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005804(&qword_10020B1B8);
    v10 = swift_allocObject();
    v11 = j_j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      j__memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005804(&qword_10020B1A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000B683C(uint64_t a1)
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

uint64_t sub_1000B68DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000B683C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000B69CC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000B69CC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000B76A4();
          for (i = 0; i != v6; ++i)
          {
            sub_100005804(&qword_10020B1A8);
            v9 = sub_1000B6B5C(v13, i, a3);
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
        sub_1000085D8(0, &qword_10020B1A0);
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

void (*sub_1000B6B5C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000B6BDC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B6C1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a4(isCurrentExecutor);
}

id sub_1000B6CD0(void *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = [objc_opt_self() systemBackgroundColor];
  }

  v4 = OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor;
  v5 = *(v1 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor);
  *(v1 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor) = v3;
  v6 = a1;
  v7 = v3;

  [*(v1 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD8CardView_contentsContainer) setBackgroundColor:v7];
  v8 = *(v1 + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard_pdfView);
  [v8 setBackgroundColor:*(v1 + v4)];
  v9 = *(v1 + v4);

  return [v8 setPageColor:v9];
}

void sub_1000B6DAC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100206078 != -1)
  {
    swift_once();
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 URLForResource:v5 withExtension:v6];

  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = objc_allocWithZone(PDFDocument);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = [v8 initWithURL:v10];

    (*(v1 + 8))(v3, v0);
    if (v12)
    {
      v13 = [v12 pageAtIndex:0];
      if (v13)
      {
        v14 = v13;
        v15 = objc_allocWithZone(type metadata accessor for PDFCard());
        sub_1000B3F94(v12, v14);
        return;
      }
    }

    v16 = objc_allocWithZone(type metadata accessor for CardView());
    sub_1000B4374(1, 0);
  }

  else
  {
    __break(1u);
  }
}

char *sub_1000B6FE8(char **a1, uint64_t a2, uint64_t a3, char *a4)
{
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_79;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = a3 - v11;
  if (!__OFSUB__(a3, v11))
  {
    goto LABEL_5;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_85:
    __break(1u);
    do
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      do
      {
        __break(1u);
LABEL_90:
        swift_unknownObjectRelease();
        v26 = v8;
LABEL_38:
        sub_1000B61E8(a1, v26, v9, v4);
        for (i = v29; ; i = _swiftEmptyArrayStorage)
        {
          result = swift_unknownObjectRelease();
          v33 = a2 & 0xFFFFFFFFFFFFFF8;
          if (v10)
          {
            break;
          }

LABEL_45:
          v9 = *(v33 + 16);
          if (v9 >= a3)
          {
            goto LABEL_54;
          }

          __break(1u);
LABEL_47:
          ;
        }

LABEL_49:
        if (a2 < 0)
        {
          a1 = a2;
        }

        else
        {
          a1 = v33;
        }

        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      while (v34 < a3);
      v9 = v34;
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    while (result < v9);
LABEL_54:
    if (!v12 || v9 == a3)
    {

      a4 = i;
      if (!v10)
      {
LABEL_60:
        v37 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_63;
      }

LABEL_62:

      _CocoaArrayWrapper.subscript.getter();
      v37 = v38;
      a3 = v39;
      v9 = (v40 >> 1);
LABEL_63:
      swift_unknownObjectRetain();
      v8 = &v9[-a3];
      if (v9 == a3)
      {
LABEL_64:

        swift_unknownObjectRelease_n();
        return a4;
      }

      if (v9 <= a3)
      {
        v41 = a3;
      }

      else
      {
        v41 = v9;
      }

      v42 = a3;
      a3 = v41 - a3;
      v4 = v37 + 8 * v42;
      a1 = &selRef_addGestureRecognizer_;
      v10 = "Preview/DocumentLaunchCardViews.swift";
      while (a3)
      {
        v43 = *v4;
        v9 = static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        a2 = v44;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        [v43 removeFromSuperview];

        --a3;
        v4 += 8;
        if (!--v8)
        {
          goto LABEL_64;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_79:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        v12 = a3 - v11;
        if (__OFSUB__(a3, v11))
        {
          goto LABEL_81;
        }

LABEL_5:
        if ((v12 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (!v12)
        {

          return a2;
        }

        if (v11 > a3)
        {
          goto LABEL_82;
        }

        v48 = _swiftEmptyArrayStorage;
        v9 = &v48;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (a1 > 1)
        {
          goto LABEL_83;
        }

        v45 = a2;
        v13 = 0;
        a2 = *&a4[OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD23ImageCardTiledImageView_baseImage];
        v46 = &off_1001EE8E8 + a1;
        while (v13 < v12)
        {
          v8 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_74;
          }

          v4 = a3;
          v9 = static MainActor.shared.getter();
          a1 = dispatch thunk of Actor.unownedExecutor.getter();
          v10 = v14;
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          a3 = v46[4];
          v15 = *(a3 + 16);
          if (!v15)
          {
            goto LABEL_75;
          }

          v16 = (v11 + v13) % v15;
          if (v16 < 0)
          {
            goto LABEL_76;
          }

          v17 = qword_1001A0A10[*(a3 + v16 + 32)];

          result = [a2 CGImage];
          if (!result)
          {
            goto LABEL_92;
          }

          v19 = result;

          [a2 scale];
          v21 = [objc_allocWithZone(UIImage) initWithCGImage:v19 scale:v17 orientation:v20];

          v10 = [objc_allocWithZone(UIImageView) initWithImage:v21];
          [a4 addSubview:v10];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          a1 = v48[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = &v48;
          specialized ContiguousArray._endMutation()();
          ++v13;
          if ((v11 + v13 - 1) >= v4)
          {
            goto LABEL_77;
          }

          a3 = v4;
          if (v8 == v12)
          {
            v22 = v48;
            v48 = v45;

            sub_1000B68DC(v22);

            return v48;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (a3 < 0)
      {
        continue;
      }

      if (v10)
      {
        if (a2 < 0)
        {
          a1 = a2;
        }

        else
        {
          a1 = (a2 & 0xFFFFFFFFFFFFFF8);
        }

        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          goto LABEL_87;
        }

        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v23 < a3)
      {
        goto LABEL_85;
      }

      v12 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0 && a3)
      {
        sub_1000085D8(0, &qword_10020B1A0);

        v24 = 0;
        do
        {
          v25 = v24 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v24);
          v24 = v25;
        }

        while (a3 != v25);
        if (!v10)
        {
          goto LABEL_35;
        }
      }

      else
      {

        if (!v10)
        {
LABEL_35:
          v9 = 0;
          a1 = (a2 & 0xFFFFFFFFFFFFFF8);
          v26 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * a3) | 1;
          goto LABEL_39;
        }
      }

      a1 = _CocoaArrayWrapper.subscript.getter();
      v9 = v27;
      v4 = v28;
      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      v8 = v26;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = _swiftEmptyArrayStorage;
      }

      v32 = v31[2];

      if (__OFSUB__(v4 >> 1, v9))
      {
        goto LABEL_88;
      }

      if (v32 != (v4 >> 1) - v9)
      {
        goto LABEL_90;
      }

      i = swift_dynamicCastClass();
      result = swift_unknownObjectRelease();
      if (i)
      {
        v33 = a2 & 0xFFFFFFFFFFFFFF8;
        if (v10)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }

      goto LABEL_47;
    }

    break;
  }

  if (v9 > a3)
  {
    sub_1000085D8(0, &qword_10020B1A0);

    v35 = a3;
    do
    {
      v36 = (v35 + 1);
      _ArrayBuffer._typeCheckSlowPath(_:)(v35);
      v35 = v36;
    }

    while (v9 != v36);
    a4 = i;
    if (!v10)
    {
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

unint64_t sub_1000B76A4()
{
  result = qword_10020B1B0;
  if (!qword_10020B1B0)
  {
    sub_1000059D4(&qword_10020B1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B1B0);
  }

  return result;
}

id sub_1000B772C(void *a1)
{
  v1 = a1;
  v2 = qword_100218730;
  if (!qword_100218730)
  {
    if (!csr_check())
    {
      v3 = [NSBundle bundleWithIdentifier:@"com.apple.ImageIO"];
      v4 = qword_100218730;
      qword_100218730 = v3;
    }

    v2 = qword_100218730;
    if (!qword_100218730)
    {
      v5 = [[NSBundle alloc] initWithPath:@"/System/Library/Frameworks/ImageIO.framework"];
      v6 = qword_100218730;
      qword_100218730 = v5;

      v2 = qword_100218730;
    }
  }

  v7 = v2;
  v8 = [v7 localizedStringForKey:v1 value:@"VALUE-NOT-PRESENT" table:@"CGImageSource"];
  v9 = [v8 isEqualToString:@"VALUE-NOT-PRESENT"];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = [v7 localizedStringForKey:v1 value:@"VALUE-NOT-PRESENT" table:@"CGImageSourceNonLocalized"];

    v8 = v11;
  }

  if (([v8 isEqualToString:@"VALUE-NOT-PRESENT"] & 1) != 0 || !v8)
  {
    v12 = v1;

    v8 = v12;
  }

  return v8;
}

__CFString *sub_1000B7874(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet whitespaceCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];
  v4 = [v3 isEqual:{@", "}];

  if (!v4)
  {
    v6 = sub_1000BC318();
    v7 = [v6 localizedStringForKey:v1 value:v1 table:@"CGImagePropertiesExtractor"];
    goto LABEL_5;
  }

  v5 = +[NSLocale autoupdatingCurrentLocale];
  v6 = [v5 groupingSeparator];

  if ([v6 length])
  {
    v7 = [v6 stringByAppendingString:@" "];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  v8 = @", ";
LABEL_6:

  return v8;
}

void sub_1000B7AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B7B14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B7B2C(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [NSNumberFormatter localizedStringFromNumber:v11 numberStyle:1];
    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 length])
  {
    goto LABEL_11;
  }

  for (i = 0; i < [v11 length]; ++i)
  {
    v5 = +[NSCharacterSet decimalDigitCharacterSet];
    v6 = [v5 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", i)}];

    if (!v6)
    {
      break;
    }
  }

  if (i != [v11 length] || (+[NSDecimalNumber decimalNumberWithString:](NSDecimalNumber, "decimalNumberWithString:", v11), v7 = objc_claimAutoreleasedReturnValue(), +[NSNumberFormatter localizedStringFromNumber:numberStyle:](NSNumberFormatter, "localizedStringFromNumber:numberStyle:", v7, 1), v3 = objc_claimAutoreleasedReturnValue(), v7, !v3))
  {
LABEL_11:
    v3 = v11;
  }

LABEL_12:
  v8 = [*(*(*(a1 + 40) + 8) + 40) length];
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    [v9 appendFormat:@"%@%@", *(a1 + 32), v3];
  }

  else
  {
    [v9 appendFormat:@"%@", v3, v10];
  }
}

void sub_1000B7E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) stringForObjectValue:a2];
  [v2 appendFormat:@"%@.", v3];
}

id sub_1000BC318()
{
  if (NSClassFromString(@"XCTestCase"))
  {
    [NSBundle bundleForClass:NSClassFromString(@"CGImagePropertiesExtractor")];
  }

  else
  {
    +[NSBundle mainBundle];
  }
  v0 = ;

  return v0;
}

uint64_t sub_1000BC554()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

__n128 sub_1000BD238(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000BD32C()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000BD398()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000BD40C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000BD484(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000BD504@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000BD548()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000BD584()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000BD5D8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1000BD64C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1000BD790()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000BD898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BD91C@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000BD964@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000BD990(uint64_t a1)
{
  v2 = sub_1000BD898(&qword_10020B3A8, type metadata accessor for PDFDocumentAttribute);
  v3 = sub_1000BD898(&qword_10020B3B0, type metadata accessor for PDFDocumentAttribute);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_1000BDBDC(uint64_t a1, unint64_t *a2)
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

Swift::Int sub_1000BDC34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000BDD2C()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1000BDD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000BDDD4()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000BDEBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1000BDFAC()
{
  v202 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v202);
  v195 = v179 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for LocalizedStringResource();
  v207 = *(v203 - 8);
  __chkstk_darwin(v203);
  v194 = v179 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = _s13FakeDomainKeyVMa();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v206 = v179 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v179 - v4;
  v201 = v6;
  __chkstk_darwin(v7);
  v9 = v179 - v8;
  v10 = sub_1000BFBAC(&qword_10020B3C8);
  __chkstk_darwin(v10 - 8);
  v12 = v179 - v11;
  v191 = type metadata accessor for URL();
  v13 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v179 - v16;
  __chkstk_darwin(v18);
  v20 = v179 - v19;
  v21 = [objc_opt_self() mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 URLForResource:v22 withExtension:v23];

  v185 = v20;
  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v13 + 32);
    v26 = v191;
    v25(v12, v17, v191);
    (*(v13 + 56))(v12, 0, 1, v26);
    v25(v20, v12, v26);
  }

  else
  {
    v27 = v191;
    (*(v13 + 56))(v12, 1, 1, v191);
    URL.init(fileURLWithPath:)();
    if ((*(v13 + 48))(v12, 1, v27) != 1)
    {
      sub_1000BFBF4(v12);
    }
  }

  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v30 = [v29 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v188;
  URL.appendingPathComponent(_:)();
  v32 = *(v13 + 8);
  v184 = v13 + 8;
  v183 = v32;
  v32(v17, v191);
  v33 = [v28 defaultManager];
  URL.path.getter();
  v34 = String._bridgeToObjectiveC()();

  LOBYTE(v29) = [v33 fileExistsAtPath:v34];

  if ((v29 & 1) == 0)
  {
    v35 = [v28 defaultManager];
    URL._bridgeToObjectiveC()(&v210);
    v37 = v36;
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    v210._clients = 0;
    v41 = [v35 copyItemAtURL:v37 toURL:v39 error:&v210._clients];

    if (v41)
    {
      v42 = v210._clients;
    }

    else
    {
      v43 = v210._clients;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000BFBAC(&qword_10020B3D0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_10019A9F0;
      v210._clients = 0;
      v210._reserved = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v210._clients = 0xD000000000000015;
      v210._reserved = 0x80000001001B3A90;
      swift_getErrorValue();
      v45._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v45);

      clients = v210._clients;
      reserved = v210._reserved;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 32) = clients;
      *(v44 + 40) = reserved;
      print(_:separator:terminator:)();

      v31 = v188;
    }
  }

  v182 = 0;
  v181 = v17;
  (*(v13 + 16))(v17, v31, v191);
  v179[1] = sub_1000BFBAC(&qword_10020B3D8);
  v187 = swift_allocObject();
  v180 = xmmword_10019A6B0;
  *(v187 + 16) = xmmword_10019A6B0;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1001A0EE0;
  v48 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 0;
  *(v9 + 1) = 1684957515;
  *(v9 + 2) = 0xE400000000000000;
  v49 = v5;
  sub_1000BFC5C(v9, v5);
  v211 = v48;
  v193 = sub_1000C04C4(&qword_10020B3E0, _s13FakeDomainKeyVMa);
  v212 = v193;
  v50 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v5, v50);
  sub_1000BFD24(v9);
  v51 = v206;
  sub_1000BFE38(v5, v206, _s13FakeDomainKeyVMa);
  v200 = *(v204 + 80);
  v52 = (v200 + 16) & ~v200;
  v204 = v52;
  v53 = swift_allocObject();
  sub_1000BFE38(v51, v53 + v52, _s13FakeDomainKeyVMa);
  v213 = sub_1000BFD84;
  v214 = v53;
  v54 = objc_allocWithZone(NSString);
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 initWithString:v55];

  String.init(_:)(v56);
  v57 = v194;
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v58 = v207;
  v197 = *(v207 + 16);
  v199 = v207 + 16;
  v59 = v195;
  v60 = v203;
  v197(v195, v57, v203);
  swift_storeEnumTagMultiPayload();
  v61 = type metadata accessor for ContentMetadata.RowData(0);
  v62 = swift_allocObject();
  ObservationRegistrar.init()();
  v63 = *(v58 + 8);
  v207 = v58 + 8;
  v192 = v63;
  v63(v57, v60);
  sub_1000BFDE4(&v210._clients);
  v64 = v209;
  *(v62 + 16) = v208;
  *(v62 + 32) = v64;
  *(v62 + 48) = *&v210.super.isa;
  *(v62 + 64) = v210._baseURL;
  v198 = type metadata accessor for ContentMetadataValue;
  sub_1000BFE38(v59, v62 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, type metadata accessor for ContentMetadataValue);
  v65 = v190;
  *(v190 + 32) = v62;
  v66 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 0;
  *(v9 + 1) = 1702521171;
  *(v9 + 2) = 0xE400000000000000;
  sub_1000BFC5C(v9, v49);
  v211 = v66;
  v212 = v193;
  v67 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v49, v67);
  sub_1000BFD24(v9);
  v68 = v206;
  v196 = _s13FakeDomainKeyVMa;
  sub_1000BFE38(v49, v206, _s13FakeDomainKeyVMa);
  v69 = v204;
  v70 = swift_allocObject();
  sub_1000BFE38(v68, v70 + v69, _s13FakeDomainKeyVMa);
  v213 = sub_1000C0528;
  v214 = v70;
  v71 = objc_allocWithZone(NSString);
  v72 = String._bridgeToObjectiveC()();
  v73 = [v71 initWithString:v72];

  String.init(_:)(v73);
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v74 = v195;
  v75 = v203;
  v197(v195, v57, v203);
  swift_storeEnumTagMultiPayload();
  v76 = swift_allocObject();
  ObservationRegistrar.init()();
  v77 = v57;
  v78 = v75;
  v192(v77, v75);
  sub_1000BFDE4(&v210._clients);
  v79 = v209;
  *(v76 + 16) = v208;
  *(v76 + 32) = v79;
  *(v76 + 48) = *&v210.super.isa;
  *(v76 + 64) = v210._baseURL;
  sub_1000BFE38(v74, v76 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v198);
  *(v65 + 40) = v76;
  v80 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 0;
  *(v9 + 1) = 0x64657461657243;
  *(v9 + 2) = 0xE700000000000000;
  v81 = v49;
  v186 = v49;
  sub_1000BFC5C(v9, v49);
  v82 = v193;
  v211 = v80;
  v212 = v193;
  v83 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v81, v83);
  sub_1000BFD24(v9);
  v84 = v206;
  v85 = v196;
  sub_1000BFE38(v81, v206, v196);
  v86 = v204;
  v87 = swift_allocObject();
  sub_1000BFE38(v84, v87 + v86, v85);
  v213 = sub_1000C0528;
  v214 = v87;
  v88 = objc_allocWithZone(NSString);
  v89 = String._bridgeToObjectiveC()();
  v90 = [v88 initWithString:v89];

  String.init(_:)(v90);
  v91 = v194;
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v92 = v195;
  v197(v195, v91, v78);
  swift_storeEnumTagMultiPayload();
  v189 = v61;
  v93 = swift_allocObject();
  ObservationRegistrar.init()();
  v94 = v192;
  v192(v91, v78);
  sub_1000BFDE4(&v210._clients);
  v95 = v209;
  *(v93 + 16) = v208;
  *(v93 + 32) = v95;
  *(v93 + 48) = *&v210.super.isa;
  *(v93 + 64) = v210._baseURL;
  v96 = v198;
  sub_1000BFE38(v92, v93 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v198);
  v97 = v190;
  *(v190 + 48) = v93;
  v98 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 0;
  *(v9 + 1) = 0x6572656857;
  *(v9 + 2) = 0xE500000000000000;
  v99 = v186;
  sub_1000BFC5C(v9, v186);
  v211 = v98;
  v212 = v82;
  v100 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v99, v100);
  sub_1000BFD24(v9);
  v101 = v206;
  v102 = v196;
  sub_1000BFE38(v99, v206, v196);
  v103 = v204;
  v104 = swift_allocObject();
  sub_1000BFE38(v101, v104 + v103, v102);
  v213 = sub_1000C0528;
  v214 = v104;
  v105 = objc_allocWithZone(NSString);
  v106 = String._bridgeToObjectiveC()();
  v107 = [v105 initWithString:v106];

  String.init(_:)(v107);
  v108 = v194;
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v109 = v195;
  v110 = v203;
  v111 = v197;
  v197(v195, v108, v203);
  swift_storeEnumTagMultiPayload();
  v112 = swift_allocObject();
  ObservationRegistrar.init()();
  v94(v108, v110);
  sub_1000BFDE4(&v210._clients);
  v113 = v209;
  *(v112 + 16) = v208;
  *(v112 + 32) = v113;
  *(v112 + 48) = *&v210.super.isa;
  *(v112 + 64) = v210._baseURL;
  sub_1000BFE38(v109, v112 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v96);
  *(v97 + 56) = v112;
  v114 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 0;
  *(v9 + 1) = 0xD00000000000003ELL;
  *(v9 + 2) = 0x80000001001B3AF0;
  v115 = v186;
  sub_1000BFC5C(v9, v186);
  v116 = v193;
  v211 = v114;
  v212 = v193;
  v117 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v115, v117);
  sub_1000BFD24(v9);
  v118 = v206;
  v119 = v196;
  sub_1000BFE38(v115, v206, v196);
  v120 = v204;
  v121 = swift_allocObject();
  sub_1000BFE38(v118, v121 + v120, v119);
  v213 = sub_1000C0528;
  v214 = v121;
  v122 = objc_allocWithZone(NSString);
  v123 = String._bridgeToObjectiveC()();
  v124 = [v122 initWithString:v123];

  String.init(_:)(v124);
  v125 = v194;
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v126 = v195;
  v127 = v203;
  v111(v195, v125, v203);
  swift_storeEnumTagMultiPayload();
  v128 = swift_allocObject();
  ObservationRegistrar.init()();
  v192(v125, v127);
  sub_1000BFDE4(&v210._clients);
  v129 = v209;
  *(v128 + 16) = v208;
  *(v128 + 32) = v129;
  *(v128 + 48) = *&v210.super.isa;
  *(v128 + 64) = v210._baseURL;
  sub_1000BFE38(v126, v128 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v198);
  *(v190 + 64) = v128;
  v130 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 0;
  *(v9 + 1) = 0x6F69736E656D6944;
  *(v9 + 2) = 0xE90000000000006ELL;
  sub_1000BFC5C(v9, v115);
  v211 = v130;
  v212 = v116;
  v131 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v115, v131);
  sub_1000BFD24(v9);
  v132 = v206;
  v133 = v196;
  sub_1000BFE38(v115, v206, v196);
  v134 = v204;
  v135 = swift_allocObject();
  sub_1000BFE38(v132, v135 + v134, v133);
  v213 = sub_1000C0528;
  v214 = v135;
  v136 = objc_allocWithZone(NSString);
  v137 = String._bridgeToObjectiveC()();
  v138 = [v136 initWithString:v137];

  String.init(_:)(v138);
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v139 = v203;
  v197(v126, v125, v203);
  swift_storeEnumTagMultiPayload();
  v140 = swift_allocObject();
  ObservationRegistrar.init()();
  v141 = v192;
  v192(v125, v139);
  sub_1000BFDE4(&v210._clients);
  v142 = v209;
  *(v140 + 16) = v208;
  *(v140 + 32) = v142;
  *(v140 + 48) = *&v210.super.isa;
  *(v140 + 64) = v210._baseURL;
  sub_1000BFE38(v126, v140 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v198);
  v143 = v190;
  *(v190 + 72) = v140;
  type metadata accessor for ContentMetadata.RowDataGroup(0);
  v144 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v144 + 16) = 0;
  *(v144 + 24) = v143;
  *(v187 + 32) = v144;
  v190 = swift_allocObject();
  *(v190 + 16) = v180;
  v145 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 1;
  *(v9 + 1) = 0x614C2074726F6853;
  *(v9 + 2) = 0xEB000000006C6562;
  sub_1000BFC5C(v9, v115);
  v211 = v145;
  v212 = v193;
  v146 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v115, v146);
  sub_1000BFD24(v9);
  v147 = v206;
  v148 = v196;
  sub_1000BFE38(v115, v206, v196);
  v149 = v204;
  v150 = swift_allocObject();
  sub_1000BFE38(v147, v150 + v149, v148);
  v213 = sub_1000C0528;
  v214 = v150;
  *&v180 = " is much longer than the value";
  v151 = objc_allocWithZone(NSString);
  v152 = String._bridgeToObjectiveC()();
  v153 = [v151 initWithString:v152];

  String.init(_:)(v153);
  v154 = v194;
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v155 = v203;
  v197(v126, v154, v203);
  swift_storeEnumTagMultiPayload();
  v156 = swift_allocObject();
  ObservationRegistrar.init()();
  v141(v154, v155);
  sub_1000BFDE4(&v210._clients);
  v157 = v209;
  *(v156 + 16) = v208;
  *(v156 + 32) = v157;
  *(v156 + 48) = *&v210.super.isa;
  *(v156 + 64) = v210._baseURL;
  sub_1000BFE38(v126, v156 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v198);
  *(v190 + 32) = v156;
  v158 = v205;
  LocalizedStringResource.init(stringLiteral:)();
  *v9 = 1;
  *(v9 + 1) = 0xD000000000000014;
  *(v9 + 2) = 0x80000001001B3B80;
  sub_1000BFC5C(v9, v115);
  v211 = v158;
  v212 = v193;
  v159 = sub_1000BFCC0(&v210._clients);
  sub_1000BFC5C(v115, v159);
  sub_1000BFD24(v9);
  v160 = v115;
  v161 = v206;
  v162 = v196;
  sub_1000BFE38(v160, v206, v196);
  v163 = v204;
  v164 = swift_allocObject();
  sub_1000BFE38(v161, v164 + v163, v162);
  v213 = sub_1000C0528;
  v214 = v164;
  v165 = objc_allocWithZone(NSString);
  v166 = String._bridgeToObjectiveC()();
  v167 = [v165 initWithString:v166];

  String.init(_:)(v167);
  LocalizedStringResource.init(stringLiteral:)();
  sub_1000BFD88(&v210._clients, &v208);
  v197(v126, v154, v155);
  swift_storeEnumTagMultiPayload();
  v168 = swift_allocObject();
  ObservationRegistrar.init()();
  v192(v154, v155);
  sub_1000BFDE4(&v210._clients);
  v169 = v209;
  *(v168 + 16) = v208;
  *(v168 + 32) = v169;
  *(v168 + 48) = *&v210.super.isa;
  *(v168 + 64) = v210._baseURL;
  sub_1000BFE38(v126, v168 + OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata, v198);
  v170 = v190;
  *(v190 + 40) = v168;
  v171 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v171 + 16) = 1;
  *(v171 + 24) = v170;
  v172 = v187;
  *(v187 + 40) = v171;
  type metadata accessor for ContentMetadata(0);
  swift_allocObject();
  v173 = sub_1000E1AB4(v181, 0, v172);
  v174 = CLLocationCoordinate2DMake(37.331944, -122.0306);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v179[-4] = v173;
  *&v179[-3] = v174;
  LOBYTE(v179[-1]) = 0;
  v210._clients = v173;
  sub_1000C04C4(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v176 = v191;
  v177 = v183;
  v183(v188, v191);
  v177(v185, v176);
  return v173;
}

uint64_t _s13FakeDomainKeyVMa()
{
  result = qword_10020B448;
  if (!qword_10020B448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BFBAC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000BFBF4(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020B3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BFC5C(uint64_t a1, uint64_t a2)
{
  v4 = _s13FakeDomainKeyVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000BFCC0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000BFD24(uint64_t a1)
{
  v2 = _s13FakeDomainKeyVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BFE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BFEA0()
{
  v1 = (_s13FakeDomainKeyVMa() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = type metadata accessor for LocalizedStringResource();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000BFF88(uint64_t a1)
{
  v3 = *(_s13FakeDomainKeyVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000F0294(a1, v4);
}

uint64_t sub_1000C0024(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 0x6E6F6D6D6F63;
  v5 = *a1;
  v6 = *a2;
  if (v5 <= 1)
  {
    if (*a1)
    {
      v9 = 0x6567616D69;
    }

    else
    {
      v9 = 0x6E6F6D6D6F63;
    }

    if (v5)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = 0x7369566F69647561;
    v8 = 0xEB000000006C6175;
    if (v5 != 3)
    {
      v7 = 0x69736568746E7973;
      v8 = 0xEB0000000064657ALL;
    }

    if (v5 == 2)
    {
      v9 = 6710384;
    }

    else
    {
      v9 = v7;
    }

    if (v5 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }
  }

  v11 = 0xE600000000000000;
  v12 = 0xE300000000000000;
  v13 = 6710384;
  v14 = 0x7369566F69647561;
  v15 = 0xEB000000006C6175;
  if (v6 != 3)
  {
    v14 = 0x69736568746E7973;
    v15 = 0xEB0000000064657ALL;
  }

  if (v6 != 2)
  {
    v13 = v14;
    v12 = v15;
  }

  if (*a2)
  {
    v4 = 0x6567616D69;
    v11 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v16 = v4;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = v11;
  }

  else
  {
    v17 = v12;
  }

  if (v9 == v16 && v10 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  _s13FakeDomainKeyVMa();

  return static LocalizedStringResource.== infix(_:_:)();
}

uint64_t sub_1000C023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C02FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedStringResource();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C03A0()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C046C(uint64_t a1)
{
  result = sub_1000C04C4(&qword_10020B490, _s13FakeDomainKeyVMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C04C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C052C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

__n128 sub_1000C098C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1000C09C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000C09E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000C0A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C0AAC()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  v10[0] = v2;
  sub_1000C5588(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v2 + 16);
  swift_getKeyPath();
  v10[0] = v3;
  sub_1000C5588(&qword_10020B3E8, type metadata accessor for ContentMetadata);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__groupedRowData;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v10[11] = v5;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  sub_1000C3C18(v1, v10);
  sub_1000BFBAC(&qword_10020B4A0);
  sub_1000BFBAC(&qword_10020B4A8);
  sub_1000C5490(&qword_10020B4B0, &qword_10020B4A0);
  sub_1000C3C98();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000C0D20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C5588(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = sub_1000F4630(*(v3 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000C0DCC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v19[-2] = a2;
  v19[-1] = v7;
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000DE464(v6);
  v9 = Text.init(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v19[2] = v9;
  v19[3] = v11;
  v20 = v13 & 1;
  v21 = v15;
  sub_1000BFBAC(&qword_10020B528);
  v16 = sub_1000C3C50(&qword_10020B4C0);
  v17 = sub_1000C453C(&qword_10020B4C8, &qword_10020B4C0, &unk_1001A1180, sub_1000C3DA0);
  v19[0] = v16;
  v19[1] = v17;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
}

uint64_t sub_1000C1040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[2] = a3;
  v5 = sub_1000BFBAC(&qword_10020B4C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  type metadata accessor for MainActor();
  v15[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *a1;
  swift_getKeyPath();
  v16[0] = v9;
  sub_1000C5588(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  v10 = sub_1000C1424(a2);

  swift_getKeyPath();
  v16[0] = a2;
  sub_1000C5588(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v16[11] = *(a2 + 24);
  swift_getKeyPath();
  v11 = swift_allocObject();
  v12 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = *(a1 + 80);
  v13 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;

  sub_1000C3C18(a1, v16);
  sub_1000BFBAC(&qword_10020B538);
  sub_1000BFBAC(&qword_10020B4D8);
  sub_1000C5490(&qword_10020B540, &qword_10020B538);
  sub_1000C3DA0();
  ForEach<>.init(_:id:content:)();
  if (v10)
  {
    static VerticalEdge.Set.bottom.getter();
  }

  else
  {
    VerticalEdge.Set.init(rawValue:)();
  }

  sub_1000C453C(&qword_10020B4C8, &qword_10020B4C0, &unk_1001A1180, sub_1000C3DA0);
  View.listSectionSeparator(_:edges:)();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C1424(uint64_t a1)
{
  swift_getKeyPath();
  sub_1000C5588(&qword_10020B530, type metadata accessor for ContentMetadata.RowDataGroup);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = sub_1000F4630(*(a1 + 16));
  v5 = v4;
  swift_getKeyPath();
  v16 = v1;
  sub_1000C5588(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__groupedRowData;
  swift_beginAccess();
  v7 = *(v16 + v6);
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    v15 = 0;
LABEL_17:

    return v15 & 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  v9 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);

LABEL_8:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = sub_1000F4630(*(v10 + 16));
    v13 = v12;

    if (v3 == v11 && v5 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1000C169C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  v61 = sub_1000BFBAC(&qword_10020B500);
  __chkstk_darwin(v61);
  v12 = &v52 - v11;
  v60 = sub_1000BFBAC(&qword_10020B4F8);
  __chkstk_darwin(v60);
  v62 = &v52 - v13;
  v53 = sub_1000BFBAC(&qword_10020B4E8);
  __chkstk_darwin(v53);
  v57 = &v52 - v14;
  v56 = sub_1000BFBAC(&qword_10020B4D8);
  __chkstk_darwin(v56);
  v55 = &v52 - v15;
  v16 = *a1;
  type metadata accessor for MainActor();
  v54 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *a2;
  v18 = *(a2 + 3);
  v19 = *(a2 + 7);
  v87 = *(a2 + 5);
  v88 = v19;
  v89 = *(a2 + 9);
  v85 = *(a2 + 1);
  v86 = v18;
  v20 = *(a2 + 3);
  v21 = *(a2 + 7);
  v75 = *(a2 + 5);
  v76 = v21;
  v77 = *(a2 + 9);
  v73 = *(a2 + 1);
  v74 = v20;

  sub_1000BFBAC(&qword_10020B548);
  State.wrappedValue.getter();
  *v12 = v16;
  *(v12 + 1) = v17;
  v22 = v81;
  *(v12 + 3) = v80;
  *(v12 + 4) = v22;
  *(v12 + 10) = v82;
  v23 = v79;
  *(v12 + 1) = v78;
  *(v12 + 2) = v23;
  type metadata accessor for SimpleListRowView();
  UUID.init()();
  (*(v6 + 16))(v59, v10, v5);
  State.init(wrappedValue:)();
  (*(v6 + 8))(v10, v5);
  v24 = &v12[*(v61 + 36)];
  v24[32] = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  static VerticalEdge.Set.all.getter();
  sub_1000C3F80();
  v25 = v62;
  View.listRowSeparator(_:edges:)();
  sub_1000C5624(v12, &qword_10020B500);
  v26 = static Edge.Set.horizontal.getter();
  v27 = v25 + *(v60 + 36);
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 40) = 1;
  v28 = static Edge.Set.horizontal.getter();
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v73 = v85;
  v74 = v86;
  State.wrappedValue.getter();
  v83[2] = v70;
  v83[3] = v71;
  v84 = v72;
  v83[0] = v68;
  v83[1] = v69;
  sub_1000C4184(v83);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v30 = result;
    MobileGestalt_get_deviceClassNumber();

    EdgeInsets.init(_all:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = v57;
    sub_1000C41B4(v25, v57, &qword_10020B4F8);
    v40 = v39 + *(v53 + 36);
    *v40 = v28;
    *(v40 + 8) = v32;
    *(v40 + 16) = v34;
    *(v40 + 24) = v36;
    *(v40 + 32) = v38;
    *(v40 + 40) = 0;
    v41 = static Edge.Set.vertical.getter();
    v75 = v87;
    v76 = v88;
    v77 = v89;
    v73 = v85;
    v74 = v86;
    State.wrappedValue.getter();
    v70 = v65;
    v71 = v66;
    v72 = v67;
    v68 = v63;
    v69 = v64;
    sub_1000C4184(&v68);
    EdgeInsets.init(_all:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v55;
    sub_1000C41B4(v39, v55, &qword_10020B4E8);
    v51 = v50 + *(v56 + 36);
    *v51 = v41;
    *(v51 + 8) = v43;
    *(v51 + 16) = v45;
    *(v51 + 24) = v47;
    *(v51 + 32) = v49;
    *(v51 + 40) = 0;
    sub_1000C41B4(v50, v58, &qword_10020B4D8);
  }

  else
  {
    __break(1u);
  }

  return result;
}