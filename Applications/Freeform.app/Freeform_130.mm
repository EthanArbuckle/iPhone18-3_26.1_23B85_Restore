Class sub_100FBA994(void *a1)
{
  v1 = a1;
  v2 = sub_100FBAA14();

  if (v2)
  {
    sub_100006370(0, &qword_1019F6BF0);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_100FBAA14()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, "rightBarButtonItems");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006370(0, &qword_1019F6BF0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100FBAA9C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    sub_100006370(0, &qword_1019F6BF0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a1;
  sub_100FBA738(v3);
}

void sub_100FBAB20(void *a1, objc_class *a2)
{
  isa = a2;
  if (a2)
  {
    sub_100006370(0, &qword_1019F6BF0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v4.receiver = a1;
  v4.super_class = type metadata accessor for CRLiOSAutoSizingHostingController.HostingController.NavigationItem();
  objc_msgSendSuper2(&v4, "setRightBarButtonItems:", isa);
}

BOOL sub_100FBABE0(void *a1)
{
  v1 = [a1 customView];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id sub_100FBAC24()
{
  v1 = objc_allocWithZone(v0);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithTitle:v2];

  return v3;
}

id sub_100FBAC94()
{
  ObjectType = swift_getObjectType();
  v2 = String._bridgeToObjectiveC()();

  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "initWithTitle:", v2);

  return v3;
}

id sub_100FBAD3C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100FBADD0()
{
  v1 = *((swift_isaMask & *v0) + qword_101A25C40 + 16);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_100FBAE70(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100FBAE70(void *a1)
{
  v1 = [a1 title];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for CRLiOSAutoSizingHostingController.HostingController.NavigationItem();
  return sub_100FBAC24();
}

id sub_100FBAF30(void *a1)
{
  v1 = a1;
  v2 = sub_100FBAF74();

  return v2;
}

void sub_100FBAF78()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidLayoutSubviews");
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CRLiOSAutoSizingHostingController();
    if (swift_dynamicCastClass())
    {
      CRLiOSAutoSizingHostingController.hostingControllerDidLayoutSubviews()();
    }
  }
}

void sub_100FBAFF8(void *a1)
{
  v1 = a1;
  sub_100FBAF78();
}

void *sub_100FBB084(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_101A25C40);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  *(v2 + *(v7 + 16)) = 0;
  (*(v5 + 16))(&v13 - v8, v6);
  v9 = UIHostingController.init(coder:rootView:)();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_100FBB1C8(void *a1)
{
  ObjectType = swift_getObjectType();
  *(v1 + *((swift_isaMask & *v1) + qword_101A25C40 + 16)) = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_100FBB33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v22 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100006370(0, &qword_1019F2D90);
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v11 + 8);
  v21(v13, v10);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018ABFA0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100FBE50C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v20;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);
  return (v21)(v16, v22);
}

void sub_100FBB6F4(uint64_t a1, void *a2)
{
  v2 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator);
  if (v3)
  {
    sub_100006370(0, &qword_101A25F10);
    v6 = v3;
    v7 = a2;
    LOBYTE(a2) = static NSObject.== infix(_:_:)();

    if (a2)
    {
      v8 = *(a1 + v2);
      *(a1 + v2) = 0;
    }
  }
}

void CRLiOSAutoSizingHostingController.PresentationResizeAction.callAsFunction<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*((swift_isaMask & *Strong) + 0x100))(a1, a2, a3);
  }

  else
  {
    a1();
  }
}

void CRLiOSAutoSizingHostingController.PerformAfterAnimationsAction.callAsFunction(_:)(void (*a1)(void), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(a1, a2);
  }

  else
  {
    a1();
  }
}

uint64_t sub_100FBBA18@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(void, void)@<X4>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a4;
  if (*a1 == -1)
  {
  }

  else
  {
    v10 = a3;
    swift_once();
    a3 = v10;
    v6 = a4;
    v5 = a2;
  }

  return a3(v5, v6);
}

uint64_t sub_100FBBA9C()
{
  v0 = type metadata accessor for CoordinateSpace();
  sub_10061655C(v0, qword_101AD8A68);
  v1 = sub_1005EB3DC(v0, qword_101AD8A68);
  v2 = enum case for CoordinateSpace.global(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100FBBB24@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F27B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CoordinateSpace();
  v3 = sub_1005EB3DC(v2, qword_101AD8A68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100FBBBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100FBE50C(&qword_101A25EB8, &type metadata accessor for CoordinateSpace);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100FBBCBC@<X0>(void *a1@<X8>)
{
  if (qword_1019F27B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_101AD8A80;
}

uint64_t sub_100FBBD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = static Color.clear.getter();
  sub_100FBE898(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_100FBE8FC(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  a3[1] = sub_100FBE9E0;
  a3[2] = v15;
  return result;
}

__n128 sub_100FBBF54(char **a1, uint64_t a2)
{
  v4 = type metadata accessor for CoordinateSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100064110(a2, v24);
  type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0);
  sub_100FBD1D0(&qword_101A25B30, &type metadata accessor for CoordinateSpace, v7);
  GeometryProxy.frame(in:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  *(&v25 + 1) = v9;
  *&v26 = v11;
  *(&v26 + 1) = v13;
  v27 = v15;
  v16 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_100B39154(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_100B39154((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[72 * v18];
  *(v19 + 2) = v24[0];
  result = v24[1];
  v21 = v25;
  v22 = v26;
  *(v19 + 12) = v27;
  *(v19 + 4) = v21;
  *(v19 + 5) = v22;
  *(v19 + 3) = result;
  *a1 = v16;
  return result;
}

uint64_t sub_100FBC134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  sub_100FBE898(v3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_100FBE8FC(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = sub_1005B981C(&qword_101A25EC0);
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v14 = (a3 + *(sub_1005B981C(&qword_101A25EC8) + 36));
  *v14 = sub_100FBE960;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v12;
  v15 = sub_1005B981C(&qword_101A25ED0);
  return sub_100064110(v3, a3 + *(v15 + 52));
}

BOOL sub_100FBC2C4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CRLiOSAutoSizingHostingController.AdditionalSafeAreasModifier(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100FBEBD4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return (v6 & 1) == 0;
}

uint64_t sub_100FBC420(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A25ED8);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v5 = sub_1005B981C(&qword_101A25EE0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  if ([objc_opt_self() crl_phoneUI] && (v8 = objc_opt_self(), objc_msgSend(v8, "crl_screenClassPhoneUIRegularOrLarge")) && objc_msgSend(v8, "crl_deviceIsLandscape") && sub_100FBC2C4())
  {
    v9 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1005B981C(&qword_101A25EE8);
    (*(*(v18 - 8) + 16))(v7, a1, v18);
    v19 = &v7[*(v5 + 36)];
    *v19 = v9;
    *(v19 + 1) = v11;
    *(v19 + 2) = v13;
    *(v19 + 3) = v15;
    *(v19 + 4) = v17;
    v19[40] = 0;
    sub_10000BE14(v7, v4, &qword_101A25EE0);
    swift_storeEnumTagMultiPayload();
    sub_100FBEAB4();
    sub_10001A2F8(&qword_101A25EF8, &qword_101A25EE8);
    _ConditionalContent<>.init(storage:)();
    return sub_100FBEB6C(v7);
  }

  else
  {
    v21 = sub_1005B981C(&qword_101A25EE8);
    (*(*(v21 - 8) + 16))(v4, a1, v21);
    swift_storeEnumTagMultiPayload();
    sub_100FBEAB4();
    sub_10001A2F8(&qword_101A25EF8, &qword_101A25EE8);
    return _ConditionalContent<>.init(storage:)();
  }
}

id CRLiOSAutoSizingHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSAutoSizingHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*EnvironmentValues.crl_withPresentationResize.modify(uint64_t *a1))(char **a1, char a2)
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
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_100FBDFA0();
  EnvironmentValues.subscript.getter();
  return sub_100FBC8F8;
}

void (*EnvironmentValues.crl_performAfterAnimations.modify(uint64_t *a1))(char **a1, char a2)
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
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_100FBE05C();
  EnvironmentValues.subscript.getter();
  return sub_100FBC9BC;
}

void (*EnvironmentValues.crl_scrollToTarget.modify(uint64_t *a1))(char **a1, char a2)
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
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_100FBE118();
  EnvironmentValues.subscript.getter();
  return sub_100FBCA80;
}

void sub_100FBCAB4(char **a1, char a2, void (*a3)(char *, char *), uint64_t a4, void (*a5)(char *))
{
  v6 = *a1;
  if (a2)
  {
    a3(*a1, v6 + 8);
    a3(v6 + 8, v6 + 16);
    EnvironmentValues.subscript.setter();
    a5(v6 + 8);
  }

  else
  {
    a3(*a1, v6 + 8);
    EnvironmentValues.subscript.setter();
  }

  a5(v6);

  free(v6);
}

void (*EnvironmentValues.crl_scrollViewContentCoordinateSpace.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for CoordinateSpace();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[5] = v8;
  v4[6] = sub_100FBDEF8();
  EnvironmentValues.subscript.getter();
  return sub_100FBCCC0;
}

void sub_100FBCCC0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    EnvironmentValues.subscript.setter();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    EnvironmentValues.subscript.setter();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t (*EnvironmentValues.crl_isPresentedInsidePopover.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_100FBDF4C();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_100FBCE54;
}

uint64_t View.crlScrollTarget<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, a3, v9);
  AnyHashable.init<A>(_:)();
  v12 = *(v8 + 20);
  *&v11[v12] = swift_getKeyPath();
  sub_1005B981C(&qword_101A25B30);
  swift_storeEnumTagMultiPayload();
  View.modifier<A>(_:)();
  return sub_100FBE214(v11, type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier);
}

uint64_t View.crlAdditionalPaddingOnLandscapePhone()()
{
  v0 = type metadata accessor for CRLiOSAutoSizingHostingController.AdditionalSafeAreasModifier(0);
  __chkstk_darwin(v0);
  v2 = (&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = swift_getKeyPath();
  sub_1005B981C(&qword_101A25218);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 20);
  *(v2 + v3) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v4 = v2 + *(v0 + 24);
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  View.modifier<A>(_:)();
  return sub_100FBE214(v2, type metadata accessor for CRLiOSAutoSizingHostingController.AdditionalSafeAreasModifier);
}

uint64_t sub_100FBD1D0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10000BE14(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100FBD40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1005B981C(&qword_101A25DD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_10000BE14(a1, &v11 - v8, &qword_101A25DD8);
  return a5(v9);
}

uint64_t sub_100FBD4BC(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  *(v1 + *(v4 + 16)) = 0;
  (*(v5 + 16))(&v7 - v3, v2);
  return UIHostingController.init(rootView:)();
}

char *sub_100FBD5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v8 = a3;
  v71 = a1;
  v69 = *(a3 - 8);
  v70 = a4;
  __chkstk_darwin(a1);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v72 = *(v13 - 8);
  v73 = v13;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = &v6[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize];
  *v16 = 0.0;
  v16[1] = 0.0;
  v66 = v16;
  v6[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize] = 0;
  *&v6[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator] = 0;
  v17 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollTargets;
  *&v7[v17] = sub_100BD7F38(_swiftEmptyArrayStorage);
  v74 = v15;
  if (a5 != 0.0 && a6 != 0.0)
  {
    v62 = a2;
    v63 = v7;
    v64 = v8;
    v18 = objc_opt_self();
    v65 = [v18 _atomicIncrementAssertCount];
    v78 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v78);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v65;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_1005CF04C();
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 110;
    v30 = v78;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "One dimension of defaultSize should be 0 to indicate autosizing.", 64, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v37 file:v38 lineNumber:110 isFatal:0 format:v39 args:v36];

    v15 = v74;
    v7 = v63;
    v8 = v64;
    a2 = v62;
  }

  LODWORD(v64) = a6 == 0.0;
  v65 = a5 == 0.0;
  v63 = type metadata accessor for CRLiOSAutoSizingHostingController.HostProxy(0);
  swift_allocObject();
  v40 = sub_100FB89DC();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v78) = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = *&a5;
  v79 = a6;

  static Published.subscript.setter();
  *&v7[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostProxy] = v40;
  v62 = sub_100FBE50C(&qword_101A1CE28, type metadata accessor for CRLiOSAutoSizingHostingController.HostProxy);
  swift_retain_n();
  v78 = ObservedObject.init(wrappedValue:)();
  v79 = v41;
  v80 = 0;
  v42 = v70;
  View.modifier<A>(_:)();

  v43 = sub_100FBEC50();
  v76 = v42;
  v77 = v43;
  v44 = v15;
  v45 = v73;
  swift_getWitnessTable();
  v46 = objc_allocWithZone(type metadata accessor for CRLiOSAutoSizingHostingController.HostingController());
  *&v7[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController] = sub_100FBD4BC(v44);
  v47 = &v7[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize];
  *v47 = a5;
  v47[1] = a6;
  v48 = v66;
  v49 = v67;
  *v66 = a5;
  v48[1] = a6;
  v50 = a2;
  v51 = v69;
  (*(v69 + 16))(v49, v50, v8);
  v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v8;
  *(v53 + 24) = v42;
  (*(v51 + 32))(v53 + v52, v49, v8);
  v54 = &v7[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_calculatePreliminaryFittingSize];
  *v54 = sub_100FBECA4;
  v54[1] = v53;
  v55 = [objc_allocWithZone(UIScrollView) init];
  [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v55 setAlwaysBounceHorizontal:0];
  [v55 setAlwaysBounceVertical:0];
  if (v71 == 2)
  {
    v56 = v64;
  }

  else
  {
    v56 = v71;
  }

  if (v71 == 2)
  {
    v57 = v65;
  }

  else
  {
    v57 = v71;
  }

  [v55 setShowsVerticalScrollIndicator:v56 & 1];
  [v55 setShowsHorizontalScrollIndicator:v57 & 1];
  *&v7[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollView] = v55;
  v58 = type metadata accessor for CRLiOSAutoSizingHostingController();
  v75.receiver = v7;
  v75.super_class = v58;
  v59 = v55;
  v60 = objc_msgSendSuper2(&v75, "initWithNibName:bundle:", 0, 0);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  swift_unknownObjectWeakAssign();

  [v60 setPreferredContentSize:{*&v60[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize], *&v60[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize + 8]}];

  (*(v72 + 8))(v74, v45);
  return v60;
}

unint64_t sub_100FBDEF8()
{
  result = qword_101A25B08;
  if (!qword_101A25B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25B08);
  }

  return result;
}

unint64_t sub_100FBDF4C()
{
  result = qword_101A25B10;
  if (!qword_101A25B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25B10);
  }

  return result;
}

unint64_t sub_100FBDFA0()
{
  result = qword_101A25B18;
  if (!qword_101A25B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25B18);
  }

  return result;
}

unint64_t sub_100FBE05C()
{
  result = qword_101A25B20;
  if (!qword_101A25B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25B20);
  }

  return result;
}

unint64_t sub_100FBE118()
{
  result = qword_101A25B28;
  if (!qword_101A25B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25B28);
  }

  return result;
}

