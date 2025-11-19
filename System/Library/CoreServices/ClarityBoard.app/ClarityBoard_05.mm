void sub_1000A5A88()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  sub_10002B6CC(&qword_10032F9D0);
  String.init<A>(describing:)();

  v0._object = 0x80000001002C3B80;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x6C616E6F6974706FLL;
  v1._object = 0xED0000656E656353;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A5B8C()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  sub_10002B6CC(&qword_10032F9D0);
  String.init<A>(describing:)();

  v0._object = 0x80000001002C3B80;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x80000001002C1770;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A5C8C()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  sub_10002B6CC(&qword_10032F9D0);
  String.init<A>(describing:)();

  v0._object = 0x80000001002C3B80;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000022;
  v1._object = 0x80000001002C3C00;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A5D8C()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  sub_10002B6CC(&qword_10032F9D0);
  String.init<A>(describing:)();

  v0._object = 0x80000001002C3B80;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001002C3BE0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A5E8C()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  sub_10002B6CC(&qword_10032F9D0);
  String.init<A>(describing:)();

  v0._object = 0x80000001002C3B80;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001002C3BC0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A5F8C()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  sub_10002B6CC(&qword_10032F9D0);
  String.init<A>(describing:)();

  v0._object = 0x80000001002C3B80;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001002C3BA0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A609C()
{
  v1 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation;
  v2 = *&v0[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation];
  if (!v2)
  {
    v2 = sub_1000A4DBC(0, 1);
    *&v0[v1] = v2;
  }

  v3 = [objc_allocWithZone(CLBApplicationSceneView) initWithSceneInterfaceOrientation:v2 includeBackgroundView:v0[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_includeBackgroundView]];
  v4 = [v3 layer];
  swift_getObjectType();
  sub_10002B6CC(&qword_10032F9D0);
  String.init<A>(describing:)();
  v5 = String._bridgeToObjectiveC()();

  [v4 setName:v5];

  [v0 setView:v3];
}

id sub_1000A6350(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.common.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v12, v8);
  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218752;
    *(v15 + 4) = a2;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a3;
    *(v15 + 22) = 1024;
    *(v15 + 24) = [a1 isAnimated];
    swift_unknownObjectRelease();
    *(v15 + 28) = 2048;
    [a1 transitionDuration];
    *(v15 + 30) = v16;
    _os_log_impl(&_mh_execute_header, v13, v14, "Scene view controller will transition to size %f x %f. Animated: %{BOOL}d, transition duration: %f", v15, 0x26u);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v9 + 8))(v11, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  aBlock[4] = sub_1000A6E38;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A6828;
  aBlock[3] = &unk_100301D00;
  v18 = _Block_copy(aBlock);
  v19 = v4;

  [a1 animateAlongsideTransition:v18 completion:0];
  _Block_release(v18);
  v20 = type metadata accessor for SceneViewControllerBase();
  v22.receiver = v19;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

id sub_1000A660C(void *a1, void *a2)
{
  v16.receiver = a2;
  v16.super_class = type metadata accessor for SceneViewControllerBase();
  result = objc_msgSendSuper2(&v16, "view");
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() updateSceneUI];

  v6 = [a1 transitionDuration];
  v8 = v7;
  result = (*((swift_isaMask & *a2) + 0xA8))(v6);
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v8;
    *(v10 + 32) = 0;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000A6E78;
    *(v11 + 24) = v10;
    v15[4] = sub_1000A6E94;
    v15[5] = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1000A5678;
    v15[3] = &unk_100301D78;
    v12 = _Block_copy(v15);
    v13 = a2;

    [v9 performUpdate:v12];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000A6828(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1000A6A24(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1000A4958(v1);
  }
}

void sub_1000A6A74(void *a1, SEL *a2)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for SceneViewControllerBase();
  v3 = objc_msgSendSuper2(&v5, "view");
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() *a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000A6AFC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = *((swift_isaMask & *a3) + 0xE0);
    v15 = a1;
    v12(v11);
    if ((a5 & 1) == 0)
    {
      v13 = [objc_opt_self() settingsWithDuration:*&a4];
      [a2 setAnimationSettings:v13];

      v14 = [qword_100336870 _systemAnimationFenceCreatingIfNecessary:1];
      [a2 setAnimationFence:v14];
    }
  }
}

id sub_1000A6CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneViewControllerBase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A6D08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_1000A6D48()
{
  result = qword_10032F9C8;
  if (!qword_10032F9C8)
  {
    sub_10002CAF8(&unk_10032F9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F9C8);
  }

  return result;
}

uint64_t sub_1000A6DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A6DD4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A6E40()
{

  return _swift_deallocObject(v0, 33);
}

unint64_t sub_1000A6EBC()
{
  result = qword_10032BA20;
  if (!qword_10032BA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032BA20);
  }

  return result;
}

