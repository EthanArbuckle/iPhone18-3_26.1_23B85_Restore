uint64_t sub_1002761E0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA4020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100276248()
{
  result = qword_100CA5558;
  if (!qword_100CA5558)
  {
    sub_10022E824(&qword_100CA5560);
    sub_100006F64(&qword_100CA5518, &qword_100CA54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5558);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for OptInTipViewViewModel(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OptInTipViewViewModel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = v4 - 2;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for OptInTipViewViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100276424(char a1)
{
  sub_1003198A0(a1 & 1);
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_10027646C(int a1)
{
  sub_100319B28(a1 & 0x1FF01);
  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_1002764B4(__int16 a1)
{
  v1 = sub_1003199B0(a1 & 0xFF01);
  v3 = v2;
  v5 = v4;
  v6 = sub_10030FB1C(v1, v2, v4);
  sub_1002773E8(v1, v3, v5);
  return v6;
}

uint64_t sub_10027650C(unsigned int a1)
{
  v2 = a1 >> 8;
  v3 = type metadata accessor for Tips.Action();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = swift_allocObject();
  v8[16] = a1 & 1;
  v8[17] = v2;
  v8[18] = BYTE2(a1) & 1;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A2C3F0;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v11;
}

uint64_t sub_1002766C0(__int16 a1)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = sub_100319A18(a1 & 0xFF01);
  v14[3] = v6;
  sub_10002D5A4();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  v12 = Text.font(_:)();

  sub_10010CD64(v7, v9, v11 & 1);

  return v12;
}

uint64_t sub_100276860()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100276D14()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D8F350);
  sub_10000703C(v0, qword_100D8F350);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100276E64()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA1E70 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D8F350);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_10027705C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_10022C350(&qword_100CA5590);
  a1[4] = sub_100277374(&qword_100CA5598);
  sub_100042FB0(a1);
  sub_100277374(&qword_100CA55A0);
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t sub_100277108(int a1, unsigned int a2)
{
  if ((a1 ^ a2))
  {
    return 0;
  }

  v5 = a2 >> 8;
  v6 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE1(a1));
  v8 = v7;
  if (v6 == PredictedLocationsAuthorizationState.rawValue.getter(v5) && v8 == v9)
  {

    if (((a1 ^ a2) & 0x10000) != 0)
    {
      return 0;
    }
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (((a1 ^ a2) & 0x10000) != 0 || (v11 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100277218()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_10027646C(v1 | (v0[1] << 8) | *v0);
}

uint64_t sub_10027726C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (v3[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return a3(v4 | (v3[1] << 8) | *v3);
}

uint64_t sub_10027729C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_100277108(v2 | (a1[1] << 8) | *a1, v3 | (a2[1] << 8) | *a2);
}

uint64_t sub_1002772DC@<X0>(uint64_t *a1@<X8>)
{
  sub_100235784();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100277320()
{
  result = qword_100CA5568;
  if (!qword_100CA5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5568);
  }

  return result;
}

uint64_t sub_100277374(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA5590);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002773E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

Swift::Void __swiftcall WindowFocusManager.applicationActiveStatusChanged(to:)(Swift::Bool to)
{
  v3 = v1;
  if (qword_100CA27B8 != -1)
  {
    sub_10001E660();
  }

  v5 = type metadata accessor for Logger();
  sub_10000703C(v5, qword_100D90D80);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = sub_100278694(*(v3 + 34));
    sub_100078694(v9, v10, &v19);
    sub_1000227AC();
    *(v8 + 4) = v2;
    *(v8 + 12) = 1024;
    *(v8 + 14) = to;
    *(v8 + 18) = 2082;
    if (*(v3 + 32))
    {
      v11 = 0x8000000100ABCAE0;
      v12 = 0xD000000000000014;
    }

    else
    {
      v13 = 0xE600000000000000;
      v14 = *(v3 + 24);
      v15 = 0x657669746361;
      v16 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E75;
      if (!v14)
      {
        v17 = 0x6576697463616E69;
        v16 = 0xE800000000000000;
      }

      if (v14 != 1)
      {
        v15 = v17;
        v13 = v16;
      }

      if (v14 == -1)
      {
        v12 = 0x6669636570736E75;
      }

      else
      {
        v12 = v15;
      }

      if (v14 == -1)
      {
        v11 = 0xEB00000000646569;
      }

      else
      {
        v11 = v13;
      }
    }

    sub_100078694(v12, v11, &v19);
    sub_1000227AC();
    *(v8 + 20) = v2;
    _os_log_impl(&_mh_execute_header, v6, v7, "Application's active status changed, will notify if needed; isFocused=%s, isApplicationActive=%{BOOL}d, activeAppearance=%{public}s", v8, 0x1Cu);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  if (*(v3 + 33) == 2)
  {
    v18 = *(v3 + 32);
  }

  else
  {
    v18 = 0;
  }

  *(v3 + 33) = to;

  sub_100277644(v18);
}

uint64_t sub_100277644(uint64_t result)
{
  v2 = (*(v1 + 33) == 2) | *(v1 + 33);
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = v2 & (*(v1 + 24) == 1);
  }

  v3 = *(v1 + 34);
  if (v3 == 2 || ((v2 ^ v3) & 1) != 0)
  {
    if (v2)
    {
      v4 = "Notifying window did become focused";
      v5 = &static WeatherWindowNotificationName.windowDidBecomeActiveMain.getter;
      v6 = sub_100277EB4;
      v7 = result & 1;
      v8 = 1;
    }

    else
    {
      v4 = "Notifying window did lose focus";
      v5 = &static WeatherWindowNotificationName.windowDidResignActiveMain.getter;
      v6 = sub_1002780C4;
      v7 = result & 1;
      v8 = 0;
    }

    return sub_100277D54(v7, v4, v8, v5, v6);
  }

  return result;
}

uint64_t WindowFocusManager.userInterfaceActiveAppearanceChanged(to:)(uint64_t a1)
{
  v3 = v1;
  if (qword_100CA27B8 != -1)
  {
    sub_10001E660();
  }

  v5 = type metadata accessor for Logger();
  sub_10000703C(v5, qword_100D90D80);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = sub_100278694(*(v3 + 34));
    sub_100078694(v9, v10, &v21);
    sub_1000227AC();
    *(v8 + 4) = v2;
    *(v8 + 12) = 2080;
    v11 = sub_100278694(*(v3 + 33));
    sub_100078694(v11, v12, &v21);
    sub_1000227AC();
    v13 = 0xE600000000000000;
    *(v8 + 14) = v2;
    *(v8 + 22) = 2082;
    v14 = 0x657669746361;
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    if (!a1)
    {
      v16 = 0x6576697463616E69;
      v15 = 0xE800000000000000;
    }

    if (a1 != 1)
    {
      v14 = v16;
      v13 = v15;
    }

    if (a1 == -1)
    {
      v17 = 0x6669636570736E75;
    }

    else
    {
      v17 = v14;
    }

    if (a1 == -1)
    {
      v18 = 0xEB00000000646569;
    }

    else
    {
      v18 = v13;
    }

    sub_100078694(v17, v18, &v21);
    sub_1000227AC();
    *(v8 + 24) = v2;
    _os_log_impl(&_mh_execute_header, v6, v7, "User interface's active appearance changed, will notify if needed; isFocused=%s, isApplicationActive=%s, activeAppearance=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  if (*(v3 + 33) == 2)
  {
    v19 = *(v3 + 32);
  }

  else
  {
    v19 = 0;
  }

  *(v3 + 24) = a1;
  *(v3 + 32) = 0;

  return sub_100277644(v19);
}

uint64_t WindowFocusManager.add(monitor:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DisposableMonitor();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1002783E0(v7, a1);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_100040664(*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  a2[3] = v6;
  result = sub_100278DB8(&qword_100CA55B8, type metadata accessor for DisposableMonitor);
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t WindowFocusManager.remove(monitor:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_100073CE4(v3);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_unknownObjectRelease();
      if (v8 == a1)
      {

        swift_beginAccess();
        sub_100277CB8(i, sub_1008FBEE0, sub_1006A9CCC);
        swift_endAccess();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_100277BBC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1008FBAB8();
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for DetailChartDataElement();
    sub_100003A9C();
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    (*(v7 + 32))(a2, v9);
    sub_1006A0744(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_100277CB8(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

uint64_t sub_100277D54(char a1, const char *a2, char a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void))
{
  v9 = v5;
  if (qword_100CA27B8 != -1)
  {
    sub_10001E660();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90D80);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
    sub_100003884();
  }

  *(v9 + 34) = a3;
  v15 = [objc_opt_self() defaultCenter];
  v16 = a4();
  [v15 postNotificationName:v16 object:0];

  return a5(v9, a1 & 1);
}

uint64_t sub_100277EB4(uint64_t a1, char a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = sub_100073CE4(v4);
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(a2 & 1, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v11 = *(a1 + 16);
  v12 = sub_100073CE4(v11);

  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      *(a1 + 16) = _swiftEmptyArrayStorage;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002780C4(uint64_t a1, char a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = sub_100073CE4(v4);
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v9 + 16))(a2 & 1, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v11 = *(a1 + 16);
  v12 = sub_100073CE4(v11);

  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      *(a1 + 16) = _swiftEmptyArrayStorage;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t WindowFocusManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10027832C()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 33) = 514;
  return result;
}

uint64_t sub_1002783E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_10027845C()
{
  sub_1001D5A94(v0 + 16);
  sub_1001D5A94(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1002784C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    return 0xD000000000000026;
  }

  sub_10016D534();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100278530()
{
  type metadata accessor for Date();
  sub_10000548C();
  __chkstk_darwin(v0);
  sub_100005384();
  v1 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v1 - 8);
  sub_10001BB4C(v2, v9);
  sub_1000191D0();
  if (!v3)
  {
    v4 = sub_100007F3C();
    v5(v4);
    sub_100278DB8(&qword_100CA5720, &type metadata accessor for Date);
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100014140();
    v7(v6);
  }

  return sub_100003A8C();
}

unint64_t sub_100278694(char a1)
{
  v1 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v1 = 0x65736C6166;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002786E8()
{
  type metadata accessor for URL();
  sub_10000548C();
  __chkstk_darwin(v0);
  sub_100005384();
  v1 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v1 - 8);
  sub_10001BB4C(v2, v9);
  sub_1000191D0();
  if (!v3)
  {
    v4 = sub_100007F3C();
    v5(v4);
    sub_100278DB8(&qword_100CA5728, &type metadata accessor for URL);
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100014140();
    v7(v6);
  }

  return sub_100003A8C();
}

uint64_t sub_10027884C()
{
  type metadata accessor for AttributedString();
  sub_10000548C();
  __chkstk_darwin(v0);
  sub_100005384();
  v1 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v1 - 8);
  sub_10001BB4C(v2, v9);
  sub_1000191D0();
  if (!v3)
  {
    v4 = sub_100007F3C();
    v5(v4);
    sub_100278DB8(&qword_100CA5738, &type metadata accessor for AttributedString);
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100014140();
    v7(v6);
  }

  return sub_100003A8C();
}

uint64_t sub_100278A78(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100278B14@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100278B44(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_100278B8C(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

_BYTE **sub_100278BD4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100278C0C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100078694(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100278C68(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CA3170);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100278D5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10022C350(a3);
  sub_100003A9C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100278DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100278E04()
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);

  return static Location.== infix(_:_:)();
}

uint64_t sub_100278E64()
{
  sub_100017580();
  type metadata accessor for Date();
  sub_10000F9FC();
  sub_10027ECBC(v0, v1);
  sub_10001920C();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  type metadata accessor for Location();
  sub_10002058C();
  sub_10027ECBC(v2, v3);
  sub_10001920C();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100278F10()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_10000F9FC();
  sub_10027ECBC(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  type metadata accessor for Location();
  sub_10002058C();
  sub_10027ECBC(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100278FEC()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_10027ECBC(&qword_100CA39C8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Location();
  sub_10027ECBC(&qword_100CA39F8, &type metadata accessor for Location);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1002790D4()
{
  sub_10000C778();
  v53 = v0;
  v2 = v1;
  v50 = v3;
  v4 = sub_10022C350(&qword_100CA5898);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v52 = &v44 - v6;
  v7 = sub_1000038CC();
  v51 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(v7) - 8;
  __chkstk_darwin(v51);
  sub_1000037D8();
  v49 = v9 - v8;
  sub_1000038CC();
  v48 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v46 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v45 = type metadata accessor for Date();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v47 = type metadata accessor for Calendar();
  sub_1000037C4();
  v44 = v30;
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v25 + 8))(v29, v23);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v46 + 8))(v14, v48);
  Calendar.startOfDay(for:)();
  v35 = *(v16 + 8);
  v36 = v45;
  v35(v19, v45);
  v37 = v49;
  v38 = sub_10008650C();
  v39(v38);
  v40 = *(v51 + 28);
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v41 + 16))(v37 + v40, v2);

  v42 = v52;
  Cache.subscript.getter();

  sub_10001BB78();
  sub_10027ED58();
  v35(v22, v36);
  (*(v44 + 8))(v34, v47);
  v43 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  sub_100024D10(v42, 1, v43);
  sub_10002C4AC(v42, &qword_100CA5898);
  sub_10000536C();
}

void sub_1002794EC()
{
  sub_10000C778();
  v56 = v0;
  v57 = v1;
  v3 = v2;
  v53 = v4;
  v5 = sub_10022C350(&qword_100CA5898);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  v55 = &v46 - v7;
  v8 = sub_1000038CC();
  v54 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(v8) - 8;
  __chkstk_darwin(v54);
  sub_1000037D8();
  v52 = v10 - v9;
  sub_1000038CC();
  v51 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v49 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v48 = type metadata accessor for Date();
  sub_1000037C4();
  v17 = v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  v50 = type metadata accessor for Calendar();
  sub_1000037C4();
  v47 = v31;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v26 + 8))(v30, v24);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v49 + 8))(v15, v51);
  Calendar.startOfDay(for:)();
  v36 = *(v17 + 8);
  v37 = v48;
  v36(v21, v48);
  v38 = v52;
  (*(v17 + 16))(v52, v23, v37);
  v39 = *(v54 + 28);
  type metadata accessor for Location();
  sub_100003A9C();
  (*(v40 + 16))(v38 + v39, v3);

  v41 = v55;
  Cache.subscript.getter();

  sub_10001BB78();
  sub_10027ED58();
  v36(v23, v37);
  (*(v47 + 8))(v35, v50);
  v42 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  if (sub_100024D10(v41, 1, v42) == 1)
  {
    sub_10002C4AC(v41, &qword_100CA5898);
    v43 = 1;
    v44 = v57;
  }

  else
  {
    v45 = v57;
    sub_10027F0B0(v41, v57);
    v43 = 0;
    v44 = v45;
  }

  sub_10001B350(v44, v43, 1, v42);
  sub_10000536C();
}

uint64_t sub_10027994C()
{
  sub_100003B08();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Location();
  v1[5] = v4;
  sub_100003AE8(v4);
  v1[6] = v5;
  v1[7] = sub_1000134B0();
  v6 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  v1[8] = v6;
  sub_100003810(v6);
  v1[9] = sub_1000134B0();
  v7 = sub_10022C350(&qword_100CA5898);
  sub_100003810(v7);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  v1[12] = v8;
  sub_100003810(v8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = type metadata accessor for CurrentWeather();
  v1[15] = v9;
  sub_100003AE8(v9);
  v1[16] = v10;
  v1[17] = sub_1000134B0();
  v11 = type metadata accessor for Date();
  v1[18] = v11;
  sub_100003AE8(v11);
  v1[19] = v12;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v13 = type metadata accessor for TimeZone();
  v1[23] = v13;
  sub_100003AE8(v13);
  v1[24] = v14;
  v1[25] = sub_1000134B0();
  v15 = type metadata accessor for Calendar();
  v1[26] = v15;
  sub_100003AE8(v15);
  v1[27] = v16;
  v1[28] = sub_1000134B0();
  v17 = sub_100013484();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100279BE0()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  v49 = v0[22];
  v50 = v0[18];
  v6 = v0[16];
  v5 = v0[17];
  v47 = v0[23];
  v48 = v0[15];
  v52 = v0[14];
  v54 = v0[12];
  v58 = v0[11];
  v60 = v0[8];
  v7 = v0[6];
  v56 = v0[5];
  v51 = v0[3];
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v1 + 8))(v2, v47);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v6 + 8))(v5, v48);
  Calendar.startOfDay(for:)();
  v8 = *(v4 + 8);
  v0[29] = v8;
  v0[30] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v50);
  v9 = *(v4 + 16);
  v9(v52, v49, v50);
  v10 = *(v7 + 16);
  v10(v52 + *(v54 + 20), v51, v56);

  Cache.subscript.getter();

  v11 = sub_100024D10(v58, 1, v60);
  sub_10002C4AC(v58, &qword_100CA5898);
  if (v11 != 1)
  {
    v59 = v8;
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v18 = v0[7];
    v19 = v0[5];
    v20 = v0[3];
    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90B68);
    v22 = sub_100003940();
    (v9)(v22);
    v10(v18, v20, v19);
    v23 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v23, v55);
    v26 = v0[27];
    v25 = v0[28];
    v27 = v0[26];
    v28 = v0[20];
    v29 = v0[18];
    v57 = v0[22];
    v31 = v0[6];
    v30 = v0[7];
    v32 = v0[5];
    if (v24)
    {
      v53 = v0[26];
      v33 = swift_slowAlloc();
      swift_slowAlloc();
      *v33 = 141558787;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_10000F9FC();
      sub_10027ECBC(v34, v35);
      dispatch thunk of CustomStringConvertible.description.getter();
      v59(v28, v29);
      v36 = sub_10008650C();
      v39 = sub_100078694(v36, v37, v38);

      *(v33 + 14) = v39;
      *(v33 + 22) = 2160;
      *(v33 + 24) = 1752392040;
      *(v33 + 32) = 2081;
      Location.name.getter();
      (*(v31 + 8))(v30, v32);
      v40 = sub_100003B2C();
      v43 = sub_100078694(v40, v41, v42);

      *(v33 + 34) = v43;
      _os_log_impl(&_mh_execute_header, v23, v55, "Preprocessed data already exist for %{private,mask.hash}s %{private,mask.hash}s. Skip making data", v33, 0x2Au);
      swift_arrayDestroy();

      sub_10001BB78();
      sub_10027ED58();
      v59(v57, v29);
      (*(v26 + 8))(v25, v53);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      v44 = sub_100003B2C();
      (v59)(v44);
      sub_10001BB78();
      sub_10027ED58();
      v59(v57, v29);
      (*(v26 + 8))(v25, v27);
    }

    sub_100031434();

    sub_100003B14();
    sub_10012CC1C();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  sub_10000C7D8();
  v0[31] = v12;
  *v12 = v13;
  v12[1] = sub_10027A1C8;
  sub_10012CC1C();

  return sub_10027A46C(v14, v15);
}

uint64_t sub_10027A1C8()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027A2AC()
{
  v9 = v0[29];
  v1 = v0[27];
  v10 = v0[26];
  v11 = v0[28];
  v2 = v0[22];
  v3 = v0[18];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  sub_10027ED04(v0[14], v0[13]);
  sub_10027ED04(v5, v4);
  sub_10001B350(v4, 0, 1, v6);

  sub_10008650C();
  Cache.subscript.setter();

  sub_10027ED58();
  sub_10001BB78();
  sub_10027ED58();
  v9(v2, v3);
  (*(v1 + 8))(v11, v10);
  sub_100031434();

  sub_100003B14();

  return v7();
}

uint64_t sub_10027A46C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = type metadata accessor for SunriseSunsetMonthlyViewModel();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_10022C350(&qword_100CA58A0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for TimeZone();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = type metadata accessor for Location();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10027A6DC, 0, 0);
}

uint64_t sub_10027A6DC()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v83 = *(v0 + 128);
  v84 = *(v0 + 120);
  v8 = *(v0 + 64);
  v9 = *(v0 + 56);
  v10 = type metadata accessor for SunriseSunsetDetailDataProcessor.ProcessingKey(0);
  (*(v2 + 16))(v1, v9 + *(v10 + 20), v3);
  (*(v5 + 16))(v4, v9, v6);
  *(v0 + 224) = type metadata accessor for Elevation();
  sub_10000F9FC();
  *(v0 + 232) = sub_10027ECBC(v11, v12);
  sub_1000053B8();
  v13 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 16) = v13;
  *(v0 + 240) = v13;
  *(v0 + 248) = sub_10027EFA0();
  v14 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = v14;
  *(v0 + 256) = v14;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v83 + 8))(v7, v84);
  Calendar.startOfDay(for:)();
  v15 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 32) = v15;
  v16 = v0 + 32;
  *(v0 + 264) = v15;
  sub_100003934();
  sub_10001B350(v17, v18, v19, v20);
  *(v0 + 40) = 0;
  sub_1000161C0((v8 + 96), *(v8 + 120));
  v21 = sub_10008650C();
  v23 = sub_100579164(v21, v22);
  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = v23;
  v25 = *(v0 + 104);
  v26 = *(v0 + 72);
  sub_1000161C0((v8 + 96), *(v8 + 120));
  sub_100578FAC();
  v27 = sub_100024D10(v25, 1, v26);
  v28 = *(v0 + 104);
  if (v27 == 1)
  {

    sub_10002C4AC(v28, &qword_100CA58A0);
LABEL_4:
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v29 = type metadata accessor for Logger();
    sub_10000703C(v29, qword_100D90B68);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (sub_1000054A4(v31))
    {
      v32 = sub_10000389C();
      sub_100025054(v32);
      sub_10000FA14(&_mh_execute_header, v33, v34, "SunriseSunsetDetailViewModelFactory calculates data");
      sub_100007E54();
    }

    v35 = *(v0 + 216);
    v36 = *(v0 + 112);
    v37 = *(v0 + 64);
    v87 = *(v0 + 184);

    type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
    v38 = swift_task_alloc();
    *(v0 + 272) = v38;
    *(v38 + 16) = v37;
    *(v38 + 24) = v35;
    *(v38 + 32) = v87;
    *(v38 + 48) = v0 + 40;
    *(v38 + 56) = v36;
    v39 = swift_task_alloc();
    *(v0 + 280) = v39;
    *v39 = v0;
    v39[1] = sub_10027AE8C;
    sub_10002FD58();
    sub_10012CC1C();

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  sub_10001E680();
  sub_10027F0B0(v28, v41);
  if (qword_100CA2700 != -1)
  {
    sub_100003AB0();
  }

  v42 = type metadata accessor for Logger();
  sub_10000703C(v42, qword_100D90B68);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (sub_1000054A4(v44))
  {
    v45 = sub_10000389C();
    sub_100025054(v45);
    sub_10000FA14(&_mh_execute_header, v46, v47, "SunriseSunsetDetailViewModelFactory gets data from cache");
    sub_100007E54();
  }

  v48 = *(v0 + 112);
  v49 = *(v0 + 72);

  *(v0 + 40) = v24;
  v50 = sub_100003940();
  sub_10002C4AC(v50, v51);
  sub_10001E680();
  v52 = sub_1000053B8();
  sub_10027F0B0(v52, v53);
  sub_10001B350(v48, 0, 1, v49);
  v54 = *(v0 + 96);
  v55 = *(v0 + 72);
  sub_10018CF14(*(v0 + 112), v54, &qword_100CA58A0);
  sub_100024D10(v54, 1, v55);
  v56 = sub_100020E04();
  if (v57)
  {
    sub_10002C4AC(v56, &qword_100CA58A0);
LABEL_21:
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    sub_10000703C(v42, qword_100D90B68);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v73))
    {
      v74 = sub_10000389C();
      sub_100025054(v74);
      sub_10000FA14(&_mh_execute_header, v75, v76, "Failed to calculate sunrise sunset data");
      sub_100007E54();
    }

    v67 = *(v0 + 248);
    v16 = *(v0 + 168);
    v77 = *(v0 + 152);
    v86 = *(v0 + 144);
    v88 = *(v0 + 160);
    v62 = *(v0 + 72);
    v78 = *(v0 + 48);

    sub_10000E78C();
    v85 = Dictionary.init(dictionaryLiteral:)();
    Dictionary.init(dictionaryLiteral:)();
    sub_100017580();
    v64 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
    v60 = (v78 + *(v64 + 24));
    WeatherDescription.init(stringLiteral:)();
    *v60 = _swiftEmptyArrayStorage;
    sub_10000E78C();
    v69 = Dictionary.init(dictionaryLiteral:)();
    (*(v77 + 8))(v88, v86);
    *v78 = v85;
    v78[1] = v67;
    *(v78 + *(v64 + 28)) = v69;

    goto LABEL_26;
  }

  sub_10001E680();
  sub_10027F0B0(v58, v59);
  v60 = *(v0 + 40);
  if (!v60)
  {
    sub_1000191F4();
    sub_10027ED58();
    goto LABEL_21;
  }

  v61 = *(v0 + 152);
  v62 = *(v0 + 80);
  v63 = *(v0 + 48);
  sub_10027CE30(*(v0 + 40), v0 + 16, (v0 + 24), (v0 + 32));
  v64 = v61 + 8;
  v65 = sub_100003B2C();
  v66(v65);
  v68 = *(v0 + 16);
  v67 = *(v0 + 24);
  v69 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  sub_10001E680();
  sub_10027F0B0(v62, v63 + v70);
  v71 = *(v0 + 32);

  *v63 = v68;
  v63[1] = v67;
  *(v63 + *(v69 + 28)) = v71;
LABEL_26:
  sub_100036C5C();
  sub_10002C4AC(*(v0 + 112), &qword_100CA58A0);

  v79 = *(v69 + 8);
  v80 = sub_100003B2C();
  v79(v80);

  (v79)(v62, v67);
  (*(v64 + 8))(v60, v16);

  sub_100003B14();

  return v81();
}

uint64_t sub_10027AE8C()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027AF8C()
{
  v2 = v0[9];
  sub_10018CF14(v0[14], v0[12], &qword_100CA58A0);
  v3 = sub_10000C7F0();
  sub_100024D10(v3, v4, v2);
  v5 = sub_100020E04();
  if (v6)
  {
    sub_10002C4AC(v5, &qword_100CA58A0);
  }

  else
  {
    sub_10001E680();
    sub_10027F0B0(v7, v8);
    v9 = v0[5];
    if (v9)
    {
      v10 = v0[10];
      v11 = v0[6];
      sub_10027CE30(v0[5], (v0 + 2), v0 + 3, v0 + 4);
      v12 = sub_100003B2C();
      v13(v12);
      v15 = v0[2];
      v14 = v0[3];
      v16 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
      sub_10001E680();
      sub_10027F0B0(v10, v11 + v17);
      v18 = v0[4];

      *v11 = v15;
      v11[1] = v14;
      *(v11 + *(v16 + 28)) = v18;
      goto LABEL_12;
    }

    sub_1000191F4();
    sub_10027ED58();
  }

  if (qword_100CA2700 != -1)
  {
    sub_100003AB0();
  }

  v19 = type metadata accessor for Logger();
  sub_10000703C(v19, qword_100D90B68);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (sub_1000054A4(v21))
  {
    v22 = sub_10000389C();
    sub_100025054(v22);
    sub_10000FA14(&_mh_execute_header, v23, v24, "Failed to calculate sunrise sunset data");
    sub_100007E54();
  }

  v14 = v0[31];
  v16 = v0[29];
  v10 = v0[21];
  v25 = v0[19];
  v34 = v0[18];
  v35 = v0[20];
  v1 = v0[6];

  sub_10000E78C();
  v33 = Dictionary.init(dictionaryLiteral:)();
  Dictionary.init(dictionaryLiteral:)();
  sub_100017580();
  v26 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  v9 = (v1 + *(v26 + 24));
  WeatherDescription.init(stringLiteral:)();
  *v9 = _swiftEmptyArrayStorage;
  sub_10000E78C();
  v27 = Dictionary.init(dictionaryLiteral:)();
  v28 = *(v25 + 8);
  v11 = (v25 + 8);
  v28(v35, v34);
  *v1 = v33;
  v1[1] = v14;
  *(v1 + *(v26 + 28)) = v27;

LABEL_12:
  sub_100036C5C();
  sub_10002C4AC(v0[14], &qword_100CA58A0);

  v29 = *(v16 + 8);
  v30 = sub_100003B2C();
  v29(v30);

  (v29)(v11, v14);
  (v1[1])(v9, v10);

  sub_100003B14();

  return v31();
}

uint64_t sub_10027B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = type metadata accessor for SunriseSunsetMonthlyViewModel();
  v8[10] = swift_task_alloc();
  v8[11] = type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  v8[12] = swift_task_alloc();
  sub_10022C350(&qword_100CA58C0);
  v8[13] = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CA58C8);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v8[19] = *(v11 + 64);
  v8[20] = swift_task_alloc();
  v12 = type metadata accessor for Location();
  v8[21] = v12;
  v13 = *(v12 - 8);
  v8[22] = v13;
  v8[23] = *(v13 + 64);
  v8[24] = swift_task_alloc();
  sub_10022C350(&qword_100CA3538);
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_10027B594, 0, 0);
}

