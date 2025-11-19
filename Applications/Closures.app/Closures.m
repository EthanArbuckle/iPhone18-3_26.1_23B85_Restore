void sub_100001B64(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 _FBSScene];
    v7 = [v6 settings];

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager);
      *(v1 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager) = 0;
    }
  }
}

id sub_100001D78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClosuresSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100001E10(void *a1, void *a2)
{
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = a1;
  v8 = [a2 role];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {

LABEL_8:
      sub_10000A44C(0xD000000000000024, 0x8000000100014EC0);
      goto LABEL_17;
    }
  }

  v15 = [v6 _FBSScene];
  v16 = [v15 settings];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();

  if (v17)
  {
    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 delegate];

    if (v19)
    {
      v36 = v2;
      type metadata accessor for ClosuresAppDelegate();
      if (swift_dynamicCastClass())
      {
        v20 = v7;
        v21 = sub_1000023C8();
        v22 = sub_10000243C();
        v23 = type metadata accessor for ClosuresWindowManager();
        v24 = objc_allocWithZone(v23);
        v25 = [objc_allocWithZone(UIWindow) initWithWindowScene:v6];
        v26 = OBJC_IVAR____TtC8Closures21ClosuresWindowManager_window;
        *&v24[OBJC_IVAR____TtC8Closures21ClosuresWindowManager_window] = v25;
        [v25 setAutoresizesSubviews:1];
        [*&v24[v26] setAutoresizingMask:18];
        [*&v24[v26] makeKeyAndVisible];
        [*&v24[v26] setHidden:0];
        v38.receiver = v24;
        v38.super_class = v23;
        v27 = objc_msgSendSuper2(&v38, "init");
        v28 = *&v27[OBJC_IVAR____TtC8Closures21ClosuresWindowManager_window];
        v29 = type metadata accessor for ClosuresViewController();
        v30 = objc_allocWithZone(v29);
        *&v30[OBJC_IVAR____TtC8Closures22ClosuresViewController_carManager] = v21;
        *&v30[OBJC_IVAR____TtC8Closures22ClosuresViewController_assetManager] = v22;
        type metadata accessor for CARSessionStatusObservable();
        v31 = v27;
        v32 = v28;
        v33 = v21;

        *&v30[OBJC_IVAR____TtC8Closures22ClosuresViewController_sessionStatusObservable] = CARSessionStatusObservable.__allocating_init()();
        v37.receiver = v30;
        v37.super_class = v29;
        v34 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
        [v32 setRootViewController:v34];
        swift_unknownObjectRelease();

        v35 = *(v36 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager);
        *(v36 + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager) = v31;

        return;
      }

      swift_unknownObjectRelease();
    }

    sub_10000A44C(0xD000000000000026, 0x8000000100014F50);
  }

  else
  {
    sub_10000A44C(0xD000000000000021, 0x8000000100014F20);
  }

