unint64_t sub_10006CCB0()
{
  result = qword_100116808;
  if (!qword_100116808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116808);
  }

  return result;
}

unint64_t sub_10006CD08()
{
  result = qword_100116810;
  if (!qword_100116810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116810);
  }

  return result;
}

unint64_t sub_10006CD60()
{
  result = qword_100116818;
  if (!qword_100116818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116818);
  }

  return result;
}

unint64_t sub_10006CDB8()
{
  result = qword_100116820;
  if (!qword_100116820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116820);
  }

  return result;
}

uint64_t sub_10006CE48(void *a1, uint64_t (*a2)(BOOL, void, _BOOL8))
{
  v4 = *(v2 + *a1);
  v5 = [v4 heatingCoolingLevelRange];
  CAFRange.maximumValue<A>()();

  v6 = [v4 heatingCoolingLevelRange];
  CAFRange.minimumValue<A>()();

  v7 = [v4 heatingCoolingLevelRange];
  CAFRange.minimumValue<A>()();

  if (v11 <= 0)
  {
    v9 = [v4 heatingCoolingLevelRange];
    CAFRange.maximumValue<A>()();

    v8 = v11 >= 0;
  }

  else
  {
    v8 = 0;
  }

  return a2(v11 > 0, v11 >> 31, v8);
}

void sub_10006CFA8(char a1, char a2, char a3)
{
  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_currentValue);
  if (!v5 && (a3 & 1) != 0)
  {
    v6 = OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_isInPositiveRange;
    if (*(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_isInPositiveRange) == 1 && (a1 & 1) != 0)
    {
      v7 = [*(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel) heatingCoolingLevelRange];
LABEL_20:
      v18 = v7;
      CAFRange.maximumValue<A>()();
LABEL_21:

      v17 = v28;
      goto LABEL_22;
    }

    if (a2)
    {
      v10 = [*(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel) heatingCoolingLevelRange];
      CAFRange.minimumValue<A>()();

      sub_10005BAB8(v28);
      *(v4 + v6) = 0;
    }

    else
    {
      v19 = [*(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel) heatingCoolingLevelRange];
      CAFRange.maximumValue<A>()();

      sub_10005BAB8(v28);
      *(v4 + v6) = 1;
    }

    return;
  }

  if (v5 < 1)
  {
    if (v5 < 0)
    {
      if (a3)
      {
        v21 = 0;
      }

      else
      {
        v25 = [*(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel) heatingCoolingLevelRange];
        CAFRange.maximumValue<A>()();

        v21 = v28;
      }

      v26 = *(v4 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel);
      v27 = [v26 heatingCoolingLevelRange];
      CAFRange.stepValue<A>()();

      v17 = v5 + v28;
      if (__OFADD__(v5, v28))
      {
        goto LABEL_45;
      }

      if (v17 < v21)
      {
        goto LABEL_22;
      }

      sub_10005BAB8(v21);
      if (v21)
      {
        v18 = [v26 heatingCoolingLevelRange];
        CAFRange.minimumValue<A>()();
        goto LABEL_21;
      }

      if ((a1 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if ((a1 & 1) == 0)
      {
        v22 = *(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel);
        v23 = [v22 heatingCoolingLevelRange];
        CAFRange.maximumValue<A>()();

        v24 = [v22 heatingCoolingLevelRange];
        if (v28 < 0)
        {
          CAFRange.maximumValue<A>()();
        }

        else
        {
          CAFRange.minimumValue<A>()();
        }

        sub_10005BAB8(v28);
        goto LABEL_41;
      }

      v11 = *(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel);
      v12 = [v11 heatingCoolingLevelRange];
      CAFRange.minimumValue<A>()();

      v13 = [v11 heatingCoolingLevelRange];
      if (v28 <= 0)
      {
        CAFRange.maximumValue<A>()();
      }

      else
      {
        CAFRange.minimumValue<A>()();
      }

      sub_10005BAB8(v28);
    }

    *(v4 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_isInPositiveRange) = 1;
    return;
  }

  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v14 = [*(v3 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel) heatingCoolingLevelRange];
    CAFRange.minimumValue<A>()();

    v9 = v28;
  }

  v15 = *(v4 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_steeringWheel);
  v16 = [v15 heatingCoolingLevelRange];
  CAFRange.stepValue<A>()();

  v17 = v5 - v28;
  if (__OFSUB__(v5, v28))
  {
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  if (v9 < v17)
  {
LABEL_22:
    sub_10005BAB8(v17);
    return;
  }

  sub_10005BAB8(v9);
  if (v9)
  {
    v7 = [v15 heatingCoolingLevelRange];
    goto LABEL_20;
  }

  if (a2)
  {
LABEL_41:
    *(v4 + OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_isInPositiveRange) = 0;
  }
}

uint64_t sub_10006D4C4(char a1, char a2, char a3)
{
  v4 = v3;
  v5 = OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_currentValue;
  v6 = *(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_currentValue);
  if (v6 || (a3 & 1) == 0)
  {
    if (v6 >= 1)
    {
      if (a3)
      {
        v11 = 0;
      }

      else
      {
        v16 = [*(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling) heatingCoolingLevelRange];
        CAFRange.minimumValue<A>()();

        v11 = v30;
      }

      v17 = *(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling);
      v18 = [v17 heatingCoolingLevelRange];
      CAFRange.stepValue<A>()();

      result = (v6 - v30);
      if (!__OFSUB__(v6, v30))
      {
        if (v11 < result)
        {
          goto LABEL_18;
        }

        *(v4 + v5) = v11;
        v19 = *((swift_isaMask & **(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView)) + 0x88);
        result = (v19)(v11);
        if (v11)
        {
          v20 = [v17 heatingCoolingLevelRange];
          CAFRange.maximumValue<A>()();
LABEL_21:

          *(v4 + v5) = v30;
          return v19();
        }

        if ((a2 & 1) == 0)
        {
          return result;
        }

LABEL_39:
        *(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_isInPositiveRange) = 0;
        return result;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

    if (v6 < 0)
    {
      if (a3)
      {
        v23 = 0;
      }

      else
      {
        v27 = [*(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling) heatingCoolingLevelRange];
        CAFRange.maximumValue<A>()();

        v23 = v30;
      }

      v28 = *(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling);
      v29 = [v28 heatingCoolingLevelRange];
      CAFRange.stepValue<A>()();

      result = (v6 + v30);
      if (__OFADD__(v6, v30))
      {
        goto LABEL_43;
      }

      if (result < v23)
      {
        goto LABEL_18;
      }

      *(v4 + v5) = v23;
      v19 = *((swift_isaMask & **(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView)) + 0x88);
      result = (v19)(v23);
      if (v23)
      {
        v20 = [v28 heatingCoolingLevelRange];
        CAFRange.minimumValue<A>()();
        goto LABEL_21;
      }

      if ((a1 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if ((a1 & 1) == 0)
      {
        v24 = *(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling);
        v25 = [v24 heatingCoolingLevelRange];
        CAFRange.maximumValue<A>()();

        v26 = [v24 heatingCoolingLevelRange];
        if (v30 < 0)
        {
          CAFRange.maximumValue<A>()();
        }

        else
        {
          CAFRange.minimumValue<A>()();
        }

        *(v4 + v5) = v30;
        result = (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView)) + 0x88))();
        goto LABEL_39;
      }

      v13 = *(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling);
      v14 = [v13 heatingCoolingLevelRange];
      CAFRange.minimumValue<A>()();

      v15 = [v13 heatingCoolingLevelRange];
      if (v30 <= 0)
      {
        CAFRange.maximumValue<A>()();
      }

      else
      {
        CAFRange.minimumValue<A>()();
      }

      *(v4 + v5) = v30;
      result = (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView)) + 0x88))();
    }

    *(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_isInPositiveRange) = 1;
    return result;
  }

  v7 = OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_isInPositiveRange;
  if (*(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_isInPositiveRange) == 1 && (a1 & 1) != 0)
  {
    v8 = [*(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling) heatingCoolingLevelRange];
    CAFRange.maximumValue<A>()();

    LODWORD(result) = v30;
LABEL_18:
    *(v4 + v5) = result;
    return (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView)) + 0x88))();
  }

  if (a2)
  {
    v12 = [*(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling) heatingCoolingLevelRange];
    CAFRange.minimumValue<A>()();

    *(v4 + v5) = v30;
    result = (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView)) + 0x88))();
    *(v4 + v7) = 0;
  }

  else
  {
    v21 = [*(v3 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling) heatingCoolingLevelRange];
    CAFRange.maximumValue<A>()();

    *(v4 + v5) = v30;
    result = (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView)) + 0x88))();
    *(v4 + v7) = 1;
  }

  return result;
}

void sub_10006DBC8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v23 = v4;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() _systemImageNamed:v6];

    [v23 setImage:v7];
    if (qword_100113E88 != -1)
    {
      swift_once();
    }

    [v23 setTintColor:qword_10011AFA0];
    [v2 addSubview:v23];
    v8 = objc_opt_self();
    sub_1000040E8(&unk_100114770);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000D5D90;
    v10 = [v23 topAnchor];
    v11 = [v2 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:5.0];

    *(v9 + 32) = v12;
    v13 = [v23 trailingAnchor];
    v14 = [v2 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-5.0];

    *(v9 + 40) = v15;
    v16 = [v23 widthAnchor];
    v17 = [v16 constraintEqualToConstant:15.0];

    *(v9 + 48) = v17;
    v18 = [v23 heightAnchor];

    v19 = [v18 constraintEqualToConstant:15.0];
    *(v9 + 56) = v19;
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 activateConstraints:isa];

    v21 = *&v2[v3];
    if (v21)
    {
      v22 = v21;
      [v22 setHidden:(a2() & 0x1A) != 2];
    }
  }
}

id sub_10006DF64()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView) + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView);
  v2 = ClimateButton.imageSymbolConfiguration.getter();

  return v2;
}