uint64_t sub_100FBE214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100FBE29C()
{
  sub_100FBE688(319, &qword_1019FB370, &type metadata for Bool, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_100FBE7AC(319, &qword_101A25B98, type metadata accessor for CGSize, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_100FBE688(319, &unk_101A25BA0, &type metadata for EdgeInsets, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100FBE50C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100FBE57C()
{
  sub_100FBE624();
  if (v0 <= 0x3F)
  {
    sub_100FBE688(319, &unk_101A25DE0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100FBE624()
{
  if (!qword_101A25DD0)
  {
    sub_1005C4E5C(&qword_101A25DD8);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_101A25DD0);
    }
  }
}

void sub_100FBE688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100FBE700()
{
  sub_100FBE7AC(319, &unk_101A25E88, &type metadata accessor for CoordinateSpace, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100FBE7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100FBE898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FBE8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FBE960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100FBBD70(a1, v6, a2);
}

double sub_100FBE9E0(char **a1)
{
  v3 = *(type metadata accessor for CRLiOSAutoSizingHostingController.ScrollTargetModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for GeometryProxy();

  *&result = sub_100FBBF54(a1, v1 + v4).n128_u64[0];
  return result;
}

unint64_t sub_100FBEAB4()
{
  result = qword_101A25EF0;
  if (!qword_101A25EF0)
  {
    sub_1005C4E5C(&qword_101A25EE0);
    sub_10001A2F8(&qword_101A25EF8, &qword_101A25EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25EF0);
  }

  return result;
}

uint64_t sub_100FBEB6C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A25EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100FBEBD4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100FBEC50()
{
  result = qword_101A25F18;
  if (!qword_101A25F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25F18);
  }

  return result;
}

uint64_t sub_100FBECF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100FBED38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100FBEDA8()
{
  result = qword_101A25F28;
  if (!qword_101A25F28)
  {
    sub_1005C4E5C(&qword_101A25F30);
    sub_100FBEAB4();
    sub_10001A2F8(&qword_101A25EF8, &qword_101A25EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25F28);
  }

  return result;
}

uint64_t sub_100FBEE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1005B981C(&qword_101A25F38) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);

  return sub_100FB8F5C(a1, v2 + v6, v8, v9, v10, a2);
}

unint64_t sub_100FBEF74()
{
  result = qword_101A25FB8;
  if (!qword_101A25FB8)
  {
    sub_1005C4E5C(&qword_101A25FC0);
    sub_10001A2F8(&qword_101A25F48, &qword_101A25F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A25FB8);
  }

  return result;
}

uint64_t CRLWeakWrapper.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t CRLWeakWrapper.value.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CRLWeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100FBF150;
}

uint64_t sub_100FBF150()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static CRLWeakWrapper.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_100FBF200()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100FBF254(uint64_t a1, uint64_t *a2)
{
  v118 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v118);
  v117 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_1006D2240();
    Set.Iterator.init(_cocoa:)();
    a1 = v129;
    v5 = v130;
    v6 = v131;
    v7 = v132;
    v8 = v133;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a1 + 56);

    v6 = v10;
    v7 = 0;
  }

  v119 = v6;
  v13 = (v6 + 64) >> 6;
  v123 = a1;
  v124 = a2;
  v121 = v13;
  v122 = v5;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v14 = __CocoaSet.Iterator.next()();
  if (!v14)
  {
    return sub_100035F90();
  }

  v134 = v14;
  type metadata accessor for CRLBoardItem(0);
  v15 = swift_dynamicCast();
  v16 = v127;
  v17 = v7;
  v18 = v8;
  if (!v127)
  {
    return sub_100035F90();
  }

  while (1)
  {
    v126 = v18;
    v21 = *((swift_isaMask & *v16) + 0xC8);
    (v21)(v15);
    type metadata accessor for CRLGroupItem();
    if (swift_dynamicCastClass())
    {
      v22 = v16;
      v23 = sub_1005F36D4();
      v24 = v125;
      sub_100B7AD78(v23, a2);
      v125 = v24;
    }

    v25 = v21();
    v28 = v25;
    v29 = v26;
    v30 = v27;
    v31 = v27;
    if ((v27 & 0x100) != 0)
    {
      if (v25 | v26)
      {
        v34 = 0;
      }

      else
      {
        v34 = v27 == 0;
      }

      if (v34)
      {
        v32 = 0xE500000000000000;
        v33 = 0x70756F7247;
      }

      else if (v25 == 1 && v26 == 0 && v27 == 0)
      {
        v32 = 0xE500000000000000;
        v33 = 0x6570616853;
      }

      else if (v25 == 2 && v26 == 0 && v27 == 0)
      {
        v33 = 0x697463656E6E6F43;
        v32 = 0xEE00656E694C6E6FLL;
      }

      else if (v25 == 3 && v26 == 0 && v27 == 0)
      {
        v32 = 0xE500000000000000;
        v33 = 0x6567616D49;
      }

      else if (v25 == 4 && v26 == 0 && v27 == 0)
      {
        v33 = 0x41724F6569766F4DLL;
        v32 = 0xEC0000006F696475;
      }

      else if (v25 == 5 && v26 == 0 && v27 == 0)
      {
        v32 = 0xE400000000000000;
        v33 = 1701603654;
      }

      else if (v25 == 6 && v26 == 0 && v27 == 0)
      {
        v32 = 0xE700000000000000;
        v33 = 0x65746973626557;
      }

      else if (v25 == 7 && v26 == 0 && v27 == 0)
      {
        v32 = 0xE800000000000000;
        v33 = 0x7463656A624F4433;
      }

      else if (v25 != 8 || v26 || v27)
      {
        v32 = 0xEA00000000006570;
        if (v25 != 9 || v26 || v27)
        {
          if (v25 != 10 || v26 || v27)
          {
            v104 = v27 == 0;
            v106 = v25 == 11 && v26 == 0;
            if (v106 && v104)
            {
              v33 = 0x656C626154;
            }

            else
            {
              v33 = 0x65636166727553;
            }

            if (v106 && v104)
            {
              v32 = 0xE500000000000000;
            }

            else
            {
              v32 = 0xE700000000000000;
            }
          }

          else
          {
            v32 = 0xEA00000000006574;
            v33 = 0x6F4E796B63697453;
          }
        }

        else
        {
          v33 = 0x6168536E77617244;
        }
      }

      else
      {
        v32 = 0xE700000000000000;
        v33 = 0x676E6977617244;
      }
    }

    else
    {
      v32 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E55;
    }

    v127 = 0x657079546D657469;
    v128 = 0xE800000000000000;
    v49 = v32;
    String.append(_:)(*&v33);

    v50 = v127;
    v51 = v128;
    if ((v30 & 0x100) == 0 || (!(v28 | v29) ? (v52 = v31 == 0) : (v52 = 0), v52 || (v28 == 1 ? (v53 = v29 == 0) : (v53 = 0), v53 ? (v54 = v31 == 0) : (v54 = 0), v54 || (v28 == 2 ? (v55 = v29 == 0) : (v55 = 0), v55 ? (v56 = v31 == 0) : (v56 = 0), v56 || (v28 == 3 ? (v57 = v29 == 0) : (v57 = 0), v57 ? (v58 = v31 == 0) : (v58 = 0), v58 || (v28 == 4 ? (v59 = v29 == 0) : (v59 = 0), v59 ? (v60 = v31 == 0) : (v60 = 0), !v60))))))
    {
      a2 = v124;
    }

    else
    {
      type metadata accessor for CRLMovieItem();
      v97 = swift_dynamicCastClass();
      a2 = v124;
      if (v97)
      {
        v98 = v97;
        v99 = v16;

        if (**(v98 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
          goto LABEL_182;
        }

        swift_beginAccess();

        sub_1005B981C(&qword_101A28680);
        v100 = v117;
        CRRegister.wrappedValue.getter();
        v101 = *(v100 + *(v118 + 36));
        swift_endAccess();

        sub_1005CAA84(v100);
        if (v101)
        {
          v102 = 0x6F69647541;
        }

        else
        {
          v102 = 0x6569766F4DLL;
        }

        v127 = 0x657079546D657469;
        v128 = 0xE800000000000000;
        v103 = 0xE500000000000000;
        String.append(_:)(*&v102);

        v50 = v127;
        v51 = v128;
      }
    }

    v61 = *a2;
    if (*(*a2 + 16))
    {
      v62 = sub_10000BE7C(v50, v51);
      if (v63)
      {
        v64 = *(*(v61 + 56) + 8 * v62);
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (!v65)
        {

          goto LABEL_170;
        }

        v66 = v65;
        v67 = v64;
        v68 = [v66 integerValue];
        if (__OFADD__(v68, 1))
        {
          goto LABEL_179;
        }

        v120 = v67;
        v69 = [objc_allocWithZone(NSNumber) initWithInteger:v68 + 1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v50;
        v72 = isUniquelyReferenced_nonNull_native;
        v127 = *a2;
        v73 = v127;
        v74 = v71;
        v75 = sub_10000BE7C(v71, v51);
        v77 = *(v73 + 16);
        v78 = (v76 & 1) == 0;
        v79 = __OFADD__(v77, v78);
        v80 = v77 + v78;
        if (v79)
        {
          goto LABEL_180;
        }

        v81 = v76;
        if (*(v73 + 24) >= v80)
        {
          if ((v72 & 1) == 0)
          {
            v112 = v75;
            sub_100AA5680();
            v75 = v112;
            v93 = v127;
            if ((v81 & 1) == 0)
            {
LABEL_173:
              v93[(v75 >> 6) + 8] |= 1 << v75;
              v113 = (v93[6] + 16 * v75);
              *v113 = v74;
              v113[1] = v51;
              *(v93[7] + 8 * v75) = v69;
              v114 = v93[2];
              v79 = __OFADD__(v114, 1);
              v115 = v114 + 1;
              if (v79)
              {
                goto LABEL_181;
              }

              v93[2] = v115;
              v95 = v120;
              goto LABEL_139;
            }

            goto LABEL_137;
          }
        }

        else
        {
          sub_100A8B700(v80, v72);
          v75 = sub_10000BE7C(v74, v51);
          if ((v81 & 1) != (v82 & 1))
          {
            goto LABEL_183;
          }
        }

        v93 = v127;
        if ((v81 & 1) == 0)
        {
          goto LABEL_173;
        }

LABEL_137:
        v96 = v93[7];
        v95 = *(v96 + 8 * v75);
        *(v96 + 8 * v75) = v69;

        goto LABEL_138;
      }
    }

    v83 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v127 = *a2;
    v85 = v127;
    v86 = sub_10000BE7C(v50, v51);
    v88 = *(v85 + 16);
    v89 = (v87 & 1) == 0;
    v79 = __OFADD__(v88, v89);
    v90 = v88 + v89;
    if (v79)
    {
      goto LABEL_177;
    }

    v91 = v87;
    if (*(v85 + 24) >= v90)
    {
      if ((v84 & 1) == 0)
      {
        v107 = v50;
        v108 = v86;
        sub_100AA5680();
        v86 = v108;
        v50 = v107;
        v93 = v127;
        if ((v91 & 1) == 0)
        {
LABEL_167:
          v93[(v86 >> 6) + 8] |= 1 << v86;
          v109 = (v93[6] + 16 * v86);
          *v109 = v50;
          v109[1] = v51;
          *(v93[7] + 8 * v86) = v83;
          v110 = v93[2];
          v79 = __OFADD__(v110, 1);
          v111 = v110 + 1;
          if (v79)
          {
            goto LABEL_178;
          }

          v93[2] = v111;
          goto LABEL_169;
        }

        goto LABEL_133;
      }
    }

    else
    {
      sub_100A8B700(v90, v84);
      v86 = sub_10000BE7C(v50, v51);
      if ((v91 & 1) != (v92 & 1))
      {
        goto LABEL_183;
      }
    }

    v93 = v127;
    if ((v91 & 1) == 0)
    {
      goto LABEL_167;
    }

LABEL_133:
    v94 = v93[7];
    v95 = *(v94 + 8 * v86);
    *(v94 + 8 * v86) = v83;
LABEL_138:

LABEL_139:

LABEL_169:
    *a2 = v93;

LABEL_170:
    v7 = v17;
    v8 = v126;
    v5 = v122;
    a1 = v123;
    v13 = v121;
    if (v123 < 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19 = v7;
    v20 = v8;
    v17 = v7;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v18 = (v20 - 1) & v20;
    v15 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v20)))));
    v16 = v15;
    if (!v15)
    {
      return sub_100035F90();
    }
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      return sub_100035F90();
    }

    v20 = *(v5 + 8 * v17);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100FBFC70(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100043E40(_swiftEmptyArrayStorage);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *(a1 + 16);
    }

    v4 = [objc_allocWithZone(NSNumber) initWithInteger:v3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100043E54(v4, 0x756F43736D657469, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
    v9 = v2;
    sub_100FBF254(a1, &v9);
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    sub_1006364DC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v6 sendEventInDomain:v7 lazily:1 eventPayload:isa];
  }
}

uint64_t sub_100FBFDF4(void *a1)
{
  v1 = [a1 strokeName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v5 == v4)
  {

LABEL_8:

    return 1;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_8;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v9 == v4)
  {

LABEL_16:

    return 3;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_16;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v12 == v4)
  {

LABEL_21:

    return 2;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_21;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v14 == v4)
  {

    return 6;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    return 6;
  }

  return 10;
}

uint64_t sub_100FBFFE0(void *a1)
{
  v2 = [a1 pattern];
  v3 = [a1 cap];
  if ([v2 patternType])
  {
    v37 = v3;
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 62;
    v17 = v38;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Unexpected stroke pattern type", 30, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:62 isFatal:0 format:v26 args:v23];

    v3 = v37;
  }

  if (v3 == 1)
  {

    return 7;
  }

  else
  {
    v28 = objc_opt_self();
    v29 = v2;
    v30 = [v28 shortDashPattern];
    sub_100006370(0, &qword_101A05138);
    v31 = static NSObject.== infix(_:_:)();

    if (v31)
    {

      return 8;
    }

    else
    {
      v32 = v29;
      v33 = [v28 mediumDashPattern];
      v34 = static NSObject.== infix(_:_:)();

      if (v34)
      {

        return 5;
      }

      else
      {
        v35 = [v28 longDashPattern];
        v36 = static NSObject.== infix(_:_:)();

        if (v36)
        {
          return 4;
        }

        else
        {
          return 8;
        }
      }
    }
  }
}

void sub_100FC04D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = [objc_opt_self() emptyStroke];
  }

  v8 = a1;
  if (![v7 isNullStroke])
  {
    v14 = [v7 color];
    sub_100758F90(v14, v53, v55);
    if (v3)
    {
      v15 = v53[0];
      v16 = v53[1];
      v50 = v54;

      *a2 = v15;
      *(a2 + 8) = v16;
      *(a2 + 16) = v50;
      return;
    }

    v49 = v55[1];
    v51 = v55[0];
    v17 = v56;

    [v7 width];
    v12 = v18;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v19 = 0;
LABEL_22:
      v9 = v17;
      v11 = v19 | 0x40;
      v13 = v49;
      v10 = v51;
      goto LABEL_23;
    }

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = sub_100FBFDF4(v20);
      goto LABEL_12;
    }

    if ([v7 supportsPattern])
    {
      v22 = [v7 pattern];
      v23 = [v22 patternType];

      if (!v23)
      {
        v21 = sub_100FBFFE0(v7);
LABEL_12:
        v19 = v21;

        if (v19 != 10)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v24 = [v7 pattern];
      v25 = [v24 patternType];

      if (v25 != 1)
      {
        v48 = objc_opt_self();
        v26 = [v48 _atomicIncrementAssertCount];
        v52 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v52);
        StaticString.description.getter();
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v27 = String._bridgeToObjectiveC()();

        v28 = [v27 lastPathComponent];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v30;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v45 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v26;
        v32 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v32;
        v33 = sub_1005CF04C();
        *(inited + 104) = v33;
        *(inited + 72) = v46;
        *(inited + 136) = &type metadata for String;
        v34 = sub_1000053B0();
        *(inited + 112) = v29;
        *(inited + 120) = v44;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v34;
        *(inited + 152) = 28;
        v35 = v52;
        *(inited + 216) = v32;
        *(inited + 224) = v33;
        *(inited + 192) = v35;
        v36 = v46;
        v37 = v35;
        v38 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v39 = static os_log_type_t.error.getter();
        sub_100005404(v45, &_mh_execute_header, v39, "Unexpected stroke pattern type", 30, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v40 = swift_allocObject();
        v40[2] = 8;
        v40[3] = 0;
        v40[4] = 0;
        v40[5] = 0;
        v47 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v42 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v43 = String._bridgeToObjectiveC()();

        [v48 handleFailureInFunction:v41 file:v42 lineNumber:28 isFatal:0 format:v43 args:v47];

        v7 = v43;
      }
    }

LABEL_21:
    v19 = 9;
    goto LABEL_22;
  }

  v9 = 0;
  v10 = 0uLL;
  v11 = 0x80;
  v12 = 0;
  v13 = 0uLL;
LABEL_23:
  *a3 = v10;
  *(a3 + 16) = v13;
  *(a3 + 32) = v9;
  *(a3 + 40) = v12;
  *(a3 + 48) = v11;
}

uint64_t sub_100FC0A84(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1005B981C(&unk_1019F33C0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100FC0B80, 0, 0);
}

uint64_t sub_100FC0B80()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_10001ACF0(*(v0 + 16), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(*(v0 + 40), &unk_1019F33C0);
    sub_100BABB78();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v0 + 32);
    (*(v8 + 32))(v7, *(v0 + 40), v9);
    sub_100020E58((v10 + 40), *(v10 + 64));
    sub_1005B981C(&unk_1019F6B30);
    v11 = *(v8 + 80);
    *(v0 + 136) = v11;
    v12 = (v11 + 32) & ~v11;
    v13 = swift_allocObject();
    *(v0 + 72) = v13;
    *(v13 + 16) = xmmword_10146C6B0;
    (*(v8 + 16))(v13 + v12, v7, v9);
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *v14 = v0;
    v14[1] = sub_100FC0D9C;
    v15 = *(v0 + 24);

    return sub_10072B6BC(v13, v15);
  }
}

uint64_t sub_100FC0D9C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  v5 = *(v4 + 72);
  v6 = *(v4 + 56);
  v7 = *(v4 + 48);
  v8 = (*(v4 + 136) + 32) & ~*(v4 + 136);
  if (v1)
  {
    swift_setDeallocating();
    v9 = *(v6 + 8);
    *(v4 + 120) = v9;
    *(v4 + 128) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5 + v8, v7);
    swift_deallocClassInstance();
    v10 = sub_100FC1014;
  }

  else
  {
    *(v4 + 96) = a1;
    swift_setDeallocating();
    v11 = *(v6 + 8);
    *(v4 + 104) = v11;
    *(v4 + 112) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5 + v8, v7);
    swift_deallocClassInstance();
    v10 = sub_100FC0F90;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100FC0F90()
{
  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_100FC1014()
{
  (*(v0 + 120))(*(v0 + 64), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FC1094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UTType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1005B981C(&unk_1019F8DB0);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for IntentFile();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100FC11F8, 0, 0);
}

uint64_t sub_100FC11F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 48);
    v7 = *(v3 + 16);
    v6 = v3 + 16;
    v5 = v7;
    v8 = v1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v9 = *(v6 + 56);
    v38 = (v4 + 48);
    v33 = (v4 + 8);
    v31 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v32 = (v6 + 16);
    v35 = (v6 - 8);
    v34 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = *(v0 + 64);
      v11 = *(v0 + 40);
      v5(*(v0 + 96), v8, *(v0 + 72));
      IntentFile.type.getter();
      v12 = (*v38)(v10, 1, v11);
      v13 = *(v0 + 64);
      if (v12 == 1)
      {
        sub_10000CAAC(*(v0 + 64), &unk_1019F8DB0);
      }

      else
      {
        v14 = *(v0 + 56);
        v15 = *(v0 + 40);
        static UTType.data.getter();
        v36 = UTType.conforms(to:)();
        v37 = v2;
        v16 = v9;
        v17 = v5;
        v18 = v6;
        v19 = *v33;
        (*v33)(v14, v15);
        v19(v13, v15);
        v6 = v18;
        v5 = v17;
        v9 = v16;
        v2 = v37;
        if (v36)
        {
          v20 = *v32;
          (*v32)(*(v0 + 88), *(v0 + 96), *(v0 + 72));
          v21 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1007769E4(0, v34[2] + 1, 1);
            v21 = v34;
          }

          v23 = v21[2];
          v22 = v21[3];
          if (v23 >= v22 >> 1)
          {
            sub_1007769E4(v22 > 1, v23 + 1, 1);
            v21 = v34;
          }

          v24 = *(v0 + 88);
          v25 = *(v0 + 72);
          v21[2] = v23 + 1;
          v34 = v21;
          v20(v21 + v31 + v23 * v9, v24, v25);
          goto LABEL_5;
        }
      }

      (*v35)(*(v0 + 96), *(v0 + 72));
