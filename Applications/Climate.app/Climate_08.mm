unint64_t sub_1000AF018()
{
  result = qword_100117C08;
  if (!qword_100117C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C08);
  }

  return result;
}

unint64_t sub_1000AF06C(uint64_t a1)
{
  result = sub_1000AF018();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000AF094(void *a1)
{
  _StringGuts.grow(_:)(73);
  v2._object = 0x80000001000DEC90;
  v2._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v2);
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3D6B6361727420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  sub_1000040E8(&qword_100117C38);
  sub_1000AF274();
  v9._countAndFlagsBits = Optional<A>.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x736572676F727020;
  v10._object = 0xEA00000000003D73;
  String.append(_:)(v10);
  v11._countAndFlagsBits = Optional<A>.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3D73657461747320;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  sub_10007D298();
  v13._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

unint64_t sub_1000AF274()
{
  result = qword_100117C40;
  if (!qword_100117C40)
  {
    sub_10000827C(255, &qword_1001167A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C40);
  }

  return result;
}

uint64_t sub_1000AF2DC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  sub_10000827C(0, &qword_100115110);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    sub_10000827C(0, &qword_1001167A8);
    v14 = a6;
    v15 = a2;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!a7)
  {
    return 0;
  }

  sub_10000827C(0, &qword_1001167A8);
  v17 = a7;
  v18 = a3;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_10:

  return sub_10007D75C(a4, a8);
}

id sub_1000AF438()
{
  v1 = OBJC_IVAR____TtC7Climate18ClimateAppDelegate____lazy_storage___coordinator;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate18ClimateAppDelegate____lazy_storage___coordinator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Climate18ClimateAppDelegate____lazy_storage___coordinator);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ClimateCoordinator()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000AF514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AF57C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_recirculation);
  v2 = [v1 on];
  v3 = [v1 autoMode];
  v4 = [v1 onRestricted];
  v5 = [v1 onInvalid];
  v6 = [v1 onDisabled];
  if (v2)
  {
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        v7 = 3;
        if (v5)
        {
          v7 = 11;
        }

        if (v6)
        {
          return v7 | 0x10;
        }

        return v7;
      }

      v7 = 7;
      v8 = 15;
    }

    else
    {
      if ((v4 & 1) == 0)
      {
        v7 = 9;
        if (!v5)
        {
          v7 = 1;
        }

        if (v6)
        {
          return v7 | 0x10;
        }

        return v7;
      }

      v7 = 5;
      v8 = 13;
    }
  }

  else if (v3)
  {
    if (v4)
    {
      v7 = 6;
      v8 = 14;
    }

    else
    {
      v7 = 2;
      v8 = 10;
    }
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      v7 = 8;
      if (!v5)
      {
        v7 = 0;
      }

      if (v6)
      {
        return v7 | 0x10;
      }

      return v7;
    }

    v7 = 4;
    v8 = 12;
  }

  if (v5)
  {
    v7 = v8;
  }

  if (v6)
  {
    return v7 | 0x10;
  }

  return v7;
}

void sub_1000AF6B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setOn:{objc_msgSend(a3, "on") ^ 1}];
    sub_1000AF884();
  }
}

id sub_1000AF72C()
{
  if (*(v0 + OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_style) == 4)
  {
    if (qword_100113ED0 != -1)
    {
      swift_once();
    }

    v1 = qword_10011B090;
    if (qword_100113EF0 != -1)
    {
      swift_once();
    }

    v2 = qword_10011B0E8;

    v1;
  }

  else
  {
    if (qword_100113EE0 != -1)
    {
      swift_once();
    }

    v3 = qword_10011B0B8;
    v4 = qword_10011B0C0;
    if (![objc_opt_self() systemMintColor])
    {
      v4;
    }

    v2 = v3;
  }

  return v2;
}

void sub_1000AF884()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_autoModeGlyph];
  if (v1)
  {
    v2 = v1;
    [v2 setHidden:(sub_1000AF57C() & 0x1A) != 2];
  }

  sub_1000C10C4();
  [v0 setEnabled:sub_1000AF57C() < 8];
  sub_1000AF9A0();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_1000AF9A0()
{
  if ((sub_1000AF57C() & 0x1A) == 2)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
    v2 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
    v3 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
    v4 = objc_opt_self();
    v5 = v1;
    v6 = v2;

    v7 = [v4 systemGreenColor];
    if (v7)
    {
      v8 = v7;

      v6 = v8;
    }
  }

  else
  {
    if ((sub_1000AF57C() & 0x1B) == 1)
    {
      v9 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
    }

    else
    {
      v9 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
    }

    v10 = v0 + *v9;
    v11 = *(v10 + 8);
    v3 = *(v10 + 16);
    v5 = *v10;
    v6 = v11;
  }

  sub_10007A4CC(v5, v6, v3);

  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 delegate];

  if (v13)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v14 = sub_1000AF438();
    swift_unknownObjectRelease();
    v15 = *&v14[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v16 = *&v15[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    if (v16 == 2)
    {
      if (qword_100113EE0 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B0B8;
      v18 = qword_10011B0C0;
      v19 = qword_10011B0C8;
      v20 = [objc_opt_self() labelColor];
      if (!v20)
      {
        v20 = v18;
      }

      v24 = v17;

      v21 = v24;
      v22 = v20;
      v23 = v19;
    }

    else
    {
      v21 = sub_1000AF72C();
      v20 = v22;
      v24 = v21;
    }

    sub_1000A70A8(v21, v22, v23);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000AFC4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_autoModeGlyph);
}

id sub_1000AFC8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateRecirculationServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateRecirculationServiceButton()
{
  result = qword_100117D10;
  if (!qword_100117D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AFEBC(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_autoModeGlyph;
  *&v2[v5] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_recirculation] = a1;
  v2[OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_style] = a2;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for ClimateRecirculationServiceButton();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v49, "init");
  [v6 registerObserver:v7];
  v8 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = 0xD00000000000001BLL;
  *(v8 + 1) = 0x80000001000DED80;
  if (!v10 || (v9 == 0xD00000000000001BLL ? (v11 = 0x80000001000DED80 == v10) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  if (a2 == 1)
  {
    v21 = objc_opt_self();
    v22 = v7;
    v23 = [v21 configurationWithPointSize:6 weight:14.0];
    v24 = ClimateButton.imageSymbolConfiguration.getter();
    v25 = *&v22[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
    *&v22[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v23;
    v26 = v23;

    v27 = ClimateButton.imageSymbolConfiguration.getter();
    sub_100052F1C();
    LOBYTE(v25) = static NSObject.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v28 = sub_1000AF72C();
    v30 = v29;
    sub_1000A70A8(v28, v29, v31);

    if (qword_100113ED8 != -1)
    {
      swift_once();
    }

    v32 = qword_10011B0A8;
    v33 = qword_10011B0B0;
    v34 = qword_10011B0A0;
    v35 = v32;

    sub_1000A70B4(v34, v35, v33);
  }

  else
  {
    if (a2 == 3)
    {
      v12 = v7;
      v13 = sub_1000AF72C();
      v15 = v14;
      sub_1000A70A8(v13, v14, v16);

      if (qword_100113ED8 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B0A8;
      v18 = qword_10011B0B0;
      v19 = qword_10011B0A0;
      v20 = v17;

      sub_1000A70B4(v19, v20, v18);
    }

    else
    {
      v36 = v7;
      v19 = sub_1000AF72C();
      v20 = v37;
      sub_1000A70A8(v19, v37, v38);
    }

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v6;
    v41 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_action];
    swift_beginAccess();
    v42 = *v41;
    *v41 = sub_1000B04EC;
    v41[1] = v40;
    v43 = v6;

    sub_100003380(v42);
  }

  sub_1000AF884();
  v44 = [objc_opt_self() sharedApplication];
  v45 = [v44 delegate];

  if (v45)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v46 = sub_1000AF438();
    swift_unknownObjectRelease();
    v47 = *&v46[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v48 = v7;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000B038C(char a1)
{
  v2 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v3 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v2, "Recirculation did update ON: %{BOOL,public}d", v4, 8u);
  }

  sub_1000AF884();
}

uint64_t sub_1000B0474()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B04AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B04F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature);
  v2 = [v1 targetTemperatureRestricted];
  v3 = [v1 targetTemperatureInvalid];
  v4 = [v1 targetTemperatureDisabled];
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

void sub_1000B0630()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000B0F6C();
  }
}

void sub_1000B0684()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style])
  {
    v4 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView;
    v5 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView];
    if (v5 || (type metadata accessor for ClimateTransparentView(), v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], objc_msgSend(v6, "setTranslatesAutoresizingMaskIntoConstraints:", 0), objc_msgSend(v0, "insertSubview:atIndex:", v6, 0), v7 = *&v0[v4], *&v0[v4] = v6, v7, (v5 = *&v0[v4]) != 0))
    {
      v45[1] = v3;
      v8 = v5;
      v9 = [v8 constraints];
      v45[0] = sub_10000827C(0, &qword_1001149C0);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v8 removeConstraint:v13];

          ++v12;
          if (v15 == i)
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
      v16 = v0;

      sub_10000827C(0, &qword_100115110);
      sub_10000827C(0, &qword_100114AB0);
      static Locale.current.getter();
      v17 = NSDimension.init(forLocale:)();
      v18 = [objc_opt_self() fahrenheit];
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        if (v16[OBJC_IVAR____TtC7Climate16ClimateIndicator_circleDiameter + 8])
        {
LABEL_22:

          return;
        }

        v20 = v16;
        v21 = *&v16[OBJC_IVAR____TtC7Climate16ClimateIndicator_circleDiameter];
        v22 = [v8 layer];
        [v22 setCornerRadius:v21 * 0.5];

        v23 = objc_opt_self();
        sub_1000040E8(&unk_100114770);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1000D5D90;
        v25 = [v8 widthAnchor];
        v26 = [v25 constraintEqualToConstant:v21];

        *(v24 + 32) = v26;
        v27 = [v8 heightAnchor];
        v28 = [v27 constraintEqualToConstant:v21];

        *(v24 + 40) = v28;
        v29 = [v8 centerXAnchor];
        v30 = [v20 centerXAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];

        *(v24 + 48) = v31;
        v32 = [v8 centerYAnchor];
        v33 = [v20 centerYAnchor];
      }

      else
      {
        v34 = [v8 layer];
        [v34 setCornerRadius:6.0];

        v23 = objc_opt_self();
        sub_1000040E8(&unk_100114770);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1000D5D90;
        v35 = [v8 widthAnchor];
        v36 = [v35 constraintEqualToConstant:40.0];

        *(v24 + 32) = v36;
        v37 = [v8 heightAnchor];
        v38 = [v37 constraintEqualToConstant:30.0];

        *(v24 + 40) = v38;
        v39 = [v8 centerXAnchor];
        v40 = [v16 centerXAnchor];
        v41 = [v39 constraintEqualToAnchor:v40];

        *(v24 + 48) = v41;
        v32 = [v8 centerYAnchor];
        v33 = [v16 centerYAnchor];
      }

      v42 = v33;
      v43 = [v32 constraintEqualToAnchor:v42];

      *(v24 + 56) = v43;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v23 activateConstraints:isa];

      goto LABEL_22;
    }
  }
}

uint64_t sub_1000B0C94(uint64_t a1)
{
  v3 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1000040E8(&unk_100114790);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_1000302F4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100008904(v5, &unk_1001153F0);
  }

  (*(v7 + 32))(v12, v5, v6);
  v14 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
  swift_beginAccess();
  v15 = *(v7 + 16);
  v20 = v1;
  v15(v10, v1 + v14, v6);
  sub_10000A8E8(&unk_100115410, &unk_100114790);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  if ((v16 & 1) == 0)
  {
    v15(v10, v12, v6);
    v18 = v20;
    swift_beginAccess();
    (*(v7 + 24))(v18 + v14, v10, v6);
    swift_endAccess();
    sub_1000B16F0();
    sub_1000B1C54();
    v17(v10, v6);
  }

  return (v17)(v12, v6);
}

void sub_1000B0F6C()
{
  sub_1000B16F0();
  sub_1000B1584();
  sub_1000C10C4();
  v1 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature];
  [v1 targetTemperatureRestricted];
  [v0 setEnabled:{((objc_msgSend(v1, "targetTemperatureDisabled") | objc_msgSend(v1, "targetTemperatureInvalid")) & 1) == 0}];
  sub_1000B1C54();
  sub_1000B1014();

  ClimateButton.createEdgeInsets()();
}