void sub_10006DFB4(void *a1)
{
  v7 = *(*(v1 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView) + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView);
  v3 = ClimateButton.imageSymbolConfiguration.getter();
  v4 = *&v7[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v7[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = a1;
  v5 = a1;

  v6 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

void (*sub_10006E098(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView);
  v4 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
  v6 = ClimateButton.imageSymbolConfiguration.getter();

  *a1 = v6;
  return sub_100057F1C;
}

uint64_t sub_10006E114()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling);
  if (CAFSeatHeatingCooling.isCooling.getter())
  {
    v2 = 1;
  }

  else
  {
    v2 = CAFSeatHeatingCooling.isHeating.getter();
  }

  v3 = [v1 hasOn];
  v4 = [v1 autoMode];
  if (!v3)
  {
    v6 = [v1 heatingCoolingLevelRestricted];
    v7 = [v1 heatingCoolingLevelInvalid];
    v8 = [v1 heatingCoolingLevelDisabled];
    if (v2)
    {
      if (v4)
      {
        if (v6)
        {
          if (v7)
          {
            result = 15;
          }

          else
          {
            result = 7;
          }

          if ((v8 & 1) == 0)
          {
            return result;
          }
        }

        else
        {
          if (v7)
          {
            result = 11;
          }

          else
          {
            result = 3;
          }

          if (!v8)
          {
            return result;
          }
        }
      }

      else if (v6)
      {
        if (v7)
        {
          result = 13;
        }

        else
        {
          result = 5;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        if (v7)
        {
          result = 9;
        }

        else
        {
          result = 1;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }
    }

    else if (v4)
    {
      if (v6)
      {
        if (v7)
        {
          result = 14;
        }

        else
        {
          result = 6;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        if (v7)
        {
          result = 10;
        }

        else
        {
          result = 2;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }
    }

    else if (v6)
    {
      if (v7)
      {
        result = 12;
      }

      else
      {
        result = 4;
      }

      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v7)
      {
        result = 8;
      }

      else
      {
        result = 0;
      }

      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    return result | 0x10;
  }

  if ([v1 onRestricted])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v1 heatingCoolingLevelRestricted];
  }

  if ([v1 onInvalid])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v1 heatingCoolingLevelInvalid];
  }

  if ([v1 onDisabled])
  {
    if (v2)
    {
      if (v4)
      {
        if (v5)
        {
          if (v10)
          {
            return 31;
          }

          return 23;
        }

        if (v10)
        {
          return 27;
        }

        return 19;
      }

      if (v5)
      {
        if (v10)
        {
          return 29;
        }

        return 21;
      }

      if (v10)
      {
        return 25;
      }

      return 17;
    }

    if (v4)
    {
      if (v5)
      {
        if (v10)
        {
          return 30;
        }

        return 22;
      }

      if (v10)
      {
        return 26;
      }

      return 18;
    }

    if (v5)
    {
      if (v10)
      {
        return 28;
      }

      return 20;
    }

    if (v10)
    {
      return 24;
    }

    return 16;
  }

  v11 = [v1 heatingCoolingLevelDisabled];
  if (v2)
  {
    if (v4)
    {
      if (v5)
      {
        if (v10)
        {
          if (v11)
          {
            return 31;
          }

          return 15;
        }

        else
        {
          if (v11)
          {
            return 23;
          }

          return 7;
        }
      }

      else if (v10)
      {
        if (v11)
        {
          return 27;
        }

        return 11;
      }

      else
      {
        if (v11)
        {
          return 19;
        }

        return 3;
      }
    }

    else if (v5)
    {
      if (v10)
      {
        if (v11)
        {
          return 29;
        }

        return 13;
      }

      else
      {
        if (v11)
        {
          return 21;
        }

        return 5;
      }
    }

    else if (v10)
    {
      if (v11)
      {
        return 25;
      }

      return 9;
    }

    else
    {
      if (v11)
      {
        return 17;
      }

      return 1;
    }
  }

  else if (v4)
  {
    if (v5)
    {
      if (v10)
      {
        if (v11)
        {
          return 30;
        }

        return 14;
      }

      else
      {
        if (v11)
        {
          return 22;
        }

        return 6;
      }
    }

    else if (v10)
    {
      if (v11)
      {
        return 26;
      }

      return 10;
    }

    else
    {
      if (v11)
      {
        return 18;
      }

      return 2;
    }
  }

  else if (v5)
  {
    if (v10)
    {
      if (v11)
      {
        return 28;
      }

      return 12;
    }

    else
    {
      if (v11)
      {
        return 20;
      }

      return 4;
    }
  }

  else if (v10)
  {
    if (v11)
    {
      return 24;
    }

    return 8;
  }

  else
  {
    if (v11)
    {
      return 16;
    }

    return 0;
  }
}

char *sub_10006E5D8(void *a1, int a2)
{
  v3 = v2;
  v183 = a2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_currentValue] = 0;
  v9 = OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_autoModeGlyph;
  *&v3[v9] = [objc_allocWithZone(UIImageView) init];
  *&v3[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling] = a1;
  sub_10000827C(0, &unk_100116920);
  v10 = a1;
  CAFPositionedRequired.layoutKey.getter();
  sub_100028A98();
  LOBYTE(v9) = v11;
  (*(v6 + 8))(v8, v5);
  v12 = "carseat.left.and.heat.waves";
  v13 = 0xD00000000000001BLL;
  if (v9)
  {
    v13 = 0xD00000000000001CLL;
  }

  else
  {
    v12 = "ng";
  }

  v14 = &v3[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_symbolName];
  *v14 = v13;
  v14[1] = v12 | 0x8000000000000000;
  v15 = [v10 heatingCoolingLevel];
  v3[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_isInPositiveRange] = v15 >= 0;
  v16 = v14[1];
  v181 = *v14;
  v182 = v16;

  v184 = [v10 heatingCoolingLevel];
  v17 = [v10 heatingCoolingLevelRange];
  v18 = &selRef_maxDefrostOn;
  v19 = [v17 minimum];
  v20 = [v19 intValue];

  v21 = [v17 maximum];
  v22 = [v21 intValue];

  v23 = v22 & (v22 >> 31);
  v24 = v20 - v23;
  if (__OFSUB__(v20, v23))
  {
    __break(1u);
    goto LABEL_63;
  }

  v25 = [v17 maximum];
  v26 = [v25 intValue];

  v21 = [v17 minimum];
  v27 = [v21 intValue];

  v28 = v27 & ~(v27 >> 31);
  v29 = __OFSUB__(v26, v28);
  v30 = v26 - v28;
  if (v29)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v179 = v3;
  v180 = v10;
  if (v24 >= 0)
  {
    v31 = v24;
  }

  else
  {
    v31 = -v24;
  }

  if (v30 < 0)
  {
    v30 = -v30;
  }

  v178 = v17;
  if (v31 <= 3 && v30 < 4)
  {
    v32 = objc_allocWithZone(type metadata accessor for ClimateDotsProgressView());
    v33 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView;
    sub_10000827C(0, &unk_100116370);
    *&v32[v33] = UIStackView.init(axis:spacing:arrangedSubviews:)();
    *&v32[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_dots] = &_swiftEmptyArrayStorage;
    *&v32[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_diameter] = 0x4010000000000000;
    v34 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    v35 = objc_allocWithZone(type metadata accessor for ClimatePassthroughButton());
    v36 = v17;
    *&v32[v34] = [v35 init];
    v32[OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted] = 0;
    v37 = &v32[OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig];
    v38 = objc_opt_self();
    v39 = [v38 labelColor];
    v40 = [v38 labelColor];
    v41 = [v40 colorWithAlphaComponent:0.25];

    v42 = [v38 labelColor];
    *v37 = v39;
    v37[1] = v41;
    v37[2] = v42;
    v37[3] = &_swiftEmptyDictionarySingleton;
    *&v32[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint] = 0;
    *&v32[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] = v36;
    *&v32[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue] = v184;
    v43 = type metadata accessor for ClimateProgressView();
    v187.receiver = v32;
    v187.super_class = v43;
    v44 = v36;
    v45 = objc_msgSendSuper2(&v187, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    [*(v45 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setTranslatesAutoresizingMaskIntoConstraints:0];
    result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
    if (result)
    {
      v48 = result;
      v177 = v44;
      v49 = [objc_opt_self() configurationWithFont:result scale:3];

      v50 = *(v45 + v46);
      v51 = v49;
      v52 = ClimateButton.imageSymbolConfiguration.getter();
      v53 = *&v50[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
      *&v50[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v51;
      v54 = v51;

      v55 = ClimateButton.imageSymbolConfiguration.getter();
      sub_10000827C(0, &qword_100116930);
      LOBYTE(v53) = static NSObject.== infix(_:_:)();

      if ((v53 & 1) == 0)
      {
        ClimateButton.updateClimateConfiguration()();
      }

      v176 = v54;

      v56 = *(v45 + v46);
      v57 = &v56[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
      swift_beginAccess();
      v58 = *v57;
      v59 = *(v57 + 1);
      v60 = v181;
      v61 = v182;
      *v57 = v181;
      *(v57 + 1) = v61;
      if (!v59 || (v60 != v58 || v59 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v62 = v56;
        ClimateButton.updateClimateConfiguration()();
      }

      [*(v45 + v46) setContentMode:1];
      [*(v45 + v46) _setContinuousCornerRadius:0.0];
      v63 = *(v45 + v46);
      v64 = &v63[OBJC_IVAR____TtC7Climate13ClimateButton_title];
      swift_beginAccess();
      v65 = *(v64 + 1);
      *v64 = 0;
      *(v64 + 1) = 0;
      if (v65)
      {
        v66 = v63;
        ClimateButton.updateClimateConfiguration()();
      }

      v67 = [*(v45 + v46) titleLabel];
      if (v67)
      {
        v68 = v67;
        [v67 setNumberOfLines:1];
      }

      v69 = *(v45 + v46);
      v70 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
      swift_beginAccess();
      v71 = v69[v70];
      v69[v70] = 1;
      if ((v71 & 1) == 0)
      {
        v72 = v69;
        ClimateButton.updateClimateConfiguration()();
      }

      v73 = *(v45 + v46);
      v74 = [v38 clearColor];
      v75 = *(v45 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
      sub_10007A4CC(v74, v75, &_swiftEmptyDictionarySingleton);

      [v45 addSubview:*(v45 + v46)];
      if (v183)
      {
        v76 = 30.0;
      }

      else
      {
        v76 = 29.0;
      }

      v77 = [*(v45 + v46) centerYAnchor];
      v78 = [v45 centerYAnchor];
      v79 = [v77 constraintEqualToAnchor:v78];

      v80 = objc_opt_self();
      sub_1000040E8(&unk_100114770);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1000D5D90;
      v82 = [*(v45 + v46) widthAnchor];
      v83 = [v82 constraintEqualToConstant:v76];

      *(v81 + 32) = v83;
      v84 = [*(v45 + v46) heightAnchor];
      v85 = [v84 constraintEqualToConstant:v76];

      *(v81 + 40) = v85;
      *(v81 + 48) = v79;
      v86 = *(v45 + v46);
      v87 = v79;
      v88 = [v86 centerXAnchor];
      v89 = [v45 centerXAnchor];

      v90 = [v88 constraintEqualToAnchor:v89];
      *(v81 + 56) = v90;
      sub_10000827C(0, &qword_1001149C0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v80 activateConstraints:isa];

      v92 = *(v45 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint);
      *(v45 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint) = v87;
      v93 = v87;

      if (v184)
      {
        (*((swift_isaMask & *v45) + 0x128))(0);
      }

      else
      {
        (*((swift_isaMask & *v45) + 0x120))(0);
      }

      v158 = v180;
      v159 = v179;
      v160 = v178;

      v164 = v177;
      v163 = v45;
      sub_100034D30(v184, v164, 4.0);
      goto LABEL_58;
    }

LABEL_66:
    __break(1u);
    return result;
  }

  v94 = objc_allocWithZone(type metadata accessor for ClimateBarProgressView());
  v95 = [objc_allocWithZone(UIView) init];
  [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v95 _setContinuousCornerRadius:2.0];
  *&v94[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView] = v95;
  v96 = [objc_allocWithZone(UIView) init];
  [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v96 _setContinuousCornerRadius:2.0];
  *&v94[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView] = v96;
  v97 = [v96 widthAnchor];
  v98 = [v97 constraintEqualToConstant:0.0];

  *&v94[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressViewConstraint] = v98;
  v99 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  v100 = objc_allocWithZone(type metadata accessor for ClimatePassthroughButton());
  v101 = v17;
  *&v94[v99] = [v100 init];
  v94[OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted] = 0;
  v102 = &v94[OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig];
  v103 = objc_opt_self();
  v104 = [v103 labelColor];
  v105 = [v103 labelColor];
  v106 = [v105 colorWithAlphaComponent:0.25];

  v107 = [v103 labelColor];
  *v102 = v104;
  v102[1] = v106;
  v102[2] = v107;
  v102[3] = &_swiftEmptyDictionarySingleton;
  *&v94[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint] = 0;
  *&v94[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] = v101;
  *&v94[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue] = v184;
  v108 = type metadata accessor for ClimateProgressView();
  v185.receiver = v94;
  v185.super_class = v108;
  v109 = v101;
  v110 = objc_msgSendSuper2(&v185, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v110 setTranslatesAutoresizingMaskIntoConstraints:0];
  v111 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  [*(v110 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
  if (!result)
  {
    __break(1u);
    goto LABEL_66;
  }

  v112 = result;
  v113 = [objc_opt_self() configurationWithFont:result scale:3];

  v114 = *(v110 + v111);
  v115 = v113;
  v116 = ClimateButton.imageSymbolConfiguration.getter();
  v117 = *&v114[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v114[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v115;
  v118 = v115;

  v119 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v117) = static NSObject.== infix(_:_:)();

  if ((v117 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v177 = v118;

  v120 = *(v110 + v111);
  v121 = &v120[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v122 = *v121;
  v123 = *(v121 + 1);
  v124 = v181;
  v125 = v182;
  *v121 = v181;
  *(v121 + 1) = v125;
  if (!v123 || (v124 != v122 || v123 != v125) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v126 = v120;
    ClimateButton.updateClimateConfiguration()();
  }

  [*(v110 + v111) setContentMode:1];
  [*(v110 + v111) _setContinuousCornerRadius:0.0];
  v127 = *(v110 + v111);
  v128 = &v127[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v129 = *(v128 + 1);
  *v128 = 0;
  *(v128 + 1) = 0;
  if (v129)
  {
    v130 = v127;
    ClimateButton.updateClimateConfiguration()();
  }

  v131 = [*(v110 + v111) titleLabel];
  if (v131)
  {
    v132 = v131;
    [v131 setNumberOfLines:1];
  }

  v182 = v109;
  v133 = *(v110 + v111);
  v134 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v135 = v133[v134];
  v133[v134] = 1;
  if ((v135 & 1) == 0)
  {
    v136 = v133;
    ClimateButton.updateClimateConfiguration()();
  }

  v137 = *(v110 + v111);
  v138 = [v103 clearColor];
  v139 = *(v110 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  sub_10007A4CC(v138, v139, &_swiftEmptyDictionarySingleton);

  [v110 addSubview:*(v110 + v111)];
  if (v183)
  {
    v140 = 30.0;
  }

  else
  {
    v140 = 29.0;
  }

  v141 = [*(v110 + v111) centerYAnchor];
  v142 = [v110 centerYAnchor];
  v143 = [v141 constraintEqualToAnchor:v142];

  v144 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1000D5D90;
  v146 = [*(v110 + v111) widthAnchor];
  v147 = [v146 constraintEqualToConstant:v140];

  *(v145 + 32) = v147;
  v148 = [*(v110 + v111) heightAnchor];
  v149 = [v148 constraintEqualToConstant:v140];

  *(v145 + 40) = v149;
  *(v145 + 48) = v143;
  v150 = *(v110 + v111);
  v151 = v143;
  v152 = [v150 centerXAnchor];
  v153 = [v110 centerXAnchor];

  v154 = [v152 constraintEqualToAnchor:v153];
  *(v145 + 56) = v154;
  sub_10000827C(0, &qword_1001149C0);
  v155 = Array._bridgeToObjectiveC()().super.isa;

  [v144 activateConstraints:v155];

  v156 = *(v110 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint);
  *(v110 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint) = v151;
  v157 = v151;

  if (v184)
  {
    (*((swift_isaMask & *v110) + 0x128))(0);
  }

  else
  {
    (*((swift_isaMask & *v110) + 0x120))(0);
  }

  v158 = v180;
  v159 = v179;
  v160 = v178;
  v161 = v182;

  if (v183)
  {
    v162 = 18.0;
  }

  else
  {
    v162 = 29.0;
  }

  v163 = v110;
  sub_10008FE7C(4.0, v162);
LABEL_58:

  *&v159[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView] = v163;
  v165 = type metadata accessor for ClimateSeatHeatingCoolingServiceButton();
  v186.receiver = v159;
  v186.super_class = v165;
  v166 = objc_msgSendSuper2(&v186, "init");
  sub_10007006C();
  [v158 registerObserver:v166];
  v167 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v168 = swift_allocObject();
  *(v168 + 16) = v167;
  *(v168 + 24) = v158;
  v169 = &v166[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v170 = *v169;
  *v169 = sub_1000707FC;
  v169[1] = v168;
  v18 = v158;
  v21 = v166;

  sub_100003380(v170);

  if (qword_100113ED0 != -1)
  {
LABEL_64:
    swift_once();
  }

  v171 = qword_10011B088;
  v172 = qword_10011B098;
  if (qword_100113E90 != -1)
  {
    swift_once();
  }

  v173 = qword_10011AFA8;
  v174 = v171;

  sub_1000A70A8(v174, v173, v172);

  sub_10006DBC8(&OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_autoModeGlyph, sub_10006E114);
  sub_10006FBC4();

  return v21;
}

void sub_10006FA8C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong isEnabled])
    {
      sub_10006CE48(&OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling, sub_10006D4C4);
      [a3 setHeatingCoolingLevel:*&v5[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_currentValue]];
      sub_10006FBC4();
    }
  }
}

uint64_t sub_10006FBC4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_autoModeGlyph];
  if (v2)
  {
    v3 = v2;
    [v3 setHidden:(sub_10006E114() & 0x1A) != 2];
  }

  sub_1000C10C4();
  [v0 setEnabled:sub_10006E114() < 8];
  sub_10006FDB4();
  ClimateButton.refreshColorConfig()();
  v4 = *&v0[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView];
  v5 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v6 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
  v7 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
  v8 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v9 = v6;

  v10 = sub_10006E114();
  v11 = sub_10007E990(v10, v9, v7);

  v12 = [v5[1] colorWithAlphaComponent:0.25];
  v13 = v5[1];
  v14 = *((swift_isaMask & *v4) + 0xD0);
  v15 = v13;
  v14(v11, v12, v13, &_swiftEmptyDictionarySingleton);
  ClimateButton.createEdgeInsets()();
  if (sub_10006E114() > 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = [*&v1[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_seatHeatingCooling] heatingCoolingLevel];
  }

  *&v1[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_currentValue] = v16;
  return (*((swift_isaMask & *v4) + 0x88))();
}

void sub_10006FDB4()
{
  v1 = v0;
  if ((sub_10006E114() & 0x1B) == 1)
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

  v8 = sub_10006E114();
  if ((v8 & 0x19) != 1)
  {
    return;
  }

  v9 = v8;
  if ((CAFSeatHeatingCooling.isHeating.getter() & 1) == 0)
  {
    if ((CAFSeatHeatingCooling.isCooling.getter() & 1) == 0)
    {
      v13 = 0;
      v14 = v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
      v11 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor);
      v15 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8);
      v16 = v11;
      v17 = v15;
      goto LABEL_21;
    }

    if ((v9 & 2) == 0)
    {
      if (qword_100113E98 != -1)
      {
        swift_once();
      }

      v10 = qword_10011AFB0;
      goto LABEL_15;
    }

    v12 = [objc_opt_self() systemBlueColor];
LABEL_19:
    v11 = v12;
    goto LABEL_20;
  }

  if ((v9 & 2) != 0)
  {
    v12 = [objc_opt_self() systemOrangeColor];
    goto LABEL_19;
  }

  if (qword_100113E90 != -1)
  {
    swift_once();
  }

  v10 = qword_10011AFA8;
LABEL_15:
  v11 = v10;
LABEL_20:
  v14 = v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  v15 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor);
  v13 = 1;
  v16 = v15;
  v17 = v11;
LABEL_21:
  v18 = *(v14 + 16);
  v23 = v11;
  v19 = v11;
  v20 = v15;
  swift_bridgeObjectRetain_n();
  v21 = v16;
  v22 = v17;
  sub_10007A4CC(v21, v22, v18);
  swift_bridgeObjectRelease_n();

  if (v13)
  {
  }
}

void sub_10007006C()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView];
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

uint64_t sub_1000702E0()
{
  ClimateButton.refreshColorConfig()();
  v1 = *(v0 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView);
  v2 = v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v5 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v6 = v3;

  v7 = sub_10006E114();
  v8 = sub_10007E990(v7, v6, v4);

  v9 = [*(v2 + 8) colorWithAlphaComponent:0.25];
  v10 = *(v2 + 8);
  v11 = *((swift_isaMask & *v1) + 0xD0);
  v12 = v10;
  return v11(v8, v9, v10, &_swiftEmptyDictionarySingleton);
}

void sub_1000703E4()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_autoModeGlyph);
}

id sub_100070448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSeatHeatingCoolingServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateSeatHeatingCoolingServiceButton()
{
  result = qword_100116858;
  if (!qword_100116858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100070650(uint64_t a1)
{
  result = sub_100070740(&qword_100116908);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100070694(uint64_t a1)
{
  result = sub_100070740(&qword_100116908);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000706D8(uint64_t a1)
{
  *(a1 + 8) = sub_100070740(&qword_100116910);
  result = sub_100070740(&qword_100116918);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100070740(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClimateSeatHeatingCoolingServiceButton();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100070784()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000707BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10007080C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v13 = *(v11 + 16);
  if (v13)
  {
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v23 = *(v14 + 56);
    v24 = v15;
    v17 = (v14 - 8);
    do
    {
      v18 = v14;
      v24(v10, v16, v6, v8);
      v19 = sub_100070A74(v10, v26, v27);
      (*v17)(v10, v6);
      if (v19)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v28;
      }

      v16 += v23;
      --v13;
      v14 = v18;
    }

    while (v13);
  }

  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    sub_10000827C(0, &unk_100116370);
    v20 = UIStackView.init(axis:spacing:arrangedSubviews:)();
    [v20 setDistribution:1];
    [v20 setAlignment:3];
    [*(v22 + OBJC_IVAR____TtC7Climate25ClimateCarPlaceholderView_carView) addArrangedSubview:v20];

    return;
  }
}

id sub_100070A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040E8(&unk_100117950);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - v12;
  v14 = type metadata accessor for CAUVehicleLayoutInfo();
  __chkstk_darwin(v14 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 40);
  if (*(v17 + 16) && (v18 = sub_10007DEE8(a1), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    v21 = objc_allocWithZone(UIView);

    v22 = [v21 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = type metadata accessor for CAUBaselineAnchor();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);

    CAUVehicleLayoutInfo.init(x:y:height:width:baselineAnchor:)();
    v24 = objc_allocWithZone(type metadata accessor for ClimateZonePositionView());
    swift_unknownObjectRetain();
    sub_1000A62B8(v20, a2, a3, v16);
    v26 = v25;
    v69 = v20;

    swift_unknownObjectRelease();
    v27 = v26;
    [v22 addSubview:v27];
    v28 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setTextAlignment:1];
    v29 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024];
    [v28 setFont:v29];

    [v22 addSubview:v28];
    sub_100071888();
    v30 = String._bridgeToObjectiveC()();

    [v28 setText:v30];

    v68 = objc_opt_self();
    sub_1000040E8(&unk_100114770);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000D7FB0;
    v32 = [v27 heightAnchor];

    v33 = [v32 constraintEqualToConstant:70.0];
    *(v31 + 32) = v33;
    v34 = [v27 widthAnchor];

    v35 = [v34 constraintEqualToConstant:70.0];
    *(v31 + 40) = v35;
    v36 = [v27 topAnchor];

    v37 = [v22 topAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v31 + 48) = v38;
    v39 = [v27 leadingAnchor];

    v40 = [v22 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v31 + 56) = v41;
    v42 = [v27 trailingAnchor];

    v43 = [v22 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    *(v31 + 64) = v44;
    v45 = [v28 topAnchor];
    v46 = [v27 bottomAnchor];

    v47 = [v45 constraintEqualToAnchor:v46 constant:0.0];
    *(v31 + 72) = v47;
    v48 = [v28 leadingAnchor];
    v49 = [v22 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v31 + 80) = v50;
    v51 = [v28 trailingAnchor];
    v52 = [v22 trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v31 + 88) = v53;
    v54 = [v28 bottomAnchor];

    v55 = [v22 bottomAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v31 + 96) = v56;
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v68 activateConstraints:isa];

    return v22;
  }

  else
  {
    v59 = static os_log_type_t.error.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v60 = qword_10011B1C0;
    (*(v8 + 16))(v10, a1, v7);
    if (os_log_type_enabled(v60, v59))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v61 = 136446210;
      v63 = CAUVehicleLayoutKey.rawValue.getter();
      v65 = v64;
      (*(v8 + 8))(v10, v7);
      v66 = sub_10000835C(v63, v65, &v70);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v59, "No zone available for %{public}s", v61, 0xCu);
      sub_100006B9C(v62);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

    return 0;
  }
}

id sub_100071400()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateCarPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100071468()
{
  result = [objc_opt_self() clearColor];
  qword_10011AF28 = result;
  return result;
}

uint64_t sub_1000714A4()
{
  v1 = sub_1000040E8(&qword_100116B90);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
  sub_100054E70();
  v7 = v6;
  v8 = *(v2 + 56);
  v9 = type metadata accessor for CAUVehicleLayoutKey();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, v0 + v5, v9);
  v11 = v7 & 1;
  v4[v8] = v7 & 1;
  v12 = (*(v10 + 88))(v4, v9);
  if (v12 == enum case for CAUVehicleLayoutKey.seat_front_left(_:))
  {
    (*(v10 + 8))(v4, v9);
  }

  else if (v12 == enum case for CAUVehicleLayoutKey.seat_front_right(_:))
  {
    (*(v10 + 8))(v4, v9);
    return !(v7 & 1);
  }

  else
  {
    sub_100008904(v4, &qword_100116B90);
    return 2;
  }

  return v11;
}

uint64_t sub_10007163C()
{
  v1 = OBJC_IVAR____TtC7Climate11ClimateZone_nonProminentSettings;
  swift_beginAccess();
  *(v0 + v1) = _swiftEmptyArrayStorage;

  sub_1000725A4();
  swift_beginAccess();
  sub_100072760((v0 + v1));
  swift_endAccess();
  v2 = [*(v0 + 16) allObjects];
  sub_1000040E8(&unk_100116BB0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v6 didUpdateSettings];
      swift_unknownObjectRelease();
      ++v5;
      if (v7 == i)
      {
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id sub_1000717C8()
{
  result = [*(v0 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature) car];
  if (result)
  {
    v2 = result;
    v3 = [result climate];

    if (v3 && (v4 = [v3 defrosts], v3, v4))
    {
      sub_10000827C(0, &qword_1001167B0);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100071888()
{
  if (sub_1000714A4() > 1u)
  {
    CAUVehicleLayoutKey.rawValue.getter();
    v0 = String._bridgeToObjectiveC()();
  }

  else
  {
    v0 = String._bridgeToObjectiveC()();
  }

  v1 = sub_100075154(v0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t sub_100071964(unint64_t a1, char *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = &v81 - v12;
  *(v3 + 16) = [objc_opt_self() hashTableWithOptions:5];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC7Climate11ClimateZone_on;
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_on) = 0;
  v97 = OBJC_IVAR____TtC7Climate11ClimateZone_fan;
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_fan) = 0;
  v90 = OBJC_IVAR____TtC7Climate11ClimateZone_vents;
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_vents) = _swiftEmptyArrayStorage;
  v86 = OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling;
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling) = 0;
  v85 = OBJC_IVAR____TtC7Climate11ClimateZone_seatFan;
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_seatFan) = 0;
  v84 = OBJC_IVAR____TtC7Climate11ClimateZone_steeringWheel;
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_steeringWheel) = 0;
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_nonProminentSettings) = _swiftEmptyArrayStorage;
  v94 = v9;
  v14 = *(v9 + 16);
  v89 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
  v96 = v8;
  v91 = v14;
  v92 = v9 + 16;
  v14(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_key, a2, v8);
  v93 = a3;
  swift_unknownObjectWeakAssign();
  *(v3 + OBJC_IVAR____TtC7Climate11ClimateZone_services) = a1;
  v100 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  p_name = (&ClimateAccessibilityManager + 24);
  v17 = &OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  v95 = a2;
  if (!v15)
  {

    goto LABEL_45;
  }

  if (v15 < 1)
  {
    __break(1u);
    goto LABEL_54;
  }

  v98 = 0;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  *&v20 = 138543362;
  v83 = v20;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(a1 + 8 * v18 + 32);
    }

    v22 = v21;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = *(v4 + v13);
      *(v4 + v13) = v23;
      goto LABEL_14;
    }

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;

      v30 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v19 = v100;
      v98 = v29;
    }

    else
    {
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v32 = v31;
        v33 = v97;
        goto LABEL_24;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v34 = v90;
        swift_beginAccess();
        v35 = v22;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v4 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v34) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v82 = *((*(v4 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v26 = v35;
        goto LABEL_15;
      }

      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (v36)
      {
        v32 = v36;
        v33 = v86;
        goto LABEL_24;
      }

      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v32 = v37;
        v33 = v85;
        goto LABEL_24;
      }

      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v32 = v38;
        v33 = v84;
LABEL_24:
        v24 = *(&v33->isa + v4);
        *(&v33->isa + v4) = v32;
LABEL_14:
        v25 = v22;

        v26 = v25;
LABEL_15:
        v27 = v26;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v82 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 = v100;
        goto LABEL_8;
      }

      v39 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v40 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v39))
      {
        v82 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v81 = v41;
        v42 = v82;
        *v82 = v83;
        *(v42 + 4) = v22;
        *v41 = v22;
        v22 = v22;
        _os_log_impl(&_mh_execute_header, v40, v39, "unknown service: %{public}@", v82, 0xCu);
        sub_100008904(v81, &unk_1001149E0);
      }
    }