id sub_1000A6F2C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [qword_100336870 deviceOrientation];
  if (result >= 7)
  {
    v5 = Logger.common.unsafeMutableAddressor();
    (*(v1 + 16))(v3, v5, v0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v13 = [qword_100336870 deviceOrientation];
      type metadata accessor for UIDeviceOrientation(0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10005766C(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got unknown device orientation: %s", v8, 0xCu);
      sub_10002C9B0(v9);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BarShape(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BarShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BarShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000A7200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B6CC(&qword_10032D838);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000A72E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002B6CC(&qword_10032D838);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LockScreenPasscodeView()
{
  result = qword_10032FA30;
  if (!qword_10032FA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A73FC()
{
  sub_1000A751C();
  if (v0 <= 0x3F)
  {
    sub_1000A75B0();
    if (v1 <= 0x3F)
    {
      sub_100086E78();
      if (v2 <= 0x3F)
      {
        sub_10009D3BC(319, &qword_10032F6E8);
        if (v3 <= 0x3F)
        {
          sub_10009D3BC(319, &unk_10032FA48);
          if (v4 <= 0x3F)
          {
            sub_10005EDB4();
            if (v5 <= 0x3F)
            {
              sub_10003F9F8();
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

void sub_1000A751C()
{
  if (!qword_10032FA40)
  {
    type metadata accessor for NamespaceWrapper();
    sub_1000AAED4(&qword_10032DA90, type metadata accessor for NamespaceWrapper);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032FA40);
    }
  }
}

void sub_1000A75B0()
{
  if (!qword_10032D8B0)
  {
    sub_10002CAF8(&qword_10032D8B8);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10032D8B0);
    }
  }
}

__n128 sub_1000A7630@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LockScreenPasscodeView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = v1 + *(__chkstk_darwin(v3 - 8) + 36);
  v7 = *v6;
  v8 = *(v6 + 16);
  v20 = v7;
  v21 = v8;
  sub_10002B6CC(&qword_10032EE50);
  State.projectedValue.getter();
  v16 = v17;
  v9 = v18;
  v10 = v19;
  sub_1000A9FA0(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1000AA008(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  LOBYTE(v20) = 0;
  *(&v20 + 1) = 0x4024000000000000;
  State.init(wrappedValue:)();
  LOBYTE(v11) = v17.n128_u8[0];
  v13 = v17.n128_u64[1];
  v14 = v18;
  *&v20 = 0;
  State.init(wrappedValue:)();
  result = v17;
  *a1 = v16;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = sub_1000AA06C;
  *(a1 + 40) = v12;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = result;
  *(a1 + 88) = 0x3FA999999999999ALL;
  *(a1 + 96) = 8;
  return result;
}

uint64_t sub_1000A77F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v12 = sub_10002B6CC(&qword_10032DD58);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v12);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v30 - v18;
  *v19 = static HorizontalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_10002B6CC(&qword_10032FAC8);
  sub_1000A7A18(a4, a1, a2, a3, &v19[*(v20 + 44)], a6);
  v21 = static Alignment.center.getter();
  v23 = v22;
  v24 = &v19[*(v13 + 44)];
  sub_1000A95D0(a4);
  v25 = &v24[*(sub_10002B6CC(qword_10032DD80) + 36)];
  *v25 = v21;
  v25[1] = v23;
  sub_1000AA114(v19, v17);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  sub_1000AA114(v17, v27 + v26);
  *a5 = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  result = sub_10002B6CC(&qword_10032FB10);
  v29 = (a5 + *(result + 36));
  *v29 = sub_1000AA550;
  v29[1] = v27;
  return result;
}

uint64_t sub_1000A7A18@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v123 = a3;
  v124 = a4;
  LODWORD(v122) = a2;
  v135 = a1;
  v128 = a5;
  v7 = type metadata accessor for LockScreenPasscodeView();
  v125 = *(v7 - 8);
  __chkstk_darwin(v7);
  v126 = v8;
  v127 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10002B6CC(&qword_10032FAF8);
  v11 = __chkstk_darwin(v121);
  v132 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v109 - v13;
  v14 = type metadata accessor for ColorScheme();
  v129 = *(v14 - 8);
  v130 = v14;
  __chkstk_darwin(v14);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002B6CC(&qword_10032C248);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v109 - v19;
  v21 = sub_10002B6CC(&qword_10032FB90);
  __chkstk_darwin(v21);
  v23 = &v109 - v22;
  v24 = sub_10002B6CC(&qword_10032FB98);
  __chkstk_darwin(v24);
  v26 = &v109 - v25;
  v120 = sub_10002B6CC(&qword_10032FBA0);
  v27 = __chkstk_darwin(v120);
  v131 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v133 = &v109 - v29;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_10002CD18(&qword_10032FBA8, &qword_10032C248);
  View.accessibilityIdentifier(_:)();
  (*(v18 + 8))(v20, v17);
  v30 = v135;
  v31 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v33 = &v23[*(v21 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  sub_1000AAA34();
  View.bold(_:)();
  sub_10002C51C(v23, &qword_10032FB90);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v153 + 1) >> 60 == 15)
  {
    v34 = static Color.white.getter();
  }

  else
  {
    sub_1000663C8(v153, *(&v153 + 1));
    sub_10004A124(v16);
    sub_1000B8C94();
    (*(v129 + 8))(v16, v130);
    v34 = Color.init(_:)();
  }

  v35 = v34;
  v36 = swift_getKeyPath();
  v37 = &v26[*(sub_10002B6CC(&qword_10032FAE0) + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = swift_getKeyPath();
  v39 = &v26[*(sub_10002B6CC(&qword_10032FAE8) + 36)];
  *v39 = v38;
  v39[8] = 1;
  v40 = (v30 + *(v7 + 32));
  v41 = *v40;
  v118 = v40[1];
  v119 = v41;
  *&v153 = v41;
  *(&v153 + 1) = v118;
  v117 = sub_10002B6CC(&qword_10032FB20);
  State.wrappedValue.getter();
  *&v26[*(v24 + 36)] = v152[0];
  LocalizedStringKey.init(stringLiteral:)();
  sub_1000AABE4();
  v42 = v7;
  v43 = v133;
  View.accessibilityHint(_:)();

  sub_10002C51C(v26, &qword_10032FB98);
  LOBYTE(v38) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v44 = v43 + *(v120 + 36);
  *v44 = v38;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46;
  *(v44 + 24) = v47;
  *(v44 + 32) = v48;
  *(v44 + 40) = 0;
  v49 = v30 + *(v42 + 28);
  v50 = *v49;
  v51 = *(v49 + 16);
  v153 = v50;
  *v154 = v51;
  sub_10002B6CC(&qword_10032EE50);
  State.wrappedValue.getter();
  v120 = String.count.getter();

  v52 = *(v30 + *(v42 + 40));
  v116 = static Color.clear.getter();
  static Color.primary.getter();
  v53 = Color.opacity(_:)();

  v54 = static Color.white.getter();
  static Color.primary.getter();
  v55 = Color.opacity(_:)();

  v56 = static Color.primary.getter();
  static Color.primary.getter();
  v57 = Color.opacity(_:)();

  v58 = v122 & 1;
  *&v153 = v119;
  *(&v153 + 1) = v118;
  State.wrappedValue.getter();
  v59 = v152[0];
  v60 = v134;
  v61 = (v134 + *(v121 + 36));
  v62 = sub_10002B6CC(&qword_10032E700);
  (*(v129 + 104))(v61 + *(v62 + 28), enum case for ColorScheme.light(_:), v130);
  *v61 = swift_getKeyPath();
  *v60 = v120;
  *(v60 + 8) = v52;
  *(v60 + 16) = xmmword_10029C980;
  v63 = v116;
  *(v60 + 32) = 0x4038000000000000;
  *(v60 + 40) = v63;
  *(v60 + 48) = v53;
  *(v60 + 56) = v54;
  *(v60 + 64) = v55;
  *(v60 + 72) = v56;
  *(v60 + 80) = v57;
  *(v60 + 88) = v58;
  *(v60 + 96) = a6;
  *(v60 + 104) = v59;
  v64 = static HorizontalAlignment.center.getter();
  v208 = 1;
  sub_1000A8BB0(v135, v123, v124, &v153);
  v217 = *&v154[64];
  v218 = *&v154[80];
  v219[0] = *&v154[96];
  *(v219 + 9) = *&v154[105];
  v214 = *&v154[16];
  v215 = *&v154[32];
  v216 = *&v154[48];
  v212 = v153;
  v213 = *v154;
  v220[5] = *&v154[64];
  v220[6] = *&v154[80];
  v221[0] = *&v154[96];
  *(v221 + 9) = *&v154[105];
  v220[2] = *&v154[16];
  v220[3] = *&v154[32];
  v220[4] = *&v154[48];
  v220[0] = v153;
  v220[1] = *v154;
  sub_10003AFFC(&v212, v152, &qword_10032FBE0);
  v65 = v135;
  sub_10002C51C(v220, &qword_10032FBE0);
  *(&v207[5] + 7) = v217;
  *(&v207[6] + 7) = v218;
  *(&v207[7] + 7) = v219[0];
  v207[8] = *(v219 + 9);
  *(&v207[1] + 7) = v213;
  *(&v207[2] + 7) = v214;
  *(&v207[3] + 7) = v215;
  *(&v207[4] + 7) = v216;
  *(v207 + 7) = v212;
  v66 = *v65;
  if (*v65)
  {
    LODWORD(v121) = v208;
    v129 = *(v66 + 16);
    v130 = v64;
    LODWORD(v124) = static MatchedGeometryProperties.position.getter();
    static UnitPoint.top.getter();
    v122 = v68;
    v123 = v67;
    v203 = v207[5];
    v204 = v207[6];
    v205 = v207[7];
    v206 = v207[8];
    v199 = v207[1];
    v200 = v207[2];
    v201 = v207[3];
    v202 = v207[4];
    v198 = v207[0];
    LODWORD(v120) = static Edge.Set.horizontal.getter();
    static ClarityUIMetrics.componentHorizontalPadding.getter();
    EdgeInsets.init(_all:)();
    v118 = v70;
    v119 = v69;
    v116 = v72;
    v117 = v71;
    v209 = 0;
    v115 = static Edge.Set.vertical.getter();
    static ClarityUIMetrics.componentHorizontalPadding.getter();
    EdgeInsets.init(_all:)();
    v74 = v73;
    v76 = v75;
    v113 = v78;
    v114 = v77;
    v210 = 0;
    v79 = static Alignment.center.getter();
    v81 = v80;
    v82 = *(v65 + 16);
    v83 = *(v65 + 24);
    if (*(v65 + 25))
    {
      v186 = *(v65 + 16);
      v187 = v83 & 1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v84 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v85 = v110;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100065554(v82, v83, 0);
      (*(v111 + 8))(v85, v112);
      v82 = v186;
      LOBYTE(v83) = v187;
    }

    v86 = static Color.clarityUIContentBackground.getter();
    v87 = static SafeAreaRegions.all.getter();
    v88 = static Edge.Set.all.getter();
    v192 = v83 & 1;
    *&v136 = v82;
    BYTE8(v136) = v83 & 1;
    *(&v136 + 9) = *v191;
    HIDWORD(v136) = *&v191[3];
    *&v137 = v86;
    WORD4(v137) = 256;
    *(&v137 + 10) = v189;
    HIWORD(v137) = v190;
    *&v138 = v87;
    BYTE8(v138) = v88;
    HIDWORD(v138) = *&v188[3];
    *(&v138 + 9) = *v188;
    *&v139 = v79;
    *(&v139 + 1) = v81;
    *&v211[55] = v139;
    *&v211[39] = v138;
    *&v211[23] = v137;
    *&v211[7] = v136;
    v140 = v82;
    v141 = v83 & 1;
    *&v142[3] = *&v191[3];
    *v142 = *v191;
    v143 = v86;
    v144 = 256;
    v146 = v190;
    v145 = v189;
    v147 = v87;
    v148 = v88;
    *&v149[3] = *&v188[3];
    *v149 = *v188;
    v150 = v79;
    v151 = v81;
    sub_10003AFFC(&v136, &v153, &qword_10032FBE8);
    sub_10002C51C(&v140, &qword_10032FBE8);
    v89 = v127;
    sub_1000A9FA0(v135, v127);
    v90 = (*(v125 + 80) + 16) & ~*(v125 + 80);
    v135 = swift_allocObject();
    sub_1000AA008(v89, v135 + v90);
    v91 = v131;
    sub_1000AAE34(v133, v131);
    v92 = v132;
    sub_10003AFFC(v134, v132, &qword_10032FAF8);
    v93 = v128;
    *v128 = 0x403E000000000000;
    *(v93 + 8) = 0;
    v94 = sub_10002B6CC(&qword_10032FAD0);
    sub_1000AAE34(v91, v93 + v94[12]);
    sub_10003AFFC(v92, v93 + v94[16], &qword_10032FAF8);
    v95 = v93 + v94[20];
    *v95 = 0x403E000000000000;
    v95[8] = 0;
    v96 = v94[24];
    v152[0] = v130;
    v152[1] = 0;
    LOBYTE(v91) = v121;
    LOBYTE(v152[2]) = v121;
    *(&v152[8] + 1) = v201;
    *(&v152[4] + 1) = v199;
    *(&v152[6] + 1) = v200;
    *(&v152[2] + 1) = v198;
    *(&v152[12] + 1) = v203;
    *(&v152[14] + 1) = v204;
    *(&v152[16] + 1) = v205;
    *(&v152[18] + 1) = v206;
    *(&v152[10] + 1) = v202;
    *(&v152[20] + 1) = *v197;
    HIDWORD(v152[20]) = *&v197[3];
    strcpy(&v152[21], "passcodeButton");
    HIBYTE(v152[22]) = -18;
    v97 = v129;
    v152[23] = v129;
    v98 = v124;
    LODWORD(v152[24]) = v124;
    v100 = v122;
    v99 = v123;
    v152[25] = v123;
    v152[26] = v122;
    LOBYTE(v152[27]) = 1;
    *(&v152[27] + 1) = *v196;
    HIDWORD(v152[27]) = *&v196[3];
    LOBYTE(v87) = v120;
    LOBYTE(v152[28]) = v120;
    HIDWORD(v152[28]) = *&v195[3];
    *(&v152[28] + 1) = *v195;
    v102 = v118;
    v101 = v119;
    v152[29] = v119;
    v152[30] = v118;
    v104 = v116;
    v103 = v117;
    v152[31] = v117;
    v152[32] = v116;
    LOBYTE(v152[33]) = 0;
    *(&v152[33] + 1) = *v194;
    HIDWORD(v152[33]) = *&v194[3];
    LOBYTE(v94) = v115;
    LOBYTE(v152[34]) = v115;
    *(&v152[34] + 1) = *v193;
    HIDWORD(v152[34]) = *&v193[3];
    v152[35] = v74;
    v152[36] = v76;
    v126 = v74;
    v127 = v76;
    v106 = v113;
    v105 = v114;
    v152[37] = v114;
    v152[38] = v113;
    LOBYTE(v152[39]) = 0;
    *(&v152[43] + 1) = *&v211[32];
    *(&v152[45] + 1) = *&v211[48];
    *(&v152[39] + 1) = *v211;
    *(&v152[41] + 1) = *&v211[16];
    v152[47] = *&v211[63];
    v152[48] = sub_1000AAE1C;
    v107 = v135;
    v152[49] = v135;
    v152[50] = 0;
    v152[51] = 0;
    memcpy(v93 + v96, v152, 0x1A0uLL);
    sub_10003AFFC(v152, &v153, &qword_10032FBF0);
    sub_10002C51C(v134, &qword_10032FAF8);
    sub_10002C51C(v133, &qword_10032FBA0);
    v153 = v130;
    v154[0] = v91;
    *&v154[81] = v203;
    *&v154[97] = v204;
    *&v154[113] = v205;
    *&v154[129] = v206;
    *&v154[17] = v199;
    *&v154[33] = v200;
    *&v154[49] = v201;
    *&v154[65] = v202;
    *&v154[1] = v198;
    *v155 = *v197;
    *&v155[3] = *&v197[3];
    strcpy(v156, "passcodeButton");
    v156[15] = -18;
    v157 = v97;
    v158 = v98;
    v159 = v99;
    v160 = v100;
    v161 = 1;
    *v162 = *v196;
    *&v162[3] = *&v196[3];
    v163 = v87;
    *&v164[3] = *&v195[3];
    *v164 = *v195;
    v165 = v101;
    v166 = v102;
    v167 = v103;
    v168 = v104;
    v169 = 0;
    *v170 = *v194;
    *&v170[3] = *&v194[3];
    v171 = v94;
    *v172 = *v193;
    *&v172[3] = *&v193[3];
    v173 = v126;
    v174 = v127;
    v175 = v105;
    v176 = v106;
    v177 = 0;
    v180 = *&v211[32];
    *v181 = *&v211[48];
    v178 = *v211;
    v179 = *&v211[16];
    *&v181[15] = *&v211[63];
    v182 = sub_1000AAE1C;
    v183 = v107;
    v184 = 0;
    v185 = 0;
    sub_10002C51C(&v153, &qword_10032FBF0);
    sub_10002C51C(v132, &qword_10032FAF8);
    return sub_10002C51C(v131, &qword_10032FBA0);
  }

  else
  {
    type metadata accessor for NamespaceWrapper();
    sub_1000AAED4(&qword_10032DA90, type metadata accessor for NamespaceWrapper);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A8BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v6 = type metadata accessor for LockScreenPasscodeView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A9FA0(a1, v10);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = v11 + v9;
  v38 = swift_allocObject();
  sub_1000AA008(v10, v38 + v11);
  v37 = static Color.clarityUIContentBackground.getter();
  v36 = static Color.primary.getter();
  v13 = a1 + *(v7 + 36);
  v14 = *v13;
  v15 = *(v13 + 16);
  v42 = v14;
  *&v43 = v15;
  sub_10002B6CC(&qword_10032EE50);
  State.projectedValue.getter();
  v16 = v48;
  v17 = v50;
  v34 = v51;
  v35 = v49;
  sub_1000A9FA0(a1, v10);
  v18 = swift_allocObject();
  sub_1000AA008(v10, v18 + v11);
  v19 = (v18 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v40;
  *v19 = v39;
  v19[1] = v20;

  LOBYTE(v11) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v22 = v34;
  v21 = v35;
  *&v42 = v16;
  *(&v42 + 1) = v35;
  *&v43 = v17;
  *(&v43 + 1) = v34;
  LOBYTE(v44) = 0;
  *(&v44 + 1) = sub_1000AB300;
  *&v45 = v18;
  *(&v45 + 1) = 0x402E000000000000;
  LOBYTE(v46) = v11;
  *(&v46 + 1) = v23;
  *&v47[0] = v24;
  *(&v47[0] + 1) = v25;
  *&v47[1] = v26;
  BYTE8(v47[1]) = 0;
  v27 = v36;
  *a4 = v37;
  *(a4 + 8) = v27;
  v28 = v38;
  *(a4 + 16) = sub_1000AB0CC;
  *(a4 + 24) = v28;
  v29 = v43;
  *(a4 + 32) = v42;
  *(a4 + 48) = v29;
  v30 = v44;
  v31 = v45;
  *(a4 + 121) = *(v47 + 9);
  v32 = v47[0];
  *(a4 + 96) = v46;
  *(a4 + 112) = v32;
  *(a4 + 64) = v30;
  *(a4 + 80) = v31;
  v48 = v16;
  v49 = v21;
  v50 = v17;
  v51 = v22;
  v52 = 0;
  v53 = sub_1000AB300;
  v54 = v18;
  v55 = 0x402E000000000000;
  v56 = v11;
  v57 = v23;
  v58 = v24;
  v59 = v25;
  v60 = v26;
  v61 = 0;

  sub_10003AFFC(&v42, &v41, &qword_10032FBF8);
  sub_10002C51C(&v48, &qword_10032FBF8);
}

uint64_t sub_1000A8E80(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v2 = type metadata accessor for LockScreenPasscodeView();
  return (*(a1 + *(v2 + 48)))(0);
}

uint64_t sub_1000A8F10(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for LockScreenPasscodeView();
  sub_10002B6CC(&qword_10032EE50);
  State.wrappedValue.getter();
  v5 = String.count.getter();

  if (v5 == *(a1 + *(v4 + 40)))
  {
    v7 = *(a1 + *(v4 + 44));
    State.wrappedValue.getter();
    v8 = v7();

    if (v8)
    {
      __chkstk_darwin(v9);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    else
    {
      return a2(v9);
    }
  }

  return result;
}

uint64_t sub_1000A9090(uint64_t a1)
{
  v24 = a1;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LockScreenPasscodeView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_10006E710();
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_1000A9FA0(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1000AA008(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1000AAEA4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_100301F88;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AAED4(&qword_10032E980, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002B6CC(&qword_10032D9D0);
  sub_10002CD18(&qword_10032E990, &qword_10032D9D0);
  v19 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_1000A94EC()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000A9558()
{
  type metadata accessor for LockScreenPasscodeView();
  sub_10002B6CC(&qword_10032FB20);
  return State.wrappedValue.setter();
}

uint64_t sub_1000A95D0(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032FB00);
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = sub_10002B6CC(&qword_10032FB08);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LockScreenPasscodeView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v25 + 1) >> 60 == 15)
  {
    static Material.regular.getter();
    v9 = static Edge.Set.all.getter();
    v7[*(sub_10002B6CC(&qword_10032C4B0) + 36)] = v9;
    v10 = static SafeAreaRegions.all.getter();
    v11 = static Edge.Set.all.getter();
    v12 = &v7[*(sub_10002B6CC(&qword_10032FB18) + 36)];
    *v12 = v10;
    v12[8] = v11;
    v25 = *(a1 + *(v8 + 32));
    sub_10002B6CC(&qword_10032FB20);
    State.wrappedValue.getter();
    v13 = v24;
    *&v7[*(sub_10002B6CC(&qword_10032FB28) + 36)] = v13;
    v14 = &v7[*(v5 + 36)];
    v15 = *(sub_10002B6CC(&qword_10032E700) + 28);
    v16 = enum case for ColorScheme.light(_:);
    v17 = type metadata accessor for ColorScheme();
    (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
    *v14 = swift_getKeyPath();
    sub_10003AFFC(v7, v4, &qword_10032FB08);
    swift_storeEnumTagMultiPayload();
    sub_10002B6CC(&qword_10032FB30);
    sub_1000AA5E4();
    sub_1000AA8C0();
    _ConditionalContent<>.init(storage:)();
    return sub_10002C51C(v7, &qword_10032FB08);
  }

  else
  {
    sub_1000663C8(v25, *(&v25 + 1));
    if (qword_10032B520 != -1)
    {
      swift_once();
    }

    type metadata accessor for LockScreenWallpaperMetadataProvider();
    sub_1000AAED4(&qword_10032EA70, type metadata accessor for LockScreenWallpaperMetadataProvider);

    v19 = ObservedObject.init(wrappedValue:)();
    v21 = v20;
    v25 = *(a1 + *(v8 + 32));
    sub_10002B6CC(&qword_10032FB20);
    State.wrappedValue.getter();
    v22 = v24;
    *v4 = v19;
    *(v4 + 1) = v21;
    *(v4 + 2) = 0x4039000000000000;
    v4[24] = 1;
    *(v4 + 4) = v22;
    swift_storeEnumTagMultiPayload();
    sub_10002B6CC(&qword_10032FB30);
    sub_1000AA5E4();
    sub_1000AA8C0();
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_1000A9A6C@<D0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  if (a2)
  {
    static ClarityUIMetrics.fallbackDisplayCornerRadius.getter();
    v13 = v12;
LABEL_6:
    static ClarityUIMetrics.fallbackDisplayCornerRadius.getter();
    a1 = v18;
    goto LABEL_7;
  }

  static ClarityUIMetrics.minimumDisplayCornerRadius.getter();
  v13 = a1;
  if (v15 > a1)
  {
    static ClarityUIMetrics.fallbackDisplayCornerRadius.getter();
    v13 = v16;
  }

  static ClarityUIMetrics.minimumDisplayCornerRadius.getter();
  if (v17 > a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v19 = [objc_opt_self() bezierPathWithRoundedRect:3 byRoundingCorners:a4 cornerRadii:{a5, a6, a7, v13, a1}];
  v20 = [v19 CGPath];

  Path.init(_:)();
  result = *&v22;
  *a3 = v22;
  *(a3 + 16) = v23;
  *(a3 + 32) = v24;
  return result;
}

double sub_1000A9B80@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_1000A9A6C(*v5, *(v5 + 8), v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_1000A9BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShapeRole.fill(_:);
  v3 = type metadata accessor for ShapeRole();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void (*sub_1000A9C5C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_1000A9CE4;
}

void sub_1000A9CE4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000A9D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A9F4C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000A9D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A9F4C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000A9DF8(uint64_t a1)
{
  v2 = sub_1000A9F4C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_1000A9E48()
{
  result = qword_10032FAA8;
  if (!qword_10032FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FAA8);
  }

  return result;
}

unint64_t sub_1000A9EA0()
{
  result = qword_10032FAB0;
  if (!qword_10032FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FAB0);
  }

  return result;
}

unint64_t sub_1000A9EF8()
{
  result = qword_10032FAB8;
  if (!qword_10032FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FAB8);
  }

  return result;
}

unint64_t sub_1000A9F4C()
{
  result = qword_10032FAC0;
  if (!qword_10032FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FAC0);
  }

  return result;
}

uint64_t sub_1000A9FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockScreenPasscodeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AA008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockScreenPasscodeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AA06C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for LockScreenPasscodeView() - 8);
  v12 = v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80));

  return sub_1000A77F4(a1, a2, a3, v12, a4, a5);
}

uint64_t sub_1000AA114(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032DD58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AA184()
{
  v19 = sub_10002B6CC(&qword_10032DD58);
  v20 = *(*(v19 - 8) + 64);
  v21 = (*(*(v19 - 8) + 80) + 16) & ~*(*(v19 - 8) + 80);
  v22 = v0;
  v1 = v0 + v21;
  v2 = v0 + v21 + *(sub_10002B6CC(&qword_10032FAC8) + 44);
  v3 = sub_10002B6CC(&qword_10032FAD0);
  v4 = v2 + v3[12];
  v5 = sub_10002B6CC(&qword_10032FAD8);
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_10002B6CC(&qword_10032FAE0);

  sub_10002B6CC(&qword_10032FAE8);

  v6 = *(sub_10002B6CC(&qword_10032FAF0) + 36);
  v7 = type metadata accessor for AccessibilityAttachmentModifier();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v2 + v3[16];

  v9 = v8 + *(sub_10002B6CC(&qword_10032FAF8) + 36);

  v10 = sub_10002B6CC(&qword_10032E700);
  v11 = *(v10 + 28);
  v12 = type metadata accessor for ColorScheme();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);
  v14 = v2 + v3[24];

  if (*(v14 + 384))
  {
  }

  if (*(v14 + 400))
  {
  }

  v15 = v1 + *(v19 + 36);
  sub_10002B6CC(&qword_10032FB00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v16 = type metadata accessor for Material();
    (*(*(v16 - 8) + 8))(v15, v16);
    v17 = v15 + *(sub_10002B6CC(&qword_10032FB08) + 36);

    v13(v17 + *(v10 + 28), v12);
  }

  return _swift_deallocObject(v22, v21 + v20);
}

uint64_t sub_1000AA550()
{
  v1 = *(sub_10002B6CC(&qword_10032DD58) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100069CAC(v2);
}

unint64_t sub_1000AA5E4()
{
  result = qword_10032FB38;
  if (!qword_10032FB38)
  {
    sub_10002CAF8(&qword_10032FB08);
    sub_1000AA69C();
    sub_10002CD18(&qword_10032E760, &qword_10032E700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB38);
  }

  return result;
}

unint64_t sub_1000AA69C()
{
  result = qword_10032FB40;
  if (!qword_10032FB40)
  {
    sub_10002CAF8(&qword_10032FB28);
    sub_1000AA728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB40);
  }

  return result;
}

unint64_t sub_1000AA728()
{
  result = qword_10032FB48;
  if (!qword_10032FB48)
  {
    sub_10002CAF8(&qword_10032FB18);
    sub_1000AA7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB48);
  }

  return result;
}

unint64_t sub_1000AA7B4()
{
  result = qword_10032FB50;
  if (!qword_10032FB50)
  {
    sub_10002CAF8(&qword_10032FB58);
    sub_1000AA86C();
    sub_10002CD18(&qword_10032FB68, &qword_10032C4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB50);
  }

  return result;
}

unint64_t sub_1000AA86C()
{
  result = qword_10032FB60;
  if (!qword_10032FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB60);
  }

  return result;
}

unint64_t sub_1000AA8C0()
{
  result = qword_10032FB70;
  if (!qword_10032FB70)
  {
    sub_10002CAF8(&qword_10032FB30);
    sub_1000AA94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB70);
  }

  return result;
}

unint64_t sub_1000AA94C()
{
  result = qword_10032FB78;
  if (!qword_10032FB78)
  {
    sub_10002CAF8(&qword_10032FB80);
    sub_1000AA9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB78);
  }

  return result;
}

unint64_t sub_1000AA9D8()
{
  result = qword_10032FB88;
  if (!qword_10032FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FB88);
  }

  return result;
}

unint64_t sub_1000AAA34()
{
  result = qword_10032FBB0;
  if (!qword_10032FBB0)
  {
    sub_10002CAF8(&qword_10032FB90);
    sub_1000AAAEC();
    sub_10002CD18(&qword_10032E308, &qword_10032E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FBB0);
  }

  return result;
}

unint64_t sub_1000AAAEC()
{
  result = qword_10032FBB8;
  if (!qword_10032FBB8)
  {
    sub_10002CAF8(&qword_10032FBC0);
    sub_10002CD18(&qword_10032FBA8, &qword_10032C248);
    sub_1000AAED4(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FBB8);
  }

  return result;
}

unint64_t sub_1000AABE4()
{
  result = qword_10032FBC8;
  if (!qword_10032FBC8)
  {
    sub_10002CAF8(&qword_10032FB98);
    sub_1000AAC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FBC8);
  }

  return result;
}

unint64_t sub_1000AAC70()
{
  result = qword_10032FBD0;
  if (!qword_10032FBD0)
  {
    sub_10002CAF8(&qword_10032FAE8);
    sub_1000AAD28();
    sub_10002CD18(&qword_10032D458, &qword_10032D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FBD0);
  }

  return result;
}

unint64_t sub_1000AAD28()
{
  result = qword_10032FBD8;
  if (!qword_10032FBD8)
  {
    sub_10002CAF8(&qword_10032FAE0);
    sub_10002CAF8(&qword_10032FB90);
    sub_1000AAA34();
    swift_getOpaqueTypeConformance2();
    sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FBD8);
  }

  return result;
}

uint64_t sub_1000AAE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032FBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AAEBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AAED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AAF3C()
{
  v1 = type metadata accessor for LockScreenPasscodeView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  sub_100065554(*(v4 + 16), *(v4 + 24), *(v4 + 25));
  v5 = *(v1 + 24);
  sub_10002B6CC(&qword_10032CEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000AB0E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LockScreenPasscodeView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000AB158()
{
  v1 = type metadata accessor for LockScreenPasscodeView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  sub_100065554(*(v4 + 16), *(v4 + 24), *(v4 + 25));
  v5 = *(v1 + 24);
  sub_10002B6CC(&qword_10032CEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000AB300()
{
  v1 = *(type metadata accessor for LockScreenPasscodeView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A8F10(v0 + v2, v3);
}

uint64_t sub_1000AB390()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LockScreenPasscodeView();
  return (*(v1 + *(v2 + 48)))(1);
}

uint64_t sub_1000AB448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10003AFFC(a3, v22 - v9, &qword_10032D050);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10002C51C(v10, &qword_10032D050);
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

      sub_10002C51C(a3, &qword_10032D050);

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

  sub_10002C51C(a3, &qword_10032D050);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000AB6F8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for CGRect(0);
  State.init(wrappedValue:)();
  if (qword_10032B4D8 != -1)
  {
    swift_once();
  }

  v8 = *(qword_1003368B0 + OBJC_IVAR____TtC12ClarityBoard18BiometricInterface_devices);
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    if (v12)
    {
      v13 = 1;
LABEL_12:
      result = swift_getKeyPath();
      *a4 = v16;
      *(a4 + 16) = v17;
      *(a4 + 32) = v18;
      *(a4 + 40) = a1 & 1;
      *(a4 + 48) = a2;
      *(a4 + 56) = a3;
      *(a4 + 64) = v13;
      *(a4 + 72) = result;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      return result;
    }

LABEL_11:
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    v13 = v15 == 1;
    goto LABEL_12;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL sub_1000AB99C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 type];
  if (v7 != 7)
  {
    return v7 == 7;
  }

  if ([a1 context])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (*(&v27 + 1))
  {
    sub_10002B6CC(&qword_10032FE30);
    if (swift_dynamicCast())
    {
      v8 = v24[0];
      v9 = *(v1 + OBJC_IVAR___CLBStatusBarSceneDelegate_viewController);
      if (v9)
      {
        v10 = v9;
        sub_1000ABCFC(v8);
      }

      return v7 == 7;
    }
  }

  else
  {
    sub_10002C51C(v28, &qword_10032B680);
  }

  if ([a1 context])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v11 = Logger.common.unsafeMutableAddressor();
    (*(v4 + 16))(v6, v11, v3);
    sub_10002C5D0(v28, &v26);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      sub_10002C5D0(&v26, v24);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_10002C9B0(&v26);
      v19 = sub_10005766C(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unexpected type for update status bar event context: %s", v14, 0xCu);
      sub_10002C9B0(v15);
    }

    else
    {

      sub_10002C9B0(&v26);
    }

    (*(v4 + 8))(v6, v3);
    sub_10002C9B0(v28);
  }

  else
  {
    v20 = *(v1 + OBJC_IVAR___CLBStatusBarSceneDelegate_viewController);
    if (v20)
    {
      v21 = v20;
      sub_1000ABCFC(_swiftEmptyArrayStorage);
    }
  }

  return v7 == 7;
}

uint64_t sub_1000ABCFC(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v9 - 8);
  v69 = &v63 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v63 - v15;
  v16 = sub_10002B6CC(&unk_10032FE20);
  v17 = __chkstk_darwin(v16 - 8);
  v74 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v70 = &v63 - v20;
  __chkstk_darwin(v19);
  v73 = &v63 - v21;
  v22 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_dismissSensorActivityIndicatorTask;
  v23 = *&v2[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_dismissSensorActivityIndicatorTask];
  v76 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_dismissSensorActivityIndicatorTask;
  if (v23)
  {

    sub_10002B6CC(&qword_10032C1A0);
    Task.cancel()();

    v22 = v76;
  }

  *&v2[v22] = 0;

  if (!*&v2[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityIndicator])
  {
    v32 = Logger.common.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v32, v5);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Attempted to update activity indicator before status bar view controller was shown.", v35, 2u);
    }

    return (*(v6 + 8))(v8, v5);
  }

  result = swift_allocObject();
  v25 = result;
  *(result + 16) = 0;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v26 = result;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_29:
    v48 = ObjectType;
    v49 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityShowDate;
    swift_beginAccess();
    v50 = &v2[v49];
    v51 = v74;
    sub_10003AFFC(v50, v74, &unk_10032FE20);
    if ((*(v12 + 48))(v51, 1, v11) == 1)
    {
      sub_10002C51C(v51, &unk_10032FE20);
    }

    else
    {
      v52 = v72;
      (*(v12 + 32))(v72, v51, v11);
      v53 = v71;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v55 = v54;
      v56 = *(v12 + 8);
      v56(v53, v11);
      if (v55 >= 3.0)
      {
        sub_1000ACF70();
        v56(v52, v11);
      }

      else
      {
        v57 = type metadata accessor for TaskPriority();
        v58 = v69;
        (*(*(v57 - 8) + 56))(v69, 1, 1, v57);
        type metadata accessor for MainActor();
        v59 = v2;
        v60 = static MainActor.shared.getter();
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        *(v61 + 24) = &protocol witness table for MainActor;
        *(v61 + 32) = v55;
        *(v61 + 40) = v59;
        *(v61 + 48) = v48;
        v62 = sub_1000AB448(0, 0, v58, &unk_10029CEE8, v61);
        v56(v52, v11);
        *&v2[v76] = v62;
      }
    }
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_29;
  }

LABEL_6:
  v65 = v26 - 1;
  if (v26 < 1)
  {
    __break(1u);
    return result;
  }

  v64 = ObjectType;
  v66 = v12;
  v67 = v11;
  v68 = v2;
  v75 = 0;
  for (i = 0; i != v26; ++i)
  {
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(a1 + 32 + 8 * i);
      }

      v29 = v28;
      v30 = [v28 dataAccessType];

      if (!v30)
      {
        *(v25 + 16) = 1;
        break;
      }

      if (v30 != 1)
      {
        break;
      }

      v75 = 1;
      if (v65 == i++)
      {
        goto LABEL_25;
      }
    }
  }

  if (v75)
  {
    v75 = 1;
  }

  else
  {
    v11 = v67;
    v2 = v68;
    v12 = v66;
    ObjectType = v64;
    if (*(v25 + 16) != 1)
    {
      goto LABEL_29;
    }

    v75 = 0;
  }

LABEL_25:
  v36 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityShowDate;
  v37 = v68;
  swift_beginAccess();
  v38 = v73;
  sub_10003AFFC(&v37[v36], v73, &unk_10032FE20);
  v39 = v66;
  v40 = v67;
  v41 = (*(v66 + 48))(v38, 1, v67);
  sub_10002C51C(v38, &unk_10032FE20);
  v42 = 0.0;
  if (v41 == 1)
  {
    v43 = v70;
    Date.init()();
    (*(v39 + 56))(v43, 0, 1, v40);
    swift_beginAccess();
    sub_1000AED5C(v43, &v37[v36]);
    swift_endAccess();
    v42 = 0.3;
  }

  v44 = objc_opt_self();
  v45 = swift_allocObject();
  *(v45 + 16) = v37;
  *(v45 + 24) = v75;
  *(v45 + 32) = v25;
  aBlock[4] = sub_1000AEE0C;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_100302078;
  v46 = _Block_copy(aBlock);
  v47 = v37;

  [v44 animateWithDuration:v46 animations:v42];
  _Block_release(v46);
}