void sub_1000B1014()
{
  v1 = v0;
  ClimateButton.refreshColorConfig()();
  if (v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style] != 1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow];
  if (!v2)
  {
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow];
  if (!v3)
  {
    return;
  }

  v4 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature];
  v5 = v2;
  v40 = v3;
  v6 = [v4 targetTemperatureRestricted];
  v7 = [v4 targetTemperatureInvalid];
  v8 = [v4 targetTemperatureDisabled];
  if (v6)
  {
    if (v7)
    {
      v9 = 12;
    }

    else
    {
      v9 = 4;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v9 |= 0x10u;
    goto LABEL_15;
  }

  if (v7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_15:
  v10 = objc_opt_self();
  v11 = [v10 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
    __break(1u);
    goto LABEL_38;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v13 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v41 != 1)
  {
    v21 = [v10 sharedApplication];
    v22 = [v21 delegate];

    if (v22)
    {
      swift_dynamicCastClassUnconditional();
      v23 = sub_1000AF438();
      swift_unknownObjectRelease();
      v24 = *&v23[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

      v25 = *&v24[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
      v26 = objc_opt_self();
      v27 = v26;
      v28 = &selRef_systemRedColor;
      if (v25 == 2)
      {
        v28 = &selRef_labelColor;
        v29 = &selRef_labelColor;
      }

      else
      {
        v29 = &selRef_systemBlueColor;
      }

      v30 = [v26 *v28];
      v31 = [v27 *v29];
      v17 = v5;
      if ((v9 & 0x10) != 0)
      {
        v32 = objc_opt_self();
        v33 = [v32 systemWhiteColor];
        [v5 setTintColor:v33];

        v34 = [v32 systemWhiteColor];
        v20 = v40;
        [v40 setTintColor:v34];
      }

      else
      {
        v20 = v40;
        if ((v9 & 4) == 0)
        {
          [v17 setTintColor:v30];
          [v40 setTintColor:v31];
LABEL_28:
          [v1 setEnabled:1];

          goto LABEL_29;
        }

        v35 = sub_10007CDE8();
        [v17 setTintColor:v35];

        v34 = sub_10007CDE8();
        [v40 setTintColor:v34];
      }

      goto LABEL_28;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  v16 = [v15 colorWithAlphaComponent:0.3];

  v17 = v5;
  [v5 setTintColor:v16];

  v18 = [v14 labelColor];
  v19 = [v18 colorWithAlphaComponent:0.3];

  v20 = v40;
  [v40 setTintColor:v19];

  [v1 setEnabled:0];
LABEL_29:
  v36 = [v17 layer];
  if ((v9 & 0x10) != 0)
  {
    v37 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  }

  else
  {
    v37 = 0;
  }

  [v36 setCompositingFilter:v37];

  v38 = [v20 layer];
  if ((v9 & 0x10) != 0)
  {
    v39 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  }

  else
  {
    v39 = 0;
  }

  [v38 setCompositingFilter:v39];
}

void sub_1000B1584()
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
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView);
    if (v5)
    {
      v6 = objc_opt_self();
      v7 = v5;
      v8 = &selRef_clearColor;
      if ((v10 & 2) != 0)
      {
        v8 = &selRef_tertiarySystemFillColor;
      }

      v9 = [v6 *v8];
      [v7 setBackgroundColor:v9];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B16F0()
{
  v1 = v0;
  v49 = sub_1000040E8(&unk_100114790);
  v2 = *(v49 - 8);
  v3 = __chkstk_darwin(v49);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v49 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style);
  v9 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature);
  [v9 targetTemperatureRestricted];
  v10 = [v9 targetTemperatureInvalid];
  v11 = [v9 targetTemperatureDisabled];
  if (v8 != 1)
  {
    if ((v10 | v11))
    {
      v23 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
      swift_beginAccess();
      v24 = v23[1];
      *v23 = 0;
      v23[1] = 0;
      if (v24)
      {
        ClimateButton.updateClimateConfiguration()();
      }

      v25 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
      swift_beginAccess();
      v26 = *v25;
      v27 = v25[1];
      *v25 = 0xD000000000000012;
      v25[1] = 0x80000001000DB780;
      if (!v27)
      {
        goto LABEL_39;
      }

      if (v26 == 0xD000000000000012 && 0x80000001000DB780 == v27)
      {
      }

      goto LABEL_38;
    }

    v37 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v38 = v37[1];
    *v37 = 0;
    v37[1] = 0;
    if (v38)
    {
      ClimateButton.updateClimateConfiguration()();
    }

LABEL_35:
    v40 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
    swift_beginAccess();
    v41 = v49;
    (*(v2 + 16))(v5, v1 + v40, v49);
    v42 = [v9 targetTemperatureRange];
    v43 = Measurement<>.readableString(in:)();
    v45 = v44;

    (*(v2 + 8))(v5, v41);
    v46 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    *v46 = v43;
    v46[1] = v45;
    if (!v48)
    {
      goto LABEL_39;
    }

    if (v43 == v47 && v48 == v45)
    {
    }

LABEL_38:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
    }

LABEL_39:
    ClimateButton.updateClimateConfiguration()();
  }

  if (v10)
  {
    v12 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v13 = v12[1];
    *v12 = 0;
    v12[1] = 0;
    if (v13)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v14 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
    swift_beginAccess();
    v15 = v49;
    (*(v2 + 16))(v7, v1 + v14, v49);
    v16 = Measurement<>.invalidString.getter();
    v18 = v17;
    (*(v2 + 8))(v7, v15);
    v19 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = v16;
    v19[1] = v18;
    if (!v21)
    {
      goto LABEL_39;
    }

    if (v16 == v20 && v21 == v18)
    {
    }

    goto LABEL_38;
  }

  [v9 targetTemperatureRestricted];
  [v9 targetTemperatureInvalid];
  v29 = [v9 targetTemperatureDisabled];
  v30 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
  if (!v29)
  {
    swift_beginAccess();
    v39 = v30[1];
    *v30 = 0;
    v30[1] = 0;
    if (v39)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    goto LABEL_35;
  }

  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  *v30 = xmmword_1000D7420;
  if (!v32 || (v31 == 0x6C6C69662E6E6166 ? (v33 = v32 == 0xE800000000000000) : (v33 = 0), !v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v34 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
  result = swift_beginAccess();
  v36 = v34[1];
  *v34 = 0;
  v34[1] = 0;
  if (v36)
  {
    goto LABEL_39;
  }

  return result;
}

void sub_1000B1C54()
{
  v1 = sub_1000040E8(&unk_100114790);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v65 - v7;
  __chkstk_darwin(v6);
  v10 = &v65 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature);
  v12 = [v11 targetTemperatureRestricted];
  v13 = [v11 targetTemperatureInvalid];
  v14 = [v11 targetTemperatureDisabled];
  if (v12)
  {
    goto LABEL_5;
  }

  v15 = 8;
  if (!v13)
  {
    v15 = 0;
  }

  if (v14)
  {
LABEL_5:
    v15 = 1;
  }

  v16 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style);
  if (v16 == 1)
  {
    v17 = objc_opt_self();
    v18 = [v17 clearColor];
    v19 = [v17 labelColor];
    v20 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
    v21 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
    v22 = v20;

    v23 = [v17 labelColor];
    sub_1000040E8(&unk_100117DF0);
    inited = swift_initStackObject();
    *(inited + 32) = 8;
    v25 = inited + 32;
    *(inited + 16) = xmmword_1000D5970;
    *(inited + 40) = v18;
    *(inited + 48) = v19;
    *(inited + 56) = &_swiftEmptyDictionarySingleton;
    v26 = sub_10004F0C8(inited);
    swift_setDeallocating();
    v27 = v18;
    v28 = v19;
    sub_100008904(v25, &unk_100114760);

    sub_10007A4CC(v21, v23, v26);

    return;
  }

  if (!v15)
  {
    v39 = [v11 currentTemperature];
    if (v39)
    {
      v40 = v39;
      v70 = sub_10000827C(0, &qword_100114AB0);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v2 + 32))(v10, v8, v1);
      v69 = v0;
      v41 = v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig;
      v42 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
      v43 = *(v41 + 8);
      v66 = v41;
      v44 = *(v41 + 16);
      v45 = v2;
      v46 = objc_opt_self();
      v47 = v42;
      v48 = v43;
      v68 = v44;

      v49 = [v46 clearColor];
      v50 = v16 == 5 || v16 == 0;
      v51 = &selRef_labelColor;
      if (!v50)
      {
        v51 = &selRef_systemWhiteColor;
      }

      v52 = *v51;
      v67 = v46;
      v53 = [v46 v52];
      if (!v49)
      {
        v49 = v47;
      }

      v54 = [v11 targetTemperature];
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000A8E8(&qword_1001147A0, &unk_100114790);
      LOBYTE(v54) = dispatch thunk of static Comparable.< infix(_:_:)();
      v55 = *(v45 + 8);
      v55(v5, v1);
      if (v54)
      {
        v65 = v55;
        v70 = v53;
        v56 = *(v66 + 8);
        v57 = *(v66 + 16);
        v58 = *v66;
        v59 = v56;

        v60 = v67;
        v61 = [v67 clearColor];
        v53 = [v60 systemBlueColor];
        if (!v61)
        {
          v61 = v58;
        }

        if (v53)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v62 = [v11 targetTemperature];
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v62) = static Measurement.< infix<A, B>(_:_:)();
        v55(v5, v1);
        if ((v62 & 1) == 0)
        {
          v57 = v68;
          goto LABEL_39;
        }

        v65 = v55;
        v70 = v53;
        v63 = *(v66 + 8);
        v57 = *(v66 + 16);
        v58 = *v66;
        v59 = v63;

        v64 = v67;
        v61 = [v67 clearColor];
        v53 = [v64 systemRedColor];
        if (!v61)
        {
          v61 = v58;
        }

        if (v53)
        {
LABEL_32:

          v49 = v61;
          v55 = v65;
LABEL_39:
          sub_10007A4CC(v49, v53, v57);

          v55(v10, v1);
          return;
        }
      }

      v59 = v59;
      v53 = v59;
      goto LABEL_32;
    }
  }

  v29 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v30 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v31 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v32 = objc_opt_self();
  v33 = v29;
  v34 = v30;

  v70 = [v32 clearColor];
  v35 = v16 == 5 || v16 == 0;
  v36 = &selRef_labelColor;
  if (!v35)
  {
    v36 = &selRef_systemWhiteColor;
  }

  v37 = [v32 *v36];
  if (!v70)
  {
    v70 = v33;
  }

  sub_10007A4CC(v70, v37, v31);

  v38 = v70;
}

void sub_1000B2398(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ClimateTemperatureIndicator();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v4 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v3))
  {
    v5 = v1;
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    v7 = [v5 traitCollection];
    v8 = [v7 userInterfaceStyle];

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, v3, "Temperature indicator updated with user interface style: %{public}ld", v6, 0xCu);
  }

  sub_1000B1C54();
  sub_1000B1014();
}

void sub_1000B254C()
{
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:12.0];
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed:v3];

  v38 = v1;
  if (v5)
  {
    v6 = [v5 imageWithConfiguration:v1];
  }

  else
  {
    v6 = 0;
  }

  [v2 setImage:v6];

  [v0 addSubview:v2];
  v7 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D58A0;
  v9 = [v2 topAnchor];
  v10 = [v0 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-4.0];

  *(v8 + 32) = v11;
  v12 = [v2 centerXAnchor];

  v13 = [v0 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v8 + 40) = v14;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = v7;
  [v7 activateConstraints:isa];

  v16 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow];
  *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow] = v2;
  v17 = v2;

  v18 = objc_opt_self();
  v19 = [v18 systemRedColor];
  v35 = v17;
  [v17 setTintColor:v19];

  v20 = [objc_allocWithZone(UIImageView) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v4 systemImageNamed:v21];

  if (v22)
  {
    v23 = v38;
    v24 = [v22 imageWithConfiguration:v38];
  }

  else
  {
    v24 = 0;
    v23 = v38;
  }

  [v20 setImage:v24];

  [v0 addSubview:v20];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000D58A0;
  v26 = [v20 bottomAnchor];
  v27 = [v0 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:4.0];

  *(v25 + 32) = v28;
  v29 = [v20 centerXAnchor];

  v30 = [v0 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v25 + 40) = v31;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:v32];

  v33 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow];
  *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow] = v20;
  v34 = v20;

  v37 = [v18 systemBlueColor];
  [v34 setTintColor:v37];
}

void sub_1000B2AC4()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_delegate);

  v1 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
  v2 = sub_1000040E8(&unk_100114790);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView);
}

id sub_1000B2B98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateTemperatureIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateTemperatureIndicator()
{
  result = qword_100117DC8;
  if (!qword_100117DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2CFC()
{
  sub_10002F450();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B2DC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v56[-v7];
  v9 = sub_1000040E8(&unk_100114790);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v56[-v15];
  v17 = [a1 receivedAllValues];
  v18 = static os_log_type_t.debug.getter();
  if (v17)
  {
    v63 = v8;
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v19 = qword_10011B1C0;
    v20 = *(v10 + 16);
    v64 = v10 + 16;
    v20(v16, a2, v9);
    v62 = v19;
    v21 = os_log_type_enabled(v19, v18);
    v65 = v10;
    if (v21)
    {
      v22 = a1;
      v60 = a2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v24 = 136446978;
      sub_10000A8E8(&unk_100117DE0, &unk_100114790);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v20;
      v26 = v25;
      v61 = v3;
      v28 = v27;
      v57 = v18;
      v29 = *(v10 + 8);
      v58 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29(v16, v9);
      v30 = sub_10000835C(v26, v28, v66);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2082;
      v31 = [v23 targetTemperature];
      sub_10000827C(0, &qword_100114AB0);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = [v23 targetTemperatureRange];
      v33 = Measurement<>.readableString(in:)();
      v35 = v34;

      v29(v12, v9);
      v36 = sub_10000835C(v33, v35, v66);

      *(v24 + 14) = v36;
      *(v24 + 22) = 1024;
      LODWORD(v36) = [v23 targetTemperatureDisabled];

      *(v24 + 24) = v36;
      *(v24 + 28) = 2082;
      v37 = v23;
      a2 = v60;
      v38 = [v37 vehicleLayoutKey];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      v3 = v61;
      v43 = sub_10000835C(v42, v41, v66);
      v20 = v59;

      *(v24 + 30) = v43;
      _os_log_impl(&_mh_execute_header, v62, v57, "Temperature indicator updated to: %{public}s, display: %{public}s, isDisabled: %{BOOL}d, for zone: %{public}s", v24, 0x26u);
      swift_arrayDestroy();
    }

    else
    {
      v29 = *(v10 + 8);
      v29(v16, v9);
    }

    v53 = v63;
    sub_1000B0F6C();
    v54 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
    swift_beginAccess();
    v20(v12, v3 + v54, v9);
    sub_10000A8E8(&unk_100115410, &unk_100114790);
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29(v12, v9);
    if ((v55 & 1) == 0)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100065BF4();
        swift_unknownObjectRelease();
      }
    }

    v20(v53, a2, v9);
    (*(v65 + 56))(v53, 0, 1, v9);
    sub_1000B0C94(v53);
    return sub_100008904(v53, &unk_1001153F0);
  }

  else
  {
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v44 = qword_10011B1C0;
    result = os_log_type_enabled(qword_10011B1C0, v18);
    if (result)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v66[0] = v47;
      *v46 = 136446210;
      v48 = [a1 vehicleLayoutKey];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = sub_10000835C(v49, v51, v66);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v18, "Waiting all values for temperature, zone: %{public}s", v46, 0xCu);
      sub_100006B9C(v47);
    }
  }

  return result;
}

void sub_1000B37D0(void *a1, char a2, void *a3, char a4, unsigned __int8 a5)
{
  v60 = a3;
  v10 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v10 - 8);
  v54 = &v51[-v11];
  v12 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v51[-v13];
  v15 = sub_1000040E8(&qword_1001151A0);
  v55 = *(v15 - 8);
  v56 = v15;
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_1000040E8(&qword_1001151A8);
  v58 = *(v18 - 8);
  v59 = v18;
  __chkstk_darwin(v18);
  v57 = &v51[-v19];
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow) = 0;
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow) = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = sub_100027E1C(&_swiftEmptyArrayStorage);
  }

  else
  {
    v20 = &_swiftEmptySetSingleton;
  }

  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_cancellables) = v20;
  v21 = [objc_opt_self() celsius];
  v53 = sub_10000827C(0, &qword_100114AB0);
  Measurement.init(value:unit:)();
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView) = 0;
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style) = a5;
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature) = a1;
  v22 = a1;
  v23 = sub_10001414C(a2 & (a5 != 0), v60, a4 & 1);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  sub_1000B0684();
  [v22 registerObserver:v25];

  v60 = v22;
  v27 = [v22 car];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 dimensionManager];

    [v29 registerObserver:v25];
  }

  if (a5 == 1)
  {
    sub_1000B254C();
  }

  else if (a5 == 5)
  {
    v30 = [v25 titleLabel];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() monospacedDigitSystemFontOfSize:13.0 weight:UIFontWeightSemibold];
      [v31 setFont:v32];
    }
  }

  v33 = objc_opt_self();
  v34 = [v33 sharedApplication];
  v35 = [v34 delegate];

  if (v35)
  {
    v52 = a5;
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v36 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1000040E8(&unk_100117E00);
    Published.projectedValue.getter();
    swift_endAccess();

    v37 = [objc_opt_self() mainRunLoop];
    v61 = v37;
    v38 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    sub_10000827C(0, &unk_1001166E0);
    sub_10000A8E8(&unk_1001151E0, &qword_1001151A0);
    sub_10000A7D8();
    v39 = v56;
    v40 = v57;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v14, &unk_1001166C0);

    (*(v55 + 8))(v17, v39);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&unk_100117E10, &qword_1001151A8);
    v41 = v59;
    Publisher<>.sink(receiveValue:)();

    (*(v58 + 8))(v40, v41);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if (v52 != 1)
    {
LABEL_14:
      v47 = [v60 targetTemperature];
      v48 = v54;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = sub_1000040E8(&unk_100114790);
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_1000B0C94(v48);
      sub_100008904(v48, &unk_1001153F0);
      v50 = [v25 traitCollection];
      [v25 traitCollectionDidChange:v50];

      return;
    }

    v42 = [v33 sharedApplication];
    v43 = [v42 delegate];

    if (v43)
    {
      swift_dynamicCastClassUnconditional();
      v44 = sub_1000AF438();
      swift_unknownObjectRelease();
      v45 = *&v44[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

      v46 = v25;
      sub_1000AD348();

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000B4084()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B40EC(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_10007DD80(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_1000B41CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1000B6834;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = &unk_1000F96F8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_1001178B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040E8(&unk_1001159C0);
  sub_1000B67A0(&qword_1001178C0, &unk_1001159C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);

  return sub_1000B4ABC();
}

uint64_t sub_1000B44DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B66F4;
  *(v3 + 24) = v2;
  v6[4] = sub_100035EE8;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000B40C4;
  v6[3] = &unk_1000F96A8;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B4638()
{
  v34 = sub_1000040E8(&qword_100117E98);
  __chkstk_darwin(v34);
  v1 = &v32 - v0;
  v35 = sub_1000040E8(&unk_100117EA0);
  __chkstk_darwin(v35);
  v3 = &v32 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    static os_log_type_t.debug.getter();
    if (qword_100113F08 != -1)
    {
LABEL_27:
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v5[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated] = 0;
    v6 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
    swift_beginAccess();
    v33 = v6;
    v7 = *&v5[v6];
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v13 = v12;
LABEL_11:
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = v14 | (v13 << 6);
        v16 = *(v7 + 48);
        v17 = type metadata accessor for UUID();
        (*(*(v17 - 8) + 16))(v3, v16 + *(*(v17 - 8) + 72) * v15, v17);
        v18 = *(*(v7 + 56) + 8 * v15);
        *(v3 + *(v35 + 48)) = v18;
        [v18 unregisterObserver:v5];
        sub_100008904(v3, &unk_100117EA0);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    *&v5[v33] = &_swiftEmptyDictionarySingleton;

    v19 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingAccessories;
    swift_beginAccess();
    v20 = *&v5[v19];
    v21 = 1 << *(v20 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v20 + 64);
    v24 = (v21 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v25 = 0;
    if (v23)
    {
      while (1)
      {
        v26 = v25;
LABEL_21:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v3 = v27 | (v26 << 6);
        v28 = *(v20 + 48);
        v29 = type metadata accessor for UUID();
        (*(*(v29 - 8) + 16))(v1, v28 + *(*(v29 - 8) + 72) * v3, v29);
        v30 = *(*(v20 + 56) + 8 * v3);
        *&v1[*(v34 + 48)] = v30;
        [v30 unregisterObserver:v5];
        sub_100008904(v1, &qword_100117E98);
        if (!v23)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_26;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v20 + 64 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_21;
      }
    }

    *&v5[v19] = &_swiftEmptyDictionarySingleton;

    v5[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad] = 0;
    v5[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_mainViewControllerDidLoad] = 0;
    v31 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
    swift_beginAccess();
    *&v5[v31] = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000B4ABC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000B66EC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = &unk_1000F9658;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_1001178B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040E8(&unk_1001159C0);
  sub_1000B67A0(&qword_1001178C0, &unk_1001159C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_1000B4D98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000B4E38();
    sub_1000B5060();
    sub_1000B5318();
  }
}

uint64_t sub_1000B4DF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1000B4E38()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16) || (result = sub_10007E128(0), (v5 & 1) == 0) || (*(*(v3 + 56) + result) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated) == 1)
    {
      if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad) == 1)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = *(v1 + v2);
        *(v1 + v2) = 0x8000000000000000;
        sub_10004BF7C(1, 0, isUniquelyReferenced_nonNull_native);
        *(v1 + v2) = v7;
        swift_endAccess();
        CAFSignpostEmit_InstantOn();
        static os_log_type_t.debug.getter();
        if (qword_100113F08 == -1)
        {
          return os_log(_:dso:log:_:_:)();
        }
      }

      else
      {
        static os_log_type_t.debug.getter();
        if (qword_100113F08 == -1)
        {
          return os_log(_:dso:log:_:_:)();
        }
      }
    }

    else
    {
      static os_log_type_t.debug.getter();
      if (qword_100113F08 == -1)
      {
        return os_log(_:dso:log:_:_:)();
      }
    }

    swift_once();
    return os_log(_:dso:log:_:_:)();
  }

  return result;
}