LABEL_8:
    ++v18;
  }

  while (v15 != v18);
  v43 = v98;
  if (!v98)
  {

    a2 = v95;
    v17 = &OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
    p_name = &ClimateAccessibilityManager.name;
LABEL_45:
    LODWORD(a3) = static os_log_type_t.debug.getter();
    v13 = v96;
    v8 = v88;
    if (p_name[480] == -1)
    {
LABEL_46:
      v65 = v17[56];
      v91(v8, a2, v13);
      if (os_log_type_enabled(v65, a3))
      {
        v66 = swift_slowAlloc();
        v97 = v65;
        v67 = v8;
        v68 = v66;
        v98 = swift_slowAlloc();
        v99[0] = v98;
        *v68 = 136446466;
        v69 = CAUVehicleLayoutKey.rawValue.getter();
        LODWORD(v92) = a3;
        v70 = v69;
        v72 = v71;
        v73 = *(v94 + 8);
        v73(v67, v13);
        v74 = sub_10000835C(v70, v72, v99);

        *(v68 + 4) = v74;
        *(v68 + 12) = 2082;
        sub_10000827C(0, &qword_100116078);
        v75 = Array.description.getter();
        v77 = v76;

        v78 = sub_10000835C(v75, v77, v99);
        v13 = v96;

        *(v68 + 14) = v78;
        _os_log_impl(&_mh_execute_header, v97, v92, "ClimateZone can not be created without temperature. LayoutKey:%{public}s, Services: %{public}s", v68, 0x16u);
        swift_arrayDestroy();

        v73(v95, v13);
      }

      else
      {

        v73 = *(v94 + 8);
        v73(a2, v13);
        v73(v8, v13);
      }

      v73(v4 + v89, v13);

      swift_unknownObjectWeakDestroy();

      type metadata accessor for ClimateZone();
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_54:
    swift_once();
    goto LABEL_46;
  }

  *(v4 + OBJC_IVAR____TtC7Climate11ClimateZone_monitoredServices) = v19;
  *(v4 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature) = v43;
  v44 = OBJC_IVAR____TtC7Climate11ClimateZone_vents;
  swift_beginAccess();
  v45 = v43;
  sub_100072810((v4 + v44));
  swift_endAccess();
  v46 = OBJC_IVAR____TtC7Climate11ClimateZone_services;
  swift_beginAccess();
  sub_1000728C0((v4 + v46));
  swift_endAccess();
  sub_1000725A4();
  v47 = OBJC_IVAR____TtC7Climate11ClimateZone_nonProminentSettings;
  swift_beginAccess();
  sub_100072760((v4 + v47));
  swift_endAccess();
  v48 = static os_log_type_t.debug.getter();
  v49 = v95;
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v50 = qword_10011B1C0;
  v51 = v87;
  v52 = v96;
  v91(v87, v49, v96);
  if (os_log_type_enabled(v50, v48))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v98 = v45;
    v99[0] = v54;
    *v53 = 136446466;
    LODWORD(v97) = v48;
    v55 = CAUVehicleLayoutKey.rawValue.getter();
    v57 = v56;
    v58 = *(v94 + 8);
    v58(v51, v52);
    v59 = sub_10000835C(v55, v57, v99);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2082;
    sub_10000827C(0, &qword_100116078);
    v60 = Array.description.getter();
    v62 = v61;

    v63 = sub_10000835C(v60, v62, v99);

    *(v53 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v50, v97, "ClimateZone created. LayoutKey: %{public}s, Services: %{public}s", v53, 0x16u);
    swift_arrayDestroy();

    v64 = v98;

    v58(v95, v52);
  }

  else
  {

    v79 = *(v94 + 8);
    v79(v49, v52);
    v79(v51, v52);
  }

  return v4;
}

void sub_1000725A4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v3 = CAFAutomakerSettings.allSettings.getter();
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = v7;
        sub_100072F74(&v11, v1);

        ++v6;
        if (v9 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }
}