uint64_t sub_10027B594()
{
  v1 = v0[24];
  v32 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v31 = v0[17];
  v30 = v0[6];
  v26 = v0[5];
  v8 = v0[3];
  v7 = v0[4];
  v29 = type metadata accessor for TaskPriority();
  sub_100003934();
  sub_10001B350(v9, v10, v11, v12);
  v28 = *(v3 + 16);
  v28(v1, v7, v5);
  v33 = v6;
  v27 = *(v6 + 16);
  v27(v4, v26, v31);
  v25 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = (v2 + *(v6 + 80) + v25) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v8;
  v24 = *(v3 + 32);
  v24(&v14[v25], v1, v5);
  v15 = *(v33 + 32);
  v15(&v14[v13], v4, v31);

  sub_10027C214(v32, &unk_100A2FD58, v14);
  sub_10002C4AC(v32, &qword_100CA3538);
  sub_100003934();
  sub_10001B350(v16, v17, v18, v29);
  v28(v1, v7, v5);
  v27(v4, v30, v31);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v8;
  v24(&v19[v25], v1, v5);
  v15(&v19[v13], v4, v31);

  sub_10027C214(v32, &unk_100A2FD68, v19);
  sub_10002C4AC(v32, &qword_100CA3538);
  TaskGroup.makeAsyncIterator()();
  swift_task_alloc();
  sub_10000C7D8();
  v0[26] = v20;
  *v20 = v21;
  v22 = sub_1000693BC(v20);

  return TaskGroup.Iterator.next(isolation:)(v22);
}

uint64_t sub_10027B8E0()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027B9C4()
{
  sub_10003A0D8();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = sub_10000C7F0();
  if (sub_100024D10(v3, v4, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    sub_100003B14();
    sub_100044D14();

    __asm { BRAA            X1, X16 }
  }

  sub_10027F0B0(v1, *(v0 + 96));
  sub_1000053B8();
  swift_getEnumCaseMultiPayload();
  v7 = sub_100020E04();
  if (v8)
  {
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    sub_10001E680();
    sub_10027F0B0(v14, v9);
    sub_10002C4AC(v11, &qword_100CA58A0);
    v15 = sub_10001920C();
    sub_10027ED04(v15, v16);
    sub_10001B350(v11, 0, 1, v10);
    sub_1000161C0((v13 + 96), *(v13 + 120));
    sub_100579004(v12, v9);
    sub_1000191F4();
    sub_10027ED58();
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = *(v0 + 40);
    v19 = *(v0 + 24);
    v20 = *v7;
    **(v0 + 56) = *v7;

    sub_1000161C0((v19 + 96), *(v19 + 120));
    sub_100579268(v17, v18, v20);
  }

  swift_task_alloc();
  sub_10000C7D8();
  *(v0 + 208) = v21;
  *v21 = v22;
  sub_1000693BC();
  sub_100044D14();

  return TaskGroup.Iterator.next(isolation:)();
}

uint64_t sub_10027BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for OSSignpostID();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10027BCC8, 0, 0);
}

uint64_t sub_10027BCC8()
{
  sub_100003B08();
  v1 = *(v0[3] + 136);
  v0[9] = v1;
  v2 = v1;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10027BDA4;
  v5 = v0[4];
  v4 = v0[5];

  return sub_10027BF68(v5, v4);
}

uint64_t sub_10027BDA4()
{
  sub_100003B08();
  sub_10000C7E4();
  *(v1 + 88) = v0;

  v2 = sub_100013484();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10027BE94()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = sub_10001920C();
  v4(v3);
  *v2 = v1;
  type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  swift_storeEnumTagMultiPayload();

  sub_100003B14();

  return v5();
}

uint64_t sub_10027BF68(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10027BF8C, 0, 0);
}

uint64_t sub_10027BF8C()
{
  v1 = v0[1].i64[1];
  type metadata accessor for Date();
  sub_1000038D8();
  type metadata accessor for ElevationData();
  sub_10000F9FC();
  sub_10027ECBC(v2, v3);
  v7 = v0[2];
  v0[1].i64[0] = Dictionary.init(dictionaryLiteral:)();
  sub_10022C350(&qword_100CA58D8);
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *(v4 + 16) = vextq_s8(v7, v7, 8uLL);
  *(v4 + 32) = v1;
  *(v4 + 40) = xmmword_100A2FBA0;
  *(v4 + 56) = v0 + 1;
  v5 = swift_task_alloc();
  v0[3].i64[1] = v5;
  *v5 = v0;
  v5[1] = sub_10027C0FC;
  sub_10002FD58();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10027C0FC()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  sub_10018CF14(a1, v19 - v9, &qword_100CA3538);
  v11 = type metadata accessor for TaskPriority();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_10002C4AC(v10, &qword_100CA3538);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_10027C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10022C350(&qword_100CA3538);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  sub_10018CF14(a1, v23 - v10, &qword_100CA3538);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_10000C7F0();
  if (sub_100024D10(v13, v14, v12) == 1)
  {
    sub_10002C4AC(v11, &qword_100CA3538);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100003B20();
    (*(v15 + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *v4;
  sub_1000244CC();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  sub_10022C350(&qword_100CA58D0);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_10027C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = type metadata accessor for OSSignpostID();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_10027C6C4, 0, 0);
}

uint64_t sub_10027C6C4()
{
  sub_100013494();
  v1 = v0[8];
  v2 = *(v1 + 136);
  v0[14] = v2;
  v3 = v2;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  sub_100035B30(v1 + 16, (v0 + 2));
  sub_1000161C0(v0 + 2, v0[5]);
  swift_task_alloc();
  sub_10000C7D8();
  v0[15] = v4;
  *v4 = v5;
  v4[1] = sub_10027C7C0;

  return sub_1006851D0();
}

uint64_t sub_10027C7C0()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027C8A4()
{
  sub_100006F14(v0 + 16);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v1 = sub_10001920C();
  v2(v1);
  type metadata accessor for SunriseSunsetDetailDataProcessor.GroupTaskResponse(0);
  swift_storeEnumTagMultiPayload();

  sub_100003B14();

  return v3();
}

uint64_t sub_10027C978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a4;
  v37 = a3;
  v40 = a2;
  v5 = type metadata accessor for Elevation();
  v33 = *(v5 - 8);
  v6 = v33;
  __chkstk_darwin(v5);
  v36 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA58B8);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  v11 = sub_10022C350(&qword_100CA58B0) - 8;
  __chkstk_darwin(v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  v39 = a1;
  sub_10018CF14(a1, v30 - v15, &qword_100CA58B0);
  v30[1] = *(v11 + 56);
  sub_10018CF14(a1, v13, &qword_100CA58B0);
  v17 = *(v11 + 56);
  v18 = v11;
  v31 = *(v6 + 16);
  v19 = v5;
  v31(v10, &v13[v17], v5);
  sub_10027ED58();
  sub_10001B350(v10, 0, 1, v5);
  sub_10040344C();
  v35 = type metadata accessor for Date();
  v20 = *(v35 - 8);
  v34 = *(v20 + 8);
  v40 = v20 + 8;
  v34(v13, v35);
  sub_10027ED58();
  v21 = v39;
  sub_10018CF14(v39, v16, &qword_100CA58B0);
  v22 = v36;
  v31(v36, &v16[*(v18 + 56)], v19);
  v32 = type metadata accessor for ElevationData;
  sub_10027ED58();
  Elevation.degrees.getter();
  (*(v33 + 8))(v22, v19);
  sub_10018CF14(v21, v13, &qword_100CA58B0);
  v23 = v18;
  type metadata accessor for ElevationData();

  sub_10027ED58();
  v24 = v37;
  swift_isUniquelyReferenced_nonNull_native();
  v41 = *v24;
  sub_100238F80();
  *v24 = v41;
  v26 = v34;
  v25 = v35;
  v34(v13, v35);
  v26(v16, v25);
  v27 = v39;
  sub_10018CF14(v39, v16, &qword_100CA58B0);
  v37 = *(v23 + 56);
  sub_10018CF14(v27, v13, &qword_100CA58B0);

  sub_10027ED58();
  v28 = v38;
  swift_isUniquelyReferenced_nonNull_native();
  v41 = *v28;
  sub_100238DEC();
  *v28 = v41;
  v26(v16, v25);
  v26(v13, v25);
  return sub_10027ED58();
}

uint64_t sub_10027CE30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v25 = a4;
  v23 = a2;
  v24 = a3;
  v22 = sub_10022C350(&qword_100CA58B0);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(a1 + 48);
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 16))(v7, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(a1 + 56);
    v20 = type metadata accessor for ElevationData();
    sub_10027ED04(v19 + *(*(v20 - 8) + 72) * v16, &v7[*(v22 + 48)]);
    sub_10027C978(v7, v23, v24, v25);
    result = sub_10002C4AC(v7, &qword_100CA58B0);
    if (v4)
    {
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10027D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[26] = a3;
  v8[27] = a4;
  v8[25] = a2;
  v8[32] = sub_10022C350(&qword_100CA58B0);
  v8[33] = swift_task_alloc();
  v8[34] = *(type metadata accessor for ElevationData() - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  sub_10022C350(&qword_100CA58E0);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  sub_10022C350(&qword_100CA58E8);
  v8[39] = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CA58F0);
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  v10 = type metadata accessor for Location();
  v8[43] = v10;
  v11 = *(v10 - 8);
  v8[44] = v11;
  v8[45] = *(v11 + 64);
  v8[46] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v8[47] = v12;
  v13 = *(v12 - 8);
  v8[48] = v13;
  v8[49] = *(v13 + 64);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  sub_10022C350(&qword_100CA3538);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return _swift_task_switch(sub_10027D348, 0, 0);
}

uint64_t sub_10027D348(uint64_t a1)
{
  if (*(v1 + 232) < 1)
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 384);
    v62 = v2 + 16;
    v63 = *(v1 + 360) + 7;
    v64 = v2 + 32;
    v65 = v2;
    v66 = *(v1 + 352);
    v3 = 1;
    while (1)
    {
      v4 = *(v1 + 240);
      if (((v3 - 1) * v4) >> 64 != ((v3 - 1) * v4) >> 63)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v5 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        goto LABEL_30;
      }

      v80 = (v3 - 1) * v4;
      if (v3 == *(v1 + 232))
      {
        break;
      }

      v78 = v3;
      v72 = *(v1 + 424);
      v74 = *(v1 + 416);
      v6 = *(v1 + 408);
      v68 = v6;
      v76 = *(v1 + 392);
      v8 = *(v1 + 368);
      v7 = *(v1 + 376);
      v9 = *(v1 + 344);
      v67 = v9;
      v10 = *(v1 + 216);
      v11 = *(v1 + 224);
      v70 = *(v1 + 208);
      v69 = type metadata accessor for TaskPriority();
      sub_100003934();
      sub_10001B350(v12, v13, v14, v15);
      (*(v65 + 16))(v6, v10, v7);
      (*(v66 + 16))(v8, v11, v9);
      v16 = (*(v65 + 80) + 40) & ~*(v65 + 80);
      v17 = (v76 + *(v66 + 80) + v16) & ~*(v66 + 80);
      v18 = (v17 + v63) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 4) = v70;
      (*(v65 + 32))(&v19[v16], v68, v7);
      (*(v66 + 32))(&v19[v17], v8, v67);
      *&v19[v18] = v80;
      *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v5;
      sub_10018CF14(v72, v74, &qword_100CA3538);
      v20 = sub_10000C7F0();
      v22 = sub_100024D10(v20, v21, v69);

      v23 = *(v1 + 416);
      if (v22 == 1)
      {
        sub_10002C4AC(*(v1 + 416), &qword_100CA3538);
      }

      else
      {
        TaskPriority.rawValue.getter();
        sub_100003B20();
        (*(v24 + 8))(v23, v69);
      }

      if (*(v19 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1000053B8();
        v25 = dispatch thunk of Actor.unownedExecutor.getter();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = **(v1 + 200);
      sub_1000244CC();
      v29 = swift_allocObject();
      *(v29 + 16) = &unk_100A2FDD8;
      *(v29 + 24) = v19;

      sub_10022C350(&qword_100CA58D8);
      v30 = v27 | v25;
      if (v27 | v25)
      {
        v30 = v1 + 72;
        *(v1 + 72) = 0;
        *(v1 + 80) = 0;
        *(v1 + 88) = v25;
        *(v1 + 96) = v27;
      }

      v31 = *(v1 + 424);
      *(v1 + 136) = 1;
      *(v1 + 144) = v30;
      *(v1 + 152) = v28;
      swift_task_create();

      a1 = sub_10002C4AC(v31, &qword_100CA3538);
      v3 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        __break(1u);
        break;
      }
    }

    v77 = *(v1 + 440);
    v79 = *(v1 + 432);
    v32 = *(v1 + 408);
    v73 = *(v1 + 392);
    v33 = *(v1 + 368);
    v34 = *(v1 + 376);
    v71 = v33;
    v35 = *(v1 + 344);
    v37 = *(v1 + 216);
    v36 = *(v1 + 224);
    v38 = *(v1 + 208);
    v75 = type metadata accessor for TaskPriority();
    sub_100003934();
    sub_10001B350(v39, v40, v41, v42);
    v43 = *(v65 + 16);
    *(v1 + 448) = v43;
    *(v1 + 456) = v62 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43(v32, v37, v34);
    (*(v66 + 16))(v33, v36, v35);
    v44 = (*(v65 + 80) + 40) & ~*(v65 + 80);
    v45 = (v73 + *(v66 + 80) + v44) & ~*(v66 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    *(v46 + 4) = v38;
    v47 = *(v65 + 32);
    *(v1 + 464) = v47;
    *(v1 + 472) = v64 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v47(&v46[v44], v32, v34);
    (*(v66 + 32))(&v46[v45], v71, v35);
    *&v46[(v45 + v63) & 0xFFFFFFFFFFFFFFF8] = v80;
    sub_10018CF14(v77, v79, &qword_100CA3538);
    v48 = sub_10000C7F0();
    LODWORD(v45) = sub_100024D10(v48, v49, v75);

    v50 = *(v1 + 432);
    if (v45 == 1)
    {
      sub_10002C4AC(*(v1 + 432), &qword_100CA3538);
    }

    else
    {
      TaskPriority.rawValue.getter();
      sub_100003B20();
      (*(v51 + 8))(v50, v75);
    }

    if (*(v46 + 2))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v52 = dispatch thunk of Actor.unownedExecutor.getter();
      v54 = v53;
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = **(v1 + 200);
    sub_1000244CC();
    v56 = swift_allocObject();
    *(v56 + 16) = &unk_100A2FDF8;
    *(v56 + 24) = v46;

    sub_10022C350(&qword_100CA58D8);
    if (v54 | v52)
    {
      v57 = v1 + 104;
      *(v1 + 104) = 0;
      *(v1 + 112) = 0;
      *(v1 + 120) = v52;
      *(v1 + 128) = v54;
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v1 + 440);
    *(v1 + 160) = 1;
    *(v1 + 168) = v57;
    *(v1 + 176) = v55;
    swift_task_create();

    sub_10002C4AC(v58, &qword_100CA3538);
    TaskGroup.makeAsyncIterator()();
    swift_task_alloc();
    sub_10000C7D8();
    *(v1 + 480) = v59;
    *v59 = v60;
    sub_10003C244(v59);
    a1 = v1 + 184;
  }

  return TaskGroup.Iterator.next(isolation:)(a1);
}

uint64_t sub_10027DA90()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027DB74()
{
  v1 = *(v0 + 184);
  if (!v1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    sub_100003B14();
    sub_1000718DC();

    __asm { BRAA            X1, X16 }
  }

  v2 = **(v0 + 248);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 192) = v2;
  sub_10066E034(v1, sub_10027F668, 0);
  v64 = *(v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v62 = *(v0 + 24);
  v63 = *(v0 + 56);
  v61 = (*(v0 + 32) + 64) >> 6;

  while (1)
  {
    v7 = v5;
    v8 = v4;
    v68 = isUniquelyReferenced_nonNull_native;
    if (!v5)
    {
      v9 = v4;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v61)
        {
          v67 = 0;
          v18 = 1;
          goto LABEL_9;
        }

        v7 = *(v62 + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v6);
    }

LABEL_8:
    v65 = *(v0 + 464);
    v10 = *(v0 + 408);
    v11 = *(v0 + 376);
    v12 = *(v0 + 304);
    v13 = *(v0 + 288);
    v14 = *(v0 + 272);
    v66 = v2;
    v15 = *(v0 + 256);
    v67 = (v7 - 1) & v7;
    v16 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v0 + 448))(v10, *(v64 + 48) + *(*(v0 + 384) + 72) * v16, v11);
    sub_10027ED04(*(v64 + 56) + *(v14 + 72) * v16, v13);
    v17 = *(v15 + 48);
    v2 = v66;
    v65(v12, v10, v11);
    sub_100003AD0();
    sub_10027F0B0(v13, v12 + v17);
    v18 = 0;
    v9 = v8;
LABEL_9:
    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 256);
    v22 = 1;
    sub_10001B350(v19, v18, 1, v21);
    sub_10027FB54(v19, v20, &qword_100CA58E0);
    if (sub_100024D10(v20, 1, v21) != 1)
    {
      v23 = *(v0 + 264);
      sub_10027FB54(*(v0 + 296), v23, &qword_100CA58B0);
      v63(v23);
      v24 = sub_1000053B8();
      sub_10002C4AC(v24, v25);
      v22 = 0;
    }

    v26 = *(v0 + 312);
    v27 = sub_10022C350(&qword_100CA58F8);
    sub_10001B350(v26, v22, 1, v27);
    v28 = sub_10022C350(&qword_100CA58F8);
    if (sub_100024D10(v26, 1, v28) == 1)
    {
      v53 = *(v0 + 248);
      sub_10027FAE8();

      *v53 = v2;

      swift_task_alloc();
      sub_10000C7D8();
      *(v0 + 480) = v54;
      *v54 = v55;
      sub_10003C244();
      sub_1000718DC();

      return TaskGroup.Iterator.next(isolation:)(v6);
    }

    v29 = *(v0 + 312);
    v30 = *(v0 + 280);
    v31 = *(v28 + 48);
    v32 = sub_10001920C();
    v33(v32);
    sub_100003AD0();
    sub_10027F0B0(v29 + v31, v30);
    sub_100237FB4();
    v36 = v35;
    v37 = v2[2];
    v38 = (v34 & 1) == 0;
    v6 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_35;
    }

    v39 = v34;
    if (v2[3] < v6)
    {
      break;
    }

    if (v68)
    {
      if (v34)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_10022C350(&qword_100CA5900);
      _NativeDictionary.copy()();
      if (v39)
      {
LABEL_19:
        v43 = *(v0 + 272);
        v42 = *(v0 + 280);
        (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
        v2 = *(v0 + 192);
        v6 = sub_10027FAF0(v42, v2[7] + *(v43 + 72) * v36);
        goto LABEL_24;
      }
    }

LABEL_22:
    v44 = *(v0 + 464);
    v45 = *(v0 + 400);
    v46 = *(v0 + 376);
    v47 = *(v0 + 384);
    v48 = *(v0 + 280);
    v2 = *(v0 + 192);
    v2[(v36 >> 6) + 8] |= 1 << v36;
    v44(v2[6] + *(v47 + 72) * v36, v45, v46);
    sub_100003AD0();
    v6 = sub_10027F0B0(v48, v49);
    v50 = v2[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_36;
    }

    v2[2] = v52;
LABEL_24:
    isUniquelyReferenced_nonNull_native = 1;
    v4 = v9;
    v5 = v67;
  }

  sub_10060B464(v6, v68 & 1);
  sub_100237FB4();
  if ((v39 & 1) == (v41 & 1))
  {
    v36 = v40;
    if (v39)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  sub_1000718DC();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_10027E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a4;
  v82 = a5;
  v68 = a2;
  v7 = type metadata accessor for ElevationData();
  v71 = *(v7 - 8);
  __chkstk_darwin(v7);
  v87 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v78 = type metadata accessor for TimeZone();
  v85 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Elevation();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar();
  v84 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v88 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v86 = &v63 - v22;
  v66 = type metadata accessor for OSSignpostID();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a3;
  v25 = *(a3 + 136);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v63 = v25;
  v64 = v24;
  os_signpost(_:dso:log:name:signpostID:)();
  sub_10027ECBC(&qword_100CA39C8, &type metadata accessor for Date);
  v79 = v7;
  v26 = Dictionary.init(dictionaryLiteral:)();
  v73 = (v85 + 1);
  v74 = (v84 + 8);
  v72 = (v14 + 16);
  v83 = (v19 + 16);
  v67 = v19;
  v69 = (v14 + 8);
  v70 = (v19 + 8);
  while (1)
  {
    v85 = v26;
    v27 = v75;
    static Calendar.current.getter();
    v28 = v86;
    v84 = a1;
    Date.wc_addMinutes(_:calendar:)();
    (*v74)(v27, v76);
    sub_1000161C0((v80 + 56), *(v80 + 80));
    dispatch thunk of SunElevationCalculatorType.getElevation(for:on:)();
    Elevation.degrees.getter();
    v89 = v29;
    sub_1001BB6FC();
    v30 = BinaryFloatingPoint.formatted()();
    v31 = v18;
    v32 = v16;
    v33 = v11;
    v34 = v13;
    v35 = v77;
    Location.timeZone.getter();
    v36 = Date.formattedHours(timeZone:forAccessibility:)();
    v38 = v37;
    v39 = v35;
    v13 = v34;
    v11 = v33;
    v16 = v32;
    v18 = v31;
    (*v73)(v39, v78);
    (*v72)(v11, v16, v13);
    v40 = v79;
    *&v11[*(v79 + 20)] = v30;
    v41 = &v11[*(v40 + 24)];
    *v41 = v36;
    v41[1] = v38;
    v42 = *v83;
    (*v83)(v88, v28, v31);
    sub_10027ED04(v11, v87);
    v43 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v43;
    sub_100237FB4();
    v47 = v43[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      break;
    }

    v50 = v45;
    v51 = v46;
    sub_10022C350(&qword_100CA5900);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v49))
    {
      sub_100237FB4();
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_17;
      }

      v50 = v52;
    }

    v26 = v89;
    if (v51)
    {
      sub_10027FAF0(v87, v89[7] + *(v71 + 72) * v50);
      v54 = *v70;
      (*v70)(v88, v18);
      sub_10027ED58();
      (*v69)(v16, v13);
      v54(v86, v18);
    }

    else
    {
      v89[(v50 >> 6) + 8] |= 1 << v50;
      v55 = v67;
      v56 = v88;
      v42((v26[6] + *(v67 + 72) * v50), v88, v18);
      sub_10027F0B0(v87, v26[7] + *(v71 + 72) * v50);
      v57 = *(v55 + 8);
      v57(v56, v18);
      sub_10027ED58();
      (*v69)(v16, v13);
      v57(v86, v18);
      v58 = v26[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_16;
      }

      v26[2] = v60;
    }

    if (v68 == v84)
    {
      goto LABEL_14;
    }

    a1 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
LABEL_14:
      static os_signpost_type_t.end.getter();
      v61 = v64;
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v65 + 8))(v61, v66);
      return v26;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10027E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_10027EA04, 0, 0);
}

uint64_t sub_10027EA04()
{
  result = v0[6];
  if (result > 1440)
  {
    __break(1u);
  }

  else
  {
    sub_100003B08();
    v3 = v0[2];
    *v3 = sub_10027E160(v4, 1440, v0[3], v0[4], v0[5]);
    sub_100003B14();

    return v5();
  }

  return result;
}

uint64_t sub_10027EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_10027EAA0, 0, 0);
}

uint64_t sub_10027EAA0()
{
  result = v0[6];
  if (v0[7] < result)
  {
    __break(1u);
  }

  else
  {
    sub_100003B08();
    v3 = v0[2];
    *v3 = sub_10027E160(v4, v5, v0[3], v0[4], v0[5]);
    sub_100003B14();

    return v6();
  }

  return result;
}

uint64_t sub_10027EB10()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);

  return v0;
}

uint64_t sub_10027EB50()
{
  sub_10027EB10();

  return swift_deallocClassInstance();
}

uint64_t sub_10027EBF0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Location();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10027ECBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10027ED04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10027ED58()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003B20();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_10027EDB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10027FCBC;

  return v6(a1);
}

uint64_t sub_10027EEA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10006D190;

  return v6(a1);
}

unint64_t sub_10027EFA0()
{
  result = qword_100CA58A8;
  if (!qword_100CA58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA58A8);
  }

  return result;
}

