uint64_t sub_100002014()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin);
  v2 = [v1 compressorOn];
  v3 = [v1 compressorOnRestricted];
  v4 = [v1 compressorOnInvalid];
  v5 = [v1 compressorOnDisabled];
  if (v2)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

void sub_1000020F0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setCompressorOn:{objc_msgSend(a3, "compressorOn") ^ 1}];
    sub_1000C10C4();
    [v5 setEnabled:sub_100002014() < 8];
    if ((sub_100002014() & 0x1B) == 1)
    {
      v6 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
    }

    else
    {
      v6 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
    }

    v7 = &v5[*v6];
    v8 = *(v7 + 1);
    v9 = *(v7 + 2);
    v10 = *v7;
    v11 = v8;

    sub_10007A4CC(v10, v11, v9);

    sub_10000220C();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

void sub_10000220C()
{
  if ((*(v0 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_style) | 2) != 3)
  {
    v17 = [objc_opt_self() sharedApplication];
    v18 = [v17 delegate];

    if (v18)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v19 = sub_1000AF438();
      swift_unknownObjectRelease();
      v20 = *&v19[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

      v21 = *&v20[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
      if (v21 == 2)
      {
        if (qword_100113EF0 != -1)
        {
          swift_once();
        }

        v22 = qword_10011B0E8;
        v23 = unk_10011B0F0;
        v24 = qword_10011B0F8;
        v25 = [objc_opt_self() labelColor];
        if (!v25)
        {
          v25 = v23;
        }

        v26 = v22;

        sub_1000A70A8(v26, v25, v24);
      }

      if (qword_100113EF0 != -1)
      {
        swift_once();
      }

      v27 = qword_10011B0E8;
      v28 = qword_10011B0F8;
      v29 = [objc_opt_self() systemBlueColor];
      if (qword_100113EC0 != -1)
      {
        swift_once();
      }

      v30 = [v29 resolvedColorWithTraitCollection:qword_100116C00];

      v31 = v27;

      sub_1000A70A8(v31, v30, v28);

      if (qword_100113EE8 != -1)
      {
        swift_once();
      }

      v16 = &qword_10011B0D0;
      goto LABEL_30;
    }

LABEL_34:
    __break(1u);
    return;
  }

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v3 = sub_1000AF438();
  swift_unknownObjectRelease();
  v4 = *&v3[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

  v5 = *&v4[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
  if (v5 == 2)
  {
    if (qword_100113EE0 != -1)
    {
      swift_once();
    }

    v6 = qword_10011B0B8;
    v7 = qword_10011B0C0;
    v8 = qword_10011B0C8;
    v9 = [objc_opt_self() labelColor];
    if (!v9)
    {
      v9 = v7;
    }

    v10 = v6;

    sub_1000A70A8(v10, v9, v8);
  }

  if (qword_100113EE0 != -1)
  {
    swift_once();
  }

  v11 = qword_10011B0B8;
  v12 = qword_10011B0C0;
  v13 = qword_10011B0C8;
  v14 = [objc_opt_self() systemBlueColor];
  if (!v14)
  {
    v14 = v12;
  }

  v15 = v11;

  sub_1000A70A8(v15, v14, v13);

  if (qword_100113ED8 != -1)
  {
    swift_once();
  }

  v16 = &qword_10011B0A0;
LABEL_30:
  v32 = v16[1];
  v33 = v16[2];
  v35 = *v16;
  v34 = v32;

  sub_1000A70B4(v35, v34, v33);
}

id sub_1000027B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateCompressorButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id variable initialization expression of ClimateButton.backgroundView()
{
  type metadata accessor for ClimateTransparentView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1000028B4()
{
  v0 = objc_opt_self();
  v1 = [v0 clearColor];
  v2 = [v0 labelColor];
  if (qword_100113EB8 != -1)
  {
    swift_once();
  }

  v3 = [v2 resolvedColorWithTraitCollection:qword_100116BF8];

  return v1;
}

id variable initialization expression of ClimateStepper.colorConfig()
{
  if (qword_100113EC8 != -1)
  {
    swift_once();
  }

  v0 = qword_10011B070;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 labelColor];
  if (qword_100113EB8 != -1)
  {
    swift_once();
  }

  v4 = [v3 resolvedColorWithTraitCollection:qword_100116BF8];

  return v2;
}

uint64_t type metadata accessor for ClimateCompressorButton()
{
  result = qword_100113FC8;
  if (!qword_100113FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_100002B4C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *sub_100002B94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002BCC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002C44(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002CC4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002D08()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002D44()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002D98()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100002E10@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002E58(uint64_t a1)
{
  v2 = sub_10000369C(&qword_100116D20);
  v3 = sub_10000369C(&unk_100114100);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002EF0()
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

uint64_t sub_100002F78@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100002FA4(void *a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = sub_10003FC80(v3, a2);
  v5 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = xmmword_1000D5430;
  if (v7 && (v6 == 4403009 ? (v8 = v7 == 0xE300000000000000) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v9 = v4;
  }

  else
  {
    v10 = v4;
    ClimateButton.updateClimateConfiguration()();
  }

  if (a2 == 1)
  {
  }

  else
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v3;
    v13 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_action];
    swift_beginAccess();
    v14 = *v13;
    *v13 = sub_100003378;
    v13[1] = v12;
    v15 = v3;

    sub_100003380(v14);
  }

  v16 = [v4 titleLabel];
  if (v16)
  {
    if (qword_100113F10 != -1)
    {
      v29 = v16;
      swift_once();
      v16 = v29;
    }

    v17 = v16;
    [v16 setFont:qword_10011B250];
  }

  sub_10000220C();
  sub_1000C10C4();
  [v4 setEnabled:sub_100002014() < 8];
  if ((sub_100002014() & 0x1B) == 1)
  {
    v18 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v18 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v19 = &v4[*v18];
  v20 = *(v19 + 1);
  v21 = *(v19 + 2);
  v22 = *v19;
  v23 = v20;

  sub_10007A4CC(v22, v23, v21);

  sub_10000220C();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v24 = [objc_opt_self() sharedApplication];
  v25 = [v24 delegate];

  if (v25)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v26 = sub_1000AF438();
    swift_unknownObjectRelease();
    v27 = *&v26[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v28 = v4;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100003300()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003338()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003380(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100003390()
{
  sub_1000C10C4();
  [v0 setEnabled:sub_100002014() < 8];
  if ((sub_100002014() & 0x1B) == 1)
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v2 = &v0[*v1];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;

  sub_10007A4CC(v5, v6, v4);

  sub_10000220C();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_100003458()
{
  if ((sub_100002014() & 0x1B) == 1)
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v2 = v0 + *v1;
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *v2;
  v6 = v3;

  sub_10007A4CC(v5, v6, v4);

  sub_10000220C();
}

uint64_t sub_10000350C(uint64_t a1, int a2)
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

uint64_t sub_10000352C(uint64_t result, int a2, int a3)
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

__n128 sub_10000356C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003578(uint64_t a1, int a2)
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

uint64_t sub_100003598(uint64_t result, int a2, int a3)
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

void sub_1000035E8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000369C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100003740(uint64_t a1)
{
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUPhysicalControlBarsButton();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 != enum case for CAUPhysicalControlBarsButton.temperature(_:))
  {
    if (v11 == enum case for CAUPhysicalControlBarsButton.fan(_:))
    {
      v17 = *(v1 + OBJC_IVAR____TtC7Climate11ClimateZone_fan);
      if (v17)
      {
        v18 = objc_allocWithZone(type metadata accessor for ClimateFanIndicator());
        return sub_10007AA8C(v17);
      }

      return 0;
    }

    if (v11 == enum case for CAUPhysicalControlBarsButton.seatFan(_:))
    {
      v19 = *(v1 + OBJC_IVAR____TtC7Climate11ClimateZone_seatFan);
      if (!v19)
      {
        return 0;
      }

      v20 = objc_allocWithZone(type metadata accessor for ClimateSeatFanServiceButton());
      v21 = v19;
      v22 = sub_1000584A8(v21);
      [v22 setUserInteractionEnabled:0];
      v23 = *&v22[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor];
      v24 = *&v22[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8];
      v25 = *&v22[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 16];
      v26 = objc_opt_self();
      v16 = v22;
      v27 = v23;
      v28 = v24;

      v29 = [v26 labelColor];
      if (v29)
      {
        v30 = v29;

        v28 = v30;
      }

      sub_1000A70B4(v27, v28, v25);

      v31 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8];
      v32 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16];
      v33 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor];
      v34 = v31;

      v35 = [v26 clearColor];
      if (v35)
      {
LABEL_11:
        v36 = v35;

        v33 = v36;
      }
    }

    else
    {
      if (v11 != enum case for CAUPhysicalControlBarsButton.seatHeatingCooling(_:))
      {
        if (v11 == enum case for CAUPhysicalControlBarsButton.deepLink(_:))
        {
          (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v3);
          v49 = objc_allocWithZone(type metadata accessor for ClimateDeepLinkButton());
          v50 = sub_100066818(v6);
          v51 = objc_opt_self();
          v52 = [v51 clearColor];
          v53 = [v51 labelColor];
          sub_10007A4CC(v52, v53, &_swiftEmptyDictionarySingleton);

          v16 = v50;
          v54 = [v16 layer];
          [v54 setHitTestsAsOpaque:1];

          return v16;
        }

        (*(v8 + 8))(v10, v7);
        return 0;
      }

      v37 = *(v1 + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling);
      if (!v37)
      {
        return 0;
      }

      v38 = objc_allocWithZone(type metadata accessor for ClimateSeatHeatingCoolingServiceButton());
      v21 = v37;
      v39 = sub_10006E5D8(v21, 5);
      [v39 setUserInteractionEnabled:0];
      v40 = *&v39[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor];
      v41 = *&v39[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8];
      v42 = *&v39[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 16];
      v43 = objc_opt_self();
      v16 = v39;
      v44 = v40;
      v45 = v41;

      v46 = [v43 labelColor];
      if (v46)
      {
        v47 = v46;

        v45 = v47;
      }

      sub_1000A70B4(v44, v45, v42);

      v48 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8];
      v32 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16];
      v33 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor];
      v34 = v48;

      v35 = [v43 clearColor];
      if (v35)
      {
        goto LABEL_11;
      }
    }

    sub_1000A70A8(v33, v34, v32);

    return v16;
  }

  v12 = *(v1 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
  v13 = objc_allocWithZone(type metadata accessor for ClimateTemperatureIndicator());
  v14 = v12;
  sub_1000B37D0(v14, 1, 0x4040800000000000, 0, 5u);
  v16 = v15;

  [v16 setUserInteractionEnabled:0];
  return v16;
}

void sub_100003D84()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ClimateRoleViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  [v3 addSubview:v1];

  sub_1000040E8(&unk_100114770);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D58A0;
  v6 = [v1 centerXAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 centerXAnchor];

  v10 = [v6 constraintEqualToAnchor:v9];
  *(v5 + 32) = v10;
  v11 = [v1 centerYAnchor];

  v12 = [v0 view];
  if (v12)
  {
    v13 = v12;
    v14 = objc_opt_self();
    v15 = [v13 centerYAnchor];

    v16 = [v11 constraintEqualToAnchor:v15];
    *(v5 + 40) = v16;
    sub_100004130();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 activateConstraints:isa];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10000407C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateRoleViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000040E8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004130()
{
  result = qword_1001149C0;
  if (!qword_1001149C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001149C0);
  }

  return result;
}

BOOL sub_10000417C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost);
  v2 = [v1 level];
  v3 = [v1 levelInvalid];
  v4 = 8;
  if (v2)
  {
    v4 = 9;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2 != 0;
  }
}

void sub_1000041E0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setLevel:{objc_msgSend(a3, "level") == 0}];
    sub_1000C10C4();
    v6 = OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost;
    [*&v5[OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost] level];
    [v5 setEnabled:{objc_msgSend(*&v5[v6], "levelInvalid") ^ 1}];
    sub_100004308();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

void sub_100004308()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost);
  v3 = [v2 level] == 0;
  if ((v3 | [v2 levelInvalid]))
  {
    v4 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  v5 = v1 + *v4;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *v5;
  v9 = v6;

  sub_10007A4CC(v8, v9, v7);

  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 delegate];

  if (v11)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v12 = sub_1000AF438();
    swift_unknownObjectRelease();
    v13 = *&v12[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v14 = *&v13[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    if (v14 == 2)
    {
      if (qword_100113EE0 != -1)
      {
        swift_once();
      }

      v15 = qword_10011B0B8;
      v16 = qword_10011B0C0;
      v17 = qword_10011B0C8;
      v18 = [objc_opt_self() labelColor];
      if (!v18)
      {
        v18 = v16;
      }

      v21 = v15;
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_style))
      {
        if (*(v1 + OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_style) == 4)
        {
          if (qword_100113EF0 != -1)
          {
            swift_once();
          }

          v19 = &qword_10011B0E8;
        }

        else
        {
          if (qword_100113EE0 != -1)
          {
            swift_once();
          }

          v19 = &qword_10011B0B8;
        }
      }

      else
      {
        if (qword_100113EF8 != -1)
        {
          swift_once();
        }

        v19 = &qword_10011B100;
      }

      v20 = v19[1];
      v17 = v19[2];
      v21 = *v19;
      v18 = v20;
    }

    sub_1000A70A8(v21, v18, v17);
  }

  else
  {
    __break(1u);
  }
}