Swift::Int sub_100072760(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_100056B94(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1000732E4(v5, &unk_100118030, CAFAutomakerSetting_ptr, sub_1000736C4, sub_100073410);
  *a1 = v2;
  return result;
}

Swift::Int sub_100072810(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_100056B94(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1000732E4(v5, &qword_100115830, CAFVent_ptr, sub_1000743C0, sub_100073608);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000728C0(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_100056B94(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1000732E4(v5, &qword_100116078, CAFService_ptr, sub_100073D34, sub_100073508);
  *a1 = v2;
  return result;
}

double sub_100072970()
{
  v1 = OBJC_IVAR____TtC7Climate11ClimateZone_services;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = v2 & 0xC000000000000001;
    v28 = v2 + 32;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;

    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage;
    v30 = v2 & 0xC000000000000001;
    v31 = i;
    while (1)
    {
      if (v4)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v29 + 16))
        {
          goto LABEL_28;
        }

        v8 = *(v28 + 8 * v5);
      }

      v9 = v8;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v35 = v8;
      sub_10000827C(0, &qword_100116078);
      v11 = v9;
      sub_1000040E8(&qword_100116B98);
      if (swift_dynamicCast())
      {
        v12 = v2;
        sub_1000751C8(v33, v36);
        v13 = v37;
        v14 = v38;
        sub_10000D960(v36, v37);
        v15 = (*(v14 + 8))(v13, v14);
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = (v15 + 32);
          do
          {
            v32 = *v17;
            v18 = *v17;
            ObjectType = swift_getObjectType();
            v20 = v18;
            if (sub_100056474(ObjectType, *(&v32 + 1)))
            {
              v21 = v20;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_1000C5268(0, v7[2] + 1, 1, v7);
              }

              v23 = v7[2];
              v22 = v7[3];
              if (v23 >= v22 >> 1)
              {
                v7 = sub_1000C5268((v22 > 1), v23 + 1, 1, v7);
              }

              v7[2] = v23 + 1;
              *&v7[2 * v23 + 4] = v32;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000C5268(0, v6[2] + 1, 1, v6);
            }

            v25 = v6[2];
            v24 = v6[3];
            if (v25 >= v24 >> 1)
            {
              v6 = sub_1000C5268((v24 > 1), v25 + 1, 1, v6);
            }

            v6[2] = v25 + 1;
            *&v6[2 * v25 + 4] = v32;
            ++v17;
            --v16;
          }

          while (v16);
        }

        sub_100006B9C(v36);
        v2 = v12;
        v4 = v30;
        i = v31;
        if (v5 == v31)
        {
LABEL_26:

          goto LABEL_31;
        }
      }

      else
      {

        v34 = 0;
        memset(v33, 0, sizeof(v33));
        sub_100008904(v33, &qword_100116BA0);
        if (v5 == i)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage;
LABEL_31:
  sub_1000040E8(&qword_100116BA8);
  v26 = swift_allocObject();
  *&result = 2;
  *(v26 + 16) = xmmword_1000D5BA0;
  *(v26 + 32) = v6;
  *(v26 + 40) = v7;
  return result;
}

uint64_t sub_100072CE4()
{
  v1 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100072DFC()
{
  sub_100072CE4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClimateZone()
{
  result = qword_100116998;
  if (!qword_100116998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100072EA8()
{
  result = type metadata accessor for CAUVehicleLayoutKey();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100072F74(id *a1, uint64_t a2)
{
  v3 = *a1;
  if ([*a1 category] != 2)
  {
    return;
  }

  if (![v3 hasVehicleLayoutKey])
  {
    goto LABEL_28;
  }

  v4 = [v3 vehicleLayoutKey];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == CAUVehicleLayoutKey.rawValue.getter() && v8 == v9)
  {
LABEL_15:

    goto LABEL_16;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
LABEL_28:
    if ([v3 hasVehicleLayoutKey])
    {
      return;
    }

    if (![v3 hasProminenceInfo])
    {
      return;
    }

    v12 = [v3 prominenceInfo];
    if (!v12)
    {
      return;
    }

    v13 = v12;
    [v12 prominenceLevel];

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      return;
    }

    a2 = v14;
    v15 = objc_opt_self();
    v3 = v3;
    v16 = [v15 sharedApplication];
    v17 = [v16 delegate];

    if (v17)
    {
LABEL_20:
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v23 = sub_1000AF438();
      swift_unknownObjectRelease();

      CAFDeepLinkSetting.requestContentManager.setter();
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  if ([v3 hasProminenceInfo] && (v18 = objc_msgSend(v3, "prominenceInfo")) != 0)
  {
    v19 = v18;
    [v18 prominenceLevel];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v20 = objc_opt_self();
      v3 = v3;
      v21 = [v20 sharedApplication];
      v22 = [v21 delegate];

      if (v22)
      {
        goto LABEL_20;
      }

      __break(1u);
    }
  }

  else
  {
    v24 = OBJC_IVAR____TtC7Climate11ClimateZone_nonProminentSettings;
    swift_beginAccess();
    v25 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }
}

Swift::Int sub_1000732E4(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v9);
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000827C(0, a2);
        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFF8;
      v15[0] = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v15[1] = v12;
      a4(v15, v16, a1, v11);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

void sub_100073410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 sortOrder];
      v13 = [v11 sortOrder];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

char *sub_100073508(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = &result[-a3];
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v10 = result;
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          result = [v10 typeCompare:result];
          if (result != -1)
          {
LABEL_4:
            ++v4;
            v6 += 8;
            --v7;
            if (v4 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }
        }
      }

      if (!v5)
      {
        break;
      }

      v11 = *v9;
      *v9 = v9[1];
      v9[1] = v11;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100073608(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result typeCompare:*v10];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000736C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10006B7AC(v8);
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = v8;
        v8 = (v90 - 1);
        v92 = *&v91[16 * v90];
        v93 = *&v91[16 * v90 + 24];
        sub_100074964((*a3 + 8 * v92), (*a3 + 8 * *&v91[16 * v90 + 16]), (*a3 + 8 * v93), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v93 < v92)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_10006B7AC(v91);
        }

        if (v90 - 2 >= *(v91 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v91[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_10006B720(v90 - 1);
        v8 = v91;
        v90 = *(v91 + 2);
        if (v90 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v100 = v5;
      v96 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v105 = [v13 sortOrder];
      v103 = [v14 sortOrder];

      v98 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 sortOrder];
        v7 = [v18 sortOrder];

        v21 = v20 >= v7;
        v8 = v19;
        v22 = v21;
        ++v15;
        ++v11;
        if ((((v105 < v103) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v98;
      v5 = v100;
      v23 = v96;
      if (v105 < v103)
      {
        if (v6 < v98)
        {
          goto LABEL_119;
        }

        if (v98 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10006B7C0(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = sub_10006B7C0((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_59:
          if (v52)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_113;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_73:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_111;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_80:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        sub_100074964((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v88 < v87)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10006B7AC(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_10006B720(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_104;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_105;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_107;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_110;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v8;
  v99 = v9;
  v101 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v104 = v30;
LABEL_32:
  v106 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 sortOrder];
    v41 = [v39 sortOrder];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v106 + 1;
      v32 += 8;
      --v33;
      if ((v106 + 1) != v104)
      {
        goto LABEL_32;
      }

      v7 = v104;
      v9 = v99;
      v5 = v101;
      v8 = v97;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    v21 = __CFADD__(v35++, 1);
    if (v21)
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_100073D34(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_98:
    v7 = *v91;
    if (!*v91)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v8 = v95;
    if ((result & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_100;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = &_s10Foundation11MeasurementV10CAFCombineSo17NSUnitTemperatureCRszrlE10localeStep_2by2inACyAFGSo8CAFRangeCADE0G9DirectionO_AJSo13CAFFloatRangeCSgtF_ptr;
  while (1)
  {
    v8 = v5;
    v9 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v10 = *a3;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result && (v11 = result, objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
      {
        result = [v11 typeCompare:result];
        v12 = result == -1;
      }

      else
      {
        v12 = 1;
      }

      v9 = v8 + 2;
      if (v8 + 2 >= v4)
      {
LABEL_16:
        if (v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v13 = v10 + 8 * v8 + 16;
        do
        {
          v14 = v9;
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (result && (v15 = result, objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
          {
            result = [v15 typeCompare:result];
            if (((v12 ^ (result != -1)) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else if (!v12)
          {
            goto LABEL_27;
          }

          ++v9;
          v13 += 8;
        }

        while (v4 != v14 + 1);
        v9 = v4;
        if (v12)
        {
LABEL_19:
          if (v9 < v8)
          {
            goto LABEL_131;
          }

          if (v8 < v9)
          {
            v16 = 8 * v9 - 8;
            v17 = 8 * v8;
            v18 = v9;
            v19 = v8;
            do
            {
              if (v19 != --v18)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v20 = *(v21 + v17);
                *(v21 + v17) = *(v21 + v16);
                *(v21 + v16) = v20;
              }

              ++v19;
              v16 -= 8;
              v17 += 8;
            }

            while (v19 < v18);
          }
        }
      }
    }

LABEL_27:
    v22 = a3[1];
    if (v9 < v22)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_128;
      }

      if (v9 - v8 < a4)
      {
        v23 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_129;
        }

        if (v23 >= v22)
        {
          v23 = a3[1];
        }

        if (v23 < v8)
        {
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          result = sub_10006B7AC(v6);
          v6 = result;
LABEL_100:
          v82 = v6 + 2;
          v81 = v6[2];
          if (v81 >= 2)
          {
            while (*a3)
            {
              v83 = v6;
              v6 += 2 * v81;
              v84 = *v6;
              v85 = &v82[2 * v81];
              v86 = v85[1];
              sub_100074C48((*a3 + 8 * *v6), (*a3 + 8 * *v85), (*a3 + 8 * v86), v7);
              if (v8)
              {
              }

              if (v86 < v84)
              {
                goto LABEL_124;
              }

              if (v81 - 2 >= *v82)
              {
                goto LABEL_125;
              }

              *v6 = v84;
              v6[1] = v86;
              v87 = *v82 - v81;
              if (*v82 < v81)
              {
                goto LABEL_126;
              }

              v81 = *v82 - 1;
              result = memmove(v85, v85 + 2, 16 * v87);
              *v82 = v81;
              v6 = v83;
              if (v81 <= 1)
              {
              }
            }

            goto LABEL_136;
          }
        }

        if (v9 != v23)
        {
          break;
        }
      }
    }

LABEL_46:
    if (v9 < v8)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10006B7C0(0, v6[2] + 1, 1, v6);
      v6 = result;
    }

    v34 = v6[2];
    v33 = v6[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_10006B7C0((v33 > 1), v34 + 1, 1, v6);
      v6 = result;
    }

    v6[2] = v35;
    v36 = v6 + 4;
    v37 = &v6[2 * v34 + 4];
    *v37 = v8;
    v37[1] = v9;
    v93 = v9;
    v38 = *v91;
    if (!*v91)
    {
      goto LABEL_137;
    }

    if (v34)
    {
      while (1)
      {
        v39 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v40 = v6[4];
          v41 = v6[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_66:
          if (v43)
          {
            goto LABEL_114;
          }

          v56 = &v6[2 * v35];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_116;
          }

          v62 = &v36[2 * v39];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_121;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v35 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v35 < 2)
        {
          goto LABEL_122;
        }

        v66 = &v6[2 * v35];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_81:
        if (v61)
        {
          goto LABEL_118;
        }

        v69 = &v36[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_120;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_88:
        if (v39 - 1 >= v35)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_134;
        }

        v77 = v6;
        v78 = &v36[2 * v39 - 2];
        v6 = *v78;
        v8 = &v36[2 * v39];
        v79 = *(v8 + 8);
        sub_100074C48((*a3 + 8 * *v78), (*a3 + 8 * *v8), (*a3 + 8 * v79), v38);
        if (v95)
        {
        }

        if (v79 < v6)
        {
          goto LABEL_109;
        }

        if (v39 > v77[2])
        {
          goto LABEL_110;
        }

        *v78 = v6;
        v78[1] = v79;
        v80 = v77[2];
        if (v39 >= v80)
        {
          goto LABEL_111;
        }

        v6 = v77;
        v35 = v80 - 1;
        result = memmove(&v36[2 * v39], (v8 + 16), 16 * (v80 - 1 - v39));
        v77[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v36[2 * v35];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_112;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_113;
      }

      v51 = &v6[2 * v35];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_115;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_117;
      }

      if (v55 >= v47)
      {
        v73 = &v36[2 * v39];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_123;
        }

        if (v42 < v76)
        {
          v39 = v35 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_3:
    v5 = v93;
    v4 = a3[1];
    if (v93 >= v4)
    {
      goto LABEL_98;
    }
  }

  v88 = v8;
  v89 = v6;
  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = (v8 - v9);
  v92 = v23;
LABEL_37:
  v27 = v9;
  v28 = v26;
  v29 = v25;
  while (1)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v30 = result;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        result = [v30 typeCompare:result];
        if (result != -1)
        {
LABEL_36:
          v9 = v27 + 1;
          v25 += 8;
          --v26;
          if ((v27 + 1) != v92)
          {
            goto LABEL_37;
          }

          v9 = v92;
          v8 = v88;
          v6 = v89;
          goto LABEL_46;
        }
      }
    }

    if (!v24)
    {
      break;
    }

    v31 = *v29;
    *v29 = v29[1];
    v29[1] = v31;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_36;
    }
  }

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
  return result;
}

uint64_t sub_1000743C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 typeCompare:v13];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 typeCompare:*(v12 - 1)];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
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
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = (v8 + v81);
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 typeCompare:{*v28, v81}];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10006B7C0(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_10006B7C0((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_100074F0C((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_10006B7AC(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_10006B720(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_10006B7AC(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_100074F0C((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10006B7AC(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_10006B720(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_100074964(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 sortOrder];
          v35 = [v33 sortOrder];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 sortOrder];
          v20 = [v18 sortOrder];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_100074C48(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      v29 = v4;
LABEL_28:
      v20 = v6 - 8;
      v5 -= 8;
      v21 = v14;
      do
      {
        v22 = v5 + 8;
        v21 -= 8;
        v23 = v20;
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (!v24 || (v25 = v24, objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) == 0) || [v25 typeCompare:v26] == -1)
        {
          v27 = v23;
          if (v22 != v6)
          {
            *v5 = *v23;
          }

          v4 = v29;
          if (v14 <= v29 || (v6 = v27, v27 <= v7))
          {
            v6 = v27;
            goto LABEL_41;
          }

          goto LABEL_28;
        }

        if (v22 != v14)
        {
          *v5 = *v21;
        }

        v5 -= 8;
        v14 = v21;
        v20 = v23;
      }

      while (v21 > v29);
      v14 = v21;
      v4 = v29;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          break;
        }

        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17 || [v16 typeCompare:v17] == -1)
        {
          break;
        }

        v18 = v4;
        v19 = v7 == v4;
        v4 += 8;
        if (!v19)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 8;
      if (v19)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v18;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_41:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_100074F0C(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 typeCompare:*v17] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 typeCompare:*v4] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

id sub_100075154(void *a1)
{
  v1 = a1;
  v2 = CAFFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000FA048 table:@"Localizable"];

  return v3;
}

uint64_t sub_1000751C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_100075214(void *a1)
{
  *(v1 + OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for ClimateSeatHeatingCoolingServiceButton());
  v4 = a1;
  *(v1 + OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton) = sub_10006E5D8(v4, 0);
  *(v1 + OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seat) = v4;
  v5 = v4;
  v6 = sub_10001414C(0, 0, 1);
  v7 = OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton;
  v8 = *&v6[OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton];
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

  v20 = *&v6[v7];
  v21 = &v20[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v22 = *v21;
  *v21 = 0;
  v21[1] = 0;
  v23 = v20;
  sub_100003380(v22);

  [v5 registerObserver:v9];
  [v9 addSubview:*&v6[v7]];
  sub_100075430();
  sub_10007578C();

  return v9;
}

void sub_100075430()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5D90;
  v4 = *&v1[OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton];
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

uint64_t sub_100075678()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton);
  ClimateButton.refreshColorConfig()();
  v2 = *(v1 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView);
  v3 = v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig;
  v4 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v7 = v4;

  v8 = sub_10006E114();
  v9 = sub_10007E990(v8, v7, v5);

  v10 = [*(v3 + 8) colorWithAlphaComponent:0.25];
  v11 = *(v3 + 8);
  v12 = *((swift_isaMask & *v2) + 0xD0);
  v13 = v11;
  return v12(v9, v10, v11, &_swiftEmptyDictionarySingleton);
}

void sub_10007578C()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton];
  if ((sub_10006E114() & 0x19) == 1)
  {
    v2 = CAFSeatHeatingCooling.isHeating.getter();
  }

  else
  {
    v2 = 0;
  }

  v0[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v2 & 1;
  sub_1000C10C4();
  [v0 setEnabled:(sub_10006E114() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  v3 = *(v1 + OBJC_IVAR____TtC7Climate38ClimateSeatHeatingCoolingServiceButton_progressView);
  v4 = v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig;
  v5 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v6 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v7 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v8 = v5;

  v9 = sub_10006E114();
  v10 = sub_10007E990(v9, v8, v6);

  v11 = [*(v4 + 8) colorWithAlphaComponent:0.25];
  v12 = *(v4 + 8);
  v13 = *((swift_isaMask & *v3) + 0xD0);
  v14 = v12;
  v13(v10, v11, v12, &_swiftEmptyDictionarySingleton);
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_100075934()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_seatButton);
}

id sub_100075984()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSeatHeatingIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateSeatHeatingIndicator()
{
  result = qword_100116BE8;
  if (!qword_100116BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100075AC0(void *a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn);
  if ((sub_10006E114() & 0x19) == 1)
  {
    if (v5 == (CAFSeatHeatingCooling.isHeating.getter() & 1))
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 1) == 0)
  {
LABEL_3:
    static os_log_type_t.debug.getter();
    if (qword_100113F00 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = [a1 receivedAllValues];
  v7 = static os_log_type_t.debug.getter();
  if (!v6)
  {
    if (qword_100113F00 == -1)
    {
LABEL_16:

      return os_log(_:dso:log:_:_:)();
    }

LABEL_15:
    swift_once();
    goto LABEL_16;
  }

  if (qword_100113F00 != -1)
  {
    v13 = v7;
    swift_once();
    v7 = v13;
  }

  v8 = qword_10011B1C0;
  v9 = v7;
  if (os_log_type_enabled(qword_10011B1C0, v7))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Seat indicator did update ON: %{BOOL}d", v10, 8u);
  }

  sub_10007578C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((sub_10006E114() & 0x19) == 1)
    {
      v12 = CAFSeatHeatingCooling.isHeating.getter() ^ 1;
    }

    else
    {
      v12 = 1;
    }

    sub_1000A1708(v12 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100075E60()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((sub_10006E114() & 0x19) == 1)
    {
      v1 = CAFSeatHeatingCooling.isHeating.getter() ^ 1;
    }

    else
    {
      v1 = 1;
    }

    sub_1000A1708(v1 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

UIColor __swiftcall UIColor.forceColor(_:)(UIUserInterfaceStyle a1)
{
  if (a1 == UIUserInterfaceStyleDark)
  {
    if (qword_100113EB8 != -1)
    {
      swift_once();
    }

    v2 = &qword_100116BF8;
  }

  else
  {
    if (qword_100113EC0 != -1)
    {
      swift_once();
    }

    v2 = &qword_100116C00;
  }

  v3 = [v1 resolvedColorWithTraitCollection:*v2];

  return v3;
}

void sub_100076014(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  if (qword_100113EC0 != -1)
  {
    swift_once();
  }

  v5 = qword_100116C00;
  v6 = [v4 resolvedColorWithTraitCollection:v5];

  *a3 = v6;
}

void sub_1000760CC()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.35];

  qword_10011AFC0 = v1;
}

void sub_10007613C()
{
  if (qword_100113EA8 != -1)
  {
    swift_once();
  }

  v0 = qword_100113EC0;
  v1 = qword_10011AFC0;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_100116C00;
  v3 = [v1 resolvedColorWithTraitCollection:v2];

  qword_10011AFC8 = v3;
}

id sub_100076230(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() traitCollectionWithUserInterfaceStyle:a2];
  *a3 = result;
  return result;
}

char *sub_10007627C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ClimateStepperPowerButton();
  v1 = objc_msgSendSuper2(&v17, "init");
  v2 = &v1[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  *v2 = xmmword_1000D5B30;
  if (v4 && (v3 == 0x7265776F70 ? (v5 = v4 == 0xE500000000000000) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v6 = v1;
  }

  else
  {
    v7 = v1;
    ClimateButton.updateClimateConfiguration()();
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v9 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
  v10 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
  v11 = objc_opt_self();
  v12 = v8;
  v13 = v9;

  v14 = [v11 clearColor];
  if (v14)
  {
    v15 = v14;

    v12 = v15;
  }

  sub_10007A4CC(v12, v13, v10);

  return v1;
}

id sub_100076420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateStepperPowerButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateStepperPowerButton()
{
  result = qword_100116C30;
  if (!qword_100116C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClimateButton.allowFocus.getter()
{
  v1 = OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ClimateButton.allowFocus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ClimateButton.action.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B054(*v1);
  return v2;
}

uint64_t ClimateButton.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_100003380(v6);
}

uint64_t ClimateButton.popoverDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ClimateButton.popoverDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100076818;
}

void sub_100076818(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id ClimateButton.imageSymbolConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
  }

  else
  {
    v4 = [objc_opt_self() systemFontOfSize:19.0 weight:UIFontWeightRegular];
    v5 = [objc_opt_self() configurationWithFont:v4 scale:-1];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void ClimateButton.imageSymbolConfiguration.setter(void *a1)
{
  sub_10007A5EC(a1);
}

void (*ClimateButton.imageSymbolConfiguration.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = ClimateButton.imageSymbolConfiguration.getter();
  return sub_1000769E8;
}

void sub_1000769E8(uint64_t a1, char a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *((swift_isaMask & *v3) + 0x120);
  if (a2)
  {
    v6 = v4;
    v7 = v5();
    v8 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
    *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v6;
    v9 = v6;

    v10 = v5();
    sub_10000827C(0, &qword_100116930);
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v12 = *a1;
  }

  else
  {
    v13 = v5();
    v14 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
    *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v4;
    v17 = v4;

    v15 = v5();
    sub_10000827C(0, &qword_100116930);
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v12 = v17;
  }
}

void (*ClimateButton.imageSystemName.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_100076C38;
}

uint64_t sub_100076C5C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_100076CBC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  result = swift_beginAccess();
  v8 = *v6;
  v9 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  if (a2)
  {
    if (v9)
    {
      v10 = v8 == a1 && v9 == a2;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }
    }
  }

  else if (!v9)
  {
    return result;
  }

  ClimateButton.updateClimateConfiguration()();
}

void (*ClimateButton.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7Climate13ClimateButton_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_100076DFC;
}

void sub_100076E14(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  if (a2)
  {

    a3(v4, v5);
  }

  else
  {
    v7 = (v3[5] + v3[6]);
    v8 = *v7;
    v9 = v7[1];
    *v7 = v4;
    v7[1] = v5;
    if (v5)
    {
      if (v9)
      {
        v10 = v4 == v8 && v5 == v9;
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v9)
    {
      goto LABEL_14;
    }

    ClimateButton.updateClimateConfiguration()();
  }

LABEL_13:

LABEL_14:

  free(v3);
}

void *ClimateButton.attributedTitle.getter()
{
  v1 = OBJC_IVAR____TtC7Climate13ClimateButton_attributedTitle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ClimateButton.attributedTitle.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC7Climate13ClimateButton_attributedTitle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  ClimateButton.updateClimateConfiguration()();
}

void (*ClimateButton.attributedTitle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100076FFC;
}

void sub_100076FFC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

uint64_t ClimateButton.smallTitle.getter()
{
  v1 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  return *(v0 + v1);
}

void ClimateButton.smallTitle.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

void (*ClimateButton.smallTitle.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_10007716C;
}

void sub_10007716C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  free(v1);
}

Swift::Void __swiftcall ClimateButton.updatePresentation()()
{
  sub_1000C10C4();
  v1 = [v0 setEnabled:((*((swift_isaMask & *v0) + 0x118))() & 0x18) == 0];
  v2 = (*((swift_isaMask & *v0) + 0x200))(v1);
  (*((swift_isaMask & *v0) + 0x208))(v2);

  ClimateButton.createEdgeInsets()();
}

Swift::Void __swiftcall ClimateButton.refreshColorConfig()()
{
  v1 = *((swift_isaMask & *v0) + 0x118);
  v2 = v1();
  if ([v0 isFocused])
  {
    v3 = [objc_opt_self() _carSystemFocusColor];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
    v5 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
    v6 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
    v7 = v4;

    v3 = sub_10007E858(v2, v6, v5);
  }

  v8 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v9 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v10 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v11 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v30 = v3;
  v12 = v9;
  v13 = v10;

  v14 = sub_10007E990(v2, v13, v11);

  if (v1())
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusD];
  }

  v16 = v1();
  v17 = &kCAFilterPlusL;
  if (v16)
  {
    v17 = &kCAFilterPlusD;
  }

  v18 = [objc_allocWithZone(CAFilter) initWithType:*v17];
  v19 = [*(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView) layer];
  [v19 setCompositingFilter:v15];

  v20 = [v0 titleLabel];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 layer];

    [v22 setCompositingFilter:v18];
  }

  v23 = [v0 imageView];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 layer];

    [v25 setCompositingFilter:v18];
  }

  [v0 setBackgroundColor:v30];

  v26 = v14;
  [v0 setTitleColor:v26 forState:0];
  [v0 setTitleColor:v26 forState:2];

  v27 = [v26 colorWithAlphaComponent:0.2];
  [v0 setTitleColor:v27 forState:1];

  if ([v0 isHighlighted])
  {
    v28 = [v8[1] colorWithAlphaComponent:0.2];
  }

  else
  {
    v28 = v26;
  }

  v29 = v28;
  [v0 setTintColor:v28];
}

void ClimateButton.createEdgeInsets()()
{
  v1 = v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName;
  v2 = swift_beginAccess();
  if (!*(v1 + 1))
  {
    goto LABEL_7;
  }

  v3 = (*((swift_isaMask & *v0) + 0x150))(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v3;
  v6 = v4;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_100079D18();
  }

  else
  {
LABEL_7:
    [v0 titleEdgeInsets];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    if (v14 != UIEdgeInsetsZero.top || v8 != left || v9 != bottom || v10 != right)
    {
      [v0 imageEdgeInsets];
      if (v21 != UIEdgeInsetsZero.top || v18 != left || v19 != bottom || v20 != right)
      {
        [v0 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
        [v0 setImageEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
      }
    }
  }
}

uint64_t ClimateButton.touchUpInsideActionTriggered()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {

    v3(v1);
    sub_100003380(v3);
  }

  v4 = v1 + OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(0, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ClimateButton.longPressGestureTriggered(_:)(void *a1)
{
  v2 = v1;
  if ([a1 state] == 1)
  {
    static os_log_type_t.default.getter();
    sub_10000827C(0, &qword_1001149B0);
    v4 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v5 = &v2[OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(1, ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    result = [a1 state];
    if (result == 3)
    {
      static os_log_type_t.default.getter();
      sub_10000827C(0, &qword_1001149B0);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v10 = &v2[OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 1);
        v12 = swift_getObjectType();
        (*(v11 + 8))(0, v12, v11);
        swift_unknownObjectRelease();
      }

      [a1 locationInView:v2];
      v14 = v13;
      v16 = v15;
      [v2 bounds];
      v17.x = v14;
      v17.y = v16;
      result = CGRectContainsPoint(v18, v17);
      if (result)
      {
        return [v2 sendActionsForControlEvents:64];
      }
    }
  }

  return result;
}

void ClimateButton.updateClimateConfiguration()()
{
  sub_1000C10C4();
  v1 = v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName;
  swift_beginAccess();
  if (*(v1 + 1))
  {

    v2 = String._bridgeToObjectiveC()();

    v4 = (*((swift_isaMask & *v0) + 0x120))(v3);
    v5 = CAFUIImageForSymbolNameWithConfiguration();

    [v0 setImage:v5 forState:0];
  }

  else
  {
    [v0 setImage:0 forState:0];
  }

  v6 = OBJC_IVAR____TtC7Climate13ClimateButton_attributedTitle;
  v7 = swift_beginAccess();
  v8 = *(v0 + v6);
  if (v8)
  {
    v9 = v8;
    [v0 setAttributedTitle:v9 forState:0];
    [v0 setTitle:0 forState:0];

    return;
  }

  v10 = (*((swift_isaMask & *v0) + 0x150))(v7);
  if (v11)
  {
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
      swift_beginAccess();
      if (*(v0 + v13) == 1)
      {
        v14 = [v0 titleLabel];
        if (v14)
        {
          v15 = v14;
          v16 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024];
          [v15 setFont:v16];
        }
      }

      v17 = String._bridgeToObjectiveC()();

      [v0 setTitle:v17 forState:0];

      goto LABEL_16;
    }
  }

  [v0 setTitle:0 forState:0];
LABEL_16:
  [v0 setAttributedTitle:0 forState:0];
}

uint64_t ClimateButton.layoutKey.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 superview] && (sub_10000827C(0, &qword_100115400), sub_1000040E8(&unk_100116C60), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v8 + 1))
    {
      sub_1000751C8(&v7, v10);
      v3 = v11;
      v4 = v12;
      sub_10000D960(v10, v11);
      (*(v4 + 8))(v3, v4);
      return sub_100006B9C(v10);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  sub_100008904(&v7, &unk_100116C50);
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

uint64_t ClimateButton.accessibilityLabelPrimary.getter()
{
  v1 = (*((swift_isaMask & *v0) + 0x150))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v5 = v4[1];
    if (v5)
    {
      v6 = *v4;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v3 = v4[1];
    }

    else
    {
      v3 = 0xE000000000000000;
    }

    v1 = v6;
  }

  v7 = v3;
  String.append(_:)(*&v1);

  return 0;
}

Swift::Void __swiftcall ClimateButton.updateAutoModeLabel(isVisible:)(Swift::Bool isVisible)
{
  if (isVisible)
  {
    v2 = [v1 titleLabel];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
      [v3 setFont:v4];
    }

    v5 = *((swift_isaMask & *v1) + 0x158);
    v6 = 1330926913;
    v7 = 0xE400000000000000;
  }

  else
  {
    v5 = *((swift_isaMask & *v1) + 0x158);
    v6 = 0;
    v7 = 0;
  }

  v5(v6, v7);
}

uint64_t sub_100078128(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    sub_100008904(a1, &qword_100116D28);
    sub_100046820(a2, v9);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return sub_100008904(v9, &qword_100116D28);
  }

  else
  {
    sub_10000A930(a1, v9, &unk_100116D30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_10004B04C(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

uint64_t sub_100078254(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    sub_100008904(a1, &qword_100116D10);
    sub_100046844(a2, v9);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return sub_100008904(v9, &qword_100116D10);
  }

  else
  {
    sub_10000A930(a1, v9, &unk_100117FE0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_10004B274(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

uint64_t sub_100078380(char a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 5)
  {
    v5 = sub_10007DEE8(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10004C778();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = type metadata accessor for CAUVehicleLayoutKey();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_100049F74(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = type metadata accessor for CAUVehicleLayoutKey();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_10004B474(a1, a2, v16);
    v17 = type metadata accessor for CAUVehicleLayoutKey();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_10007853C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 1)
  {
    v5 = sub_10007DEE8(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10004C9E8();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = type metadata accessor for CAUVehicleLayoutKey();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);

      sub_10004A294(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = type metadata accessor for CAUVehicleLayoutKey();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_10004B624(a1, a2, v16);
    v17 = type metadata accessor for CAUVehicleLayoutKey();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_100078700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10004BBA0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for CAUVehicleLayoutKey();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10007DEE8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10004D4C4();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for CAUVehicleLayoutKey();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_10004A9B8(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for CAUVehicleLayoutKey();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1000788C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1000040E8(&unk_100114790);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_100008904(a1, &unk_1001153F0);
    sub_100046A28(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100008904(v7, &unk_1001153F0);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_10004BD6C(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t ClimateButton.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Climate13ClimateButton_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ClimateButton.backgroundColor.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView) backgroundColor];

  return v1;
}

void ClimateButton.backgroundColor.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView) setBackgroundColor:a1];
}

id ClimateButton.isHighlighted.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateButton();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

void ClimateButton.isHighlighted.setter(char a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ClimateButton();
  objc_msgSendSuper2(&v13, "setHighlighted:", a1 & 1);
  v3 = [v1 isHighlighted];
  v4 = v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig;
  if (v3)
  {
    v5 = [*(v4 + 1) colorWithAlphaComponent:0.2];
  }

  else
  {
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    v8 = *((swift_isaMask & *v1) + 0x118);
    v9 = *v4;
    v10 = v6;

    v12 = v8(v11);
    v5 = sub_10007E990(v12, v10, v7);
  }

  [v1 setTintColor:v5];
}

char *ClimateButton.init()()
{
  v1 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v1 - 8);
  v3 = &v54 - v2;
  v57 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v0[OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus] = 1;
  v6 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  *v6 = 0;
  v6[1] = 0;
  *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = 0;
  v7 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  *v8 = 0;
  v8[1] = 0;
  *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_attributedTitle] = 0;
  v0[OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle] = 0;
  *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_spaceBetweenSymbolAndTitle] = 0x4008000000000000;
  v0[OBJC_IVAR____TtC7Climate13ClimateButton_textOnTopOfSymbol] = 0;
  v9 = OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView;
  type metadata accessor for ClimateTransparentView();
  *&v0[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelModifier];
  *v10 = 0;
  v10[1] = 0;
  v0[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelShouldIncludeStates] = 1;
  v11 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityIdentifierModifier];
  *v11 = 0;
  v11[1] = 0;
  if (qword_100113EC8 != -1)
  {
    swift_once();
  }

  v56 = v4;
  v12 = qword_10011B070;
  v13 = *algn_10011B078;
  v14 = qword_10011B080;
  v15 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  *v15 = qword_10011B070;
  v15[1] = v13;
  v15[2] = v14;
  v16 = type metadata accessor for ClimateButton();
  v61.receiver = v0;
  v61.super_class = v16;
  v17 = v12;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView;
  v21 = *&v19[OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView];
  v22 = v19;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [v22 imageView];
  if (v23)
  {

    [v22 insertSubview:*&v19[v20] atIndex:0];
  }

  v24 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000D5D90;
  v26 = [*&v19[v20] leadingAnchor];
  v27 = v22;
  v28 = [v27 leadingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v25 + 32) = v29;
  v30 = [*&v19[v20] trailingAnchor];
  v31 = [v27 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v25 + 40) = v32;
  v33 = [*&v19[v20] topAnchor];
  v34 = [v27 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v25 + 48) = v35;
  v36 = [*&v19[v20] bottomAnchor];
  v37 = [v27 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v25 + 56) = v38;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];

  ObjectType = swift_getObjectType();
  sub_1000040E8(&qword_100116C70);
  ObjectType = String.init<A>(describing:)();
  v60 = v40;
  (*((swift_isaMask & *v27) + 0x230))();
  v42 = v56;
  v41 = v57;
  if ((*(v56 + 48))(v3, 1, v57) == 1)
  {

    sub_100008904(v3, &qword_100115840);
  }

  else
  {
    v43 = v55;
    (*(v42 + 32))(v55, v3, v41);
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    v44._countAndFlagsBits = 58;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v58);

    (*(v42 + 8))(v43, v41);
  }

  sub_1000946A8();
  [v27 setAdjustsImageWhenDisabled:0];
  [v27 setContentEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v45 = [v27 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setContentMode:1];
  }

  [v27 setClipsToBounds:1];
  [v27 _setContinuousCornerRadius:22.0];

  (*((swift_isaMask & *v27) + 0x208))();
  ClimateButton.updateClimateConfiguration()();
  v47 = [v27 titleLabel];
  if (v47)
  {
    v48 = v47;
    [v47 setLineBreakMode:0];
  }

  v49 = [v27 titleLabel];
  if (v49)
  {
    v50 = v49;
    [v49 setTextAlignment:1];
  }

  v51 = [v27 titleLabel];

  if (v51)
  {
    v52 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleBody variant:1024];
    [v51 setFont:v52];
  }

  [v27 addTarget:v27 action:"touchUpInsideActionTriggered" forControlEvents:64];

  return v27;
}

void ClimateButton.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v11 = sub_1000AF438();
    swift_unknownObjectRelease();
    v12 = *&v11[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v13 = *(v3 + 16);
    v13(v8, &v1[OBJC_IVAR____TtC7Climate13ClimateButton_id], v2);
    v13(v5, v8, v2);
    v17 = 0;
    v18 = 1;
    swift_beginAccess();
    sub_100078128(&v17, v5);
    swift_endAccess();

    (*(v3 + 8))(v8, v2);
    v14 = type metadata accessor for ClimateButton();
    v16.receiver = v1;
    v16.super_class = v14;
    objc_msgSendSuper2(&v16, "dealloc");
  }

  else
  {
    __break(1u);
  }
}

id ClimateGlassView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void ClimateButton.draw(_:)(double a1, double a2, double a3, double a4)
{
  v9.receiver = v4;
  v9.super_class = type metadata accessor for ClimateButton();
  objc_msgSendSuper2(&v9, "drawRect:", a1, a2, a3, a4);
  ClimateButton.createEdgeInsets()();
}

void sub_100079D18()
{
  v1 = v0;
  v2 = [v0 imageView];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 image];

    if (v4)
    {
      [v4 size];
      v6 = v5;
      v8 = v7;

      v9 = [v1 titleLabel];
      if (v9)
      {
        v10 = v9;
        v41 = [v9 text];

        if (v41)
        {
          v11 = [v1 titleLabel];
          if (v11 && (v12 = v11, v13 = [v11 font], v12, v13))
          {
            v14 = objc_opt_self();
            v15 = [v14 sharedApplication];
            v16 = [v15 delegate];

            if (v16)
            {
              type metadata accessor for ClimateAppDelegate();
              swift_dynamicCastClassUnconditional();
              v17 = sub_1000AF438();
              swift_unknownObjectRelease();

              v18 = [v14 sharedApplication];
              v19 = [v18 userInterfaceLayoutDirection];

              v20 = [objc_allocWithZone(NSString) initWithString:v41];
              sub_1000040E8(&qword_100116D18);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1000D5970;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v22 = String._bridgeToObjectiveC()();

              *(inited + 32) = v22;
              *(inited + 64) = sub_10000827C(0, &unk_100114780);
              *(inited + 40) = v13;
              v23 = v13;
              sub_10004EFA0(inited);
              swift_setDeallocating();
              sub_100008904(inited + 32, &qword_100115F58);
              type metadata accessor for Key(0);
              sub_10007A980();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              [v20 sizeWithAttributes:isa];
              v26 = v25;
              v28 = v27;

              [v1 bounds];
              v29 = (CGRectGetWidth(v43) - v6) * 0.5;
              v30 = OBJC_IVAR____TtC7Climate13ClimateButton_spaceBetweenSymbolAndTitle;
              v31 = *&v1[OBJC_IVAR____TtC7Climate13ClimateButton_spaceBetweenSymbolAndTitle];
              if (v1[OBJC_IVAR____TtC7Climate13ClimateButton_textOnTopOfSymbol])
              {
                v32 = -v6;
                if (v19 == 1)
                {
                  v33 = 0.0;
                }

                else
                {
                  v33 = -v6;
                }

                if (v19 != 1)
                {
                  v32 = 0.0;
                }

                v34 = v8 + v31;
                if (v19 == 1)
                {
                  v35 = -v26;
                }

                else
                {
                  v35 = v29;
                }

                [v1 setTitleEdgeInsets:{0.0, v33, v34, v32, v41}];
                [v1 setImageEdgeInsets:{v28 + *&v1[v30], v35, 0.0, 0.0}];
              }

              else
              {
                v36 = -v26;
                if (v19 != 1)
                {
                  v36 = v29;
                }

                v37 = v28 + v31;
                v38 = -v6;
                if (v19 == 1)
                {
                  v39 = -v6;
                }

                else
                {
                  v39 = 0.0;
                }

                if (v19 == 1)
                {
                  v40 = 0.0;
                }

                else
                {
                  v40 = v38;
                }

                [v1 setImageEdgeInsets:{0.0, v36, v37, v41}];
                [v1 setTitleEdgeInsets:{v8 + *&v1[v30], v40, 0.0, v39}];
              }
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
      }
    }
  }
}

Swift::Void __swiftcall ClimateButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ClimateButton();
  v5 = objc_msgSendSuper2(&v6, "didUpdateFocusInContext:withAnimationCoordinator:", in.super.isa, with.super.isa);
  (*((swift_isaMask & *v2) + 0x208))(v5);
}

Swift::Void __swiftcall ClimateButton.didMoveToSuperview()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ClimateButton();
  objc_msgSendSuper2(&v1, "didMoveToSuperview");
  sub_1000946A8();
}

uint64_t sub_10007A4CC(void *a1, void *a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v8 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v9 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v10 = *(v3 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  sub_10000827C(0, &qword_100115110);
  v11 = a1;
  v12 = a2;

  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (sub_10007DB08(a3, v10), (v13 & 1) == 0))
  {
    (*((swift_isaMask & *v3) + 0x208))();
  }
}

void sub_10007A5EC(void *a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x120);
  v8 = v4();
  v5 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
  *(v2 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = a1;
  v6 = a1;

  v7 = v4();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v5) = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

uint64_t type metadata accessor for ClimateButton()
{
  result = qword_100116D00;
  if (!qword_100116D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s7Climate0A6ButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus) = 1;
  v1 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_attributedTitle) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_spaceBetweenSymbolAndTitle) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_textOnTopOfSymbol) = 0;
  v4 = OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView;
  type metadata accessor for ClimateTransparentView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelModifier);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelShouldIncludeStates) = 1;
  v6 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityIdentifierModifier);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10007A898()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10007A980()
{
  result = qword_100116D20;
  if (!qword_100116D20)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116D20);
  }

  return result;
}

double sub_10007A9DC()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateSeatFanServiceButton());
  v3 = sub_1000584A8(v1);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1000D5970;
  *(v4 + 32) = v3;
  *(v4 + 40) = &off_1000F89A8;
  return result;
}

char *sub_10007AA8C(void *a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v2 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig);
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  v7 = [v5 labelColor];
  v8 = [v7 colorWithAlphaComponent:0.25];

  v9 = [v5 labelColor];
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = &_swiftEmptyDictionarySingleton;
  *(v2 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_autoModeGlyph) = 0;
  v10 = objc_allocWithZone(type metadata accessor for ClimateFanButton());
  v11 = a1;
  sub_10009C11C(v11, 1u);
  v12 = OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fanButton;
  *(v2 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fanButton) = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = *(v2 + v12);
  v16 = *v4;
  v15 = v4[1];
  v17 = v4[2];
  v18 = v4[3];
  v19 = v17;

  v20 = v14;
  v21 = v16;
  v22 = v15;
  sub_10009E0D8(v21, v15, v17, v18);

  *(v2 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fan) = v11;
  v23 = v11;
  v24 = sub_10001414C(0, 0, 1);
  [v23 registerObserver:v24];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fanButton]];
  sub_10007AC9C();
  sub_10007AEE4();

  return v24;
}