LABEL_5:
      v8 += v9;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_14:
  *(v0 + 104) = v34;
  if (v34[2])
  {
    sub_100020E58(*(v0 + 32), *(*(v0 + 32) + 24));
    v26 = swift_task_alloc();
    *(v0 + 112) = v26;
    *v26 = v0;
    v26[1] = sub_100FC1580;
    v27 = *(v0 + 24);

    return sub_1007D16CC(v34, v27);
  }

  else
  {

    sub_100BABB78();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_100FC1580(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_100FC1740;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_100FC16A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100FC16A8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_100FC1740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for CRLAddItemToBoardIntentPerformer.PerformerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLAddItemToBoardIntentPerformer.PerformerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100FC1924(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100FC1938(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_100FC197C()
{
  result = qword_101A261A8;
  if (!qword_101A261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A261A8);
  }

  return result;
}

id sub_100FC19D0(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_100FC2990(a1, a2);

  return v6;
}

void sub_100FC1C1C(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (!v9)
  {
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v28 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v28;
    v29 = sub_1005CF04C();
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 29;
    v31 = v64;
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v38 file:v39 lineNumber:29 isFatal:1 format:v40 args:v37];
    goto LABEL_12;
  }

  v10 = OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_infoGeometry;
  v11 = *(v5 + OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_infoGeometry);
  if (!v11)
  {
    v41 = objc_opt_self();
    v42 = [v41 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    v45 = [v44 lastPathComponent];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v49 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_10146CA70;
    *(v50 + 56) = &type metadata for Int32;
    *(v50 + 64) = &protocol witness table for Int32;
    *(v50 + 32) = v42;
    v51 = sub_100006370(0, &qword_1019F4D30);
    *(v50 + 96) = v51;
    v52 = sub_1005CF04C();
    *(v50 + 104) = v52;
    *(v50 + 72) = v43;
    *(v50 + 136) = &type metadata for String;
    v53 = sub_1000053B0();
    *(v50 + 112) = v46;
    *(v50 + 120) = v48;
    *(v50 + 176) = &type metadata for UInt;
    *(v50 + 184) = &protocol witness table for UInt;
    *(v50 + 144) = v53;
    *(v50 + 152) = 32;
    v54 = v64;
    *(v50 + 216) = v51;
    *(v50 + 224) = v52;
    *(v50 + 192) = v54;
    v55 = v43;
    v56 = v54;
    v57 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v50);

    v58 = static os_log_type_t.error.getter();
    sub_100005404(v49, &_mh_execute_header, v58, "Should have info geometry in commit.", 36, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Should have info geometry in commit.");
    type metadata accessor for __VaListBuilder();
    v59 = swift_allocObject();
    v59[2] = 8;
    v59[3] = 0;
    v59[4] = 0;
    v59[5] = 0;
    v60 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v38 file:v39 lineNumber:32 isFatal:1 format:v40 args:v60];
LABEL_12:

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v61, v62);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = v9;
  sub_1012E0400(v13, &off_10188FE10);
  if (v4)
  {
  }

  else
  {

    v63 = a3;
    v14 = *((swift_isaMask & *v13) + 0xE8);
    v15 = v12;
    v14();
    v16 = *(v5 + v10);
    *(v5 + v10) = 0;

    v17 = v13;
    sub_1012CF6CC(v17, &off_10188FE10, v63);
  }
}

uint64_t sub_100FC2410()
{
  v1 = type metadata accessor for CRLCommandBoardItemChangeContext(0);
  __chkstk_darwin(v1);
  v3 = &v18[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A261F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v19 = v1;
  v20 = sub_100FC28E8(&qword_101A26200);
  v5 = sub_10002C58C(v18);
  v6 = *(sub_1005B981C(&qword_101A26208) + 48);
  v7 = OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_id;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v0 + v7, v8);
  *(v5 + v6) = 0;
  v10 = sub_100020E58(v18, v19);
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_100FC28E8(&qword_101A26210);
  AnyHashable.init<A>(_:)();
  v14 = sub_100020E58(v18, v19);
  sub_100FC292C(v14, v3);
  (*(v9 + 8))(v3, v8);
  *(inited + 72) = 4;
  sub_100005070(v18);
  v15 = sub_100E93F68(inited);
  swift_setDeallocating();
  sub_10063FDE8(inited + 32);
  return v15;
}

void sub_100FC26D0()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_infoGeometry);
}

id sub_100FC2748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetInfoGeometry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetInfoGeometry()
{
  result = qword_101A261E8;
  if (!qword_101A261E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FC2850()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100FC28E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRLCommandBoardItemChangeContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100FC292C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLCommandBoardItemChangeContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100FC2990(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_infoGeometry;
  *&v2[OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_infoGeometry] = 0;
  v6 = OBJC_IVAR____TtC8Freeform25CRLCommandSetInfoGeometry_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  [a2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730);
  swift_dynamicCast();
  v9 = *&v2[v5];
  *&v2[v5] = v13;

  v12.receiver = v2;
  v12.super_class = type metadata accessor for CRLCommandSetInfoGeometry();
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v8 + 8))(a1, v7);
  return v10;
}

char *sub_100FC2AE4(void *a1, char a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v23 = a5;
  v24 = a6;
  v21 = a3;
  v22 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a1) + 0x88))(v10);
  v13 = type metadata accessor for CRLCommandSetSpatialTransform();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_boardItem] = 0;
  v15 = &v14[OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_transform];
  v26 = 1;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  v15[64] = 1;
  (*(v9 + 16))(&v14[OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_id], v12, v8);
  v27 = 0;
  v16 = v22;
  *v15 = v21;
  *(v15 + 1) = v16;
  v17 = v24;
  *(v15 + 2) = v23;
  *(v15 + 3) = v17;
  v15[64] = 0;
  v14[OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_resetCanvasPositionAndRotation] = a2;
  v25.receiver = v14;
  v25.super_class = v13;
  v18 = objc_msgSendSuper2(&v25, "init");
  (*(v9 + 8))(v12, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v19 = *&v18[OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_boardItem];
  *&v18[OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_boardItem] = a1;

  return v18;
}

void sub_100FC2D60(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_boardItem);
  if (v7)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_boardItem);
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v8 = [a1 getBoardItemForUUID:isa];

    if (!v8)
    {
      v38 = objc_opt_self();
      v39 = [v38 _atomicIncrementAssertCount];
      v64[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v64);
      StaticString.description.getter();
      v40 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v41 = String._bridgeToObjectiveC()();

      v42 = [v41 lastPathComponent];

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v46 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v39;
      v48 = sub_1005CF000();
      *(inited + 96) = v48;
      v49 = sub_100FC3AD8(&qword_1019F52E0, sub_1005CF000);
      *(inited + 104) = v49;
      *(inited + 72) = v40;
      *(inited + 136) = &type metadata for String;
      v50 = sub_1000053B0();
      *(inited + 112) = v43;
      *(inited + 120) = v45;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v50;
      *(inited + 152) = 36;
      v51 = v64[0];
      *(inited + 216) = v48;
      *(inited + 224) = v49;
      *(inited + 192) = v51;
      v52 = v40;
      v53 = v51;
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v55 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v55, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
      type metadata accessor for __VaListBuilder();
      v56 = swift_allocObject();
      v56[2] = 8;
      v56[3] = 0;
      v56[4] = 0;
      v56[5] = 0;
      v57 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      [v38 handleFailureInFunction:v35 file:v36 lineNumber:36 isFatal:1 format:v37 args:v57];
      goto LABEL_14;
    }
  }

  v11 = (v5 + OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_transform);
  if (*(v5 + OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_transform + 64))
  {
    v14 = objc_opt_self();
    v15 = v7;
    v16 = [v14 _atomicIncrementAssertCount];
    v64[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v64);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146CA70;
    *(v24 + 56) = &type metadata for Int32;
    *(v24 + 64) = &protocol witness table for Int32;
    *(v24 + 32) = v16;
    v25 = sub_1005CF000();
    *(v24 + 96) = v25;
    v26 = sub_100FC3AD8(&qword_1019F52E0, sub_1005CF000);
    *(v24 + 104) = v26;
    *(v24 + 72) = v17;
    *(v24 + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(v24 + 112) = v20;
    *(v24 + 120) = v22;
    *(v24 + 176) = &type metadata for UInt;
    *(v24 + 184) = &protocol witness table for UInt;
    *(v24 + 144) = v27;
    *(v24 + 152) = 39;
    v28 = v64[0];
    *(v24 + 216) = v25;
    *(v24 + 224) = v26;
    *(v24 + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);

    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "Should have transform in commit.", 32, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Should have transform in commit.");
    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v35 file:v36 lineNumber:39 isFatal:1 format:v37 args:v34];
LABEL_14:

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v58, v59);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v62 = v11[1];
  v63 = *v11;
  v60 = v11[3];
  v61 = v11[2];
  v12 = v7;
  v13 = v8;
  sub_1012E0400(v13, &off_10188FE10);
  if (!v4)
  {

    v65[0] = v63;
    v65[1] = v62;
    v65[2] = v61;
    v65[3] = v60;
    v66 = 0;
    (*((swift_isaMask & *v13) + 0x118))(v65);
    LOBYTE(v64[0]) = 1;
    *v11 = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    *(v11 + 64) = 1;
    v13 = v13;
    sub_1012CF6CC(v13, &off_10188FE10, a3);
  }
}

uint64_t sub_100FC35D0()
{
  v1 = type metadata accessor for CRLCommandBoardItemChangeContext(0);
  __chkstk_darwin(v1);
  v3 = &v18[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A261F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v19 = v1;
  v20 = sub_100FC3AD8(&qword_101A26200, type metadata accessor for CRLCommandBoardItemChangeContext);
  v5 = sub_10002C58C(v18);
  v6 = *(sub_1005B981C(&qword_101A26208) + 48);
  v7 = OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_id;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v0 + v7, v8);
  *(v5 + v6) = 0;
  v10 = sub_100020E58(v18, v19);
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_100FC3AD8(&qword_101A26210, type metadata accessor for CRLCommandBoardItemChangeContext);
  AnyHashable.init<A>(_:)();
  v14 = sub_100020E58(v18, v19);
  sub_100FC292C(v14, v3);
  (*(v9 + 8))(v3, v8);
  *(inited + 72) = 4;
  sub_100005070(v18);
  v15 = sub_100E93F68(inited);
  swift_setDeallocating();
  sub_10063FDE8(inited + 32);
  return v15;
}

void sub_100FC38AC()
{
  v1 = OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform29CRLCommandSetSpatialTransform_boardItem);
}

id sub_100FC3924()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetSpatialTransform();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetSpatialTransform()
{
  result = qword_101A26260;
  if (!qword_101A26260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FC3A2C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100FC3AD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100FC3B20()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dataForPasteboardType:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100FC3BA0()
{
  v1 = *v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 addData:isa forPasteboardType:v3];
}

uint64_t sub_100FC3C44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v133 = type metadata accessor for String.Encoding();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = __chkstk_darwin(v6);
  v138 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v127 - v9;
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = &selRef_concreteClass;
  LODWORD(v16) = [v11 crl_directoryExistsAt:v13];

  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v140 = v11;
  LODWORD(v11) = [v11 crl_directoryExistsAt:v18];

  v135 = a2;
  if (!v11)
  {
LABEL_30:
    if (!v16)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v85 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v87 = URL.path.getter();
      v64 = v88;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v87;
      *(inited + 40) = v64;
      v89 = static os_log_type_t.default.getter();
      sub_100005404(v85, &_mh_execute_header, v89, "Creating data directory %{public}@", 34, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      URL._bridgeToObjectiveC()(v90);
      v92 = v91;
      v141[0] = 0;
      v69 = v140;
      LODWORD(v85) = [v140 createDirectoryAtURL:v91 withIntermediateDirectories:1 attributes:0 error:v141];

      if (!v85)
      {
        v125 = v141[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return v64 & 1;
      }

      v93 = v141[0];
      LODWORD(v64) = 0;
      goto LABEL_47;
    }

    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v56);
    v58 = v57;
    v59 = [v140 *(v15 + 2760)];

    if ((v59 & 1) == 0)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v60 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_10146C6B0;
      v62 = URL.path.getter();
      v64 = v63;
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = sub_1000053B0();
      *(v61 + 32) = v62;
      *(v61 + 40) = v64;
      v65 = static os_log_type_t.default.getter();
      sub_100005404(v60, &_mh_execute_header, v65, "Creating new parent directory for Board data %{public}@", 55, 2, v61);
      swift_setDeallocating();
      sub_100005070(v61 + 32);
      URL._bridgeToObjectiveC()(v66);
      v68 = v67;
      v141[0] = 0;
      v69 = v140;
      LODWORD(v60) = [v140 createDirectoryAtURL:v67 withIntermediateDirectories:1 attributes:0 error:v141];

      v70 = v141[0];
      if (!v60)
      {
        goto LABEL_56;
      }

      v71 = v141[0];
    }

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    *&v139 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_10146C6B0;
    v73 = URL.path.getter();
    v64 = v74;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 64) = sub_1000053B0();
    *(v72 + 32) = v73;
    *(v72 + 40) = v64;
    v75 = static os_log_type_t.default.getter();
    sub_100005404(v139, &_mh_execute_header, v75, "Migrating data from old store %{public}@", 40, 2, v72);
    swift_setDeallocating();
    sub_100005070(v72 + 32);
    URL._bridgeToObjectiveC()(v76);
    v78 = v77;
    URL._bridgeToObjectiveC()(v79);
    v81 = v80;
    v141[0] = 0;
    v69 = v140;
    v82 = [v140 moveItemAtURL:v78 toURL:v80 error:v141];

    v70 = v141[0];
    if (v82)
    {
      v83 = *(v136 + 8);
      v84 = v141[0];
      v83(v10, v137);
      LODWORD(v64) = 1;
      goto LABEL_47;
    }

