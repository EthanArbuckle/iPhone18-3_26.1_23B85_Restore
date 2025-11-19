void sub_100001ACC()
{
  v1 = v0;
  v69.receiver = v0;
  v69.super_class = type metadata accessor for TirePressureViewController();
  objc_msgSendSuper2(&v69, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_scenePresentationTypeObserver];
  v3 = *&v0[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_carManager];
  sub_100002458(0, &qword_100025340, CAFCarManager_ptr);
  sub_10000234C();
  v4 = v2;
  CAFObserved<>.observable.getter();
  v5 = *&v1[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_assetManager];
  v6 = *&v1[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_sessionStatusObservable];
  type metadata accessor for ScenePresentationTypeObserver();
  sub_1000023B4(&qword_100025350, type metadata accessor for ScenePresentationTypeObserver);

  v7 = v6;
  v8 = ObservedObject.init(wrappedValue:)();
  v10 = v9;
  type metadata accessor for CAFCarManagerObservable();
  sub_1000023B4(&qword_100025358, &type metadata accessor for CAFCarManagerObservable);
  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  type metadata accessor for CAUAssetLibraryManager();
  sub_1000023B4(&qword_100025360, &type metadata accessor for CAUAssetLibraryManager);
  v14 = ObservedObject.init(wrappedValue:)();
  v16 = v15;
  type metadata accessor for CARSessionStatusObservable();
  sub_1000023B4(&qword_100025368, &type metadata accessor for CARSessionStatusObservable);
  v17 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v20 = v65;
  v66 = v8;
  v68 = v20;
  v21 = objc_allocWithZone(sub_100002410(&qword_100025370, &qword_100017DA8));
  v22 = UIHostingController.init(rootView:)();
  v23 = [v22 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [v22 view];
  if (!v25)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor:v27];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v22 view];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  [v29 addSubview:v30];

  sub_100002410(&qword_100025378, &qword_100017DB0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100017CE0;
  v33 = [v22 view];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v1 view];
  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v32 + 32) = v39;
  v40 = [v22 view];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 bottomAnchor];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v44 = v43;
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 bottomAnchor];
  v47 = [v42 constraintEqualToAnchor:v46];

  *(v32 + 40) = v47;
  v48 = [v22 view];
  if (!v48)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v1 view];
  if (!v51)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v52 = v51;
  v53 = [v51 safeAreaLayoutGuide];

  v54 = [v53 leadingAnchor];
  v55 = [v50 constraintEqualToAnchor:v54];

  *(v32 + 48) = v55;
  v56 = [v22 view];

  if (!v56)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v57 = [v56 trailingAnchor];

  v58 = [v1 view];
  if (v58)
  {
    v59 = v58;
    v60 = objc_opt_self();
    v61 = [v59 safeAreaLayoutGuide];

    v62 = [v61 trailingAnchor];
    v63 = [v57 constraintEqualToAnchor:v62];

    *(v32 + 56) = v63;
    sub_100002458(0, &qword_100025380, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v60 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_100002244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TirePressureViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100002330@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_10000234C()
{
  result = qword_100025348;
  if (!qword_100025348)
  {
    sub_100002458(255, &qword_100025340, CAFCarManager_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025348);
  }

  return result;
}

uint64_t sub_1000023B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002410(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002458(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_1000024A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000024B0(uint64_t a1, int a2)
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

uint64_t sub_1000024D0(uint64_t result, int a2, int a3)
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

__n128 sub_1000024F8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002504(uint64_t a1, int a2)
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

uint64_t sub_100002524(uint64_t result, int a2, int a3)
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

void sub_100002578(uint64_t a1, unint64_t *a2)
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

id sub_1000025FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TirePressureWindowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002664()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100002ED0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100026910 = result;
  return result;
}

uint64_t sub_10000272C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000027F8(v11, 0, 0, 1, a1, a2);
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
    sub_100002E70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002E24(v11);
  return v7;
}

unint64_t sub_1000027F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002904(a5, a6);
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

char *sub_100002904(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002950(a1, a2);
  sub_100002A80(&off_100021128);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002950(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002B6C(v5, 0);
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
        v7 = sub_100002B6C(v10, 0);
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

uint64_t sub_100002A80(uint64_t result)
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

  result = sub_100002BE0(result, v12, 1, v3);
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

void *sub_100002B6C(uint64_t a1, uint64_t a2)
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

  sub_100002410(&qword_1000254F0, &qword_100017E40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002410(&qword_1000254F0, &qword_100017E40);
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

uint64_t sub_100002D04(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (qword_100025250 != -1)
  {
    swift_once();
  }

  v6 = qword_100026910;
  result = os_log_type_enabled(qword_100026910, v5);
  if (result)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000272C(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v6, v5, "%s", v8, 0xCu);
    sub_100002E24(v9);
  }

  return result;
}

uint64_t sub_100002E24(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100002ED0()
{
  result = qword_1000254F8;
  if (!qword_1000254F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000254F8);
  }

  return result;
}

uint64_t sub_100002F1C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = static os_log_type_t.debug.getter();
  if (qword_100025250 != -1)
  {
    swift_once();
  }

  v11 = qword_100026910;
  result = os_log_type_enabled(qword_100026910, v10);
  if (result)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_10000272C(a3, a4, &v14);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a5;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10000272C(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v11, v10, "%s:%ld  %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_10000308C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_10000341C(v1, &v52);
  v47 = v54;
  v48 = v55;
  v49[0] = v56[0];
  *(v49 + 9) = *(v56 + 9);
  v45 = v52;
  v46 = v53;
  *(v51 + 9) = *(v56 + 9);
  v50[2] = v54;
  v50[3] = v55;
  v51[0] = v56[0];
  v50[0] = v52;
  v50[1] = v53;
  sub_100011764(&v45, v44, &qword_100025670, &qword_100018008);
  sub_100012120(v50, &qword_100025670, &qword_100018008);
  v54 = v47;
  v55 = v48;
  v56[0] = v49[0];
  *(v56 + 9) = *(v49 + 9);
  v52 = v45;
  v53 = v46;
  v7 = swift_allocObject();
  v8 = *(v1 + 48);
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v1 + 64);
  *(v7 + 96) = *(v1 + 80);
  v9 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v9;
  sub_10000E880(v1, v44);
  v10 = static Alignment.center.getter();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(sub_100002410(&qword_100025678, &qword_100018038) + 36));
  v15 = sub_100002410(&qword_100025680, &qword_100018040);
  sub_100003BDC(v14 + *(v15 + 28));
  *v14 = KeyPath;
  *a1 = v4;
  *(a1 + 8) = v6;
  v16 = v55;
  *(a1 + 48) = v54;
  *(a1 + 64) = v16;
  *(a1 + 80) = v56[0];
  *(a1 + 89) = *(v56 + 9);
  v17 = v53;
  *(a1 + 16) = v52;
  *(a1 + 32) = v17;
  *(a1 + 112) = sub_10000E878;
  *(a1 + 120) = v7;
  *(a1 + 128) = v10;
  *(a1 + 136) = v12;
  v18 = swift_getKeyPath();
  v19 = (a1 + *(sub_100002410(&qword_100025688, &qword_100018078) + 36));
  v20 = *(sub_100002410(&qword_100025690, &qword_100018080) + 28);
  v21 = enum case for LayoutDirection.leftToRight(_:);
  v22 = type metadata accessor for LayoutDirection();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v18;
  v23 = sub_100003F70();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v18) = static Edge.Set.all.getter();
  v30 = a1 + *(sub_100002410(&qword_100025698, &qword_100018088) + 36);
  *v30 = v18;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = v2[3];
  v32 = sub_100002410(&qword_1000256A0, &qword_100018090);
  v33 = a1 + *(v32 + 52);
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  v34 = (a1 + *(v32 + 56));
  *v34 = sub_1000043F0;
  v34[1] = 0;
  v35 = v2[5];
  v36 = sub_100002410(&qword_1000256A8, &qword_100018098);
  v37 = a1 + *(v36 + 52);
  dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();
  v38 = (a1 + *(v36 + 56));
  *v38 = sub_100004504;
  v38[1] = 0;
  v39 = v2[7];
  v40 = sub_100002410(&qword_1000256B0, &qword_1000180A0);
  v41 = a1 + *(v40 + 52);
  result = dispatch thunk of CARSessionStatusObservable.$session.getter();
  v43 = (a1 + *(v40 + 56));
  *v43 = sub_1000045D8;
  v43[1] = 0;
  return result;
}

double sub_10000341C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v5 = dispatch thunk of CAFCarManagerObservable.currentCar.getter();
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = a1[7];
  v8 = dispatch thunk of CARSessionStatusObservable.session.getter();
  if (!v8)
  {
LABEL_6:

LABEL_7:
    LOBYTE(v24) = 1;
    *&v31 = sub_10000389C;
    *(&v31 + 1) = 0;
    v32 = 0uLL;
    v35[24] = 1;
    sub_100002410(&qword_100025700, &qword_100018118);
    sub_100002410(&qword_100025708, &qword_100018120);
    sub_10000F02C(&qword_100025710, &qword_100025700, &qword_100018118, sub_10000EE68);
    sub_10000F02C(&qword_100025760, &qword_100025708, &qword_100018120, sub_10000F0B0);
    _ConditionalContent<>.init(storage:)();
    goto LABEL_8;
  }

  v9 = v8;
  v10 = a1[5];
  v11 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (!v11)
  {

    v6 = v9;
    goto LABEL_6;
  }

  v12 = v11;
  sub_100002458(0, &qword_100025770, CAFCar_ptr);
  sub_10000F104(&qword_100025778, &qword_100025770, CAFCar_ptr);
  CAFObserved<>.observable.getter();
  type metadata accessor for CAFCarObservable();
  sub_10000EC84(&qword_100025780, &type metadata accessor for CAFCarObservable);
  v23 = v12;
  v22 = ObservedObject.init(wrappedValue:)();
  v14 = v13;
  v15 = CAFCar.dimesionObservable.getter();
  type metadata accessor for CAFDimensionObservable();
  sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable);
  v16 = static ObservableObject.environmentStore.getter();
  KeyPath = swift_getKeyPath();
  v18 = [v9 configuration];
  LOBYTE(v12) = [v18 rightHandDrive];

  *&v24 = v22;
  *(&v24 + 1) = v14;
  *&v25 = v23;
  *(&v25 + 1) = v16;
  *&v26 = v15;
  *(&v26 + 1) = KeyPath;
  LOBYTE(v27) = v12;
  v29 = 0;
  *(&v27 + 1) = sub_100003880;
  v28 = 0uLL;
  v38 = v26;
  v39 = v27;
  memset(v40, 0, 25);
  v36 = v24;
  v37 = v25;
  v30 = 0;
  sub_100011764(&v24, &v31, &qword_100025700, &qword_100018118);
  sub_100011764(&v24, &v31, &qword_100025700, &qword_100018118);
  sub_100002410(&qword_100025700, &qword_100018118);
  sub_100002410(&qword_100025708, &qword_100018120);
  sub_10000F02C(&qword_100025710, &qword_100025700, &qword_100018118, sub_10000EE68);
  sub_10000F02C(&qword_100025760, &qword_100025708, &qword_100018120, sub_10000F0B0);
  _ConditionalContent<>.init(storage:)();

  sub_100012120(&v24, &qword_100025700, &qword_100018118);
  sub_100012120(&v24, &qword_100025700, &qword_100018118);
  v38 = v33;
  v39 = v34;
  v40[0] = *v35;
  *(v40 + 9) = *&v35[9];
  v36 = v31;
  v37 = v32;
LABEL_8:
  v19 = v39;
  a2[2] = v38;
  a2[3] = v19;
  a2[4] = v40[0];
  *(a2 + 73) = *(v40 + 9);
  result = *&v36;
  v21 = v37;
  *a2 = v36;
  a2[1] = v21;
  return result;
}

uint64_t sub_1000038B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static Color.clear.getter();
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6);
  v10 = (*(v7 + 80) + 104) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 48);
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a2 + 64);
  *(v11 + 96) = *(a2 + 80);
  v13 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v13;
  (*(v7 + 32))(v11 + v10, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  *a3 = v9;
  a3[1] = sub_10000EE04;
  a3[2] = v11;
  a3[3] = 0;
  a3[4] = 0;
  return sub_10000E880(a2, v16);
}

uint64_t sub_100003A30(uint64_t a1)
{
  GeometryProxy.size.getter();
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  sub_100002410(&qword_1000256F8, &qword_100018110);
  return State.wrappedValue.setter();
}

uint64_t sub_100003A98(uint64_t a1)
{
  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_10000ECCC();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100003BDC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_100002410(&qword_1000256D0, &qword_1000180F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v28 = &v27 - v4;
  v5 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CAUAppUIConfiguration.App();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CAUAppUIConfiguration.Mode();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v20 = *(v1 + 40);
  v21 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v21)
  {
    v22 = v21;
    v23 = *(v19 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = &enum case for CAUAppUIConfiguration.Mode.popover(_:);
    if (v30 != 3)
    {
      v24 = &enum case for CAUAppUIConfiguration.Mode.dca(_:);
    }

    (*(v15 + 104))(v18, *v24, v14);
    (*(v10 + 104))(v13, enum case for CAUAppUIConfiguration.App.tirePressure(_:), v9);
    dispatch thunk of CAUAssetLibrary.configuration(app:mode:)();

    (*(v10 + 8))(v13, v9);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    (*(v27 + 104))(v8, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v5);
    v26 = type metadata accessor for CAUWidgetContentMargins();
    (*(*(v26 - 8) + 56))(v28, 1, 1, v26);
    sub_10000EA64(&_swiftEmptyArrayStorage);
    return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
  }
}

double sub_100003F70()
{
  v1 = type metadata accessor for CAUWidgetContentMargins();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  __chkstk_darwin(v1);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CAUResource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for CAUVehicleLayout();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = 0.0;
  if (v36 != 3)
  {
    v19 = *(v0 + 40);
    v20 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
    if (v20)
    {
      v21 = v20;
      (*(v5 + 104))(v8, enum case for CAUResource.vehicleLayout(_:), v4);
      sub_10000E968();
      dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
      (*(v5 + 8))(v8, v4);

      v24 = v34;
      v23 = v35;
      if ((*(v34 + 48))(v12, 1, v35) != 1)
      {
        (*(v24 + 32))(v16, v12, v23);
        v25 = v31;
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.top.getter();
        v27 = v26;
        v28 = v33;
        v29 = *(v32 + 8);
        v29(v25, v33);
        v18 = v27;
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.leading.getter();
        v29(v25, v28);
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.bottom.getter();
        v29(v25, v28);
        CAUVehicleLayout.widgetContentMargins.getter();
        CAUWidgetContentMargins.trailing.getter();
        v29(v25, v28);
        (*(v24 + 8))(v16, v23);
        return v18;
      }
    }

    else
    {
      (*(v34 + 56))(v12, 1, 1, v35);
    }

    sub_100012120(v12, &qword_1000256B8, &qword_1000180A8);
  }

  return v18;
}

uint64_t sub_1000043F0(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    _StringGuts.grow(_:)(22);

    v2 = [v1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    sub_100002CEC(0xD000000000000014, 0x8000000100018CA0);
  }

  else
  {

    return sub_100002CEC(0xD00000000000001CLL, 0x8000000100018C80);
  }
}

uint64_t sub_100004754@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_10000308C(a1);
}

uint64_t sub_100005168@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  *a1 = static Alignment.center.getter();
  a1[1] = v6;
  v7 = a1 + *(sub_100002410(&qword_1000257A0, &qword_100018268) + 44);
  sub_1000047A0(v4, v3, v5);
  v8 = swift_allocObject();
  *(v8 + 2) = v4;
  *(v8 + 3) = v3;
  *(v8 + 4) = v5;
  v9 = (a1 + *(sub_100002410(&qword_1000257A8, &qword_100018270) + 36));
  *v9 = sub_10000F3B0;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  v10 = sub_100002410(&qword_1000257B0, &qword_100018278);
  v11 = *(v10 + 52);
  v12 = v3;
  v13 = v5;
  result = dispatch thunk of CAFCarObservable.$tire.getter();
  v15 = (a1 + *(v10 + 56));
  *v15 = sub_100005094;
  v15[1] = 0;
  return result;
}