void sub_1000AC6B0()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  type metadata accessor for ActivityIndicatorData(0);
  sub_1000AEBEC();

  ObservedObject.init(wrappedValue:)();
  v2 = objc_allocWithZone(sub_10002B6CC(&qword_10032FE18));
  v3 = UIHostingController.init(rootView:)();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [v3 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v1[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityIndicator];
  *&v1[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityIndicator] = v7;
  v9 = v7;

  [v1 addChildViewController:v3];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 addSubview:v9];

  sub_10002B6CC(&qword_10032B660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10029CD60;
  v13 = [v9 topAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v12 + 32) = v17;
  v18 = [v9 widthAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 widthAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v12 + 40) = v22;
  v23 = [v9 centerXAnchor];
  v24 = [v1 view];
  if (v24)
  {
    v25 = v24;
    v26 = objc_opt_self();
    v27 = [v25 centerXAnchor];

    v28 = [v23 constraintEqualToAnchor:v27];
    *(v12 + 48) = v28;
    sub_10002C9FC(0, &qword_10032B668);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];

    [v3 didMoveToParentViewController:v1];
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000ACAF0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000ACBD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 40) = v7;
  *(v5 + 48) = v6;

  return _swift_task_switch(sub_1000ACC6C, v7, v6);
}

uint64_t sub_1000ACC6C(unint64_t a1)
{
  v3 = 3.0 - *(v1 + 16);
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = 1000000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v1;
  v5[1] = sub_1000ACD68;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_1000ACD68()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1000ACF0C;
  }

  else
  {
    v5 = sub_1000ACEA4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000ACEA4()
{

  sub_1000ACF70();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ACF0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ACF70()
{
  v1 = type metadata accessor for Logger();
  v26 = *(v1 - 8);
  v27 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002B6CC(&unk_10032FE20);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityShowDate;
  swift_beginAccess();
  sub_10003AFFC(v0 + v10, v9, &unk_10032FE20);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  sub_10002C51C(v9, &unk_10032FE20);
  if (v13 == 1)
  {
    v14 = Logger.common.unsafeMutableAddressor();
    v16 = v26;
    v15 = v27;
    (*(v26 + 16))(v3, v14, v27);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Attempted to dismiss activity indicator, but it was not showing.", v19, 2u);
    }

    return (*(v16 + 8))(v3, v15);
  }

  else
  {
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    aBlock[4] = sub_1000AEE6C;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000357AC;
    aBlock[3] = &unk_1003020C8;
    v23 = _Block_copy(aBlock);
    v24 = v0;

    [v21 animateWithDuration:v23 animations:0.3];
    _Block_release(v23);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_1000AED5C(v7, v0 + v10);
    return swift_endAccess();
  }
}

uint64_t sub_1000AD300()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_1000AD3B8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_statusBar] = 0;
  *&v3[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityIndicator] = 0;
  v7 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityShowDate;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_dismissSensorActivityIndicatorTask] = 0;
  v9 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_activityIndicatorData;
  type metadata accessor for ActivityIndicatorData(0);
  v10 = swift_allocObject();
  Published.init(initialValue:)();
  v15 = 0;
  Published.init(initialValue:)();
  *&v3[v9] = v10;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_1000AD58C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_statusBar] = 0;
  *&v1[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityIndicator] = 0;
  v4 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_sensorActivityShowDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_dismissSensorActivityIndicatorTask] = 0;
  v6 = OBJC_IVAR____TtC12ClarityBoard23StatusBarViewController_activityIndicatorData;
  type metadata accessor for ActivityIndicatorData(0);
  v7 = swift_allocObject();
  Published.init(initialValue:)();
  v11 = 0;
  Published.init(initialValue:)();
  *&v1[v6] = v7;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

void sub_1000AD7B0()
{
  sub_1000AD85C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000AD85C()
{
  if (!qword_10032FCA0)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10032FCA0);
    }
  }
}

id sub_1000AD8F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v1 = [v0 layer];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = &kCAPrivacyIndicatorTypeCamera;
LABEL_7:
      [v2 setPrivacyIndicatorType:*v3];
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 != 1)
    {
      v4 = 1;
      return [v0 setHidden:v4];
    }

    v1 = [v0 layer];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = &kCAPrivacyIndicatorTypeMicrophoneAccessibility;
      goto LABEL_7;
    }
  }

  v4 = 0;
  return [v0 setHidden:v4];
}

id sub_1000ADB74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000ADBD0()
{
  type metadata accessor for SecureSafeIndicatorView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1000ADC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000AF3CC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000ADC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000AF3CC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000ADCFC()
{
  sub_1000AF3CC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_1000ADD24@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v4 = sub_10002B6CC(&qword_10032FE38);
  sub_1000ADDF8(a1 + *(v4 + 44), a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = (a1 + *(sub_10002B6CC(&qword_10032FE40) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1000ADDF8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v31 = a1;
  v3 = sub_10002B6CC(&qword_10032FE48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = sub_10002B6CC(&qword_10032FE50);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = sub_10002B6CC(&qword_10032FE58);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = (&v30 - v18);
  *v19 = static Alignment.center.getter();
  v19[1] = v20;
  v21 = sub_10002B6CC(&unk_10032FE60);
  sub_1000AE198((v19 + *(v21 + 44)), a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = (v19 + *(v14 + 44));
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;
  v22[2] = v34;
  sub_10002C9FC(0, &qword_10032BF60);
  v24 = [swift_getObjCClassFromMetadata() sharedInstance];
  v25 = [v24 batteryMonitoringEnabled];

  if (v25)
  {
    sub_10002E824(v6);
    *&v6[*(v3 + 36)] = 0;
    sub_1000404F8(v6, v12, &qword_10032FE48);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v4 + 56))(v12, v26, 1, v3);
  sub_10003AFFC(v19, v17, &qword_10032FE58);
  sub_10003AFFC(v12, v10, &qword_10032FE50);
  v27 = v31;
  sub_10003AFFC(v17, v31, &qword_10032FE58);
  v28 = sub_10002B6CC(&qword_10032FE70);
  sub_10003AFFC(v10, v27 + *(v28 + 48), &qword_10032FE50);
  sub_10002C51C(v12, &qword_10032FE50);
  sub_10002C51C(v19, &qword_10032FE58);
  sub_10002C51C(v10, &qword_10032FE50);
  return sub_10002C51C(v17, &qword_10032FE58);
}

uint64_t sub_1000AE198@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v38 = a1;
  v34 = sub_10002B6CC(&qword_10032FE78);
  __chkstk_darwin(v34);
  v35 = (&v32 - v3);
  v36 = sub_10002B6CC(&qword_10032FE80);
  __chkstk_darwin(v36);
  v5 = (&v32 - v4);
  v6 = sub_10002B6CC(&qword_10032FE88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_10002B6CC(&qword_10032FE90);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  type metadata accessor for ActivityIndicatorData(0);
  sub_1000AEBEC();

  v37 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = MGGetBoolAnswer();

  if ((v19 & 1) == 0)
  {
    v33 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v40 == 1)
    {
      v20 = static Color.green.getter();
      v21 = a2 * 0.5;
      v22 = (v5 + *(v36 + 36));
      v23 = *(type metadata accessor for RoundedRectangle() + 20);
      v24 = enum case for RoundedCornerStyle.continuous(_:);
      v25 = type metadata accessor for RoundedCornerStyle();
      (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
      *v22 = v21;
      v22[1] = v21;
      *(v22 + *(sub_10002B6CC(&qword_10032C270) + 36)) = 256;
      *v5 = v20;
      sub_10003AFFC(v5, v35, &qword_10032FE80);
      swift_storeEnumTagMultiPayload();
      sub_1000AF140();
      _ConditionalContent<>.init(storage:)();
      sub_10002C51C(v5, &qword_10032FE80);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v39 != 1)
      {
        v26 = 1;
        goto LABEL_9;
      }

      *v35 = static Color.orange.getter();
      swift_storeEnumTagMultiPayload();
      sub_1000AF140();
      _ConditionalContent<>.init(storage:)();
    }

    v26 = 0;
LABEL_9:
    v27 = v33;
    v28 = sub_10002B6CC(&qword_10032FE98);
    (*(*(v28 - 8) + 56))(v9, v26, 1, v28);
    sub_1000404F8(v9, v15, &qword_10032FE88);
    (*(v7 + 56))(v15, 0, 1, v27);
    goto LABEL_10;
  }

  (*(v7 + 56))(v15, 1, 1, v6);
LABEL_10:
  sub_10003AFFC(v15, v13, &qword_10032FE90);
  v29 = v38;
  *v38 = v37;
  v29[1] = v17;
  v30 = sub_10002B6CC(&qword_10032FEA0);
  sub_10003AFFC(v13, v29 + *(v30 + 48), &qword_10032FE90);

  sub_10002C51C(v15, &qword_10032FE90);
  sub_10002C51C(v13, &qword_10032FE90);
}

double sub_1000AE728@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;

  sub_1000AB6F8(1, sub_1000AF0BC, v6, v13);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = v13[3];
  *(a1 + 32) = v13[2];
  *(a1 + 48) = v9;
  v10 = v13[5];
  *(a1 + 64) = v13[4];
  *(a1 + 80) = v10;
  result = *v13;
  v12 = v13[1];
  *a1 = v13[0];
  *(a1 + 16) = v12;
  *(a1 + 96) = KeyPath;
  *(a1 + 104) = sub_1000AF120;
  *(a1 + 112) = v8;
  return result;
}

uint64_t sub_1000AE824()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000AE890()
{
  v1 = OBJC_IVAR____TtC12ClarityBoard21ActivityIndicatorData__isUsingCamera;
  v2 = sub_10002B6CC(&qword_10032FE00);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12ClarityBoard21ActivityIndicatorData__isUsingMic, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

void sub_1000AE990()
{
  sub_100036814();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000AEA20@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityIndicatorData(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000AEA60@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000AEB04()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1000AEBEC()
{
  result = qword_10032FE10;
  if (!qword_10032FE10)
  {
    type metadata accessor for ActivityIndicatorData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FE10);
  }

  return result;
}

uint64_t sub_1000AEC54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000AEC94(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E558;

  return sub_1000ACBD0(v6, a1, v4, v5, v7);
}

uint64_t sub_1000AED5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&unk_10032FE20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AEDCC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000AEE1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AEE34()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000AEE74@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

void sub_1000AEEE0()
{
  objc_opt_self();
  v1 = [objc_allocWithZone(CLBSecureWindow) initWithWindowScene:swift_dynamicCastObjCClassUnconditional()];
  type metadata accessor for StatusBarViewController(0);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = v1;
  [v3 setRootViewController:v2];
  [v3 makeKeyAndVisible];

  v4 = *(v0 + OBJC_IVAR___CLBStatusBarSceneDelegate_window);
  *(v0 + OBJC_IVAR___CLBStatusBarSceneDelegate_window) = v3;

  v5 = *(v0 + OBJC_IVAR___CLBStatusBarSceneDelegate_viewController);
  *(v0 + OBJC_IVAR___CLBStatusBarSceneDelegate_viewController) = v2;
}

uint64_t sub_1000AEFD0(uint64_t a1, int a2)
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

uint64_t sub_1000AF018(uint64_t result, int a2, int a3)
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

uint64_t sub_1000AF084()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000AF0C8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000AF140()
{
  result = qword_10032FEA8;
  if (!qword_10032FEA8)
  {
    sub_10002CAF8(&qword_10032FE80);
    sub_10002CD18(&unk_10032FEB0, &qword_10032C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FEA8);
  }

  return result;
}

uint64_t sub_1000AF1F8(uint64_t a1, int a2)
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

uint64_t sub_1000AF240(uint64_t result, int a2, int a3)
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

unint64_t sub_1000AF290()
{
  result = qword_10032FEC0;
  if (!qword_10032FEC0)
  {
    sub_10002CAF8(&qword_10032FEC8);
    sub_10002CD18(&qword_10032FED0, &qword_10032FED8);
    sub_10002CD18(&unk_10032FEE0, &qword_10032D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FEC0);
  }

  return result;
}

unint64_t sub_1000AF378()
{
  result = qword_10032FEF0;
  if (!qword_10032FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FEF0);
  }

  return result;
}

unint64_t sub_1000AF3CC()
{
  result = qword_10032FEF8;
  if (!qword_10032FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FEF8);
  }

  return result;
}

uint64_t sub_1000AF430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Int sub_1000AF4A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 2);
  return Hasher._finalize()();
}

Swift::Int sub_1000AF51C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 2);
  return Hasher._finalize()();
}

uint64_t sub_1000AF560@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AFE54(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1000AF59C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1 != 1;
}

uint64_t sub_1000AF66C()
{
  if ([v0 hotLevel] >= 0x28 || objc_msgSend(v0, "hotLevel") >= 0x1E || objc_msgSend(v0, "hotLevel") >= 0x14 || objc_msgSend(v0, "coldLevel") >= 0x1E)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v0;
  }

  else
  {
    [v0 coldLevel];
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v0;
  }

  return static Published.subscript.setter();
}

id sub_1000AF998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObservableThermalController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ObservableThermalController()
{
  result = qword_10032FF30;
  if (!qword_10032FF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AFA9C()
{
  sub_1000AFB2C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000AFB2C()
{
  if (!qword_10032FF40)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10032FF40);
    }
  }
}

uint64_t getEnumTagSinglePayload for ObservableThermalController.ThermalLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObservableThermalController.ThermalLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000AFCD0()
{
  result = qword_10032FF48;
  if (!qword_10032FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FF48);
  }

  return result;
}

uint64_t sub_1000AFD24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableThermalController();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000AFD64@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000AFDE4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000AFE54(uint64_t a1)
{
  if ((a1 + 2) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 + 2;
  }
}

uint64_t sub_1000AFE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002B6CC(&qword_10032FF58);
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002B6CC(&qword_10032FF60);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v28 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v35;
  if (v35 >> 60 != 15)
  {
    v29 = v9;
    v30 = v2;
    v31 = a1;
    v12 = v34;
    v13 = objc_allocWithZone(UIImage);
    sub_100085A90(v12, v11);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = [v13 initWithData:isa];

    sub_1000663C8(v12, v11);
    if (v15)
    {
      v28 = v15;
      Image.init(uiImage:)();
      (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
      v16 = Image.resizable(capInsets:resizingMode:)();

      (*(v6 + 8))(v8, v5);
      v17 = static Edge.Set.all.getter();
      v34 = v16;
      v35 = 0;
      LOWORD(v36) = 257;
      BYTE2(v36) = v17;
      BYTE3(v36) = 1;
      v18 = sub_10002B6CC(&qword_10032FF70);
      v19 = sub_1000B03A4();
      v20 = v32;
      View.accessibilityChildren<A>(children:)();

      v21 = v33;
      v22 = v29;
      (*(v33 + 16))(v4, v20, v29);
      swift_storeEnumTagMultiPayload();
      sub_10002B6CC(&qword_10032FF68);
      v34 = v18;
      v35 = &type metadata for EmptyView;
      v36 = v19;
      v37 = &protocol witness table for EmptyView;
      swift_getOpaqueTypeConformance2();
      sub_1000B04BC();
      _ConditionalContent<>.init(storage:)();

      sub_1000663C8(v12, v11);
      return (*(v21 + 8))(v20, v22);
    }

    sub_1000663C8(v12, v11);
  }

  v24 = static Color.clarityUIContentBackground.getter();
  v25 = static Edge.Set.all.getter();
  *v4 = v24;
  v4[8] = v25;
  swift_storeEnumTagMultiPayload();
  sub_10002B6CC(&qword_10032FF68);
  v26 = sub_10002CAF8(&qword_10032FF70);
  v27 = sub_1000B03A4();
  v34 = v26;
  v35 = &type metadata for EmptyView;
  v36 = v27;
  v37 = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  sub_1000B04BC();
  return _ConditionalContent<>.init(storage:)();
}

unint64_t sub_1000B03A4()
{
  result = qword_10032FF78;
  if (!qword_10032FF78)
  {
    sub_10002CAF8(&qword_10032FF70);
    sub_1000B0430();
    sub_100030F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FF78);
  }

  return result;
}

unint64_t sub_1000B0430()
{
  result = qword_10032FF80;
  if (!qword_10032FF80)
  {
    sub_10002CAF8(&qword_10032FF88);
    sub_100030EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FF80);
  }

  return result;
}

unint64_t sub_1000B04BC()
{
  result = qword_10032FF90;
  if (!qword_10032FF90)
  {
    sub_10002CAF8(&qword_10032FF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FF90);
  }

  return result;
}

unint64_t sub_1000B0544()
{
  result = qword_10032FF98;
  if (!qword_10032FF98)
  {
    sub_10002CAF8(&qword_10032FFA0);
    sub_10002CAF8(&qword_10032FF70);
    sub_1000B03A4();
    swift_getOpaqueTypeConformance2();
    sub_1000B04BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032FF98);
  }

  return result;
}