unint64_t sub_1000B5060()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16) || (result = sub_10007E128(1u), (v5 & 1) == 0) || (*(*(v3 + 56) + result) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated) == 1)
    {
      v6 = *(v1 + v2);
      if (*(v6 + 16) && (v7 = sub_10007E128(0), (v8 & 1) != 0) && *(*(v6 + 56) + v7) == 1)
      {
        if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_mainViewControllerDidLoad) == 1)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v10 = *(v1 + v2);
          *(v1 + v2) = 0x8000000000000000;
          sub_10004BF7C(1, 1u, isUniquelyReferenced_nonNull_native);
          *(v1 + v2) = v10;
          swift_endAccess();
          CAFSignpostEmit_Rendered();
          static os_log_type_t.debug.getter();
          if (qword_100113F08 == -1)
          {
            return os_log(_:dso:log:_:_:)();
          }
        }

        else
        {
          static os_log_type_t.debug.getter();
          if (qword_100113F08 == -1)
          {
            return os_log(_:dso:log:_:_:)();
          }
        }
      }

      else
      {
        static os_log_type_t.debug.getter();
        if (qword_100113F08 == -1)
        {
          return os_log(_:dso:log:_:_:)();
        }
      }
    }

    else
    {
      static os_log_type_t.debug.getter();
      if (qword_100113F08 == -1)
      {
        return os_log(_:dso:log:_:_:)();
      }
    }

    swift_once();
    return os_log(_:dso:log:_:_:)();
  }

  return result;
}

unint64_t sub_1000B5318()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (*(v3 + 16))
  {
    result = sub_10007E128(2u);
    if (v5 & 1) != 0 && (*(*(v3 + 56) + result))
    {
      return result;
    }
  }

  if (v1[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated] != 1)
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F08 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

    goto LABEL_26;
  }

  v6 = *&v1[v2];
  if (!*(v6 + 16) || (v7 = sub_10007E128(1u), (v8 & 1) == 0) || *(*(v6 + 56) + v7) != 1)
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F08 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

LABEL_26:
    swift_once();
    return os_log(_:dso:log:_:_:)();
  }

  v9 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
  swift_beginAccess();
  if (*(*&v1[v9] + 16))
  {
    v10 = static os_log_type_t.debug.getter();
    if (qword_100113F08 != -1)
    {
      swift_once();
    }

    v11 = qword_10011B1C8;
    result = os_log_type_enabled(qword_10011B1C8, v10);
    if (result)
    {
      v12 = v1;
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      *(v13 + 4) = *(*&v1[v9] + 16);

      v14 = "observingServices.count=%{public}ld";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v11, v10, v14, v13, 0xCu);
    }

    return result;
  }

  v15 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingAccessories;
  swift_beginAccess();
  if (!*(*&v1[v15] + 16))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v1[v2];
    *&v1[v2] = 0x8000000000000000;
    sub_10004BF7C(1, 2u, isUniquelyReferenced_nonNull_native);
    *&v1[v2] = v18;
    swift_endAccess();
    CAFSignpostEmit_Finalized();
    static os_log_type_t.debug.getter();
    if (qword_100113F08 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

    goto LABEL_26;
  }

  v10 = static os_log_type_t.debug.getter();
  if (qword_100113F08 != -1)
  {
    swift_once();
  }

  v11 = qword_10011B1C8;
  result = os_log_type_enabled(qword_10011B1C8, v10);
  if (result)
  {
    v16 = v1;
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = *(*&v1[v15] + 16);

    v14 = "observingAccessories.count=%{public}ld";
    goto LABEL_23;
  }

  return result;
}

id sub_1000B570C()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingAccessories] = &_swiftEmptyDictionarySingleton;
  v10 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue;
  v6 = sub_1000B670C();
  v9[1] = &unk_1000D96A0;
  v9[2] = v6;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_100117EB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040E8(&qword_100117EB8);
  sub_1000B67A0(qword_100117EC0, &qword_100117EB8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_car] = 0;
  v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad] = 0;
  v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_mainViewControllerDidLoad] = 0;
  v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated] = 0;
  v7 = type metadata accessor for ClimateSignpostManager();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_1000B5A0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSignpostManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B5AE0(uint64_t a1, unint64_t a2)
{
  v47 = type metadata accessor for UUID();
  v40 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2 >> 62)
    {
LABEL_35:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
    if (v7)
    {
      v9 = 0;
      v10 = a2 & 0xC000000000000001;
      v11 = a2 & 0xFFFFFFFFFFFFFF8;
      v39 = v40 + 16;
      v41 = (v40 + 8);
      v42 = a2 & 0xFFFFFFFFFFFFFF8;
      v45 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
      v46 = a2;
      v43 = a2 & 0xC000000000000001;
      v44 = v7;
      while (1)
      {
        if (v10)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_32;
          }

          v14 = *(a2 + 8 * v9 + 32);
        }

        v15 = v14;
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (([v14 receivedAllValues] & 1) == 0)
        {
          break;
        }

LABEL_8:

        ++v9;
        if (v16 == v7)
        {
          goto LABEL_25;
        }
      }

      v17 = [v15 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v18 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v4;
      v4 = isUniquelyReferenced_nonNull_native;
      v48 = *(v6 + v8);
      a2 = v48;
      v21 = v6;
      *(v6 + v8) = 0x8000000000000000;
      v22 = v20;
      v6 = sub_10007DD80(v20);
      v24 = *(a2 + 16);
      v25 = (v23 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_33;
      }

      v27 = v23;
      if (*(a2 + 24) >= v26)
      {
        if ((v4 & 1) == 0)
        {
          sub_10004DBEC();
        }

        v4 = v22;
        a2 = v48;
        if ((v27 & 1) == 0)
        {
LABEL_22:
          *(a2 + 8 * (v6 >> 6) + 64) |= 1 << v6;
          (*(v40 + 16))(*(a2 + 48) + *(v40 + 72) * v6, v4, v47);
          *(*(a2 + 56) + 8 * v6) = v18;
          v30 = *(a2 + 16);
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_34;
          }

          *(a2 + 16) = v32;
          goto LABEL_7;
        }
      }

      else
      {
        sub_1000495C0(v26, v4);
        v4 = v22;
        v28 = sub_10007DD80(v22);
        if ((v27 & 1) != (v29 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v6 = v28;
        a2 = v48;
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v12 = *(a2 + 56);
      v13 = *(v12 + 8 * v6);
      *(v12 + 8 * v6) = v18;

LABEL_7:
      (*v41)(v4, v47);
      v8 = v45;
      v6 = v21;
      *(v21 + v45) = a2;
      swift_endAccess();
      [v18 registerObserver:v21];
      a2 = v46;
      v10 = v43;
      v7 = v44;
      v11 = v42;
      goto LABEL_8;
    }

LABEL_25:
    v33 = static os_log_type_t.debug.getter();
    if (qword_100113F08 != -1)
    {
      swift_once();
    }

    v34 = qword_10011B1C8;
    if (os_log_type_enabled(qword_10011B1C8, v33))
    {
      v35 = v8;
      v36 = v6;
      v37 = v6;
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      swift_beginAccess();
      *(v38 + 4) = *(*(v37 + v35) + 16);

      _os_log_impl(&_mh_execute_header, v34, v33, "observingServices.count=%{public}ld", v38, 0xCu);
      v6 = v37;
    }
  }
}

void sub_1000B5FC0(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(unint64_t, uint64_t), void (*a5)(void), const char *a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [a2 unregisterObserver:Strong];
    v17 = [a2 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *a3;
    swift_beginAccess();
    v19 = sub_1000B40EC(v14, a4, a5);
    (*(v12 + 8))(v14, v11);
    swift_endAccess();

    v20 = static os_log_type_t.debug.getter();
    if (qword_100113F08 != -1)
    {
      swift_once();
    }

    v21 = qword_10011B1C8;
    if (os_log_type_enabled(qword_10011B1C8, v20))
    {
      v22 = v16;
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = *(*&v16[v18] + 16);

      _os_log_impl(&_mh_execute_header, v21, v20, a6, v23, 0xCu);
    }
  }
}

unint64_t sub_1000B62A0()
{
  result = qword_100117E88;
  if (!qword_100117E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E88);
  }

  return result;
}

uint64_t sub_1000B62F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v7 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_1001178B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040E8(&unk_1001159C0);
  sub_1000B67A0(&qword_1001178C0, &unk_1001159C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);

  return sub_1000B4ABC();
}

uint64_t sub_1000B65F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6680(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000B670C()
{
  result = qword_1001159B0;
  if (!qword_1001159B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001159B0);
  }

  return result;
}

uint64_t sub_1000B6758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B67A0(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000B67F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B6864()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000B694C()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ClimateProgressCircle();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_1000B6A08();
}

void sub_1000B69C0(void *a1)
{
  v1 = a1;
  sub_1000B694C();
}

void sub_1000B6A08()
{
  v1 = [v0 layer];
  [v1 setSublayers:0];

  sub_1000B6A68();

  sub_1000B6CBC();
}

void sub_1000B6A68()
{
  v1 = sub_1000B6C64();
  v3 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v1 startAngle:v2 endAngle:*(v0 + *((swift_isaMask & *v0) + 0x98)) clockwise:{0.0, 6.28318531}];
  v4 = *(v0 + *((swift_isaMask & *v0) + 0x78));
  v5 = [v3 CGPath];
  [v4 setPath:v5];

  v6 = *(v0 + *((swift_isaMask & *v0) + 0x68));
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v4 setStrokeColor:v7];

  v8 = [objc_opt_self() clearColor];
  v9 = [v8 CGColor];

  [v4 setFillColor:v9];
  v10 = [v0 layer];
  [v10 addSublayer:v4];
}

CGFloat sub_1000B6C64()
{
  [v0 bounds];
  v1 = CGRectGetWidth(v3) * 0.5;
  [v0 bounds];
  CGRectGetHeight(v4);
  return v1;
}

void sub_1000B6CBC()
{
  v1 = sub_1000B6C64();
  v3 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v1 startAngle:v2 endAngle:*(v0 + *((swift_isaMask & *v0) + 0x98)) clockwise:{-1.57079633, 4.71238898}];
  v4 = *(v0 + *((swift_isaMask & *v0) + 0x80));
  [v4 setLineCap:kCALineCapRound];
  v5 = [v3 CGPath];
  [v4 setPath:v5];

  [v4 setShadowOpacity:0.0];
  v6 = [objc_opt_self() clearColor];
  v7 = [v6 CGColor];

  [v4 setFillColor:v7];
  v8 = *(v0 + *((swift_isaMask & *v0) + 0x60));
  if (v8)
  {
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v4 setStrokeColor:v9];

  v10 = [v0 layer];
  [v10 addSublayer:v4];
}

void sub_1000B6EF8(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ClimateProgressCircle();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = *(v1 + *((swift_isaMask & *v1) + 0x80));
  v4 = *(v1 + *((swift_isaMask & *v1) + 0x60));
  if (v4)
  {
    v5 = [v4 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v3 setStrokeColor:v5];

  v6 = *(v1 + *((swift_isaMask & *v1) + 0x78));
  v7 = *(v1 + *((swift_isaMask & *v1) + 0x68));
  if (v7)
  {
    v8 = [v7 CGColor];
  }

  else
  {
    v8 = 0;
  }

  [v6 setStrokeColor:v8];
}

void sub_1000B7068(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1000B6EF8(a3);
}

id sub_1000B70D4(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ClimateProgressCircle();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_100005AA0();
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_1000B71D4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_1000B70D4(a5, a2, a3);

  return v11;
}

id sub_1000B7290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateProgressCircle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B7300(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  v4 = *((v3 & v2) + 0x50);
  v7 = *(*(v4 - 8) + 8);
  v7(&a1[*((swift_isaMask & *a1) + 0x70)], v4);

  v7(&a1[*((swift_isaMask & *a1) + 0x88)], v4);
  v5 = &a1[*((swift_isaMask & *a1) + 0x90)];

  return (v7)(v5, v4);
}

void sub_1000B74BC()
{
  *(v0 + *((swift_isaMask & *v0) + 0x60)) = 0;
  *(v0 + *((swift_isaMask & *v0) + 0x68)) = 0;
  v1 = *((swift_isaMask & *v0) + 0x78);
  *(v0 + v1) = [objc_allocWithZone(CAShapeLayer) init];
  v2 = *((swift_isaMask & *v0) + 0x80);
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1000B761C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000C4DDC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000040E8(&qword_1001179F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000B7738(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000BAE3C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000B7830(unint64_t a1)
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
  sub_1000BAE3C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000BBD58(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1000B7A50()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_style) != 2 || (v2 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis, result = swift_beginAccess(), *(v1 + v2)))
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = *((swift_isaMask & *v5) + 0x118);
    v7 = v5;
    v8 = v6();

    v9 = *(v1 + v4);
    v10 = *((swift_isaMask & *v9) + 0x288);
    v11 = v9;
    if ((v8 & 0x1A) == 2)
    {
      v10(1);

      v12 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton);
      v13 = [v12 titleLabel];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
        [v14 setFont:v15];
      }

      v16 = &v12[OBJC_IVAR____TtC7Climate13ClimateButton_title];
      swift_beginAccess();
      v17 = *v16;
      v18 = *(v16 + 1);
      *v16 = xmmword_1000D7430;
      if (v18)
      {
        v19 = v17 == 1330926913 && v18 == 0xE400000000000000;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }
      }
    }

    else
    {
      v10(0);

      v20 = (*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton) + OBJC_IVAR____TtC7Climate13ClimateButton_title);
      result = swift_beginAccess();
      v21 = v20[1];
      *v20 = 0;
      v20[1] = 0;
      if (!v21)
      {
        return result;
      }
    }

    ClimateButton.updateClimateConfiguration()();
  }

  return result;
}

id sub_1000B7CEC(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

id sub_1000B7D10(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void sub_1000B7D34()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  v2 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton) isFocused];
  v3 = objc_opt_self();
  if (v2)
  {
    v4 = &selRef__carSystemFocusColor;
  }

  else
  {
    v4 = &selRef_clearColor;
  }

  v5 = [v3 *v4];
  [v1 setBackgroundColor:v5];

  v6 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  v7 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton) isFocused];
  v8 = objc_opt_self();
  if (v7)
  {
    v9 = &selRef__carSystemFocusColor;
  }

  else
  {
    v9 = &selRef_clearColor;
  }

  v10 = [v8 *v9];
  [v6 setBackgroundColor:v10];
}

void sub_1000B7E5C()
{
  v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  v1 = swift_beginAccess();
  v2 = *(v0 + v4);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_isZeroUIReference);
  LOBYTE(v4) = (*((swift_isaMask & *v0) + 0x3A0))(v1);
  if (v2 != 1)
  {
    if (v3)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v30);
      v6 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) maximum];
      goto LABEL_6;
    }

    v17 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
    v18 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
    v19 = [v18 unsignedCharValue];

    LODWORD(v4) = v4 - v19;
    if ((v4 & 0xFFFFFF00) == 0)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v32);
      v20 = [*(v0 + v17) maximum];
      [v20 floatValue];
      v15 = v21;

      v16 = [*(v0 + v17) minimum];
      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
    return;
  }

  if (v3)
  {
    [v0 bounds];
    Width = CGRectGetHeight(v29);
    v6 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) maximum];
LABEL_6:
    v7 = v6;
    [v7 floatValue];
    v9 = v8;

    goto LABEL_12;
  }

  v10 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
  v11 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
  v12 = [v11 unsignedCharValue];

  LODWORD(v4) = v4 - v12;
  if ((v4 & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v0 bounds];
  Width = CGRectGetHeight(v31);
  v13 = [*(v0 + v10) maximum];
  [v13 floatValue];
  v15 = v14;

  v16 = [*(v0 + v10) minimum];
LABEL_11:
  v22 = v16;
  v23 = [v22 unsignedCharValue];

  v9 = v15 - v23;
LABEL_12:
  v24 = Width / v9 * v4;
  v25 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint;
  v26 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint);
  if (v26)
  {
    [v26 constant];
    if (v24 == v27)
    {
      return;
    }

    v28 = *(v0 + v25);
  }

  else
  {
    if (v24 == 0.0)
    {
      return;
    }

    v28 = 0;
  }

  [v28 setConstant:v24];
  [v0 layoutIfNeeded];
}

void sub_1000B81D4(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue);
  *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue) = a1;
  if (v2 != a1 && !(*((swift_isaMask & *v1) + 0x2E8))())
  {
    if (*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled) == 1)
    {

      sub_1000B7E5C();
    }

    else
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v7[4] = sub_1000BDDA8;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000B4DF4;
      v7[3] = &unk_1000F98F0;
      v5 = _Block_copy(v7);
      v6 = v1;

      [v3 animateWithDuration:2 delay:v5 options:0 animations:0.25 completion:0.0];
      _Block_release(v5);
    }
  }
}

void sub_1000B839C(void *a1, double a2)
{
  v3 = *(v2 + *a1);
  *(v2 + *a1) = a2;
  if (v3 != a2)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    if (*(v2 + v4) == 1)
    {
      ClimateStepper.updateConstraintsAndArrows()();
    }
  }

  sub_1000B8F48();
}