id sub_100004638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateDefrostServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateDefrostServiceButton()
{
  result = qword_100114298;
  if (!qword_100114298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000047D8(void *a1, unsigned __int8 a2)
{
  *&v2[OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost] = a1;
  v2[OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_style] = a2;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for ClimateDefrostServiceButton();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v36, "init");
  [v5 registerObserver:v6];
  v7 = CAFDefrost.symbolName.getter();
  v9 = v8;
  v10 = &v6[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v7;
  v10[1] = v9;
  if (!v12 || (v7 == v11 ? (v13 = v12 == v9) : (v13 = 0), !v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v5;
  v16 = &v6[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v17 = *v16;
  *v16 = sub_100004C94;
  v16[1] = v15;
  v18 = v5;

  sub_100003380(v17);

  if (a2 <= 3u && a2 != 2)
  {
    v19 = [v6 titleLabel];
    if (v19)
    {
      if (qword_100113F10 != -1)
      {
        v35 = v19;
        swift_once();
        v19 = v35;
      }

      v20 = v19;
      [v19 setFont:qword_10011B250];
    }

    if (qword_100113EE0 != -1)
    {
      swift_once();
    }

    v21 = qword_10011B0C0;
    v22 = qword_10011B0C8;
    v23 = qword_10011B0B8;
    v24 = v21;

    sub_1000A70A8(v23, v24, v22);

    if (qword_100113ED8 != -1)
    {
      swift_once();
    }

    v25 = qword_10011B0A8;
    v26 = qword_10011B0B0;
    v27 = qword_10011B0A0;
    v28 = v25;

    sub_1000A70B4(v27, v28, v26);
  }

  sub_1000C10C4();
  v29 = OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost;
  [*&v6[OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost] level];
  [v6 setEnabled:{objc_msgSend(*&v6[v29], "levelInvalid") ^ 1}];
  sub_100004308();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v30 = [objc_opt_self() sharedApplication];
  v31 = [v30 delegate];

  if (v31)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v32 = sub_1000AF438();
    swift_unknownObjectRelease();
    v33 = *&v32[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v34 = v6;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100004C1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004C54()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100004C9C()
{
  sub_1000C10C4();
  v1 = *&v0[OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost];
  [v1 level];
  [v0 setEnabled:{objc_msgSend(v1, "levelInvalid") ^ 1}];
  sub_100004308();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

uint64_t sub_100004D14()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin);
  v2 = [v1 maxDefrostOn];
  v3 = [v1 maxDefrostOnRestricted];
  v4 = [v1 maxDefrostOnInvalid];
  v5 = [v1 maxDefrostOnDisabled];
  if (v2)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

void sub_100004DF0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setMaxDefrostOn:{objc_msgSend(a3, "maxDefrostOn") ^ 1}];
    sub_1000C10C4();
    [v5 setEnabled:sub_100004D14() < 8];
    sub_100004E94();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

void sub_100004E94()
{
  v1 = v0;
  if ((sub_100004D14() & 0x1B) == 1)
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v3 = v0 + *v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *v3;
  v7 = v4;

  sub_10007A4CC(v6, v7, v5);

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v10 = sub_1000AF438();
    swift_unknownObjectRelease();
    v11 = *&v10[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v12 = *&v11[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    if (v12 == 2)
    {
      if (qword_100113EE0 != -1)
      {
        swift_once();
      }

      v13 = qword_10011B0B8;
      v14 = qword_10011B0C0;
      v15 = qword_10011B0C8;
      v16 = [objc_opt_self() labelColor];
      if (!v16)
      {
        v16 = v14;
      }

      v19 = v13;
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_style) == 4)
      {
        if (qword_100113EF0 != -1)
        {
          swift_once();
        }

        v17 = &qword_10011B0E8;
      }

      else
      {
        if (qword_100113EE0 != -1)
        {
          swift_once();
        }

        v17 = &qword_10011B0B8;
      }

      v18 = v17[1];
      v15 = v17[2];
      v19 = *v17;
      v16 = v18;
    }

    sub_1000A70A8(v19, v16, v15);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000051CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateMaxDefrostButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateMaxDefrostButton()
{
  result = qword_100114398;
  if (!qword_100114398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000052A0(void *a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = sub_10003FC80(v3, a2);
  v5 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = 0xD00000000000001FLL;
  *(v5 + 1) = 0x80000001000DA220;
  if (v7 && (v6 == 0xD00000000000001FLL ? (v8 = 0x80000001000DA220 == v7) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v9 = v4;
  }

  else
  {
    v10 = v4;
    ClimateButton.updateClimateConfiguration()();
  }

  v11 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v12 = v4[v11];
  v4[v11] = 1;
  if ((v12 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v13 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  *v13 = xmmword_1000D5930;
  if (!v15 || (v14 == 5783885 ? (v16 = v15 == 0xE300000000000000) : (v16 = 0), !v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  *&v4[OBJC_IVAR____TtC7Climate13ClimateButton_spaceBetweenSymbolAndTitle] = 0xC008000000000000;
  [v4 setNeedsLayout];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v3;
  v19 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v20 = *v19;
  *v19 = sub_1000057DC;
  v19[1] = v18;
  v21 = v3;

  sub_100003380(v20);

  if ((a2 | 2) == 3)
  {
    v22 = [v4 titleLabel];
    if (v22)
    {
      if (qword_100113F10 != -1)
      {
        v37 = v22;
        swift_once();
        v22 = v37;
      }

      v23 = v22;
      [v22 setFont:qword_10011B250];
    }

    if (qword_100113EE0 != -1)
    {
      swift_once();
    }

    v24 = qword_10011B0C0;
    v25 = qword_10011B0C8;
    v26 = qword_10011B0B8;
    v27 = v24;

    sub_1000A70A8(v26, v27, v25);

    if (qword_100113ED8 != -1)
    {
      swift_once();
    }

    v28 = qword_10011B0A8;
    v29 = qword_10011B0B0;
    v30 = qword_10011B0A0;
    v31 = v28;

    sub_1000A70B4(v30, v31, v29);
  }

  sub_1000C10C4();
  [v4 setEnabled:sub_100004D14() < 8];
  sub_100004E94();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v32 = [objc_opt_self() sharedApplication];
  v33 = [v32 delegate];

  if (v33)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v34 = sub_1000AF438();
    swift_unknownObjectRelease();
    v35 = *&v34[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v36 = v4;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100005764()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000579C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000057E4()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateZoneOnServiceButton());
  v3 = sub_10000AA70(v1);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1000D5970;
  *(v4 + 32) = v3;
  *(v4 + 40) = &off_1000F6C28;
  return result;
}

id sub_100005A48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateTransparentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100005AA0()
{
  result = qword_100115400;
  if (!qword_100115400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100115400);
  }

  return result;
}

uint64_t sub_100005B00(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CAUVehicleLayout();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100005BC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CAUVehicleLayout();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ClimateAssets()
{
  result = qword_100114428;
  if (!qword_100114428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005CB0()
{
  result = type metadata accessor for CAUAssetLibrary();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CAUVehicleLayout();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100005D3C(uint64_t *a1, int a2)
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

uint64_t sub_100005D84(uint64_t result, int a2, int a3)
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

uint64_t sub_100005DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CAUResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CAUVehicleLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  v15 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v15)
  {
    v16 = v15;
    v29[0] = a2;
    (*(v5 + 104))(v7, enum case for CAUResource.vehicleLayout(_:), v4);
    sub_100006BE8();
    dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
    (*(v5 + 8))(v7, v4);
    v19 = *(v9 + 32);
    v19(v14, v11, v8);
    v20 = v16;

    sub_100006384(v20, a1);
    v22 = v21;
    v24 = v23;
    v25 = type metadata accessor for ClimateAssets();
    v26 = v29[0];
    v19((v29[0] + *(v25 + 20)), v14, v8);
    *v26 = v20;
    v27 = (v26 + *(v25 + 24));
    *v27 = v22;
    v27[1] = v24;
    return (*(*(v25 - 8) + 56))(v26, 0, 1, v25);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v17 = type metadata accessor for ClimateAssets();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

void sub_100006384(void *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v77 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v56 - v8;
  v10 = type metadata accessor for CAUResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v17 = *(v11 + 104);
  v17(&v56 - v15, enum case for CAUResource.cabin(_:), v10, v14);
  v18 = CAUAssetLibrary.asset(for:)();
  if (v2)
  {
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v68 = v17;
    v69 = v11 + 104;
    v57 = v18;
    v20 = *(v11 + 8);
    v19 = v11 + 8;
    v67 = v20;
    v20(v16, v10);
    v76 = sub_10004F420(_swiftEmptyArrayStorage);
    v21 = v72;
    v66 = *(v72 + 16);
    if (v66)
    {
      v64 = v19;
      v65 = v10;
      v22 = 0;
      v73 = v5 + 16;
      v63 = enum case for CAUAsset.Seat.State.selected(_:);
      v62 = enum case for CAUResource.seat(_:);
      v59 = a1;
      v60 = (v5 + 8);
      v23 = v74;
      v24 = v77;
      v61 = v9;
      v58 = v5;
      while (v22 < *(v21 + 16))
      {
        v28 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v29 = *(v5 + 72);
        v75 = v22;
        v71 = v29;
        v30 = *(v5 + 16);
        v77 = v3;
        v30(v9, v28 + v29 * v22, v24);
        v30(v23, v9, v24);
        v31 = v23;
        v32 = *(sub_1000040E8(&qword_100114470) + 48);
        v33 = v24;
        v34 = v70;
        v30(v70, v9, v33);
        v35 = type metadata accessor for CAUAsset.Seat.State();
        (*(*(v35 - 8) + 104))(&v34[v32], v63, v35);
        v36 = v65;
        v68(v34, v62, v65);
        v37 = v77;
        v38 = CAUAssetLibrary.asset(for:)();
        if (v37)
        {

          v67(v34, v36);
          v55 = *v60;
          (*v60)(v31, v33);
          v55(v61, v33);

          return;
        }

        v39 = v38;
        v77 = 0;
        v67(v34, v36);
        v40 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v40;
        v43 = sub_10007DEE8(v31);
        v44 = *(v40 + 16);
        v45 = (v42 & 1) == 0;
        v46 = v44 + v45;
        if (__OFADD__(v44, v45))
        {
          goto LABEL_21;
        }

        v47 = v42;
        if (*(v40 + 24) >= v46)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10004C750();
          }
        }

        else
        {
          sub_1000473C4(v46, isUniquelyReferenced_nonNull_native);
          v48 = sub_10007DEE8(v74);
          if ((v47 & 1) != (v49 & 1))
          {
            goto LABEL_23;
          }

          v43 = v48;
        }

        v50 = v78;
        v76 = v78;
        if (v47)
        {
          v25 = v78[7];
          v26 = *(v25 + 8 * v43);
          *(v25 + 8 * v43) = v39;

          v27 = *v60;
          v23 = v74;
          v24 = v33;
          (*v60)(v74, v33);
          v9 = v61;
          v27(v61, v33);
        }

        else
        {
          v78[(v43 >> 6) + 8] |= 1 << v43;
          v23 = v74;
          v30((v50[6] + v43 * v71), v74, v33);
          *(v50[7] + 8 * v43) = v39;
          v24 = v33;
          v51 = *v60;
          (*v60)(v23, v33);
          v9 = v61;
          v51(v61, v33);
          v52 = v50[2];
          v53 = __OFADD__(v52, 1);
          v54 = v52 + 1;
          if (v53)
          {
            goto LABEL_22;
          }

          v50[2] = v54;
        }

        v22 = v75 + 1;
        v21 = v72;
        v5 = v58;
        a1 = v59;
        v3 = v77;
        if (v66 == v75 + 1)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
LABEL_18:
    }
  }
}

uint64_t sub_100006960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v10 = sub_10007DEE8(a1);
    if (v11)
    {
      return *(*(a3 + 56) + 8 * v10);
    }
  }

  v12 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v13 = qword_10011B1C0;
  (*(v7 + 16))(v9, a1, v6);
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446210;
    v16 = CAUVehicleLayoutKey.rawValue.getter();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_10000835C(v16, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v12, "Missing selected zone asset for %{public}s", v14, 0xCu);
    sub_100006B9C(v15);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return a2;
}

uint64_t sub_100006B9C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100006BE8()
{
  result = qword_100114468;
  if (!qword_100114468)
  {
    type metadata accessor for CAUVehicleLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114468);
  }

  return result;
}

uint64_t sub_100006C40(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_1001149E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100006CA8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1000AF438();
    swift_unknownObjectRelease();
    v5 = v4[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    v6 = objc_allocWithZone(type metadata accessor for ClimateTargetTemperatureStepper());
    v7 = v1;
    sub_10002F8EC(v7, v5, 2);
    v9 = v8;

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = qword_100113EC8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = *algn_10011B078;
    v13 = qword_10011B080;
    v14 = qword_10011B070;
    v15 = v12;

    sub_100095F20(v14, v15, v13);

    sub_1000040E8(&unk_1001179E0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000D5970;
    *(v16 + 32) = v11;
    *(v16 + 40) = &off_1000F8980;
  }

  else
  {
    __break(1u);
  }
}

void sub_100006E80()
{
  v0 = type metadata accessor for CAUVehicleLayoutKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v6 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = v15;
    if (v15)
    {
      v14 = v0;
      v8 = v16;
      v9 = v17;
      v10 = v18;
      sub_10000827C(0, &unk_100114750);
      CAFPositionedRequired.layoutKey.getter();
      if (*(v10 + 16) && (sub_10007DEE8(v3), (v11 & 1) != 0))
      {
        v13 = *(v1 + 8);

        v13(v3, v14);
        sub_1000081D8(v7, v8, v9);
      }

      else
      {
        sub_1000081D8(v7, v8, v9);
        (*(v1 + 8))(v3, v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void CAFTemperature.zoneSynced.getter()
{
  v0 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - v1;
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v30 = objc_opt_self();
  v10 = [v30 sharedApplication];
  v11 = [v10 delegate];

  if (!v11)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v12 = sub_1000AF438();
  swift_unknownObjectRelease();
  v13 = [*&v12[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
  if (v13)
  {
    v14 = v13;
    v15 = v7;
    v16 = [v13 configuration];

    LOBYTE(v14) = [v16 rightHandDrive];
    v7 = v15;

    if (v14)
    {
      v17 = &enum case for CAUVehicleLayoutKey.seat_front_right(_:);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v17 = &enum case for CAUVehicleLayoutKey.seat_front_left(_:);
LABEL_7:
  (*(v4 + 104))(v9, *v17, v3);
  sub_10000827C(0, &unk_100114750);
  CAFPositioned.layoutKey.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    sub_100008904(v2, &qword_100115840);
    return;
  }

  (*(v4 + 32))(v7, v2, v3);
  sub_10000801C();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v18 = *(v4 + 8);
    v18(v9, v3);
    v18(v7, v3);
    return;
  }

  v19 = [v30 sharedApplication];
  v20 = [v19 delegate];

  if (!v20)
  {
    goto LABEL_18;
  }

  swift_dynamicCastClassUnconditional();
  v21 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v31;
  if (v31)
  {
    v23 = v32;
    v29 = v33;
    v30 = v7;
    v24 = v32;
    sub_1000081D8(v22, v23, v29);
    v25 = [v24 zonesSynceds];

    if (v25)
    {
      sub_10000827C(0, &qword_1001152C0);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v27);
      v7 = v30;
      *(&v29 - 2) = v30;
      sub_100007F08(sub_10000825C, (&v29 - 4), v26);
    }

    else
    {
      v7 = v30;
    }
  }

  v28 = *(v4 + 8);
  v28(v9, v3);
  v28(v7, v3);
}

void CAFTemperature.adjustTargetTemperatureIfNeeded(visibleTemperature:)(void *a1)
{
  v79 = a1;
  v1 = type metadata accessor for CAFRange.StepDirection();
  v77 = *(v1 - 8);
  __chkstk_darwin(v1);
  v78 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000040E8(&unk_100114790);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v68 - v7;
  __chkstk_darwin(v8);
  v76 = &v68 - v9;
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  sub_10000827C(0, &qword_100115110);
  v14 = sub_10000827C(0, &qword_100114AB0);
  static Locale.current.getter();
  v15 = NSDimension.init(forLocale:)();
  v16 = [objc_opt_self() fahrenheit];
  v17 = v14;
  v18 = static NSObject.== infix(_:_:)();

  if (v18)
  {
    v19 = [v80 targetTemperature];
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000830C(&unk_100115410);
    LOBYTE(v19) = dispatch thunk of static Equatable.== infix(_:_:)();
    isa = v4[1].isa;
    isa(v12, v3);
    if ((v19 & 1) == 0)
    {
      v68 = v4;
      v73 = v1;
      v21 = v80;
      v22 = [v80 targetTemperature];
      v71 = v17;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v21 targetTemperatureRange];
      v24 = Measurement<>.readableString(in:)();
      v26 = v25;

      v69 = v3;
      v70 = v4 + 1;
      v72 = isa;
      isa(v12, v3);
      v27 = [v21 targetTemperatureRange];
      v28 = Measurement<>.readableString(in:)();
      v30 = v29;

      if (v24 == v28 && v26 == v30)
      {

        v31 = v72;
        v32 = v73;
        v33 = v80;
        v34 = v69;
        v35 = &selRef_maxDefrostOn;
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v31 = v72;
        v32 = v73;
        v33 = v80;
        v34 = v69;
        v35 = &selRef_maxDefrostOn;
        if ((v36 & 1) == 0)
        {
          return;
        }
      }

      v37 = v31;
      v38 = [v33 v35[12]];
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000830C(&qword_1001147A0);
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      v37(v12, v34);
      v40 = &enum case for CAFRange.StepDirection.up(_:);
      if ((v39 & 1) == 0)
      {
        v40 = &enum case for CAFRange.StepDirection.down(_:);
      }

      (*(v77 + 104))(v78, *v40, v32);
      v41 = [v33 v35[12]];
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = Measurement.unit.getter();
      v37(v12, v34);
      v43 = [v33 targetTemperatureRange];
      v44 = [v43 step];

      [v44 doubleValue];
      v79 = v42;
      Measurement.init(value:unit:)();
      v45 = [v33 v35[12]];
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = v75;
      Measurement<>.localeStep(_:by:in:)();
      v37(v12, v34);
      v47 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v48 = qword_10011B1C0;
      v49 = v74;
      (v68[2].isa)(v74, v46, v34);
      if (os_log_type_enabled(v48, v47))
      {
        v50 = swift_slowAlloc();
        LODWORD(v70) = v47;
        v51 = v50;
        v69 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v51 = 136446722;
        v52 = v80;
        v53 = [v80 targetTemperature];
        v68 = v48;
        v54 = v53;
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000830C(&unk_100117DE0);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v58 = v12;
        v59 = v72;
        v72(v58, v34);
        v60 = sub_10000835C(v55, v57, &v81);

        *(v51 + 4) = v60;
        *(v51 + 12) = 2082;
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v59(v49, v34);
        v64 = sub_10000835C(v61, v63, &v81);
        v46 = v75;

        *(v51 + 14) = v64;
        *(v51 + 22) = 2112;
        *(v51 + 24) = v52;
        v65 = v69;
        *v69 = v52;
        v66 = v52;
        _os_log_impl(&_mh_execute_header, v68, v70, "Temperature adjusted from: %{public}s to :%{public}s for service: %@", v51, 0x20u);
        sub_100008904(v65, &unk_1001149E0);

        swift_arrayDestroy();
      }

      else
      {
        v59 = v72;
        v72(v49, v34);
        v52 = v80;
      }

      v82 = Measurement._bridgeToObjectiveC()();
      v67 = v82.super.isa;
      [v52 setTargetTemperature:{v82.super.isa, v82._doubleValue}];

      v59(v46, v34);
      v59(v76, v34);
      (*(v77 + 8))(v78, v73);
    }
  }
}

void *sub_100007F08(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

unint64_t sub_10000801C()
{
  result = qword_1001152B0;
  if (!qword_1001152B0)
  {
    type metadata accessor for CAUVehicleLayoutKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152B0);
  }

  return result;
}

double sub_100008074@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100008108(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5;
  sub_1000089C4(v2, v3, v4);
  static Published.subscript.setter();
  return sub_100041A5C();
}

void *sub_1000081D8(void *result, void *a2, void *a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000827C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000082C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000830C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000082C4(&unk_100114790);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000835C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008428(v11, 0, 0, 1, a1, a2);
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
    sub_100008964(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006B9C(v11);
  return v7;
}

unint64_t sub_100008428(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008534(a5, a6);
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

char *sub_100008534(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008580(a1, a2);
  sub_1000086B0(&off_1000F6258);
  return v3;
}

char *sub_100008580(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000879C(v5, 0);
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
        v7 = sub_10000879C(v10, 0);
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

uint64_t sub_1000086B0(uint64_t result)
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

  result = sub_100008810(result, v11, 1, v3);
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

void *sub_10000879C(uint64_t a1, uint64_t a2)
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

  sub_1000040E8(&qword_100114478);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008810(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&qword_100114478);
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

uint64_t sub_100008904(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000040E8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100008964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000089C4(uint64_t result, void *a2, void *a3)
{
  if (result)
  {
    v5 = result;

    v6 = v5;
    v7 = a2;
    v8 = a3;
  }

  return result;
}

void sub_100008A48(uint64_t a1)
{
  v3 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1000040E8(&unk_1001151B0);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_1000040E8(&qword_1001144B8);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000040E8(&qword_1001144C0);
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_1000040E8(&qword_1001144C8);
  v34 = *(v15 - 8);
  v35 = v15;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC7Climate40ClimatePhysicalControlBarsViewController_cancellables] = v18;
  *&v1[OBJC_IVAR____TtC7Climate40ClimatePhysicalControlBarsViewController_physicalControls] = a1;
  v19 = type metadata accessor for ClimatePhysicalControlBarsViewController();
  v37.receiver = v1;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 delegate];

  if (v22)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v23 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1000040E8(&unk_1001151C0);
    Published.projectedValue.getter();
    swift_endAccess();

    v24 = [objc_opt_self() mainRunLoop];
    v36 = v24;
    v25 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    sub_10000827C(0, &unk_1001166E0);
    sub_10000A8E8(&qword_1001144D0, &unk_1001151B0);
    sub_10000A7D8();
    Publisher.receive<A>(on:options:)();
    sub_10000A840(v5);

    (*(v29 + 8))(v8, v6);
    sub_10000A8E8(&unk_1001151D0, &qword_1001144B8);
    v26 = v31;
    Publisher.compactMap<A>(_:)();
    (*(v30 + 8))(v11, v26);
    sub_10000A8E8(&qword_1001144D8, &qword_1001144C0);
    v27 = v33;
    Publisher.filter(_:)();
    (*(v32 + 8))(v14, v27);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&qword_1001144E0, &qword_1001144C8);
    v28 = v35;
    Publisher<>.sink(receiveValue:)();

    (*(v34 + 8))(v17, v28);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100009168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  return sub_1000089C4(v3, v2, v4);
}

void sub_1000091A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100009B80(a1);
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 delegate];

    if (v5)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v6 = sub_1000AF438();
      swift_unknownObjectRelease();
      v7 = *&v6[OBJC_IVAR____TtC7Climate18ClimateCoordinator_signpostManager];

      v7[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad] = 1;
      sub_1000B4ABC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10000936C(void *a1)
{
  v2 = type metadata accessor for CAUEdge();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (!v7)
  {
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v8 = sub_1000AF438();
  swift_unknownObjectRelease();
  v9 = sub_10004152C();

  v10 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v11 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, v10, "Applying constraints to physical control bar items with screen scale: %{public}f", v12, 0xCu);
  }

  v13 = CAUPhysicalControlBarsButtonLayoutInfo.startingPoint.getter() / v9;
  v14 = CAUPhysicalControlBarsButtonLayoutInfo.length.getter() / v9;
  sub_1000040E8(&unk_100114770);
  v15 = swift_allocObject();
  v60 = xmmword_1000D58A0;
  *(v15 + 16) = xmmword_1000D58A0;
  v16 = [a1 widthAnchor];
  v17 = v16;
  if (v14 <= 45.0)
  {
    v18 = v14;
  }

  else
  {
    v18 = 45.0;
  }

  v19 = [v16 constraintEqualToConstant:v18];

  *(v15 + 32) = v19;
  v20 = [a1 heightAnchor];
  v21 = [v20 constraintEqualToConstant:45.0];

  *(v15 + 40) = v21;
  v62 = v15;
  CAUPhysicalControlBarsButtonLayoutInfo.edge.getter();
  v22 = (*(v3 + 88))(v5, v2);
  if (v22 == enum case for CAUEdge.top(_:))
  {
    inited = swift_initStackObject();
    *(inited + 16) = v60;
    v24 = [a1 leftAnchor];
    v25 = v61;
    v26 = [v61 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 leftAnchor];

      v29 = [v24 constraintEqualToAnchor:v28 constant:v13];
      *(inited + 32) = v29;
      v30 = [a1 topAnchor];
      v31 = [v25 view];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 topAnchor];

        v34 = [v30 constraintEqualToAnchor:v33];
LABEL_25:
        v59 = v34;

        *(inited + 40) = v59;
        sub_1000B7604(inited);
        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v22 == enum case for CAUEdge.left(_:))
  {
    inited = swift_initStackObject();
    *(inited + 16) = v60;
    v35 = [a1 topAnchor];
    v36 = v61;
    v37 = [v61 view];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 topAnchor];

      v40 = [v35 constraintEqualToAnchor:v39 constant:v13];
      *(inited + 32) = v40;
      v30 = [a1 leftAnchor];
      v41 = [v36 view];
      if (v41)
      {
        v42 = v41;
        v33 = [v41 leftAnchor];

        v34 = [v30 constraintEqualToAnchor:v33];
        goto LABEL_25;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v22 == enum case for CAUEdge.bottom(_:))
  {
    inited = swift_initStackObject();
    *(inited + 16) = v60;
    v43 = [a1 leftAnchor];
    v44 = v61;
    v45 = [v61 view];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 leftAnchor];

      v48 = [v43 constraintEqualToAnchor:v47 constant:v13];
      *(inited + 32) = v48;
      v30 = [a1 bottomAnchor];
      v49 = [v44 view];
      if (v49)
      {
        v50 = v49;
        v33 = [v49 bottomAnchor];

        v34 = [v30 constraintEqualToAnchor:v33];
        goto LABEL_25;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v22 != enum case for CAUEdge.right(_:))
  {
    (*(v3 + 8))(v5, v2);
    return;
  }

  inited = swift_initStackObject();
  *(inited + 16) = v60;
  v51 = [a1 topAnchor];
  v52 = v61;
  v53 = [v61 view];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 topAnchor];

    v56 = [v51 constraintEqualToAnchor:v55 constant:v13];
    *(inited + 32) = v56;
    v30 = [a1 rightAnchor];
    v57 = [v52 view];
    if (v57)
    {
      v58 = v57;
      v33 = [v57 rightAnchor];

      v34 = [v30 constraintEqualToAnchor:v33];
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_100009B80(uint64_t a1)
{
  v116 = a1;
  v100 = type metadata accessor for CAUPhysicalControlBarsButtonLayoutInfo();
  v110 = *(v100 - 8);
  v2 = __chkstk_darwin(v100);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v108 = &v87 - v5;
  v121 = type metadata accessor for CAUPhysicalControlBarsButton();
  v109 = *(v121 - 8);
  v6 = __chkstk_darwin(v121);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v87 - v9;
  v10 = sub_1000040E8(&qword_1001144E8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v87 - v14;
  v99 = type metadata accessor for CAUVehicleLayoutKey();
  v94 = *(v99 - 8);
  v16 = __chkstk_darwin(v99);
  v103 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v93 = &v87 - v18;
  v19 = sub_1000040E8(&qword_1001144F0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v87 - v23;
  v101 = v1;
  result = [v1 view];
  if (!result)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = [result subviews];

  sub_10000827C(0, &qword_100115400);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();

    if (v30)
    {
      return result;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v29)
    {
      return result;
    }
  }

  v92 = v24;
  v31 = *&v101[OBJC_IVAR____TtC7Climate40ClimatePhysicalControlBarsViewController_physicalControls];
  v32 = *(v31 + 64);
  v88 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & v32;
  v87 = (v33 + 63) >> 6;
  v89 = v94 + 16;
  v98 = (v94 + 32);
  v105 = v109 + 16;
  v104 = v110 + 16;
  v112 = (v109 + 32);
  v36 = (v110 + 32);
  v114 = (v109 + 8);
  v115 = (v110 + 8);
  v91 = (v94 + 8);
  v90 = v31;

  v37 = 0;
  v117 = v15;
  v118 = v4;
  v106 = v8;
  v120 = v13;
  v95 = v22;
  v111 = v36;
LABEL_11:
  if (!v35)
  {
    if (v87 <= v37 + 1)
    {
      v39 = v37 + 1;
    }

    else
    {
      v39 = v87;
    }

    v40 = v39 - 1;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v87)
      {
        v86 = sub_1000040E8(&qword_1001144F8);
        (*(*(v86 - 8) + 56))(v22, 1, 1, v86);
        v97 = 0;
        goto LABEL_21;
      }

      v35 = *(v88 + 8 * v38);
      ++v37;
      if (v35)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v38 = v37;
LABEL_20:
  v97 = (v35 - 1) & v35;
  v41 = __clz(__rbit64(v35)) | (v38 << 6);
  v42 = v90;
  v43 = v94;
  v44 = v93;
  v45 = v99;
  (*(v94 + 16))(v93, *(v90 + 48) + *(v94 + 72) * v41, v99);
  v119 = *(*(v42 + 56) + 8 * v41);
  v46 = sub_1000040E8(&qword_1001144F8);
  v47 = *(v46 + 48);
  v48 = *(v43 + 32);
  v22 = v95;
  v48(v95, v44, v45);
  *&v22[v47] = v119;
  (*(*(v46 - 8) + 56))(v22, 0, 1, v46);

  v40 = v38;
  v36 = v111;
LABEL_21:
  v49 = v92;
  sub_10000A930(v22, v92, &qword_1001144F0);
  v50 = sub_1000040E8(&qword_1001144F8);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) != 1)
  {
    v96 = v40;
    v51 = *(v49 + *(v50 + 48));
    (*v98)(v103, v49, v99);
    v52 = *(v51 + 64);
    v119 = v51 + 64;
    v53 = 1 << *(v51 + 32);
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v55 = v54 & v52;
    v102 = (v53 + 63) >> 6;
    v113 = v51;

    v56 = 0;
    v57 = v100;
    v58 = v112;
    while (v55)
    {
      v63 = v56;
LABEL_39:
      v66 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v67 = v66 | (v63 << 6);
      v68 = v113;
      v69 = v109;
      v70 = v107;
      v71 = v121;
      (*(v109 + 16))(v107, *(v113 + 48) + *(v109 + 72) * v67, v121);
      v72 = *(v68 + 56);
      v73 = v110;
      v74 = v108;
      (*(v110 + 16))(v108, v72 + *(v110 + 72) * v67, v57);
      v75 = sub_1000040E8(&unk_100114500);
      v76 = *(v75 + 48);
      v77 = *(v69 + 32);
      v13 = v120;
      v78 = v70;
      v58 = v112;
      v77(v120, v78, v71);
      v79 = *(v73 + 32);
      v36 = v111;
      v79(&v13[v76], v74, v57);
      (*(*(v75 - 8) + 56))(v13, 0, 1, v75);
      v15 = v117;
      v4 = v118;
      v8 = v106;
LABEL_40:
      sub_10000A930(v13, v15, &qword_1001144E8);
      v80 = sub_1000040E8(&unk_100114500);
      if ((*(*(v80 - 8) + 48))(v15, 1, v80) == 1)
      {

        result = (*v91)(v103, v99);
        v37 = v96;
        v22 = v95;
        v35 = v97;
        goto LABEL_11;
      }

      v81 = *(v80 + 48);
      (*v58)(v8, v15, v121);
      (*v36)(v4, &v15[v81], v57);
      if (*(*(v116 + 40) + 16))
      {
        sub_10007DEE8(v103);
        if (v82)
        {

          v83 = sub_100003740(v8);
          if (v83)
          {
            v84 = v83;
            [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
            result = [v101 view];
            if (!result)
            {
              goto LABEL_51;
            }

            v59 = result;
            [result addSubview:v84];

            sub_10000936C(v84);
            v60 = objc_opt_self();
            sub_10000827C(0, &qword_1001149C0);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v62 = v60;
            v4 = v118;
            [v62 activateConstraints:isa];

            v15 = v117;
          }

          v57 = v100;
          v13 = v120;
        }
      }

      (*v115)(v4, v57);
      (*v114)(v8, v121);
    }

    if (v102 <= v56 + 1)
    {
      v64 = v56 + 1;
    }

    else
    {
      v64 = v102;
    }

    v65 = v64 - 1;
    while (1)
    {
      v63 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v63 >= v102)
      {
        v85 = sub_1000040E8(&unk_100114500);
        (*(*(v85 - 8) + 56))(v13, 1, 1, v85);
        v55 = 0;
        v56 = v65;
        goto LABEL_40;
      }

      v55 = *(v119 + 8 * v63);
      ++v56;
      if (v55)
      {
        v56 = v63;
        goto LABEL_39;
      }
    }

    __break(1u);
  }
}

id sub_10000A734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimatePhysicalControlBarsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000A7D8()
{
  result = qword_1001166F0;
  if (!qword_1001166F0)
  {
    sub_10000827C(255, &unk_1001166E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001166F0);
  }

  return result;
}

uint64_t sub_10000A840(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_1001166C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A8A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A8E8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000082C4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A930(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000040E8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A998()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate26ClimateZoneOnServiceButton_zoneOn);
  v2 = [v1 on];
  v3 = [v1 onRestricted];
  v4 = [v1 onInvalid];
  v5 = [v1 onDisabled];
  if (v2)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

char *sub_10000AA70(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Climate26ClimateZoneOnServiceButton_zoneOn] = a1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for ClimateZoneOnServiceButton();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v21, "init");
  [v3 registerObserver:v4];
  v5 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = xmmword_1000D5B30;
  if (!v7 || (v6 == 0x7265776F70 ? (v8 = v7 == 0xE500000000000000) : (v8 = 0), !v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;
  v11 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v12 = *v11;
  *v11 = sub_10000B000;
  v11[1] = v10;
  v13 = v3;

  sub_100003380(v12);

  sub_1000C10C4();
  [v4 setEnabled:sub_10000A998() < 8];
  if ((sub_10000A998() & 0x1B) == 1)
  {
    v14 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v14 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v15 = &v4[*v14];
  v16 = *(v15 + 1);
  v17 = *(v15 + 2);
  v18 = *v15;
  v19 = v16;

  sub_10007A4CC(v18, v19, v17);

  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();

  return v4;
}

void sub_10000ACBC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setOn:{objc_msgSend(a3, "on") ^ 1}];
    sub_1000C10C4();
    [v5 setEnabled:sub_10000A998() < 8];
    if ((sub_10000A998() & 0x1B) == 1)
    {
      v6 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
    }

    else
    {
      v6 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
    }

    v7 = &v5[*v6];
    v8 = *(v7 + 1);
    v9 = *(v7 + 2);
    v10 = *v7;
    v11 = v8;

    sub_10007A4CC(v10, v11, v9);

    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

id sub_10000AE3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateZoneOnServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateZoneOnServiceButton()
{
  result = qword_100114540;
  if (!qword_100114540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AF88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AFC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000B008()
{
  sub_1000C10C4();
  [v0 setEnabled:sub_10000A998() < 8];
  if ((sub_10000A998() & 0x1B) == 1)
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v2 = &v0[*v1];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;

  sub_10007A4CC(v5, v6, v4);

  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

uint64_t sub_10000B0CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature);
  v3 = [v2 targetTemperatureRestricted];
  v4 = [v2 targetTemperatureInvalid];
  v5 = [v2 targetTemperatureDisabled];
  if (v1 == 1)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

void sub_10000B298(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn;
  if (*(v1 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn) != v2)
  {
    v8 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v9 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v8))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v10 = 136446466;
      sub_10000827C(0, &unk_100114750);
      v11 = v1;
      CAFPositionedRequired.layoutKey.getter();
      v12 = CAUVehicleLayoutKey.rawValue.getter();
      v14 = v13;
      (*(v4 + 8))(v6, v3);
      v15 = sub_10000835C(v12, v14, &v20);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      if (*(v11 + v7))
      {
        v16 = 7562585;
      }

      else
      {
        v16 = 28494;
      }

      if (*(v11 + v7))
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0xE200000000000000;
      }

      v18 = sub_10000835C(v16, v17, &v20);

      *(v10 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s selected as active zone: %s", v10, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_10000B50C()
{
  v1 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_10000B568(uint64_t a1, uint64_t a2)
{
  ClimateButton.title.setter(a1, a2);
  v3 = *(*(v2 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView) + OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel);
  v4 = v2 + OBJC_IVAR____TtC7Climate13ClimateButton_title;
  swift_beginAccess();
  if (*(v4 + 8))
  {
    v5 = v3;

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = v3;
    v6 = 0;
  }

  [v3 setText:v6];
}

void (*sub_10000B62C(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = ClimateButton.title.modify(v3);
  return sub_10000B6A0;
}

void sub_10000B6A0(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(*(v4 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView) + OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel);
    v6 = v4 + OBJC_IVAR____TtC7Climate13ClimateButton_title;
    swift_beginAccess();
    if (*(v6 + 8))
    {
      v7 = v5;

      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = v5;
      v8 = 0;
    }

    [v5 setText:v8];
  }

  free(v3);
}

void sub_10000B7FC()
{
  v1 = OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView]];
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5B90;
  v4 = [*&v0[v1] leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] widthAnchor];
  v11 = [v0 widthAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] centerXAnchor];
  v14 = [v0 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  v16 = [*&v0[v1] centerYAnchor];
  v17 = [v0 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v3 + 64) = v18;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  v20 = [v0 titleLabel];
  if (v20)
  {
    v21 = v20;
    v22 = *(*&v0[v1] + OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel);
    [v22 setLineBreakMode:{objc_msgSend(v21, "lineBreakMode")}];

    v23 = *(*&v0[v1] + OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel);
    [v23 setTextAlignment:{objc_msgSend(v21, "textAlignment")}];
  }
}

uint64_t sub_10000BBE0()
{
  ClimateButton.refreshColorConfig()();
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = v1;
    [v1 setTintColor:*&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8]];
  }

  v3 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
  v4 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
  v5 = v0[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn];
  v6 = *&v0[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature];
  v7 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v8 = v3;

  v9 = [v6 targetTemperatureRestricted];
  v10 = [v6 targetTemperatureInvalid];
  v11 = [v6 targetTemperatureDisabled];
  if (v5 == 1)
  {
    if (v9)
    {
      v12 = 5;
      if (v10)
      {
        v12 = 13;
      }

      if (v11)
      {
LABEL_21:
        v12 |= 0x10u;
      }
    }

    else
    {
      v12 = 9;
      if (!v10)
      {
        v12 = 1;
      }

      if (v11)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v9)
  {
    v12 = 4;
    if (v10)
    {
      v12 = 12;
    }

    if (v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 8;
    if (!v10)
    {
      v12 = 0;
    }

    if (v11)
    {
      goto LABEL_21;
    }
  }

  v13 = sub_10007E990(v12, v8, v4);

  v14 = OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView;
  v15 = *(*&v0[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView] + OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor:v18];

  [*(*&v0[v14] + OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel) setTextColor:v13];
  v19 = [*&v0[v14] layer];
  v20 = [v0 titleLabel];
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = v20;
  v22 = [v20 layer];

  v23 = [v22 compositingFilter];
  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  v24 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v25 = sub_10000D960(&v33, *(&v34 + 1));
    v26 = *(*(&v32 + 1) - 8);
    __chkstk_darwin(v25);
    v28 = &v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v28);
    v29 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v26 + 8))(v28, v24);
    sub_100006B9C(&v33);
  }

  else
  {
LABEL_28:
    v29 = 0;
  }

  [v19 setCompositingFilter:{v29, v31, v32, v33, v34}];

  return swift_unknownObjectRelease();
}

void sub_10000BF88()
{
  v1 = v0;
  v2 = sub_1000040E8(&unk_100114790);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v37 - v3;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Climate13ClimateButton_attributedTitle;
  swift_beginAccess();
  v10 = *&v1[v9];
  *&v1[v9] = 0;

  ClimateButton.updateClimateConfiguration()();
  v11 = v1[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn];
  v12 = *&v1[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature];
  v13 = [v12 targetTemperatureRestricted];
  v14 = [v12 targetTemperatureInvalid];
  v15 = [v12 targetTemperatureDisabled];
  if (v11 == 1)
  {
    v16 = v14 == 0;
    if ((v13 & 1) == 0)
    {
      v17 = 9;
      if (!v14)
      {
        v17 = 1;
      }

      if (v15)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    v17 = 5;
    v18 = 13;
  }

  else
  {
    v16 = v14 == 0;
    if ((v13 & 1) == 0)
    {
      v17 = 8;
      if (!v14)
      {
        v17 = 0;
      }

      if (v15)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    v17 = 4;
    v18 = 12;
  }

  if (!v16)
  {
    v17 = v18;
  }

  if (v15)
  {
LABEL_9:
    v17 |= 0x10u;
  }

LABEL_10:
  v19 = OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView;
  v20 = v17 & 0x18;
  [*&v1[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView] setHidden:v20 != 0];
  if (v20)
  {
    sub_10000827C(0, &unk_100114750);
    CAFPositionedRequired.layoutKey.getter();
    sub_100028A98();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = "figure.seated.side.left";
    v24 = (v22 & 1) == 0;
    if (v22)
    {
      v25 = 0xD000000000000018;
    }

    else
    {
      v25 = 0xD000000000000017;
    }

    if (v24)
    {
      v23 = "ZoneSelectionButton.swift";
    }

    v26 = v23 | 0x8000000000000000;
    v27 = &v1[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
    swift_beginAccess();
    v28 = *v27;
    v29 = v27[1];
    *v27 = v25;
    v27[1] = v26;
    if (!v29 || (v25 != v28 || v26 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }
  }

  else
  {
    v30 = &v1[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
    swift_beginAccess();
    v31 = *(v30 + 1);
    *v30 = 0;
    *(v30 + 1) = 0;
    if (v31)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v32 = *&v1[v19];
    v33 = [v12 targetTemperature];
    sub_10000827C(0, &qword_100114AB0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = [v12 targetTemperatureRange];
    Measurement<>.readableString(in:)();

    (*(v38 + 8))(v4, v2);
    v35 = *&v32[OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel];
    v36 = String._bridgeToObjectiveC()();

    [v35 setText:v36];
  }

  sub_1000C10C4();
  [v12 targetTemperatureRestricted];
  [v1 setEnabled:{((objc_msgSend(v12, "targetTemperatureDisabled") | objc_msgSend(v12, "targetTemperatureInvalid")) & 1) == 0}];
  sub_10000C440();
  sub_10000BBE0();
  ClimateButton.createEdgeInsets()();
}

void sub_10000C440()
{
  v1 = sub_1000040E8(&unk_100114790);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v39 - v7;
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn);
  v12 = *(v0 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature);
  [v12 targetTemperatureRestricted];
  [v12 targetTemperatureInvalid];
  [v12 targetTemperatureDisabled];
  v13 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  if (!v11)
  {
    v13 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v14 = v0 + *v13;
  v15 = *(v14 + 8);
  v40 = *v14;
  v16 = v15;
  v17 = [v12 currentTemperature];
  if (v17)
  {
    v18 = v17;
    v39 = v0;
    sub_10000827C(0, &qword_100114AB0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 32))(v10, v8, v1);
    v19 = [v12 targetTemperature];
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000D8FC();
    LOBYTE(v19) = dispatch thunk of static Comparable.< infix(_:_:)();
    v20 = *(v2 + 8);
    v20(v5, v1);
    if (v19)
    {
      v21 = [objc_opt_self() systemBlueColor];
      if (qword_100113EC0 != -1)
      {
        swift_once();
      }

      v22 = [v21 resolvedColorWithTraitCollection:qword_100116C00];
      v0 = v39;
    }

    else
    {
      v23 = [v12 targetTemperature];
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v23) = static Measurement.< infix<A, B>(_:_:)();
      v20(v5, v1);
      if ((v23 & 1) == 0)
      {
        v0 = v39;
        goto LABEL_14;
      }

      v24 = [objc_opt_self() systemRedColor];
      v0 = v39;
      if (qword_100113EC0 != -1)
      {
        swift_once();
      }

      v21 = qword_100116C00;
      v22 = [v24 resolvedColorWithTraitCollection:v21];
    }

    v16 = v22;
LABEL_14:
    v20(v10, v1);
  }

  v26 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v25 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  sub_1000040E8(&unk_100117DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5BA0;
  *(inited + 32) = 16;
  v28 = v40;
  *(inited + 40) = v40;
  *(inited + 48) = v16;
  *(inited + 56) = &_swiftEmptyDictionarySingleton;
  *(inited + 64) = 8;
  *(inited + 72) = v28;
  *(inited + 80) = v16;
  *(inited + 88) = &_swiftEmptyDictionarySingleton;
  v29 = v28;
  v30 = v16;
  v31 = sub_10004F0C8(inited);
  swift_setDeallocating();
  v32 = v29;
  v33 = v30;
  v34 = v32;
  v35 = v33;
  v36 = v26;
  v37 = v25;

  sub_1000040E8(&unk_100114760);
  swift_arrayDestroy();
  v38 = v35;

  sub_10007A4CC(v34, v38, v31);
}

void sub_10000C964()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView);
}

uint64_t type metadata accessor for ClimateTargetTemperatureZoneSelectionButton()
{
  result = qword_1001145F0;
  if (!qword_1001145F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CAB4@<X0>(uint64_t a1@<X8>)
{
  sub_10000827C(0, &unk_100114750);
  CAFPositionedRequired.layoutKey.getter();
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

char *sub_10000CE44()
{
  v1 = OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel;
  *&v0[v1] = [objc_allocWithZone(UILabel) init];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ClimateTargetTemperatureZoneSelectionButton.LabelsView();
  v2 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setClipsToBounds:1];
  v3 = OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel;
  [*&v2[OBJC_IVAR____TtCC7Climate43ClimateTargetTemperatureZoneSelectionButton10LabelsView_temperatureLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = qword_100113E30;
  v5 = *&v2[v3];
  if (v4 != -1)
  {
    swift_once();
  }

  [v5 setFont:qword_10011AD10];

  [v2 addSubview:*&v2[v3]];
  v6 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D5BB0;
  v8 = [*&v2[v3] centerXAnchor];
  v9 = [v2 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [*&v2[v3] centerYAnchor];
  v12 = [v2 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [*&v2[v3] heightAnchor];
  v15 = [v2 heightAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  *(v7 + 48) = v16;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];

  return v2;
}

void sub_10000D2E8()
{
  sub_10000827C(0, &unk_100114780);
  v0 = UIFontTextStyleTitle3;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  qword_10011AD10 = v1;
}

id sub_10000D3A8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_10000D414(void *a1)
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  v1[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn] = 0;
  *&v1[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature] = a1;
  v4 = objc_allocWithZone(type metadata accessor for ClimateTargetTemperatureZoneSelectionButton.LabelsView());
  v5 = a1;
  v6 = [v4 init];
  *&v1[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView] = v6;
  v37.receiver = v1;
  v37.super_class = type metadata accessor for ClimateTargetTemperatureZoneSelectionButton();
  v7 = objc_msgSendSuper2(&v37, "init");
  [v5 registerObserver:v7];
  v8 = [v5 car];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 dimensionManager];

    [v10 registerObserver:v7];
  }

  v11 = objc_opt_self();
  v12 = [v11 systemWhiteColor];
  v13 = [v11 systemBlackColor];
  sub_1000040E8(&unk_100117DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5BA0;
  *(inited + 32) = 16;
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  *(inited + 56) = &_swiftEmptyDictionarySingleton;
  *(inited + 64) = 8;
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  *(inited + 88) = &_swiftEmptyDictionarySingleton;
  v15 = sub_10004F0C8(inited);
  swift_setDeallocating();
  v16 = v12;
  v17 = v13;
  v18 = v16;
  v19 = v17;
  v20 = v18;
  v21 = v19;
  v22 = v7;
  sub_1000040E8(&unk_100114760);
  swift_arrayDestroy();
  sub_1000A70A8(v20, v21, v15);

  v23 = [v11 clearColor];
  v24 = [v11 systemWhiteColor];
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1000D5BA0;
  *(v25 + 32) = 16;
  *(v25 + 40) = v23;
  *(v25 + 48) = v24;
  *(v25 + 56) = &_swiftEmptyDictionarySingleton;
  *(v25 + 64) = 8;
  *(v25 + 72) = v23;
  *(v25 + 80) = v24;
  *(v25 + 88) = &_swiftEmptyDictionarySingleton;
  v26 = sub_10004F0C8(v25);
  swift_setDeallocating();
  v27 = v23;
  v28 = v24;
  v29 = v22;
  v30 = v27;
  v31 = v28;
  swift_arrayDestroy();
  sub_1000A70B4(v30, v31, v26);

  static _Glass._GlassVariant.regular.getter();
  v36[3] = type metadata accessor for _Glass();
  v36[4] = &protocol witness table for _Glass;
  sub_10000D830(v36);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();

  sub_10000B7FC();
  v32 = OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn;
  LOBYTE(v28) = v29[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn];
  v33 = *&v29[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature];
  [v33 targetTemperatureRestricted];
  [v33 targetTemperatureInvalid];
  [v33 targetTemperatureDisabled];
  v34 = v29[v32];
  v29[v32] = v28;
  sub_10000B298(v34);
  sub_10000BF88();

  return v29;
}

uint64_t *sub_10000D830(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000D894(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_1001153F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000D8FC()
{
  result = qword_1001147A0;
  if (!qword_1001147A0)
  {
    sub_1000082C4(&unk_100114790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001147A0);
  }

  return result;
}

void *sub_10000D960(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_10000D9AC()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateControlsLockButton());
  v3 = sub_1000AC0C0(v1);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1000D5970;
  *(v4 + 32) = v3;
  *(v4 + 40) = &off_1000F8F08;
  return result;
}

Swift::Int sub_10000DA48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000DABC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_BYTE *sub_10000DB00(uint64_t a1, uint64_t a2, char a3)
{
  v7 = &v3[OBJC_IVAR____TtC7Climate28ClimateLoadingViewController_type];
  *v7 = a1;
  *(v7 + 1) = a2;
  v7[16] = a3;
  if (a3)
  {
    if (a3 != 1 && __PAIR128__(a2, a1) < 2)
    {
      v8 = 1;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_7:
  v3[OBJC_IVAR____TtC7Climate28ClimateLoadingViewController_displayMode] = v8;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for ClimateLoadingViewController();
  v9 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  v10 = v9;
  if (v9[OBJC_IVAR____TtC7Climate28ClimateLoadingViewController_displayMode])
  {
    sub_10000E1FC(a1, a2, a3);
    return v10;
  }

  result = [v9 view];
  if (result)
  {
    v12 = result;
    sub_10000E1FC(a1, a2, a3);
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor:v13];

    return v10;
  }

  __break(1u);
  return result;
}

id sub_10000DCD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateLoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000DD48()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ClimateLoadingViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  if ((*(v0 + OBJC_IVAR____TtC7Climate28ClimateLoadingViewController_displayMode) & 1) == 0)
  {
    v1 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 addSubview:v1];

      v4 = [objc_opt_self() labelColor];
      [v1 setColor:v4];

      [v1 startAnimating];
      sub_1000040E8(&unk_100114770);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1000D58A0;
      v6 = [v1 centerXAnchor];
      v7 = [v0 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 centerXAnchor];

        v10 = [v6 constraintEqualToAnchor:v9];
        *(v5 + 32) = v10;
        v11 = [v1 centerYAnchor];

        v12 = [v0 view];
        if (v12)
        {
          v13 = v12;
          v14 = objc_opt_self();
          v15 = [v13 centerYAnchor];

          v16 = [v11 constraintEqualToAnchor:v15];
          *(v5 + 40) = v16;
          sub_100004130();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v14 activateConstraints:isa];

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

uint64_t getEnumTagSinglePayload for ClimateLoadingViewController.DisplayMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClimateLoadingViewController.DisplayMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000E1A8()
{
  result = qword_1001147E8;
  if (!qword_1001147E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001147E8);
  }

  return result;
}

uint64_t sub_10000E1FC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

double sub_10000E210()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateSteeringWheelButton());
  v3 = sub_10005BB50(v1);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1000D5970;
  *(v4 + 32) = v3;
  *(v4 + 40) = &off_1000F8208;
  return result;
}

void sub_10000E294(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v7 - 8);
  v74 = &v72 - v8;
  v9 = type metadata accessor for CAFUISettingsCache();
  v72 = *(v9 - 8);
  v73 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7Climate11ClimateGrid_grid;
  v14 = *&v3[OBJC_IVAR____TtC7Climate11ClimateGrid_grid];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v3[v13];
  }

  else
  {
    v15 = 0;
  }

  v77 = v13;
  *&v3[v13] = 0;

  v16 = objc_allocWithZone(type metadata accessor for ClimateGridSource());
  v78 = v3;
  v17 = v3;
  v18 = sub_100012F54();

  v19 = *&v17[OBJC_IVAR____TtC7Climate11ClimateGrid_source];
  v76 = v17;
  *&v17[OBJC_IVAR____TtC7Climate11ClimateGrid_source] = v18;
  v20 = v18;

  *&v20[OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems] = a1;

  *&v20[OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems] = a2;

  v21 = objc_allocWithZone(type metadata accessor for CAFUIAutomakerSettingObserver());

  v22 = [v21 init];
  sub_100013524(&qword_1001149F8, type metadata accessor for ClimateGridSource);
  swift_unknownObjectRetain();
  dispatch thunk of CAFUIAutomakerSettingObserver.delegate.setter();
  v23 = *&v20[OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsObserver];
  *&v20[OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsObserver] = v22;
  v24 = v22;

  CAFUISettingsCache.init(settings:sections:)();
  v25 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
  v26 = v25;
  v79 = v20;
  v75 = a3;
  if (v25 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v29 registerObserver:v24];

      ++v28;
      if (v31 == i)
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

  v32 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();

  v33 = v79;
  *&v79[OBJC_IVAR____TtC7Climate17ClimateGridSource_viewableSettingItems] = v32;

  v35 = v72;
  v34 = v73;
  v36 = v74;
  (*(v72 + 32))(v74, v12, v73);
  (*(v35 + 56))(v36, 0, 1, v34);
  v37 = OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsCache;
  swift_beginAccess();
  sub_10001356C(v36, &v33[v37]);
  swift_endAccess();
  v38 = swift_allocObject();
  v39 = v76;
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v41 = v75;
  *(v40 + 16) = v38;
  *(v40 + 24) = v41;
  v42 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100013654;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012ED8;
  aBlock[3] = &unk_1000F6FA8;
  v43 = _Block_copy(aBlock);

  v44 = [v42 initWithSectionProvider:v43];
  _Block_release(v43);

  v45 = objc_allocWithZone(type metadata accessor for ClimateCollectionView());
  v75 = v44;
  v46 = [v45 initWithFrame:v44 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = v46;
  [v47 setDataSource:v33];
  [v47 setDelegate:v33];

  type metadata accessor for ClimateSlotCell();
  if (qword_100113E38 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = String._bridgeToObjectiveC()();
  [v47 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v49];

  type metadata accessor for ClimateProminentSettingsCell();
  v50 = swift_getObjCClassFromMetadata();
  static CAFUICellProtocol.reuseIdentifier.getter();
  v51 = String._bridgeToObjectiveC()();

  [v47 registerClass:v50 forCellWithReuseIdentifier:v51];

  v52 = [objc_opt_self() clearColor];
  [v47 setBackgroundColor:v52];

  v53 = v47;
  [v53 setShowsVerticalScrollIndicator:0];
  [v53 setBounces:0];
  [v53 setPagingEnabled:1];

  sub_100013060();
  [v53 setSemanticContentAttribute:v54];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 addSubview:v53];
  v55 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1000D5D90;
  v57 = [v53 topAnchor];
  v58 = [v39 topAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v56 + 32) = v59;
  v60 = [v53 leftAnchor];
  v61 = [v39 leftAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  *(v56 + 40) = v62;
  v63 = [v53 rightAnchor];
  v64 = [v39 rightAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v56 + 48) = v65;
  v66 = [v53 bottomAnchor];

  v67 = [v39 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v56 + 56) = v68;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 activateConstraints:isa];

  v70 = *&v78[v77];
  *&v78[v77] = v53;
  v71 = v53;

  [v39 setNeedsLayout];
  [v39 layoutIfNeeded];
}

void sub_10000EBD0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *&Strong[OBJC_IVAR____TtC7Climate11ClimateGrid_source];
    if (v9)
    {
      v10 = v9;
      [objc_msgSend(a2 "container")];
      v12 = v11;
      swift_unknownObjectRelease();
      if (a1)
      {
        if (a1 == 1)
        {
          v13 = [objc_opt_self() sharedApplication];
          v14 = [v13 delegate];

          if (v14)
          {
            type metadata accessor for ClimateAppDelegate();
            swift_dynamicCastClassUnconditional();
            v15 = sub_1000AF438();
            swift_unknownObjectRelease();
            v16 = v15[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

            v17 = 236.0;
            if (v16)
            {
              v17 = 156.0;
            }

            v18 = (v12 - v17) * 0.5;
            v19 = objc_opt_self();
            v20 = [v19 fractionalWidthDimension:1.0];
            v21 = [v19 fractionalHeightDimension:1.0];
            v22 = objc_opt_self();
            v23 = [v22 sizeWithWidthDimension:v20 heightDimension:v21];

            v24 = [objc_opt_self() itemWithLayoutSize:v23];
            v25 = [v19 fractionalWidthDimension:1.0];
            static CAFUIProminentSettingCell.Constants.Cell.height.getter();
            v26 = [v19 estimatedDimension:?];
            v27 = [v22 sizeWithWidthDimension:v25 heightDimension:v26];

            v28 = [objc_opt_self() horizontalGroupWithLayoutSize:v27 repeatingSubitem:v24 count:1];
            v29 = [objc_opt_self() fixedSpacing:8.0];
            [v28 setInterItemSpacing:v29];

            v30 = [objc_opt_self() sectionWithGroup:v28];
            [v30 setInterGroupSpacing:8.0];
            [v30 setContentInsets:{0.0, v18, 20.0, v18}];
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }

      else
      {
        type metadata accessor for ClimateGridLayoutManager();
        v31 = swift_allocObject();
        *(v31 + 56) = 0;
        *(v31 + 32) = 0;
        *(v31 + 40) = 0;
        *(v31 + 16) = v10;
        *(v31 + 24) = _swiftEmptyArrayStorage;
        *(v31 + 48) = v12;
        v32 = v10;
        sub_10008D060();
        v33 = objc_opt_self();
        v34 = [v33 absoluteDimension:*(v31 + 40)];
        v35 = [v33 absoluteDimension:*(v31 + 32)];
        v36 = [objc_opt_self() sizeWithWidthDimension:v34 heightDimension:v35];
        v37 = objc_opt_self();
        aBlock[4] = sub_100013674;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F328;
        aBlock[3] = &unk_1000F6FD0;
        v38 = _Block_copy(aBlock);

        v39 = [v37 customGroupWithLayoutSize:v36 itemProvider:v38];
        _Block_release(v38);
        v40 = [objc_opt_self() sectionWithGroup:v39];
        v41 = (v12 - *(v31 + 40)) * 0.5;
        if (a4 >> 62)
        {
          v44 = v40;
          v42 = _CocoaArrayWrapper.endIndex.getter();
          v40 = v44;
        }

        else
        {
          v42 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v42)
        {
          v43 = 12.0;
        }

        else
        {
          v43 = 0.0;
        }

        [v40 setContentInsets:{0.0, v41, v43, v41}];
      }
    }

    else
    {
    }
  }
}

void *sub_10000F190(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 24);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  result = objc_opt_self();
  if (v4 >= 1)
  {
    v6 = result;

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 frame];
      v10 = [v6 customItemWithFrame:?];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v4 != v7);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

Class sub_10000F328(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  swift_unknownObjectRelease();
  sub_10000827C(0, &unk_100114A00);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_10000F460(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Climate11ClimateGrid_grid] = 0;
  *&v1[OBJC_IVAR____TtC7Climate11ClimateGrid_source] = 0;
  *&v1[OBJC_IVAR____TtC7Climate11ClimateGrid_items] = _swiftEmptyArrayStorage;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ClimateGrid();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_10000F51C()
{
}

uint64_t sub_10000F738(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAFUISettingsCache();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  if (IndexPath.section.getter() == 1)
  {
    v13 = a2;
    v14 = IndexPath.item.getter();
    v15 = *(v3 + OBJC_IVAR____TtC7Climate17ClimateGridSource_viewableSettingItems);
    if ((v15 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v15 + 8 * v14 + 32);
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_27;
    }

    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_6:
    v35 = v7;
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    if (v34)
    {
      v16 = v13 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        type metadata accessor for ClimateProminentSettingsCell();
        v17 = v13;
        static CAFUICellProtocol.reuseIdentifier.getter();
        v18 = String._bridgeToObjectiveC()();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v13 = [a1 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:{isa, v33, v34}];

        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v21 = v20;
          v22 = v13;
          v23 = dispatch thunk of CAFUIProminentSettingCell.customPlatterView.getter();
          v24 = v35;
          if (v23)
          {
            v25 = v23;

            v22 = v25;
          }

          else
          {
            v30 = [objc_opt_self() materialViewWithRecipe:4];
            dispatch thunk of CAFUIProminentSettingCell.customPlatterView.setter();
          }

          v31 = OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsCache;
          swift_beginAccess();
          sub_1000133D4(v3 + v31, v12);
          if ((*(v24 + 48))(v12, 1, v6))
          {
            sub_100008904(v12, &unk_100117180);
          }

          else
          {
            (*(v24 + 16))(v9, v12, v6);
            sub_100008904(v12, &unk_100117180);
            CAFUISettingsCache.hasAnyDisabledAncestor(_:)();
            (*(v24 + 8))(v9, v6);
          }

          dispatch thunk of CAFUIProminentSettingCell.configureCell(for:isDisabledByAncestor:)();

          return v21;
        }
      }
    }

    goto LABEL_27;
  }

  if (qword_100113E38 != -1)
  {
    swift_once();
  }

  v26 = String._bridgeToObjectiveC()();
  v27 = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v27];

  type metadata accessor for ClimateSlotCell();
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v21 = v28;
    v29 = sub_10000FC64(a2);
    sub_1000125A4(v29);

    return v21;
  }

LABEL_27:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000FC64(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  if (IndexPath.section.getter())
  {
    v11 = static os_log_type_t.default.getter();
    (*(v5 + 16))(v8, a1, v4);
    sub_10000827C(0, &qword_1001149B0);
    v12 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44 = v14;
      *v13 = 136446210;
      sub_100013524(&qword_1001149B8, &type metadata accessor for IndexPath);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v5 + 8))(v8, v4);
      v18 = sub_10000835C(v15, v17, &v44);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v11, "Requested climate slot for an invalid section - %{public}s.", v13, 0xCu);
      sub_100006B9C(v14);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 0;
  }

  result = IndexPath.item.getter();
  v20 = OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems;
  v21 = *(*(v2 + OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems) + 16);
  v22 = OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems;
  v23 = *(*(v2 + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16);
  v24 = __OFADD__(v21, v23);
  v25 = v21 + v23;
  if (v24)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result >= v25)
  {
    v30 = static os_log_type_t.default.getter();
    (*(v5 + 16))(v10, a1, v4);
    sub_10000827C(0, &qword_1001149B0);
    v31 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136446210;
      sub_100013524(&qword_1001149B8, &type metadata accessor for IndexPath);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v5 + 8))(v10, v4);
      v37 = sub_10000835C(v34, v36, &v44);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v30, "Requested climate slot for an invalid item - %{public}s.", v32, 0xCu);
      sub_100006B9C(v33);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    return 0;
  }

  v26 = IndexPath.item.getter();
  v27 = *(*(v2 + v20) + 16);
  result = IndexPath.item.getter();
  v28 = *(v2 + v20);
  if (v26 < v27)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v28 + 16))
      {
        v29 = v28 + 16 * result;
LABEL_17:
        v43 = *(v29 + 32);
        v41 = v43;
        return v43;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v38 = *(v28 + 16);
  v24 = __OFSUB__(result, v38);
  v39 = result - v38;
  if (v24)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v39 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = *(v2 + v22);
  if (v39 < *(v40 + 16))
  {
    v29 = v40 + 16 * v39;
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_10001021C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - v9;
  v11 = type metadata accessor for CAFUISettingsCache();
  v77 = *(v11 - 8);
  v78 = v11;
  __chkstk_darwin(v11);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v14 = *(Strong + OBJC_IVAR____TtC7Climate11ClimateGrid_grid), v15 = Strong, v16 = v14, v15, !v14))
  {
    static os_log_type_t.default.getter();
    sub_10000827C(0, &qword_1001149B0);
    v80 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v36 = v80;

    return;
  }

  v73 = v7;
  v74 = v5;
  v18 = OBJC_IVAR____TtC7Climate17ClimateGridSource_viewableSettingItems;
  v19 = *(v2 + OBJC_IVAR____TtC7Climate17ClimateGridSource_viewableSettingItems);
  v82 = a1;
  __chkstk_darwin(v17);
  *(&v72 - 2) = &v82;

  v20 = sub_1000A2F40(sub_1000134BC, (&v72 - 4), v19);

  v21 = CAFAutomakerSetting.isHidden.getter();
  v80 = v2;
  if ((v20 ^ v21))
  {
    v78 = v4;
    v79 = a1;
    v22 = *(v2 + v18);
    v75 = v16;
    if (v22 >> 62)
    {
      goto LABEL_53;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v24 = 0;
      while (1)
      {
        v25 = v18;
        v18 = *(v2 + v18);
        if ((v18 & 0xC000000000000001) == 0)
        {
          break;
        }

        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_10:
        v26 = [v20 identifier];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = [v79 identifier];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        if (v27 == v31 && v29 == v33)
        {

          v2 = v80;
LABEL_43:
          v52 = v73;
          IndexPath.init(item:section:)();

          v53 = v79;
          if ([v79 hasDisabled])
          {
            if ([v53 disabled])
            {
              v54 = OBJC_IVAR____TtC7Climate17ClimateGridSource_presentedSetting;
              v55 = *(v2 + OBJC_IVAR____TtC7Climate17ClimateGridSource_presentedSetting);
              if (v55)
              {
                if (v55 == v53)
                {
                  v56 = swift_unknownObjectWeakLoadStrong();
                  if (v56)
                  {
                    v57 = v56;

                    v58 = *(v2 + v54);
                    *(v2 + v54) = 0;
                  }
                }
              }
            }
          }

          sub_1000040E8(&qword_1001149D8);
          v59 = v74;
          v60 = (*(v74 + 80) + 32) & ~*(v74 + 80);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1000D5970;
          v62 = v78;
          (*(v59 + 16))(v61 + v60, v52, v78);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v64 = v75;
          [v75 reloadItemsAtIndexPaths:isa];

          (*(v59 + 8))(v52, v62);
          return;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v2 = v80;
        if (v35)
        {
          goto LABEL_43;
        }

        ++v24;

        v18 = v25;
        if (v23 == v24)
        {
          goto LABEL_59;
        }
      }

      if (v24 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      while (1)
      {
        __break(1u);
LABEL_53:
        v65 = _CocoaArrayWrapper.endIndex.getter();
        if ((v65 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_55:
        v47 = _CocoaArrayWrapper.endIndex.getter();
        if (!v47)
        {
          goto LABEL_56;
        }

LABEL_30:
        v79 = v18;
        v2 = 0;
        v18 = &selRef_maxDefrostOn;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v48 = *(v20 + 8 * v2 + 32);
          }

          v49 = v48;
          v50 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if ([v48 category] != 2 || (CAFAutomakerSetting.isHidden.getter() & 1) != 0)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v2;
          if (v50 == v47)
          {
            v2 = v80;
            v51 = v81;
            v18 = v79;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
      }

      v23 = v65;
      v2 = v80;
      if (!v65)
      {
LABEL_59:
        v67 = static os_log_type_t.default.getter();
        sub_10000827C(0, &qword_1001149B0);
        v40 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v40, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138543362;
          v70 = v79;
          *(v68 + 4) = v79;
          *v69 = v70;
          v71 = v70;
          _os_log_impl(&_mh_execute_header, v40, v67, "Unable to match item to an index path: %{public}@", v68, 0xCu);
          sub_100008904(v69, &unk_1001149E0);
        }

LABEL_62:
        return;
      }
    }

    v20 = *(v18 + 8 * v24 + 32);
    goto LABEL_10;
  }

  v37 = OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsCache;
  swift_beginAccess();
  sub_1000133D4(v2 + v37, v10);
  v39 = v77;
  v38 = v78;
  if ((*(v77 + 48))(v10, 1, v78) == 1)
  {
    sub_100008904(v10, &unk_100117180);
    static os_log_type_t.default.getter();
    sub_10000827C(0, &qword_1001149B0);
    v40 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    goto LABEL_62;
  }

  (*(v39 + 32))(v76, v10, v38);
  if (CAFAutomakerSetting.isHidden.getter())
  {
    v41 = OBJC_IVAR____TtC7Climate17ClimateGridSource_presentedSetting;
    v42 = *(v2 + OBJC_IVAR____TtC7Climate17ClimateGridSource_presentedSetting);
    if (v42)
    {
      if (v42 == a1)
      {
        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;

          v45 = *(v2 + v41);
          *(v2 + v41) = 0;
        }
      }
    }
  }

  v46 = CAFUISettingsCache.rootSettings.getter();
  v20 = v46;
  v81 = _swiftEmptyArrayStorage;
  v75 = v16;
  if (v46 >> 62)
  {
    goto LABEL_55;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
    goto LABEL_30;
  }

LABEL_56:
  v51 = _swiftEmptyArrayStorage;
LABEL_57:

  *(v2 + v18) = v51;

  v66 = v75;
  [v75 reloadData];
  [v66 updateFocusIfNeeded];

  (*(v77 + 8))(v76, v78);
}

uint64_t sub_100010C54(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v160 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v159 = &v149 - v11;
  v12 = __chkstk_darwin(v10);
  v156 = &v149 - v13;
  __chkstk_darwin(v12);
  v157 = &v149 - v14;
  v15 = type metadata accessor for CAFUICellSelectionAction();
  v16 = *(v15 - 8);
  v154 = v15;
  v155 = v16;
  v17 = __chkstk_darwin(v15);
  v153 = (&v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v158 = &v149 - v19;
  v20 = sub_1000040E8(&unk_100117180);
  v21 = __chkstk_darwin(v20 - 8);
  v151 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v152 = &v149 - v24;
  __chkstk_darwin(v23);
  v26 = &v149 - v25;
  v27 = type metadata accessor for CAFUISettingsCache();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:0];

  v32 = OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsCache;
  swift_beginAccess();
  v161 = v3;
  sub_1000133D4(&v3[v32], v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    return sub_100008904(v26, &unk_100117180);
  }

  (*(v28 + 32))(v30, v26, v27);
  v34 = v27;
  v35 = v30;
  if (IndexPath.section.getter() != 1)
  {
    return (*(v28 + 8))(v30, v34);
  }

  v150 = v34;
  v36 = IndexPath.item.getter();
  v37 = *&v161[OBJC_IVAR____TtC7Climate17ClimateGridSource_viewableSettingItems];
  v149 = v28;
  if ((v37 & 0xC000000000000001) != 0)
  {

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v38 = v6;
    goto LABEL_8;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (v36 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v38 = v6;
  v39 = *(v37 + 8 * v36 + 32);
LABEL_8:
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v39)
  {
    swift_getObjectType();
    v30 = v39;
    if ((dispatch thunk of CAFListContentRepresentable.isEnabled.getter() & 1) == 0)
    {

      v162 = 0;
      v163 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v162 = 0x206D657449;
      v163 = 0xE500000000000000;
      v65._countAndFlagsBits = dispatch thunk of CAFListContentRepresentable.rowLabel.getter();
      String.append(_:)(v65);

      v66._object = 0x80000001000DA870;
      v66._countAndFlagsBits = 0xD000000000000021;
      String.append(_:)(v66);
      static CAFUILogger.default(_:function:file:line:)();

      return (*(v149 + 8))(v35, v150);
    }

    v40 = IndexPath._bridgeToObjectiveC()().super.isa;
    v41 = [a1 cellForItemAtIndexPath:v40];

    v42 = v30;
    if (v41)
    {
      type metadata accessor for ClimateProminentSettingsCell();
      if (swift_dynamicCastClass())
      {

        v43 = [a1 window];
        if (v43)
        {
          a1 = v43;
          v44 = [v43 rootViewController];
          v45 = v30;
          if (v44)
          {
            v46 = v44;
            objc_opt_self();
            v47 = swift_dynamicCastObjCClass();
            if (v47)
            {
              v34 = v47;
              v160 = v46;
              swift_unknownObjectWeakAssign();
              v48 = v158;
              dispatch thunk of CAFListContentRepresentable.cellSelected()();
              v9 = v154;
              v49 = v155;
              v50 = v153;
              (*(v155 + 16))(v153, v48, v154);
              v51 = (*(v49 + 88))(v50, v9);
              if (v51 == enum case for CAFUICellSelectionAction.push(_:))
              {
                v157 = a1;
                v52 = v30;
                v159 = v35;
                (*(v49 + 96))(v50, v9);
                v53 = *v50;
                v28 = v149;
LABEL_57:
                v143 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:0 action:0];
                sub_10000827C(0, &qword_1001149D0);
                *(swift_allocObject() + 16) = v34;
                v144 = v160;
                v145 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                [v143 setPrimaryAction:v145];

                v146 = [v53 navigationItem];
                [v146 setLeftBarButtonItem:v143];

                v147 = [v53 navigationItem];
                [v147 setHidesBackButton:1];

                v148 = *&v161[OBJC_IVAR____TtC7Climate17ClimateGridSource_presentedSetting];
                *&v161[OBJC_IVAR____TtC7Climate17ClimateGridSource_presentedSetting] = v52;

                [v34 setNavigationBarHidden:0];
                [v34 pushViewController:v53 animated:1];

                (*(v49 + 8))(v158, v9);
                return (*(v28 + 8))(v159, v150);
              }

              v28 = v149;
              if (v51 != enum case for CAFUICellSelectionAction.showChildren(_:))
              {
                if (v51 == enum case for CAFUICellSelectionAction.none(_:))
                {

                  (*(v49 + 8))(v158, v9);
                  return (*(v28 + 8))(v35, v150);
                }

                v123 = v150;
                if (v51 != enum case for CAFUICellSelectionAction.showSettingAndSiblings(_:))
                {

                  v124 = *(v49 + 8);
                  v124(v158, v9);
                  (*(v28 + 8))(v35, v123);
                  return (v124)(v50, v9);
                }

                goto LABEL_73;
              }

              (*(v49 + 96))(v50, v9);
              v3 = *v50;
              v103 = CAFUISettingsCache.visibleChildren(of:)();
              if (!(v103 >> 62))
              {
                v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_41;
              }

LABEL_66:
              v104 = _CocoaArrayWrapper.endIndex.getter();
LABEL_41:
              v157 = a1;
              v159 = v35;

              v52 = v30;
              if (!v104)
              {

                v125 = objc_opt_self();
                v126 = [v125 sharedApplication];
                v127 = [v126 delegate];

                if (v127)
                {
                  type metadata accessor for ClimateAppDelegate();
                  swift_dynamicCastClassUnconditional();
                  v128 = sub_1000AF438();
                  swift_unknownObjectRelease();
                  v129 = *&v128[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus];

                  v130 = [v129 currentSession];
                  if (!v130)
                  {

                    (*(v155 + 8))(v158, v154);
                    return (*(v28 + 8))(v159, v150);
                  }

                  v131 = v52;
                  v132 = v159;
                  v156 = CAFUISettingsCache.sections(for:)();

                  v133 = v151;
                  v134 = v132;
                  v135 = v150;
                  (*(v28 + 16))(v151, v134, v150);
                  (*(v28 + 56))(v133, 0, 1, v135);
                  v136 = [v125 sharedApplication];
                  v137 = [v136 delegate];

                  if (v137)
                  {
                    swift_dynamicCastClassUnconditional();
                    v138 = sub_1000AF438();
                    swift_unknownObjectRelease();

                    v139 = [v125 sharedApplication];
                    v140 = [v139 delegate];

                    if (v140)
                    {
                      swift_dynamicCastClassUnconditional();
                      v141 = sub_1000AF438();
                      swift_unknownObjectRelease();

                      v142 = objc_allocWithZone(type metadata accessor for CAFUITileViewController());
                      v53 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();
                      goto LABEL_56;
                    }

                    goto LABEL_72;
                  }

LABEL_71:
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  result = _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                  return result;
                }

LABEL_70:
                __break(1u);
                goto LABEL_71;
              }

              v105 = objc_opt_self();
              v106 = [v105 sharedApplication];
              v107 = [v106 delegate];

              if (v107)
              {
                type metadata accessor for ClimateAppDelegate();
                swift_dynamicCastClassUnconditional();
                v108 = sub_1000AF438();
                swift_unknownObjectRelease();
                v109 = *&v108[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus];

                v110 = [v109 currentSession];
                if (!v110)
                {

                  (*(v155 + 8))(v158, v9);
                  return (*(v28 + 8))(v159, v150);
                }

                v111 = v3;
                v112 = v159;
                v153 = CAFUISettingsCache.sections(for:)();
                v156 = v111;

                v113 = v152;
                v114 = v112;
                v115 = v150;
                (*(v28 + 16))(v152, v114, v150);
                (*(v28 + 56))(v113, 0, 1, v115);
                v116 = [v105 sharedApplication];
                v117 = [v116 delegate];

                if (v117)
                {
                  swift_dynamicCastClassUnconditional();
                  v118 = sub_1000AF438();
                  swift_unknownObjectRelease();

                  v119 = [v105 sharedApplication];
                  v120 = [v119 delegate];

                  if (v120)
                  {
                    swift_dynamicCastClassUnconditional();
                    v121 = sub_1000AF438();
                    swift_unknownObjectRelease();

                    v122 = objc_allocWithZone(type metadata accessor for CAFUITileViewController());
                    v53 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();

LABEL_56:
                    v9 = v154;
                    v49 = v155;
                    goto LABEL_57;
                  }

                  goto LABEL_69;
                }
              }

              else
              {
                __break(1u);
              }

              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            v45 = v46;
          }

          v161 = v30;

          v92 = static os_log_type_t.default.getter();
          v93 = v160;
          v94 = v157;
          (*(v160 + 2))(v157, a2, v38);
          sub_10000827C(0, &qword_1001149B0);
          v95 = static OS_os_log.default.getter();
          if (os_log_type_enabled(v95, v92))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v162 = v97;
            *v96 = 136446210;
            sub_100013524(&qword_1001149B8, &type metadata accessor for IndexPath);
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v99 = v94;
            v101 = v100;
            (v93)[1](v99, v38);
            v102 = sub_10000835C(v98, v101, &v162);

            *(v96 + 4) = v102;
            _os_log_impl(&_mh_execute_header, v95, v92, "App window does not have a root navigation controller - %{public}s.", v96, 0xCu);
            sub_100006B9C(v97);
          }

          else
          {

            (v93)[1](v94, v38);
          }

          return (*(v149 + 8))(v35, v150);
        }

        v67 = v35;

        v79 = static os_log_type_t.default.getter();
        v80 = v38;
        v81 = v160;
        v82 = v156;
        (*(v160 + 2))(v156, a2, v80);
        sub_10000827C(0, &qword_1001149B0);
        v83 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v83, v79))
        {
          v84 = swift_slowAlloc();
          v85 = v30;
          v86 = swift_slowAlloc();
          v162 = v86;
          *v84 = 136446210;
          sub_100013524(&qword_1001149B8, &type metadata accessor for IndexPath);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v82;
          v90 = v89;
          (v81)[1](v88, v80);
          v91 = sub_10000835C(v87, v90, &v162);

          *(v84 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v83, v79, "CollectionView window DNE - %{public}s.", v84, 0xCu);
          sub_100006B9C(v86);
        }

        else
        {

          (v81)[1](v82, v80);
        }

        return (*(v149 + 8))(v67, v150);
      }

      v42 = v41;
    }

    v67 = v35;

    v68 = static os_log_type_t.default.getter();
    v69 = v159;
    v70 = v160;
    (*(v160 + 2))(v159, a2, v38);
    sub_10000827C(0, &qword_1001149B0);
    v71 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v71, v68))
    {
      v72 = swift_slowAlloc();
      v161 = v30;
      v73 = v72;
      v74 = swift_slowAlloc();
      v162 = v74;
      *v73 = 136446210;
      sub_100013524(&qword_1001149B8, &type metadata accessor for IndexPath);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (v70)[1](v69, v38);
      v78 = sub_10000835C(v75, v77, &v162);

      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v71, v68, "The cell is not of the expected type - %{public}s.", v73, 0xCu);
      sub_100006B9C(v74);
    }

    else
    {

      (v70)[1](v69, v38);
    }

    return (*(v149 + 8))(v67, v150);
  }

  v54 = v30;
  v55 = static os_log_type_t.default.getter();
  v56 = v160;
  (*(v160 + 2))(v9, a2, v38);
  sub_10000827C(0, &qword_1001149B0);
  v57 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v57, v55))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v162 = v59;
    *v58 = 136446210;
    sub_100013524(&qword_1001149B8, &type metadata accessor for IndexPath);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v38;
    v63 = v62;
    v56[1](v9, v61);
    v64 = sub_10000835C(v60, v63, &v162);

    *(v58 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v57, v55, "Setting is expected to be a CAFListContentRepresentable - %{public}s.", v58, 0xCu);
    sub_100006B9C(v59);
  }

  else
  {

    v56[1](v9, v38);
  }

  return (*(v149 + 8))(v54, v150);
}

uint64_t sub_100012470()
{
  type metadata accessor for ClimateSlotCell();
  sub_1000040E8(&qword_1001149F0);
  result = String.init<A>(describing:)();
  qword_10011AD18 = result;
  unk_10011AD20 = v1;
  return result;
}

void sub_1000125A4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    v5 = objc_opt_self();
    sub_1000040E8(&unk_100114770);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000D5D90;
    v7 = [v3 topAnchor];
    v8 = [v2 contentView];
    v9 = [v8 topAnchor];

    v10 = [v7 constraintEqualToAnchor:v9];
    *(v6 + 32) = v10;
    v11 = [v3 bottomAnchor];
    v12 = [v2 contentView];
    v13 = [v12 bottomAnchor];

    v14 = [v11 constraintEqualToAnchor:v13];
    *(v6 + 40) = v14;
    v15 = [v3 leftAnchor];
    v16 = [v2 contentView];
    v17 = [v16 leftAnchor];

    v18 = [v15 constraintEqualToAnchor:v17];
    *(v6 + 48) = v18;
    v19 = [v3 rightAnchor];
    v20 = [v2 contentView];
    v21 = [v20 rightAnchor];

    v22 = [v19 constraintEqualToAnchor:v21];
    *(v6 + 56) = v22;
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 activateConstraints:isa];
  }
}

