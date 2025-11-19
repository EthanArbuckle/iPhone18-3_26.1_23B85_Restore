void sub_1000598A0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong isEnabled])
    {
      sub_100057B18();
      [a3 setFanLevel:v5[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_currentValue]];
      sub_100059C30();
    }
  }
}

void sub_1000599BC()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5D90;
  v4 = [v1 leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

uint64_t sub_100059C30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_autoModeGlyph];
  if (v2)
  {
    v3 = v2;
    [v3 setHidden:(sub_10005808C() & 0x1A) != 2];
  }

  sub_1000C10C4();
  [v0 setEnabled:sub_10005808C() < 8];
  sub_100059E20();
  ClimateButton.refreshColorConfig()();
  v4 = *&v0[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView];
  v5 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v6 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
  v7 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
  v8 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v9 = v6;

  v10 = sub_10005808C();
  v11 = sub_10007E990(v10, v9, v7);

  v12 = [v5[1] colorWithAlphaComponent:0.25];
  v13 = v5[1];
  v14 = *((swift_isaMask & *v4) + 0xD0);
  v15 = v13;
  v14(v11, v12, v13, &_swiftEmptyDictionarySingleton);
  ClimateButton.createEdgeInsets()();
  if (sub_10005808C() > 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = [*&v1[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_seatFan] fanLevel];
  }

  v1[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_currentValue] = v16;
  return (*((swift_isaMask & *v4) + 0x88))();
}

void sub_100059E20()
{
  if ((sub_10005808C() & 0x1B) == 1)
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

  v7 = sub_10005808C();
  if ((v7 & 0x19) == 1)
  {
    if ((v7 & 2) != 0)
    {
      v8 = [objc_opt_self() systemOrangeColor];
    }

    else
    {
      if (qword_100113E90 != -1)
      {
        swift_once();
      }

      v8 = qword_10011AFA8;
    }

    v12 = v8;
    v13 = v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
    v14 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16);
    v15 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor);

    v16 = v12;
    sub_1000A70A8(v15, v16, v14);

    v17 = *(v13 + 8);
    v18 = *(v13 + 16);
    v19 = *v13;
    v11 = v17;

    sub_10007A4CC(v19, v11, v18);
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8);
    v10 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 16);
    v19 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor);
    v11 = v9;

    sub_10007A4CC(v19, v11, v10);
  }
}

uint64_t sub_10005A014()
{
  ClimateButton.refreshColorConfig()();
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView);
  v2 = v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v5 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v6 = v3;

  v7 = sub_10005808C();
  v8 = sub_10007E990(v7, v6, v4);

  v9 = [*(v2 + 8) colorWithAlphaComponent:0.25];
  v10 = *(v2 + 8);
  v11 = *((swift_isaMask & *v1) + 0xD0);
  v12 = v10;
  return v11(v8, v9, v10, &_swiftEmptyDictionarySingleton);
}

void sub_10005A118()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_autoModeGlyph);
}

id sub_10005A17C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSeatFanServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateSeatFanServiceButton()
{
  result = qword_1001162A8;
  if (!qword_1001162A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A2E4@<X0>(uint64_t a1@<X8>)
{
  sub_10000827C(0, &unk_100116360);
  CAFPositionedRequired.layoutKey.getter();
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_10005A418()
{
  result = qword_100116318;
  if (!qword_100116318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116318);
  }

  return result;
}

unint64_t sub_10005A46C(uint64_t a1)
{
  result = sub_10005A494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10005A494()
{
  result = qword_100116358;
  if (!qword_100116358)
  {
    type metadata accessor for ClimateSeatFanServiceButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116358);
  }

  return result;
}

uint64_t sub_10005A4EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A524()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10005A658()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView);
    type metadata accessor for ClimateCarView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(*(v4 + OBJC_IVAR____TtC7Climate14ClimateCarView_positionViews) + OBJC_IVAR____TtC7Climate20ClimatePositionViews_positions);
      v28 = _swiftEmptyArrayStorage;
      if (v5 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v27 = v3;

        if (!i)
        {
          break;
        }

        v7 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v3 = v8;
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v10 = *&v8[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v3 = &v28;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          ++v7;
          if (v9 == i)
          {
            v11 = v28;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

      v11 = _swiftEmptyArrayStorage;
LABEL_18:

      sub_1000040E8(&unk_100114770);
      v1 = swift_allocObject();
      *(v1 + 1) = xmmword_1000D58A0;
      v12 = sub_100081DFC();
      v13 = *&v12[OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView];

      v14 = [v13 arrangedSubviews];
      sub_10000827C(0, &qword_100115400);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v15 >> 62)
      {
        sub_1000040E8(&unk_1001163C0);
        _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      }

      v16 = objc_allocWithZone(_UIFocusLinearMovementSequence);
      sub_1000040E8(&unk_1001163C0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v18 = [v16 initWithItems:isa loops:0 restrictEnteringSequence:0];

      v1[4] = v18;

      if (v11 >> 62)
      {
        v19 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v19 = v11;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5DA0;
      v21 = *&v2[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton];
      *(inited + 32) = v21;
      v28 = v19;
      v22 = v21;
      sub_1000B7830(inited);
      v23 = objc_allocWithZone(_UIFocusLinearMovementSequence);
      v24 = Array._bridgeToObjectiveC()().super.isa;

      v25 = [v23 initWithItems:v24 loops:0 restrictEnteringSequence:0];

      v1[5] = v25;
    }

    else
    {
    }
  }

  return v1;
}

id sub_10005ABA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAppView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id ClimateFocusGuide.__allocating_init(identifier:view:preferredFocusEnvironments:isDebug:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  v14 = &v13[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  *v14 = 0;
  v14[1] = 0;
  *&v13[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
  v13[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = a5;
  *v14 = a6;
  v14[1] = a7;
  sub_10001B054(a6);
  v21.receiver = v13;
  v21.super_class = v8;
  v15 = objc_msgSendSuper2(&v21, "init");
  v16 = String._bridgeToObjectiveC()();

  [v15 setIdentifier:v16];

  sub_1000040E8(&unk_1001150F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPreferredFocusEnvironments:isa];

  [a3 addLayoutGuide:v15];
  if (a5)
  {
    v18 = objc_allocWithZone(type metadata accessor for ClimateFocusGuideDebugView());
    v19 = sub_10005ADFC(v15);
    [a3 addSubview:v19];
    sub_100003380(a6);

    swift_unknownObjectWeakAssign();
    a3 = v19;
  }

  else
  {
    sub_100003380(a6);
  }

  return v15;
}

id sub_10005ADFC(void *a1)
{
  [a1 layoutFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for ClimateFocusGuideDebugView();
  v11 = objc_msgSendSuper2(&v22, "initWithFrame:", v4, v6, v8, v10);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 greenColor];
  v15 = [v14 colorWithAlphaComponent:0.05];

  [v13 setBackgroundColor:v15];
  v16 = [v13 layer];
  v17 = [v12 greenColor];
  v18 = [v17 colorWithAlphaComponent:0.3];

  v19 = [v18 CGColor];
  [v16 setBorderColor:v19];

  v20 = [v13 layer];
  [v20 setBorderWidth:1.0];

  return v13;
}

id ClimateFocusGuide.isEnabled.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateFocusGuide();
  return objc_msgSendSuper2(&v2, "isEnabled");
}

void ClimateFocusGuide.isEnabled.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ClimateFocusGuide();
  objc_msgSendSuper2(&v5, "setEnabled:", a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setHidden:{objc_msgSend(v1, "isEnabled") ^ 1}];
  }
}

void sub_10005B210(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = a1;
  v2 = objc_opt_self();
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints:isa];

  v4 = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:v4];

  if (v1[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = [Strong superview];

      if (v7)
      {
        v8 = swift_unknownObjectWeakLoadStrong();
        [v8 removeFromSuperview];

        v9 = objc_allocWithZone(type metadata accessor for ClimateFocusGuideDebugView());
        v10 = sub_10005ADFC(v1);
        [v7 addSubview:v10];

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

id ClimateFocusGuide.init(identifier:view:preferredFocusEnvironments:isDebug:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectWeakInit();
  v12 = &v7[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  *v12 = 0;
  v12[1] = 0;
  *&v7[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
  v7[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = a5;
  *v12 = a6;
  v12[1] = a7;
  sub_10001B054(a6);
  v19.receiver = v7;
  v19.super_class = type metadata accessor for ClimateFocusGuide();
  v13 = objc_msgSendSuper2(&v19, "init");
  v14 = String._bridgeToObjectiveC()();

  [v13 setIdentifier:v14];

  sub_1000040E8(&unk_1001150F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setPreferredFocusEnvironments:isa];

  [a3 addLayoutGuide:v13];
  if (a5)
  {
    v16 = objc_allocWithZone(type metadata accessor for ClimateFocusGuideDebugView());
    v17 = sub_10005ADFC(v13);
    [a3 addSubview:v17];
    sub_100003380(a6);

    swift_unknownObjectWeakAssign();
    a3 = v17;
  }

  else
  {
    sub_100003380(a6);
  }

  return v13;
}

Swift::Void __swiftcall ClimateFocusGuide._didUpdateFocusToPreferredFocusedView()()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ClimateFocusGuide();
  objc_msgSendSuper2(&v13, "_didUpdateFocusToPreferredFocusedView");
  v1 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v2 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446210;
    v5 = [v0 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = sub_10000835C(v6, v8, &v12);

    *(v3 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v1, "%{public}s focus guide used", v3, 0xCu);
    sub_100006B9C(v4);
  }

  v10 = *&v0[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  if (v10)
  {

    v10(v11);
    sub_100003380(v10);
  }
}

id sub_10005B8EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005B984()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel);
  v2 = [v1 heatingCoolingLevel];
  v3 = [v1 autoMode];
  v4 = [v1 heatingCoolingLevelRestricted];
  v5 = [v1 heatingCoolingLevelInvalid];
  v6 = [v1 heatingCoolingLevelDisabled];
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

void sub_10005BAB8(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_currentValue);
  *(v1 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_currentValue) = a1;
  if (v2 != a1)
  {
    if (!v2)
    {
      *(v1 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_isInPositiveRange) = a1 >= 0;
    }

    v3 = *(v1 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_progressCircle);
    v4 = *((swift_isaMask & *v3) + 0x70);
    if (*(v3 + v4) != a1)
    {
      *(v3 + v4) = a1;
      sub_10009D494(1);
    }
  }
}

char *sub_10005BB50(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_currentValue] = 0;
  v4 = OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_autoModeGlyph;
  *&v2[v4] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel] = a1;
  v5 = a1;
  v6 = [v5 heatingCoolingLevelRange];
  v7 = [v5 heatingCoolingLevel];
  v2[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_isInPositiveRange] = v7 >= 0;
  v8 = v6;
  v9 = [v8 minimum];
  [v9 floatValue];
  v11 = v10;

  v12 = [v8 maximum];
  [v12 floatValue];
  v14 = v13;

  v15 = objc_allocWithZone(sub_1000040E8(&unk_100116540));
  v16 = sub_10009D144(v11, v14, 38.0, 2.0);
  v17 = OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_progressCircle;
  *&v2[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_progressCircle] = v16;
  v18 = v16;
  v19 = [v5 heatingCoolingLevel];
  v20 = *((swift_isaMask & *v18) + 0x70);
  if (*(v18 + v20) != v19)
  {
    *(v18 + v20) = v19;
    sub_10009D494(0);
  }

  v21 = qword_100113EB0;
  v22 = *&v2[v17];
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_10011AFC8;
  v24 = qword_10011AFC8;
  sub_10009E008(v23);

  v55.receiver = v2;
  v55.super_class = type metadata accessor for ClimateSteeringWheelButton();
  v25 = objc_msgSendSuper2(&v55, "init");
  v26 = &v25[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v27 = *v26;
  v28 = *(v26 + 1);
  *v26 = 0xD00000000000001CLL;
  *(v26 + 1) = 0x80000001000DCBF0;
  if (v28 && (v27 == 0xD00000000000001CLL && 0x80000001000DCBF0 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v29 = v25;
  }

  else
  {
    v30 = v25;
    ClimateButton.updateClimateConfiguration()();
  }

  [v5 registerObserver:v25];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v5;
  v33 = &v25[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v34 = *v33;
  *v33 = sub_10005CA5C;
  v33[1] = v32;
  v54 = v5;

  sub_100003380(v34);

  v35 = OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_progressCircle;
  [*&v25[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_progressCircle] setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = *&v25[v35];
  v37 = v25;
  [v37 addSubview:v36];
  v38 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000D5D90;
  v40 = [*&v25[v35] centerXAnchor];
  v41 = [v37 centerXAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v39 + 32) = v42;
  v43 = [*&v25[v35] centerYAnchor];
  v44 = [v37 centerYAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v39 + 40) = v45;
  v46 = [*&v25[v35] heightAnchor];
  v47 = [v37 heightAnchor];

  v48 = [v46 constraintEqualToAnchor:v47];
  *(v39 + 48) = v48;
  v49 = [*&v25[v35] widthAnchor];
  v50 = [v37 widthAnchor];

  v51 = [v49 constraintEqualToAnchor:v50];
  *(v39 + 56) = v51;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];

  sub_10006DF44();
  sub_10005C4F0();

  return v37;
}

void sub_10005C13C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10006CE28();
    [a3 setHeatingCoolingLevel:*&v5[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_currentValue]];
    sub_10005C4F0();
  }
}

void sub_10005C248()
{
  v1 = v0;
  ClimateButton.refreshColorConfig()();
  v2 = sub_10005B984();
  v3 = *&v0[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel];
  if ([v3 heatingCoolingLevel] >= 1)
  {
    if ((sub_10005B984() & 2) == 0)
    {
      if (qword_100113EA0 != -1)
      {
        swift_once();
      }

      v4 = qword_10011AFB8;
      goto LABEL_10;
    }

    v5 = [objc_opt_self() systemRedColor];
LABEL_9:
    v4 = v5;
    goto LABEL_10;
  }

  if (([v3 heatingCoolingLevel] & 0x80000000) == 0)
  {
    v5 = [objc_opt_self() labelColor];
    goto LABEL_9;
  }

  if ((sub_10005B984() & 2) != 0)
  {
    v5 = [objc_opt_self() systemBlueColor];
    goto LABEL_9;
  }

  if (qword_100113E98 != -1)
  {
    swift_once();
  }

  v4 = qword_10011AFB0;
LABEL_10:
  v6 = v4;
  sub_10009DF38(v4);

  if (v2)
  {
    if ((sub_10005B984() & 2) != 0)
    {
      if (qword_100113EA8 != -1)
      {
        swift_once();
      }

      v7 = qword_10011AFC0;
      v8 = [v1 traitCollection];
      v9 = [v7 resolvedColorWithTraitCollection:v8];

      sub_10009E008(v9);
    }

    else
    {
      if (qword_100113EB0 != -1)
      {
        swift_once();
      }

      v9 = qword_10011AFC8;
      sub_10009E008(v9);
    }
  }
}

void sub_10005C4F0()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_autoModeGlyph];
  if (v1)
  {
    v2 = v1;
    [v2 setHidden:(sub_10005B984() & 0x1A) != 2];
  }

  sub_1000C10C4();
  [v0 setEnabled:sub_10005B984() < 8];
  if ((sub_10005B984() & 0x1B) == 1)
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v4 = &v0[*v3];
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = *v4;
  v8 = v5;

  sub_10007A4CC(v7, v8, v6);

  sub_10005C248();
  ClimateButton.createEdgeInsets()();
  if (sub_10005B984() > 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&v0[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel] heatingCoolingLevel];
  }

  sub_10005BAB8(v9);
}

void sub_10005C624()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_autoModeGlyph);
}