void sub_10007AC9C()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5D90;
  v4 = *&v1[OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fanButton];
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

void sub_10007AEE4()
{
  v1 = v0;
  v2 = (sub_10009BF70() & 0x1A) == 2;
  v0[OBJC_IVAR____TtC7Climate16ClimateIndicator_isAutoMode] = v2;
  if ((sub_10009BF70() & 0x1A) == 2)
  {
    v3 = [*&v0[OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fan] fanLevelRange];
    v4 = [v3 maximum];
LABEL_5:
    v7 = v4;

    [v7 floatValue];
    v9 = v8;

    goto LABEL_6;
  }

  v5 = sub_10009BF70();
  v6 = *&v0[OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fan];
  if ((v5 & 0x18) != 0)
  {
    v3 = [v6 fanLevelRange];
    v4 = [v3 minimum];
    goto LABEL_5;
  }

  v9 = [v6 fanLevel];
LABEL_6:
  sub_10009BE64(v9);
  sub_1000C10C4();
  [v1 setEnabled:(sub_10009BF70() & 0x18) == 0];
  sub_10007B060();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_10007B060()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fanButton);
  if ((sub_10009BF70() & 0x1A) == 2)
  {
    v3 = objc_opt_self();
    v4 = [v3 labelColor];
    v5 = [v3 systemGreenColor];
    v6 = [v5 colorWithAlphaComponent:0.25];

    v7 = [v3 systemGreenColor];
    sub_10009E0D8(v4, v6, v7, &_swiftEmptyDictionarySingleton);
LABEL_5:

    goto LABEL_6;
  }

  v9 = *(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors);
  v8 = *(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 8);
  v10 = *(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 16);
  v11 = *(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 24);
  v12 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig);
  v13 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig + 8);
  v15 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig + 16);
  v14 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig + 24);
  v18 = v10;

  v16 = v9;
  v17 = v8;
  LOBYTE(v8) = sub_1000AF2DC(v16, v8, v10, v11, v12, v13, v15, v14);

  if ((v8 & 1) == 0)
  {
    v7 = v15;

    v4 = v12;
    v6 = v13;
    sub_10009E0D8(v4, v13, v15, v14);

    goto LABEL_5;
  }