uint64_t sub_1000B8430()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *((swift_isaMask & *Strong) + 0x138);
  v2 = Strong;
  v3 = v1();

  return v3;
}

void sub_1000B84DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + *a3);
    v7 = &v6[OBJC_IVAR____TtC7Climate13ClimateButton_action];
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      sub_10001B054(v8);
      v9 = v6;
      v8();

      sub_100003380(v8);
      v5 = v9;
    }
  }
}

id sub_1000B85CC()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for ClimateContinuousStepper();
  v2 = objc_msgSendSuper2(&v24, "layoutSubviews");
  if (!(*((swift_isaMask & *v0) + 0x2E8))(v2))
  {
    sub_1000B7E5C();
  }

  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  v5 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  ClimateButton.imageSystemName.setter(v7, v6);
  v8 = ClimateButton.imageSymbolConfiguration.getter();
  v9 = ClimateButton.imageSymbolConfiguration.getter();
  v10 = *&v3[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v3[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v8;
  v11 = v8;

  v12 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  [v4 imageEdgeInsets];
  [v3 setImageEdgeInsets:?];
  v13 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  v14 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  v15 = &v14[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];

  ClimateButton.imageSystemName.setter(v17, v16);
  v18 = ClimateButton.imageSymbolConfiguration.getter();
  v19 = ClimateButton.imageSymbolConfiguration.getter();
  v20 = *&v13[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v13[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v18;
  v21 = v18;

  v22 = ClimateButton.imageSymbolConfiguration.getter();
  LOBYTE(v20) = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  [v14 imageEdgeInsets];
  return [v13 setImageEdgeInsets:?];
}

void sub_1000B88AC()
{
  v1 = v0;
  type metadata accessor for ClimateMaterialView();
  v2 = [v0 traitCollection];
  v3 = [swift_getObjCClassFromMetadata() materialViewWithVisualStyleFromRecipe:4 category:2 style:4 options:0 initialWeighting:v2 compatibleWithTraitCollection:1.0];

  if (v3)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    if (*&v0[v4] == 1)
    {
      v5 = &selRef_heightAnchor;
    }

    else
    {
      v5 = &selRef_widthAnchor;
    }

    v6 = [v3 *v5];
    v7 = [v6 constraintEqualToConstant:0.0];

    v8 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint;
    v9 = *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint];
    *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint] = v7;

    v10 = v3;
    [v1 addSubview:v10];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setClipsToBounds:1];
    [v10 setUserInteractionEnabled:1];
    if (*&v1[v4] == 1)
    {
      v11 = &selRef_trailingAnchor;
    }

    else
    {
      v11 = &selRef_topAnchor;
    }

    sub_1000040E8(&unk_100114770);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5BB0;
    v13 = [v10 leadingAnchor];
    v14 = [v1 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(inited + 32) = v15;
    v16 = [v10 *v11];

    v17 = [v1 *v11];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(inited + 40) = v18;
    v19 = [v10 bottomAnchor];

    v20 = [v1 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(inited + 48) = v21;
    sub_1000B7738(inited, sub_1000BB878);
    v22 = *&v1[v8];
    if (v22)
    {
      v23 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v24 = objc_opt_self();
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 activateConstraints:isa];

    v26 = *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView];
    *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView] = v3;
  }
}

void sub_1000B8CB0()
{
  sub_1000040E8(&unk_100114770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5BB0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  *(inited + 40) = v3;
  v31 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton);
  *(inited + 48) = v4;
  v29 = objc_opt_self();
  sub_10000827C(0, &qword_100115110);
  v30 = inited;
  v27 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView;
  v28 = inited & 0xC000000000000001;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = 0;
  do
  {
    if (v28)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v30 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = *(v31 + v27);
    if (v11)
    {
      [v11 addSubview:v10];
    }

    v12 = &v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
    v13 = *&v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
    v14 = *&v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
    v15 = *&v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
    v16 = v10;
    v17 = v13;
    v18 = v14;

    v19 = [v29 systemBlackColor];
    if (!v19)
    {
      v19 = v18;
    }

    v21 = *v12;
    v20 = *(v12 + 1);
    v22 = *(v12 + 2);
    *v12 = v17;
    *(v12 + 1) = v19;
    *(v12 + 2) = v15;
    v23 = v17;

    v24 = v19;
    if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
    {

LABEL_3:
      ClimateButton.refreshColorConfig()();
      goto LABEL_4;
    }

    sub_10007DB08(v15, v22);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_4:
    ++v8;
  }

  while (v8 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1000B8F48();
}

void sub_1000B8F48()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskConstraints;
  swift_beginAccess();
  sub_10000827C(0, &qword_1001149C0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints:isa];

  *(v1 + v3) = _swiftEmptyArrayStorage;

  v5 = ClimateStepper.constraintsForStepButtons(_:direction:)(*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton), 1);
  swift_beginAccess();
  sub_1000B7738(v5, sub_1000BB878);
  swift_endAccess();
  v6 = ClimateStepper.constraintsForStepButtons(_:direction:)(*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton), 0);
  swift_beginAccess();
  sub_1000B7738(v6, sub_1000BB878);
  swift_endAccess();
  v7 = ClimateStepper.constraintsForStepButtons(_:direction:)(*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton), 2);
  swift_beginAccess();
  sub_1000B7738(v7, sub_1000BB878);
  swift_endAccess();

  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:v8];
}

uint64_t sub_1000B9140(char a1)
{
  sub_1000040E8(&unk_100117FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D97F0;
  v4 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  *(inited + 32) = v4;
  v5 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  *(inited + 40) = v5;
  v6 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(inited + 48) = v6;
  v7 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(inited + 56) = v7;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  sub_1000BD6A0(a1 & 1, inited);
  swift_setDeallocating();
  sub_1000040E8(&qword_100118240);
  return swift_arrayDestroy();
}

void sub_1000B9238(void *a1)
{
  v2 = v1;
  if (((*((swift_isaMask & *v1) + 0x138))() & 0x18) != 0)
  {
    return;
  }

  if ((*((swift_isaMask & *v1) + 0x2E8))() != 2)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    v5 = *(v1 + v4);
    [a1 translationInView:v2];
    if (v5 == 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if ([a1 state] == 3)
    {
      v9 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone;
      if (*(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) == 1)
      {
        v10 = (*((swift_isaMask & *v2) + 0x3A8))(0);
        (*((swift_isaMask & *v2) + 0x430))(v10);
        *(v2 + v9) = 0;
      }

      sub_1000B9C54(v8 < 0.0);
      v11 = (*((swift_isaMask & *v2) + 0x3A0))();
      v12 = *(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_range);
      CAFRange.minimumValue<A>()();

      if (v72 == v11)
      {
        v13 = (*((swift_isaMask & *v2) + 0x368))();
      }

      else
      {
        v13 = 0;
      }

      sub_1000B9140(v13 & 1);
      v39 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = *(v39 + 1);
        ObjectType = swift_getObjectType();
        (*(v40 + 8))(0, ObjectType, v40);
        swift_unknownObjectRelease();
      }

      *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = 0;
      (*((swift_isaMask & *v2) + 0x2F0))(0);
      v42 = [objc_opt_self() sharedApplication];
      v43 = [v42 delegate];

      if (v43)
      {
        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        v44 = sub_1000AF438();
        swift_unknownObjectRelease();
        v45 = *&v44[OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker];

        sub_1000BC684(v2, v8 < 0.0, v45);

        return;
      }

      goto LABEL_53;
    }

    (*((swift_isaMask & *v2) + 0x2F0))(1);
    v14 = objc_opt_self();
    v15 = [v14 sharedApplication];
    v16 = [v15 delegate];

    if (!v16)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    v70 = v14;
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v17 = sub_1000AF438();
    swift_unknownObjectRelease();
    v18 = *&v17[OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker];

    sub_1000BBEF4(v2, v18);

    v19 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 1);
      v21 = swift_getObjectType();
      (*(v20 + 8))(1, v21, v20);
      swift_unknownObjectRelease();
    }

    sub_1000040E8(&unk_100117FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D97F0;
    v23 = *(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
    *(inited + 32) = v23;
    v24 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
    *(inited + 40) = v24;
    v25 = *(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
    *(inited + 48) = v25;
    v26 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
    *(inited + 56) = v26;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000BD6A0(1, inited);
    swift_setDeallocating();
    sub_1000040E8(&qword_100118240);
    swift_arrayDestroy();
    v31 = *(v2 + v4);
    v32 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue);
    [v2 bounds];
    if (v31 == 1)
    {
      v37 = v32 - v8;
      Height = CGRectGetHeight(*&v33);
    }

    else
    {
      v37 = v8 - v32;
      Height = CGRectGetWidth(*&v33);
    }

    v46 = Height;
    v47 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint;
    v48 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint);
    if (v48)
    {
      [v48 constant];
      v37 = v37 + v49;
      v50 = v37;
    }

    else
    {
      v50 = v37 + 0.0;
    }

    if (v37 >= v46)
    {
      v50 = v46;
    }

    if (v50 > 0.0)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0.0;
    }

    v52 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_isZeroUIReference);
    v53 = v51 / v46;
    v54 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
    v55 = [*(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) maximum];
    v56 = [v55 unsignedCharValue];

    if (v52 == 1)
    {
      v57 = v53 * v56;
    }

    else
    {
      v58 = [*(v2 + v54) minimum];
      v59 = [v58 unsignedCharValue];

      if (((v56 - v59) & 0xFFFFFF00) != 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v60 = v53 * (v56 - v59);
      v61 = [*(v2 + v54) minimum];
      v62 = [v61 unsignedCharValue];

      v57 = v60 + v62;
    }

    v63 = round(v57);
    if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v63 > -1.0)
    {
      if (v63 < 256.0)
      {
        v64 = v63;
        if (v64 != (*((swift_isaMask & *v2) + 0x3A0))())
        {
          if (v64)
          {
            *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 0;
            v65 = (*((swift_isaMask & *v2) + 0x3A8))(v64);
            (*((swift_isaMask & *v2) + 0x430))(v65);
          }

          else
          {
            *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 1;
          }
        }

        [*(v2 + v47) setConstant:v51];
        [v2 layoutIfNeeded];
        v66 = [v71 sharedApplication];
        v67 = [v66 delegate];

        if (v67)
        {
          swift_dynamicCastClassUnconditional();
          v68 = sub_1000AF438();
          swift_unknownObjectRelease();
          v69 = *&v68[OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker];

          sub_1000BC2B4(v2, v69, v53);

          *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = v8;
          return;
        }

        goto LABEL_54;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
}

void sub_1000B9C54(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [v3 constant];
  if (v5 <= 0.0)
  {
    goto LABEL_8;
  }

  v6 = (*((swift_isaMask & *v1) + 0x3A0))(v4);
  v7 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
  v8 = [*(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
  v9 = [v8 unsignedCharValue];

  v10 = [*(v1 + v7) step];
  v11 = [v10 unsignedCharValue];

  if (((v9 + v11) >> 8))
  {
    __break(1u);
  }

  else
  {
    if (v6 >= (v9 + v11) || (a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = [*(v1 + v7) minimum];
    v13 = [v12 unsignedCharValue];

    v14 = [*(v1 + v7) step];
    v15 = [v14 unsignedCharValue];

    if ((((v13 + v15) >> 8) & 1) == 0)
    {
      v16 = (*((swift_isaMask & *v1) + 0x3A8))();
      (*((swift_isaMask & *v1) + 0x430))(v16);
LABEL_8:
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v1;
      v21[4] = sub_1000BDEB4;
      v21[5] = v18;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 1107296256;
      v21[2] = sub_1000B4DF4;
      v21[3] = &unk_1000F98A0;
      v19 = _Block_copy(v21);
      v20 = v1;

      [v17 animateWithDuration:v19 animations:0.25];
      _Block_release(v19);
      return;
    }
  }

  __break(1u);
}

void sub_1000B9F88()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16);
  v3 = *((swift_isaMask & *v0) + 0x138);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig);
  v5 = v1;

  v7 = v3(v6);
  v8 = sub_10007E858(v7, v4, v2);

  [v0 setBackgroundColor:v8];

  sub_1000BA068();
}

void sub_1000BA068()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *((swift_isaMask & *v3) + 0x118);
  v5 = v3;
  v6 = v4();

  v8 = v6 & 0x1A;
  if (*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_style) == 2 && (v9 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis, v7 = swift_beginAccess(), !*(v1 + v9)))
  {
    v20 = *(v1 + v2);
    v21 = v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig;
    v22 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig);
    v23 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8);
    v24 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16);
    v25 = objc_opt_self();
    v26 = v20;
    v27 = v22;
    v28 = v23;

    v29 = &selRef_systemWhiteColor;
    if (v8 == 2)
    {
      v29 = &selRef_systemGreenColor;
    }

    v30 = [v25 *v29];
    if (v30)
    {
      v31 = v30;

      v28 = v31;
    }

    sub_10007A4CC(v27, v28, v24);

    v32 = *v21;
    v33 = *(v21 + 1);
    v34 = *(v21 + 2);
    v35 = objc_opt_self();
    v14 = v32;
    v36 = v33;

    v37 = &selRef_systemBlackColor;
    if (v8 == 2)
    {
      v37 = &selRef_systemGreenColor;
    }

    v38 = [v35 *v37];
    if (v38)
    {
      v39 = v38;

      v36 = v39;
    }

    sub_10007A4CC(v14, v36, v34);
  }

  else if (v8 == 2)
  {
    v10 = (*((swift_isaMask & *v1) + 0x138))(v7);
    v11 = [objc_opt_self() systemGreenColor];
    if ((v10 & 4) != 0)
    {
      v12 = sub_10007CDE8();

      v11 = v12;
    }

    v13 = *(v1 + v2);
    v14 = v11;
    [v13 setTitleColor:v14 forState:0];
    [*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton) setTitleColor:v14 forState:0];
  }

  else
  {
    v15 = *(v1 + v2);
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemWhiteColor];
    [v17 setTitleColor:v18 forState:0];

    v19 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton);
    v14 = [v16 systemBlackColor];
    [v19 setTitleColor:v14 forState:0];
  }
}

uint64_t sub_1000BA404()
{
  v1 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_trackerUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t type metadata accessor for ClimateContinuousStepper()
{
  result = qword_100117F88;
  if (!qword_100117F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA628()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000BA720()
{
  (*((swift_isaMask & *v0) + 0x2F0))(2);
  sub_1000040E8(&unk_100117FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D97F0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(inited + 56) = v5;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_1000BD6A0(1, inited);
  swift_setDeallocating();
  sub_1000040E8(&qword_100118240);
  return swift_arrayDestroy();
}

id sub_1000BA89C(double a1)
{
  result = (*((swift_isaMask & *v1) + 0x2E8))();
  if (result == 2)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    v5 = *(v1 + v4);
    [v1 bounds];
    if (v5 == 1)
    {
      Height = CGRectGetHeight(*&v6);
    }

    else
    {
      Height = CGRectGetWidth(*&v6);
    }

    [*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint) setConstant:Height * a1];
    return [v1 layoutIfNeeded];
  }

  return result;
}

uint64_t sub_1000BA9E0(char a1)
{
  v2 = v1;
  (*((swift_isaMask & *v1) + 0x2F0))(0);
  sub_1000B9C54(a1);
  v4 = (*((swift_isaMask & *v1) + 0x3A0))();
  v5 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_range);
  CAFRange.minimumValue<A>()();

  v6 = 0;
  if (v11 == v4)
  {
    v6 = (*((swift_isaMask & *v2) + 0x368))(0);
  }

  sub_1000B9140(v6 & 1);
  v7 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(0, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000BAD78(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000BADE8()
{
  result = qword_100117FC0;
  if (!qword_100117FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FC0);
  }

  return result;
}

uint64_t sub_1000BAE3C(uint64_t a1)
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

void sub_1000BAEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1000BB2E8(v10, v7, a3, v5);

      return;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_1000BB05C(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_1000BB05C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v37 = type metadata accessor for UUID();
  v6 = __chkstk_darwin(v37);
  v35 = a3;
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v5 + 16;
  v33 = v5;
  v30 = 0;
  v31 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v18 = v36;
    v19 = v37;
LABEL_11:
    v22 = v35;
    (*(v33 + 16))(v18, v35[6] + *(v33 + 72) * v17, v19, v6);
    sub_10001C1A4(v22[7] + 8 * v17, v39);
    v23 = v38;
    v24 = v34(v18, v39);
    v38 = v23;
    if (v23)
    {
      sub_100008904(v39, &unk_100117FE0);
      (*v31)(v18, v19);
      return;
    }

    v25 = v24;
    sub_100008904(v39, &unk_100117FE0);
    (*v31)(v18, v19);
    if (v25)
    {
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1000BB378(v29, v28, v30, v35);
        return;
      }
    }
  }

  v20 = v8;
  v18 = v36;
  v19 = v37;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1000BB2E8(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1000BB05C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1000BB378(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = v37 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000040E8(&qword_100115E90);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v37[2] = v43 + 16;
  v38 = result;
  v17 = result + 64;
  v39 = a1;
  v37[0] = a4;
  v37[1] = v43 + 32;
  while (v15)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v15));
    v41 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v25 = v43;
    v24 = v44;
    v42 = *(v43 + 72);
    v26 = v40;
    (*(v43 + 16))(v40, v23 + v42 * v22, v44);
    sub_10001C1A4(a4[7] + 8 * v22, v46);
    v27 = *(v25 + 32);
    v10 = v18;
    v27(v18, v26, v24);
    sub_1000BDCE0(v46, v45);
    v14 = v38;
    sub_1000BDD50();
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v14 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a1 = v39;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v17 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a1 = v39;
LABEL_26:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v27((*(v14 + 48) + v31 * v42), v18, v44);
    result = sub_1000BDCE0(v45, *(v14 + 56) + 8 * v31);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v15 = v41;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t (*sub_1000BB6E8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_1000BDEB0;
  }

  __break(1u);
  return result;
}

void (*sub_1000BB768(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000BB7E8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000BB7F0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1000BB870;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BB878(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000BDDCC(&unk_100117FF8, &qword_100117FF0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100117FF0);
            v9 = sub_1000BB6E8(v13, i, a3);
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
        sub_10000827C(0, &qword_1001149C0);
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

uint64_t sub_1000BBA18(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000BDDCC(&unk_100118010, &qword_100118008);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100118008);
            v9 = sub_1000BB768(v13, i, a3);
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
        sub_10000827C(0, &qword_1001167B0);
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

uint64_t sub_1000BBBB8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000BDDCC(&qword_100116080, &qword_100118040);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100118040);
            v9 = sub_1000BB6E8(v13, i, a3);
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
        sub_10000827C(0, &qword_100116078);
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

uint64_t sub_1000BBD58(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000BDDCC(&qword_100118028, &qword_100118020);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100118020);
            v9 = sub_1000BB7F0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1000040E8(&unk_1001163C0);
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

uint64_t sub_1000BBEF4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 service];
  v10 = [v9 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v11 = *(a2 + 16);
  if (!*(v11 + 16))
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = sub_10007DD80(v8);
  if ((v13 & 1) == 0)
  {

    return (*(v5 + 8))(v8, v4);
  }

  v33 = v4;
  v14 = *(*(v11 + 56) + 8 * v12);

  __chkstk_darwin(v15);
  *(&v32 - 2) = a1;
  sub_1000BAEDC(sub_1000BDCC0, (&v32 - 4), v14);
  v17 = v16;

  v18 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  if (!v21)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_10001C1A4(*(v17 + 56) + ((v23 << 9) | (8 * v24)), v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100008904(v34, &unk_100117FE0);
      if (Strong)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_8;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v35;
  }

  while (v21);
  while (1)
  {
LABEL_8:
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (v27)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v17 + 64 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_6;
    }
  }

  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
LABEL_19:
    v28 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v28 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v29 = *(v18 + 8 * v28 + 32);
        swift_unknownObjectRetain();
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      [v29 siblingDidStartSliding];
      swift_unknownObjectRelease();
      ++v28;
    }

    while (v30 != v27);
  }