id sub_10005C674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSteeringWheelButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateSteeringWheelButton()
{
  result = qword_100116478;
  if (!qword_100116478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005C85C()
{
  result = qword_1001164E8;
  if (!qword_1001164E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001164E8);
  }

  return result;
}

uint64_t sub_10005C8B0(uint64_t a1)
{
  result = sub_10005C9A0(&qword_100116528);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005C8F4(uint64_t a1)
{
  result = sub_10005C9A0(&qword_100116528);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005C938(uint64_t a1)
{
  *(a1 + 8) = sub_10005C9A0(&qword_100116530);
  result = sub_10005C9A0(&qword_100116538);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005C9A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClimateSteeringWheelButton();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005C9E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CA1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10005CA90(void *a1)
{
  *(v1 + OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for ClimateCompressorButton());
  sub_100002FA4(a1, 1u);
  *(v1 + OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_compressorButton) = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_cabin) = a1;
  v5 = a1;
  v6 = sub_10001414C(0, 0, 1);
  [v5 registerObserver:v6];
  [v6 addSubview:*&v6[OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_compressorButton]];
  sub_10005CBE4();
  v7 = [*&v6[OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_cabin] compressorOn];
  v6[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v7;
  sub_1000C10C4();
  [v6 setEnabled:(sub_100002014() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();

  return v6;
}

void sub_10005CBE4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5D90;
  v4 = *&v1[OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_compressorButton];
  v5 = [v4 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v3 + 56) = v16;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

void sub_10005CE58()
{
  v1 = [*&v0[OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_cabin] compressorOn];
  v0[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v1;
  sub_1000C10C4();
  [v0 setEnabled:(sub_100002014() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_10005CEE8()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_compressorButton);
}

id sub_10005CF38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateCompressorIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateCompressorIndicator()
{
  result = qword_100116578;
  if (!qword_100116578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005D080(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn;
  v6 = v2[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn];
  if (v6 == [a1 compressorOn])
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = [a1 receivedAllValues];
  v8 = static os_log_type_t.debug.getter();
  if (v7)
  {
    if (qword_100113F00 != -1)
    {
      v13 = v8;
      swift_once();
      v8 = v13;
    }

    v9 = qword_10011B1C0;
    v10 = v8;
    if (os_log_type_enabled(qword_10011B1C0, v8))
    {
      v11 = swift_slowAlloc();
      *v11 = 67240192;
      *(v11 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "Compressor indicator did update ON: %{BOOL,public}d", v11, 8u);
    }

    v2[v5] = [*&v2[OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_cabin] compressorOn];
    sub_1000C10C4();
    [v2 setEnabled:(sub_100002014() & 0x18) == 0];
    ClimateButton.refreshColorConfig()();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100065BEC();

      return swift_unknownObjectRelease();
    }

    return result;
  }

  if (qword_100113F00 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_15:

  return os_log(_:dso:log:_:_:)();
}

void sub_10005D3A4(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10005D5D0(&v10, a2);

      if (!v2)
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

void *sub_10005D498()
{
  v1 = OBJC_IVAR____TtC7Climate21ClimateSystemControls____lazy_storage___controls;
  if (*(v0 + OBJC_IVAR____TtC7Climate21ClimateSystemControls____lazy_storage___controls))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Climate21ClimateSystemControls____lazy_storage___controls);
  }

  else
  {
    v2 = sub_10005D500(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10005D500(uint64_t a1)
{
  v1 = 0;
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + OBJC_IVAR____TtC7Climate21ClimateSystemControls_climate);
  do
  {
    v5 = sub_10005F8E4(*(&off_1000F6818 + v1 + 32), v2);
    if (v5 >> 62)
    {
      v3 = v5;
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v3;
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_3:
      sub_10005D3A4(v5, &v7);
      goto LABEL_4;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_4:
    ++v1;
  }

  while (v1 != 7);
  return v7;
}

uint64_t sub_10005D5D0(id *a1, void *a2)
{
  v3 = *a1;
  [*a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 _setContinuousCornerRadius:22.0];
  v4 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D58A0;
  v6 = [v3 heightAnchor];
  v7 = [v6 constraintEqualToConstant:44.0];

  *(v5 + 32) = v7;
  v8 = [v3 widthAnchor];
  v9 = [v3 heightAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v5 + 40) = v10;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  v12 = v3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

id sub_10005D7BC(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Climate21ClimateSystemControls____lazy_storage___controls] = 0;
  v3 = OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView;
  type metadata accessor for ClimateFocusStackView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC7Climate21ClimateSystemControls_areButtonsAlreadyVisible] = 0;
  *&v1[OBJC_IVAR____TtC7Climate21ClimateSystemControls_climate] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ClimateSystemControls();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:{0, v7.receiver, v7.super_class}];

  return v5;
}

void sub_10005D938()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtC7Climate21ClimateSystemControls_areButtonsAlreadyVisible;
  if ((v0[OBJC_IVAR____TtC7Climate21ClimateSystemControls_areButtonsAlreadyVisible] & 1) != 0 || ([v0 bounds], CGRectGetHeight(v49) == 0.0))
  {
    v5 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v6 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v5))
    {
      v7 = v3;
      v8 = swift_slowAlloc();
      *v8 = 67240448;
      *(v8 + 4) = v3[v4];

      *(v8 + 8) = 2050;
      [v7 bounds];
      *(v8 + 10) = CGRectGetHeight(v50);
      _os_log_impl(&_mh_execute_header, v6, v5, "System control buttons already visible: %{BOOL,public}d, view height: %{public}f", v8, 0x12u);
    }

    return;
  }

  v0[v4] = 1;
  v9 = &selRef_maxDefrostOn;
  [v0 frame];
  v11 = (CGRectGetHeight(v51) + 4.0) / 48.0;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v1 = v11;
  v10 = sub_10005D498();
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_44:
  v2 = v10;
  v12 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:

  if (v12 >= v1)
  {
    v13 = v1;
  }

  else
  {
    v13 = v12;
  }

  [v3 frame];
  Height = CGRectGetHeight(v52);
  v15 = OBJC_IVAR____TtC7Climate21ClimateSystemControls____lazy_storage___controls;
  v16 = *&v3[OBJC_IVAR____TtC7Climate21ClimateSystemControls____lazy_storage___controls];
  v17 = v16 & 0xFFFFFFFFFFFFFF8;
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) > v1)
    {
      goto LABEL_20;
    }

LABEL_46:
    v24 = *&v3[v15];

    goto LABEL_47;
  }

  if (_CocoaArrayWrapper.endIndex.getter() <= v1)
  {
    goto LABEL_46;
  }

LABEL_20:
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *&v3[v15];
    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    v2 = v9 >> 62;
    if (!(v9 >> 62))
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v1)
      {
        goto LABEL_23;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  if (v9 < 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = v17;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v1)
  {
    goto LABEL_73;
  }

LABEL_23:
  if ((v9 & 0xC000000000000001) != 0)
  {
    if (v1)
    {
      type metadata accessor for ClimateButton();
      swift_bridgeObjectRetain_n();
      v18 = 0;
      do
      {
        v19 = v18 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v18);
        v18 = v19;
      }

      while (v1 != v19);
      if (v2)
      {
LABEL_33:

        v15 = _CocoaArrayWrapper.subscript.getter();
        v4 = v20;
        v2 = v21;
        v1 = v22;

        if ((v1 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_35:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
          swift_unknownObjectRelease();
          v25 = _swiftEmptyArrayStorage;
        }

        v26 = v25[2];

        if (!__OFSUB__(v1 >> 1, v2))
        {
          if (v26 == (v1 >> 1) - v2)
          {
            v24 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (!v24)
            {
              swift_unknownObjectRelease();
              v24 = _swiftEmptyArrayStorage;
            }

            goto LABEL_47;
          }

          goto LABEL_75;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        swift_unknownObjectRelease_n();
        goto LABEL_34;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      if (v2)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v2 = 0;
  v15 = v9 & 0xFFFFFFFFFFFFFF8;
  v4 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
  v1 = (2 * v1) | 1;
  if (v1)
  {
    goto LABEL_35;
  }

LABEL_34:
  sub_10005E478(v15, v4, v2, v1);
  v24 = v23;
  swift_unknownObjectRelease();
LABEL_47:
  if (v24 >> 62)
  {
    goto LABEL_65;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_10000827C(0, &qword_1001165D8);

  for (i = v24; ; v24 = i)
  {
    v46 = v13;
    v28 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView;
    if (!v28)
    {
      break;
    }

    v30 = 0;
    v13 = i & 0xC000000000000001;
    v31 = i & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v31 + 16))
        {
          goto LABEL_64;
        }

        v32 = *(v24 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      [*&v3[v29] addArrangedSubview:v32];

      ++v30;
      if (v34 == v28)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    sub_10000827C(0, &qword_1001165D8);

    i = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
  }

LABEL_60:

  v35 = *&v3[v29];
  [v3 addSubview:v35];
  [v35 setAxis:1];
  [v35 setSpacing:{fmin((Height + v46 * -44.0) / v46, 30.0)}];
  [v35 setAlignment:3];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000D5BB0;
  v38 = [v35 widthAnchor];
  v39 = [v38 constraintEqualToConstant:66.0];

  *(v37 + 32) = v39;
  v40 = [v35 centerXAnchor];
  v41 = [v3 centerXAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v37 + 40) = v42;
  v43 = [v35 centerYAnchor];
  v44 = [v3 centerYAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v37 + 48) = v45;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

void sub_10005E164()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate21ClimateSystemControls_climate);
}

id sub_10005E1B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSystemControls();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005E268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_10000801C();
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_10005E3FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10006BABC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10005E55C(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10005E478(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        type metadata accessor for ClimateButton();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000040E8(&unk_100114770);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
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

void sub_10005E55C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000827C(0, &qword_1001167B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10005E8C0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10005E670(0, v2, 1, a1);
  }
}

void sub_10005E670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  if (a3 != a2)
  {
    v12 = (v9 + 8);
    v36 = *a4;
    v13 = v36 + 8 * a3 - 8;
    v14 = a1 - a3;
LABEL_6:
    v34 = v13;
    v35 = a3;
    v15 = *(v36 + 8 * a3);
    v33 = v14;
    v16 = v13;
    while (1)
    {
      v38 = v14;
      v17 = *v16;
      v18 = v15;
      v19 = v17;
      v20 = v8;
      v21 = static CAUVehicleLayoutKey.defrostKeys.getter();
      sub_10000827C(0, &qword_1001167B0);
      v39 = v18;
      CAFPositionedRequired.layoutKey.getter();
      v37 = sub_10005E268(v11, v21);
      LOBYTE(v17) = v22;
      v8 = v20;

      v23 = *v12;
      (*v12)(v11, v20);
      if (v17)
      {

LABEL_5:
        a3 = v35 + 1;
        v13 = v34 + 8;
        v14 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = static CAUVehicleLayoutKey.defrostKeys.getter();
      CAFPositionedRequired.layoutKey.getter();
      v25 = sub_10005E268(v11, v24);
      v27 = v26;
      v8 = v20;

      v23(v11, v20);

      v28 = v38;
      if ((v27 & 1) != 0 || v37 >= v25)
      {
        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v29 = *v16;
      v15 = *(v16 + 8);
      *v16 = v15;
      *(v16 + 8) = v29;
      v16 -= 8;
      v30 = __CFADD__(v28, 1);
      v14 = v28 + 1;
      if (v30)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10005E8C0(void ***a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = v5;
  v131 = a4;
  v125 = a1;
  v9 = type metadata accessor for CAUVehicleLayoutKey();
  __chkstk_darwin(v9);
  v139 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_109:
    v6 = *v125;
    if (!*v125)
    {
      goto LABEL_148;
    }

    v4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v119 = v4;
LABEL_112:
      v145 = v119;
      v4 = *(v119 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v120 = *&v119[16 * v4];
          v121 = v119;
          v122 = *&v119[16 * v4 + 24];
          sub_10005F2D4(*a3 + 8 * v120, (*a3 + 8 * *&v119[16 * v4 + 16]), (*a3 + 8 * v122), v6);
          if (v7)
          {
            goto LABEL_120;
          }

          if (v122 < v120)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_10006B7AC(v121);
          }

          if (v4 - 2 >= *(v121 + 2))
          {
            goto LABEL_136;
          }

          v123 = &v121[16 * v4];
          *v123 = v120;
          *(v123 + 1) = v122;
          v145 = v121;
          sub_10006B720(v4 - 1);
          v119 = v145;
          v4 = *(v145 + 2);
          if (v4 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v119 = sub_10006B7AC(v4);
    goto LABEL_112;
  }

  v137 = (&v124 - v12);
  v15 = 0;
  v126 = v13;
  v130 = (v13 + 8);
  v16 = _swiftEmptyArrayStorage;
  v129 = a3;
  v144 = v9;
  while (2)
  {
    v17 = v15++;
    v132 = v16;
    v128 = v17;
    if (v15 >= v14)
    {
      v25 = v131;
      goto LABEL_34;
    }

    v142 = v14;
    v18 = *a3;
    v135 = v15;
    v19 = *(v18 + 8 * v15);
    v140 = v18;
    v20 = *(v18 + 8 * v17);
    v21 = v19;
    v141 = v20;
    v22 = static CAUVehicleLayoutKey.defrostKeys.getter();
    v6 = sub_10000827C(0, &qword_1001167B0);
    v23 = v137;
    v136 = v21;
    CAFPositionedRequired.layoutKey.getter();
    v134 = sub_10005E268(v23, v22);
    LOBYTE(v21) = v24;

    v4 = *v130;
    (*v130)(v23, v9);
    v143 = v6;
    if (v21)
    {

      LODWORD(v141) = 0;
    }

    else
    {
      v26 = static CAUVehicleLayoutKey.defrostKeys.getter();
      v27 = v141;
      CAFPositionedRequired.layoutKey.getter();
      v133 = sub_10005E268(v23, v26);
      v29 = v28;
      v30 = v144;

      (v4)(v23, v30);

      LODWORD(v141) = (v29 & 1) == 0 && v134 < v133;
    }

    v25 = v131;
    v15 = v135;
    v31 = v128 + 2;
    if (v128 + 2 >= v142)
    {
      goto LABEL_25;
    }

    v138 = v4;
    while (1)
    {
      v134 = v7;
      v135 = v31;
      v33 = *(v140 + 8 * v15);
      v6 = *(v140 + 8 * v31);
      v34 = v33;
      v35 = static CAUVehicleLayoutKey.defrostKeys.getter();
      CAFPositionedRequired.layoutKey.getter();
      v36 = *(v35 + 16);
      if (!v36)
      {
LABEL_19:

        v4 = v138;
        v138(v139, v144);

LABEL_20:
        v7 = v134;
        v15 = v135;
        a3 = v129;
        v25 = v131;
        v32 = v142;
        if (v141)
        {
          goto LABEL_26;
        }

        goto LABEL_14;
      }

      v37 = v35 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
      v38 = *(v126 + 72);
      sub_10000801C();
      v39 = 0;
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        ++v39;
        v37 += v38;
        if (v36 == v39)
        {
          goto LABEL_19;
        }
      }

      v4 = v138;
      v40 = v144;
      v138(v139, v144);
      v41 = static CAUVehicleLayoutKey.defrostKeys.getter();
      v42 = v137;
      CAFPositionedRequired.layoutKey.getter();
      v136 = sub_10005E268(v42, v41);
      v44 = v43;

      (v4)(v42, v40);

      if (v44)
      {
        goto LABEL_20;
      }

      v15 = v135;
      v7 = v134;
      a3 = v129;
      v25 = v131;
      v32 = v142;
      if (((v141 ^ (v39 >= v136)) & 1) == 0)
      {
        break;
      }

LABEL_14:
      v31 = v15 + 1;
      if ((v15 + 1) == v32)
      {
        v31 = v32;
        goto LABEL_25;
      }
    }

    v31 = v135;
LABEL_25:
    v15 = v31;
    if (v141)
    {
LABEL_26:
      v45 = v128;
      if (v15 < v128)
      {
        goto LABEL_139;
      }

      if (v128 < v15)
      {
        v46 = 8 * v15 - 8;
        v47 = 8 * v128;
        v48 = v15;
        do
        {
          if (v45 != --v48)
          {
            v50 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v49 = *(v50 + v47);
            *(v50 + v47) = *(v50 + v46);
            *(v50 + v46) = v49;
          }

          ++v45;
          v46 -= 8;
          v47 += 8;
        }

        while (v45 < v48);
      }
    }

LABEL_34:
    v51 = a3[1];
    if (v15 >= v51)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v15, v128))
    {
      goto LABEL_138;
    }

    if (v15 - v128 >= v25)
    {
LABEL_55:
      v53 = v128;
LABEL_56:
      if (v15 < v53)
      {
        goto LABEL_137;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v16 = v132;
      }

      else
      {
        v16 = sub_10006B7C0(0, *(v132 + 2) + 1, 1, v132);
      }

      v4 = *(v16 + 2);
      v74 = *(v16 + 3);
      v75 = v4 + 1;
      if (v4 >= v74 >> 1)
      {
        v16 = sub_10006B7C0((v74 > 1), v4 + 1, 1, v16);
      }

      *(v16 + 2) = v75;
      v76 = &v16[16 * v4];
      *(v76 + 4) = v128;
      *(v76 + 5) = v15;
      v6 = *v125;
      if (!*v125)
      {
        goto LABEL_147;
      }

      if (!v4)
      {
LABEL_3:
        v14 = a3[1];
        v9 = v144;
        if (v15 >= v14)
        {
          goto LABEL_109;
        }

        continue;
      }

      while (1)
      {
        v77 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v16 + 4);
          v79 = *(v16 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_76:
          if (v81)
          {
            goto LABEL_126;
          }

          v94 = &v16[16 * v75];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_129;
          }

          v100 = &v16[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_133;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v75 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v104 = &v16[16 * v75];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_90:
        if (v99)
        {
          goto LABEL_128;
        }

        v107 = &v16[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_131;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_97:
        v4 = v77 - 1;
        if (v77 - 1 >= v75)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v115 = v16;
        v116 = *&v16[16 * v4 + 32];
        v117 = *&v16[16 * v77 + 40];
        sub_10005F2D4(*a3 + 8 * v116, (*a3 + 8 * *&v16[16 * v77 + 32]), (*a3 + 8 * v117), v6);
        if (v7)
        {
          goto LABEL_120;
        }

        if (v117 < v116)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10006B7AC(v115);
        }

        if (v4 >= *(v115 + 2))
        {
          goto LABEL_123;
        }

        v118 = &v115[16 * v4];
        *(v118 + 4) = v116;
        *(v118 + 5) = v117;
        v145 = v115;
        sub_10006B720(v77);
        v16 = v145;
        v75 = *(v145 + 2);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v16[16 * v75 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_124;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_125;
      }

      v89 = &v16[16 * v75];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_127;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_130;
      }

      if (v93 >= v85)
      {
        v111 = &v16[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_134;
        }

        if (v80 < v114)
        {
          v77 = v75 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

    break;
  }

  v52 = v128 + v25;
  if (__OFADD__(v128, v25))
  {
    goto LABEL_140;
  }

  if (v52 >= v51)
  {
    v52 = a3[1];
  }

  if (v52 < v128)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v53 = v128;
  if (v15 == v52)
  {
    goto LABEL_56;
  }

  v127 = v52;
  v134 = v7;
  v136 = *a3;
  v54 = (v128 - v15);
  v55 = &v136[8 * v15 - 8];
  v56 = v130;
LABEL_46:
  v135 = v15;
  v58 = *&v136[8 * v15];
  v59 = v54;
  v133 = v55;
  v60 = v55;
  v138 = v54;
  while (1)
  {
    v141 = v59;
    v61 = *v60;
    v62 = v58;
    v143 = v61;
    v63 = static CAUVehicleLayoutKey.defrostKeys.getter();
    v4 = sub_10000827C(0, &qword_1001167B0);
    v6 = v137;
    v142 = v62;
    CAFPositionedRequired.layoutKey.getter();
    v64 = sub_10005E268(v6, v63);
    LOBYTE(v62) = v65;

    v66 = *v56;
    v67 = v144;
    (*v56)(v6, v144);
    if (v62)
    {

LABEL_44:
      v57 = v138;
LABEL_45:
      v15 = v135 + 1;
      v55 = (v133 + 8);
      v54 = v57 - 1;
      if (v135 + 1 == v127)
      {
        v15 = v127;
        v7 = v134;
        a3 = v129;
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    v68 = static CAUVehicleLayoutKey.defrostKeys.getter();
    v69 = v143;
    CAFPositionedRequired.layoutKey.getter();
    v4 = sub_10005E268(v6, v68);
    LODWORD(v140) = v70;

    v66(v6, v67);

    if (v140)
    {
      goto LABEL_44;
    }

    v57 = v138;
    if (v64 >= v4)
    {
      goto LABEL_45;
    }

    v71 = v141;
    if (!v136)
    {
      break;
    }

    v72 = *v60;
    v58 = *(v60 + 1);
    *v60 = v58;
    *(v60 + 1) = v72;
    v60 -= 8;
    v73 = __CFADD__(v71, 1);
    v59 = v71 + 1;
    if (v73)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

uint64_t sub_10005F2D4(uint64_t a1, void **a2, void **a3, void **a4)
{
  v7 = type metadata accessor for CAUVehicleLayoutKey();
  v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v59 - v11;
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v16 = a2 - v13;
  v17 = a2 - v13 + 7;
  if (a2 - v13 >= 0)
  {
    v17 = a2 - v13;
  }

  v18 = v17 >> 3;
  v72 = a3;
  v19 = a3 - a2;
  v20 = v19 / 8;
  if (v17 >> 3 >= v19 / 8)
  {
    v70 = v13;
    if (a4 != a2 || &a2[v20] <= a4)
    {
      memmove(a4, a2, 8 * v20);
    }

    v73 = &a4[v20];
    if (v19 >= 8 && a2 > v70)
    {
      v61 = (v64 + 8);
      v40 = v72;
      v71 = a4;
LABEL_30:
      v69 = a2;
      v41 = a2 - 1;
      v42 = v73;
      v62 = a2 - 1;
      do
      {
        v68 = v40;
        v72 = v40 - 1;
        v43 = *(v42 - 1);
        v65 = v42 - 1;
        v44 = *v41;
        v45 = v43;
        v67 = v44;
        v46 = static CAUVehicleLayoutKey.defrostKeys.getter();
        v63 = sub_10000827C(0, &qword_1001167B0);
        v66 = v45;
        CAFPositionedRequired.layoutKey.getter();
        v47 = *(v46 + 16);
        if (v47)
        {
          v48 = v46 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
          v49 = *(v64 + 72);
          sub_10000801C();
          v50 = 0;
          while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            ++v50;
            v48 += v49;
            if (v47 == v50)
            {
              goto LABEL_36;
            }
          }

          v51 = *v61;
          (*v61)(v9, v7);
          v52 = static CAUVehicleLayoutKey.defrostKeys.getter();
          v53 = v60;
          v54 = v67;
          CAFPositionedRequired.layoutKey.getter();
          v63 = sub_10005E268(v53, v52);
          v56 = v55;

          v51(v53, v7);

          if ((v56 & 1) == 0 && v50 < v63)
          {
            a4 = v71;
            v40 = v72;
            v57 = v62;
            if (v68 != v69)
            {
              *v72 = *v62;
            }

            if (v73 <= a4 || (a2 = v57, v57 <= v70))
            {
              a2 = v57;
              goto LABEL_48;
            }

            goto LABEL_30;
          }
        }

        else
        {
LABEL_36:

          (*v61)(v9, v7);
        }

        a4 = v71;
        v40 = v72;
        v41 = v62;
        v42 = v65;
        if (v68 != v73)
        {
          *v72 = *v65;
        }

        v73 = v42;
      }

      while (v42 > a4);
      v73 = v42;
      a2 = v69;
    }
  }

  else
  {
    v21 = v13;
    if (a4 != v13 || &v13[v18] <= a4)
    {
      memmove(a4, v13, 8 * v18);
    }

    v73 = &a4[v18];
    if (v16 >= 8 && a2 < v72)
    {
      v22 = a2;
      v65 = (v64 + 8);
      while (1)
      {
        v69 = v22;
        v70 = v21;
        v23 = *v22;
        v71 = a4;
        v24 = *a4;
        v25 = v23;
        v68 = v24;
        v26 = static CAUVehicleLayoutKey.defrostKeys.getter();
        v66 = sub_10000827C(0, &qword_1001167B0);
        v67 = v25;
        CAFPositionedRequired.layoutKey.getter();
        v27 = *(v26 + 16);
        if (!v27)
        {
          break;
        }

        v28 = v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v29 = *(v64 + 72);
        sub_10000801C();
        v30 = 0;
        while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          ++v30;
          v28 += v29;
          if (v27 == v30)
          {
            goto LABEL_14;
          }
        }

        v34 = *v65;
        (*v65)(v15, v7);
        v35 = static CAUVehicleLayoutKey.defrostKeys.getter();
        v36 = v60;
        v37 = v68;
        CAFPositionedRequired.layoutKey.getter();
        v66 = sub_10005E268(v36, v35);
        v39 = v38;

        v34(v36, v7);

        if ((v39 & 1) != 0 || v30 >= v66)
        {
          goto LABEL_15;
        }

        v31 = v70;
        v32 = v69;
        v22 = v69 + 1;
        a4 = v71;
        v33 = v72;
        if (v70 != v69)
        {
          goto LABEL_16;
        }

LABEL_17:
        v21 = v31 + 1;
        if (a4 >= v73 || v22 >= v33)
        {
          goto LABEL_46;
        }
      }

LABEL_14:

      (*v65)(v15, v7);

LABEL_15:
      v31 = v70;
      v32 = v71;
      a4 = v71 + 1;
      v22 = v69;
      v33 = v72;
      if (v70 == v71)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v31 = *v32;
      goto LABEL_17;
    }

LABEL_46:
    a2 = v21;
  }

LABEL_48:
  if (a2 != a4 || a2 >= (a4 + ((v73 - a4 + (v73 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v73 - a4));
  }

  return 1;
}

void *sub_10005F8E4(unsigned __int8 a1, void *a2)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 <= 4u)
    {
      if (a1 == 3)
      {
        v9 = [a2 cabin];
        if (v9)
        {
          v10 = v9;
          if ([v9 hasMaxACOn])
          {
            sub_1000040E8(&unk_100114770);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_1000D5DA0;
            v12 = objc_allocWithZone(type metadata accessor for ClimateMaxACButton());
            v13 = v10;
            sub_100097F6C(v13, 3u);
LABEL_43:
            v42 = v14;

            *(v11 + 32) = v42;
LABEL_44:

            return v11;
          }

          goto LABEL_48;
        }

        return _swiftEmptyArrayStorage;
      }

      v40 = [a2 cabin];
      if (!v40)
      {
        return _swiftEmptyArrayStorage;
      }

      v10 = v40;
      if ([v40 hasCompressorOn])
      {
        sub_1000040E8(&unk_100114770);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1000D5DA0;
        v41 = objc_allocWithZone(type metadata accessor for ClimateCompressorButton());
        v13 = v10;
        sub_100002FA4(v13, 3u);
        goto LABEL_43;
      }

LABEL_48:

      return _swiftEmptyArrayStorage;
    }

    if (a1 != 5)
    {
      v43 = [a2 cabin];
      if (!v43)
      {
        return _swiftEmptyArrayStorage;
      }

      v10 = v43;
      if ([v43 hasHvacOn])
      {
        sub_1000040E8(&unk_100114770);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1000D5DA0;
        v44 = objc_allocWithZone(type metadata accessor for ClimateHVACButton());
        v13 = v10;
        sub_100056EA8(v13, 3u);
        *(v11 + 32) = v45;
        goto LABEL_44;
      }

      goto LABEL_48;
    }

    v28 = [a2 zonesSynceds];
    result = _swiftEmptyArrayStorage;
    if (!v28)
    {
      return result;
    }

    sub_10000827C(0, &qword_1001152C0);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
LABEL_29:
        v61 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v30 < 0)
        {
          __break(1u);

          __break(1u);
        }

        else
        {
          v31 = 0;
          do
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v32 = *(v29 + 8 * v31 + 32);
            }

            v33 = v32;
            ++v31;
            v34 = objc_allocWithZone(type metadata accessor for ClimateZonesSyncedServiceButton());
            sub_10001B8E0(v33, 3u);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v30 != v31);

          return v61;
        }

        return result;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_29;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  if (!a1)
  {
    v35 = [a2 cabin];
    if (v35)
    {
      v10 = v35;
      if ([v35 hasMaxDefrostOn])
      {
        sub_1000040E8(&unk_100114770);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1000D5DA0;
        v36 = objc_allocWithZone(type metadata accessor for ClimateMaxDefrostButton());
        v13 = v10;
        sub_1000052A0(v13, 3u);
        goto LABEL_43;
      }

      goto LABEL_48;
    }

    return _swiftEmptyArrayStorage;
  }

  if (a1 != 1)
  {
    v37 = [a2 recirculation];
    if (v37)
    {
      v38 = v37;
      sub_1000040E8(&unk_100114770);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000D5DA0;
      v39 = objc_allocWithZone(type metadata accessor for ClimateRecirculationServiceButton());
      v13 = v38;
      sub_1000AFEBC(v13, 3);
      goto LABEL_43;
    }

    return _swiftEmptyArrayStorage;
  }

  v15 = [a2 defrosts];
  result = _swiftEmptyArrayStorage;
  if (!v15)
  {
    return result;
  }

  v60 = sub_10000827C(0, &qword_1001167B0);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = _swiftEmptyArrayStorage;
  v18 = v17;
  if (v17 >> 62)
  {
    goto LABEL_64;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v19)
  {
    v20 = 0;
    v58 = v18 & 0xFFFFFFFFFFFFFF8;
    v59 = v18 & 0xC000000000000001;
    v55 = v18;
    v56 = v18 + 32;
    v57 = (v5 + 8);
LABEL_15:
    while (2)
    {
      if (v59)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v58 + 16))
        {
          goto LABEL_63;
        }

        v18 = *(v56 + 8 * v20);
      }

      v21 = v18;
      if (!__OFADD__(v20++, 1))
      {
        v23 = static CAUVehicleLayoutKey.defrostKeys.getter();
        CAFPositionedRequired.layoutKey.getter();
        v24 = 0;
        v25 = *(v23 + 16);
        do
        {
          if (v25 == v24)
          {

            (*v57)(v8, v4);

            if (v20 == v19)
            {
              goto LABEL_52;
            }

            goto LABEL_15;
          }

          v26 = v24 + 1;
          sub_10000801C();
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = v26;
        }

        while ((v27 & 1) == 0);

        (*v57)(v8, v4);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = specialized ContiguousArray._endMutation()();
        if (v20 != v19)
        {
          continue;
        }

        goto LABEL_52;
      }

      break;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v53 = v18;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v53;
  }

LABEL_52:

  v61 = sub_10006B8C4(v46);
  sub_10005E3FC(&v61);

  v47 = v61;
  if (v61 < 0 || (v61 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
      if (v54)
      {
        v48 = v54;
        v61 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        __break(1u);
      }
    }

    goto LABEL_71;
  }

  v48 = *(v61 + 16);
  if (!v48)
  {
LABEL_71:

    return _swiftEmptyArrayStorage;
  }

  v61 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
LABEL_56:
  v49 = 0;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v50 = *(v47 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    v52 = objc_allocWithZone(type metadata accessor for ClimateDefrostServiceButton());
    sub_1000047D8(v51, 3u);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v48 != v49);

  return v61;
}

BOOL sub_100060154(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE600000000000000;
    v9 = 0x6E4F656E6F7ALL;
    switch(*v4)
    {
      case 1:
        v8 = 0xE400000000000000;
        v9 = 1953391990;
        break;
      case 2:
        v9 = 0xD000000000000012;
        v8 = 0x80000001000D9E50;
        break;
      case 3:
        v9 = 0x70706574536E6166;
        v8 = 0xEA00000000007265;
        break;
      case 4:
        v8 = 0xE800000000000000;
        v9 = 0x65646F4D6F747561;
        break;
      case 5:
        v9 = 0x7461654874616573;
        v8 = 0xEB00000000676E69;
        break;
      case 6:
        v8 = 0xE700000000000000;
        v9 = 0x6E614674616573;
        break;
      case 7:
        v9 = 0x7373614D74616573;
        v8 = 0xEB00000000656761;
        break;
      case 8:
        v9 = 0xD000000000000014;
        v8 = 0x80000001000D9E90;
        break;
      case 9:
        v9 = 0x736C6F72746E6F63;
        v8 = 0xEC0000006B636F4CLL;
        break;
      case 0xA:
        v8 = 0xE800000000000000;
        v9 = 0x6B6E694C70656564;
        break;
      case 0xB:
        v9 = 0x6C75637269636572;
        v8 = 0xED00006E6F697461;
        break;
      case 0xC:
        v8 = 0xE500000000000000;
        v9 = 0x434178616DLL;
        break;
      case 0xD:
        v8 = 0xEA00000000007473;
        v9 = 0x6F7266654478616DLL;
        break;
      case 0xE:
        v8 = 0xE400000000000000;
        v9 = 1668184435;
        break;
      case 0xF:
        v9 = 0x666544746E6F7266;
        v8 = 0xEC00000074736F72;
        break;
      case 0x10:
        v9 = 0x7266654472616572;
        v8 = 0xEB0000000074736FLL;
        break;
      case 0x11:
        v8 = 0xE200000000000000;
        v9 = 25441;
        break;
      default:
        break;
    }

    v10 = 0xE600000000000000;
    v11 = 0x6E4F656E6F7ALL;
    switch(a1)
    {
      case 1:
        v10 = 0xE400000000000000;
        if (v9 == 1953391990)
        {
          goto LABEL_55;
        }

        goto LABEL_2;
      case 2:
        v10 = 0x80000001000D9E50;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 3:
        v10 = 0xEA00000000007265;
        if (v9 != 0x70706574536E6166)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 4:
        v10 = 0xE800000000000000;
        if (v9 != 0x65646F4D6F747561)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 5:
        v12 = 0x7461654874616573;
        v13 = 6778473;
        goto LABEL_47;
      case 6:
        v10 = 0xE700000000000000;
        if (v9 != 0x6E614674616573)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 7:
        v12 = 0x7373614D74616573;
        v13 = 6645601;
        goto LABEL_47;
      case 8:
        v10 = 0x80000001000D9E90;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 9:
        v14 = 0x736C6F72746E6F63;
        v15 = 1801678668;
        goto LABEL_39;
      case 10:
        v10 = 0xE800000000000000;
        v11 = 0x6B6E694C70656564;
        goto LABEL_54;
      case 11:
        v10 = 0xED00006E6F697461;
        if (v9 != 0x6C75637269636572)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 12:
        v10 = 0xE500000000000000;
        if (v9 != 0x434178616DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 13:
        v10 = 0xEA00000000007473;
        if (v9 != 0x6F7266654478616DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 14:
        v10 = 0xE400000000000000;
        if (v9 != 1668184435)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 15:
        v14 = 0x666544746E6F7266;
        v15 = 1953722226;
LABEL_39:
        v10 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v9 != v14)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 16:
        v12 = 0x7266654472616572;
        v13 = 7631727;
LABEL_47:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 17:
        v10 = 0xE200000000000000;
        if (v9 != 25441)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      default:
LABEL_54:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_55:
        if (v8 != v10)
        {
LABEL_2:
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_10006070C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_100066608(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

void sub_100060814(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v9 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v8))
  {
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    HIDWORD(v35) = a1;
    v11 = 0xE400000000000000;
    *v10 = 136446722;
    v12 = 1668184435;
    v13 = 0x6C75637269636572;
    v14 = 0xED00006E6F697461;
    if (a1 != 4)
    {
      v13 = 0x65736F6C63;
      v14 = 0xE500000000000000;
    }

    if (a1 != 3)
    {
      v12 = v13;
      v11 = v14;
    }

    v15 = 0xE300000000000000;
    v16 = 7233894;
    if (a1 != 1)
    {
      v16 = 0x73736572706D6F63;
      v15 = 0xEA0000000000726FLL;
    }

    if (!a1)
    {
      v16 = 0x74617265706D6574;
      v15 = 0xEB00000000657275;
    }

    if (a1 <= 2u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (a1 <= 2u)
    {
      v18 = v15;
    }

    else
    {
      v18 = v11;
    }

    v19 = sub_10000835C(v17, v18, &v36);

    v20 = *(v2 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
    v21 = 0xE400000000000000;
    *(v10 + 4) = v19;
    *(v10 + 12) = 2082;
    v22 = 1668184435;
    v23 = 0x6C75637269636572;
    v24 = 0xED00006E6F697461;
    if (v20 != 4)
    {
      v23 = 0x65736F6C63;
      v24 = 0xE500000000000000;
    }

    if (v20 != 3)
    {
      v22 = v23;
      v21 = v24;
    }

    v25 = 0xE300000000000000;
    v26 = 7233894;
    if (v20 != 1)
    {
      v26 = 0x73736572706D6F63;
      v25 = 0xEA0000000000726FLL;
    }

    if (!v20)
    {
      v26 = 0x74617265706D6574;
      v25 = 0xEB00000000657275;
    }

    if (v20 <= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = v22;
    }

    if (v20 <= 2)
    {
      v28 = v25;
    }

    else
    {
      v28 = v21;
    }

    v29 = sub_10000835C(v27, v28, &v36);

    *(v10 + 14) = v29;
    *(v10 + 22) = 2082;
    (*(v5 + 16))(v7, *(v2 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_key, v4);
    v30 = CAUVehicleLayoutKey.rawValue.getter();
    v32 = v31;
    (*(v5 + 8))(v7, v4);
    v33 = sub_10000835C(v30, v32, &v36);

    *(v10 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v9, v8, "Current indicator updated from %{public}s to %{public}s, for zone: %{public}s", v10, 0x20u);
    swift_arrayDestroy();

    a1 = HIDWORD(v35);
  }

  sub_100060C20(a1);
  if (v34)
  {
    sub_1000610EC(a1);
  }
}

void sub_100060C20(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v10 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v36)
    {
      v11 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator;
      v12 = sub_1000637C4(v2[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator]);
      if (v12 && (v13 = v12, [v12 alpha], v15 = v14, v13, v15 == 1.0))
      {
        v16 = static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        v17 = qword_10011B1C0;
        if (os_log_type_enabled(qword_10011B1C0, v16))
        {
          v18 = v2;
          v35 = v16;
          v19 = v18;
          v20 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v36 = v34;
          *v20 = 67240450;
          *(v20 + 4) = (sub_1000AA754(v2[v11], a1) & 1) == 0;

          *(v20 + 8) = 2082;
          (*(v5 + 16))(v7, *&v19[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_key, v4);
          v21 = CAUVehicleLayoutKey.rawValue.getter();
          v23 = v22;
          (*(v5 + 8))(v7, v4);
          v24 = sub_10000835C(v21, v23, &v36);

          *(v20 + 10) = v24;
          _os_log_impl(&_mh_execute_header, v17, v35, "Should update current indicator %{BOOL,public}d, for zone: %{public}s", v20, 0x12u);
          sub_100006B9C(v34);
        }

        sub_1000AA754(v2[v11], a1);
      }

      else
      {
        v25 = static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        v26 = qword_10011B1C0;
        if (os_log_type_enabled(qword_10011B1C0, v25))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v36 = v28;
          *v27 = 136446210;
          (*(v5 + 16))(v7, *&v2[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_key, v4);
          v29 = CAUVehicleLayoutKey.rawValue.getter();
          v31 = v30;
          (*(v5 + 8))(v7, v4);
          v32 = sub_10000835C(v29, v31, &v36);

          *(v27 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v26, v25, "Current fan indicator needs animation, for zone: %{public}s", v27, 0xCu);
          sub_100006B9C(v28);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000610EC(int a1)
{
  LODWORD(v2) = a1;
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v8 = qword_10011B1C0;
  v9 = os_log_type_enabled(qword_10011B1C0, v7);
  p_superclass = (&OBJC_METACLASS____TtC7Climate10ClimateApp + 8);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    HIDWORD(v36) = v2;
    v12 = 0xE400000000000000;
    *v11 = 136446722;
    v13 = 1668184435;
    v14 = 0x6C75637269636572;
    v15 = 0xED00006E6F697461;
    if (v2 != 4)
    {
      v14 = 0x65736F6C63;
      v15 = 0xE500000000000000;
    }

    if (v2 != 3)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0xE300000000000000;
    v17 = 7233894;
    if (v2 != 1)
    {
      v17 = 0x73736572706D6F63;
      v16 = 0xEA0000000000726FLL;
    }

    if (!v2)
    {
      v17 = 0x74617265706D6574;
      v16 = 0xEB00000000657275;
    }

    if (v2 <= 2u)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    if (v2 <= 2u)
    {
      v19 = v16;
    }

    else
    {
      v19 = v12;
    }

    v20 = sub_10000835C(v18, v19, &v37);

    v21 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
    v22 = 0xE400000000000000;
    *(v11 + 4) = v20;
    *(v11 + 12) = 2082;
    v23 = 1668184435;
    v24 = 0x6C75637269636572;
    v25 = 0xED00006E6F697461;
    if (v21 != 4)
    {
      v24 = 0x65736F6C63;
      v25 = 0xE500000000000000;
    }

    if (v21 != 3)
    {
      v23 = v24;
      v22 = v25;
    }

    v26 = 0xE300000000000000;
    v27 = 7233894;
    if (v21 != 1)
    {
      v27 = 0x73736572706D6F63;
      v26 = 0xEA0000000000726FLL;
    }

    if (!v21)
    {
      v27 = 0x74617265706D6574;
      v26 = 0xEB00000000657275;
    }

    if (v21 <= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = v23;
    }

    if (v21 <= 2)
    {
      v29 = v26;
    }

    else
    {
      v29 = v22;
    }

    v30 = sub_10000835C(v28, v29, &v37);

    *(v11 + 14) = v30;
    *(v11 + 22) = 2082;
    (*(v4 + 16))(v6, *(v1 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_key, v3);
    v2 = CAUVehicleLayoutKey.rawValue.getter();
    v32 = v31;
    (*(v4 + 8))(v6, v3);
    v33 = sub_10000835C(v2, v32, &v37);

    *(v11 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v8, v7, "Animate current indicator from %{public}s to %{public}s, for zone: %{public}s", v11, 0x20u);
    swift_arrayDestroy();

    LOBYTE(v2) = BYTE4(v36);
    p_superclass = &OBJC_METACLASS____TtC7Climate10ClimateApp.superclass;
  }

  v34 = *(&p_superclass[201]->isa + v1);
  if (v34 == 5)
  {
    [*(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer) invalidate];
    sub_100063198();
    return;
  }

  if (!v2)
  {
    goto LABEL_40;
  }

  if (v2 == 5)
  {
    sub_100063198();
    return;
  }

  if (v34)
  {
    v35 = &off_1000F6538;
  }

  else
  {
LABEL_40:
    v35 = &off_1000F6510;
  }

  sub_1000646B4(v2, v35);
}

void sub_100061554(void **a1)
{
  v2 = type metadata accessor for CAUResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040E8(&qword_100116700);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for CAUAppDockIndicators();
  v18 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (v12)
    {
      (*(v3 + 104))(v5, enum case for CAUResource.appDockIndicator(_:), v2);
      sub_100066718();
      v15 = v12;
      dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
      (*(v3 + 8))(v5, v2);
      v16 = v18;
      if ((*(v18 + 48))(v8, 1, v9) == 1)
      {

        sub_100008904(v8, &qword_100116700);
      }

      else
      {
        (*(v16 + 32))(v11, v8, v9);
        *&v14[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators] = CAUAppDockIndicators.indicators.getter();

        sub_100062230();

        (*(v16 + 8))(v11, v9);
      }
    }

    else
    {
    }
  }
}

void sub_100061894()
{
  if (!*(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator))
  {
    sub_100061C44();
  }

  if (!*(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator))
  {

    sub_100061E44();
  }
}

uint64_t sub_1000618E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000040E8(&qword_1001166A0);
  inited = swift_initStackObject();
  v8 = inited;
  *(inited + 1) = xmmword_1000D7A30;
  v9 = *(v3 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
  inited[4] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fanButton);
    inited = v11;
  }

  else
  {
    v11 = 0;
  }

  v8[5] = v11;
  v12 = *(v3 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_compressorButton);
    inited = v13;
  }

  else
  {
    v13 = 0;
  }

  v8[6] = v13;
  v14 = *(v3 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator);
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton);
    inited = v15;
  }

  else
  {
    v15 = 0;
  }

  v8[7] = v15;
  v16 = *(v3 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator);
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_recirculationButton);
    inited = v17;
  }

  else
  {
    v17 = 0;
  }

  v8[8] = v17;
  __chkstk_darwin(inited);
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v18 = v9;
  sub_100014CF8(sub_1000666F0, v20, v8);
  swift_setDeallocating();
  sub_1000040E8(&qword_1001166A8);
  return swift_arrayDestroy();
}

void **sub_100061AB8(void **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (*result)
  {
    sub_1000287E8(a2, v15, &unk_1001166B0);
    v7 = v16;
    if (v16)
    {
      v8 = sub_10000D960(v15, v16);
      v9 = *(v7 - 8);
      __chkstk_darwin(v8);
      v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v11);
      v12 = v4;
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v11, v7);
      sub_100006B9C(v15);
    }

    else
    {
      v14 = v4;
      v13 = 0;
    }

    [v4 addTarget:v13 action:a3 forControlEvents:a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100061C44()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
  v3 = objc_allocWithZone(type metadata accessor for ClimateTemperatureIndicator());
  v4 = v2;
  sub_1000B37D0(v4, 0, 0, 1, 1u);
  v6 = v5;

  v7 = [v6 titleLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() monospacedDigitSystemFontOfSize:14.0 weight:UIFontWeightMedium];
    [v8 setFont:v9];
  }

  v10 = objc_opt_self();
  v11 = v6;
  v12 = [v10 configurationWithPointSize:5 weight:14.0];
  v13 = ClimateButton.imageSymbolConfiguration.getter();
  v14 = *&v11[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v11[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v12;
  v15 = v12;

  v16 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v14) = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  *&v11[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_delegate + 8] = &off_1000F8438;
  swift_unknownObjectWeakAssign();
  sub_100063D9C(v11);
  v17 = *(v1 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
  *(v1 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator) = v11;
}

void sub_100061E44()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
  sub_100006E80();
  v4 = v3;

  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC7Climate11ClimateZone_fan);
    v6 = v5;

    if (v5)
    {
      v7 = objc_allocWithZone(type metadata accessor for ClimateFanIndicator());
      v8 = v6;
      v9 = sub_10007AA8C(v8);
      *&v9[OBJC_IVAR____TtC7Climate19ClimateFanIndicator_delegate + 8] = &off_1000F8428;
      swift_unknownObjectWeakAssign();
      v10 = v9;
      sub_100063D9C(v10);
      [v10 setAlpha:0.0];

      v11 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator);
      *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator) = v10;
    }
  }
}

void sub_100061F6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_cabin);
  if (v1)
  {
    v7 = v1;
    if ([v7 hasCompressorOn])
    {
      v2 = objc_allocWithZone(type metadata accessor for ClimateCompressorIndicator());
      v3 = v7;
      v4 = sub_10005CA90(v3);
      *&v4[OBJC_IVAR____TtC7Climate26ClimateCompressorIndicator_delegate + 8] = &off_1000F8418;
      swift_unknownObjectWeakAssign();
      v5 = v4;
      sub_100063D9C(v5);
      [v5 setAlpha:0.0];

      v6 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator);
      *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator) = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

void sub_100062078()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_sync);
  if (v1)
  {
    v2 = v0;
    v3 = objc_allocWithZone(type metadata accessor for ClimateSyncIndicator());
    v4 = v1;
    v5 = sub_100098660(v4);
    *&v5[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_delegate + 8] = &off_1000F83F8;
    swift_unknownObjectWeakAssign();
    v6 = v5;
    sub_100063D9C(v6);
    [v6 setAlpha:0.0];

    v7 = *(v2 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator);
    *(v2 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator) = v6;
  }
}

void sub_100062154()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculation);
  if (v1)
  {
    v2 = v0;
    v3 = objc_allocWithZone(type metadata accessor for ClimateRecirculationIndicator());
    v4 = v1;
    v5 = sub_10003B7E0(v4);
    *&v5[OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_delegate + 8] = &off_1000F8408;
    swift_unknownObjectWeakAssign();
    v6 = v5;
    sub_100063D9C(v6);
    [v6 setAlpha:0.0];

    v7 = *(v2 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator);
    *(v2 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator) = v6;
  }
}

void sub_100062230()
{
  v1 = v0;
  v2 = type metadata accessor for CAUAppDockIndicator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators;
  v7 = *&v1[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators];
  v8 = *(v3 + 104);
  v8(v5, enum case for CAUAppDockIndicator.windshieldFront(_:), v2);

  v9 = sub_10006070C(v5, v7, &type metadata accessor for CAUAppDockIndicator, &unk_100116680, &type metadata accessor for CAUAppDockIndicator);

  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v9 || (v11 = *&v1[v6], v8(v5, enum case for CAUAppDockIndicator.windshieldRear(_:), v2), , v12 = sub_10006070C(v5, v11, &type metadata accessor for CAUAppDockIndicator, &unk_100116680, &type metadata accessor for CAUAppDockIndicator), , v10(v5, v2), v12))
  {
    v13 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_groupedDefrostsButton;
    if (!*&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_groupedDefrostsButton])
    {

      v14 = sub_1000717C8();

      if (v14)
      {
        v15 = objc_allocWithZone(type metadata accessor for ClimateGroupedDefrostsButton());
        v16 = sub_100068858(v14);
        [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v1 addSubview:v16];
        v17 = objc_opt_self();
        sub_1000040E8(&unk_100114770);
        v18 = swift_allocObject();
        v55 = xmmword_1000D5D90;
        *(v18 + 16) = xmmword_1000D5D90;
        v19 = [v16 bottomAnchor];
        v20 = [v1 bottomAnchor];
        v21 = [v19 constraintEqualToAnchor:v20 constant:-75.0];

        *(v18 + 32) = v21;
        v22 = [v16 centerXAnchor];
        v23 = [v1 centerXAnchor];
        v24 = [v22 constraintEqualToAnchor:v23];

        *(v18 + 40) = v24;
        v25 = [v16 widthAnchor];
        v26 = [v25 constraintEqualToConstant:30.0];

        *(v18 + 48) = v26;
        v27 = [v16 heightAnchor];
        v28 = [v27 constraintEqualToConstant:30.0];

        *(v18 + 56) = v28;
        sub_10000827C(0, &qword_1001149C0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v17 activateConstraints:isa];

        v30 = *&v1[v13];
        *&v1[v13] = v16;
        v31 = v16;

        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1000D5DA0;
        *(v32 + 32) = v31;
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v31;
        v35 = type metadata accessor for ClimateFocusGuide();
        v36 = objc_allocWithZone(v35);
        swift_unknownObjectWeakInit();
        v37 = &v36[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
        *v37 = 0;
        v37[1] = 0;
        *&v36[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
        v36[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
        *v37 = sub_1000666E8;
        v37[1] = v34;
        v56.receiver = v36;
        v56.super_class = v35;
        v38 = v31;

        v39 = objc_msgSendSuper2(&v56, "init");
        v40 = String._bridgeToObjectiveC()();
        [v39 setIdentifier:v40];

        sub_1000040E8(&unk_1001150F0);
        v41 = Array._bridgeToObjectiveC()().super.isa;

        [v39 setPreferredFocusEnvironments:v41];

        [v1 addLayoutGuide:v39];

        v42 = swift_allocObject();
        *(v42 + 16) = v55;
        v43 = [v39 leadingAnchor];
        v44 = [v1 leadingAnchor];
        v45 = [v43 constraintEqualToAnchor:v44];

        *(v42 + 32) = v45;
        v46 = [v39 trailingAnchor];
        v47 = [v1 trailingAnchor];
        v48 = [v46 constraintEqualToAnchor:v47];

        *(v42 + 40) = v48;
        v49 = [v39 bottomAnchor];
        v50 = [v38 topAnchor];

        v51 = [v49 constraintEqualToAnchor:v50];
        *(v42 + 48) = v51;
        v52 = [v39 heightAnchor];

        v53 = [v52 constraintEqualToConstant:1.0];
        *(v42 + 56) = v53;
        sub_10005B210(v42);
        [v39 setEnabled:0];

        v54 = *&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_defrostFocusGuide];
        *&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_defrostFocusGuide] = v39;
      }
    }
  }
}

void sub_100062A44(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a2 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = v4;
    [v13 frame];
    v15 = v6 + v14;
    [v13 frame];
    v17 = v16;

    v18 = v8 + v17;
    v19 = [objc_opt_self() _movementWithHeading:*&v13[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_heading] isInitial:1 fallbackMovementOriginatingFrame:{v15, v18, v10, v12}];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 infoWithSenderID:0];
    v23 = [objc_allocWithZone(UIFocusMovementAction) initWithFocusMovementInfo:v21 inputDeviceInfo:v22 shouldPerformHapticFeedback:0 focusedFrameInSceneCoordinateSpace:{v15, v18, v10, v12}];

    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 _FBSScene];

      sub_1000040E8(&unk_100114770);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5DA0;
      *(inited + 32) = v23;
      v28 = v23;
      sub_1000283A4(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_10000827C(0, &qword_1001150D8);
      sub_10002879C(&unk_100115180, &qword_1001150D8);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v26 sendActions:isa];
    }
  }
}