uint64_t sub_100005278()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = Notification.userInfo.getter();
  if (!v1)
  {
  }

  v2 = v1;
  strcpy(v5, "ClusterEvent");
  BYTE13(v5[0]) = 0;
  HIWORD(v5[0]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_1000153E0(v6), (v4 & 1) == 0))
  {

    return sub_10000F6DC(v6);
  }

  sub_100002E70(*(v2 + 56) + 32 * v3, v5);
  sub_10000F6DC(v6);

  sub_10000F730(v5, v7);
  sub_100002E70(v7, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100002E24(v7);
  }

  if (LOBYTE(v5[0]) == 1)
  {
    sub_1000055A0();
  }

  return sub_100002E24(v7);
}

uint64_t sub_1000053D8(uint64_t a1)
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

uint64_t sub_1000054CC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100025278 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:qword_100026928];

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_1000055A0()
{
  v1 = [*(v0 + 16) tire];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 tirePressureMonitoringSystem];

    if (v3)
    {
      if ([v3 hasReset])
      {
        sub_100002CEC(0xD000000000000016, 0x8000000100018B60);
        v5[4] = sub_100005704;
        v5[5] = 0;
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 1107296256;
        v5[2] = sub_100005964;
        v5[3] = &unk_1000212F0;
        v4 = _Block_copy(v5);
        [v3 resetWithCompletion:v4];
        _Block_release(v4);

        return;
      }
    }
  }

  sub_100002CD4(0xD000000000000027, 0x8000000100018B30);
}

uint64_t sub_100005704(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    _StringGuts.grow(_:)(44);
    v1._countAndFlagsBits = 0xD00000000000002ALL;
    v1._object = 0x8000000100018BD0;
    String.append(_:)(v1);
    sub_100002410(&qword_100025668, &qword_100017F58);
    _print_unlocked<A, B>(_:_:)();
    sub_100002CD4(0, 0xE000000000000000);
  }

  else
  {

    return sub_100002CEC(0xD000000000000020, 0x8000000100018BA0);
  }
}

uint64_t sub_10000580C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CarView(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000FED8(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

void sub_100005964(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000059D0@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for CarView(0);
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin(v2 - 8);
  v66 = v4;
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100002410(&qword_100025900, &qword_100018328);
  v5 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v68 = (&v64 - v6);
  v83 = sub_100002410(&qword_100025908, &qword_100018330);
  v7 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v85 = (&v64 - v8);
  v76 = sub_100002410(&qword_100025910, &qword_100018338);
  v9 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v78 = &v64 - v10;
  v84 = sub_100002410(&qword_100025918, &qword_100018340);
  v11 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v80 = &v64 - v12;
  v77 = sub_100002410(&qword_100025920, &qword_100018348);
  v13 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v75 = (&v64 - v14);
  v15 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v81 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v74 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v64 - v23;
  __chkstk_darwin(v22);
  v26 = &v64 - v25;
  v27 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v71 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v64 - v32;
  v82 = v1;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, &v64 - v32);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  v34 = *(v28 + 8);
  v72 = v28 + 8;
  v73 = v27;
  v70 = v34;
  v34(v33, v27);
  v69 = v16[13];
  v69(v24, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v15);
  sub_10000EC84(&qword_100025928, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v89 == v87 && v90 == v88)
  {
    v35 = 1;
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v36 = v16[1];
  v36(v24, v15);
  v36(v26, v15);

  if (v35)
  {
    v37 = static VerticalAlignment.center.getter();
    v38 = v75;
    *v75 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    v39 = sub_100002410(&qword_100025970, &qword_100018368);
    sub_100008728(v82, v38 + *(v39 + 44));
    sub_100011764(v38, v78, &qword_100025920, &qword_100018348);
    swift_storeEnumTagMultiPayload();
    sub_100012468(&qword_100025940, &qword_100025920, &qword_100018348);
    sub_10001001C();
    v40 = v80;
    _ConditionalContent<>.init(storage:)();
    sub_100011764(v40, v85, &qword_100025918, &qword_100018340);
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_100025930, &qword_100018350);
    sub_10000FF64();
    sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350);
    _ConditionalContent<>.init(storage:)();
    sub_100012120(v40, &qword_100025918, &qword_100018340);
    v41 = v38;
    v42 = &qword_100025920;
    v43 = &qword_100018348;
  }

  else
  {
    v44 = v71;
    v45 = v82;
    sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v71);
    v46 = v74;
    CAUAppUIConfiguration.Configuration.layoutStyle.getter();
    v70(v44, v73);
    v69(v81, enum case for CAUAppUIConfiguration.LayoutStyle.portraitCompressed(_:), v15);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v89 == v87 && v90 == v88)
    {
      v36(v81, v15);
      v36(v46, v15);
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v36(v81, v15);
      v36(v46, v15);

      if ((v47 & 1) == 0)
      {
        v60 = v67;
        sub_100010158(v45, v67, type metadata accessor for CarView);
        v61 = (*(v65 + 80) + 16) & ~*(v65 + 80);
        v62 = swift_allocObject();
        sub_10000F638(v60, v62 + v61);
        v63 = v85;
        *v85 = sub_10000FEE4;
        v63[1] = v62;
        swift_storeEnumTagMultiPayload();
        sub_100002410(&qword_100025930, &qword_100018350);
        sub_10000FF64();
        sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350);
        return _ConditionalContent<>.init(storage:)();
      }
    }

    v48 = static VerticalAlignment.center.getter();
    v49 = v68;
    *v68 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    v50 = sub_100002410(&qword_100025968, &qword_100018360);
    sub_10000755C(v45, v49 + *(v50 + 44));
    v51 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v52 = v78;
    v53 = v49 + *(v79 + 36);
    *v53 = v51;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    sub_100011764(v49, v52, &qword_100025900, &qword_100018328);
    swift_storeEnumTagMultiPayload();
    sub_100012468(&qword_100025940, &qword_100025920, &qword_100018348);
    sub_10001001C();
    v58 = v80;
    _ConditionalContent<>.init(storage:)();
    sub_100011764(v58, v85, &qword_100025918, &qword_100018340);
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_100025930, &qword_100018350);
    sub_10000FF64();
    sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350);
    _ConditionalContent<>.init(storage:)();
    sub_100012120(v58, &qword_100025918, &qword_100018340);
    v41 = v49;
    v42 = &qword_100025900;
    v43 = &qword_100018328;
  }

  return sub_100012120(v41, v42, v43);
}

uint64_t sub_1000064C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for CarView(0) + 40));
  GeometryProxy.size.getter();
  UIImage.fit(to:)();
  v5 = v15;
  v9 = v14;
  v10 = v13;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = *(sub_100002410(&qword_100025A30, &qword_100018420) + 44);
  v11[0] = v10;
  v11[1] = v9;
  v12 = v5;
  return sub_100006574(a1, v11, a2 + v7);
}

uint64_t sub_100006574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v74 = sub_100002410(&qword_100025A38, &qword_100018428);
  v9 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v67 = (v63 - v10);
  v70 = sub_100002410(&qword_100025A40, &qword_100018430);
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v71 = v63 - v12;
  v13 = type metadata accessor for CarView(0);
  v63[0] = *(v13 - 1);
  v14 = *(v63[0] + 64);
  __chkstk_darwin(v13);
  v63[1] = v15;
  v64 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100002410(&qword_100025A48, &qword_100018438);
  v66 = *(v69 - 8);
  v16 = *(v66 + 64);
  __chkstk_darwin(v69);
  v65 = v63 - v17;
  v18 = sub_100002410(&qword_100025A50, &qword_100018440);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v73 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v72 = v63 - v22;
  v23 = type metadata accessor for Image.Interpolation();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Image.ResizingMode();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + v13[10]);
  Image.init(uiImage:)();
  (*(v29 + 104))(v32, enum case for Image.ResizingMode.stretch(_:), v28);
  Image.resizable(capInsets:resizingMode:)();

  (*(v29 + 8))(v32, v28);
  (*(v24 + 104))(v27, enum case for Image.Interpolation.high(_:), v23);
  v68 = Image.interpolation(_:)();

  (*(v24 + 8))(v27, v23);
  v87.origin.x = v5;
  v87.origin.y = v4;
  v87.size.width = v7;
  v87.size.height = v6;
  CGRectGetWidth(v87);
  v88.origin.x = v5;
  v88.origin.y = v4;
  v88.size.width = v7;
  v88.size.height = v6;
  CGRectGetHeight(v88);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v78[0]) = 1;
  *&v83[6] = v84;
  *&v83[22] = v85;
  *&v83[38] = v86;
  v34 = [*(a1 + v13[7]) tire];
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = v34;
  v36 = [v34 tirePressures];
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v37 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {

LABEL_7:
    v48 = v13[9];
    v49 = type metadata accessor for RedactedTiresView(0);
    v50 = a1 + v48;
    v51 = v67;
    sub_100011764(v50, v67 + *(v49 + 24), &qword_1000256B8, &qword_1000180A8);
    *v51 = swift_getKeyPath();
    sub_100002410(&qword_1000257D8, &qword_100018290);
    swift_storeEnumTagMultiPayload();
    v52 = (v51 + *(v49 + 20));
    *v52 = v5;
    v52[1] = v4;
    v52[2] = v7;
    v52[3] = v6;
    v53 = (v51 + *(v74 + 36));
    *v53 = sub_100007540;
    v53[1] = 0;
    v53[2] = 0;
    v53[3] = 0;
    sub_100011764(v51, v71, &qword_100025A38, &qword_100018428);
    swift_storeEnumTagMultiPayload();
    sub_1000102B0();
    sub_100010448();
    v47 = v72;
    _ConditionalContent<>.init(storage:)();
    sub_100012120(v51, &qword_100025A38, &qword_100018428);
    goto LABEL_8;
  }

  v39 = [v35 tirePressures];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v78[0] = v40;
  v41 = v64;
  sub_100010158(a1, v64, type metadata accessor for CarView);
  v42 = (*(v63[0] + 80) + 56) & ~*(v63[0] + 80);
  v43 = swift_allocObject();
  v43[2] = v5;
  v43[3] = v4;
  v43[4] = v7;
  v43[5] = v6;
  *(v43 + 6) = v8;
  sub_10000F638(v41, v43 + v42);
  sub_100002410(&qword_100025A98, &qword_100018460);
  type metadata accessor for UUID();
  sub_100002410(&qword_100025A68, &qword_100018448);
  sub_100012468(&qword_100025AA0, &qword_100025A98, &qword_100018460);
  sub_100010334();
  sub_10000F104(&qword_100025AA8, &qword_1000259F8, CAFTirePressure_ptr);
  v44 = v65;
  ForEach<>.init(_:content:)();
  v45 = v66;
  v46 = v69;
  (*(v66 + 16))(v71, v44, v69);
  swift_storeEnumTagMultiPayload();
  sub_1000102B0();
  sub_100010448();
  v47 = v72;
  _ConditionalContent<>.init(storage:)();

  (*(v45 + 8))(v44, v46);
LABEL_8:
  v54 = v73;
  sub_100011764(v47, v73, &qword_100025A50, &qword_100018440);
  v55 = v68;
  v76[0] = v68;
  v76[1] = 0;
  v77[0] = 1;
  v77[1] = 0;
  *&v77[2] = *v83;
  *&v77[18] = *&v83[16];
  *&v77[34] = *&v83[32];
  *&v77[48] = *&v83[46];
  v56 = v68;
  v57 = *v77;
  v58 = *&v77[16];
  v59 = *&v77[32];
  v60 = v75;
  *(v75 + 64) = *&v83[46];
  v60[2] = v58;
  v60[3] = v59;
  *v60 = v56;
  v60[1] = v57;
  v61 = sub_100002410(&qword_100025A88, &qword_100018450);
  sub_100011764(v54, v60 + *(v61 + 48), &qword_100025A50, &qword_100018440);
  sub_100011764(v76, v78, &qword_100025A90, &qword_100018458);
  sub_100012120(v47, &qword_100025A50, &qword_100018440);
  sub_100012120(v54, &qword_100025A50, &qword_100018440);
  v78[0] = v55;
  v78[1] = 0;
  v79 = 1;
  v80 = *v83;
  v81 = *&v83[16];
  *v82 = *&v83[32];
  *&v82[14] = *&v83[46];
  return sub_100012120(v78, &qword_100025A90, &qword_100018458);
}

id sub_100007010@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CarView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v25 = *a1;
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  sub_10000F104(&qword_100025A08, &qword_1000259F8, CAFTirePressure_ptr);
  v12 = *a2;
  v23 = a2[1];
  v24 = v12;
  CAFObserved<>.observable.getter();
  v13 = *(v9 + 44);
  v14 = type metadata accessor for PositionedTireInfoView(0);
  sub_100011764(a3 + v13, a4 + *(v14 + 28), &qword_1000256B8, &qword_1000180A8);
  type metadata accessor for CAFDimensionObservable();
  sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable);
  *(a4 + 16) = EnvironmentObject.init()();
  *(a4 + 24) = v15;
  type metadata accessor for CAFTirePressureObservable();
  sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable);
  *a4 = ObservedObject.init(wrappedValue:)();
  *(a4 + 8) = v16;
  v17 = v23;
  *(a4 + 32) = v24;
  *(a4 + 48) = v17;
  sub_100010158(a3, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarView);
  v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  sub_10000F638(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (a4 + *(sub_100002410(&qword_100025A68, &qword_100018448) + 36));
  *v20 = sub_10001095C;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = v25;

  return v21;
}

void sub_1000072C0()
{
  v0 = type metadata accessor for CAUVehicleLayoutKey();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  v5._object = 0x8000000100018E60;
  v5._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v5);
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  CAFPositionedRequired.layoutKey.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v4, v0);
  sub_100002F1C(v6, v7, 0x7469617274726F70, 0xEC00000077656956, 226);

  sub_100007444();
}

void sub_100007444()
{
  v1 = type metadata accessor for CarView(0);
  v2 = (v0 + *(v1 + 24));
  v3 = *v2;
  v4 = *(v2 + 1);
  sub_100002410(&qword_100025AB0, &qword_100018468);
  State.wrappedValue.getter();
  if ((v7 & 1) == 0)
  {
    v5 = [*(v0 + *(v1 + 28)) tire];
    if (v5)
    {
      v6 = v5;
      if ([v5 receivedAllValues])
      {
        CAFSignpostEmit_Finalized();

        State.wrappedValue.setter();
      }
    }
  }
}

uint64_t sub_10000755C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v71 = type metadata accessor for Image.Interpolation();
  v3 = *(v71 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v71);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002410(&qword_100025978, &qword_100018370);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v12);
  v15 = &v70 - v14;
  v16 = sub_100002410(&qword_100025A10, &qword_100018400);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v76 = &v70 - v21;
  v22 = __chkstk_darwin(v20);
  v74 = &v70 - v23;
  __chkstk_darwin(v22);
  v80 = &v70 - v24;
  v25 = type metadata accessor for CarView(0);
  v70 = *(a1 + *(v25 + 28));
  v26 = [v70 tire];
  v78 = a1;
  if (v26)
  {
    v27 = v26;
    v73 = v12;
    v28 = [v26 tirePressures];
    sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v30)
    {
      *v15 = static HorizontalAlignment.trailing.getter();
      *(v15 + 1) = 0;
      v15[16] = 1;
      v31 = sub_100002410(&qword_100025990, &qword_100018388);
      v32 = v78;
      sub_10000901C(&v15[*(v31 + 44)]);

      v33 = v80;
      sub_1000116FC(v15, v80, &qword_100025978, &qword_100018370);
      v34 = *(v79 + 56);
      v35 = v33;
      a1 = v32;
      v36 = 0;
      v12 = v73;
      goto LABEL_8;
    }

    a1 = v78;
    v12 = v73;
  }

  v34 = *(v79 + 56);
  v35 = v80;
  v36 = 1;