id sub_1000129F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t ClimateGridError.errorDescription.getter(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100012BA0()
{
  result = qword_1001147F0;
  if (!qword_1001147F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001147F0);
  }

  return result;
}

uint64_t sub_100012BF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_opt_self() mainBundle];
  v8._object = 0xE000000000000000;
  v4._countAndFlagsBits = v1;
  v4._object = v2;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t type metadata accessor for ClimateGridSource()
{
  result = qword_100114900;
  if (!qword_100114900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012D0C()
{
  sub_100012DC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100012DC8()
{
  if (!qword_100114910)
  {
    type metadata accessor for CAFUISettingsCache();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100114910);
    }
  }
}

uint64_t sub_100012E44(uint64_t a1, int a2)
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

uint64_t sub_100012E8C(uint64_t result, int a2, int a3)
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

id sub_100012ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_100012F54()
{
  *&v0[OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Climate17ClimateGridSource_viewableSettingItems] = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsCache;
  v2 = type metadata accessor for CAFUISettingsCache();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC7Climate17ClimateGridSource_presentedSetting] = 0;
  *&v0[OBJC_IVAR____TtC7Climate17ClimateGridSource_settingsObserver] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ClimateGridSource();
  return objc_msgSendSuper2(&v4, "init");
}

void sub_100013060()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1000AF438();
    swift_unknownObjectRelease();
    v3 = [*&v2[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 configuration];

      [v5 rightHandDrive];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100013178(uint64_t a1)
{
  if (a1 != 1)
  {
    if (!a1)
    {
      v4 = *(*(v1 + OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems) + 16);
      v5 = *(*(v1 + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16);
      result = v4 + v5;
      if (!__OFADD__(v4, v5))
      {
        return result;
      }

      __break(1u);
    }

    _StringGuts.grow(_:)(53);
    v6._object = 0x80000001000DAA70;
    v6._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v6);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 46;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v2 = *(v1 + OBJC_IVAR____TtC7Climate17ClimateGridSource_viewableSettingItems);
  if (!(v2 >> 62))
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

void *sub_1000132D8(void *a1)
{
  v3 = OBJC_IVAR____TtC7Climate15ClimateSlotCell_isHeightCalculated;
  if ((*(v1 + OBJC_IVAR____TtC7Climate15ClimateSlotCell_isHeightCalculated) & 1) == 0)
  {
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
    v4 = [v1 contentView];
    [a1 size];
    [v4 systemLayoutSizeFittingSize:?];
    v6 = v5;

    [a1 frame];
    v8 = v7;
    *&v7 = v6;
    [a1 setFrame:{v8, v9, ceilf(*&v7), v10}];
    *(v1 + v3) = 1;
  }

  return a1;
}

uint64_t sub_1000133D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100117180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013444()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001347C()
{
  v1 = [*(v0 + 16) popViewControllerAnimated:1];
}

uint64_t sub_100013524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001356C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100117180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000135DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013614()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001365C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ClimateTemperatureServiceStepper.presentationStates.getter()
{
  v1 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  v2 = [*(v0 + v1) targetTemperatureRestricted];
  v3 = [*(v0 + v1) targetTemperatureInvalid];
  v4 = [*(v0 + v1) targetTemperatureDisabled];
  if (v2)
  {
    v5 = 4;
    if (v3)
    {
      v5 = 12;
    }

    if ((v4 & 1) == 0)
    {
      return v5;
    }

    return v5 | 0x10;
  }

  v5 = 8;
  if (!v3)
  {
    v5 = 0;
  }

  if (v4)
  {
    return v5 | 0x10;
  }

  return v5;
}

float ClimateTemperatureServiceStepper.characteristicValue.getter()
{
  v1 = sub_1000040E8(&unk_100114790);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  v6 = [*(v0 + v5) targetTemperature];
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  Measurement.value.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

id ClimateTemperatureServiceStepper.temperature.getter()
{
  v1 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ClimateTemperatureServiceStepper.temperature.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  [*(v1 + v3) unregisterObserver:v1];
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [v5 registerObserver:v1];
}

void (*ClimateTemperatureServiceStepper.temperature.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_100013AF8;
}

void sub_100013AF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v6);
  if (a2)
  {
    v8 = v3;
    [v7 unregisterObserver:v5];
    v9 = *(v5 + v6);
    *(v5 + v6) = v8;
    v10 = v8;

    [v10 registerObserver:v5];
    v11 = *v4;
  }

  else
  {
    [*(v5 + v6) unregisterObserver:v5];
    v12 = *(v5 + v6);
    *(v5 + v6) = v3;
    v11 = v3;

    [v11 registerObserver:v5];
  }

  free(v2);
}

char *ClimateTemperatureServiceStepper.__allocating_init(_:primaryButton:axis:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature] = a1;
  v8 = a1;
  v9 = a2;
  v10 = ClimateStepper.init(primaryButton:axis:range:)(v9, a3, [v8 targetTemperatureRange]);
  [v8 registerObserver:v10];

  return v10;
}

char *ClimateTemperatureServiceStepper.init(_:primaryButton:axis:)(void *a1, void *a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature) = a1;
  v6 = a1;
  v7 = a2;
  v8 = ClimateStepper.init(primaryButton:axis:range:)(v7, a3, [v6 targetTemperatureRange]);
  [v6 registerObserver:v8];

  return v8;
}