LABEL_56:
    v124 = v70;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v136 + 8))(v10, v137);
    return v64 & 1;
  }

  sub_1005B981C(&qword_1019F54E0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_10146C6B0;
  v21 = URL.path(percentEncoded:)(1);
  *(v20 + 56) = &type metadata for String;
  v22 = sub_1000053B0();
  *(v20 + 32) = v21._countAndFlagsBits;
  *(v20 + 64) = v22;
  *(v20 + 40) = v21._object;
  if (v16)
  {
    v23 = v22;
    *&v139 = v20 + 32;
    v134 = v2;
    v128 = objc_opt_self();
    LODWORD(v130) = [v128 _atomicIncrementAssertCount];
    v141[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v20, v141);
    StaticString.description.getter();
    v129 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_10146CA70;
    *(v30 + 56) = &type metadata for Int32;
    *(v30 + 64) = &protocol witness table for Int32;
    *(v30 + 32) = v130;
    v31 = sub_100006370(0, &qword_1019F4D30);
    *(v30 + 96) = v31;
    v32 = sub_1005CF04C();
    v33 = v129;
    *(v30 + 72) = v129;
    *(v30 + 136) = &type metadata for String;
    *(v30 + 144) = v23;
    *(v30 + 104) = v32;
    *(v30 + 112) = v26;
    *(v30 + 120) = v28;
    *(v30 + 176) = &type metadata for UInt;
    *(v30 + 184) = &protocol witness table for UInt;
    *(v30 + 152) = 70;
    v34 = v141[0];
    *(v30 + 216) = v31;
    *(v30 + 224) = v32;
    *(v30 + 192) = v34;
    v35 = v33;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v30);
    swift_setDeallocating();
    v129 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "Both old and new datastores exist. This is not expected. Please file a radar and move %{public}@", 96, 2, v20);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v3 = v39 + 3;
    v39[4] = 0;
    v39[5] = 0;
    v130 = v20;
    v40 = *(v20 + 16);
    v10 = v139;
    if (v40)
    {
      v41 = 0;
      while (1)
      {
        v42 = &v10[40 * v41];
        v16 = *(v42 + 3);
        sub_100020E58(v42, v16);
        v43 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v15 = *v3;
        v44 = *(v43 + 16);
        v45 = __OFADD__(*v3, v44);
        v46 = *v3 + v44;
        if (v45)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          swift_once();
LABEL_51:
          v100 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0);
          v101 = swift_initStackObject();
          v139 = xmmword_10146C6B0;
          *(v101 + 16) = xmmword_10146C6B0;
          v102 = URL.path.getter();
          v104 = v103;
          *(v101 + 56) = &type metadata for String;
          v105 = sub_1000053B0();
          *(v101 + 64) = v105;
          *(v101 + 32) = v102;
          *(v101 + 40) = v104;
          v106 = static os_log_type_t.default.getter();
          sub_100005404(v100, &_mh_execute_header, v106, "Making sure directory exists: %{public}@", 40, 2, v101);
          swift_setDeallocating();
          sub_100005070(v101 + 32);
          URL._bridgeToObjectiveC()(v107);
          v109 = v108;
          v141[0] = 0;
          v64 = v140;
          LODWORD(v101) = [v140 createDirectoryAtURL:v108 withIntermediateDirectories:1 attributes:0 error:v141];

          v110 = v141[0];
          if (v101)
          {
            v111 = swift_initStackObject();
            *(v111 + 16) = v139;
            v112 = v110;
            v113 = URL.path.getter();
            *(v111 + 56) = &type metadata for String;
            *(v111 + 64) = v105;
            *(v111 + 32) = v113;
            *(v111 + 40) = v114;
            v115 = static os_log_type_t.default.getter();
            sub_100005404(v100, &_mh_execute_header, v115, "Placing poison file at: %{public}@", 34, 2, v111);
            swift_setDeallocating();
            sub_100005070(v111 + 32);
            v141[0] = 0xD00000000000001CLL;
            v141[1] = 0x80000001015B7260;
            v116 = v132;
            static String.Encoding.utf8.getter();
            sub_100017CD8();
            v117 = v134;
            StringProtocol.write(to:atomically:encoding:)();
            v118 = (v131 + 8);
            if (v117)
            {
              (*v118)(v116, v133);
              v119 = swift_initStackObject();
              *(v119 + 16) = v139;
              swift_getErrorValue();
              v120 = Error.localizedDescription.getter();
              *(v119 + 56) = &type metadata for String;
              *(v119 + 64) = v105;
              *(v119 + 32) = v120;
              *(v119 + 40) = v121;
              v122 = static os_log_type_t.error.getter();
              sub_100005404(v100, &_mh_execute_header, v122, "Unable to place poison file. Error: %{public}@", 46, 2, v119);

              swift_setDeallocating();
              sub_100005070(v119 + 32);
            }

            else
            {

              (*v118)(v116, v133);
            }

            (*(v136 + 8))(v138, v137);
            LOBYTE(v64) = v130;
          }

          else
          {
            v123 = v141[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
            (*(v136 + 8))(v41, v137);
          }

          return v64 & 1;
        }

        v47 = v39[4];
        if (v47 >= v46)
        {
          goto LABEL_22;
        }

        if (v47 + 0x4000000000000000 < 0)
        {
          goto LABEL_63;
        }

        v16 = v39[5];
        if (2 * v47 > v46)
        {
          v46 = 2 * v47;
        }

        v39[4] = v46;
        if ((v46 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_64;
        }

        v48 = v43;
        v49 = swift_slowAlloc();
        v50 = v49;
        v39[5] = v49;
        if (v16)
        {
          break;
        }

        v43 = v48;
        v10 = v139;
        if (!v50)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_23:
        v52 = *(v43 + 16);
        if (v52)
        {
          v53 = (v43 + 32);
          v54 = *v3;
          while (1)
          {
            v55 = *v53++;
            v50[v54] = v55;
            v54 = *v3 + 1;
            if (__OFADD__(*v3, 1))
            {
              break;
            }

            *v3 = v54;
            if (!--v52)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
          goto LABEL_62;
        }

LABEL_7:

        if (++v41 == v40)
        {
          goto LABEL_45;
        }
      }

      if (v49 != v16 || v49 >= v16 + 8 * v15)
      {
        memmove(v49, v16, 8 * v15);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v43 = v48;
      v10 = v139;
LABEL_22:
      v50 = v39[5];
      if (!v50)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_45:
    v94 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v96 = String._bridgeToObjectiveC()();

    [v128 handleFailureInFunction:v64 file:v95 lineNumber:70 isFatal:0 format:v96 args:v94];

    swift_setDeallocating();
    swift_arrayDestroy();
    LODWORD(v64) = 0;
    v3 = v134;
  }

  else
  {
    swift_setDeallocating();
    sub_100005070(v20 + 32);
    LODWORD(v64) = 0;
  }

  v69 = v140;
LABEL_47:
  v97 = URL.isFileURL.getter();
  v41 = v138;
  if (v97 & 1) == 0 || (LOBYTE(v141[0]) = 0, URL.path.getter(), v98 = String._bridgeToObjectiveC()(), , v99 = [v69 fileExistsAtPath:v98 isDirectory:v141], v98, !v99) || (v141[0])
  {
    LODWORD(v130) = v64;
    v134 = v3;
    URL.deletingLastPathComponent()();
    if (qword_1019F2258 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_51;
  }

  return v64 & 1;
}

id sub_100FC4B98()
{
  v9[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9[0] - 8);
  __chkstk_darwin(v9[0]);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  sub_100006370(0, &qword_1019F2D90);
  static DispatchQoS.unspecified.getter();
  v9[3] = _swiftEmptyArrayStorage;
  sub_100018340();
  sub_1005B981C(&unk_1019FB800);
  sub_100018398();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9[0]);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v9[1];
  v7 = sub_100E980B4(v5);

  if (!v6)
  {
    sub_10001E4FC(SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
  }

  return v7;
}

unint64_t sub_100FC4E08()
{
  result = qword_101A263B0;
  if (!qword_101A263B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A263B0);
  }

  return result;
}

uint64_t sub_100FC4E5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (type metadata accessor for CRLTableEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = [v4 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1006D2240();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1011CA438(v6);
    v8 = v7;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v8;
}

void sub_100FC4F58()
{
  v0 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v0 - 8);
  v53 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1005B981C(&unk_101A2C890);
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v39 - v3;
  v50 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v50);
  v49 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100FC4E5C();
  if (!v5)
  {
    return;
  }

  v6 = sub_100EE9480(v5);
  v7 = v6;
  v8 = (v6 >> 62);
  if (v6 >> 62)
  {
    goto LABEL_35;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_36:

    return;
  }

  while ((v7 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v41 = v10;
    v47 = type metadata accessor for CRLTableItemData();
    v11 = swift_dynamicCastClassUnconditional();
    v12 = qword_101AD9268;
    swift_beginAccess();
    v13 = v11 + v12;
    v14 = v51;
    v15 = v52;
    v45 = v2[2];
    v46 = v2 + 2;
    v45(v51, v13, v52);
    v16 = v49;
    Capsule.root.getter();
    v17 = v2[1];
    v48 = ++v2;
    v44 = v17;
    v17(v14, v15);
    v18 = v53;
    sub_100FC5D18(v16 + *(v50 + 32), v53);
    sub_100FC5D7C(v16, _s15CapsuleDatabaseVMa);
    v43 = sub_1005B981C(&qword_101A2C7B0);
    CRRegister.wrappedValue.getter();
    sub_100FC5D7C(v18, _s13StyleCRDTDataVMa);
    v84[12] = v81;
    v84[13] = v82;
    v85 = v83;
    v84[8] = v77;
    v84[9] = v78;
    v84[10] = v79;
    v84[11] = v80;
    v84[4] = v73;
    v84[5] = v74;
    v84[6] = v75;
    v84[7] = v76;
    v84[0] = v69;
    v84[1] = v70;
    v84[2] = v71;
    v84[3] = v72;
    v19 = sub_100B946C8(v84, 0);
    sub_100B98B80(v84);
    v20 = [v19 color];

    if (v9 < 0)
    {
      goto LABEL_41;
    }

    if (v8)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_39;
      }

      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_39;
      }
    }

    if (v21 < v9)
    {
      goto LABEL_40;
    }

    if ((v7 & 0xC000000000000001) == 0 || v9 == 1)
    {

      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      type metadata accessor for CRLTableItem();

      v22 = 1;
      do
      {
        v23 = v22 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v22);
        v22 = v23;
      }

      while (v9 != v23);
      if (!v8)
      {
LABEL_20:
        v40 = v7 & 0xFFFFFFFFFFFFFF8;
        v42 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
        v24 = 1;
        if (v9 != 1)
        {
          goto LABEL_27;
        }

LABEL_33:

        swift_unknownObjectRelease();

        return;
      }
    }

    v40 = _CocoaArrayWrapper.subscript.getter();
    v42 = v25;
    v24 = v26;
    v9 = v27 >> 1;
    if (v26 == v27 >> 1)
    {
      goto LABEL_33;
    }

LABEL_27:
    while (v24 < v9)
    {
      v28 = *(v42 + 8 * v24);
      v29 = swift_dynamicCastClassUnconditional();
      v30 = qword_101AD9268;
      swift_beginAccess();
      v31 = v29 + v30;
      v32 = v51;
      v33 = v52;
      v45(v51, v31, v52);
      v2 = v28;
      v34 = v49;
      Capsule.root.getter();
      v44(v32, v33);
      v35 = v53;
      sub_100FC5D18(v34 + *(v50 + 32), v53);
      sub_100FC5D7C(v34, _s15CapsuleDatabaseVMa);
      CRRegister.wrappedValue.getter();
      sub_100FC5D7C(v35, _s13StyleCRDTDataVMa);
      v81 = v66;
      v82 = v67;
      v83 = v68;
      v77 = v62;
      v78 = v63;
      v79 = v64;
      v80 = v65;
      v73 = v58;
      v74 = v59;
      v75 = v60;
      v76 = v61;
      v69 = v54;
      v70 = v55;
      v71 = v56;
      v72 = v57;
      v8 = sub_100B946C8(&v69, 0);
      sub_100B98B80(&v69);
      v36 = [v8 color];

      if (v36)
      {
        if (!v20)
        {

          goto LABEL_33;
        }

        v8 = sub_100006370(0, &qword_101A00EB0);
        v2 = v20;
        v37 = v36;
        v38 = static NSObject.== infix(_:_:)();

        if ((v38 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if (v20)
      {
        goto LABEL_33;
      }

      if (v9 == ++v24)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_36;
    }
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_100FC563C()
{
  v51 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v51);
  v50 = v38 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1005B981C(&unk_101A2C890);
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v38 - v2;
  v47 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v47);
  v46 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100FC4E5C();
  if (!v4)
  {
    return 1;
  }

  result = sub_100EE9480(v4);
  v6 = result;
  v7 = (result >> 62);
  if (result >> 62)
  {
    goto LABEL_45;
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_46:

    return 0;
  }

  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v9 = *(v6 + 32);
    }

    v10 = v9;
    result = sub_1011DD9E4();
    if (v8 < 0)
    {
      goto LABEL_52;
    }

    v11 = result;
    if (v7)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        goto LABEL_50;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_50;
      }
    }

    if (result < v8)
    {
      goto LABEL_51;
    }

    if ((v6 & 0xC000000000000001) == 0 || v8 == 1)
    {

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      type metadata accessor for CRLTableItem();

      v12 = 1;
      do
      {
        v13 = v12 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v12);
        v12 = v13;
      }

      while (v8 != v13);
      if (!v7)
      {
LABEL_20:
        v7 = (v6 & 0xFFFFFFFFFFFFFF8);
        v14 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
        v15 = 1;
        v16 = v8 > 1;
        if (v8 == 1)
        {
          goto LABEL_39;
        }

        goto LABEL_21;
      }
    }

    v7 = _CocoaArrayWrapper.subscript.getter();
    v14 = v35;
    v15 = v36;
    v8 = v37 >> 1;
    v16 = v36 < (v37 >> 1);
    if (v36 == v37 >> 1)
    {
LABEL_39:

      swift_unknownObjectRelease();

      return v11;
    }

LABEL_21:
    v38[1] = v7;
    v39 = v10;
    v40 = v6;
    if (v16)
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (!result)
    {
      goto LABEL_46;
    }
  }

  v7 = &v59;
  v17 = type metadata accessor for CRLTableItemData();
  v44 = (v1 + 16);
  v45 = v17;
  v42 = v8;
  v43 = (v1 + 8);
  v18 = (v14 + 8 * v15);
  v1 = v15 + 1;
  v41 = v15;
  while (1)
  {
    v6 = v11;
    v19 = *v18;
    v20 = swift_dynamicCastClassUnconditional();
    v21 = qword_101AD9268;
    swift_beginAccess();
    v22 = v20 + v21;
    v23 = v48;
    v24 = v49;
    (*v44)(v48, v22, v49);
    v25 = v19;
    v26 = v46;
    Capsule.root.getter();
    (*v43)(v23, v24);
    v27 = v50;
    sub_100FC5D18(v26 + *(v47 + 32), v50);
    sub_100FC5D7C(v26, _s15CapsuleDatabaseVMa);
    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.getter();
    sub_100FC5D7C(v27, _s13StyleCRDTDataVMa);
    v59 = v52;
    v60 = v53;
    v63 = v56;
    v64 = v57;
    v61 = v54;
    v62 = v55;
    v67[0] = v53;
    v67[1] = v54;
    v65 = v58;
    v66 = v52;
    v67[4] = v57;
    v67[5] = v58;
    v67[2] = v55;
    v67[3] = v56;
    if (v58)
    {
      break;
    }

    v11 = v6;
    if (v6)
    {
LABEL_40:

      goto LABEL_43;
    }

LABEL_33:
    if (v42 == v1)
    {

      swift_unknownObjectRelease();

      return v11;
    }

    if (v1 >= v41)
    {
      ++v18;
      v16 = v1++ < v42;
      if (v16)
      {
        continue;
      }
    }

    goto LABEL_44;
  }

  sub_100006370(0, &qword_101A00EB0);
  v68[2] = v62;
  v68[3] = v63;
  v68[4] = v64;
  v69 = v65;
  v68[0] = v60;
  v68[1] = v61;
  sub_10074A990(v67, &v52);
  v28 = sub_1008B0490(v68);
  v11 = v6;
  if (BYTE8(v66) == 1)
  {
    if (qword_1019F2268 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.persistence;
    v30 = static os_log_type_t.info.getter();
    sub_100005404(v29, &_mh_execute_header, v30, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
  }

  v31 = [objc_allocWithZone(CRLColorFill) initWithColor:v28];

  sub_100FC5DDC(&v59);
  v32 = v31;
  if (v6)
  {
    sub_100006370(0, &qword_101A2BF30);
    v33 = v6;
    v34 = static NSObject.== infix(_:_:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

LABEL_43:
  swift_unknownObjectRelease();

  return v11;
}

id sub_100FC5CC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterTableDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100FC5D18(uint64_t a1, uint64_t a2)
{
  v4 = _s13StyleCRDTDataVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FC5D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100FC5DDC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FFF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100FC5FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_id;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v11 = &v7[OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_accessibilityDescription];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, "init");
  (*(v10 + 8))(a1, v9);
  return v12;
}

void sub_100FC6334(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    v10 = v9;
    sub_1012E0400(v10, &off_10188FE10);

    if (v4)
    {
    }

    else
    {
      v12 = *(v5 + OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_accessibilityDescription);
      v11 = *(v5 + OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_accessibilityDescription + 8);
      v13 = *((swift_isaMask & *v10) + 0x1B8);

      v13(v12, v11);
      v14 = v10;
      sub_1012CF6CC(v14, &off_10188FE10, a3);
    }
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 _atomicIncrementAssertCount];
    v40 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v40);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_1005CF000();
    *(inited + 96) = v25;
    v26 = sub_1005CF04C();
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 27;
    v28 = v40;
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "Unable to retrieve board item.", 30, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item.");
    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v15 handleFailureInFunction:v35 file:v36 lineNumber:27 isFatal:1 format:v37 args:v34];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v38, v39);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100FC681C()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLCommandSetAccessibilityDescription_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_100FC6898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetAccessibilityDescription();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetAccessibilityDescription()
{
  result = qword_101A26408;
  if (!qword_101A26408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FC69A4()
{
  result = type metadata accessor for UUID();
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

id sub_100FC6A3C(uint64_t a1)
{
  v2 = CACurrentMediaTime();
  sub_100FC6BD8(a1, v8);
  sub_100FC6BD8(v8, v6);
  v3 = v7;
  sub_1005ED63C(v6);
  if (!v3)
  {
    sub_100915954(v6);
    sub_1005ED63C(v8);
    v8[3] = v6[3];
    v8[4] = v6[4];
    v9 = v7;
    v8[0] = v6[0];
    v8[1] = v6[1];
    v8[2] = v6[2];
  }

  v4 = sub_101234CC0(v8, v2);
  sub_1005ED63C(v8);
  return v4;
}

id sub_100FC6AF4(uint64_t a1)
{
  v2 = CACurrentMediaTime();

  return sub_1005F7F98(a1, v2);
}

uint64_t sub_100FC6B2C(uint64_t a1)
{
  v2 = CACurrentMediaTime();

  return sub_10068635C(a1, v2);
}

id sub_100FC6B64(uint64_t a1)
{
  v2 = CACurrentMediaTime();

  return sub_1006BFEF0(a1, v2);
}

id sub_100FC6B9C(uint64_t a1)
{
  v2 = CACurrentMediaTime();

  return sub_1006C0864(a1, v2);
}

uint64_t sub_100FC6BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A09F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100FC6C48(uint64_t a1)
{
  v2 = CACurrentMediaTime();

  return sub_10123553C(a1, v2);
}

unint64_t sub_100FC6C94()
{
  result = qword_101A26418;
  if (!qword_101A26418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26418);
  }

  return result;
}

id sub_100FC6CE8(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_filename];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_linkPresentationMetadataTask] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase__linkPresentationMetadata] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase____lazy_storage___linkPresentationMetadataProvider] = 0;
  v4 = &v1[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase__title];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_iconProviderTask] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase__icon] = 0;
  v5 = OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_url;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v1[v5], a1, v6);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CRLURLMetadataProviderBase(0);
  v8 = objc_msgSendSuper2(&v10, "init");
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t sub_100FC6E1C()
{
  v1[4] = v0;
  sub_1005B981C(&qword_1019FB750);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_100FC6EF0, v3, v2);
}

uint64_t sub_100FC6EF0()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase__linkPresentationMetadata;
  v0[10] = OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase__linkPresentationMetadata;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;

LABEL_3:

    v5 = v0[1];

    return v5(v4);
  }

  v7 = OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_linkPresentationMetadataTask;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_linkPresentationMetadataTask);
  v0[11] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[15] = v9;
    v10 = sub_1005B981C(&qword_1019FFCD0);
    v11 = sub_1005B981C(&unk_1019F6B40);
    *v9 = v0;
    v9[1] = sub_100FC7628;
    v12 = v0 + 3;