uint64_t sub_10027F014()
{
  sub_10003A0D8();
  sub_1000D3DF4();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000E760(v1);

  return sub_10027B324(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F0B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10027F104()
{
  sub_10003A0D8();
  sub_100018290();
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Date();
  sub_100003810(v1);
  sub_100071C24();
  v2 = swift_task_alloc();
  v3 = sub_100011378(v2);
  *v3 = v4;
  v3[1] = sub_1000D8400;
  sub_10004E378();
  sub_100044D14();

  return sub_10027BC04(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F21C()
{
  sub_10003A0D8();
  sub_100018290();
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Date();
  sub_100003810(v1);
  sub_100071C24();
  v2 = swift_task_alloc();
  v3 = sub_100011378(v2);
  *v3 = v4;
  v3[1] = sub_10006D0B0;
  sub_10004E378();
  sub_100044D14();

  return sub_10027C600(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F334()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_10027F3C4()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_10027F454()
{
  sub_10003A0D8();
  sub_1000D3DF4();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000E760(v1);

  return sub_10027D024(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10027F4F0()
{
  sub_100018290();
  v1 = type metadata accessor for Date();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v9 = (*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);
  v11 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  v13 = sub_100011378(v12);
  *v13 = v14;
  v13[1] = sub_1000D8400;
  v15 = sub_10004E378();

  return sub_10027EA78(v15, v16, v17, v18, v19, v20, v10, v11);
}

uint64_t sub_10027F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10022C350(&qword_100CA58B0) + 48);
  v5 = a2 + *(sub_10022C350(&qword_100CA58F8) + 48);

  return sub_10066DC70(a2, v5, a1, a1 + v4);
}

uint64_t sub_10027F6E4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10027F7D8;

  return v5(v2 + 16);
}

uint64_t sub_10027F7D8()
{
  sub_100013494();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_100003AF8();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10027F8FC()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_10027F98C()
{
  sub_10003A0D8();
  sub_100018290();
  v1 = type metadata accessor for Date();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v9 = *(v0 + ((*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = sub_100011378(v10);
  *v11 = v12;
  v11[1] = sub_1000D8400;
  v13 = sub_10004E378();

  return sub_10027E9DC(v13, v14, v15, v16, v17, v18, v9);
}

uint64_t sub_10027FAF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027FB54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return v3;
}

void sub_10027FB9C()
{
  sub_10027FC10();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SunriseSunsetMonthlyViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10027FC10()
{
  if (!qword_100CA5990)
  {
    type metadata accessor for Date();
    type metadata accessor for ElevationData();
    sub_10027ECBC(&qword_100CA39C8, &type metadata accessor for Date);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA5990);
    }
  }
}

uint64_t type metadata accessor for MoonCalendarViewModel()
{
  result = qword_100CA5A18;
  if (!qword_100CA5A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10027FD34()
{
  result = type metadata accessor for CalendarViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OverviewTableViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10027FDB8(uint64_t a1, uint64_t a2)
{
  if ((sub_10026BF50(a1, a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MoonCalendarViewModel();

  return static OverviewTableViewModel.== infix(_:_:)();
}

uint64_t sub_10027FE1C@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CA5A58);
  a1[4] = sub_10027FF70();
  sub_100042FB0(a1);
  type metadata accessor for MoonCalendarViewModel();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10027FEE4()
{
  sub_10027FFD4(&qword_100CA5A68);

  return ShortDescribable.description.getter();
}

unint64_t sub_10027FF70()
{
  result = qword_100CA5A60;
  if (!qword_100CA5A60)
  {
    sub_10022E824(&qword_100CA5A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5A60);
  }

  return result;
}

uint64_t sub_10027FFD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoonCalendarViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100280018(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10028006C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1002800C8()
{
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90A48);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Lazy: Appeared", v3, 2u);
  }

  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  return State.wrappedValue.setter();
}

void sub_100280200()
{
  if (sub_1000A4E98())
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000703C(v0, qword_100D90A48);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Lazy: Will dismiss presentation. Already loading.", v2, 2u);
    }
  }

  else
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000703C(v3, qword_100D90A48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Lazy: Will dismiss presentation. Starting to load.", v6, 2u);
    }

    sub_10022C350(&qword_100CA5A80);
    State.wrappedValue.setter();
  }
}

uint64_t sub_100280400(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100280468(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002804A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1002804F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_10000C70C(0, &qword_100CA52E0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

uint64_t sub_1002805AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 0x74617265706D6574;
  *(inited + 40) = 0xEF74696E55657275;
  v9 = sub_10000C70C(0, &qword_100CA51B0);
  *(inited + 48) = a1;
  *(inited + 72) = v9;
  strcpy((inited + 80), "menuCategory");
  *(inited + 120) = &unk_100C632C0;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a2;
  *(inited + 104) = a3 & 1;
  v10 = a1;
  Dictionary.init(dictionaryLiteral:)();
  a4[3] = sub_10022C350(&qword_100CA5AD0);
  a4[4] = sub_1002807B4();
  sub_100042FB0(a4);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100280720()
{
  sub_100280818();

  return ShortDescribable.description.getter();
}

unint64_t sub_100280760()
{
  result = qword_100CA5AC8;
  if (!qword_100CA5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5AC8);
  }

  return result;
}

unint64_t sub_1002807B4()
{
  result = qword_100CA5AD8;
  if (!qword_100CA5AD8)
  {
    sub_10022E824(&qword_100CA5AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5AD8);
  }

  return result;
}

unint64_t sub_100280818()
{
  result = qword_100CA5AE0;
  if (!qword_100CA5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5AE0);
  }

  return result;
}

uint64_t sub_10028086C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002808AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100280900(uint64_t a1, uint64_t a2)
{
  if ((static DetailChartGradientModel.== infix(_:_:)() & 1) != 0 && ((v4 = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100280970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConditionDetailLegendForeground(0);
  sub_1000037E8();
  v9 = __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_10022C350(&qword_100CA5AE8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  v18 = *(v15 + 56);
  sub_100280DEC(a1, &v34 - v16);
  sub_100280DEC(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100280DEC(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100280EB8(&v17[v18], v7);
      if ((static DetailChartGradientModel.== infix(_:_:)() & 1) != 0 && ((v19 = *(v4 + 20), v20 = *&v11[v19], v21 = *&v11[v19 + 8], v22 = &v7[v19], v20 == *v22) ? (v23 = v21 == v22[1]) : (v23 = 0), v23))
      {
        v29 = *(v4 + 24);
        v30 = *&v11[v29];
        v31 = *&v7[v29];
        sub_10001E698();
        sub_100280F1C(v7, v32);
        if (v30 == v31)
        {
          sub_10001E698();
          sub_100280F1C(v11, v33);
          sub_10001BB90();
          v27 = 1;
          return v27 & 1;
        }
      }

      else
      {
        sub_10001E698();
        sub_100280F1C(v7, v24);
      }

      sub_10001E698();
      sub_100280F1C(v11, v25);
      sub_10001BB90();
      goto LABEL_14;
    }

    sub_10001E698();
    sub_100280F1C(v11, v26);
  }

  else
  {
    sub_100280DEC(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = static Color.== infix(_:_:)();

      sub_10001BB90();
      return v27 & 1;
    }
  }

  sub_100280E50(v17);
LABEL_14:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_100280C18(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ConditionDetailLegend(0);
  if ((sub_100280970(a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100280CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_1009E9C0C();
  if (v14 & 1) != 0 && (a2 == a6 ? (v15 = a3 == a7) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v16 = a4 ^ a8 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100280DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailLegendForeground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100280E50(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100280EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100280F1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100280F94()
{
  result = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100281028()
{
  type metadata accessor for DetailChartGradientModel();
  if (v0 <= 0x3F)
  {
    sub_10026F418();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002810DC()
{
  result = type metadata accessor for ConditionDetailLegendForeground(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100281158@<X0>(void *a1@<X8>)
{
  LOBYTE(__src[0]) = 1;
  State.init(wrappedValue:)();
  v2 = v37;
  v3 = v38;

  sub_10022C350(&qword_100CA4BD8);
  sub_100006F64(&qword_100CA4BE0, &qword_100CA4BD8);
  v4 = ObservedObject.init(wrappedValue:)();
  v6 = v5;
  static LinearGradient.fallback.getter();
  static LinearGradient.fallback.getter();
  v22 = v4;
  v23 = v6;
  v24 = v37;
  v25 = v38;
  *v26 = v12[16];
  *&v26[8] = v13;
  *&v26[24] = v14;
  v27 = 0;
  *v28 = v15;
  *&v28[8] = v16;
  *&v28[24] = v17;
  v29 = 0;
  v30 = 0;
  v34[0] = *v26;
  v34[1] = *&v26[16];
  v35 = *(&v14 + 1);
  v32 = *(&v17 + 1);
  v33 = 0;
  v31[0] = *v28;
  v31[1] = *&v28[16];
  sub_100281394(&v18);
  v8 = v18;
  v7 = v19;
  v9 = v20;
  v10 = v21;

  sub_10028164C(v34);
  sub_10003FDF4(&v33, &qword_100CA5CC8);
  sub_10028164C(v31);
  sub_10003FDF4(&v30, &qword_100CA5CC8);
  *&__src[0] = v4;
  *(&__src[0] + 1) = v6;
  LOBYTE(__src[1]) = v2;
  *(&__src[1] + 1) = v3;
  __src[2] = v8;
  *&__src[3] = v7;
  *(&__src[3] + 1) = v9;
  __src[4] = v10;
  __src[5] = v8;
  *&__src[6] = v7;
  *(&__src[6] + 1) = v9;
  __src[7] = v10;
  v37 = v4;
  v38 = v6;
  v39 = v2;
  v40 = v3;
  v41 = v8;
  v42 = v7;
  v43 = v9;
  v44 = v10;
  v45 = 0;
  v46 = v8;
  v47 = v7;
  v48 = v9;
  v49 = v10;
  v50 = 0;
  sub_1002816A0(__src, v12);
  sub_1002816D8(&v37);
  return memcpy(a1, __src, 0x80uLL);
}

double sub_100281394@<D0>(_OWORD *a1@<X8>)
{
  v19 = a1;
  v18 = type metadata accessor for CodableColor();
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SkyBackgroundGradient();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherConditionBackgroundModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA47E8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2C3F0;
  sub_1001108E0();
  WeatherConditionBackgroundModel.gradient.getter();
  (*(v9 + 8))(v11, v8);
  SkyBackgroundGradient.topColor.getter();
  (*(v5 + 8))(v7, v4);
  v13 = CodableColor.color.getter();
  (*(v1 + 8))(v3, v18);
  *(v12 + 32) = v13;
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v20;
  v15 = v21;
  v16 = v19;
  *v19 = v20;
  v16[1] = v15;
  *(v16 + 4) = v22;
  return result;
}

uint64_t sub_100281708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[1] = a1;
  v3 = type metadata accessor for WeatherConditionBackgroundModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static Alignment.center.getter();
  v9 = v8;
  sub_100281A90(v14);
  memcpy(v16, v14, sizeof(v16));
  memcpy(__dst, v14, 0x58uLL);
  sub_100060DE0(v16, v15, &qword_100CA5CD0);
  sub_10003FDF4(__dst, &qword_100CA5CD0);
  memcpy(&v15[2], v16, 0x58uLL);
  v15[0] = v7;
  v15[1] = v9;
  sub_1001108E0();
  v10 = swift_allocObject();
  memcpy((v10 + 16), v2, 0x80uLL);
  sub_1002816A0(v2, v14);
  sub_10022C350(&qword_100CA5CD8);
  sub_10001E6B0();
  sub_100006F64(v11, &qword_100CA5CD8);
  sub_100281D9C();
  View.onChange<A>(of:initial:_:)();

  (*(v4 + 8))(v6, v3);
  memcpy(v14, v15, 0x68uLL);
  return sub_10003FDF4(v14, &qword_100CA5CD8);
}

uint64_t sub_100281950()
{
  sub_100281394(&v2);
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CA5CE8);
  State.wrappedValue.setter();
  static Animation.default.getter();
  Animation.delay(_:)();

  __chkstk_darwin(v0);
  withAnimation<A>(_:_:)();
}

uint64_t sub_100281A90@<X0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CA5CE8);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CA5A80);
  result = State.wrappedValue.getter();
  v3 = 0.0;
  *a1 = v4;
  if (v4)
  {
    v3 = 1.0;
  }

  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v3;
  return result;
}

uint64_t sub_100281B8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_100060DE0(&v4, v2, &qword_100CA5CF0);
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10003FDF4(&v3, &qword_100CA5A80);
}

uint64_t sub_100281CAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100281CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100281D9C()
{
  result = qword_100CA4BD0;
  if (!qword_100CA4BD0)
  {
    type metadata accessor for WeatherConditionBackgroundModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4BD0);
  }

  return result;
}

uint64_t sub_100281E10@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA5CF8);
  __chkstk_darwin(v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  if (*a1)
  {
    v22 = type metadata accessor for LocationViewMapPosition(0);

    return sub_10001B350(a2, 1, 1, v22);
  }

  else
  {
    v36 = v9;
    v37 = v6;
    v39 = a2;
    v24 = type metadata accessor for LocationViewMapPosition.LocationMapConfiguration(0);
    v38 = v10;
    v25 = v24;
    sub_1000161C0(&a1[*(v24 + 32)], *&a1[*(v24 + 32) + 24]);
    v26 = v4;
    v27 = *&a1[*(v25 + 24)];
    Location.identifier.getter();
    v28 = &a1[*(v25 + 28)];
    v29 = type metadata accessor for WeatherData(0);
    sub_1005249FC(v27, &v28[*(v29 + 24)], v21);
    (*(v12 + 8))(v15, v38);
    sub_100282180(v21, v18);
    if (sub_100024D10(v18, 1, v26) == 1)
    {
      sub_1002821F0(v18);
      v30 = v39;
      sub_10001B350(v39, 1, 1, v26);
      v31 = type metadata accessor for LocationViewMapPosition(0);
      v32 = v30;
    }

    else
    {
      v33 = v36;
      v34 = *(v37 + 32);
      v34(v36, v18, v26);
      v35 = v39;
      v34(v39, v33, v26);
      sub_10001B350(v35, 0, 1, v26);
      v31 = type metadata accessor for LocationViewMapPosition(0);
      v32 = v35;
    }

    return sub_10001B350(v32, 0, 1, v31);
  }
}

uint64_t sub_100282180(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002821F0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100282280()
{
  v0 = type metadata accessor for WeatherMapOverlayKind();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_100282300()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v2 <= 0x3F)
    {
      result = sub_1002823B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1002823B4()
{
  result = qword_100CA5E08;
  if (!qword_100CA5E08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA5E08);
  }

  return result;
}

uint64_t sub_100282410()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10028244C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100282464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 49))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002824B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

double sub_100282520(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10028256C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  switch(sub_1004CA0C4())
  {
    case 1u:
      sub_100003B48();
      v25 = 29;
      goto LABEL_26;
    case 2u:
      sub_10001E6C8();
      v30 = 31;
      goto LABEL_49;
    case 3u:
      if (qword_100CA1E78 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D8F368;
      goto LABEL_22;
    case 4u:
      sub_100003B48();
      v26 = 37;
      goto LABEL_31;
    case 5u:
      sub_10001E6C8();
      v30 = 39;
      goto LABEL_49;
    case 6u:
      sub_100003B48();
      v26 = 41;
LABEL_31:
      v30 = v26;
      goto LABEL_49;
    case 7u:
      sub_10001E6C8();
      v27 = 35;
      goto LABEL_36;
    case 8u:
      sub_10001E6C8();
      v28 = 43;
      goto LABEL_39;
    case 9u:
      sub_10001E6C8();
      v30 = 45;
      goto LABEL_49;
    case 0xAu:
      sub_10001E6C8();
      v27 = 95;
LABEL_36:
      v30 = v27;
      goto LABEL_49;
    case 0xBu:
      sub_10001E6C8();
      v30 = 79;
      goto LABEL_49;
    case 0xCu:
      sub_10001E6C8();
      v28 = 81;
LABEL_39:
      v30 = v28;
      goto LABEL_49;
    case 0xDu:
      sub_10001E6C8();
      v30 = 85;
      goto LABEL_49;
    case 0xEu:
      sub_10001E6C8();
      v29 = 83;
      goto LABEL_48;
    case 0xFu:
      sub_10001E6C8();
      v30 = 47;
      goto LABEL_49;
    case 0x10u:
      sub_10001E6C8();
      v30 = 49;
      goto LABEL_49;
    case 0x11u:
      sub_10001E6C8();
      v30 = 51;
      goto LABEL_49;
    case 0x12u:
      sub_10001E6C8();
      v30 = 53;
      goto LABEL_49;
    case 0x13u:
      sub_10001E6C8();
      v30 = 55;
      goto LABEL_49;
    case 0x14u:
      v20 = sub_10000FA34();
      v21(v20);
      v19 = 20;
      goto LABEL_18;
    case 0x15u:
      v15 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      v16 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
      (*(*(v16 - 8) + 104))(v7, v15, v16);
      v17 = sub_10000FA34();
      v18(v17);
      v19 = 21;
      goto LABEL_18;
    case 0x16u:
    case 0x17u:
      v22 = sub_10000FA34();
      v23(v22);
      v19 = 22;
LABEL_18:
      v14 = sub_10099733C(v19, v7, 0);
      (*(v5 + 8))(v7, v4);
      goto LABEL_23;
    case 0x18u:
      sub_10001E6C8();
      v29 = 77;
LABEL_48:
      v30 = v29;
      goto LABEL_49;
    case 0x19u:
      if (qword_100CA1E80 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D8F378;
      goto LABEL_22;
    case 0x1Au:
      if (qword_100CA1E88 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D8F388;
LABEL_22:
      v14 = *v8;

      goto LABEL_23;
    case 0x1Bu:
      sub_100997704();
      v14 = 27;
      goto LABEL_23;
    case 0x1Cu:
      sub_1009979E0();
      v14 = 28;
      goto LABEL_23;
    case 0x1Du:
      if (qword_100CA2788 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000703C(v9, qword_100D90CF0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_100078694(a1, a2, &v31);
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find PerformanceTest with name: %s", v12, 0xCu);
        sub_100006F14(v13);
      }

      v14 = 0;
LABEL_23:
      result = v14;
      break;
    default:
      sub_100003B48();
      v25 = 27;
LABEL_26:
      v30 = v25;
LABEL_49:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_100282CCC()
{
  result = sub_100282CF8();
  byte_100D8F368 = 3;
  qword_100D8F370 = result;
  return result;
}

uint64_t sub_100282CF8()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  *v2 = 2;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  sub_10022C350(&qword_100CA5FF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  *(v4 + 56) = &type metadata for ChangeMacAppState;
  *(v4 + 64) = &off_100C78C70;
  *(v4 + 32) = 0;
  *(v4 + 96) = &type metadata for Delay;
  *(v4 + 104) = &off_100C500F8;
  *(v4 + 72) = 0x4008000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A30470;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C5FB58;
  v6 = sub_100042FB0((v5 + 192));
  sub_100283528(v2, v6);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x3FF0000000000000;
  *(v5 + 296) = &type metadata for Sidebar;
  *(v5 + 304) = &off_100C700F0;
  *(v5 + 272) = 0;
  *(v5 + 336) = &type metadata for Delay;
  *(v5 + 344) = &off_100C500F8;
  *(v5 + 312) = 0x3FF0000000000000;
  *(v5 + 376) = &type metadata for Measure;
  *(v5 + 384) = &off_100C4E718;
  *(v5 + 352) = v4;
  *(v5 + 416) = &type metadata for Mica;
  *(v5 + 424) = &off_100C63A98;
  *(v5 + 392) = 1;
  sub_10028358C(v2);
  return v5;
}

uint64_t sub_100282F54()
{
  result = sub_100282F80();
  byte_100D8F378 = 25;
  qword_100D8F380 = result;
  return result;
}

uint64_t sub_100282F80()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v11[15];
  *v2 = 0;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  if (qword_100CA2C30 != -1)
  {
    swift_once();
  }

  v4 = qword_100D91570;
  v5 = *&qword_100D91570 + 200.0;
  sub_10022C350(&qword_100CA5FF8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  *(v6 + 56) = &type metadata for ResizeMacWindow;
  *(v6 + 64) = &off_100C4F848;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = 0x4084000000000000;
  *(v7 + 32) = v5;
  *(v7 + 40) = 0x4084000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A30470;
  *(v8 + 56) = &type metadata for Mica;
  *(v8 + 64) = &off_100C63A98;
  *(v8 + 32) = 0;
  *(v8 + 96) = &type metadata for Delay;
  *(v8 + 104) = &off_100C500F8;
  *(v8 + 72) = 0x3FF0000000000000;
  *(v8 + 136) = &type metadata for UpdateWeather;
  *(v8 + 144) = &off_100C7B258;
  *(v8 + 112) = v3;
  *(v8 + 176) = &type metadata for Delay;
  *(v8 + 184) = &off_100C500F8;
  *(v8 + 152) = 0x3FF0000000000000;
  *(v8 + 216) = v0;
  *(v8 + 224) = &off_100C5FB58;
  v9 = sub_100042FB0((v8 + 192));
  sub_100283528(v2, v9);
  *(v8 + 256) = &type metadata for Delay;
  *(v8 + 264) = &off_100C500F8;
  *(v8 + 232) = 0x3FF0000000000000;
  *(v8 + 296) = &type metadata for Sidebar;
  *(v8 + 304) = &off_100C700F0;
  *(v8 + 272) = 1;
  *(v8 + 336) = &type metadata for Delay;
  *(v8 + 344) = &off_100C500F8;
  *(v8 + 312) = 0x3FF0000000000000;
  *(v8 + 376) = &type metadata for Measure;
  *(v8 + 384) = &off_100C4E718;
  *(v8 + 352) = v6;
  *(v8 + 416) = &type metadata for Mica;
  *(v8 + 424) = &off_100C63A98;
  *(v8 + 392) = 1;
  sub_10028358C(v2);
  return v8;
}

uint64_t sub_100283240()
{
  result = sub_10028326C();
  byte_100D8F388 = 26;
  qword_100D8F390 = result;
  return result;
}

uint64_t sub_10028326C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v10[15];
  *v2 = 0;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  if (qword_100CA2C28 != -1)
  {
    swift_once();
  }

  v4 = qword_100D91568;
  sub_10022C350(&qword_100CA5FF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 56) = &type metadata for ResizeMacWindow;
  *(v5 + 64) = &off_100C4F848;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  v6[2] = v4;
  v6[3] = 0x4084000000000000;
  v6[4] = v4;
  v6[5] = 0x408A400000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A30470;
  *(v7 + 56) = &type metadata for Mica;
  *(v7 + 64) = &off_100C63A98;
  *(v7 + 32) = 0;
  *(v7 + 96) = &type metadata for Delay;
  *(v7 + 104) = &off_100C500F8;
  *(v7 + 72) = 0x3FF0000000000000;
  *(v7 + 136) = &type metadata for UpdateWeather;
  *(v7 + 144) = &off_100C7B258;
  *(v7 + 112) = v3;
  *(v7 + 176) = &type metadata for Delay;
  *(v7 + 184) = &off_100C500F8;
  *(v7 + 152) = 0x3FF0000000000000;
  *(v7 + 216) = v0;
  *(v7 + 224) = &off_100C5FB58;
  v8 = sub_100042FB0((v7 + 192));
  sub_100283528(v2, v8);
  *(v7 + 256) = &type metadata for Delay;
  *(v7 + 264) = &off_100C500F8;
  *(v7 + 232) = 0x3FF0000000000000;
  *(v7 + 296) = &type metadata for Sidebar;
  *(v7 + 304) = &off_100C700F0;
  *(v7 + 272) = 1;
  *(v7 + 336) = &type metadata for Delay;
  *(v7 + 344) = &off_100C500F8;
  *(v7 + 312) = 0x3FF0000000000000;
  *(v7 + 376) = &type metadata for Measure;
  *(v7 + 384) = &off_100C4E718;
  *(v7 + 352) = v5;
  *(v7 + 416) = &type metadata for Mica;
  *(v7 + 424) = &off_100C63A98;
  *(v7 + 392) = 1;
  sub_10028358C(v2);
  return v7;
}

uint64_t sub_100283528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Navigate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028358C(uint64_t a1)
{
  v2 = type metadata accessor for Navigate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100283648@<X0>(_BYTE *a1@<X8>)
{
  result = static VerticalSizingBehaviorKey.defaultValue.getter();
  *a1 = result & 1;
  return result;
}

uint64_t static MapTransitionNamespaceKey.defaultValue.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  static MapTransitionNamespaceKey.defaultValue = a1;
  byte_100CA6008 = a2 & 1;
  return result;
}

uint64_t static WindowHorizontalSizeClassKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1EA8 != -1)
  {
    sub_100007F64();
  }

  v2 = sub_10022C350(&qword_100CA6028);
  v3 = sub_10000703C(v2, static WindowHorizontalSizeClassKey.defaultValue);
  return sub_100060DE0(v3, a1, &qword_100CA6028);
}

uint64_t sub_1002838A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100283B10(&qword_100CA6070, &qword_100CA6078);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100283930()
{
  result = static Alignment.bottomLeading.getter();
  *&static TipAlignmentKey.defaultValue = result;
  *(&static TipAlignmentKey.defaultValue + 1) = v1;
  return result;
}

uint64_t static TipAlignmentKey.defaultValue.getter()
{
  if (qword_100CA1EB0 != -1)
  {
    sub_10000FA48();
  }

  return static TipAlignmentKey.defaultValue;
}

uint64_t sub_1002839A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100283B10(&qword_100CA6058, &qword_100CA6060);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100283A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10013E1CC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100283B10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003A24(0, a2);
    sub_10022E824(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100283B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100283D3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_100283BE4()
{
  result = qword_100CA60D8;
  if (!qword_100CA60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60D8);
  }

  return result;
}

uint64_t sub_100283C38(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003A24(a1, a2);
  v4 = sub_10022C350(v3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100283D3C()
{
  result = qword_100CA6148;
  if (!qword_100CA6148)
  {
    sub_10022E824(&qword_100CA60E8);
    sub_1000F1F60(&qword_100CA6150, &type metadata accessor for ForegroundEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6148);
  }

  return result;
}

unint64_t sub_100283E18()
{
  result = qword_100CA6178;
  if (!qword_100CA6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6178);
  }

  return result;
}

unint64_t sub_100283E6C()
{
  result = qword_100CA6180;
  if (!qword_100CA6180)
  {
    sub_10022E824(&qword_100CA6188);
    sub_10013E1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6180);
  }

  return result;
}

uint64_t sub_100283F30@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = sub_10022C350(&qword_100CA6198);
  return sub_100283F74(a1 + *(v4 + 44));
}

uint64_t sub_100283F74@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_10022C350(&qword_100CA61A0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v21 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = type metadata accessor for RoundedCornerStyle();
  v15 = *(*(v14 - 8) + 104);
  v15(v12, v13, v14);
  static Color.black.getter();
  v16 = Color.opacity(_:)();

  *&v12[*(v2 + 60)] = v16;
  *&v12[*(v2 + 64)] = 256;
  v15(v9, v13, v14);
  *&v9[*(v2 + 60)] = static Color.cyan.getter();
  *&v9[*(v2 + 64)] = 256;
  sub_100284198(v12, v6);
  v17 = v21;
  sub_100284198(v9, v21);
  v18 = v22;
  sub_100284198(v6, v22);
  v19 = sub_10022C350(&qword_100CA61A8);
  sub_100284198(v17, v18 + *(v19 + 48));
  sub_100284208(v9);
  sub_100284208(v12);
  sub_100284208(v17);
  return sub_100284208(v6);
}

uint64_t sub_100284198(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA61A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100284208(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA61A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100284280()
{
  result = qword_100CA61B0;
  if (!qword_100CA61B0)
  {
    sub_10022E824(&qword_100CA6198);
    sub_100006F64(&qword_100CA61B8, &qword_100CA61C0);
    sub_100006F64(&qword_100CA61C8, &qword_100CA61D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA61B0);
  }

  return result;
}

double sub_100284364(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_100284384(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for LayoutSubview();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v15[-v11];
  LayoutSubviews.subscript.getter();
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  v15[24] = a2 & 1;
  v15[16] = a4 & 1;
  LayoutSubview.place(at:anchor:proposal:)();
  static UnitPoint.topLeading.getter();
  v15[8] = 0;
  v15[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  return (v13)(v12, v6);
}

void (*sub_1002845B4(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

unint64_t sub_10028462C()
{
  result = qword_100CA61D8;
  if (!qword_100CA61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA61D8);
  }

  return result;
}

unint64_t sub_100284708()
{
  result = qword_100CA6250;
  if (!qword_100CA6250)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA6250);
  }

  return result;
}

uint64_t sub_100284780@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v71 = sub_10022C350(&unk_100CE0EB0);
  sub_1000037C4();
  v65 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v64 = v5;
  v73 = type metadata accessor for SearchResultsList(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  v8 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10022C350(&qword_100CA6288);
  sub_1000037C4();
  v66 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v72 = v12;
  v13 = sub_10022C350(&qword_100CA6290);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v67 = sub_10022C350(&qword_100CA6298);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v69 = v18;
  v19 = sub_10022C350(&qword_100CA62A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v70 = v21;
  v68 = type metadata accessor for RegularSearchResultsView(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  v63 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v24 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v59 - v28;
  v30 = type metadata accessor for SearchResultsView(0);
  sub_10009D114();
  v31 = type metadata accessor for UserInterfaceSizeClass();
  if (sub_100024D10(v29, 1, v31) == 1)
  {
    v81 = 0;
    sub_1000175A4();
    *v16 = v75;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA62A8);
    sub_100285180();
    sub_100285430();
  }

  else
  {
    v60 = v16;
    v61 = v13;
    v59 = v9;
    v62 = v19;
    sub_100095588();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 88))(v26, v31);
    if (v33 == enum case for UserInterfaceSizeClass.compact(_:))
    {
      sub_100035B30(v2, v8 + *(v73 + 20));
      sub_10000FA68(*(v30 + 20));
      sub_1002873F4();
      *v8 = swift_getKeyPath();
      sub_10022C350(&qword_100CA62E0);
      swift_storeEnumTagMultiPayload();
      Solarium.init()();
      v34 = v64;
      static ViewInputPredicate.! prefix(_:)();
      v63 = sub_10022C350(&qword_100CA62C0);
      sub_1000054D8();
      v37 = sub_10028532C(v35, v36);
      v75 = &type metadata for Solarium;
      v76 = &protocol witness table for Solarium;
      v38 = sub_100014178();
      v58 = sub_100285374();
      v39 = v72;
      v40 = v71;
      View.staticIf<A, B>(_:then:)();
      (*(v65 + 8))(v34, v40);
      sub_10028744C(v8, type metadata accessor for SearchResultsList);
      v41 = v66;
      v42 = v59;
      (*(v66 + 16))(v69, v39, v59);
      swift_storeEnumTagMultiPayload();
      sub_100007F84();
      sub_10028532C(v43, v44);
      v75 = v73;
      v76 = v40;
      v77 = v63;
      v78 = v37;
      v79 = v38;
      v80 = v58;
      sub_10001758C();
      swift_getOpaqueTypeConformance2();
      v45 = v70;
      _ConditionalContent<>.init(storage:)();
      sub_1001D6730();
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CA62A8);
      sub_100285180();
      sub_100285430();
      sub_100019218();
      _ConditionalContent<>.init(storage:)();
      sub_1001D6790(v45);
      (*(v41 + 8))(v72, v42);
      return sub_1000180EC(v29, &qword_100CA6028);
    }

    v46 = v60;
    if (v33 == enum case for UserInterfaceSizeClass.regular(_:))
    {
      v47 = v63;
      sub_100035B30(v2, v63);
      sub_10000FA68(*(v30 + 20));
      sub_1002873F4();
      sub_1002873F4();
      swift_storeEnumTagMultiPayload();
      sub_100007F84();
      sub_10028532C(v48, v49);
      v50 = sub_10022E824(&qword_100CA62C0);
      sub_1000054D8();
      v53 = sub_10028532C(v51, v52);
      v75 = &type metadata for Solarium;
      v76 = &protocol witness table for Solarium;
      v54 = sub_100014178();
      v55 = sub_100285374();
      v75 = v73;
      v76 = v71;
      v77 = v50;
      v78 = v53;
      v79 = v54;
      v80 = v55;
      sub_10001758C();
      swift_getOpaqueTypeConformance2();
      v56 = v70;
      _ConditionalContent<>.init(storage:)();
      sub_1001D6730();
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CA62A8);
      sub_100285180();
      sub_100285430();
      sub_100019218();
      _ConditionalContent<>.init(storage:)();
      sub_1001D6790(v56);
      sub_10028744C(v47, type metadata accessor for RegularSearchResultsView);
      return sub_1000180EC(v29, &qword_100CA6028);
    }

    (*(v32 + 8))(v26, v31);
    v81 = 1;
    sub_1000175A4();
    *v46 = v75;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA62A8);
    sub_100285180();
    sub_100285430();
    sub_100019218();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_1000180EC(v29, &qword_100CA6028);
}

uint64_t sub_100285094@<X0>(uint64_t a1@<X8>)
{
  v2 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1002873F4();
  result = sub_10022C350(&qword_100CA62C0);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

unint64_t sub_100285180()
{
  result = qword_100CA62B0;
  if (!qword_100CA62B0)
  {
    sub_10022E824(&qword_100CA62A0);
    sub_10028532C(&qword_100CA62B8, type metadata accessor for RegularSearchResultsView);
    type metadata accessor for SearchResultsList(255);
    sub_10022E824(&unk_100CE0EB0);
    sub_10022E824(&qword_100CA62C0);
    sub_10028532C(&qword_100CA62C8, type metadata accessor for SearchResultsList);
    swift_getOpaqueTypeConformance2();
    sub_100285374();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA62B0);
  }

  return result;
}

uint64_t sub_10028532C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100285374()
{
  result = qword_100CA62D0;
  if (!qword_100CA62D0)
  {
    sub_10022E824(&qword_100CA62C0);
    sub_10028532C(&qword_100CA62C8, type metadata accessor for SearchResultsList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA62D0);
  }

  return result;
}

unint64_t sub_100285430()
{
  result = qword_100CA62D8;
  if (!qword_100CA62D8)
  {
    sub_10022E824(&qword_100CA62A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA62D8);
  }

  return result;
}

uint64_t sub_1002854AC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CA6420);
  return sub_1002854FC(v1, a1 + *(v3 + 44));
}

uint64_t sub_1002854FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v47 = a2;
  v45 = sub_10022C350(&qword_100CA6428) - 8;
  __chkstk_darwin(v45);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = (&v37 - v5);
  v41 = sub_10022C350(&qword_100CA6430) - 8;
  __chkstk_darwin(v41);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v8;
  v42 = a1 + *(type metadata accessor for RegularSearchResultsView(0) + 20);
  v9 = *(v42 + 40);
  __dst[0] = *(v42 + 32);
  __dst[1] = v9;
  sub_10002D5A4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_10010CD64(v10, v12, v14 & 1);

  static Color.primary.getter();
  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v24 = v23;
  v38 = v25;

  sub_10010CD64(v15, v17, v19 & 1);

  LOBYTE(v10) = static Edge.Set.leading.getter();
  LOBYTE(__dst[0]) = v24 & 1;
  LOBYTE(v54[0]) = 1;
  v26 = v39;
  Divider.init()();
  v27 = static Edge.Set.leading.getter();
  v28 = v26 + *(v41 + 44);
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  v29 = type metadata accessor for SearchResultsList(0);
  v30 = v43;
  sub_100035B30(v40, v43 + *(v29 + 20));
  sub_1002873F4();
  *v30 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  static Font.body.getter();
  static Font.Weight.bold.getter();
  v31 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v33 = (v30 + *(v45 + 44));
  *v33 = KeyPath;
  v33[1] = v31;
  v54[0] = v20;
  v54[1] = v22;
  LOBYTE(v54[2]) = v24 & 1;
  v54[3] = v38;
  LOBYTE(v54[4]) = v10;
  memset(&v54[5], 0, 32);
  LOBYTE(v54[9]) = 1;
  v52 = 0;
  v53 = 1;
  v54[10] = v54;
  v54[11] = &v52;
  v34 = v44;
  sub_100095588();
  v50 = 0;
  v51 = 1;
  v54[12] = v34;
  v54[13] = &v50;
  v48 = 0;
  v49 = 1;
  v54[14] = &v48;
  v35 = v46;
  sub_100095588();
  v54[15] = v35;
  sub_1003E80F0();
  sub_1000180EC(v30, &qword_100CA6428);
  sub_1000180EC(v26, &qword_100CA6430);
  sub_1000180EC(v35, &qword_100CA6428);
  sub_1000180EC(v34, &qword_100CA6430);
  memcpy(__dst, v54, 0x49uLL);
  return sub_1000180EC(__dst, &qword_100CA6438);
}

double sub_100285968(_BYTE *a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v9 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v23[-v13];
  __chkstk_darwin(v15);
  v17 = &v23[-v16];
  if (a1[8])
  {
    sub_10009D114();
    v25 = v3;
    (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v2);
    sub_10001B350(v14, 0, 1, v2);
    v18 = *(v6 + 48);
    sub_100095588();
    sub_100095588();
    if (sub_100024D10(v8, 1, v2) == 1)
    {
      sub_1000180EC(v14, &qword_100CA6028);
      sub_1000180EC(v17, &qword_100CA6028);
      if (sub_100024D10(&v8[v18], 1, v2) == 1)
      {
        sub_1000180EC(v8, &qword_100CA6028);
        v19 = 20.0;
LABEL_12:
        swift_beginAccess();
        *a1 = v19;
        a1[8] = 0;
        return v19;
      }
    }

    else
    {
      sub_100095588();
      if (sub_100024D10(&v8[v18], 1, v2) != 1)
      {
        v20 = v25;
        (*(v25 + 32))(v5, &v8[v18], v2);
        sub_10028532C(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v21 = *(v20 + 8);
        v21(v5, v2);
        sub_1000180EC(v14, &qword_100CA6028);
        sub_1000180EC(v17, &qword_100CA6028);
        v21(v11, v2);
        sub_1000180EC(v8, &qword_100CA6028);
        if (v24)
        {
          v19 = 20.0;
        }

        else
        {
          v19 = 16.0;
        }

        goto LABEL_12;
      }

      sub_1000180EC(v14, &qword_100CA6028);
      sub_1000180EC(v17, &qword_100CA6028);
      (*(v25 + 8))(v11, v2);
    }

    sub_1000180EC(v8, &qword_100CA64E8);
    v19 = 16.0;
    goto LABEL_12;
  }

  return *a1;
}

uint64_t sub_100285DD0()
{
  v1 = sub_10022C350(&qword_100CA6440);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v8 = v0;
  static Axis.Set.vertical.getter();
  sub_10022C350(&qword_100CA6448);
  sub_100006F64(&qword_100CA6450, &qword_100CA6448);
  ScrollView.init(_:showsIndicators:content:)();
  Solarium.init()();
  sub_10022C350(&qword_100CA6458);
  v5 = sub_100006F64(&qword_100CA6460, &qword_100CA6440);
  v9 = v1;
  v10 = v5;
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100285FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CA6468);
  return sub_100286044(a1, a2 + *(v4 + 44));
}

uint64_t sub_100286044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_10022C350(&qword_100CA6470);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v117 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = v96 - v7;
  v8 = sub_10022C350(&qword_100CA6478);
  __chkstk_darwin(v8);
  v112 = v96 - v9;
  v107 = sub_10022C350(&qword_100CA6430);
  __chkstk_darwin(v107);
  v102 = v96 - v10;
  v11 = sub_10022C350(&qword_100CA6480);
  __chkstk_darwin(v11 - 8);
  v111 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = v96 - v14;
  v15 = type metadata accessor for SearchResultsList(0);
  v16 = v15 - 8;
  v122 = *(v15 - 8);
  __chkstk_darwin(v15);
  v123 = v17;
  v18 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10022C350(&qword_100CA6488);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v120 = v96 - v21;
  v105 = type metadata accessor for AccessibilityTraits();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Font.TextStyle();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA6490);
  __chkstk_darwin(v27 - 8);
  v121 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v119 = v96 - v30;
  v31 = sub_10022C350(&qword_100CA6498);
  __chkstk_darwin(v31 - 8);
  v115 = v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v96 - v34;
  v36 = (a1 + *(v16 + 32));
  v37 = *v36;
  if (*(*v36 + 16))
  {
    v98 = v96 - v34;
    v99 = v8;
    v100 = v4;
    v101 = v3;
    v97 = v37;
    LocalizedStringKey.init(stringLiteral:)();
    v38 = Text.init(_:tableName:bundle:comment:)();
    v40 = v39;
    v42 = v41;
    (*(v24 + 104))(v26, enum case for Font.TextStyle.subheadline(_:), v23);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    v113 = v36;
    (*(v24 + 8))(v26, v23);
    Font.smallCaps()();
    v114 = v18;

    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;

    sub_10010CD64(v38, v40, v42 & 1);

    v48 = [objc_opt_self() tertiaryLabelColor];
    __dst[0] = Color.init(_:)();
    v49 = Text.foregroundStyle<A>(_:)();
    v51 = v50;
    LOBYTE(v40) = v52;
    v54 = v53;
    sub_10010CD64(v43, v45, v47 & 1);

    v55 = static Edge.Set.horizontal.getter();
    __dst[0] = 0;
    LOBYTE(__dst[1]) = 1;
    sub_100285968(__dst);
    EdgeInsets.init(_all:)();
    v126 = v40 & 1;
    v125 = 0;
    __src[0] = v49;
    __src[1] = v51;
    LOBYTE(__src[2]) = v40 & 1;
    __src[3] = v54;
    LOBYTE(__src[4]) = v55;
    __src[5] = v56;
    __src[6] = v57;
    __src[7] = v58;
    __src[8] = v59;
    LOBYTE(__src[9]) = 0;
    v60 = v103;
    static AccessibilityTraits.isHeader.getter();
    sub_10022C350(&qword_100CA6438);
    sub_100287740();
    View.accessibilityAddTraits(_:)();
    (*(v104 + 8))(v60, v105);
    memcpy(__dst, __src, 0x49uLL);
    sub_1000180EC(__dst, &qword_100CA6438);
    __src[0] = v97;
    swift_getKeyPath();
    v61 = v114;
    sub_1002873F4();
    v62 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v63 = swift_allocObject();
    sub_1002877C4(v61, v63 + v62);

    sub_10022C350(&qword_100CA64A8);
    type metadata accessor for SuggestedSearchResultRowView();
    sub_100006F64(&qword_100CA64B0, &qword_100CA64A8);
    sub_10028532C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
    sub_10028532C(&qword_100CA64B8, type metadata accessor for SuggestedSearchResultRowView);
    v64 = v120;
    ForEach<>.init(_:id:content:)();
    v65 = *(v113[1] + 16);
    v96[1] = a1;
    if (v65)
    {
      v66 = v102;
      Divider.init()();
      v67 = static Edge.Set.horizontal.getter();
      __src[0] = 0;
      LOBYTE(__src[1]) = 1;
      sub_100285968(__src);
      EdgeInsets.init(_all:)();
      v68 = v107;
      v69 = &v66[*(v107 + 36)];
      *v69 = v67;
      *(v69 + 1) = v70;
      *(v69 + 2) = v71;
      *(v69 + 3) = v72;
      *(v69 + 4) = v73;
      v69[40] = 0;
      v74 = v110;
      sub_100051BBC();
      v75 = 0;
    }

    else
    {
      v74 = v110;
      v68 = v107;
      v75 = 1;
    }

    sub_10001B350(v74, v75, 1, v68);
    sub_100095588();
    v76 = v108;
    v77 = *(v108 + 16);
    v78 = v106;
    v79 = v109;
    v77(v106, v64, v109);
    v80 = v111;
    sub_100095588();
    v81 = v112;
    sub_100095588();
    v82 = sub_10022C350(&qword_100CA64C0);
    v77(&v81[*(v82 + 48)], v78, v79);
    sub_100095588();
    sub_1000180EC(v74, &qword_100CA6480);
    v83 = *(v76 + 8);
    v83(v120, v79);
    sub_1000180EC(v119, &qword_100CA6490);
    sub_1000180EC(v80, &qword_100CA6480);
    v83(v78, v79);
    sub_1000180EC(v121, &qword_100CA6490);
    v35 = v98;
    sub_100051BBC();
    sub_10001B350(v35, 0, 1, v99);
    v3 = v101;
    v4 = v100;
    v18 = v114;
    v36 = v113;
  }

  else
  {
    sub_10001B350(v96 - v34, 1, 1, v8);
  }

  __dst[0] = v36[1];
  swift_getKeyPath();
  sub_1002873F4();
  v84 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v85 = swift_allocObject();
  sub_1002877C4(v18, v85 + v84);

  sub_10022C350(&qword_100CA64C8);
  type metadata accessor for SearchResultRowView();
  sub_100006F64(&qword_100CA64D0, &qword_100CA64C8);
  sub_10028532C(&qword_100CA64D8, type metadata accessor for SearchResultRowView);
  v86 = v116;
  ForEach<>.init(_:id:content:)();
  v87 = v115;
  sub_100095588();
  v88 = *(v4 + 16);
  v89 = v117;
  v88(v117, v86, v3);
  v90 = v35;
  v91 = v3;
  v92 = v118;
  sub_100095588();
  v93 = sub_10022C350(&qword_100CA64E0);
  v88((v92 + *(v93 + 48)), v89, v91);
  v94 = *(v4 + 8);
  v94(v86, v91);
  sub_1000180EC(v90, &qword_100CA6498);
  v94(v89, v91);
  return sub_1000180EC(v87, &qword_100CA6498);
}

uint64_t sub_100286F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationOfInterest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SelectedSearchResult();
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchResultsList(0);
  sub_100035B30(a2 + *(v13 + 20), a3);
  v14 = type metadata accessor for SuggestedSearchResultRowView();
  (*(v7 + 16))(a3 + *(v14 + 20), a1, v6);
  type metadata accessor for SearchResultsViewModel(0);
  sub_1002873F4();
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    result = sub_10028744C(v12, type metadata accessor for SelectedSearchResult);
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  (*(v7 + 32))(v9, v12, v6);
  v16 = static LocationOfInterest.== infix(_:_:)();
  result = (*(v7 + 8))(v9, v6);
LABEL_6:
  *(a3 + *(v14 + 24)) = v16 & 1;
  return result;
}

uint64_t sub_10028715C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SelectedSearchResult();
  __chkstk_darwin(v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SearchResultsList(0);
  sub_100035B30(a2 + *(v9 + 20), a3);
  v10 = type metadata accessor for SearchResultRowView();
  sub_1002873F4();
  v11 = a2 + *(v9 + 24);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  type metadata accessor for SearchResultsViewModel(0);
  sub_1002873F4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      result = sub_10028744C(v8, type metadata accessor for SelectedSearchResult);
    }

    else
    {
    }

    v19 = 0;
  }

  else
  {
    v16 = *v8;
    v17 = v8[1];
    if (*(a1 + 40) == v16 && *(a1 + 48) == v17)
    {

      v19 = 1;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v20 = (a3 + *(v10 + 24));
  *v20 = v13;
  v20[1] = v12;
  *(a3 + *(v10 + 28)) = v19 & 1;
  return result;
}

uint64_t sub_100287324()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  sub_10022C350(&qword_100CA6440);
  sub_100006F64(&qword_100CA6460, &qword_100CA6440);
  return View.scrollContentBackground(_:)();
}

uint64_t sub_1002873F4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10028744C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10028750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1002875EC()
{
  result = sub_100284708();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SearchResultsViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100287670()
{
  result = qword_100CA6410;
  if (!qword_100CA6410)
  {
    sub_10022E824(&qword_100CA6418);
    sub_100285180();
    sub_100285430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6410);
  }

  return result;
}

unint64_t sub_100287740()
{
  result = qword_100CA64A0;
  if (!qword_100CA64A0)
  {
    sub_10022E824(&qword_100CA6438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA64A0);
  }

  return result;
}

uint64_t sub_1002877C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100287858(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SearchResultsList(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1002878EC(uint64_t a1, void (*a2)(void))
{
  v2244 = a2;
  v1973 = type metadata accessor for NotificationsOptInInput();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v1974 = v4;
  sub_1000038CC();
  v2046 = type metadata accessor for Date();
  sub_1000037C4();
  v1972 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v2012 = v7;
  v8 = sub_10022C350(&qword_100CA65B8);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  v1959 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v1971 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v2009 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v1970 = v16;
  sub_1000038CC();
  v2072 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v2044 = v18;
  sub_1000038CC();
  v2141 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v2140 = v19;
  __chkstk_darwin(v20);
  sub_100003848();
  v2011 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v2101 = v23;
  v24 = sub_1000038CC();
  v25 = type metadata accessor for LocationFooterAction(v24);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003848();
  *(&v1969 + 1) = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_100003878();
  v2010 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  sub_100003878();
  v2039 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v2099 = v33;
  v34 = sub_10022C350(&unk_100CE2F20);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  v2167 = &v1950 - v36;
  sub_1000038CC();
  v2203 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v2190 = v37;
  __chkstk_darwin(v38);
  v2144 = &v1950 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E1390();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v2048 = v41;
  sub_1000E1390();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v2074 = v43;
  sub_1000E1390();
  __chkstk_darwin(v44);
  sub_10000E70C();
  v2168 = v45;
  sub_1000E1390();
  __chkstk_darwin(v46);
  sub_10000E70C();
  v2104 = v47;
  v2142 = v48;
  __chkstk_darwin(v49);
  sub_10000E70C();
  v2191 = v50;
  sub_1000038CC();
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_100003848();
  *&v1969 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v1968 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_10000E70C();
  v2227 = v56;
  sub_1000038CC();
  v2204 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v2232 = v57;
  __chkstk_darwin(v58);
  sub_1000038E4();
  v2239 = v59;
  v60 = sub_10022C350(&qword_100CA65C0);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  v2188 = &v1950 - v62;
  v63 = sub_10022C350(&qword_100CA65C8);
  v64 = sub_100003810(v63);
  __chkstk_darwin(v64);
  v2189 = &v1950 - v65;
  v66 = sub_10022C350(&qword_100CA65D0);
  v67 = sub_100003810(v66);
  __chkstk_darwin(v67);
  sub_100003848();
  v2171 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v2187 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_10000E70C();
  v2155 = v72;
  v73 = sub_1000038CC();
  v2205 = type metadata accessor for LocationPreviewModalViewState(v73);
  sub_1000037E8();
  __chkstk_darwin(v74);
  sub_100003848();
  v2037 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v2036 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v2178 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_10000E70C();
  v2162 = v81;
  v82 = sub_10022C350(&qword_100CA65D8);
  v83 = sub_100003810(v82);
  __chkstk_darwin(v83);
  sub_100003848();
  v2105 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v2233 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_10000E70C();
  v2202 = v88;
  sub_1000038CC();
  v2229 = type metadata accessor for Location();
  sub_1000037C4();
  v2221 = v89;
  v91 = *(v90 + 64);
  __chkstk_darwin(v92);
  v2007 = &v1950 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D3BB8();
  __chkstk_darwin(v93);
  sub_10000E70C();
  v2008 = v94;
  sub_1000D3BB8();
  __chkstk_darwin(v95);
  sub_10000E70C();
  v2094 = v96;
  sub_1000D3BB8();
  __chkstk_darwin(v97);
  sub_10000E70C();
  v2143 = v98;
  sub_1000D3BB8();
  __chkstk_darwin(v99);
  sub_10000E70C();
  v2047 = v100;
  sub_1000D3BB8();
  __chkstk_darwin(v101);
  sub_10000E70C();
  v2106 = v102;
  sub_1000D3BB8();
  __chkstk_darwin(v103);
  sub_10000E70C();
  v2201 = v104;
  sub_1000D3BB8();
  __chkstk_darwin(v105);
  sub_10000E70C();
  v2186 = v106;
  v107 = sub_1000038CC();
  v108 = type metadata accessor for LocationPreviewViewState(v107);
  v109 = sub_100003810(v108);
  __chkstk_darwin(v109);
  sub_100003848();
  v2209 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v1952 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  sub_100003878();
  *&v1960 = v114;
  sub_10000386C();
  __chkstk_darwin(v115);
  sub_100003878();
  v2207 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_10000E70C();
  v2208 = v118;
  v119 = sub_10022C350(&qword_100CA65E0);
  v120 = sub_100003810(v119);
  __chkstk_darwin(v120);
  sub_100003848();
  v2211 = v121;
  sub_10000386C();
  __chkstk_darwin(v122);
  sub_10000E70C();
  v2218 = v123;
  v124 = sub_10022C350(&unk_100CB2CF0);
  v125 = sub_100003810(v124);
  __chkstk_darwin(v125);
  sub_100003848();
  v2223 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  sub_100003878();
  v1967 = v128;
  sub_10000386C();
  __chkstk_darwin(v129);
  sub_100003878();
  v2006 = v130;
  sub_10000386C();
  __chkstk_darwin(v131);
  sub_100003878();
  v2073 = v132;
  sub_10000386C();
  __chkstk_darwin(v133);
  sub_100003878();
  v1994 = v134;
  sub_10000386C();
  __chkstk_darwin(v135);
  sub_10000E70C();
  v2240 = v136;
  sub_1000038CC();
  v2216 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v137);
  sub_100003848();
  v2103 = v138;
  sub_10000386C();
  __chkstk_darwin(v139);
  sub_100003878();
  v2045 = v140;
  sub_10000386C();
  __chkstk_darwin(v141);
  sub_100003878();
  v2177 = v142;
  sub_10000386C();
  __chkstk_darwin(v143);
  sub_100003878();
  v2161 = v144;
  sub_10000386C();
  __chkstk_darwin(v145);
  sub_10000E70C();
  v2124 = v146;
  sub_1000038CC();
  v2212 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v147);
  sub_100003848();
  v2222 = v148;
  sub_10000386C();
  __chkstk_darwin(v149);
  sub_100003878();
  v1966 = v150;
  sub_10000386C();
  __chkstk_darwin(v151);
  sub_100003878();
  v2102 = v152;
  sub_10000386C();
  __chkstk_darwin(v153);
  sub_100003878();
  v2043 = v154;
  sub_10000386C();
  __chkstk_darwin(v155);
  sub_100003878();
  v2176 = v156;
  sub_10000386C();
  __chkstk_darwin(v157);
  sub_100003878();
  v2160 = v158;
  sub_10000386C();
  __chkstk_darwin(v159);
  sub_10000E70C();
  v2123 = v160;
  sub_1000038CC();
  v2215 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v161);
  sub_100003848();
  v2100 = v162;
  sub_10000386C();
  __chkstk_darwin(v163);
  sub_100003878();
  v2042 = v164;
  sub_10000386C();
  __chkstk_darwin(v165);
  sub_100003878();
  v2175 = v166;
  sub_10000386C();
  __chkstk_darwin(v167);
  sub_100003878();
  v2159 = v168;
  sub_10000386C();
  __chkstk_darwin(v169);
  sub_10000E70C();
  v2122 = v170;
  sub_1000038CC();
  v2214 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v171);
  sub_100003848();
  v2098 = v172;
  sub_10000386C();
  __chkstk_darwin(v173);
  sub_100003878();
  v2041 = v174;
  sub_10000386C();
  __chkstk_darwin(v175);
  sub_100003878();
  v2166 = v176;
  sub_10000386C();
  __chkstk_darwin(v177);
  sub_100003878();
  v2174 = v178;
  sub_10000386C();
  __chkstk_darwin(v179);
  sub_100003878();
  v2158 = v180;
  sub_10000386C();
  __chkstk_darwin(v181);
  sub_10000E70C();
  v2121 = v182;
  sub_1000038CC();
  v2213 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v183);
  sub_100003848();
  v2097 = v184;
  sub_10000386C();
  __chkstk_darwin(v185);
  sub_100003878();
  v2040 = v186;
  sub_10000386C();
  __chkstk_darwin(v187);
  sub_100003878();
  v2173 = v188;
  sub_10000386C();
  __chkstk_darwin(v189);
  sub_100003878();
  v2157 = v190;
  sub_10000386C();
  __chkstk_darwin(v191);
  sub_10000E70C();
  v2120 = v192;
  sub_1000038CC();
  v2210 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v193);
  sub_100003848();
  v2096 = v194;
  sub_10000386C();
  __chkstk_darwin(v195);
  sub_100003878();
  v2038 = v196;
  sub_10000386C();
  __chkstk_darwin(v197);
  sub_100003878();
  v2172 = v198;
  sub_10000386C();
  __chkstk_darwin(v199);
  sub_100003878();
  v2156 = v200;
  sub_10000386C();
  __chkstk_darwin(v201);
  sub_10000E70C();
  v2119 = v202;
  v203 = sub_1000038CC();
  v2245 = type metadata accessor for ModalViewState(v203);
  sub_1000037E8();
  __chkstk_darwin(v204);
  sub_100003848();
  v2231 = v205;
  sub_10000386C();
  __chkstk_darwin(v206);
  sub_100003878();
  v2034 = v207;
  sub_10000386C();
  __chkstk_darwin(v208);
  sub_100003878();
  v2095 = v209;
  sub_10000386C();
  __chkstk_darwin(v210);
  sub_100003878();
  v1991 = v211;
  sub_10000386C();
  __chkstk_darwin(v212);
  sub_100003878();
  v2035 = v213;
  sub_10000386C();
  __chkstk_darwin(v214);
  sub_100003878();
  v1987 = v215;
  sub_10000386C();
  __chkstk_darwin(v216);
  sub_100003878();
  v2236 = v217;
  sub_10000386C();
  __chkstk_darwin(v218);
  sub_100003878();
  v2134 = v219;
  sub_10000386C();
  __chkstk_darwin(v220);
  sub_100003878();
  v2135 = v221;
  sub_10000386C();
  __chkstk_darwin(v222);
  sub_100003878();
  v2226 = v223;
  sub_10000386C();
  __chkstk_darwin(v224);
  sub_100003878();
  v2084 = v225;
  sub_10000386C();
  __chkstk_darwin(v226);
  sub_100003878();
  v2085 = v227;
  sub_10000386C();
  __chkstk_darwin(v228);
  sub_100003878();
  v2230 = v229;
  sub_10000386C();
  __chkstk_darwin(v230);
  sub_100003878();
  v2193 = v231;
  sub_10000386C();
  __chkstk_darwin(v232);
  sub_100003878();
  v2064 = v233;
  sub_10000386C();
  __chkstk_darwin(v234);
  sub_10000E70C();
  v2065 = v235;
  v236 = sub_10022C350(&qword_100CA65E8);
  v237 = sub_100003810(v236);
  __chkstk_darwin(v237);
  sub_100003848();
  v2031 = v238;
  sub_10000386C();
  __chkstk_darwin(v239);
  sub_100003878();
  v2030 = v240;
  sub_10000386C();
  __chkstk_darwin(v241);
  sub_100003878();
  v1989 = v242;
  sub_10000386C();
  __chkstk_darwin(v243);
  sub_100003878();
  v1988 = v244;
  sub_10000386C();
  __chkstk_darwin(v245);
  sub_100003878();
  v2237 = v246;
  sub_10000386C();
  __chkstk_darwin(v247);
  sub_100003878();
  v2132 = v248;
  sub_10000386C();
  __chkstk_darwin(v249);
  sub_100003878();
  v2170 = v250;
  sub_10000386C();
  __chkstk_darwin(v251);
  sub_100003878();
  v2082 = v252;
  sub_10000386C();
  __chkstk_darwin(v253);
  sub_100003878();
  v2154 = v254;
  sub_10000386C();
  __chkstk_darwin(v255);
  sub_100003878();
  v2062 = v256;
  sub_10000386C();
  __chkstk_darwin(v257);
  sub_10000E70C();
  v2060 = v258;
  v259 = sub_1000038CC();
  v2242 = type metadata accessor for ViewState.SecondaryViewState(v259);
  sub_1000037E8();
  __chkstk_darwin(v260);
  sub_100003848();
  v2235 = v261;
  sub_10000386C();
  __chkstk_darwin(v262);
  sub_100003878();
  v2225 = v263;
  sub_10000386C();
  __chkstk_darwin(v264);
  sub_10000E70C();
  v2058 = v265;
  v266 = sub_1000038CC();
  v267 = type metadata accessor for WeatherMapTrackingState(v266);
  v268 = sub_100003810(v267);
  __chkstk_darwin(v268);
  sub_1000038E4();
  v2070 = v269;
  v270 = sub_1000038CC();
  v2149 = type metadata accessor for WeatherMapPresentationState(v270);
  sub_1000037E8();
  __chkstk_darwin(v271);
  sub_100003848();
  *(&v1960 + 1) = v272;
  sub_10000386C();
  __chkstk_darwin(v273);
  sub_100003878();
  v1950 = v274;
  sub_10000386C();
  __chkstk_darwin(v275);
  sub_100003878();
  v2057 = v276;
  sub_10000386C();
  __chkstk_darwin(v277);
  sub_10000E70C();
  v2071 = v278;
  v279 = sub_10022C350(&qword_100CA65F0);
  v280 = sub_100003810(v279);
  __chkstk_darwin(v280);
  sub_100003848();
  v2067 = v281;
  sub_10000386C();
  __chkstk_darwin(v282);
  sub_100003878();
  v2056 = v283;
  sub_10000386C();
  __chkstk_darwin(v284);
  sub_10000E70C();
  v2115 = v285;
  v286 = sub_10022C350(&qword_100CA65F8);
  v287 = sub_100003810(v286);
  __chkstk_darwin(v287);
  sub_100003848();
  v2068 = v288;
  sub_10000386C();
  __chkstk_darwin(v289);
  sub_100003878();
  v2054 = v290;
  sub_10000386C();
  __chkstk_darwin(v291);
  sub_10000E70C();
  v2113 = v292;
  v293 = sub_10022C350(&qword_100CA6600);
  v294 = sub_100003810(v293);
  __chkstk_darwin(v294);
  sub_100003848();
  v2069 = v295;
  sub_10000386C();
  __chkstk_darwin(v296);
  sub_100003878();
  v2053 = v297;
  sub_10000386C();
  __chkstk_darwin(v298);
  sub_100003878();
  v2116 = v299;
  sub_10000386C();
  __chkstk_darwin(v300);
  sub_10000E70C();
  v2112 = v301;
  v302 = sub_10022C350(&qword_100CA6608);
  v303 = sub_100003810(v302);
  __chkstk_darwin(v303);
  sub_100003848();
  v1958 = v304;
  sub_10000386C();
  __chkstk_darwin(v305);
  sub_100003878();
  v1965 = v306;
  sub_10000386C();
  __chkstk_darwin(v307);
  sub_100003878();
  v1993 = v308;
  sub_10000386C();
  __chkstk_darwin(v309);
  sub_100003878();
  v2050 = v310;
  sub_10000386C();
  __chkstk_darwin(v311);
  sub_10000E70C();
  v2146 = v312;
  v313 = sub_1000038CC();
  v314 = type metadata accessor for ViewState(v313);
  sub_1000037E8();
  __chkstk_darwin(v315);
  sub_100003848();
  v1957 = v316;
  sub_10000386C();
  __chkstk_darwin(v317);
  sub_100003878();
  v2005 = v318;
  sub_10000386C();
  __chkstk_darwin(v319);
  sub_100003878();
  v1962 = v320;
  sub_10000386C();
  __chkstk_darwin(v321);
  sub_100003878();
  v1992 = v322;
  sub_10000386C();
  __chkstk_darwin(v323);
  sub_100003878();
  v2234 = v324;
  sub_10000386C();
  __chkstk_darwin(v325);
  sub_100003878();
  v2093 = v326;
  sub_10000386C();
  __chkstk_darwin(v327);
  sub_100003878();
  v2033 = v328;
  sub_10000386C();
  __chkstk_darwin(v329);
  sub_100003878();
  v2224 = v330;
  sub_10000386C();
  __chkstk_darwin(v331);
  sub_100003878();
  v2169 = v332;
  sub_10000386C();
  __chkstk_darwin(v333);
  sub_100003878();
  v2153 = v334;
  sub_10000386C();
  __chkstk_darwin(v335);
  sub_100003878();
  v2118 = v336;
  sub_10000386C();
  __chkstk_darwin(v337);
  sub_10000E70C();
  v2147 = v338;
  v339 = sub_10022C350(&qword_100CA6610);
  v340 = sub_100003810(v339);
  __chkstk_darwin(v340);
  sub_100003848();
  v1956 = v341;
  sub_10000386C();
  __chkstk_darwin(v342);
  sub_100003878();
  v1964 = v343;
  sub_10000386C();
  __chkstk_darwin(v344);
  sub_100003878();
  v2032 = v345;
  sub_10000386C();
  __chkstk_darwin(v346);
  sub_100003878();
  v2092 = v347;
  sub_10000386C();
  __chkstk_darwin(v348);
  sub_100003878();
  v1990 = v349;
  sub_10000386C();
  __chkstk_darwin(v350);
  sub_100003878();
  v2029 = v351;
  sub_10000386C();
  __chkstk_darwin(v352);
  sub_100003878();
  v2125 = v353;
  sub_10000386C();
  __chkstk_darwin(v354);
  sub_100003878();
  v2133 = v355;
  sub_10000386C();
  __chkstk_darwin(v356);
  sub_100003878();
  v2200 = v357;
  sub_10000386C();
  __chkstk_darwin(v358);
  sub_100003878();
  v2083 = v359;
  sub_10000386C();
  __chkstk_darwin(v360);
  sub_100003878();
  v2185 = v361;
  sub_10000386C();
  __chkstk_darwin(v362);
  sub_100003878();
  v2063 = v363;
  sub_10000386C();
  __chkstk_darwin(v364);
  sub_10000E70C();
  v2061 = v365;
  v366 = sub_10022C350(&qword_100CA6618);
  v367 = sub_100003810(v366);
  __chkstk_darwin(v367);
  sub_100003848();
  v1980 = v368;
  sub_10000386C();
  __chkstk_darwin(v369);
  sub_100003878();
  v2004 = v370;
  sub_10000386C();
  __chkstk_darwin(v371);
  sub_100003878();
  v2028 = v372;
  sub_10000386C();
  __chkstk_darwin(v373);
  sub_100003878();
  v2091 = v374;
  sub_10000386C();
  __chkstk_darwin(v375);
  sub_100003878();
  v1986 = v376;
  sub_10000386C();
  __chkstk_darwin(v377);
  sub_100003878();
  v2027 = v378;
  sub_10000386C();
  __chkstk_darwin(v379);
  sub_100003878();
  v2137 = v380;
  sub_10000386C();
  __chkstk_darwin(v381);
  sub_100003878();
  v2131 = v382;
  sub_10000386C();
  __chkstk_darwin(v383);
  sub_100003878();
  v2199 = v384;
  sub_10000386C();
  __chkstk_darwin(v385);
  sub_100003878();
  v2081 = v386;
  sub_10000386C();
  __chkstk_darwin(v387);
  sub_100003878();
  v2184 = v388;
  sub_10000386C();
  __chkstk_darwin(v389);
  sub_100003878();
  v2059 = v390;
  sub_10000386C();
  __chkstk_darwin(v391);
  sub_10000E70C();
  v2117 = v392;
  v393 = sub_10022C350(&qword_100CA6620);
  v394 = sub_100003810(v393);
  __chkstk_darwin(v394);
  sub_100003848();
  v1955 = v395;
  sub_10000386C();
  __chkstk_darwin(v396);
  sub_100003878();
  v1963 = v397;
  sub_10000386C();
  __chkstk_darwin(v398);
  sub_100003878();
  v2003 = v399;
  sub_10000386C();
  __chkstk_darwin(v400);
  sub_100003878();
  v2026 = v401;
  sub_10000386C();
  __chkstk_darwin(v402);
  sub_100003878();
  v2090 = v403;
  sub_10000386C();
  __chkstk_darwin(v404);
  sub_100003878();
  v1985 = v405;
  sub_10000386C();
  __chkstk_darwin(v406);
  sub_100003878();
  v2025 = v407;
  sub_10000386C();
  __chkstk_darwin(v408);
  sub_100003878();
  v2136 = v409;
  sub_10000386C();
  __chkstk_darwin(v410);
  sub_100003878();
  v2130 = v411;
  sub_10000386C();
  __chkstk_darwin(v412);
  sub_100003878();
  v2198 = v413;
  sub_10000386C();
  __chkstk_darwin(v414);
  sub_100003878();
  v2080 = v415;
  sub_10000386C();
  __chkstk_darwin(v416);
  sub_100003878();
  v2183 = v417;
  sub_10000386C();
  __chkstk_darwin(v418);
  sub_100003878();
  v2055 = v419;
  sub_10000386C();
  __chkstk_darwin(v420);
  sub_10000E70C();
  v2114 = v421;
  v422 = sub_10022C350(&qword_100CA6628);
  v423 = sub_100003810(v422);
  __chkstk_darwin(v423);
  sub_100003848();
  v1979 = v424;
  sub_10000386C();
  __chkstk_darwin(v425);
  sub_100003878();
  v2001 = v426;
  sub_10000386C();
  __chkstk_darwin(v427);
  sub_100003878();
  v2002 = v428;
  sub_10000386C();
  __chkstk_darwin(v429);
  sub_100003878();
  v2024 = v430;
  sub_10000386C();
  __chkstk_darwin(v431);
  sub_100003878();
  v2089 = v432;
  sub_10000386C();
  __chkstk_darwin(v433);
  sub_100003878();
  v1984 = v434;
  sub_10000386C();
  __chkstk_darwin(v435);
  sub_100003878();
  v2023 = v436;
  sub_10000386C();
  __chkstk_darwin(v437);
  sub_100003878();
  v2148 = v438;
  sub_10000386C();
  __chkstk_darwin(v439);
  sub_100003878();
  v2129 = v440;
  sub_10000386C();
  __chkstk_darwin(v441);
  sub_100003878();
  v2197 = v442;
  sub_10000386C();
  __chkstk_darwin(v443);
  sub_100003878();
  v2079 = v444;
  sub_10000386C();
  __chkstk_darwin(v445);
  sub_100003878();
  v2182 = v446;
  sub_10000386C();
  __chkstk_darwin(v447);
  sub_100003878();
  v2052 = v448;
  sub_10000386C();
  __chkstk_darwin(v449);
  sub_10000E70C();
  v2111 = v450;
  v451 = sub_10022C350(&qword_100CA6630);
  v452 = sub_100003810(v451);
  __chkstk_darwin(v452);
  sub_100003848();
  v1978 = v453;
  sub_10000386C();
  __chkstk_darwin(v454);
  sub_100003878();
  v1999 = v455;
  sub_10000386C();
  __chkstk_darwin(v456);
  sub_100003878();
  v2000 = v457;
  sub_10000386C();
  __chkstk_darwin(v458);
  sub_100003878();
  v2022 = v459;
  sub_10000386C();
  __chkstk_darwin(v460);
  sub_100003878();
  v2088 = v461;
  sub_10000386C();
  __chkstk_darwin(v462);
  sub_100003878();
  v1983 = v463;
  sub_10000386C();
  __chkstk_darwin(v464);
  sub_100003878();
  v2021 = v465;
  sub_10000386C();
  __chkstk_darwin(v466);
  sub_100003878();
  v2151 = v467;
  sub_10000386C();
  __chkstk_darwin(v468);
  sub_100003878();
  v2128 = v469;
  sub_10000386C();
  __chkstk_darwin(v470);
  sub_100003878();
  v2196 = v471;
  sub_10000386C();
  __chkstk_darwin(v472);
  sub_100003878();
  v2078 = v473;
  sub_10000386C();
  __chkstk_darwin(v474);
  sub_100003878();
  v2181 = v475;
  sub_10000386C();
  __chkstk_darwin(v476);
  sub_100003878();
  v2051 = v477;
  sub_10000386C();
  __chkstk_darwin(v478);
  sub_10000E70C();
  v2110 = v479;
  v480 = sub_10022C350(&qword_100CA6638);
  v481 = sub_100003810(v480);
  __chkstk_darwin(v481);
  sub_100003848();
  v1977 = v482;
  sub_10000386C();
  __chkstk_darwin(v483);
  sub_100003878();
  v1997 = v484;
  sub_10000386C();
  __chkstk_darwin(v485);
  sub_100003878();
  v1998 = v486;
  sub_10000386C();
  __chkstk_darwin(v487);
  sub_100003878();
  v2020 = v488;
  sub_10000386C();
  __chkstk_darwin(v489);
  sub_100003878();
  v2087 = v490;
  sub_10000386C();
  __chkstk_darwin(v491);
  sub_100003878();
  v1982 = v492;
  sub_10000386C();
  __chkstk_darwin(v493);
  sub_100003878();
  v2019 = v494;
  sub_10000386C();
  __chkstk_darwin(v495);
  sub_100003878();
  v2164 = v496;
  sub_10000386C();
  __chkstk_darwin(v497);
  sub_100003878();
  v2127 = v498;
  sub_10000386C();
  __chkstk_darwin(v499);
  sub_100003878();
  v2195 = v500;
  sub_10000386C();
  __chkstk_darwin(v501);
  sub_100003878();
  v2077 = v502;
  sub_10000386C();
  __chkstk_darwin(v503);
  sub_100003878();
  v2180 = v504;
  sub_10000386C();
  __chkstk_darwin(v505);
  sub_100003878();
  v2075 = v506;
  sub_10000386C();
  __chkstk_darwin(v507);
  sub_10000E70C();
  v2109 = v508;
  v509 = sub_10022C350(&qword_100CA6640);
  v510 = sub_100003810(v509);
  __chkstk_darwin(v510);
  sub_100003848();
  v1976 = v511;
  sub_10000386C();
  __chkstk_darwin(v512);
  sub_100003878();
  v1995 = v513;
  sub_10000386C();
  __chkstk_darwin(v514);
  sub_100003878();
  v1996 = v515;
  sub_10000386C();
  __chkstk_darwin(v516);
  sub_100003878();
  v2018 = v517;
  sub_10000386C();
  __chkstk_darwin(v518);
  sub_100003878();
  v2086 = v519;
  sub_10000386C();
  __chkstk_darwin(v520);
  sub_100003878();
  v1981 = v521;
  sub_10000386C();
  __chkstk_darwin(v522);
  sub_100003878();
  v2017 = v523;
  sub_10000386C();
  __chkstk_darwin(v524);
  sub_100003878();
  v2165 = v525;
  sub_10000386C();
  __chkstk_darwin(v526);
  sub_100003878();
  v2126 = v527;
  sub_10000386C();
  __chkstk_darwin(v528);
  sub_100003878();
  v2194 = v529;
  sub_10000386C();
  __chkstk_darwin(v530);
  sub_100003878();
  v2076 = v531;
  sub_10000386C();
  __chkstk_darwin(v532);
  sub_100003878();
  v2179 = v533;
  sub_10000386C();
  __chkstk_darwin(v534);
  sub_100003878();
  v2049 = v535;
  sub_10000386C();
  __chkstk_darwin(v536);
  sub_10000E70C();
  v2108 = v537;
  sub_1000038CC();
  v2139 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v2138 = v538;
  __chkstk_darwin(v539);
  sub_100003848();
  v1951 = v540;
  sub_10000386C();
  __chkstk_darwin(v541);
  sub_100003878();
  v2220 = v542;
  sub_10000386C();
  __chkstk_darwin(v543);
  sub_10000E70C();
  v2145 = v544;
  sub_1000038CC();
  v2243 = type metadata accessor for LocationViewAction();
  sub_1000037E8();
  __chkstk_darwin(v545);
  sub_100003848();
  v2152 = v546;
  sub_10000386C();
  __chkstk_darwin(v547);
  sub_100003878();
  v2192 = v548;
  sub_10000386C();
  __chkstk_darwin(v549);
  sub_100003878();
  v2150 = v550;
  sub_10000386C();
  __chkstk_darwin(v551);
  sub_100003878();
  v2219 = v552;
  sub_10000386C();
  v554 = __chkstk_darwin(v553);
  v556 = &v1950 - v555;
  __chkstk_darwin(v554);
  v558 = &v1950 - v557;
  v2163 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v559);
  sub_100003848();
  v1953 = v560;
  sub_10000386C();
  __chkstk_darwin(v561);
  sub_100003878();
  v1954 = v562;
  sub_10000386C();
  __chkstk_darwin(v563);
  sub_100003878();
  v1961 = v564;
  sub_10000386C();
  __chkstk_darwin(v565);
  sub_100003878();
  v2013 = v566;
  sub_10000386C();
  __chkstk_darwin(v567);
  sub_100003878();
  v2015 = v568;
  sub_10000386C();
  __chkstk_darwin(v569);
  sub_100003878();
  v2016 = v570;
  sub_10000386C();
  __chkstk_darwin(v571);
  sub_100003878();
  v1975 = v572;
  sub_10000386C();
  __chkstk_darwin(v573);
  sub_100003878();
  v2066 = v574;
  sub_10000386C();
  __chkstk_darwin(v575);
  sub_100003878();
  v2238 = v576;
  sub_10000386C();
  v578 = __chkstk_darwin(v577);
  v580 = &v1950 - v579;
  __chkstk_darwin(v578);
  v582 = &v1950 - v581;
  v2217 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v583);
  sub_100003848();
  v2107 = v584;
  sub_10000386C();
  __chkstk_darwin(v585);
  sub_100003878();
  v2228 = v586;
  sub_10000386C();
  __chkstk_darwin(v587);
  v589 = &v1950 - v588;
  v2247 = a1;
  v2246 = v314;
  sub_10004E390();
  v2241 = v590;
  sub_1000A3C70();
  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  if (byte_100D90788 != 1 || *(v589 + 1) == 1 || (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0)
  {
    sub_1000227C4();
    sub_100154038(v589, v591);
    v592 = v2240;
    v593 = v2239;
    goto LABEL_7;
  }

  if (byte_100D90788 == 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v589) && v589[17] == 1)
  {
    sub_1000227C4();
    sub_100154038(v589, v619);
    v592 = v2240;
    v593 = v2239;
  }

  else
  {
    v625 = sub_1004B5750();
    sub_1000227C4();
    sub_100154038(v589, v626);
    v592 = v2240;
    v593 = v2239;
    if ((v625 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_10007465C();
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v627 = *(sub_10022C350(&qword_100CA6658) + 64);
    sub_100049614();
    sub_1000D37D4();
    sub_1000180EC(&v558[v627], &unk_100CB2CF0);
    sub_100011394();
    sub_1000A3C70();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v2138 + 32))(v2145, v580, v2139);
      sub_100003934();
      sub_10001B350(v628, v629, v630, v2210);
      sub_100003934();
      sub_10001B350(v631, v632, v633, v2213);
      sub_100003934();
      sub_10001B350(v634, v635, v636, v2214);
      sub_100003934();
      sub_10001B350(v637, v638, v639, v2215);
      sub_100003934();
      sub_10001B350(v640, v641, v642, v2212);
      sub_100003934();
      sub_10001B350(v643, v644, v645, v2216);
      sub_10000FA84();
      v646 = v2147;
      sub_1000A3C70();
      sub_100003934();
      v647 = v2242;
      v651 = sub_1000D3CF4(v648, v649, v650, v2242);
      type metadata accessor for SearchViewState(v651);
      sub_100003934();
      v2244 = v652;
      sub_10001B350(v653, v654, v655, v652);
      sub_100003934();
      sub_10001B350(v656, v657, v658, v2217);
      sub_1000182A0();
      v659 = v2071;
      sub_1000A3C70();
      sub_10004E390();
      v660 = v2228;
      sub_1000A3C70();
      sub_10022C350(&qword_100CA6660);
      v661 = v2070;
      v662 = sub_1000175DC();
      sub_10001B350(v662, v663, 3, v664);
      sub_100999C34(v660, v2145, v661, v2115);
      sub_1000866EC();
      sub_100154038(v661, v665);
      sub_1000227C4();
      sub_100154038(v660, v666);
      sub_100024040();
      v667 = v659;
      v668 = v647;
      sub_100154038(v667, v669);
      v670 = sub_100007FB4();
      sub_10001B350(v670, v671, v672, v2149);
      v673 = *v646;
      v674 = v2050;
      sub_100095588();
      v675 = sub_1000162A4();
      sub_1000038B4(v675, v676, v668);
      if (v623)
      {
        sub_1000A7B5C();
        sub_1000A3C70();
        v677 = sub_1000162A4();
        v679 = sub_100024D10(v677, v678, v668);

        if (v679 != 1)
        {
          sub_1000180EC(v674, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000519BC();
        sub_1000D37D4();
      }

      v1079 = v2246;
      v1080 = *(v646 + SLODWORD(v2246[3].isa));
      v1081 = [objc_opt_self() currentDevice];
      v1082 = [v1081 userInterfaceIdiom];

      v1083 = v2244;
      if (v1082 && *(v646 + SHIDWORD(v1079[4].isa) + 8) == 2)
      {
        v1084 = 1;
      }

      else
      {
        v1084 = *(v646 + SHIDWORD(v1079[3].isa));
      }

      sub_1000180EC(v2146, &qword_100CA6608);
      (*(v2138 + 8))(v2145, v2139);
      sub_10001E6E0();
      sub_100154038(v582, v1085);
      v1086 = v2053;
      sub_100051BBC();
      v1087 = sub_1000175DC();
      sub_1000038B4(v1087, v1088, v1083);
      if (v623)
      {
        v1094 = v2246;
        sub_100095588();
        v1089 = sub_1000175DC();
        sub_1000038B4(v1089, v1090, v1083);
        v1095 = v2056;
        v1096 = v2054;
        if (!v623)
        {
          sub_1000180EC(v1086, &qword_100CA6600);
        }
      }

      else
      {
        sub_1000D37D4();
        sub_10000E7B0();
        sub_10001B350(v1091, v1092, v1093, v1083);
        v1094 = v2246;
        v1095 = v2056;
        v1096 = v2054;
      }

      sub_100051BBC();
      v1097 = sub_100007FC4();
      v1098 = v2217;
      sub_1000038B4(v1097, v1099, v2217);
      if (v623)
      {
        sub_10004E390();
        sub_1000A3C70();
        v1100 = sub_100007FC4();
        sub_1000038B4(v1100, v1101, v1098);
        v1102 = v2061;
        if (!v623)
        {
          sub_1000180EC(v1096, &qword_100CA65F8);
        }
      }

      else
      {
        sub_1000C8E00();
        sub_1000D37D4();
        v1102 = v2061;
      }

      sub_100051BBC();
      sub_100005404(v1095);
      if (v623)
      {
        sub_1000182A0();
        sub_1000A3C70();
        sub_100005404(v1095);
        if (!v623)
        {
          sub_1000180EC(v1095, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100020134();
        sub_1000D37D4();
      }

      v1103 = *(v2147 + v1094[11]);
      sub_1000054F0();
      sub_100154038(v1104, v1105);
      *v1102 = v673;
      sub_1000519BC();
      sub_1000D37D4();
      *(v1102 + v1094[6]) = v1080;
      *(v1102 + v1094[7]) = v1084;
      sub_100051BBC();
      sub_1000C8E00();
      sub_1000D37D4();
      sub_100020134();
      sub_1000D37D4();
      *(v1102 + v1094[11]) = v1103;
      sub_10000E7B0();
      sub_10001B350(v1106, v1107, v1108, v1094);
      v1109 = sub_100071C3C();
      sub_10001B350(v1109, v1110, v1111, v2245);
      sub_1000141A4();
      sub_1000C8930(v1112);
      v1113 = v2064;
      sub_1000A3C70();
      v1114 = v2062;
      sub_100051BBC();
      sub_100003A40(v1114);
      if (v623)
      {
        sub_1000180EC(v1114, &qword_100CA65E8);
      }

      else
      {
        sub_100003B54();
        sub_100154038(v1113, v1115);
        sub_10001BBB8();
        sub_1000D37D4();
      }

      v1116 = v2210;
      v1117 = v2055;
      v1118 = v2052;
      v1119 = v2051;
      sub_10001BBB8();
      sub_1000D37D4();
      v2246 = *(v2247 + 16);
      LODWORD(v2245) = *(v2247 + 24);
      v1120 = v2049;
      sub_100051BBC();
      sub_100003A40(v1120);
      if (v623)
      {
        sub_10003145C();
        sub_1000C8930(v1121);
        sub_1000A3C70();
        v1122 = sub_1000131C4();
        v1124 = sub_100024D10(v1122, v1123, v1116);

        if (v1124 != 1)
        {
          sub_1000180EC(v1120, &qword_100CA6640);
        }
      }

      else
      {
        sub_100051D04();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1125 = sub_1000131C4();
      sub_1000113D0(v1125, v1126);
      if (v623)
      {
        sub_1000887FC();
        sub_100037964();
        v1127 = v2075;
        sub_1000A3C70();
        sub_100003A40(v1127);
        v1128 = v2059;
        if (!v623)
        {
          sub_1000180EC(v1127, &qword_100CA6638);
        }
      }

      else
      {
        sub_10000E798();
        sub_1000D37D4();
        v1128 = v2059;
      }

      sub_100051BBC();
      sub_10001627C(v1119, 1);
      if (v623)
      {
        sub_100016724();
        sub_1000C8930(v1129);
        sub_1000A3C70();
        sub_100005404(v1119);
        v1130 = v2063;
        if (!v623)
        {
          sub_1000180EC(v1119, &qword_100CA6630);
        }
      }

      else
      {
        sub_10002C530();
        sub_1000D37D4();
        v1130 = v2063;
      }

      sub_100051BBC();
      v1131 = sub_100007FC4();
      v1132 = v2215;
      sub_1000038B4(v1131, v1133, v2215);
      if (v623)
      {
        sub_1000205A4();
        sub_1000C8930(v1134);
        sub_1000A3C70();
        v1135 = sub_100007FC4();
        sub_1000038B4(v1135, v1136, v1132);
        if (!v623)
        {
          sub_1000180EC(v1118, &qword_100CA6628);
        }
      }

      else
      {
        sub_10000C7FC();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1137 = sub_1000162B0();
      v1138 = v2212;
      sub_1000038B4(v1137, v1139, v2212);
      if (v623)
      {
        sub_10001922C();
        sub_1000C8930(v1140);
        sub_1000A3C70();
        v1141 = sub_1000162B0();
        sub_1000038B4(v1141, v1142, v1138);
        if (!v623)
        {
          sub_1000180EC(v1117, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000244D8();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1143 = sub_100016298();
      v1144 = v2216;
      sub_1000038B4(v1143, v1145, v2216);
      if (v623)
      {
        sub_10003C26C();
        sub_1000C8930(v1146);
        sub_1000A3C70();
        v1147 = sub_100016298();
        sub_1000038B4(v1147, v1148, v1144);
        if (!v623)
        {
          sub_1000180EC(v1128, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000175C4();
        sub_1000D37D4();
      }

      sub_100051BBC();
      v1149 = sub_1000131C4();
      sub_1000038B4(v1149, v1150, v1094);
      if (v623)
      {
        sub_10000FA84();
        sub_1000A3C70();
        v1151 = sub_1000131C4();
        sub_1000038B4(v1151, v1152, v1094);
        if (!v623)
        {
          sub_1000180EC(v1130, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000693F0();
        sub_100021CEC();
        sub_1000D37D4();
      }

      sub_10001BBB8();
      sub_10019236C();
      sub_1000C8308();
      sub_1000E1540();
      sub_100040C78();
      sub_100003B6C();
      sub_1000113AC();
      v1950 = v2118;
      v1153 = v2246;
      v1154 = v2245;
      v1155 = v2119;
      v1156 = v2120;
      v1157 = v2121;
      v1158 = v2122;
      v1159 = v2123;
      v1160 = v2124;
LABEL_275:
      sub_10003E038(v1153, v1154, v1155, v1156, v1157, v1158, v1159, v1160, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960, *(&v1960 + 1), v1961, v1962, v1963, v1964, v1965, v1966, v1967, v1968, v1969, v1970, v1971, v1972, v1973, v1974, v1975);
      sub_1000A4020(v1284);

      return v2247;
    }

    sub_100154038(v582, type metadata accessor for LocationComponentAction);
    v785 = v580;
    v784 = type metadata accessor for LocationComponentAction;
  }

  else
  {
    sub_100037088();
    v785 = v558;
  }

  sub_100154038(v785, v784);
LABEL_7:
  sub_10007465C();
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100037088();
    sub_100154038(v556, v600);
LABEL_50:
    v699 = v2237;
    v700 = v2242;
    v701 = v2236;
    goto LABEL_51;
  }

  v594 = &v556[*(sub_10022C350(&qword_100CA6658) + 48)];
  v595 = *(v594 + 1);
  v2250[0] = *v594;
  v2250[1] = v595;
  v2251 = v594[32];
  sub_100049614();
  sub_1000D37D4();
  sub_100051BBC();
  sub_1000141A4();
  v596 = v2230;
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v597 = v2218;
    sub_100051BBC();
    v598 = v2211;
    sub_100095588();
    v599 = type metadata accessor for ModalViewState.MapViewModal(0);
    sub_100005404(v598);
    if (v623)
    {
      sub_1000180EC(v597, &qword_100CA65E0);
      sub_1000180EC(v598, &qword_100CA65E0);
    }

    else
    {
      sub_100030330();
      v620 = v2208;
      sub_1000D37D4();
      v621 = v2202;
      sub_1006E6234(v2202);
      v622 = v2229;
      sub_1000038B4(v621, 1, v2229);
      if (!v623)
      {
        v728 = v2221;
        v729 = v621;
        v730 = v2186;
        (*(v2221 + 32))(v2186, v729, v622);
        v709 = v2155;
        v731 = v2238;
        sub_100290980(v730, v592, v2250, v2155);
        v732 = sub_1000175DC();
        v733 = v2205;
        sub_1000113D0(v732, v734);
        if (!v735)
        {
          sub_1000870DC();
          sub_1000D37D4();
          sub_100003934();
          sub_10001B350(v817, v818, v819, v2210);
          sub_100003934();
          sub_10001B350(v820, v821, v822, v2213);
          sub_100003934();
          sub_10001B350(v823, v824, v825, v2214);
          sub_100003934();
          sub_10001B350(v826, v827, v828, v2215);
          sub_100003934();
          sub_10001B350(v829, v830, v831, v2212);
          sub_100003934();
          sub_10001B350(v832, v833, v834, v2216);
          sub_100003934();
          v835 = v2246;
          sub_1000D3CF4(v836, v837, v838, v2246);
          type metadata accessor for PreviewLocation();
          v839 = v2189;
          v840 = sub_100071C3C();
          sub_10001B350(v840, v841, v842, v843);
          sub_10002FD78();
          v844 = v2187;
          sub_1000A3C70();
          v845 = sub_100007FB4();
          sub_1000D3CF4(v845, v846, v847, v733);
          type metadata accessor for SelectedSearchResult();
          v848 = v2188;
          v849 = sub_100071458();
          sub_10001B350(v849, v850, v851, v852);
          v853 = sub_1000E137C();
          sub_10043DB64(v853, v854, v855, v856);
          sub_1000180EC(v848, &qword_100CA65C0);
          sub_1000180EC(v844, &qword_100CA65D0);
          sub_1000180EC(v839, &qword_100CA65C8);
          sub_10000E7B0();
          sub_10001B350(v857, v858, v859, v599);
          v860 = v2245;
          swift_storeEnumTagMultiPayload();
          sub_10000E7B0();
          sub_10001B350(v861, v862, v863, v860);
          sub_1000141A4();
          v864 = v2247;
          v865 = v2084;
          sub_1000A3C70();
          v866 = v2082;
          sub_100095588();
          sub_100003A40(v866);
          if (v867)
          {
            sub_1000180EC(v866, &qword_100CA65E8);
          }

          else
          {
            sub_100003B54();
            sub_100154038(v865, v1034);
            sub_10001BBB8();
            sub_1000D37D4();
          }

          v1035 = v2080;
          v1036 = v2079;
          v1037 = v2076;
          sub_10001BBB8();
          sub_1000D37D4();
          v2245 = *(v864 + 16);
          LODWORD(v2244) = *(v864 + 24);
          sub_100095588();
          v1038 = sub_1000162A4();
          v1039 = v2210;
          sub_10001627C(v1038, v1040);
          v1041 = v2214;
          if (v623)
          {
            sub_10003145C();
            sub_1000A3C70();
            v1042 = sub_1000162A4();
            v1044 = sub_100024D10(v1042, v1043, v1039);

            if (v1044 != 1)
            {
              sub_1000180EC(v1037, &qword_100CA6640);
            }
          }

          else
          {
            sub_100051D04();
            sub_1000D37D4();
          }

          v1045 = v2077;
          sub_100095588();
          sub_100003A40(v1045);
          if (v623)
          {
            sub_1000887FC();
            sub_100037964();
            sub_1000A3C70();
            sub_100003A40(v1045);
            v1046 = v2153;
            v1047 = v2078;
            if (!v623)
            {
              sub_1000180EC(v1045, &qword_100CA6638);
            }
          }

          else
          {
            sub_10000E798();
            sub_1000D37D4();
            v1046 = v2153;
            v1047 = v2078;
          }

          sub_100095588();
          v1048 = sub_1000131C4();
          sub_1000038B4(v1048, v1049, v1041);
          if (v623)
          {
            sub_100016724();
            sub_1000A3C70();
            v1050 = sub_1000131C4();
            sub_1000038B4(v1050, v1051, v1041);
            v1052 = v2081;
            if (!v623)
            {
              sub_1000180EC(v1047, &qword_100CA6630);
            }
          }

          else
          {
            sub_10002C530();
            sub_1000D37D4();
            v1052 = v2081;
          }

          sub_100095588();
          sub_10001627C(v1036, 1);
          if (v623)
          {
            sub_1000205A4();
            sub_1000A3C70();
            sub_100005404(v1036);
            if (!v623)
            {
              sub_1000180EC(v1036, &qword_100CA6628);
            }
          }

          else
          {
            sub_10000C7FC();
            sub_1000D37D4();
          }

          sub_100095588();
          v1053 = sub_1000162B0();
          sub_10001627C(v1053, v1054);
          if (v623)
          {
            sub_10001922C();
            sub_1000A3C70();
            sub_100005404(v1035);
            if (!v623)
            {
              sub_1000180EC(v1035, &qword_100CA6620);
            }
          }

          else
          {
            sub_1000244D8();
            sub_1000D37D4();
          }

          sub_100095588();
          v1055 = sub_100016298();
          sub_10001627C(v1055, v1056);
          if (v623)
          {
            sub_10003C26C();
            sub_1000A3C70();
            sub_100005404(v1052);
            if (!v623)
            {
              sub_1000180EC(v1052, &qword_100CA6618);
            }
          }

          else
          {
            sub_1000175C4();
            sub_1000D37D4();
          }

          v1057 = v2083;
          sub_100095588();
          v1058 = sub_1000131C4();
          sub_1000038B4(v1058, v1059, v835);
          if (v623)
          {
            sub_10000FA84();
            sub_1000A3C70();
            v1060 = sub_1000131C4();
            sub_1000038B4(v1060, v1061, v835);
            if (!v623)
            {
              sub_1000180EC(v1057, &qword_100CA6610);
            }
          }

          else
          {
            sub_1000693F0();
            sub_100021CEC();
            sub_1000D37D4();
          }

          sub_10001BBB8();
          sub_10019236C();
          v1062 = v864;
          v1064 = *(v864 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v1063 = *(v864 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v1066 = *(v864 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v1065 = *(v864 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v1067 = *(v1062 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v1069 = *(v1062 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v1068 = *(v1062 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
          v1070 = *(v1062 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          type metadata accessor for MainState._Storage(0);
          sub_100003B6C();
          LOBYTE(v1949) = v1067;
          v1071 = sub_100021CDC();
          sub_10003E038(v1071, v1072, v2156, v2157, v2158, v2159, v2160, v2161, v1948, v1046, v1064, v1063, v1066, v1065, v1949, v1069, v1068, v1070, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960, v1961, v1962, v1963, v1964, v1965, v1966);
          sub_1000A4020(v1073);

          sub_1000180EC(v2154, &qword_100CA65E8);
          sub_1000180EC(v2185, &qword_100CA6610);
          sub_1000180EC(v2184, &qword_100CA6618);
          sub_1000180EC(v2183, &qword_100CA6620);
          sub_1000180EC(v2182, &qword_100CA6628);
          sub_1000180EC(v2181, &qword_100CA6630);
          sub_1000180EC(v2180, &qword_100CA6638);
          sub_1000180EC(v2179, &qword_100CA6640);
          sub_100025070();
          sub_100154038(v2162, v1074);
          sub_1000B9110();
          v1075(v2186, v2229);
          sub_100007F9C();
          sub_100154038(v2208, v1076);
          sub_1000180EC(v2218, &qword_100CA65E0);
LABEL_154:
          sub_1000180EC(v2240, &unk_100CB2CF0);
          sub_10001E6E0();
          v1078 = v2238;
LABEL_155:
          sub_100154038(v1078, v1077);
          return v2247;
        }

        (*(v728 + 8))(v730, v622);
        sub_100007F9C();
        sub_100154038(v2208, v736);
        sub_1000180EC(v2218, &qword_100CA65E0);
        sub_1000180EC(v592, &unk_100CB2CF0);
        sub_10001E6E0();
        v717 = v731;
LABEL_68:
        sub_100154038(v717, v716);
        sub_1000180EC(v709, &qword_100CA65D0);
        goto LABEL_50;
      }

      sub_100007F9C();
      sub_100154038(v620, v624);
      sub_1000180EC(v597, &qword_100CA65E0);
      sub_1000180EC(v621, &qword_100CA65D8);
      v593 = v2239;
    }
  }

  else
  {
    sub_100003B54();
    sub_100154038(v596, v601);
  }

  v602 = v2226;
  sub_1000141A4();
  sub_1000A3C70();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v604 = v2232;
  v605 = v2227;
  v606 = v2233;
  if (EnumCaseMultiPayload)
  {
    sub_100003B54();
    sub_100154038(v602, v607);
  }

  else
  {
    sub_100030330();
    v608 = v2207;
    sub_1000D37D4();
    sub_1006E6234(v606);
    v609 = v2233;
    v610 = v2229;
    sub_10001627C(v2233, 1);
    if (!v623)
    {
      v707 = v2221;
      v708 = v2201;
      (*(v2221 + 32))(v2201, v609, v610);
      v709 = v2171;
      v710 = v2238;
      sub_100290980(v708, v592, v2250, v2171);
      v711 = sub_1000175DC();
      v712 = v2205;
      sub_1000113D0(v711, v713);
      if (!v714)
      {
        sub_1000870DC();
        sub_1000D37D4();
        sub_100003934();
        v737 = v2210;
        sub_10001B350(v738, v739, v740, v2210);
        sub_100003934();
        sub_10001B350(v741, v742, v743, v2213);
        sub_100003934();
        sub_10001B350(v744, v745, v746, v2214);
        sub_100003934();
        sub_10001B350(v747, v748, v749, v2215);
        sub_100003934();
        sub_10001B350(v750, v751, v752, v2212);
        sub_100003934();
        sub_10001B350(v753, v754, v755, v2216);
        sub_100003934();
        sub_1000D3CF4(v756, v757, v758, v2246);
        type metadata accessor for PreviewLocation();
        v759 = v2189;
        v760 = sub_100071C3C();
        sub_10001B350(v760, v761, v762, v763);
        sub_10002FD78();
        v764 = v2187;
        sub_1000A3C70();
        v765 = sub_100007FB4();
        sub_1000D3CF4(v765, v766, v767, v712);
        type metadata accessor for SelectedSearchResult();
        v768 = v2188;
        v769 = sub_100071458();
        sub_10001B350(v769, v770, v771, v772);
        v773 = sub_1000E137C();
        sub_10043DB64(v773, v774, v775, v776);
        sub_1000180EC(v768, &qword_100CA65C0);
        sub_1000180EC(v764, &qword_100CA65D0);
        sub_1000180EC(v759, &qword_100CA65C8);
        v777 = v2245;
        swift_storeEnumTagMultiPayload();
        sub_10000E7B0();
        sub_10001B350(v778, v779, v780, v777);
        sub_1000141A4();
        v781 = v2134;
        sub_1000A3C70();
        v782 = v2132;
        sub_100095588();
        sub_100003A40(v782);
        if (v783)
        {
          sub_1000180EC(v782, &qword_100CA65E8);
        }

        else
        {
          sub_100003B54();
          sub_100154038(v781, v868);
          sub_10001BBB8();
          sub_1000D37D4();
        }

        v869 = v2129;
        v870 = v2128;
        v871 = v2127;
        v872 = v2126;
        sub_10001BBB8();
        sub_1000D37D4();
        v2245 = *(v2247 + 16);
        LODWORD(v2244) = *(v2247 + 24);
        sub_100095588();
        sub_100005404(v872);
        if (v623)
        {
          sub_10003145C();
          sub_1000C8930(v873);
          sub_1000A3C70();
          v874 = sub_1000182B8();
          v876 = sub_100024D10(v874, v875, v737);

          if (v876 != 1)
          {
            sub_1000180EC(v872, &qword_100CA6640);
          }
        }

        else
        {
          sub_100051D04();
          sub_1000D37D4();
        }

        sub_100095588();
        sub_100003A40(v871);
        if (v623)
        {
          sub_1000887FC();
          sub_100037964();
          sub_1000A3C70();
          sub_100003A40(v871);
          v877 = v2131;
          v878 = v2130;
          if (!v623)
          {
            sub_1000180EC(v871, &qword_100CA6638);
          }
        }

        else
        {
          sub_10000E798();
          sub_1000D37D4();
          v877 = v2131;
          v878 = v2130;
        }

        sub_100095588();
        sub_100005404(v870);
        if (v623)
        {
          sub_100016724();
          sub_1000C8930(v879);
          sub_1000A3C70();
          sub_100005404(v870);
          if (!v623)
          {
            sub_1000180EC(v870, &qword_100CA6630);
          }
        }

        else
        {
          sub_10002C530();
          sub_1000D37D4();
        }

        sub_100095588();
        v880 = sub_1000162B0();
        sub_10001627C(v880, v881);
        if (v623)
        {
          sub_1000205A4();
          sub_1000C8930(v882);
          sub_1000A3C70();
          sub_100005404(v869);
          if (!v623)
          {
            sub_1000180EC(v869, &qword_100CA6628);
          }
        }

        else
        {
          sub_10000C7FC();
          sub_1000D37D4();
        }

        sub_100095588();
        v883 = sub_1000182B8();
        sub_10001627C(v883, v884);
        if (v623)
        {
          sub_10001922C();
          sub_1000C8930(v885);
          sub_1000A3C70();
          sub_100005404(v878);
          if (!v623)
          {
            sub_1000180EC(v878, &qword_100CA6620);
          }
        }

        else
        {
          sub_1000244D8();
          sub_1000D37D4();
        }

        sub_100095588();
        v886 = sub_100016298();
        sub_10001627C(v886, v887);
        if (v623)
        {
          sub_10003C26C();
          sub_1000C8930(v888);
          sub_1000A3C70();
          sub_100005404(v877);
          if (!v623)
          {
            sub_1000180EC(v877, &qword_100CA6618);
          }
        }

        else
        {
          sub_1000175C4();
          sub_1000D37D4();
        }

        v889 = v2133;
        sub_100095588();
        v890 = sub_1000131C4();
        sub_1000038B4(v890, v891, v2246);
        if (v623)
        {
          sub_10000FA84();
          sub_1000A3C70();
          v892 = sub_1000131C4();
          sub_1000038B4(v892, v893, v2246);
          if (!v623)
          {
            sub_1000180EC(v889, &qword_100CA6610);
          }
        }

        else
        {
          sub_1000693F0();
          sub_100021CEC();
          sub_1000D37D4();
        }

        sub_10001BBB8();
        sub_10019236C();
        sub_1000C8308();
        sub_1000E1540();
        sub_100040C78();
        sub_100003B6C();
        sub_1000113AC();
        v894 = sub_100021CDC();
        sub_10003E038(v894, v895, v2172, v2173, v2174, v2175, v2176, v2177, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960, *(&v1960 + 1), v1961, v1962, v1963, v1964, v1965, v1966, v1967, v1968, v1969, v1970, v1971, v1972, v1973, v1974, v1975);
        sub_1000A4020(v896);

        sub_1000180EC(v2170, &qword_100CA65E8);
        sub_1000180EC(v2200, &qword_100CA6610);
        sub_1000180EC(v2199, &qword_100CA6618);
        sub_1000180EC(v2198, &qword_100CA6620);
        sub_1000180EC(v2197, &qword_100CA6628);
        sub_1000180EC(v2196, &qword_100CA6630);
        sub_1000180EC(v2195, &qword_100CA6638);
        sub_1000180EC(v2194, &qword_100CA6640);
        sub_100025070();
        sub_100154038(v2178, v897);
        sub_1000B9110();
        v898(v2201, v2229);
        sub_100007F9C();
        sub_100154038(v2207, v899);
        goto LABEL_154;
      }

      (*(v707 + 8))(v708, v610);
      sub_100007F9C();
      sub_100154038(v608, v715);
      sub_1000180EC(v592, &unk_100CB2CF0);
      sub_10001E6E0();
      v717 = v710;
      goto LABEL_68;
    }

    sub_100007F9C();
    sub_100154038(v608, v611);
    sub_1000180EC(v609, &qword_100CA65D8);
    v604 = v2232;
  }

  sub_10000FA84();
  v612 = v2224;
  sub_1000A3C70();
  sub_1000A7B5C();
  v613 = v2225;
  sub_1000A3C70();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000054F0();
    sub_100154038(v612, v614);
    v615 = sub_1000AF4CC();
LABEL_43:
    sub_100154038(v615, v616);
    goto LABEL_44;
  }

  v2233 = *v613;
  sub_1000C8244();
  if (v623)
  {
    v617 = [objc_opt_self() currentDevice];
    [v617 userInterfaceIdiom];

    LOBYTE(v617) = *(v612 + SHIDWORD(v2246[3].isa));
    sub_1000054F0();
    sub_100154038(v612, v618);
    if ((v617 & 1) == 0)
    {

LABEL_44:
      v684 = v2219;
      if (qword_100CA26A8 != -1)
      {
        swift_once();
      }

      v685 = type metadata accessor for Logger();
      sub_10000703C(v685, qword_100D90A60);
      sub_10007465C();
      sub_1000A3C70();
      v686 = Logger.logObject.getter();
      v687 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v686, v687))
      {
        v688 = swift_slowAlloc();
        v689 = sub_1000205BC();
        *&__src[0] = v689;
        *v688 = 136315138;
        sub_10029C394(&qword_100CA6668, type metadata accessor for LocationViewAction);
        v690 = dispatch thunk of CustomStringConvertible.description.getter();
        v692 = v684;
        v693 = v592;
        v694 = sub_100078694(v690, v691, __src);

        *(v688 + 4) = v694;
        sub_100037088();
        sub_100154038(v692, v695);
        _os_log_impl(&_mh_execute_header, v686, v687, "Invalid state for component tap; action=%s", v688, 0xCu);
        sub_100006F14(v689);
        sub_100003884();
        sub_100003884();

        v696 = v693;
      }

      else
      {

        sub_100037088();
        sub_100154038(v684, v697);
        v696 = v592;
      }

      sub_1000180EC(v696, &unk_100CB2CF0);
      sub_10001E6E0();
      sub_100154038(v2238, v698);
      goto LABEL_50;
    }
  }

  else
  {
    sub_1000054F0();
    sub_100154038(v612, v680);
  }

  sub_100037774();
  sub_1000A3C70();
  v681 = sub_1000175DC();
  v682 = v2204;
  sub_1000113D0(v681, v683);
  if (v623)
  {

    v616 = type metadata accessor for LocationViewerActiveLocationState;
    v615 = v605;
    goto LABEL_43;
  }

  (*(v604 + 32))(v593, v605, v682);
  sub_100016724();
  v718 = v2166;
  sub_1000A3C70();
  v719 = v2167;
  v720 = v593;
  v721 = v593;
  v722 = v604;
  v723 = v682;
  sub_1007BC308(v720, v2167);
  sub_100154038(v718, type metadata accessor for LocationsState);
  v724 = sub_1000162A4();
  v725 = v2203;
  sub_1000113D0(v724, v726);
  if (v727)
  {
    (*(v722 + 8))(v721, v723);

    sub_1000180EC(v719, &unk_100CE2F20);
    goto LABEL_44;
  }

  v786 = v2190;
  v787 = v2190 + 32;
  v788 = *(v2190 + 32);
  v789 = v2191;
  v788(v2191, v719, v725);
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v790 = type metadata accessor for Logger();
  v791 = sub_10000703C(v790, qword_100D90B68);
  v793 = v786 + 16;
  v792 = *(v786 + 16);
  v794 = v2104;
  (v792)(v2104, v789, v725);
  v2225 = v792;
  (v792)(v2168, v794, v725);
  v2224 = v793;
  v795 = (*(v793 + 64) + 16) & ~*(v793 + 64);
  v2199 = *(v793 + 64);
  v796 = swift_allocObject();
  v2200 = v795;
  v797 = v796;
  v2227 = v796;
  v2202 = v787;
  v2201 = v788;
  v788(v796 + v795, v794, v725);
  v2218 = v791;
  v2230 = Logger.logObject.getter();
  LODWORD(v2226) = static os_log_type_t.default.getter();
  sub_100086518();
  v2208 = swift_allocObject();
  *(v2208 + 16) = 112;
  sub_100086518();
  v798 = swift_allocObject();
  *(v798 + 16) = 8;
  v799 = swift_allocObject();
  sub_1000182C4();
  *(v800 + 16) = v801;
  sub_1000244CC();
  v802 = swift_allocObject();
  *(v802 + 16) = sub_10029C2C0;
  *(v802 + 24) = v799;
  sub_100086518();
  v803 = swift_allocObject();
  *(v803 + 16) = 33;
  sub_100086518();
  v804 = swift_allocObject();
  *(v804 + 16) = 8;
  sub_1000244CC();
  v805 = swift_allocObject();
  *(v805 + 16) = sub_10029C464;
  *(v805 + 24) = v797;
  sub_1000244CC();
  v806 = swift_allocObject();
  v806[2] = sub_10029C2D4;
  v806[3] = v805;
  v2219 = sub_10022C350(&qword_100CA6670);
  inited = swift_initStackObject();
  v2207 = sub_100309F24(inited, 6);
  v808 = v2208;
  *v809 = sub_10029C2B8;
  v809[1] = v808;
  v809[2] = sub_10029C470;
  v809[3] = v798;
  v809[4] = sub_10029C2CC;
  v809[5] = v802;
  v809[6] = sub_10029C470;
  v809[7] = v803;
  v809[8] = sub_10029C470;
  v809[9] = v804;
  v809[10] = sub_10029C2DC;
  v809[11] = v806;
  v2211 = v799;

  if (os_log_type_enabled(v2230, v2226))
  {
    v810 = swift_slowAlloc();
    v2207 = sub_1000205BC();
    sub_1000C848C(v2207);

    *(v810 + 3) = 8;

    sub_1000182C4();
    *(v810 + 4) = v811;

    *(v810 + 12) = 33;

    *(v810 + 13) = 8;

    v812 = v2168;
    v813 = v2203;
    (v2225)(v2074, v2168, v2203);
    v814 = String.init<A>(describing:)();
    v816 = sub_100078694(v814, v815, __src);

    *(v810 + 14) = v816;

    v2227 = *(v2190 + 8);
    v2227(v812, v813);
    sub_1000B7B40(&_mh_execute_header, "TappedComponent for locationModel=%{private,mask.hash}s", v2226);
    sub_100006F14(v2207);
    sub_100003884();
    sub_100003884();
  }

  else
  {

    v2227 = *(v2190 + 8);
    v2227(v2168, v2203);
  }

  v900 = v2105;
  v901 = v2191;
  LocationModel.coalesceLocation.getter();
  v902 = sub_1000162A4();
  v903 = v2229;
  sub_1000038B4(v902, v904, v2229);
  v905 = v2143;
  if (v623)
  {
    sub_1000180EC(v900, &qword_100CA65D8);
    v906 = v2048;
    v907 = v2203;
    v908 = v2225;
    (v2225)(v2048, v901, v2203);
    v909 = sub_100031474();
    (v908)(v909);
    v910 = v2200;
    v911 = swift_allocObject();
    v2201(&v911[v910], v906, v907);
    v2246 = Logger.logObject.getter();
    LODWORD(v2245) = static os_log_type_t.default.getter();
    sub_100086518();
    v912 = swift_allocObject();
    *(v912 + 16) = 112;
    sub_100086518();
    v913 = swift_allocObject();
    *(v913 + 16) = 8;
    v914 = swift_allocObject();
    sub_1000182C4();
    *(v915 + 16) = v916;
    sub_1000244CC();
    v917 = swift_allocObject();
    *(v917 + 16) = sub_10029C468;
    *(v917 + 24) = v914;
    sub_100086518();
    v918 = swift_allocObject();
    *(v918 + 16) = 33;
    sub_100086518();
    v919 = swift_allocObject();
    *(v919 + 16) = 8;
    sub_1000244CC();
    v920 = swift_allocObject();
    *(v920 + 16) = sub_10029C2E4;
    *(v920 + 24) = v911;
    sub_1000244CC();
    v921 = swift_allocObject();
    *(v921 + 16) = sub_10029C46C;
    *(v921 + 24) = v920;
    v922 = swift_initStackObject();
    v2242 = sub_100309F24(v922, 6);
    *v923 = sub_10029C470;
    v923[1] = v912;
    v923[2] = sub_10029C470;
    v923[3] = v913;
    v923[4] = sub_10029C45C;
    v923[5] = v917;
    v923[6] = sub_10029C470;
    v923[7] = v918;
    v923[8] = sub_10029C470;
    v923[9] = v919;
    v923[10] = sub_10029C460;
    v923[11] = v921;
    v2243 = v914;

    v2244 = v911;

    if (os_log_type_enabled(v2246, v2245))
    {
      v924 = swift_slowAlloc();
      v925 = sub_1000205BC();
      *&__src[0] = v925;
      *v924 = 515;
      *(v924 + 2) = 112;

      *(v924 + 3) = 8;

      sub_1000182C4();
      *(v924 + 4) = v926;

      *(v924 + 12) = 33;

      *(v924 + 13) = 8;

      v927 = v2144;
      v928 = v2203;
      (v2225)(v2074, v2144, v2203);
      v929 = String.init<A>(describing:)();
      v931 = sub_100078694(v929, v930, __src);

      *(v924 + 14) = v931;

      v932 = v2227;
      v2227(v927, v928);
      v933 = v2246;
      _os_log_impl(&_mh_execute_header, v2246, v2245, "Failed to find locationModel.coalesceLocation for locationModel=%{private,mask.hash}s", v924, 0x16u);
      sub_100006F14(v925);
      sub_100003884();
      sub_100003884();

      v934 = v2191;
      v935 = v928;
    }

    else
    {

      v1161 = v2203;
      v932 = v2227;
      v2227(v2144, v2203);

      v934 = v2191;
      v935 = v1161;
    }

    v932(v934, v935);
    v1162 = sub_100040E7C();
    v1163(v1162);
    sub_1000180EC(v2240, &unk_100CB2CF0);
    sub_10001E6E0();
    v1165 = v2238;
    goto LABEL_290;
  }

  v936 = v2221;
  v937 = *(v2221 + 32);
  v938 = v2106;
  v937(v2106, v900, v903);
  v939 = *(v936 + 16);
  v940 = v2047;
  v939(v2047, v938, v903);
  v939(v905, v940, v903);
  v941 = (*(v936 + 80) + 16) & ~*(v936 + 80);
  v2226 = swift_allocObject();
  v937(v2226 + v941, v940, v903);
  v2230 = Logger.logObject.getter();
  LODWORD(v2225) = static os_log_type_t.default.getter();
  sub_100086518();
  v942 = swift_allocObject();
  *(v942 + 16) = 112;
  sub_100086518();
  v943 = swift_allocObject();
  *(v943 + 16) = 8;
  v944 = swift_allocObject();
  sub_1000182C4();
  *(v945 + 16) = v946;
  sub_1000244CC();
  v947 = swift_allocObject();
  *(v947 + 16) = sub_10029C468;
  *(v947 + 24) = v944;
  sub_100086518();
  v948 = swift_allocObject();
  *(v948 + 16) = 33;
  sub_100086518();
  v949 = swift_allocObject();
  *(v949 + 16) = 8;
  sub_1000244CC();
  v950 = swift_allocObject();
  v951 = v2226;
  *(v950 + 16) = sub_10029C338;
  *(v950 + 24) = v951;
  sub_1000244CC();
  v952 = swift_allocObject();
  *(v952 + 16) = sub_10029C46C;
  *(v952 + 24) = v950;
  v953 = swift_initStackObject();
  v2219 = sub_100309F24(v953, 6);
  *v954 = sub_10029C470;
  v954[1] = v942;
  v954[2] = sub_10029C470;
  v954[3] = v943;
  v954[4] = sub_10029C45C;
  v954[5] = v947;
  v954[6] = sub_10029C470;
  v954[7] = v948;
  v954[8] = sub_10029C470;
  v954[9] = v949;
  v954[10] = sub_10029C460;
  v954[11] = v952;
  v2224 = v944;

  if (os_log_type_enabled(v2230, v2225))
  {
    v956 = swift_slowAlloc();
    v957 = sub_1000205BC();
    sub_1000C848C(v957);

    *(v956 + 3) = 8;

    sub_1000182C4();
    *(v956 + 4) = v958;

    *(v956 + 12) = 33;

    *(v956 + 13) = 8;

    sub_10029C394(&qword_100CA6678, &type metadata accessor for Location);
    v959 = v2143;
    v960 = v2229;
    v961 = dispatch thunk of CustomStringConvertible.description.getter();
    v963 = v962;
    v947 = sub_100078694(v961, v962, __src);

    *(v956 + 14) = v947;

    sub_10029C488();
    (v947)(v959, v960);
    sub_1000B7B40(&_mh_execute_header, "TappedComponent for location=%{private,mask.hash}s", v2225);
    sub_100006F14(v957);
    sub_100003884();
    sub_100003884();
  }

  else
  {

    sub_10029C488();
    v960 = v2229;
    (v947)(v2143, v2229);
  }

  v1166 = v2106;
  v1167 = v2238;
  v1168 = v2240;
  v1169 = sub_10029147C(v2247, v2106, v2238, v2240, v2250);

  (v947)(v1166, v960);
  v2227(v2191, v2203);
  v1170 = sub_100040E7C();
  v1171(v1170);
  sub_1000180EC(v1168, &unk_100CB2CF0);
  sub_10001E6E0();
  sub_100154038(v1167, v1172);
  v699 = v2237;
  v700 = v2242;
  v701 = v2236;
  if (v1169)
  {
    return v1169;
  }

LABEL_51:
  sub_1000141A4();
  sub_1000E59BC();
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 6u:
    case 7u:
      goto LABEL_283;
    case 2u:
    case 3u:
    case 5u:
      sub_100003B54();
      v703 = v701;
LABEL_53:
      sub_100154038(v703, v702);
      goto LABEL_283;
    case 4u:
      v704 = type metadata accessor for ModalViewState.MapViewModal(0);
      sub_100005404(v701);
      if (v623)
      {
        goto LABEL_282;
      }

      break;
    default:
      sub_100030330();
      sub_1000D37D4();
      sub_10007465C();
      v706 = v2192;
      sub_1000A3C70();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_10022C350(&qword_100CA6658);
          sub_100049614();
          v1029 = v2016;
          sub_1000D37D4();
          v1030 = v2073;
          sub_100051BBC();
          sub_100011394();
          v1031 = v2015;
          sub_1000A3C70();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1000180EC(v1030, &unk_100CB2CF0);
            sub_10001E6E0();
            sub_100154038(v1029, v1032);
            sub_100007F9C();
            sub_100154038(v2209, v1033);
            (*(v2138 + 8))(v1031, v2139);
LABEL_283:
            sub_10000FA84();
            v1287 = v2234;
            sub_1000A3C70();
            sub_1000A7B5C();
            v1288 = v2235;
            sub_1000A3C70();
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v1290 = *v1288;
              sub_1000C8244();
              if (v623)
              {
                v1291 = [objc_opt_self() currentDevice];
                [v1291 userInterfaceIdiom];

                LOBYTE(v1291) = *(v1287 + SHIDWORD(v2246[3].isa));
                sub_1000054F0();
                sub_100154038(v1287, v1292);
                v1294 = v2228;
                if ((v1291 & 1) == 0)
                {
LABEL_291:

                  goto LABEL_292;
                }
              }

              else
              {
                sub_1000054F0();
                sub_100154038(v1287, v1293);
                v1294 = v2228;
              }

              sub_1000141A4();
              sub_1000E59BC();
              sub_1000A3C70();
              v1295 = swift_getEnumCaseMultiPayload();
              v1296 = v2223;
              v1297 = v2222;
              v1298 = v2220;
              switch(v1295)
              {
                case 1:
                case 7:
                  goto LABEL_291;
                case 6:
                  sub_10007465C();
                  sub_1000A3C70();
                  switch(swift_getEnumCaseMultiPayload())
                  {
                    case 1u:
                      v1499 = sub_10022C350(&qword_100CA6658);
                      v2244 = (v2152 + *(v1499 + 64));
                      sub_100049614();
                      sub_1000D37D4();
                      sub_100011394();
                      v1500 = v1961;
                      sub_1000A3C70();
                      v1501 = swift_getEnumCaseMultiPayload();
                      sub_10001E6E0();
                      sub_100154038(v1500, v1502);
                      if (v1501 == 6)
                      {
                        sub_1000161C0(v2206 + 17, v2206[20]);
                        sub_1007381FC(v2247, 0, __src);
                        type metadata accessor for ReportWeatherViewState._Storage();
                        v1503 = swift_allocObject();
                        memcpy((v1503 + 16), __src, 0x60uLL);
                        v1504 = v2165;
                        sub_100021314(v2165);
                        v1505 = v2151;
                        sub_100003934();
                        sub_10001B350(v1506, v1507, v1508, v2214);
                        sub_100003934();
                        sub_10001B350(v1509, v1510, v1511, v2215);
                        v1512 = v2136;
                        v1513 = sub_100071C3C();
                        sub_10001B350(v1513, v1514, v1515, v2212);
                        v1516 = v2137;
                        v1517 = sub_100030348();
                        sub_10001B350(v1517, v1518, v1519, v2216);
                        v1520 = v2125;
                        v1521 = sub_100024058();
                        sub_10001B350(v1521, v1522, v1523, v2246);
                        *v699 = v1503;
                        v1524 = v2245;
                        swift_storeEnumTagMultiPayload();
                        sub_10000E7B0();
                        sub_10001B350(v1525, v1526, v1527, v1524);
                        sub_10029C25C(__src, v2248);

                        sub_100028128();
                        v1950 = v1520;
                        v1951 = v699;
                        v1528 = sub_100088338();
                        v1529 = v1504;
                        v1530 = v2164;
                        v1531 = v2148;
                        v1533 = sub_1000D2C20(v1528, v1532, v1529, v2164, v1505, v2148, v1512, v1516, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                        sub_100032530(v1533);

                        sub_10026AD10(__src);
                        sub_1000180EC(v699, &qword_100CA65E8);
                        sub_1000180EC(v1520, &qword_100CA6610);
                        sub_1000180EC(v1516, &qword_100CA6618);
                        sub_1000180EC(v1512, &qword_100CA6620);
                        sub_1000180EC(v1531, &qword_100CA6628);
                        sub_1000180EC(v1505, &qword_100CA6630);
                        sub_1000180EC(v1530, &qword_100CA6638);
                        sub_1000180EC(v2165, &qword_100CA6640);
                        goto LABEL_330;
                      }

                      sub_100011394();
                      v1649 = v1954;
                      sub_1000A3C70();
                      if (swift_getEnumCaseMultiPayload() == 1)
                      {
                        v1650 = v2138;
                        v1651 = v2139;
                        (*(v2138 + 32))(v1298, v1649, v2139);
                        sub_10004E390();
                        sub_1000A3C70();
                        v1652 = sub_1004B5684();
                        sub_1000227C4();
                        sub_100154038(v1294, v1653);
                        if ((v1652 & 1) == 0)
                        {
                          v1883 = v1294;
                          v1884 = v2246;
                          sub_1000182A0();
                          v2241 = v1885;
                          v1886 = v1298;
                          v1887 = v1950;
                          sub_1000A3C70();
                          sub_10004E390();
                          sub_1000A3C70();
                          sub_10022C350(&qword_100CA6660);
                          v1888 = v2070;
                          v1889 = sub_100016298();
                          sub_10001B350(v1889, v1890, 3, v1891);
                          sub_100999C34(v1883, v1886, v1888, v2071);
                          sub_1000866EC();
                          sub_100154038(v1888, v1892);
                          sub_1000227C4();
                          sub_100154038(v1883, v1893);
                          sub_100024040();
                          v2243 = v1894;
                          sub_100154038(v1887, v1895);
                          sub_100041884(v2165);
                          sub_100003934();
                          sub_10001B350(v1896, v1897, v1898, v2215);
                          sub_100003934();
                          sub_10001B350(v1899, v1900, v1901, v2212);
                          v1902 = v2137;
                          sub_100003934();
                          sub_10001B350(v1903, v1904, v1905, v2216);
                          sub_10000FA84();
                          v1906 = v1992;
                          sub_1000A3C70();
                          v1907 = v1993;
                          v1908 = sub_100071458();
                          v1911 = sub_1000D3CF4(v1908, v1909, v1910, v2242);
                          type metadata accessor for SearchViewState(v1911);
                          v1912 = v2069;
                          v1913 = sub_100071C3C();
                          sub_10001B350(v1913, v1914, v1915, v1916);
                          v1917 = v2068;
                          v1918 = sub_100024058();
                          sub_10001B350(v1918, v1919, v1920, v2217);
                          v1921 = v2067;
                          sub_1000A3C70();
                          v1922 = sub_100007FB4();
                          sub_10001B350(v1922, v1923, v1924, v2149);
                          v1925 = v2125;
                          sub_1000519D4();
                          sub_10081B470();
                          sub_1000180EC(v1921, &qword_100CA65F0);
                          sub_1000180EC(v1917, &qword_100CA65F8);
                          sub_1000180EC(v1912, &qword_100CA6600);
                          sub_1000180EC(v1907, &qword_100CA6608);
                          sub_1000054F0();
                          sub_100154038(v1906, v1926);
                          sub_10000E7B0();
                          v1930 = sub_1000D3CF4(v1927, v1928, v1929, v1884);
                          type metadata accessor for ModalViewState.MapViewModal(v1930);
                          v1931 = v2237;
                          v1932 = sub_100071C3C();
                          sub_10001B350(v1932, v1933, v1934, v1935);
                          sub_1000BAE9C();
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          sub_10001B350(v1936, v1937, v1938, v1906);
                          sub_100028128();
                          v1950 = v1925;
                          v1951 = v1931;
                          v1939 = sub_100088338();
                          v1940 = v2165;
                          v1941 = v2164;
                          v1942 = v2151;
                          v1943 = v2148;
                          v1944 = v2136;
                          v1946 = sub_1000D2C20(v1939, v1945, v2165, v2164, v2151, v2148, v2136, v1902, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                          sub_100032530(v1946);

                          sub_1000180EC(v1931, &qword_100CA65E8);
                          sub_1000180EC(v1925, &qword_100CA6610);
                          sub_1000180EC(v1902, &qword_100CA6618);
                          sub_1000180EC(v1944, &qword_100CA6620);
                          sub_1000180EC(v1943, &qword_100CA6628);
                          sub_1000180EC(v1942, &qword_100CA6630);
                          sub_1000180EC(v1941, &qword_100CA6638);
                          sub_1000180EC(v1940, &qword_100CA6640);
                          sub_100154038(v2071, v2243);
                          (*(v2138 + 8))(v2220, v2139);
                          goto LABEL_330;
                        }

                        (*(v1650 + 8))(v1298, v1651);
                        v1654 = v1651;
                        v1655 = v1650;
                      }

                      else
                      {
                        sub_10001E6E0();
                        sub_100154038(v1649, v1761);
                        v1654 = v2139;
                        v1655 = v2138;
                      }

                      sub_1000182A0();
                      v1762 = *(&v1960 + 1);
                      sub_1000A3C70();
                      sub_100011394();
                      v1763 = v1953;
                      sub_1000A3C70();
                      if (swift_getEnumCaseMultiPayload() == 1)
                      {
                        v1764 = v1951;
                        (*(v1655 + 32))(v1951, v1763, v1654);
                        sub_10004E390();
                        sub_1000A3C70();
                        sub_10022C350(&qword_100CA6660);
                        v1765 = v1655;
                        v1766 = v2070;
                        v1767 = sub_1000162B0();
                        sub_10001B350(v1767, v1768, 3, v1769);
                        sub_100999C34(v1294, v1764, v1766, v2071);
                        sub_1000866EC();
                        sub_100154038(v1766, v1770);
                        sub_1000227C4();
                        sub_100154038(v1294, v1771);
                        (*(v1765 + 8))(v1764, v2139);
                        sub_100024040();
                        sub_100154038(v1762, v1772);
                        sub_100020134();
                        sub_100031474();
                        sub_1000D37D4();
                      }

                      else
                      {
                        sub_10001E6E0();
                        sub_100154038(v1763, v1773);
                      }

                      sub_100041884(v2165);
                      sub_100003934();
                      sub_10001B350(v1774, v1775, v1776, v2215);
                      sub_100003934();
                      sub_10001B350(v1777, v1778, v1779, v2212);
                      v1780 = v2137;
                      sub_100003934();
                      sub_10001B350(v1781, v1782, v1783, v2216);
                      sub_10000FA84();
                      v1784 = v1992;
                      sub_1000A3C70();
                      v1785 = v1993;
                      sub_100003934();
                      v1789 = sub_1000D3CF4(v1786, v1787, v1788, v2242);
                      type metadata accessor for SearchViewState(v1789);
                      v1790 = v2069;
                      v1791 = sub_100071C3C();
                      sub_10001B350(v1791, v1792, v1793, v1794);
                      v1795 = v2068;
                      v1796 = sub_100030348();
                      sub_10001B350(v1796, v1797, v1798, v2217);
                      sub_1000182A0();
                      v1799 = v2067;
                      sub_1000A3C70();
                      sub_10000E7B0();
                      sub_10001B350(v1800, v1801, v1802, v2149);
                      v1803 = v2125;
                      sub_1000519D4();
                      sub_10081B470();
                      sub_1000180EC(v1799, &qword_100CA65F0);
                      sub_1000180EC(v1795, &qword_100CA65F8);
                      sub_1000180EC(v1790, &qword_100CA6600);
                      sub_1000180EC(v1785, &qword_100CA6608);
                      sub_1000054F0();
                      sub_100154038(v1784, v1804);
                      sub_10000E7B0();
                      sub_10001B350(v1805, v1806, v1807, v2246);
                      v1808 = sub_100071458();
                      sub_10001B350(v1808, v1809, v1810, v2245);
                      sub_100028128();
                      v1950 = v1803;
                      v1951 = v699;
                      v1811 = sub_100088338();
                      v1812 = v2165;
                      v1813 = v2164;
                      v1814 = v2151;
                      v1815 = v2148;
                      v1816 = v2136;
                      v1818 = sub_1000D2C20(v1811, v1817, v2165, v2164, v2151, v2148, v2136, v1780, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                      sub_100032530(v1818);

                      sub_1000180EC(v699, &qword_100CA65E8);
                      sub_1000180EC(v1803, &qword_100CA6610);
                      sub_1000180EC(v1780, &qword_100CA6618);
                      sub_1000180EC(v1816, &qword_100CA6620);
                      sub_1000180EC(v1815, &qword_100CA6628);
                      sub_1000180EC(v1814, &qword_100CA6630);
                      sub_1000180EC(v1813, &qword_100CA6638);
                      sub_1000180EC(v1812, &qword_100CA6640);
                      sub_100024040();
                      sub_100154038(*(&v1960 + 1), v1819);
LABEL_330:
                      sub_10001E6E0();
                      sub_100154038(v2013, v1947);
                      v1759 = &unk_100CB2CF0;
                      v1760 = v2244;
                      break;
                    case 2u:
                      v1441 = sub_10022C350(&qword_100CA6648);
                      sub_1000C8FA4(v2152 + *(v1441 + 48));
                      sub_1000D37D4();
                      sub_1001924A4();
                      v1442 = *(&v1969 + 1);
                      sub_1000A3C70();
                      v1443 = *(sub_10022C350(&qword_100CA6650) + 48);
                      v1444 = v699;
                      v1445 = v2221;
                      v1446 = v2007;
                      v1447 = v2229;
                      (*(v2221 + 32))(v2007, v1442, v2229);
                      v1448 = v2011;
                      (*(v2140 + 32))(v2011, v1442 + v1443, v2141);
                      sub_100041884(v2165);
                      sub_100003934();
                      sub_10001B350(v1449, v1450, v1451, v2215);
                      v1452 = v2136;
                      v1453 = sub_100024058();
                      sub_10001B350(v1453, v1454, v1455, v2212);
                      v1456 = v2137;
                      v1457 = sub_100005508();
                      sub_10001B350(v1457, v1458, v1459, v2216);
                      v1460 = v2125;
                      v1461 = sub_100071C3C();
                      sub_10001B350(v1461, v1462, v1463, v2246);
                      (*(v1445 + 16))(v1444, v1446, v1447);
                      v1464 = v2072;
                      (*(v2140 + 16))(v1444 + *(v2072 + 20), v1448, v2141);
                      sub_100171190(v1444 + *(v1464 + 24));
                      type metadata accessor for ModalViewState.LocationDetailModal(0);
                      swift_storeEnumTagMultiPayload();
                      v1465 = v2245;
                      swift_storeEnumTagMultiPayload();
                      v1466 = sub_100007FB4();
                      sub_10001B350(v1466, v1467, v1468, v1465);
                      sub_100028128();
                      v1950 = v1460;
                      v1951 = v1444;
                      v1469 = sub_100088338();
                      v1470 = v2165;
                      v1471 = v2164;
                      v1472 = v2151;
                      v1473 = v2148;
                      v1475 = sub_1000D2C20(v1469, v1474, v2165, v2164, v2151, v2148, v1452, v1456, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                      sub_100032530(v1475);

                      sub_1000180EC(v1444, &qword_100CA65E8);
                      sub_1000180EC(v1460, &qword_100CA6610);
                      sub_1000180EC(v1456, &qword_100CA6618);
                      sub_1000180EC(v1452, &qword_100CA6620);
                      sub_1000180EC(v1473, &qword_100CA6628);
                      sub_1000180EC(v1472, &qword_100CA6630);
                      sub_1000180EC(v1471, &qword_100CA6638);
                      sub_1000180EC(v1470, &qword_100CA6640);
                      (*(v2140 + 8))(v2011, v2141);
                      sub_1000B9110();
                      v1476(v2007, v2229);
                      sub_1000C86CC();
                      v1078 = v2010;
                      goto LABEL_155;
                    case 3u:
                      sub_100003934();
                      sub_10001B350(v1477, v1478, v1479, v2210);
                      sub_100003934();
                      sub_10001B350(v1480, v1481, v1482, v2213);
                      sub_100003934();
                      sub_10001B350(v1483, v1484, v1485, v2214);
                      sub_100003934();
                      sub_10001B350(v1486, v1487, v1488, v2215);
                      sub_100003934();
                      sub_10001B350(v1489, v1490, v1491, v2212);
                      sub_100003934();
                      sub_10001B350(v1492, v1493, v1494, v2216);
                      sub_10000FA84();
                      sub_1000A3C70();
                      v1495 = sub_100071C3C();
                      sub_10001B350(v1495, v1496, v1497, active);
                      v1498 = v1971;
                      sub_100095588();
                      sub_100003A40(v1498);
                      if (v623)
                      {
                        sub_100037774();
                        sub_1000A3C70();
                        sub_100003A40(v1498);
                        if (!v623)
                        {
                          sub_1000180EC(v1498, &qword_100CA65B8);
                        }
                      }

                      else
                      {
                        sub_100044D2C();
                        sub_1000D37D4();
                      }

                      sub_100044D2C();
                      v1573 = v1969;
                      sub_1000D37D4();
                      v1574 = *(v1290 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
                      v1575 = *(v1290 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
                      v1576 = *(v1290 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
                      v1577 = *(v1290 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
                      type metadata accessor for LocationViewerViewState._Storage(0);
                      sub_100003B6C();
                      v1578 = sub_10003DDB8(v1573, 0, v1574, v1577, v1575, v1576);
                      sub_1000180EC(v2009, &qword_100CA65B8);
                      v1579 = v1965;
                      *v1965 = v1578;
                      swift_storeEnumTagMultiPayload();
                      sub_10000E7B0();
                      v1583 = sub_1000D3CF4(v1580, v1581, v1582, v700);
                      type metadata accessor for SearchViewState(v1583);
                      v1584 = v2069;
                      v1585 = sub_100030348();
                      sub_10001B350(v1585, v1586, v1587, v1588);
                      v1589 = v2068;
                      v1590 = sub_100024058();
                      sub_10001B350(v1590, v1591, v1592, v2217);
                      v1593 = v2067;
                      v1594 = sub_100071458();
                      sub_10001B350(v1594, v1595, v1596, v2149);
                      v1597 = v1964;
                      sub_1000519D4();
                      v1598 = v2005;
                      sub_10081B470();
                      sub_1000180EC(v1593, &qword_100CA65F0);
                      sub_1000180EC(v1589, &qword_100CA65F8);
                      sub_1000180EC(v1584, &qword_100CA6600);
                      sub_1000180EC(v1579, &qword_100CA6608);
                      sub_1000054F0();
                      sub_100154038(v1598, v1599);
                      sub_10000E7B0();
                      sub_10001B350(v1600, v1601, v1602, v2246);
                      v1603 = v2237;
                      v1604 = sub_100005508();
                      sub_10001B350(v1604, v1605, v1606, v2245);
                      sub_100028128();
                      v1950 = v1597;
                      v1951 = v1603;
                      v1607 = sub_100088338();
                      v1534 = v1996;
                      v1608 = v1998;
                      v1609 = v2000;
                      v1611 = v2002;
                      v1610 = v2003;
                      v1612 = v2004;
                      v1614 = sub_1000D2C20(v1607, v1613, v1996, v1998, v2000, v2002, v2003, v2004, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                      sub_100032530(v1614);

                      sub_1000180EC(v1603, &qword_100CA65E8);
                      sub_1000180EC(v1597, &qword_100CA6610);
                      sub_1000180EC(v1612, &qword_100CA6618);
                      sub_1000180EC(v1610, &qword_100CA6620);
                      sub_1000180EC(v1611, &qword_100CA6628);
                      sub_1000180EC(v1609, &qword_100CA6630);
                      v1567 = v1608;
                      goto LABEL_315;
                    case 4u:
                      LODWORD(v2240) = 1;
                      sub_100021314(v2165);
                      v1328 = v2151;
                      sub_100003934();
                      sub_10001B350(v1329, v1330, v1331, v2214);
                      v1332 = v2148;
                      v1333 = sub_100024058();
                      sub_10001B350(v1333, v1334, v1335, v2215);
                      v1336 = v2247;
                      v2244 = (v2247 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
                      sub_10001922C();
                      sub_1000A3C70();
                      v1337 = sub_100071C3C();
                      sub_10001B350(v1337, v1338, v1339, v2046);
                      sub_10012CC38();
                      v1340 = v2136;
                      sub_1000D3CD0(2, 0, 2, v2136, v1950, BYTE1(v1950), BYTE2(v1950), BYTE3(v1950), BYTE4(v1950), BYTE5(v1950), BYTE6(v1950));
                      sub_1000180EC(v1296, &unk_100CB2CF0);
                      sub_10003A0E4();
                      sub_100154038(v1297, v1341);
                      sub_10000E7B0();
                      v1342 = v2212;
                      sub_10001B350(v1343, v1344, v1345, v2212);
                      v1346 = v2137;
                      v1347 = sub_100071C3C();
                      sub_10001B350(v1347, v1348, v1349, v2216);
                      v1350 = v2125;
                      v1351 = sub_100005508();
                      sub_10001B350(v1351, v1352, v1353, v2246);
                      v1354 = sub_100071458();
                      sub_10001B350(v1354, v1355, v1356, v2245);
                      v1950 = v1336;
                      v1357 = sub_100088338();
                      v1359 = sub_1000D2C20(v1357, v1358, v2165, v2164, v1328, v1332, v1340, v1346, v1350, v699, 0, 0, 0, 0, 0, 0, 0, 0, v1950);
                      v1360 = v699;
                      v1361 = v2244;
                      sub_1000180EC(v1360, &qword_100CA65E8);
                      sub_1000180EC(v1350, &qword_100CA6610);
                      sub_1000180EC(v1346, &qword_100CA6618);
                      sub_1000180EC(v1340, &qword_100CA6620);
                      sub_1000180EC(v1332, &qword_100CA6628);
                      v1362 = v2242;
                      sub_1000180EC(v1328, &qword_100CA6630);
                      sub_1000180EC(v2164, &qword_100CA6638);
                      sub_1000180EC(v2165, &qword_100CA6640);
                      sub_1000161C0(v2206 + 12, v2206[15]);
                      sub_10000FA84();
                      v1363 = v1974;
                      sub_1000A3C70();
                      v1364 = v1359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
                      swift_beginAccess();
                      v1365 = v1364[1];
                      v1366 = *(v1359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
                      v1367 = v1342[16];
                      v1368 = *(v1361 + v1342[15]);
                      v2243 = v1359;
                      v1369 = *(v1359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1342[18]);
                      v1370 = v1364[2];
                      LOBYTE(v1367) = *(v1359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1367);
                      v1371 = *(v1359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1342[17]);
                      v1372 = v1973;
                      *(v1363 + v1973[5]) = 0;
                      *(v1363 + v1372[6]) = v1365;
                      *(v1363 + v1372[7]) = v1366;
                      *(v1363 + v1372[8]) = v1370;
                      *(v1363 + v1372[9]) = v1368;
                      *(v1363 + v1372[10]) = v1369;
                      *(v1363 + v1372[11]) = v1367;
                      *(v1363 + v1372[12]) = v1371;
                      v1373 = sub_1007274D0(v1363);
                      sub_100154038(v1363, type metadata accessor for NotificationsOptInInput);
                      v1374 = v2217;
                      switch(v1373)
                      {
                        case 4u:
                          goto LABEL_303;
                        case 3u:
                          v1820 = v2165;
                          sub_100021314(v2165);
                          v1821 = v2151;
                          sub_100003934();
                          sub_10001B350(v1822, v1823, v1824, v2214);
                          v1825 = v2148;
                          v1826 = sub_100030348();
                          sub_10001B350(v1826, v1827, v1828, v2215);
                          v1829 = v2136;
                          sub_100003934();
                          sub_10001B350(v1830, v1831, v1832, v2212);
                          v1833 = v2137;
                          v1834 = sub_100071458();
                          sub_10001B350(v1834, v1835, v1836, v2216);
                          v1837 = v2125;
                          v1838 = sub_100024058();
                          sub_10001B350(v1838, v1839, v1840, v2246);
                          v1841 = v2237;
                          *v2237 = 0;
                          sub_1000BAE9C();
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          sub_10001B350(v1842, v1843, v1844, v1373);
                          sub_100028128();
                          v1952 = v1837;
                          v1953 = v1841;
                          v1845 = sub_100088338();
                          v1846 = v2164;
                          v1848 = sub_1000D2C20(v1845, v1847, v1820, v2164, v1821, v1825, v1829, v1833, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960, *(&v1960 + 1), v1961);
                          sub_100032530(v1848);

                          sub_1000180EC(v1841, &qword_100CA65E8);
                          sub_1000180EC(v1837, &qword_100CA6610);
                          sub_1000180EC(v1833, &qword_100CA6618);
                          sub_1000180EC(v1829, &qword_100CA6620);
                          sub_1000180EC(v1825, &qword_100CA6628);
                          sub_1000180EC(v1821, &qword_100CA6630);
                          sub_1000180EC(v1846, &qword_100CA6638);
                          v1759 = &qword_100CA6640;
                          v1760 = v1820;
                          break;
                        case 5u:
                          LODWORD(v2240) = 2;
                          v1342 = v2212;
LABEL_303:
                          sub_100003934();
                          sub_10001B350(v1375, v1376, v1377, v2210);
                          sub_100003934();
                          sub_10001B350(v1378, v1379, v1380, v2213);
                          sub_100003934();
                          sub_10001B350(v1381, v1382, v1383, v2214);
                          sub_100003934();
                          sub_10001B350(v1384, v1385, v1386, v2215);
                          sub_10001922C();
                          v1387 = v2222;
                          sub_1000A3C70();
                          v1388 = v2223;
                          v1389 = sub_100071C3C();
                          sub_10001B350(v1389, v1390, v1391, v2046);
                          sub_10012CC38();
                          v1392 = v1955;
                          sub_1000D3CD0(2, 0, 0, v1955, v1952, BYTE1(v1952), BYTE2(v1952), BYTE3(v1952), BYTE4(v1952), BYTE5(v1952), BYTE6(v1952));
                          sub_1000180EC(v1388, &unk_100CB2CF0);
                          sub_10003A0E4();
                          sub_100154038(v1387, v1393);
                          sub_10000E7B0();
                          sub_10001B350(v1394, v1395, v1396, v1342);
                          sub_100003934();
                          sub_10001B350(v1397, v1398, v1399, v2216);
                          sub_10000FA84();
                          v1400 = v1957;
                          sub_1000A3C70();
                          v1401 = v1959;
                          v1402 = sub_100071C3C();
                          sub_10001B350(v1402, v1403, v1404, active);
                          v1405 = sub_10089E844(v1401, v2240, 2, 4, 2, 3, v1290);
                          sub_1000180EC(v1401, &qword_100CA65B8);
                          v1406 = v1958;
                          *v1958 = v1405;
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          v1410 = sub_1000D3CF4(v1407, v1408, v1409, v1362);
                          type metadata accessor for SearchViewState(v1410);
                          v1411 = v2069;
                          v1412 = sub_100071C3C();
                          sub_10001B350(v1412, v1413, v1414, v1415);
                          v1416 = v2068;
                          v1417 = sub_100024058();
                          sub_10001B350(v1417, v1418, v1419, v1374);
                          v1420 = v2067;
                          sub_100003934();
                          sub_10001B350(v1421, v1422, v1423, v2149);
                          v1424 = v1956;
                          sub_1000519D4();
                          sub_10081B470();
                          sub_1000180EC(v1420, &qword_100CA65F0);
                          sub_1000180EC(v1416, &qword_100CA65F8);
                          sub_1000180EC(v1411, &qword_100CA6600);
                          sub_1000180EC(v1406, &qword_100CA6608);
                          sub_1000054F0();
                          sub_100154038(v1400, v1425);
                          sub_10000E7B0();
                          sub_10001B350(v1426, v1427, v1428, v2246);
                          v1429 = v2237;
                          v1430 = sub_100005508();
                          sub_10001B350(v1430, v1431, v1432, v2245);
                          sub_100028128();
                          v1954 = v1424;
                          v1955 = v1429;
                          v1433 = sub_100088338();
                          v1434 = v1976;
                          v1435 = v1977;
                          v1436 = v1978;
                          v1437 = v1979;
                          v1438 = v1980;
                          v1440 = sub_1000D2C20(v1433, v1439, v1976, v1977, v1978, v1979, v1392, v1980, v1954, v1955, v1956, v1957, v1958, v1959, v1960, *(&v1960 + 1), v1961, v1962, v1963);
                          sub_100032530(v1440);

                          sub_1000180EC(v1429, &qword_100CA65E8);
                          sub_1000180EC(v1424, &qword_100CA6610);
                          sub_1000180EC(v1438, &qword_100CA6618);
                          sub_1000180EC(v1392, &qword_100CA6620);
                          sub_1000180EC(v1437, &qword_100CA6628);
                          sub_1000180EC(v1436, &qword_100CA6630);
                          sub_1000180EC(v1435, &qword_100CA6638);
                          v1759 = &qword_100CA6640;
                          v1760 = v1434;
                          break;
                        default:
                          type metadata accessor for NotificationsOptInViewState._Storage();
                          v1849 = swift_allocObject();
                          *(v1849 + 16) = v1373;
                          *(v1849 + 18) = BYTE2(v1373) & 1;
                          *(v1849 + 21) = BYTE5(v1373);
                          *(v1849 + 19) = v1373 >> 24;
                          *(v1849 + 22) = BYTE6(v1373) & 1;
                          v1850 = v2165;
                          sub_100041884(v2165);
                          v1851 = v2148;
                          sub_100003934();
                          sub_10001B350(v1852, v1853, v1854, v2215);
                          sub_10001922C();
                          v1855 = v2222;
                          sub_1000A3C70();
                          v1856 = v2223;
                          v1857 = sub_100071C3C();
                          sub_10001B350(v1857, v1858, v1859, v2046);
                          sub_10012CC38();
                          v1860 = v2136;
                          sub_1000D3CD0(2, 0, 0, v2136, v1952, BYTE1(v1952), BYTE2(v1952), BYTE3(v1952), BYTE4(v1952), BYTE5(v1952), BYTE6(v1952));
                          sub_1000180EC(v1856, &unk_100CB2CF0);
                          sub_10003A0E4();
                          sub_100154038(v1855, v1861);
                          v1862 = sub_100007FB4();
                          sub_10001B350(v1862, v1863, v1864, v2212);
                          v1865 = v2137;
                          sub_100003934();
                          sub_10001B350(v1866, v1867, v1868, v2216);
                          v1869 = v2125;
                          v1870 = sub_100071458();
                          sub_10001B350(v1870, v1871, v1872, v2246);
                          v1873 = v2237;
                          *v2237 = v1849;
                          sub_1000BAE9C();
                          swift_storeEnumTagMultiPayload();
                          sub_10000E7B0();
                          sub_10001B350(v1874, v1875, v1876, v1855);

                          sub_100028128();
                          v1954 = v1869;
                          v1955 = v1873;
                          v1877 = sub_100088338();
                          v1878 = v1850;
                          v1879 = v2164;
                          v1880 = v2151;
                          v1882 = sub_1000D2C20(v1877, v1881, v1878, v2164, v2151, v1851, v1860, v1865, v1954, v1955, v1956, v1957, v1958, v1959, v1960, *(&v1960 + 1), v1961, v1962, v1963);
                          sub_100032530(v1882);

                          sub_1000180EC(v1873, &qword_100CA65E8);
                          sub_1000180EC(v1869, &qword_100CA6610);
                          sub_1000180EC(v1865, &qword_100CA6618);
                          sub_1000180EC(v1860, &qword_100CA6620);
                          sub_1000180EC(v1851, &qword_100CA6628);
                          sub_1000180EC(v1880, &qword_100CA6630);
                          sub_1000180EC(v1879, &qword_100CA6638);
                          v1759 = &qword_100CA6640;
                          v1760 = v2165;
                          break;
                      }

                      goto LABEL_331;
                    case 5u:
                      v1534 = v2165;
                      sub_100003934();
                      sub_10001B350(v1535, v1536, v1537, v2210);
                      v1538 = v2164;
                      sub_1000B9858(v2164);
                      v1539 = v2148;
                      v1540 = sub_100030348();
                      sub_10001B350(v1540, v1541, v1542, v2215);
                      v1543 = v2136;
                      v1544 = sub_100024058();
                      sub_10001B350(v1544, v1545, v1546, v2212);
                      v1547 = v2137;
                      v1548 = sub_100071C3C();
                      sub_10001B350(v1548, v1549, v1550, v2216);
                      v1551 = v2125;
                      v1552 = sub_100005508();
                      sub_10001B350(v1552, v1553, v1554, v2246);
                      *v699 = 0;
                      v1555 = v2245;
                      swift_storeEnumTagMultiPayload();
                      sub_10000E7B0();
                      sub_10001B350(v1556, v1557, v1558, v1555);
                      sub_100028128();
                      v1950 = v1551;
                      v1951 = v699;
                      v1559 = sub_100088338();
                      v1566 = sub_1000301FC(v1559, v1560, v1534, v1561, v1562, v1563, v1564, v1565, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                      sub_100032530(v1566);

                      sub_1000180EC(v699, &qword_100CA65E8);
                      sub_1000180EC(v1551, &qword_100CA6610);
                      sub_1000180EC(v1547, &qword_100CA6618);
                      sub_1000180EC(v1543, &qword_100CA6620);
                      sub_1000180EC(v1539, &qword_100CA6628);
                      sub_1000180EC(v1555, &qword_100CA6630);
                      v1567 = v1538;
LABEL_315:
                      sub_1000180EC(v1567, &qword_100CA6638);
                      v1759 = &qword_100CA6640;
                      v1760 = v1534;
                      goto LABEL_331;
                    case 6u:
                      sub_10000FA84();
                      v1568 = v1962;
                      sub_1000A3C70();
                      v1569 = sub_10081B398();
                      sub_1000054F0();
                      sub_100154038(v1568, v1570);
                      if (v1569)
                      {
                        v1571 = *(v1569 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);

                        v1572 = v1571 ^ 1;
                      }

                      else
                      {
                        v1572 = 1;
                      }

                      sub_100041884(v2165);
                      sub_100003934();
                      sub_10001B350(v1656, v1657, v1658, v2215);
                      sub_100003934();
                      sub_10001B350(v1659, v1660, v1661, v2212);
                      sub_100003934();
                      sub_10001B350(v1662, v1663, v1664, v2216);
                      sub_10000FA84();
                      v1665 = v1992;
                      sub_1000A3C70();
                      v1666 = v1970;
                      v1667 = sub_100071C3C();
                      sub_10001B350(v1667, v1668, v1669, active);
                      v1670 = sub_10089E844(v1666, 3, 2, 4, v1572 & 1, 3, v1290);
                      sub_1000180EC(v1666, &qword_100CA65B8);
                      v1671 = v1993;
                      *v1993 = v1670;
                      v1672 = v2242;
                      swift_storeEnumTagMultiPayload();
                      sub_10000E7B0();
                      v1676 = sub_1000D3CF4(v1673, v1674, v1675, v1672);
                      type metadata accessor for SearchViewState(v1676);
                      v1677 = v2069;
                      sub_100003934();
                      sub_10001B350(v1678, v1679, v1680, v1681);
                      v1682 = v2068;
                      v1683 = sub_100030348();
                      sub_10001B350(v1683, v1684, v1685, v2217);
                      v1686 = v2067;
                      v1687 = sub_100071C3C();
                      sub_10001B350(v1687, v1688, v1689, v2149);
                      v1690 = v2125;
                      sub_1000519D4();
                      sub_10081B470();
                      sub_1000180EC(v1686, &qword_100CA65F0);
                      sub_1000180EC(v1682, &qword_100CA65F8);
                      sub_1000180EC(v1677, &qword_100CA6600);
                      sub_1000180EC(v1671, &qword_100CA6608);
                      sub_1000054F0();
                      sub_100154038(v1665, v1691);
                      sub_10000E7B0();
                      sub_10001B350(v1692, v1693, v1694, v2246);
                      v1695 = sub_100071458();
                      sub_10001B350(v1695, v1696, v1697, v2245);
                      sub_100028128();
                      v1950 = v1690;
                      v1951 = v699;
                      v1698 = sub_100088338();
                      v1699 = v2165;
                      v1700 = v2164;
                      v1701 = v2151;
                      v1702 = v2148;
                      v1703 = v2136;
                      v1704 = v2137;
                      v1706 = sub_1000D2C20(v1698, v1705, v2165, v2164, v2151, v2148, v2136, v2137, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                      sub_100032530(v1706);

                      sub_1000180EC(v699, &qword_100CA65E8);
                      sub_1000180EC(v1690, &qword_100CA6610);
                      sub_1000180EC(v1704, &qword_100CA6618);
                      sub_1000180EC(v1703, &qword_100CA6620);
                      sub_1000180EC(v1702, &qword_100CA6628);
                      sub_1000180EC(v1701, &qword_100CA6630);
                      sub_1000180EC(v1700, &qword_100CA6638);
                      v1759 = &qword_100CA6640;
                      v1760 = v1699;
                      goto LABEL_331;
                    default:
                      (*(v2221 + 32))(v2008, v2152, v2229);
                      v2248[0] = *(v2247 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + 8);

                      v1300 = Location.id.getter();
                      sub_1006A0DC8(__src, v1300, v1301);

                      sub_100003934();
                      sub_10001B350(v1302, v1303, v1304, v2210);
                      sub_100003934();
                      sub_10001B350(v1305, v1306, v1307, v2213);
                      sub_100003934();
                      sub_10001B350(v1308, v1309, v1310, v2214);
                      sub_100003934();
                      sub_10001B350(v1311, v1312, v1313, v2215);
                      sub_10001922C();
                      v1314 = v1966;
                      sub_1000A3C70();
                      v1315 = v2248[0];
                      v1316 = sub_100005508();
                      v1317 = v2046;
                      sub_10001B350(v1316, v1318, v1319, v2046);
                      v1320 = *v1314;
                      LODWORD(v2244) = v1314[16];
                      LODWORD(v2243) = v1314[17];
                      LODWORD(v2242) = v1314[18];
                      LODWORD(v2241) = v1314[19];
                      LODWORD(v2240) = v1314[20];
                      v1321 = v1967;
                      sub_100095588();
                      v1322 = sub_1000162A4();
                      sub_1000038B4(v1322, v1323, v1317);
                      if (v623)
                      {
                        v1616 = v2212;
                        v1615 = v1972;
                        (*(v1972 + 16))(v2012, &v1314[v2212[11]], v1317);
                        v1324 = sub_1000162A4();
                        v1326 = v1317;
                        v1327 = sub_100024D10(v1324, v1325, v1317);

                        v1617 = v1326;
                        v1618 = v1315;
                        if (v1327 != 1)
                        {
                          sub_1000180EC(v1321, &unk_100CB2CF0);
                          v1618 = v1315;
                          v1617 = v1326;
                        }
                      }

                      else
                      {
                        v1615 = v1972;
                        (*(v1972 + 32))(v2012, v1321, v1317);

                        v1616 = v2212;
                        v1617 = v1317;
                        v1618 = v1315;
                      }

                      v1619 = v1616[11];
                      LODWORD(v2239) = v1314[v1616[12]];
                      v1620 = v1314[v1616[13]];
                      LODWORD(v2238) = v1314[v1616[14]];
                      v1621 = v1616[16];
                      LODWORD(v2235) = v1314[v1616[15]];
                      LODWORD(v2236) = v1314[v1621];
                      v1622 = v1963;
                      *v1963 = v1320;
                      v1623 = v1314[v1616[17]];
                      v1624 = v1314[v1616[18]];
                      *(v1622 + 1) = v1618;
                      v1622[16] = v2244;
                      v1622[17] = v2243;
                      v1622[18] = v2242;
                      v1622[19] = v2241;
                      v1622[20] = v2240;
                      (*(v1615 + 32))(&v1622[v1619], v2012, v1617);

                      v1622[v1616[12]] = v2239;
                      v1622[v1616[13]] = v1620;
                      v1622[v1616[14]] = v2238;
                      v1622[v1616[15]] = v2235;
                      v1622[v1616[16]] = v2236;
                      v1622[v1616[17]] = v1623;
                      v1622[v1616[18]] = v1624;
                      sub_1000180EC(v2006, &unk_100CB2CF0);
                      sub_10003A0E4();
                      sub_100154038(v1314, v1625);
                      v1626 = sub_100007FB4();
                      sub_10001B350(v1626, v1627, v1628, v1616);
                      v1629 = v2137;
                      v1630 = sub_100024058();
                      sub_10001B350(v1630, v1631, v1632, v2216);
                      v1633 = v2125;
                      v1634 = sub_100071C3C();
                      sub_10001B350(v1634, v1635, v1636, v2246);
                      v1637 = v2237;
                      v1638 = sub_100005508();
                      sub_10001B350(v1638, v1639, v1640, v2245);
                      sub_100028128();
                      v1950 = v1633;
                      v1951 = v1637;
                      v1641 = sub_100088338();
                      v1642 = v1995;
                      v1643 = v1997;
                      v1644 = v1999;
                      v1645 = v2001;
                      v1647 = sub_1000D2C20(v1641, v1646, v1995, v1997, v1999, v2001, v1622, v1629, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
                      sub_100032530(v1647);

                      sub_1000180EC(v1637, &qword_100CA65E8);
                      sub_1000180EC(v1633, &qword_100CA6610);
                      sub_1000180EC(v1629, &qword_100CA6618);
                      sub_1000180EC(v1622, &qword_100CA6620);
                      sub_1000180EC(v1645, &qword_100CA6628);
                      sub_1000180EC(v1644, &qword_100CA6630);
                      sub_1000180EC(v1643, &qword_100CA6638);
                      sub_1000180EC(v1642, &qword_100CA6640);
                      sub_1000B9110();
                      v1648(v2008, v2229);
                      return v2247;
                  }

                  goto LABEL_331;
                default:

                  sub_100003B54();
                  v1165 = v2231;
                  goto LABEL_290;
              }
            }

            sub_1000054F0();
            sub_100154038(v1287, v1289);
            v1165 = sub_1000AF4CC();
LABEL_290:
            sub_100154038(v1165, v1164);
LABEL_292:

            return v2247;
          }

          sub_10001E6E0();
          v2244 = v1202;
          sub_100154038(v1031, v1203);
          v1204 = v2209;
          sub_100299588(v2036);
          sub_100003934();
          sub_10001B350(v1205, v1206, v1207, v2210);
          sub_100003934();
          sub_10001B350(v1208, v1209, v1210, v2213);
          sub_100003934();
          sub_10001B350(v1211, v1212, v1213, v2214);
          sub_100003934();
          sub_10001B350(v1214, v1215, v1216, v2215);
          sub_100003934();
          sub_10001B350(v1217, v1218, v1219, v2212);
          sub_100003934();
          sub_10001B350(v1220, v1221, v1222, v2216);
          sub_100003934();
          sub_1000D3CF4(v1223, v1224, v1225, v2246);
          type metadata accessor for PreviewLocation();
          v1226 = v2189;
          v1227 = sub_100071458();
          sub_10001B350(v1227, v1228, v1229, v1230);
          sub_10002FD78();
          v1231 = v2187;
          sub_1000A3C70();
          sub_10000E7B0();
          sub_1000D3CF4(v1232, v1233, v1234, v2205);
          type metadata accessor for SelectedSearchResult();
          v1235 = v2188;
          v1236 = sub_100030348();
          sub_10001B350(v1236, v1237, v1238, v1239);
          v1240 = v1988;
          sub_10043DB64(v1226, v1231, v1235, v1988);
          sub_1000180EC(v1235, &qword_100CA65C0);
          sub_1000180EC(v1231, &qword_100CA65D0);
          sub_1000180EC(v1226, &qword_100CA65C8);
          sub_100025070();
          sub_100154038(v2036, v1241);
          sub_1000180EC(v2073, &unk_100CB2CF0);
          sub_100154038(v1029, v2244);
          sub_100007F9C();
          sub_100154038(v1204, v1242);
          sub_100040D78();
          sub_10000E7B0();
          sub_10001B350(v1243, v1244, v1245, v1226);
          sub_1000141A4();
          sub_1000E59BC();
          v1246 = v1991;
          sub_1000A3C70();
          v1247 = v1989;
          sub_100051BBC();
          v1248 = sub_1000131C4();
          sub_1000038B4(v1248, v1249, v1226);
          if (v623)
          {
            sub_1000180EC(v1247, &qword_100CA65E8);
          }

          else
          {
            sub_100003B54();
            sub_100154038(v1246, v1254);
            sub_10001BBB8();
            sub_100021CEC();
            sub_1000D37D4();
          }

          v1256 = v1984;
          v1255 = v1985;
          v1257 = v1981;
          v1258 = v1982;
          sub_10001BBB8();
          sub_1000D37D4();
          sub_10029C474();
          sub_100051BBC();
          v1259 = sub_1000182B8();
          v1260 = v2210;
          sub_1000038B4(v1259, v1261, v2210);
          v2245 = v1240;
          if (v623)
          {
            sub_10003145C();
            sub_1000C8930(v1262);
            sub_1000A3C70();
            v1263 = sub_1000182B8();
            v1265 = sub_100024D10(v1263, v1264, v1260);

            if (v1265 != 1)
            {
              sub_1000180EC(v1257, &qword_100CA6640);
            }
          }

          else
          {
            sub_100051D04();
            sub_1000D37D4();
          }

          sub_100051BBC();
          sub_100003A40(v1258);
          if (v623)
          {
            v1266 = v1258;
            sub_1000887FC();
            sub_100037964();
            sub_1000A3C70();
            sub_100003A40(v1258);
            v1267 = v1990;
            v1268 = v1983;
            if (!v623)
            {
              sub_1000180EC(v1266, &qword_100CA6638);
            }
          }

          else
          {
            sub_10000E798();
            sub_1000D37D4();
            v1267 = v1990;
            v1268 = v1983;
          }

          sub_100051BBC();
          sub_100005404(v1268);
          if (v623)
          {
            sub_100016724();
            sub_1000C8930(v1269);
            sub_1000A3C70();
            sub_100005404(v1268);
            if (!v623)
            {
              sub_1000180EC(v1268, &qword_100CA6630);
            }
          }

          else
          {
            sub_10002C530();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1270 = sub_1000162B0();
          sub_10001627C(v1270, v1271);
          if (v623)
          {
            sub_1000205A4();
            sub_1000C8930(v1272);
            sub_1000A3C70();
            sub_100005404(v1256);
            if (!v623)
            {
              sub_1000180EC(v1256, &qword_100CA6628);
            }
          }

          else
          {
            sub_10000C7FC();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1273 = sub_1000175DC();
          sub_10001627C(v1273, v1274);
          if (v623)
          {
            sub_10001922C();
            sub_1000C8930(v1275);
            sub_1000A3C70();
            sub_100005404(v1255);
            v1276 = v1986;
            if (!v623)
            {
              sub_1000180EC(v1255, &qword_100CA6620);
            }
          }

          else
          {
            sub_1000244D8();
            sub_1000D37D4();
            v1276 = v1986;
          }

          sub_100051BBC();
          v1277 = sub_1000162A4();
          sub_10001627C(v1277, v1278);
          if (v623)
          {
            sub_10003C26C();
            sub_1000C8930(v1279);
            sub_1000A3C70();
            sub_100005404(v1276);
            if (!v623)
            {
              sub_1000180EC(v1276, &qword_100CA6618);
            }
          }

          else
          {
            sub_1000175C4();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1280 = sub_100016298();
          sub_1000038B4(v1280, v1281, v2246);
          if (v623)
          {
            sub_10000FA84();
            sub_1000A3C70();
            v1282 = sub_100016298();
            sub_1000038B4(v1282, v1283, v2246);
            if (!v623)
            {
              sub_1000180EC(v1267, &qword_100CA6610);
            }
          }

          else
          {
            sub_1000693F0();
            sub_100031474();
            sub_1000D37D4();
          }

          sub_10001BBB8();
          sub_10019236C();
          sub_1000C8308();
          sub_1000E1540();
          sub_100040C78();
          sub_100003B6C();
          sub_1000113AC();
          v1153 = sub_100021CDC();
          v1155 = v2038;
          v1156 = v2040;
          v1157 = v2041;
          v1158 = v2042;
          v1159 = v2043;
          v1160 = v2045;
          break;
        case 2u:
          v964 = sub_10022C350(&qword_100CA6648);
          sub_1000C8FA4(v706 + *(v964 + 48));
          sub_1000D37D4();
          sub_1001924A4();
          v965 = v2039;
          sub_1000A3C70();
          v966 = *(sub_10022C350(&qword_100CA6650) + 48);
          v967 = v2221;
          v968 = v2094;
          v969 = v2229;
          (*(v2221 + 32))(v2094, v965, v2229);
          v970 = v2140;
          v971 = v965 + v966;
          v972 = v2101;
          v973 = v2141;
          (*(v2140 + 32))(v2101, v971, v2141);
          v974 = *(v967 + 16);
          v975 = v2044;
          v974(v2044, v968, v969);
          v976 = v2072;
          (*(v970 + 16))(v975 + *(v2072 + 20), v972, v973);
          sub_100171190(v975 + *(v976 + 24));
          v977 = v975;
          v978 = v2037;
          sub_1000A3C70();
          v979 = v2205;
          swift_storeEnumTagMultiPayload();
          sub_100003934();
          sub_10001B350(v980, v981, v982, v2210);
          sub_100003934();
          sub_10001B350(v983, v984, v985, v2213);
          sub_100003934();
          sub_10001B350(v986, v987, v988, v2214);
          sub_100003934();
          sub_10001B350(v989, v990, v991, v2215);
          sub_100003934();
          sub_10001B350(v992, v993, v994, v2212);
          sub_100003934();
          sub_10001B350(v995, v996, v997, v2216);
          sub_100003934();
          sub_1000D3CF4(v998, v999, v1000, v2246);
          type metadata accessor for PreviewLocation();
          v1001 = v2189;
          sub_100003934();
          sub_10001B350(v1002, v1003, v1004, v1005);
          sub_10002FD78();
          v1006 = v2187;
          sub_1000A3C70();
          sub_10000E7B0();
          sub_1000D3CF4(v1007, v1008, v1009, v979);
          type metadata accessor for SelectedSearchResult();
          v1010 = v2188;
          v1011 = sub_100030348();
          sub_10001B350(v1011, v1012, v1013, v1014);
          v1015 = v2030;
          v1016 = v2209;
          sub_10043DB64(v1001, v1006, v1010, v2030);
          sub_1000180EC(v1010, &qword_100CA65C0);
          sub_1000180EC(v1006, &qword_100CA65D0);
          sub_1000180EC(v1001, &qword_100CA65C8);
          sub_100025070();
          sub_100154038(v978, v1017);
          sub_100154038(v977, type metadata accessor for HomeAndWorkRefinementViewState);
          (*(v2140 + 8))(v2101, v2141);
          sub_1000B9110();
          v1018(v2094, v2229);
          sub_1000C86CC();
          sub_100154038(v2099, v1019);
          sub_100007F9C();
          sub_100154038(v1016, v1020);
          sub_100040D78();
          sub_10000E7B0();
          sub_10001B350(v1021, v1022, v1023, v1006);
          sub_1000141A4();
          sub_1000E59BC();
          v1024 = v2034;
          sub_1000A3C70();
          v1025 = v2031;
          sub_100051BBC();
          v1026 = sub_1000131C4();
          sub_1000038B4(v1026, v1027, v1006);
          if (v623)
          {
            sub_1000180EC(v1025, &qword_100CA65E8);
          }

          else
          {
            sub_100003B54();
            sub_100154038(v1024, v1173);
            sub_10001BBB8();
            sub_100021CEC();
            sub_1000D37D4();
          }

          v1174 = v2026;
          v1175 = v2024;
          v1176 = v2018;
          v1177 = v2022;
          sub_10001BBB8();
          sub_1000D37D4();
          sub_10029C474();
          sub_100051BBC();
          v1178 = sub_1000182B8();
          v1179 = v2210;
          sub_1000038B4(v1178, v1180, v2210);
          if (v623)
          {
            sub_10003145C();
            sub_1000C8930(v1181);
            sub_1000A3C70();
            v1182 = sub_1000182B8();
            v1184 = sub_100024D10(v1182, v1183, v1179);

            if (v1184 != 1)
            {
              sub_1000180EC(v1176, &qword_100CA6640);
            }
          }

          else
          {
            sub_100051D04();
            sub_1000D37D4();
          }

          v1185 = v2020;
          sub_100051BBC();
          sub_100003A40(v1185);
          v2245 = v1015;
          if (v623)
          {
            sub_1000887FC();
            sub_100037964();
            sub_1000A3C70();
            sub_100003A40(v1185);
            v1186 = v2032;
            if (!v623)
            {
              sub_1000180EC(v1185, &qword_100CA6638);
            }
          }

          else
          {
            sub_10000E798();
            sub_1000D37D4();
            v1186 = v2032;
          }

          sub_100051BBC();
          sub_100005404(v1177);
          if (v623)
          {
            sub_100016724();
            sub_1000C8930(v1187);
            sub_1000A3C70();
            sub_100005404(v1177);
            v1188 = v2028;
            if (!v623)
            {
              sub_1000180EC(v1177, &qword_100CA6630);
            }
          }

          else
          {
            sub_10002C530();
            sub_1000D37D4();
            v1188 = v2028;
          }

          sub_100051BBC();
          v1189 = sub_1000162B0();
          sub_10001627C(v1189, v1190);
          if (v623)
          {
            sub_1000205A4();
            sub_1000C8930(v1191);
            sub_1000A3C70();
            sub_100005404(v1175);
            if (!v623)
            {
              sub_1000180EC(v1175, &qword_100CA6628);
            }
          }

          else
          {
            sub_10000C7FC();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1192 = sub_1000175DC();
          sub_10001627C(v1192, v1193);
          if (v623)
          {
            sub_10001922C();
            sub_1000C8930(v1194);
            sub_1000A3C70();
            sub_100005404(v1174);
            if (!v623)
            {
              sub_1000180EC(v1174, &qword_100CA6620);
            }
          }

          else
          {
            sub_1000244D8();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1195 = sub_1000162A4();
          sub_10001627C(v1195, v1196);
          if (v623)
          {
            sub_10003C26C();
            sub_1000C8930(v1197);
            sub_1000A3C70();
            sub_100005404(v1188);
            if (!v623)
            {
              sub_1000180EC(v1188, &qword_100CA6618);
            }
          }

          else
          {
            sub_1000175C4();
            sub_1000D37D4();
          }

          sub_100051BBC();
          v1198 = sub_100016298();
          sub_1000038B4(v1198, v1199, v2246);
          if (v623)
          {
            sub_10000FA84();
            sub_1000A3C70();
            v1200 = sub_100016298();
            sub_1000038B4(v1200, v1201, v2246);
            if (!v623)
            {
              sub_1000180EC(v1186, &qword_100CA6610);
            }
          }

          else
          {
            sub_1000693F0();
            sub_100031474();
            sub_1000D37D4();
          }

          sub_10001BBB8();
          sub_10019236C();
          sub_1000C8308();
          sub_1000E1540();
          sub_100040C78();
          sub_100003B6C();
          sub_1000113AC();
          v1153 = sub_100021CDC();
          v1155 = v2096;
          v1156 = v2097;
          v1157 = v2098;
          v1158 = v2100;
          v1159 = v2102;
          v1160 = v2103;
          goto LABEL_275;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
          sub_100007F9C();
          v703 = v2209;
          goto LABEL_53;
        default:
          sub_100007F9C();
          sub_100154038(v2209, v1028);
          (*(v2221 + 8))(v706, v2229);
          goto LABEL_283;
      }

      goto LABEL_275;
  }

  sub_10007465C();
  v705 = v2150;
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10022C350(&qword_100CA6658);
      sub_100049614();
      sub_1000D37D4();
      v1250 = v1994;
      sub_100051BBC();
      sub_1000141A4();
      sub_1000E59BC();
      v1251 = v1987;
      sub_1000A3C70();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1000180EC(v1250, &unk_100CB2CF0);
        sub_100003B54();
        sub_100154038(v1251, v1285);
        goto LABEL_277;
      }

      sub_100005404(v1251);
      if (v623)
      {
        sub_1000180EC(v1250, &unk_100CB2CF0);
        sub_1000180EC(v1251, &qword_100CA65E0);
LABEL_277:
        sub_100049614();
        v1286 = v1975;
        sub_1000D37D4();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*(v2138 + 8))(v1286, v2139);
        }

        else
        {
          sub_10001E6E0();
          v1253 = v1286;
LABEL_281:
          sub_100154038(v1253, v1252);
        }

LABEL_282:
        sub_1000180EC(v701, &qword_100CA65E0);
        goto LABEL_283;
      }

      sub_100030330();
      sub_1000D37D4();
      type metadata accessor for PreviewLocation();
      v1707 = v2189;
      v1708 = sub_100071C3C();
      sub_10001B350(v1708, v1709, v1710, v1711);
      v1712 = v2187;
      sub_100299588(v2187);
      v1713 = sub_100007FB4();
      sub_1000D3CF4(v1713, v1714, v1715, v2205);
      type metadata accessor for SelectedSearchResult();
      v1716 = v2245;
      v1717 = v2188;
      v1718 = sub_100024058();
      sub_10001B350(v1718, v1719, v1720, v1721);
      v1722 = v1952;
      sub_10043DB64(v1707, v1712, v1717, v1952);
      sub_1000180EC(v1717, &qword_100CA65C0);
      sub_1000180EC(v1712, &qword_100CA65D0);
      sub_1000180EC(v1707, &qword_100CA65C8);
      sub_100003934();
      sub_10001B350(v1723, v1724, v1725, v2210);
      v1726 = v2164;
      sub_1000B9858(v2164);
      v1727 = v2148;
      v1728 = sub_100030348();
      sub_10001B350(v1728, v1729, v1730, v2215);
      v1731 = v2136;
      v1732 = sub_100024058();
      sub_10001B350(v1732, v1733, v1734, v2212);
      v1735 = v2137;
      v1736 = sub_100071C3C();
      sub_10001B350(v1736, v1737, v1738, v2216);
      v1739 = v2125;
      v1740 = sub_100005508();
      sub_10001B350(v1740, v1741, v1742, v2246);
      sub_1000A3C70();
      sub_10000E7B0();
      sub_10001B350(v1743, v1744, v1745, v704);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v1746, v1747, v1748, v1716);
      sub_100028128();
      v1950 = v1739;
      v1951 = v699;
      v1749 = sub_100088338();
      v1750 = v2165;
      v1757 = sub_1000301FC(v1749, v1751, v2165, v1752, v1753, v1754, v1755, v1756, v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v1958, v1959, v1960);
      sub_100032530(v1757);
      sub_1000180EC(v699, &qword_100CA65E8);
      sub_1000180EC(v1739, &qword_100CA6610);
      sub_1000180EC(v1735, &qword_100CA6618);
      sub_1000180EC(v1731, &qword_100CA6620);
      sub_1000180EC(v1727, &qword_100CA6628);
      sub_1000180EC(v1716, &qword_100CA6630);
      sub_1000180EC(v1726, &qword_100CA6638);
      sub_1000180EC(v1750, &qword_100CA6640);
      sub_100154038(v1722, type metadata accessor for LocationPreviewViewState);
      sub_100154038(v1960, type metadata accessor for LocationPreviewViewState);
      sub_1000180EC(v1994, &unk_100CB2CF0);
      sub_10001E6E0();
      sub_100154038(v2066, v1758);
      v1759 = &qword_100CA65E0;
      v1760 = v2236;
LABEL_331:
      sub_1000180EC(v1760, v1759);
      return v2247;
    case 2u:
      sub_1000C86CC();
      v1253 = v705;
      goto LABEL_281;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
      goto LABEL_282;
    default:
      (*(v2221 + 8))(v705, v2229);
      goto LABEL_282;
  }
}