LABEL_8:
  v72 = v34;
  v34(v35, v36, 1, v12);
  v37 = *(a1 + *(v25 + 40));
  Image.init(uiImage:)();
  (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
  Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v11, v7);
  v38 = v71;
  (*(v3 + 104))(v6, enum case for Image.Interpolation.high(_:), v71);
  v73 = Image.interpolation(_:)();

  (*(v3 + 8))(v6, v38);
  sub_100002410(&qword_100025A18, &qword_100018408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017E50;
  v40 = static Edge.Set.leading.getter();
  *(inited + 32) = v40;
  v41 = static Edge.Set.trailing.getter();
  *(inited + 33) = v41;
  v42 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v40)
  {
    v42 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v41)
  {
    LODWORD(v71) = v42;
  }

  else
  {
    LODWORD(v71) = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v102 = 1;
  v98 = 0;
  v51 = [v70 tire];
  if (!v51)
  {
    goto LABEL_19;
  }

  v52 = v51;
  v53 = [v51 tirePressures];
  sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v54 >> 62)
  {
    v55 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v55)
  {

LABEL_19:
    v58 = 1;
    v57 = v74;
    goto LABEL_20;
  }

  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v56 = sub_100002410(&qword_100025990, &qword_100018388);
  sub_1000094AC(&v15[*(v56 + 44)]);

  v57 = v74;
  sub_1000116FC(v15, v74, &qword_100025978, &qword_100018370);
  v58 = 0;
LABEL_20:
  v72(v57, v58, 1, v12);
  v59 = v80;
  v60 = v76;
  sub_100011764(v80, v76, &qword_100025A10, &qword_100018400);
  v61 = v75;
  sub_100011764(v57, v75, &qword_100025A10, &qword_100018400);
  v62 = v77;
  sub_100011764(v60, v77, &qword_100025A10, &qword_100018400);
  v63 = sub_100002410(&qword_100025A20, &qword_100018410);
  v64 = v62 + *(v63 + 48);
  v65 = v73;
  v81 = v73;
  LOWORD(v82) = 1;
  *(&v82 + 2) = v100;
  WORD3(v82) = v101;
  v66 = v71;
  BYTE8(v82) = v71;
  HIDWORD(v82) = *&v99[3];
  *(&v82 + 9) = *v99;
  *&v83 = v44;
  *(&v83 + 1) = v46;
  *&v84 = v48;
  *(&v84 + 1) = v50;
  v85 = 0;
  *(v64 + 64) = 0;
  v67 = v84;
  *(v64 + 32) = v83;
  *(v64 + 48) = v67;
  v68 = v82;
  *v64 = v81;
  *(v64 + 16) = v68;
  sub_100011764(v61, v62 + *(v63 + 64), &qword_100025A10, &qword_100018400);
  sub_100011764(&v81, v86, &qword_100025A28, &qword_100018418);
  sub_100012120(v57, &qword_100025A10, &qword_100018400);
  sub_100012120(v59, &qword_100025A10, &qword_100018400);
  sub_100012120(v61, &qword_100025A10, &qword_100018400);
  v86[0] = v65;
  v86[1] = 0;
  v87 = 1;
  v88 = 0;
  v89 = v100;
  v90 = v101;
  v91 = v66;
  *v92 = *v99;
  *&v92[3] = *&v99[3];
  v93 = v44;
  v94 = v46;
  v95 = v48;
  v96 = v50;
  v97 = 0;
  sub_100012120(v86, &qword_100025A28, &qword_100018418);
  return sub_100012120(v60, &qword_100025A10, &qword_100018400);
}

uint64_t sub_100007EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v54 = a2;
  v53 = a1;
  v62 = a4;
  v56 = sub_100002410(&qword_1000259B8, &qword_1000183B0);
  v5 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v60 = &v51 - v6;
  v58 = type metadata accessor for TireInfoView(0);
  v7 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for CAUVehicleLayoutKey();
  v59 = *(v61 - 1);
  v10 = *(v59 + 64);
  v11 = __chkstk_darwin(v61);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v51 - v14;
  v15 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v4;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v27);
  CAUAppUIConfiguration.Configuration.layoutStyle.getter();
  (*(v24 + 8))(v27, v23);
  (*(v16 + 104))(v20, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v15);
  sub_10000EC84(&qword_100025928, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v64[0] == v65)
  {
    v28 = *(v16 + 8);
    v28(v20, v15);
    v28(v22, v15);
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v30 = *(v16 + 8);
    v30(v20, v15);
    v30(v22, v15);

    if ((v29 & 1) == 0)
    {
      v32 = v59;
      v33 = v61;
      (*(v59 + 104))(v13, *v52, v61);
      v35 = v57;
      goto LABEL_9;
    }
  }

  v31 = sub_10000580C();
  v32 = v59;
  v33 = v61;
  if (v31)
  {
    v34 = &v66;
  }

  else
  {
    v34 = &v67;
  }

  (*(v59 + 104))(v13, **(v34 - 32), v61);
  v35 = v57;
LABEL_9:
  (*(v32 + 32))(v35, v13, v33);
  v36 = sub_100009FA8(v35);
  if (v36)
  {
    v37 = v36;
    type metadata accessor for CAFDimensionObservable();
    sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable);
    v61 = v37;
    v38 = EnvironmentObject.init()();
    v40 = v39;
    KeyPath = swift_getKeyPath();
    v42 = v58;
    *(v9 + *(v58 + 24)) = KeyPath;
    sub_100002410(&qword_1000257D8, &qword_100018290);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CAFTirePressureObservable();
    sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable);
    *v9 = ObservedObject.init(wrappedValue:)();
    v9[1] = v43;
    v9[2] = v38;
    v9[3] = v40;
    v44 = *(v42 + 28);
    *(v9 + v44) = swift_getKeyPath();
    sub_100002410(&qword_1000259E0, &qword_1000183F0);
    swift_storeEnumTagMultiPayload();
    sub_100010158(v9, v60, type metadata accessor for TireInfoView);
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_1000259C0, &qword_1000183B8);
    sub_10000EC84(&qword_1000259C8, type metadata accessor for TireInfoView);
    sub_100012468(&qword_1000259D0, &qword_1000259C0, &qword_1000183B8);
    _ConditionalContent<>.init(storage:)();

    sub_1000101C0(v9);
  }

  else
  {
    v46 = static VerticalAlignment.center.getter();
    LOBYTE(v65) = 1;
    sub_100009B54(v64);
    *&v63[55] = v64[3];
    *&v63[39] = v64[2];
    *&v63[23] = v64[1];
    *&v63[7] = v64[0];
    v47 = *v63;
    v48 = v60;
    *(v60 + 33) = *&v63[16];
    v49 = *&v63[48];
    *(v48 + 49) = *&v63[32];
    *(v48 + 65) = v49;
    v50 = v65;
    *v48 = v46;
    *(v48 + 8) = 0;
    *(v48 + 16) = v50;
    *(v48 + 80) = *&v63[63];
    *(v48 + 17) = v47;
    swift_storeEnumTagMultiPayload();
    sub_100002410(&qword_1000259C0, &qword_1000183B8);
    sub_10000EC84(&qword_1000259C8, type metadata accessor for TireInfoView);
    sub_100012468(&qword_1000259D0, &qword_1000259C0, &qword_1000183B8);
    _ConditionalContent<>.init(storage:)();
  }

  return (*(v32 + 8))(v35, v33);
}

uint64_t sub_100008728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for Image.Interpolation();
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  __chkstk_darwin(v3);
  v100 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.ResizingMode();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = *(v98 + 64);
  __chkstk_darwin(v6);
  v96 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002410(&qword_100025978, &qword_100018370);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v95 - v14;
  v16 = sub_100002410(&qword_100025980, &qword_100018378);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v104 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v95 - v20;
  v22 = sub_100002410(&qword_100025988, &qword_100018380);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v106 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v107 = &v95 - v27;
  v28 = __chkstk_darwin(v26);
  v101 = &v95 - v29;
  v30 = __chkstk_darwin(v28);
  v105 = &v95 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v95 - v33;
  __chkstk_darwin(v32);
  v36 = &v95 - v35;
  *v15 = static HorizontalAlignment.trailing.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v95 = sub_100002410(&qword_100025990, &qword_100018388);
  sub_10000901C(&v15[*(v95 + 44)]);
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000116FC(v15, v21, &qword_100025978, &qword_100018370);
  v37 = v16;
  v38 = &v21[*(v16 + 36)];
  v39 = v136;
  v40 = v138;
  *(v38 + 4) = v137;
  *(v38 + 5) = v40;
  *(v38 + 6) = v139;
  v41 = v134;
  *v38 = v133;
  *(v38 + 1) = v41;
  *(v38 + 2) = v135;
  *(v38 + 3) = v39;
  v42 = sub_1000096A8(&enum case for CAUAppUIConfiguration.Element.tpms_leftTop_label_top_padding(_:), &enum case for CAUAppUIConfiguration.Element.tpms_leftBottom_label_bottom_padding(_:));
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v15) = static Edge.Set.all.getter();
  sub_1000116FC(v21, v34, &qword_100025980, &qword_100018378);
  v49 = v22;
  v50 = &v34[*(v22 + 36)];
  *v50 = v15;
  *(v50 + 1) = v42;
  *(v50 + 2) = v44;
  *(v50 + 3) = v46;
  *(v50 + 4) = v48;
  v50[40] = 0;
  v97 = v36;
  sub_1000116FC(v34, v36, &qword_100025988, &qword_100018380);
  v51 = *(a1 + *(type metadata accessor for CarView(0) + 40));
  v52 = sub_10000580C();
  if (!UIImage.rotated90Degrees(clockwise:)(v52 & 1))
  {
    v53 = v51;
  }

  Image.init(uiImage:)();
  v55 = v98;
  v54 = v99;
  v56 = v96;
  (*(v98 + 104))(v96, enum case for Image.ResizingMode.stretch(_:), v99);
  Image.resizable(capInsets:resizingMode:)();

  (*(v55 + 8))(v56, v54);
  v58 = v102;
  v57 = v103;
  v59 = v100;
  (*(v102 + 104))(v100, enum case for Image.Interpolation.high(_:), v103);
  v60 = Image.interpolation(_:)();
  v99 = v60;

  (*(v58 + 8))(v59, v57);
  v61 = sub_100009218();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  LODWORD(v103) = static Edge.Set.all.getter();
  v131 = 1;
  v127 = 0;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1000094AC(&v13[*(v95 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v13;
  v69 = v104;
  sub_1000116FC(v68, v104, &qword_100025978, &qword_100018370);
  v70 = (v69 + *(v37 + 36));
  v71 = v145;
  v70[4] = v144;
  v70[5] = v71;
  v70[6] = v146;
  v72 = v141;
  *v70 = v140;
  v70[1] = v72;
  v73 = v143;
  v70[2] = v142;
  v70[3] = v73;
  v74 = sub_1000096A8(&enum case for CAUAppUIConfiguration.Element.tpms_rightTop_label_top_padding(_:), &enum case for CAUAppUIConfiguration.Element.tpms_rightBottom_label_bottom_padding(_:));
  v76 = v75;
  v78 = v77;
  v80 = v79;
  LOBYTE(v57) = static Edge.Set.all.getter();
  v81 = v101;
  sub_1000116FC(v69, v101, &qword_100025980, &qword_100018378);
  v82 = v81 + *(v49 + 36);
  *v82 = v57;
  *(v82 + 8) = v74;
  *(v82 + 16) = v76;
  *(v82 + 24) = v78;
  *(v82 + 32) = v80;
  *(v82 + 40) = 0;
  v83 = v105;
  sub_1000116FC(v81, v105, &qword_100025988, &qword_100018380);
  v84 = v97;
  v85 = v107;
  sub_100011764(v97, v107, &qword_100025988, &qword_100018380);
  v86 = v106;
  sub_100011764(v83, v106, &qword_100025988, &qword_100018380);
  v87 = v108;
  sub_100011764(v85, v108, &qword_100025988, &qword_100018380);
  v88 = sub_100002410(&qword_100025998, &qword_100018390);
  v89 = (v87 + *(v88 + 48));
  v109[0] = v60;
  v109[1] = 0;
  LOWORD(v110) = 1;
  *(&v110 + 2) = v129;
  WORD3(v110) = v130;
  v90 = v103;
  BYTE8(v110) = v103;
  HIDWORD(v110) = *&v128[3];
  *(&v110 + 9) = *v128;
  *&v111 = v61;
  *(&v111 + 1) = v63;
  *&v112 = v65;
  *(&v112 + 1) = v67;
  LOBYTE(v113) = 0;
  *(&v113 + 1) = *v132;
  DWORD1(v113) = *&v132[3];
  *(&v113 + 1) = 0x3FF0000000000000;
  v91 = v110;
  v92 = v113;
  v89[3] = v112;
  v89[4] = v92;
  v93 = v111;
  v89[1] = v91;
  v89[2] = v93;
  *v89 = v60;
  sub_100011764(v86, v87 + *(v88 + 64), &qword_100025988, &qword_100018380);
  sub_100011764(v109, v114, &qword_1000259A0, &qword_100018398);
  sub_100012120(v83, &qword_100025988, &qword_100018380);
  sub_100012120(v84, &qword_100025988, &qword_100018380);
  sub_100012120(v86, &qword_100025988, &qword_100018380);
  v114[0] = v99;
  v114[1] = 0;
  v115 = 1;
  v116 = v129;
  v117 = v130;
  v118 = v90;
  *v119 = *v128;
  *&v119[3] = *&v128[3];
  v120 = v61;
  v121 = v63;
  v122 = v65;
  v123 = v67;
  v124 = 0;
  *v125 = *v132;
  *&v125[3] = *&v132[3];
  v126 = 0x3FF0000000000000;
  sub_100012120(v114, &qword_1000259A0, &qword_100018398);
  return sub_100012120(v85, &qword_100025988, &qword_100018380);
}

uint64_t sub_10000901C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002410(&qword_1000259A8, &qword_1000183A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - v11;
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_rear_left(_:), &enum case for CAUVehicleLayoutKey.tire_front_right(_:), &enum case for CAUVehicleLayoutKey.tire_front_left(_:), &v18 - v13);
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_rear_right(_:), &enum case for CAUVehicleLayoutKey.tire_front_left(_:), &enum case for CAUVehicleLayoutKey.tire_rear_left(_:), v12);
  sub_100011764(v14, v9, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v12, v6, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v9, a1, &qword_1000259A8, &qword_1000183A0);
  v15 = sub_100002410(&qword_1000259B0, &qword_1000183A8);
  v16 = a1 + *(v15 + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100011764(v6, a1 + *(v15 + 64), &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v12, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v14, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v6, &qword_1000259A8, &qword_1000183A0);
  return sub_100012120(v9, &qword_1000259A8, &qword_1000183A0);
}

double sub_100009218()
{
  v0 = sub_100002410(&qword_1000256D0, &qword_1000180F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CAUWidgetContentMargins();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v8);
  CAUAppUIConfiguration.Configuration.padding.getter();
  (*(v5 + 8))(v8, v4);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_100012120(v3, &qword_1000256D0, &qword_1000180F8);
    return 0.0;
  }

  else
  {
    (*(v10 + 32))(v13, v3, v9);
    CAUWidgetContentMargins.top.getter();
    v14 = v15;
    CAUWidgetContentMargins.leading.getter();
    CAUWidgetContentMargins.bottom.getter();
    CAUWidgetContentMargins.trailing.getter();
    (*(v10 + 8))(v13, v9);
  }

  return v14;
}