id sub_100062CF4(uint64_t a1)
{
  v3 = sub_1000040E8(&unk_100115120);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for CAUPersistentElements();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  sub_1000287E8(a1, v5, &unk_100115120);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100008904(v5, &unk_100115120);
    v13 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator;
      }

      else
      {
        if (v13 != 4)
        {
          v30 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton);
          goto LABEL_34;
        }

        v14 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator))
    {
      if (v13 == 1)
      {
        v14 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator;
      }

      else
      {
        v14 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator;
      }
    }

    else
    {
      v14 = OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator;
    }

    v30 = *(v1 + v14);
    if (!v30)
    {
LABEL_35:
      result = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_groupedDefrostsButton);
      if (result)
      {
        return [result setAlpha:1.0];
      }

      return result;
    }

LABEL_34:
    [v30 setAlpha:1.0];
    goto LABEL_35;
  }

  (*(v7 + 32))(v12, v5, v6);
  v15 = *(v1 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
  if (v15)
  {
    v16 = v15;
    static CAUPersistentElements.targetTemperature.getter();
    sub_100066608(&unk_100116690, &type metadata accessor for CAUPersistentElements);
    v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*(v7 + 8))(v9, v6);
    v18 = 0.0;
    if (v17)
    {
      v18 = 1.0;
    }

    [v16 setAlpha:v18];
  }

  v19 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator);
  if (v19)
  {
    [v19 setAlpha:0.0];
  }

  v20 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator);
  if (v20)
  {
    [v20 setAlpha:0.0];
  }

  v21 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator);
  if (v21)
  {
    [v21 setAlpha:0.0];
  }

  v22 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator);
  if (v22)
  {
    [v22 setAlpha:0.0];
  }

  [*(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton) setAlpha:0.0];
  v23 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_groupedDefrostsButton);
  if (v23)
  {
    v24 = v23;
    static CAUPersistentElements.frontDefrost.getter();
    sub_100066608(&unk_100116690, &type metadata accessor for CAUPersistentElements);
    v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v26 = *(v7 + 8);
    v26(v9, v6);
    v27 = 1.0;
    if ((v25 & 1) == 0)
    {
      static CAUPersistentElements.rearDefrost.getter();
      v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v26(v9, v6);
      v27 = 0.0;
      if (v28)
      {
        v27 = 1.0;
      }
    }

    [v24 setAlpha:v27];
  }

  else
  {
    v26 = *(v7 + 8);
  }

  return (v26)(v12, v6);
}