id ClimateTemperatureServiceStepper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateTemperatureServiceStepper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateTemperatureServiceStepper()
{
  result = qword_100114A98;
  if (!qword_100114A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014060()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  v3 = *(v1 + v2);
  sub_10000827C(0, &unk_100114750);
  v4 = v3;
  CAFPositioned.layoutKey.getter();
}

char *sub_10001414C(char a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC7Climate16ClimateIndicator_circularBackgroundView] = 0;
  v7 = &v3[OBJC_IVAR____TtC7Climate16ClimateIndicator_circleDiameter];
  *v7 = 0;
  v7[8] = 1;
  v3[OBJC_IVAR____TtC7Climate16ClimateIndicator_isAutoMode] = 0;
  v3[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = 0;
  *v7 = a2;
  v7[8] = a3 & 1;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for ClimateIndicator();
  v8 = objc_msgSendSuper2(&v23, "init");
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v8 layer];
  [v9 setHitTestsAsOpaque:1];

  v10 = [v8 layer];
  [v10 setCornerRadius:0.0];

  v11 = [v8 titleLabel];
  [v11 setAdjustsFontSizeToFitWidth:1];

  v12 = [v8 titleLabel];
  if (v12)
  {
    [v12 setNumberOfLines:1];
  }

  if (a1)
  {
    sub_10001441C(a2, a3 & 1);
  }

  v13 = *&v8[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v14 = *&v8[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
  v15 = *&v8[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
  v16 = objc_opt_self();
  v17 = v8;
  v18 = v13;
  v19 = v14;

  v20 = [v16 clearColor];
  if (v20)
  {
    v21 = v20;

    v18 = v21;
  }

  sub_10007A4CC(v18, v19, v15);

  return v17;
}

void sub_10001441C(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(UIView) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v5 layer];
  v7 = v6;
  v8 = *&a1;
  v9 = *&a1 * 0.5;
  v10 = a2 & 1;
  if (a2)
  {
    v9 = 0.0;
  }

  [v6 setCornerRadius:v9];

  v11 = [objc_opt_self() labelColor];
  v12 = [v11 colorWithAlphaComponent:0.15];

  [v5 setBackgroundColor:v12];
  v13 = [v5 layer];
  v14 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v13 setCompositingFilter:v14];

  [v5 setUserInteractionEnabled:0];
  [v2 insertSubview:v5 atIndex:0];
  v15 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000D5D90;
  if (v10)
  {
    v17 = [v5 leadingAnchor];
    v18 = [v2 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v16 + 32) = v19;
    v20 = [v5 trailingAnchor];
    v21 = [v2 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v16 + 40) = v22;
    v23 = &selRef_topAnchor;
    v24 = &selRef_bottomAnchor;
  }

  else
  {
    v25 = [v5 widthAnchor];
    v26 = [v25 constraintEqualToConstant:v8];

    *(v16 + 32) = v26;
    v27 = [v5 heightAnchor];
    v28 = [v27 constraintEqualToConstant:v8];

    *(v16 + 40) = v28;
    v23 = &selRef_centerXAnchor;
    v24 = &selRef_centerYAnchor;
  }

  v29 = [v5 *v24];
  v30 = [v2 *v24];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v16 + 48) = v31;
  v32 = [v5 *v23];
  v33 = [v2 *v23];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v16 + 56) = v34;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];

  v36 = *&v2[OBJC_IVAR____TtC7Climate16ClimateIndicator_circularBackgroundView];
  *&v2[OBJC_IVAR____TtC7Climate16ClimateIndicator_circularBackgroundView] = v5;
}