LABEL_31:

  v4 = v33;
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000BC2B4(void *a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 service];
  v12 = [v11 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (!*(v13 + 16))
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = sub_10007DD80(v10);
  if ((v15 & 1) == 0)
  {

    return (*(v7 + 8))(v10, v6);
  }

  v35 = v6;
  v16 = *(*(v13 + 56) + 8 * v14);

  __chkstk_darwin(v17);
  *(&v34 - 2) = a1;
  sub_1000BAEDC(sub_1000BDCC0, (&v34 - 4), v16);
  v19 = v18;

  v20 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (!v23)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_10001C1A4(*(v19 + 56) + ((v25 << 9) | (8 * v26)), v36);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100008904(v36, &unk_100117FE0);
      if (Strong)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_8;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v37;
  }

  while (v23);
  while (1)
  {
LABEL_8:
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v19 + 64 + 8 * v28);
    ++v25;
    if (v23)
    {
      v25 = v28;
      goto LABEL_6;
    }
  }

  if (v20 >> 62)
  {
    goto LABEL_30;
  }

  v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
LABEL_19:
    v30 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v30 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v31 = *(v20 + 8 * v30 + 32);
        swift_unknownObjectRetain();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      [v31 siblingDidUpdateWithProgress:a3];
      swift_unknownObjectRelease();
      ++v30;
    }

    while (v32 != v29);
  }

LABEL_31:

  v6 = v35;
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000BC684(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 service];
  v12 = [v11 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v13 = *(a3 + 16);
  if (!*(v13 + 16))
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = sub_10007DD80(v10);
  if ((v15 & 1) == 0)
  {

    return (*(v7 + 8))(v10, v6);
  }

  v34 = v7;
  v35 = v6;
  v16 = *(*(v13 + 56) + 8 * v14);

  __chkstk_darwin(v17);
  *(&v34 - 2) = a1;
  sub_1000BAEDC(sub_1000BDCC0, (&v34 - 4), v16);
  v19 = v18;

  v20 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (!v23)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_10001C1A4(*(v19 + 56) + ((v25 << 9) | (8 * v26)), v36);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100008904(v36, &unk_100117FE0);
      if (Strong)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_8;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v37;
  }

  while (v23);
  while (1)
  {
LABEL_8:
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v19 + 64 + 8 * v28);
    ++v25;
    if (v23)
    {
      v25 = v28;
      goto LABEL_6;
    }
  }

  if (v20 >> 62)
  {
    goto LABEL_30;
  }

  v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
LABEL_19:
    v30 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v30 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v31 = *(v20 + 8 * v30 + 32);
        swift_unknownObjectRetain();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      [v31 siblingDidStopSlidingWithWasIncreasing:a2 & 1];
      swift_unknownObjectRelease();
      ++v30;
    }

    while (v32 != v29);
  }

LABEL_31:

  v7 = v34;
  v6 = v35;
  return (*(v7 + 8))(v10, v6);
}

void sub_1000BCA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char a8, char a9)
{
  v10 = v9;
  UUID.init()();
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled) = 0;
  v11 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton;
  v12 = type metadata accessor for ClimateMaskedStepperButton(0);
  v13 = [objc_allocWithZone(v12) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 layer];
  [v14 setHitTestsAsOpaque:1];

  v15 = [v13 layer];
  v16 = 0.0;
  [v15 setCornerRadius:0.0];

  *(v10 + v11) = v13;
  v17 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton;
  v18 = [objc_allocWithZone(v12) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v18 layer];
  [v19 setHitTestsAsOpaque:1];

  v20 = [v18 layer];
  [v20 setCornerRadius:0.0];

  *(v10 + v17) = v18;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskConstraints) = _swiftEmptyArrayStorage;
  v21 = [objc_allocWithZone(type metadata accessor for ClimateStepperButton(0)) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setUserInteractionEnabled:0];
  v22 = [v21 layer];
  [v22 setCornerRadius:0.0];

  v23 = v21;
  ClimateButton.title.setter(a3, a4);

  ClimateButton.imageSystemName.setter(a1, a2);
  v24 = [objc_allocWithZone(v12) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v24 setUserInteractionEnabled:0];
  v25 = [v24 layer];
  [v25 setCornerRadius:0.0];

  v26 = v24;
  ClimateButton.title.setter(a3, a4);

  ClimateButton.imageSystemName.setter(a1, a2);

  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton) = v26;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_style) = a9;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_isZeroUIReference) = a8;
  v27 = [a6 minimum];
  LOBYTE(v25) = [v27 unsignedCharValue];

  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue) = v25;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_service) = a7;
  v28 = v23;
  v29 = a7;
  v30 = ClimateStepper.init(primaryButton:axis:range:)(v28, a5, a6);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v101 = v28;
  v32 = &v28[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v33 = *&v28[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v32 = sub_1000BDE58;
  v32[1] = v31;
  v34 = v30;

  sub_100003380(v33);

  v35 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton;
  v36 = *&v34[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton];
  v105 = OBJC_IVAR____TtC7Climate14ClimateStepper_upButton;
  v37 = (*&v34[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock);
  v38 = *v37;
  v39 = v37[1];
  v40 = &v36[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v41 = *&v36[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v40 = v38;
  v40[1] = v39;
  v42 = v36;
  sub_10001B054(v38);
  sub_100003380(v41);

  v43 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton;
  v44 = *&v34[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton];
  v103 = OBJC_IVAR____TtC7Climate14ClimateStepper_downButton;
  v45 = (*&v34[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock);
  v46 = *v45;
  v47 = v45[1];
  v48 = &v44[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v49 = *&v44[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v48 = v46;
  v48[1] = v47;
  v50 = v44;
  sub_10001B054(v46);
  sub_100003380(v49);

  v51 = *&v34[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton];
  v52 = *v32;
  v53 = v32[1];
  v54 = &v51[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v55 = *&v51[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v54 = *v32;
  v54[1] = v53;
  v56 = v51;
  sub_10001B054(v52);
  sub_100003380(v55);

  v57 = *&v34[v35];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = &v57[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v60 = *v59;
  *v59 = sub_1000BDE60;
  v59[1] = v58;
  v61 = v57;

  sub_100003380(v60);

  v62 = *&v34[v43];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v62;

  v65 = &v64[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v66 = *v65;
  *v65 = sub_1000BDE84;
  v65[1] = v63;

  sub_100003380(v66);

  *(*&v105[v34] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8) = &off_1000F7A60;
  swift_unknownObjectWeakAssign();
  *(*&v34[v35] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8) = &off_1000F7A60;
  swift_unknownObjectWeakAssign();
  *(*&v34[v103] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8) = &off_1000F7A60;
  swift_unknownObjectWeakAssign();
  v67 = *&v34[v43];
  v68 = *&v34[v103];
  v69 = v67;
  v70 = v68;

  *&v69[OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8] = &off_1000F7A60;
  swift_unknownObjectWeakAssign();

  v71 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v72 = *&v34[v71];
  v73 = *((swift_isaMask & *v72) + 0x158);

  v74 = v72;
  v73(a3, a4);

  ClimateButton.title.setter(a3, a4);
  v75 = *&v34[v71];

  v76 = v75;
  ClimateButton.imageSystemName.setter(a1, a2);

  ClimateButton.imageSystemName.setter(a1, a2);
  sub_1000B88AC();
  v77 = *&v34[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView];
  if (v77)
  {
    v78 = *((swift_isaMask & *v34) + 0x138);
    v79 = v77;
    if ((v78() & 0x18) == 0)
    {
      if ((v78() & 2) != 0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }
    }

    [v79 setAlpha:v16];
  }

  v80 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v34 action:"didSlide:"];
  [v34 addGestureRecognizer:v80];
  sub_1000B8CB0();
  v81 = [objc_opt_self() sharedApplication];
  v82 = [v81 delegate];

  if (v82)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v83 = sub_1000AF438();
    swift_unknownObjectRelease();

    v84 = v34;
    sub_10009DABC();

    [*&v101[OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView] removeFromSuperview];
    v85 = *&v101[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
    v86 = *&v101[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
    v87 = *&v101[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
    v88 = objc_opt_self();
    v89 = v85;
    v90 = v86;

    v91 = [v88 clearColor];
    if (v91)
    {
      v92 = v91;

      v89 = v92;
    }

    sub_10007A4CC(v89, v90, v87);

    sub_1000B7A50();
    v93 = *&v84[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8];
    v94 = *&v84[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16];
    v95 = *((swift_isaMask & *v84) + 0x138);
    v96 = *&v84[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig];
    v97 = v93;

    v99 = v95(v98);
    v100 = sub_10007E858(v99, v96, v94);

    [v84 setBackgroundColor:v100];
    sub_1000BA068();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000BD554(double a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  v4 = v3;
  [v4 setBeginTime:CACurrentMediaTime()];
  [v4 setDuration:a1];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setFromValue:isa];

  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setToValue:v6];

  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1051260355;
  LODWORD(v9) = 1.0;
  v10 = [v7 initWithControlPoints:v8 :0.0 :0.0 :v9];
  [v4 setTimingFunction:v10];

  return v4;
}

void sub_1000BD6A0(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0.3;
  }

  else
  {
    v3 = 0.25;
  }

  v4 = sub_1000BD554(v3);
  if ([v4 toValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v25 = v4;
      v5 = 0;
      *&v29[0] = _swiftEmptyArrayStorage;
      v6 = *(a2 + 16);
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v6 == v5)
        {
          *&v29[0] = _swiftEmptyArrayStorage;
          if (v7 >> 62)
          {
            goto LABEL_36;
          }

          v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_21;
          }

          goto LABEL_37;
        }

        if (v5 >= v6)
        {
          break;
        }

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }

        v9 = *(a2 + 32 + 8 * v5++);
        if (v9)
        {
          v10 = v9;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = *&v29[0];
          v5 = v8;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
          break;
        }

LABEL_21:
        v12 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v13 = *(v7 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v13 alpha];
          if (v16 == v26)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v12;
          if (v15 == v11)
          {
            v17 = *&v29[0];
            goto LABEL_38;
          }
        }
      }

LABEL_37:
      v17 = _swiftEmptyArrayStorage;
LABEL_38:

      if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
      {
        goto LABEL_51;
      }

      for (i = *(v17 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(v17 + 16))
            {
              goto LABEL_50;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v23 = [v20 layer];
          v24 = String._bridgeToObjectiveC()();
          [v23 addAnimation:v25 forKey:v24];

          [v21 setAlpha:v26];
          ++v19;
          if (v22 == i)
          {
            goto LABEL_52;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        ;
      }

LABEL_52:
    }

    else
    {
    }
  }

  else
  {

    sub_100008904(v29, &unk_1001166B0);
  }
}

uint64_t sub_1000BDA60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BDA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000BDAB0()
{
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled) = 0;
  v1 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton;
  v2 = type metadata accessor for ClimateMaskedStepperButton(0);
  v3 = [objc_allocWithZone(v2) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];

  v5 = [v3 layer];
  [v5 setCornerRadius:0.0];

  *(v0 + v1) = v3;
  v6 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton;
  v7 = [objc_allocWithZone(v2) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v7 layer];
  [v8 setHitTestsAsOpaque:1];

  v9 = [v7 layer];
  [v9 setCornerRadius:0.0];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000BDCE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100117FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BDD50()
{
  result = qword_100115800;
  if (!qword_100115800)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115800);
  }

  return result;
}

uint64_t sub_1000BDDCC(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000BDE20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000BDEBC()
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
    v5 = *&v4[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus];

    v6 = [v5 currentSession];
    if (v6)
    {
      v7 = [v6 MFiCertificateSerialNumber];

      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_pairedManager);
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v11 vehicleForCertificateSerial:isa];

      sub_1000BE620(v8, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000BE02C()
{
  *&v0[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter] = 1;
  v1 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_pairedManager;
  *&v0[v1] = [objc_allocWithZone(CRPairedVehicleManager) init];
  v2 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_observers;
  *&v0[v2] = sub_10005013C(_swiftEmptyArrayStorage);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ClimateAccessibilityManager();
  v3 = objc_msgSendSuper2(&v9, "init");
  sub_1000BE674();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata defaultCenter];
  v7 = String._bridgeToObjectiveC()();
  [v6 addObserver:v5 selector:"didUpdateVehicle" name:v7 object:0];

  return v5;
}

id sub_1000BE174()
{
  sub_1000BE674();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ClimateAccessibilityManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000BE2BC()
{
  sub_1000BDEBC();
  if (v1)
  {
    v2 = &selRef_maxDefrostOn;
    v13 = v1;
    v3 = [v1 colorFilterPreference];
    v4 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter;
    if (v3 == *(v0 + OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter))
    {
    }

    else
    {
      static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
LABEL_21:
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      *(v0 + v4) = [v13 v2[427]];
      v5 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_observers;
      swift_beginAccess();
      v2 = *(v0 + v5);
      v6 = 1 << *(v2 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & v2[8];
      v9 = (v6 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v10 = 0;
      while (v8)
      {
LABEL_16:
        sub_1000BE548(&v2[7][(v10 << 9) | (8 * __clz(__rbit64(v8)))], v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong didUpdateColorFilterPreferenceWithFilter:*(v0 + v4)];
          swift_unknownObjectRelease();
        }

        v8 &= v8 - 1;
        sub_1000BE5B8(v14);
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v11 >= v9)
        {
          break;
        }

        v8 = v2[v11 + 8];
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_16;
        }
      }
    }
  }
}

uint64_t sub_1000BE548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100116D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BE5B8(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_100116D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BE620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000BE674()
{
  result = qword_100118088;
  if (!qword_100118088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100118088);
  }

  return result;
}

uint64_t sub_1000BE6C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate15ClimateZoneCard_zone;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_zoneLabel);

  sub_100071888();

  v4 = String._bridgeToObjectiveC()();

  [v3 setText:v4];

  v5 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_servicesGrid);
  *&v5[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zone] = *(v1 + v2);
  swift_retain_n();
  v6 = v5;

  sub_1000A71CC();
}

void sub_1000BE7C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1000BE828()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateGlassView());
  v3 = ClimateGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(kCACornerCurveContinuous, 1, 28.0);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v3];
  v4 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D5D90;
  v6 = [v3 leftAnchor];
  v7 = [v1 leftAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v3 topAnchor];
  v10 = [v1 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v3 bottomAnchor];
  v13 = [v1 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v3 rightAnchor];
  v16 = [v1 rightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  [v3 setClipsToBounds:1];
  v19 = *&v1[OBJC_IVAR____TtC7Climate15ClimateZoneCard_background];
  *&v1[OBJC_IVAR____TtC7Climate15ClimateZoneCard_background] = v3;
}

void sub_1000BEB78()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_background);
}