LABEL_17:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_10000228C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002298(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000022B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_1000022F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002318(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002338(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100002374(uint64_t a1, unint64_t *a2)
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

id sub_1000023C8()
{
  v1 = OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___carManager;
  v2 = *(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___carManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___carManager);
  }

  else
  {
    v4 = [objc_allocWithZone(CAFCarManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000243C()
{
  v1 = OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___assetManager;
  if (*(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___assetManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Closures19ClosuresAppDelegate____lazy_storage___assetManager);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for CAUAssetLibraryManager();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = CAUAssetLibraryManager.init()();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10000252C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClosuresAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ClosuresAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_1000026B8()
{
  v1 = v0;
  v61.receiver = v0;
  v61.super_class = type metadata accessor for ClosuresViewController();
  objc_msgSendSuper2(&v61, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC8Closures22ClosuresViewController_carManager];
  sub_100002F44(0, &qword_100021180, CAFCarManager_ptr);
  sub_100002E4C();
  v3 = CAFObserved<>.observable.getter();
  v4 = *&v1[OBJC_IVAR____TtC8Closures22ClosuresViewController_assetManager];
  v5 = *&v1[OBJC_IVAR____TtC8Closures22ClosuresViewController_sessionStatusObservable];
  type metadata accessor for CAFCarManagerObservable();
  sub_100002EB4(&qword_100021190, &type metadata accessor for CAFCarManagerObservable);
  v6 = v5;
  v7 = v3;
  v8 = ObservedObject.init(wrappedValue:)();
  v10 = v9;
  type metadata accessor for CAUAssetLibraryManager();
  sub_100002EB4(&qword_100021198, &type metadata accessor for CAUAssetLibraryManager);

  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  type metadata accessor for CARSessionStatusObservable();
  sub_100002EB4(&qword_1000211A0, &type metadata accessor for CARSessionStatusObservable);
  v14 = ObservedObject.init(wrappedValue:)();
  v16 = v15;

  v17 = objc_allocWithZone(sub_100002EFC(&qword_1000211A8, &qword_1000168B8));
  v18 = UIHostingController.init(rootView:)();
  v19 = [v18 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [objc_opt_self() clearColor];
  [v22 setBackgroundColor:v23];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v18 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v25 addSubview:v26];

  sub_100002EFC(&qword_1000211B0, &qword_1000168C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100016890;
  v29 = [v18 view];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v28 + 32) = v35;
  v36 = [v18 view];
  if (!v36)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = [v1 view];
  if (!v39)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v39;
  v41 = [v39 safeAreaLayoutGuide];

  v42 = [v41 bottomAnchor];
  v43 = [v38 constraintEqualToAnchor:v42];

  *(v28 + 40) = v43;
  v44 = [v18 view];
  if (!v44)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = [v1 view];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = v47;
  v49 = [v47 safeAreaLayoutGuide];

  v50 = [v49 leadingAnchor];
  v51 = [v46 constraintEqualToAnchor:v50];

  *(v28 + 48) = v51;
  v52 = [v18 view];

  if (!v52)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53 = [v52 trailingAnchor];

  v54 = [v1 view];
  if (v54)
  {
    v55 = v54;
    v56 = objc_opt_self();
    v57 = [v55 safeAreaLayoutGuide];

    v58 = [v57 trailingAnchor];
    v59 = [v53 constraintEqualToAnchor:v58];

    *(v28 + 56) = v59;
    sub_100002F44(0, &qword_1000211B8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_100002D98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClosuresViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100002E4C()
{
  result = qword_100021188;
  if (!qword_100021188)
  {
    sub_100002F44(255, &qword_100021180, CAFCarManager_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021188);
  }

  return result;
}

uint64_t sub_100002EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002EFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002F44(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100002FA0()
{
  v0 = (*(*(sub_100002EFC(&qword_1000211F0, &qword_100016968) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v11 - v1;
  v3 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  sub_10000342C(v8, qword_1000211C0);
  sub_1000033F4(v8, qword_1000211C0);
  (*(v4 + 104))(v7, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v3);
  v9 = type metadata accessor for CAUWidgetContentMargins();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_100010EB4(&_swiftEmptyArrayStorage);
  return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
}

uint64_t sub_100003144@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v3 = sub_1000033F4(v2, qword_1000211C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000031EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000339C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100003250()
{
  sub_100003328();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10000328C()
{
  sub_1000032D4();

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_1000032D4()
{
  result = qword_1000211D8;
  if (!qword_1000211D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211D8);
  }

  return result;
}

unint64_t sub_100003328()
{
  result = qword_1000211E0;
  if (!qword_1000211E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211E0);
  }

  return result;
}

unint64_t sub_10000339C()
{
  result = qword_1000211E8;
  if (!qword_1000211E8)
  {
    type metadata accessor for CAUAppUIConfiguration.Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211E8);
  }

  return result;
}

uint64_t sub_1000033F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000342C(uint64_t a1, uint64_t *a2)
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

id sub_1000034C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClosuresWindowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100009948(v2, &v17 - v11, &qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100003768@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SeatBeltViewUpdater();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000037A8()
{
  v1 = &qword_100016C00;
  v45 = sub_100002EFC(&qword_100021598, &qword_100016C00);
  v40 = *(v45 - 8);
  v2 = *(v40 + 64);
  v3 = (__chkstk_darwin)();
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - v6;
  __chkstk_darwin(v5);
  v42 = &v38 - v8;
  v9 = sub_100002EFC(&qword_1000215A0, &qword_100016C08);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9 - 8);
  v39 = &v38 - v11;
  v12 = *(v0 + *(type metadata accessor for SeatBeltsView(0) + 40));
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v44 = v12;

  v19 = 0;
  v41 = v13;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      v21 = __clz(__rbit64(v16)) | (v20 << 6);
      v22 = v44;
      v23 = *(v44 + 48);
      v24 = type metadata accessor for CAUVehicleLayoutKey();
      v25 = *(v24 - 8);
      v46 = v24;
      v47 = v25;
      v26 = v23 + *(v25 + 72) * v21;
      v27 = v42;
      (*(v25 + 16))(v42, v26, v24);
      v28 = *(*(v22 + 56) + 8 * v21);
      v29 = v45;
      *&v27[*(v45 + 48)] = v28;
      v30 = v27;
      v31 = v1;
      sub_1000098E0(v30, v7, &qword_100021598, v1);
      v32 = v43;
      sub_100009948(v7, v43, &qword_100021598, v1);
      v33 = *(v32 + *(v29 + 48));
      v34 = v28;
      v35 = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter();

      (*(v47 + 8))(v32, v46);
      if (v35)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_1000099B0(v7, &qword_100021598, v31);
      v19 = v20;
      v1 = v31;
      v13 = v41;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v36 = v39;
    sub_1000098E0(v7, v39, &qword_100021598, &qword_100016C00);
    v37 = 1;
    (*(v40 + 56))(v36, 0, 1, v45);
LABEL_12:
    sub_1000099B0(v36, &qword_1000215A0, &qword_100016C08);
    return v37;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v36 = v39;
        (*(v40 + 56))(v39, 1, 1, v45);
        v37 = 0;
        goto LABEL_12;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100003B64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D4>)
{
  v12 = sub_100002EFC(&qword_1000212C8, &qword_100016A00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v99 = &v82 - v14;
  v98 = sub_100002EFC(&qword_1000212D0, &qword_100016A08);
  v15 = *(v98 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v98);
  v97 = &v82 - v17;
  v18 = type metadata accessor for CAUVehicleLayoutInfo();
  v102 = *(v18 - 8);
  v19 = *(v102 + 64);
  v20 = __chkstk_darwin(v18);
  v96 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v107 = &v82 - v22;
  v111 = type metadata accessor for CAUVehicleLayoutKey();
  v101 = *(v111 - 8);
  v23 = *(v101 + 64);
  v24 = __chkstk_darwin(v111);
  v95 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v112 = &v82 - v25;
  *a3 = swift_getKeyPath();
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for SeatBeltsView(0);
  v27 = v26[5];
  static Font.Weight.medium.getter();
  *(a3 + v27) = v28;
  *(a3 + v26[6]) = 0x4042000000000000;
  *(a3 + v26[7]) = xmmword_100016990;
  v117 = &_swiftEmptyDictionarySingleton;
  v118 = &_swiftEmptyDictionarySingleton;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v29 = sub_1000081B8(_swiftEmptyArrayStorage);
  }

  else
  {
    v29 = &_swiftEmptySetSingleton;
  }

  v30 = v111;
  v116 = v29;
  v31 = type metadata accessor for SeatBeltViewUpdater();
  v103 = swift_allocObject();
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = a5;
  if (!result)
  {

    v72 = &_swiftEmptyDictionarySingleton;
    Height = 1.79769313e308;
    v73 = &_swiftEmptyDictionarySingleton;
    Width = 1.79769313e308;
LABEL_26:
    *(a3 + v26[9]) = Height;
    v74 = (a3 + v26[8]);
    *v74 = Width / 48.0;
    v74[1] = Height / 60.0;
    v75 = (a3 + v26[12]);
    v76 = v85;
    *v75 = a4;
    v75[1] = v76;
    *(a3 + v26[10]) = v73;
    *(a3 + v26[11]) = v72;
    v77 = (a3 + v26[14]);
    sub_1000086A0(&qword_1000212E8, type metadata accessor for SeatBeltViewUpdater);
    v78 = ObservedObject.init(wrappedValue:)();
    v80 = v79;
    v81 = type metadata accessor for CAUVehicleLayout();
    result = (*(*(v81 - 8) + 8))(a2, v81);
    *v77 = v78;
    v77[1] = v80;
    *(a3 + v26[13]) = v116;
    return result;
  }

  if (result >= 1)
  {
    v82 = v31;
    v83 = v26;
    v84 = a3;
    v34 = 0;
    v109 = a1 & 0xC000000000000001;
    v92 = v102 + 16;
    v91 = v102 + 32;
    v90 = v101 + 16;
    v89 = v23 + 7;
    v88 = v101 + 32;
    v87 = (v15 + 8);
    v86 = (v102 + 8);
    v108 = (v101 + 8);
    v106 = "E19SeatBeltViewUpdater";
    Height = 1.79769313e308;
    *&v32 = 136315138;
    v100 = v32;
    Width = 1.79769313e308;
    v105 = a1;
    v37 = v112;
    v94 = a2;
    v93 = v18;
    v110 = result;
    do
    {
      if (v109)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(a1 + 8 * v34 + 32);
      }

      v39 = v38;
      sub_100002F44(0, &qword_1000212E0, CAFSeatBelt_ptr);
      CAFPositionedRequired.layoutKey.getter();
      v40 = CAUVehicleLayout.infos.getter();
      if (*(v40 + 16) && (v41 = sub_100010B8C(v37), (v42 & 1) != 0))
      {
        v43 = v102;
        v44 = v96;
        (*(v102 + 16))(v96, *(v40 + 56) + *(v102 + 72) * v41, v18);

        (*(v43 + 32))(v107, v44, v18);
        v114 = 0;
        v115 = 0xE000000000000000;
        _StringGuts.grow(_:)(16);
        v45._countAndFlagsBits = 0x746C654274616553;
        v45._object = 0xEE00203A79656B20;
        String.append(_:)(v45);
        _print_unlocked<A, B>(_:_:)();
        sub_10000A50C(v114, v115);

        sub_1000084C0(&qword_1000212F0, &qword_1000212E0, CAFSeatBelt_ptr);
        v104 = CAFObserved<>.observable.getter();
        v114 = dispatch thunk of CAFSeatBeltObservable.$seatBeltIndicator.getter();
        v46 = [objc_opt_self() mainRunLoop];
        v113 = v46;
        v47 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v48 = v99;
        (*(*(v47 - 8) + 56))(v99, 1, 1, v47);
        sub_100002EFC(&qword_1000212F8, &qword_100016A40);
        sub_100002F44(0, &qword_100021300, NSRunLoop_ptr);
        sub_100009D48(&qword_100021308, &qword_1000212F8, &qword_100016A40);
        sub_1000084C0(&qword_100021310, &qword_100021300, NSRunLoop_ptr);
        v49 = v97;
        Publisher.receive<A>(on:options:)();
        sub_1000099B0(v48, &qword_1000212C8, &qword_100016A00);

        v50 = v101;
        v51 = v95;
        v52 = v111;
        (*(v101 + 16))(v95, v112, v111);
        v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
        v54 = (v89 + v53) & 0xFFFFFFFFFFFFFFF8;
        v55 = swift_allocObject();
        v56 = v51;
        v37 = v112;
        (*(v50 + 32))(v55 + v53, v56, v52);
        *(v55 + v54) = v39;
        *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v103;
        sub_100009D48(&qword_100021318, &qword_1000212D0, &qword_100016A08);
        v57 = v39;

        v58 = v98;
        Publisher<>.sink(receiveValue:)();

        (*v87)(v49, v58);
        AnyCancellable.store(in:)();

        v59 = CAUVehicleLayoutInfo.x.getter() * a6;
        v60 = CAUVehicleLayoutInfo.y.getter() * a6;
        v61 = CAUVehicleLayoutInfo.width.getter() * a6;
        v62 = CAUVehicleLayoutInfo.height.getter() * a6;
        sub_100006EDC(v37, v119, v59, v60, v61, v62);
        v63 = v104;

        v120.origin.x = v59;
        v120.origin.y = v60;
        v120.size.width = v61;
        v120.size.height = v62;
        if (CGRectGetWidth(v120) < Width)
        {
          v121.origin.x = v59;
          v121.origin.y = v60;
          v121.size.width = v61;
          v121.size.height = v62;
          Width = CGRectGetWidth(v121);
        }

        v122.origin.x = v59;
        v122.origin.y = v60;
        v122.size.width = v61;
        v122.size.height = v62;
        if (CGRectGetHeight(v122) < Height)
        {
          v123.origin.x = v59;
          v123.origin.y = v60;
          v123.size.width = v61;
          v123.size.height = v62;
          Height = CGRectGetHeight(v123);
        }

        v18 = v93;
        (*v86)(v107, v93);
        a2 = v94;
        a1 = v105;
        v30 = v111;
      }

      else
      {

        v114 = 0;
        v115 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v64._countAndFlagsBits = 0x746C654274616553;
        v64._object = 0xEE00203A79656B20;
        String.append(_:)(v64);
        _print_unlocked<A, B>(_:_:)();
        v65._object = (v106 | 0x8000000000000000);
        v65._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v65);
        v67 = v114;
        v66 = v115;
        v68 = static os_log_type_t.info.getter();
        if (qword_100020F28 != -1)
        {
          swift_once();
        }

        v69 = qword_1000223E0;
        if (os_log_type_enabled(qword_1000223E0, v68))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v114 = v71;
          *v70 = v100;
          *(v70 + 4) = sub_100009EA4(v67, v66, &v114);
          _os_log_impl(&_mh_execute_header, v69, v68, "%s", v70, 0xCu);
          sub_100008474(v71);
          v30 = v111;

          a1 = v105;
        }

        v37 = v112;
      }

      ++v34;
      (*v108)(v37, v30);
    }

    while (v110 != v34);

    v72 = v117;
    v73 = v118;
    a3 = v84;
    v26 = v83;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_100004890(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(16);
  type metadata accessor for CAUVehicleLayoutKey();
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x74616369646E6920;
  v4._object = 0xEC000000203A726FLL;
  String.append(_:)(v4);
  [a3 seatBeltIndicator];
  v5._countAndFlagsBits = CAFSeatBeltIndicator.description.getter();
  String.append(_:)(v5);

  sub_10000A644(0, 0xE000000000000000, 0xD000000000000024, 0x8000000100015200, 67);

  type metadata accessor for SeatBeltViewUpdater();
  sub_1000086A0(&qword_1000212E8, type metadata accessor for SeatBeltViewUpdater);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_1000049E8@<X0>(uint64_t a1@<X8>)
{
  v94 = sub_100002EFC(&qword_100021438, &qword_100016AC8);
  v98 = *(v94 - 8);
  v3 = *(v98 + 64);
  __chkstk_darwin(v94);
  v5 = &v73 - v4;
  v6 = type metadata accessor for SeatBeltsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v99 = v9;
  v95 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAUVehicleLayoutKey();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v93 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  __chkstk_darwin(v15);
  v19 = &v73 - v18;
  v88 = sub_100002EFC(&qword_100021440, &qword_100016AD0);
  v92 = *(v88 - 8);
  v20 = *(v92 + 64);
  v21 = __chkstk_darwin(v88);
  v91 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v90 = &v73 - v24;
  v25 = __chkstk_darwin(v23);
  v89 = &v73 - v26;
  v27 = __chkstk_darwin(v25);
  v97 = &v73 - v28;
  v29 = __chkstk_darwin(v27);
  v96 = &v73 - v30;
  __chkstk_darwin(v29);
  v100 = &v73 - v31;
  v32 = v1;
  if (sub_1000037A8())
  {
    v75 = a1;
    v74 = v5;
    v33 = v11[13];
    v77 = v19;
    v33(v19, enum case for CAUVehicleLayoutKey.seat_front_left(_:), v10);
    v76 = v17;
    v33(v17, enum case for CAUVehicleLayoutKey.seat_front_middle(_:), v10);
    v34 = v93;
    v33(v93, enum case for CAUVehicleLayoutKey.seat_front_right(_:), v10);
    v80 = v32;
    v101 = sub_100005450(v19, v17, v34);
    v35 = v95;
    v78 = type metadata accessor for SeatBeltsView;
    sub_100009118(v32, v95, type metadata accessor for SeatBeltsView);
    v87 = *(v7 + 80);
    v36 = (v87 + 16) & ~v87;
    v79 = v36;
    v37 = swift_allocObject();
    sub_100009394(v35, v37 + v36, type metadata accessor for SeatBeltsView);
    v86 = sub_100002EFC(&qword_100021448, &qword_100016AD8);
    v85 = type metadata accessor for UUID();
    v84 = sub_100002EFC(&qword_100021450, &qword_100016AE0);
    v83 = sub_100009D48(&qword_100021458, &qword_100021448, &qword_100016AD8);
    v82 = sub_100008C40();
    v81 = sub_1000086A0(&qword_1000214C8, type metadata accessor for SeatBeltsView.CombinedFrames);
    ForEach<>.init(_:content:)();
    v38 = v11[1];
    v39 = v93;
    v38(v93, v10);
    v40 = v76;
    v38(v76, v10);
    v41 = v77;
    v38(v77, v10);
    v42 = v33;
    v73 = v33;
    v33(v41, enum case for CAUVehicleLayoutKey.seat_2ndRow_left(_:), v10);
    v43 = v40;
    v42(v40, enum case for CAUVehicleLayoutKey.seat_2ndRow_middle(_:), v10);
    v44 = v39;
    v42(v39, enum case for CAUVehicleLayoutKey.seat_2ndRow_right(_:), v10);
    v45 = v39;
    v46 = v80;
    v101 = sub_100005450(v41, v43, v45);
    v47 = v46;
    v48 = v95;
    v49 = v78;
    sub_100009118(v47, v95, v78);
    v50 = v79;
    v51 = swift_allocObject();
    sub_100009394(v48, v51 + v50, v49);
    ForEach<>.init(_:content:)();
    v38(v44, v10);
    v38(v43, v10);
    v52 = v77;
    v38(v77, v10);
    v53 = v73;
    v73(v52, enum case for CAUVehicleLayoutKey.seat_3rdRow_left(_:), v10);
    v53(v43, enum case for CAUVehicleLayoutKey.seat_3rdRow_middle(_:), v10);
    v53(v44, enum case for CAUVehicleLayoutKey.seat_3rdRow_right(_:), v10);
    v54 = v80;
    v101 = sub_100005450(v52, v43, v44);
    v55 = v78;
    sub_100009118(v54, v48, v78);
    v56 = v79;
    v57 = swift_allocObject();
    sub_100009394(v48, v57 + v56, v55);
    v58 = v97;
    ForEach<>.init(_:content:)();
    v38(v44, v10);
    v38(v76, v10);
    v38(v52, v10);
    v59 = v92;
    v60 = *(v92 + 16);
    v61 = v88;
    v62 = v89;
    v60(v89, v100, v88);
    v63 = v90;
    v64 = v96;
    v60(v90, v96, v61);
    v65 = v91;
    v60(v91, v58, v61);
    v66 = v74;
    v60(v74, v62, v61);
    v67 = sub_100002EFC(&qword_1000214D0, &qword_100016B18);
    v60((v66 + *(v67 + 48)), v63, v61);
    v60((v66 + *(v67 + 64)), v65, v61);
    v68 = *(v59 + 8);
    v68(v97, v61);
    v68(v64, v61);
    v68(v100, v61);
    v68(v65, v61);
    v68(v63, v61);
    v68(v62, v61);
    v69 = v75;
    sub_1000098E0(v66, v75, &qword_100021438, &qword_100016AC8);
    return (*(v98 + 56))(v69, 0, 1, v94);
  }

  else
  {
    v71 = *(v98 + 56);
    v72 = v94;

    return v71(a1, 1, 1, v72);
  }
}

char *sub_100005450(uint64_t a1, char *a2, char *a3)
{
  v5 = v3;
  v9 = type metadata accessor for SeatBeltsView.CombinedFrames(0);
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  __chkstk_darwin(v9);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SeatBeltsView(0);
  v13 = *(v3 + *(v12 + 44));
  v14 = &_swiftEmptyArrayStorage;
  if (!*(v13 + 16))
  {
    v15 = &_swiftEmptyArrayStorage;
    v13 = v73;
    a2 = &_swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v15 = v12;
  LOBYTE(v3) = *(v3 + *(v12 + 44));
  v16 = sub_100010B8C(a1);
  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v5 + *(v15 + 10));
  if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  v18 = (*(v13 + 56) + 32 * v16);
  v19 = *v18;
  v79 = v18[1];
  v80 = v19;
  v20 = sub_100010B8C(a1);
  if ((v21 & 1) == 0 || (v22 = *(*(v3 + 56) + 8 * v20), LOBYTE(v3) = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter(), v4 = v3, v22, !v3))
  {
LABEL_9:
    v25 = &_swiftEmptyArrayStorage;
    if (*(v13 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v23 = sub_100006C08(0, 1, 1, &_swiftEmptyArrayStorage);
  v4 = *(v23 + 2);
  v24 = *(v23 + 3);
  v25 = v23;
  v26 = v4 + 1;
  if (v4 >= v24 >> 1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    *(v25 + 2) = v26;
    v27 = &v25[40 * v4];
    v27[32] = v3;
    v28 = v79;
    *(v27 + 40) = v80;
    *(v27 + 56) = v28;
    if (!*(v13 + 16))
    {
LABEL_8:
      v13 = v73;
      a2 = v14;
LABEL_35:
      v15 = v25;
      goto LABEL_36;
    }

LABEL_10:
    LOBYTE(v3) = v13;
    v29 = sub_100010B8C(a2);
    if ((v30 & 1) == 0)
    {
LABEL_21:
      a2 = v14;
      if (!*(v13 + 16))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v3 = *(v5 + *(v15 + 10));
    if (!*(v3 + 16))
    {
      a2 = v14;
LABEL_24:
      if (!*(v13 + 16))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v31 = (*(v13 + 56) + 32 * v29);
    v32 = *v31;
    v79 = v31[1];
    v80 = v32;
    v33 = sub_100010B8C(a2);
    if ((v34 & 1) == 0)
    {
      goto LABEL_21;
    }

    v35 = *(*(v3 + 56) + 8 * v33);
    LOBYTE(v3) = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter();
    v4 = v3;

    a2 = v14;
    if (!v3)
    {
      goto LABEL_24;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_100006C08(0, *(v25 + 2) + 1, 1, v25);
    }

    v4 = *(v25 + 2);
    v36 = *(v25 + 3);
    if (v4 >= v36 >> 1)
    {
      v25 = sub_100006C08((v36 > 1), v4 + 1, 1, v25);
    }

    *(v25 + 2) = v4 + 1;
    v37 = &v25[40 * v4];
    v37[32] = v3;
    v38 = v79;
    *(v37 + 40) = v80;
    *(v37 + 56) = v38;
    if (!*(v13 + 16))
    {
LABEL_34:
      v13 = v73;
      goto LABEL_35;
    }

LABEL_25:
    LOBYTE(v3) = v13;
    v39 = sub_100010B8C(a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_34;
    }

    v3 = *(v5 + *(v15 + 10));
    if (!*(v3 + 16))
    {
      goto LABEL_34;
    }

    v41 = (*(v13 + 56) + 32 * v39);
    v42 = *v41;
    v79 = v41[1];
    v80 = v42;
    v43 = sub_100010B8C(a3);
    v15 = v25;
    if (v44)
    {
      v3 = *(*(v3 + 56) + 8 * v43);
      v45 = dispatch thunk of CAFSeatBeltObservable.seatBeltIndicator.getter();

      v13 = v73;
      if (v45)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100006C08(0, *(v25 + 2) + 1, 1, v25);
        }

        v47 = *(v15 + 2);
        v46 = *(v15 + 3);
        v3 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v15 = sub_100006C08((v46 > 1), v47 + 1, 1, v15);
        }

        *(v15 + 2) = v3;
        v48 = &v15[40 * v47];
        v48[32] = v45;
        v49 = v79;
        *(v48 + 40) = v80;
        *(v48 + 56) = v49;
      }
    }

    else
    {
      v13 = v73;
    }

LABEL_36:
    *&v80 = *(v15 + 2);
    if (!v80)
    {
      break;
    }

    v26 = 0;
    v78 = a2;
    *&v79 = v15 + 32;
    v14 = 40;
    a3 = a2;
    v25 = &qword_100016BE0;
    v72 = v15;
    while (1)
    {
      v24 = *(v15 + 2);
      if (!*(a3 + 2))
      {
        if (v26 >= v24)
        {
          goto LABEL_73;
        }

        v51 = (v79 + 40 * v26);
        v4 = *v51;
        v74 = *(v51 + 24);
        v77 = *(v51 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100006C08(0, 1, 1, a3);
        }

        v5 = *(a3 + 2);
        v52 = *(a3 + 3);
        v3 = v5 + 1;
        if (v5 >= v52 >> 1)
        {
          a3 = sub_100006C08((v52 > 1), v5 + 1, 1, a3);
        }

        *(a3 + 2) = v3;
        v53 = &a3[40 * v5];
        v53[32] = v4;
        *(v53 + 56) = v74;
        *(v53 + 40) = v77;
        v24 = *(v15 + 2);
      }

      if (v26 >= v24)
      {
        break;
      }

      v4 = v26 + 1;
      v88 = CGRectOffset(*(v79 + 40 * v26 + 8), 1.0, 0.0);
      if (v26 + 1 >= v80)
      {
        goto LABEL_57;
      }

      v24 = *(v15 + 2);
      if (v4 >= v24)
      {
        goto LABEL_72;
      }

      v3 = v79 + 40 * v4;
      if (CGRectIntersectsRect(v88, *(v3 + 8)))
      {
        v24 = *(v15 + 2);
        if (v4 >= v24)
        {
          goto LABEL_74;
        }

        v54 = *v3;
        v74 = *(v3 + 24);
        v77 = *(v3 + 8);
        v5 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_100006C08(0, *(a3 + 2) + 1, 1, a3);
        }

        v56 = *(a3 + 2);
        v55 = *(a3 + 3);
        v3 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          a3 = sub_100006C08((v55 > 1), v56 + 1, 1, a3);
        }

        *(a3 + 2) = v3;
        v57 = &a3[40 * v56];
        v57[32] = v54;
        *(v57 + 56) = v74;
        *(v57 + 40) = v77;
        v4 = v5;
      }

      else
      {
LABEL_57:
        v58 = *(a3 + 2);
        if (v58)
        {
          *&v77 = v4;
          v87 = a2;
          sub_100007F10(0, v58, 0);
          v5 = v87;
          v59 = a3 + 56;
          do
          {
            v60 = *(v59 - 1);
            v61 = *v59;
            v81 = *(v59 - 24);
            v82 = v60;
            v83 = v61;
            sub_100002EFC(&qword_100021570, &qword_100016BD8);
            sub_100002EFC(&qword_100021578, &qword_100016BE0);
            swift_dynamicCast();
            v62 = v84;
            v63 = v85;
            v64 = v86;
            v87 = v5;
            v66 = *(v5 + 16);
            v65 = *(v5 + 24);
            if (v66 >= v65 >> 1)
            {
              v74 = v85;
              v71 = v86;
              sub_100007F10((v65 > 1), v66 + 1, 1);
              v64 = v71;
              v63 = v74;
              v5 = v87;
            }

            *(v5 + 16) = v66 + 1;
            v67 = v5 + 40 * v66;
            *(v67 + 32) = v62;
            *(v67 + 40) = v63;
            *(v67 + 56) = v64;
            v59 = (v59 + 40);
            --v58;
          }

          while (v58);

          v13 = v73;
          a2 = &_swiftEmptyArrayStorage;
          v15 = v72;
          v4 = v77;
        }

        else
        {

          v5 = a2;
        }

        UUID.init()();
        *(v13 + *(v76 + 20)) = v5;
        v68 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_100006A30(0, *(v68 + 2) + 1, 1, v68);
        }

        v3 = *(v68 + 2);
        v69 = *(v68 + 3);
        if (v3 >= v69 >> 1)
        {
          v68 = sub_100006A30(v69 > 1, v3 + 1, 1, v68);
        }

        *(v68 + 2) = v3 + 1;
        v50 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v78 = v68;
        sub_100009394(v13, &v68[v50 + *(v75 + 72) * v3], type metadata accessor for SeatBeltsView.CombinedFrames);
        a3 = a2;
      }

      v26 = v4;
      if (v4 == v80)
      {

        return v78;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    v25 = sub_100006C08((v24 > 1), v26, 1, v25);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100005C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for SeatBeltsView.CombinedFrames(0) + 20));
  if (*(v6 + 16) && (v7 = *(v6 + 40), sub_100006868(), v9 = v8, v10 = type metadata accessor for SeatBeltsView(0), *(v6 + 16)))
  {
    v11 = v10;
    v12 = (a2 + *(v10 + 48));
    v13 = v7 + v9 * 0.5 + *v12;
    v14 = *(v6 + 48);
    sub_100006868();
    v16 = v12[1] + v14 + v15 * 0.5;
    *a3 = static Alignment.center.getter();
    a3[1] = v17;
    v18 = sub_100002EFC(&qword_1000214D8, &qword_100016B20);
    sub_100005F14(a2, a1, a3 + *(v18 + 44));
    sub_100006868();
    v19 = *(a2 + *(v11 + 36));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v20 = (a3 + *(sub_100002EFC(&qword_100021490, &qword_100016AF8) + 36));
    *v20 = v35;
    v20[1] = v36;
    v20[2] = v37;
    v21 = [objc_opt_self() systemGray6Color];
    v22 = Color.init(uiColor:)();
    LOBYTE(v19) = static Edge.Set.all.getter();
    v23 = a3 + *(sub_100002EFC(&qword_100021480, &qword_100016AF0) + 36);
    *v23 = v22;
    v23[8] = v19;
    v24 = a3 + *(sub_100002EFC(&qword_100021470, &qword_100016AE8) + 36);
    v25 = *(type metadata accessor for RoundedRectangle() + 20);
    v26 = enum case for RoundedCornerStyle.continuous(_:);
    v27 = type metadata accessor for RoundedCornerStyle();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #10.0 }

    *v24 = _Q0;
    *&v24[*(sub_100002EFC(&qword_1000214C0, &qword_100016B10) + 36)] = 256;
    result = sub_100002EFC(&qword_100021450, &qword_100016AE0);
    v34 = (a3 + *(result + 36));
    *v34 = v13;
    v34[1] = v16;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100005F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v55 = a3;
  v4 = type metadata accessor for SeatBeltsView(0);
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  __chkstk_darwin(v4 - 8);
  v49 = v6;
  v50 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SeatBeltsView.CombinedFrames(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7 - 8);
  v47 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002EFC(&qword_1000214E0, &qword_100016B28);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v51 = v45 - v11;
  v12 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v45 - v18;
  v20 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_100003568(v24);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v21 + 8))(v24, v20);
  (*(v13 + 104))(v17, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v12);
  sub_1000086A0(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v58 != v56 || (v26 = -1.0, v59 != v57))
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v26 = -1.0;
    }

    else
    {
      v26 = 1.0;
    }
  }

  v27 = *(v13 + 8);
  v27(v17, v12);
  v27(v19, v12);

  v28 = v52;
  v29 = sub_1000064B0();
  v30 = v29[2];
  if (NSNotFound.getter())
  {
    v45[1] = v30;
    v31 = v28;
    v32 = v47;
    sub_100009118(v31, v47, type metadata accessor for SeatBeltsView.CombinedFrames);
    v33 = v25;
    v34 = v50;
    sub_100009118(v33, v50, type metadata accessor for SeatBeltsView);
    v35 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v36 = (v8 + *(v48 + 80) + v35) & ~*(v48 + 80);
    v37 = (v49 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_100009394(v32, v38 + v35, type metadata accessor for SeatBeltsView.CombinedFrames);
    sub_100009394(v34, v38 + v36, type metadata accessor for SeatBeltsView);
    *(v38 + v37) = v29;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    sub_100002EFC(&qword_1000214F0, &qword_100016B30);
    sub_100009518();
    v39 = v51;
    ForEach<>.init(_:content:)();
    v41 = v53;
    v40 = v54;
    v42 = v55;
    (*(v53 + 32))(v55, v39, v54);
    v43 = 0;
  }

  else
  {

    v43 = 1;
    v40 = v54;
    v42 = v55;
    v41 = v53;
  }

  return (*(v41 + 56))(v42, v43, 1, v40);
}

void *sub_1000064B0()
{
  v1 = *(v0 + *(type metadata accessor for SeatBeltsView.CombinedFrames(0) + 20));
  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100007F30(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *v4;
      v4 += 40;
      v6 = v7;
      v9 = result;
      v8 = result[3];
      if (v5 >= v8 >> 1)
      {
        sub_100007F30((v8 > 1), v5 + 1, 1);
        result = v9;
      }

      result[2] = v5 + 1;
      *(result + v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10000657C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_100002EFC(&qword_100021560, &qword_100016B68);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v45 - v14;
  v16 = type metadata accessor for SeatBeltsView.CombinedFrames(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = *(a2 + *(v16 + 20));
  if (*(v17 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = (v17 + 40 * a1);
  v19 = v18[5];
  v46.origin.y = v18[6];
  v46.size.width = v18[7];
  v46.size.height = v18[8];
  v46.origin.x = v19;
  Width = CGRectGetWidth(v46);
  if (!*(v17 + 16))
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = Width;
  v22 = *(v17 + 40);
  v23 = type metadata accessor for SeatBeltsView(0);
  v24 = *(a3 + v23[9]);
  v25 = Image.init(systemName:)();
  v26 = *(a3 + v23[6]);
  v27 = *(a3 + v23[5]);
  v28 = type metadata accessor for Font.Design();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  v29 = static Font.system(size:weight:design:)();
  sub_1000099B0(v15, &qword_100021560, &qword_100016B68);
  KeyPath = swift_getKeyPath();
  v31 = (a3 + v23[7]);
  v32 = *v31;
  v33 = v31[1];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (*(a4 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + a1 + 32) == 2)
  {
    v34 = static Color.red.getter();
  }

  else
  {
    v34 = static Color.green.getter();
  }

  v35 = v34;
  v36 = v19 + v21 * 0.5 - v22;
  v37 = swift_getKeyPath();
  v38 = (a3 + v23[8]);
  v39 = *v38;
  v40 = v38[1] * a6;
  result = static UnitPoint.center.getter();
  v42 = v45[1];
  *(a5 + 24) = v45[0];
  *a5 = v25;
  *(a5 + 8) = KeyPath;
  *(a5 + 16) = v29;
  *(a5 + 40) = v42;
  *(a5 + 56) = v45[2];
  *(a5 + 72) = v37;
  *(a5 + 80) = v35;
  *(a5 + 88) = v39;
  *(a5 + 96) = v40;
  *(a5 + 104) = v43;
  *(a5 + 112) = v44;
  *(a5 + 120) = v36;
  *(a5 + 128) = v24 * 0.5;
  return result;
}

void sub_100006868()
{
  v1 = *(v0 + *(type metadata accessor for SeatBeltsView.CombinedFrames(0) + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 40);
    CGRectGetWidth(*(v1 + 40 * v2));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 64);
      Height = 0.0;
      do
      {
        v7 = *(v5 - 3);
        v8 = *(v5 - 2);
        v9 = *(v5 - 1);
        v10 = *v5;
        v11.origin.x = v7;
        v11.origin.y = v8;
        v11.size.width = v9;
        v11.size.height = *v5;
        if (Height < CGRectGetHeight(v11))
        {
          v12.origin.x = v7;
          v12.origin.y = v8;
          v12.size.width = v9;
          v12.size.height = v10;
          Height = CGRectGetHeight(v12);
        }

        v5 += 5;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000069A0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

size_t sub_100006A30(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002EFC(&qword_100021588, &qword_100016BF0);
  v10 = *(type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
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

char *sub_100006C08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021580, &qword_100016BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

uint64_t sub_100006D24(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v29 = v14;
  v15 = sub_100010B8C(a2);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v16;
  if (v14[3] < v20)
  {
    sub_1000070D4(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_100010B8C(a2);
    if ((v3 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = v15;
    sub_100007A1C();
    v15 = v25;
    v22 = v29;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = v15;
    (*(v8 + 16))(v11, a2, v7);
    sub_100007890(v26, v11, a1, v22);
    v24 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v22 = v29;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v23 = v22[7];
  v24 = *(v23 + 8 * v15);
  *(v23 + 8 * v15) = a1;
LABEL_11:
  *v4 = v22;
  return v24;
}

unint64_t sub_100006EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v15 = type metadata accessor for CAUVehicleLayoutKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v6;
  v37 = v22;
  result = sub_100010B8C(a1);
  v25 = v22[2];
  v26 = v24 ^ 1;
  v27 = __OFADD__(v25, (v24 ^ 1) & 1);
  v28 = v25 + ((v24 ^ 1) & 1);
  if (v27)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v24;
  if (v22[3] < v28)
  {
    sub_1000074B0(v28, isUniquelyReferenced_nonNull_native);
    result = sub_100010B8C(a1);
    if ((v7 & 1) == (v29 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v34 = result;
    sub_100007C90();
    result = v34;
    v30 = v37;
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_10:
    v35 = result;
    (*(v16 + 16))(v19, a1, v15);
    result = sub_100007948(v35, v19, v30, a3, a4, a5, a6);
    v32 = 0uLL;
    v33 = 0uLL;
    goto LABEL_11;
  }

LABEL_6:
  v30 = v37;
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v31 = v30[7] + 32 * result;
  v32 = *v31;
  v33 = *(v31 + 16);
  *v31 = a3;
  *(v31 + 8) = a4;
  *(v31 + 16) = a5;
  *(v31 + 24) = a6;
LABEL_11:
  *v8 = v30;
  *a2 = v32;
  *(a2 + 16) = v33;
  *(a2 + 32) = v26 & 1;
  return result;
}

uint64_t sub_1000070D4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100002EFC(&qword_100021338, &qword_100016A50);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1000086A0(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000074B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100002EFC(&qword_100021348, &qword_100016A58);
  v50 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v6;
    v20 = v18 & *(v11 + 64);
    v21 = (v17 + 63) >> 6;
    v48 = (v7 + 16);
    v49 = v7;
    v51 = (v7 + 32);
    v22 = result + 64;
    v55 = v19;
    v56 = v10;
    v23 = v7;
    while (v20)
    {
      v29 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v32 = v29 | (v15 << 6);
      v33 = *(v11 + 48);
      v54 = *(v23 + 72);
      v34 = v33 + v54 * v32;
      if (v50)
      {
        (*v51)(v56, v34, v55);
      }

      else
      {
        (*v48)(v56, v34, v55);
      }

      v35 = (*(v11 + 56) + 32 * v32);
      v36 = *v35;
      v52 = v35[1];
      v53 = v36;
      v37 = *(v14 + 40);
      sub_1000086A0(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v38 = -1 << *(v14 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v22 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v25 = v49;
        v26 = v56;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v22 + 8 * v40);
          if (v44 != -1)
          {
            v24 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v39) & ~*(v22 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v25 = v49;
      v26 = v56;
LABEL_9:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v51)(*(v14 + 48) + v54 * v24, v26, v55);
      v27 = (*(v14 + 56) + 32 * v24);
      v28 = v52;
      *v27 = v53;
      v27[1] = v28;
      ++*(v14 + 16);
      v23 = v25;
    }

    v30 = v15;
    while (1)
    {
      v15 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v21)
      {
        break;
      }

      v31 = v16[v15];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v20 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v11 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v45;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100007890(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CAUVehicleLayoutKey();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100007948(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a3[6];
  v15 = type metadata accessor for CAUVehicleLayoutKey();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a3[7] + 32 * a1);
  *v17 = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v18 = a3[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v20;
  }

  return result;
}

char *sub_100007A1C()
{
  v1 = v0;
  v32 = type metadata accessor for CAUVehicleLayoutKey();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002EFC(&qword_100021338, &qword_100016A50);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100007C90()
{
  v1 = v0;
  v35 = type metadata accessor for CAUVehicleLayoutKey();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v35);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002EFC(&qword_100021348, &qword_100016A58);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v37 + 16;
    v31 = v4 + 64;
    for (i = v37 + 32; v13; v28[1] = v29)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v37;
      v20 = *(v37 + 72) * v18;
      v21 = v34;
      v22 = v35;
      (*(v37 + 16))(v34, *(v4 + 48) + v20, v35);
      v18 *= 32;
      v23 = (*(v4 + 56) + v18);
      v24 = v36;
      v25 = *(v36 + 48);
      v26 = *(v19 + 32);
      v27 = *v23;
      v38 = v23[1];
      v39 = v27;
      result = v26(v25 + v20, v21, v22);
      v28 = (*(v24 + 56) + v18);
      v29 = v38;
      *v28 = v39;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v6 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_100007F10(char *a1, int64_t a2, char a3)
{
  result = sub_100007F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007F30(char *a1, int64_t a2, char a3)
{
  result = sub_10000806C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007F50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021590, &qword_100016BF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_10000806C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021568, &qword_100016BD0);
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

uint64_t sub_100008160@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000818C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_1000081B8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100002EFC(&qword_100021320, &qword_100016A48);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_1000086A0(&qword_100021328, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1000086A0(&qword_100021330, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100008474(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000084C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002F44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008504(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000854C()
{
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000085F8(uint64_t a1)
{
  v3 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100004890(a1, v1 + v4, v6);
}

uint64_t sub_1000086A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000086FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000087D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_10000889C()
{
  sub_1000089F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        sub_100008A4C(319, &qword_1000213C8, &type metadata accessor for CAFSeatBeltObservable);
        if (v3 <= 0x3F)
        {
          sub_100008A4C(319, &qword_1000213D0, type metadata accessor for CGRect);
          if (v4 <= 0x3F)
          {
            sub_100008AF8();
            if (v5 <= 0x3F)
            {
              sub_100008B8C();
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

void sub_1000089F4()
{
  if (!qword_1000213C0)
  {
    type metadata accessor for CAUAppUIConfiguration.Configuration();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1000213C0);
    }
  }
}

void sub_100008A4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CAUVehicleLayoutKey();
    a3(255);
    sub_1000086A0(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey);
    v5 = type metadata accessor for Dictionary();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100008AF8()
{
  if (!qword_1000213D8)
  {
    type metadata accessor for AnyCancellable();
    sub_1000086A0(&qword_100021328, &type metadata accessor for AnyCancellable);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1000213D8);
    }
  }
}

void sub_100008B8C()
{
  if (!qword_1000213E0)
  {
    type metadata accessor for SeatBeltViewUpdater();
    sub_1000086A0(&qword_1000212E8, type metadata accessor for SeatBeltViewUpdater);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000213E0);
    }
  }
}

unint64_t sub_100008C40()
{
  result = qword_100021460;
  if (!qword_100021460)
  {
    sub_100008504(&qword_100021450, &qword_100016AE0);
    sub_100008CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021460);
  }

  return result;
}

unint64_t sub_100008CCC()
{
  result = qword_100021468;
  if (!qword_100021468)
  {
    sub_100008504(&qword_100021470, &qword_100016AE8);
    sub_100008D84();
    sub_100009D48(&qword_1000214B8, &qword_1000214C0, &qword_100016B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021468);
  }

  return result;
}

unint64_t sub_100008D84()
{
  result = qword_100021478;
  if (!qword_100021478)
  {
    sub_100008504(&qword_100021480, &qword_100016AF0);
    sub_100008E3C();
    sub_100009D48(&qword_1000214A8, &qword_1000214B0, &qword_100016B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021478);
  }

  return result;
}

unint64_t sub_100008E3C()
{
  result = qword_100021488;
  if (!qword_100021488)
  {
    sub_100008504(&qword_100021490, &qword_100016AF8);
    sub_100009D48(&qword_100021498, &qword_1000214A0, &qword_100016B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021488);
  }

  return result;
}

uint64_t sub_100008F14(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008F4C()
{
  v1 = type metadata accessor for SeatBeltsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[10]);

  v9 = *(v5 + v1[11]);

  v10 = *(v5 + v1[13]);

  v11 = *(v5 + v1[14] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100009094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SeatBeltsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100005C70(a1, v6, a2);
}

uint64_t sub_100009118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009180()
{
  v1 = (type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for SeatBeltsView(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v0 + v3;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + v1[7]);

  v12 = (v0 + v7);
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v13 - 8) + 8))(v0 + v7, v13);
  }

  else
  {
    v14 = *v12;
  }

  v15 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v12 + v5[10]);

  v17 = *(v12 + v5[11]);

  v18 = *(v12 + v5[13]);

  v19 = *(v12 + v5[14] + 8);

  v20 = *(v0 + v15);

  return _swift_deallocObject(v0, ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_100009394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000093FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SeatBeltsView.CombinedFrames(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SeatBeltsView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000657C(a1, v2 + v6, v2 + v9, v11, a2, v12);
}

unint64_t sub_100009518()
{
  result = qword_1000214F8;
  if (!qword_1000214F8)
  {
    sub_100008504(&qword_1000214F0, &qword_100016B30);
    sub_1000095A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214F8);
  }

  return result;
}

unint64_t sub_1000095A4()
{
  result = qword_100021500;
  if (!qword_100021500)
  {
    sub_100008504(&qword_100021508, &qword_100016B38);
    sub_100009630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021500);
  }

  return result;
}

unint64_t sub_100009630()
{
  result = qword_100021510;
  if (!qword_100021510)
  {
    sub_100008504(&qword_100021518, &qword_100016B40);
    sub_1000096E8();
    sub_100009D48(&qword_100021550, &qword_100021558, &qword_100016B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021510);
  }

  return result;
}

unint64_t sub_1000096E8()
{
  result = qword_100021520;
  if (!qword_100021520)
  {
    sub_100008504(&qword_100021528, &qword_100016B48);
    sub_100009774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021520);
  }

  return result;
}

unint64_t sub_100009774()
{
  result = qword_100021530;
  if (!qword_100021530)
  {
    sub_100008504(&qword_100021538, &unk_100016B50);
    sub_100009D48(&qword_100021540, &qword_100021548, &unk_1000172A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021530);
  }

  return result;
}

uint64_t sub_10000982C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100009858(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100009884@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000098B0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_1000098E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000099B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002EFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_100009AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void sub_100009BAC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100009C30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009C30()
{
  if (!qword_100021610)
  {
    sub_100008504(&qword_100021578, &qword_100016BE0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100021610);
    }
  }
}

unint64_t sub_100009C98()
{
  result = qword_100021640;
  if (!qword_100021640)
  {
    sub_100008504(&qword_100021648, &qword_100016C20);
    sub_100009D48(&qword_100021650, &qword_100021438, &qword_100016AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021640);
  }

  return result;
}

uint64_t sub_100009D48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008504(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009DE4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000A4C0();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000223E0 = result;
  return result;
}

uint64_t sub_100009EA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009F70(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000A464(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008474(v11);
  return v7;
}

unint64_t sub_100009F70(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000A07C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000A07C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000A0C8(a1, a2);
  sub_10000A1F8(&off_10001D008);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000A0C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000A2E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000A2E4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000A1F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000A358(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000A2E4(uint64_t a1, uint64_t a2)
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

  sub_100002EFC(&qword_100021660, &qword_100016C68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000A358(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EFC(&qword_100021660, &qword_100016C68);
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

uint64_t sub_10000A464(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000A4C0()
{
  result = qword_100021668;
  if (!qword_100021668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021668);
  }

  return result;
}

uint64_t sub_10000A524(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (qword_100020F28 != -1)
  {
    swift_once();
  }

  v6 = qword_1000223E0;
  result = os_log_type_enabled(qword_1000223E0, v5);
  if (result)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100009EA4(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v6, v5, "%s", v8, 0xCu);
    sub_100008474(v9);
  }

  return result;
}

uint64_t sub_10000A644(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = static os_log_type_t.debug.getter();
  if (qword_100020F28 != -1)
  {
    swift_once();
  }

  v11 = qword_1000223E0;
  result = os_log_type_enabled(qword_1000223E0, v10);
  if (result)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100009EA4(a3, a4, &v14);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a5;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_100009EA4(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v11, v10, "%s:%ld  %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

__n128 sub_10000A7B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000A7C8(uint64_t a1, int a2)
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

uint64_t sub_10000A810(uint64_t result, int a2, int a3)
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

uint64_t sub_10000A888@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002EFC(&qword_1000216C8, &qword_100016E10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v35 - v6);
  v8 = sub_100002EFC(&qword_1000216D0, &qword_100016E18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = a1[1];
  v13 = dispatch thunk of CAFCarManagerObservable.currentCar.getter();
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = a1[5];
  v16 = dispatch thunk of CARSessionStatusObservable.session.getter();
  if (!v16)
  {
LABEL_6:

LABEL_7:
    *v7 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v33 = (v7 + *(v4 + 36));
    *v33 = sub_10000AC9C;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = 0;
    sub_100009948(v7, v11, &qword_1000216C8, &qword_100016E10);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_1000216D8, &qword_100016E28);
    sub_10001111C();
    sub_1000112B4();
    _ConditionalContent<>.init(storage:)();
    v30 = v7;
    v31 = &qword_1000216C8;
    v32 = &qword_100016E10;
    return sub_1000099B0(v30, v31, v32);
  }

  v17 = v16;
  v18 = a1[3];
  v19 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (!v19)
  {

    v14 = v17;
    goto LABEL_6;
  }

  v20 = v19;
  sub_100002F44(0, &qword_100021720, CAFCar_ptr);
  v37 = a2;
  sub_1000084C0(&qword_100021728, &qword_100021720, CAFCar_ptr);
  CAFObserved<>.observable.getter();
  type metadata accessor for CAFCarObservable();
  sub_1000110D4(&qword_100021730, &type metadata accessor for CAFCarObservable);
  v36 = v20;
  v21 = ObservedObject.init(wrappedValue:)();
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v25 = [v17 configuration];
  v26 = [v25 rightHandDrive];

  *&v39 = v21;
  *(&v39 + 1) = v23;
  v27 = v36;
  *&v40 = v36;
  *(&v40 + 1) = sub_10000AC80;
  v41 = 0uLL;
  *&v42 = 0;
  *(&v42 + 1) = KeyPath;
  v43 = v26;
  v11[64] = v26;
  v28 = v42;
  *(v11 + 2) = v41;
  *(v11 + 3) = v28;
  v29 = v40;
  *v11 = v39;
  *(v11 + 1) = v29;
  swift_storeEnumTagMultiPayload();
  sub_100009948(&v39, v38, &qword_1000216D8, &qword_100016E28);
  sub_100009948(&v39, v38, &qword_1000216D8, &qword_100016E28);
  sub_100002EFC(&qword_1000216D8, &qword_100016E28);
  sub_10001111C();
  sub_1000112B4();
  _ConditionalContent<>.init(storage:)();

  sub_1000099B0(&v39, &qword_1000216D8, &qword_100016E28);
  v30 = &v39;
  v31 = &qword_1000216D8;
  v32 = &qword_100016E28;
  return sub_1000099B0(v30, v31, v32);
}

uint64_t sub_10000ACF8(uint64_t a1)
{
  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_1000032D4();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10000AE3C@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v2 = sub_100002EFC(&qword_1000211F0, &qword_100016968);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v25[0] = v25 - v4;
  v5 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAUAppUIConfiguration.Mode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CAUAppUIConfiguration.App();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 24);
  v21 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v21)
  {
    v22 = v21;
    (*(v16 + 104))(v19, enum case for CAUAppUIConfiguration.App.closures(_:), v15);
    (*(v11 + 104))(v14, enum case for CAUAppUIConfiguration.Mode.popover(_:), v10);
    dispatch thunk of CAUAssetLibrary.configuration(app:mode:)();

    (*(v11 + 8))(v14, v10);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    (*(v6 + 104))(v9, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v5);
    v24 = type metadata accessor for CAUWidgetContentMargins();
    (*(*(v24 - 8) + 56))(v25[0], 1, 1, v24);
    sub_100010EB4(_swiftEmptyArrayStorage);
    return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
  }
}

uint64_t sub_10000B16C(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    _StringGuts.grow(_:)(47);

    v2 = [v1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    sub_10000A50C(0xD00000000000002DLL, 0x80000001000153C0);
  }

  else
  {

    return sub_10000A50C(0xD00000000000001CLL, 0x80000001000153A0);
  }
}

uint64_t sub_10000B35C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v21[0] = *v1;
  v21[1] = v3;
  v21[2] = v1[2];
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_100002EFC(&qword_100021670, &qword_100016D68);
  sub_10000A888(v21, a1 + *(v5 + 44));
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(sub_100002EFC(&qword_100021678, &qword_100016DA0) + 36));
  v8 = *(sub_100002EFC(&qword_100021680, &qword_100016DA8) + 28);
  v9 = enum case for LayoutDirection.leftToRight(_:);
  v10 = type metadata accessor for LayoutDirection();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = KeyPath;
  v11 = swift_getKeyPath();
  v12 = (a1 + *(sub_100002EFC(&qword_100021688, &qword_100016DD8) + 36));
  v13 = sub_100002EFC(&qword_100021690, &qword_100016DE0);
  sub_10000AE3C(v12 + *(v13 + 28));
  *v12 = v11;
  v14 = sub_100002EFC(&qword_100021698, &qword_100016DE8);
  v15 = a1 + *(v14 + 52);
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  v16 = (a1 + *(v14 + 56));
  *v16 = sub_10000B16C;
  v16[1] = 0;
  v17 = sub_100002EFC(&qword_1000216A0, &unk_100016DF0);
  v18 = a1 + *(v17 + 52);
  result = dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();
  v20 = (a1 + *(v17 + 56));
  *v20 = sub_10000B288;
  v20[1] = 0;
  return result;
}

uint64_t sub_10000B5E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30[0] = a1;
  v30[1] = a4;
  v6 = sub_100002EFC(&qword_1000216C8, &qword_100016E10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v30 - v8);
  v10 = sub_100002EFC(&qword_1000217D0, &qword_100016F68);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v30 - v12;
  v14 = sub_100002EFC(&qword_1000217D8, &qword_100016F70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v30 - v16);
  v18 = CAFCarObservable.observed.getter();
  v19 = [v18 isConfigured];

  if (v19)
  {
    v20 = CAFCarObservable.observed.getter();
    sub_10000B8E4(v20, a3, v17);
    v21 = (v17 + *(v14 + 36));
    *v21 = sub_10000BDF8;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = 0;
    sub_100009948(v17, v13, &qword_1000217D8, &qword_100016F70);
    swift_storeEnumTagMultiPayload();
    sub_100011758();
    sub_1000112B4();
    _ConditionalContent<>.init(storage:)();
    v22 = v17;
    v23 = &qword_1000217D8;
    v24 = &qword_100016F70;
  }

  else
  {
    *v9 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v25 = swift_allocObject();
    *(v25 + 2) = v30[0];
    *(v25 + 3) = a2;
    *(v25 + 4) = a3;
    v26 = (v9 + *(v6 + 36));
    *v26 = sub_10001174C;
    v26[1] = v25;
    v26[2] = 0;
    v26[3] = 0;
    sub_100009948(v9, v13, &qword_1000216C8, &qword_100016E10);
    swift_storeEnumTagMultiPayload();
    sub_100011758();
    sub_1000112B4();
    v27 = a2;
    v28 = a3;
    _ConditionalContent<>.init(storage:)();
    v22 = v9;
    v23 = &qword_1000216C8;
    v24 = &qword_100016E10;
  }

  return sub_1000099B0(v22, v23, v24);
}

uint64_t sub_10000B8E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
  v6 = *(*(v40 - 8) + 64);
  v7 = __chkstk_darwin(v40);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v37 - v9;
  v10 = type metadata accessor for CAUResource();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v43 = &v37 - v16;
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  *a3 = swift_getKeyPath();
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for CarView(0);
  v20 = a3 + v19[5];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = a3 + v19[6];
  v45 = 0;
  State.init(wrappedValue:)();
  v22 = v47;
  *v21 = v46;
  *(v21 + 1) = v22;
  *(a3 + v19[11]) = a1;
  v23 = v19[9];
  v44 = a3;
  *(a3 + v23) = a2;
  v24 = v11[13];
  v24(v18, enum case for CAUResource.topDownExteriorClosuresOverlay(_:), v10);
  v25 = a2;
  v26 = CAUAssetLibrary.asset(for:)();
  v27 = v11[1];
  v27(v18, v10);
  v28 = v43;
  *(v44 + v19[7]) = v26;
  v24(v28, enum case for CAUResource.topDownInterior(_:), v10);
  v38 = v26;
  v37 = v26;
  v29 = CAUAssetLibrary.asset(for:)();
  v27(v43, v10);
  *(v44 + v19[8]) = v29;
  v30 = v39;
  v24(v39, enum case for CAUResource.vehicleLayout(_:), v10);
  sub_100011834();
  v43 = v29;
  v31 = v41;
  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();

  v27(v30, v10);
  v32 = v19[10];
  sub_1000098E0(v31, v44 + v32, &qword_1000217F0, &qword_100016F78);
  if (v38)
  {

    if (v29)
    {
LABEL_3:

      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A44C(0xD000000000000028, 0x8000000100015460);
    if (v29)
    {
      goto LABEL_3;
    }
  }

  sub_10000A44C(0xD000000000000028, 0x8000000100015490);
LABEL_6:
  v33 = v42;
  sub_100009948(v44 + v32, v42, &qword_1000217F0, &qword_100016F78);
  v34 = type metadata accessor for CAUVehicleLayout();
  v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
  result = sub_1000099B0(v33, &qword_1000217F0, &qword_100016F78);
  if (v35 == 1)
  {
    return sub_10000A44C(0xD00000000000003ELL, 0x80000001000154C0);
  }

  return result;
}

uint64_t sub_10000BF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002EFC(&qword_1000216C8, &qword_100016E10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v24 - v6);
  v8 = sub_100002EFC(&qword_100021930, &qword_100017010);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v24 - v10);
  v12 = type metadata accessor for CarView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + *(__chkstk_darwin(v12 - 8) + 36));
  if (v16)
  {
    sub_1000120A4(v2, v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24[2] = v4;
    v24[3] = a1;
    v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v24[1] = v8;
    v18 = (v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_10001260C(v15, v19 + v17, type metadata accessor for CarView);
    *(v19 + v18) = v16;
    sub_1000120A4(v2, v15);
    v20 = swift_allocObject();
    sub_10001260C(v15, v20 + v17, type metadata accessor for CarView);
    *v11 = sub_100012314;
    v11[1] = v19;
    v11[2] = sub_1000125AC;
    v11[3] = v20;
    v11[4] = 0;
    v11[5] = 0;
    swift_storeEnumTagMultiPayload();
    v21 = v16;
    sub_100002EFC(&qword_100021938, &qword_100017018);
    sub_100011FEC();
    sub_1000112B4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v7 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v23 = (v7 + *(v4 + 36));
    *v23 = sub_10000E0C4;
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = 0;
    sub_100009948(v7, v11, &qword_1000216C8, &qword_100016E10);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_100021938, &qword_100017018);
    sub_100011FEC();
    sub_1000112B4();
    _ConditionalContent<>.init(storage:)();
    return sub_1000099B0(v7, &qword_1000216C8, &qword_100016E10);
  }
}

double sub_10000C284@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_100002EFC(&qword_100021960, &qword_100017030);
  sub_10000C354(a1, a2, (a3 + *(v7 + 44)));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = (a3 + *(sub_100002EFC(&qword_100021968, &qword_100017038) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_10000C354@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C7A0();
  v38 = a2;
  UIImage.fit(to:)();
  v35 = v43;
  v36 = v42;
  v18 = v44;
  sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v17);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v14 + 8))(v17, v13);
  (*(v6 + 104))(v10, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v5);
  sub_1000110D4(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v42 == v41)
  {
    v19 = *(v6 + 8);
    v19(v10, v5);
    v19(v12, v5);

    v20 = 0.0;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v22 = *(v6 + 8);
    v22(v10, v5);
    v22(v12, v5);

    v20 = 0.0;
    if ((v21 & 1) == 0)
    {
      if (sub_10000EEB8(type metadata accessor for CarView))
      {
        v20 = 1.57079633;
      }

      else
      {
        v20 = -1.57079633;
      }
    }
  }

  v23 = static Alignment.center.getter();
  v24 = v37;
  *v37 = v23;
  v24[1] = v25;
  v26 = *(sub_100002EFC(&qword_100021970, &qword_100017040) + 44);
  v39[0] = v36;
  v39[1] = v35;
  v40 = v18;
  sub_10000CAAC(v38, a1, v39, (v24 + v26));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = (v24 + *(sub_100002EFC(&qword_100021978, &qword_100017048) + 36));
  v28 = v43;
  *v27 = v42;
  v27[1] = v28;
  v27[2] = v44;
  static UnitPoint.center.getter();
  v30 = v29;
  v32 = v31;
  result = sub_100002EFC(&qword_100021980, &qword_100017050);
  v34 = v24 + *(result + 36);
  *v34 = v20;
  *(v34 + 1) = v30;
  *(v34 + 2) = v32;
  return result;
}

double sub_10000C7A0()
{
  v0 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v20 - v6;
  v8 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v12);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v0);
  sub_1000110D4(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    v13 = *(v1 + 8);
    v13(v5, v0);
    v13(v7, v0);
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = *(v1 + 8);
    v15(v5, v0);
    v15(v7, v0);

    if ((v14 & 1) == 0)
    {
      GeometryProxy.size.getter();
      return v18;
    }
  }

  GeometryProxy.size.getter();
  v17 = v16;
  GeometryProxy.size.getter();
  return v17;
}

uint64_t sub_10000CAAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  v115 = a2;
  v113 = a4;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 2);
  v8 = *(a3 + 3);
  v9 = a3[4];
  v10 = type metadata accessor for SeatBeltsView(0);
  v111 = *(v10 - 8);
  v112 = v10;
  v11 = *(v111 + 64);
  __chkstk_darwin(v10);
  v90 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v106 = &v88 - v15;
  v92 = type metadata accessor for CAUVehicleLayout();
  v91 = *(v92 - 8);
  v16 = *(v91 + 64);
  v17 = __chkstk_darwin(v92);
  v89 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v88 - v19;
  v20 = sub_100002EFC(&qword_100021988, &qword_100017058);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v110 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v109 = &v88 - v24;
  v114 = type metadata accessor for CarView(0);
  v97 = *(v114 - 1);
  v25 = *(v97 + 64);
  __chkstk_darwin(v114);
  v98 = v26;
  v99 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100002EFC(&qword_100021990, &qword_100017060);
  v102 = *(v27 - 8);
  v103 = v27;
  v28 = *(v102 + 64);
  __chkstk_darwin(v27);
  v100 = &v88 - v29;
  v30 = sub_100002EFC(&qword_100021998, &qword_100017068);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v108 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v107 = &v88 - v34;
  v35 = type metadata accessor for Image.Interpolation();
  v36 = *(v35 - 8);
  v37 = v36[8];
  __chkstk_darwin(v35);
  v39 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Image.ResizingMode();
  v41 = *(v40 - 8);
  v42 = v41[8];
  __chkstk_darwin(v40);
  v44 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  Image.init(uiImage:)();
  v46 = enum case for Image.ResizingMode.stretch(_:);
  v96 = v41[13];
  v96(v44, enum case for Image.ResizingMode.stretch(_:), v40);
  Image.resizable(capInsets:resizingMode:)();

  v95 = v41[1];
  v95(v44, v40);
  v47 = v36[13];
  v94 = enum case for Image.Interpolation.high(_:);
  v93 = v47;
  v47(v39);
  v105 = Image.interpolation(_:)();

  v48 = v36[1];
  v104 = v35;
  v101 = v36 + 1;
  v48(v39, v35);
  v49 = *(v115 + v114[8]);
  if (v49)
  {
    v50 = v48;
    v51 = v49;
    Image.init(uiImage:)();
    v96(v44, v46, v40);
    Image.resizable(capInsets:resizingMode:)();

    v95(v44, v40);
    v52 = v104;
    v93(v39, v94, v104);
    v53 = Image.interpolation(_:)();

    v50(v39, v52);
    v104 = v53;

    LODWORD(v101) = 1;
  }

  else
  {
    v104 = 0;
    LODWORD(v101) = 0;
  }

  v54 = v115;
  v55 = *(v115 + v114[11]);
  v56 = [v55 closure];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 closureStates];
    sub_100002F44(0, &qword_1000219A8, CAFClosureState_ptr);
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = v59;
    v60 = v99;
    sub_1000120A4(v54, v99);
    v61 = (*(v97 + 80) + 56) & ~*(v97 + 80);
    v62 = swift_allocObject();
    v62[2] = v5;
    v62[3] = v6;
    *(v62 + 4) = v7;
    *(v62 + 5) = v8;
    v62[6] = v9;
    sub_10001260C(v60, v62 + v61, type metadata accessor for CarView);
    sub_100002EFC(&qword_1000219B0, &qword_100017078);
    type metadata accessor for UUID();
    type metadata accessor for ClosureView(0);
    sub_100009D48(&qword_1000219B8, &qword_1000219B0, &qword_100017078);
    sub_1000110D4(&qword_1000219C0, type metadata accessor for ClosureView);
    sub_1000084C0(&qword_1000219C8, &qword_1000219A8, CAFClosureState_ptr);
    v63 = v100;
    ForEach<>.init(_:content:)();

    v65 = v102;
    v64 = v103;
    v66 = v107;
    (*(v102 + 32))(v107, v63, v103);
    v67 = 0;
    v68 = v109;
    v69 = v106;
  }

  else
  {
    sub_10000A50C(0xD00000000000001DLL, 0x8000000100015540);
    v67 = 1;
    v68 = v109;
    v69 = v106;
    v66 = v107;
    v65 = v102;
    v64 = v103;
  }

  (*(v65 + 56))(v66, v67, 1, v64);
  v70 = [v55 seat];
  if (!v70)
  {
    sub_10000A50C(0xD00000000000001ALL, 0x8000000100015560);
    goto LABEL_12;
  }

  v71 = v70;
  v72 = [v70 seatBelts];

  if (!v72)
  {
LABEL_12:
    v76 = 1;
    goto LABEL_14;
  }

  sub_100002F44(0, &qword_1000212E0, CAFSeatBelt_ptr);
  v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100009948(v115 + v114[10], v69, &qword_1000217F0, &qword_100016F78);
  v74 = v91;
  v75 = v92;
  if ((*(v91 + 48))(v69, 1, v92) == 1)
  {

    sub_1000099B0(v69, &qword_1000217F0, &qword_100016F78);
    v76 = 1;
  }

  else
  {
    v77 = v88;
    (*(v74 + 32))(v88, v69, v75);
    v78 = v89;
    (*(v74 + 16))(v89, v77, v75);
    v79 = v90;
    sub_100003B64(v73, v78, v90, v5, v6, v9);
    (*(v74 + 8))(v77, v75);
    sub_10001260C(v79, v68, type metadata accessor for SeatBeltsView);
    v76 = 0;
  }

LABEL_14:
  (*(v111 + 56))(v68, v76, 1, v112);
  v80 = v108;
  sub_100009948(v66, v108, &qword_100021998, &qword_100017068);
  v81 = v68;
  v82 = v68;
  v83 = v110;
  sub_100009948(v81, v110, &qword_100021988, &qword_100017058);
  v84 = v113;
  v85 = v104;
  *v113 = v105;
  v84[1] = 0;
  *(v84 + 8) = 1;
  v84[3] = v85;
  v84[4] = 0;
  *(v84 + 20) = v101;
  v86 = sub_100002EFC(&qword_1000219A0, &qword_100017070);
  sub_100009948(v80, v84 + *(v86 + 64), &qword_100021998, &qword_100017068);
  sub_100009948(v83, v84 + *(v86 + 80), &qword_100021988, &qword_100017058);

  sub_1000099B0(v82, &qword_100021988, &qword_100017058);
  sub_1000099B0(v66, &qword_100021998, &qword_100017068);
  sub_1000099B0(v83, &qword_100021988, &qword_100017058);
  sub_1000099B0(v80, &qword_100021998, &qword_100017068);
}

uint64_t sub_10000D730@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  v74 = a2[1];
  v75 = v7;
  v8 = *(a2 + 4);
  v69 = type metadata accessor for CAUVehicleLayoutKey();
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v80 = &v66 - v13;
  v77 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
  v14 = *(*(v77 - 8) + 64);
  v15 = __chkstk_darwin(v77);
  v78 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v66 - v17;
  v18 = type metadata accessor for CAUResource();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v73 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v66 - v24;
  __chkstk_darwin(v23);
  v27 = &v66 - v26;
  v28 = *a1;
  v29 = *(a3 + *(type metadata accessor for CarView(0) + 36));
  *a4 = swift_getKeyPath();
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  v85 = a4;
  swift_storeEnumTagMultiPayload();
  v72 = sub_100002EFC(&qword_1000219D8, &qword_100017088);
  v30 = *(v72 + 48);
  v83 = sub_100002F44(0, &qword_1000219A8, CAFClosureState_ptr);
  v84 = v28;
  CAFPositionedRequired.layoutKey.getter();
  v31 = enum case for CAUAsset.ClosureMask.State.open(_:);
  v32 = type metadata accessor for CAUAsset.ClosureMask.State();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v70 = v33 + 104;
  v71 = v34;
  v34(&v27[v30], v31, v32);
  v35 = enum case for CAUResource.closureMask(_:);
  v81 = v19[13];
  v81(v27, enum case for CAUResource.closureMask(_:), v18);
  v82 = v29;
  v36 = CAUAssetLibrary.asset(for:)();
  v37 = v19[1];
  v76 = v19 + 1;
  v38 = v37;
  v37(v27, v18);
  v39 = type metadata accessor for ClosureView(0);
  *(v85 + v39[6]) = v36;
  v40 = *(v72 + 48);
  CAFPositionedRequired.layoutKey.getter();
  v71(&v25[v40], enum case for CAUAsset.ClosureMask.State.closed(_:), v32);
  v81(v25, v35, v18);
  v41 = CAUAssetLibrary.asset(for:)();
  v38(v25, v18);
  v42 = v85;
  *(v85 + v39[7]) = v41;
  v43 = v42 + v39[8];
  v44 = v74;
  *v43 = v75;
  *(v43 + 16) = v44;
  *(v43 + 32) = v8;
  sub_1000084C0(&qword_1000219E0, &qword_1000219A8, CAFClosureState_ptr);
  CAFObserved<>.observable.getter();
  v45 = (v42 + v39[5]);
  type metadata accessor for CAFClosureStateObservable();
  sub_1000110D4(&qword_1000219E8, &type metadata accessor for CAFClosureStateObservable);
  *v45 = ObservedObject.init(wrappedValue:)();
  v45[1] = v46;
  v47 = v73;
  v81(v73, enum case for CAUResource.vehicleLayout(_:), v18);
  sub_100011834();
  v48 = v79;
  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
  v38(v47, v18);
  v49 = v78;
  sub_100009948(v48, v78, &qword_1000217F0, &qword_100016F78);
  v50 = type metadata accessor for CAUVehicleLayout();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_1000099B0(v48, &qword_1000217F0, &qword_100016F78);
    v52 = v49;
LABEL_7:
    sub_1000099B0(v52, &qword_1000217F0, &qword_100016F78);
    v64 = type metadata accessor for CAUVehicleLayoutInfo();
    v63 = v80;
    (*(*(v64 - 8) + 56))(v80, 1, 1, v64);
    return sub_1000098E0(v63, v85 + v39[9], &qword_1000219D0, &qword_100017080);
  }

  v53 = CAUVehicleLayout.infos.getter();
  (*(v51 + 8))(v49, v50);
  v54 = v67;
  CAFPositionedRequired.layoutKey.getter();
  if (!*(v53 + 16) || (v55 = sub_100010B8C(v54), (v56 & 1) == 0))
  {

    (*(v68 + 8))(v54, v69);
    v52 = v48;
    goto LABEL_7;
  }

  v57 = v55;
  v58 = *(v53 + 56);
  v59 = type metadata accessor for CAUVehicleLayoutInfo();
  v60 = *(v59 - 8);
  v61 = v60;
  v62 = v58 + *(v60 + 72) * v57;
  v63 = v80;
  (*(v60 + 16))(v80, v62, v59);
  (*(v68 + 8))(v54, v69);
  sub_1000099B0(v48, &qword_1000217F0, &qword_100016F78);

  (*(v61 + 56))(v63, 0, 1, v59);
  return sub_1000098E0(v63, v85 + v39[9], &qword_1000219D0, &qword_100017080);
}

void sub_10000DFC8(uint64_t a1)
{
  v2 = type metadata accessor for CarView(0);
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = *(v3 + 1);
  sub_100002EFC(&qword_100021958, &qword_100017028);
  State.wrappedValue.getter();
  if ((v8 & 1) == 0)
  {
    v6 = [*(a1 + *(v2 + 44)) closure];
    if (v6)
    {
      v7 = v6;
      if ([v6 receivedAllValues])
      {
        CAFSignpostEmit_Finalized();

        State.wrappedValue.setter();
      }
    }
  }
}

uint64_t sub_10000E0E4@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = sub_100002EFC(&qword_100021AC0, &qword_1000170F8);
  v2 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v4 = (v33 - v3);
  v5 = sub_100002EFC(&qword_100021AC8, &qword_100017100);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v33 - v7;
  v9 = type metadata accessor for Image.Interpolation();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v35 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Image.ResizingMode();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  __chkstk_darwin(v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ClosureView(0);
  v17 = v1;
  v18 = *(v1 + *(v16 + 20) + 8);
  v19 = CAFClosureStateObservable.observed.getter();
  v20 = [v19 latchStateInvalid];

  if (v20)
  {
    *v4 = static Alignment.center.getter();
    v4[1] = v21;
    v22 = sub_100002EFC(&qword_100021AF8, &qword_100017118);
    sub_10000E5D8(v17, (v4 + *(v22 + 44)));
    sub_100009948(v4, v8, &qword_100021AC0, &qword_1000170F8);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_100021AD0, &qword_100017108);
    sub_10001362C(&qword_100021AD8, &qword_100021AD0, &qword_100017108, sub_100012E44);
    sub_100009D48(&qword_100021AF0, &qword_100021AC0, &qword_1000170F8);
    _ConditionalContent<>.init(storage:)();
    return sub_1000099B0(v4, &qword_100021AC0, &qword_1000170F8);
  }

  else
  {
    v33[1] = v5;
    v24 = dispatch thunk of CAFClosureStateObservable.latchState.getter();
    v25 = 28;
    if (v24)
    {
      v25 = 24;
    }

    v26 = *(v17 + *(v16 + v25));
    if (v26)
    {
      v27 = v26;
      Image.init(uiImage:)();
      v28 = v34;
      (*(v34 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
      Image.resizable(capInsets:resizingMode:)();

      (*(v28 + 8))(v15, v12);
      v30 = v35;
      v29 = v36;
      v31 = v37;
      (*(v36 + 104))(v35, enum case for Image.Interpolation.high(_:), v37);
      v32 = Image.interpolation(_:)();

      (*(v29 + 8))(v30, v31);

      LOWORD(v26) = 1;
    }

    else
    {
      v32 = 0;
    }

    *v8 = v32;
    *(v8 + 1) = 0;
    *(v8 + 8) = v26;
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_100021AD0, &qword_100017108);
    sub_10001362C(&qword_100021AD8, &qword_100021AD0, &qword_100017108, sub_100012E44);
    sub_100009D48(&qword_100021AF0, &qword_100021AC0, &qword_1000170F8);
    _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10000E5D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for DoorLatchStateInvalidView(0);
  v67 = *(v3 - 1);
  v4 = *(v67 + 64);
  __chkstk_darwin(v3);
  v6 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v65 = &v57 - v9;
  v10 = type metadata accessor for CAUVehicleLayoutInfo();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v62 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100002EFC(&qword_100021B00, &qword_100017120);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v66 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  v64 = type metadata accessor for Image.Interpolation();
  *&v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  __chkstk_darwin(v64);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Image.ResizingMode();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ClosureView(0);
  v29 = *(a1 + *(v28 + 28));
  if (v29)
  {
    v59 = v28;
    v30 = v29;
    v61 = v3;
    v58 = v30;
    Image.init(uiImage:)();
    (*(v24 + 104))(v27, enum case for Image.ResizingMode.stretch(_:), v23);
    Image.resizable(capInsets:resizingMode:)();
    v60 = v19;

    (*(v24 + 8))(v27, v23);
    v33 = v63;
    v31 = v64;
    (*(v63 + 104))(v22, enum case for Image.Interpolation.high(_:), v64);
    v32 = Image.interpolation(_:)();

    v19 = v60;
    v3 = v61;

    v33[1](v22, v31);

    v28 = v59;
    LODWORD(v33) = 1;
  }

  else
  {
    v32 = 0;
    LODWORD(v33) = 0;
  }

  v34 = v28;
  v35 = v65;
  sub_100009948(a1 + *(v28 + 36), v65, &qword_1000219D0, &qword_100017080);
  if ((*(v11 + 48))(v35, 1, v10) == 1)
  {
    sub_1000099B0(v35, &qword_1000219D0, &qword_100017080);
    v36 = 1;
  }

  else
  {
    v37 = *(v11 + 32);
    LODWORD(v64) = v33;
    v33 = v62;
    v37(v62, v35, v10);
    v38 = (a1 + *(v34 + 32));
    v39 = *(v38 + 4);
    v40 = v3[8];
    v41 = *(v11 + 16);
    v42 = v38[1];
    v65 = *v38;
    v63 = v42;
    v41(v6 + v40, v33, v10);
    v43 = *(a1 + *(v34 + 20) + 8);
    v44 = CAFClosureStateObservable.observed.getter();
    v45 = v11;
    v46 = v10;
    v47 = v3[9];
    sub_100002F44(0, &qword_1000219A8, CAFClosureState_ptr);
    CAFPositionedRequired.layoutKey.getter();

    v48 = v33;
    LOWORD(v33) = v64;
    (*(v45 + 8))(v48, v46);
    *v6 = swift_getKeyPath();
    sub_100002EFC(&qword_1000212D8, &qword_100016E20);
    swift_storeEnumTagMultiPayload();
    v49 = v6 + v3[5];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = v3[6];
    *(v6 + v50) = swift_getKeyPath();
    sub_100002EFC(&qword_100021B10, &qword_100017160);
    swift_storeEnumTagMultiPayload();
    v51 = v6 + v3[7];
    v52 = v63;
    *v51 = v65;
    *(v51 + 1) = v52;
    *(v51 + 4) = v39;
    sub_10001260C(v6, v19, type metadata accessor for DoorLatchStateInvalidView);
    v36 = 0;
  }

  (*(v67 + 56))(v19, v36, 1, v3);
  v53 = v66;
  sub_100009948(v19, v66, &qword_100021B00, &qword_100017120);
  v54 = v68;
  *v68 = v32;
  v54[1] = 0;
  *(v54 + 8) = v33;
  v55 = sub_100002EFC(&qword_100021B08, &qword_100017128);
  sub_100009948(v53, v54 + *(v55 + 48), &qword_100021B00, &qword_100017120);
  sub_1000099B0(v19, &qword_100021B00, &qword_100017120);
  sub_1000099B0(v53, &qword_100021B00, &qword_100017120);
}

uint64_t sub_10000ECB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002EFC(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100009948(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10000EEB8(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1(0) + 20);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100012308(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t sub_10000F01C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002EFC(&qword_100021560, &qword_100016B68);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v75 - v5;
  v7 = sub_100002EFC(&qword_100021BD8, &qword_1000171F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v90 = v75 - v9;
  v10 = sub_100002EFC(&qword_100021BE0, &qword_1000171F8);
  v92 = *(v10 - 8);
  v11 = *(v92 + 64);
  __chkstk_darwin(v10);
  v13 = v75 - v12;
  v14 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = *(v87 + 64);
  v16 = __chkstk_darwin(v14);
  v91 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = v75 - v18;
  v19 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v84 = *(v19 - 8);
  v85 = v19;
  v20 = *(v84 + 64);
  __chkstk_darwin(v19);
  v22 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ColorScheme();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v28 = v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v75 - v29;
  v31 = sub_10000F990();
  if (v33)
  {
    v34 = *(v92 + 56);

    return v34(a1, 1, 1, v10);
  }

  else
  {
    v78 = v31;
    v79 = v32;
    v80 = v6;
    v81 = v13;
    v82 = v10;
    v83 = a1;
    v36 = *(type metadata accessor for DoorLatchStateInvalidView(0) + 24);
    v89 = v1;
    v75[1] = v36;
    sub_10000ECB8(&qword_100021B10, &qword_100017160, &type metadata accessor for ColorScheme, v30);
    v37 = enum case for ColorScheme.dark(_:);
    v38 = v24[13];
    v38(v28, enum case for ColorScheme.dark(_:), v23);
    v39 = static ColorScheme.== infix(_:_:)();
    v40 = v24[1];
    v40(v28, v23);
    v40(v30, v23);
    if (v39)
    {
      v41 = static Color.black.getter();
    }

    else
    {
      v41 = static Color.white.getter();
    }

    v77 = v41;
    v76 = static Color.blue.getter();
    sub_10000ECB8(&qword_100021B10, &qword_100017160, &type metadata accessor for ColorScheme, v30);
    v38(v28, v37, v23);
    v42 = static ColorScheme.== infix(_:_:)();
    v40(v28, v23);
    v40(v30, v23);
    if (v42)
    {
      v43 = static Color.white.getter();
    }

    else
    {
      v43 = static Color.black.getter();
    }

    v44 = v43;
    v45 = v81;
    v47 = v87;
    v46 = v88;
    v48 = v86;
    sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v22);
    CAUAppUIConfiguration.Configuration.layoutStyle.getter();
    (*(v84 + 8))(v22, v85);
    (*(v47 + 104))(v91, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v46);
    sub_1000110D4(&qword_1000214E8, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v95 == v93 && v96 == v94)
    {
      v49 = *(v47 + 8);
      v49(v91, v46);
      v49(v48, v46);

      v50 = 0.0;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v52 = *(v47 + 8);
      v52(v91, v46);
      v52(v48, v46);

      v50 = 0.0;
      if ((v51 & 1) == 0)
      {
        if (sub_10000EEB8(type metadata accessor for DoorLatchStateInvalidView))
        {
          v50 = -1.57079633;
        }

        else
        {
          v50 = 1.57079633;
        }
      }
    }

    Image.init(systemName:)();
    v53 = v90;
    static SymbolRenderingMode.palette.getter();
    v54 = type metadata accessor for SymbolRenderingMode();
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    v55 = Image.symbolRenderingMode(_:)();

    sub_1000099B0(v53, &qword_100021BD8, &qword_1000171F0);
    v56 = v77;

    v57 = v76;

    static Font.Weight.medium.getter();
    v58 = type metadata accessor for Font.Design();
    v59 = v80;
    (*(*(v58 - 8) + 56))(v80, 1, 1, v58);
    v60 = static Font.system(size:weight:design:)();
    sub_1000099B0(v59, &qword_100021560, &qword_100016B68);
    KeyPath = swift_getKeyPath();
    v62 = (v45 + *(sub_100002EFC(&qword_100021BE8, &qword_100017230) + 36));
    v63 = *(sub_100002EFC(&qword_100021BF0, &qword_100017238) + 28);
    v64 = enum case for Image.Scale.large(_:);
    v65 = type metadata accessor for Image.Scale();
    (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
    *v62 = swift_getKeyPath();
    *v45 = v55;
    v45[1] = v56;
    v45[2] = v57;
    v45[3] = v44;
    v45[4] = KeyPath;
    v45[5] = v60;
    static UnitPoint.center.getter();
    v67 = v66;
    v69 = v68;

    v70 = v45 + *(sub_100002EFC(&qword_100021BF8, &qword_100017270) + 36);
    *v70 = v50;
    *(v70 + 1) = v67;
    *(v70 + 2) = v69;
    v72 = v82;
    v71 = v83;
    v73 = (v45 + *(v82 + 36));
    v74 = v79;
    *v73 = v78;
    v73[1] = v74;
    sub_1000098E0(v45, v71, &qword_100021BE0, &qword_1000171F8);
    return (*(v92 + 56))(v71, 0, 1, v72);
  }
}

uint64_t sub_10000F990()
{
  v1 = v0;
  v84 = type metadata accessor for CAUVehicleLayoutKey.Side();
  v86 = *(v84 - 8);
  v2 = *(v86 + 64);
  v3 = __chkstk_darwin(v84);
  v83 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = &v74 - v5;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v80 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v81 = &v74 - v12;
  __chkstk_darwin(v11);
  v14 = &v74 - v13;
  v15 = sub_100002EFC(&qword_100021C00, &qword_100017278);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v74 - v17;
  v19 = type metadata accessor for CAUBaselineAnchor();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DoorLatchStateInvalidView(0);
  v85 = v24[8];
  CAUVehicleLayoutInfo.baselineAnchor.getter();
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v23, v18, v19);
    v49 = CAUBaselineAnchor.x.getter();
    v50 = (v0 + v24[7]);
    v51 = v50[4];
    v48 = v51 * v49 + *v50;
    v52 = CAUBaselineAnchor.y.getter();
    (*(v20 + 8))(v23, v19);
    v53 = v51 * v52 + v50[1];
    return *&v48;
  }

  sub_1000099B0(v18, &qword_100021C00, &qword_100017278);
  v25 = *(v7 + 16);
  v25(v14, v1 + v24[9], v6);
  v26 = (*(v7 + 88))(v14, v6);
  if (v26 == enum case for CAUVehicleLayoutKey.frunk(_:) || v26 == enum case for CAUVehicleLayoutKey.hood(_:) || v26 == enum case for CAUVehicleLayoutKey.trunk(_:))
  {
    v54 = CAUVehicleLayoutInfo.x.getter();
    v55 = CAUVehicleLayoutInfo.width.getter();
    v56 = (v1 + v24[7]);
    v57 = v56[4];
    v48 = *v56 + v57 * (vcvtd_n_f64_s32(v55, 1uLL) + v54);
    v58 = v56[1] + v57 * CAUVehicleLayoutInfo.y.getter();
    v87 = 0;
    return *&v48;
  }

  v77 = v24;
  v78 = v1;
  v27 = v81;
  v25(v81, v14, v6);
  v28 = v82;
  v76 = v6;
  v79 = v14;
  v74 = v25;
  CAUVehicleLayoutKey.side.getter();
  v29 = v86;
  v31 = v83;
  v30 = v84;
  v75 = *(v86 + 104);
  v75(v83, enum case for CAUVehicleLayoutKey.Side.left(_:), v84);
  v32 = static CAUVehicleLayoutKey.Side.== infix(_:_:)();
  v35 = *(v29 + 8);
  v34 = v29 + 8;
  v33 = v35;
  v35(v31, v30);
  v35(v28, v30);
  if (v32)
  {
    v36 = v78;
    v37 = CAUVehicleLayoutInfo.y.getter();
    v38 = vcvtd_n_f64_s32(CAUVehicleLayoutInfo.height.getter(), 1uLL) + v37;
    v39 = (v36 + v77[7]);
    v40 = v39[4];
    v41 = v40 * v38;
    v42 = CAUVehicleLayoutInfo.x.getter();
    v43 = *(v7 + 8);
    v44 = v27;
    v45 = v76;
    v43(v44, v76);
    v46 = v40 * v42 + *v39;
    v47 = v41 + v39[1];
    v87 = 0;
    v48 = v46 + -36.0;
    v43(v79, v45);
    return *&v48;
  }

  v86 = v34;
  v59 = v27;
  v60 = v76;
  v81 = *(v7 + 8);
  (v81)(v59, v76);
  v61 = v80;
  v74(v80, v79, v60);
  CAUVehicleLayoutKey.side.getter();
  v75(v31, enum case for CAUVehicleLayoutKey.Side.right(_:), v30);
  v62 = static CAUVehicleLayoutKey.Side.== infix(_:_:)();
  v33(v31, v30);
  v33(v28, v30);
  if (v62)
  {
    v63 = v78;
    v64 = CAUVehicleLayoutInfo.y.getter();
    v65 = vcvtd_n_f64_s32(CAUVehicleLayoutInfo.height.getter(), 1uLL) + v64;
    v66 = (v63 + v77[7]);
    v67 = v66[4];
    v68 = v67 * v65;
    v69 = CAUVehicleLayoutInfo.x.getter();
    v70 = v81;
    (v81)(v61, v60);
    v71 = v67 * v69 + *v66;
    v72 = v68 + v66[1];
    v87 = 0;
    v48 = v71 + 36.0;
    v70(v79, v60);
    return *&v48;
  }

  (v81)(v61, v60);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1000100CC()
{
  v0 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() imageNamed:v13];

  sub_10000ECB8(&qword_1000212D8, &qword_100016E20, &type metadata accessor for CAUAppUIConfiguration.Configuration, v12);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v5, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v0);
  sub_1000110D4(&qword_100021838, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v1 + 8);
  v16(v5, v0);
  v16(v7, v0);
  if ((v15 & 1) == 0)
  {
    if (v14)
    {
      v17 = [v14 CGImage];
      if (v17)
      {
        v18 = v17;
        v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:1.0];

        return v19;
      }
    }
  }

  return v14;
}

__n128 sub_1000103C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100002EFC(&qword_100021808, &qword_100016F80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v12 - v4);
  *v5 = static Alignment.center.getter();
  v5[1] = v6;
  v7 = sub_100002EFC(&qword_100021810, &qword_100016F88);
  sub_100010520(v5 + *(v7 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000098E0(v5, a1, &qword_100021808, &qword_100016F80);
  v8 = a1 + *(sub_100002EFC(&qword_100021818, &qword_100016F90) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_100010520@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.Interpolation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002EFC(&qword_100021820, &qword_100016F98);
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v16 = sub_1000100CC();
  if (v16)
  {
    v17 = v16;
    Image.init(uiImage:)();
    v29 = a1;
    (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
    Image.resizable(capInsets:resizingMode:)();
    v28 = v12;

    (*(v8 + 8))(v11, v7);
    (*(v3 + 104))(v6, enum case for Image.Interpolation.high(_:), v2);
    v18 = Image.interpolation(_:)();

    (*(v3 + 8))(v6, v2);
    v19 = &v15[*(sub_100002EFC(&qword_100021828, &qword_100016FA0) + 36)];
    v34 = xmmword_100016C80;
    v35 = xmmword_100016C90;
    v36 = xmmword_100016CA0;
    v37 = xmmword_100016CB0;
    v38 = xmmword_100016CC0;
    View._colorMatrix(_:)();
    v20 = &v19[*(sub_100002EFC(&qword_100021830, &qword_100016FA8) + 36)];
    *v20 = 0x403E000000000000;
    v20[8] = 0;
    *v15 = v18;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v22 = v28;
    v21 = v29;
    v23 = &v15[*(v28 + 36)];
    v24 = v32;
    *v23 = v31;
    *(v23 + 1) = v24;
    *(v23 + 2) = v33;
    sub_1000098E0(v15, v21, &qword_100021820, &qword_100016F98);
    return (*(v30 + 56))(v21, 0, 1, v22);
  }

  else
  {
    v26 = *(v30 + 56);

    return v26(a1, 1, 1, v12);
  }
}

unint64_t sub_100010934(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_1000110D4(&qword_1000216B8, &type metadata accessor for CAUAppUIConfiguration.Element);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000109CC(a1, v5);
}

unint64_t sub_1000109CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for CAUAppUIConfiguration.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000110D4(&qword_1000216C0, &type metadata accessor for CAUAppUIConfiguration.Element);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100010B8C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CAUVehicleLayoutKey();
  sub_1000110D4(&qword_100021340, &type metadata accessor for CAUVehicleLayoutKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100010C24(a1, v5);
}

unint64_t sub_100010C24(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000110D4(&qword_1000219F0, &type metadata accessor for CAUVehicleLayoutKey);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_100010DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100010EB4(uint64_t a1)
{
  v2 = sub_100002EFC(&qword_1000216A8, &qword_100016E00);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002EFC(&qword_1000216B0, &qword_100016E08);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009948(v10, v6, &qword_1000216A8, &qword_100016E00);
      result = sub_100010934(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CAUAppUIConfiguration.Element();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for CAUAppUIConfiguration.ElementData();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
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

uint64_t sub_1000110D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001111C()
{
  result = qword_1000216E0;
  if (!qword_1000216E0)
  {
    sub_100008504(&qword_1000216D8, &qword_100016E28);
    sub_1000111D4();
    sub_100009D48(&qword_100021700, &qword_100021708, &qword_100016E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216E0);
  }

  return result;
}

unint64_t sub_1000111D4()
{
  result = qword_1000216E8;
  if (!qword_1000216E8)
  {
    sub_100008504(&qword_1000216F0, &qword_100016E30);
    sub_100011260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216E8);
  }

  return result;
}

unint64_t sub_100011260()
{
  result = qword_1000216F8;
  if (!qword_1000216F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216F8);
  }

  return result;
}

unint64_t sub_1000112B4()
{
  result = qword_100021710;
  if (!qword_100021710)
  {
    sub_100008504(&qword_1000216C8, &qword_100016E10);
    sub_1000110D4(&qword_100021718, type metadata accessor for RedactedCarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021710);
  }

  return result;
}

uint64_t sub_100011390@<X0>(_BYTE *a1@<X8>)
{
  sub_100003328();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000113E0(char *a1)
{
  v2 = *a1;
  sub_100003328();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100011440(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000114CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100011548()
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_1000115E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000115F8(uint64_t a1, int a2)
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

uint64_t sub_100011640(uint64_t result, int a2, int a3)
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

uint64_t sub_10001170C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100011758()
{
  result = qword_1000217E0;
  if (!qword_1000217E0)
  {
    sub_100008504(&qword_1000217D8, &qword_100016F70);
    sub_1000110D4(&qword_1000217E8, type metadata accessor for CarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217E0);
  }

  return result;
}

unint64_t sub_100011834()
{
  result = qword_1000217F8;
  if (!qword_1000217F8)
  {
    sub_100008504(&qword_1000217F0, &qword_100016F78);
    sub_1000110D4(&qword_100021800, &type metadata accessor for CAUVehicleLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217F8);
  }

  return result;
}

uint64_t sub_1000118FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100011A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000217F0, &qword_100016F78);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100011B88()
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100011D2C(319, &qword_1000218A8, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100011D2C(319, &qword_1000218B0, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100011D80();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CAUAssetLibrary();
          if (v4 <= 0x3F)
          {
            sub_100011DE8(319, &unk_1000218C8, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100002F44(319, &qword_100021720, CAFCar_ptr);
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

void sub_100011D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

void sub_100011D80()
{
  if (!qword_1000218B8)
  {
    sub_100002F44(255, &qword_1000218C0, UIImage_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000218B8);
    }
  }
}

void sub_100011DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100011E90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008504(a2, a3);
    a4();
    sub_1000112B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011F18()
{
  result = qword_100021920;
  if (!qword_100021920)
  {
    sub_100008504(&qword_100021818, &qword_100016F90);
    sub_100009D48(&qword_100021928, &qword_100021808, &qword_100016F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021920);
  }

  return result;
}

unint64_t sub_100011FEC()
{
  result = qword_100021940;
  if (!qword_100021940)
  {
    sub_100008504(&qword_100021938, &qword_100017018);
    sub_100009D48(&qword_100021948, &qword_100021950, &qword_100017020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021940);
  }

  return result;
}

uint64_t sub_1000120A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012108()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_100012308(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = *(v5 + v1[6] + 8);

  v9 = v1[10];
  v10 = type metadata accessor for CAUVehicleLayout();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_100012308(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_100012314@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CarView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000C284(v1 + v4, v5, a1);
}

uint64_t sub_1000123C0()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_100012308(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = *(v5 + v1[6] + 8);

  v9 = v1[10];
  v10 = type metadata accessor for CAUVehicleLayout();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000125AC()
{
  v1 = *(type metadata accessor for CarView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_10000DFC8(v2);
}

uint64_t sub_10001260C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012674()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100002EFC(&qword_1000212D8, &qword_100016E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_100012308(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = *(v5 + v1[6] + 8);

  v9 = v1[10];
  v10 = type metadata accessor for CAUVehicleLayout();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012860@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*(type metadata accessor for CarView(0) - 8) + 80);
  v6 = *(v2 + 48);
  v7 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v7;
  v10 = v6;
  return sub_10000D730(a1, v9, v2 + ((v5 + 56) & ~v5), a2);
}

uint64_t sub_100012924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100012A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100002EFC(&qword_1000219D0, &qword_100017080);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100012BB8()
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100012CE4();
    if (v1 <= 0x3F)
    {
      sub_100011D80();
      if (v2 <= 0x3F)
      {
        sub_100012D78();
        if (v3 <= 0x3F)
        {
          sub_100011DE8(319, &unk_100021A70, &type metadata accessor for CAUVehicleLayoutInfo, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100012CE4()
{
  if (!qword_100021A60)
  {
    type metadata accessor for CAFClosureStateObservable();
    sub_1000110D4(&qword_1000219E8, &type metadata accessor for CAFClosureStateObservable);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100021A60);
    }
  }
}

void sub_100012D78()
{
  if (!qword_100021A68)
  {
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100021A68);
    }
  }
}

unint64_t sub_100012E44()
{
  result = qword_100021AE0;
  if (!qword_100021AE0)
  {
    sub_100008504(&qword_100021AE8, &qword_100017110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021AE0);
  }

  return result;
}

uint64_t sub_100012F60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_100002EFC(&qword_100021B18, &qword_100017168);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for CAUVehicleLayoutInfo();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for CAUVehicleLayoutKey();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_100013144(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100002EFC(&qword_100021350, &qword_100016A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_100002EFC(&qword_100021B18, &qword_100017168);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for CAUVehicleLayoutInfo();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for CAUVehicleLayoutKey();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_100013318()
{
  sub_100011DE8(319, &qword_1000213C0, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100011D2C(319, &qword_1000218A8, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100011DE8(319, &unk_100021B88, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100012D78();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CAUVehicleLayoutInfo();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CAUVehicleLayoutKey();
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

unint64_t sub_10001347C()
{
  result = qword_100021BC8;
  if (!qword_100021BC8)
  {
    sub_100008504(&qword_100021BD0, ":\x1B");
    sub_10001362C(&qword_100021AD8, &qword_100021AD0, &qword_100017108, sub_100012E44);
    sub_100009D48(&qword_100021AF0, &qword_100021AC0, &qword_1000170F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BC8);
  }

  return result;
}

uint64_t sub_10001362C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008504(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000136A8()
{
  result = qword_100021C18;
  if (!qword_100021C18)
  {
    sub_100008504(&qword_100021BE0, &qword_1000171F8);
    sub_100013734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C18);
  }

  return result;
}

unint64_t sub_100013734()
{
  result = qword_100021C20;
  if (!qword_100021C20)
  {
    sub_100008504(&qword_100021BF8, &qword_100017270);
    sub_1000137C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C20);
  }

  return result;
}

unint64_t sub_1000137C0()
{
  result = qword_100021C28;
  if (!qword_100021C28)
  {
    sub_100008504(&qword_100021BE8, &qword_100017230);
    sub_100013878();
    sub_100009D48(&qword_100021C60, &qword_100021BF0, &qword_100017238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C28);
  }

  return result;
}

unint64_t sub_100013878()
{
  result = qword_100021C30;
  if (!qword_100021C30)
  {
    sub_100008504(&qword_100021C38, &qword_100017288);
    sub_100013930();
    sub_100009D48(&qword_100021540, &qword_100021548, &unk_1000172A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C30);
  }

  return result;
}

unint64_t sub_100013930()
{
  result = qword_100021C40;
  if (!qword_100021C40)
  {
    sub_100008504(&qword_100021C48, &qword_100017290);
    sub_100009D48(&qword_100021C50, &qword_100021C58, &qword_100017298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C40);
  }

  return result;
}

uint64_t ForEach<>.init(_:content:)()
{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}