LABEL_15:

    return Task.value.getter(v12, v8, v10, v11, &protocol self-conformance witness table for Error);
  }

  v13 = URL.scheme.getter();
  if (!v14)
  {
LABEL_14:
    v17 = v0[5];
    v18 = v0[4];
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = v18;
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    v8 = sub_100797058(0, 0, v17, &unk_1014BEBE8, v22);
    v0[12] = v8;
    *(v1 + v7) = v8;

    v23 = swift_task_alloc();
    v0[13] = v23;
    v10 = sub_1005B981C(&qword_1019FFCD0);
    v11 = sub_1005B981C(&unk_1019F6B40);
    *v23 = v0;
    v23[1] = sub_100FC72C0;
    v12 = v0 + 2;
    goto LABEL_15;
  }

  if (v13 == 0x6567617373656DLL && v14 == 0xE700000000000000)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v24 = sub_100FC7E1C();
  v25 = *(v1 + v2);
  *(v1 + v2) = v24;

  v26 = *(v0[4] + v0[10]);
  if (v26)
  {
    v4 = v26;
    goto LABEL_3;
  }

  sub_100928838();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_100FC72C0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_100FC78D0;
  }

  else
  {
    v5 = sub_100FC7414;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FC7414()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = v0[2];
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  v5 = v3;

  if (v3)
  {
    v6 = [v5 specialization];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v0[4];
        v9 = *(v8 + OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_filename + 8);
        if (v9)
        {
          v10 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v10 = *(v8 + OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_filename) & 0xFFFFFFFFFFFFLL;
          }

          if (v10)
          {
            v11 = v7;
            v12 = v0[10];

            v13 = String._bridgeToObjectiveC()();

            [v11 setName:v13];

            v14 = *(v8 + v12);
            if (v14)
            {
              v15 = v14;
              [v15 setSpecialization:v11];

              v6 = v15;
            }
          }
        }
      }
    }
  }

  v16 = *(v0[4] + v0[10]);
  if (v16)
  {
    v17 = v16;

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    sub_100928838();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100FC7628()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_100FC7864;
  }

  else
  {
    v5 = sub_100FC777C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FC777C()
{

  v1 = *(v0 + 24);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_100928838();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100FC7864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FC78D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100FC793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a4;
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v6;
  v4[23] = v5;

  return _swift_task_switch(sub_100FC79D4, v6, v5);
}

uint64_t sub_100FC79D4()
{
  v1 = sub_100FC7DA8();
  v0[24] = v1;
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_url);
  v3 = v2;
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100FC7B20;
  v4 = swift_continuation_init();
  v0[17] = sub_1005B981C(&unk_101A26590);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = *"";
  v0[12] = sub_100843BE0;
  v0[13] = &unk_1018AC4A0;
  v0[14] = v4;
  [v1 startFetchingMetadataForURL:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100FC7B20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_100FC7CD4;
  }

  else
  {
    v5 = sub_100FC7C50;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100FC7C50()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[19];

  *v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100FC7CD4()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];

  swift_willThrow();

  swift_errorRetain();
  LOBYTE(v1) = sub_100FC90C4(v2);
  sub_100928838();
  swift_allocError();
  *v4 = v1;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

id sub_100FC7DA8()
{
  v1 = OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase____lazy_storage___linkPresentationMetadataProvider;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase____lazy_storage___linkPresentationMetadataProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase____lazy_storage___linkPresentationMetadataProvider);
  }

  else
  {
    v4 = [objc_allocWithZone(LPMetadataProvider) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100FC7E1C()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(LPLinkMetadata) init];
  URL._bridgeToObjectiveC()(&static BoardCreateEvent.timeDurationGranularity);
  v8 = v7;
  [v6 setURL:v7];

  v9 = [objc_allocWithZone(LPFileMetadata) init];
  if (!*(v1 + OBJC_IVAR____TtC8Freeform26CRLURLMetadataProviderBase_filename + 8))
  {
    URL.relativeString.getter();
  }

  v10 = String._bridgeToObjectiveC()();

  [v9 setName:v10];

  static UTType.emailMessage.getter();
  UTType.identifier.getter();
  (*(v3 + 8))(v5, v2);
  v11 = String._bridgeToObjectiveC()();

  [v9 setType:v11];

  [v6 setSpecialization:v9];
  return v6;
}

uint64_t sub_100FC8014(double a1, double a2, double a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 40) = type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  *(v3 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_100FC80C8;

  return sub_100FC6E1C();
}

uint64_t sub_100FC80C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100FC8344;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100FC825C;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100FC825C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  v5 = [objc_allocWithZone(LPLinkView) initWithMetadata:v1];
  [v5 sizeThatFits:{v4, v4 * 3.0}];
  v8 = sub_100FC902C(v6, v7, v3, v2, v4);
  v10 = v9;

  v11 = *(v0 + 64) != 0;
  v12 = *(v0 + 8);

  return v12(*&v8, v10, v11);
}

uint64_t sub_100FC8344()
{

  v1 = *(v0 + 64) != 0;
  v2 = *(v0 + 8);

  return v2(0, 0, v1);
}

uint64_t sub_100FC850C()
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

id sub_100FC85B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Freeform28CRLRemoteURLMetadataProvider_navigationDidFinishContinuation;
  v9 = sub_1005B981C(&qword_101A264E8);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC8Freeform28CRLRemoteURLMetadataProvider_imageProviderTask] = 0;
  v10 = OBJC_IVAR____TtC8Freeform28CRLRemoteURLMetadataProvider__image;
  *&v1[OBJC_IVAR____TtC8Freeform28CRLRemoteURLMetadataProvider__image] = 0;
  if (URL.isFileURL.getter())
  {
    sub_100928838();
    swift_allocError();
    *v11 = 5;
    swift_willThrow();
    (*(v5 + 8))(a1, v4);
    sub_100FC983C(&v1[v8]);

    type metadata accessor for CRLRemoteURLMetadataProvider(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v5 + 16))(v7, a1, v4);
    v12 = v15[1];
    v13 = sub_100FC6CE8(v7);
    if (!v12)
    {
      v2 = v13;
    }

    (*(v5 + 8))(a1, v4);
  }

  return v2;
}

void sub_100FC8820()
{
  sub_100FC983C(v0 + OBJC_IVAR____TtC8Freeform28CRLRemoteURLMetadataProvider_navigationDidFinishContinuation);

  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLRemoteURLMetadataProvider__image);
}

id sub_100FC8888(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100FC894C()
{
  sub_100FC89E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100FC89E8()
{
  if (!qword_101A264E0)
  {
    sub_1005C4E5C(&qword_101A264E8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A264E0);
    }
  }
}

uint64_t sub_100FC8AC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100FC8B60, v4, v3);
}

uint64_t sub_100FC8B60()
{
  v1 = v0[3];
  v2 = static MainActor.shared.getter();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_1005B981C(&unk_101A265A0);
  *v4 = v0;
  v4[1] = sub_100FC8C78;
  v6 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v2, &protocol witness table for MainActor, 0xD000000000000012, 0x80000001015B77F0, sub_100FC99C8, v3, v5);
}

uint64_t sub_100FC8C78()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100859558, v3, v2);
}

void sub_100FC8DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07DD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedGenerator];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100911B4C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100910834;
  aBlock[3] = &unk_1018AC4F0;
  v11 = _Block_copy(aBlock);

  [v8 generateRepresentationsForRequest:a2 updateHandler:v11];
  _Block_release(v11);
}

double sub_100FC902C(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a1 < a3 && a2 < a4;
  if (v6)
  {
    v8 = a2;
    v6 = a2 + a2 < a1;
    a2 = a4;
    if (v6)
    {
      goto LABEL_14;
    }

    a1 = sub_100121EF4(1, a1, v8, a3, a4);
  }

  else if (a1 < a2 && a5 < a2)
  {
    a1 = sub_10011F340(a1, a2, a5 / a2);
  }

  a5 = a1;
LABEL_14:
  if (a5 < a3)
  {
    return sub_10011F340(a5, a2, a3 / a5);
  }

  return a5;
}

uint64_t sub_100FC90C4(uint64_t a1)
{
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 userInfo];

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v4 + 16))
  {

    goto LABEL_6;
  }

  v7 = sub_10000BE7C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_100064288(*(v4 + 56) + 32 * v7, v36);

  sub_100015D4C();
  if (swift_dynamicCast())
  {
    v10 = v35;
    goto LABEL_12;
  }

LABEL_7:
  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 domain];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

LABEL_11:
    v10 = _convertErrorToNSError(_:)();
LABEL_12:
    v18 = [v10 code];

    if (v18 <= 1)
    {
      if (v18 == -1009)
      {
        v21 = 0xE700000000000000;
        v19 = 0x656E696C66666FLL;
        v20 = 1;
        goto LABEL_29;
      }

      if (v18 == -1003)
      {
        v19 = 0xD000000000000012;
        v21 = 0x80000001015B7780;
        v20 = 3;
        goto LABEL_29;
      }
    }

    else
    {
      if (v18 <= 3)
      {
        if (v18 == 2)
        {
          v20 = 0;
          v21 = 0xEC00000064656C69;
          v19 = 0x6166206863746566;
        }

        else
        {
          v19 = 0x656C6C65636E6163;
          v20 = 4;
          v21 = 0xE900000000000064;
        }

        goto LABEL_29;
      }

      if (v18 == 4)
      {
        v20 = 0;
        v21 = 0xE900000000000074;
        v19 = 0x756F2064656D6974;
        goto LABEL_29;
      }

      if (v18 == 102)
      {
        v21 = 0x80000001015B77A0;
        v19 = 0xD000000000000016;
        v20 = 2;
        goto LABEL_29;
      }
    }

    v20 = 0;
    v21 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
LABEL_29:
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 32) = v19;
    v28 = inited + 32;
    *(inited + 64) = v32;
    *(inited + 40) = v21;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v33, "Link presentation error: %@", 27, 2, inited);
    goto LABEL_32;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_11;
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146C6B0;
  v36[0] = a1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  *(v23 + 32) = v24;
  v28 = v23 + 32;
  *(v23 + 64) = v27;
  *(v23 + 40) = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v29, "Got unexpected error type: %@", 29, 2, v23);
  v20 = 0;
LABEL_32:

  swift_setDeallocating();
  sub_100005070(v28);
  return v20;
}

uint64_t sub_100FC9588(void *a1)
{
  v3 = sub_1005B981C(&qword_101A264E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = sub_1005B981C(&qword_101A26588);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  v13 = OBJC_IVAR____TtC8Freeform28CRLRemoteURLMetadataProvider_navigationDidFinishContinuation;
  swift_beginAccess();
  sub_100FC97CC(v1 + v13, v12);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_100FC983C(v12);
LABEL_5:
    (*(v4 + 56))(v9, 1, 1, v3);
    swift_beginAccess();
    sub_100FC98A4(v9, v1 + v13);
    return swift_endAccess();
  }

  (*(v4 + 16))(v6, v12, v3);
  result = sub_100FC983C(v12);
  if (a1)
  {
    v16[0] = a1;
    v15 = a1;
    CheckedContinuation.resume(returning:)();
    (*(v4 + 8))(v6, v3);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100FC97CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A26588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FC983C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A26588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100FC98A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A26588);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FC9914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100FC793C(a1, v4, v5, v6);
}

uint64_t sub_100FC99D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100FC99FC()
{
  result = qword_101A265B0;
  if (!qword_101A265B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A265B0);
  }

  return result;
}

uint64_t sub_100FC9A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69636E65507369 && a2 == 0xEC00000064657355)
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

uint64_t sub_100FC9B04(uint64_t a1)
{
  v2 = sub_100FC9CAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FC9B40(uint64_t a1)
{
  v2 = sub_100FC9CAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InputDeviceData.encode(to:)(void *a1)
{
  v2 = sub_1005B981C(&qword_101A265C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100FC9CAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100FC9CAC()
{
  result = qword_101A265C8;
  if (!qword_101A265C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A265C8);
  }

  return result;
}

uint64_t InputDeviceData.init(from:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A265D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_100FC9CAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7 & 1;
}

uint64_t sub_100FC9E5C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A265D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100FC9CAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100005070(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_100FC9FC0(void *a1)
{
  v2 = sub_1005B981C(&qword_101A265C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100FC9CAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for InputDeviceData(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_100FCA1BC()
{
  result = qword_101A265D8;
  if (!qword_101A265D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A265D8);
  }

  return result;
}

unint64_t sub_100FCA214()
{
  result = qword_101A265E0;
  if (!qword_101A265E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A265E0);
  }

  return result;
}

unint64_t sub_100FCA26C()
{
  result = qword_101A265E8;
  if (!qword_101A265E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A265E8);
  }

  return result;
}

unint64_t sub_100FCA2C0(char a1)
{
  result = 0x6564496472616F62;
  switch(a1)
  {
    case 1:
      result = 0x444955556D657469;
      break;
    case 2:
    case 15:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000002BLL;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0x704F7463656A626FLL;
      break;
    case 6:
      result = 0x657079546D657469;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x616572436D657469;
      break;
    case 10:
      result = 0x52436E6F6D6D6F63;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x44656C7573706163;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100FCA4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100FCC5A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100FCA508(uint64_t a1)
{
  v2 = sub_100FCC208();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FCA544(uint64_t a1)
{
  v2 = sub_100FCC208();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100FCA580()
{
  sub_1005C5BE0(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier);
  v1 = OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_parentContainerUUID, &qword_1019F6990);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData), *(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData), *(v0 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData + 8));
  return v0;
}

uint64_t sub_100FCA688()
{
  sub_100FCA580();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLBoardItemRealTimeChangeRecord()
{
  result = qword_101A26628;
  if (!qword_101A26628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100FCA734()
{
  type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_10000E68C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100FCA874(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A26750);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100FCC208();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  sub_100FCC2B0(&qword_1019F43B8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    type metadata accessor for UUID();
    sub_100FCC2B0(&qword_1019F43C0, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions);
    v19 = 5;
    sub_100FCC2F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8);
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData);
    v18 = v9;
    v19 = 10;
    sub_100024E84(v17, v9);
    sub_1006D63D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025870(v17, v18);
    v10 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8);
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData);
    v18 = v10;
    v19 = 11;
    sub_100024E84(v17, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025870(v17, v18);
    v11 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData + 8);
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData);
    v18 = v11;
    v19 = 12;
    sub_100024E84(v17, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025870(v17, v18);
    v13 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData + 8);
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData);
    v18 = v13;
    v19 = 13;
    sub_100024E84(v17, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025870(v17, v18);
    v14 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData + 8);
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData);
    v18 = v14;
    v19 = 14;
    sub_100024E84(v17, v14);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025870(v17, v18);
    v15 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData + 8);
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData);
    v18 = v15;
    v19 = 15;
    sub_100024E84(v17, v15);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025870(v17, v18);
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_100FCAE38(void *a1)
{
  v4 = *v1;
  v44 = v2;
  v45 = v4;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v40 = v36 - v6;
  v7 = type metadata accessor for UUID();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v10);
  v41 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1005B981C(&qword_101A26738);
  v12 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = v36 - v13;
  sub_100020E58(a1, a1[3]);
  sub_100FCC208();
  v43 = v14;
  v15 = v44;
  v16 = v1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    swift_deallocPartialClassInstance();
    v35 = a1;
  }

  else
  {
    v17 = v9;
    v18 = v40;
    v44 = v12;
    v37 = a1;
    LOBYTE(v46) = 0;
    sub_100FCC2B0(&qword_1019F43A0, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v19 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier;
    sub_1005C5B7C(v19, v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier);
    LOBYTE(v46) = 1;
    v21 = sub_100FCC2B0(&qword_1019F43A8, &type metadata accessor for UUID);
    v22 = v17;
    v23 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36[1] = v21;
    v36[2] = v20;
    (*(v38 + 32))(v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemUUID, v22, v23);
    LOBYTE(v46) = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v1;
    *(v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_minRequiredVersion) = v24;
    LOBYTE(v46) = 3;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity;
    *v26 = v25;
    v26[8] = v27 & 1;
    LOBYTE(v46) = 4;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity;
    *v29 = v28;
    v29[8] = v30 & 1;
    v47 = 5;
    sub_100FCC25C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions) = v46;
    LOBYTE(v46) = 6;
    *(v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v46) = 7;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue;
    *v32 = v31;
    v32[8] = v33 & 1;
    LOBYTE(v46) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10063FD1C(v18, &v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_parentContainerUUID]);
    LOBYTE(v46) = 9;
    v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemCreated] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v47 = 10;
    sub_1006D6258();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData] = v46;
    v47 = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData] = v46;
    v47 = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData] = v46;
    v47 = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData] = v46;
    v47 = 14;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData] = v46;
    v47 = 15;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v44 + 8))(v43, v42);
    v16 = v41;
    *&v41[OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData] = v46;
    v35 = v37;
  }

  sub_100005070(v35);
  return v16;
}

void *sub_100FCB880@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_100FCAE38(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100FCB8FC(uint64_t a1)
{
  *(a1 + 8) = sub_100FCC2B0(&qword_101A26730, type metadata accessor for CRLBoardItemRealTimeChangeRecord);
  result = sub_100FCC2B0(&qword_1019FF180, type metadata accessor for CRLBoardItemRealTimeChangeRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100FCB980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier;
  v15 = a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_boardIdentifier;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_51;
  }

  v16 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v17 = *(v14 + v16);
  v18 = *(v14 + v16 + 8);
  v19 = (v15 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_minRequiredVersion) != *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_minRequiredVersion) || *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions) != *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_objectOptions) || *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue) != *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemTypeValue))
  {
    goto LABEL_51;
  }

  v21 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue + 8);
  if (*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue + 8))
  {
    if (!*(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue + 8))
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue) != *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemSubTypeValue))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_51;
    }
  }

  v22 = OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_parentContainerUUID;
  v23 = *(v11 + 48);
  sub_100060460(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_parentContainerUUID, v13);
  sub_100060460(a2 + v22, &v13[v23]);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v23], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &qword_1019F6990);
      goto LABEL_24;
    }