void sub_100063198()
{
  v1 = v0;
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v10 = v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator];
    v11 = 0xEB00000000657275;
    v12 = 0x74617265706D6574;
    v13 = 0xE400000000000000;
    aBlock[0] = v9;
    *v8 = 136446466;
    v14 = 1668184435;
    v15 = 0xED00006E6F697461;
    v16 = 0x6C75637269636572;
    if (v10 != 4)
    {
      v16 = 0x65736F6C63;
      v15 = 0xE500000000000000;
    }

    if (v10 != 3)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0xE300000000000000;
    v18 = 7233894;
    if (v10 != 1)
    {
      v18 = 0x73736572706D6F63;
      v17 = 0xEA0000000000726FLL;
    }

    if (v10)
    {
      v12 = v18;
      v11 = v17;
    }

    if (v10 <= 2)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    if (v10 <= 2)
    {
      v20 = v11;
    }

    else
    {
      v20 = v13;
    }

    v21 = sub_10000835C(v19, v20, aBlock);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2082;
    (*(v3 + 16))(v5, *&v1[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_key, v2);
    v22 = CAUVehicleLayoutKey.rawValue.getter();
    v24 = v23;
    (*(v3 + 8))(v5, v2);
    v25 = sub_10000835C(v22, v24, aBlock);

    *(v8 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v7, v6, "Show current indicator: %{public}s, for zone: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v26 = *&v1[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator];
  if (v26)
  {
    [v26 setAlpha:0.0];
  }

  v27 = *&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator];
  if (v27)
  {
    [v27 setAlpha:0.0];
  }

  v28 = *&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator];
  if (v28)
  {
    [v28 setAlpha:0.0];
  }

  v29 = *&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator];
  if (v29)
  {
    [v29 setAlpha:0.0];
  }

  v30 = *&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator];
  if (v30)
  {
    [v30 setAlpha:0.0];
  }

  [*&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton] setAlpha:{0.0, aBlock[0]}];
  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = v1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100066690;
  *(v33 + 24) = v32;
  aBlock[4] = sub_100035F88;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B40C4;
  aBlock[3] = &unk_1000F8740;
  v34 = _Block_copy(aBlock);
  v35 = v1;

  [v31 performWithoutAnimation:v34];
  _Block_release(v34);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    v36 = sub_1000637C4(v35[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator]);
    if (v36)
    {
      v37 = v36;
      [v36 setAlpha:1.0];
    }

    else
    {
    }
  }
}