id sub_1000B06D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthKitUIPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B0730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000B078C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1000B0810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 0x8000000000000000) != 0)
  {
    if (v2 < 0)
    {
      sub_100034C8C();
      if (static NSObject.== infix(_:_:)())
      {
        return static NSObject.== infix(_:_:)() & 1;
      }
    }
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    sub_100034C8C();
    if (static NSObject.== infix(_:_:)())
    {
      return static NSObject.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

id sub_1000B0A14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertOverlaySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B0AA8@<X0>(void *a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002B6CC(&qword_10032EE98);
  v5 = __chkstk_darwin(v4 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v41 - v7;
  v8 = sub_10002B6CC(&qword_100330078);
  v9 = __chkstk_darwin(v8 - 8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v41 - v11;
  v12 = Image.init(systemName:)();
  v13 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v49 = v12;
  v50 = KeyPath;
  v51 = v13;
  sub_10002B6CC(&qword_10032E300);
  sub_100073AB0();
  View.accessibilityHidden(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  static Font.title.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100047B84(v15, v17, v19 & 1);

  v49 = v20;
  v50 = v22;
  LOBYTE(v51) = v24 & 1;
  v52 = v26;
  static AccessibilityTraits.isHeader.getter();
  v27 = v46;
  View.accessibilityAddTraits(_:)();
  (*(v42 + 8))(v3, v43);
  sub_100047B84(v20, v22, v24 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v28 = Text.init(_:tableName:bundle:comment:)();
  v30 = v29;
  LODWORD(v42) = v31;
  v43 = v32;
  v33 = v47;
  sub_10003AFFC(v48, v47, &qword_100330078);
  v34 = v44;
  sub_10003AFFC(v27, v44, &qword_10032EE98);
  v35 = v45;
  *v45 = 0;
  *(v35 + 8) = 1;
  v36 = v35;
  v37 = sub_10002B6CC(&qword_100330080);
  sub_10003AFFC(v33, v36 + v37[12], &qword_100330078);
  sub_10003AFFC(v34, v36 + v37[16], &qword_10032EE98);
  v38 = v36 + v37[20];
  *v38 = v28;
  *(v38 + 8) = v30;
  LOBYTE(v33) = v42 & 1;
  *(v38 + 16) = v42 & 1;
  *(v38 + 24) = v43;
  v39 = v36 + v37[24];
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_100047B94(v28, v30, v33);

  sub_10002C51C(v46, &qword_10032EE98);
  sub_10002C51C(v48, &qword_100330078);
  sub_100047B84(v28, v30, v33);

  sub_10002C51C(v34, &qword_10032EE98);
  return sub_10002C51C(v47, &qword_100330078);
}

uint64_t sub_1000B0FDC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10002B6CC(&qword_100330060);
  sub_1000B0AA8((a1 + *(v2 + 44)));
  KeyPath = swift_getKeyPath();
  v4 = a1 + *(sub_10002B6CC(&qword_100330068) + 36);
  *v4 = KeyPath;
  *(v4 + 8) = 1;
  v5 = static Color.clarityUIContentBackground.getter();
  v6 = static Edge.Set.all.getter();
  result = sub_10002B6CC(&qword_100330070);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

uint64_t sub_1000B10A4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B10D0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B114C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B1178@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000B1218()
{
  result = qword_100330088;
  if (!qword_100330088)
  {
    sub_10002CAF8(&qword_100330070);
    sub_1000B12D0();
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330088);
  }

  return result;
}

unint64_t sub_1000B12D0()
{
  result = qword_100330090;
  if (!qword_100330090)
  {
    sub_10002CAF8(&qword_100330068);
    sub_10002CD18(&qword_100330098, &qword_1003300A0);
    sub_10002CD18(&qword_10032D458, &qword_10032D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330090);
  }

  return result;
}

unint64_t sub_1000B13B8()
{
  result = qword_1003300A8;
  if (!qword_1003300A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003300A8);
  }

  return result;
}

uint64_t sub_1000B1414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  if (qword_10032B4D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for UserPreferences();
  sub_1000B2E8C(&qword_10032C4E8, type metadata accessor for UserPreferences);

  *a3 = ObservedObject.init(wrappedValue:)();
  a3[1] = v13;
  v14 = type metadata accessor for Home();
  Date.init()();
  (*(v7 + 16))(v10, v12, v6);
  State.init(wrappedValue:)();
  (*(v7 + 8))(v12, v6);
  v15 = a3 + v14[7];
  v22[0] = 0;
  v22[1] = 0;
  sub_10002B6CC(&qword_1003300B0);
  State.init(wrappedValue:)();
  v16 = v24;
  *v15 = v23;
  *(v15 + 2) = v16;
  v17 = v14[8];
  v22[0] = 0;
  sub_10002B6CC(&qword_1003300B8);
  State.init(wrappedValue:)();
  *(a3 + v17) = v23;
  v18 = v14[9];
  if (qword_10032B518 != -1)
  {
    swift_once();
  }

  *(a3 + v18) = qword_1003368E8;
  *(a3 + v14[10]) = 0x4049000000000000;
  *(a3 + v14[11]) = 0x4039000000000000;
  v19 = v14[12];
  *(a3 + v19) = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  v20 = (a3 + v14[6]);
  *v20 = a1;
  v20[1] = a2;
}

uint64_t type metadata accessor for Home()
{
  result = qword_100330118;
  if (!qword_100330118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B1770(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002B6CC(&qword_10032D840);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10002B6CC(&qword_10032D838);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000B18C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10002B6CC(&qword_10032D840);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10002B6CC(&qword_10032D838);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000B19FC()
{
  sub_10003F5D4();
  if (v0 <= 0x3F)
  {
    sub_1000B1B98(319, &qword_10032D8C8, &type metadata accessor for Date, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10003F9F8();
      if (v2 <= 0x3F)
      {
        sub_10003F8C4(319, &qword_100330128, &qword_1003300B0);
        if (v3 <= 0x3F)
        {
          sub_10003F8C4(319, &unk_100330130, &qword_1003300B8);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Applications(319);
            if (v5 <= 0x3F)
            {
              sub_1000B1B98(319, &qword_10032D8C0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
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

void sub_1000B1B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1000B1C18@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Home();
  v4 = *(v1 + *(v3 + 36));
  v5 = (v1 + *(v3 + 24));
  v6 = v5[1];
  v24 = *v5;
  v7 = qword_10032B4D0;

  if (v7 != -1)
  {
    swift_once();
  }

  type metadata accessor for UserPreferences();
  sub_1000B2E8C(&qword_10032C4E8, type metadata accessor for UserPreferences);

  v8 = ObservedObject.init(wrappedValue:)();
  v22 = v9;
  v23 = v8;
  v10 = static Color.clarityUIContentBackground.getter();
  v11 = static Edge.Set.all.getter();
  v12 = static Alignment.center.getter();
  v14 = v13;
  sub_1000B1F80(&v26);
  v39[8] = v34;
  v39[9] = v35;
  v39[10] = v36;
  v39[11] = v37;
  v39[4] = v30;
  v39[5] = v31;
  v39[6] = v32;
  v39[7] = v33;
  v39[0] = v26;
  v39[1] = v27;
  v39[2] = v28;
  v39[3] = v29;
  *&v38[151] = v35;
  *&v38[167] = v36;
  *&v38[183] = v37;
  *&v38[87] = v31;
  *&v38[103] = v32;
  *&v38[119] = v33;
  *&v38[135] = v34;
  *&v38[23] = v27;
  *&v38[39] = v28;
  *&v38[55] = v29;
  *&v38[71] = v30;
  *&v40 = v12;
  *(&v40 + 1) = v14;
  *&v38[7] = v26;
  *&v38[199] = v40;
  v41[8] = v34;
  v41[9] = v35;
  v41[10] = v36;
  v41[11] = v37;
  v41[4] = v30;
  v41[5] = v31;
  v41[6] = v32;
  v41[7] = v33;
  v41[0] = v26;
  v41[1] = v27;
  v41[2] = v28;
  v41[3] = v29;
  v42 = v12;
  v43 = v14;
  sub_10003AFFC(v39, &v25, &qword_100330180);
  sub_10002C51C(v41, &qword_100330180);
  v15 = *&v38[176];
  *(a1 + 209) = *&v38[160];
  *(a1 + 225) = v15;
  *(a1 + 241) = *&v38[192];
  v16 = *&v38[112];
  *(a1 + 145) = *&v38[96];
  *(a1 + 161) = v16;
  v17 = *&v38[144];
  *(a1 + 177) = *&v38[128];
  *(a1 + 193) = v17;
  v18 = *&v38[48];
  *(a1 + 81) = *&v38[32];
  *(a1 + 97) = v18;
  v19 = *&v38[80];
  *(a1 + 113) = *&v38[64];
  *(a1 + 129) = v19;
  result = *v38;
  v21 = *&v38[16];
  *(a1 + 49) = *v38;
  *a1 = v4;
  *(a1 + 8) = v24;
  *(a1 + 16) = v6;
  *(a1 + 24) = v23;
  *(a1 + 32) = v22;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 256) = *&v38[207];
  *(a1 + 65) = v21;
  return result;
}

uint64_t sub_1000B1F80@<X0>(_OWORD *a1@<X8>)
{
  sub_100035D1C();
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v2 showTimeInStatusBar])
  {
    sub_1000AF424(v57, 0, sub_1000B22E4, 0);
    v35 = v57[1];
    v36 = v57[0];
    v33 = v57[3];
    v34 = v57[2];
    v31 = v57[5];
    v32 = v57[4];
    v29 = v57[7];
    v30 = v57[6];
    v27 = v57[9];
    v28 = v57[8];
    v26 = v57[10];
    v25 = v58;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v25 = 0;
  }

  v3 = [v2 batteryMonitoringEnabled];

  if (v3)
  {
    sub_1000AF424(v59, 1, sub_1000B28B0, 0);
    v5 = v59[0];
    v4 = v59[1];
    v7 = v59[2];
    v6 = v59[3];
    v9 = v59[4];
    v8 = v59[5];
    v11 = v59[6];
    v10 = v59[7];
    v13 = v59[8];
    v12 = v59[9];
    v14 = v59[10];
    v15 = v60;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v10 = 0;
    v11 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v7 = 0;
    v4 = 0;
    v5 = 0;
    v14 = 0;
    v15 = 0;
  }

  v21 = v13;
  v22 = v12;
  v23 = v15;
  v24 = v14;
  *&v43 = v36;
  *(&v43 + 1) = v35;
  *&v44 = v34;
  *(&v44 + 1) = v33;
  *&v45 = v32;
  *(&v45 + 1) = v31;
  *&v46 = v30;
  *(&v46 + 1) = v29;
  *v47 = v28;
  *&v47[8] = v27;
  *&v47[16] = v26;
  v47[24] = v25;
  v37 = v43;
  v38 = v44;
  *&v41[9] = *&v47[9];
  v40 = v46;
  *v41 = *v47;
  v39 = v45;
  *&v48 = v5;
  *(&v48 + 1) = v4;
  *&v49 = v7;
  *(&v49 + 1) = v6;
  *&v50 = v9;
  *(&v50 + 1) = v8;
  *&v51 = v11;
  *(&v51 + 1) = v10;
  *v52 = v13;
  *&v52[8] = v12;
  *&v52[16] = v14;
  v52[24] = v15;
  sub_1000B2CCC(&v43, v55);
  sub_10003AFFC(&v48, v55, &qword_100330190);

  *&v42[9] = *&v52[9];
  v16 = v51;
  *v42 = *v52;
  v17 = v50;
  a1[4] = *v41;
  a1[5] = *&v41[16];
  a1[2] = v39;
  a1[3] = v40;
  *a1 = v37;
  a1[1] = v38;
  v18 = v48;
  v19 = v49;
  a1[8] = v17;
  a1[9] = v16;
  a1[6] = v18;
  a1[7] = v19;
  *(a1 + 169) = *&v42[9];
  a1[10] = *v42;
  v53[0] = v5;
  v53[1] = v4;
  v53[2] = v7;
  v53[3] = v6;
  v53[4] = v9;
  v53[5] = v8;
  v53[6] = v11;
  v53[7] = v10;
  v53[8] = v21;
  v53[9] = v22;
  v53[10] = v24;
  v54 = v23;
  sub_10002C51C(v53, &qword_100330190);
  v55[0] = v36;
  v55[1] = v35;
  v55[2] = v34;
  v55[3] = v33;
  v55[4] = v32;
  v55[5] = v31;
  v55[6] = v30;
  v55[7] = v29;
  v55[8] = v28;
  v55[9] = v27;
  v55[10] = v26;
  v56 = v25;
  return sub_10002C51C(v55, &qword_100330188);
}

uint64_t sub_1000B22E4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for PeriodicTimelineSchedule();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  Date.init()();
  (*(v1 + 16))(v4, v6, v0);
  PeriodicTimelineSchedule.init(from:by:)();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 16))(v11, v13, v7);
  sub_1000B2E8C(&qword_100330198, &type metadata accessor for PeriodicTimelineSchedule);
  TimelineView<>.init(_:content:)();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1000B2550@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v2 - 8);
  v4 = &v33[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002B6CC(&qword_1003301A0);
  TimelineView.Context.date.getter();
  if (qword_10032B4E8 != -1)
  {
    swift_once();
  }

  v9 = qword_10032D828;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 stringFromDate:isa];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  (*(v6 + 8))(v8, v5);
  v34 = v12;
  v35 = v14;
  sub_100030970();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(v11) = v18;
  static Font.Weight.semibold.getter();
  v19 = enum case for Font.Design.rounded(_:);
  v20 = type metadata accessor for Font.Design();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v4, v19, v20);
  (*(v21 + 56))(v4, 0, 1, v20);
  static Font.system(size:weight:design:)();
  sub_10002C51C(v4, &qword_10032D048);
  v22 = Text.font(_:)();
  v24 = v23;
  LOBYTE(v20) = v25;

  sub_100047B84(v15, v17, v11 & 1);

  v34 = static Color.primary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  LOBYTE(v11) = v29;
  v31 = v30;
  sub_100047B84(v22, v24, v20 & 1);

  *a1 = v26;
  *(a1 + 8) = v28;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v31;
  return result;
}

uint64_t sub_1000B28B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v2 = sub_10002B6CC(&qword_1003301B0);
  return sub_1000B2900(a1 + *(v2 + 44));
}

uint64_t sub_1000B2900@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BatteryView();
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_1003301B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = sub_10002B6CC(&qword_1003301C0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = v32;
  v26 = v33;
  v25 = v34;
  v24 = v35;
  v22 = v37;
  v23 = v36;
  sub_10002E824(v7);
  static AccessibilityChildBehavior.combine.getter();
  v18 = sub_1000B2E8C(&qword_1003301C8, type metadata accessor for BatteryView);
  View.accessibilityElement(children:)();
  (*(v28 + 8))(v4, v29);
  sub_1000B2ED4(v7);
  v30 = v5;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  (*(v9 + 8))(v11, v8);
  sub_10003AFFC(v17, v15, &qword_1003301C0);
  *a1 = v27;
  *(a1 + 8) = v26;
  *(a1 + 16) = v25;
  *(a1 + 24) = v24;
  v19 = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = v19;
  *(a1 + 48) = 0;
  v20 = sub_10002B6CC(&qword_1003301D0);
  sub_10003AFFC(v15, a1 + *(v20 + 48), &qword_1003301C0);
  sub_10002C51C(v17, &qword_1003301C0);
  return sub_10002C51C(v15, &qword_1003301C0);
}

uint64_t sub_1000B2CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_100330188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B2D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_1003301A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = sub_10002B6CC(&qword_1003301A8);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    sub_1000B2550(&v14);
    result = (*(v5 + 8))(v8, v4);
    v12 = v15;
    v13 = v16;
    *a2 = v14;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B2E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B2ED4(uint64_t a1)
{
  v2 = type metadata accessor for BatteryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B2F34()
{
  result = qword_1003301D8;
  if (!qword_1003301D8)
  {
    sub_10002CAF8(&qword_1003301E0);
    sub_1000B2FEC();
    sub_10002CD18(qword_100330200, &qword_100330180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003301D8);
  }

  return result;
}

unint64_t sub_1000B2FEC()
{
  result = qword_1003301E8;
  if (!qword_1003301E8)
  {
    sub_10002CAF8(&qword_1003301F0);
    sub_1000B30A4();
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003301E8);
  }

  return result;
}

unint64_t sub_1000B30A4()
{
  result = qword_1003301F8;
  if (!qword_1003301F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003301F8);
  }

  return result;
}

unint64_t sub_1000B30F8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_10003F9F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B3180(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1000B32BC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1000B34A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000B34E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000B3528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B35C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BackButtonSafeAreaInsetModifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, a1, a3);
  (*(v5 + 32))(v11, v7, a3);
  View.modifier<A>(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000B377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for BackButton();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1000B380C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v2 + 32))(v6 + v5, v4, a1);
  v9 = sub_10002CAF8(&qword_1003303A8);
  v10 = sub_1000B5864();
  v24 = v9;
  v25 = v7;
  v26 = v10;
  v27 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = v9;
  v25 = v7;
  v26 = v10;
  v27 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = OpaqueTypeMetadata2;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v24 = OpaqueTypeMetadata2;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for InvertColorsOnlyInLightModeView();
  swift_getWitnessTable();
  KeyPath = swift_getKeyPath();
  v29 = 0;
  v30[0] = KeyPath;
  v30[1] = 0;
  v31 = 0;
  v19 = sub_1000B57D8;
  v20 = v6;
  v21 = KeyPath;
  v22 = 0;
  v23 = 0;
  v14 = type metadata accessor for BackButtonWidthView();
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(&v19, v14, WitnessTable);

  sub_10002C51C(v30, &qword_10032E938);
  v16 = v26;
  v17 = v27;
  LOBYTE(v7) = v28;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  sub_100086FE8(&v19, v14, WitnessTable);

  return sub_100065554(v16, v17, v7);
}

uint64_t sub_1000B3AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35[1] = a1;
  v46 = a4;
  v7 = sub_10002B6CC(&qword_1003303C0);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  __chkstk_darwin(v7);
  v41 = v35 - v9;
  v10 = sub_10002B6CC(&qword_1003303A8);
  __chkstk_darwin(v10);
  v42 = v35 - v11;
  v12 = sub_1000B5864();
  v47 = v10;
  v48 = a2;
  v39 = v12;
  v40 = v10;
  v49 = v12;
  v50 = a3;
  v13 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v38 = v35 - v15;
  v47 = v10;
  v48 = a2;
  v35[2] = a2;
  v35[3] = a3;
  v49 = v13;
  v50 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = OpaqueTypeMetadata2;
  v48 = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v47 = OpaqueTypeMetadata2;
  v48 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for InvertColorsOnlyInLightModeView();
  v37 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v35 - v22;
  v35[0] = *(a1 + *(type metadata accessor for BackButton() + 36));

  sub_10002B6CC(&qword_1003303C8);
  v24 = sub_10002CAF8(&qword_10032C248);
  v25 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v26 = sub_10002CD18(&qword_10032FBA8, &qword_10032C248);
  v27 = sub_1000B5954(&unk_10032B790, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  v47 = v24;
  v48 = v25;
  v49 = v26;
  v50 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v41;
  Button.init(action:label:)();
  sub_10002CD18(&qword_1003303B8, &qword_1003303C0);
  v29 = v42;
  v30 = v44;
  View.accessibilityIdentifier(_:)();
  (*(v45 + 8))(v28, v30);
  v31 = v38;
  View.buttonStyle<A>(_:)();
  sub_1000B599C(v29);
  sub_10008633C(OpaqueTypeMetadata2, v36, v21);
  (*(v43 + 8))(v31, OpaqueTypeMetadata2);
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(v21, v18, WitnessTable);
  v33 = *(v37 + 8);
  v33(v21, v18);
  sub_100086FE8(v23, v18, WitnessTable);
  return (v33)(v23, v18);
}

uint64_t sub_1000B4044()
{
  v0 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002B6CC(&qword_10032C248);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  MultimodalNavigationBackButtonLabelStyle.init()();
  sub_10002CD18(&qword_10032FBA8, &qword_10032C248);
  sub_1000B5954(&unk_10032B790, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000B428C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CAF8(&qword_100330388);
  v7 = *(a1 + 16);
  sub_10002CD18(&qword_100330390, &qword_100330388);
  v8 = type metadata accessor for _VariadicView.Tree();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v32 = *(v2 + 32);
  v31 = *(v2 + 16);
  if (v32 == 1)
  {
    v15 = v31;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = v2;
    v16 = static Log.runtimeIssuesLog.getter();
    v24 = v4;
    v17 = v16;
    v2 = v25;
    os_log(_:dso:log:_:_:)();

    v18 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10002C51C(&v31, &qword_10032E938);
    (*(v5 + 8))(v18, v24);
    v15 = v30;
  }

  v19 = *(a1 + 24);
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = v19;
  v20[4] = v15;
  __chkstk_darwin(v20);
  *(&v24 - 4) = v7;
  *(&v24 - 3) = v19;
  *(&v24 - 2) = v2;
  sub_1000B54D4(sub_1000B54B8, (&v24 - 6), v12);

  v28 = sub_10002CD18(&qword_100330398, &qword_100330388);
  v29 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(v12, v8, WitnessTable);
  v22 = *(v9 + 8);
  v22(v12, v8);
  sub_100086FE8(v14, v8, WitnessTable);
  return (v22)(v14, v8);
}

uint64_t sub_1000B4650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _LayoutRoot();
  __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3);
  _LayoutRoot.init(_:)();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t sub_1000B47F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = (__chkstk_darwin)();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v14 - v10;
  (*v9)();
  sub_100086FE8(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_100086FE8(v11, a2, a3);
  return (v12)(v11, a2);
}

uint64_t sub_1000B4968(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_10002B6CC(&qword_1003303D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-v7];
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10007FAD4(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10002C51C(v8, &qword_1003303D8);
  }

  (*(v10 + 32))(v12, v8, v9);
  v16[8] = a2 & 1;
  v16[0] = a4 & 1;
  LayoutSubview.sizeThatFits(_:)();
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1)
  {
    static ClarityUIMetrics.stackWidthAsPercentageOfScreenPad.getter();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000B4C18()
{
  v0 = sub_10002B6CC(&qword_1003303D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v8[-v1];
  v3 = type metadata accessor for LayoutSubview();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10007FAD4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10002C51C(v2, &qword_1003303D8);
  }

  (*(v4 + 32))(v6, v2, v3);
  static UnitPoint.topLeading.getter();
  v8[8] = 0;
  v8[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v4 + 8))(v6, v3);
}

void (*sub_1000B4EA8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_1000A9CE4;
}

uint64_t sub_1000B4F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v4 = *(a2 + 16);
  v5 = type metadata accessor for ModifiedContent();
  v35 = *(a2 + 24);
  v6 = v35;
  v36 = &protocol witness table for _PaddingLayout;
  v25 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v23[1] = v5;
  swift_getWitnessTable();
  v23[2] = type metadata accessor for _InsetViewModifier();
  v7 = type metadata accessor for ModifiedContent();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  v28 = v4;
  v29 = v6;
  v30 = v23[3];
  static HorizontalAlignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  static SafeAreaRegions.container.getter();
  static Edge.Set.bottom.getter();
  v17 = swift_getWitnessTable();
  v33 = WitnessTable;
  v34 = v17;
  v18 = swift_getWitnessTable();
  View.ignoresSafeArea(_:edges:)();
  (*(v24 + 8))(v9, v7);
  v31 = v18;
  v32 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v19 = swift_getWitnessTable();
  sub_100086FE8(v14, v10, v19);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_100086FE8(v16, v10, v19);
  return (v20)(v16, v10);
}

uint64_t sub_1000B52A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  static ClarityUIMetrics.backButtonPadding.getter();
  View.padding(_:)();
  v14[0] = a3;
  v14[1] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(v8, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v8, v4);
  sub_100086FE8(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_1000B54D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_1000B554C();
  return sub_1000B4650(a1, a2, &type metadata for BackButtonWidthLayout, v7, v9, v8, a3);
}

unint64_t sub_1000B554C()
{
  result = qword_1003303A0;
  if (!qword_1003303A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003303A0);
  }

  return result;
}

