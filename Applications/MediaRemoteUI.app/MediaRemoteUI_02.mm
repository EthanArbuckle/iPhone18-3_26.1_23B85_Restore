uint64_t sub_100035230()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000352D0()
{
  swift_getKeyPath();
  sub_100037714(&qword_100072300, type metadata accessor for MotionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100035370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037714(&qword_100072300, type metadata accessor for MotionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

void sub_100035440(char a1)
{
  v2 = *(v1 + 16);
  if (v2 == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    swift_getKeyPath();
    sub_100037714(&qword_100072300, type metadata accessor for MotionState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2 != *(v1 + 16))
    {
      sub_100035A68(0);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037714(&qword_100072300, type metadata accessor for MotionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000355D8(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  swift_getKeyPath();
  sub_100037714(&qword_100072300, type metadata accessor for MotionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 != *(a1 + 16))
  {
    sub_100035A68(0);
  }
}

uint64_t sub_10003569C()
{
  swift_getKeyPath();
  sub_100037714(&qword_100072300, type metadata accessor for MotionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_10003573C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037714(&qword_100072300, type metadata accessor for MotionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

void sub_10003580C(char a1)
{
  v2 = *(v1 + 17);
  if (v2 == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
    swift_getKeyPath();
    sub_100037714(&qword_100072300, type metadata accessor for MotionState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2 != *(v1 + 17))
    {
      sub_100035A68(0);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037714(&qword_100072300, type metadata accessor for MotionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000359A4(uint64_t a1, char a2)
{
  v3 = *(a1 + 17);
  *(a1 + 17) = a2;
  swift_getKeyPath();
  sub_100037714(&qword_100072300, type metadata accessor for MotionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 != *(a1 + 17))
  {
    sub_100035A68(0);
  }
}

void sub_100035A68(char a1)
{
  v2 = v1;
  v17[3] = &type metadata for Feature;
  v17[4] = sub_100007F94();
  v4 = isFeatureEnabled(_:)();
  sub_100007FE8(v17);
  if (v4)
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10001144C(v5, qword_1000737D8);
    swift_retain_n();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {

      return;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315906;
    if (a1)
    {
      v10 = 0x696C616974696E49;
    }

    else
    {
      v10 = 0x2C6465676E616843;
    }

    if (a1)
    {
      v11 = 0xEC0000002C64657ALL;
    }

    else
    {
      v11 = 0xE800000000000000;
    }

    v12 = sub_10003F8C8(v10, v11, v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    swift_getKeyPath();
    sub_100037714(&qword_100072300, type metadata accessor for MotionState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + 16) == 1)
    {
    }

    else
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v2 + 17);

      if (v13 != 1)
      {
        v14 = 1;
        goto LABEL_17;
      }
    }

    v14 = 0;
LABEL_17:
    *(v8 + 14) = v14;

    *(v8 + 18) = 1024;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v2 + 16);

    *(v8 + 20) = v15;

    *(v8 + 24) = 1024;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v2 + 17);

    *(v8 + 26) = v16;

    _os_log_impl(&_mh_execute_header, v6, v7, "[MotionState] %s canPlay: %{BOOL}d, isContentObscured: %{BOOL}d, isDisplayDimmed: %{BOOL}d.", v8, 0x1Eu);
    sub_100007FE8(v9);
  }
}

uint64_t sub_100035DC8()
{
  v1 = OBJC_IVAR____TtC13MediaRemoteUI11MotionState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100035E8C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100035EC4()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100035F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v46 = a3;
  v4 = type metadata accessor for MotionPlaybackPolicy();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E6C(&qword_1000722D0);
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v37 = &v34 - v7;
  v8 = type metadata accessor for LockScreenArtworkBackgroundTreatment();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100004E6C(&qword_1000722D8);
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v45 = sub_100004E6C(&unk_1000722E0);
  v12 = *(v45 - 8);
  __chkstk_darwin(v45);
  v38 = &v34 - v13;
  swift_getKeyPath();
  v47 = a1;
  sub_100037714(&unk_100070AE0, type metadata accessor for MotionDataContainer);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + 16);
  swift_getKeyPath();
  v47 = v14;
  sub_100037714(&qword_1000722F0, type metadata accessor for MotionData);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v14 + 16);
  v16 = v15;

  if (v15)
  {
    swift_getKeyPath();
    v47 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(a1 + 16);
    swift_getKeyPath();
    v47 = v17;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v17 + 24);

    v19 = LockScreenArtworkBackgroundTreatment.init(contentMode:)();
    __chkstk_darwin(v19);
    *(&v34 - 2) = v16;
    v20 = v16;
    LockScreenArtworkBackground.init(asset:treatment:staticArtwork:)();
    sub_100037798();
    v21 = v36;
    v22 = v37;
    View.mcui.getter();
    (*(v35 + 8))(v11, v21);
    swift_getKeyPath();
    v23 = v39;
    v47 = v39;
    sub_100037714(&qword_100072300, type metadata accessor for MotionState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = 0;
    if ((*(v23 + 16) & 1) == 0)
    {
      swift_getKeyPath();
      v47 = v23;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v24 = *(v23 + 17) ^ 1;
    }

    v26 = v42;
    v25 = v43;
    *v42 = v24 & 1;
    v27 = v44;
    (*(v25 + 104))(v26, enum case for MotionPlaybackPolicy.custom(_:), v44);
    v28 = v38;
    v29 = v41;
    MCUINamespace<A>.motionCollection(policy:)();

    (*(v25 + 8))(v26, v27);
    (*(v40 + 8))(v22, v29);
    v31 = v45;
    v30 = v46;
    (*(v12 + 32))(v46, v28, v45);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v45;
    v30 = v46;
  }

  return (*(v12 + 56))(v30, v32, 1, v31);
}

uint64_t sub_1000365BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

id sub_10003679C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostingViewContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100036808()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_currentHostingViewContainerKey);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_hostingViewContainers;
    swift_beginAccess();
    v3 = *(v0 + v2);
    if (*(v3 + 16) && (v4 = sub_1000378F8(v1), (v5 & 1) != 0))
    {
      v1 = *(*(v3 + 56) + 8 * v4);
      v6 = v1;
    }

    else
    {
      v1 = 0;
    }

    swift_endAccess();
  }

  return v1;
}

void sub_100036898(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer);
  if (v2)
  {
    if (a1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_100011CE4(1);
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    sub_100036954(v2);
  }

  else
  {

    sub_100036C5C();
  }
}

void sub_100036954(void **a1)
{
  v2 = v1;
  sub_100036C5C();
  v4 = *&v1[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionState];
  aBlock = a1;
  v23 = v4;
  v5 = objc_allocWithZone(sub_100004E6C(&qword_100072308));

  v6 = _UIHostingView.init(rootView:)();
  v7 = type metadata accessor for HostingViewContainer();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC13MediaRemoteUIP33_D0D794B9E56CABED5FE0D317F57E7E7C20HostingViewContainer_hostingView] = v6;
  v29.receiver = v8;
  v29.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 addSubview:v9];
  *&v2[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_currentHostingViewContainerKey] = v10;
  v11 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_hostingViewContainers;
  swift_beginAccess();
  v12 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *&v2[v11];
  *&v2[v11] = 0x8000000000000000;
  sub_1000381DC(v12, v12, isUniquelyReferenced_nonNull_native);
  *&v2[v11] = v28;
  swift_endAccess();
  v14 = sub_100036808();
  if (v14)
  {
    v15 = v14;
    [v14 setAlpha:0.0];
    [v2 addSubview:v15];
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v26 = sub_1000384B8;
    v27 = v17;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100015D4C;
    v25 = &unk_10005F038;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_10003851C;
    v27 = v20;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10002E860;
    v25 = &unk_10005F088;
    v21 = _Block_copy(&aBlock);

    [v16 animateWithDuration:v18 animations:v21 completion:0.15];
    _Block_release(v21);
    _Block_release(v18);

    v9 = v12;
    v12 = v19;
  }
}

void sub_100036C5C()
{
  v1 = sub_100036808();
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_currentHostingViewContainerKey) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100011E2C(0);
    swift_unknownObjectRelease();
  }

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v14 = sub_100038524;
  v15 = v3;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100015D4C;
  v13 = &unk_10005F0D8;
  v4 = _Block_copy(&v10);
  v5 = v1;

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v14 = sub_100038580;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10002E860;
  v13 = &unk_10005F128;
  v8 = _Block_copy(&v10);
  v9 = v5;

  [v2 animateWithDuration:v4 animations:v8 completion:0.15];
  _Block_release(v8);
  _Block_release(v4);
}

void sub_100036E5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_beginAccess();
      v5 = sub_100037D7C(a2);
      swift_endAccess();
    }

    else
    {
      v6 = a2;
    }

    [a2 removeFromSuperview];
  }
}