id sub_100014940()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateIndicator()
{
  result = qword_100114AE0;
  if (!qword_100114AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClimateIndicator.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClimateIndicator.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100014B90()
{
  result = qword_100114AF0;
  if (!qword_100114AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114AF0);
  }

  return result;
}

void sub_100014BF8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_100014CF8(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v7 = *v6++;
      v9 = v7;
      v8 = v7;
      a1(&v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_100014D84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  sub_10000827C(0, &qword_100115830);
  CAFPositionedRequired.layoutKey.getter();

  v7 = 0;
LABEL_9:
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

id sub_100014EA0()
{
  v1 = OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView);
  }

  else
  {
    sub_100014F04(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100014F04(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons) >> 62)
  {
    sub_10000827C(0, &qword_100115400);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000827C(0, &qword_100115400);
  }

  v2 = objc_allocWithZone(UIStackView);
  sub_10000827C(0, &qword_100115400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArrangedSubviews:isa];

  v5 = *(a1 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_axis);
  [v4 setAxis:v5];
  [v4 setDistribution:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v5 == 1)
  {
    v8 = 23.0;
    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v8 = 12.0;
  if (!v7)
  {
    __break(1u);
    return;
  }

LABEL_7:
  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v9 = sub_1000AF438();
  swift_unknownObjectRelease();
  v10 = v9[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  v11 = 8.0;
  if (v10)
  {
    v11 = v8;
  }

  [v4 setSpacing:v11];
}

void sub_100015130(unint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v121) = a3;
  v115 = a2;
  v5 = sub_1000040E8(&qword_100115840);
  v6 = __chkstk_darwin(v5 - 8);
  isa = (&v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v110 - v9;
  v117 = type metadata accessor for CAUVehicleLayoutKey();
  v11 = *(v117 - 8);
  __chkstk_darwin(v117);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_type] = 1;
  *&v3[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___autoModeCenterYConstraint] = 0;
  v116 = v3;
  *&v3[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView] = 0;
  v14 = _swiftEmptyArrayStorage;
  v125 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v113 = isa;
    v122 = a1;
    v123 = i;
    if (i)
    {
      isa = 0;
      v16 = (a1 & 0xC000000000000001);
      v17 = (a1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v16)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (isa >= v17->type)
          {
            goto LABEL_48;
          }

          v18 = *(a1 + 8 * isa + 32);
        }

        v19 = v18;
        a1 = isa + 1;
        if (__OFADD__(isa, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v20 = *&v18[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v120 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        isa = (isa + 1);
        v21 = a1 == v123;
        a1 = v122;
      }

      while (!v21);
      isa = v125;
      if (v16)
      {
        goto LABEL_67;
      }

      if (v17->type)
      {
        v22 = *(v122 + 32);
        goto LABEL_18;
      }

      __break(1u);
LABEL_69:
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_46;
    }

    isa = _swiftEmptyArrayStorage;
    while (1)
    {
      v114 = sub_10000827C(0, &qword_100115830);
      v13 = static CAFVent.groupedSymbolName(vents:useRightFacingSeat:)();
      v25 = v24;

      if (!i)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_24;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(a1 + 32);
LABEL_24:
        isa = v26;
        CAFPositionedRequired.layoutKey.getter();

        v27 = 0;
        goto LABEL_26;
      }

      __break(1u);
LABEL_67:
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
      v23 = v22;
      sub_10000827C(0, &qword_100115830);
      CAFPositionedRequired.layoutKey.getter();

      sub_100028A98();
      (v11[1])(v13, v117);
      i = v123;
    }

    v27 = 1;
LABEL_26:
    v28 = v11[7];
    v11 += 7;
    v111 = v28;
    v112 = v11;
    v28(v10, v27, 1, v117);
    v29 = objc_allocWithZone(type metadata accessor for ClimateGroupedVentsAutoModeButton());
    sub_1000AD52C(v13, v25, v10);
    *&v116[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton] = v30;
    v125 = v14;
    if (!i)
    {
      break;
    }

    v13 = 0;
    v119 = a1 & 0xFFFFFFFFFFFFFF8;
    v120 = a1 & 0xC000000000000001;
    v118 = xmmword_1000D58A0;
    while (1)
    {
      if (v120)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v119 + 16))
        {
          goto LABEL_50;
        }

        v31 = *(a1 + 8 * v13 + 32);
      }

      v14 = v31;
      v32 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v33 = v121;
      v34 = *(v31 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_style);
      v35 = *(v31 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent);
      if (v33 == 2)
      {
        sub_10008F408(1);
        v37 = v36;
        v39 = v38;
      }

      else
      {
        v37 = 44.0;
        v39 = 44.0;
      }

      v40 = objc_allocWithZone(type metadata accessor for ClimateGroupedVentsButton.VentButtonWithoutAutomode(0));
      v40[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_lockButtonToDisabledState] = 0;
      v40[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol] = 0;
      v41 = v35;
      v42 = sub_1000810E8(v41, v34);

      v10 = v42;
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v43 = objc_opt_self();
      sub_1000040E8(&unk_100114770);
      v44 = swift_allocObject();
      *(v44 + 16) = v118;
      v45 = [v10 widthAnchor];
      v11 = &selRef_maxDefrostOn;
      v46 = [v45 constraintEqualToConstant:v37];

      *(v44 + 32) = v46;
      v47 = [v10 heightAnchor];

      v48 = [v47 constraintEqualToConstant:v39];
      *(v44 + 40) = v48;
      sub_10000827C(0, &qword_1001149C0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v43 activateConstraints:isa];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isa = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v13;
      a1 = v122;
      if (v32 == v123)
      {
        v14 = v125;
        goto LABEL_40;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_40:

  v49 = v115;
  v50 = v116;
  *&v116[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons] = v14;
  *&v50[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_axis] = v49;
  v50[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_style] = v121;
  v51 = type metadata accessor for ClimateGroupedVentsButton(0);
  v124.receiver = v50;
  v124.super_class = v51;
  v14 = objc_msgSendSuper2(&v124, "init");
  [(objc_class *)v14 _setContinuousCornerRadius:0.0];
  v52 = [objc_opt_self() clearColor];
  v53 = *(v14 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v54 = *(v14 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);

  sub_10007A4CC(v52, v54, v53);

  v13 = objc_opt_self();
  v17 = &stru_100102000;
  v55 = [v13 sharedApplication];
  v16 = &stru_100102000;
  v56 = [v55 delegate];

  if (!v56)
  {
    goto LABEL_71;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v57 = sub_1000AF438();
  swift_unknownObjectRelease();
  v11 = &OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler;
  v10 = *&v57[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

  v58 = *(v14 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
  if (v58 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

LABEL_43:
    if ((v58 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 32);
LABEL_46:
      v60 = v59;
      v61 = v113;
      CAFPositionedRequired.layoutKey.getter();

      v62 = 0;
      goto LABEL_54;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_53:
  v62 = 1;
  v61 = v113;
LABEL_54:
  v111(v61, v62, 1, v117);
  sub_10001A3E4(v14, v61, v10);

  sub_10001AEA0(v61);
  v63 = OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton;
  v64 = *(v14 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton);
  v65 = [v13 v17[121].offs];
  v66 = [v65 v16[121].name];

  if (!v66)
  {
LABEL_72:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  v67 = sub_1000AF438();
  swift_unknownObjectRelease();
  v68 = *&v67[*v11];

  *&v64[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_delegate + 8] = &off_1000F7C30;
  swift_unknownObjectWeakAssign();

  [(objc_class *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v69 = sub_100014EA0();
  [(objc_class *)v14 addSubview:v69];

  v70 = objc_opt_self();
  v122 = sub_1000040E8(&unk_100114770);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1000D5D90;
  v72 = OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView;
  v73 = [*(v14 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView) leadingAnchor];
  v74 = [(objc_class *)v14 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v71 + 32) = v75;
  v76 = [*(v14 + v72) trailingAnchor];
  v77 = [(objc_class *)v14 trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v71 + 40) = v78;
  v79 = [*(v14 + v72) topAnchor];
  v80 = [(objc_class *)v14 topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v71 + 48) = v81;
  v82 = [*(v14 + v72) bottomAnchor];
  v83 = [(objc_class *)v14 bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  *(v71 + 56) = v84;
  v121 = sub_10000827C(0, &qword_1001149C0);
  v85 = Array._bridgeToObjectiveC()().super.isa;

  v123 = v70;
  [v70 activateConstraints:v85];

  [(objc_class *)v14 addSubview:*(v14 + v63)];
  [*(v14 + v63) setTranslatesAutoresizingMaskIntoConstraints:0];
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1000D58A0;
  v87 = [*(v14 + v63) centerXAnchor];
  v88 = [(objc_class *)v14 centerXAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v86 + 32) = v89;
  v90 = [*(v14 + v63) centerYAnchor];
  v91 = [(objc_class *)v14 centerYAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v86 + 40) = v92;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v70 activateConstraints:v93];

  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1000D5BB0;
  if (v115)
  {
    v95 = &selRef_heightAnchor;
  }

  else
  {
    v95 = &selRef_widthAnchor;
  }

  if (v115)
  {
    v96 = &selRef_leadingAnchor;
  }

  else
  {
    v96 = &selRef_topAnchor;
  }

  if (v115)
  {
    v97 = &selRef_trailingAnchor;
  }

  else
  {
    v97 = &selRef_bottomAnchor;
  }

  v98 = [*(v14 + v63) *v95];
  v99 = v14;
  v100 = [v99 *v95];
  v101 = [v98 constraintEqualToAnchor:v100];

  *(v94 + 32) = v101;
  v102 = [*(v14 + v63) *v96];
  v103 = [v99 *v96];
  v104 = [v102 constraintEqualToAnchor:v103];

  *(v94 + 40) = v104;
  v105 = [*(v14 + v63) *v97];
  v106 = [v99 *v97];

  v107 = [v105 constraintEqualToAnchor:v106];
  *(v94 + 48) = v107;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v123 activateConstraints:v108];

  sub_10001663C();
  v109 = [objc_opt_self() defaultCenter];
  [v109 addObserver:v99 selector:"appMovedToForeground" name:UISceneWillEnterForegroundNotification object:0];
}

void sub_100016118()
{
  v1 = v0;
  v2 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v6 = qword_10011B1C0;
  if (!os_log_type_enabled(qword_10011B1C0, v5))
  {
    goto LABEL_23;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v23 = v8;
  *v7 = 136315138;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
    goto LABEL_26;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v11 = sub_1000AF438();
  swift_unknownObjectRelease();
  v12 = *&v11[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

  v13 = *(v1 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
  if (v13 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

LABEL_12:
    v17 = type metadata accessor for CAUVehicleLayoutKey();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    goto LABEL_13;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
LABEL_10:
    v15 = v14;
    sub_10000827C(0, &qword_100115830);
    CAFPositionedRequired.layoutKey.getter();

    v16 = type metadata accessor for CAUVehicleLayoutKey();
    (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
LABEL_13:
    v18 = sub_100037260(v4);

    sub_10001AEA0(v4);
    if (v18 <= 1u)
    {
      if (v18)
      {
        v19 = 0xE800000000000000;
        v20 = 0x65646F4D6F747561;
      }

      else
      {
        v19 = 0xE300000000000000;
        v20 = 6710895;
      }
    }

    else if (v18 == 2)
    {
      v19 = 0xE800000000000000;
      v20 = 0x64656C6261736964;
    }

    else if (v18 == 3)
    {
      v19 = 0xE700000000000000;
      v20 = 0x68736572666572;
    }

    else
    {
      v19 = 0xE800000000000000;
      v20 = 0x676E696E6E697073;
    }

    v21 = sub_10000835C(v20, v19, &v23);

    *(v7 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v6, v5, "ClimateGroupedVentButton foregrounded with state: %s", v7, 0xCu);
    sub_100006B9C(v8);

LABEL_23:
    sub_10001663C();
    return;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10001663C()
{
  v1 = v0;
  v2 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    goto LABEL_22;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v7 = sub_1000AF438();
  swift_unknownObjectRelease();
  v8 = *&v7[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

  v9 = *(v1 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);
LABEL_7:
      v11 = v10;
      sub_10000827C(0, &qword_100115830);
      CAFPositionedRequired.layoutKey.getter();

      v12 = type metadata accessor for CAUVehicleLayoutKey();
      (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
      goto LABEL_10;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v13 = type metadata accessor for CAUVehicleLayoutKey();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
LABEL_10:
  v14 = sub_100037260(v4);

  sub_10001AEA0(v4);
  if (v14 <= 1u)
  {
    if (v14)
    {
      sub_100016C2C();
      return;
    }

    v15 = 0;
LABEL_17:
    sub_1000168C8(v15);
    return;
  }

  if (v14 == 2)
  {
    v15 = 1;
    goto LABEL_17;
  }

  if (v14 == 3)
  {
    sub_100016E78();
  }
}

id sub_1000168C8(uint64_t a1)
{
  v2 = v1;
  LOBYTE(v1) = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v4 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v1))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v4, v1, "GroupedVents show stack, disabled: %{BOOL}d", v5, 8u);
    }

    v6 = *(v2 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton);
    v7 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
    v8 = (*((swift_isaMask & **&v6[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton]) + 0x288))(0);
    v32 = v7;
    v33 = v6;
    v1 = *&v6[v7];
    (*((swift_isaMask & *v1) + 0x1F8))(v8);
    v9 = *(v2 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_6:
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v2 = v9 & 0xFFFFFFFFFFFFFF8;
    v13 = a1 & 1;
    v14 = &unk_10011A000;
    while (1)
    {
      if (v12)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v2 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(v9 + 8 * v11 + 32);
      }

      v1 = v15;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = v14[430];
      v18 = *(v15 + v17);
      *(v15 + v17) = v13;
      if (v18 != (a1 & 1))
      {
        sub_10007F828();
        v34 = *(v1 + OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol);
        v19 = [v1 imageView];
        if (v19)
        {
          v20 = v13;
          v21 = v2;
          v22 = v12;
          v23 = v9;
          v24 = v10;
          v25 = a1;
          v26 = v19;
          [v19 setHidden:v34];

          a1 = v25;
          v10 = v24;
          v9 = v23;
          v12 = v22;
          v2 = v21;
          v13 = v20;
          v14 = &unk_10011A000;
        }
      }

      ++v11;
      if (v16 == v10)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_20:
  v27 = sub_100014EA0();
  [v27 setAlpha:1.0];

  [v33 setAlpha:0.0];
  if (a1)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v29 = v33[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState];
  v33[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState] = v28;
  if ((sub_1000AA5D0(v28, v29) & 1) == 0)
  {
    sub_1000AE2E0();
  }

  v33[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_hideSymbol] = 0;
  v30 = *&v33[v32];

  return [v30 setHidden:0];
}

id sub_100016C2C()
{
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton);
  v2 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
  v3 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton]) + 0x288))(1);
  (*((swift_isaMask & **&v1[v2]) + 0x1F8))(v3);
  v4 = sub_100014EA0();
  [v4 setAlpha:0.0];

  v5 = v1[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState];
  v1[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState] = 1;
  if (v5 <= 1 && v5)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      sub_1000AE2E0();
    }
  }

  return [v1 setAlpha:1.0];
}

id sub_100016E78()
{
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton);
  v2 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
  v3 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton]) + 0x288))(1);
  (*((swift_isaMask & **&v1[v2]) + 0x1F8))(v3);
  v4 = sub_100014EA0();
  [v4 setAlpha:0.0];

  v5 = v1[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState];
  v1[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState] = 3;
  if (v5 == 3)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      sub_1000AE2E0();
    }
  }

  return [v1 setAlpha:1.0];
}

void sub_1000170C8()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView);
}