uint64_t sub_1000094AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002410(&qword_1000259A8, &qword_1000183A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - v11;
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_front_left(_:), &enum case for CAUVehicleLayoutKey.tire_rear_right(_:), &enum case for CAUVehicleLayoutKey.tire_front_right(_:), &v18 - v13);
  sub_100007EA4(&enum case for CAUVehicleLayoutKey.tire_front_right(_:), &enum case for CAUVehicleLayoutKey.tire_rear_left(_:), &enum case for CAUVehicleLayoutKey.tire_rear_right(_:), v12);
  sub_100011764(v14, v9, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v12, v6, &qword_1000259A8, &qword_1000183A0);
  sub_100011764(v9, a1, &qword_1000259A8, &qword_1000183A0);
  v15 = sub_100002410(&qword_1000259B0, &qword_1000183A8);
  v16 = a1 + *(v15 + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100011764(v6, a1 + *(v15 + 64), &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v12, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v14, &qword_1000259A8, &qword_1000183A0);
  sub_100012120(v6, &qword_1000259A8, &qword_1000183A0);
  return sub_100012120(v9, &qword_1000259A8, &qword_1000183A0);
}

double sub_1000096A8(unsigned int *a1, unsigned int *a2)
{
  v53 = a2;
  v50 = a1;
  v3 = type metadata accessor for CAUAppUIConfiguration.Element();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  v10 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  v20 = __chkstk_darwin(v18);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v46 - v22;
  v52 = v2;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v17);
  v24 = CAUAppUIConfiguration.Configuration.elementData.getter();
  v25 = *(v11 + 8);
  v51 = v10;
  v25(v17, v10);
  v26 = v4[13];
  v26(v9, *v50, v3);
  v27 = *(v24 + 16);
  v55 = v4;
  if (v27 && (v28 = sub_100015424(v9), (v29 & 1) != 0))
  {
    v30 = *(v24 + 56);
    v50 = v3;
    v31 = v48;
    (*(v48 + 16))(v23, v30 + *(v48 + 72) * v28, v49);
    v32 = v4[1];
    v32(v9, v50);

    v33 = COERCE_DOUBLE(CAUAppUIConfiguration.ElementData.cgFloatValue.getter());
    v35 = v34;
    v36 = v31;
    v3 = v50;
    (*(v36 + 8))(v23, v49);
    if (v35)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v33;
    }
  }

  else
  {

    v32 = v4[1];
    v32(v9, v3);
    v37 = 0.0;
  }

  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v15);
  v38 = CAUAppUIConfiguration.Configuration.elementData.getter();
  v25(v15, v51);
  v39 = v54;
  v26(v54, *v53, v3);
  if (*(v38 + 16) && (v40 = sub_100015424(v39), (v41 & 1) != 0))
  {
    v43 = v47;
    v42 = v48;
    v44 = v49;
    (*(v48 + 16))(v47, *(v38 + 56) + *(v48 + 72) * v40, v49);
    v32(v39, v3);

    CAUAppUIConfiguration.ElementData.cgFloatValue.getter();
    (*(v42 + 8))(v43, v44);
  }

  else
  {

    v32(v39, v3);
  }

  return v37;
}

uint64_t sub_100009B54@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v1 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v52 = &v46 - v3;
  v4 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 11565;
  v56 = 0xE200000000000000;
  v46 = sub_10001021C();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v8);
  sub_100012BD0(v8);
  v48 = v5;
  v49 = v4;
  (*(v5 + 8))(v8, v4);
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_100010270(v9, v11, v13 & 1);

  if (qword_100025268 != -1)
  {
    swift_once();
  }

  v50 = Text.foregroundColor(_:)();
  v51 = v19;
  v21 = v20;
  v47 = v22;
  sub_100010270(v14, v16, v18 & 1);

  v55 = 0x2020202020;
  v56 = 0xE500000000000000;
  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  v28 = v52;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v52);
  (*(v48 + 56))(v28, 0, 1, v49);
  sub_1000138A4(v28);
  sub_100012120(v28, &qword_1000259E8, &qword_1000183F8);
  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;

  sub_100010270(v23, v25, v27 & 1);

  if (qword_100025270 != -1)
  {
    swift_once();
  }

  v34 = Text.foregroundColor(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_100010270(v29, v31, v33 & 1);

  v41 = v47 & 1;
  v54 = v47 & 1;
  LOBYTE(v55) = v47 & 1;
  v57 = v38 & 1;
  v42 = v53;
  v44 = v50;
  v43 = v51;
  *v53 = v50;
  v42[1] = v21;
  *(v42 + 16) = v41;
  v42[3] = v43;
  v42[4] = v34;
  v42[5] = v36;
  *(v42 + 48) = v38 & 1;
  v42[7] = v40;
  sub_100010280(v44, v21, v41);

  sub_100010280(v34, v36, v38 & 1);

  sub_100010270(v34, v36, v38 & 1);

  sub_100010270(v44, v21, v54);
}

id sub_100009FA8(uint64_t a1)
{
  v22 = a1;
  v23 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v1 + *(type metadata accessor for CarView(0) + 28)) tire];
  if (result)
  {
    v7 = result;
    v8 = [result tirePressures];
    v21 = sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v7;
    if (v9 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      v19 = v9 & 0xFFFFFFFFFFFFFF8;
      v20 = v9 & 0xC000000000000001;
      v12 = (v2 + 8);
      while (1)
      {
        if (v20)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v19 + 16))
          {
            goto LABEL_18;
          }

          v13 = *(v9 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        CAFPositionedRequired.layoutKey.getter();
        sub_10000EC84(&qword_100025A00, &type metadata accessor for CAUVehicleLayoutKey);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v2 = v27;
        if (v26 == v24 && v27 == v25)
        {
          (*v12)(v5, v23);

LABEL_16:

          sub_10000F104(&qword_100025A08, &qword_1000259F8, CAFTirePressure_ptr);
          v17 = CAFObserved<>.observable.getter();

          return v17;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*v12)(v5, v23);

        if (v16)
        {
          goto LABEL_16;
        }

        ++v11;
        if (v15 == i)
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

    return 0;
  }

  return result;
}