void sub_1000636B0(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
  if (v3 <= 2)
  {
    if (*(a1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator))
    {
      if (v3 == 1)
      {
        v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator;
      }

      else
      {
        v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator;
      }
    }

    else
    {
      v4 = OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator;
    }

LABEL_11:
    v5 = *(a1 + v4);
    if (!v5)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator;
    goto LABEL_11;
  }

  v5 = *(a1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton);
LABEL_14:
  v8 = v1;
  v9 = v2;
  v6 = v5;
  if (qword_100113F28 != -1)
  {
    swift_once();
  }

  v7[0] = xmmword_10011B290;
  v7[1] = xmmword_10011B2A0;
  v7[2] = xmmword_10011B2B0;
  [v6 setTransform:v7];
}

void *sub_1000637C4(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator;
      }

      else
      {
        v2 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator;
      }
    }

    else
    {
      v2 = OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator;
    }

LABEL_11:
    v3 = *(v1 + v2);
    if (!v3)
    {
      return v3;
    }

    goto LABEL_14;
  }

  if (a1 == 3)
  {
    v2 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator;
    goto LABEL_11;
  }

  if (a1 == 4)
  {
    v2 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator;
    goto LABEL_11;
  }

  v3 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton);
LABEL_14:
  v4 = v3;
  return v3;
}

void sub_100063864()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_100066650;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000AD34C;
  v8[3] = &unk_1000F86C8;
  v3 = _Block_copy(v8);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:3.0];
  _Block_release(v3);
  v5 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer;
  v6 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer);
  if (v6)
  {
    [v6 invalidate];
    v7 = *(v0 + v5);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + v5) = v4;
}

void sub_100063990(void *a1)
{
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer);
    if (v8)
    {
      sub_10000827C(0, &qword_100115848);
      v9 = v8;
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        if ([v10 isValid])
        {
          v12 = static os_log_type_t.debug.getter();
          if (qword_100113F00 != -1)
          {
            swift_once();
          }

          v13 = qword_10011B1C0;
          if (os_log_type_enabled(qword_10011B1C0, v12))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v21 = v15;
            *v14 = 136446210;
            (*(v3 + 16))(v5, *&v7[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_key, v2);
            v16 = CAUVehicleLayoutKey.rawValue.getter();
            v18 = v17;
            (*(v3 + 8))(v5, v2);
            v19 = sub_10000835C(v16, v18, &v21);

            *(v14 + 4) = v19;
            _os_log_impl(&_mh_execute_header, v13, v12, "Reset indicator timer fired, for zone: %{public}s", v14, 0xCu);
            sub_100006B9C(v15);
          }

          v20 = v7[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator];
          v7[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator] = 0;
          sub_100060814(v20);
        }
      }
    }
  }
}

void sub_100063C54()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
  if (v1 > 4)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  v3 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer;
  v4 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer);
  if (v4)
  {
    [v4 invalidate];
    v4 = *(v0 + v3);
  }

  *(v0 + v3) = 0;
}

void sub_100063D9C(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:a1];
  v3 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D5D90;
  v5 = [a1 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [a1 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [a1 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [a1 heightAnchor];
  v15 = [v14 constraintEqualToConstant:33.0];

  *(v4 + 56) = v15;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_100064004(char a1)
{
  sub_100064234();
  v3 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer;
  v4 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = 0;

  if (a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
    *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator) = 0;
    sub_100060814(v6);
    sub_100063198();
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1 & 1;
  *(v9 + 24) = a1 & 1;
  v19 = sub_1000665F0;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000B4DF4;
  v18 = &unk_1000F8650;
  v11 = _Block_copy(&v15);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  v19 = sub_1000665FC;
  v20 = v13;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10001C4BC;
  v18 = &unk_1000F86A0;
  v14 = _Block_copy(&v15);

  [v7 animateWithDuration:0 delay:v11 options:v14 animations:0.3 completion:0.0];
  _Block_release(v14);
  _Block_release(v11);
}

void sub_100064234()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator);
  if (v1)
  {
    v2 = [v1 layer];
    [v2 removeAllAnimations];
  }

  v3 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
  if (v3)
  {
    v4 = [v3 layer];
    [v4 removeAllAnimations];
  }

  v5 = [*(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton) layer];
  [v5 removeAllAnimations];

  v6 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator);
  if (v6)
  {
    v7 = [v6 layer];
    [v7 removeAllAnimations];
  }

  v8 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator);
  if (v8)
  {
    v9 = [v8 layer];
    [v9 removeAllAnimations];
  }
}

void sub_10006437C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = 0.0;
    if (a2)
    {
      v4 = 1.0;
    }

    v5 = Strong;
    [Strong setAlpha:v4];
  }
}

void sub_1000643EC(char a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((a1 & 1) != 0 && (a3 & 1) == 0)
    {
      v7 = *(Strong + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
      v6[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator] = 0;
      sub_100060814(v7);
    }
  }
}

void sub_100064468()
{
  swift_unknownObjectWeakDestroy();

  sub_100003380(*(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeAction));
  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton);
}

id sub_10006455C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateVerticalStatusBarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000646B4(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator;
      }

      else
      {
        v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator;
      }
    }

    else
    {
      v4 = OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator;
    }

LABEL_11:
    v5 = *(v2 + v4);
    if (!v5)
    {
      return;
    }

    goto LABEL_14;
  }

  if (a1 == 3)
  {
    v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator;
    goto LABEL_11;
  }

  if (a1 == 4)
  {
    v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator;
    goto LABEL_11;
  }

  v5 = *(v2 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton);
LABEL_14:
  v18 = v5;
  v6 = sub_1000637C4(*(v2 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator));
  if (v6)
  {
    v7 = v6;
    sub_100064234();
    v8 = qword_100113F28;
    v9 = v18;
    if (v8 != -1)
    {
      swift_once();
    }

    aBlock = xmmword_10011B290;
    v20 = xmmword_10011B2A0;
    v21 = xmmword_10011B2B0;
    [v9 setTransform:&aBlock];
    [v9 setAlpha:1.0];

    v10 = v7;
    [v10 setAlpha:0.0];
    if (qword_100113F20 != -1)
    {
      swift_once();
    }

    aBlock = xmmword_10011B260;
    v20 = *algn_10011B270;
    v21 = xmmword_10011B280;
    [v10 setTransform:&aBlock];

    v11 = objc_opt_self();
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = v10;
    v12[4] = a2;
    *&v21 = sub_100065F4C;
    *(&v21 + 1) = v12;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v20 = sub_1000B4DF4;
    *(&v20 + 1) = &unk_1000F8470;
    v13 = _Block_copy(&aBlock);
    v14 = v9;
    v15 = v10;

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v21 = sub_100065FA8;
    *(&v21 + 1) = v16;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v20 = sub_10001C4BC;
    *(&v20 + 1) = &unk_1000F84C0;
    v17 = _Block_copy(&aBlock);

    [v11 _animateUsingSpringWithDuration:0 delay:v13 options:v17 mass:0.513 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];

    _Block_release(v17);
    _Block_release(v13);
  }

  else
  {
  }
}

void *sub_100064A5C(void *a1, void *a2, unsigned __int8 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9 = *(a3 + 2);
  v10 = (a3 + 32);
  v11 = a3 + 32;
  do
  {
    if (!v9)
    {
      v31 = v7;
      v32 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_100065FF0;
      *(v19 + 24) = v6;
      v20 = swift_allocObject();
      v8 = v6;
      v29 = sub_100035EE8;
      v30 = v19;
      *(v20 + 16) = sub_100035EE8;
      *(v20 + 24) = v19;
      *&v35 = sub_10001B010;
      *(&v35 + 1) = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v34 = sub_1000B40C4;
      *(&v34 + 1) = &unk_1000F8588;
      v21 = _Block_copy(&aBlock);
      v22 = a2;
      v23 = a1;
      v24 = v22;
      v25 = v23;

      [v32 performWithoutAnimation:v21];
      _Block_release(v21);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v8 = v31;
        v18 = sub_100035EE8;
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_17;
    }

    v12 = *v11++;
    --v9;
  }

  while (v12 != 1);
  v13 = qword_100113F20;
  v14 = a2;
  v15 = a1;
  isEscapingClosureAtFileLocation = v14;
  result = v15;
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    aBlock = xmmword_10011B260;
    v34 = *algn_10011B270;
    v35 = xmmword_10011B280;
    [result setTransform:{&aBlock, v29, v30}];
    if (qword_100113F28 != -1)
    {
      swift_once();
    }

    aBlock = xmmword_10011B290;
    v34 = xmmword_10011B2A0;
    v35 = xmmword_10011B2B0;
    [isEscapingClosureAtFileLocation setTransform:&aBlock];
    v18 = 0;
LABEL_10:
    for (i = *(a3 + 2); i; --i)
    {
      v27 = *v10++;
      if ((v27 & 1) == 0)
      {
        [a1 setAlpha:0.0];
        [a2 setAlpha:1.0];

        return sub_100003380(v18);
      }
    }

    a3 = objc_opt_self();
    a2 = swift_allocObject();
    a2[2] = sub_100065FF8;
    a2[3] = v8;
    a1 = swift_allocObject();
    a1[2] = sub_100035F84;
    a1[3] = a2;
    *&v35 = sub_100035F88;
    *(&v35 + 1) = a1;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v34 = sub_1000B40C4;
    *(&v34 + 1) = &unk_1000F8600;
    isEscapingClosureAtFileLocation = _Block_copy(&aBlock);

    [a3 performWithoutAnimation:isEscapingClosureAtFileLocation];

    _Block_release(isEscapingClosureAtFileLocation);
    v10 = swift_isEscapingClosureAtFileLocation();

    sub_100003380(v18);

    if ((v10 & 1) == 0)
    {
      break;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v28 = result;
    swift_once();
    result = v28;
  }

  return result;
}

id sub_100064F08(void *a1, void *a2)
{
  if (qword_100113F20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v5 = xmmword_10011B260;
  v6 = *algn_10011B270;
  v7 = xmmword_10011B280;
  [a1 setTransform:&v5];
  if (qword_100113F28 != -1)
  {
    swift_once();
  }

  v5 = xmmword_10011B290;
  v6 = xmmword_10011B2A0;
  v7 = xmmword_10011B2B0;
  return [a2 setTransform:&v5];
}

void sub_100064FEC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      if (Strong[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator] <= 2u && !Strong[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator])
      {

        return;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        sub_100063864();
      }
    }
  }
}