void sub_100036F14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100011CE4(0);
      swift_unknownObjectRelease();
    }

    if (*&v1[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer] && swift_unknownObjectWeakLoadStrong())
    {
      sub_100011E2C(1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100036FCC()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  [v0 bounds];
  CGRectGetWidth(v34);
  [v0 bounds];
  CGRectGetHeight(v35);
  [v0 bounds];
  UIRectCenteredRect();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_hostingViewContainers;
  swift_beginAccess();
  v28 = v0;
  v10 = *&v0[v9];
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v27 = v32;
  v29 = v10;

  v17 = 0;
  v18 = 0;
  while (v14)
  {
    v19 = v18;
LABEL_10:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = *(*(v29 + 56) + ((v19 << 9) | (8 * v20)));
    [v21 setFrame:{v2, v4, v6, v8, v27}];
    v30 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v28;
    v23 = v21;
    v24 = v28;
    sub_1000389F0(v17);
    v25 = swift_allocObject();
    v17 = sub_1000389E8;
    *(v25 + 16) = sub_1000389E8;
    *(v25 + 24) = v22;
    v32[2] = sub_1000080AC;
    v32[3] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v32[0] = sub_100037374;
    v32[1] = &unk_10005F1A0;
    v26 = _Block_copy(aBlock);

    [v30 performWithoutAnimation:v26];

    _Block_release(v26);
    LODWORD(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
LABEL_12:

      return sub_1000389F0(v17);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_12;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
    if (v14)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_1000372FC(uint64_t a1, id a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUIP33_D0D794B9E56CABED5FE0D317F57E7E7C20HostingViewContainer_hostingView);
  [a2 bounds];
  [a2 convertRect:a1 toCoordinateSpace:?];

  return [v4 setFrame:?];
}

id sub_1000373E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionState;
  type metadata accessor for MotionState(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  ObservationRegistrar.init()();
  sub_100035A68(1);
  *&v5[v11] = v12;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_hostingViewContainers;
  *&v5[v13] = sub_1000387A8(_swiftEmptyArrayStorage);
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_currentHostingViewContainerKey] = 0;
  *&v5[OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer] = 0;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100037538()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100037600(uint64_t *a1, int a2)
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

uint64_t sub_100037648(uint64_t result, int a2, int a3)
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

void sub_1000376E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000348A4(v1);
}

uint64_t sub_100037714(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100037760(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100034B94(v1);
}

unint64_t sub_100037798()
{
  result = qword_1000722F8;
  if (!qword_1000722F8)
  {
    sub_10000CE40(&qword_1000722D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000722F8);
  }

  return result;
}

void *sub_100037854(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_1000378C8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1000378F8(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100037A8C(a1, v2);
}

unint64_t sub_10003793C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100037AF8(a1, v2);
}

unint64_t sub_1000379D0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100037BFC(a1, v4);
}

unint64_t sub_100037A14(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100037CC4(a1, a2, v4);
}

unint64_t sub_100037A8C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100037AF8(uint64_t a1, uint64_t a2)
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

unint64_t sub_100037BFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100038AFC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001858C(v8);
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

unint64_t sub_100037CC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100037D7C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000378F8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100038324();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_10003806C(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_100037E04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004E6C(&unk_100072310);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10003806C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000381DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000378F8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100038324();
    result = v17;
    goto LABEL_8;
  }

  sub_100037E04(v14, a3 & 1);
  result = sub_1000378F8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

id sub_100038324()
{
  v1 = v0;
  sub_100004E6C(&unk_100072310);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_100038480()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000384CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000384E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100038524()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_100038540()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100038588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E6C(&qword_100072338);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100038B58(v4, v13);
      result = sub_1000379D0(v13);
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
      result = sub_1000082C0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000386A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E6C(&qword_100072330);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100037A14(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000387A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100004E6C(&unk_100072310);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v16 = *(a1 + 32);
  result = sub_1000378F8(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = sub_1000378F8(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1000388B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionState;
  type metadata accessor for MotionState(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  ObservationRegistrar.init()();
  sub_100035A68(1);
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_hostingViewContainers;
  *(v1 + v4) = sub_1000387A8(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_currentHostingViewContainerKey) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaRemoteUI19AnimatedArtworkView_motionDataContainer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000389A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000389F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100038A50()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void sub_100038A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_100038AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_100038B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E6C(&qword_100072340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100038BCC()
{
  result = qword_100072348;
  if (!qword_100072348)
  {
    sub_10000CE40(&unk_100072350);
    sub_10000CE40(&qword_1000722D8);
    sub_100037798();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072348);
  }

  return result;
}

unint64_t sub_100038CB0()
{
  v1 = v0;
  if (qword_10006FF90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10001144C(v2, qword_1000737D8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    sub_100011484(*(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state));
    v7 = String.init<A>(describing:)();
    v9 = sub_10003F8C8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MotionDataLoader] state didSet: %{public}s", v5, 0xCu);
    sub_100007FE8(v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state);
    sub_100011484(v11);
    sub_100010E48(v11);
    swift_unknownObjectRelease();
    return sub_1000082F0(v11);
  }

  return result;
}

unint64_t sub_100038E60()
{
  v1 = v0;
  if (qword_10006FF90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10001144C(v2, qword_1000737D8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136446210;
    sub_10003D76C(*(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState));
    sub_100004E6C(&qword_100072570);
    v7 = String.init<A>(describing:)();
    v9 = sub_10003F8C8(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MotionDataLoader] pendingState didSet: %{public}s", v5, 0xCu);
    sub_100007FE8(v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
    v13[3] = &type metadata for Feature;
    v13[4] = sub_100007F94();
    sub_10003D76C(v11);
    v12 = isFeatureEnabled(_:)();
    sub_100007FE8(v13);
    if (v12)
    {
      if (v11 == 4)
      {
        return swift_unknownObjectRelease();
      }

      sub_10000F8B4();
    }

    swift_unknownObjectRelease();
    return sub_100011494(v11);
  }

  return result;
}

uint64_t sub_10003905C()
{
  v1 = sub_100004E6C(&qword_100070AD0);
  result = __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_artworkImageUpToDateTimeoutTask;
  if (*(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_artworkImageUpToDateTimeoutTask))
  {

    sub_100004E6C(&qword_100070AC8);
    Task.cancel()();
  }

  if ((*(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) & 1) == 0)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v8 = v0;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;

    *(v8 + v5) = sub_10003977C(0, 0, v4, &unk_100045CE8, v10);
  }

  return result;
}

uint64_t sub_10003922C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100039320, v7, v6);
}

uint64_t sub_100039320()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000393EC;

  return sub_10003CB5C(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000393EC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[8];
  v5 = v2[7];
  v6 = v2[6];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_10003D9A8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_100039580;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100039580()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10001144C(v1, qword_1000737D8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[MotionDataLoader] artworkImageUpToDateTimeoutTask timed out.", v4, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (*(Strong + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_artworkImageUpToDateTimeoutTask))
      {

        sub_100004E6C(&qword_100070AC8);
        Task.cancel()();
      }

      *(v6 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) = 1;
      v7 = *(v6 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
      if (v7 == 4)
      {
      }

      else
      {
        sub_100011484(*(v6 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState));
        sub_100039A28(v7);

        sub_100011494(v7);
      }
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004E6C(&qword_100070AD0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10003D834(a3, v22 - v9, &qword_100070AD0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100012BC0(v10, &qword_100070AD0);
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

      sub_100012BC0(a3, &qword_100070AD0);

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

  sub_100012BC0(a3, &qword_100070AD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100039A28(unint64_t a1)
{
  v3 = sub_100004E6C(&qword_100072550);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  switch(a1)
  {
    case 3uLL:
      goto LABEL_4;
    case 2uLL:

      return sub_100039BC8(v1, 2uLL);
    case 0uLL:
LABEL_4:
      v6 = type metadata accessor for UUID();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
      swift_beginAccess();
      sub_10003C930(v5, v1 + v7);
      swift_endAccess();
      return sub_100039BC8(v1, a1);
    default:
      v9 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
      *(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState) = 4;
      sub_100011494(v9);
      sub_100038E60();
      result = sub_10001353C();
      if (result)
      {
        v10 = *(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state);
        *(v1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state) = a1;
        sub_100011484(a1);
        sub_1000082F0(v10);

        return sub_100038CB0();
      }

      break;
  }

  return result;
}

unint64_t sub_100039BC8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
  if (*(a1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) == 1)
  {
    *(a1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState) = 4;
    sub_100011494(v4);
    sub_100038E60();
    v5 = *(a1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state);
    *(a1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state) = a2;
    sub_100011484(a2);
    sub_1000082F0(v5);
    return sub_100038CB0();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState) = a2;
    sub_100011484(a2);
    sub_100011494(v4);
    return sub_100038E60();
  }
}

uint64_t sub_100039C68()
{
  v1 = v0;
  v2 = sub_100004E6C(&qword_100070AD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (*(v0 + 32))
  {

    sub_100004E6C(&qword_100070AC8);
    Task.cancel()();
  }

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  *(v1 + 32) = sub_10003977C(0, 0, v4, &unk_100045CD0, v8);
}

uint64_t sub_100039E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100039F10, v7, v6);
}

uint64_t sub_100039F10()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_100039FEC;

  return sub_10003CB5C(v1, v3, 0, 0, 1);
}

uint64_t sub_100039FEC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[8];
  v5 = v2[7];
  v6 = v2[6];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_10003D9A4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_10003A180;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10003A180()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100039BC8(Strong, 2uLL);
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_10003A22C(void *a1, int a2, double a3, double a4)
{
  v5 = v4;
  LODWORD(v111) = a2;
  v9 = sub_100004E6C(&qword_100072550);
  __chkstk_darwin(v9 - 8);
  v11 = &v99 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v110 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v99 - v16;
  v18 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_sensitiveUIMonitor;
  if (*(v5 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_sensitiveUIMonitor))
  {
    if (a1)
    {
LABEL_3:
      v19 = a1;
      if (sub_10001353C())
      {
        v109 = v11;
        v20 = *(v5 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
        *(v5 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState) = 4;
        sub_100011494(v20);
        sub_100038E60();
        if (sub_10001353C())
        {
          v21 = *(v5 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state);
          *(v5 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state) = 1;
          sub_1000082F0(v21);
          sub_100038CB0();
        }

        [v19 setDestinationScale:0.0];
        [v19 setFittingSize:{a3, a4}];
        type metadata accessor for MotionData(0);
        v22 = swift_allocObject();
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        v23 = v19;
        v106 = v23;
        ObservationRegistrar.init()();
        *(v22 + 32) = v23;
        *(v22 + 40) = v111 & 1;
        sub_100039C68();
        UUID.init()();
        v24 = *(v13 + 16);
        v25 = v109;
        v24(v109, v17, v12);
        (*(v13 + 56))(v25, 0, 1, v12);
        v26 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
        swift_beginAccess();
        sub_10003C930(v25, v5 + v26);
        swift_endAccess();
        v27 = swift_allocObject();
        v104 = v5;
        swift_weakInit();
        v28 = v110;
        v109 = v17;
        v102 = v24;
        v103 = v13 + 16;
        v24(v110, v17, v12);
        v29 = *(v13 + 80);
        v30 = v12;
        v31 = (v29 + 24) & ~v29;
        v100 = v14 + 7;
        v32 = (v14 + 7 + v31) & 0xFFFFFFFFFFFFFFF8;
        v105 = v29;
        v33 = swift_allocObject();
        v34 = v106;
        *(v33 + 16) = v106;
        v107 = v13;
        v108 = v30;
        v36 = *(v13 + 32);
        v35 = v13 + 32;
        v101 = v36;
        v36(v33 + v31, v28, v30);
        *(v33 + v32) = v27;
        *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
        v116 = sub_10003D13C;
        v117 = v33;
        aBlock = _NSConcreteStackBlock;
        v113 = 1107296256;
        v114 = sub_100014598;
        v115 = &unk_10005F2B8;
        v37 = _Block_copy(&aBlock);
        v38 = v34;
        v106 = v22;

        [v38 requestImageWithCompletion:v37];
        _Block_release(v37);
        if (v111)
        {
          v111 = v35;
          if (qword_10006FF90 != -1)
          {
            swift_once();
          }

          v39 = ~v105;
          v40 = type metadata accessor for Logger();
          sub_10001144C(v40, qword_1000737D8);
          v41 = v38;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            v45 = aBlock;
            *v44 = 136446210;
            v46 = v39;
            v47 = v41;
            v48 = [v47 description];
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;

            v52 = sub_10003F8C8(v49, v51, &aBlock);

            *(v44 + 4) = v52;
            v39 = v46;
            _os_log_impl(&_mh_execute_header, v42, v43, "[MotionDataLoader] Did request video for %{public}s.", v44, 0xCu);
            sub_100007FE8(v45);
          }

          v53 = v108;
          v54 = v41;
          v55 = swift_allocObject();
          swift_weakInit();
          v56 = v109;
          v57 = v110;
          v102(v110, v109, v53);
          v58 = (v105 + 16) & v39;
          v59 = (v100 + v58) & 0xFFFFFFFFFFFFFFF8;
          v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
          v61 = swift_allocObject();
          v101(v61 + v58, v57, v53);
          *(v61 + v59) = v55;
          *(v61 + v60) = v106;
          *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;
          v116 = sub_10003D2D4;
          v117 = v61;
          aBlock = _NSConcreteStackBlock;
          v113 = 1107296256;
          v114 = sub_10003C4C4;
          v115 = &unk_10005F308;
          v62 = _Block_copy(&aBlock);
          v63 = v54;

          [v63 requestVideoWithCompletionHandler:v62];
          _Block_release(v62);

          (*(v107 + 8))(v56, v53);
        }

        else
        {
          if (qword_10006FF90 != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          sub_10001144C(v84, qword_1000737D8);
          v85 = v38;
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.debug.getter();

          v88 = os_log_type_enabled(v86, v87);
          v89 = v107;
          v90 = v109;
          if (v88)
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            aBlock = v92;
            *v91 = 136446210;
            v93 = v85;
            v94 = [v93 description];
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v97 = v96;

            v98 = sub_10003F8C8(v95, v97, &aBlock);

            *(v91 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v86, v87, "[MotionDataLoader] Did not request video for %{public}s.", v91, 0xCu);
            sub_100007FE8(v92);
          }

          else
          {
          }

          (*(v89 + 8))(v90, v108);
        }
      }

      else
      {
        if (qword_10006FF90 != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        sub_10001144C(v79, qword_1000737D8);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "[MotionDataLoader] Sensitive UI is disabled.", v82, 2u);
        }

        (*(v13 + 56))(v11, 1, 1, v12);
        v83 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
        swift_beginAccess();
        sub_10003C930(v11, v5 + v83);
        swift_endAccess();
        sub_100039BC8(v5, 0);
      }

      return;
    }
  }

  else
  {
    v109 = &v99 - v16;
    v64 = type metadata accessor for SensitiveUIMonitor();
    v65 = objc_allocWithZone(v64);
    *&v65[OBJC_IVAR____TtC13MediaRemoteUI18SensitiveUIMonitor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v118.receiver = v65;
    v118.super_class = v64;
    v66 = objc_msgSendSuper2(&v118, "init");
    *&v66[OBJC_IVAR____TtC13MediaRemoteUI18SensitiveUIMonitor_delegate + 8] = &off_10005F258;
    swift_unknownObjectWeakAssign();
    v67 = qword_10006FF60;
    v68 = v66;
    if (v67 != -1)
    {
      swift_once();
    }

    v69 = qword_100070B50;
    if (qword_100070B50)
    {
      v70 = v13;
      v71 = v12;
      v72 = String._bridgeToObjectiveC()();
      [v69 addObserver:v68 forKeyPath:v72 options:5 context:0];

      v12 = v71;
      v13 = v70;
    }

    v73 = *(v5 + v18);
    *(v5 + v18) = v68;

    v17 = v109;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  if (qword_10006FF90 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_10001144C(v74, qword_1000737D8);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "[MotionDataLoader] Animated artwork catalog is nil.", v77, 2u);
  }

  (*(v13 + 56))(v11, 1, 1, v12);
  v78 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
  swift_beginAccess();
  sub_10003C930(v11, v5 + v78);
  swift_endAccess();
  sub_100039BC8(v5, 0);
}

uint64_t sub_10003ADFC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a3;
  v58 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v57 = v12;
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004E6C(&qword_100070AD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  v59 = v13;
  v60 = a6;
  if (a2)
  {
    v55 = a4;
    swift_errorRetain();
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10001144C(v17, qword_1000737D8);
    swift_errorRetain();
    v18 = v61;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v54 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v52;
      *v21 = 136446466;
      v22 = v18;
      v23 = [v22 description];
      v53 = a5;
      v24 = v23;
      v25 = v16;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v11;
      v28 = v10;
      v30 = v29;

      v31 = v26;
      v16 = v25;
      v32 = sub_10003F8C8(v31, v30, &v63);
      v10 = v28;
      v11 = v27;
      v13 = v59;

      *(v21 + 4) = v32;
      *(v21 + 12) = 2082;
      v62 = a2;
      swift_errorRetain();
      sub_100004E6C(&qword_100070AC8);
      v33 = String.init<A>(describing:)();
      v35 = sub_10003F8C8(v33, v34, &v63);
      a5 = v53;

      *(v21 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v19, v54, "[MotionDataLoader] Error while fetching image for animated artwork catalog %{public}s: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    a4 = v55;
  }

  v56 = v16;
  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
  (*(v11 + 16))(v13, a4, v10);
  type metadata accessor for MainActor();
  v37 = v58;
  v38 = v58;

  v61 = v61;

  v39 = static MainActor.shared.getter();
  v40 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v41 = v10;
  v42 = (v57 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v11;
  v47 = v37;
  v48 = a5;
  v49 = v45;
  *(v45 + 16) = v39;
  *(v45 + 24) = &protocol witness table for MainActor;
  (*(v46 + 32))(v45 + v40, v59, v41);
  *(v49 + v42) = v48;
  *(v49 + v43) = v47;
  v50 = v61;
  *(v49 + v44) = v60;
  *(v49 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
  sub_10000FED0(0, 0, v56, &unk_100045CB0, v49);
}

uint64_t sub_10003B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  v9 = type metadata accessor for UUID();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = sub_100004E6C(&qword_100072558);
  v8[29] = swift_task_alloc();
  sub_100004E6C(&qword_100072550);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[34] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003B438, v11, v10);
}

uint64_t sub_10003B438()
{
  v61 = v0;
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[20];

  (*(v3 + 16))(v1, v4, v2);
  v5 = *(v3 + 56);
  v5(v1, 0, 1, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v59 = v5;
  if (Strong)
  {
    v7 = v0[32];
    v8 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
    v9 = Strong;
    swift_beginAccess();
    sub_10003D834(v9 + v8, v7, &qword_100072550);
  }

  else
  {
    v5(v0[32], 1, 1, v0[25]);
  }

  v10 = v0[32];
  v11 = v0[29];
  v12 = v0[25];
  v13 = v0[26];
  v14 = *(v0[28] + 48);
  sub_10003D834(v0[33], v11, &qword_100072550);
  sub_10003D834(v10, v11 + v14, &qword_100072550);
  v15 = *(v13 + 48);
  if (v15(v11, 1, v12) != 1)
  {
    v18 = v0[25];
    sub_10003D834(v0[29], v0[31], &qword_100072550);
    v19 = v15(v11 + v14, 1, v18);
    v21 = v0[32];
    v20 = v0[33];
    v22 = v0[31];
    if (v19 != 1)
    {
      v58 = v0[29];
      v25 = v0[26];
      v26 = v0[27];
      v27 = v0[25];
      (*(v25 + 32))(v26, v11 + v14, v27);
      sub_10003D89C(&qword_100072568, &type metadata accessor for UUID);
      v57 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v25 + 8);
      v28(v26, v27);
      sub_100012BC0(v21, &qword_100072550);
      sub_100012BC0(v20, &qword_100072550);
      v28(v22, v27);
      sub_100012BC0(v58, &qword_100072550);
      if ((v57 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_11;
    }

    v23 = v0[25];
    v24 = v0[26];
    sub_100012BC0(v0[32], &qword_100072550);
    sub_100012BC0(v20, &qword_100072550);
    (*(v24 + 8))(v22, v23);
LABEL_9:
    sub_100012BC0(v0[29], &qword_100072558);
    goto LABEL_27;
  }

  v16 = v0[33];
  v17 = v0[25];
  sub_100012BC0(v0[32], &qword_100072550);
  sub_100012BC0(v16, &qword_100072550);
  if (v15(v11 + v14, 1, v17) != 1)
  {
    goto LABEL_9;
  }

  sub_100012BC0(v0[29], &qword_100072550);
LABEL_11:
  swift_beginAccess();
  v29 = swift_weakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + 32);

    if (v30)
    {
      sub_100004E6C(&qword_100070AC8);
      Task.cancel()();
    }
  }

  v31 = v0[22];
  if (v31)
  {
    v32 = v31;
    sub_1000348A4(v31);
    swift_beginAccess();
    v33 = swift_weakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState);
      *(v34 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState) = 4;
      sub_100011494(v35);
      sub_100038E60();
      if (sub_10001353C())
      {
        v36 = *(v34 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state);
        *(v34 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state) = v0[23];

        sub_1000082F0(v36);
        sub_100038CB0();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v37 = swift_weakLoadStrong();
    if (v37)
    {
      v38 = v37;
      v39 = v0[30];
      v59(v39, 1, 1, v0[25]);
      v40 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
      swift_beginAccess();
      sub_10003C930(v39, v38 + v40);
      swift_endAccess();
      sub_100039BC8(v38, 3uLL);
    }

    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v41 = v0[24];
    v42 = type metadata accessor for Logger();
    sub_10001144C(v42, qword_1000737D8);
    v43 = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v0[24];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = 136446210;
      v49 = v46;
      v50 = [v49 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_10003F8C8(v51, v53, &v60);

      *(v47 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "[MotionDataLoader] Image for animated artwork catalog is nil %{public}s", v47, 0xCu);
      sub_100007FE8(v48);
    }
  }

LABEL_27:

  v55 = v0[1];

  return v55();
}

uint64_t sub_10003BB28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a4;
  v29 = a1;
  v26 = a3;
  v8 = type metadata accessor for UUID();
  v30 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E6C(&qword_100070AD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a2, v8);
  type metadata accessor for MainActor();
  v16 = a1;

  v27 = a5;

  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  *(v22 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v22 + v18, v11, v30);
  *(v22 + v19) = v26;
  v23 = v28;
  *(v22 + v20) = v29;
  *(v22 + v21) = v23;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_10000FED0(0, 0, v14, &unk_100045C90, v22);
}

uint64_t sub_10003BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for UUID();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = sub_100004E6C(&qword_100072558);
  v8[18] = swift_task_alloc();
  sub_100004E6C(&qword_100072550);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[22] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003BF24, v11, v10);
}

uint64_t sub_10003BF24()
{
  v52 = v0;
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[9];

  (*(v3 + 16))(v1, v4, v2);
  v5 = *(v3 + 56);
  v5(v1, 0, 1, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = v0[20];
    v8 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
    v9 = Strong;
    swift_beginAccess();
    sub_10003D834(v9 + v8, v7, &qword_100072550);
  }

  else
  {
    v5(v0[20], 1, 1, v0[14]);
  }

  v10 = v0[20];
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = *(v0[17] + 48);
  sub_10003D834(v0[21], v11, &qword_100072550);
  sub_10003D834(v10, v11 + v14, &qword_100072550);
  v15 = *(v13 + 48);
  if (v15(v11, 1, v12) != 1)
  {
    v18 = v0[14];
    sub_10003D834(v0[18], v0[19], &qword_100072550);
    v19 = v15(v11 + v14, 1, v18);
    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[19];
    if (v19 != 1)
    {
      v50 = v0[18];
      v26 = v0[15];
      v25 = v0[16];
      v27 = v0[14];
      (*(v26 + 32))(v25, v11 + v14, v27);
      sub_10003D89C(&qword_100072568, &type metadata accessor for UUID);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v26 + 8);
      v29(v25, v27);
      sub_100012BC0(v21, &qword_100072550);
      sub_100012BC0(v20, &qword_100072550);
      v29(v22, v27);
      sub_100012BC0(v50, &qword_100072550);
      if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    v23 = v0[14];
    v24 = v0[15];
    sub_100012BC0(v0[20], &qword_100072550);
    sub_100012BC0(v20, &qword_100072550);
    (*(v24 + 8))(v22, v23);
LABEL_9:
    sub_100012BC0(v0[18], &qword_100072558);
    goto LABEL_18;
  }

  v16 = v0[21];
  v17 = v0[14];
  sub_100012BC0(v0[20], &qword_100072550);
  sub_100012BC0(v16, &qword_100072550);
  if (v15(v11 + v14, 1, v17) != 1)
  {
    goto LABEL_9;
  }

  sub_100012BC0(v0[18], &qword_100072550);
LABEL_11:
  v30 = v0[11];
  if (v30)
  {
    v31 = v30;
    sub_100034B94(v30);
  }

  else
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v32 = v0[13];
    v33 = type metadata accessor for Logger();
    sub_10001144C(v33, qword_1000737D8);
    v34 = v32;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v0[13];
      v38 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v38 = 136446466;
      v39 = v37;
      v40 = [v39 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_10003F8C8(v41, v43, &v51);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2082;
      v0[8] = 0;
      sub_100004E6C(&qword_100072560);
      v45 = String.init<A>(describing:)();
      v47 = sub_10003F8C8(v45, v46, &v51);

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v35, v36, "[MotionDataLoader] Video for animated artwork catalog is nil: %{public}s: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }
  }

LABEL_18:

  v48 = v0[1];

  return v48();
}

void sub_10003C4C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10003C530()
{
  sub_10000630C(v0 + 16);

  sub_100012BC0(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID, &qword_100072550);

  sub_1000082F0(*(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state));
  sub_100011494(*(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MotionDataLoader()
{
  result = qword_1000723A0;
  if (!qword_1000723A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003C648()
{
  sub_10003C70C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003C70C()
{
  if (!qword_1000723B0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000723B0);
    }
  }
}

uint64_t sub_10003C764(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003C788(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003C7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_10003C838(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10003C868()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v1 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_sensitiveUIMonitor) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_artworkImageUpToDateTimeoutTask) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_state) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_pendingState) = 4;
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_isRegularArtworkImageUpToDate) = 1;
  return v0;
}

uint64_t sub_10003C930(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E6C(&qword_100072550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C9A0(char a1)
{
  v2 = v1;
  v4 = sub_100004E6C(&qword_100072550);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  if ((a1 & 1) == 0)
  {
    if (qword_10006FF90 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10001144C(v8, qword_1000737D8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "[MotionDataLoader] Disabled motion: cannot show sensitive UI.", v11, 2u);
    }

    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = OBJC_IVAR____TtC13MediaRemoteUI16MotionDataLoader_currentCatalogRequestID;
    swift_beginAccess();
    sub_10003C930(v7, v2 + v13);
    swift_endAccess();
    return sub_100039BC8(v2, 0);
  }

  return result;
}

uint64_t sub_10003CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_10003CC5C, 0, 0);
}

uint64_t sub_10003CC5C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10003D89C(&qword_100072578, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10003D89C(&unk_100072580, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10003CDEC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10003CDEC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10003CFA8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10003CFA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D014()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D04C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003D13C(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003ADFC(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_10003D1F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D210()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003D2D4(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003BB28(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_10003D38C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000119FC;

  return sub_10003BD9C(a1, v10, v11, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_10003D4F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10003D608(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100012C4C;

  return sub_10003B2A4(a1, v10, v11, v1 + v6, v12, v13, v14, v15);
}

unint64_t sub_10003D76C(unint64_t result)
{
  if (result != 4)
  {
    return sub_100011484(result);
  }

  return result;
}

uint64_t sub_10003D780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012C4C;

  return sub_100039E1C(a1, v4, v5, v6);
}

uint64_t sub_10003D834(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100004E6C(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003D89C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003D8E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000119FC;

  return sub_10003922C(a1, v4, v5, v6);
}

id sub_10003DC0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003DC74@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10003DCF4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10003DD68(char a1)
{
  v14 = &type metadata for Feature;
  v2 = sub_100007F94();
  v15 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100007FE8(v13);
  if (v3)
  {
    if (qword_10006FFA0 != -1)
    {
      swift_once();
    }

    v4 = *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 view];
      if (v6)
      {
        v7 = v6;
        type metadata accessor for CoverSheetBackgroundView();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isContentObscured;
          *(v8 + OBJC_IVAR____TtC13MediaRemoteUI24CoverSheetBackgroundView_isContentObscured) = a1 & 1;
          v14 = &type metadata for Feature;
          v15 = v2;
          v11 = isFeatureEnabled(_:)();
          sub_100007FE8(v13);
          if (v11)
          {
            v12 = *(v9 + v10);

            sub_100035440(v12);
          }

          else
          {
          }

          return;
        }
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void sub_10003DF20(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    static os_log_type_t.default.getter();
    if (qword_10006FF80 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    if (qword_10006FF70 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15[0] = 1;

    static Published.subscript.setter();
    type metadata accessor for BackdropViewController();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v8 = objc_allocWithZone(type metadata accessor for CoverSheetBackgroundViewController());
    v9 = sub_10000DDA4(v7);
    v10 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v5];
    [v10 setRootViewController:v9];
    [v10 makeKeyWindow];
    v11 = *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window) = v10;

    v16 = &type metadata for Feature;
    v17 = sub_100007F94();
    v12 = isFeatureEnabled(_:)();
    sub_100007FE8(v15);
    if (v12)
    {
      if (qword_10006FFA0 != -1)
      {
        swift_once();
      }

      [qword_100073810 setBackdropScene:v6];
    }

    if (qword_10006FFA0 != -1)
    {
      swift_once();
    }

    v13 = *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
    *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer) = v9;
    v14 = v9;

    sub_10002AD90();
  }
}

uint64_t sub_10003E1E0()
{
  if (qword_10006FFA0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer);
  *(qword_100073810 + OBJC_IVAR____TtC13MediaRemoteUI21LockScreenCoordinator_backgroundContainer) = 0;

  sub_10002AD90();
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window);
  *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window) = 0;

  if (qword_10006FF70 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

void sub_10003E35C()
{
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window);
  if (v2)
  {
    [v2 setHidden:0];
    v3 = *(v0 + v1);
    if (v3)
    {
      v4 = [v3 rootViewController];
      if (v4)
      {
        v5 = v4;
        [v4 beginAppearanceTransition:1 animated:0];
      }
    }
  }

  v6 = [*(v0 + v1) rootViewController];
  [v6 endAppearanceTransition];
}

void sub_10003E488()
{
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaRemoteUI21BackdropSceneDelegate_window);
  if (v2)
  {
    v3 = [v2 rootViewController];
    if (v3)
    {
      v4 = v3;
      [v3 beginAppearanceTransition:0 animated:0];
    }
  }

  v5 = [*(v0 + v1) rootViewController];
  [v5 endAppearanceTransition];
}

id sub_10003E5A4()
{
  result = [objc_allocWithZone(type metadata accessor for MainServer()) init];
  qword_100073830 = result;
  return result;
}

id sub_10003E69C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003E704()
{
  v0 = type metadata accessor for Logger();
  sub_1000238EC(v0, qword_100072650);
  sub_10001144C(v0, qword_100072650);
  if (qword_10006FF88 != -1)
  {
    swift_once();
  }

  v1 = qword_1000737D0;
  return Logger.init(_:)();
}

void sub_10003E790(uint64_t a1, void *a2, void *a3, void (*a4)(void))
{
  v6 = sub_10003E814(a2, a3);
  swift_getObjectType();
  sub_10002FC28(v6, 1, a1);
  a4(0);
}

char *sub_10003E814(void *a1, void *a2)
{
  if (SBUIIsSystemApertureEnabled())
  {
    if ([a2 bannerType] == 2 || objc_msgSend(a2, "bannerType") == 3)
    {
      objc_allocWithZone(type metadata accessor for SuggestedRouteConnectedViewController());
      v5 = v2;
      sub_100004DB8(a1, v11);
      return sub_100025C80(a1, a2, v2, &off_10005ED00);
    }

    else
    {
      v9 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerPresenter_routeTextFormatter];
      objc_allocWithZone(type metadata accessor for SuggestedRouteSystemApertureViewController());
      v10 = v2;
      sub_100004DB8(a1, v11);
      return sub_10002200C(a1, a2, v9, v2, &off_10005ED00);
    }
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerPresenter_routeTextFormatter];
    objc_allocWithZone(type metadata accessor for SuggestedRouteBannerViewController());
    v8 = v2;
    sub_100004DB8(a1, v11);
    return sub_100015D90(a1, a2, v7, v2, &off_10005ED00);
  }
}

double sub_10003E97C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 bannerType] == 1;
  v6 = [a1 bannerType];
  v7 = [a1 bannerType] == 4;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = v6 == 5;
  if (v6 == 5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  v90 = sub_10003F21C(v7, a1, v2, v5, v9);
  v92 = v11;
  v91 = v10;
  v93 = sub_10003F454(v10);
  if (qword_10006FFB8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10001144C(v12, qword_100072650);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v17 = v13;
    *(v16 + 12) = 2112;
    v18 = [v13 staticRequest];
    *(v16 + 14) = v18;
    v17[1] = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "[MRDRRC] configuration: %@ static request: %@", v16, 0x16u);
    sub_100004E6C(&unk_100071C40);
    swift_arrayDestroy();
  }

  v19 = [v13 staticRequest];
  if (v19)
  {
    v20 = v19;
    v21 = [v13 bannerType];
    if (v21 > 5 || ((1 << v21) & 0xD) != 0)
    {
      v33 = [v20 actionImageName];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v34;
    }

    else if (((1 << v21) & 0x22) != 0)
    {
      v28 = SBUIIsSystemApertureEnabled();
      if (v28)
      {
        v29 = 0xD000000000000014;
      }

      else
      {
        v29 = 0xD000000000000020;
      }

      if (v28)
      {
        v30 = "ward.circle.fill";
      }

      else
      {
        v30 = "uteBannerPresenter";
      }

      v31 = v30 | 0x8000000000000000;
    }

    else
    {
      v32 = SBUIIsSystemApertureEnabled();
      if (v32)
      {
        v29 = 1937075312;
      }

      else
      {
        v29 = 0xD000000000000010;
      }

      if (v32)
      {
        v31 = 0xE400000000000000;
      }

      else
      {
        v31 = 0x800000010004ED20;
      }
    }

    v35 = v13;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v88 = v31;
    v89 = v29;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v86 = v20;
      v40 = swift_slowAlloc();
      *&v106 = v40;
      *v38 = 136315394;
      v41 = sub_10003F8C8(v29, v31, &v106);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2112;
      *(v38 + 14) = v35;
      *v39 = v35;
      v42 = v35;
      _os_log_impl(&_mh_execute_header, v36, v37, "[MRDRRC] actionImageName: %s config: %@", v38, 0x16u);
      sub_100012BC0(v39, &unk_100071C40);

      sub_100007FE8(v40);
      v20 = v86;
    }

    else
    {
    }

    v43 = [v35 requestIdentifier];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v45;
    v87 = v44;

    v46 = [v35 routeIdentifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v48;
    v84 = v47;

    v49 = [v20 routeName];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v51;
    v82 = v50;

    v52 = [v20 outputDeviceNames];
    if (v52)
    {
      v53 = v52;
      v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v79 = 0;
    }

    v54 = [v20 routeSymbolName];
    if (!v54)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = String._bridgeToObjectiveC()();
    }

    v55 = [objc_opt_self() _systemImageNamed:v54];

    if (v55)
    {
      v56 = [objc_opt_self() labelColor];
      v57 = [objc_opt_self() configurationWithHierarchicalColor:v56];

      v58 = [v55 imageByApplyingSymbolConfiguration:v57];
    }

    else
    {
      v58 = 0;
    }

    v59 = [v20 soloModelID];
    if (v59)
    {
      v60 = v59;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v64 = [v20 soloDeviceEnclosureColor];
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    v69 = [v20 userSelectedDeviceNames];
    if (v69)
    {
      v70 = v69;
      v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v71 = 0;
    }

    *&v94 = v87;
    *(&v94 + 1) = v85;
    *&v95 = v84;
    *(&v95 + 1) = v83;
    *&v96 = v82;
    *(&v96 + 1) = v81;
    *&v97 = v80;
    *(&v97 + 1) = v90;
    *&v98 = v92;
    *(&v98 + 1) = v58;
    *&v99 = v89;
    *(&v99 + 1) = v88;
    v100 = v93;
    v101[0] = 0;
    memset(&v101[8], 0, 32);
    *&v101[40] = v61;
    *&v102 = v63;
    *(&v102 + 1) = v66;
    *&v103 = v68;
    BYTE8(v103) = v91;
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    v105 = v71;
    nullsub_1(&v94);
    v116 = v102;
    v117 = v103;
    v118 = v104;
    v119 = v105;
    v112 = v100;
    v113 = *v101;
    v114 = *&v101[16];
    v115 = *&v101[32];
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v111 = v99;
    v106 = v94;
    v107 = v95;
  }

  else
  {

    v22 = v13;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "[MRDRRC] configuration: %@ has static type but no static request", v25, 0xCu);
      sub_100012BC0(v26, &unk_100071C40);
    }

    sub_100004EB4(&v106);
  }

  v72 = v117;
  *(a2 + 160) = v116;
  *(a2 + 176) = v72;
  *(a2 + 192) = v118;
  *(a2 + 208) = v119;
  v73 = v113;
  *(a2 + 96) = v112;
  *(a2 + 112) = v73;
  v74 = v115;
  *(a2 + 128) = v114;
  *(a2 + 144) = v74;
  v75 = v109;
  *(a2 + 32) = v108;
  *(a2 + 48) = v75;
  v76 = v111;
  *(a2 + 64) = v110;
  *(a2 + 80) = v76;
  result = *&v106;
  v78 = v107;
  *a2 = v106;
  *(a2 + 16) = v78;
  return result;
}

uint64_t sub_10003F21C(char a1, id a2, uint64_t a3, char a4, char a5)
{
  if ((a1 & 1) == 0)
  {
    v13 = objc_opt_self();
    if (a4)
    {
      v14 = [v13 routeRecommendationAirPlayConnected];
    }

    else if (a5)
    {
      v14 = [v13 routeRecommendationCarPlayConnected];
    }

    else
    {
      v14 = [v13 routeRecommendationTapToAirPlay];
    }

LABEL_17:
    v10 = v14;
    goto LABEL_18;
  }

  v6 = [a2 staticRequest];
  if (!v6 || (v7 = v6, v8 = [v6 userSelectedDeviceNames], v7, !v8))
  {
    if (qword_10006FFB8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10001144C(v15, qword_100072650);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Attempted to create delta banner without providing existing device names. Fallback to TapToAirPlay string", v18, 2u);
    }

    v14 = [objc_opt_self() routeRecommendationTapToAirPlay];
    goto LABEL_17;
  }

  v9 = [*(a3 + OBJC_IVAR____TtC13MediaRemoteUI29SuggestedRouteBannerPresenter_routeTextFormatter) textForRouteNames:v8];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [objc_opt_self() routeRecommendationAddWithFormattedExistingRouteName:v9];

LABEL_18:
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v19;
}

id sub_10003F454(char a1)
{
  if (a1)
  {
    v1 = SBUIIsSystemApertureEnabled();
    v2 = objc_opt_self();
    v3 = [v2 configurationWithTextStyle:UIFontTextStyleTitle1 scale:1];
    v4 = [v2 configurationWithWeight:5];
    v5 = [v3 configurationByApplyingConfiguration:v4];

    if (!v1)
    {
      sub_100004E6C(&unk_100070270);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100044520;
      v12 = objc_opt_self();
      *(v11 + 32) = [v12 systemWhiteColor];
      *(v11 + 40) = [v12 systemBlueColor];
      sub_100006334(0, &qword_1000726A0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v2 configurationWithPaletteColors:isa];
      goto LABEL_7;
    }

    v6 = [objc_opt_self() systemCyanColor];
  }

  else
  {
    v2 = objc_opt_self();
    v7 = [v2 configurationWithTextStyle:UIFontTextStyleTitle1 scale:1];
    v8 = [v2 configurationWithWeight:5];
    v5 = [v7 configurationByApplyingConfiguration:v8];

    v6 = [objc_opt_self() secondaryLabelColor];
  }

  isa = v6;
  v10 = [v2 configurationWithHierarchicalColor:isa];
LABEL_7:
  v13 = v10;

  v14 = [v5 configurationByApplyingConfiguration:v13];
  return v14;
}

uint64_t sub_10003F6D0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for BannerController();
    swift_dynamicCastClassUnconditional();
    sub_10003190C(a1, a2, 0x756F2064656D6974, 0xE900000000000074, 0, 0);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003F790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedRouteBannerPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003F7F8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10003F86C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10003F8C8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10003F8C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003F994(v11, 0, 0, 1, a1, a2);
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
    sub_10001395C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007FE8(v11);
  return v7;
}

unint64_t sub_10003F994(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003FAA0(a5, a6);
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

char *sub_10003FAA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10003FAEC(a1, a2);
  sub_10003FC1C(&off_10005D7F8);
  return v3;
}

char *sub_10003FAEC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10003FD08(v5, 0);
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
        v7 = sub_10003FD08(v10, 0);
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

uint64_t sub_10003FC1C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003FD7C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003FD08(uint64_t a1, uint64_t a2)
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

  sub_100004E6C(&qword_100072698);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003FD7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E6C(&qword_100072698);
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

_BYTE **sub_10003FE70(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_10003FE80(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_10003FEF4(void *a1, char *a2, void (**a3)(const void *, void))
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  __chkstk_darwin(v9);
  v74 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v78 = a3;
  _Block_copy(a3);
  if (qword_10006FFB8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10001144C(v13, qword_100072650);
  v15 = a1;
  v73 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v72 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v71 = v6;
    v69 = v20;
    *&v97 = v20;
    *v19 = 136315138;
    v21 = [v15 requestIdentifier];
    v70 = v7;
    v22 = v21;
    v23 = v15;
    v24 = v12;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v25;
    v12 = v24;
    v15 = v23;
    v29 = sub_10003F8C8(v28, v27, &v97);

    *(v19 + 4) = v29;
    v7 = v70;
    _os_log_impl(&_mh_execute_header, v16, v17, "[MRDRRC] got request %s - will not try to resolve (not required)", v19, 0xCu);
    sub_100007FE8(v69);
    v6 = v71;

    a2 = v72;
  }

  sub_10003E97C(v15, v81);
  v93 = v81[10];
  v94 = v81[11];
  v95 = v81[12];
  v96 = v82;
  v89 = v81[6];
  v90 = v81[7];
  v91 = v81[8];
  v92 = v81[9];
  v85 = v81[2];
  v86 = v81[3];
  v87 = v81[4];
  v88 = v81[5];
  v83 = v81[0];
  v84 = v81[1];
  if (sub_100004EDC(&v83) == 1)
  {
    v30 = v15;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v77 = v12;
      *&v97 = v34;
      *v33 = 136315394;
      v35 = [v30 routeIdentifier];
      v36 = a2;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_10003F8C8(v37, v39, &v97);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2080;
      v41 = [v30 requestIdentifier];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = v42;
      a2 = v36;
      v46 = sub_10003F8C8(v45, v44, &v97);

      *(v33 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v31, v32, "[MRDRRC] couldn't generate suggested route %s for %s - will say it's invalidated", v33, 0x16u);
      swift_arrayDestroy();
    }

    v47 = &a2[OBJC_IVAR____TtC13MediaRemoteUI15BannerPresenter_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = *(v47 + 1);
      ObjectType = swift_getObjectType();
      v50 = [v30 requestIdentifier];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      (*(v48 + 8))(v51, v53, 0, ObjectType, v48);

      swift_unknownObjectRelease();
    }

    v78[2](v78, 0);
  }

  else
  {
    v107 = v93;
    v108 = v94;
    v109 = v95;
    v110 = v96;
    v103 = v89;
    v104 = v90;
    v105 = v91;
    v106 = v92;
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v102 = v88;
    v97 = v83;
    v98 = v84;
    sub_100006334(0, &qword_100070AF0);
    v54 = static OS_dispatch_queue.main.getter();
    v55 = swift_allocObject();
    v56 = v108;
    *(v55 + 184) = v107;
    *(v55 + 200) = v56;
    *(v55 + 216) = v109;
    v57 = v104;
    *(v55 + 120) = v103;
    *(v55 + 136) = v57;
    v58 = v106;
    *(v55 + 152) = v105;
    *(v55 + 168) = v58;
    v59 = v100;
    *(v55 + 56) = v99;
    *(v55 + 72) = v59;
    v60 = v102;
    *(v55 + 88) = v101;
    *(v55 + 104) = v60;
    v61 = v98;
    *(v55 + 24) = v97;
    *(v55 + 16) = a2;
    v62 = v110;
    *(v55 + 40) = v61;
    *(v55 + 232) = v62;
    *(v55 + 240) = v15;
    *(v55 + 248) = sub_100021DAC;
    *(v55 + 256) = v12;
    v80[4] = sub_100040794;
    v80[5] = v55;
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 1107296256;
    v80[2] = sub_100015D4C;
    v80[3] = &unk_10005F420;
    v63 = _Block_copy(v80);
    v64 = v15;
    v65 = a2;
    sub_1000407C0(v81, &v79);

    v66 = v74;
    static DispatchQoS.unspecified.getter();
    v79 = _swiftEmptyArrayStorage;
    sub_10000CD84();
    sub_100004E6C(&unk_100070B00);
    sub_10000CDDC();
    v67 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v63);

    sub_100012BC0(v81, &qword_1000726A8);
    (*(v7 + 8))(v67, v6);
    (*(v76 + 8))(v66, v75);
  }
}

uint64_t sub_10004069C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000406D4()
{

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_1000407A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000407C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E6C(&qword_1000726A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100040864(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire assertion: %@", &v2, 0xCu);
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

__C::CAFrameRateRange __swiftcall CAFrameRateRange.init(minimum:maximum:preferred:)(Swift::Float minimum, Swift::Float maximum, Swift::Float_optional *preferred)
{
  CAFrameRateRange.init(minimum:maximum:preferred:)(preferred, minimum, maximum);
  result.__preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}