id sub_1000BEBD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateZoneCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BEC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_zone);
  v4 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a1, v3 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v5);
}

BOOL ClimateGlassView.isTranslucent.getter()
{
  UIView._background.getter();
  v0 = v3 != 0;
  sub_1000BF600(v2);
  return v0;
}

uint64_t ClimateGlassView.isTranslucent.setter(char a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for _Glass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static _Glass._GlassVariant.regular.getter();
    _Glass.init(_:smoothness:)();
    *(&v10 + 1) = v3;
    v11 = &protocol witness table for _Glass;
    v7 = sub_10000D830(&v9);
    (*(v4 + 32))(v7, v6, v3);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  return UIView._background.setter();
}

void (*ClimateGlassView.isTranslucent.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  v5 = *(*(type metadata accessor for _Glass._GlassVariant() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 128) = v6;
  v7 = type metadata accessor for _Glass();
  *(v4 + 136) = v7;
  v8 = *(v7 - 8);
  *(v4 + 144) = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 152) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 152) = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  *(v4 + 160) = v10;
  UIView._background.getter();
  v11 = *(v4 + 24) != 0;
  sub_1000BF600(v4);
  *(v4 + 168) = v11;
  return sub_1000BF13C;
}

void sub_1000BF13C(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2 + 5;
    if (*(*a1 + 168))
    {
      v4 = v2[18];
      v5 = v2[19];
      v6 = v2[17];
      static _Glass._GlassVariant.regular.getter();
      _Glass.init(_:smoothness:)();
      v2[8] = v6;
      v2[9] = &protocol witness table for _Glass;
LABEL_6:
      v7 = sub_10000D830(v3);
      (*(v4 + 32))(v7, v5, v6);
      goto LABEL_8;
    }
  }

  else
  {
    v3 = v2 + 10;
    if (*(*a1 + 168))
    {
      v5 = v2[20];
      v6 = v2[17];
      v4 = v2[18];
      static _Glass._GlassVariant.regular.getter();
      _Glass.init(_:smoothness:)();
      v2[13] = v6;
      v2[14] = &protocol witness table for _Glass;
      goto LABEL_6;
    }
  }

  v3[4] = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
LABEL_8:
  v9 = v2[19];
  v8 = v2[20];
  v10 = v2[16];
  UIView._background.setter();
  free(v8);
  free(v9);
  free(v10);

  free(v2);
}

uint64_t ClimateGlassView.init()()
{
  v0 = *(swift_getObjectType() + 104);
  v1 = v0(kCACornerCurveContinuous, 1, 0.0);
  swift_deallocPartialClassInstance();
  return v1;
}

id ClimateGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(void *a1, char a2, double a3)
{
  v7 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for _Glass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClimateGlassView();
  v22.receiver = v3;
  v22.super_class = v12;
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = [v13 layer];
  [v14 setCornerRadius:a3];

  v15 = [v13 layer];
  [v15 setCornerCurve:a1];

  if (a2)
  {
    static _Glass._GlassVariant.regular.getter();
    _Glass.init(_:smoothness:)();
    *(&v20 + 1) = v8;
    v21 = &protocol witness table for _Glass;
    v16 = sub_10000D830(&v19);
    (*(v9 + 32))(v16, v11, v8);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  UIView._background.setter();
  v17 = [v13 layer];

  [v17 setHitTestsAsOpaque:1];
  return v13;
}

uint64_t sub_1000BF600(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_1001180D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClimateGlassView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateGlassView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BF7B4()
{
  sub_1000C10C4();
  v1 = *((swift_isaMask & *v0) + 0x118);
  v2 = [v0 setEnabled:(v1() & 0x18) == 0];
  if (((v1)(v2) & 0x1B) == 1)
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v4 = v0 + *v3;
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = *v4;
  v8 = v5;

  sub_10007A4CC(v7, v8, v6);

  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();

  return sub_1000BF8BC();
}

uint64_t sub_1000BF8BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_setting);
  if (![v1 hasSymbolName])
  {
    goto LABEL_19;
  }

  v2 = [v1 symbolName];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 != *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_symbolName) || v6 != *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_symbolName + 8))
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return result;
    }

    v10 = [v1 symbolName];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      v15 = CAFUIImageForSymbolName();

      if (v15)
      {

        v16 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
        swift_beginAccess();
        v17 = *v16;
        v18 = v16[1];
        *v16 = v12;
        v16[1] = v14;
        if (v18 && (v12 == v17 && v18 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
        }

        goto LABEL_25;
      }
    }

LABEL_19:
    v19 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = 0xD000000000000013;
    v19[1] = 0x80000001000DF4D0;
    if (v21)
    {
      v22 = v20 == 0xD000000000000013 && 0x80000001000DF4D0 == v21;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }
    }

LABEL_25:
    ClimateButton.updateClimateConfiguration()();
  }
}

uint64_t sub_1000BFAE0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B670C();
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000C0208;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = &unk_1000F9988;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003FB94();
  sub_1000040E8(&unk_1001159C0);
  sub_10003FBEC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000BFEE8()
{
}

id sub_1000BFF2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAutomakerSettingButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateAutomakerSettingButton()
{
  result = qword_100118140;
  if (!qword_100118140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C0074()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1000AF438();
    swift_unknownObjectRelease();
    v3 = *&v2[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus];

    v4 = [v3 currentSession];
    if (v4)
    {
      v5 = [v4 limitUserInterfaces];
      if (v5 && (v6 = v5, v7 = [v5 BOOLValue], v6, (v7 & 1) != 0))
      {
        v8 = [v4 configuration];
        [v8 limitableUserInterfaces];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000C01D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C022C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C024C@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClimateDefrost();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v7 + 16;
  v14 = *(v7 + 16);
  v66 = a2;
  v57 = v14;
  (v14)(v13, a2, v6, v11);
  v72 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  v69 = a1;
  if (a1 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v9;
  v65 = a3;
  v62 = v6;
  v63 = v10;
  v60 = v7;
  v61 = v13;
  v58 = v7 + 16;
  if (v17)
  {
    if (v17 < 1)
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_28;
    }

    v18 = 0;
    v19 = v69;
    v20 = v69 & 0xC000000000000001;
    v21 = _swiftEmptyArrayStorage;
    v22 = &_s10Foundation11MeasurementV10CAFCombineSo17NSUnitTemperatureCRszrlE10localeStep_2by2inACyAFGSo8CAFRangeCADE0G9DirectionO_AJSo13CAFFloatRangeCSgtF_ptr;
    p_name = &ClimateAccessibilityManager.name;
    *&v16 = 138543362;
    v68 = v16;
    v70 = _swiftEmptyArrayStorage;
    v67 = v17;
    do
    {
      if (v20)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v19 + 8 * v18 + 32);
      }

      v25 = v24;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v26 = v25;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v70 = v73;
        v27 = v26;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = v72;
      }

      else
      {
        v28 = static os_log_type_t.debug.getter();
        if (p_name[480] != -1)
        {
          swift_once();
        }

        v29 = qword_10011B1C0;
        if (os_log_type_enabled(qword_10011B1C0, v28))
        {
          v30 = v20;
          v31 = v21;
          v32 = p_name;
          v33 = v22;
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = v68;
          *(v34 + 4) = v25;
          *v35 = v25;
          v25 = v25;
          _os_log_impl(&_mh_execute_header, v29, v28, "unknown service: %{public}@", v34, 0xCu);
          sub_100006C40(v35);
          v19 = v69;

          v22 = v33;
          p_name = v32;
          v21 = v31;
          v20 = v30;
          v17 = v67;
        }
      }

      ++v18;
    }

    while (v17 != v18);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v19 = v69;
  }

  v36 = v70;
  if (v70 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v62;
    v17 = v63;
    if (v41)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = v62;
    v17 = v63;
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      (*(v60 + 8))(v66, v15);
      v37 = v64;
      v38 = v61;
      *&v61[*(v64 + 20)] = v19;
      *(v38 + *(v37 + 24)) = v21;
      *(v38 + *(v37 + 28)) = v36;
      v39 = v65;
      sub_1000505A4(v38, v65);
      (*(v17 + 56))(v39, 0, 1, v37);
      return sub_100055848(v38);
    }
  }

  LODWORD(v10) = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  v42 = qword_10011B1C0;
  v43 = v59;
  v44 = v66;
  v57(v59, v66, v15);
  if (os_log_type_enabled(v42, v10))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    LODWORD(v70) = v10;
    v47 = v46;
    v71 = v46;
    *v45 = 136446210;
    v48 = CAUVehicleLayoutKey.rawValue.getter();
    v50 = v49;
    v51 = *(v60 + 8);
    v51(v43, v15);
    v52 = sub_10000835C(v48, v50, &v71);

    *(v45 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v42, v70, "ClimateDefrostServices requires defrosts key=%{public}s", v45, 0xCu);
    sub_100006B9C(v47);

    v53 = v66;
  }

  else
  {
    v51 = *(v60 + 8);
    v51(v44, v15);
    v53 = v43;
  }

  v51(v53, v15);
  v55 = v64;
  v54 = v65;
  v51(v61, v15);
  return (*(v17 + 56))(v54, 1, 1, v55);
}

uint64_t type metadata accessor for ClimateDefrost()
{
  result = qword_1001181A8;
  if (!qword_1001181A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C0950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CAUVehicleLayoutKey();
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

uint64_t sub_1000C0A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CAUVehicleLayoutKey();
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

void sub_1000C0AD8()
{
  type metadata accessor for CAUVehicleLayoutKey();
  if (v0 <= 0x3F)
  {
    sub_1000C0BA4(319, &qword_1001181B8, &qword_100116078);
    if (v1 <= 0x3F)
    {
      sub_1000C0BA4(319, &unk_1001181C0, &qword_1001167B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000C0BA4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_10000827C(255, a3);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1000C0BFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_10000827C(0, &qword_100115400);
          sub_1000040E8(&qword_100118240);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_10000827C(0, &qword_100115400);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1000040E8(&qword_100118240);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_1000C0DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A8A20(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      sub_1000040E8(&qword_1001179F0);
      sub_1000040E8(&unk_100117A00);
      swift_dynamicCast();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000A8A20((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[2 * v6];
      *(v7 + 32) = v9;
      v7[5] = v10;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1000C0F2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      sub_1000040E8(&qword_100118270);
      sub_10000827C(0, &qword_100115400);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000C1048(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_1000040E8(&unk_1001150F0);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v1 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  return v1;
}

void sub_1000C10C4()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x250);
  v3 = v2();
  v5 = v4;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = (v2)(v6);
    v10 = v9;
    v11 = sub_1000C487C(0, 1, 1, &_swiftEmptyArrayStorage);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1000C487C((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[16 * v13];
    *(v14 + 4) = v8;
    *(v14 + 5) = v10;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v15 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelModifier + 8);
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelModifier);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000C487C(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_1000C487C((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v16;
    *(v19 + 5) = v15;
  }

  if (*(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelShouldIncludeStates) == 1)
  {
    v20 = (*((swift_isaMask & *v1) + 0x118))();
    v21 = ClimatePresentation.accessibilityLabel.getter(v20);
    v23 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000C487C(0, *(v11 + 2) + 1, 1, v11);
    }

    v25 = *(v11 + 2);
    v24 = *(v11 + 3);
    if (v25 >= v24 >> 1)
    {
      v11 = sub_1000C487C((v24 > 1), v25 + 1, 1, v11);
    }

    *(v11 + 2) = v25 + 1;
    v26 = &v11[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
  }

  sub_1000040E8(&qword_100115EA8);
  sub_10000A8E8(&qword_100115EE0, &qword_100115EA8);
  BidirectionalCollection<>.joined(separator:)();

  v27 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v27];
}

uint64_t sub_1000C13D4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  if ([*(v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) hasOn] && (objc_msgSend(*(v0 + v2), "on") & 1) == 0)
  {
    v12 = [*(v0 + v2) autoMode];
    v13 = [*(v0 + v2) onRestricted];
    v14 = [*(v1 + v2) onInvalid];
    LOBYTE(v8) = [*(v1 + v2) onDisabled];
    v9 = v14 == 0;
    if (v12)
    {
      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (v13)
    {
LABEL_16:
      v10 = 4;
      v11 = 12;
      goto LABEL_17;
    }

LABEL_23:
    v10 = 8;
    if (v9)
    {
      v10 = 0;
    }

    if (v8)
    {
      return v10 | 0x10;
    }

    return v10;
  }

  v3 = *(v0 + v2);
  v4 = CAFFan.isBlowing.getter();

  v5 = [*(v1 + v2) autoMode];
  v6 = [*(v1 + v2) fanLevelRestricted];
  v7 = [*(v1 + v2) fanLevelInvalid];
  v8 = [*(v1 + v2) fanLevelDisabled];
  v9 = v7 == 0;
  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      if (v6)
      {
LABEL_9:
        v10 = 6;
        v11 = 14;
        goto LABEL_17;
      }

LABEL_12:
      v10 = 2;
      v11 = 10;
      goto LABEL_17;
    }

    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v10 = 3;
      if (v7)
      {
        v10 = 11;
      }

      if (v8)
      {
        return v10 | 0x10;
      }

      return v10;
    }

    v10 = 7;
    v11 = 15;
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      v10 = 9;
      if (!v7)
      {
        v10 = 1;
      }

      if (v8)
      {
        return v10 | 0x10;
      }

      return v10;
    }

    v10 = 5;
    v11 = 13;
  }

LABEL_17:
  if (!v9)
  {
    v10 = v11;
  }

  if (v8)
  {
    return v10 | 0x10;
  }

  return v10;
}

BOOL sub_1000C15C0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
  v2 = [v1 unsignedCharValue];

  return v2 == 0;
}

unint64_t sub_1000C1634(unsigned __int8 a1)
{
  v2 = v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
  v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = a1;
  if (v2 != a1 && !v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
  {
    if (v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] == 1)
    {
      sub_1000B7E5C();
    }

    else
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v9[4] = sub_1000C58A4;
      v9[5] = v4;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_1000B4DF4;
      v9[3] = &unk_1000F9D20;
      v5 = _Block_copy(v9);
      v6 = v1;

      [v3 animateWithDuration:2 delay:v5 options:0 animations:0.25 completion:0.0];
      _Block_release(v5);
    }
  }

  v7 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  result = sub_1000C13D4();
  v1[v7] = result > 7;
  return result;
}

_BYTE *sub_1000C17E4(void *a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton;
  *(v3 + v7) = [objc_allocWithZone(type metadata accessor for ClimateStepperPowerButton()) init];
  *(v3 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) = a1;
  v8 = a1;
  if ([v8 hasOn])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v8 fanLevelRange];
    v11 = [v10 minimum];

    LODWORD(v10) = [v11 unsignedCharValue];
    v9 = v10 != 0;
  }

  v12 = [v8 fanLevelRange];
  v13 = v8;
  sub_1000BCA4C(0x6C6C69662E6E6166, 0xE800000000000000, 0, 0, a2, v12, v13, v9, a3);
  v15 = v14;

  v16 = v15;
  [v13 registerObserver:v16];
  sub_1000C2390();
  sub_1000C1E64(0);
  sub_1000C1970(v16);

  return v16;
}