void sub_100017268()
{
  v1 = v0;
  [v0 _removeAllAnimations:1];
  v2 = *&v0[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton];
  v3 = *(v2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState);
  *(v2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState) = 3;
  if (v3 == 3)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      sub_1000AE2E0();
    }
  }

  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v5 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
  v6 = (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton)) + 0x288))(0);
  (*((swift_isaMask & **(v2 + v5)) + 0x1F8))(v6);
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v21 = sub_10001B0D8;
  v22 = v8;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000B4DF4;
  v20 = &unk_1000F74E0;
  v9 = _Block_copy(&v17);
  v10 = v1;

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v21 = sub_10001B140;
  v22 = v11;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10001C4BC;
  v20 = &unk_1000F7530;
  v12 = _Block_copy(&v17);
  v13 = v10;

  [v7 animateWithDuration:v9 animations:v12 completion:0.2];
  _Block_release(v12);
  _Block_release(v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v21 = sub_10001B15C;
  v22 = v14;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000B4DF4;
  v20 = &unk_1000F7580;
  v15 = _Block_copy(&v17);
  v16 = v13;

  [v7 animateWithDuration:0 delay:v15 options:0 animations:0.17 completion:0.07];
  _Block_release(v15);
}

void sub_1000176F0()
{
  [v0 _removeAllAnimations:1];
  v1 = *&v0[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton];
  v2 = *(v1 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState);
  *(v1 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState) = 1;
  if (v2 <= 1 && v2)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      sub_1000AE2E0();
    }
  }

  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();

  sub_100017880();
}