id sub_100065140(void *a1)
{
  v3 = [a1 focusHeading];
  *&v1[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_heading] = v3;

  v4 = sub_1000714A4();

  if (v4 == 1 && [a1 focusHeading] != 8 && objc_msgSend(a1, "focusHeading") != 4)
  {
    return 0;
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for ClimateVerticalStatusBarView();
  return objc_msgSendSuper2(&v6, "shouldUpdateFocusInContext:", a1);
}

void sub_100065260(void *a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ClimateVerticalStatusBarView();
  objc_msgSendSuper2(&v12, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v5 = *&v2[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_groupedDefrostsButton];
  if (v5)
  {
    v6 = *&v2[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_defrostFocusGuide];
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [a1 nextFocusedView];
      if (v9)
      {
        v10 = v9;

        v11 = v10 == v8;
      }

      else
      {
        v11 = 0;
      }

      [v7 setEnabled:v11];
    }
  }
}

void sub_1000653AC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v12 - 8);
  v54 = &v52 - v13;
  v55 = sub_1000040E8(&unk_100118440);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v52 - v14;
  v15 = sub_1000040E8(&unk_1001166D0);
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v56 = &v52 - v16;
  v17 = type metadata accessor for CAUResource();
  v59 = *(v17 - 8);
  v60 = v17;
  __chkstk_darwin(v17);
  v61 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_heading) = 4;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_fanIndicator) = 0;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_compressorIndicator) = 0;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_syncIndicator) = 0;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculationIndicator) = 0;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_defrostFocusGuide) = 0;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_groupedDefrostsButton) = 0;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_resetIndicatorTimer) = 0;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator) = 0;
  v19 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton;
  v20 = objc_allocWithZone(type metadata accessor for ClimateCloseButton());
  *(v6 + v19) = sub_100052BEC();
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_cabin) = a2;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_recirculation) = a3;
  *(v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_sync) = a4;
  v21 = (v6 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeAction);
  *v21 = a5;
  v21[1] = a6;
  v22 = a4;
  v23 = a2;
  v24 = a3;
  sub_10001B054(a5);

  v26 = sub_1000AAB3C(v25);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100061C44();
  sub_100061E44();
  sub_100061F6C();
  sub_100062078();
  sub_100062154();
  v27 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton;
  [*&v26[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = *&v26[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeAction];
  v29 = *&v26[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_closeAction + 8];
  v30 = (*&v26[v27] + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v31 = *v30;
  *v30 = v28;
  v30[1] = v29;
  sub_10001B054(v28);
  sub_100003380(v31);
  sub_100063D9C(*&v26[v27]);
  [*&v26[v27] setAlpha:0.0];
  v62[3] = &type metadata for ClimateFeatures;
  v62[4] = sub_100028968();
  LOBYTE(v62[0]) = 2;
  LOBYTE(v28) = isFeatureEnabled(_:)();
  sub_100006B9C(v62);
  if ((v28 & 1) == 0 || sub_1000714A4())
  {
    goto LABEL_8;
  }

  v32 = objc_opt_self();
  v33 = [v32 sharedApplication];
  v34 = [v33 delegate];

  if (v34)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v35 = sub_1000AF438();
    swift_unknownObjectRelease();

    v36 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();

    v38 = v59;
    v37 = v60;
    if (v36)
    {
      (*(v59 + 104))(v61, enum case for CAUResource.appDockIndicator(_:), v60);
      v39 = CAUAssetLibrary.asset(for:)();

      (*(v38 + 8))(v61, v37);
    }

    v40 = [v32 sharedApplication];
    v41 = [v40 delegate];

    if (v41)
    {
      swift_dynamicCastClassUnconditional();
      v42 = sub_1000AF438();
      swift_unknownObjectRelease();

      v43 = v52;
      dispatch thunk of CAUAssetLibraryManager.$slimAssetLibrary.getter();

      v44 = [objc_opt_self() mainRunLoop];
      v62[0] = v44;
      v45 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v46 = v54;
      (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
      sub_10000827C(0, &unk_1001166E0);
      sub_10000A8E8(&qword_100117260, &unk_100118440);
      sub_10002879C(&qword_1001166F0, &unk_1001166E0);
      v47 = v55;
      v48 = v56;
      Publisher.receive<A>(on:options:)();
      sub_100008904(v46, &unk_1001166C0);

      (*(v53 + 8))(v43, v47);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10000A8E8(&qword_1001166F8, &unk_1001166D0);
      v49 = v26;
      v50 = v58;
      Publisher<>.sink(receiveValue:)();

      (*(v57 + 8))(v48, v50);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

LABEL_8:
      v51 = v26[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator];
      v26[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator] = 0;
      sub_100060814(v51);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100065BF4()
{
  v1 = v0;
  sub_100063C54();
  v2 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator;
  v3 = v0[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator];
  if (v3 > 4)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = [objc_opt_self() sharedApplication];
      v6 = [v5 delegate];

      if (!v6)
      {
        __break(1u);
        return;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v7 = sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v13 & 1) != 0 && ([*(*&v1[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_temperature) targetTemperatureDisabled] & 1) == 0)
      {
        v8 = v1[v2];
        v1[v2] = 0;
        sub_100060814(v8);
        return;
      }
    }
  }

  v9 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v10 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v9))
  {
    v11 = v1;
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = [*(*&v11[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_temperature) targetTemperatureDisabled];

    _os_log_impl(&_mh_execute_header, v10, v9, "Skipping targetTemperature indicator update, isDisabled: %{BOOL,public}d", v12, 8u);
  }
}

uint64_t sub_100065F04()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100065F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100065F70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065FB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100065FF8()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_100066044()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10006607C()
{
  v1 = v0;
  sub_100063C54();
  v2 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator;
  v3 = v0[OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator];
  if (v3 > 4)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = [objc_opt_self() sharedApplication];
      v6 = [v5 delegate];

      if (!v6)
      {
        __break(1u);
        return;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v7 = sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v13 & 1) != 0 && ([*(*&v1[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_temperature) targetTemperatureDisabled] & 1) == 0)
      {
        v8 = v1[v2];
        v1[v2] = 1;
        sub_100060814(v8);
        sub_100063864();
        return;
      }
    }
  }

  v9 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v10 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v9))
  {
    v11 = v1;
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = [*(*&v11[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] + OBJC_IVAR____TtC7Climate11ClimateZone_temperature) targetTemperatureDisabled];

    _os_log_impl(&_mh_execute_header, v10, v9, "Skipping fan indicator update, isDisabled: %{BOOL,public}d", v12, 8u);
  }
}

void sub_100066394(char a1)
{
  v3 = v1;
  sub_100063C54();
  v4 = OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator;
  v5 = *(v1 + OBJC_IVAR____TtC7Climate28ClimateVerticalStatusBarView_currentIndicator);
  if (v5 > 4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      v7 = [objc_opt_self() sharedApplication];
      v8 = [v7 delegate];

      if (v8)
      {
        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        v9 = sub_1000AF438();
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v11)
        {
          v10 = *(v3 + v4);
          *(v3 + v4) = a1;
          sub_100060814(v10);
          sub_100063864();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000665B8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100066608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100066658()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000666A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100066718()
{
  result = qword_100116708;
  if (!qword_100116708)
  {
    sub_1000082C4(&qword_100116700);
    sub_100066608(&unk_100116710, &type metadata accessor for CAUAppDockIndicators);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116708);
  }

  return result;
}

char *sub_100066818(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for ClimateDeepLinkButton();
  v3 = objc_msgSendSuper2(&v18, "init");
  v4 = &v3[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  *v4 = xmmword_1000D7B40;
  if (v6 && (v5 == 0x73697370696C6C65 ? (v7 = v6 == 0xE800000000000000) : (v7 = 0), v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v8 = v3;
  }

  else
  {
    v9 = v3;
    ClimateButton.updateClimateConfiguration()();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for CAUVehicleLayoutKey();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  (*(v12 + 32))(v14 + v13, a1, v11);
  v15 = &v3[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v16 = *v15;
  *v15 = sub_100066ED0;
  v15[1] = v14;

  sub_100003380(v16);

  return v3;
}

void sub_100066A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000040E8(&qword_100115108);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1000677CC(a3);
    if (v13)
    {
    }

    else
    {
      sub_100096674(a3, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_100067DD8(v6);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        static os_log_type_t.default.getter();
        sub_100067E40();
        v14 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v15 = [v12 window];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 windowScene];

          if (v17)
          {
            URL._bridgeToObjectiveC()(v18);
            v20 = v19;
            [v17 openURL:v19 options:0 completionHandler:0];
          }

          else
          {
          }

          (*(v8 + 8))(v10, v7);
        }

        else
        {
          (*(v8 + 8))(v10, v7);
        }
      }
    }
  }
}

id sub_100066D10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateDeepLinkButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateDeepLinkButton()
{
  result = qword_100116748;
  if (!qword_100116748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100066DD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066E0C()
{
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100066ED0(uint64_t a1)
{
  v3 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100066A18(a1, v4, v5);
}

void sub_100066F44(char a1, uint64_t a2, unint64_t a3)
{
  v6 = static os_log_type_t.default.getter();
  sub_100067E40();
  log = static OS_os_log.default.getter();
  if (os_log_type_enabled(log, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_10000835C(a2, a3, &v10);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, log, v6, "Attempt to show PT: %s, success: %{BOOL}d", v7, 0x12u);
    sub_100006B9C(v8);
  }
}

void sub_100067060(uint64_t a1)
{
  v66 = a1;
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v1 - 8);
  v64 = v1;
  v65 = v2;
  v3 = __chkstk_darwin(v1);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = &v61 - v5;
  v6 = type metadata accessor for CAUFeatureConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAUFeatureConfiguration.Climate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v61 - v15;
  v16 = objc_opt_self();
  v17 = [v16 sharedApplication];
  v18 = [v17 delegate];

  if (!v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v19 = sub_1000AF438();
  swift_unknownObjectRelease();

  v20 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();

  if (!v20)
  {
    static os_log_type_t.default.getter();
    sub_100067E40();
    v35 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  CAUAssetLibrary.featureConfiguration()();

  CAUFeatureConfiguration.climate.getter();
  (*(v7 + 8))(v9, v6);
  v21 = v11;
  v22 = v67;
  v23 = v10;
  (*(v11 + 32))(v67, v14, v10);
  v24 = v66;
  v25 = CAUFeatureConfiguration.Climate.oemPunchThroughIdentifier(for:)();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = [v16 sharedApplication];
    v30 = [v29 delegate];

    if (v30)
    {
      swift_dynamicCastClassUnconditional();
      v31 = sub_1000AF438();
      swift_unknownObjectRelease();
      v32 = *&v31[OBJC_IVAR____TtC7Climate18ClimateCoordinator_supportedPTs];

      v68[0] = v27;
      v68[1] = v28;
      __chkstk_darwin(v33);
      *(&v61 - 2) = v68;
      LOBYTE(v31) = sub_10009EA88(sub_100067ED4, (&v61 - 4), v32);

      v34 = v65;
      if (v31)
      {
        (*(v21 + 8))(v22, v10);
      }

      else
      {

        v49 = static os_log_type_t.error.getter();
        v50 = v62;
        v51 = v64;
        (*(v34 + 16))(v62, v66, v64);
        sub_100067E40();
        v52 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v52, v49))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v66 = v21;
          v55 = v54;
          v68[0] = v54;
          *v53 = 136315138;
          v56 = CAUVehicleLayoutKey.rawValue.getter();
          v57 = v50;
          v59 = v58;
          (*(v34 + 8))(v57, v51);
          v60 = sub_10000835C(v56, v59, v68);

          *(v53 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v52, v49, "Missing PT in infoResponse for layoutKey: %s", v53, 0xCu);
          sub_100006B9C(v55);

          (*(v66 + 8))(v22, v23);
        }

        else
        {

          (*(v34 + 8))(v50, v51);
          (*(v21 + 8))(v22, v23);
        }
      }

      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v36 = static os_log_type_t.default.getter();
  v37 = v64;
  v38 = v65;
  v39 = v63;
  (*(v65 + 16))(v63, v24, v64);
  sub_100067E40();
  v40 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v40, v36))
  {
    v41 = swift_slowAlloc();
    v42 = v21;
    v43 = swift_slowAlloc();
    v68[0] = v43;
    *v41 = 136315138;
    v44 = CAUVehicleLayoutKey.rawValue.getter();
    v45 = v39;
    v47 = v46;
    (*(v38 + 8))(v45, v37);
    v48 = sub_10000835C(v44, v47, v68);

    *(v41 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v40, v36, "Missing PT info in assets for layoutKey: %s", v41, 0xCu);
    sub_100006B9C(v43);

    (*(v42 + 8))(v67, v23);
  }

  else
  {

    (*(v38 + 8))(v39, v37);
    (*(v21 + 8))(v67, v23);
  }
}

void sub_1000677CC(uint64_t a1)
{
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedApplication];
  v11 = [v10 delegate];

  if (!v11)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v12 = sub_1000AF438();
  swift_unknownObjectRelease();
  v13 = *&v12[OBJC_IVAR____TtC7Climate18ClimateCoordinator_requestContentManager];

  if (!v13)
  {
    static os_log_type_t.default.getter();
    sub_100067E40();
    v23 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  sub_100067060(a1);
  if (v15)
  {
    v16 = v15;
    v17 = v14;
    goto LABEL_5;
  }

  v47 = v6;
  v24 = *(v3 + 104);
  v46 = enum case for CAUVehicleLayoutKey.seat_front(_:);
  v45 = v24;
  v24(v8);
  sub_10000801C();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = v3;
  v49 = *(v3 + 8);
  v49(v8, v2);
  if ((v25 & 1) == 0)
  {
    v26 = CAUVehicleLayoutKey.rawValue.getter();
    v44 = v27;
    v52[0] = v26;
    v52[1] = v27;
    v45(v8, v46, v2);
    v28 = CAUVehicleLayoutKey.rawValue.getter();
    v30 = v29;
    v49(v8, v2);
    v50 = v28;
    v51 = v30;
    sub_100034270();
    LOBYTE(v28) = StringProtocol.contains<A>(_:)();

    if (v28)
    {
      v45(v8, v46, v2);
      sub_100067060(v8);
      v32 = v31;
      v16 = v33;
      v49(v8, v2);
      if (v16)
      {
        v17 = v32;
LABEL_5:
        v18 = [v9 sharedApplication];
        v19 = [v18 delegate];

        if (v19)
        {
          swift_dynamicCastClassUnconditional();
          v20 = sub_1000AF438();
          swift_unknownObjectRelease();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v21 = v52[0];
          if (v52[0])
          {
            v22 = swift_allocObject();
            *(v22 + 16) = v17;
            *(v22 + 24) = v16;

            dispatch thunk of CAFUIRequestContentManager.present(identifier:completion:)();

            return;
          }

          static os_log_type_t.default.getter();
          sub_100067E40();
          v43 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_16;
        }

        goto LABEL_19;
      }
    }
  }

  v34 = static os_log_type_t.default.getter();
  v35 = v47;
  (*(v48 + 16))(v47, a1, v2);
  sub_100067E40();
  v36 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v36, v34))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52[0] = v38;
    *v37 = 136315138;
    v39 = CAUVehicleLayoutKey.rawValue.getter();
    v41 = v40;
    v49(v35, v2);
    v42 = sub_10000835C(v39, v41, v52);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v34, "Missing PT info in assets matching with infoResponse for layoutKey: %s", v37, 0xCu);
    sub_100006B9C(v38);

LABEL_16:

    return;
  }

  v49(v35, v2);
}

uint64_t sub_100067DD8(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100067E40()
{
  result = qword_1001149B0;
  if (!qword_1001149B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001149B0);
  }

  return result;
}

uint64_t sub_100067E94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067ED4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_100067F2C(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_1000680D8()
{
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v41 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v47 = &v39 - v5;
  v6 = __chkstk_darwin(v4);
  v50 = &v39 - v7;
  __chkstk_darwin(v6);
  v49 = &v39 - v8;
  v39 = OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts;
  v40 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts);
  v53 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v11 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v12;
      if (v14 == i)
      {
        v11 = v53;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_14:

  if (v11 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_16:
      v16 = 0;
      v45 = v11 & 0xFFFFFFFFFFFFFF8;
      v46 = v11 & 0xC000000000000001;
      LODWORD(v44) = enum case for CAUVehicleLayoutKey.windshield_front(_:);
      v42 = v11;
      v43 = (v41 + 104);
      v17 = (v41 + 8);
      do
      {
        if (v46)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v45 + 16))
          {
            goto LABEL_33;
          }

          v19 = *(v11 + 8 * v16 + 32);
        }

        v9 = v19;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_32;
        }

        sub_10000827C(0, &qword_1001167B0);
        CAFPositionedRequired.layoutKey.getter();
        (*v43)(v50, v44, v1);
        sub_10006B9A8();
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v53 == v51 && v54 == v52)
        {
          v18 = *v17;
          (*v17)(v50, v1);
          v18(v49, v1);
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v22 = *v17;
          (*v17)(v50, v1);
          v22(v49, v1);

          if ((v21 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if ([v9 level])
        {

          LODWORD(v43) = 2;
          v23 = 1;
          goto LABEL_37;
        }

LABEL_19:

        ++v16;
        v11 = v42;
      }

      while (v20 != v15);
    }
  }

  LODWORD(v43) = 0;
  v23 = 3;