LABEL_6:
  ClimateButton.refreshColorConfig()();
}

void sub_10007B248()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_defaultProgressViewColorConfig + 16);

  v4 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_autoModeGlyph);
}

id sub_10007B2DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateFanIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateFanIndicator()
{
  result = qword_100116D68;
  if (!qword_100116D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007B468(void *a1, unsigned __int8 a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7Climate19ClimateFanIndicator_fanButton);
  sub_10009BDB8();
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v6 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 >= 256.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 == a2 || (sub_10009BF70() & 0x1A) == 2)
  {
    LOBYTE(v5) = static os_log_type_t.debug.getter();
    if (qword_100113F00 == -1)
    {
LABEL_7:
      v7 = qword_10011B1C0;
      result = os_log_type_enabled(qword_10011B1C0, v5);
      if (!result)
      {
        return result;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136446210;
      v11 = [a1 vehicleLayoutKey];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10000835C(v12, v14, &v31);

      *(v9 + 4) = v15;
      v16 = "Fan indicator did update with same level or automode ON. Skipping, for zone: %{public}s";
      goto LABEL_9;
    }

LABEL_27:
    swift_once();
    goto LABEL_7;
  }

  v17 = [a1 receivedAllValues];
  LOBYTE(v5) = static os_log_type_t.debug.getter();
  if (v17)
  {
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v18 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v5))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 16908802;
      *(v19 + 4) = a2;
      *(v19 + 5) = 2082;
      v21 = [a1 vehicleLayoutKey];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_10000835C(v22, v24, &v31);

      *(v19 + 7) = v25;
      _os_log_impl(&_mh_execute_header, v18, v5, "Fan indicator did update level: %{public}hhu, for zone: %{public}s", v19, 0xFu);
      sub_100006B9C(v20);
    }

    sub_10007AEE4();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10006607C();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v7 = qword_10011B1C0;
    result = os_log_type_enabled(qword_10011B1C0, v5);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136446210;
      v26 = [a1 vehicleLayoutKey];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000835C(v27, v29, &v31);

      *(v9 + 4) = v30;
      v16 = "Fan service hasn't receivedAllValues, for zone: %{public}s";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, v5, v16, v9, 0xCu);
      sub_100006B9C(v10);
    }
  }

  return result;
}