void sub_1000C1970(_BYTE *a1)
{
  if (sub_1000C13D4() >= 8)
  {
    v3 = [*&a1[OBJC_IVAR____TtC7Climate14ClimateStepper_range] minimum];
    v2 = [v3 unsignedCharValue];
  }

  else
  {
    v2 = sub_1000C2E60();
  }

  v4 = a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
  a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v2;
  if (v4 != v2 && !a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
  {
    if (a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] == 1)
    {
      sub_1000B7E5C();
    }

    else
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v30 = sub_1000C58A4;
      v31 = v6;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000B4DF4;
      v29 = &unk_1000F9EB0;
      v7 = _Block_copy(&v26);
      v8 = a1;

      [v5 animateWithDuration:2 delay:v7 options:0 animations:0.25 completion:0.0];
      _Block_release(v7);
    }
  }

  v9 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  a1[v9] = sub_1000C13D4() > 7;
  v10 = *&a1[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v11 = *&v10[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v11)
  {

    v13 = v11(v12);
    sub_100003380(v11);
    if ((v13 & 0x10) != 0)
    {
      v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 & 8) == 0;
LABEL_14:
  [v10 setEnabled:v14];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v15 = sub_1000C13D4();
  v16 = sub_1000B7A50();
  if ((v15 & 0x1A) != 0)
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v30 = sub_1000C5894;
    v31 = v18;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1000B4DF4;
    v29 = &unk_1000F9E60;
    v19 = _Block_copy(&v26);
    v20 = a1;

    [v17 animateWithDuration:4 delay:v19 options:0 animations:0.1 completion:0.0];
LABEL_18:
    _Block_release(v19);
    goto LABEL_19;
  }

  if (v15)
  {
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    v30 = sub_1000C588C;
    v31 = v22;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1000B4DF4;
    v29 = &unk_1000F9E10;
    v19 = _Block_copy(&v26);
    v23 = a1;

    [v21 animateWithDuration:4 delay:v19 options:0 animations:0.2 completion:0.0];
    goto LABEL_18;
  }

LABEL_19:
  v24 = (*((swift_isaMask & **&a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v16);
  v25 = (*((swift_isaMask & **&a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v24);
  (*((swift_isaMask & **&a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v25);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
}

id sub_1000C1E64(char a1)
{
  v2 = v1;
  if (sub_1000C13D4() > 7 || *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state))
  {
    [*(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton) setAlpha:0.0];
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    return [*(v2 + v4) setAlpha:1.0];
  }

  v45 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton);
  [v45 alpha];
  v7 = v6;
  sub_1000040E8(&unk_100114770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5B90;
  v9 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  v13 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(v8 + 48) = v12;
  *(v8 + 56) = v13;
  v14 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(v8 + 64) = v14;
  v46 = v8;
  v15 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  v16 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  if (![v16 hasOn])
  {
    goto LABEL_8;
  }

  v22 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView);
  if (!v22)
  {
    goto LABEL_8;
  }

  v8 = v22;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v8 = v46;
LABEL_8:
    v23 = *(v2 + v15);
    v24 = CAFFan.isBlowing.getter();

    if ((v24 & 1) == 0)
    {
      break;
    }

    [*(v2 + v9) alpha];
    if (v25 >= 0.5)
    {
      break;
    }

    if (a1)
    {
      sub_1000040E8(&unk_100117FD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5970;
      *(inited + 32) = v45;
      v27 = v45;
      sub_1000BD6A0(1, inited);
      swift_setDeallocating();
      sub_1000C5758(inited + 32);
      v28 = sub_1000C0BFC(v8);

      sub_1000BD6A0(0, v28);
LABEL_42:

      return sub_1000C4294(a1 & 1, v7);
    }

    [v45 setAlpha:0.0];
    if (v8 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (!v35)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v35 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_42;
      }
    }

    v36 = 0;
    v9 = v8 & 0xC000000000000001;
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v37 = *(v8 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v37 setAlpha:1.0];

      ++v36;
      if (v39 == v35)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v29 = *(v2 + v15);
  v30 = CAFFan.isBlowing.getter();

  if (v30)
  {
    goto LABEL_42;
  }

  [v45 alpha];
  if (v31 >= 0.5)
  {
    goto LABEL_42;
  }

  if (a1)
  {
    v32 = sub_1000C0BFC(v8);

    sub_1000BD6A0(1, v32);

    sub_1000040E8(&unk_100117FD0);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1000D5970;
    *(v33 + 32) = v45;
    v34 = v45;
    sub_1000BD6A0(0, v33);
    swift_setDeallocating();
    sub_1000C5758(v33 + 32);
    return sub_1000C4294(a1 & 1, v7);
  }

  if (!(v8 >> 62))
  {
    v40 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v40 = _CocoaArrayWrapper.endIndex.getter();
  if (v40)
  {
LABEL_28:
    v41 = 0;
    v9 = v8 & 0xC000000000000001;
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v9)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v42 = *(v8 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_38;
      }

      [v42 setAlpha:0.0];

      ++v41;
    }

    while (v44 != v40);
  }

LABEL_45:

  [v45 setAlpha:1.0];
  return sub_1000C4294(a1 & 1, v7);
}

id sub_1000C2390()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v4 = *v3;
  *v3 = sub_1000C5800;
  v3[1] = v2;

  sub_100003380(v4);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v7 = *&v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v6 = sub_1000C5808;
  v6[1] = v5;

  sub_100003380(v7);

  [v0 addSubview:v1];
  v8 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D5D90;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [v1 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [v1 bottomAnchor];
  v20 = [v0 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints:isa];

  return [v1 setAlpha:0.0];
}

void sub_1000C26E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
    v3 = [*(Strong + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) hasOn];
    v4 = *&v1[v2];
    if (v3)
    {
      [v4 setOn:1];
    }

    else if (![v4 fanLevel])
    {
      v5 = *&v1[v2];
      v6 = [v5 fanLevelRange];
      v7 = [v6 minimumValue];

      v8 = [*&v1[v2] fanLevelRange];
      v9 = [v8 stepValue];

      if (((v7 + v9) >> 8))
      {
        __break(1u);
        return;
      }

      [v5 setFanLevel:(v7 + v9)];
    }

    v10 = *&v1[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
    sub_1000C10C4();
    v11 = *&v10[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
    if (v11)
    {

      v13 = v11(v12);
      sub_100003380(v11);
      if ((v13 & 0x10) != 0)
      {
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = (v13 & 8) == 0;
LABEL_12:
    [v10 setEnabled:v14];
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
    v15 = sub_1000C13D4();
    v16 = sub_1000B7A50();
    if ((v15 & 0x1A) != 0)
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v1;
      v30 = sub_1000C5894;
      v31 = v18;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000B4DF4;
      v29 = &unk_1000F9DC0;
      v19 = _Block_copy(&aBlock);
      v20 = v1;

      [v17 animateWithDuration:4 delay:v19 options:0 animations:0.1 completion:0.0];
    }

    else
    {
      if ((v15 & 1) == 0)
      {
LABEL_17:
        v24 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v16);
        v25 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v24);
        (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v25);
        ClimateStepper.updatePresentation()();
        sub_1000B7D34();

        return;
      }

      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      v30 = sub_1000C588C;
      v31 = v22;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000B4DF4;
      v29 = &unk_1000F9D70;
      v19 = _Block_copy(&aBlock);
      v23 = v1;

      [v21 animateWithDuration:4 delay:v19 options:0 animations:0.2 completion:0.0];
    }

    _Block_release(v19);
    goto LABEL_17;
  }
}

uint64_t sub_1000C2B38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1000C13D4();

  return v2;
}

id sub_1000C2B9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue);
  v2 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  result = [*(v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) fanLevel];
  if (v1 != result)
  {
    v4 = *(v0 + v2);

    return [v4 setFanLevel:v1];
  }

  return result;
}

void sub_1000C2C20(uint64_t a1)
{
  v3 = type metadata accessor for CAFRange.StepDirection();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  v9 = [*(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) fanLevel];
  v10 = [*(v1 + v8) fanLevelRange];
  v11 = [v10 stepValue];

  (*(v4 + 16))(v7, a1, v3);
  v12 = (*(v4 + 88))(v7, v3);
  if (v12 == enum case for CAFRange.StepDirection.up(_:))
  {
    v13 = *(v1 + v8);
    v14 = [v13 fanLevelRange];
    v15 = [v14 maximumValue];

    if ((((v9 + v11) >> 8) & 1) == 0)
    {
      if ((v9 + v11) >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = (v9 + v11);
      }

LABEL_11:
      [v13 setFanLevel:v16];

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v12 == enum case for CAFRange.StepDirection.down(_:))
  {
    v13 = *(v1 + v8);
    v17 = [v13 fanLevelRange];
    v18 = [v17 minimumValue];

    if (((v9 - v11) & 0xFFFFFF00) == 0)
    {
      if ((v9 - v11) <= v18)
      {
        v16 = v18;
      }

      else
      {
        v16 = (v9 - v11);
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  (*(v4 + 8))(v7, v3);
}

id sub_1000C2E60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  v3 = [*&v0[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan] fanLevel];
  v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
  v5 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_range];
  CAFRange.maximumValue<A>()();

  if (v26 >= v3)
  {
    v14 = [*&v1[v2] fanLevel];
    v15 = *&v1[v4];
    CAFRange.minimumValue<A>()();

    if (v14 >= v25)
    {
      return [*&v1[v2] fanLevel];
    }

    else
    {
      v16 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v16))
      {
        v18 = v1;
        v19 = swift_slowAlloc();
        *v19 = 16908800;
        *(v19 + 4) = [*&v1[v2] fanLevel];
        *(v19 + 5) = 258;
        v20 = [*&v1[v4] minimum];
        v21 = [v20 unsignedCharValue];

        *(v19 + 7) = v21;
        _os_log_impl(&_mh_execute_header, v17, v16, "fanLevel value is out of bound. fanLevel: %{public}hhu, min range %{public}hhu", v19, 8u);
      }

      v22 = *&v1[v4];
      CAFRange.minimumValue<A>()();

      return v24;
    }
  }

  else
  {
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v7 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v6))
    {
      v8 = v1;
      v9 = swift_slowAlloc();
      *v9 = 16908800;
      *(v9 + 4) = [*&v1[v2] fanLevel];
      *(v9 + 5) = 258;
      v10 = [*&v1[v4] maximum];
      v11 = [v10 unsignedCharValue];

      *(v9 + 7) = v11;
      _os_log_impl(&_mh_execute_header, v7, v6, "fanLevel value is out of bound. fanLevel: %{public}hhu, max range %{public}hhu", v9, 8u);
    }

    v12 = *&v1[v4];
    CAFRange.maximumValue<A>()();

    return v23;
  }
}

void sub_1000C319C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton);
}

id sub_1000C31DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateFanContinuousStepper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateFanContinuousStepper()
{
  result = qword_100118230;
  if (!qword_100118230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000C3300(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v10 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v9))
  {
    v11 = swift_slowAlloc();
    v48 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446466;
    sub_10000827C(0, &unk_1001178A0);
    CAFPositionedRequired.layoutKey.getter();
    v14 = CAUVehicleLayoutKey.rawValue.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_10000835C(v14, v16, &aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 258;
    *(v12 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v10, v9, "Fan %{public}s did update level to: %{public}hhu", v12, 0xFu);
    sub_100006B9C(v13);
  }

  v18 = *&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v19 = *&v18[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v19)
  {

    v21 = v19(v20);
    sub_100003380(v19);
    if ((v21 & 0x10) != 0)
    {
      v22 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 & 8) == 0;
LABEL_10:
  [v18 setEnabled:v22];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v23 = sub_1000C13D4();
  v24 = sub_1000B7A50();
  if ((v23 & 0x1A) != 0)
  {
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    v53 = sub_1000C5894;
    v54 = v26;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1000B4DF4;
    v52 = &unk_1000F9CD0;
    v27 = _Block_copy(&aBlock);
    v28 = v3;

    [v25 animateWithDuration:4 delay:v27 options:0 animations:0.1 completion:0.0];
  }

  else
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_15;
    }

    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v3;
    v53 = sub_1000C588C;
    v54 = v30;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1000B4DF4;
    v52 = &unk_1000F9C80;
    v27 = _Block_copy(&aBlock);
    v31 = v3;

    [v29 animateWithDuration:4 delay:v27 options:0 animations:0.2 completion:0.0];
  }

  _Block_release(v27);
LABEL_15:
  v32 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v24);
  v33 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v32);
  (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v33);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
  if (sub_1000C13D4() >= 8)
  {
    v39 = [*&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_range] minimum];
    v40 = [v39 unsignedCharValue];

    v41 = v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
    v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v40;
    if (v41 != v40 && !v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
    {
      if (v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] != 1)
      {
        v36 = objc_opt_self();
        v42 = swift_allocObject();
        *(v42 + 16) = v3;
        v53 = sub_1000C58A4;
        v54 = v42;
        aBlock = _NSConcreteStackBlock;
        v50 = 1107296256;
        v38 = &unk_1000F9C30;
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v34 = sub_1000C2E60();
    v35 = v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
    v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v34;
    if (v35 != v34 && !v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
    {
      if (v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] != 1)
      {
        v36 = objc_opt_self();
        v37 = swift_allocObject();
        *(v37 + 16) = v3;
        v53 = sub_1000C58A4;
        v54 = v37;
        aBlock = _NSConcreteStackBlock;
        v50 = 1107296256;
        v38 = &unk_1000F9BE0;
LABEL_25:
        v51 = sub_1000B4DF4;
        v52 = v38;
        v43 = _Block_copy(&aBlock);
        v44 = v3;

        [v36 animateWithDuration:2 delay:v43 options:0 animations:0.25 completion:0.0];
        _Block_release(v43);
        goto LABEL_26;
      }

LABEL_23:
      sub_1000B7E5C();
    }
  }

LABEL_26:
  v45 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  result = sub_1000C13D4();
  v3[v45] = result > 7;
  return result;
}

void sub_1000C3AF0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v10 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v9))
  {
    v11 = swift_slowAlloc();
    v43 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446466;
    sub_10000827C(0, &unk_1001178A0);
    CAFPositionedRequired.layoutKey.getter();
    v14 = CAUVehicleLayoutKey.rawValue.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_10000835C(v14, v16, &aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1026;
    *(v12 + 14) = v43 & 1;
    _os_log_impl(&_mh_execute_header, v10, v9, "Fan %{public}s did update ON: %{BOOL,public}d", v12, 0x12u);
    sub_100006B9C(v13);
  }

  if (sub_1000C13D4() >= 8)
  {
    v19 = [*&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_range] minimum];
    v18 = [v19 unsignedCharValue];
  }

  else
  {
    v18 = sub_1000C2E60();
  }

  v20 = v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
  v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v18;
  if (v20 != v18 && !v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
  {
    if (v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] == 1)
    {
      sub_1000B7E5C();
    }

    else
    {
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      v48 = sub_1000C5750;
      v49 = v22;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v46 = sub_1000B4DF4;
      v47 = &unk_1000F9B40;
      v23 = _Block_copy(&aBlock);
      v24 = v3;

      [v21 animateWithDuration:2 delay:v23 options:0 animations:0.25 completion:0.0];
      _Block_release(v23);
    }
  }

  v25 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  v3[v25] = sub_1000C13D4() > 7;
  v26 = *&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v27 = *&v26[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v27)
  {

    v29 = v27(v28);
    sub_100003380(v27);
    if ((v29 & 0x10) != 0)
    {
      v30 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = (v29 & 8) == 0;
LABEL_18:
  [v26 setEnabled:v30];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v31 = sub_1000C13D4();
  v32 = sub_1000B7A50();
  if ((v31 & 0x1A) != 0)
  {
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v3;
    v48 = sub_1000C5894;
    v49 = v34;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_1000B4DF4;
    v47 = &unk_1000F9AF0;
    v35 = _Block_copy(&aBlock);
    v36 = v3;

    [v33 animateWithDuration:4 delay:v35 options:0 animations:0.1 completion:0.0];
LABEL_22:
    _Block_release(v35);
    goto LABEL_23;
  }

  if (v31)
  {
    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v3;
    v48 = sub_1000C588C;
    v49 = v38;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_1000B4DF4;
    v47 = &unk_1000F9AA0;
    v35 = _Block_copy(&aBlock);
    v39 = v3;

    [v37 animateWithDuration:4 delay:v35 options:0 animations:0.2 completion:0.0];
    goto LABEL_22;
  }

LABEL_23:
  v40 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v32);
  v41 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v40);
  (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v41);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
}

id sub_1000C4294(char a1, double a2)
{
  v3 = v2;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  if ((a1 & 1) != 0 && ([*&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton] alpha], v18 != a2))
  {
    sub_10000827C(0, &qword_1001159B0);
    v29 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v12 + 8);
    v28(v15, v11);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000C57F8;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B4DF4;
    aBlock[3] = &unk_1000F9B90;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    v27[1] = sub_10003FB94();
    sub_1000040E8(&unk_1001159C0);
    sub_10000A8E8(&qword_1001178C0, &unk_1001159C0);
    v25 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v29;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v33 + 8))(v7, v25);
    (*(v31 + 8))(v10, v32);
    return (v28)(v17, v11);
  }

  else
  {
    result = [*&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton] alpha];
    if (v20 != a2)
    {
      sub_10000827C(0, &unk_1001159D0);
      v21 = static UIFocusSystem.focusSystem(for:)();
      if (v21)
      {
        v22 = v21;
        if ([v21 focusedItem])
        {
          swift_unknownObjectRelease();
          [v3 _setNeedsNonDeferredFocusUpdate];
        }
      }

      return [v3 setNeedsFocusUpdate];
    }
  }

  return result;
}

void sub_1000C4734()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000827C(0, &unk_1001159D0);
    v2 = static UIFocusSystem.focusSystem(for:)();
    if (v2)
    {
      v3 = v2;
      if ([v2 focusedItem])
      {
        swift_unknownObjectRelease();
        [v1 _setNeedsNonDeferredFocusUpdate];
      }
    }

    [v1 setNeedsFocusUpdate];
  }
}

void sub_1000C47F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan);
  sub_10000827C(0, &unk_1001178A0);
  v2 = v1;
  CAFPositioned.layoutKey.getter();
}