uint64_t sub_10000A2E4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002410(&qword_1000257D8, &qword_100018290);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TireInfoView(0);
  sub_100011764(v1 + *(v12 + 24), v11, &qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10000A4F0@<X0>(uint64_t a1@<X8>)
{
  *&v240 = a1;
  v232 = sub_100002410(&qword_100025CB0, &qword_1000185B8);
  v2 = *(*(v232 - 8) + 64);
  __chkstk_darwin(v232);
  v214 = (v204 - v3);
  v230 = sub_100002410(&qword_100025CB8, &qword_1000185C0);
  v4 = *(*(v230 - 8) + 64);
  __chkstk_darwin(v230);
  v231 = v204 - v5;
  v6 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v221 = v204 - v8;
  v236 = sub_100002410(&qword_100025CC0, &qword_1000185C8);
  v9 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v238 = (v204 - v10);
  v237 = sub_100002410(&qword_100025CC8, &qword_1000185D0);
  v11 = *(*(v237 - 8) + 64);
  __chkstk_darwin(v237);
  v223 = v204 - v12;
  v13 = sub_100002410(&qword_100025CD0, &qword_1000185D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v211 = v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v212 = v204 - v18;
  v19 = __chkstk_darwin(v17);
  v210 = v204 - v20;
  v21 = __chkstk_darwin(v19);
  v213 = v204 - v22;
  v23 = __chkstk_darwin(v21);
  v226 = v204 - v24;
  v25 = __chkstk_darwin(v23);
  v227 = v204 - v26;
  v27 = __chkstk_darwin(v25);
  v216 = v204 - v28;
  v29 = __chkstk_darwin(v27);
  v217 = v204 - v30;
  v31 = __chkstk_darwin(v29);
  *&v215 = v204 - v32;
  __chkstk_darwin(v31);
  *&v233 = v204 - v33;
  v229 = sub_100002410(&qword_100025CD8, &qword_1000185E0);
  v34 = *(*(v229 - 8) + 64);
  __chkstk_darwin(v229);
  v234 = (v204 - v35);
  v36 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v218 = *(v36 - 8);
  v37 = *(v218 + 64);
  v38 = __chkstk_darwin(v36);
  v40 = v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = v204 - v41;
  v43 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  *&v235 = *(v43 - 8);
  v44 = *(v235 + 64);
  v45 = __chkstk_darwin(v43);
  *&v219 = v204 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = v204 - v47;
  v49 = sub_100002410(&qword_100025CE0, &qword_1000185E8);
  v239 = *(v49 - 8);
  v50 = *(v239 + 64);
  __chkstk_darwin(v49);
  v228 = v204 - v51;
  v52 = v1;
  v53 = *(v1 + 8);
  v54 = CAFTirePressureObservable.observed.getter();
  v55 = [v54 receivedAllValues];

  if (v55)
  {
    v209 = v49;
    v56 = sub_10000BF0C();
    v224 = v58;
    v225 = v57;
    v207 = v59;
    sub_10000C3E0(&v246);
    v206 = v246;
    sub_10000C6E0(&v253);
    v208 = v253;
    *&v222 = v52;
    sub_10000A2E4(v48);
    CAUAppUIConfiguration.Configuration.layoutStyle.getter();
    v60 = *(v235 + 8);
    v220 = v43;
    v204[1] = v235 + 8;
    v205 = v60;
    v60(v48, v43);
    v61 = v218;
    (*(v218 + 104))(v40, enum case for CAUAppUIConfiguration.LayoutStyle.landscape(_:), v36);
    sub_10000EC84(&qword_100025928, &type metadata accessor for CAUAppUIConfiguration.LayoutStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v265 == v260)
    {
      v62 = *(v61 + 8);
      v62(v40, v36);
      v62(v42, v36);
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v67 = *(v61 + 8);
      v67(v40, v36);
      v67(v42, v36);

      if ((v66 & 1) == 0)
      {
        v137 = static HorizontalAlignment.center.getter();
        v138 = v214;
        *v214 = v137;
        v138[1] = 0;
        *(v138 + 16) = 1;
        *&v265 = v56;
        *(&v265 + 1) = v225;
        v139 = sub_10001021C();

        v234 = v139;
        v140 = Text.init<A>(_:)();
        v142 = v141;
        v144 = v143;
        v145 = v219;
        sub_10000A2E4(v219);
        sub_100012BD0(v145);
        v205(v145, v220);
        v146 = Text.font(_:)();
        v148 = v147;
        v150 = v149;
        v152 = v151;

        sub_100010270(v140, v142, v144 & 1);

        if (v206)
        {
          v153 = Text.foregroundColor(_:)();
          v155 = v154;
          *&v260 = v153;
          *(&v260 + 1) = v154;
          v157 = v156 & 1;
          *&v261 = v156 & 1;
          *(&v261 + 1) = v158;
          LOBYTE(v262) = 0;
          sub_100010280(v153, v154, v156 & 1);

          sub_100010280(v153, v155, v157);

          _ConditionalContent<>.init(storage:)();
          sub_100010270(v146, v148, v150 & 1);

          sub_100010270(v153, v155, v157);

          sub_100010270(v153, v155, v157);
        }

        else
        {
          *&v260 = v146;
          *(&v260 + 1) = v148;
          *&v261 = v150 & 1;
          *(&v261 + 1) = v152;
          LOBYTE(v262) = 1;
          _ConditionalContent<>.init(storage:)();
        }

        v159 = v266;
        v160 = v267;
        v161 = v210;
        if (v252)
        {
          v162 = v238;
          *v238 = v265;
          v162[1] = v159;
          *(v162 + 32) = v160;
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          v163 = v223;
          v164 = &v223[*(v237 + 36)];
          v233 = v265;
          v219 = v266;
          v267 = v249;
          v268 = v250;
          v269 = v251;
          v265 = v247;
          v266 = v248;
          View._colorMatrix(_:)();
          v165 = &v164[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
          *v165 = 0x403E000000000000;
          v165[8] = 1;
          v166 = v219;
          *v163 = v233;
          *(v163 + 16) = v166;
          *(v163 + 32) = v160;
          sub_100011764(v163, v238, &qword_100025CC8, &qword_1000185D0);
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
          sub_100012120(v163, &qword_100025CC8, &qword_1000185D0);
        }

        v167 = v220;
        v168 = v235;
        sub_1000116FC(v161, v213, &qword_100025CD0, &qword_1000185D8);
        *&v260 = v207;
        *(&v260 + 1) = v224;

        v169 = Text.init<A>(_:)();
        v171 = v170;
        v173 = v172;
        v174 = v221;
        sub_10000A2E4(v221);
        (*(v168 + 56))(v174, 0, 1, v167);
        sub_1000138A4(v174);
        sub_100012120(v174, &qword_1000259E8, &qword_1000183F8);
        v175 = Text.font(_:)();
        v177 = v176;
        v179 = v178;
        v181 = v180;

        sub_100010270(v169, v171, v173 & 1);

        if (v208)
        {
          v182 = Text.foregroundColor(_:)();
          v184 = v183;
          v241 = v182;
          v242 = v183;
          v186 = v185 & 1;
          v243 = v185 & 1;
          v244 = v187;
          v245 = 0;
          sub_100010280(v182, v183, v185 & 1);

          sub_100010280(v182, v184, v186);

          _ConditionalContent<>.init(storage:)();
          sub_100010270(v175, v177, v179 & 1);

          sub_100010270(v182, v184, v186);

          sub_100010270(v182, v184, v186);
        }

        else
        {
          v241 = v175;
          v242 = v177;
          v243 = v179 & 1;
          v244 = v181;
          v245 = 1;
          _ConditionalContent<>.init(storage:)();
        }

        v188 = v261;
        v189 = v262;
        v136 = v240;
        v190 = v211;
        if (v259)
        {
          v191 = v238;
          *v238 = v260;
          v191[1] = v188;
          *(v191 + 32) = v189;
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
        }

        else
        {
          v192 = v223;
          v193 = &v223[*(v237 + 36)];
          v240 = v260;
          v235 = v261;
          v262 = v256;
          v263 = v257;
          v264 = v258;
          v260 = v254;
          v261 = v255;
          View._colorMatrix(_:)();
          v194 = &v193[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
          *v194 = 0x403E000000000000;
          v194[8] = 1;
          v195 = v235;
          *v192 = v240;
          *(v192 + 16) = v195;
          *(v192 + 32) = v189;
          sub_100011764(v192, v238, &qword_100025CC8, &qword_1000185D0);
          swift_storeEnumTagMultiPayload();
          sub_100002410(&qword_100025CE8, &qword_1000185F0);
          sub_1000115C8();
          sub_100011680();
          _ConditionalContent<>.init(storage:)();
          sub_100012120(v192, &qword_100025CC8, &qword_1000185D0);
        }

        v196 = sub_100002410(&qword_100025D10, &qword_100018600);
        v197 = v214;
        v198 = v214 + *(v196 + 44);
        v199 = v212;
        sub_1000116FC(v190, v212, &qword_100025CD0, &qword_1000185D8);
        v200 = v213;
        v201 = v227;
        sub_100011764(v213, v227, &qword_100025CD0, &qword_1000185D8);
        v202 = v226;
        sub_100011764(v199, v226, &qword_100025CD0, &qword_1000185D8);
        sub_100011764(v201, v198, &qword_100025CD0, &qword_1000185D8);
        v203 = sub_100002410(&qword_100025D18, &qword_100018608);
        sub_100011764(v202, v198 + *(v203 + 48), &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v199, &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v200, &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v202, &qword_100025CD0, &qword_1000185D8);
        sub_100012120(v201, &qword_100025CD0, &qword_1000185D8);

        sub_100011764(v197, v231, &qword_100025CB0, &qword_1000185B8);
        swift_storeEnumTagMultiPayload();
        sub_100012468(&qword_100025D20, &qword_100025CD8, &qword_1000185E0);
        sub_100012468(&qword_100025D28, &qword_100025CB0, &qword_1000185B8);
        v121 = v228;
        _ConditionalContent<>.init(storage:)();
        sub_100012120(&v246, &qword_100025D30, &qword_100018610);
        sub_100012120(&v253, &qword_100025D30, &qword_100018610);
        sub_100012120(v197, &qword_100025CB0, &qword_1000185B8);
        goto LABEL_34;
      }
    }

    v68 = static VerticalAlignment.center.getter();
    v69 = v234;
    *v234 = v68;
    v69[1] = 0;
    *(v69 + 16) = 1;
    *&v265 = v56;
    *(&v265 + 1) = v225;
    v70 = sub_10001021C();

    v218 = v70;
    v71 = Text.init<A>(_:)();
    v73 = v72;
    v75 = v74;
    v76 = v219;
    sub_10000A2E4(v219);
    sub_100012BD0(v76);
    v205(v76, v220);
    v77 = Text.font(_:)();
    v79 = v78;
    v81 = v80;
    v83 = v82;

    sub_100010270(v71, v73, v75 & 1);

    if (v206)
    {
      v84 = Text.foregroundColor(_:)();
      v86 = v85;
      *&v260 = v84;
      *(&v260 + 1) = v85;
      v88 = v87 & 1;
      *&v261 = v87 & 1;
      *(&v261 + 1) = v89;
      LOBYTE(v262) = 0;
      sub_100010280(v84, v85, v87 & 1);

      sub_100010280(v84, v86, v88);

      _ConditionalContent<>.init(storage:)();
      sub_100010270(v77, v79, v81 & 1);

      sub_100010270(v84, v86, v88);

      sub_100010270(v84, v86, v88);
    }

    else
    {
      *&v260 = v77;
      *(&v260 + 1) = v79;
      *&v261 = v81 & 1;
      *(&v261 + 1) = v83;
      LOBYTE(v262) = 1;
      _ConditionalContent<>.init(storage:)();
    }

    v90 = v266;
    v91 = v267;
    v92 = v215;
    if (v252)
    {
      v93 = v238;
      *v238 = v265;
      v93[1] = v90;
      *(v93 + 32) = v91;
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v94 = v223;
      v95 = &v223[*(v237 + 36)];
      v219 = v265;
      v215 = v266;
      v267 = v249;
      v268 = v250;
      v269 = v251;
      v265 = v247;
      v266 = v248;
      View._colorMatrix(_:)();
      v96 = &v95[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
      *v96 = 0x403E000000000000;
      v96[8] = 1;
      v97 = v215;
      *v94 = v219;
      *(v94 + 16) = v97;
      *(v94 + 32) = v91;
      sub_100011764(v94, v238, &qword_100025CC8, &qword_1000185D0);
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
      sub_100012120(v94, &qword_100025CC8, &qword_1000185D0);
    }

    v98 = v220;
    v99 = v235;
    sub_1000116FC(v92, v233, &qword_100025CD0, &qword_1000185D8);
    *&v260 = v207;
    *(&v260 + 1) = v224;

    v100 = Text.init<A>(_:)();
    v102 = v101;
    v104 = v103;
    v105 = v221;
    sub_10000A2E4(v221);
    (*(v99 + 56))(v105, 0, 1, v98);
    sub_1000138A4(v105);
    sub_100012120(v105, &qword_1000259E8, &qword_1000183F8);
    v106 = Text.font(_:)();
    v108 = v107;
    v110 = v109;
    v112 = v111;

    sub_100010270(v100, v102, v104 & 1);

    if (v208)
    {
      v113 = Text.foregroundColor(_:)();
      v115 = v114;
      v241 = v113;
      v242 = v114;
      v117 = v116 & 1;
      v243 = v116 & 1;
      v244 = v118;
      v245 = 0;
      sub_100010280(v113, v114, v116 & 1);

      sub_100010280(v113, v115, v117);

      _ConditionalContent<>.init(storage:)();
      sub_100010270(v106, v108, v110 & 1);

      sub_100010270(v113, v115, v117);

      sub_100010270(v113, v115, v117);
    }

    else
    {
      v241 = v106;
      v242 = v108;
      v243 = v110 & 1;
      v244 = v112;
      v245 = 1;
      _ConditionalContent<>.init(storage:)();
    }

    v119 = v261;
    v120 = v262;
    v121 = v228;
    v122 = v216;
    if (v259)
    {
      v123 = v238;
      *v238 = v260;
      v123[1] = v119;
      *(v123 + 32) = v120;
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v124 = v223;
      v125 = &v223[*(v237 + 36)];
      v235 = v260;
      v222 = v261;
      v262 = v256;
      v263 = v257;
      v264 = v258;
      v260 = v254;
      v261 = v255;
      View._colorMatrix(_:)();
      v126 = &v125[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
      *v126 = 0x403E000000000000;
      v126[8] = 1;
      v127 = v222;
      *v124 = v235;
      *(v124 + 16) = v127;
      *(v124 + 32) = v120;
      sub_100011764(v124, v238, &qword_100025CC8, &qword_1000185D0);
      swift_storeEnumTagMultiPayload();
      sub_100002410(&qword_100025CE8, &qword_1000185F0);
      sub_1000115C8();
      sub_100011680();
      _ConditionalContent<>.init(storage:)();
      sub_100012120(v124, &qword_100025CC8, &qword_1000185D0);
    }

    v128 = sub_100002410(&qword_100025D38, &qword_100018618);
    v129 = v234;
    v130 = v234 + *(v128 + 44);
    v131 = v217;
    sub_1000116FC(v122, v217, &qword_100025CD0, &qword_1000185D8);
    v132 = v233;
    v133 = v227;
    sub_100011764(v233, v227, &qword_100025CD0, &qword_1000185D8);
    v134 = v226;
    sub_100011764(v131, v226, &qword_100025CD0, &qword_1000185D8);
    sub_100011764(v133, v130, &qword_100025CD0, &qword_1000185D8);
    v135 = sub_100002410(&qword_100025D18, &qword_100018608);
    sub_100011764(v134, v130 + *(v135 + 48), &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v131, &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v132, &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v134, &qword_100025CD0, &qword_1000185D8);
    sub_100012120(v133, &qword_100025CD0, &qword_1000185D8);

    sub_100011764(v129, v231, &qword_100025CD8, &qword_1000185E0);
    swift_storeEnumTagMultiPayload();
    sub_100012468(&qword_100025D20, &qword_100025CD8, &qword_1000185E0);
    sub_100012468(&qword_100025D28, &qword_100025CB0, &qword_1000185B8);
    _ConditionalContent<>.init(storage:)();
    sub_100012120(&v246, &qword_100025D30, &qword_100018610);
    sub_100012120(&v253, &qword_100025D30, &qword_100018610);
    sub_100012120(v129, &qword_100025CD8, &qword_1000185E0);
    v136 = v240;
LABEL_34:
    sub_1000116FC(v121, v136, &qword_100025CE0, &qword_1000185E8);
    return (*(v239 + 56))(v136, 0, 1, v209);
  }

  v63 = v240;
  v64 = *(v239 + 56);

  return v64(v63, 1, 1, v49);
}

uint64_t sub_10000BF0C()
{
  v1 = v0;
  v2 = sub_100002410(&qword_100025D40, &qword_100018620);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v9 = sub_100002410(&qword_100025D48, &qword_100018628);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = *(v0 + 8);
  v18 = CAFTirePressureObservable.observed.getter();
  v19 = [v18 receivedAllValues];

  if (!v19 || (dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x1FF) != 1)
  {
    goto LABEL_5;
  }

  dispatch thunk of CAFTirePressureObservable.pressure.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012120(v8, &qword_100025D40, &qword_100018620);
LABEL_5:
    if ((dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x100) == 0)
    {
      dispatch thunk of CAFTirePressureObservable.pressure.getter();
      sub_100012120(v6, &qword_100025D40, &qword_100018620);
    }

    v20 = *(v1 + 16);
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v25 = *(v1 + 16);
  if (v25)
  {
    v26 = v25;
    Measurement<>.toTirePressureUnit(using:)();

    v39 = *(v10 + 8);
    v39(v8, v9);
    (*(v10 + 32))(v16, v14, v9);
    v27 = [objc_allocWithZone(NSNumberFormatter) init];
    sub_100002458(0, &qword_100025D50, NSUnitPressure_ptr);
    v28 = Measurement.unit.getter();
    v29 = [objc_opt_self() poundsForcePerSquareInch];
    v30 = static NSObject.== infix(_:_:)();

    if (v30)
    {
      [v27 setMaximumFractionDigits:0];
      [v27 setRoundingMode:6];
    }

    else
    {
      [v27 setMaximumFractionDigits:2];
    }

    Measurement.value.getter();
    v32 = [objc_allocWithZone(NSNumber) initWithDouble:v31];
    v33 = [v27 stringFromNumber:v32];

    if (v33)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = Measurement.unit.getter();
      v36 = [v35 symbol];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39(v16, v9);
      return v34;
    }

    v39(v16, v9);

    v20 = *(v1 + 16);
    if (v20)
    {
LABEL_8:
      v21 = v20;
      v22 = dispatch thunk of CAFDimensionObservable.tirePressureUnit.getter();

      v23 = [v22 symbol];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return 11565;
    }
  }

LABEL_16:
  v37 = *(v1 + 24);
  type metadata accessor for CAFDimensionObservable();
  sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10000C3E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v26[-v10];
  v12 = *(v1 + 8);
  v13 = CAFTirePressureObservable.observed.getter();
  v14 = [v13 receivedAllValues];

  if (!v14 || (dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x1FF) != 1)
  {
    result = static Color.primary.getter();
    v18 = 1;
    v26[28] = 1;
    goto LABEL_8;
  }

  v15 = dispatch thunk of CAFTirePressureObservable.pressureState.getter();
  if (v15 <= 5)
  {
    v16 = 1 << v15;
    if ((v16 & 5) != 0)
    {
      v24 = v2 + *(type metadata accessor for TireInfoView(0) + 28);
      sub_10000D49C(&qword_1000259E0, &qword_1000183F0, &type metadata accessor for ColorScheme, v11);
      (*(v5 + 104))(v9, enum case for ColorScheme.dark(_:), v4);
      LOBYTE(v24) = static ColorScheme.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v11, v4);
      if (v24)
      {
        if (qword_100025258 != -1)
        {
          swift_once();
        }

        v18 = 0;
        result = 0;
        v19 = xmmword_100025500;
        v20 = *algn_100025510;
        v21 = xmmword_100025520;
        v22 = unk_100025530;
        v23 = xmmword_100025540;
        v26[20] = 0;
        goto LABEL_9;
      }

      result = static Color.primary.getter();
      v18 = 1;
      v26[24] = 1;
    }

    else if ((v16 & 0xA) != 0)
    {
      result = static Color.orange.getter();
      v18 = 1;
      v26[16] = 1;
    }

    else
    {
      result = static Color.red.getter();
      v18 = 1;
      v26[12] = 1;
    }

LABEL_8:
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
LABEL_9:
    *a1 = result;
    *(a1 + 8) = v19;
    *(a1 + 24) = v20;
    *(a1 + 40) = v21;
    *(a1 + 56) = v22;
    *(a1 + 72) = v23;
    *(a1 + 88) = v18;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000C6E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v26[-v10];
  v12 = *(v1 + 8);
  v13 = CAFTirePressureObservable.observed.getter();
  v14 = [v13 receivedAllValues];

  if (!v14 || (dispatch thunk of CAFTirePressureObservable.sensorState.getter() & 0x1FF) != 1)
  {
    result = static Color.secondary.getter();
    v18 = 1;
    v26[28] = 1;
    goto LABEL_8;
  }

  v15 = dispatch thunk of CAFTirePressureObservable.pressureState.getter();
  if (v15 <= 5)
  {
    v16 = 1 << v15;
    if ((v16 & 5) != 0)
    {
      v24 = v2 + *(type metadata accessor for TireInfoView(0) + 28);
      sub_10000D49C(&qword_1000259E0, &qword_1000183F0, &type metadata accessor for ColorScheme, v11);
      (*(v5 + 104))(v9, enum case for ColorScheme.dark(_:), v4);
      LOBYTE(v24) = static ColorScheme.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v11, v4);
      if (v24)
      {
        if (qword_100025260 != -1)
        {
          swift_once();
        }

        v18 = 0;
        result = 0;
        v19 = xmmword_100025550;
        v20 = unk_100025560;
        v21 = xmmword_100025570;
        v22 = unk_100025580;
        v23 = xmmword_100025590;
        v26[20] = 0;
        goto LABEL_9;
      }

      result = static Color.secondary.getter();
      v18 = 1;
      v26[24] = 1;
    }

    else if ((v16 & 0xA) != 0)
    {
      result = static Color.orange.getter();
      v18 = 1;
      v26[16] = 1;
    }

    else
    {
      result = static Color.red.getter();
      v18 = 1;
      v26[12] = 1;
    }

LABEL_8:
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
LABEL_9:
    *a1 = result;
    *(a1 + 8) = v19;
    *(a1 + 24) = v20;
    *(a1 + 40) = v21;
    *(a1 + 56) = v22;
    *(a1 + 72) = v23;
    *(a1 + 88) = v18;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_10000C9E0()
{
  xmmword_100025500 = xmmword_100017E60;
  *algn_100025510 = xmmword_100017E70;
  xmmword_100025520 = xmmword_100017E80;
  unk_100025530 = xmmword_100017E90;
  result = 0.0;
  xmmword_100025540 = xmmword_100017EA0;
  return result;
}

double sub_10000CA20()
{
  xmmword_100025550 = xmmword_100017EB0;
  unk_100025560 = xmmword_100017EC0;
  xmmword_100025570 = xmmword_100017ED0;
  unk_100025580 = xmmword_100017EE0;
  result = 0.0;
  xmmword_100025590 = xmmword_100017EA0;
  return result;
}

uint64_t sub_10000CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10000CB34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002410(&qword_100025D58, &qword_100018630);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = (&v39 - v11);
  v13 = v1[1];
  v14 = CAFTirePressureObservable.observed.getter();
  v15 = [v14 receivedAllValues];

  if (v15)
  {
    type metadata accessor for CAFDimensionObservable();
    sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable);
    v16 = v13;
    v39 = EnvironmentObject.init()();
    v18 = v17;
    v19 = v5;
    KeyPath = swift_getKeyPath();
    v21 = type metadata accessor for TireInfoView(0);
    v40 = v4;
    v41 = a1;
    v22 = v21;
    *(v12 + *(v21 + 24)) = KeyPath;
    sub_100002410(&qword_1000257D8, &qword_100018290);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CAFTirePressureObservable();
    sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable);
    *v12 = ObservedObject.init(wrappedValue:)();
    v12[1] = v23;
    v12[2] = v39;
    v12[3] = v18;
    v24 = *(v22 + 28);
    *(v12 + v24) = swift_getKeyPath();
    sub_100002410(&qword_1000259E0, &qword_1000183F0);
    swift_storeEnumTagMultiPayload();
    v25 = CAFTirePressureObservable.observed.getter();
    sub_100002458(0, &qword_1000259F8, CAFTirePressure_ptr);
    CAFPositionedRequired.layoutKey.getter();

    v26 = type metadata accessor for PositionedTireInfoView(0);
    v27 = v2[4];
    v28 = v2[5];
    v29 = v2[6];
    v30 = v2[7];
    sub_1000117CC(v8, v2 + *(v26 + 28));
    v32 = v31;
    v34 = v33;
    (*(v19 + 8))(v8, v40);
    v35 = (v12 + *(v9 + 36));
    *v35 = v32;
    v35[1] = v34;
    v36 = v41;
    sub_1000116FC(v12, v41, &qword_100025D58, &qword_100018630);
    return (*(v42 + 56))(v36, 0, 1, v9);
  }

  else
  {
    v38 = *(v42 + 56);

    return v38(a1, 1, 1, v9);
  }
}

__n128 sub_10000CEFC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100002410(&qword_1000257E0, &qword_100018298);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v12 - v4);
  *v5 = static Alignment.center.getter();
  v5[1] = v6;
  v7 = sub_100002410(&qword_1000257E8, &qword_1000182A0);
  sub_10000D048(v5 + *(v7 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000116FC(v5, a1, &qword_1000257E0, &qword_100018298);
  v8 = a1 + *(sub_100002410(&qword_1000257F0, &qword_1000182A8) + 36);
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

uint64_t sub_10000D048@<X0>(uint64_t a1@<X8>)
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
  v12 = sub_100002410(&qword_1000257F8, &qword_1000182B0);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() imageNamed:v16];

  if (v17)
  {
    v28 = v17;
    Image.init(uiImage:)();
    (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
    Image.resizable(capInsets:resizingMode:)();

    (*(v8 + 8))(v11, v7);
    (*(v3 + 104))(v6, enum case for Image.Interpolation.high(_:), v2);
    v18 = Image.interpolation(_:)();

    (*(v3 + 8))(v6, v2);
    v19 = &v15[*(sub_100002410(&qword_100025800, &qword_1000182B8) + 36)];
    v34 = xmmword_100017EF0;
    v35 = xmmword_100017F00;
    v36 = xmmword_100017F10;
    v37 = xmmword_100017F20;
    v38 = xmmword_100017EA0;
    View._colorMatrix(_:)();
    v20 = &v19[*(sub_100002410(&qword_100025808, &qword_1000182C0) + 36)];
    *v20 = 0x403E000000000000;
    v20[8] = 0;
    *v15 = v18;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v21 = v30;
    v22 = &v15[*(v30 + 36)];
    v23 = v32;
    *v22 = v31;
    *(v22 + 1) = v23;
    *(v22 + 2) = v33;
    sub_1000116FC(v15, a1, &qword_1000257F8, &qword_1000182B0);
    return (*(v29 + 56))(a1, 0, 1, v21);
  }

  else
  {
    v25 = v30;
    v26 = *(v29 + 56);

    return v26(a1, 1, 1, v25);
  }
}

uint64_t sub_10000D49C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002410(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100011764(v8, &v23 - v17, a1, a2);
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

uint64_t sub_10000D6A0()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = Color.init(_:)();
  qword_100026918 = result;
  return result;
}

uint64_t sub_10000D6E0()
{
  result = static Color.secondary.getter();
  qword_100026920 = result;
  return result;
}

uint64_t sub_10000D700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002410(&qword_100025D70, &qword_100018648);
  v9 = *(*(v8 - 8) + 64);
  v10 = v8 - 8;
  v11 = __chkstk_darwin(v8 - 8);
  v87 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v86 = v79 - v14;
  v15 = __chkstk_darwin(v13);
  v85 = v79 - v16;
  v17 = __chkstk_darwin(v15);
  v84 = v79 - v18;
  v19 = __chkstk_darwin(v17);
  v83 = (v79 - v20);
  v21 = __chkstk_darwin(v19);
  v91 = (v79 - v22);
  v23 = __chkstk_darwin(v21);
  v25 = v79 - v24;
  __chkstk_darwin(v23);
  v27 = v79 - v26;
  *v27 = static HorizontalAlignment.center.getter();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v81 = sub_100002410(&qword_100025D78, &qword_100018650);
  v28 = &v27[*(v81 + 44)];
  v92 = v27;
  sub_10000DD34(a1, v28);
  v29 = v4[13];
  v90 = v4 + 13;
  v29(v7, enum case for CAUVehicleLayoutKey.tire_front_left(_:), v3);
  v30 = type metadata accessor for RedactedTiresView(0);
  v31 = *(v30 + 20);
  v80 = *(v30 + 24);
  v32 = (a1 + v31);
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  sub_1000117CC(v7, a1 + v80);
  v38 = v37;
  v40 = v39;
  v89 = v4[1];
  v41 = v3;
  v89(v7, v3);
  v42 = v10;
  v79[0] = v10;
  v43 = &v27[*(v10 + 44)];
  *v43 = v38;
  *(v43 + 1) = v40;
  *v25 = static HorizontalAlignment.center.getter();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v44 = v81;
  v45 = &v25[*(v81 + 44)];
  v82 = v25;
  sub_10000DD34(a1, v45);
  v46 = v29;
  v29(v7, enum case for CAUVehicleLayoutKey.tire_front_right(_:), v3);
  v47 = v80;
  sub_1000117CC(v7, a1 + v80);
  v49 = v48;
  v51 = v50;
  v52 = v3;
  v79[1] = v4 + 1;
  v53 = v89;
  v89(v7, v52);
  v54 = &v25[*(v42 + 44)];
  *v54 = v49;
  *(v54 + 1) = v51;
  v55 = static HorizontalAlignment.center.getter();
  v56 = v91;
  *v91 = v55;
  v56[1] = 0;
  *(v56 + 16) = 1;
  sub_10000DD34(a1, v56 + *(v44 + 44));
  v46(v7, enum case for CAUVehicleLayoutKey.tire_rear_left(_:), v41);
  sub_1000117CC(v7, a1 + v47);
  v58 = v57;
  v60 = v59;
  v53(v7, v41);
  v61 = v79[0];
  v62 = (v56 + *(v79[0] + 44));
  v63 = v56;
  *v62 = v58;
  v62[1] = v60;
  v64 = static HorizontalAlignment.center.getter();
  v65 = v83;
  *v83 = v64;
  *(v65 + 8) = 0;
  *(v65 + 16) = 1;
  sub_10000DD34(a1, v65 + *(v44 + 44));
  v46(v7, enum case for CAUVehicleLayoutKey.tire_rear_right(_:), v41);
  sub_1000117CC(v7, a1 + v47);
  v67 = v66;
  v69 = v68;
  v89(v7, v41);
  v70 = (v65 + *(v61 + 44));
  *v70 = v67;
  v70[1] = v69;
  v71 = v84;
  sub_100011764(v92, v84, &qword_100025D70, &qword_100018648);
  v72 = v82;
  v73 = v85;
  sub_100011764(v82, v85, &qword_100025D70, &qword_100018648);
  v74 = v86;
  sub_100011764(v63, v86, &qword_100025D70, &qword_100018648);
  v75 = v87;
  sub_100011764(v65, v87, &qword_100025D70, &qword_100018648);
  v76 = v88;
  sub_100011764(v71, v88, &qword_100025D70, &qword_100018648);
  v77 = sub_100002410(&qword_100025D80, &qword_100018658);
  sub_100011764(v73, v76 + v77[12], &qword_100025D70, &qword_100018648);
  sub_100011764(v74, v76 + v77[16], &qword_100025D70, &qword_100018648);
  sub_100011764(v75, v76 + v77[20], &qword_100025D70, &qword_100018648);
  sub_100012120(v65, &qword_100025D70, &qword_100018648);
  sub_100012120(v91, &qword_100025D70, &qword_100018648);
  sub_100012120(v72, &qword_100025D70, &qword_100018648);
  sub_100012120(v92, &qword_100025D70, &qword_100018648);
  sub_100012120(v75, &qword_100025D70, &qword_100018648);
  sub_100012120(v74, &qword_100025D70, &qword_100018648);
  sub_100012120(v73, &qword_100025D70, &qword_100018648);
  return sub_100012120(v71, &qword_100025D70, &qword_100018648);
}

uint64_t sub_10000DD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v72 = type metadata accessor for RedactionReasons();
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v72);
  v69 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v66 = &v60 - v7;
  v68 = sub_100002410(&qword_100025D88, &qword_100018660);
  v8 = *(*(v68 - 8) + 64);
  v9 = __chkstk_darwin(v68);
  v74 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v60 - v11;
  v12 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002410(&qword_100025D90, &qword_100018668);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v70 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  *&v81 = 11565;
  *(&v81 + 1) = 0xE200000000000000;
  v62 = sub_10001021C();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v67 = a1;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v16);
  sub_100012BD0(v16);
  v29 = *(v13 + 8);
  v65 = v12;
  v29(v16, v12);
  v60 = Text.font(_:)();
  v31 = v30;
  v33 = v32;
  v61 = v34;

  sub_100010270(v24, v26, v28 & 1);

  v35 = *(v18 + 44);
  if (qword_100025260 != -1)
  {
    swift_once();
  }

  v83 = xmmword_100025570;
  v84 = unk_100025580;
  v85 = xmmword_100025590;
  v81 = xmmword_100025550;
  v82 = unk_100025560;
  View._colorMatrix(_:)();
  v64 = sub_100002410(&qword_100025808, &qword_1000182C0);
  v36 = &v23[v35 + *(v64 + 36)];
  *v36 = 0x403E000000000000;
  v36[8] = 1;
  v63 = v23;
  *v23 = v60;
  *(v23 + 1) = v31;
  v23[16] = v33 & 1;
  *(v23 + 3) = v61;
  *&v76 = 0x2020202020;
  *(&v76 + 1) = 0xE500000000000000;
  v37 = Text.init<A>(_:)();
  v39 = v38;
  v41 = v40;
  v42 = v66;
  sub_10000D49C(&qword_1000257D8, &qword_100018290, &type metadata accessor for CAUAppUIConfiguration.Configuration, v66);
  (*(v13 + 56))(v42, 0, 1, v65);
  sub_1000138A4(v42);
  sub_100012120(v42, &qword_1000259E8, &qword_1000183F8);
  v43 = Text.font(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_100010270(v37, v39, v41 & 1);

  *&v76 = v43;
  *(&v76 + 1) = v45;
  LOBYTE(v77) = v47 & 1;
  *(&v77 + 1) = v49;
  v50 = v69;
  static RedactionReasons.placeholder.getter();
  v51 = v73;
  View.redacted(reason:)();
  (*(v71 + 8))(v50, v72);
  sub_100010270(v43, v45, v47 & 1);

  v52 = v51 + *(v68 + 36);
  v78 = xmmword_100025570;
  v79 = unk_100025580;
  v80 = xmmword_100025590;
  v76 = xmmword_100025550;
  v77 = unk_100025560;
  View._colorMatrix(_:)();
  v53 = v52 + *(v64 + 36);
  *v53 = 0x403E000000000000;
  *(v53 + 8) = 1;
  v54 = v63;
  v55 = v70;
  sub_100011764(v63, v70, &qword_100025D90, &qword_100018668);
  v56 = v74;
  sub_100011764(v51, v74, &qword_100025D88, &qword_100018660);
  v57 = v75;
  sub_100011764(v55, v75, &qword_100025D90, &qword_100018668);
  v58 = sub_100002410(&qword_100025D98, &qword_100018670);
  sub_100011764(v56, v57 + *(v58 + 48), &qword_100025D88, &qword_100018660);
  sub_100012120(v51, &qword_100025D88, &qword_100018660);
  sub_100012120(v54, &qword_100025D90, &qword_100018668);
  sub_100012120(v56, &qword_100025D88, &qword_100018660);
  return sub_100012120(v55, &qword_100025D90, &qword_100018668);
}