LABEL_37:

  v24 = *(v40 + v39);
  v53 = _swiftEmptyArrayStorage;
  if (v24 >> 62)
  {
    goto LABEL_71;
  }

  for (j = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!j)
    {
      break;
    }

    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        LODWORD(v42) = v23;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v42;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v26;
      if (v28 == j)
      {
        v29 = v53;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_51:

  if (v29 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_53:
      LODWORD(v42) = v23;
      v31 = 0;
      v49 = (v29 & 0xFFFFFFFFFFFFFF8);
      v50 = (v29 & 0xC000000000000001);
      LODWORD(v45) = enum case for CAUVehicleLayoutKey.windshield_rear(_:);
      v44 = (v41 + 104);
      v32 = (v41 + 8);
      v46 = v29;
      do
      {
        if (v50)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v49 + 2))
          {
            goto LABEL_70;
          }

          v34 = *(v29 + 8 * v31 + 32);
        }

        v24 = v34;
        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_69;
        }

        sub_10000827C(0, &qword_1001167B0);
        v23 = v47;
        CAFPositionedRequired.layoutKey.getter();
        (*v44)(v48, v45, v1);
        sub_10006B9A8();
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v53 == v51 && v54 == v52)
        {
          v33 = *v32;
          (*v32)(v48, v1);
          v33(v47, v1);
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v36 = *v32;
          (*v32)(v48, v1);
          v36(v47, v1);

          if ((v23 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        if ([v24 level])
        {

          v37 = v42;
          goto LABEL_74;
        }

LABEL_56:

        ++v31;
        v29 = v46;
      }

      while (v35 != v30);
    }
  }

  v37 = v43;
LABEL_74:

  return v37;
}

char *sub_100068858(unint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_stackView;
  sub_10000827C(0, &unk_100116370);
  *&v1[v3] = UIStackView.init(axis:spacing:arrangedSubviews:)();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ClimateGroupedDefrostsButton();
  v4 = objc_msgSendSuper2(&v9, "init");
  sub_1000689A4(a1);

  sub_100068AFC();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v7 = *v6;
  *v6 = sub_10006BA38;
  v6[1] = v5;

  sub_100003380(v7);

  return v4;
}

void sub_1000689A4(unint64_t a1)
{

  v9 = sub_10006B8F0(v3, sub_10008C928, sub_1000BBA18);
  sub_10006A658(&v9);
  *(v1 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts) = v9;

  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 registerObserver:v1];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100068AFC()
{
  ObjectType = swift_getObjectType();
  sub_100069244();
  sub_1000040E8(&qword_1001167B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000D5970;
  *(v1 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v1 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void sub_100068D20()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_stackView);
}

id sub_100068D60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateGroupedDefrostsButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateGroupedDefrostsButton()
{
  result = qword_100116798;
  if (!qword_100116798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100068E8C(void **a1, void **a2)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a2;
  sub_10000827C(0, &qword_1001167B0);
  v40 = v8;
  CAFPositionedRequired.layoutKey.getter();
  v10 = CAUVehicleLayoutKey.rawValue.getter();
  v42 = v11;
  v43 = v10;
  v12 = *(v5 + 8);
  v12(v7, v4);
  v41 = v9;
  CAFPositionedRequired.layoutKey.getter();
  v13 = CAUVehicleLayoutKey.rawValue.getter();
  v15 = v14;
  v12(v7, v4);
  v16 = *(v5 + 104);
  v16(v7, enum case for CAUVehicleLayoutKey.windshield_front(_:), v4);
  v39 = CAUVehicleLayoutKey.rawValue.getter();
  v44 = v17;
  v12(v7, v4);
  v16(v7, enum case for CAUVehicleLayoutKey.windshield_rear(_:), v4);
  v18 = v42;
  v19 = v13;
  v20 = CAUVehicleLayoutKey.rawValue.getter();
  v22 = v21;
  v23 = v4;
  v24 = v43;
  v12(v7, v23);
  v25 = v24 == v19 && v18 == v15;
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v31 = v20;
    v32 = v39;
    v33 = v44;
    v34 = v24 == v39 && v18 == v44;
    if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v30 = 1;
      return v30 & 1;
    }

    if (v24 == v31 && v18 == v22)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    if (v19 != v32 || v15 != v33)
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = v38 ^ 1;
      return v30 & 1;
    }

    goto LABEL_27;
  }

  v26 = v40;
  v27 = [v40 hasBlownAir];
  v28 = v41;
  if (v27 == [v41 hasBlownAir])
  {
    if ([v26 hasFilament])
    {
      v29 = [v28 hasFilament];
      goto LABEL_11;
    }

LABEL_28:
    v30 = 0;
    return v30 & 1;
  }

  if (![v26 hasBlownAir])
  {
    goto LABEL_28;
  }

  v29 = [v28 hasBlownAir];
LABEL_11:
  v30 = v29 ^ 1;
  return v30 & 1;
}

void sub_100069244()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts);
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = _swiftEmptyArrayStorage;
    v29 = i;
    v30 = v1;
    v28 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_37;
        }

        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = CAFDefrost.symbolName.getter();
      v11 = v10;
      v32 = v9;
      if ([v7 levelInvalid])
      {
        if (qword_100113ED8 != -1)
        {
          swift_once();
        }

        v12 = qword_10011B0A8;
        v13 = objc_opt_self();
        v14 = [v13 clearColor];
        sub_10000827C(0, &qword_1001167A8);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {

          v16 = v12;
        }

        else
        {
          v18 = [v13 cl_carSystemTertiaryColor];
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            v20 = [v12 colorWithAlphaComponent:0.1];
          }

          else
          {
            v20 = [v13 tertiaryLabelColor];
          }

          v16 = v20;
        }

        i = v29;
        v1 = v30;
        v4 = v28;
      }

      else
      {
        if ([v7 level])
        {
          v17 = [objc_opt_self() labelColor];
        }

        else
        {
          if (qword_100113ED8 != -1)
          {
            swift_once();
          }

          v17 = qword_10011B0A8;
        }

        v16 = v17;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000C4C88(0, *(v5 + 2) + 1, 1, v5);
      }

      v22 = *(v5 + 2);
      v21 = *(v5 + 3);
      if (v22 >= v21 >> 1)
      {
        v5 = sub_1000C4C88((v21 > 1), v22 + 1, 1, v5);
      }

      *(v5 + 2) = v22 + 1;
      v23 = &v5[32 * v22];
      *(v23 + 4) = v32;
      *(v23 + 5) = v11;
      *(v23 + 6) = v16;
      *(v23 + 7) = 0x4028000000000000;
      ++v3;
      if (v8 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_33:

  v24 = sub_1000AB99C(v5, 4.0);

  v25 = &v27[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v26 = *(v25 + 1);
  *v25 = 0;
  *(v25 + 1) = 0;
  if (v26)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  [v27 setImage:v24 forState:0];
}

void sub_100069610()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100069244();
  }
}

void sub_100069664()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000696B8();
  }
}

uint64_t sub_1000696B8()
{
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v127 = &v122 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v122 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v122 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v122 - v15;
  v17 = __chkstk_darwin(v14);
  v126 = &v122 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v122 - v20;
  __chkstk_darwin(v19);
  v125 = &v122 - v22;
  v23 = sub_1000680D8();
  v24 = *(v2 + 104);
  v131 = v1;
  v132 = v2;
  v129 = v2 + 104;
  v130 = v0;
  v128 = v24;
  if (v23 > 1u)
  {
    if (v23 != 2)
    {
      v127 = v10;
      v59 = v24(v13, enum case for CAUVehicleLayoutKey.windshield_front(_:), v1);
      v125 = OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts;
      v60 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts);
      __chkstk_darwin(v59);
      *(&v122 - 2) = v13;

      v61 = sub_100067F2C(sub_10006BAA0, &v122 - 4, v60);
      v29 = v61;
      v126 = 0;
      v62 = v13;
      if (!(v61 >> 62))
      {
        v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v63)
        {
          goto LABEL_36;
        }

        goto LABEL_92;
      }

      goto LABEL_91;
    }

    v127 = v16;
    v37 = v126;
    v38 = v24(v126, enum case for CAUVehicleLayoutKey.windshield_front(_:), v1);
    v124 = OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts;
    v39 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts);
    __chkstk_darwin(v38);
    *(&v122 - 2) = v37;

    v40 = sub_100067F2C(sub_10006BAA0, &v122 - 4, v39);
    v29 = v40;
    v125 = 0;
    if (!(v40 >> 62))
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_16;
      }

      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v23)
  {
    v127 = v21;
    v48 = v125;
    v49 = v24(v125, enum case for CAUVehicleLayoutKey.windshield_front(_:), v1);
    v29 = &v122;
    v124 = OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts;
    v50 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts);
    __chkstk_darwin(v49);
    *(&v122 - 2) = v48;

    v51 = sub_100067F2C(sub_10006BAA0, &v122 - 4, v50);
    v52 = v51;
    v126 = 0;
    if (!(v51 >> 62))
    {
      v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_26;
      }

      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v126 = v5;
  v25 = v127;
  v26 = v24(v127, enum case for CAUVehicleLayoutKey.windshield_front(_:), v1);
  v124 = OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts;
  v27 = *(v0 + OBJC_IVAR____TtC7Climate28ClimateGroupedDefrostsButton_defrosts);
  __chkstk_darwin(v26);
  *(&v122 - 2) = v25;

  v28 = sub_100067F2C(sub_10006BA40, &v122 - 4, v27);
  v29 = v28;
  v125 = 0;
  if (v28 >> 62)
  {
    goto LABEL_52;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_53;
  }

  do
  {
    v31 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v35 = [v32 levelRange];
      v36 = [v35 maximumValue];

      [v33 setLevel:v36];
      ++v31;
      if (v34 == v30)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  while (v30);
LABEL_53:

  v70 = v131;
  v71 = *(v132 + 8);
  v132 += 8;
  v71(v127, v131);
  v72 = v126;
  v73 = v128(v126, enum case for CAUVehicleLayoutKey.windshield_rear(_:), v70);
  v74 = *(v130 + v124);
  __chkstk_darwin(v73);
  *(&v122 - 2) = v72;

  v75 = sub_100067F2C(sub_10006BAA0, &v122 - 4, v74);
  v29 = v75;
  v123 = v71;
  if (v75 >> 62)
  {
    while (1)
    {
      v76 = _CocoaArrayWrapper.endIndex.getter();
      if (!v76)
      {
        break;
      }

LABEL_55:
      v77 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v77 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v78 = *(v29 + 8 * v77 + 32);
        }

        v79 = v78;
        v80 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        v81 = [v78 levelRange];
        v82 = [v81 maximumValue];

        [v79 setLevel:v82];
        ++v77;
        if (v80 == v76)
        {
          goto LABEL_105;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v41 = _CocoaArrayWrapper.endIndex.getter();
      if (v41)
      {
LABEL_16:
        v42 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v42 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v43 = *(v29 + 8 * v42 + 32);
          }

          v44 = v43;
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_45;
          }

          v46 = [v43 levelRange];
          v47 = [v46 minimumValue];

          [v44 setLevel:v47];
          ++v42;
        }

        while (v45 != v41);
      }

LABEL_66:

      v83 = v131;
      v84 = *(v132 + 8);
      v132 += 8;
      v84(v126, v131);
      v85 = v127;
      v86 = v128(v127, enum case for CAUVehicleLayoutKey.windshield_rear(_:), v83);
      v52 = &v122;
      v87 = *(v130 + v124);
      __chkstk_darwin(v86);
      *(&v122 - 2) = v85;

      v88 = sub_100067F2C(sub_10006BAA0, &v122 - 4, v87);
      v29 = v88;
      v123 = v84;
      if (v88 >> 62)
      {
        v89 = _CocoaArrayWrapper.endIndex.getter();
        if (!v89)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v89)
        {
          goto LABEL_109;
        }
      }

      v90 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v90 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v91 = *(v29 + 8 * v90 + 32);
        }

        v52 = v91;
        v92 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        v93 = [v91 levelRange];
        v94 = [v93 maximumValue];

        [v52 setLevel:v94];
        ++v90;
        if (v92 == v89)
        {
          goto LABEL_109;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
LABEL_26:
        v54 = 0;
        do
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v55 = *(v52 + 8 * v54 + 32);
          }

          v56 = v55;
          v29 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_46;
          }

          v57 = [v55 levelRange];
          v58 = [v57 maximumValue];

          [v56 setLevel:v58];
          ++v54;
        }

        while (v29 != v53);
      }

LABEL_79:

      v95 = v131;
      v96 = *(v132 + 8);
      v132 += 8;
      v96(v125, v131);
      v97 = v127;
      v98 = v128(v127, enum case for CAUVehicleLayoutKey.windshield_rear(_:), v95);
      v99 = *(v130 + v124);
      __chkstk_darwin(v98);
      *(&v122 - 2) = v97;

      v100 = sub_100067F2C(sub_10006BAA0, &v122 - 4, v99);
      v29 = v100;
      v123 = v96;
      if (v100 >> 62)
      {
        v101 = _CocoaArrayWrapper.endIndex.getter();
        if (!v101)
        {
LABEL_109:

          v120 = v127;
          return v123(v120, v131);
        }
      }

      else
      {
        v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v101)
        {
          goto LABEL_109;
        }
      }

      v62 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v62 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_90;
          }

          v102 = *(v29 + 8 * v62 + 32);
        }

        v103 = v102;
        v104 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v105 = [v102 levelRange];
        v106 = [v105 minimumValue];

        [v103 setLevel:v106];
        ++v62;
        if (v104 == v101)
        {
          goto LABEL_109;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      v63 = _CocoaArrayWrapper.endIndex.getter();
      if (v63)
      {
LABEL_36:
        v64 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v64 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v65 = *(v29 + 8 * v64 + 32);
          }

          v66 = v65;
          v67 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            goto LABEL_47;
          }

          v68 = [v65 levelRange];
          v69 = [v68 minimumValue];

          [v66 setLevel:v69];
          ++v64;
        }

        while (v67 != v63);
      }

LABEL_92:

      v107 = v131;
      v108 = *(v132 + 8);
      v132 += 8;
      v108(v62, v131);
      v109 = v127;
      v110 = v128(v127, enum case for CAUVehicleLayoutKey.windshield_rear(_:), v107);
      v111 = *&v125[v130];
      __chkstk_darwin(v110);
      *(&v122 - 2) = v109;

      v112 = sub_100067F2C(sub_10006BAA0, &v122 - 4, v111);
      v29 = v112;
      if (v112 >> 62)
      {
        v113 = _CocoaArrayWrapper.endIndex.getter();
        if (!v113)
        {
LABEL_112:

          return (v108)(v127, v131);
        }
      }

      else
      {
        v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v113)
        {
          goto LABEL_112;
        }
      }

      v114 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v114 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_103;
          }

          v115 = *(v29 + 8 * v114 + 32);
        }

        v116 = v115;
        v117 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          break;
        }

        v118 = [v115 levelRange];
        v119 = [v118 minimumValue];

        [v116 setLevel:v119];
        ++v114;
        if (v117 == v113)
        {
          goto LABEL_112;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
    }
  }

  else
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_55;
    }
  }

LABEL_105:

  v120 = v126;
  return v123(v120, v131);
}

uint64_t sub_10006A48C()
{
  v0 = type metadata accessor for CAUVehicleLayoutKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000827C(0, &qword_1001167B0);
  CAFPositionedRequired.layoutKey.getter();
  sub_10006B9A8();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v1 + 8))(v3, v0);

  return v4 & 1;
}