LABEL_22:
    sub_10000CAAC(v13, &unk_101A0AFE0);
    goto LABEL_51;
  }

  sub_100060460(v13, v10);
  if (v24(&v13[v23], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_22;
  }

  (*(v5 + 32))(v7, &v13[v23], v4);
  sub_100FCC2B0(&qword_1019F37C0, &type metadata accessor for UUID);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_10000CAAC(v13, &qword_1019F6990);
  if ((v25 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_24:
  if (*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemCreated) != *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_itemCreated))
  {
    goto LABEL_51;
  }

  v28 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData);
  v27 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8);
  v30 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData);
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8);
  if (v27 >> 60 == 15)
  {
    if (v29 >> 60 != 15)
    {
      goto LABEL_49;
    }

    sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8));
    sub_100024E84(v30, v29);
    sub_100025870(v28, v27);
  }

  else
  {
    if (v29 >> 60 == 15)
    {
      goto LABEL_49;
    }

    sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_commonCRDTData + 8));
    sub_100024E84(v30, v29);
    v31 = sub_1009F9488(v28, v27, v30, v29);
    sub_100025870(v30, v29);
    sub_100025870(v28, v27);
    if ((v31 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v28 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData);
  v27 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8);
  v30 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData);
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8);
  if (v27 >> 60 == 15)
  {
    if (v29 >> 60 != 15)
    {
      goto LABEL_49;
    }

    sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8));
    sub_100024E84(v30, v29);
    sub_100025870(v28, v27);
  }

  else
  {
    if (v29 >> 60 == 15)
    {
      goto LABEL_49;
    }

    sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_specificCRDTData + 8));
    sub_100024E84(v30, v29);
    v32 = sub_1009F9488(v28, v27, v30, v29);
    sub_100025870(v30, v29);
    sub_100025870(v28, v27);
    if ((v32 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v28 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData);
  v27 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData + 8);
  v30 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData);
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData + 8);
  if (v27 >> 60 == 15)
  {
    if (v29 >> 60 != 15)
    {
      goto LABEL_49;
    }

    sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData + 8));
    sub_100024E84(v30, v29);
    sub_100025870(v28, v27);
  }

  else
  {
    if (v29 >> 60 == 15)
    {
      goto LABEL_49;
    }

    sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_capsuleData + 8));
    sub_100024E84(v30, v29);
    v33 = sub_1009F9488(v28, v27, v30, v29);
    sub_100025870(v30, v29);
    sub_100025870(v28, v27);
    if ((v33 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v28 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData);
  v27 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData + 8);
  v30 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData);
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData + 8);
  if (v27 >> 60 == 15)
  {
    if (v29 >> 60 != 15)
    {
      goto LABEL_49;
    }

    sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData + 8));
    sub_100024E84(v30, v29);
    sub_100025870(v28, v27);
    goto LABEL_45;
  }

  if (v29 >> 60 == 15)
  {
    goto LABEL_49;
  }

  sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCommonCRDTData + 8));
  sub_100024E84(v30, v29);
  v34 = sub_1009F9488(v28, v27, v30, v29);
  sub_100025870(v30, v29);
  sub_100025870(v28, v27);
  if (v34)
  {
LABEL_45:
    v28 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData);
    v27 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData + 8);
    v30 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData);
    v29 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData + 8);
    if (v27 >> 60 == 15)
    {
      if (v29 >> 60 == 15)
      {
        sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData + 8));
        sub_100024E84(v30, v29);
        sub_100025870(v28, v27);
LABEL_54:
        v40 = a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData;
        v42 = *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData);
        v41 = *(v40 + 8);
        v44 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData);
        v43 = *(a2 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialCapsuleData + 8);
        if (v41 >> 60 == 15)
        {
          if (v43 >> 60 == 15)
          {
            sub_100024E84(v42, *(v40 + 8));
            sub_100024E84(v44, v43);
            sub_100025870(v42, v41);
            v37 = 1;
            return v37 & 1;
          }
        }

        else if (v43 >> 60 != 15)
        {
          sub_100024E84(v42, *(v40 + 8));
          sub_100024E84(v44, v43);
          v37 = sub_1009F9488(v42, v41, v44, v43);
          sub_100025870(v44, v43);
          sub_100025870(v42, v41);
          return v37 & 1;
        }

        sub_100024E84(v42, *(v40 + 8));
        sub_100024E84(v44, v43);
        sub_100025870(v42, v41);
        v35 = v44;
        v36 = v43;
        goto LABEL_50;
      }
    }

    else if (v29 >> 60 != 15)
    {
      sub_100024E84(*(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData), *(a1 + OBJC_IVAR____TtC8Freeform32CRLBoardItemRealTimeChangeRecord_partialSpecificCRDTData + 8));
      sub_100024E84(v30, v29);
      v39 = sub_1009F9488(v28, v27, v30, v29);
      sub_100025870(v30, v29);
      sub_100025870(v28, v27);
      if ((v39 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_54;
    }

LABEL_49:
    sub_100024E84(v28, v27);
    sub_100024E84(v30, v29);
    sub_100025870(v28, v27);
    v35 = v30;
    v36 = v29;
LABEL_50:
    sub_100025870(v35, v36);
  }

LABEL_51:
  v37 = 0;
  return v37 & 1;
}

unint64_t sub_100FCC208()
{
  result = qword_101A26740;
  if (!qword_101A26740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26740);
  }

  return result;
}

unint64_t sub_100FCC25C()
{
  result = qword_101A26748;
  if (!qword_101A26748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26748);
  }

  return result;
}

uint64_t sub_100FCC2B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100FCC2F8()
{
  result = qword_101A26758;
  if (!qword_101A26758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26758);
  }

  return result;
}

uint64_t _s16NumberFormatTypeV4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16NumberFormatTypeV4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100FCC4A0()
{
  result = qword_101A26760;
  if (!qword_101A26760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26760);
  }

  return result;
}

unint64_t sub_100FCC4F8()
{
  result = qword_101A26768;
  if (!qword_101A26768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26768);
  }

  return result;
}

unint64_t sub_100FCC550()
{
  result = qword_101A26770;
  if (!qword_101A26770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A26770);
  }

  return result;
}

uint64_t sub_100FCC5A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444955556D657469 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101559DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101587660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101587690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x704F7463656A626FLL && a2 == 0xED0000736E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657079546D657469 && a2 == 0xED000065756C6156 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001015B7860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101563040 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x616572436D657469 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x52436E6F6D6D6F63 && a2 == 0xEE00617461445444 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101551670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x44656C7573706163 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015B7890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001015B78B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001015B78D0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

void *TSContentLanguage.Models.ConnectionLine.init(identifier:geometry:aspectRatioLocked:description:lineType:tail:head:stroke:shadow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, __int128 *a11, uint64_t a12, __int128 *a13, uint64_t *a14)
{
  v14 = *a11;
  *&v43[23] = a11[1];
  v15 = a11[3];
  *&v43[39] = a11[2];
  *&v43[55] = v15;
  *&v43[7] = v14;
  v16 = *(a12 + 16);
  *&v42[7] = *a12;
  v17 = *(a12 + 32);
  v18 = *(a12 + 48);
  v42[71] = *(a12 + 64);
  *&v42[55] = v18;
  *&v42[39] = v17;
  *&v42[23] = v16;
  v19 = *a13;
  v20 = a13[1];
  *&v41[39] = a13[2];
  *&v41[23] = v20;
  *&v41[7] = v19;
  *(&__src[12] + 1) = *v43;
  *(&__src[18] + 1) = *&v43[48];
  *(&__src[16] + 1) = *&v43[32];
  *(&__src[14] + 1) = *&v43[16];
  *(&__src[21] + 1) = *v42;
  *(&__src[27] + 1) = *&v42[48];
  *(&__src[25] + 1) = *&v42[32];
  *(&__src[23] + 1) = *&v42[16];
  *(&__src[32] + 1) = *&v41[16];
  *(&__src[34] + 1) = *&v41[32];
  *(&__src[30] + 1) = *v41;
  v54 = *v43;
  v57 = *&v43[48];
  v56 = *&v43[32];
  v55 = *&v43[16];
  v59 = *v42;
  v62 = *&v42[48];
  v61 = *&v42[32];
  v60 = *&v42[16];
  v21 = *a3;
  v22 = a3[1];
  v23 = a3[2];
  v24 = a3[3];
  v25 = a3[4];
  v26 = *(a3 + 20);
  v27 = *(a3 + 42);
  v43[71] = *(a11 + 64);
  v41[55] = *(a13 + 48);
  v28 = *a14;
  v29 = a14[1];
  v30 = a14[2];
  v31 = a14[3];
  v33 = a14[4];
  v32 = a14[5];
  v34 = a14[6];
  v35 = a14[7];
  *(&__src[20] + 1) = *&v43[64];
  *(&__src[29] + 1) = *&v42[64];
  *(&__src[36] + 1) = *&v41[48];
  v37 = a14[8];
  v36 = a14[9];
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v21;
  __src[3] = v22;
  __src[4] = v23;
  __src[5] = v24;
  __src[6] = v25;
  BYTE2(__src[7]) = v27;
  LOWORD(__src[7]) = v26;
  BYTE3(__src[7]) = a4;
  __src[8] = a5;
  __src[9] = a6;
  __src[10] = a7;
  __src[11] = a8;
  LOBYTE(__src[12]) = a10;
  __src[38] = v28;
  __src[39] = v29;
  __src[40] = v30;
  __src[41] = v31;
  __src[42] = v33;
  __src[43] = v32;
  __src[44] = v34;
  __src[45] = v35;
  __src[46] = v37;
  __src[47] = v36;
  v45[0] = a1;
  v45[1] = a2;
  v45[2] = v21;
  v45[3] = v22;
  v45[4] = v23;
  v45[5] = v24;
  v45[6] = v25;
  v47 = v27;
  v46 = v26;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = a8;
  v53 = a10;
  v58 = *&v43[64];
  v63 = *&v42[64];
  v67 = *&v41[48];
  v65 = *&v41[16];
  v66 = *&v41[32];
  v64 = *v41;
  v68 = v28;
  v69 = v29;
  v70 = v30;
  v71 = v31;
  v72 = v33;
  v73 = v32;
  v74 = v34;
  v75 = v35;
  v76 = v37;
  v77 = v36;
  sub_10098E9F4(__src, v40);
  sub_10098EA50(v45);
  return memcpy(a9, __src, 0x180uLL);
}

uint64_t TSContentLanguage.Models.ConnectionLine.End.Anchor.init(objectID:magnet:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

__n128 TSContentLanguage.Models.ConnectionLine.End.init(endPoint:lineEnd:outset:anchor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v11[72] = a3 & 1;
  v8 = a5[1];
  v21 = *a5;
  v22 = v8;
  v23 = *(a5 + 32);
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13.n128_u8[0] = a3 & 1;
  v13.n128_u8[1] = a4;
  v13.n128_f64[1] = a7;
  v16 = v23;
  v14 = v21;
  v15 = v8;
  v17[0] = a1;
  v17[1] = a2;
  v18 = a3 & 1;
  v19 = a4;
  v20 = a7;
  sub_10098E944(&v12, v11);
  sub_10098E9A0(v17);
  v9 = v15;
  *(a6 + 32) = v14;
  *(a6 + 48) = v9;
  *(a6 + 64) = v16;
  result = v13;
  *a6 = v12;
  *(a6 + 16) = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ConnectionLine.version.unsafeMutableAddressor()
{
  if (qword_1019F27C0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ConnectionLine.version;
}

uint64_t TSContentLanguage.Models.ConnectionLine.lineType.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3;
  return result;
}

__n128 TSContentLanguage.Models.ConnectionLine.stroke.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  result = *(v1 + 248);
  v4 = *(v1 + 264);
  v5 = *(v1 + 280);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.ConnectionLine.stroke.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 248) = *a1;
  result = *(a1 + 32);
  *(v1 + 264) = v2;
  *(v1 + 280) = result;
  *(v1 + 296) = *(a1 + 48);
  return result;
}

double sub_100FCCFBC()
{
  static TSContentLanguage.Models.ConnectionLine.strokeDefault = 0u;
  *algn_101AD8B50 = 0u;
  *&result = 2;
  xmmword_101AD8B60 = xmmword_101497C00;
  byte_101AD8B70 = 73;
  return result;
}

__int128 *TSContentLanguage.Models.ConnectionLine.strokeDefault.unsafeMutableAddressor()
{
  if (qword_1019F27C8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ConnectionLine.strokeDefault;
}

double static TSContentLanguage.Models.ConnectionLine.strokeDefault.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1019F27C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = byte_101AD8B70;
  v2 = *algn_101AD8B50;
  *a1 = static TSContentLanguage.Models.ConnectionLine.strokeDefault;
  *(a1 + 16) = v2;
  result = *&xmmword_101AD8B60;
  *(a1 + 32) = xmmword_101AD8B60;
  *(a1 + 48) = v1;
  return result;
}

__n128 TSContentLanguage.Models.ConnectionLine.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 352);
  *(a1 + 32) = *(v1 + 336);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 368);
  result = *(v1 + 320);
  *a1 = *(v1 + 304);
  *(a1 + 16) = result;
  return result;
}

__n128 TSContentLanguage.Models.ConnectionLine.shadow.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 336) = *(a1 + 32);
  *(v1 + 352) = v2;
  *(v1 + 368) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 304) = *a1;
  *(v1 + 320) = result;
  return result;
}

uint64_t TSContentLanguage.Models.ConnectionLine.canvasObject.getter@<X0>(void *a1@<X8>)
{
  memcpy(a1, v1, 0x180uLL);
  type metadata accessor for TSContentLanguage.Models.CanvasObject();
  swift_storeEnumTagMultiPayload();
  return sub_10098E9F4(v1, v3);
}