uint64_t sub_10007B948(id a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC7Climate16ClimateIndicator_isAutoMode) == (a2 & 1))
  {
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v16 = qword_10011B1C0;
    result = os_log_type_enabled(qword_10011B1C0, v6);
    if (result)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136446210;
      v19 = [a1 vehicleLayoutKey];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000835C(v20, v22, &v30);

      *(v17 + 4) = v23;
      v24 = "Fan indicator did update with same autoMode value. Skipping, for zone: %{public}s";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v16, v6, v24, v17, 0xCu);
      sub_100006B9C(v18);
    }
  }

  else
  {
    v5 = [a1 receivedAllValues];
    v6 = static os_log_type_t.debug.getter();
    if (v5)
    {
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v7 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v30 = v9;
        *v8 = 67240450;
        *(v8 + 4) = a2 & 1;
        *(v8 + 8) = 2082;
        v10 = [a1 vehicleLayoutKey];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = sub_10000835C(v11, v13, &v30);

        *(v8 + 10) = v14;
        _os_log_impl(&_mh_execute_header, v7, v6, "Fan service did update autoMode: %{BOOL,public}d, for zone: %{public}s", v8, 0x12u);
        sub_100006B9C(v9);
      }

      sub_10007AEE4();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_10006607C();

        return swift_unknownObjectRelease();
      }

      return result;
    }

    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v16 = qword_10011B1C0;
    result = os_log_type_enabled(qword_10011B1C0, v6);
    if (result)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136446210;
      v25 = [a1 vehicleLayoutKey];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_10000835C(v26, v28, &v30);

      *(v17 + 4) = v29;
      v24 = "Fan service automode hasn't receivedAllValues, for zone: %{public}s";
      goto LABEL_19;
    }
  }

  return result;
}

void sub_10007BD94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v57 = a5;
  v54 = a3;
  v60 = a2;
  v56 = a1;
  v7 = sub_1000040E8(&qword_100115108);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v10 = type metadata accessor for URL();
  v59 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v14 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v14, v13, "Updating popover for side: %{public}lu", v15, 0xCu);
  }

  v55 = v12;
  v58 = a4;
  v61 = v5;
  v16 = objc_opt_self();
  v17 = [v16 sharedApplication];
  v18 = [v17 delegate];

  if (!v18)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v19 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v62 & 4) == 0)
  {
    v20 = [v16 sharedApplication];
    v21 = [v20 delegate];

    if (v21)
    {
      swift_dynamicCastClassUnconditional();
      v22 = sub_1000AF438();
      swift_unknownObjectRelease();
      v23 = v22[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      v24 = v61;
      v25 = v58;
      if (!v56)
      {
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134349056;
          *(v27 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v14, v26, "Creating popover for side: %{public}lu", v27, 0xCu);
        }

        [v54 bounds];
        if (v23)
        {
          v32 = CGRectGetHeight(*&v28) + -8.0 + -24.0;
          v33 = objc_allocWithZone(type metadata accessor for ClimateVerticalQuickActionPopover());

          sub_10003CABC(v32, v34, v24, &off_1000F8A80);
          v36 = v35;
        }

        else
        {
          v44 = CGRectGetWidth(*&v28) + -12.0;
          v45 = objc_allocWithZone(type metadata accessor for ClimateHorizontalQuickActionPopover());

          v36 = sub_10009BB14(v46, v24, &off_1000F8A80, v44);
        }

        v47 = 40;
        if (v25 == 2)
        {
          v47 = 24;
        }

        v48 = *(v24 + v47);
        *(v24 + v47) = v36;
        v49 = v36;

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1000238B4(v49, v25);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v51 = v57;
      if (Strong)
      {
        sub_10002253C(v57 & 1, v25, 0);
        swift_unknownObjectRelease();
      }

      if (((v23 | v51) & 1) == 0 && swift_unknownObjectWeakLoadStrong())
      {
        if (v25 == 2)
        {
          v52 = 8;
        }

        else
        {
          v52 = 2;
        }

        sub_10002253C(1, v52, 0);
        swift_unknownObjectRelease();
      }

      sub_10007C758(v25);
      return;
    }

LABEL_34:
    __break(1u);
    return;
  }

  sub_100096674(v60 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v9);
  v37 = v59;
  if ((*(v59 + 48))(v9, 1, v10) == 1)
  {
    sub_100067DD8(v9);
    sub_10007C424();
  }

  else
  {
    v38 = v55;
    (*(v37 + 32))(v55, v9, v10);
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v41 = v39;
      URL._bridgeToObjectiveC()(v40);
      v43 = v42;
      [v41 openURL:v42 options:0 completionHandler:0];
    }

    (*(v37 + 8))(v38, v10);
    sub_10007C424();
  }
}

uint64_t sub_10007C3A0()
{
  swift_unknownObjectWeakDestroy();

  sub_1000289EC((v0 + 7));

  return swift_deallocClassInstance();
}

void sub_10007C424()
{
  v1 = v0;
  v2 = type metadata accessor for CAUFeatureConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CAUFeatureConfiguration.Climate();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 delegate];

  if (v14)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v15 = sub_1000AF438();
    swift_unknownObjectRelease();

    v16 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();

    if (v16 && (CAUAssetLibrary.featureConfiguration()(), v16, CAUFeatureConfiguration.climate.getter(), (*(v3 + 8))(v5, v2), (*(v7 + 32))(v12, v10, v6), v17 = CAUFeatureConfiguration.Climate.oemPunchThroughs.getter(), (*(v7 + 8))(v12, v6), v17))
    {
      v18 = *(v17 + 16);

      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10002253C(1, 2, v19);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10002253C(1, 8, v19);
      swift_unknownObjectRelease();
    }

    v20 = *(v1 + 32);
    if (v20)
    {
      [v20 invalidate];
      v21 = *(v1 + 32);
    }

    else
    {
      v21 = 0;
    }

    *(v1 + 32) = 0;

    v22 = *(v1 + 48);
    if (v22)
    {
      [v22 invalidate];
      v23 = *(v1 + 48);
    }

    else
    {
      v23 = 0;
    }

    *(v1 + 48) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_10007C758(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_100090F64();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v14[4] = sub_10007CD28;
  v14[5] = v6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000AD34C;
  v14[3] = &unk_1000F8AF0;
  v7 = _Block_copy(v14);

  v8 = [v3 scheduledTimerWithTimeInterval:0 repeats:v7 block:v4];
  _Block_release(v7);
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (a1 != 2)
  {
    v13 = *(v1 + 48);
    v10 = (v1 + 48);
    v9 = v13;
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = *(v1 + 32);
  v10 = (v1 + 32);
  v9 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_5:
  [v9 invalidate];
  v12 = *v10;
LABEL_8:
  *v10 = v8;
}

void sub_10007C924(void *a1, char a2)
{
  v3 = v2;
  v5 = *(v2 + 24);
  if (v5 && (type metadata accessor for ClimateQuickActionPopover(), v7 = a1, v8 = v5, LOBYTE(a1) = static NSObject.== infix(_:_:)(), v8, v7, (a1 & 1) != 0))
  {
    v9 = 1;
    v10 = 2;
  }

  else
  {
    v9 = 0;
    v10 = 8;
  }

  v11 = static os_log_type_t.default.getter();
  sub_100067E40();
  v12 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v12, v11, "ClimatePopoverManager invalidate timer for side: %{public}lu", v13, 0xCu);
  }

  if (v9)
  {
    v15 = (v3 + 32);
    v14 = *(v3 + 32);
    if (v14)
    {
LABEL_9:
      [v14 invalidate];
      v16 = *v15;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = (v3 + 48);
    v14 = *(v3 + 48);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_12:
  *v15 = 0;

  v17 = static os_log_type_t.default.getter();
  v18 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240448;
    *(v19 + 4) = a2 & 1;
    *(v19 + 8) = 2050;
    *(v19 + 10) = v10;
    _os_log_impl(&_mh_execute_header, v18, v17, "ClimatePopoverManager should stop timer: %{BOOL,public}d for side: %{public}lu ", v19, 0x12u);
  }

  if ((a2 & 1) == 0)
  {

    sub_10007C758(v10);
  }
}

uint64_t sub_10007CB28(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ([a1 isValid])
    {
      static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      if (!swift_unknownObjectWeakLoadStrong())
      {
      }

      sub_10002253C(1, a3, 0);

      return swift_unknownObjectRelease();
    }
  }

  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10007CCB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007CCF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007CD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007CD50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10007CD98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_10007CDE8()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v1 colorWithAlphaComponent:0.6];

  sub_10000827C(0, &qword_1001167A8);
  LOBYTE(v1) = static NSObject.== infix(_:_:)();

  if (v1 & 1) != 0 || (v3 = [v0 cl_carSystemTertiaryColor], v4 = objc_msgSend(v3, "colorWithAlphaComponent:", 0.1), v3, LOBYTE(v3) = static NSObject.== infix(_:_:)(), v4, (v3) || (v5 = objc_msgSend(v0, "clearColor"), v6 = static NSObject.== infix(_:_:)(), v5, (v6))
  {

    return v11;
  }

  else
  {
    v8 = [v0 cl_carSystemTertiaryColor];
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = [v11 colorWithAlphaComponent:0.1];
    }

    else
    {
      v10 = [v11 colorWithAlphaComponent:0.6];
    }

    return v10;
  }
}

void sub_10007CFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  sub_10000827C(0, &qword_100115110);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {

    sub_10007DB08(v2, v3);
  }
}

unint64_t sub_10007D088()
{
  result = qword_100116EE0;
  if (!qword_100116EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116EE0);
  }

  return result;
}

unint64_t sub_10007D0DC(uint64_t a1)
{
  result = sub_10007D088();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007D104(void *a1, void *a2)
{
  _StringGuts.grow(_:)(59);
  v4._object = 0x80000001000DD800;
  v4._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v4);
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6F726765726F6620;
  v10._object = 0xEC0000003D646E75;
  String.append(_:)(v10);
  v11 = [a2 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x3D73657461747320;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  sub_10007D298();
  v17._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return 0;
}

unint64_t sub_10007D298()
{
  result = qword_100116F10;
  if (!qword_100116F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F10);
  }

  return result;
}

void sub_10007D308()
{
  v0 = objc_opt_self();
  v1 = [v0 systemWhiteColor];
  v2 = [v1 colorWithAlphaComponent:1.0];

  v3 = [v0 labelColor];
  if (qword_100113EC0 != -1)
  {
    swift_once();
  }

  v4 = qword_100116C00;
  v5 = [v3 resolvedColorWithTraitCollection:v4];

  qword_10011B088 = v2;
  qword_10011B090 = v5;
  qword_10011B098 = &_swiftEmptyDictionarySingleton;
}

void sub_10007D464(uint64_t a1, SEL *a2, void *a3, void *a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = [v9 *a2];
  v11 = [v9 labelColor];
  if (qword_100113EB8 != -1)
  {
    swift_once();
  }

  v12 = qword_100116BF8;
  v13 = [v11 resolvedColorWithTraitCollection:v12];

  *a3 = v10;
  *a4 = v13;
  *a5 = &_swiftEmptyDictionarySingleton;
}

void sub_10007D564()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  if (qword_100113EB8 != -1)
  {
    swift_once();
  }

  v2 = qword_100116BF8;
  v3 = [v1 resolvedColorWithTraitCollection:v2];

  v4 = [v0 labelColor];
  if (qword_100113EC0 != -1)
  {
    swift_once();
  }

  v5 = qword_100116C00;
  v6 = [v4 resolvedColorWithTraitCollection:v5];

  qword_10011B0E8 = v3;
  unk_10011B0F0 = v6;
  qword_10011B0F8 = &_swiftEmptyDictionarySingleton;
}