void sub_100017880()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton];
  v2 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
  v3 = (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton)) + 0x288))(1);
  (*((swift_isaMask & **(v1 + v2)) + 0x1F8))(v3);
  v29 = v0;
  v4 = *&v0[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons];
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v13 = *(v4 + 8 * v6 + 32);
      }

      v14 = v13;
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v16 = OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol;
      v13[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol] = 1;
      v17 = &v13[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
      swift_beginAccess();
      v18 = *(v17 + 1);
      *v17 = 0;
      *(v17 + 1) = 0;
      if (v18)
      {
        ClimateButton.updateClimateConfiguration()();
      }

      ClimateButton.refreshColorConfig()();
      if (v14[v16])
      {
        v7 = *&v14[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor];
        v9 = *&v14[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8];
        v8 = &v14[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 16];
      }

      else
      {
        if (qword_100113ED0 != -1)
        {
          swift_once();
        }

        v8 = &qword_10011B098;
        v7 = qword_10011B088;
        v9 = qword_10011B090;
      }

      v10 = *v8;
      v11 = v7;
      v12 = v9;

      sub_1000A70A8(v11, v12, v10);

      ++v6;
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
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v29;
  v34 = sub_10001B204;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000B4DF4;
  v33 = &unk_1000F73F0;
  v21 = _Block_copy(&aBlock);
  v22 = v29;

  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v34 = sub_10001B24C;
  v35 = v23;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10001C4BC;
  v33 = &unk_1000F7440;
  v24 = _Block_copy(&aBlock);
  v25 = v22;

  [v19 animateWithDuration:v21 animations:v24 completion:0.2];
  _Block_release(v24);
  _Block_release(v21);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v34 = sub_10001B208;
  v35 = v26;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000B4DF4;
  v33 = &unk_1000F7490;
  v27 = _Block_copy(&aBlock);
  v28 = v25;

  [v19 animateWithDuration:0 delay:v27 options:0 animations:0.17 completion:0.07];
  _Block_release(v27);
}