unint64_t sub_100FCD160(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0xD000000000000013;
    v8 = 0x7470697263736564;
    if (a1 != 3)
    {
      v8 = 0x7079745F656E696CLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x797274656D6F6567;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x776F64616873;
    v2 = 0x6564695F65707974;
    if (a1 != 9)
    {
      v2 = 0x6E6F6973726576;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 1818845556;
    v4 = 1684104552;
    if (a1 != 6)
    {
      v4 = 0x656B6F727473;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100FCD2C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100FCD160(*a1);
  v5 = v4;
  if (v3 == sub_100FCD160(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100FCD34C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100FCD160(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100FCD3B0()
{
  sub_100FCD160(*v0);
  String.hash(into:)();
}

Swift::Int sub_100FCD404()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100FCD160(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100FCD464@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD14BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100FCD494@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100FCD160(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100FCD4DC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD14BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FCD504(uint64_t a1)
{
  v2 = sub_100FD2AE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FCD540(uint64_t a1)
{
  v2 = sub_100FD2AE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.ConnectionLine.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100FD1508(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x180uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ConnectionLine.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A26778);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-1] - v7;
  sub_100020E58(a1, a1[3]);
  sub_100FD2AE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v23 = *(v3 + 16);
    v24[0] = v9;
    *(v24 + 11) = *(v3 + 43);
    LOBYTE(v36) = 1;
    sub_1007C869C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 80);
    LOBYTE(v24[0]) = *(v3 + 96);
    LOBYTE(v36) = 4;
    sub_100FD2B34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 120);
    v11 = *(v3 + 152);
    v45[2] = *(v3 + 136);
    v45[3] = v11;
    v46 = *(v3 + 168);
    v45[0] = *(v3 + 104);
    v45[1] = v10;
    v12 = *(v3 + 120);
    v13 = *(v3 + 152);
    v38 = *(v3 + 136);
    v39 = v13;
    v40 = *(v3 + 168);
    v36 = *(v3 + 104);
    v37 = v12;
    v49 = 5;
    sub_10098E944(v45, &v23);
    sub_100FD2B88();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v34[2] = v38;
    v34[3] = v39;
    v35 = v40;
    v34[0] = v36;
    v34[1] = v37;
    sub_10098E9A0(v34);
    v14 = *(v3 + 192);
    v15 = *(v3 + 224);
    v42 = *(v3 + 208);
    v43 = v15;
    v16 = *(v3 + 192);
    v41[0] = *(v3 + 176);
    v41[1] = v16;
    v17 = *(v3 + 224);
    v31 = v42;
    v32 = v17;
    v44 = *(v3 + 240);
    v33 = *(v3 + 240);
    v29 = v41[0];
    v30 = v14;
    v48 = 6;
    sub_10098E944(v41, &v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27[2] = v31;
    v27[3] = v32;
    v28 = v33;
    v27[0] = v29;
    v27[1] = v30;
    sub_10098E9A0(v27);
    v19 = *(v3 + 264);
    v20 = *(v3 + 280);
    v23 = *(v3 + 248);
    v24[0] = v19;
    v24[1] = v20;
    LOBYTE(v25) = *(v3 + 296);
    v47 = 7;
    sub_10096930C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + 352);
    v24[1] = *(v3 + 336);
    v25 = v21;
    v26 = *(v3 + 368);
    v22 = *(v3 + 320);
    v23 = *(v3 + 304);
    v24[0] = v22;
    v47 = 8;
    sub_100B215E4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v23) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F27C0 != -1)
    {
      swift_once();
    }

    *&v23 = static TSContentLanguage.Models.ConnectionLine.version;
    v47 = 10;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.ConnectionLine.isEquivalent(to:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 56) | (*(v1 + 58) << 16);
  v4 = *(a1 + 56) | (*(a1 + 58) << 16);
  v5 = *(a1 + 56);
  if (*(v1 + 56) == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if (v5 == 2)
    {
      goto LABEL_58;
    }

    v8 = *(v1 + 24);
    v10 = *(v1 + 32);
    v9 = *(v1 + 40);
    v11 = *(v1 + 48);
    v12 = *(a1 + 24);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = sub_1007C87EC(*(v1 + 16), *(a1 + 16));
    if (!v17)
    {
      return v17;
    }

    v17 = sub_1007C87EC(v8, v12);
    if (!v17)
    {
      return v17;
    }

    v17 = sub_1007C87EC(v10, v14);
    if (!v17)
    {
      return v17;
    }

    v17 = sub_1007C87EC(v9, v13);
    if (!v17)
    {
      return v17;
    }

    v18 = sub_1007C87EC(v11, v16);
    LOBYTE(v17) = 0;
    if (!v18)
    {
      return v17;
    }

    if ((v4 ^ v3))
    {
      return v17;
    }

    if (((v4 & 0x100) == 0) == (v3 & 0x100) >> 8)
    {
      return v17;
    }

    v2 = a1;
    if (((v4 & 0x10000) == 0) == (v3 & 0x10000u) >> 16)
    {
      return v17;
    }
  }

  v6 = *(v1 + 59);
  v7 = *(v2 + 59);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_58;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    goto LABEL_58;
  }

  v19 = *(v1 + 72);
  v20 = *(v2 + 72);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_58;
    }

    if (*(v1 + 64) != *(v2 + 64) || v19 != v20)
    {
      v21 = v2;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v2 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_58;
      }
    }
  }

  else if (v20)
  {
    goto LABEL_58;
  }

  v24 = *(v2 + 80);
  v23 = *(v2 + 88);
  v25 = *(v2 + 96);
  if (!*(v1 + 96))
  {
    LOBYTE(v17) = 0;
    if (*(v2 + 96))
    {
      return v17;
    }

LABEL_30:
    if (*(v1 + 80) != v24 || *(v1 + 88) != v23)
    {
      return v17;
    }

    goto LABEL_35;
  }

  if (*(v1 + 96) == 1)
  {
    LOBYTE(v17) = 0;
    if (v25 != 1)
    {
      return v17;
    }

    goto LABEL_30;
  }

  LOBYTE(v17) = 0;
  if (v25 != 2 || *&v23 | *&v24)
  {
    return v17;
  }

LABEL_35:
  v26 = *(v1 + 120);
  v27 = *(v1 + 152);
  v72 = *(v1 + 136);
  v73 = v27;
  v74 = *(v1 + 168);
  v28 = v1;
  v70 = *(v1 + 104);
  v71 = v26;
  v29 = *(v2 + 120);
  v30 = *(v2 + 152);
  v68[2] = *(v2 + 136);
  v68[3] = v30;
  v69 = *(v2 + 168);
  v31 = v2;
  v68[0] = *(v2 + 104);
  v68[1] = v29;
  if ((TSContentLanguage.Models.ConnectionLine.End.isEquivalent(to:)(v68) & 1) == 0)
  {
    goto LABEL_58;
  }

  v32 = *(v1 + 224);
  v65 = *(v1 + 208);
  v66 = v32;
  v67 = *(v1 + 240);
  v33 = *(v1 + 192);
  v63 = *(v1 + 176);
  v64 = v33;
  v34 = *(v31 + 224);
  v61[2] = *(v31 + 208);
  v61[3] = v34;
  v62 = *(v31 + 240);
  v35 = *(v31 + 192);
  v61[0] = *(v31 + 176);
  v61[1] = v35;
  if ((TSContentLanguage.Models.ConnectionLine.End.isEquivalent(to:)(v61) & 1) == 0)
  {
    goto LABEL_58;
  }

  v36 = *(v1 + 256);
  v37 = *(v1 + 296);
  v38 = *(v31 + 248);
  v39 = *(v31 + 256);
  v40 = *(v31 + 296);
  if (v37 >> 6)
  {
    v41 = v31;
    v42 = *(v31 + 264);
    v43 = *(v31 + 272);
    v44 = *(v31 + 280);
    v45 = *(v31 + 288);
    if (v37 >> 6 == 1)
    {
      v83[0] = *(v1 + 248);
      *&v83[1] = v36;
      v46 = *(v1 + 280);
      v84 = *(v1 + 264);
      v85 = v46;
      v86 = v37 & 0x3F;
      if ((v40 & 0xC0) != 0x40)
      {
        goto LABEL_58;
      }

      v87[0] = v38;
      *&v87[1] = v39;
      v87[2] = v42;
      v87[3] = v43;
      v87[4] = v44;
      v87[5] = v45;
      v88 = v40 & 0x3F;
      v47 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v83, v87);
      v41 = v31;
      if ((v47 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

    if ((v40 & 0xC0) == 0x80)
    {
      LOBYTE(v17) = 0;
      if (*&v39 | v38 | v42 | v43 | v44 | v45 || v40 != 128)
      {
        return v17;
      }

      goto LABEL_52;
    }

LABEL_58:
    LOBYTE(v17) = 0;
    return v17;
  }

  if (v40 >= 0x40)
  {
    goto LABEL_58;
  }

  v48 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*(v1 + 248));
  v50 = v49;
  if (v48 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v38) && v50 == v51)
  {
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v41 = v31;
  if (v36 != v39)
  {
    goto LABEL_58;
  }

LABEL_52:
  v53 = *(v28 + 352);
  v54 = *(v41 + 352);
  LOBYTE(v17) = (v54 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFF00 && (v53 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFF00;
  if ((v53 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00 && (v54 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00)
  {
    v55 = (v41 + 360);
    v56 = *(v28 + 320);
    v75[0] = *(v28 + 304);
    v75[1] = v56;
    v75[2] = *(v28 + 336);
    v57 = *(v28 + 376);
    v77 = *(v28 + 360);
    v78 = v57;
    v76 = v53;
    v58 = *(v41 + 336);
    v79[1] = *(v41 + 320);
    v79[2] = v58;
    v79[0] = *(v41 + 304);
    v59 = *(v41 + 376);
    v81 = *v55;
    v82 = v59;
    v80 = v54;
    LOBYTE(v17) = _s8Freeform17TSContentLanguageO6ModelsO6ShadowO21__derived_enum_equalsySbAG_AGtFZ_0(v75, v79);
  }

  return v17;
}

uint64_t TSContentLanguage.Models.ConnectionLine.End.isEquivalent(to:)(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      return 0;
    }

    v11 = *(v1 + 8);
    v12 = *(a1 + 8);
    result = sub_1007C87EC(*v1, *a1);
    if (!result)
    {
      return result;
    }

    result = sub_1007C87EC(v11, v12);
    if (!result)
    {
      return result;
    }
  }

  v3 = *(a1 + 17);
  v4 = TSContentLanguage.Models.LineEnd.rawValue.getter(*(v1 + 17));
  v6 = v5;
  if (v4 == TSContentLanguage.Models.LineEnd.rawValue.getter(v3) && v6 == v7)
  {

    goto LABEL_16;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  result = sub_1007C87EC(*(v1 + 24), *(a1 + 24));
  if (!result)
  {
    return result;
  }

  v13 = *(a1 + 40);
  if (!*(v1 + 40))
  {
    if (!v13)
    {
      return 1;
    }

    goto LABEL_23;
  }

  if (!v13)
  {
LABEL_23:
    sub_10098E944(v1, v20);
    sub_10098E944(a1, v20);

    return 0;
  }

  v14 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = *(v1 + 64);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);

  return sub_100B1BFE0(v17, v18, v19, v14, v15, v16);
}

BOOL static TSContentLanguage.Models.ConnectionLine.LineType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

uint64_t sub_100FCE194(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV23__derived_struct_equalsySbAG_AGtFZ_0(v4, __dst) & 1;
}

uint64_t *TSContentLanguage.Models.ConnectionLine.LineType.version.unsafeMutableAddressor()
{
  if (qword_1019F27D0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ConnectionLine.LineType.version;
}

Swift::Int sub_100FCE2C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100FCE390()
{
  String.hash(into:)();
}

Swift::Int sub_100FCE444()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100FCE508@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD2BDC(*a1);
  *a2 = result;
  return result;
}

void sub_100FCE538(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x72656E726F63;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x646576727563;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100FCE5BC()
{
  v1 = 0x72656E726F63;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x646576727563;
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

unint64_t sub_100FCE63C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD2BDC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FCE664(uint64_t a1)
{
  v2 = sub_100FD31AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FCE6A0(uint64_t a1)
{
  v2 = sub_100FD31AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.ConnectionLine.LineType.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1005B981C(&qword_101A26798);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  if (a4)
  {
    if (a4 == 1)
    {
      sub_100020E58(a1, a1[3]);
      sub_100FD31AC();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v18 = a2;
      v19 = a3;
      v21 = 1;
      sub_100B0D5F4();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v4)
      {
        LOBYTE(v18) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F27D0 != -1)
        {
          swift_once();
        }

        v18 = static TSContentLanguage.Models.ConnectionLine.LineType.version;
        v21 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v18, v20);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v18);
    }
  }

  else
  {
    sub_100020E58(a1, a1[3]);
    sub_100FD31AC();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v18 = a2;
    v19 = a3;
    v21 = 0;
    sub_100B0D5F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v4)
    {
      LOBYTE(v18) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F27D0 != -1)
      {
        swift_once();
      }

      v18 = static TSContentLanguage.Models.ConnectionLine.LineType.version;
      v21 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v10 + 8))(v15, v9);
  }
}

BOOL sub_100FCEB9C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  return v4 == 2 && (*&v3 | *&v2) == 0;
}

uint64_t *TSContentLanguage.Models.ConnectionLine.End.version.unsafeMutableAddressor()
{
  if (qword_1019F27D8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ConnectionLine.End.version;
}

uint64_t TSContentLanguage.Models.ConnectionLine.End.endPoint.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t sub_100FCED40()
{
  String.hash(into:)();
}

unint64_t sub_100FCEE40@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD32E0(*a1);
  *a2 = result;
  return result;
}

void sub_100FCEE70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6E696F705F646E65;
  v5 = 0xE600000000000000;
  v6 = 0x726F68636E61;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 4)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x646E655F656E696CLL;
  if (v2 != 1)
  {
    v10 = 0x74657374756FLL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100FCEF38()
{
  v1 = *v0;
  v2 = 0x6E696F705F646E65;
  v3 = 0x726F68636E61;
  v4 = 0x6564695F65707974;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x646E655F656E696CLL;
  if (v1 != 1)
  {
    v5 = 0x74657374756FLL;
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

unint64_t sub_100FCEFFC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD32E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FCF024(uint64_t a1)
{
  v2 = sub_100FD3DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FCF060(uint64_t a1)
{
  v2 = sub_100FD3DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ConnectionLine.End.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100FD332C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ConnectionLine.End.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A267B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100FD3DD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v12) = *(v3 + 16);
  v14 = 0;
  sub_100B0D5F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = *(v3 + 17);
    v14 = 1;
    sub_100B2BBC8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = v3[3];
    v11 = v3[2];
    v12 = v9;
    v13 = *(v3 + 64);
    v14 = 3;
    sub_100FD3E28();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F27D8 != -1)
    {
      swift_once();
    }

    *&v11 = static TSContentLanguage.Models.ConnectionLine.End.version;
    v14 = 5;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_100FCF40C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV23__derived_struct_equalsySbAI_AItFZ_0(v7, v9);
}

uint64_t sub_100FCF468(uint64_t a1)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = v1[3];
  v11 = v1[2];
  v12 = v4;
  v13 = *(v1 + 64);
  v5 = v1[1];
  v9 = *v1;
  v10 = v5;
  return TSContentLanguage.Models.ConnectionLine.End.isEquivalent(to:)(v7) & 1;
}

uint64_t *TSContentLanguage.Models.ConnectionLine.End.Anchor.version.unsafeMutableAddressor()
{
  if (qword_1019F27E0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ConnectionLine.End.Anchor.version;
}

uint64_t TSContentLanguage.Models.ConnectionLine.End.Anchor.magnet.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

Swift::Int sub_100FCF598()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100FCF668()
{
  String.hash(into:)();
}

Swift::Int sub_100FCF724()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100FCF7F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD3E7C(*a1);
  *a2 = result;
  return result;
}

void sub_100FCF820(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x695F7463656A626FLL;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x74656E67616DLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100FCF8AC()
{
  v1 = 0x695F7463656A626FLL;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x74656E67616DLL;
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

unint64_t sub_100FCF934@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD3E7C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FCF95C(uint64_t a1)
{
  v2 = sub_100FD4590();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FCF998(uint64_t a1)
{
  v2 = sub_100FD4590();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.ConnectionLine.End.Anchor.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100FD3EC8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ConnectionLine.End.Anchor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A267C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100FD4590();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 32);
    v11 = 1;
    sub_100FD45E4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F27E0 != -1)
    {
      swift_once();
    }

    *&v12 = static TSContentLanguage.Models.ConnectionLine.End.Anchor.version;
    v11 = 3;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_100FCFCD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV6AnchorV23__derived_struct_equalsySbAK_AKtFZ_0(v5, v7);
}

uint64_t *TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet.version.unsafeMutableAddressor()
{
  if (qword_1019F27E8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet.version;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV0F4TypeO6objectAISgx_tcAC5TypesO05ModelG0RzlufC_0(uint64_t a1, uint64_t a2)
{
  if (swift_dynamicCast())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

Swift::Int sub_100FCFE78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100FCFF40()
{
  String.hash(into:)();
}

Swift::Int sub_100FCFFF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100FD00B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD4638(*a1);
  *a2 = result;
  return result;
}

void sub_100FD00E8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701274725;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E6974616F6C66;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100FD016C()
{
  v1 = 1701274725;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x676E6974616F6C66;
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

unint64_t sub_100FD01EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100FD4638(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FD0214(uint64_t a1)
{
  v2 = sub_100FD4D80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FD0250(uint64_t a1)
{
  v2 = sub_100FD4D80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100FD02B8(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1005B981C(&qword_101A267E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  if (a4)
  {
    if (a4 == 1)
    {
      sub_100020E58(a1, a1[3]);
      sub_100FD4D80();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v18 = a2;
      v19 = a3;
      v21 = 1;
      sub_100B0D5F4();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v4)
      {
        LOBYTE(v18) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F27E8 != -1)
        {
          swift_once();
        }

        v18 = static TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet.version;
        v21 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v18, v20);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v18);
    }
  }

  else
  {
    sub_100020E58(a1, a1[3]);
    sub_100FD4D80();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v18 = a2;
    v19 = a3;
    v21 = 0;
    sub_100B0D5F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v4)
    {
      LOBYTE(v18) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F27E8 != -1)
      {
        swift_once();
      }

      v18 = static TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet.version;
      v21 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_100FD08A4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV6AnchorV23__derived_struct_equalsySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v11 = *(a2 + 32);
    if (*(a1 + 32))
    {
      if (*(a1 + 32) == 1)
      {
        v12 = v11 == 1 && v8 == v10;
        return v12 && v7 == v9;
      }

      if (*&v8 <= 1uLL)
      {
        if (!(*&v8 | *&v7))
        {
          return v11 == 2 && !(*&v9 | *&v10);
        }

        if (v11 != 2 || *&v10 != 1)
        {
          return 0;
        }
      }

      else if (*&v8 ^ 2 | *&v7)
      {
        if (*&v8 ^ 3 | *&v7)
        {
          if (v11 != 2 || *&v10 != 4)
          {
            return 0;
          }
        }

        else if (v11 != 2 || *&v10 != 3)
        {
          return 0;
        }
      }

      else if (v11 != 2 || *&v10 != 2)
      {
        return 0;
      }

      if (v9 == 0.0)
      {
        return 1;
      }
    }

    else if (!*(a2 + 32))
    {
      v12 = v8 == v10;
      return v12 && v7 == v9;
    }

    return 0;
  }

  return result;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v3 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
    if (!v3)
    {
      return 0;
    }
  }

  v4 = 0xEC000000776F7272;
  v5 = 0x615F64656C6C6966;
  v6 = *(a1 + 17);
  if (v6 <= 4)
  {
    v9 = 0x645F64656C6C6966;
    v10 = 0xEE00646E6F6D6169;
    v11 = 0x735F64656C6C6966;
    v12 = 0xED00006572617571;
    if (v6 != 3)
    {
      v11 = 0x6465747265766E69;
      v12 = 0xEE00776F7272615FLL;
    }

    if (v6 != 2)
    {
      v9 = v11;
      v10 = v12;
    }

    v13 = 0x635F64656C6C6966;
    v14 = 0xED0000656C637269;
    if (!*(a1 + 17))
    {
      v13 = 0x615F64656C6C6966;
      v14 = 0xEC000000776F7272;
    }

    if (*(a1 + 17) <= 1u)
    {
      v7 = v13;
    }

    else
    {
      v7 = v9;
    }

    if (*(a1 + 17) <= 1u)
    {
      v8 = v14;
    }

    else
    {
      v8 = v10;
    }
  }

  else if (*(a1 + 17) > 7u)
  {
    if (v6 == 8)
    {
      v7 = 0x7269635F6E65706FLL;
      v8 = 0xEB00000000656C63;
    }

    else if (v6 == 9)
    {
      v7 = 0x7571735F6E65706FLL;
      v8 = 0xEB00000000657261;
    }

    else
    {
      v7 = 0x615F656C706D6973;
      v8 = 0xEC000000776F7272;
    }
  }

  else if (v6 == 5)
  {
    v8 = 0xE400000000000000;
    v7 = 1701734764;
  }

  else
  {
    v3 = v6 == 6;
    v7 = 1701736302;
    if (v3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v7 = 0x7272615F6E65706FLL;
      v8 = 0xEA0000000000776FLL;
    }
  }

  v15 = *(a2 + 17);
  if (v15 <= 4)
  {
    v24 = 0x645F64656C6C6966;
    v25 = 0xEE00646E6F6D6169;
    v26 = 0x735F64656C6C6966;
    v27 = 0xED00006572617571;
    if (v15 != 3)
    {
      v26 = 0x6465747265766E69;
      v27 = 0xEE00776F7272615FLL;
    }

    if (v15 != 2)
    {
      v24 = v26;
      v25 = v27;
    }

    if (*(a2 + 17))
    {
      v5 = 0x635F64656C6C6966;
      v4 = 0xED0000656C637269;
    }

    if (*(a2 + 17) <= 1u)
    {
      v22 = v5;
    }

    else
    {
      v22 = v24;
    }

    if (*(a2 + 17) <= 1u)
    {
      v23 = v4;
    }

    else
    {
      v23 = v25;
    }
  }

  else
  {
    v16 = 0x7269635F6E65706FLL;
    v17 = 0x7571735F6E65706FLL;
    if (v15 == 9)
    {
      v4 = 0xEB00000000657261;
    }

    else
    {
      v17 = 0x615F656C706D6973;
    }

    if (v15 == 8)
    {
      v4 = 0xEB00000000656C63;
    }

    else
    {
      v16 = v17;
    }

    v18 = 0xE400000000000000;
    v19 = 1701734764;
    v20 = 1701736302;
    v21 = 0xE400000000000000;
    if (v15 != 6)
    {
      v20 = 0x7272615F6E65706FLL;
      v21 = 0xEA0000000000776FLL;
    }

    if (v15 != 5)
    {
      v19 = v20;
      v18 = v21;
    }

    if (*(a2 + 17) <= 7u)
    {
      v22 = v19;
    }

    else
    {
      v22 = v16;
    }

    if (*(a2 + 17) <= 7u)
    {
      v23 = v18;
    }

    else
    {
      v23 = v4;
    }
  }

  if (v7 == v22 && v8 == v23)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    v30 = *(a1 + 40);
    v31 = *(a2 + 40);
    if (v30)
    {
      if (v31)
      {
        v32 = *(a1 + 32);
        v33 = *(a1 + 48);
        v34 = *(a1 + 64);
        v35 = *(a2 + 48);
        v36 = *(a2 + 64);
        v38[0] = *(a2 + 32);
        v38[1] = v31;
        v39 = v35;
        v40 = v36;
        v41[0] = v32;
        v41[1] = v30;
        v42 = v33;
        v43 = v34;
        return _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV6AnchorV23__derived_struct_equalsySbAK_AKtFZ_0(v41, v38);
      }
    }

    else if (!v31)
    {
      sub_10098E944(a2, v38);
      return 1;
    }

    sub_10098E944(a1, v38);
    sub_10098E944(a2, v38);
  }

  return 0;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_63;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v3)
  {
    goto LABEL_63;
  }

  v9 = *(a1 + 56) | (*(a1 + 58) << 16);
  v10 = *(a2 + 56) | (*(a2 + 58) << 16);
  v11 = *(a2 + 56);
  if (*(a1 + 56) == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (v11 == 2)
    {
      goto LABEL_63;
    }

    LOBYTE(v12) = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0 || *(a1 + 48) != *(a2 + 48) || ((v10 ^ v9) & 1) != 0 || ((((*(a2 + 56) & 0x100) == 0) ^ ((*(a1 + 56) & 0x100) >> 8)) & 1) == 0 || ((v10 & 0x10000) == 0) == (v9 & 0x10000u) >> 16)
    {
      return v12 & 1;
    }
  }

  v13 = *(a1 + 59);
  v14 = *(a2 + 59);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_63;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return v12 & 1;
    }
  }

  v15 = *(a1 + 72);
  v16 = *(a2 + 72);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_63;
    }

    if (*(a1 + 64) != *(a2 + 64) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_63;
  }

  v12 = *(a1 + 96);
  v22 = *(a2 + 80);
  v21 = *(a2 + 88);
  v23 = *(a2 + 96);
  if (!*(a1 + 96))
  {
    if (*(a2 + 96))
    {
      return v12 & 1;
    }

LABEL_36:
    if (*(a1 + 80) != v22 || *(a1 + 88) != v21)
    {
      return v12 & 1;
    }

    goto LABEL_41;
  }

  if (v12 == 1)
  {
    LOBYTE(v12) = 0;
    if (v23 != 1)
    {
      return v12 & 1;
    }

    goto LABEL_36;
  }

  LOBYTE(v12) = 0;
  if (v23 != 2 || *&v21 | *&v22)
  {
    return v12 & 1;
  }