uint64_t sub_10006A658(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10006B994(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10006A6D4(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10006A6D4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000827C(0, &qword_1001167B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10006A8D8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10006A7E8(0, v2, 1, a1);
  }
}

void sub_10006A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_100068E8C(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_10006A8D8(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v133 = a1;
  v145 = type metadata accessor for CAUVehicleLayoutKey();
  __chkstk_darwin(v145);
  v144 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_110:
    v13 = *v133;
    if (*v133)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_112;
    }

    goto LABEL_149;
  }

  v130 = a4;
  v11 = 0;
  v143 = (v8 + 8);
  v142 = enum case for CAUVehicleLayoutKey.windshield_front(_:);
  v141 = (v8 + 104);
  v140 = enum case for CAUVehicleLayoutKey.windshield_rear(_:);
  v12 = _swiftEmptyArrayStorage;
  v131 = a3;
  while (1)
  {
    v13 = v11 + 1;
    v134 = v11;
    if (v11 + 1 < v10)
    {
      v14 = *a3;
      v15 = *(*a3 + 8 * v13);
      v155 = *(*a3 + 8 * v11);
      v16 = v155;
      v156[0] = v15;
      v17 = v15;
      v18 = v16;
      v19 = sub_100068E8C(v156, &v155);
      if (v5)
      {

        return;
      }

      v20 = v19;
      v132 = v12;

      v21 = v11 + 2;
      v22 = 8 * v11;
      v23 = (v14 + 8 * v11 + 16);
      while (v10 != v21)
      {
        v24 = *v23;
        v155 = *(v23 - 1);
        v25 = v155;
        v156[0] = v24;
        v26 = v24;
        v27 = v25;
        v28 = sub_100068E8C(v156, &v155);

        ++v21;
        ++v23;
        if ((v20 ^ v28))
        {
          v10 = v21 - 1;
          break;
        }
      }

      a3 = v131;
      v12 = v132;
      if (v20)
      {
        v29 = v134;
        if (v10 < v134)
        {
          goto LABEL_143;
        }

        if (v134 < v10)
        {
          v30 = 8 * v10 - 8;
          v31 = v10;
          do
          {
            if (v29 != --v31)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_147;
              }

              v33 = *(v32 + v22);
              *(v32 + v22) = *(v32 + v30);
              *(v32 + v30) = v33;
            }

            ++v29;
            v30 -= 8;
            v22 += 8;
          }

          while (v29 < v31);
        }
      }

      v13 = v10;
      v5 = 0;
    }

    v34 = a3[1];
    if (v13 >= v34)
    {
      goto LABEL_58;
    }

    if (__OFSUB__(v13, v134))
    {
      goto LABEL_139;
    }

    if ((v13 - v134) >= v130)
    {
LABEL_58:
      v36 = v134;
      goto LABEL_59;
    }

    v35 = v134 + v130;
    if (__OFADD__(v134, v130))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return;
    }

    if (v35 >= v34)
    {
      v35 = a3[1];
    }

    if (v35 < v134)
    {
      goto LABEL_142;
    }

    v36 = v134;
    if (v13 != v35)
    {
      v135 = v35;
      v132 = v12;
      v129 = v5;
      v37 = *a3;
      v38 = v134;
      v139 = sub_10000827C(0, &qword_1001167B0);
      v146 = v37;
      v39 = (v37 + 8 * v13 - 8);
      v40 = v38 - v13;
      while (1)
      {
        v137 = v39;
        v138 = v13;
        v41 = *(v146 + 8 * v13);
        v136 = v40;
        v42 = v40;
        while (1)
        {
          v148 = v39;
          v149 = v42;
          v43 = *v39;
          v44 = v41;
          v45 = v43;
          v46 = v144;
          v153 = v44;
          CAFPositionedRequired.layoutKey.getter();
          v151 = CAUVehicleLayoutKey.rawValue.getter();
          v152 = v47;
          v48 = *v143;
          v49 = v145;
          (*v143)(v46, v145);
          v154 = v45;
          CAFPositionedRequired.layoutKey.getter();
          v50 = CAUVehicleLayoutKey.rawValue.getter();
          v52 = v51;
          v48(v46, v49);
          v53 = *v141;
          (*v141)(v46, v142, v49);
          v147 = CAUVehicleLayoutKey.rawValue.getter();
          v150 = v54;
          v48(v46, v49);
          v53(v46, v140, v49);
          v55 = v151;
          v56 = v50;
          v57 = CAUVehicleLayoutKey.rawValue.getter();
          v59 = v58;
          v60 = v49;
          v61 = v52;
          v62 = v152;
          v48(v46, v60);
          if ((v55 != v56 || v62 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v63 = v153;
          v64 = [v153 hasBlownAir];
          v65 = v154;
          if (v64 == [v154 hasBlownAir])
          {
            if (([v63 hasFilament] & 1) == 0)
            {
LABEL_28:

              goto LABEL_29;
            }

            v66 = [v65 hasFilament];
          }

          else
          {
            if (([v63 hasBlownAir] & 1) == 0)
            {
              goto LABEL_28;
            }

            v66 = [v65 hasBlownAir];
          }

          v67 = v66;

          if (v67)
          {
            goto LABEL_29;
          }

LABEL_52:
          v74 = v149;
          if (!v146)
          {
            goto LABEL_144;
          }

          v75 = v148;
          v76 = *v148;
          v41 = v148[1];
          *v148 = v41;
          v75[1] = v76;
          v39 = v75 - 1;
          v77 = __CFADD__(v74, 1);
          v42 = v74 + 1;
          if (v77)
          {
            goto LABEL_29;
          }
        }

        v68 = v57;
        v69 = v147;
        v70 = v150;
        if (v55 == v147 && v62 == v150)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

        v71 = v153;
        if (v55 == v68 && v62 == v59)
        {
        }

        else
        {
          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v72 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        if (v56 != v69 || v61 != v70)
        {
          v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v73)
          {
            goto LABEL_29;
          }

          goto LABEL_52;
        }

LABEL_56:

LABEL_29:
        v13 = v138 + 1;
        v39 = v137 + 1;
        v40 = v136 - 1;
        if (v138 + 1 == v135)
        {
          v13 = v135;
          v5 = v129;
          a3 = v131;
          v12 = v132;
          goto LABEL_58;
        }
      }

      goto LABEL_52;
    }

LABEL_59:
    if (v13 < v36)
    {
      goto LABEL_138;
    }

    v78 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_10006B7C0(0, *(v12 + 2) + 1, 1, v12);
    }

    v13 = *(v12 + 2);
    v79 = *(v12 + 3);
    v80 = v13 + 1;
    if (v13 >= v79 >> 1)
    {
      v12 = sub_10006B7C0((v79 > 1), v13 + 1, 1, v12);
    }

    *(v12 + 2) = v80;
    v81 = &v12[16 * v13];
    *(v81 + 4) = v134;
    *(v81 + 5) = v78;
    v82 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (v13)
    {
      break;
    }

LABEL_3:
    v10 = a3[1];
    v11 = v78;
    if (v78 >= v10)
    {
      goto LABEL_110;
    }
  }

  while (1)
  {
    v83 = v80 - 1;
    if (v80 >= 4)
    {
      v88 = &v12[16 * v80 + 32];
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_125;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_126;
      }

      v95 = &v12[16 * v80];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_128;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_131;
      }

      if (v99 >= v91)
      {
        v117 = &v12[16 * v83 + 32];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_137;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

    if (v80 == 3)
    {
      v84 = *(v12 + 4);
      v85 = *(v12 + 5);
      v94 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      v87 = v94;
LABEL_79:
      if (v87)
      {
        goto LABEL_127;
      }

      v100 = &v12[16 * v80];
      v102 = *v100;
      v101 = *(v100 + 1);
      v103 = __OFSUB__(v101, v102);
      v104 = v101 - v102;
      v105 = v103;
      if (v103)
      {
        goto LABEL_130;
      }

      v106 = &v12[16 * v83 + 32];
      v108 = *v106;
      v107 = *(v106 + 1);
      v94 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v94)
      {
        goto LABEL_133;
      }

      if (__OFADD__(v104, v109))
      {
        goto LABEL_134;
      }

      if (v104 + v109 >= v86)
      {
        if (v86 < v109)
        {
          v83 = v80 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_93;
    }

    v110 = &v12[16 * v80];
    v112 = *v110;
    v111 = *(v110 + 1);
    v94 = __OFSUB__(v111, v112);
    v104 = v111 - v112;
    v105 = v94;
LABEL_93:
    if (v105)
    {
      goto LABEL_129;
    }

    v113 = &v12[16 * v83];
    v115 = *(v113 + 4);
    v114 = *(v113 + 5);
    v94 = __OFSUB__(v114, v115);
    v116 = v114 - v115;
    if (v94)
    {
      goto LABEL_132;
    }

    if (v116 < v104)
    {
      goto LABEL_3;
    }

LABEL_100:
    v13 = v83 - 1;
    if (v83 - 1 >= v80)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_145;
    }

    v121 = *&v12[16 * v13 + 32];
    v122 = *&v12[16 * v83 + 40];
    sub_10006B384((*a3 + 8 * v121), (*a3 + 8 * *&v12[16 * v83 + 32]), (*a3 + 8 * v122), v82);
    if (v5)
    {
      goto LABEL_120;
    }

    if (v122 < v121)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_10006B7AC(v12);
    }

    if (v13 >= *(v12 + 2))
    {
      goto LABEL_124;
    }

    v123 = &v12[16 * v13];
    *(v123 + 4) = v121;
    *(v123 + 5) = v122;
    v157 = v12;
    sub_10006B720(v83);
    v12 = v157;
    v80 = *(v157 + 2);
    if (v80 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  v12 = sub_10006B7AC(v12);
LABEL_112:
  v157 = v12;
  v124 = *(v12 + 2);
  if (v124 >= 2)
  {
    while (*a3)
    {
      v125 = *&v12[16 * v124];
      v126 = *&v12[16 * v124 + 24];
      sub_10006B384((*a3 + 8 * v125), (*a3 + 8 * *&v12[16 * v124 + 16]), (*a3 + 8 * v126), v13);
      if (v5)
      {
        goto LABEL_120;
      }

      if (v126 < v125)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_10006B7AC(v12);
      }

      if (v124 - 2 >= *(v12 + 2))
      {
        goto LABEL_136;
      }

      v127 = &v12[16 * v124];
      *v127 = v125;
      *(v127 + 1) = v126;
      v157 = v12;
      sub_10006B720(v124 - 1);
      v12 = v157;
      v124 = *(v157 + 2);
      if (v124 <= 1)
      {
        goto LABEL_120;
      }
    }

    goto LABEL_146;
  }

LABEL_120:
}

uint64_t sub_10006B384(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_100068E8C(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_100068E8C(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_10006B720(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006B7AC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10006B7C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_1001167C0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10006B8F0(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_10006B9A8()
{
  result = qword_100115100;
  if (!qword_100115100)
  {
    type metadata accessor for CAUVehicleLayoutKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115100);
  }

  return result;
}

uint64_t sub_10006BA00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BA60()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10006BB04(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton);
  v7 = ClimateButton.imageSymbolConfiguration.getter();
  v4 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
  *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = a1;
  v5 = a1;

  v6 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

void (*sub_10006BBC8(id *a1))(uint64_t a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton);
  *a1 = ClimateButton.imageSymbolConfiguration.getter();
  return sub_10006BC1C;
}

void sub_10006BC1C(uint64_t a1, char a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = v4;
    v6 = ClimateButton.imageSymbolConfiguration.getter();
    v7 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
    *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v5;
    v8 = v5;

    v9 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    v10 = static NSObject.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v11 = *a1;
  }

  else
  {
    v12 = ClimateButton.imageSymbolConfiguration.getter();
    v13 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
    *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v4;
    v16 = v4;

    v14 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v11 = v16;
  }
}

BOOL sub_10006BD5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton);
  v2 = OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost;
  v3 = [*(v1 + OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost) level];
  v4 = [*(v1 + v2) levelInvalid];
  v5 = 8;
  if (v3)
  {
    v5 = 9;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v3 != 0;
  }
}

char *sub_10006BDD0(void *a1)
{
  v3 = objc_allocWithZone(type metadata accessor for ClimateDefrostServiceButton());
  sub_1000047D8(a1, 0);
  *(v1 + OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton) = v4;
  *(v1 + OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrost) = a1;
  v5 = a1;
  v6 = sub_10001414C(0, 0, 1);
  v7 = OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton;
  v8 = *&v6[OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton];
  v9 = v6;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v6[v7] _setCornerRadius:0.0];
  v10 = *&v6[v7];
  v11 = *&v10[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor];
  v12 = *&v10[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8];
  v13 = *&v10[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16];
  v14 = objc_opt_self();
  v15 = v10;
  v16 = v11;
  v17 = v12;

  v18 = [v14 clearColor];
  if (v18)
  {
    v19 = v18;

    v16 = v19;
  }

  sub_1000A70A8(v16, v17, v13);

  v20 = (*&v6[v7] + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  v23 = &v9[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v24 = *v23;
  *v23 = v22;
  v23[1] = v21;
  v25 = v9;
  sub_10001B054(v22);
  sub_100003380(v24);

  [v5 registerObserver:v25];
  [v25 addSubview:*&v6[v7]];
  sub_10006BFFC();
  sub_10006C2E8();

  return v25;
}

void sub_10006BFFC()
{
  v1 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D5D90;
  v3 = *&v0[OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton];
  v4 = [v3 leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

void sub_10006C2E8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton];
  v3 = OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost;
  v4 = [*(v2 + OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost) level];
  v5 = [*(v2 + v3) levelInvalid];
  v1[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = (v4 != 0) & ~v5;
  sub_1000C10C4();
  v6 = *&v1[OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton];
  v7 = OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost;
  [*(v6 + OBJC_IVAR____TtC7Climate27ClimateDefrostServiceButton_defrost) level];
  [v1 setEnabled:{objc_msgSend(*(v6 + v7), "levelInvalid") ^ 1}];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_10006C3D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton);
}

id sub_10006C410()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateDefrostIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateDefrostIndicator()
{
  result = qword_1001167F8;
  if (!qword_1001167F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C530(void *a1, char a2)
{
  v3 = [a1 receivedAllValues];
  v4 = static os_log_type_t.debug.getter();
  if (v3)
  {
    if (qword_100113F00 != -1)
    {
      v8 = v4;
      swift_once();
      v4 = v8;
    }

    v5 = qword_10011B1C0;
    v6 = v4;
    if (os_log_type_enabled(qword_10011B1C0, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a2 != 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Defrost indicator did update ON: %{BOOL}d", v7, 8u);
    }

    sub_10006C2E8();
  }

  else
  {
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

Climate::ClimatePresentation __swiftcall ClimatePresentation.init(on:auto:restricted:invalid:disabled:)(Swift::Bool on, Swift::Bool a2, Swift::Bool restricted, Swift::Bool invalid, Swift::Bool disabled)
{
  if (on)
  {
    if (a2)
    {
      if (restricted)
      {
        if (invalid)
        {
          result.rawValue = 15;
        }

        else
        {
          result.rawValue = 7;
        }

        if (!disabled)
        {
          return result;
        }

        return (result.rawValue | 0x10);
      }

      if (invalid)
      {
        result.rawValue = 11;
      }

      else
      {
        result.rawValue = 3;
      }

      if (disabled)
      {
        return (result.rawValue | 0x10);
      }
    }

    else if (restricted)
    {
      if (invalid)
      {
        result.rawValue = 13;
      }

      else
      {
        result.rawValue = 5;
      }

      if (disabled)
      {
        return (result.rawValue | 0x10);
      }
    }

    else
    {
      if (invalid)
      {
        result.rawValue = 9;
      }

      else
      {
        result.rawValue = 1;
      }

      if (disabled)
      {
        return (result.rawValue | 0x10);
      }
    }
  }

  else if (a2)
  {
    if (restricted)
    {
      if (invalid)
      {
        result.rawValue = 14;
      }

      else
      {
        result.rawValue = 6;
      }

      if (disabled)
      {
        return (result.rawValue | 0x10);
      }
    }

    else
    {
      if (invalid)
      {
        result.rawValue = 10;
      }

      else
      {
        result.rawValue = 2;
      }

      if (disabled)
      {
        return (result.rawValue | 0x10);
      }
    }
  }

  else if (restricted)
  {
    if (invalid)
    {
      result.rawValue = 12;
    }

    else
    {
      result.rawValue = 4;
    }

    if (disabled)
    {
      return (result.rawValue | 0x10);
    }
  }

  else
  {
    if (invalid)
    {
      result.rawValue = 8;
    }

    else
    {
      result.rawValue = 0;
    }

    if (disabled)
    {
      return (result.rawValue | 0x10);
    }
  }

  return result;
}

Swift::Int sub_10006C83C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006C8B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10006C8F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000504C8();

  *a1 = v2;
  return result;
}

uint64_t ClimatePresentation.description.getter(char a1)
{
  _StringGuts.grow(_:)(73);
  v2._object = 0x80000001000DD0C0;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v2);
  if ((a1 & 0x10) != 0)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if ((a1 & 0x10) != 0)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0x64696C61766E6920;
  v6._object = 0xE90000000000003DLL;
  String.append(_:)(v6);
  if ((a1 & 8) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a1 & 8) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0x6369727473657220;
  v10._object = 0xEC0000003D646574;
  String.append(_:)(v10);
  if ((a1 & 4) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if ((a1 & 4) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x3D6F74756120;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  if ((a1 & 2) != 0)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if ((a1 & 2) != 0)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 1030647584;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  if (a1)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a1)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 0;
}

uint64_t ClimatePresentation.accessibilityLabel.getter(char a1)
{
  _StringGuts.grow(_:)(52);
  v2._countAndFlagsBits = 0x656C62617369643CLL;
  v2._object = 0xEA00000000003D64;
  String.append(_:)(v2);
  if ((a1 & 0x10) != 0)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if ((a1 & 0x10) != 0)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0x64696C61766E6920;
  v6._object = 0xE90000000000003DLL;
  String.append(_:)(v6);
  if ((a1 & 8) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a1 & 8) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0x6369727473657220;
  v10._object = 0xEC0000003D646574;
  String.append(_:)(v10);
  if ((a1 & 4) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if ((a1 & 4) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x3D6F74756120;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  if ((a1 & 2) != 0)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if ((a1 & 2) != 0)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 1030647584;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  if (a1)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a1)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 0;
}