uint64_t sub_1000B55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_100086FE8(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_100086FE8(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_1000B56E4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for BackButton() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B57D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for BackButton() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000B3AEC(v6, v3, v4, a1);
}

unint64_t sub_1000B5864()
{
  result = qword_1003303B0;
  if (!qword_1003303B0)
  {
    sub_10002CAF8(&qword_1003303A8);
    sub_10002CD18(&qword_1003303B8, &qword_1003303C0);
    sub_1000B5954(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003303B0);
  }

  return result;
}

uint64_t sub_1000B5954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B599C(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_1003303A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B5A20()
{
  sub_10002CAF8(&qword_100330388);
  sub_10002CD18(&qword_100330390, &qword_100330388);
  type metadata accessor for _VariadicView.Tree();
  sub_10002CD18(&qword_100330398, &qword_100330388);
  return swift_getWitnessTable();
}

uint64_t sub_1000B5B04()
{
  sub_10002CAF8(&qword_1003303A8);
  sub_1000B5864();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for InvertColorsOnlyInLightModeView();
  swift_getWitnessTable();
  type metadata accessor for BackButtonWidthView();
  return swift_getWitnessTable();
}

uint64_t sub_1000B5C4C()
{
  type metadata accessor for BackButtonSafeAreaInsetModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for _InsetViewModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1000B5DC0()
{
  result = qword_1003303D0;
  if (!qword_1003303D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003303D0);
  }

  return result;
}

id sub_1000B5F44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WBViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B5FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ButtonStyleConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  static Color.white.getter();
  v5 = Color.opacity(_:)();

  v6 = static Color.white.getter();
  result = sub_10002B6CC(qword_100330408);
  *(a2 + *(result + 36)) = v5;
  *(a2 + *(result + 40)) = v6;
  return result;
}

uint64_t sub_1000B611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v38 = sub_10002B6CC(&qword_10032D7E0);
  __chkstk_darwin(v38);
  v5 = &v35 - v4;
  v6 = *(a1 + 24);
  v40 = *(a1 + 16);
  v41 = v6;
  v37 = a1;
  v43 = type metadata accessor for _BackgroundStyleModifier();
  v7 = type metadata accessor for ModifiedContent();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  sub_10002CAF8(&qword_10032D7E8);
  v10 = type metadata accessor for ModifiedContent();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = &v35 - v11;
  sub_10002CAF8(&qword_10032E0C0);
  v36 = type metadata accessor for ModifiedContent();
  v48 = *(v36 - 8);
  __chkstk_darwin(v36);
  v42 = &v35 - v12;
  sub_10002CAF8(&qword_10032D7F0);
  v13 = type metadata accessor for ModifiedContent();
  v49 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v44 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v35 - v16;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_10002B6CC(&qword_10032D818);
  ButtonStyleConfiguration.label.getter();
  static Edge.Set.all.getter();
  v17 = sub_10002CD18(&qword_10032D7F8, &qword_10032D7E0);
  v35 = v2;
  v18 = v40;
  v19 = v41;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  sub_10005E0A4(v5);
  v51 = v18;
  v52 = v19;
  v53 = v2;
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v60 = v17;
  v61 = WitnessTable;
  v21 = swift_getWitnessTable();
  v22 = v39;
  View.overlay<A>(alignment:content:)();
  (*(v45 + 8))(v9, v7);
  v23 = sub_10002CD18(&qword_10032D800, &qword_10032D7E8);
  v58 = v21;
  v59 = v23;
  v24 = swift_getWitnessTable();
  sub_10006F2F4();
  v25 = v42;
  View.clipShape<A>(_:style:)();
  (*(v47 + 8))(v22, v10);
  v26 = sub_10002CD18(&unk_10032E0D0, &qword_10032E0C0);
  v56 = v24;
  v57 = v26;
  v27 = v36;
  v28 = swift_getWitnessTable();
  v29 = v44;
  View.foregroundColor(_:)();
  (*(v48 + 8))(v25, v27);
  v30 = sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
  v54 = v28;
  v55 = v30;
  v31 = swift_getWitnessTable();
  v32 = v46;
  sub_100086FE8(v29, v13, v31);
  v33 = *(v49 + 8);
  v33(v29, v13);
  sub_100086FE8(v32, v13, v31);
  return (v33)(v32, v13);
}

uint64_t sub_1000B67CC(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *(v3 + 16);
  v9(&v12 - v7, a1, v2);
  result = (*(v3 + 88))(v8, v2);
  if (result != enum case for LayoutDirection.leftToRight(_:) && result != enum case for LayoutDirection.rightToLeft(_:))
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v12 = 0xD00000000000001CLL;
    v13 = 0x80000001002C4040;
    v9(v6, a1, v2);
    v11._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v11);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6A00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002B6CC(&qword_10032CE18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B6AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002B6CC(&qword_10032CE18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ScreenTimeShield()
{
  result = qword_1003304F0;
  if (!qword_1003304F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B6BCC()
{
  sub_1000495CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000B6C50()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() newTranslucentBlockingViewController];
  [v6 setOkButtonHandler:0];
  [v6 setChangePolicyButtonHidden:1];
  v7 = *(v1 + 16);
  v8 = String._bridgeToObjectiveC()();
  [v6 updateAppearanceUsingPolicy:v7 forBundleIdentifier:v8];

  aBlock[4] = nullsub_4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_100302768;
  v9 = _Block_copy(aBlock);
  [v6 showWithAnimation:0 completionHandler:v9];
  _Block_release(v9);
  v10 = objc_allocWithZone(sub_10002B6CC(&unk_10032CF00));
  v11 = v6;
  v12 = sub_100049928(v11);
  type metadata accessor for ScreenTimeShield();
  sub_10004A06C(v5);
  sub_1000B67CC(v5);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v21 = (v12 + qword_10032F2D0);
  v22 = *(v12 + qword_10032F2D0);
  v23 = *(v12 + qword_10032F2D0 + 8);
  v24 = *(v12 + qword_10032F2D0 + 16);
  v25 = *(v12 + qword_10032F2D0 + 24);
  *v21 = v14;
  v21[1] = v16;
  v21[2] = v18;
  v21[3] = v20;
  sub_100049E04(v22, v23, v24, v25);

  return v12;
}

void sub_1000B6EC8(uint64_t a1)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7)
  {
    type metadata accessor for ScreenTimeShield();
    sub_10004A06C(v6);
    sub_1000B67CC(v6);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = (a1 + qword_10032F2D0);
    v17 = *(a1 + qword_10032F2D0);
    v18 = *(a1 + qword_10032F2D0 + 8);
    v19 = *(a1 + qword_10032F2D0 + 16);
    v20 = *(a1 + qword_10032F2D0 + 24);
    *v16 = v9;
    v16[1] = v11;
    v16[2] = v13;
    v16[3] = v15;
    sub_100049E04(v17, v18, v19, v20);
    v21 = *(a1 + qword_10032F2C8);
    v22 = String._bridgeToObjectiveC()();
    [v21 updateAppearanceUsingPolicy:v7 forBundleIdentifier:v22];
  }
}

uint64_t sub_1000B7098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B7228(&qword_100330538);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000B7118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B7228(&qword_100330538);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000B7198()
{
  sub_1000B7228(&qword_100330538);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000B7210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B7228(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScreenTimeShield();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B7298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = static HorizontalAlignment.center.getter();
  v37 = 1;
  sub_1000B7610(&v24);
  v48 = v34;
  v49[0] = v35[0];
  *(v49 + 9) = *(v35 + 9);
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v38 = v24;
  v39 = v25;
  v50[9] = v33;
  v50[10] = v34;
  v51[0] = v35[0];
  *(v51 + 9) = *(v35 + 9);
  v50[6] = v30;
  v50[7] = v31;
  v50[8] = v32;
  v50[2] = v26;
  v50[3] = v27;
  v50[4] = v28;
  v50[5] = v29;
  v50[0] = v24;
  v50[1] = v25;
  sub_10003AFFC(&v38, &v23, &qword_100330540);
  sub_10002C51C(v50, &qword_100330540);
  *(&v36[9] + 7) = v47;
  *(&v36[10] + 7) = v48;
  *(&v36[11] + 7) = v49[0];
  v36[12] = *(v49 + 9);
  *(&v36[5] + 7) = v43;
  *(&v36[6] + 7) = v44;
  *(&v36[7] + 7) = v45;
  *(&v36[8] + 7) = v46;
  *(&v36[1] + 7) = v39;
  *(&v36[2] + 7) = v40;
  *(&v36[3] + 7) = v41;
  *(&v36[4] + 7) = v42;
  *(v36 + 7) = v38;
  v11 = v37;
  static Color.black.getter();
  v12 = Color.opacity(_:)();

  v13 = static Edge.Set.all.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  v16 = v36[8];
  *(a4 + 161) = v36[9];
  v17 = v36[11];
  *(a4 + 177) = v36[10];
  *(a4 + 193) = v17;
  *(a4 + 209) = v36[12];
  v18 = v36[4];
  *(a4 + 97) = v36[5];
  v19 = v36[7];
  *(a4 + 113) = v36[6];
  *(a4 + 129) = v19;
  *(a4 + 145) = v16;
  v20 = v36[0];
  *(a4 + 33) = v36[1];
  v21 = v36[3];
  *(a4 + 49) = v36[2];
  *(a4 + 65) = v21;
  *(a4 + 81) = v18;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *a4 = v10;
  *(a4 + 8) = 0;
  *(a4 + 16) = v11;
  *(a4 + 17) = v20;
  *(a4 + 232) = v12;
  *(a4 + 240) = v13;
  *(a4 + 241) = 1;
  *(a4 + 248) = sub_1000B81A0;
  *(a4 + 256) = v14;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 296) = sub_1000B81B0;
  *(a4 + 304) = v15;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1000B7610@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v19[0] = 1;
  sub_1000B7904(&v37);
  v29 = *&v38[80];
  v30 = *&v38[96];
  v25 = *&v38[16];
  v26 = *&v38[32];
  v27 = *&v38[48];
  v28 = *&v38[64];
  v23 = v37;
  v24 = *v38;
  v32[6] = *&v38[80];
  v32[7] = *&v38[96];
  v32[2] = *&v38[16];
  v32[3] = *&v38[32];
  v32[4] = *&v38[48];
  v32[5] = *&v38[64];
  v31 = v38[112];
  v33 = v38[112];
  v32[0] = v37;
  v32[1] = *v38;
  sub_10003AFFC(&v23, &v34, &qword_100330550);
  sub_10002C51C(v32, &qword_100330550);
  *&v22[87] = v28;
  *&v22[103] = v29;
  *&v22[119] = v30;
  *&v22[23] = v24;
  *&v22[39] = v25;
  *&v22[55] = v26;
  *&v22[71] = v27;
  v22[135] = v31;
  *&v22[7] = v23;
  v3 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v5 = *&v22[128];
  *&v35[129] = *&v22[128];
  v34 = v2;
  v35[0] = 1;
  v6 = *&v22[64];
  *&v35[81] = *&v22[80];
  v7 = *&v22[80];
  *&v35[97] = *&v22[96];
  v8 = *&v22[96];
  *&v35[113] = *&v22[112];
  v9 = *v22;
  *&v35[17] = *&v22[16];
  v10 = *&v22[16];
  *&v35[33] = *&v22[32];
  v11 = *&v22[32];
  *&v35[49] = *&v22[48];
  v12 = *&v22[48];
  *&v35[65] = *&v22[64];
  *&v35[1] = *v22;
  *&v20[23] = *v35;
  *&v20[119] = *&v35[96];
  *&v20[135] = *&v35[112];
  *&v20[151] = *&v35[128];
  *&v20[55] = *&v35[32];
  *&v20[71] = *&v35[48];
  *&v20[87] = *&v35[64];
  *&v20[103] = *&v35[80];
  *&v36 = KeyPath;
  *(&v36 + 1) = v3;
  *&v20[7] = v2;
  *&v20[39] = *&v35[16];
  *&v20[167] = v36;
  v13 = *&v20[144];
  *(a1 + 137) = *&v20[128];
  *(a1 + 153) = v13;
  *(a1 + 169) = *&v20[160];
  v14 = *&v20[80];
  *(a1 + 73) = *&v20[64];
  *(a1 + 89) = v14;
  v15 = *&v20[112];
  *(a1 + 105) = *&v20[96];
  *(a1 + 121) = v15;
  v16 = *&v20[16];
  *(a1 + 9) = *v20;
  *(a1 + 25) = v16;
  v17 = *&v20[48];
  *(a1 + 41) = *&v20[32];
  *(a1 + 57) = v17;
  *&v38[81] = v7;
  *&v38[97] = v8;
  v39 = *&v22[112];
  *&v38[17] = v10;
  *&v38[33] = v11;
  *&v38[49] = v12;
  *&v38[65] = v6;
  v21 = 1;
  v19[176] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 184) = *&v20[175];
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  v37 = v2;
  v38[0] = 1;
  v40 = v5;
  *&v38[1] = v9;
  v41 = KeyPath;
  v42 = v3;
  sub_10003AFFC(&v34, v19, &qword_100330558);
  return sub_10002C51C(&v37, &qword_100330558);
}

uint64_t sub_1000B7904@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v9[0] = 1;
  sub_1000B7B30(&v21);
  v15 = *&v22[16];
  v16 = *&v22[32];
  v13 = v21;
  v14 = *v22;
  v18[2] = *&v22[16];
  v18[3] = *&v22[32];
  v18[4] = *&v22[48];
  v18[1] = *v22;
  v17 = *&v22[48];
  v18[0] = v21;
  sub_10003AFFC(&v13, &v19, &qword_100330560);
  sub_10002C51C(v18, &qword_100330560);
  *&v12[23] = v14;
  *&v12[39] = v15;
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[7] = v13;
  v11 = 1;
  v19 = v2;
  v20[0] = 1;
  *&v20[1] = *v12;
  *&v20[17] = *&v12[16];
  *&v20[80] = *(&v17 + 1);
  *&v20[65] = *&v12[64];
  *&v20[49] = *&v12[48];
  *&v20[33] = *&v12[32];
  *&v10[39] = *&v20[16];
  *&v10[23] = *v20;
  *&v10[7] = v2;
  *&v10[103] = *&v20[80];
  *&v10[87] = *&v20[64];
  *&v10[71] = *&v20[48];
  *&v10[55] = *&v20[32];
  v9[104] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v3 = *v10;
  v4 = *&v10[16];
  v5 = *&v10[48];
  *(a1 + 41) = *&v10[32];
  *(a1 + 25) = v4;
  *(a1 + 9) = v3;
  v6 = *&v10[64];
  v7 = *&v10[80];
  *(a1 + 104) = *&v10[95];
  *(a1 + 89) = v7;
  *(a1 + 73) = v6;
  *(a1 + 57) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  v21 = v2;
  v22[0] = 1;
  *&v22[17] = *&v12[16];
  *&v22[1] = *v12;
  *&v23[15] = *&v12[79];
  *v23 = *&v12[64];
  *&v22[49] = *&v12[48];
  *&v22[33] = *&v12[32];
  sub_10003AFFC(&v19, v9, &qword_100330568);
  return sub_10002C51C(&v21, &qword_100330568);
}

uint64_t sub_1000B7B30@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title.getter();
  v7 = Text.font(_:)();
  v25 = v8;
  v26 = v7;
  v24 = v9;
  v27 = v10;

  sub_100047B84(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  sub_1000B81F8();
  sub_100030970();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.body.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  LOBYTE(v2) = v19;
  v21 = v20;

  sub_100047B84(v11, v13, v15 & 1);

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  *(a1 + 56) = v18;
  *(a1 + 64) = v2 & 1;
  *(a1 + 72) = v21;
  sub_100047B94(v26, v25, v24 & 1);

  sub_100047B94(v16, v18, v2 & 1);

  sub_100047B84(v16, v18, v2 & 1);

  sub_100047B84(v26, v25, v24 & 1);
}

void sub_1000B7D60(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  v12[4] = sub_1000B85C4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100068FF4;
  v12[3] = &unk_1003028D8;
  v10 = _Block_copy(v12);

  v11 = [v8 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
  _Block_release(v10);
}

void sub_1000B7E90(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  v12[4] = sub_1000B81C0;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100068FF4;
  v12[3] = &unk_100302888;
  v10 = _Block_copy(v12);

  v11 = [v8 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
  _Block_release(v10);
  [v11 invalidate];
}

void sub_1000B7FD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MKBGetDeviceLockStateInfo();
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!kMKBInfoBackOff)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  if ([v9 valueForKey:?])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002E64C(v12, &v13);
    swift_dynamicCast();
    sub_10002B6CC(&qword_100330548);
    State.wrappedValue.setter();
    *&v13 = a1;
    *(&v13 + 1) = a3;
    State.wrappedValue.getter();
    v11 = ceil(v12[0] / 60.0);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        *&v13 = a4;
        *(&v13 + 1) = a5;
        *&v12[0] = v11;

        sub_10002B6CC(&qword_10032FB20);
        State.wrappedValue.setter();

        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000B81D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B81F8()
{
  v0 = [objc_opt_self() mainBundle];
  v7._object = 0x80000001002C4080;
  v1._countAndFlagsBits = 0x6961676120797254;
  v1._object = 0xEF6425206E69206ELL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v7);

  sub_10002B6CC(&qword_10032BB18);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100297510;
  sub_10002B6CC(&qword_10032FB20);
  State.wrappedValue.getter();
  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = v6;
  v4 = static String.localizedStringWithFormat(_:_:)();

  return v4;
}

uint64_t sub_1000B83CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10002CAF8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B8450()
{
  result = qword_100330590;
  if (!qword_100330590)
  {
    sub_10002CAF8(&qword_100330598);
    sub_1000B84DC();
    sub_100030F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330590);
  }

  return result;
}

unint64_t sub_1000B84DC()
{
  result = qword_1003305A0;
  if (!qword_1003305A0)
  {
    sub_10002CAF8(&qword_1003305A8);
    sub_10002CD18(&qword_1003305B0, &qword_1003305B8);
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003305A0);
  }

  return result;
}

uint64_t sub_1000B85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000BA708(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10008CCBC(v11);
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

      sub_10008CCBC(a3);

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

  sub_10008CCBC(a3);
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

uint64_t sub_1000B8898()
{
  type metadata accessor for LockScreenWallpaperMetadataProvider();
  v0 = swift_allocObject();
  result = sub_1000B89C0();
  qword_1003368F8 = v0;
  return result;
}

uint64_t sub_1000B88D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000B894C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000B89C0()
{
  v1 = v0;
  v2 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_10002B6CC(&qword_10032FE00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_10002B6CC(&qword_100330750);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC12ClarityBoard35LockScreenWallpaperMetadataProvider__wallpaperData;
  v19 = xmmword_10029DE60;
  sub_10002B6CC(&unk_100330610);
  Published.init(initialValue:)();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC12ClarityBoard35LockScreenWallpaperMetadataProvider__isWallpaperLight;
  LOBYTE(v19) = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(v1 + v14, v8, v5);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v1;
  sub_1000B85D8(0, 0, v4, &unk_10029DF38, v17);

  return v1;
}

id sub_1000B8C94()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 >> 60 == 15)
  {
    (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
    v4 = static ColorScheme.== infix(_:_:)();
    (*(v1 + 8))(v3, v0);
    if (v4)
    {
LABEL_3:
      v5 = &selRef_darkGrayColor;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000663C8(v8, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v5 = &selRef_whiteColor;
LABEL_6:
  v6 = [objc_opt_self() *v5];

  return v6;
}

uint64_t sub_1000B8E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10002B6CC(&qword_10032D050);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B8FC0, v7, v6);
}

uint64_t sub_1000B8FC0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  v4 = CLFWallpaperURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.path(percentEncoded:)(1);
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = [objc_opt_self() defaultManager];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    URL.init(fileURLWithPath:)();

    v9 = Data.init(contentsOf:options:)();
    v11 = v10;
    v12 = v0[6];
    v13 = v0[3];
    v25 = v0[4];
    v14 = v0[2];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    sub_1000BA9D4(v9, v11);

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v9;
    v17[5] = v11;
    v17[6] = v14;
    sub_1000B85D8(0, 0, v13, &unk_10029DF70, v17);

    sub_1000663C8(v9, v11);
    v5(v12, v25);
  }

  else
  {
  }

  v19 = v0[2];
  v18 = v0[3];
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v19;
  sub_1000B85D8(0, 0, v18, &unk_10029DF60, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000B92EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B9388, v8, v7);
}

uint64_t sub_1000B9388()
{
  v1 = v0[5];

  if (v1 >> 60 == 15)
  {
    v2 = v0[6];

    sub_10009F044(sub_1000BAB08, v2);
  }

  else
  {
    v3 = v0[5];
    v4 = v0[4];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v3;

    sub_1000BA9D4(v4, v3);
    static Published.subscript.setter();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B9494(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.common.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Retrieving wallpaper data after first unlock.", v12, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a1;
  sub_1000B85D8(0, 0, v4, &unk_10029DF80, v15);
}

uint64_t sub_1000B96E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10002B6CC(&qword_10032D050);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B97BC, v6, v5);
}

uint64_t sub_1000B97BC()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v2;
  sub_1000B85D8(0, 0, v1, &unk_10029DF88, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B98D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B9968, v6, v5);
}

uint64_t sub_1000B9968()
{

  v1 = sub_1000B9A20();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;

  static Published.subscript.setter();
  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_1000B9A20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v9;
  if (v9 >> 60 != 15)
  {
    v1 = *&v8;
    v2 = objc_allocWithZone(UIImage);
    sub_100085A90(*&v8, v9);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v4 = [v2 initWithData:isa];

    sub_1000663C8(*&v8, v9);
    if (v4)
    {

      v5 = sub_1000BA308();
      if (v5)
      {
        v8 = 0.0;
        v6 = v5;
        [v5 getWhite:&v8 alpha:0];

        sub_1000663C8(v1, v0);
        return v8 > 0.8;
      }
    }

    sub_1000663C8(*&v8, v9);
  }

  return 0;
}