LABEL_41:
  v24 = *(a1 + 120);
  v25 = *(a1 + 152);
  v65[2] = *(a1 + 136);
  v65[3] = v25;
  v66 = *(a1 + 168);
  v26 = a1;
  v65[0] = *(a1 + 104);
  v65[1] = v24;
  v27 = *(a2 + 120);
  v28 = *(a2 + 152);
  v63[2] = *(a2 + 136);
  v63[3] = v28;
  v64 = *(a2 + 168);
  v29 = a2;
  v63[0] = *(a2 + 104);
  v63[1] = v27;
  if (!_s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV23__derived_struct_equalsySbAI_AItFZ_0(v65, v63))
  {
    goto LABEL_63;
  }

  v30 = *(v26 + 224);
  v61[2] = *(v26 + 208);
  v61[3] = v30;
  v62 = *(v26 + 240);
  v31 = *(v26 + 192);
  v61[0] = *(v26 + 176);
  v61[1] = v31;
  v32 = *(v29 + 224);
  v59[2] = *(v29 + 208);
  v59[3] = v32;
  v60 = *(v29 + 240);
  v33 = *(v29 + 192);
  v59[0] = *(v29 + 176);
  v59[1] = v33;
  if (!_s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV23__derived_struct_equalsySbAI_AItFZ_0(v61, v59))
  {
    goto LABEL_63;
  }

  v34 = *(v26 + 256);
  v35 = *(v26 + 296);
  v36 = *(v29 + 248);
  v37 = *(v29 + 256);
  v38 = *(v29 + 296);
  if (v35 >> 6)
  {
    v39 = v26;
    v40 = v29;
    v41 = *(v29 + 264);
    v42 = *(v29 + 272);
    v43 = *(v29 + 280);
    v44 = *(v29 + 288);
    if (v35 >> 6 == 1)
    {
      v75[0] = *(v26 + 248);
      *&v75[1] = v34;
      v45 = *(v26 + 280);
      v76 = *(v26 + 264);
      v77 = v45;
      v78 = v35 & 0x3F;
      if ((v38 & 0xC0) != 0x40)
      {
        goto LABEL_63;
      }

      v79[0] = v36;
      *&v79[1] = v37;
      v79[2] = v41;
      v79[3] = v42;
      v79[4] = v43;
      v79[5] = v44;
      v80 = v38 & 0x3F;
      v46 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v75, v79);
      v40 = v29;
      v39 = v26;
      if ((v46 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    if ((v38 & 0xC0) == 0x80)
    {
      LOBYTE(v12) = 0;
      if (*&v37 | v36 | v41 | v42 | v43 | v44 || v38 != 128)
      {
        return v12 & 1;
      }

      goto LABEL_58;
    }

LABEL_63:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  if (v38 >= 0x40)
  {
    goto LABEL_63;
  }

  v47 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*(v26 + 248));
  v49 = v48;
  if (v47 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v36) && v49 == v50)
  {
  }

  else
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v39 = v26;
  v40 = v29;
  if (v34 != v37)
  {
    goto LABEL_63;
  }

LABEL_58:
  v52 = *(v39 + 352);
  v53 = *(v40 + 352);
  LOBYTE(v12) = (v52 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFF00;
  if ((v53 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00)
  {
    LOBYTE(v12) = 0;
  }

  if ((v52 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00 && (v53 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00)
  {
    v54 = (v39 + 360);
    v55 = *(v40 + 320);
    v71[0] = *(v40 + 304);
    v71[1] = v55;
    v71[2] = *(v40 + 336);
    v73 = *(v40 + 360);
    v74 = *(v40 + 376);
    v72 = v53;
    v56 = *(v39 + 336);
    v67[1] = *(v39 + 320);
    v67[2] = v56;
    v67[0] = *(v39 + 304);
    v57 = *(v39 + 376);
    v69 = *v54;
    v70 = v57;
    v68 = v52;
    LOBYTE(v12) = _s8Freeform17TSContentLanguageO6ModelsO6ShadowO21__derived_enum_equalsySbAG_AGtFZ_0(v67, v71);
  }

  return v12 & 1;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV3EndV6AnchorV6MagnetO21__derived_enum_equalsySbAM_AMtFZ_0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return *&a2 == *&a5 && *&a1 == *&a4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 <= 1)
    {
      if (a1 | a2)
      {
        if (a6 == 2 && a4 == 1 && *&a5 == 0.0)
        {
          return 1;
        }
      }

      else if (a6 == 2 && !(a5 | a4))
      {
        return 1;
      }
    }

    else if (a1 ^ 2 | a2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a6 == 2 && a4 == 4 && *&a5 == 0.0)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 3 && *&a5 == 0.0)
      {
        return 1;
      }
    }

    else if (a6 == 2 && a4 == 2 && *&a5 == 0.0)
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

unint64_t sub_100FD14BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018774C0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void *sub_100FD1508@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v93 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v94 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v74 - v6;
  __chkstk_darwin(v7);
  v97 = &v74 - v8;
  __chkstk_darwin(v9);
  v98 = &v74 - v10;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  v99 = v11;
  v100 = v12;
  __chkstk_darwin(v11);
  v95 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  v23 = sub_1005B981C(&qword_101A00860);
  v101 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v74 - v24;
  v26 = a1[3];
  v164 = a1;
  sub_100020E58(a1, v26);
  sub_100FD2AE0();
  v27 = v102;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_12;
  }

  v102 = v22;
  v91 = v16;
  v92 = v19;
  LOBYTE(v104) = 9;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v29)
  {
    if (v28 == 0xD00000000000002FLL && v29 == 0x80000001015898C0)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v32[1] = 0;
        v32[2] = 0;
        *v32 = 0;
        swift_willThrow();
LABEL_11:
        (*(v101 + 8))(v25, v23);
LABEL_12:
        v33 = 0;
        v34 = v164;
        goto LABEL_13;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v103[0]) = 10;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v104;
  if (v104)
  {
    if (qword_1019F27C0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ConnectionLine.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v36[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v37 = xmmword_101463530;
      *(v37 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  v38 = v164;
  sub_100020E58(v164, v164[3]);
  v39 = dispatch thunk of Decoder.userInfo.getter();
  *&v90 = sub_1007B8B04(0, v39, 0, 0);
  *(&v90 + 1) = v40;

  sub_100020E58(v38, v38[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v103[0]) = 1;
  sub_1007C7E6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v87 = *(&v104 + 1);
  v88 = v104;
  v98 = *(&v105 + 1);
  v102 = v105;
  v89 = v106;
  v41 = v107 | (BYTE2(v107) << 16);
  v42 = v164;
  sub_100020E58(v164, v164[3]);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v86 = sub_1007B8B2C(2, v43, 0, 0);

  sub_100020E58(v42, v42[3]);
  v44 = dispatch thunk of Decoder.userInfo.getter();
  *&v84 = sub_1007B8B04(3, v44, 0, 0);
  *(&v84 + 1) = v45;

  sub_100020E58(v42, v42[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v103[0]) = 4;
  sub_100FD5020();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v85 = v23;

  if (v105 == 255)
  {
    v46 = 0;
  }

  else
  {
    v46 = v104;
  }

  if (v105 == 255)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(&v104 + 1);
  }

  v92 = v47;
  if (v105 == 255)
  {
    v48 = 2;
  }

  else
  {
    v48 = v105;
  }

  sub_100020E58(v164, v164[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v155 = 5;
  sub_100FD5130();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v83 = v46;
  v97 = v25;
  v25 = v152;
  if (v152 == 1)
  {
    v102 = KeyedDecodingContainer.codingPath.getter();
    v49 = *(v102 + 16);
    if (v49)
    {
      *&v103[0] = _swiftEmptyArrayStorage;
      sub_100034080(0, v49, 0);
      v50 = *&v103[0];
      v51 = v102 + 32;
      do
      {
        sub_10000630C(v51, &v104);
        sub_100020E58(&v104, *(&v105 + 1));
        v52 = dispatch thunk of CodingKey.stringValue.getter();
        v54 = v53;
        sub_100005070(&v104);
        *&v103[0] = v50;
        v56 = v50[2];
        v55 = v50[3];
        if (v56 >= v55 >> 1)
        {
          sub_100034080((v55 > 1), v56 + 1, 1);
          v50 = *&v103[0];
        }

        v50[2] = v56 + 1;
        v57 = &v50[2 * v56];
        v57[4] = v52;
        v57[5] = v54;
        v51 += 40;
        --v49;
      }

      while (v49);
    }

    else
    {

      v50 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v68 = 1818845556;
    v68[1] = 0xE400000000000000;
    v68[2] = v50;
    swift_willThrow();
    v69 = v101;
    v25 = v97;
    swift_willThrow();
    (*(v69 + 8))(v25, v85);
    v33 = 0;
LABEL_47:
    v34 = v164;
LABEL_13:
    sub_100005070(v34);

    if (v33)
    {
      v104 = *(v163 + 7);
      v105 = *(&v163[1] + 7);
      v106 = *(&v163[2] + 7);
      v107 = v25;
      v108 = v161;
      LOBYTE(v109) = v162;
      return sub_10098E9A0(&v104);
    }

    return result;
  }

  v161 = v153;
  v162 = v154;
  *(v163 + 7) = v149;
  *(&v163[1] + 7) = v150;
  *(&v163[2] + 7) = v151;
  sub_100020E58(v164, v164[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v148 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v58 = v145;
  if (v145 == 1)
  {
    v102 = KeyedDecodingContainer.codingPath.getter();
    v59 = *(v102 + 16);
    if (v59)
    {
      *&v103[0] = _swiftEmptyArrayStorage;
      sub_100034080(0, v59, 0);
      v60 = *&v103[0];
      v61 = v102 + 32;
      do
      {
        sub_10000630C(v61, &v104);
        sub_100020E58(&v104, *(&v105 + 1));
        v62 = dispatch thunk of CodingKey.stringValue.getter();
        v64 = v63;
        sub_100005070(&v104);
        *&v103[0] = v60;
        v66 = v60[2];
        v65 = v60[3];
        if (v66 >= v65 >> 1)
        {
          sub_100034080((v65 > 1), v66 + 1, 1);
          v60 = *&v103[0];
        }

        v60[2] = v66 + 1;
        v67 = &v60[2 * v66];
        v67[4] = v62;
        v67[5] = v64;
        v61 += 40;
        --v59;
      }

      while (v59);
    }

    else
    {

      v60 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v70 = 1684104552;
    v70[1] = 0xE400000000000000;
    v70[2] = v60;
    swift_willThrow();
    swift_willThrow();
    (*(v101 + 8))(v97, v85);
    v33 = 1;
    goto LABEL_47;
  }

  v158 = v146;
  v159 = v147;
  *&v160[7] = v142;
  *&v160[23] = v143;
  *&v160[39] = v144;
  sub_100020E58(v164, v164[3]);
  dispatch thunk of Decoder.userInfo.getter();
  if (qword_1019F27C8 != -1)
  {
    swift_once();
  }

  v82 = *algn_101AD8B50;
  v80 = static TSContentLanguage.Models.ConnectionLine.strokeDefault;
  v81 = *(&xmmword_101AD8B60 + 1);
  v79 = xmmword_101AD8B60;
  v78 = byte_101AD8B70;
  v141 = 7;
  sub_100969848();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v71 = v106;
  v72 = v108;
  if (v106 >> 8 == 0xFFFFFFFF && v108 < 0x10u)
  {
  }

  else
  {
    v82 = v105;
    v80 = v104;
    v81 = v107;

    v79 = v71;
    v78 = v72;
  }

  sub_100020E58(v164, v164[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v140 = 8;
  sub_100B22CFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v99 = *(&v104 + 1);
  v100 = v104;
  v91 = *(&v105 + 1);
  v75 = v107;
  v76 = v106;
  v74 = v108;
  v95 = v105;
  v96 = *(&v108 + 1);
  v77 = *(&v109 + 1);
  v94 = v109;
  (*(v101 + 8))(v97, v85);
  *(&v103[18] + 9) = *v156;
  BYTE8(v103[10]) = v162;
  LOBYTE(v103[15]) = v159;
  DWORD1(v103[15]) = *&v157[3];
  *(&v103[15] + 1) = *v157;
  *(&v103[6] + 1) = v163[0];
  *(&v103[9] + 8) = v161;
  *(&v103[10] + 9) = *v160;
  *(&v103[11] + 9) = *&v160[16];
  *(&v103[12] + 8) = *&v160[31];
  *(&v103[16] + 8) = v82;
  v73 = v90;
  v103[0] = v90;
  *&v103[1] = v88;
  *(&v103[1] + 1) = v87;
  *&v103[2] = v102;
  *(&v103[2] + 1) = v98;
  *&v103[3] = v89;
  *(&v103[15] + 8) = v80;
  HIDWORD(v103[18]) = *&v156[3];
  LODWORD(v101) = HIWORD(v41);
  BYTE10(v103[3]) = BYTE2(v41);
  WORD4(v103[3]) = v41;
  BYTE11(v103[3]) = v86;
  v103[4] = v84;
  *&v103[5] = v83;
  *(&v103[5] + 1) = v92;
  LOBYTE(v103[6]) = v48;
  *(&v103[7] + 1) = v163[1];
  v103[8] = *(&v163[1] + 15);
  *&v103[9] = v25;
  *(&v103[13] + 1) = v58;
  v103[14] = v158;
  *(&v103[17] + 1) = v79;
  *&v103[18] = v81;
  BYTE8(v103[18]) = v78;
  *&v103[19] = v100;
  *(&v103[19] + 1) = v99;
  *&v103[20] = v95;
  *(&v103[20] + 1) = v91;
  *&v103[21] = v76;
  *(&v103[21] + 1) = v75;
  *&v103[22] = v74;
  *(&v103[22] + 1) = v96;
  *&v103[23] = v94;
  *(&v103[23] + 1) = v77;
  sub_10098E9F4(v103, &v104);
  sub_100005070(v164);
  v104 = v73;
  *&v105 = v88;
  *(&v105 + 1) = v87;
  v113 = v163[0];
  v106 = v102;
  v107 = v98;
  *&v108 = v89;
  BYTE10(v108) = v101;
  WORD4(v108) = v41;
  BYTE11(v108) = v86;
  v109 = v84;
  v110 = v83;
  v111 = v92;
  v112 = v48;
  *v114 = v163[1];
  *&v114[15] = *(&v163[1] + 15);
  v115 = v25;
  v116 = v161;
  v117 = v162;
  v118 = *v160;
  *v119 = *&v160[16];
  *&v119[15] = *&v160[31];
  v120 = v58;
  v121 = v158;
  v122 = v159;
  *&v123[3] = *&v157[3];
  *v123 = *v157;
  v124 = v80;
  v125 = v82;
  v126 = v79;
  v127 = v81;
  v128 = v78;
  *v129 = *v156;
  *&v129[3] = *&v156[3];
  v130 = v100;
  v131 = v99;
  v132 = v95;
  v133 = v91;
  v134 = v76;
  v135 = v75;
  v136 = v74;
  v137 = v96;
  v138 = v94;
  v139 = v77;
  sub_10098EA50(&v104);
  return memcpy(v93, v103, 0x180uLL);
}