char *sub_1000C487C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_100117A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C4988(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000040E8(&qword_100118258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_1000040E8(&unk_100118260);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_1000040E8(&unk_100118260);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&unk_100118260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C4B08(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000040E8(&unk_100118248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_1000040E8(&qword_100115820);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_1000040E8(&qword_100115820);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&qword_100115820);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C4C88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_1001182A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C4DDC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000040E8(&unk_100118280);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&qword_1001179F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C4F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_1001182D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C5040(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000040E8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1000C5174(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&qword_100118278);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000C5268(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000040E8(&unk_1001179E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&qword_100118270);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000C539C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v3 = *&v2[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v3)
  {

    v5 = v3(v4);
    sub_100003380(v3);
    if ((v5 & 0x10) != 0)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = (v5 & 8) == 0;
LABEL_6:
  [v2 setEnabled:v6];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v7 = sub_1000C13D4();
  v8 = sub_1000B7A50();
  if ((v7 & 0x1A) != 0)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v22 = sub_1000C5748;
    v23 = v10;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1000B4DF4;
    v21 = &unk_1000F9A50;
    v11 = _Block_copy(&v18);
    v12 = v1;

    [v9 animateWithDuration:4 delay:v11 options:0 animations:0.1 completion:0.0];
LABEL_10:
    _Block_release(v11);
    goto LABEL_11;
  }

  if (v7)
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v22 = sub_1000C5728;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1000B4DF4;
    v21 = &unk_1000F9A00;
    v11 = _Block_copy(&v18);
    v15 = v1;

    [v13 animateWithDuration:4 delay:v11 options:0 animations:0.2 completion:0.0];
    goto LABEL_10;
  }

LABEL_11:
  v16 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v8);
  v17 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v16);
  (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v17);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
}

uint64_t sub_1000C56F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C5730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C5758(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100118240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C57C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000C58D0(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000C6FAC(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1000C5950(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100050B88(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100050B88(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000C703C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100050B88(v3, v5, v2 != 0);
  return v12;
}

Swift::Int sub_1000C5A6C(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(3uLL);
      v6 = a1;
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        v6 = 4;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }

    Hasher._combine(_:)(v6);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_1000C5B40()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      Hasher._combine(_:)(3uLL);
      v3 = v1;
    }

    else if (v1 | v2)
    {
      if (v1 ^ 1 | v2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }

    Hasher._combine(_:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);

    String.hash(into:)();
  }
}

Swift::Int sub_1000C5BF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      Hasher._combine(_:)(3uLL);
      v4 = v1;
    }

    else if (v1 | v2)
    {
      if (v1 ^ 1 | v2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_1000C5D28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
  if (v3)
  {
    [v3 setRootViewController:*(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController)];
    v3 = *(v0 + v2);
  }

  [v3 makeKeyAndVisible];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 delegate];

    if (v5)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v6 = sub_1000AF438();
      swift_unknownObjectRelease();
      v7 = *(v1 + v2);
      v9 = *&v6[OBJC_IVAR____TtC7Climate18ClimateCoordinator_appWindow];
      *&v6[OBJC_IVAR____TtC7Climate18ClimateCoordinator_appWindow] = v7;
      v8 = v7;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000C5E7C()
{
  v1 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
  if (v2 && (v3 = [v2 windowScene]) != 0 && (v4 = v3, v5 = objc_msgSend(v3, "screen"), v4, v5))
  {
    [v5 scale];
  }

  else
  {
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v7 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543618;
      v10 = *(v0 + v1);
      *(v8 + 4) = v10;
      *v9 = v10;
      *(v8 + 12) = 2114;
      v11 = v10;
      if (v10)
      {
        v12 = [v11 windowScene];
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v8 + 14) = v12;
      v9[1] = v13;
      _os_log_impl(&_mh_execute_header, v7, v6, "Unable to resolve the screen.  window=%{public}@ windowScene=%{public}@", v8, 0x16u);
      sub_1000040E8(&unk_1001149E0);
      swift_arrayDestroy();
    }
  }
}

void sub_1000C604C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000C6848(a3);
  }
}

void sub_1000C61B0(void *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v5 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = a1;
    *v7 = a1;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v5, v4, "Scene did disconnect scene: %{public}@", v6, 0xCu);
    sub_100008904(v7, &unk_1001149E0);
  }

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v11 = sub_1000AF438();
    swift_unknownObjectRelease();
    v12 = sub_1000445A4(v2);

    v13 = *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController];
    *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController] = v12;
    v14 = v12;

    sub_1000C5D28();
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      sub_10000827C(0, &unk_100118420);
      v17 = a1;
      v18 = NSString.init(stringLiteral:)();
      sub_1000040E8(&qword_100115728);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000D5970;
      *(v19 + 56) = type metadata accessor for ClimateSceneDelegate();
      *(v19 + 64) = sub_1000C8D74();
      *(v19 + 32) = v2;
      v20 = v2;
      v21 = NSString.init(format:_:)();

      [v16 _unregisterSettingsDiffActionArrayForKey:v21];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000C6548(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v7 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v2 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_wereSteppersHidden) = (v14 & 1) == 0;
  v8 = [a1 _FBSScene];
  v9 = [v8 settings];

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 deactivationReasons];

    if ((v11 & 0x10) != 0)
    {
      return;
    }
  }

  else
  {
  }

  v12 = [v4 sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

void sub_1000C6848(void *a1)
{
  v2 = v1;
  if ([a1 hasPhysicalControlBars])
  {
    type metadata accessor for ClimatePhysicalControlBarsViewController();
    if (swift_dynamicCastClass())
    {
      return;
    }

    v3 = &v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v4 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v5 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8];
    *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type] = xmmword_1000D9B60;
  }

  else
  {
    type metadata accessor for ClimateOverlayViewController(0);
    if (swift_dynamicCastClass())
    {
      return;
    }

    v3 = &v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v4 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v5 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8];
    *v3 = 0;
    *(v3 + 1) = 0;
  }

  v6 = v3[16];
  v3[16] = 2;
  sub_10000E1FC(v4, v5, v6);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v9 = sub_1000AF438();
    swift_unknownObjectRelease();
    v10 = *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window];
    if (v10)
    {
      v11 = [v10 windowScene];
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_100043688(v2, v11);

    if (v12)
    {
      v13 = *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController];
      *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController] = v12;
      v14 = v12;

      sub_1000C5D28();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000C6A9C()
{
  *&v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window] = 0;
  v1 = &v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  *v1 = xmmword_1000D9B70;
  v1[16] = 0;
  v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_wereSteppersHidden] = 0;
  v2 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController;
  v3 = type metadata accessor for ClimateRoleViewController();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC7Climate25ClimateRoleViewController_role];
  *v5 = 0x74657320746F6ELL;
  *(v5 + 1) = 0xE700000000000000;
  v9.receiver = v4;
  v9.super_class = v3;
  *&v0[v2] = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  v6 = &v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_cancellables] = &_swiftEmptySetSingleton;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ClimateSceneDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_1000C6BC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C6D7C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000C6D98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000C6DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C6DF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C6E38(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1000C6E64()
{
  result = qword_1001183F8;
  if (!qword_1001183F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001183F8);
  }

  return result;
}

uint64_t sub_1000C6EBC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000C6F3C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void *sub_1000C6FAC(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1000C703C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000827C(0, &qword_100118408);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000827C(0, &qword_100118408);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1000C7260(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a4 == a1;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 2 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000C7334(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = a2;
  if (__OFADD__(a2, 4))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v3 = a1;
  if (a1)
  {
    v4 = a2 + 4 < v3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  v6 = __OFADD__(v3, 4);
  v7 = v3 + 4;
  if (v6)
  {
    goto LABEL_27;
  }

  if (v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= v2)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

void sub_1000C73F8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v94 - v7;
  v9 = sub_1000040E8(&unk_100118440);
  v102 = *(v9 - 8);
  v103 = v9;
  __chkstk_darwin(v9);
  v11 = &v94 - v10;
  v12 = sub_1000040E8(&unk_1001166D0);
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v94 - v15;
  v100 = a2;
  v17 = [a2 persistentIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = &v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier];
  *v21 = v18;
  v21[1] = v20;

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v96 = v8;
  v97 = v16;
  v98 = v13;
  v99 = v12;
  v104 = a1;
  CAFSignpostEmit_Scene();
  v24 = [objc_allocWithZone(UIWindow) initWithWindowScene:v23];
  v25 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window;
  v26 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window];
  *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window] = v24;

  [v104 _safeAreaInsetsForInterfaceOrientation:1];
  v29 = sub_1000C7334(v27, v28);
  v30 = objc_opt_self();
  v31 = [v30 sharedApplication];
  v32 = [v31 delegate];

  if (!v32)
  {
    __break(1u);
    goto LABEL_41;
  }

  v101 = type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v33 = sub_1000AF438();
  swift_unknownObjectRelease();
  v33[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar] = v29 & 1;

  v34 = [v104 _FBSScene];
  v35 = [v34 settings];

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v95 = v36;
    v100 = v35;
    v37 = [v30 sharedApplication];
    v38 = [v37 delegate];

    if (v38)
    {
      swift_dynamicCastClassUnconditional();
      v39 = sub_1000AF438();
      swift_unknownObjectRelease();
      v40 = *&v3[v25];
      v41 = *&v39[OBJC_IVAR____TtC7Climate18ClimateCoordinator_overlayWindow];
      *&v39[OBJC_IVAR____TtC7Climate18ClimateCoordinator_overlayWindow] = v40;
      v42 = v40;

      v43 = [v104 _FBSScene];
      [v43 addObserver:v3];

      v44 = [v30 sharedApplication];
      v45 = [v44 delegate];

      if (v45)
      {
        swift_dynamicCastClassUnconditional();
        v46 = sub_1000AF438();
        swift_unknownObjectRelease();

        dispatch thunk of CAUAssetLibraryManager.$slimAssetLibrary.getter();

        v47 = [objc_opt_self() mainRunLoop];
        v105 = v47;
        v48 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v49 = v96;
        (*(*(v48 - 8) + 56))(v96, 1, 1, v48);
        sub_10000827C(0, &unk_1001166E0);
        sub_10000A8E8(&qword_100117260, &unk_100118440);
        sub_10002879C(&qword_1001166F0, &unk_1001166E0);
        v50 = v97;
        v51 = v103;
        Publisher.receive<A>(on:options:)();
        sub_100008904(v49, &unk_1001166C0);

        (*(v102 + 8))(v11, v51);
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        v54 = v95;
        *(v53 + 16) = v52;
        *(v53 + 24) = v54;
        sub_10000A8E8(&qword_1001166F8, &unk_1001166D0);
        v55 = v100;
        v56 = v99;
        Publisher<>.sink(receiveValue:)();

        (*(v98 + 8))(v50, v56);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v103 = v29;

  v57 = [objc_allocWithZone(UIWindow) initWithWindowScene:v23];
  v58 = *&v3[v25];
  *&v3[v25] = v57;
  v59 = v57;

  if (v59)
  {
    [v59 setAutoresizesSubviews:1];
  }

  v60 = *&v3[v25];
  v61 = v100;
  if (v60)
  {
    [v60 setAutoresizingMask:18];
    v60 = *&v3[v25];
  }

  [v60 makeKeyAndVisible];
  v62 = *&v3[v25];
  if (v62)
  {
    [v62 setOverrideUserInterfaceStyle:2];
    v63 = *&v3[v25];
    if (v63)
    {
      [v63 setHidden:0];
    }
  }

  v64 = [v61 role];
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {

LABEL_20:
    v70 = &stru_100102000;
    v71 = *&v3[v25];
    v72 = &stru_100102000;
    if (v71 && ([v71 frame], v73 > 243.0))
    {
      v74 = 0;
      v75 = 1;
      v76 = 2;
    }

    else
    {
      v74 = 0;
      v76 = v103 & 1;
      v75 = 1;
    }

    goto LABEL_31;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {

    goto LABEL_20;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;
  if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
  {
  }

  else
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v81 & 1) == 0)
    {
      v82 = [v61 role];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v83;

      v75 = 0;
      goto LABEL_30;
    }
  }

  v74 = 0;
  v76 = 2;
  v75 = 2;
LABEL_30:
  v70 = &stru_100102000;
  v72 = &stru_100102000;
LABEL_31:
  v84 = &v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  v85 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  v86 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8];
  *v84 = v76;
  *(v84 + 1) = v74;
  v87 = v84[16];
  v84[16] = v75;
  sub_10000E1FC(v85, v86, v87);
  v88 = [v30 v72[121].offs];
  v89 = [v88 v70[121].name];

  if (!v89)
  {
LABEL_43:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  v90 = sub_1000AF438();
  swift_unknownObjectRelease();
  v91 = sub_100043688(v3, 0);

  if (v91)
  {
    v92 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController];
    *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController] = v91;
    v103 = v91;

    sub_1000C5D28();
    v93 = v103;
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v93 = v104;
  }
}

void sub_1000C7EF0()
{
  if (*(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_wereSteppersHidden) == 1)
  {
    v1 = [objc_opt_self() sharedApplication];
    v2 = [v1 delegate];

    if (v2)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000C7FD8(void *a1)
{
  v2 = [a1 _FBSScene];
  v3 = [v2 settings];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = [a1 session];
    v7 = [v6 role];

    v5 = v7;
  }

  v8 = v5;
  CAFSignpostEmit_SceneWillEnterForeground();
}

void sub_1000C80E0(void *a1)
{
  v3 = sub_1000040E8(&unk_100115120);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v39 - v5;
  v40 = [a1 settings];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController);
    type metadata accessor for ClimateOverlayViewController(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v8 persistentElements];
      if (v13)
      {
        v14 = v13;
        [v13 integerValue];

        CAUPersistentElements.init(rawValue:)();
        v15 = type metadata accessor for CAUPersistentElements();
        (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
      }

      else
      {
        v17 = type metadata accessor for CAUPersistentElements();
        (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      }

      v18 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
      swift_beginAccess();
      sub_1000C8DC8(v6, v11 + v18);
      swift_endAccess();
      sub_10001C62C();
      sub_100008904(v6, &unk_100115120);
      v19 = [objc_opt_self() sharedApplication];
      v20 = [v19 delegate];

      if (!v20)
      {
        __break(1u);
        goto LABEL_28;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v21 = sub_1000AF438();
      swift_unknownObjectRelease();

      sub_100027940(v8);
    }

    v22 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v23 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v22))
    {
      v24 = v40;
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      *(v25 + 4) = [v8 deactivationReasons];

      _os_log_impl(&_mh_execute_header, v23, v22, "Scene settings updated, deactivation reasons: %{public}lu", v25, 0xCu);
    }

    v26 = [v8 deactivationReasons];
    v27 = objc_opt_self();
    v28 = [v27 sharedApplication];
    v29 = [v28 delegate];

    if (v26 != 128)
    {
      if (v29)
      {
        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        v35 = sub_1000AF438();
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();
        v37 = static Published.subscript.modify();
        if ((*v36 & 2) == 0)
        {
          v38 = *v36 | 2;
          goto LABEL_25;
        }

LABEL_26:
        v37(v41, 0);

        return;
      }

      goto LABEL_29;
    }

    if (v29)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v30 = sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = static Published.subscript.modify();
      if ((*v31 & 2) != 0)
      {
        *v31 &= ~2uLL;
      }

      v32(v41, 0);

      v33 = [v27 sharedApplication];
      v34 = [v33 delegate];

      if (v34)
      {
        swift_dynamicCastClassUnconditional();
        v35 = sub_1000AF438();
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();
        v37 = static Published.subscript.modify();
        if ((*v36 & 1) == 0)
        {
          v38 = *v36 | 1;
LABEL_25:
          *v36 = v38;
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v16 = v40;
}

void sub_1000C86F4(uint64_t a1)
{
  v3 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v16 = sub_1000C5950(a1);
  if (v16)
  {
    v46 = v1;
    v17 = v16;
    v18 = [v16 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 32))(v15, v12, v9);
    sub_100096B2C(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v10 + 8))(v15, v9);
      sub_100008904(v5, &qword_100115840);
      goto LABEL_18;
    }

    v45 = v7;
    (*(v7 + 32))(v47, v5, v6);
    v19 = objc_opt_self();
    v20 = [v19 sharedApplication];
    v21 = [v20 delegate];

    if (v21)
    {
      v22 = type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v23 = sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v24 = v48;
      if (v48)
      {
        v42 = v19;
        v43 = v22;
        v44 = v6;
        v26 = v49;
        v25 = v50;
        v27 = v51;
        if (*(v51 + 16))
        {
          v28 = sub_10007DEE8(v47);
          if (v29)
          {
            v41 = *(*(v27 + 56) + 8 * v28);

            sub_1000081D8(v24, v26, v25);
            v30 = v42;
            v31 = [v42 sharedApplication];
            v32 = [v31 delegate];

            if (v32)
            {
              swift_dynamicCastClassUnconditional();
              sub_1000AF438();
              swift_unknownObjectRelease();
              swift_getKeyPath();
              swift_getKeyPath();
              v48 = 0;
              static Published.subscript.setter();
              v33 = v45;
              v34 = *(v46 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
              v35 = v44;
              if (v34)
              {
                v36 = [v34 rootViewController];
                if (v36)
                {
                  v37 = v36;
                  objc_opt_self();
                  v38 = swift_dynamicCastObjCClass();
                  if (v38)
                  {
                  }
                }
              }

              v39 = [v30 sharedApplication];
              v40 = [v39 delegate];

              if (v40)
              {
                swift_dynamicCastClassUnconditional();
                sub_1000AF438();
                swift_unknownObjectRelease();
                swift_getKeyPath();
                swift_getKeyPath();
                v48 = v41;
                static Published.subscript.setter();
                (*(v33 + 8))(v47, v35);
                (*(v10 + 8))(v15, v9);
                return;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            return;
          }
        }

        sub_1000081D8(v24, v26, v25);
        v6 = v44;
      }

      (*(v45 + 8))(v47, v6);
      (*(v10 + 8))(v15, v9);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_18:
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
}

unint64_t sub_1000C8D74()
{
  result = qword_100118430;
  if (!qword_100118430)
  {
    type metadata accessor for ClimateSceneDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118430);
  }

  return result;
}

uint64_t sub_1000C8DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100115120);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8E38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C8E70()
{

  return _swift_deallocObject(v0, 32, 7);
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = Measurement._bridgeToObjectiveC()();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String __swiftcall CAFVent.symbolName(useRightFacingSeat:)(Swift::Bool useRightFacingSeat)
{
  v1 = CAFVent.symbolName(useRightFacingSeat:)(useRightFacingSeat);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}