id sub_10007D6D0(uint64_t a1, SEL *a2, void *a3, void *a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  result = [v9 *a2];
  *a3 = v10;
  *a4 = result;
  *a5 = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_10007D75C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v40 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v41 = (v5 + 63) >> 6;
  v42 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = *(v3 + 56) + 32 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = sub_10007DD14(v13);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v44 = v9;
    v21 = *(v2 + 56) + 32 * v19;
    v22 = v17;
    v24 = *v21;
    v23 = *(v21 + 8);
    v25 = *(v21 + 24);
    v45 = *(v21 + 16);
    sub_10000827C(0, &qword_100115110);
    v46 = v45;
    v48 = v25;

    v26 = v16;
    v27 = v15;
    v28 = v18;
    v29 = v18;

    v30 = v24;
    v49 = v23;
    v47 = v30;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
LABEL_28:

      goto LABEL_33;
    }

    v31 = v22;
    if (v23)
    {
      if (!v15)
      {
        goto LABEL_28;
      }

      sub_10000827C(0, &qword_1001167A8);
      v32 = v49;
      v33 = v27;
      v34 = static NSObject.== infix(_:_:)();

      v35 = v46;
      if ((v34 & 1) == 0)
      {

LABEL_34:

        return 0;
      }
    }

    else
    {
      v35 = v46;
      if (v15)
      {

        goto LABEL_34;
      }
    }

    if (v45)
    {
      if (!v28)
      {

        goto LABEL_33;
      }

      sub_10000827C(0, &qword_1001167A8);
      v36 = v35;
      v37 = v29;
      v38 = static NSObject.== infix(_:_:)();

      if ((v38 & 1) == 0)
      {

LABEL_33:

        goto LABEL_34;
      }
    }

    else if (v28)
    {

      goto LABEL_33;
    }

    v39 = sub_10007D75C(v48, v31);

    result = 0;
    v3 = v42;
    v2 = a2;
    v7 = v44;
    if ((v39 & 1) == 0)
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v41)
    {
      return 1;
    }

    v11 = *(v40 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10007DB08(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = a1 + 64;
      v6 = 1 << *(a1 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(a1 + 64);
      v9 = (v6 + 63) >> 6;
      while (v8)
      {
        v10 = __clz(__rbit64(v8));
        v31 = (v8 - 1) & v8;
LABEL_13:
        v13 = v10 | (v4 << 6);
        v14 = *(*(v3 + 48) + 8 * v13);
        v15 = *(v3 + 56) + 24 * v13;
        v17 = *v15;
        v16 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = sub_10007DD14(v14);
        if ((v20 & 1) == 0)
        {
          return;
        }

        v21 = *(v2 + 56) + 24 * v19;
        v22 = *v21;
        v32 = *(v21 + 8);
        v23 = *(v21 + 16);
        sub_10000827C(0, &qword_100115110);
        v24 = v17;
        v25 = v16;

        v26 = v22;
        v27 = v32;

        if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
        {

          return;
        }

        v28 = sub_10007DB08(v23, v18);

        v3 = a1;
        v2 = a2;
        v8 = v31;
        if ((v28 & 1) == 0)
        {
          return;
        }
      }

      v11 = v4;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          return;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          v31 = (v12 - 1) & v12;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

unint64_t sub_10007DD14(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10007E194(a1, v2);
}

unint64_t sub_10007DD80(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10007E6D8(&qword_100115800, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007E304(a1, v2, &type metadata accessor for UUID, &qword_100114CA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10007DE54(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10007E200(a1, v2);
}

unint64_t sub_10007DEE8(uint64_t a1)
{
  type metadata accessor for CAUVehicleLayoutKey();
  sub_10007E6D8(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007E304(a1, v2, &type metadata accessor for CAUVehicleLayoutKey, &qword_1001152B0, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
}

unint64_t sub_10007DFBC(uint64_t a1, uint64_t a2, char a3)
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

  v7 = Hasher._finalize()();

  return sub_10007E4A4(a1, a2, a3, v7);
}

unint64_t sub_10007E0B0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10007E620(a1, a2, v4);
}

unint64_t sub_10007E128(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10007E720(a1, v2);
}

unint64_t sub_10007E194(uint64_t a1, uint64_t a2)
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

unint64_t sub_10007E200(uint64_t a1, uint64_t a2)
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

unint64_t sub_10007E304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10007E6D8(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_10007E4A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v13 = a1 != 2;
    v14 = a1 != 1;
    if (a2)
    {
      v13 = 1;
      v14 = 1;
    }

    if (a3 != 2)
    {
      v13 = 1;
    }

    v23 = v13;
    v15 = a3 != 2 || v14;
    if (a2 | a1)
    {
      v16 = 0;
    }

    else
    {
      v16 = a3 == 2;
    }

    do
    {
      v17 = (v12 + 24 * v7);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(v17 + 16);
      if (v20)
      {
        if (v20 == 1)
        {
          if (a3 == 1 && v18 == a1)
          {
            return v7;
          }
        }

        else if (v18 | v19)
        {
          if (v18 ^ 1 | v19)
          {
            if (!v23)
            {
              return v7;
            }
          }

          else if ((v15 & 1) == 0)
          {
            return v7;
          }
        }

        else if (v16)
        {
          return v7;
        }
      }

      else if (!a3)
      {
        v21 = v18 == a1 && v19 == a2;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_10007E620(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007E6D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007E720(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id sub_10007E790(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  if ((a1 & 0x10) == 0 || (v4 = sub_10007DD14(0x10uLL), (v5 & 1) == 0))
  {
    if ((a1 & 8) == 0 || !*(a2 + 16) || (v4 = sub_10007DD14(8uLL), (v6 & 1) == 0))
    {
      if ((a1 & 4) == 0)
      {
        return 0;
      }

      if (!*(a2 + 16))
      {
        return 0;
      }

      v4 = sub_10007DD14(4uLL);
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v8 = *(a2 + 56) + 24 * v4;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *v8;
  v12 = v10;

  return v9;
}

id sub_10007E858(char a1, void *a2, uint64_t a3)
{
  v4 = sub_10007E790(a1, a3);
  if (v4)
  {
    v6 = v4;

    return v6;
  }

  if ((a1 & 0x10) == 0)
  {
    goto LABEL_4;
  }

  v8 = objc_opt_self();
  v9 = [v8 clearColor];
  sub_10000827C(0, &qword_1001167A8);
  v10 = static NSObject.== infix(_:_:)();

  if ((a1 & 8) == 0)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_4:

    return a2;
  }

  if (v10)
  {
    goto LABEL_4;
  }

LABEL_11:
  v11 = [v8 tertiarySystemFillColor];

  return v11;
}

id sub_10007E990(char a1, void *a2, uint64_t a3)
{
  v4 = sub_10007E790(a1, a3);
  if (v4)
  {
    v6 = v5;

    return v6;
  }

  if ((a1 & 0x10) == 0)
  {
    if ((a1 & 8) == 0)
    {
      if ((a1 & 4) != 0)
      {
        return sub_10007CDE8();
      }

      goto LABEL_18;
    }

    v14 = [objc_opt_self() standardUserDefaults];
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 BOOLForKey:v15];

    v17 = objc_opt_self();
    if (v16)
    {
      v13 = [v17 systemYellowColor];
      goto LABEL_34;
    }

    v8 = v17;
    v24 = [v17 clearColor];
    sub_10000827C(0, &qword_1001167A8);
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
LABEL_18:

      return a2;
    }

    v35 = [v8 cl_carSystemTertiaryColor];
    v36 = static NSObject.== infix(_:_:)();

    if (v36)
    {
LABEL_11:
      v13 = [a2 colorWithAlphaComponent:0.1];
LABEL_34:

      return v13;
    }

LABEL_33:
    v13 = [v8 tertiaryLabelColor];
    goto LABEL_34;
  }

  if ((a1 & 8) == 0)
  {
    v8 = objc_opt_self();
    v9 = [v8 clearColor];
    sub_10000827C(0, &qword_1001167A8);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      goto LABEL_18;
    }

    v11 = [v8 cl_carSystemTertiaryColor];
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

  v18 = [objc_opt_self() standardUserDefaults];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 BOOLForKey:v19];

  v21 = objc_opt_self();
  if (v20)
  {
    v22 = [v21 systemYellowColor];
  }

  else
  {
    v26 = v21;
    v27 = [v21 clearColor];
    sub_10000827C(0, &qword_1001167A8);
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      v23 = a2;
      goto LABEL_23;
    }

    v37 = [v26 cl_carSystemTertiaryColor];
    v38 = static NSObject.== infix(_:_:)();

    if (v38)
    {
      v22 = [a2 colorWithAlphaComponent:0.1];
    }

    else
    {
      v22 = [v26 tertiaryLabelColor];
    }
  }

  v23 = v22;
LABEL_23:
  v6 = v23;
  v29 = objc_opt_self();
  v30 = [v29 clearColor];
  sub_10000827C(0, &qword_1001167A8);
  v31 = static NSObject.== infix(_:_:)();

  if (v31)
  {
    return v6;
  }

  v32 = [v29 cl_carSystemTertiaryColor];
  v33 = static NSObject.== infix(_:_:)();

  if (v33)
  {
    v34 = [v6 colorWithAlphaComponent:0.1];
  }

  else
  {
    v34 = [v29 tertiaryLabelColor];
  }

  v39 = v34;

  return v39;
}

uint64_t sub_10007EE90()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_setting);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    if ([v3 disabled] & 1) != 0 || (sub_1000C0074(), (v5) && (CAFAutomakerSetting.isLimitableUI.getter())
    {
    }

    else
    {
      if (([v3 hasHidden] & 1) == 0)
      {

        return 0;
      }

      v6 = CAFAutomakerSetting.isHidden.getter();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    return 16;
  }

  return result;
}

id sub_10007EFB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateDeepLinkAutomakerSettingButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateDeepLinkAutomakerSettingButton()
{
  result = qword_100116FA8;
  if (!qword_100116FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10007F094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateTargetTemperatureTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007F0FC(void *a1)
{
  v2 = v1;
  v4 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v4 - 8);
  v34 = &v31 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_1000040E8(&unk_100114790);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v31 - v18;
  v32 = a1;
  v20 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureTracker_targetTemperatures;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (*(v22 + 16))
  {

    v23 = sub_10007DD80(v11);
    if (v24)
    {
      (*(v13 + 16))(v15, *(v22 + 56) + *(v13 + 72) * v23, v12);
      (*(v7 + 8))(v11, v6);

      (*(v13 + 32))(v19, v15, v12);
      v25 = v32;
      CAFTemperature.adjustTargetTemperatureIfNeeded(visibleTemperature:)(v19);
      v26 = [v25 uniqueIdentifier];
      v27 = v33;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = [v25 targetTemperature];
      sub_10007F6E4();
      v29 = v34;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v13 + 56))(v29, 0, 1, v12);
      swift_beginAccess();
      sub_1000788C0(v29, v27);
      swift_endAccess();
      return (*(v13 + 8))(v19, v12);
    }
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_10007F6E4()
{
  result = qword_100114AB0;
  if (!qword_100114AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100114AB0);
  }

  return result;
}

id sub_10007F79C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimatePassthroughButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimatePassthroughButton()
{
  result = qword_100117018;
  if (!qword_100117018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007F828()
{
  v1 = v0;
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*((swift_isaMask & *v0) + 0x118))(v4) & 0x18) != 0)
  {
    v7 = [*(v0 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent) combinations];
    sub_10000827C(0, &qword_1001170B8);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9 >= 2)
    {
      v11 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_defaultSymbolName);
      v10 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_defaultSymbolName + 8);
      v12 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
      swift_beginAccess();
      v13 = *v12;
      v14 = v12[1];
      *v12 = v11;
      v12[1] = v10;
      if (v14)
      {
        v15 = v11 == v13 && v14 == v10;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_21;
        }
      }

LABEL_20:
      ClimateButton.updateClimateConfiguration()();
      goto LABEL_21;
    }
  }

  sub_10000827C(0, &qword_100115830);
  CAFPositionedRequired.layoutKey.getter();
  sub_100028A98();
  v17 = v16;
  (*(v3 + 8))(v6, v2);
  v18 = CAFVent.symbolName(useRightFacingSeat:)(v17 & 1);
  v19 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
  swift_beginAccess();
  countAndFlagsBits = v19->_countAndFlagsBits;
  object = v19->_object;
  *v19 = v18;
  if (!object)
  {
    goto LABEL_20;
  }

  v22 = v18._countAndFlagsBits == countAndFlagsBits && object == v18._object;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:

  sub_1000C10C4();
  [v1 setEnabled:((*((swift_isaMask & *v1) + 0x118))() & 0x18) == 0];
  sub_10007FF08();
  (*((swift_isaMask & *v1) + 0x208))();
  ClimateButton.createEdgeInsets()();
}

uint64_t sub_10007FB98()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent);
  if (![v1 hasOn])
  {
    v5 = [v1 autoMode];
    v6 = [v1 currentIndexRestricted];
    v7 = [v1 currentIndexInvalid];
    v8 = [v1 currentIndexDisabled];
    if (v5)
    {
      if (v6)
      {
        v9 = 7;
        v10 = 15;
        goto LABEL_12;
      }

      if (v7)
      {
        result = 11;
      }

      else
      {
        result = 3;
      }

      if (!v8)
      {
        return result;
      }
    }

    else
    {
      if (v6)
      {
        v9 = 5;
        v10 = 13;
LABEL_12:
        if (v7)
        {
          result = v10;
        }

        else
        {
          result = v9;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }

        return result | 0x10;
      }

      if (v7)
      {
        result = 9;
      }

      else
      {
        result = 1;
      }

      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    return result | 0x10;
  }

  v2 = [v1 on];
  v3 = [v1 autoMode];
  if ([v1 onRestricted])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v1 currentIndexRestricted];
  }

  if ([v1 onInvalid])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v1 currentIndexInvalid];
  }

  if ([v1 onDisabled])
  {
    if (v2)
    {
      if (v3)
      {
        if (v4)
        {
          if (v11)
          {
            return 31;
          }

          return 23;
        }

        if (v11)
        {
          return 27;
        }

        return 19;
      }

      if (v4)
      {
        if (v11)
        {
          return 29;
        }

        return 21;
      }

      if (v11)
      {
        return 25;
      }

      return 17;
    }

    if (v3)
    {
      if (v4)
      {
        if (v11)
        {
          return 30;
        }

        return 22;
      }

      if (v11)
      {
        return 26;
      }

      return 18;
    }

    if (v4)
    {
      if (v11)
      {
        return 28;
      }

      return 20;
    }

    if (v11)
    {
      return 24;
    }

    return 16;
  }

  v13 = [v1 currentIndexDisabled];
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        if (v11)
        {
          if (v13)
          {
            return 31;
          }

          return 15;
        }

        else
        {
          if (v13)
          {
            return 23;
          }

          return 7;
        }
      }

      else if (v11)
      {
        if (v13)
        {
          return 27;
        }

        return 11;
      }

      else
      {
        if (v13)
        {
          return 19;
        }

        return 3;
      }
    }

    else if (v4)
    {
      if (v11)
      {
        if (v13)
        {
          return 29;
        }

        return 13;
      }

      else
      {
        if (v13)
        {
          return 21;
        }

        return 5;
      }
    }

    else if (v11)
    {
      if (v13)
      {
        return 25;
      }

      return 9;
    }

    else
    {
      if (v13)
      {
        return 17;
      }

      return 1;
    }
  }

  else if (v3)
  {
    if (v4)
    {
      if (v11)
      {
        if (v13)
        {
          return 30;
        }

        return 14;
      }

      else
      {
        if (v13)
        {
          return 22;
        }

        return 6;
      }
    }

    else if (v11)
    {
      if (v13)
      {
        return 26;
      }

      return 10;
    }

    else
    {
      if (v13)
      {
        return 18;
      }

      return 2;
    }
  }

  else if (v4)
  {
    if (v11)
    {
      if (v13)
      {
        return 28;
      }

      return 12;
    }

    else
    {
      if (v13)
      {
        return 20;
      }

      return 4;
    }
  }

  else if (v11)
  {
    if (v13)
    {
      return 24;
    }

    return 8;
  }

  else
  {
    if (v13)
    {
      return 16;
    }

    return 0;
  }
}

void sub_10007FF08()
{
  v1 = v0;
  if (((*((swift_isaMask & *v0) + 0x118))() & 0x1B) == 1)
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v3 = v0 + *v2;
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *v3;
  v7 = v4;

  sub_10007A4CC(v6, v7, v5);

  v8 = (*((swift_isaMask & *v1) + 0x118))();
  if ((v8 & 0x1A) == 2)
  {
    v9 = v8;
    v10 = [objc_opt_self() systemGreenColor];
    if ((v9 & 4) != 0)
    {
      v17 = sub_10007CDE8();

      v18 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
      v11 = sub_10007CDE8();

      v10 = v17;
    }

    else
    {
      v11 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
    }

    v19 = [objc_opt_self() systemFontOfSize:19.0 weight:UIFontWeightRegular];
    v20 = objc_opt_self();
    v21 = [v20 configurationWithFont:v19 scale:-1];

    sub_1000040E8(&unk_100114770);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000D58A0;
    *(v22 + 32) = v10;
    *(v22 + 40) = v11;
    sub_10000827C(0, &qword_1001167A8);
    v15 = v10;
    v30 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v24 = [v20 configurationWithPaletteColors:isa];

    v25 = [v21 configurationByApplyingConfiguration:v24];
    v26 = ClimateButton.imageSymbolConfiguration.getter();
    v27 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
    *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v25;
    v28 = v25;

    v29 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    LOBYTE(v27) = static NSObject.== infix(_:_:)();

    if ((v27 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }
  }

  else
  {
    v12 = [objc_opt_self() systemFontOfSize:19.0 weight:UIFontWeightRegular];
    v13 = [objc_opt_self() configurationWithFont:v12 scale:-1];

    v30 = ClimateButton.imageSymbolConfiguration.getter();
    v14 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
    *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v13;
    v15 = v13;

    v16 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    LOBYTE(v14) = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }
  }
}