uint64_t sub_1000B9B88()
{
  v1 = OBJC_IVAR____TtC12ClarityBoard35LockScreenWallpaperMetadataProvider__wallpaperData;
  v2 = sub_10002B6CC(&qword_100330750);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12ClarityBoard35LockScreenWallpaperMetadataProvider__isWallpaperLight;
  v4 = sub_10002B6CC(&qword_10032FE00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for LockScreenWallpaperMetadataProvider()
{
  result = qword_1003305F8;
  if (!qword_1003305F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B9CD0()
{
  sub_1000B9D9C();
  if (v0 <= 0x3F)
  {
    sub_100036814();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000B9D9C()
{
  if (!qword_100330608)
  {
    sub_10002CAF8(&unk_100330610);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100330608);
    }
  }
}

uint64_t sub_1000B9E00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LockScreenWallpaperMetadataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_1000B9E40@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000B9EC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000BA9D4(v1, v2);
  return static Published.subscript.setter();
}

uint64_t sub_1000B9F50@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000B9FD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

UIImage *sub_1000BA044(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = [a1 CGImage];
  if (v5)
  {
    v6 = v5;
    [a1 size];
    v20.origin.y = v7 * 0.125;
    v20.origin.x = 0.0;
    v20.size.width = a2;
    v20.size.height = a3;
    v8 = CGImageCreateWithImageInRect(v6, v20);
    if (!v8)
    {
      v16 = a1;

      return v16;
    }

    v9 = v8;
    [a1 scale];
    v11 = [objc_allocWithZone(UIImage) initWithCGImage:v9 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v10}];
    [a1 scale];
    v13 = v12;
    v19.width = a2;
    v19.height = a3;
    UIGraphicsBeginImageContextWithOptions(v19, 0, v13);
    [v11 drawInRect:{0.0, 0.0, a2, a3}];
    v14 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    if (v14)
    {
      return v14;
    }
  }

  return a1;
}

UIImage *sub_1000BA1DC()
{
  if (qword_10032B520 != -1)
  {
    swift_once();
  }

  type metadata accessor for LockScreenWallpaperMetadataProvider();
  sub_1000BA5F8();

  v8 = ObservedObject.init(wrappedValue:)();
  v9 = v0;
  sub_10002B6CC(&qword_100330748);
  swift_allocObject();
  ImageRenderer.init(content:)();
  v1 = ImageRenderer.uiImage.getter();
  if (v1)
  {
    v2 = v1;
    [v1 size];
    v4 = v3 * 0.125;
    [v2 size];
    v6 = sub_1000BA044(v2, v5 * 0.5, v4);
  }

  else
  {

    return 0;
  }

  return v6;
}

id sub_1000BA308()
{
  result = sub_1000BA1DC();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [result CGImage];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  [v1 size];
  v5 = v4;
  result = [v1 size];
  if (v5 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = v6;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_42;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = v5;
  v9 = v6;
  v10 = v5 * v6;
  if ((v5 * v6) >> 64 != v10 >> 63)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = CGColorSpaceCreateDeviceRGB();
  if ((v8 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = result;
  v12 = CGBitmapContextCreate(0, v5, v7, 8uLL, 4 * v8, result, 0x2002u);
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  CGContextRef.draw(_:in:byTiling:)();
  result = CGBitmapContextGetData(v13);
  if (!result)
  {

    return 0;
  }

  if (v8 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v8)
  {
    if (v9 < 0)
    {
LABEL_48:
      __break(1u);
      return result;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (!v9)
    {
LABEL_17:
      if (++v17 == v8)
      {
        v26 = v16;
        v25 = v15;
        v24 = v14;
        goto LABEL_34;
      }
    }

    v18 = 0;
    while (1)
    {
      v19 = v18 * v8;
      if ((v18 * v8) >> 64 != (v18 * v8) >> 63)
      {
        break;
      }

      v20 = __OFADD__(v19, v17);
      v21 = v19 + v17;
      if (v20)
      {
        goto LABEL_36;
      }

      v22 = *(result + v21);
      v20 = __OFADD__(v16, BYTE2(v22));
      v16 += BYTE2(v22);
      if (v20)
      {
        goto LABEL_37;
      }

      v20 = __OFADD__(v14, v22);
      v14 += v22;
      if (v20)
      {
        goto LABEL_38;
      }

      v23 = BYTE1(v22);
      v20 = __OFADD__(v15, v23);
      v15 += v23;
      if (v20)
      {
        goto LABEL_39;
      }

      if (v9 == ++v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
LABEL_34:
  v27 = [objc_allocWithZone(UIColor) initWithRed:v26 / v10 / 255.0 green:v25 / v10 / 255.0 blue:v24 / v10 / 255.0 alpha:1.0];

  return v27;
}

unint64_t sub_1000BA5F8()
{
  result = qword_10032EA70;
  if (!qword_10032EA70)
  {
    type metadata accessor for LockScreenWallpaperMetadataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EA70);
  }

  return result;
}

uint64_t sub_1000BA654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_1000B8E84(a1, v4, v5, v6);
}

uint64_t sub_1000BA708(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032D050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA778()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BA7B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005D0A4;

  return sub_10008CD24(a1, v4);
}

uint64_t sub_1000BA868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002E558;

  return sub_10008CD24(a1, v4);
}

uint64_t sub_1000BA920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_1000B98D0(a1, v4, v5, v6);
}

uint64_t sub_1000BA9D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100085A90(a1, a2);
  }

  return a1;
}

uint64_t sub_1000BA9E8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1000663DC(*(v0 + 32), v1);
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000BAA40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005D0A4;

  return sub_1000B92EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BAB10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_1000B96E8(a1, v4, v5, v6);
}

uint64_t sub_1000BABC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E558;

  return sub_1000B8E84(a1, v4, v5, v6);
}

id sub_1000BADA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallServicePresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000BAE00()
{
  result = sub_10003F9F8();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BAE88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1000BB00C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_1000BB2A0()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  qword_100336900 = v0;
  return result;
}

uint64_t sub_1000BB2E8@<X0>(uint64_t a1@<X8>)
{
  sub_10002B6CC(&qword_100330800);
  sub_10002CD18(&qword_100330808, &qword_100330800);
  View.scrollContentBackground(_:)();
  v2 = (a1 + *(sub_10002B6CC(&qword_100330810) + 36));
  v3 = *(sub_10002B6CC(&qword_10032E700) + 28);
  v4 = enum case for ColorScheme.dark(_:);
  v5 = type metadata accessor for ColorScheme();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  *v2 = swift_getKeyPath();
  v6 = static Color.white.getter();
  *(a1 + *(sub_10002B6CC(&qword_100330818) + 36)) = v6;
  v7 = static SafeAreaRegions.all.getter();
  LOBYTE(v2) = static Edge.Set.all.getter();
  v8 = static Alignment.center.getter();
  v10 = v9;
  result = sub_10002B6CC(&qword_100330820);
  v12 = a1 + *(result + 36);
  *v12 = v7;
  *(v12 + 8) = v2;
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  return result;
}

uint64_t sub_1000BB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  v5 = *(a2 + 16);
  v28 = *(v5 - 8);
  v29 = v3;
  __chkstk_darwin(a1);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[2] = *(v8 + 24);
  v9 = type metadata accessor for BackButton();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  swift_getWitnessTable();
  v12 = type metadata accessor for _ViewModifier_Content();
  v27[0] = swift_getWitnessTable();
  v27[1] = type metadata accessor for BackButtonSafeAreaInsetModifier();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v27 - v18;
  v20 = *(a2 + 36);
  v21 = v29;
  (*(v28 + 16))(v7, v29 + v20, v5);
  sub_1000B377C(v7, *v21, v21[1], v5, v11);

  WitnessTable = swift_getWitnessTable();
  sub_1000B35C8(v11, v12, v9);
  (*(v30 + 8))(v11, v9);
  v23 = swift_getWitnessTable();
  v33 = WitnessTable;
  v34 = v23;
  v24 = swift_getWitnessTable();
  sub_100086FE8(v17, v13, v24);
  v25 = *(v14 + 8);
  v25(v17, v13);
  sub_100086FE8(v19, v13, v24);
  return (v25)(v19, v13);
}

uint64_t sub_1000BB830@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032CEF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100086F14(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000BBA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC404();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000BBA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC404();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000BBAE4()
{
  sub_1000BC404();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000BBB0C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_10002B6CC(&qword_1003308F8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  static Color.black.getter();
  sub_1000BB830(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  static ColorScheme.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v8, v2);
  v14 = Color.opacity(_:)();

  v15 = v12 + *(v10 + 44);
  static Material.regular.getter();
  LOBYTE(v10) = static Edge.Set.all.getter();
  v15[*(sub_10002B6CC(&qword_10032C4B0) + 36)] = v10;
  *v12 = v14;
  v16 = static SafeAreaRegions.all.getter();
  LOBYTE(v15) = static Edge.Set.all.getter();
  sub_1000BC5FC(v12, a1);
  result = sub_10002B6CC(&qword_100330900);
  v18 = a1 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = v15;
  return result;
}

uint64_t sub_1000BBD6C()
{
  type metadata accessor for AdminSceneBackButtonModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for BackButton();
  swift_getWitnessTable();
  type metadata accessor for BackButtonSafeAreaInsetModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1000BBE9C()
{
  result = qword_100330828;
  if (!qword_100330828)
  {
    sub_10002CAF8(&qword_100330820);
    sub_1000BBF54();
    sub_10002CD18(&qword_100330840, &qword_100330848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330828);
  }

  return result;
}

unint64_t sub_1000BBF54()
{
  result = qword_100330830;
  if (!qword_100330830)
  {
    sub_10002CAF8(&qword_100330818);
    sub_1000BC00C();
    sub_10002CD18(&qword_10032F908, &qword_10032F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330830);
  }

  return result;
}

unint64_t sub_1000BC00C()
{
  result = qword_100330838;
  if (!qword_100330838)
  {
    sub_10002CAF8(&qword_100330810);
    sub_10002CAF8(&qword_100330800);
    sub_10002CD18(&qword_100330808, &qword_100330800);
    swift_getOpaqueTypeConformance2();
    sub_10002CD18(&qword_10032E760, &qword_10032E700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330838);
  }

  return result;
}

unint64_t sub_1000BC138()
{
  result = qword_100330850;
  if (!qword_100330850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330850);
  }

  return result;
}

id sub_1000BC18C()
{
  v0 = type metadata accessor for AdminBackgroundView();
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = (&v11 - v4);
  *v5 = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  v6 = objc_allocWithZone(sub_10002B6CC(&qword_100330858));
  sub_1000BC344(v5, v3);
  v7 = UIHostingController.init(rootView:)();
  sub_1000BC3A8(v5);
  result = [v7 view];
  if (result)
  {
    v9 = result;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v10];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AdminBackgroundView()
{
  result = qword_1003308C0;
  if (!qword_1003308C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BC344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdminBackgroundView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BC3A8(uint64_t a1)
{
  v2 = type metadata accessor for AdminBackgroundView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000BC404()
{
  result = qword_100330860;
  if (!qword_100330860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330860);
  }

  return result;
}

uint64_t sub_1000BC46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032D838);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000BC4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032D838);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000BC574()
{
  sub_100086E78();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000BC5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_1003308F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BC670()
{
  result = qword_100330908;
  if (!qword_100330908)
  {
    sub_10002CAF8(&qword_100330900);
    sub_1000BC6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330908);
  }

  return result;
}

unint64_t sub_1000BC6FC()
{
  result = qword_100330910;
  if (!qword_100330910)
  {
    sub_10002CAF8(&qword_1003308F8);
    sub_10002CD18(&qword_10032FB68, &qword_10032C4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330910);
  }

  return result;
}

uint64_t sub_1000BC7EC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_100330920);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_10002B6CC(&qword_100330928);
  sub_1000BC91C(a1, &v9[*(v10 + 44)]);
  sub_1000BCDF8(v9, v7);
  *a2 = 0;
  *(a2 + 8) = 0;
  v11 = sub_10002B6CC(&qword_100330930);
  sub_1000BCDF8(v7, a2 + *(v11 + 48));
  v12 = a2 + *(v11 + 64);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1000BCE68(v9);
  return sub_1000BCE68(v7);
}

uint64_t sub_1000BC91C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v3 - 8);
  v5 = &v27[-v4];
  v6 = sub_10002B6CC(&qword_100330938);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v34 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v27[-v10];
  v12 = a1[1];
  v47 = *a1;
  v48 = v12;
  sub_10002B6CC(&qword_10032C9B0);
  Binding.projectedValue.getter();
  v31 = v36;
  v29 = *(&v37 + 1);
  v30 = v37;
  v28 = *(a1 + 32);
  v13 = *(a1 + 6);
  v33 = *(a1 + 5);
  v14 = *(a1 + 7);
  v32 = *(a1 + 8);
  v15 = type metadata accessor for Font.Design();
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);

  v17 = static Font.system(size:weight:design:)();
  sub_1000BCED0(v5);
  v16(v5, 1, 1, v15);
  static Font.system(size:weight:design:)();
  sub_1000BCED0(v5);
  v18 = Font.bold()();

  v44 = 0;
  v36 = v31;
  *&v37 = v30;
  *(&v37 + 1) = v29;
  LOBYTE(v38) = v28;
  *(&v38 + 1) = 0;
  *(&v38 + 3) = v45;
  BYTE7(v38) = v46;
  *(&v38 + 1) = v33;
  *&v39 = v13;
  *(&v39 + 1) = v14;
  *&v40 = v32;
  BYTE8(v40) = 0;
  HIDWORD(v40) = *&v43[3];
  *(&v40 + 9) = *v43;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  v42 = 1;
  sub_10007368C();
  sub_1000BCF38();
  View.buttonStyle<A>(_:)();
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v50 = v39;
  sub_100073734(&v47);
  v19 = *(v7 + 16);
  v20 = v34;
  v19(v34, v11, v6);
  v21 = v35;
  *v35 = 0;
  *(v21 + 8) = 0;
  v22 = v21;
  v23 = sub_10002B6CC(&qword_100330948);
  v19(v22 + *(v23 + 48), v20, v6);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 0;
  v25 = *(v7 + 8);
  v25(v11, v6);
  return (v25)(v20, v6);
}

uint64_t sub_1000BCD7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_10002B6CC(&qword_100330918);
  return sub_1000BC7EC(v7, a1 + *(v5 + 44));
}

uint64_t sub_1000BCDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_100330920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCE68(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_100330920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BCED0(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032D048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000BCF38()
{
  result = qword_100330940;
  if (!qword_100330940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330940);
  }

  return result;
}

unint64_t sub_1000BCF90()
{
  result = qword_100330950;
  if (!qword_100330950)
  {
    sub_10002CAF8(qword_100330958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100330950);
  }

  return result;
}

uint64_t sub_1000BCFF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000BD08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = *(a1 + 16);
  v30 = *(v5 - 8);
  __chkstk_darwin(a1);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModifiedContent();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v32 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v29 = &v26 - v14;
  v27 = *(v2 + 32);
  v42 = *(v2 + 48);
  v43 = *(v2 + 64);
  v40 = *(v2 + 48);
  v41 = *(v2 + 64);
  sub_10002B6CC(&qword_1003309E0);
  State.wrappedValue.getter();
  v15 = v38;
  v16 = v39;
  v17 = *(a1 + 24);
  v18 = sub_1000BD47C(v3, v5, v17);
  v27(v15, v18, v19, v16);

  v40 = v42;
  v41 = v43;
  State.wrappedValue.getter();
  View.allowsHitTesting(_:)();
  (*(v30 + 8))(v7, v5);
  v36 = v17;
  v37 = &protocol witness table for _AllowsHitTestingModifier;
  WitnessTable = swift_getWitnessTable();
  v21 = v28;
  View.onAppear(perform:)();
  (*(v31 + 8))(v10, v8);
  v34 = WitnessTable;
  v35 = &protocol witness table for _AppearanceActionModifier;
  v22 = swift_getWitnessTable();
  v23 = v29;
  sub_100086FE8(v21, v11, v22);
  v24 = *(v32 + 8);
  v24(v21, v11);
  sub_100086FE8(v23, v11, v22);
  return (v24)(v23, v11);
}

uint64_t (*sub_1000BD47C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 80);
  *(v6 + 96) = *(a1 + 64);
  *(v6 + 112) = v7;
  *(v6 + 128) = *(a1 + 96);
  v8 = *(a1 + 16);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  v9 = *(a1 + 48);
  *(v6 + 64) = *(a1 + 32);
  *(v6 + 80) = v9;
  v10 = type metadata accessor for PasscodeVerifyingView();
  (*(*(v10 - 8) + 16))(v12, a1, v10);
  return sub_1000BE2FC;
}

uint64_t sub_1000BD54C(uint64_t a1)
{
  v30 = a1;
  v37 = type metadata accessor for AccessibilityNotification.Announcement();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v39 = *(v1 + 72);
  *&aBlock = 0;
  sub_10002B6CC(&qword_10032FB20);
  State.wrappedValue.setter();
  v50 = *(v1 + 8);
  v49 = v1[3];
  v39 = v1[3];
  v40 = *(v1 + 8);
  v51 = v50;
  sub_10003AFFC(&v51, &aBlock, &qword_1003309E8);
  sub_10002B6CC(&qword_1003309E0);
  State.wrappedValue.getter();
  aBlock = v49;
  v42 = v50;
  v46 = 1;
  v47 = v48;
  State.wrappedValue.setter();
  sub_10002C51C(&v49, &qword_1003309E0);
  sub_10006E710();
  v13 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v15 = swift_allocObject();
  v16 = v30;
  v17 = *(v30 + 16);
  v18 = v1[4];
  v19 = v1[5];
  v20 = v1[2];
  *(v15 + 80) = v1[3];
  *(v15 + 96) = v18;
  *(v15 + 112) = v19;
  v21 = *v1;
  v22 = v1[1];
  *(v15 + 16) = v17;
  *(v15 + 32) = v21;
  *(v15 + 128) = *(v1 + 12);
  *(v15 + 48) = v22;
  *(v15 + 64) = v20;
  v44 = sub_1000BE314;
  v45 = v15;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v42 = sub_1000357AC;
  v43 = &unk_100302BF0;
  v23 = _Block_copy(&aBlock);
  (*(*(v16 - 8) + 16))(&v39, v1, v16);

  static DispatchQoS.unspecified.getter();
  *&v39 = _swiftEmptyArrayStorage;
  sub_10007F86C();
  sub_10002B6CC(&qword_10032D9D0);
  sub_1000BE344();
  v24 = v31;
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v35 + 8))(v24, v25);
  (*(v33 + 8))(v5, v34);
  v14(v12, v29);
  v26 = v36;
  AccessibilityNotification.Announcement.init(_:)();
  v27 = v37;
  _AccessibilityNotifications.post()();
  return (*(v38 + 8))(v26, v27);
}

uint64_t sub_1000BDB2C()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000BDC0C(uint64_t a1)
{
  v31 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchTime();
  v32 = *(v35 - 8);
  v9 = __chkstk_darwin(v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v50 = *(v1 + 72);
  v36 = *(v1 + 72);
  v51 = *(&v50 + 1);
  sub_10003AFFC(&v51, &v38, &qword_1003309F0);
  sub_10002B6CC(&qword_10032FB20);
  result = State.wrappedValue.getter();
  if (__OFADD__(v47, 1))
  {
    __break(1u);
  }

  else
  {
    v38 = v50;
    v45 = v47 + 1;
    State.wrappedValue.setter();
    sub_10002C51C(&v50, &qword_10032FB20);
    v36 = v50;
    State.wrappedValue.getter();
    if (v38 == *(v1 + 12))
    {
      v38 = v1[3];
      v39 = *(v1 + 8);
      v36 = v1[3];
      *&v37 = *(v1 + 8);
      v49 = v39;
      sub_10003AFFC(&v49, &v47, &qword_1003309E8);
      sub_10002B6CC(&qword_1003309E0);
      State.wrappedValue.getter();
      v47 = v38;
      v48 = v39;
      v43 = 0;
      v44 = v46;
      State.wrappedValue.setter();
      v36 = v38;
      *&v37 = v39;
      State.wrappedValue.getter();
      v47 = v38;
      v48 = v39;
      v43 = v45;
      v44 = 10.0;
      State.wrappedValue.setter();
      sub_10002C51C(&v38, &qword_1003309E0);
      v15 = v1[1];
      v36 = *v1;
      v37 = v15;
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_10002B6CC(&qword_10032C9B0);
      return Binding.wrappedValue.setter();
    }

    else
    {
      v47 = v1[3];
      v48 = *(v1 + 8);
      v49 = v48;
      v36 = v1[3];
      *&v37 = *(v1 + 8);
      sub_10003AFFC(&v49, &v38, &qword_1003309E8);
      v30 = v3;
      sub_10002B6CC(&qword_1003309E0);
      v29 = v2;
      State.wrappedValue.getter();
      v16 = -*(&v38 + 1);
      v36 = v47;
      *&v37 = v48;
      State.wrappedValue.getter();
      v38 = v47;
      v39 = v48;
      v43 = v45;
      v44 = v16;
      State.wrappedValue.setter();
      sub_10002C51C(&v47, &qword_1003309E0);
      sub_10006E710();
      v17 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v32 = *(v32 + 8);
      (v32)(v11, v35);
      v18 = swift_allocObject();
      v19 = v31;
      v20 = *(v31 + 16);
      v21 = v1[4];
      v22 = v1[5];
      v23 = v1[2];
      *(v18 + 80) = v1[3];
      *(v18 + 96) = v21;
      *(v18 + 112) = v22;
      v24 = *v1;
      v25 = v1[1];
      *(v18 + 16) = v20;
      *(v18 + 32) = v24;
      *(v18 + 128) = *(v1 + 12);
      *(v18 + 48) = v25;
      *(v18 + 64) = v23;
      v41 = sub_1000BE4F4;
      v42 = v18;
      *&v38 = _NSConcreteStackBlock;
      *(&v38 + 1) = 1107296256;
      v39 = sub_1000357AC;
      v40 = &unk_100302C40;
      v26 = _Block_copy(&v38);
      (*(*(v19 - 8) + 16))(&v36, v1, v19);

      static DispatchQoS.unspecified.getter();
      *&v36 = _swiftEmptyArrayStorage;
      sub_10007F86C();
      sub_10002B6CC(&qword_10032D9D0);
      sub_1000BE344();
      v27 = v29;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v26);

      (*(v30 + 8))(v5, v27);
      (*(v33 + 8))(v8, v34);
      return (v32)(v13, v35);
    }
  }

  return result;
}