uint64_t sub_10000E478@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_100002410(&qword_100025D68, &qword_100018640);
  return sub_10000D700(v1, a1 + *(v4 + 44));
}

unint64_t sub_10000E4C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_10000EC84(&unk_1000260A0, &type metadata accessor for CAUAppUIConfiguration.Element);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000E55C(a1, v5);
}

unint64_t sub_10000E55C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for CAUAppUIConfiguration.Element();
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
      sub_10000EC84(&qword_1000256E8, &type metadata accessor for CAUAppUIConfiguration.Element);
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

uint64_t sub_10000E71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10000E734(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000E758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10000E7A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000E820()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_10000E968()
{
  result = qword_1000256C0;
  if (!qword_1000256C0)
  {
    sub_10000EA1C(&qword_1000256B8, &qword_1000180A8);
    sub_10000EC84(&qword_1000256C8, &type metadata accessor for CAUVehicleLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000256C0);
  }

  return result;
}

uint64_t sub_10000EA1C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000EA64(uint64_t a1)
{
  v2 = sub_100002410(&qword_1000256D8, &qword_100018100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002410(&qword_1000256E0, &qword_100018108);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100011764(v10, v6, &qword_1000256D8, &qword_100018100);
      result = sub_10000E4C4(v6);
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

uint64_t sub_10000EC84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000ECCC()
{
  result = qword_1000256F0;
  if (!qword_1000256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000256F0);
  }

  return result;
}

uint64_t sub_10000ED20()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 56);

  v7 = *(v0 + 96);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000EE04()
{
  v1 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  return sub_100003A30(v0 + 16);
}

unint64_t sub_10000EE68()
{
  result = qword_100025718;
  if (!qword_100025718)
  {
    sub_10000EA1C(&qword_100025720, &qword_100018128);
    sub_10000EF20();
    sub_100012468(&qword_100025750, &qword_100025758, &qword_100018140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025718);
  }

  return result;
}

unint64_t sub_10000EF20()
{
  result = qword_100025728;
  if (!qword_100025728)
  {
    sub_10000EA1C(&qword_100025730, &qword_100018130);
    sub_10000EFD8();
    sub_100012468(&qword_100025740, &qword_100025748, &qword_100018138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025728);
  }

  return result;
}

unint64_t sub_10000EFD8()
{
  result = qword_100025738;
  if (!qword_100025738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025738);
  }

  return result;
}

uint64_t sub_10000F02C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000EA1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000F0B0()
{
  result = qword_100025768;
  if (!qword_100025768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025768);
  }

  return result;
}