void sub_100017D40(char *a1)
{
  v2 = sub_1000040E8(&qword_100115840);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v51 - v7;
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  v52 = objc_opt_self();
  v11 = [v52 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v14 = sub_1000AF438();
  swift_unknownObjectRelease();
  v15 = *&v14[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

  v16 = *&a1[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons];
  v17 = v16 >> 62;
  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_9:
    v25 = type metadata accessor for CAUVehicleLayoutKey();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    goto LABEL_10;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  v51 = v13;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = v8;
    v19 = v5;
    v20 = a1;
    v21 = v16 >> 62;
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v18 = v8;
    v19 = v5;
    v20 = a1;
    v21 = v16 >> 62;
    v22 = *(v16 + 32);
  }

  v23 = v22;
  sub_10000827C(0, &qword_100115830);
  CAFPositionedRequired.layoutKey.getter();

  v24 = type metadata accessor for CAUVehicleLayoutKey();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  v17 = v21;
  a1 = v20;
  v5 = v19;
  v8 = v18;
LABEL_10:
  v26 = sub_100037260(v10);

  sub_10001AEA0(v10);
  if (v26 <= 1u)
  {
    v27 = &stru_100102000;
    if (!v26)
    {

      v28 = v52;
      v29 = &stru_100102000;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = &stru_100102000;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v28 = v52;
  v29 = &stru_100102000;
  if (v30)
  {
LABEL_15:
    v31 = [v28 v29[121].offs];
    v32 = [v31 v27[121].name];

    if (v32)
    {
      swift_dynamicCastClassUnconditional();
      v33 = sub_1000AF438();
      swift_unknownObjectRelease();
      v5 = *&v33[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

      if (v17)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_18:
          if ((v16 & 0xC000000000000001) == 0)
          {
            if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v34 = *(v16 + 32);
LABEL_21:
              v35 = v34;
              sub_10000827C(0, &qword_100115830);
              CAFPositionedRequired.layoutKey.getter();

              v36 = 0;
LABEL_31:
              v43 = type metadata accessor for CAUVehicleLayoutKey();
              (*(*(v43 - 8) + 56))(v8, v36, 1, v43);
              sub_10003653C(v8);

              sub_10001AEA0(v8);
              [*&a1[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton] setAlpha:0.0];
              v44 = objc_opt_self();
              v45 = swift_allocObject();
              *(v45 + 16) = a1;
              v57 = sub_10001B224;
              v58 = v45;
              aBlock = _NSConcreteStackBlock;
              v54 = 1107296256;
              v55 = sub_1000B4DF4;
              v56 = &unk_1000F7350;
              v46 = _Block_copy(&aBlock);
              v47 = a1;

              v48 = swift_allocObject();
              *(v48 + 16) = 0;
              *(v48 + 24) = 0;
              v57 = sub_10001B248;
              v58 = v48;
              aBlock = _NSConcreteStackBlock;
              v54 = 1107296256;
              v55 = sub_10001C4BC;
              v56 = &unk_1000F73A0;
              v49 = _Block_copy(&aBlock);

              [v44 _animateUsingSpringWithDuration:0 delay:v46 options:v49 mass:0.45 stiffness:0.2 damping:1.0 initialVelocity:426.0 animations:41.0 completion:0.0];
              _Block_release(v49);
              _Block_release(v46);
              return;
            }

            __break(1u);
            goto LABEL_39;
          }

LABEL_37:
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_21;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v36 = 1;
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v37 = [v52 sharedApplication];
  v38 = [v37 v27[121].name];

  if (v38)
  {
    swift_dynamicCastClassUnconditional();
    v39 = sub_1000AF438();
    swift_unknownObjectRelease();
    a1 = *&v39[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

    if (v17)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_25;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      if ((v16 & 0xC000000000000001) != 0)
      {
LABEL_39:
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_28;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v16 + 32);
LABEL_28:
        v41 = v40;
        sub_10000827C(0, &qword_100115830);
        CAFPositionedRequired.layoutKey.getter();

        v42 = 0;
LABEL_34:
        v50 = type metadata accessor for CAUVehicleLayoutKey();
        (*(*(v50 - 8) + 56))(v5, v42, 1, v50);
        sub_100035F8C(v5);

        sub_10001AEA0(v5);
        return;
      }

      __break(1u);
      goto LABEL_41;
    }

    v42 = 1;
    goto LABEL_34;
  }

LABEL_43:
  __break(1u);
}

void sub_10001854C(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v49 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    os_log(_:dso:log:_:_:)();
    v6 = *(v2 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
    v42 = v2;
    if (v6 >> 62)
    {
      break;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_30;
    }

LABEL_4:
    v8 = 0;
    v47 = v6 & 0xFFFFFFFFFFFFFF8;
    v48 = v6 & 0xC000000000000001;
    v45 = v3 + 1;
    v46 = v6;
    while (1)
    {
      if (v48)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v47 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol;
      v9[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol] = 0;
      sub_10000827C(0, &qword_100115830);
      CAFPositionedRequired.layoutKey.getter();
      sub_100028A98();
      v14 = v13;
      (*v45)(v5, v49);
      v15 = CAFVent.symbolName(useRightFacingSeat:)(v14 & 1);
      v16 = &v10[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
      swift_beginAccess();
      countAndFlagsBits = v16->_countAndFlagsBits;
      object = v16->_object;
      *v16 = v15;
      if (!object || (v15._countAndFlagsBits == countAndFlagsBits ? (v19 = object == v15._object) : (v19 = 0), !v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
        ClimateButton.updateClimateConfiguration()();
      }

      ClimateButton.refreshColorConfig()();
      if (v10[v12])
      {
        v20 = *&v10[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor];
        v22 = *&v10[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8];
        v21 = &v10[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 16];
      }

      else
      {
        if (qword_100113ED0 != -1)
        {
          swift_once();
        }

        v21 = &qword_10011B098;
        v20 = qword_10011B088;
        v22 = qword_10011B090;
      }

      v3 = *v21;
      v23 = v20;
      v24 = v22;

      v2 = v10;
      sub_1000A70A8(v23, v24, v3);

      v25 = v10[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_lockButtonToDisabledState];
      v10[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_lockButtonToDisabledState] = 1;
      if ((v25 & 1) == 0)
      {
        sub_10007F828();
        v2 = v10[v12];
        v26 = [v10 imageView];
        if (v26)
        {
          v3 = v26;
          [v26 setHidden:v2];
        }
      }

      ++v8;
      v6 = v46;
      if (v11 == v7)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_30:
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  v29 = v42;
  *(v28 + 16) = v42;
  v54 = sub_10001B020;
  v55 = v28;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1000B4DF4;
  v53 = &unk_1000F7210;
  v30 = _Block_copy(&aBlock);
  v31 = v29;

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v54 = sub_10001B040;
  v55 = v32;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10001C4BC;
  v53 = &unk_1000F7260;
  v33 = _Block_copy(&aBlock);
  v34 = v31;

  [v27 animateWithDuration:v30 animations:v33 completion:0.1];
  _Block_release(v33);
  _Block_release(v30);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v54 = sub_10001B048;
  v55 = v35;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1000B4DF4;
  v53 = &unk_1000F72B0;
  v36 = _Block_copy(&aBlock);
  v37 = v34;

  v38 = swift_allocObject();
  v40 = v43;
  v39 = v44;
  *(v38 + 16) = v43;
  *(v38 + 24) = v39;
  v54 = sub_10001B050;
  v55 = v38;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10001C4BC;
  v53 = &unk_1000F7300;
  v41 = _Block_copy(&aBlock);
  sub_10001B054(v40);

  [v27 animateWithDuration:0 delay:v36 options:v41 animations:0.2 completion:0.03];
  _Block_release(v41);
  _Block_release(v36);
}

void sub_100018C44()
{
  v1 = v0;
  v2 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock - v3;
  v5 = sub_100014EA0();
  v6 = [v5 layer];

  v7 = [v6 animationKeys];
  if (v7)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);

    if (v9)
    {
      static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      return;
    }
  }

  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 delegate];

  if (!v11)
  {
LABEL_22:
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v12 = sub_1000AF438();
  swift_unknownObjectRelease();
  v13 = *&v12[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

  v14 = *&v1[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons];
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_16:
    v18 = type metadata accessor for CAUVehicleLayoutKey();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    goto LABEL_17;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(v14 + 32);
LABEL_14:
  v16 = v15;
  sub_10000827C(0, &qword_100115830);
  CAFPositionedRequired.layoutKey.getter();

  v17 = type metadata accessor for CAUVehicleLayoutKey();
  (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
LABEL_17:
  sub_10003653C(v4);

  sub_10001AEA0(v4);
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  [*&v1[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton] setAlpha:0.0];
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  v29 = sub_10001AFD4;
  v30 = v20;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000B4DF4;
  v28 = &unk_1000F70D0;
  v21 = _Block_copy(&aBlock);
  v22 = v1;

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v29 = sub_10001B248;
  v30 = v23;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10001C4BC;
  v28 = &unk_1000F7120;
  v24 = _Block_copy(&aBlock);

  [v19 _animateUsingSpringWithDuration:0 delay:v21 options:v24 mass:0.45 stiffness:0.0 damping:1.0 initialVelocity:426.0 animations:41.0 completion:0.0];
  _Block_release(v24);
  _Block_release(v21);
}

void sub_1000191C8(char a1, uint64_t a2)
{
  v32 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = *(a2 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
    if (v6 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      v29 = v6 & 0xFFFFFFFFFFFFFF8;
      v30 = v6 & 0xC000000000000001;
      v28 = (v4 + 8);
      while (1)
      {
        if (v30)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v29 + 16))
          {
            goto LABEL_24;
          }

          v15 = *(v6 + 8 * v8 + 32);
        }

        v16 = v15;
        v17 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v18 = v6;
        v19 = OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol;
        v15[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol] = 0;
        sub_10000827C(0, &qword_100115830);
        v20 = v31;
        CAFPositionedRequired.layoutKey.getter();
        sub_100028A98();
        v22 = v21;
        (*v28)(v20, v32);
        v23 = CAFVent.symbolName(useRightFacingSeat:)(v22 & 1);
        v24 = &v16[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
        swift_beginAccess();
        countAndFlagsBits = v24->_countAndFlagsBits;
        object = v24->_object;
        *v24 = v23;
        if (!object || (v23._countAndFlagsBits == countAndFlagsBits ? (v27 = object == v23._object) : (v27 = 0), !v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
          ClimateButton.updateClimateConfiguration()();
        }

        ClimateButton.refreshColorConfig()();
        if (v16[v19])
        {
          v9 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor];
          v11 = *&v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8];
          v10 = &v16[OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 16];
          v6 = v18;
        }

        else
        {
          v6 = v18;
          if (qword_100113ED0 != -1)
          {
            swift_once();
          }

          v10 = &qword_10011B098;
          v9 = qword_10011B088;
          v11 = qword_10011B090;
        }

        v12 = *v10;
        v13 = v9;
        v14 = v11;

        v4 = v16;
        sub_1000A70A8(v13, v14, v12);

        ++v8;
        if (v17 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }
  }
}

uint64_t sub_1000194D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_autoModeButton);
    v3 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
    v4 = (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton)) + 0x288))(0);
    (*((swift_isaMask & **(v2 + v3)) + 0x1F8))(v4);
    v5 = *(v2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState);
    *(v2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState) = 2;
    if (v5 == 2)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        return sub_1000AE2E0();
      }
    }
  }

  return result;
}

void sub_10001967C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10001AFF8;
  *(v4 + 24) = v3;
  v7[4] = sub_10001B010;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000B40C4;
  v7[3] = &unk_1000F7198;
  v5 = _Block_copy(v7);
  a1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_100014EA0();
    [v6 setAlpha:1.0];
  }
}

void sub_100019804(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = v4[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_lockButtonToDisabledState];
      v4[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_lockButtonToDisabledState] = 0;
      if (v7)
      {
        sub_10007F828();
        v8 = v5[OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol];
        v9 = [v5 imageView];
        if (v9)
        {
          v10 = v9;
          [v9 setHidden:v8];
        }
      }

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_100019934()
{
  ClimateButton.refreshColorConfig()();
  if (*(v0 + OBJC_IVAR____TtCC7Climate25ClimateGroupedVentsButton25VentButtonWithoutAutomode_forceButtonToHideSymbol) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor);
    v3 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8);
    v2 = (v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 16);
  }

  else
  {
    if (qword_100113ED0 != -1)
    {
      swift_once();
    }

    v2 = &qword_10011B098;
    v1 = qword_10011B088;
    v3 = qword_10011B090;
  }

  v4 = *v2;
  v6 = v1;
  v5 = v3;

  sub_1000A70A8(v6, v5, v4);
}