uint64_t sub_1000BE32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000BE344()
{
  result = qword_10032E990;
  if (!qword_10032E990)
  {
    sub_10002CAF8(&qword_10032D9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E990);
  }

  return result;
}

uint64_t sub_1000BE3A8()
{

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_1000BE440()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000BE54C(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_1000BE7AC(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_1000BE940(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_1000BEB34(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_1000BECB4(int a1)
{
  v1 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330D30) ^ 0xDF)) ^ byte_1002B0520[byte_1002A5EB0[(-85 * ((dword_100330E70 + dword_100330D30) ^ 0xDF))] ^ 0xAD]) + 340);
  v2 = *(v1 - 4);
  v3 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - v2) ^ 0xDF)) ^ byte_1002B0220[byte_1002A5CB0[(-85 * ((dword_100330E70 - v2) ^ 0xDF))] ^ 0x21]) + 72);
  v4 = &v7[*v3 - v2];
  *(v1 - 4) = 2054362027 * v4 + 0xB4207763EF64BDFLL;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v5 = 1824088897 * ((((2 * v8) | 0x8AE3169E) - v8 - 1165069135) ^ 0x1D18582D);
  v8[0] = a1 - ((2 * a1) & 0xEEEA6432) - v5 + 2004169241;
  v8[1] = 4588 - v5;
  LOBYTE(v3) = -85 * (*(v1 - 4) ^ 0xDF ^ *v3);
  (*(*(&off_100315F70 + ((-85 * (dword_100330D30 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330D30 ^ 0xDF ^ dword_100330E70))] ^ 0xD9]) + 49) + (byte_1002A5FBC[(byte_1002BF56C[v3 - 12] ^ 0x71) - 12] ^ v3) + 9490))(v8);
  return (v8[2] - 16257999);
}

uint64_t sub_1000BEEE0()
{
  v0 = *(&off_100315F70 + ((-85 * (dword_100330D38 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330D38 ^ 0xDF ^ dword_100330E70))] ^ 0x71]) - 153);
  v1 = *(&off_100315F70 + (byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 + *v0) ^ 0xDF))] ^ 0x71] ^ (-85 * ((dword_100330E70 + *v0) ^ 0xDF))) + 42);
  v2 = 2054362027 * (&v4[*v1 - *v0] ^ 0xB4207763EF64BDFLL);
  *v0 = v2;
  *v1 = v2;
  LODWORD(v2) = 2048652491 * ((-1408681008 - (v5 | 0xAC093BD0) + (v5 | 0x53F6C42F)) ^ 0xE247532A);
  v5[1] = v2 + 6464;
  v5[2] = v2 ^ 0x31E6DAA;
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  (*(*(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330D38) ^ 0xDF)) ^ byte_1002B0220[byte_1002A5CB0[(-85 * ((dword_100330E70 + dword_100330D38) ^ 0xDF))] ^ 0xEE]) + 163) + (v1 ^ byte_1002A5FB0[byte_1002BF560[v1] ^ 0xE2]) + 9566))(v5);
  return (v5[0] - 16257999);
}

uint64_t sub_1000BF2F8(uint64_t a1)
{
  v1 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330B28) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - dword_100330B28) ^ 0xDF))] ^ 0x6D]) + 263);
  v2 = *(v1 - 4);
  v3 = *(&off_100315F70 + (byte_1002A5FB0[byte_1002BF560[(-85 * (v2 ^ dword_100330E70 ^ 0xDF))] ^ 0x71] ^ (-85 * (v2 ^ dword_100330E70 ^ 0xDF))) + 42);
  v4 = (*v3 - v2) ^ &v6;
  *(v1 - 4) = 2054362027 * (v4 - 0xB4207763EF64BDFLL);
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v8 = a1;
  v7 = 1358806181 * ((&v7 - 1785614571 - 2 * (&v7 & 0x9591AF15)) ^ 0xAABEC396) + 3363;
  LODWORD(v3) = 2054362027 * ((*v3 - *(v1 - 4)) ^ 0x3EF64BDF);
  return (*(*(&off_100315F70 + ((-85 * (dword_100330B28 ^ 0xDF ^ dword_100330E70)) ^ byte_1002B7200[byte_1002B0320[(-85 * (dword_100330B28 ^ 0xDF ^ dword_100330E70))] ^ 0x67]) + 221) + (v3 ^ byte_1002A5FB0[byte_1002BF560[v3] ^ 0xB1]) + 9614))(&v7);
}

uint64_t sub_1000BF4E0(uint64_t a1)
{
  v1 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330D60) ^ 0xDF)) ^ byte_1002B0520[byte_1002A5EB0[(-85 * ((dword_100330E70 - dword_100330D60) ^ 0xDF))] ^ 0x80]) + 160);
  v2 = *(v1 - 4);
  v3 = *(&off_100315F70 + (byte_1002A5FBC[(byte_1002BF56C[(-85 * ((dword_100330E70 - v2) ^ 0xDF)) - 12] ^ 0xD9) - 12] ^ (-85 * ((dword_100330E70 - v2) ^ 0xDF))) - 29);
  v4 = 2054362027 * (((*v3 ^ v2) - &v6) ^ 0xB4207763EF64BDFLL);
  *(v1 - 4) = v4;
  *v3 = v4;
  v8 = a1;
  v7 = 1710126949 * (((&v7 | 0x4F7BBA73) + (~&v7 | 0xB084458C)) ^ 0x7D60E1E2) + 8752;
  LOBYTE(v3) = -85 * ((*v3 - *(v1 - 4)) ^ 0xDF);
  return (*(*(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330D60) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - dword_100330D60) ^ 0xDF))] ^ 0x1F]) + 191) + (byte_1002B7308[(byte_1002B0420[v3] ^ 0x2A) - 8] ^ v3) + 9490))(&v7);
}

uint64_t sub_1000BF6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(&off_100315F70 + ((-85 * (dword_100330FB8 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5DB0[byte_1002BF460[(-85 * (dword_100330FB8 ^ 0xDF ^ dword_100330E70))] ^ 0xDD]) - 23);
  v5 = *(v4 - 4);
  v6 = *(&off_100315F70 + (byte_1002A5FBC[(byte_1002BF56C[(-85 * ((dword_100330E70 - v5) ^ 0xDF)) - 12] ^ 0xD9) - 12] ^ (-85 * ((dword_100330E70 - v5) ^ 0xDF))) - 29);
  v7 = v5 - &v9 + *v6;
  *(v4 - 4) = 2054362027 * v7 + 0x1FC86B74B1533AF5;
  *v6 = 2054362027 * (v7 ^ 0xB4207763EF64BDFLL);
  v12 = a3;
  v13 = a2;
  v11 = a1;
  v15 = a4;
  v14 = (31943069 * ((-1345080899 - (&v10 | 0xAFD3B1BD) + (&v10 | 0x502C4E42)) ^ 0x3385083A)) ^ 0x1649;
  LOBYTE(v6) = -85 * ((*v6 - *(v4 - 4)) ^ 0xDF);
  (*(*(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330FB8) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - dword_100330FB8) ^ 0xDF))] ^ 0x71]) + 120) + (byte_1002B7208[(byte_1002B0328[v6 - 8] ^ 0x6D) - 8] ^ v6) + 9599))(&v10);
  return (v10 - 16257999);
}

uint64_t sub_1000BF980(uint64_t a1)
{
  v2 = *(&off_100315F70 + ((-85 * (dword_100330EB8 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330EB8 ^ 0xDF ^ dword_100330E70))] ^ 0xB1]) + 152);
  v3 = *(v2 - 4);
  v4 = *(&off_100315F70 + (byte_1002B7208[(byte_1002B0328[(-85 * ((dword_100330E70 - v3) ^ 0xDF)) - 8] ^ 0x6D) - 8] ^ (-85 * ((dword_100330E70 - v3) ^ 0xDF))) + 184);
  v5 = 2054362027 * ((*v4 - v3 - &v8) ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  LODWORD(v10) = (2048652491 * ((&v9 - 1498806199 - 2 * (&v9 & 0xA6AA0849)) ^ 0x171B9F4C)) ^ 0x505;
  v9 = a1;
  LOBYTE(v5) = -85 * (*(v2 - 4) ^ 0xDF ^ *v4);
  v6 = *(&off_100315F70 + ((-85 * (dword_100330EB8 ^ 0xDF ^ dword_100330E70)) ^ byte_1002B7200[byte_1002B0320[(-85 * (dword_100330EB8 ^ 0xDF ^ dword_100330E70))] ^ 0x67]) + 221) - 8;
  (*&v6[8 * (byte_1002A5FBC[(byte_1002BF56C[v5 - 12] ^ 0xB1) - 12] ^ v5) + 77680])(&v9);
  HIDWORD(v9) = 3673 - 1875091903 * ((&v9 - 468934885 - 2 * (&v9 & 0xE40C9F1B)) ^ 0xD2791C98);
  v10 = a1;
  (*&v6[8 * (byte_1002B022C[(byte_1002A5CB0[(-85 * ((*v4 - *(v2 - 4)) ^ 0xDF))] ^ 0xEE) - 12] ^ (-85 * ((*v4 - *(v2 - 4)) ^ 0xDF))) + 76848])(&v9);
  return (v9 - 16257999);
}

uint64_t sub_1000BFC44(uint64_t a1)
{
  v1 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330D58) ^ 0xDF)) ^ byte_1002B0520[byte_1002A5EB0[(-85 * ((dword_100330E70 - dword_100330D58) ^ 0xDF))] ^ 0xAD]) + 339);
  v2 = *(&off_100315F70 + (byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - *v1) ^ 0xDF))] ^ 0x71] ^ (-85 * ((dword_100330E70 - *v1) ^ 0xDF))) + 42);
  v3 = (*v2 - *v1) ^ &v5;
  *v1 = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v7 = a1;
  v8 = 4383 - 33731311 * ((((&v6 | 0xDF4467CC) ^ 0xFFFFFFFE) - (~&v6 | 0x20BB9833)) ^ 0x194D5210);
  LOBYTE(v2) = -85 * ((*v2 + *v1) ^ 0xDF);
  (*(*(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330D58) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - dword_100330D58) ^ 0xDF))] ^ 0x1F]) + 191) + (v2 ^ byte_1002A5FB0[byte_1002BF560[v2] ^ 0xE9]) + 9416))(&v6);
  return v6;
}

uint64_t sub_1000C00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x280] = v8 - 208;
  v9 = STACK[0x2A8];
  STACK[0x2B0] = *(STACK[0x2A8] + 8 * (v6 - 3756));
  LODWORD(STACK[0x270]) = (a6 ^ 0xB20) + 191781780;
  LODWORD(STACK[0x290]) = a6 + 4099;
  return (*(v9 + 8 * ((46 * (((v6 + 69 + v6 + 70) ^ (*v7 == 0)) & 1)) ^ (v6 + 4166))))(9798, 0xAB3042D228875C41, 0x9508DCB2F33ECE2BLL, a4, 0x5963B6C555D97F1FLL);
}

uint64_t sub_1000C0270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = 1824088897 * ((-1644784137 - (&a14 | 0x9DF695F7) + (&a14 | 0x62096A08)) ^ 0x3A60B96A);
  a16 = a13;
  a17 = &a11;
  a15 = v23 - 793139351;
  a18 = -654855621 - v23;
  a19 = v23 + v20 + 1674575641;
  v24 = (*(v19 + 8 * (v20 ^ 0x2819u)))(&a14);
  return (*(v19 + 8 * (((a14 == v22) * (25 * (v20 ^ (v21 + 868) ^ (v21 + 3822)) - 976)) ^ v20)))(v24);
}

uint64_t sub_1000C0360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v71 + 8 * (v72 ^ 0x3247)))();
  v74 = STACK[0x85C];
  STACK[0x628] = STACK[0x628] + ((a71 - 6015) | 0x301u) - 917;
  return (*(v71 + 8 * ((418 * (v74 == 16257999)) ^ (a71 - 3969))))(v73);
}

uint64_t sub_1000C03FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, __int16 a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, uint64_t *a20)
{
  a19 = (v21 - 1814) ^ (1710126949 * ((&a15 - 1186890583 - 2 * (&a15 & 0xB9417CA9)) ^ 0x8B5A2739));
  a20 = &a9;
  a17 = a14;
  a18 = &a13;
  (*(v20 + 8 * ((v21 - 2021) ^ 0x2958)))(&a15);
  a16 = (v21 - 1920) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  a17 = a14;
  a18 = &a11;
  (*(v20 + 8 * ((v21 - 2021) ^ 0x295E)))(&a15);
  a17 = a14;
  LODWORD(a18) = v21 - 2021 - 2008441969 * (((&a15 | 0x6B1A8DA2) - (&a15 & 0x6B1A8DA2)) ^ 0x2383D9AC) + 2534;
  v23 = (*(v20 + 8 * (v21 + 4479)))(&a15);
  return (*(v20 + 8 * (((a15 == v22) * ((v21 - 2021) ^ 0x15DD)) ^ (v21 - 2021))))(v23);
}

uint64_t sub_1000C0544(uint64_t a1)
{
  LODWORD(STACK[0x714]) = v3;
  STACK[0x8B8] = *(v2 + 8 * (v1 - 5546));
  STACK[0x5B8] = &STACK[0x8F8];
  v4 = STACK[0x8F8];
  STACK[0x4E0] = STACK[0x8F8];
  return (*(v2 + 8 * (((v4 == 0) * ((((v1 - 5507) | 0x2125) - 2978) ^ 0x1691 ^ (11 * (((v1 - 5507) | 0x2125) ^ 0x2342)))) ^ ((v1 - 5507) | 0x2125))))(a1, 197499219);
}

uint64_t sub_1000C05D0(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  *a2 = 0;
  *a3 = 0;
  a13 = 476323082 - 1710126949 * ((((&a13 | 0x604B9BC4) ^ 0xFFFFFFFE) - (~&a13 | 0x9FB4643B)) ^ 0xADAF3FAB);
  v15 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((4775 * (a14 == 16257999)) ^ 0xEACu)))(v15);
}

uint64_t sub_1000C0698()
{
  v2 = (*(v1 + 8 * (v0 + 3394)))(32, 0x103004054B5FA7DLL);
  STACK[0x7C0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 ^ 0xFA3) - 4428) ^ 0x69B)) ^ v0)))();
}

uint64_t sub_1000C0790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a13;
  a19 = 1317436891 * (((&a17 | 0x2FADFC9A) - &a17 + (&a17 & 0xD0520360)) ^ 0x9FAE64EC) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((7887 * (a18 == ((v21 + 1935) ^ 0x891))) ^ v19)))(v22);
}

uint64_t sub_1000C0824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = v16 - 3792 - 1710126949 * ((2085322980 - (&a14 | 0x7C4B80E4) + (&a14 | 0x83B47F1B)) ^ 0xB1AF248B) + 476321169;
  v17 = (*(v15 + 8 * ((v16 - 3792) ^ 0x22DD)))(&a14);
  return (*(v15 + 8 * (((a15 == 16257999) * (((v16 - 9) | 0x24) - 5583)) ^ (v16 - 3792))))(v17);
}

uint64_t sub_1000C0940@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = v2 + 688;
  (*(a1 + 8 * (v2 + 5957)))(a2);
  v4 = STACK[0x3E8];
  *(STACK[0x500] + 24) = 0;
  v5 = (*(v4 + 8 * (v3 + 5269)))();
  STACK[0x500] = 0;
  return sub_10020FFDC(v5, v6, v7);
}

uint64_t sub_1000C0A5C(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x3F8] - 8603;
  LODWORD(STACK[0x330]) = 17168;
  return sub_1001F5364(a1, a2, v2);
}

uint64_t sub_1000C0A8C()
{
  (*(v1 + 8 * (v2 ^ 0x3247)))();
  *(v0 + 24) = 0;
  (*(v1 + 8 * ((v2 ^ 0x1327) + 8352)))(STACK[0x7C0]);
  return sub_1000C71AC();
}

uint64_t sub_1000C0AE4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x908] = *(v2 + 8 * v1);
  LODWORD(STACK[0xB44]) = -213646401;
  STACK[0xB48] = &STACK[0x7E8];
  return (*(v2 + 8 * ((238 * (((((v1 - 58) ^ 0xB1) + 26) ^ (a1 == 0)) & 1)) ^ (v1 + 4806))))();
}