uint64_t sub_10000F104(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002458(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F148@<X0>(_BYTE *a1@<X8>)
{
  sub_10000F1E4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000F198(char *a1)
{
  v2 = *a1;
  sub_10000F1E4();
  return EnvironmentValues.subscript.setter();
}

unint64_t sub_10000F1E4()
{
  result = qword_100025790;
  if (!qword_100025790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025790);
  }

  return result;
}

__n128 sub_10000F248(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F25C(uint64_t a1, int a2)
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

uint64_t sub_10000F2A4(uint64_t result, int a2, int a3)
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

uint64_t sub_10000F370()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10000F3DC()
{
  result = qword_1000257C8;
  if (!qword_1000257C8)
  {
    sub_10000EA1C(&qword_1000257B8, &qword_100018280);
    sub_10000EC84(&qword_1000257D0, type metadata accessor for CarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000257C8);
  }

  return result;
}

uint64_t sub_10000F498(void *a1)
{
  *(v1 + 16) = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 defaultCenter];
  if (qword_100025278 != -1)
  {
    swift_once();
  }

  v6 = qword_100026928;
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_10000F6D4;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000053D8;
  v12[3] = &unk_1000214E8;
  v9 = _Block_copy(v12);

  v10 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_10000F638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F69C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_10000F730(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002410(&qword_100025810, &qword_1000182C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10000F8A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002410(&qword_100025810, &qword_1000182C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10000F9E0()
{
  sub_100011454(319, &qword_100025880, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10000FB88(319, &qword_100025888, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10000FB88(319, &qword_100025890, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100002458(319, &qword_100025770, CAFCar_ptr);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CarPressureResetMonitor();
          sub_100011454(319, &qword_100025898, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100002458(319, &unk_1000258A0, UIImage_ptr);
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

void sub_10000FB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

unint64_t sub_10000FC24()
{
  result = qword_1000258F0;
  if (!qword_1000258F0)
  {
    sub_10000EA1C(&qword_1000257F0, &qword_1000182A8);
    sub_100012468(&qword_1000258F8, &qword_1000257E0, &qword_100018298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258F0);
  }

  return result;
}

uint64_t sub_10000FCF8()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100002410(&qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_10000FED8(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = *(v5 + v1[6] + 8);

  v9 = *(v5 + v1[8]);

  v10 = v1[9];
  v11 = type metadata accessor for CAUVehicleLayout();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FED8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10000FEE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CarView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000064C8(v4, a1);
}

unint64_t sub_10000FF64()
{
  result = qword_100025938;
  if (!qword_100025938)
  {
    sub_10000EA1C(&qword_100025918, &qword_100018340);
    sub_100012468(&qword_100025940, &qword_100025920, &qword_100018348);
    sub_10001001C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025938);
  }

  return result;
}

unint64_t sub_10001001C()
{
  result = qword_100025948;
  if (!qword_100025948)
  {
    sub_10000EA1C(&qword_100025900, &qword_100018328);
    sub_100012468(&qword_100025950, &qword_100025958, &qword_100018358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025948);
  }

  return result;
}

uint64_t sub_100010158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000101C0(uint64_t a1)
{
  v2 = type metadata accessor for TireInfoView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001021C()
{
  result = qword_1000259F0;
  if (!qword_1000259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000259F0);
  }

  return result;
}

uint64_t sub_100010270(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100010280(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000102B0()
{
  result = qword_100025A58;
  if (!qword_100025A58)
  {
    sub_10000EA1C(&qword_100025A48, &qword_100018438);
    sub_100010334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A58);
  }

  return result;
}

unint64_t sub_100010334()
{
  result = qword_100025A60;
  if (!qword_100025A60)
  {
    sub_10000EA1C(&qword_100025A68, &qword_100018448);
    sub_10000EC84(&qword_100025A70, type metadata accessor for PositionedTireInfoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A60);
  }

  return result;
}

uint64_t sub_100010410(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100010448()
{
  result = qword_100025A78;
  if (!qword_100025A78)
  {
    sub_10000EA1C(&qword_100025A38, &qword_100018428);
    sub_10000EC84(&qword_100025A80, type metadata accessor for RedactedTiresView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A78);
  }

  return result;
}

uint64_t sub_100010504()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100002410(&qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_10000FED8(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = *(v5 + v1[6] + 8);

  v9 = *(v5 + v1[8]);

  v10 = v1[9];
  v11 = type metadata accessor for CAUVehicleLayout();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_1000106E4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for CarView(0) - 8) + 80);
  v6 = *(v2 + 48);
  v7 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v7;
  v10 = v6;
  return sub_100007010(a1, v9, v2 + ((v5 + 56) & ~v5), a2);
}

uint64_t sub_100010774()
{
  v1 = type metadata accessor for CarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = (v0 + v3);
  sub_100002410(&qword_1000257D8, &qword_100018290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAUAppUIConfiguration.Configuration();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_10000FED8(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = *(v5 + v1[6] + 8);

  v9 = *(v5 + v1[8]);

  v10 = v1[9];
  v11 = type metadata accessor for CAUVehicleLayout();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10001095C()
{
  v1 = *(*(type metadata accessor for CarView(0) - 8) + 80);
  v2 = *(v0 + 16);

  sub_1000072C0();
}

uint64_t sub_1000109D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002410(&qword_100025810, &qword_1000182C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100010AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002410(&qword_100025810, &qword_1000182C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100010C04()
{
  sub_100011454(319, &qword_100025880, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_100011454(319, &qword_100025898, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100010D14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010DE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100010E94()
{
  sub_100010F78();
  if (v0 <= 0x3F)
  {
    sub_10001100C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        sub_100011454(319, &qword_100025898, &type metadata accessor for CAUVehicleLayout, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100010F78()
{
  if (!qword_100025BB8)
  {
    type metadata accessor for CAFTirePressureObservable();
    sub_10000EC84(&qword_1000259D8, &type metadata accessor for CAFTirePressureObservable);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100025BB8);
    }
  }
}

void sub_10001100C()
{
  if (!qword_100025BC0)
  {
    type metadata accessor for CAFDimensionObservable();
    sub_10000EC84(&qword_100025788, &type metadata accessor for CAFDimensionObservable);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100025BC0);
    }
  }
}

uint64_t sub_1000110B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002410(&qword_100025810, &qword_1000182C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100002410(&qword_100025BF8, "D:");
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100011204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100002410(&qword_100025810, &qword_1000182C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100002410(&qword_100025BF8, "D:");
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100011340()
{
  sub_100010F78();
  if (v0 <= 0x3F)
  {
    sub_10001100C();
    if (v1 <= 0x3F)
    {
      sub_100011454(319, &qword_100025880, &type metadata accessor for CAUAppUIConfiguration.Configuration, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100011454(319, &unk_100025C68, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100011454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000114BC()
{
  result = qword_100025CA0;
  if (!qword_100025CA0)
  {
    sub_10000EA1C(&qword_100025CA8, &qword_1000184C0);
    sub_10000FF64();
    sub_100012468(&qword_100025960, &qword_100025930, &qword_100018350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CA0);
  }

  return result;
}

unint64_t sub_1000115C8()
{
  result = qword_100025CF0;
  if (!qword_100025CF0)
  {
    sub_10000EA1C(&qword_100025CC8, &qword_1000185D0);
    sub_100011680();
    sub_100012468(&qword_100025D00, &qword_100025D08, &qword_1000185F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CF0);
  }

  return result;
}

unint64_t sub_100011680()
{
  result = qword_100025CF8;
  if (!qword_100025CF8)
  {
    sub_10000EA1C(&qword_100025CE8, &qword_1000185F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025CF8);
  }

  return result;
}

uint64_t sub_1000116FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002410(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002410(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000117CC(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v78 = a1;
  v75 = type metadata accessor for CAUVehicleLayoutKey.End();
  v2 = *(v75 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v75);
  v74 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v66 - v6;
  v76 = type metadata accessor for CAUVehicleLayoutKey.Side();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v76);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v66 - v13;
  v15 = sub_100002410(&qword_100025D60, &qword_100018638);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v67 = &v66 - v17;
  v73 = type metadata accessor for CAUBaselineAnchor();
  v68 = *(v73 - 8);
  v18 = *(v68 + 64);
  __chkstk_darwin(v73);
  v66 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for CAUVehicleLayoutInfo();
  v69 = *(v72 - 8);
  v20 = *(v69 + 64);
  v21 = __chkstk_darwin(v72);
  v70 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v66 - v24;
  __chkstk_darwin(v23);
  v71 = &v66 - v26;
  v27 = sub_100002410(&qword_1000256B8, &qword_1000180A8);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v66 - v29;
  v31 = type metadata accessor for CAUVehicleLayout();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v35;
  v38 = v37;
  sub_100011764(v77, v30, &qword_1000256B8, &qword_1000180A8);
  if (v36[6](v30, 1, v38) == 1)
  {
    sub_100012120(v30, &qword_1000256B8, &qword_1000180A8);
LABEL_9:
    CAUVehicleLayoutKey.side.getter();
    v54 = v76;
    (*(v8 + 104))(v12, enum case for CAUVehicleLayoutKey.Side.left(_:), v76);
    static CAUVehicleLayoutKey.Side.== infix(_:_:)();
    v55 = *(v8 + 8);
    v55(v12, v54);
    v55(v14, v54);
    CAUVehicleLayoutKey.end.getter();
    v57 = v74;
    v56 = v75;
    (*(v2 + 104))(v74, enum case for CAUVehicleLayoutKey.End.front(_:), v75);
    static CAUVehicleLayoutKey.End.== infix(_:_:)();
    v58 = *(v2 + 8);
    v58(v57, v56);
    return (v58)(v7, v56);
  }

  v36[4](v34, v30, v38);
  v77 = v34;
  v39 = CAUVehicleLayout.infos.getter();
  if (!*(v39 + 16) || (v40 = sub_1000154F8(v78), (v41 & 1) == 0))
  {

    (v36[1])(v77, v38);
    goto LABEL_9;
  }

  v74 = v36;
  v75 = v38;
  v42 = v69;
  v43 = v72;
  (*(v69 + 16))(v25, *(v39 + 56) + *(v69 + 72) * v40, v72);

  v44 = v71;
  (*(v42 + 32))(v71, v25, v43);
  v45 = v67;
  CAUVehicleLayoutInfo.baselineAnchor.getter();
  v46 = v68;
  v47 = v73;
  if ((*(v68 + 48))(v45, 1, v73) != 1)
  {
    v60 = v66;
    (*(v46 + 32))(v66, v45, v47);
    CAUBaselineAnchor.x.getter();
    v61 = v42;
    v62 = v70;
    v63 = v77;
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.width.getter();
    v64 = *(v61 + 8);
    v64(v62, v43);
    CAUBaselineAnchor.y.getter();
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.height.getter();
    v64(v62, v43);
    (*(v46 + 8))(v60, v73);
    v64(v44, v43);
    return v74[1](v63, v75);
  }

  sub_100012120(v45, &qword_100025D60, &qword_100018638);
  CAUVehicleLayoutKey.side.getter();
  v48 = v76;
  (*(v8 + 104))(v12, enum case for CAUVehicleLayoutKey.Side.left(_:), v76);
  v49 = static CAUVehicleLayoutKey.Side.== infix(_:_:)();
  v50 = *(v8 + 8);
  v50(v12, v48);
  v50(v14, v48);
  v51 = v70;
  if (v49)
  {
    CAUVehicleLayoutInfo.x.getter();
    v52 = v77;
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.width.getter();
    v53 = *(v42 + 8);
    v53(v51, v43);
LABEL_13:
    CAUVehicleLayoutInfo.y.getter();
    CAUVehicleLayoutInfo.height.getter();
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.height.getter();
    v53(v51, v43);
    v53(v44, v43);
    return v74[1](v52, v75);
  }

  v52 = v77;
  CAUVehicleLayout.topDownExteriorImage.getter();
  CAUVehicleLayoutInfo.width.getter();
  v53 = *(v42 + 8);
  v53(v51, v43);
  v65 = CAUVehicleLayoutInfo.x.getter();
  result = CAUVehicleLayoutInfo.width.getter();
  if (!__OFADD__(v65, result))
  {
    CAUVehicleLayout.topDownExteriorImage.getter();
    CAUVehicleLayoutInfo.width.getter();
    v53(v51, v43);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100012120(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002410(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000121C4()
{
  result = qword_100025DB0;
  if (!qword_100025DB0)
  {
    sub_10000EA1C(&qword_100025CE0, &qword_1000185E8);
    sub_100012468(&qword_100025D20, &qword_100025CD8, &qword_1000185E0);
    sub_100012468(&qword_100025D28, &qword_100025CB0, &qword_1000185B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025DB0);
  }

  return result;
}

uint64_t sub_1000122EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000EA1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012368()
{
  result = qword_100025DC8;
  if (!qword_100025DC8)
  {
    sub_10000EA1C(&qword_100025D58, &qword_100018630);
    sub_10000EC84(&qword_1000259C8, type metadata accessor for TireInfoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025DC8);
  }

  return result;
}

uint64_t sub_100012468(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000EA1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000124C4()
{
  sub_10000F1E4();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100012500()
{
  sub_10000ECCC();

  return EnvironmentValues.subscript.getter();
}

NSString sub_100012548()
{
  result = String._bridgeToObjectiveC()();
  qword_100026928 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClusterEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClusterEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000126FC()
{
  result = qword_100025DF8;
  if (!qword_100025DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025DF8);
  }

  return result;
}

Swift::Int sub_100012768()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000127DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100012854()
{
  v0 = sub_100002410(&qword_1000256D0, &qword_1000180F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for CAUAppUIConfiguration.LayoutStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  sub_100012B6C(v9, qword_100025DE0);
  sub_100012B34(v9, qword_100025DE0);
  (*(v5 + 104))(v8, enum case for CAUAppUIConfiguration.LayoutStyle.portrait(_:), v4);
  v10 = type metadata accessor for CAUWidgetContentMargins();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_10000EA64(&_swiftEmptyArrayStorage);
  return CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)();
}

uint64_t sub_1000129F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v3 = sub_100012B34(v2, qword_100025DE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100012AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001481C(&qword_100025E00, &type metadata accessor for CAUAppUIConfiguration.Configuration);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100012B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100012B6C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100012BD0(uint64_t a1)
{
  v2 = sub_100002410(&qword_100025E08, &qword_1000187B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v105 = &v87 - v4;
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v104 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v87 - v10;
  v11 = sub_100002410(&qword_100025E10, &qword_1000187B8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v100 = &v87 - v13;
  v14 = type metadata accessor for CAUAppUIConfiguration.FontWeight();
  v101 = *(v14 - 8);
  v15 = *(v101 + 64);
  v16 = __chkstk_darwin(v14);
  v92 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v94 = &v87 - v19;
  __chkstk_darwin(v18);
  v97 = &v87 - v20;
  v21 = type metadata accessor for CAUAppUIConfiguration.Element();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v98 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v87 - v26;
  v28 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v103 = *(v28 - 8);
  v29 = v103[8];
  v30 = __chkstk_darwin(v28);
  v95 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v87 - v32;
  v34 = sub_100002410(&qword_100025E18, &unk_1000187C0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v87 - v36;
  v38 = type metadata accessor for CAUAppUIConfiguration.FontStyle();
  v39 = *(v38 - 8);
  v108 = v38;
  v109 = v39;
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v93 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v102 = &v87 - v43;
  v99 = a1;
  v44 = CAUAppUIConfiguration.Configuration.elementData.getter();
  v45 = v22[13];
  v45(v27, enum case for CAUAppUIConfiguration.Element.tpms_pressureValue_font_style(_:), v21);
  if (*(v44 + 16) && (v46 = sub_100015424(v27), (v47 & 1) != 0))
  {
    v91 = v14;
    v48 = *(v44 + 56);
    v49 = v103;
    v87 = v103[9];
    v50 = v103[2];
    v89 = v103 + 2;
    v88 = v50;
    v50(v33, v48 + v87 * v46, v28);
    v90 = v22[1];
    v90(v27, v21);

    CAUAppUIConfiguration.ElementData.fontStyle.getter();
    v51 = v49[1];
    v103 = v49 + 1;
    v51(v33, v28);
    v53 = v108;
    v52 = v109;
    if ((*(v109 + 48))(v37, 1, v108) != 1)
    {
      (*(v52 + 32))(v102, v37, v53);
      v54 = CAUAppUIConfiguration.Configuration.elementData.getter();
      v55 = v98;
      v45(v98, enum case for CAUAppUIConfiguration.Element.tpms_pressureValue_font_weight(_:), v21);
      if (!*(v54 + 16) || (v56 = sub_100015424(v55), (v57 & 1) == 0))
      {

        v90(v55, v21);
        (*(v109 + 8))(v102, v53);
        v59 = v100;
        (*(v101 + 56))(v100, 1, 1, v91);
        v63 = v106;
        goto LABEL_13;
      }

      v58 = v95;
      v88(v95, *(v54 + 56) + v56 * v87, v28);
      v90(v55, v21);

      v59 = v100;
      CAUAppUIConfiguration.ElementData.fontWeight.getter();
      v51(v58, v28);
      v60 = v101;
      v61 = v91;
      v62 = (*(v101 + 48))(v59, 1, v91);
      v63 = v106;
      if (v62 == 1)
      {
        (*(v109 + 8))(v102, v108);
LABEL_13:
        v64 = v107;
        sub_100012120(v59, &qword_100025E10, &qword_1000187B8);
        goto LABEL_10;
      }

      (*(v60 + 32))(v97, v59, v61);
      v70 = v93;
      (*(v109 + 104))(v93, enum case for CAUAppUIConfiguration.FontStyle.body(_:), v108);
      sub_10001481C(&qword_100025E20, &type metadata accessor for CAUAppUIConfiguration.FontStyle);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v71 = &enum case for Font.TextStyle.body(_:);
      v72 = v107;
      if ((v112 != v110 || v113 != v111) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v71 = &enum case for Font.TextStyle.footnote(_:);
      }

      v73 = *(v109 + 8);
      v109 += 8;
      v104 = v73;
      (v73)(v70, v108);

      (*(v72 + 104))(v96, *v71, v63);
      v74 = *(v60 + 104);
      v75 = v94;
      v74(v94, enum case for CAUAppUIConfiguration.FontWeight.regular(_:), v91);
      sub_10001481C(&qword_100025E28, &type metadata accessor for CAUAppUIConfiguration.FontWeight);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v112 == v110 && v113 == v111)
      {
        v76 = 1;
      }

      else
      {
        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v77 = *(v101 + 8);
      v78 = v75;
      v79 = v91;
      v77(v78, v91);

      if (v76)
      {
        static Font.Weight.regular.getter();
      }

      else
      {
        v80 = v92;
        v74(v92, enum case for CAUAppUIConfiguration.FontWeight.bold(_:), v79);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v112 == v110 && v113 == v111)
        {
          v77(v80, v79);
        }

        else
        {
          v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v77(v80, v79);

          if ((v81 & 1) == 0)
          {
            static Font.Weight.semibold.getter();
            goto LABEL_30;
          }
        }

        static Font.Weight.bold.getter();
      }

LABEL_30:
      v82 = enum case for Font.Design.default(_:);
      v83 = type metadata accessor for Font.Design();
      v84 = *(v83 - 8);
      v85 = v105;
      (*(v84 + 104))(v105, v82, v83);
      (*(v84 + 56))(v85, 0, 1, v83);
      v86 = v96;
      static Font.system(_:design:weight:)();
      sub_100012120(v85, &qword_100025E08, &qword_1000187B0);
      v68 = Font.weight(_:)();

      (*(v107 + 8))(v86, v63);
      v77(v97, v79);
      (v104)(v102, v108);
      return v68;
    }
  }

  else
  {

    (v22[1])(v27, v21);
    (*(v109 + 56))(v37, 1, 1, v108);
  }

  sub_100012120(v37, &qword_100025E18, &unk_1000187C0);
  v63 = v106;
  v64 = v107;
LABEL_10:
  v65 = v104;
  (*(v64 + 104))(v104, enum case for Font.TextStyle.body(_:), v63);
  v66 = type metadata accessor for Font.Design();
  v67 = v105;
  (*(*(v66 - 8) + 56))(v105, 1, 1, v66);
  static Font.Weight.bold.getter();
  v68 = static Font.system(_:design:weight:)();
  sub_100012120(v67, &qword_100025E08, &qword_1000187B0);
  (*(v64 + 8))(v65, v63);
  return v68;
}

uint64_t sub_1000138A4(uint64_t a1)
{
  v2 = sub_100002410(&qword_100025E08, &qword_1000187B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v127 = &v102 - v4;
  v5 = type metadata accessor for Font.TextStyle();
  v128 = *(v5 - 8);
  v6 = *(v128 + 64);
  v7 = __chkstk_darwin(v5);
  v126 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v115 = &v102 - v9;
  v10 = sub_100002410(&qword_100025E10, &qword_1000187B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v118 = &v102 - v12;
  v13 = type metadata accessor for CAUAppUIConfiguration.FontWeight();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  v15 = __chkstk_darwin(v13);
  v109 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v111 = &v102 - v18;
  __chkstk_darwin(v17);
  v116 = &v102 - v19;
  v20 = type metadata accessor for CAUAppUIConfiguration.Element();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v117 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v102 - v25;
  v27 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v28 = *(v27 - 8);
  v122 = v27;
  v123 = v28;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v114 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v102 - v32;
  v34 = sub_100002410(&qword_100025E18, &unk_1000187C0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v102 - v36;
  v38 = type metadata accessor for CAUAppUIConfiguration.FontStyle();
  v39 = *(v38 - 8);
  v124 = v38;
  v125 = v39;
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v110 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v121 = &v102 - v43;
  v44 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v47 = &v102 - v46;
  v48 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v52 = &v102 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v55 = v54;
  sub_1000147AC(v53, v47);
  if ((*(v49 + 48))(v47, 1, v55) != 1)
  {
    v113 = v5;
    v112 = v49;
    v57 = *(v49 + 32);
    v108 = v55;
    v57(v52, v47, v55);
    v58 = CAUAppUIConfiguration.Configuration.elementData.getter();
    v59 = *(v21 + 104);
    v59(v26, enum case for CAUAppUIConfiguration.Element.tpms_pressureUnit_font_style(_:), v20);
    if (!*(v58 + 16) || (v60 = sub_100015424(v26), (v61 & 1) == 0))
    {

      (*(v21 + 8))(v26, v20);
      (*(v112 + 8))(v52, v108);
      (*(v125 + 56))(v37, 1, 1, v124);
      goto LABEL_8;
    }

    v107 = v52;
    v62 = *(v58 + 56);
    v63 = v123;
    v103 = *(v123 + 72);
    v64 = *(v123 + 16);
    v65 = v122;
    v105 = v123 + 16;
    v104 = v64;
    v64(v33, v62 + v103 * v60, v122);
    v106 = *(v21 + 8);
    v106(v26, v20);

    CAUAppUIConfiguration.ElementData.fontStyle.getter();
    v66 = *(v63 + 8);
    v123 = v63 + 8;
    v66(v33, v65);
    v67 = v124;
    v68 = v125;
    if ((*(v125 + 48))(v37, 1, v124) == 1)
    {
      (*(v112 + 8))(v107, v108);
LABEL_8:
      v56 = v128;
      sub_100012120(v37, &qword_100025E18, &unk_1000187C0);
      v5 = v113;
      goto LABEL_9;
    }

    v74 = v121;
    (*(v68 + 32))(v121, v37, v67);
    v75 = CAUAppUIConfiguration.Configuration.elementData.getter();
    v76 = v117;
    v59(v117, enum case for CAUAppUIConfiguration.Element.tpms_pressureUnit_font_weight(_:), v20);
    v56 = v128;
    if (!*(v75 + 16) || (v77 = sub_100015424(v76), (v78 & 1) == 0))
    {

      v106(v76, v20);
      (*(v125 + 8))(v74, v124);
      (*(v112 + 8))(v107, v108);
      v81 = v118;
      (*(v119 + 56))(v118, 1, 1, v120);
      v5 = v113;
      goto LABEL_16;
    }

    v79 = v114;
    v80 = v122;
    v104(v114, *(v75 + 56) + v77 * v103, v122);
    v106(v76, v20);

    v81 = v118;
    CAUAppUIConfiguration.ElementData.fontWeight.getter();
    v66(v79, v80);
    v82 = v119;
    v83 = v120;
    v84 = (*(v119 + 48))(v81, 1, v120);
    v5 = v113;
    v85 = v112;
    if (v84 == 1)
    {
      (*(v125 + 8))(v121, v124);
      (*(v85 + 8))(v107, v108);
LABEL_16:
      sub_100012120(v81, &qword_100025E10, &qword_1000187B8);
      goto LABEL_9;
    }

    (*(v82 + 32))(v116, v81, v83);
    v86 = v110;
    (*(v125 + 104))(v110, enum case for CAUAppUIConfiguration.FontStyle.body(_:), v124);
    sub_10001481C(&qword_100025E20, &type metadata accessor for CAUAppUIConfiguration.FontStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v87 = &enum case for Font.TextStyle.body(_:);
    if ((v131 != v129 || v132 != v130) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v87 = &enum case for Font.TextStyle.footnote(_:);
    }

    v88 = *(v125 + 8);
    v125 += 8;
    v126 = v88;
    (v88)(v86, v124);

    (*(v56 + 104))(v115, *v87, v5);
    v89 = *(v82 + 104);
    v90 = v111;
    v89(v111, enum case for CAUAppUIConfiguration.FontWeight.regular(_:), v83);
    sub_10001481C(&qword_100025E28, &type metadata accessor for CAUAppUIConfiguration.FontWeight);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v131 == v129 && v132 == v130)
    {
      v91 = 1;
    }

    else
    {
      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v92 = *(v82 + 8);
    v92(v90, v83);

    if (v91)
    {
      static Font.Weight.regular.getter();
      v93 = v113;
      v94 = v112;
    }

    else
    {
      v95 = v109;
      v89(v109, enum case for CAUAppUIConfiguration.FontWeight.bold(_:), v83);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v131 == v129 && v132 == v130)
      {
        v92(v95, v83);

        v93 = v113;
        v94 = v112;
      }

      else
      {
        v96 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v92(v95, v83);

        v93 = v113;
        v94 = v112;
        if ((v96 & 1) == 0)
        {
          static Font.Weight.semibold.getter();
          goto LABEL_33;
        }
      }

      static Font.Weight.bold.getter();
    }

LABEL_33:
    v97 = enum case for Font.Design.default(_:);
    v98 = type metadata accessor for Font.Design();
    v99 = *(v98 - 8);
    v100 = v127;
    (*(v99 + 104))(v127, v97, v98);
    (*(v99 + 56))(v100, 0, 1, v98);
    v101 = v115;
    static Font.system(_:design:weight:)();
    sub_100012120(v100, &qword_100025E08, &qword_1000187B0);
    v72 = Font.weight(_:)();

    (*(v56 + 8))(v101, v93);
    v92(v116, v83);
    (v126)(v121, v124);
    (*(v94 + 8))(v107, v108);
    return v72;
  }

  sub_100012120(v47, &qword_1000259E8, &qword_1000183F8);
  v56 = v128;
LABEL_9:
  v69 = v126;
  (*(v56 + 104))(v126, enum case for Font.TextStyle.body(_:), v5);
  v70 = type metadata accessor for Font.Design();
  v71 = v127;
  (*(*(v70 - 8) + 56))(v127, 1, 1, v70);
  static Font.Weight.regular.getter();
  v72 = static Font.system(_:design:weight:)();
  sub_100012120(v71, &qword_100025E08, &qword_1000187B0);
  (*(v56 + 8))(v69, v5);
  return v72;
}

uint64_t sub_1000147AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002410(&qword_1000259E8, &qword_1000183F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001481C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100014864()
{
  v1 = OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___carManager;
  v2 = *(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___carManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___carManager);
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

uint64_t sub_1000148D8()
{
  v1 = OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___assetManager;
  if (*(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___assetManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TirePressure23TirePressureAppDelegate____lazy_storage___assetManager);
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

id sub_1000149C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TirePressureAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TirePressureAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100014AF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t type metadata accessor for ScenePresentationTypeObserver()
{
  result = qword_100025F60;
  if (!qword_100025F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014DE0()
{
  sub_100014E70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100014E70()
{
  if (!qword_100025F70)
  {
    type metadata accessor for CRSUIHostedAltScreenPresentationType(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100025F70);
    }
  }
}

uint64_t sub_100014EC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScenePresentationTypeObserver();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100014F08()
{
  sub_1000164AC();
  result = NSString.init(stringLiteral:)();
  qword_100026930 = result;
  return result;
}

void sub_100014FE0(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v9 = a1;
    v5 = [v4 _FBSScene];
    v6 = [v5 settings];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v7 = *(v1 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager);
      *(v1 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager) = 0;

      if (qword_100025288 != -1)
      {
        swift_once();
      }

      [v4 _unregisterSceneActionsHandlerArray:qword_100026930];
      v8 = v9;
    }

    else
    {

      v8 = v6;
    }
  }
}

id sub_100015270(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000152F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100015370(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

unint64_t sub_1000153E0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000155CC(a1, v4);
}

unint64_t sub_100015424(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CAUAppUIConfiguration.Element();
  sub_100016500(&unk_1000260A0, &type metadata accessor for CAUAppUIConfiguration.Element);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100015694(a1, v5, &type metadata accessor for CAUAppUIConfiguration.Element, &qword_1000256E8, &type metadata accessor for CAUAppUIConfiguration.Element, &protocol conformance descriptor for CAUAppUIConfiguration.Element);
}

unint64_t sub_1000154F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CAUVehicleLayoutKey();
  sub_100016500(&qword_1000260B0, &type metadata accessor for CAUVehicleLayoutKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100015694(a1, v5, &type metadata accessor for CAUVehicleLayoutKey, &qword_1000260B8, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
}

unint64_t sub_1000155CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100016450(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000F6DC(v8);
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

unint64_t sub_100015694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100016500(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void sub_100015834(void *a1)
{
  v5 = [a1 settings];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 != [v3 hostedAltScreenPresentationType])
    {
      [v3 hostedAltScreenPresentationType];
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = v1;
      static Published.subscript.setter();
    }
  }
}

void sub_100015974(void *a1, void *a2)
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
      sub_100002CEC(0xD000000000000024, 0x80000001000190E0);
LABEL_19:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

  v15 = v7;
  v16 = [v6 _FBSScene];
  v17 = [v16 settings];

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    sub_100002CD4(0xD000000000000021, 0x8000000100019140);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [objc_opt_self() sharedApplication];
  v21 = [v20 delegate];

  if (!v21)
  {
LABEL_18:
    sub_100002CD4(0xD000000000000026, 0x8000000100019170);
    goto LABEL_19;
  }

  v47 = v17;
  v48 = v2;
  type metadata accessor for TirePressureAppDelegate();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v22 = [objc_allocWithZone(type metadata accessor for ScenePresentationTypeObserver()) init];
  v23 = [v19 hostedAltScreenPresentationType];
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v23;
  v24 = v22;
  static Published.subscript.setter();
  v25 = [v6 _FBSScene];

  [v25 addObserver:v24];
  v26 = v15;
  v27 = v24;
  v28 = sub_100014864();
  v29 = sub_1000148D8();
  v30 = type metadata accessor for TirePressureWindowManager();
  v31 = objc_allocWithZone(v30);
  v32 = [objc_allocWithZone(UIWindow) initWithWindowScene:v6];
  v33 = OBJC_IVAR____TtC12TirePressure25TirePressureWindowManager_window;
  *&v31[OBJC_IVAR____TtC12TirePressure25TirePressureWindowManager_window] = v32;
  [v32 setAutoresizesSubviews:1];
  [*&v31[v33] setAutoresizingMask:18];
  [*&v31[v33] makeKeyAndVisible];
  [*&v31[v33] setHidden:0];
  v50.receiver = v31;
  v50.super_class = v30;
  v34 = objc_msgSendSuper2(&v50, "init");
  v35 = *&v34[OBJC_IVAR____TtC12TirePressure25TirePressureWindowManager_window];
  v36 = type metadata accessor for TirePressureViewController();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_carManager] = v28;
  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_assetManager] = v29;
  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_scenePresentationTypeObserver] = v27;
  type metadata accessor for CARSessionStatusObservable();
  v38 = v27;
  v46 = v6;
  v39 = v34;
  v40 = v35;
  v41 = v28;

  *&v37[OBJC_IVAR____TtC12TirePressure26TirePressureViewController_sessionStatusObservable] = CARSessionStatusObservable.__allocating_init()();
  v49.receiver = v37;
  v49.super_class = v36;
  v42 = objc_msgSendSuper2(&v49, "initWithNibName:bundle:", 0, 0);
  [v40 setRootViewController:v42];

  v43 = *(v48 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager);
  *(v48 + OBJC_IVAR____TtC12TirePressure25TirePressureSceneDelegate_clusterWindowManager) = v39;

  sub_100002410(&qword_100025378, &qword_100017DB0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000187F0;
  *(v44 + 32) = [objc_allocWithZone(CRSUIClusterPressBSActionsHandler) initWithDelegate:v48];
  sub_100002410(&qword_100026090, &qword_100018908);
  v45.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_100025288 != -1)
  {
    swift_once();
  }

  [v46 _registerSceneActionsHandlerArray:v45.super.isa forKey:qword_100026930];

  swift_unknownObjectRelease();
}

unint64_t sub_100015F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002410(&qword_100026078, &qword_1000188A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000163E0(v4, v13);
      result = sub_1000153E0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000F730(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

void sub_10001609C(uint64_t a1)
{
  if (a1 == 2)
  {
    sub_100002CEC(0xD00000000000001CLL, 0x8000000100019090);
    v1 = [objc_opt_self() defaultCenter];
    if (qword_100025278 != -1)
    {
      swift_once();
    }

    v2 = qword_100026928;
    sub_100002410(&qword_100026068, &qword_100018898);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100018800;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for ClusterEventType;
    *(inited + 72) = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    sub_100002CEC(0xD00000000000001ELL, 0x80000001000190B0);
    v1 = [objc_opt_self() defaultCenter];
    if (qword_100025278 != -1)
    {
      swift_once();
    }

    v2 = qword_100026928;
    sub_100002410(&qword_100026068, &qword_100018898);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100018800;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for ClusterEventType;
    *(inited + 72) = 0;
LABEL_9:
    sub_100015F80(inited);
    swift_setDeallocating();
    sub_100016378(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 postNotificationName:v2 object:0 userInfo:isa];

    return;
  }

  sub_100002CEC(0xD00000000000001FLL, 0x8000000100019070);
}

uint64_t sub_100016378(uint64_t a1)
{
  v2 = sub_100002410(&qword_100026070, &qword_1000188A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000163E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002410(&qword_100026070, &qword_1000188A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000164AC()
{
  result = qword_100026080;
  if (!qword_100026080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026080);
  }

  return result;
}

uint64_t sub_100016500(unint64_t *a1, void (*a2)(uint64_t))
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