uint64_t sub_1000C0B70@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int64x2_t a35, int8x16_t a36, int8x16_t a37, int8x16_t a38, int8x16_t a39, int8x16_t a40, int64x2_t a41, int8x16_t a42, int64x2_t a43, int8x16_t a44, int8x16_t a45, int8x16_t a46, int64x2_t a47, int8x16_t a48, uint64_t a49, uint64_t a50, int8x16_t a51)
{
  v62 = a1 - 16;
  *&STACK[0x360] = *(a5 + v62 - 16);
  v63.i64[0] = a5 + v62 - 1;
  v63.i64[1] = v52 + v62;
  v64.i64[0] = a5 + v62 - 3;
  v64.i64[1] = a5 + v62 - 4;
  v65.i64[0] = a5 + v62 - 5;
  v65.i64[1] = a5 + v62 - 6;
  v66.i64[0] = a5 + v62 - 7;
  v66.i64[1] = a5 + v62 - 8;
  v67.i64[0] = a5 + v62 - 9;
  v67.i64[1] = a5 + v62 - 10;
  v68.i64[0] = a5 + v62 - 11;
  v68.i64[1] = a5 + v62 - 12;
  v69.i64[0] = a5 + v62 - 13;
  v69.i64[1] = a5 + v62 - 14;
  v70.i64[0] = a5 + v62 - 15;
  v70.i64[1] = a5 + v62 - 16;
  v71.i64[0] = a4 + v62 - 15;
  v71.i64[1] = a4 + v62 - 16;
  *&STACK[0x310] = v71;
  v72 = vandq_s8(v70, a38);
  v73 = vandq_s8(v69, a38);
  v74 = vandq_s8(v68, a38);
  v75 = vandq_s8(v67, a38);
  v76 = vandq_s8(v66, a38);
  v77 = vandq_s8(v65, a38);
  v78 = vandq_s8(v64, a38);
  v79 = vandq_s8(v63, a38);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), *&STACK[0x280]);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), *&STACK[0x280]);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), *&STACK[0x280]);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), *&STACK[0x280]);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), *&STACK[0x280]);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), *&STACK[0x280]);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), *&STACK[0x280]);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), *&STACK[0x280]);
  v88 = veorq_s8(v87, *&STACK[0x270]);
  v89 = veorq_s8(v86, *&STACK[0x270]);
  v90 = veorq_s8(v85, *&STACK[0x270]);
  v91 = veorq_s8(v84, *&STACK[0x270]);
  v92 = veorq_s8(v83, *&STACK[0x270]);
  v93 = veorq_s8(v82, *&STACK[0x270]);
  v94 = veorq_s8(v81, *&STACK[0x270]);
  v95 = veorq_s8(v80, *&STACK[0x270]);
  v96 = veorq_s8(v80, *&STACK[0x260]);
  v97 = veorq_s8(v81, *&STACK[0x260]);
  v98 = veorq_s8(v82, *&STACK[0x260]);
  v99 = veorq_s8(v83, *&STACK[0x260]);
  v100 = veorq_s8(v84, *&STACK[0x260]);
  v101 = veorq_s8(v85, *&STACK[0x260]);
  v102 = veorq_s8(v86, *&STACK[0x260]);
  v103 = veorq_s8(v87, *&STACK[0x260]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), *&STACK[0x250]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v97), *&STACK[0x250]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v98), *&STACK[0x250]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v99), *&STACK[0x250]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v100), *&STACK[0x250]);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v101), *&STACK[0x250]);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v102), *&STACK[0x250]);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v103), *&STACK[0x250]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v113 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v114 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v115 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v116 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v117 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v118 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v119 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v119);
  v128 = vaddq_s64(v126, v118);
  v129 = vaddq_s64(v125, v117);
  v130 = vaddq_s64(v124, v116);
  v131 = vaddq_s64(v123, v115);
  v132 = vaddq_s64(v122, v114);
  v133 = vaddq_s64(v121, v113);
  v134 = vaddq_s64(v120, v112);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), *&STACK[0x240]), v134), *&STACK[0x230]), *&STACK[0x220]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), *&STACK[0x240]), v133), *&STACK[0x230]), *&STACK[0x220]);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), *&STACK[0x240]), v132), *&STACK[0x230]), *&STACK[0x220]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), *&STACK[0x240]), v131), *&STACK[0x230]), *&STACK[0x220]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), *&STACK[0x240]), v130), *&STACK[0x230]), *&STACK[0x220]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), *&STACK[0x240]), v129), *&STACK[0x230]), *&STACK[0x220]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), *&STACK[0x240]), v128), *&STACK[0x230]), *&STACK[0x220]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x240]), v127), *&STACK[0x230]), *&STACK[0x220]);
  v143 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v147 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v148 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v149 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v150 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v151 = veorq_s8(v138, v146);
  v152 = veorq_s8(v137, v145);
  v153 = veorq_s8(v136, v144);
  v154 = veorq_s8(v135, v143);
  v155 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v154);
  v163 = vaddq_s64(v161, v153);
  v164 = vaddq_s64(v160, v152);
  v165 = vaddq_s64(v159, v151);
  v166 = vaddq_s64(v158, v150);
  v167 = vaddq_s64(v157, v149);
  v168 = vaddq_s64(v156, v148);
  v169 = vaddq_s64(v155, v147);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), *&STACK[0x210]), v169), *&STACK[0x200]), a51);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), *&STACK[0x210]), v168), *&STACK[0x200]), a51);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), *&STACK[0x210]), v167), *&STACK[0x200]), a51);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), *&STACK[0x210]), v166), *&STACK[0x200]), a51);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), *&STACK[0x210]), v165), *&STACK[0x200]), a51);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), *&STACK[0x210]), v164), *&STACK[0x200]), a51);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), *&STACK[0x210]), v163), *&STACK[0x200]), a51);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), *&STACK[0x210]), v162), *&STACK[0x200]), a51);
  v178 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v182 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v183 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v184 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v185 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v186 = veorq_s8(v173, v181);
  v187 = veorq_s8(v172, v180);
  v188 = veorq_s8(v171, v179);
  v189 = veorq_s8(v170, v178);
  v190 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v189);
  v198 = vaddq_s64(v196, v188);
  v199 = vaddq_s64(v195, v187);
  v200 = vaddq_s64(v194, v186);
  v201 = vaddq_s64(v193, v185);
  v202 = vaddq_s64(v192, v184);
  v203 = vaddq_s64(v191, v183);
  v204 = vaddq_s64(v190, v182);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), a48), v204), a47), a46);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), a48), v203), a47), a46);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), a48), v202), a47), a46);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v201, v201), a48), v201), a47), a46);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v200, v200), a48), v200), a47), a46);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199, v199), a48), v199), a47), a46);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), a48), v198), a47), a46);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), a48), v197), a47), a46);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v214 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v215 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v216 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v217 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v218 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v219 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v220 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v221 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v220);
  v229 = veorq_s8(vaddq_s64(v221, v213), *&STACK[0x370]);
  v230 = veorq_s8(vaddq_s64(v222, v214), *&STACK[0x370]);
  v231 = veorq_s8(vaddq_s64(v223, v215), *&STACK[0x370]);
  v232 = veorq_s8(vaddq_s64(v224, v216), *&STACK[0x370]);
  v233 = veorq_s8(vaddq_s64(v225, v217), *&STACK[0x370]);
  v234 = veorq_s8(vaddq_s64(v226, v218), *&STACK[0x370]);
  v235 = veorq_s8(vaddq_s64(v227, v219), *&STACK[0x370]);
  v236 = veorq_s8(v228, *&STACK[0x370]);
  v237 = *&STACK[0x370];
  v238 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v243 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v245 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v246 = veorq_s8(v235, v244);
  v247 = veorq_s8(v234, v243);
  v248 = veorq_s8(v233, v242);
  v249 = veorq_s8(v232, v241);
  v250 = veorq_s8(v231, v240);
  v251 = veorq_s8(v230, v239);
  v252 = veorq_s8(v229, v238);
  v253 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v257 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v252);
  v261 = veorq_s8(vaddq_s64(v253, v245), a45);
  v262 = veorq_s8(vaddq_s64(v254, v246), a45);
  v263 = veorq_s8(vaddq_s64(v255, v247), a45);
  v264 = veorq_s8(vaddq_s64(v256, v248), a45);
  v265 = veorq_s8(vaddq_s64(v257, v249), a45);
  v266 = veorq_s8(vaddq_s64(v258, v250), a45);
  v267 = veorq_s8(vaddq_s64(v259, v251), a45);
  v268 = veorq_s8(v260, a45);
  v269 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v270 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v273 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v274 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v275 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v276 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v277 = veorq_s8(v264, v272);
  v278 = veorq_s8(v263, v271);
  v279 = veorq_s8(v262, v270);
  v280 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v281 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v286 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v250.i64[0] = a4 + v62 - 7;
  v250.i64[1] = a4 + v62 - 8;
  v287 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), veorq_s8(v261, v269));
  v249.i64[0] = a4 + v62 - 5;
  v249.i64[1] = a4 + v62 - 6;
  v288 = vaddq_s64(v286, v279);
  v71.i64[0] = a4 + v62 - 3;
  v71.i64[1] = a4 + v62 - 4;
  *&STACK[0x2C0] = v71;
  v289 = vaddq_s64(v285, v278);
  v290.i64[0] = a4 + v62 - 1;
  v290.i64[1] = a6 + v62;
  *&STACK[0x2E0] = v290;
  v291 = vaddq_s64(v284, v277);
  v292 = vaddq_s64(v283, v276);
  v293 = vaddq_s64(v282, v275);
  v294 = vaddq_s64(v281, v274);
  v295 = vaddq_s64(v280, v273);
  v296 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v289, v289), a44), v289), a43);
  v297 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v293, v293), a44), v293), a43);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v294, v294), a44), v294), a43), a42);
  v299 = vandq_s8(vshlq_n_s64(v67, 3uLL), a37);
  *&STACK[0x2F0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v287, v287), a44), v287), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), a37)));
  *&STACK[0x300] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), a44), v288), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), a37)));
  v300 = vshlq_u64(veorq_s8(v296, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), a37)));
  v301 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v291, v291), a44), v291), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v66, 3uLL), a37)));
  *&STACK[0x340] = vshlq_u64(veorq_s8(v297, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), a37)));
  *&STACK[0x350] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v292, v292), a44), v292), a43), a42), vnegq_s64(v299));
  *&STACK[0x320] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v295, v295), a44), v295), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), a37)));
  *&STACK[0x330] = vshlq_u64(v298, vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a37)));
  v302 = vandq_s8(v290, a38);
  v303 = vandq_s8(v71, a38);
  v304 = vandq_s8(v249, a38);
  v305 = vandq_s8(v250, a38);
  v306 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL);
  v310 = vorrq_s8(vaddq_s64(v306, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v311 = vorrq_s8(vaddq_s64(v307, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v312 = vorrq_s8(vaddq_s64(v308, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v313 = vorrq_s8(vsubq_s64(*&STACK[0x390], v306), *&STACK[0x380]);
  v314 = vorrq_s8(vsubq_s64(*&STACK[0x390], v307), *&STACK[0x380]);
  v315 = vorrq_s8(vsubq_s64(*&STACK[0x390], v308), *&STACK[0x380]);
  *&STACK[0x2D0] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v309), *&STACK[0x380]), vorrq_s8(vaddq_s64(v309, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v316 = vaddq_s64(v315, v312);
  v317 = vsubq_s64(a41, vaddq_s64(v313, v310));
  v318 = vsubq_s64(a41, vaddq_s64(v314, v311));
  v319 = vsubq_s64(a41, v316);
  v320 = veorq_s8(v318, a40);
  v321 = veorq_s8(v317, a40);
  v322 = veorq_s8(v317, a39);
  v323 = veorq_s8(v318, a39);
  v324 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v323);
  v325 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v326 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v325, v325), a36), v325), a35), a34);
  v327 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v324, v324), a36), v324), a35), a34);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v329 = veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v330 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328), a33);
  v331 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v329), a33);
  v332 = veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL));
  v333 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL));
  v334 = vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL);
  v335 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), v333);
  v336 = vdupq_n_s64(v60);
  v337 = veorq_s8(vaddq_s64(v334, v332), v336);
  v338 = veorq_s8(v335, v336);
  v339 = veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL));
  v340 = veorq_s8(v337, vsraq_n_u64(vshlq_n_s64(v332, 3uLL), v332, 0x3DuLL));
  v341 = vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v340);
  v343 = vaddq_s64(v341, v339);
  v344 = vdupq_n_s64(v59);
  v345 = veorq_s8(v343, v344);
  v346 = veorq_s8(v342, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v348 = veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v349 = veorq_s8(v345, v347);
  v350 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v351 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v349);
  v352 = v237;
  v353 = veorq_s8(vaddq_s64(v350, v348), v237);
  v354 = veorq_s8(v351, v237);
  v355 = veorq_s8(v354, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v356 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v357 = vdupq_n_s64(v53);
  v358 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v355), v357);
  v359 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), v356), v357);
  v360 = v357;
  v361 = vdupq_n_s64(v54);
  v362 = vdupq_n_s64(a7);
  v363 = vdupq_n_s64(v55);
  v364 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v358, v361), vorrq_s8(v358, v362)), v362), v363);
  v365 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v359, v361), vorrq_s8(v359, v362)), v362), v363);
  v366 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), veorq_s8(v364, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL)));
  v367 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), veorq_s8(v365, vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL)));
  v368 = vdupq_n_s64(v56);
  v369 = vsubq_s64(vandq_s8(vaddq_s64(v367, v367), v368), v367);
  v370 = vsubq_s64(vandq_s8(vaddq_s64(v366, v366), v368), v366);
  v371 = vdupq_n_s64(v57);
  v372 = vaddq_s64(v370, v371);
  v373 = vdupq_n_s64(v58);
  v466.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v369, v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v250, 3uLL), a37))), v301);
  v466.val[2] = veorq_s8(vshlq_u64(veorq_s8(v372, v373), vnegq_s64(vandq_s8(vshlq_n_s64(v249, 3uLL), a37))), v300);
  v374 = veorq_s8(v319, a40);
  v375 = veorq_s8(v319, a39);
  v376 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL), v375);
  v377 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v376, v376), a36), v376), a35), a34);
  v378 = veorq_s8(v377, vsraq_n_u64(vshlq_n_s64(v375, 3uLL), v375, 0x3DuLL));
  v379 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL), v378), a33);
  v380 = veorq_s8(v379, vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  *&STACK[0x290] = v336;
  *&STACK[0x2A0] = v344;
  v381 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL), v380), v336);
  v382 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v380, 3uLL), v380, 0x3DuLL));
  v383 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v382), v344);
  v384 = veorq_s8(v383, vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL));
  v385 = v352;
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL), v384), v352);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL));
  *&STACK[0x2B0] = v360;
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), v360);
  v389 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v388, v361), vorrq_s8(v388, v362)), v362), v363);
  v301.i64[0] = a4 + v62 - 13;
  v301.i64[1] = a4 + v62 - 14;
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL), veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL)));
  v358.i64[0] = a4 + v62 - 11;
  v358.i64[1] = a4 + v62 - 12;
  v391 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v390, v390), v368), v390), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a37)));
  v390.i64[0] = a4 + v62 - 9;
  v390.i64[1] = a4 + v62 - 10;
  *&STACK[0x2C0] = v390;
  v392 = vsubq_s64(a41, *&STACK[0x2D0]);
  v466.val[1] = veorq_s8(v391, *&STACK[0x300]);
  v393 = veorq_s8(v392, a40);
  v394 = veorq_s8(v392, a39);
  v395 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), v394);
  v396 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v395, v395), a36), v395), a35), a34);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL));
  v398 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL), v397), a33);
  v399 = veorq_s8(v398, vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL));
  v400 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL), v399), v336);
  v401 = veorq_s8(v400, vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL));
  v402 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL), v401), v344);
  v403 = veorq_s8(v402, vsraq_n_u64(vshlq_n_s64(v401, 3uLL), v401, 0x3DuLL));
  v404 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL), v403), v385);
  v405 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v403, 3uLL), v403, 0x3DuLL));
  v406 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v405), v360);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v406, v361), vorrq_s8(v406, v362)), v362), v363);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL));
  v409 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v410 = vandq_s8(v390, a38);
  v411 = vaddq_s64(v409, v408);
  v412 = vandq_s8(v358, a38);
  v413 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v411, v411), v368), v411), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2E0], 3uLL), a37)));
  v414 = vandq_s8(v301, a38);
  v466.val[0] = veorq_s8(v413, *&STACK[0x2F0]);
  v415 = vandq_s8(*&STACK[0x310], a38);
  v416 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v417 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL);
  v420 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v416), *&STACK[0x380]), vorrq_s8(vaddq_s64(v416, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v421 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v417), *&STACK[0x380]), vorrq_s8(vaddq_s64(v417, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v417.i64[0] = vqtbl4q_s8(v466, a32).u64[0];
  v466.val[0] = veorq_s8(v421, a40);
  v466.val[1] = veorq_s8(v420, a40);
  v422 = veorq_s8(v420, a39);
  v466.val[2] = veorq_s8(v421, a39);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL), v466.val[2]);
  v466.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v422);
  v466.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v466.val[1], v466.val[1]), a36), v466.val[1]), a35), a34);
  v466.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v466.val[0], v466.val[0]), a36), v466.val[0]), a35), a34);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v423 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v423), a33);
  v466.val[0] = veorq_s8(v466.val[0], a33);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v424 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v424), *&STACK[0x290]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x290]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v425 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v425), *&STACK[0x2A0]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x2A0]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL);
  v426 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v426), *&STACK[0x370]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x370]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v427 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v427), *&STACK[0x2B0]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x2B0]);
  v466.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v466.val[1], v361), vorrq_s8(v466.val[1], v362)), v362), v363);
  v466.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v466.val[0], v361), vorrq_s8(v466.val[0], v362)), v362), v363);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL);
  v428 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v429 = vaddq_s64(v466.val[3], v428);
  v430 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v418), *&STACK[0x380]), vorrq_s8(vaddq_s64(v418, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v466.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v429, v429), v368), v429), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), a37))), *&STACK[0x320]);
  v466.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v466.val[0], v466.val[0]), v368), v466.val[0]), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v301, 3uLL), a37))), *&STACK[0x330]);
  v431 = veorq_s8(v430, a40);
  v432 = veorq_s8(v430, a39);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL), v432);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), a36), v433), a35), a34);
  v435 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v436 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v435), a33);
  v437 = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v438 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437), *&STACK[0x290]);
  v439 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v440 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v439), *&STACK[0x2A0]);
  v441 = veorq_s8(v440, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v442 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v441), *&STACK[0x370]);
  v443 = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v444 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v443), *&STACK[0x2B0]);
  v445 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, v361), vorrq_s8(v444, v362)), v362), v363);
  v446 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL)));
  v447 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v419), *&STACK[0x380]), vorrq_s8(vaddq_s64(v419, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v466.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v446, v446), v368), v446), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), a37))), *&STACK[0x340]);
  v448 = veorq_s8(v447, a40);
  v449 = veorq_s8(v447, a39);
  v450 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL), v449);
  v451 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v450, v450), a36), v450), a35), a34);
  v452 = veorq_s8(v451, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v453 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), v452), a33);
  v454 = veorq_s8(v453, vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL));
  v455 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v454), *&STACK[0x290]);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v457 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456), *&STACK[0x2A0]);
  v458 = veorq_s8(v457, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v459 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v458), *&STACK[0x370]);
  v460 = veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL));
  v461 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), v460), *&STACK[0x2B0]);
  v462 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v461, v361), vorrq_s8(v461, v362)), v362), v363);
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL)));
  v466.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v463, v463), v368), v463), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a37))), *&STACK[0x350]);
  v417.i64[1] = vqtbl4q_s8(v466, a32).u64[0];
  v464 = vrev64q_s8(v417);
  *(a4 + v62 - 16) = veorq_s8(vextq_s8(v464, v464, 8uLL), *&STACK[0x360]);
  return (*(v61 + 8 * (((a3 == v62) * v51) ^ a2)))();
}

uint64_t sub_1000C0B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, ...)
{
  va_start(va, a8);
  v10 = (*(v9 + 8 * (v8 + 3417)))(a8, a2, va) == 0;
  return (*(v9 + 8 * ((v10 * (634 * (v8 ^ 0x1866) + 10397)) ^ v8)))();
}

uint64_t sub_1000C0C30@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = v4 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = ((a1 + 1316268477) & 0x1DAB2FCE ^ 0xC66) != (v2 & 0xFFFFFFE0);
  return (*(v3 + 8 * (((4 * v6) | (8 * v6)) ^ (a1 + 1814028345))))();
}

uint64_t sub_1000C0CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20)
{
  v26 = 1875091903 * ((-622441221 - (&a17 | 0xDAE64CFB) + (&a17 | 0x2519B304)) ^ 0x136C3087);
  a18 = (v23 ^ 0xF83DF7EF) + ((2 * v23) & 0xF07BEFDE) + ((v25 - 1424) | 0x608) + 668905517 + v26;
  a19 = v25 + 4118 + v26;
  a20 = a14;
  (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  v27 = 1875091903 * (&a17 ^ 0x36758383);
  a20 = a14;
  a18 = v27 + ((v22 >> ((v25 - 25) & 0xF7 ^ 0xD5)) ^ 0xF27EF6AF) + ((2 * (v22 >> ((v25 - 25) & 0xF7 ^ 0xD5))) & 0xE4FDED5E) + 765313019;
  a19 = v25 + 4118 + v27;
  (*(v24 + 8 * (v25 + 6039)))(&a17);
  v28 = 1875091903 * ((2 * (&a17 & 0x12F63890) - &a17 - 318126227) ^ 0xDB7C44EE);
  a20 = a14;
  a18 = (v22 ^ 0xE2BEB6BE) + ((2 * v22) & 0xC57D6D7C) + 1029570540 + v28;
  a19 = v25 + 4118 + v28;
  (*(v24 + 8 * (v25 + 6039)))(&a17);
  v29 = 1875091903 * ((426359305 - (&a17 | 0x1969BA09) + (&a17 | 0xE69645F6)) ^ 0xD0E3C675);
  a20 = a14;
  a18 = (v21 ^ 0xA21DF7BA) + ((2 * v21) & 0x443BEF74) + 2113847024 + v29;
  a19 = v25 + 4118 + v29;
  (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  v30 = 1875091903 * ((((&a17 | 0xD826A5F4) ^ 0xFFFFFFFE) - (~&a17 | 0x27D95A0B)) ^ 0x11ACD988);
  a20 = a14;
  a18 = (v20 ^ 0x61DDF7BE) + ((2 * v20) & 0xC3BBEF7C) - 1103184148 + v30;
  a19 = v25 + 4118 + v30;
  v31 = (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  return (*(v24 + 8 * ((152 * (a17 != 16257999)) ^ v25)))(v31);
}

uint64_t sub_1000C1088(uint64_t a1)
{
  *v3 = a1;
  *v2 = v7;
  v5 = (v1 ^ 0xDAC) + 1124;
  v12 = ((v1 ^ 0xDAC) + 2393) ^ (1824088897 * ((&v10 & 0xEEEAEBF | ~(&v10 | 0xEEEAEBF)) ^ 0xA9788222));
  v11 = v8;
  (*(v4 + 8 * (v1 ^ 0x3F61)))(&v10);
  v11 = v9;
  v12 = (v5 + 1269) ^ (1824088897 * (((&v10 | 0x8BD7EBF5) + (~&v10 | 0x7428140A)) ^ 0xD3BE3896));
  (*(v4 + 8 * (v5 ^ 0x3E29)))(&v10);
  return 0;
}

uint64_t sub_1000C11B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x330];
  v74 = *(a72 + 8 * (v72 - 5489));
  v75 = *STACK[0x3A0];
  v76 = __ROR8__((v75 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = (v76 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v78 = __ROR8__((v76 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v79 = (0xE13B7065743737B0 - ((v78 + v77) | 0xE13B7065743737B0) + ((v78 + v77) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (0xEA42215FB09D0055 - ((v81 + v80) | 0xEA42215FB09D0055) + ((v81 + v80) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (0xFBC8962DEA5A1818 - ((v86 + v85) | 0xFBC8962DEA5A1818) + ((v86 + v85) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((2 * (v89 + v88)) & 0x95D159776768EC9ALL) - (v89 + v88) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) & 0xD800CF627F7DCE02) - (v92 + v91) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  *(v75 + 4) = BYTE1(LODWORD(STACK[0x330])) ^ 0x98 ^ (((((2 * (v95 + v94)) & 0x4CC31BBC7D14A244) - (v95 + v94) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v75 + 4) & 7)));
  v96 = __ROR8__((v75 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((2 * (v96 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v96 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v98 = v97 ^ 0x56CD15ABE79E9D29;
  v97 ^= 0xFE8BF03C7E68EC75;
  v99 = __ROR8__(v98, 8);
  v100 = (((2 * (v99 + v97)) & 0x42379E9795A534D6) - (v99 + v97) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v101 = v100 ^ __ROR8__(v97, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) | 0xF087926224A8E20ALL) - (v102 + v101) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x5963B6C555D97F1FLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x61459D2AF01F24F7;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) | 0x8BD1FBA0C354CF8ELL) - (v109 + v108) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x1A2AEBE44253AF03;
  v113 = __ROR8__(v112, 8) + (v112 ^ __ROR8__(v111, 61));
  *(v75 + 5) = v73 ^ 0x9E ^ (((0xE4BAC51C5A42204CLL - (v113 | 0xE4BAC51C5A42204CLL) + (v113 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v75 + 5) & 7)));
  return v74();
}