uint64_t sub_10065BA38(char a1)
{
  if (*(v1 + 112) == 1)
  {
    if ((a1 & 1) != 0 && *(v1 + 113) == 1)
    {
      v2 = [objc_opt_self() mainBundle];
      v13._object = 0x8000000100AD9DB0;
      v3._countAndFlagsBits = 0x4025202D206425;
      v3._object = 0xE700000000000000;
      v4._countAndFlagsBits = 0;
      v4._object = 0xE000000000000000;
      v13._countAndFlagsBits = 0xD000000000000049;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v13);

      sub_10022C350(&qword_100CA40C8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100A2D320;
      v6 = *(v1 + 16);
      *(v5 + 56) = &type metadata for Int;
      *(v5 + 64) = &protocol witness table for Int;
      *(v5 + 32) = v6;
      v8 = *(v1 + 48);
      v7 = *(v1 + 56);
      *(v5 + 96) = &type metadata for String;
      *(v5 + 104) = sub_100035744();
      *(v5 + 72) = v8;
      *(v5 + 80) = v7;

      v9 = static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
      sub_10022C350(&qword_100CA40C8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100A2C3F0;
      v11 = *(v1 + 16);
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v11;
      v9 = static String.localizedStringWithFormat(_:_:)();
    }
  }

  else
  {
    v9 = *(v1 + 48);
  }

  return v9;
}

uint64_t sub_10065BC1C(char a1)
{
  if (*(v1 + 112) != 1 || (a1 & 1) != 0 && (*(v1 + 113) & 1) != 0)
  {
    return 0;
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_10065BC70(char a1)
{
  v3 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  if (*(v1 + 112) != 1 || *(v1 + 113) == 1 && (a1 & 1) != 0)
  {
    (*(v12 + 104))(v16, enum case for Font.TextStyle.title3(_:), v10);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v12 + 8))(v16, v10);
    (*(v5 + 104))(v9, enum case for Font.Leading.tight(_:), v3);
    v17 = Font.leading(_:)();

    (*(v5 + 8))(v9, v3);
    static Font.headline.getter();
  }

  else
  {
    v17 = static Font.largeTitle.getter();
    static Font.title2.getter();
  }

  return v17;
}

uint64_t sub_10065BE54()
{
  v0 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  (*(v9 + 104))(v12 - v11, enum case for Font.TextStyle.title3(_:), v7);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v9 + 8))(v13, v7);
  (*(v2 + 104))(v6, enum case for Font.Leading.tight(_:), v0);
  v14 = Font.leading(_:)();

  (*(v2 + 8))(v6, v0);
  static Font.footnote.getter();
  return v14;
}

uint64_t sub_10065C008(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v6 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 88);
  v9 = *(a2 + 88);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *(a1 + 80) == *(a2 + 80) && v8 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 112) == *(a2 + 112) && *(a1 + 113) == *(a2 + 113) && (sub_1009EE6AC(*(a1 + 120), *(a2 + 120)))
  {
    v12 = type metadata accessor for AirQualityComponentViewModel();
    if (static AttributedString.== infix(_:_:)())
    {
      v13 = *(v12 + 64);
      v14 = (a1 + v13);
      v15 = *(a1 + v13 + 8);
      v16 = (a2 + v13);
      v17 = v16[1];
      if (v15)
      {
        if (v17)
        {
          v18 = *v14 == *v16 && v15 == v17;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v17)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10065C1C4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v41 = v4;
  v42 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v40 = v6 - v5;
  type metadata accessor for Date();
  sub_1000037C4();
  v44 = v8;
  v45 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v43 = v10 - v9;
  HourPrecipitationChartPlacement = type metadata accessor for NextHourPrecipitationChartPlacement();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  type metadata accessor for NextHourPrecipitationChartViewModel();
  sub_1000037C4();
  v46 = v19;
  v47 = v18;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_1000161C0((v1 + 16), *(v1 + 40));
  type metadata accessor for NextHourPrecipitationComponent();
  (*(v13 + 104))(v17, enum case for NextHourPrecipitationChartPlacement.component(_:), HourPrecipitationChartPlacement);
  dispatch thunk of NextHourPrecipitationChartViewModelFactoryType.makeViewModel(for:precipitation:placement:currentTime:minutesToConsider:)();
  (*(v13 + 8))(v17, HourPrecipitationChartPlacement);
  if (qword_100CA2A08 != -1)
  {
    swift_once();
  }

  sub_10065C7AC();
  Configurable.setting<A>(_:)();
  if (v49 == 1)
  {
    v23 = 0x8000000100AD9EC0;
    v24 = 0xD000000000000015;
  }

  else
  {
    static WeatherClock.date.getter();
    sub_1000106A0();
    v24 = NextHourPrecipitationStringBuilder.buildShortString(from:referenceDate:)();
    v23 = v25;
    (*(v44 + 8))(v43, v45);
    if (!v23)
    {
      v24 = 0;
      v23 = 0xE000000000000000;
    }
  }

  Configurable.setting<A>(_:)();
  if (v48 == 1)
  {
    v26 = 0x8000000100AD9E90;
    v27 = 0xD00000000000002DLL;
  }

  else
  {
    Location.timeZone.getter();
    static WeatherClock.date.getter();
    sub_1000106A0();
    v27 = NextHourPrecipitationStringBuilder.buildLongString(from:timeZone:referenceDate:)();
    v26 = v28;
    (*(v44 + 8))(v43, v45);
    (*(v41 + 8))(v40, v42);
    if (!v26)
    {
      v27 = 0;
      v26 = 0xE000000000000000;
    }
  }

  v29 = [objc_opt_self() mainBundle];
  v50._object = 0x8000000100AD9E60;
  v30._countAndFlagsBits = 0xD000000000000017;
  v30._object = 0x8000000100AD3840;
  v50._countAndFlagsBits = 0xD00000000000002BLL;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v50);

  *a1 = v24;
  *(a1 + 8) = v23;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v32;
  strcpy((a1 + 48), "umbrella.fill");
  *(a1 + 62) = -4864;
  *(a1 + 64) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for LocationComponentContainerViewModel();
  v34 = (a1 + v33[5]);
  HourPrecipitationComponentViewModel = type metadata accessor for NextHourPrecipitationComponentViewModel();
  (*(v46 + 16))(v34 + *(HourPrecipitationComponentViewModel + 20), v22, v47);
  *v34 = v27;
  v34[1] = v26;
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v36 = v33[8];
  v37 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a1 + v36, 0, 1, v37);
  sub_10013D288();
  v38 = Dictionary.init(dictionaryLiteral:)();
  result = (*(v46 + 8))(v22, v47);
  *(a1 + v33[6]) = 256;
  *(a1 + v33[7]) = v38;
  return result;
}

unint64_t sub_10065C7AC()
{
  result = qword_100CCEE80;
  if (!qword_100CCEE80)
  {
    type metadata accessor for NextHourPrecipitationComponentViewModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEE80);
  }

  return result;
}

uint64_t sub_10065C800@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4C78);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for SearchModule();
      swift_allocObject();
      result = sub_1003B580C(&v7, v5);
      a2[3] = v6;
      a2[4] = &off_100C52F00;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10065C900@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for SearchDismissOverlayModule();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C73398;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10065C9AC()
{
  sub_10022C350(&qword_100CCEFD0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCEFD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4C78);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCEFE0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10065CAD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for SearchTracker;
    a2[4] = &off_100C6DA60;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10065CB48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10065CB88(a1);
  result = type metadata accessor for SearchInteractor();
  a2[3] = result;
  a2[4] = &off_100C64238;
  *a2 = v3;
  return result;
}

uint64_t sub_10065CB88(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v25;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFD0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v5 = sub_10002D7F8(v20, v21);
    v6 = __chkstk_darwin(v5);
    v8 = (&v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v19[3] = &type metadata for SearchTracker;
    v19[4] = &off_100C6DA60;
    v19[0] = v10;
    type metadata accessor for SearchInteractor();
    v11 = swift_allocObject();
    v12 = sub_10002D7F8(v19, &type metadata for SearchTracker);
    v13 = __chkstk_darwin(v12);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v11[12] = &type metadata for SearchTracker;
    v11[13] = &off_100C6DA60;
    v11[9] = v17;
    v11[2] = v3;
    v11[3] = v4;
    sub_100013188(&v22, (v11 + 4));
    sub_100006F14(v19);
    sub_100006F14(v20);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10065CE3C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v14;
  if (v14)
  {
    v5 = v16;
    v4 = v17;
    v6 = v15;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CCEFE0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v13)
    {
      v7 = *sub_1000161C0(v12, v13);
      v11[3] = type metadata accessor for SearchViewModelFactory();
      v11[4] = &off_100C7BD50;
      v11[0] = v7;
      sub_100035B30(v11, v10);
      v8 = swift_allocObject();
      sub_100013188(v10, v8 + 16);

      sub_100006F14(v11);
      sub_100006F14(v12);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_10065D0A0;
      *(v9 + 24) = v8;
      sub_10022C350(&qword_100CA4C78);
      swift_allocObject();
      return sub_10024B808(v3, v6, v5, v4, sub_10001BAA8, 0, sub_10065D0AC, 0, sub_100104B5C, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10065D0AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_retain_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10065D0D8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v32[-v8];
  v10 = sub_10022C350(&qword_100CA65D8);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v12);
  v14 = &v32[-v13];
  v15 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___currentLocation;
  sub_10002401C();
  sub_100071DA8();
  sub_10065F774(v16, v17, v18);
  v19 = type metadata accessor for Location();
  sub_1000038B4(v14, 1, v19);
  if (v20)
  {
    sub_10002C4AC(v14, &qword_100CA65D8);
    static Location.currentLocationID.getter();
    sub_10002159C();
    v21 = type metadata accessor for TimeZone();
    result = sub_1000038B4(v9, 1, v21);
    if (v20)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for Date();
      sub_10003720C();
      sub_100003934();
      sub_10001B350(v22, v23, v24, v25);
      sub_100006450();
      sub_10006A850();
      sub_100003B20();
      (*(v26 + 16))(v2, a1, v19);
      sub_10000E7B0();
      sub_10001B350(v27, v28, v29, v19);
      sub_100017BD8();
      sub_10065F7C4(v2, v1 + v15, &qword_100CA65D8);
      return swift_endAccess();
    }
  }

  else
  {
    sub_100003B20();
    sub_100071DA8();
    return v30();
  }

  return result;
}

void sub_10065D394()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v26 = sub_100037C28();
    v27(v26);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8);
  sub_10003BAEC();
  sub_100013AA0();
  if (!v11)
  {
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78();
    v20 = sub_1000288AC();
    v21(v20);
    sub_100022F78();
    v22 = sub_10000EC50();
    v23(v22);
    v24 = sub_1000106B4();
    sub_100016450(v24, v25, &qword_100CA65D8);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065D618()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v26 = sub_100037C28();
    v27(v26);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8);
  sub_10003BAEC();
  sub_100013AA0();
  if (!v11)
  {
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78();
    v20 = sub_1000288AC();
    v21(v20);
    sub_100022F78();
    v22 = sub_10000EC50();
    v23(v22);
    v24 = sub_1000106B4();
    sub_100016450(v24, v25, &qword_100CA65D8);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_10065D894@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v10 = sub_10022C350(&qword_100CCF250);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  v15 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___locations;
  sub_10002401C();
  sub_10065F774(v1 + v15, v14, &qword_100CCF250);
  v16 = sub_10022C350(&qword_100CA6630);
  sub_1000038B4(v14, 1, v16);
  if (!v17)
  {
    return sub_10065F724(v14, a1, &qword_100CA6630);
  }

  sub_10002C4AC(v14, &qword_100CCF250);
  sub_10065D0D8(v9);
  v18 = type metadata accessor for CurrentLocation();
  sub_10003BEC0();
  sub_10000E7B0();
  sub_10001B350(v19, v20, v21, v18);
  sub_10022C350(&qword_100CCF258);
  v64 = v16;
  v22 = type metadata accessor for SavedLocation();
  v62 = a1;
  v63 = v2;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100A2D320;
  sub_10065D394();
  v57 = v22;
  swift_storeEnumTagMultiPayload();
  sub_10065D618();
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CCD858);
  v23 = type metadata accessor for LocationModel();
  v59 = v9;
  v60 = v15;
  v24 = v23;
  v55 = v23;
  v25 = *(v23 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v56 = *(v25 + 72);
  v27 = v56;
  v28 = swift_allocObject();
  v58 = v28;
  *(v28 + 16) = xmmword_100A3BBA0;
  v29 = v28 + v26;
  sub_10022C350(&qword_100CA38C0);
  sub_10065D0D8(v29);
  sub_10003BEC0();
  v30 = type metadata accessor for LocationOfInterest();
  sub_100003934();
  sub_10001B350(v31, v32, v33, v30);
  sub_1000202C8();
  v34 = *(v25 + 104);
  v34(v29, enum case for LocationModel.current(_:), v24);
  sub_10022C350(&qword_100CA38B8);
  sub_10065D394();
  swift_storeEnumTagMultiPayload();
  sub_100003934();
  sub_10001B350(v35, v36, v37, v30);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v38 = enum case for LocationModel.saved(_:);
  v39 = v55;
  v34(v29 + v27, enum case for LocationModel.saved(_:), v55);
  v40 = v29 + 2 * v56;
  sub_10065D618();
  swift_storeEnumTagMultiPayload();
  sub_100003934();
  sub_10001B350(v41, v42, v43, v30);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v34(v40, v38, v39);
  type metadata accessor for LocationDisplayContext();
  Dictionary.init(dictionaryLiteral:)();
  v44 = v62;
  sub_100036DB4();
  type metadata accessor for LocationsState();
  sub_10003720C();
  sub_10000E7B0();
  sub_10001B350(v45, v46, v47, v48);
  v49 = v63;
  sub_10065F774(v44, v63, &qword_100CA6630);
  sub_10000E7B0();
  sub_10001B350(v50, v51, v52, v64);
  v53 = v60;
  sub_100017BD8();
  sub_10065F7C4(v49, v1 + v53, &qword_100CCF250);
  return swift_endAccess();
}

uint64_t sub_10065DE10(uint64_t a1, unint64_t a2)
{
  type metadata accessor for DemoDataProvider();
  swift_allocObject();
  DemoDataProvider.init()();
  v4 = DemoDataProvider.demoData(named:subdirectory:)();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    if (qword_100CA26C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90AC0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100078694(a1, a2, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not load preset data with name = %{public}s", v10, 0xCu);
      sub_100006F14(v11);
    }

    return 0;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1002DE1B4();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1003B3404(v4, v6);

    return v13;
  }
}

uint64_t sub_10065E1E0()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___preset);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___preset) = 0;
  }

  sub_10065F6B4(v1);
  return v2;
}

void sub_10065E2D4()
{
  sub_100018514();
  v3 = v2;
  v4 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v31[-v8];
  v10 = sub_10022C350(&qword_100CA65D8);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v12);
  v14 = &v31[-v13];
  v15 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___currentLocation;
  sub_10002401C();
  sub_100071DA8();
  sub_10065F774(v16, v17, v18);
  v19 = type metadata accessor for Location();
  sub_1000038B4(v14, 1, v19);
  if (!v20)
  {
    sub_100003B20();
    sub_100071DA8();
    v30();
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_10002C4AC(v14, &qword_100CA65D8);
  static Location.currentLocationID.getter();
  sub_10002159C();
  v21 = type metadata accessor for TimeZone();
  sub_1000038B4(v9, 1, v21);
  if (!v20)
  {
    static CLLocationCoordinate2D.losAngeles.getter();
    sub_1000B99C0();
    type metadata accessor for Date();
    sub_10003720C();
    sub_100003934();
    sub_10001B350(v22, v23, v24, v25);
    sub_100006450();
    sub_10006A850();
    sub_100003B20();
    (*(v26 + 16))(v1, v3, v19);
    sub_10000E7B0();
    sub_10001B350(v27, v28, v29, v19);
    sub_100017BD8();
    sub_10065F7C4(v1, v0 + v15, &qword_100CA65D8);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065E584()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v26 = sub_100037C28();
    v27(v26);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8);
  TimeZone.init(identifier:)();
  sub_100013AA0();
  if (!v11)
  {
    static CLLocationCoordinate2D.amsterdam.getter();
    sub_1000B99C0();
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78();
    v20 = sub_1000288AC();
    v21(v20);
    sub_100022F78();
    v22 = sub_10000EC50();
    v23(v22);
    v24 = sub_1000106B4();
    sub_100016450(v24, v25, &qword_100CA65D8);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065E810()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v26 = sub_100037C28();
    v27(v26);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8);
  TimeZone.init(identifier:)();
  sub_100013AA0();
  if (!v11)
  {
    static CLLocationCoordinate2D.london.getter();
    sub_1000B99C0();
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78();
    v20 = sub_1000288AC();
    v21(v20);
    sub_100022F78();
    v22 = sub_10000EC50();
    v23(v22);
    v24 = sub_1000106B4();
    sub_100016450(v24, v25, &qword_100CA65D8);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065EA9C()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v26 = sub_100037C28();
    v27(v26);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8);
  TimeZone.init(identifier:)();
  sub_100013AA0();
  if (!v11)
  {
    static CLLocationCoordinate2D.tokyo.getter();
    sub_1000B99C0();
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78();
    v20 = sub_1000288AC();
    v21(v20);
    sub_100022F78();
    v22 = sub_10000EC50();
    v23(v22);
    v24 = sub_1000106B4();
    sub_100016450(v24, v25, &qword_100CA65D8);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_10065ED20@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v73 = &v59[-v6];
  v7 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v59[-v9];
  v11 = sub_10022C350(&qword_100CCF250);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100014B58();
  __chkstk_darwin(v13);
  v15 = &v59[-v14];
  v16 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___locations;
  sub_10002401C();
  v72 = v16;
  sub_10065F774(v1 + v16, v15, &qword_100CCF250);
  v17 = sub_10022C350(&qword_100CA6630);
  sub_1000038B4(v15, 1, v17);
  if (!v18)
  {
    return sub_10065F724(v15, a1, &qword_100CA6630);
  }

  sub_10002C4AC(v15, &qword_100CCF250);
  sub_10065E2D4();
  v19 = type metadata accessor for CurrentLocation();
  sub_10003BEC0();
  sub_10000E7B0();
  sub_10001B350(v20, v21, v22, v19);
  sub_10022C350(&qword_100CCF258);
  v70 = v17;
  v23 = type metadata accessor for SavedLocation();
  v68 = a1;
  v69 = v2;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_100A3BBA0;
  sub_10065E584();
  swift_storeEnumTagMultiPayload();
  sub_10065E810();
  v71 = v23;
  swift_storeEnumTagMultiPayload();
  sub_10065EA9C();
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CCD858);
  v24 = type metadata accessor for LocationModel();
  v25 = *(v24 - 8);
  v66 = v10;
  v26 = v25;
  v27 = *(v25 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  v65 = v29;
  *(v29 + 16) = xmmword_100A3B020;
  v30 = v29 + v28;
  sub_10022C350(&qword_100CA38C0);
  sub_10065E2D4();
  sub_10003BEC0();
  v31 = type metadata accessor for LocationOfInterest();
  sub_100003934();
  sub_10001B350(v32, v33, v34, v31);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  v63 = *(v26 + 104);
  v64 = v26 + 104;
  v61 = v24;
  v63(v30, enum case for LocationModel.current(_:), v24);
  v62 = v27;
  sub_10022C350(&qword_100CA38B8);
  sub_10065E584();
  sub_10003BEC0();
  sub_100003934();
  sub_10001B350(v35, v36, v37, v31);
  sub_1000202C8();
  v60 = enum case for LocationModel.saved(_:);
  v38 = v63;
  (v63)(v30 + v27);
  sub_10065E810();
  sub_10003BEC0();
  sub_100003934();
  sub_10001B350(v39, v40, v41, v31);
  sub_1000202C8();
  v42 = v60;
  v43 = v61;
  v38(v30 + 2 * v27, v60, v61);
  v44 = v30 + 3 * v62;
  sub_10065EA9C();
  swift_storeEnumTagMultiPayload();
  sub_100003934();
  sub_10001B350(v45, v46, v47, v31);
  sub_1000202C8();
  v38(v44, v42, v43);
  type metadata accessor for LocationDisplayContext();
  Dictionary.init(dictionaryLiteral:)();
  v48 = v68;
  sub_100036DB4();
  type metadata accessor for LocationsState();
  sub_10003720C();
  sub_10000E7B0();
  sub_10001B350(v49, v50, v51, v52);
  v53 = v69;
  sub_10065F774(v48, v69, &qword_100CA6630);
  sub_10000E7B0();
  sub_10001B350(v54, v55, v56, v70);
  v57 = v72;
  sub_100017BD8();
  sub_10065F7C4(v53, v1 + v57, &qword_100CCF250);
  return swift_endAccess();
}

uint64_t sub_10065F30C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CCF248);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v24[-v11];
  v13 = *a1;
  sub_10002401C();
  sub_10065F774(v2 + v13, v12, &qword_100CCF248);
  v14 = sub_10022C350(&qword_100CA6618);
  sub_1000038B4(v12, 1, v14);
  if (!v15)
  {
    return sub_10065F724(v12, a2, &qword_100CA6618);
  }

  sub_10002C4AC(v12, &qword_100CCF248);
  Date.init(timeIntervalSinceReferenceDate:)();
  type metadata accessor for TimeState();
  sub_10003720C();
  sub_10000E7B0();
  sub_10001B350(v16, v17, v18, v19);
  sub_10065F774(a2, v9, &qword_100CA6618);
  sub_10000E7B0();
  sub_10001B350(v20, v21, v22, v14);
  sub_100017BD8();
  sub_10065F7C4(v9, v2 + v13, &qword_100CCF248);
  return swift_endAccess();
}

uint64_t sub_10065F4BC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = (v3 + *a1);
  v5 = *v4;
  if (v4[1] == 1)
  {
    v5 = sub_10065DE10(a2, a3);
    v6 = v4[1];
    v13 = *v4;
    *v4 = v5;
    v4[1] = v7;
    v4[2] = v8;
    v4[3] = v9;
    sub_1000D3B68(v5, v7);
    sub_1000425D8(v13, v6);
  }

  v10 = sub_100003940();
  sub_10065F714(v10, v11);
  return v5;
}

uint64_t sub_10065F590()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___preset);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___preset) = 0;
  }

  sub_10065F6B4(v1);
  return v2;
}

uint64_t sub_10065F6B4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10065F6C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10065F714(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1000D3B68(a1, a2);
  }

  return a1;
}

uint64_t sub_10065F724(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_100003B20();
  v4 = sub_100003940();
  v5(v4);
  return v3;
}

uint64_t sub_10065F774(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_100003B20();
  v4 = sub_100003940();
  v5(v4);
  return v3;
}

uint64_t sub_10065F7C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_100003B20();
  v4 = sub_100003940();
  v5(v4);
  return v3;
}

uint64_t sub_10065F814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Settings.TappableModulesTipStore.set<A>(setting:value:)()
{
  sub_10014982C(&qword_100CCF308);

  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_10065F99C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D906A8 = result;
  return result;
}

uint64_t sub_10065FAEC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D906B0 = result;
  return result;
}

uint64_t sub_10065FC3C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D906B8 = result;
  return result;
}

uint64_t sub_10065FD8C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D906C0 = result;
  return result;
}

uint64_t sub_10065FEDC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D906C8 = result;
  return result;
}

uint64_t sub_10066002C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D906D0 = result;
  return result;
}

uint64_t sub_1006601F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v7 + 16))(v10, a4, v5);
  v11 = SettingGroup.init(key:defaultValue:access:)();
  (*(v7 + 8))(a4, v5);
  return v11;
}

uint64_t sub_10066030C()
{
  SettingGroup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100660344()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D90708 = result;
  return result;
}

uint64_t sub_100660494()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D90710 = result;
  return result;
}

uint64_t sub_1006605E4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D90718 = result;
  return result;
}

uint64_t sub_10066079C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void, void, void, char *), uint64_t *a4)
{
  v7 = type metadata accessor for Access();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  (*(v9 + 104))(v12, enum case for Access.protected(_:), v7);
  result = a3(0, 0, 0, v12);
  *a4 = result;
  return result;
}

void sub_1006608E4()
{
  type metadata accessor for ChartViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1004DCED0();
    if (v1 <= 0x3F)
    {
      sub_1000077F0();
      if (v2 <= 0x3F)
      {
        sub_1001BB2E4(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast);
        if (v3 <= 0x3F)
        {
          sub_1001BB2E4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Text.Measurements();
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

uint64_t sub_100660A18(uint64_t a1, uint64_t a2)
{
  if ((sub_10060F94C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ChartView(0);
  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  return static EdgeInsets.== infix(_:_:)();
}

uint64_t sub_100660A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v196 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = sub_100003E5C(v3, &v213);
  v194 = v5;
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_100003918(v6);
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v10 = sub_100003918(v9);
  v192[1] = type metadata accessor for AutomationInfo(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003918(v12);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = sub_100003E5C(v13, &v187);
  v165[2] = v15;
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003918(v16);
  v17 = type metadata accessor for AccessibilityChildBehavior();
  v18 = sub_100003E5C(v17, &v212);
  v191 = v19;
  __chkstk_darwin(v18);
  sub_1000038E4();
  v21 = sub_100003918(v20);
  v22 = type metadata accessor for ChartView(v21);
  v23 = sub_100003E5C(v22, &v208);
  v178 = v24;
  __chkstk_darwin(v23);
  v180 = v25;
  sub_100003918(v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PlotDimensionScaleRange();
  v27 = sub_100003E5C(v26, v192);
  v165[8] = v28;
  __chkstk_darwin(v27);
  sub_1000038E4();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CBABB8);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = v165 - v32;
  v34 = sub_10022C350(&qword_100CCF4F8);
  sub_100003E5C(v34, v188);
  v171 = v35;
  sub_100003828();
  __chkstk_darwin(v36);
  v38 = v165 - v37;
  v39 = sub_10022C350(&qword_100CCF500);
  sub_100003E5C(v39, v189);
  v165[5] = v40;
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CCF508);
  sub_100003E5C(v43, &v191);
  v165[9] = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  v198 = v46;
  v47 = sub_10022C350(&qword_100CCF510);
  sub_100003E5C(v47, &v195);
  v167 = v48;
  sub_100003828();
  __chkstk_darwin(v49);
  sub_1000039BC();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CCF518);
  sub_100003E5C(v51, &v194);
  v166 = v52;
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003990(v54);
  v173 = sub_10022C350(&qword_100CCF520);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v55);
  sub_1000039BC();
  sub_100003990(v56);
  v57 = sub_10022C350(&qword_100CCF528);
  sub_100003E5C(v57, v200);
  v174 = v58;
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  sub_100003990(v60);
  v61 = sub_10022C350(&qword_100CCF530);
  sub_100003E5C(v61, v202);
  v177 = v62;
  sub_100003828();
  __chkstk_darwin(v63);
  sub_1000039BC();
  sub_100003990(v64);
  v182 = sub_10022C350(&qword_100CCF538);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v65);
  sub_1000039BC();
  sub_100003990(v66);
  v189[0] = sub_10022C350(&qword_100CCF540);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v67);
  sub_1000039BC();
  sub_100003990(v68);
  v69 = sub_10022C350(&qword_100CCF548);
  sub_100003E5C(v69, &v211 + 8);
  v189[1] = v70;
  sub_100003828();
  __chkstk_darwin(v71);
  sub_1000039BC();
  sub_100003990(v72);
  v73 = sub_10022C350(&qword_100CCF550);
  sub_100003E5C(v73, &v209 + 8);
  v187 = v74;
  sub_100003828();
  __chkstk_darwin(v75);
  sub_1000039BC();
  sub_100003990(v76);
  v201 = v2;
  sub_10022C350(&qword_100CCF558);
  sub_100669E54();
  Chart.init(content:)();
  v208 = sub_10066323C(v2);
  v77 = type metadata accessor for ScaleType();
  sub_10001B350(v33, 1, 1, v77);
  v78 = sub_10022C350(&qword_100CA72D0);
  v79 = sub_1005F6F6C(&unk_100CCF568);
  v80 = sub_100669EE8(&qword_100CCF570);
  v81 = v165[4];
  View.chartXScale<A>(domain:type:)();
  v82 = v33;
  sub_100018198(v33, &qword_100CBABB8);

  sub_10000E73C();
  v83(v38, v81);
  sub_10022C350(&qword_100CAB9C0);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_100A2D320;
  v85 = type metadata accessor for ChartViewModel(0);
  *(v84 + 32) = *(v2 + *(v85 + 40));
  v207 = v84;
  v171 = v85;
  v86 = *(v85 + 32);
  v199 = v2;
  if (*(v2 + v86))
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  v87 = v165[7];
  static PositionScaleRange<>.plotDimension(startPadding:endPadding:)();
  sub_10001B350(v33, 1, 1, v77);
  v88 = sub_10022C350(&qword_100CCF578);
  *&v209 = v81;
  *(&v209 + 1) = v78;
  *&v210 = v79;
  *(&v210 + 1) = v80;
  v89 = sub_10000EC60();
  v90 = sub_100669EE8(&unk_100CCF580);
  v91 = v165[6];
  v92 = v165[11];
  v93 = v197;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_100018198(v82, &qword_100CBABB8);
  sub_10000E73C();
  v94(v87, v92);

  sub_10000E73C();
  v96 = v95(v93, v91);
  v197 = v165;
  __chkstk_darwin(v96);
  v97 = sub_10022C350(&qword_100CCF588);
  *&v209 = v91;
  *(&v209 + 1) = v88;
  *&v210 = v92;
  *(&v210 + 1) = v89;
  *&v211 = v90;
  *(&v211 + 1) = &protocol witness table for PlotDimensionScaleRange;
  v98 = sub_10000EC60();
  v99 = sub_10022E824(&qword_100CCF590);
  v100 = sub_10022E824(&qword_100CCF598);
  v101 = sub_1005F6F6C(&unk_100CCF5A0);
  v102 = sub_100669F6C();
  *&v209 = v99;
  *(&v209 + 1) = v100;
  *&v210 = v101;
  *(&v210 + 1) = v102;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = v165[13];
  v105 = v165[10];
  v106 = v198;
  View.chartXAxis<A>(content:)();
  sub_10000E73C();
  v108 = v107(v106, v105);
  __chkstk_darwin(v108);
  sub_10022C350(&qword_100CCF5C0);
  *&v209 = v105;
  *(&v209 + 1) = v97;
  *&v210 = v98;
  *(&v210 + 1) = OpaqueTypeConformance2;
  sub_10000EC60();
  v109 = sub_10022E824(&qword_100CCF5C8);
  v110 = sub_10022E824(&qword_100CCF5D0);
  v111 = sub_1005F6F6C(&unk_100CCF5D8);
  v112 = sub_10066A048();
  *&v209 = v109;
  *(&v209 + 1) = v110;
  *&v210 = v111;
  *(&v210 + 1) = v112;
  swift_getOpaqueTypeConformance2();
  v113 = v165[12];
  v114 = v169;
  View.chartYAxis<A>(content:)();
  sub_10000E73C();
  v115(v104, v114);
  v116 = v186;
  v117 = v199;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v118 = v170;
  (*(v166 + 32))(v170, v113, v168);
  v119 = v173;
  v120 = (v118 + *(v173 + 36));
  v121 = v210;
  *v120 = v209;
  v120[1] = v121;
  v120[2] = v211;
  v122 = v117;
  v123 = v181;
  sub_10066A598(v122, v181, type metadata accessor for ChartView);
  v124 = (*(v178 + 80) + 16) & ~*(v178 + 80);
  v125 = swift_allocObject();
  sub_10066A100(v123, v125 + v124);
  static Alignment.center.getter();
  v126 = type metadata accessor for ChartBackgroundView(0);
  v127 = sub_10066A19C();
  v128 = sub_10066A554(&unk_100CCF600);
  v129 = v172;
  View.chartBackground<A>(alignment:content:)();

  sub_100018198(v118, &qword_100CCF520);
  v130 = v199 + *(v116 + 32);
  v131 = *v130;
  if (*(v130 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v133 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v134 = v165[1];
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v131, 0);
    sub_10000E73C();
    v135(v134, v165[3]);
    v132 = v190;
    if (v203 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    static AccessibilityChildBehavior.contain.getter();
    goto LABEL_10;
  }

  v132 = v190;
  if (v131)
  {
    goto LABEL_9;
  }

LABEL_7:
  static AccessibilityChildBehavior.ignore.getter();
LABEL_10:
  v203 = v119;
  v204 = v126;
  v205 = v127;
  v206 = v128;
  swift_getOpaqueTypeConformance2();
  v136 = v176;
  v137 = v175;
  View.accessibilityElement(children:)();
  sub_10000E73C();
  v138(v132, v192[0]);
  sub_10000E73C();
  v139(v129, v137);
  type metadata accessor for AutomationCellInfo(0);
  v140 = v192[2];
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v141 = v183;
  v142 = v183 + *(v182 + 36);
  v143 = type metadata accessor for AutomationInfoProperty();
  sub_10066A598(v140, v142 + *(v143 + 24), type metadata accessor for AutomationInfo);
  sub_10066C2B0(v140, type metadata accessor for AutomationInfo);
  *v142 = 0;
  *(v142 + 8) = 0xE000000000000000;
  *(v142 + 16) = swift_getKeyPath();
  *(v142 + 24) = 0;
  (*(v177 + 32))(v141, v136, v179);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v144._countAndFlagsBits = 0x203A7472616843;
  v144._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v144);
  v145 = v171;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v199 + *(v171 + 112)));
  v146._countAndFlagsBits = 0;
  v146._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v146);
  LocalizedStringKey.init(stringInterpolation:)();
  v147 = Text.init(_:tableName:bundle:comment:)();
  v149 = v148;
  v151 = v150;
  sub_10066A5F4();
  v152 = v184;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v147, v149, v151 & 1);

  sub_100018198(v141, &qword_100CCF538);
  v153 = sub_10066A780();
  v154 = sub_10066A554(&unk_100CCF618);
  v155 = v188[1];
  v156 = v189[0];
  View.accessibilityChartDescriptor<A>(_:)();
  sub_100018198(v152, &qword_100CCF540);
  v157 = v194;
  v158 = v193;
  v159 = v195;
  (*(v194 + 104))(v193, enum case for DynamicTypeSize.large(_:), v195);
  v203 = v156;
  v204 = v145;
  v205 = v153;
  v206 = v154;
  swift_getOpaqueTypeConformance2();
  v160 = v185;
  v161 = v189[2];
  View.dynamicTypeSize(_:)();
  (*(v157 + 8))(v158, v159);
  sub_10000E73C();
  v162(v155, v161);
  v163 = v196;
  (*(v187 + 32))(v196, v160, v188[0]);
  result = sub_10022C350(&qword_100CCF620);
  *(v163 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100661F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = sub_10022C350(&qword_100CCDD20);
  v126 = *(v3 - 8);
  v127 = v3;
  __chkstk_darwin(v3);
  v125 = &v91 - v4;
  v132 = sub_10022C350(&qword_100CCF6A8);
  v124 = *(v132 - 8);
  __chkstk_darwin(v132);
  v123 = &v91 - v5;
  v6 = sub_10022C350(&qword_100CCDD10);
  __chkstk_darwin(v6 - 8);
  v133 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = &v91 - v9;
  v10 = sub_10022C350(&qword_100CCDCE0);
  __chkstk_darwin(v10 - 8);
  v122 = &v91 - v11;
  v96 = type metadata accessor for ChartPeakMarkStyle();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v98 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ChartPointMarkSeries();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10022C350(&qword_100CCF6B0);
  v99 = *(v120 - 8);
  __chkstk_darwin(v120);
  v97 = &v91 - v14;
  v15 = sub_10022C350(&qword_100CCDD00);
  __chkstk_darwin(v15 - 8);
  v121 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v119 = &v91 - v18;
  v115 = type metadata accessor for ChartViewModelInterpolationMode();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Date();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v103 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10022C350(&qword_100CCDCE8);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v91 - v21;
  v118 = sub_10022C350(&qword_100CCDD48);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v107 = &v91 - v24;
  v25 = sub_10022C350(&qword_100CAC3D8);
  __chkstk_darwin(v25 - 8);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  v106 = sub_10022C350(&qword_100CCDCD0);
  v104 = *(v106 - 1);
  __chkstk_darwin(v106);
  v32 = &v91 - v31;
  v105 = type metadata accessor for DetailChartGradientModel();
  v33 = *(v105 - 8);
  __chkstk_darwin(v105);
  v35 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ChartKind();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10022C350(&qword_100CCDCB8);
  __chkstk_darwin(v40 - 8);
  v130 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v129 = &v91 - v43;
  v44 = type metadata accessor for ChartViewModel(0);
  (*(v37 + 16))(v39, a1 + v44[5], v36);
  v45 = (*(v37 + 88))(v39, v36);
  v128 = v44;
  if (v45 == enum case for ChartKind.line(_:))
  {
    (*(v37 + 96))(v39, v36);
    v46 = *(sub_10022C350(&qword_100CAC400) + 48);
    sub_10011C0F0(v39, v30, &qword_100CAC3D8);
    sub_10011C0F0(&v39[v46], v27, &qword_100CAC3D8);
    v47 = v103;
    v48 = a1;
    v49 = sub_100668040(v30, v27, a1, v103);
    v106 = &v91;
    __chkstk_darwin(v49);
    *(&v91 - 4) = v27;
    *(&v91 - 3) = a1;
    v89 = v47;
    v90 = v30;
    sub_10022C350(&qword_100CCF6B8);
    sub_10066ADFC();
    v50 = v110;
    Plot.init(content:)();
    (*(v108 + 8))(v47, v109);
    (*(v114 + 16))(v113, a1 + v44[26], v115);
    InterpolationMethod.init(_:)();
    sub_1005F6F6C(&qword_100CCDCF0);
    v51 = v107;
    v52 = v112;
    ChartContent.interpolationMethod(_:)();
    (*(v111 + 8))(v50, v52);
    v53 = *(*(v48 + v44[22]) + 16);
    v94 = v27;
    v93 = v30;
    v92 = v48;
    if (v53)
    {
      (*(v95 + 16))(v98, v48 + v44[23], v96);
      v54 = qword_100CA2198;

      v55 = v129;
      if (v54 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B62B4();
      sub_1004B60A0();
      sub_1004B61C0();
      swift_endAccess();
      v56 = v100;
      ChartPointMarkSeries.init(markers:markStyle:symbolSize:labelFont:fallbackLabelColor:)();
      sub_10066A554(&qword_100CCDD08);
      v57 = v97;
      v58 = v102;
      ChartContent.accessibilityHidden(_:)();
      (*(v101 + 8))(v56, v58);
      v59 = v119;
      v60 = v120;
      (*(v99 + 32))(v119, v57, v120);
      v61 = 0;
    }

    else
    {
      v61 = 1;
      v55 = v129;
      v60 = v120;
      v59 = v119;
    }

    sub_10001B350(v59, v61, 1, v60);
    v67 = v117;
    v68 = v116;
    v69 = v51;
    v70 = v51;
    v71 = v118;
    (*(v117 + 16))(v116, v69, v118);
    v135 = v68;
    v72 = v121;
    sub_1000302D8(v59, v121, &qword_100CCDD00);
    v136 = v72;
    v73 = v122;
    sub_10063A978(&v135, v122);
    sub_100018198(v59, &qword_100CCDD00);
    v74 = *(v67 + 8);
    v74(v70, v71);
    sub_100018198(v72, &qword_100CCDD00);
    v74(v68, v71);
    sub_10011C0F0(v73, v55, &qword_100CCDCE0);
    sub_10022C350(&qword_100CCF6C8);
    swift_storeEnumTagMultiPayload();
    sub_100018198(v94, &qword_100CAC3D8);
    sub_100018198(v93, &qword_100CAC3D8);
    a1 = v92;
  }

  else
  {
    if (v45 != enum case for ChartKind.bar(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v37 + 96))(v39, v36);
    v62 = v105;
    v63 = (*(v33 + 32))(v35, v39, v105);
    __chkstk_darwin(v63);
    v89 = a1;
    v90 = v35;
    sub_10022C350(&qword_100CCF6E0);
    v64 = sub_10022E824(&qword_100CCF6E8);
    v65 = type metadata accessor for RectangleMark();
    v66 = sub_10066AE90();
    v135 = v64;
    v136 = v65;
    v137 = v66;
    v138 = &protocol witness table for RectangleMark;
    swift_getOpaqueTypeConformance2();
    Plot.init(content:)();
    v55 = v129;
    (*(v104 + 32))(v129, v32, v106);
    sub_10022C350(&qword_100CCF6C8);
    swift_storeEnumTagMultiPayload();
    (*(v33 + 8))(v35, v62);
  }

  v75 = v128[8];
  if (*(a1 + v75))
  {
    v139 = *(a1 + v75);
    swift_getKeyPath();

    sub_10022C350(&qword_100CBAE30);
    sub_10022C350(&qword_100CCF6D0);
    sub_1005F6F6C(&qword_100CBAE40);
    sub_10066A554(&unk_100CCF6D8);
    v76 = sub_10022E824(&qword_100CCDD30);
    v77 = sub_10022E824(&qword_100CCDD38);
    v135 = type metadata accessor for PointMark();
    v136 = &protocol witness table for PointMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v135 = v77;
    v136 = &type metadata for Color;
    v137 = OpaqueTypeConformance2;
    v138 = &protocol witness table for Color;
    v79 = swift_getOpaqueTypeConformance2();
    v135 = v76;
    v136 = &type metadata for Text;
    v137 = v79;
    v138 = &protocol witness table for Text;
    v89 = swift_getOpaqueTypeConformance2();
    v80 = v125;
    ForEach<>.init(_:id:content:)();
    sub_100644498();
    v81 = v123;
    v82 = v127;
    ChartContent.accessibilityHidden(_:)();
    (*(v126 + 8))(v80, v82);
    v84 = v131;
    v83 = v132;
    (*(v124 + 32))(v131, v81, v132);
    v85 = 0;
  }

  else
  {
    v85 = 1;
    v84 = v131;
    v83 = v132;
  }

  sub_10001B350(v84, v85, 1, v83);
  v86 = v130;
  sub_1000302D8(v55, v130, &qword_100CCDCB8);
  v135 = v86;
  v87 = v133;
  sub_1000302D8(v84, v133, &qword_100CCDD10);
  v136 = v87;
  sub_10063AAE4(&v135, v134);
  sub_100018198(v84, &qword_100CCDD10);
  sub_100018198(v55, &qword_100CCDCB8);
  sub_100018198(v87, &qword_100CCDD10);
  return sub_100018198(v86, &qword_100CCDCB8);
}

uint64_t sub_10066323C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChartDateStep();
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ChartViewModel(0);
  v16 = v15[12];
  v32 = a1;
  sub_10066A598(a1 + v16, v8, type metadata accessor for ChartDateStep);
  v17 = sub_10022C350(&qword_100CAC408);
  v18 = *(v17 + 64);
  sub_10011C0F0(&v8[*(v17 + 48)], v14, &unk_100CB2CF0);
  v19 = type metadata accessor for TimeZone();
  (*(*(v19 - 8) + 8))(&v8[v18], v19);
  sub_1000302D8(v14, v11, &unk_100CB2CF0);
  if (sub_100024D10(v11, 1, v2) == 1)
  {
    sub_100018198(v14, &unk_100CB2CF0);
    sub_100018198(v11, &unk_100CB2CF0);
    sub_10022C350(&qword_100CAB978);
    v20 = *(v3 + 72);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A2D320;
    v23 = v22 + v21;
    v24 = *(v3 + 16);
    v25 = v32;
    v24(v23, v32 + v15[19], v2);
    v24(v23 + v20, v25 + v15[20], v2);
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    sub_10022C350(&qword_100CAB978);
    v26 = *(v3 + 72);
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A2D320;
    v28 = v22 + v27;
    v29 = *(v3 + 16);
    v29(v28, v5, v2);
    v29(v28 + v26, (v32 + v15[20]), v2);
    (*(v3 + 8))(v5, v2);
    sub_100018198(v14, &unk_100CB2CF0);
  }

  return v22;
}

uint64_t sub_100663610@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChartView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v8 - 8);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v11 - 8);
  v24 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CCF590);
  v25 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for ChartViewModel(0);
  v17 = &qword_100CA2000;
  if (*(v2 + *(v16 + 32)))
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *&xmmword_100D90090 + *(&xmmword_100D90090 + 1) + *(&xmmword_100D90090 + 1);
    v17 = &qword_100CA2000;
  }

  else
  {
    v18 = 0.0;
  }

  v26 = a1;
  if (v17[51] != -1)
  {
    swift_once();
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  static AxisMarkPreset.extended.getter();
  static AxisMarkPosition.bottom.getter();
  sub_100663FBC(v27);
  sub_10066A598(v2, v7, type metadata accessor for ChartView);
  v19 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = v28;
  *(v20 + 32) = v21;
  *(v20 + 48) = v30;
  v22 = v32;
  *(v20 + 56) = v31;
  *(v20 + 72) = v22;
  *(v20 + 88) = v33;
  *(v20 + 96) = v18;
  sub_10066A100(v7, v20 + v19);
  sub_10022C350(&qword_100CCF670);
  sub_10066AB38();
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CCF598);
  sub_1005F6F6C(&unk_100CCF5A0);
  sub_100669F6C();
  AxisContent.compositingLayer<A>(style:)();
  return (*(v25 + 8))(v15, v13);
}

uint64_t sub_100663AE0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = type metadata accessor for ChartView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10022C350(&qword_100CCF5C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - v10;
  static AxisMarkPreset.aligned.getter();
  static AxisMarkPosition.trailing.getter();
  v12 = type metadata accessor for ChartViewModel(0);
  sub_1006656A0(*(v1 + *(v12 + 52)), *(v1 + *(v12 + 52) + 8));
  sub_10066A598(v1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_10066A100(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_10022C350(&qword_100CCF628);
  sub_10066ABF8(&unk_100CCF630);
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CCF5D0);
  sub_1005F6F6C(&unk_100CCF5D8);
  sub_10066A048();
  AxisContent.compositingLayer<A>(style:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100663E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ChartViewModel(0);
  sub_10066A598(a2 + *(v6 + 56), a3, type metadata accessor for ChartViewModel.Background);
  v7 = type metadata accessor for ChartBackgroundView(0);
  v8 = v7[5];
  v9 = type metadata accessor for ChartProxy();
  (*(*(v9 - 8) + 16))(a3 + v8, a1, v9);
  v10 = *(v6 + 76);
  v11 = v7[6];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 16))(a3 + v11, a2 + v10, v12);
  v13 = v7[7];
  *(a3 + v13) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100663FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = sub_10022C350(&qword_100CBADB0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChartDateStep();
  __chkstk_darwin(v14 - 8);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10066A598(v2, v16, type metadata accessor for ChartDateStep);
  v17 = sub_10022C350(&qword_100CAC408);
  v18 = *(v17 + 48);
  (*(v11 + 32))(v13, &v16[*(v17 + 64)], v10);
  (*(v7 + 104))(v9, enum case for Calendar.Component.hour(_:), v6);
  static Calendar.currentCalendar(with:)();
  v19 = type metadata accessor for Calendar();
  sub_10001B350(v5, 0, 1, v19);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_100018198(v5, &qword_100CBADB0);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return sub_100018198(&v16[v18], &unk_100CB2CF0);
}

uint64_t sub_1006642B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v156 = a4;
  v161 = a5;
  v6 = *a2;
  v7 = *(a2 + 12);
  v147 = *(a2 + 8);
  v146 = v7;
  v8 = *(a2 + 16);
  v145 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *a3;
  v11 = *(a3 + 12);
  v144 = *(a3 + 8);
  v142 = v11;
  v12 = *(a3 + 16);
  v143 = *(a3 + 24);
  v13 = *(a3 + 32);
  v14 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v14 - 8);
  v127 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v16 - 8);
  v126 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10022C350(&qword_100CBAE00);
  v128 = *(v160 - 8);
  __chkstk_darwin(v160);
  v125 = &v119 - v18;
  v124 = type metadata accessor for TimeStyle();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v20 - 8);
  v149 = &v119 - v21;
  v151 = type metadata accessor for DetailChartDataElement();
  v157 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v23 - 8);
  v153 = &v119 - v24;
  v25 = type metadata accessor for Date();
  v163 = *(v25 - 8);
  v164 = v25;
  __chkstk_darwin(v25);
  v162 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CBADF0);
  __chkstk_darwin(v27 - 8);
  v159 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v158 = &v119 - v30;
  v31 = sub_10022C350(&qword_100CCF698);
  __chkstk_darwin(v31);
  v148 = &v119 - v32;
  v33 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v33 - 8);
  v134 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for AxisTick();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10022C350(&qword_100CBAE08);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v135 = &v119 - v38;
  v39 = type metadata accessor for AxisGridLine();
  v129 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CBAD88);
  v130 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v119 - v43;
  v133 = sub_10022C350(&qword_100CCF6A0);
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v152 = &v119 - v47;
  v48 = sub_10022C350(&qword_100CCF688);
  __chkstk_darwin(v48 - 8);
  v155 = &v119 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v119 - v51;
  v53 = AxisValue.isFirst.getter();
  v154 = v52;
  if (v53)
  {
    sub_10001B350(v52, 1, 1, v31);
  }

  else
  {
    v121 = v31;
    v54 = AxisValue.isLast.getter();
    v55 = (v54 & 1) == 0;
    if (v54)
    {
      v56 = v6;
    }

    else
    {
      v56 = v10;
    }

    if (v54)
    {
      v57 = v147;
    }

    else
    {
      v57 = v144;
    }

    if (v54)
    {
      v58 = v146;
    }

    else
    {
      v58 = v142;
    }

    if (v54)
    {
      v59 = v8;
    }

    else
    {
      v59 = v12;
    }

    if (v54)
    {
      v60 = v145;
    }

    else
    {
      v60 = v143;
    }

    v169 = v56;
    v170 = v57 | (v58 << 32);
    v171 = v59;
    if (v55)
    {
      v61 = v13;
    }

    else
    {
      v61 = v9;
    }

    v172 = v60;
    v173 = v61;
    swift_bridgeObjectRetain_n();
    AxisGridLine.init(centered:stroke:)();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v62 = sub_1004B5F70();
    swift_endAccess();
    v165 = v62;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v129 + 8))(v41, v39);
    v120 = a1;
    AxisValue.isLast.getter();
    v165 = v39;
    v166 = &type metadata for Color;
    v167 = &protocol witness table for AxisGridLine;
    v168 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v63 = v152;
    AxisMark.offset(x:y:)();
    (*(v130 + 8))(v44, v42);
    static AxisTick.Length.automatic.getter();
    v64 = v136;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v65 = sub_1004B5F70();
    swift_endAccess();
    v165 = v65;
    v66 = v135;
    v67 = v139;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v137 + 8))(v64, v67);
    v68 = v131;
    v69 = v132;
    v70 = v63;
    v71 = v133;
    (*(v131 + 16))(v132, v70, v133);
    v165 = v69;
    v72 = v140;
    v73 = v138;
    v74 = v141;
    (*(v140 + 16))(v138, v66, v141);
    v166 = v73;
    v75 = v148;
    sub_1007FEFB4(&v165, v76, v77, v78, v79, v80, v81, v82, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
    v83 = *(v72 + 8);
    v83(v66, v74);
    v84 = *(v68 + 8);
    v84(v152, v71);
    v83(v73, v74);
    v84(v69, v71);
    v85 = v75;
    v52 = v154;
    sub_10011C0F0(v85, v154, &qword_100CCF698);
    sub_10001B350(v52, 0, 1, v121);
  }

  v86 = v153;
  v87 = v164;
  AxisValue.as<A>(_:)();
  v88 = sub_100024D10(v86, 1, v87);
  v89 = v157;
  v91 = v162;
  v90 = v163;
  if (v88 == 1)
  {
    sub_100018198(v86, &unk_100CB2CF0);
    v92 = v158;
LABEL_28:
    sub_10001B350(v92, 1, 1, v160);
    goto LABEL_32;
  }

  (*(v163 + 32))(v162, v86, v87);
  v93 = type metadata accessor for ChartViewModel(0);
  __chkstk_darwin(v93);
  v117 = v91;
  v94 = v149;
  sub_1008DBA9C();
  v95 = v94;
  v96 = v94;
  v97 = v151;
  if (sub_100024D10(v96, 1, v151) == 1)
  {
    sub_100018198(v95, &qword_100CAB930);
    (*(v90 + 8))(v91, v87);
    v92 = v158;
    v52 = v154;
    goto LABEL_28;
  }

  (*(v89 + 32))(v150, v95, v97);
  type metadata accessor for Style();
  v98 = v122;
  static Style.componentTime.getter();
  DetailChartDataElement.dateLabel.getter();
  v99 = v89;
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v100 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v102 = v101;
  v104 = v103;

  v105 = (*(v123 + 8))(v98, v124);
  __chkstk_darwin(v105);
  v114 = v102;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v117 = sub_10022C350(&qword_100CB9110);
  v118 = sub_100453B24();
  v115 = sub_10066ADD8;
  v116 = &v111;
  LOBYTE(v114) = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v106 = v125;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  sub_10010CD64(v100, v102, v104 & 1);

  (*(v99 + 8))(v150, v151);
  v92 = v158;
  v107 = v160;
  (*(v128 + 32))(v158, v106, v160);
  sub_10001B350(v92, 0, 1, v107);
  (*(v163 + 8))(v162, v164);
  v52 = v154;
LABEL_32:
  v108 = v155;
  sub_1000302D8(v52, v155, &qword_100CCF688);
  v165 = v108;
  v109 = v159;
  sub_1000302D8(v92, v159, &qword_100CBADF0);
  v166 = v109;
  sub_1007FF14C();
  sub_100018198(v92, &qword_100CBADF0);
  sub_100018198(v52, &qword_100CCF688);
  sub_100018198(v109, &qword_100CBADF0);
  return sub_100018198(v108, &qword_100CCF688);
}

uint64_t sub_10066542C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100665518@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v2 = Text.foregroundColor(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v6 & 1;
  v10 = static Edge.Set.horizontal.getter();
  AxisValue.isFirst.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v16;
  *(a1 + 48) = v17;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1006656A0(uint64_t a1, char a2)
{
  if (a2)
  {

    return static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)(a1, 0, 2, 2);
  }

  else
  {
    sub_10014AB54();
    return static AxisMarkValues.stride<A>(by:roundLowerBound:roundUpperBound:)();
  }
}

uint64_t sub_100665724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v124 = a1;
  v3 = sub_10022C350(&qword_100CCF640);
  __chkstk_darwin(v3);
  v5 = &v99 - v4;
  v6 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v6 - 8);
  v116 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v8 - 8);
  v115 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10022C350(&qword_100CCF658);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v99 - v10;
  v11 = sub_10022C350(&qword_100CCF668);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v118 = &v99 - v16;
  v17 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v17 - 8);
  v112 = &v99 - v18;
  v19 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v19 - 8);
  v109 = &v99 - v20;
  v113 = type metadata accessor for Text.Measurements.Context();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v22 - 8);
  v108 = &v99 - v23;
  v24 = type metadata accessor for AxisGridLine();
  v106 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10022C350(&qword_100CBAD88);
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v28 = &v99 - v27;
  v29 = sub_10022C350(&qword_100CCF650);
  __chkstk_darwin(v29 - 8);
  v114 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v123 = &v99 - v32;
  AxisValue.as<A>(_:)();
  if ((BYTE8(v131) & 1) != 0 || (v101 = v14, v102 = v12, v103 = v11, v104 = v5, v33 = *&v131, v34 = type metadata accessor for ChartViewModel(0), v35 = (v124 + v34[11]), v121 = v3, v37 = *v35, v36 = v35[1], v122 = a2, v38 = v35[2], v39 = AxisValue.isFirst.getter(), v40 = AxisValue.isLast.getter(), v41 = v36, v3 = v121, v42 = v38, a2 = v122, sub_100695870(v39 & 1, v40 & 1, v37, v41, v42, v33), !v44))
  {
    v89 = a2;
    v90 = 1;
    v91 = v3;
  }

  else
  {
    v45 = v43;
    v46 = v44;
    v47 = v124;
    if (!*(v124 + v34[8]) && (AxisValue.isLast.getter() & 1) != 0 && *(v47 + v34[10] + 8) <= v33)
    {
      v52 = 1;
      v50 = v123;
      v51 = v107;
    }

    else
    {
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B62E0();
      v100 = v128;
      v99 = v129;
      v48 = v130;
      swift_endAccess();
      v131 = v100;
      v132 = v99;
      v133 = v48;
      AxisGridLine.init(centered:stroke:)();
      swift_beginAccess();
      v49 = sub_1004B5F70();
      swift_endAccess();
      v126 = v49;
      AxisMark.foregroundStyle<A>(_:)();

      (*(v106 + 8))(v26, v24);
      v50 = v123;
      v51 = v107;
      (*(v105 + 32))(v123, v28, v107);
      v52 = 0;
    }

    sub_10001B350(v50, v52, 1, v51);
    v126 = v45;
    v127 = v46;
    sub_10002D5A4();
    v53 = Text.init<A>(_:)();
    v55 = v54;
    v57 = v56;
    static Font.Weight.semibold.getter();
    v58 = type metadata accessor for Font.Design();
    v59 = v108;
    sub_10001B350(v108, 1, 1, v58);
    static Font.system(size:weight:design:)();
    sub_100018198(v59, &qword_100CA4020);
    v60 = Text.font(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    sub_10010CD64(v53, v55, v57 & 1);

    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    type metadata accessor for ChartView(0);
    v67 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v109, 1, 1, v67);
    v68 = type metadata accessor for Text.Suffix();
    sub_10001B350(v112, 1, 1, v68);
    v69 = v110;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    v107 = v60;
    v106 = v62;
    LODWORD(v112) = v64 & 1;
    v108 = v66;
    Text.Measurements.size(of:in:context:)();
    (*(v111 + 8))(v69, v113);
    v70 = swift_beginAccess();
    __chkstk_darwin(v70);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v98 = &protocol witness table for Text;
    v96 = &v93;
    v97 = &type metadata for Text;
    v95 = sub_10066AAA4;
    v94 = 1;
    v93 = 0;
    v71 = v117;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    sub_1005F6F6C(&qword_100CCF660);
    v72 = v118;
    v73 = v120;
    AxisMark.offset(x:y:)();
    (*(v119 + 8))(v71, v73);
    v74 = v123;
    v75 = v114;
    sub_1000302D8(v123, v114, &qword_100CCF650);
    v125[0] = v75;
    v76 = v102;
    v77 = v101;
    v78 = v103;
    (*(v102 + 16))(v101, v72, v103);
    v125[1] = v77;
    v79 = v104;
    sub_1007FF218(v125, v80, v81, v82, v83, v84, v85, v86, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, v102, v103, v104, v105, v106);
    sub_10010CD64(v107, v106, v112);

    v87 = *(v76 + 8);
    v87(v72, v78);
    sub_100018198(v74, &qword_100CCF650);
    v87(v77, v78);
    sub_100018198(v75, &qword_100CCF650);
    v88 = v122;
    sub_10011C0F0(v79, v122, &qword_100CCF640);
    v89 = v88;
    v90 = 0;
    v91 = v121;
  }

  return sub_10001B350(v89, v90, 1, v91);
}

uint64_t sub_1006663D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v2 = Text.foregroundColor(_:)();
  v4 = v3;
  v6 = v5;

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100666554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_100003A24(a1, a2);
  v8 = *(sub_10022C350(v7) + 36);
  v9 = enum case for BlendMode.plusLighter(_:);
  type metadata accessor for BlendMode();
  sub_1000037E8();
  (*(v10 + 104))(a4 + v8, v9);
  sub_10022C350(a3);
  sub_1000037E8();
  v13 = *(v12 + 16);

  return v13(a4, a1, v11);
}

uint64_t sub_100666620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AnnotationOverflowResolution();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnnotationPosition();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PointMark();
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CCDD38);
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10022C350(&qword_100CCDD30);
  v34 = *(v16 - 8);
  v35 = v16;
  __chkstk_darwin(v16);
  v33 = &v27 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  v36 = a1;
  DetailChartDataElement.date.getter();
  v18 = v28;
  static PlottableValue.value(_:_:)();

  (*(v29 + 8))(v8, v18);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  PointMark.init<A>(x:y:)();
  ChartContent.symbolSize(_:)();
  (*(v30 + 8))(v12, v10);
  v48 = static Color.clear.getter();
  v44 = v10;
  v45 = &protocol witness table for PointMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v32;
  v21 = v33;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v31 + 8))(v15, v20);
  v22 = v37;
  static AnnotationPosition.bottom.getter();
  v23 = v40;
  v24 = static AnnotationOverflowResolution.automatic.getter();
  __chkstk_darwin(v24);
  static Alignment.center.getter();
  v44 = v20;
  v45 = &type metadata for Color;
  v46 = OpaqueTypeConformance2;
  v47 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)();
  (*(v42 + 8))(v23, v43);
  (*(v38 + 8))(v22, v39);
  return (*(v34 + 8))(v21, v25);
}

uint64_t sub_100666C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.valueLabel.getter();
  v6 = static ChartValueLabel.with(label:)();
  v8 = v7;
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  static Font.footnote.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100666DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for DetailChartGradientModel();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for ChartView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CCF6E8);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v29 = &KeyPath - v14;
  v15 = *(type metadata accessor for ChartViewModel(0) + 24);
  v28 = a1;
  v38 = *(a1 + v15);
  KeyPath = swift_getKeyPath();
  sub_10066A598(a1, v11, type metadata accessor for ChartView);
  (*(v6 + 16))(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_10066A100(v11, v18 + v16);
  (*(v6 + 32))(v18 + v17, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_10022C350(&qword_100CBAE30);
  sub_10022C350(&qword_100CCF710);
  sub_1005F6F6C(&qword_100CBAE40);
  sub_10066A554(&unk_100CCF6D8);
  v19 = sub_10022E824(&qword_100CCF6F8);
  v20 = sub_10022E824(&qword_100CCF700);
  v21 = sub_1005F6F6C(&unk_100CCF708);
  v22 = sub_10002D5A4();
  v34 = v20;
  v35 = &type metadata for String;
  v36 = v21;
  v37 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v19;
  v35 = &type metadata for String;
  v36 = OpaqueTypeConformance2;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  ForEach<>.init(_:id:content:)();
  v33 = v28;
  type metadata accessor for RectangleMark();
  sub_10066AE90();
  v25 = v30;
  ChartContent.mask<A>(content:)();
  return (*(v31 + 8))(v24, v25);
}

uint64_t sub_10066728C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = sub_10022C350(&qword_100CCF700);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_10022C350(&qword_100CCF6F8);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  sub_10022C350(&qword_100CCF718);
  v15 = sub_10022E824(&qword_100CCF720);
  v32 = type metadata accessor for BarMark();
  v33 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v15;
  v33 = &type metadata for AnyShapeStyle;
  v34 = OpaqueTypeConformance2;
  v35 = &protocol witness table for AnyShapeStyle;
  swift_getOpaqueTypeConformance2();
  Plot.init(content:)();
  v32 = DetailChartDataElement.accessibilityDateString.getter();
  v33 = v17;
  v18 = sub_1005F6F6C(&unk_100CCF708);
  v19 = sub_10002D5A4();
  ChartContent.accessibilityLabel<A>(_:)();

  (*(v8 + 8))(v10, v7);
  v30 = DetailChartDataElement.accessibilityValueDescription.getter();
  v31 = v20;
  v32 = v7;
  v33 = &type metadata for String;
  v34 = v18;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  ChartContent.accessibilityValue<A>(_:)();

  return (*(v25 + 8))(v14, v21);
}

uint64_t sub_1006675BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v53 = a4;
  v5 = type metadata accessor for RoundedCornerStyle();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB6950);
  __chkstk_darwin(v7 - 8);
  v47 = &v37 - v8;
  v9 = sub_10022C350(&qword_100CBADB0);
  __chkstk_darwin(v9 - 8);
  v38 = &v37 - v10;
  v37 = type metadata accessor for Calendar.Component();
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v16 - 8);
  v54 = &v37 - v17;
  v18 = type metadata accessor for BarMark();
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  __chkstk_darwin(v18);
  v41 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CCF720);
  v22 = *(v21 - 8);
  v45 = v21;
  v46 = v22;
  __chkstk_darwin(v21);
  v39 = &v37 - v23;
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  v24 = v37;
  (*(v11 + 104))(v13, enum case for Calendar.Component.hour(_:), v37);
  v25 = type metadata accessor for Calendar();
  v26 = v38;
  sub_10001B350(v38, 1, 1, v25);
  static PlottableValue.value<>(_:_:unit:calendar:)();

  sub_100018198(v26, &qword_100CBADB0);
  (*(v11 + 8))(v13, v24);
  (*(v40 + 8))(v15, v42);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  v55 = v27;
  static PlottableValue.value(_:_:)();

  v28 = v41;
  BarMark.init<A, B>(x:y:width:height:stacking:)();
  v30 = v48;
  v29 = v49;
  v31 = v50;
  (*(v49 + 104))(v48, enum case for RoundedCornerStyle.continuous(_:), v50);
  v32 = v39;
  v33 = v43;
  ChartContent.cornerRadius(_:style:)();
  (*(v29 + 8))(v30, v31);
  (*(v44 + 8))(v28, v33);
  v34 = sub_100667C3C(a1, v51);
  v56 = &protocol witness table for BarMark;
  v57 = v34;
  v55 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v45;
  ChartContent.foregroundStyle<A>(_:)();

  return (*(v46 + 8))(v32, v35);
}

uint64_t sub_100667C3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetailChartGradientModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = DetailChartDataElement.color.getter();
  if (v7)
  {
    v9[1] = v7;
  }

  else
  {
    (*(v4 + 16))(v6, a2, v3);
    LinearGradient.init(_:)();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t sub_100667D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v3 = sub_10022C350(&qword_100CB6950);
  __chkstk_darwin(v3 - 8);
  v12[1] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v12[0] = v12 - v6;
  v7 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  LocalizedStringKey.init(stringLiteral:)();
  v9 = type metadata accessor for ChartViewModel(0);
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v10 = (a1 + *(v9 + 40));
  v13 = *v10;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v13 = v10[1];
  static PlottableValue.value(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

uint64_t sub_100668040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a2;
  v5 = type metadata accessor for ChartLineStrokeStyle();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAC3D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ChartLineStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a1, v10, &qword_100CAC3D8);
  if (sub_100024D10(v10, 1, v14) == 1)
  {
    sub_1000302D8(v25, v13, &qword_100CAC3D8);
    if (sub_100024D10(v10, 1, v14) != 1)
    {
      sub_100018198(v10, &qword_100CAC3D8);
    }
  }

  else
  {
    (*(v15 + 32))(v13, v10, v14);
    sub_10001B350(v13, 0, 1, v14);
  }

  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_100018198(v13, &qword_100CAC3D8);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    ChartLineStyle.strokeStyle.getter();
    v18 = v26;
    v19 = (*(v26 + 88))(v7, v5);
    if (v19 == enum case for ChartLineStrokeStyle.dashed(_:))
    {
      (*(v15 + 8))(v17, v14);
      (*(v18 + 96))(v7, v5);
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 8))(v7, v20);
    }

    else
    {
      if (v19 == enum case for ChartLineStrokeStyle.solidFrom(_:))
      {
        (*(v15 + 8))(v17, v14);
        (*(v18 + 96))(v7, v5);
        v21 = type metadata accessor for Date();
        return (*(*(v21 - 8) + 32))(v28, v7, v21);
      }

      if (v19 != enum case for ChartLineStrokeStyle.solid(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v15 + 8))(v17, v14);
    }
  }

  v23 = *(type metadata accessor for ChartViewModel(0) + 76);
  v24 = type metadata accessor for Date();
  return (*(*(v24 - 8) + 16))(v28, v27 + v23, v24);
}

uint64_t sub_1006684AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v201 = a4;
  v202 = a1;
  v204 = a3;
  v216 = a2;
  v196 = a5;
  v5 = sub_10022C350(&qword_100CCDD98);
  __chkstk_darwin(v5);
  v190 = &v170 - v6;
  v7 = type metadata accessor for ShadowModel();
  __chkstk_darwin(v7 - 8);
  v186 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorSchemeContrast();
  __chkstk_darwin(v9 - 8);
  v184 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for ChartLineMark();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v185 = &v170 - v13;
  v208 = sub_10022C350(&qword_100CCF728);
  __chkstk_darwin(v208);
  v207 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v206 = &v170 - v16;
  v205 = sub_10022C350(&qword_100CCF730);
  __chkstk_darwin(v205);
  v209 = &v170 - v17;
  v18 = type metadata accessor for DetailChartExtrema();
  v210 = *(v18 - 8);
  v211 = v18;
  __chkstk_darwin(v18);
  v215 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for ChartAreaSeries();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v174 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_10022C350(&qword_100CCF738);
  v173 = *(v199 - 8);
  __chkstk_darwin(v199);
  v172 = &v170 - v21;
  v22 = sub_10022C350(&qword_100CAC3E0);
  __chkstk_darwin(v22 - 8);
  v177 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v170 - v25;
  v27 = type metadata accessor for ChartAreaStyle();
  v213 = *(v27 - 8);
  __chkstk_darwin(v27);
  v203 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v171 = &v170 - v30;
  __chkstk_darwin(v31);
  v178 = &v170 - v32;
  v33 = sub_10022C350(&qword_100CCDD58);
  __chkstk_darwin(v33 - 8);
  v192 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v183 = &v170 - v36;
  __chkstk_darwin(v37);
  v198 = &v170 - v38;
  v39 = sub_10022C350(&qword_100CAC3D8);
  __chkstk_darwin(v39 - 8);
  v200 = &v170 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v170 - v42;
  v44 = type metadata accessor for ChartLineStyle();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v212 = &v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v180 = &v170 - v48;
  __chkstk_darwin(v49);
  v51 = &v170 - v50;
  v52 = sub_10022C350(&qword_100CCDD80);
  __chkstk_darwin(v52 - 8);
  v195 = &v170 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v194 = &v170 - v55;
  __chkstk_darwin(v56);
  v193 = &v170 - v57;
  __chkstk_darwin(v58);
  v60 = &v170 - v59;
  sub_1000302D8(v202, v43, &qword_100CAC3D8);
  v61 = sub_100024D10(v43, 1, v44);
  v191 = v5;
  v182 = v60;
  v181 = v44;
  v214 = v45;
  v197 = v27;
  if (v61 == 1)
  {
    sub_100018198(v43, &qword_100CAC3D8);
    sub_10001B350(v60, 1, 1, v5);
    v62 = v60;
  }

  else
  {
    (*(v45 + 32))(v51, v43, v44);
    ChartLineStyle.areaStyle.getter();
    v63 = sub_100024D10(v26, 1, v27);
    v179 = v51;
    if (v63 == 1)
    {
      sub_100018198(v26, &qword_100CAC3E0);
      v64 = 1;
      v65 = v199;
      v66 = v198;
    }

    else
    {
      (*(v213 + 32))(v178, v26, v27);
      v67 = type metadata accessor for ChartViewModel(0);
      v68 = *(v216 + v67[6]);
      (*(v210 + 16))(v215, v216 + v67[7], v211);
      v202 = v67;
      v69 = v67[20];
      v70 = type metadata accessor for Date();
      sub_10066A554(&qword_100CA7020);

      v71 = v204;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v73 = *(v70 - 8);
      v74 = v73[2];
      v75 = v206;
      v74(v206, v71, v70);
      v76 = v208;
      v74((v75 + *(v208 + 48)), v216 + v69, v70);
      v77 = v207;
      sub_1000302D8(v75, v207, &qword_100CCF728);
      v78 = *(v76 + 48);
      v79 = v73[4];
      v170 = v68;
      v80 = v209;
      v79(v209, v77, v70);
      v81 = v73[1];
      v81(v77 + v78, v70);
      sub_10011C0F0(v75, v77, &qword_100CCF728);
      v79(&v80[*(v205 + 36)], v77 + *(v76 + 48), v70);
      v81(v77, v70);
      v82 = v213;
      v83 = v178;
      v84 = v197;
      (*(v213 + 16))(v171, v178, v197);
      ChartLineStyle.halfLineWidth.getter();
      v85 = v174;
      ChartAreaSeries.init(chartData:dateExtrema:visibleDateRange:yAxisRange:areaStyle:halfLineWidth:useSecondValue:)();
      sub_10066A554(&qword_100CCDD68);
      v86 = v172;
      v87 = v176;
      ChartContent.accessibilityHidden(_:)();
      (*(v175 + 8))(v85, v87);
      (*(v82 + 8))(v83, v84);
      v66 = v198;
      v65 = v199;
      (*(v173 + 32))(v198, v86, v199);
      v64 = 0;
    }

    sub_10001B350(v66, v64, 1, v65);
    v88 = type metadata accessor for ChartViewModel(0);
    v89 = v216;
    v90 = *(v216 + v88[6]);
    (*(v210 + 16))(v215, v216 + v88[7], v211);
    v91 = v89 + v88[19];
    v92 = v89 + v88[20];
    v93 = type metadata accessor for Date();
    sub_10066A554(&qword_100CA7020);

    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v94 = *(v93 - 8);
    v95 = v94[2];
    v202 = v90;
    v96 = v206;
    v95(v206, v91, v93);
    v97 = v208;
    v95((v96 + *(v208 + 48)), v92, v93);
    v98 = v207;
    sub_1000302D8(v96, v207, &qword_100CCF728);
    v99 = *(v97 + 48);
    v100 = v94[4];
    v178 = v88;
    v101 = v209;
    v100(v209, v98, v93);
    v102 = v94[1];
    v102(v98 + v99, v93);
    sub_10011C0F0(v96, v98, &qword_100CCF728);
    v100(&v101[*(v205 + 36)], v98 + *(v97 + 48), v93);
    v102(v98, v93);
    v103 = v181;
    (*(v214 + 16))(v180, v179, v181);
    type metadata accessor for ChartView(0);
    sub_1001C7668();
    static ShadowModel.clear.getter();
    v104 = v185;
    ChartLineMark.init(chartData:dateExtrema:xAxisRange:yAxisRange:lineStyle:colorSchemeContrast:shadow:useSecondValue:showAccessibilityLabels:)();
    v105 = v198;
    v106 = v183;
    sub_1000302D8(v198, v183, &qword_100CCDD58);
    v217 = v106;
    v107 = v188;
    v108 = v187;
    v109 = v189;
    (*(v188 + 16))(v187, v104, v189);
    v218 = v108;
    v110 = v190;
    sub_10063ABE8(&v217, v190);
    v111 = *(v107 + 8);
    v112 = v104;
    v44 = v103;
    v45 = v214;
    v111(v112, v109);
    sub_100018198(v105, &qword_100CCDD58);
    (*(v45 + 8))(v179, v44);
    v111(v108, v109);
    sub_100018198(v106, &qword_100CCDD58);
    v62 = v182;
    sub_10011C0F0(v110, v182, &qword_100CCDD98);
    v5 = v191;
    sub_10001B350(v62, 0, 1, v191);
  }

  v113 = v200;
  sub_1000302D8(v201, v200, &qword_100CAC3D8);
  v114 = sub_100024D10(v113, 1, v44);
  v116 = v203;
  v115 = v204;
  v117 = v213;
  if (v114 == 1)
  {
    sub_100018198(v113, &qword_100CAC3D8);
    v118 = v193;
    sub_10001B350(v193, 1, 1, v5);
LABEL_17:
    v168 = v194;
    sub_1000302D8(v62, v194, &qword_100CCDD80);
    v217 = v168;
    v169 = v195;
    sub_1000302D8(v118, v195, &qword_100CCDD80);
    v218 = v169;
    sub_10063AD44();
    sub_100018198(v118, &qword_100CCDD80);
    sub_100018198(v62, &qword_100CCDD80);
    sub_100018198(v169, &qword_100CCDD80);
    return sub_100018198(v168, &qword_100CCDD80);
  }

  (*(v45 + 32))(v212, v113, v44);
  v119 = v177;
  ChartLineStyle.areaStyle.getter();
  v120 = v197;
  if (sub_100024D10(v119, 1, v197) == 1)
  {
    sub_100018198(v119, &qword_100CAC3E0);
    v121 = 1;
    v122 = v192;
    v123 = v199;
    goto LABEL_15;
  }

  (*(v117 + 32))(v116, v119, v120);
  v124 = type metadata accessor for ChartViewModel(0);
  v125 = *(v216 + v124[6]);
  (*(v210 + 16))(v215, v216 + v124[7], v211);
  v201 = v124;
  v126 = v124[20];
  v127 = type metadata accessor for Date();
  sub_10066A554(&qword_100CA7020);
  v202 = v125;

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v128 = *(v127 - 8);
    v129 = v128[2];
    v130 = v206;
    v129(v206, v115, v127);
    v131 = v208;
    v129((v130 + *(v208 + 48)), v216 + v126, v127);
    v132 = v207;
    sub_1000302D8(v130, v207, &qword_100CCF728);
    v133 = *(v131 + 48);
    v134 = v128[4];
    v135 = v209;
    v134(v209, v132, v127);
    v136 = v128[1];
    v136(v132 + v133, v127);
    sub_10011C0F0(v130, v132, &qword_100CCF728);
    v134(&v135[*(v205 + 36)], v132 + *(v131 + 48), v127);
    v136(v132, v127);
    v137 = v213;
    v138 = v203;
    v139 = v197;
    (*(v213 + 16))(v171, v203, v197);
    ChartLineStyle.halfLineWidth.getter();
    v140 = v174;
    ChartAreaSeries.init(chartData:dateExtrema:visibleDateRange:yAxisRange:areaStyle:halfLineWidth:useSecondValue:)();
    sub_10066A554(&qword_100CCDD68);
    v141 = v172;
    v142 = v176;
    ChartContent.accessibilityHidden(_:)();
    (*(v175 + 8))(v140, v142);
    (*(v137 + 8))(v138, v139);
    v122 = v192;
    v123 = v199;
    (*(v173 + 32))(v192, v141, v199);
    v121 = 0;
LABEL_15:
    sub_10001B350(v122, v121, 1, v123);
    v143 = type metadata accessor for ChartViewModel(0);
    v144 = v216;
    v145 = *(v216 + v143[6]);
    (*(v210 + 16))(v215, v216 + v143[7], v211);
    v146 = v144 + v143[19];
    v147 = v144 + v143[20];
    v148 = type metadata accessor for Date();
    sub_10066A554(&qword_100CA7020);

    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v149 = *(v148 - 8);
      v150 = v149;
      v211 = v143;
      v151 = *(v149 + 16);
      v152 = v206;
      v151(v206, v146, v148);
      v153 = v208;
      v151((v152 + *(v208 + 48)), v147, v148);
      v154 = v207;
      sub_1000302D8(v152, v207, &qword_100CCF728);
      v155 = *(v153 + 48);
      v156 = *(v150 + 32);
      v213 = v145;
      v157 = v209;
      v156(v209, v154, v148);
      v158 = *(v150 + 8);
      v158(v154 + v155, v148);
      sub_10011C0F0(v152, v154, &qword_100CCF728);
      v156(&v157[*(v205 + 36)], v154 + *(v153 + 48), v148);
      v158(v154, v148);
      v159 = v181;
      (*(v214 + 16))(v180, v212, v181);
      type metadata accessor for ChartView(0);
      sub_1001C7668();
      static ShadowModel.clear.getter();
      v160 = v185;
      ChartLineMark.init(chartData:dateExtrema:xAxisRange:yAxisRange:lineStyle:colorSchemeContrast:shadow:useSecondValue:showAccessibilityLabels:)();
      v161 = v192;
      v162 = v183;
      sub_1000302D8(v192, v183, &qword_100CCDD58);
      v217 = v162;
      v163 = v188;
      v164 = v187;
      v165 = v189;
      (*(v188 + 16))(v187, v160, v189);
      v218 = v164;
      v166 = v190;
      sub_10063ABE8(&v217, v190);
      v167 = *(v163 + 8);
      v167(v160, v165);
      sub_100018198(v161, &qword_100CCDD58);
      (*(v214 + 8))(v212, v159);
      v167(v164, v165);
      sub_100018198(v162, &qword_100CCDD58);
      v118 = v193;
      sub_10011C0F0(v166, v193, &qword_100CCDD98);
      sub_10001B350(v118, 0, 1, v191);
      v62 = v182;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100669E54()
{
  result = qword_100CCF560;
  if (!qword_100CCF560)
  {
    sub_10022E824(&qword_100CCF558);
    sub_100644138();
    sub_1006443D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF560);
  }

  return result;
}

unint64_t sub_100669EE8(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v4 = sub_100003A24(0, v3);
    sub_10022E824(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100669F6C()
{
  result = qword_100CCF5A8;
  if (!qword_100CCF5A8)
  {
    sub_10022E824(&qword_100CCF598);
    sub_1005F6F6C(&unk_100CCF5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF5A8);
  }

  return result;
}

unint64_t sub_10066A048()
{
  result = qword_100CCF5E0;
  if (!qword_100CCF5E0)
  {
    sub_10022E824(&qword_100CCF5D0);
    sub_1005F6F6C(&unk_100CCF5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF5E0);
  }

  return result;
}

uint64_t sub_10066A100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10066A19C()
{
  result = qword_100CCF5F8;
  if (!qword_100CCF5F8)
  {
    sub_10022E824(&qword_100CCF520);
    sub_10022E824(&qword_100CCF510);
    sub_10022E824(&qword_100CCF5C0);
    sub_10022E824(&qword_100CCF508);
    sub_10022E824(&qword_100CCF588);
    sub_10022E824(&qword_100CCF500);
    sub_10022E824(&qword_100CCF578);
    type metadata accessor for PlotDimensionScaleRange();
    sub_10022E824(&qword_100CCF4F8);
    sub_10022E824(&qword_100CA72D0);
    sub_1005F6F6C(&unk_100CCF568);
    sub_100669EE8(&qword_100CCF570);
    swift_getOpaqueTypeConformance2();
    sub_100669EE8(&unk_100CCF580);
    swift_getOpaqueTypeConformance2();
    sub_10022E824(&qword_100CCF590);
    sub_10022E824(&qword_100CCF598);
    sub_1005F6F6C(&unk_100CCF5A0);
    sub_100669F6C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10022E824(&qword_100CCF5C8);
    sub_10022E824(&qword_100CCF5D0);
    sub_1005F6F6C(&unk_100CCF5D8);
    sub_10066A048();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF5F8);
  }

  return result;
}

unint64_t sub_10066A554(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10066A598(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_10066A5F4()
{
  result = qword_100CCF608;
  if (!qword_100CCF608)
  {
    sub_10022E824(&qword_100CCF538);
    sub_10022E824(&qword_100CCF528);
    sub_10022E824(&qword_100CCF520);
    type metadata accessor for ChartBackgroundView(255);
    sub_10066A19C();
    sub_10066A554(&unk_100CCF600);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10066A554(&qword_100CA3F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF608);
  }

  return result;
}

unint64_t sub_10066A780()
{
  result = qword_100CCF610;
  if (!qword_100CCF610)
  {
    sub_10022E824(&qword_100CCF540);
    sub_10066A5F4();
    sub_10066A554(&qword_100CE1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF610);
  }

  return result;
}

uint64_t sub_10066A854(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10002C90C();
  sub_100003810(v4);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(v2, v6);
}

unint64_t sub_10066A8D8()
{
  result = qword_100CCF638;
  if (!qword_100CCF638)
  {
    sub_10022E824(&qword_100CCF640);
    sub_10066A9DC();
    sub_10022E824(&qword_100CCF658);
    sub_1005F6F6C(&qword_100CCF660);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF638);
  }

  return result;
}

unint64_t sub_10066A9DC()
{
  result = qword_100CCF648;
  if (!qword_100CCF648)
  {
    sub_10022E824(&qword_100CCF650);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF648);
  }

  return result;
}

uint64_t sub_10066AABC()
{
  v3 = sub_10002C90C();
  sub_100003810(v3);
  v5 = v1 + ((*(v4 + 80) + 104) & ~*(v4 + 80));

  return sub_1006642B4(v0, v1 + 16, v1 + 56, v5, v2);
}

unint64_t sub_10066AB38()
{
  result = qword_100CCF678;
  if (!qword_100CCF678)
  {
    sub_10022E824(&qword_100CCF670);
    sub_10066ABF8(&qword_100CCF680);
    sub_100453998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF678);
  }

  return result;
}

unint64_t sub_10066ABF8(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    sub_10022E824(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10066AC6C()
{
  result = qword_100CCF690;
  if (!qword_100CCF690)
  {
    sub_10022E824(&qword_100CCF698);
    sub_10022E824(&qword_100CBAD88);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AxisTick();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF690);
  }

  return result;
}

unint64_t sub_10066ADFC()
{
  result = qword_100CCF6C0;
  if (!qword_100CCF6C0)
  {
    sub_10022E824(&qword_100CCF6B8);
    sub_100644720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF6C0);
  }

  return result;
}

unint64_t sub_10066AE90()
{
  result = qword_100CCF6F0;
  if (!qword_100CCF6F0)
  {
    sub_10022E824(&qword_100CCF6E8);
    sub_10022E824(&qword_100CCF6F8);
    sub_10022E824(&qword_100CCF700);
    sub_1005F6F6C(&unk_100CCF708);
    sub_10002D5A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF6F0);
  }

  return result;
}

uint64_t sub_10066AFE4()
{
  v3 = *(sub_10002C90C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for DetailChartGradientModel();
  sub_100003810(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10066728C(v0, v1 + v4, v8, v2);
}

void sub_10066B0FC()
{
  type metadata accessor for ChartViewModel.Background(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChartProxy();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1001BB2E4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10066B1CC()
{
  result = qword_100CCF7D8;
  if (!qword_100CCF7D8)
  {
    sub_10022E824(&qword_100CCF620);
    sub_10022E824(&qword_100CCF548);
    sub_10022E824(&qword_100CCF540);
    type metadata accessor for ChartViewModel(255);
    sub_10066A780();
    sub_10066A554(&unk_100CCF618);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1005F6F6C(&qword_100CCA190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF7D8);
  }

  return result;
}

double sub_10066B370@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = sub_1004B5F4C();
  v6 = *(v2 + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *v4 = v5;
  v4[1] = v5;
  RoundedRectangle.path(in:)();
  sub_10066C2B0(v4, &type metadata accessor for RoundedRectangle);
  result = *&v12;
  v10 = v13;
  *a1 = v12;
  *(a1 + 16) = v10;
  *(a1 + 32) = v14;
  return result;
}

double sub_10066B504@<D0>(uint64_t a1@<X8>)
{
  sub_10066B370(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_10066B550(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_10066B5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10066C304();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10066B628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10066C304();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10066B68C(uint64_t a1)
{
  v2 = sub_10066C304();

  return Shape.body.getter(a1, v2);
}

void *sub_10066B6D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v4 = v3;
  sub_10066B790(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_1000302D8(__dst, &v6, &qword_100CCF7E0);
  sub_100018198(v9, &qword_100CCF7E0);
  *a1 = v2;
  a1[1] = v4;
  return memcpy(a1 + 2, __dst, 0xD0uLL);
}

uint64_t sub_10066B790@<X0>(void *a1@<X8>)
{
  sub_10066B9B8(__src);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1004B5F70();
  swift_endAccess();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v15;
  v4 = v16;
  v5 = HIDWORD(v16);
  v6 = v17;
  v7 = v18;
  v8 = v19;
  v9 = static Alignment.center.getter();
  v11 = v10;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, 0x82uLL);
  memcpy(v13, __src, 0x82uLL);
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  v22[4] = v19;
  v22[5] = v2;
  LOWORD(v22[6]) = 256;
  v22[7] = v9;
  v22[8] = v11;
  memcpy(&v13[136], v22, 0x48uLL);
  memcpy(a1, v13, 0xD0uLL);
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v2;
  v30 = 256;
  v31 = v9;
  v32 = v11;
  sub_1000302D8(v21, v33, &qword_100CCF7E8);
  sub_1000302D8(v22, v33, &qword_100CCF7F0);
  sub_100018198(&v23, &qword_100CCF7F0);
  memcpy(v33, __dst, 0x82uLL);
  return sub_100018198(v33, &qword_100CCF7E8);
}

void *sub_10066B9B8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  v7 = type metadata accessor for ChartViewModel.Background(0);
  __chkstk_darwin(v7 - 8);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10066A598(v2, v9, type metadata accessor for ChartViewModel.Background);
  v10 = sub_10022C350(&qword_100CAC418);
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_10066C1A4(v21);
    memcpy(v20, v21, 0x82uLL);
    sub_10022C350(&qword_100CCF800);
    sub_10066C0C0();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v11 = *v9;
    sub_10011C0F0(v9 + *(v10 + 48), v6, &unk_100CB2CF0);

    v12 = static Alignment.center.getter();
    v14 = v13;
    sub_10066BD08(v6, v20);
    v16[0] = v12;
    v16[1] = v14;
    memcpy(&v16[2], v20, 0x61uLL);
    memcpy(&__src[6], v16, 0x71uLL);
    v17[0] = v12;
    v17[1] = v14;
    memcpy(v18, v20, sizeof(v18));
    sub_1000302D8(v16, v21, &qword_100CCF7F8);
    sub_100018198(v17, &qword_100CCF7F8);
    v19[0] = v11;
    LOWORD(v19[1]) = 256;
    memcpy(&v19[1] + 2, __src, 0x77uLL);
    memcpy(v20, v19, 0x81uLL);
    sub_10066C0B4(v20);
    memcpy(v21, v20, 0x82uLL);
    sub_1000302D8(v19, __src, &qword_100CCF800);
    sub_10022C350(&qword_100CCF800);
    sub_10066C0C0();
    _ConditionalContent<>.init(storage:)();

    sub_100018198(v19, &qword_100CCF800);
    memcpy(v21, __src, 0x82uLL);
    sub_100018198(v6, &unk_100CB2CF0);
    memcpy(__src, v21, 0x82uLL);
  }

  return memcpy(a1, __src, 0x82uLL);
}

void *sub_10066BD08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000302D8(a1, v6, &unk_100CB2CF0);
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_100018198(v6, &unk_100CB2CF0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    type metadata accessor for ChartBackgroundView(0);
    if (static Date.> infix(_:_:)())
    {
      ChartProxy.position<A>(forX:)();
      if ((v11 & 1) == 0)
      {
        v14 = static VerticalAlignment.center.getter();
        v20[0] = 1;
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v15 = v26;
        v16 = v28;
        v18 = v30;
        v17 = v31;
        v23 = 1;
        v22 = v27;
        v21 = v29;
        v19 = static Color.white.getter();
        v24 = 0;
        v32[0] = v14;
        v32[1] = 0;
        LOBYTE(v32[2]) = v20[0];
        v32[3] = 0;
        LOBYTE(v32[4]) = v23;
        v32[5] = v15;
        LOBYTE(v32[6]) = v22;
        v32[7] = v16;
        LOBYTE(v32[8]) = v21;
        v32[9] = v18;
        v32[10] = v17;
        v32[11] = v19;
        LOBYTE(v32[12]) = 0;
        sub_10022C350(&qword_100CCF828);
        sub_1005F6F6C(&unk_100CCF830);
        _ConditionalContent<>.init(storage:)();
        (*(v8 + 8))(v10, v7);
        memcpy(v32, v25, 0x61uLL);
        return memcpy(a2, v32, 0x61uLL);
      }
    }

    (*(v8 + 8))(v10, v7);
  }

  v12 = static Color.white.getter();
  LOBYTE(v26) = 1;
  v25[0] = v12;
  LOBYTE(v25[12]) = 1;
  sub_10022C350(&qword_100CCF828);
  sub_1005F6F6C(&unk_100CCF830);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a2, v32, 0x61uLL);
}

unint64_t sub_10066C0C0()
{
  result = qword_100CCF808;
  if (!qword_100CCF808)
  {
    sub_10022E824(&qword_100CCF800);
    sub_1005F6F6C(&unk_100CCF810);
    sub_1005F6F6C(&unk_100CCF820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF808);
  }

  return result;
}

unint64_t sub_10066C204()
{
  result = qword_100CCF858;
  if (!qword_100CCF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF858);
  }

  return result;
}

unint64_t sub_10066C25C()
{
  result = qword_100CCF860;
  if (!qword_100CCF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF860);
  }

  return result;
}

uint64_t sub_10066C2B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10066C304()
{
  result = qword_100CCF868;
  if (!qword_100CCF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF868);
  }

  return result;
}

uint64_t type metadata accessor for ScrubberDayView()
{
  result = qword_100CCF8C8;
  if (!qword_100CCF8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10066C3CC()
{
  type metadata accessor for ScrubberDay(319);
  if (v0 <= 0x3F)
  {
    sub_100578820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10066C47C()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for LayoutDirection();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for ScrubberDayView();
  sub_10066D458(v0 + *(v18 + 28), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
  }

  v20 = (*(v13 + 88))(v17, v11);
  if (v20 == enum case for LayoutDirection.leftToRight(_:))
  {
    v21 = *(v0 + *(type metadata accessor for ScrubberDay(0) + 20));
  }

  else
  {
    v22 = v20;
    v23 = enum case for LayoutDirection.rightToLeft(_:);
    v21 = *(v0 + *(type metadata accessor for ScrubberDay(0) + 20));
    if (v22 == v23)
    {

      sub_1002EC2FC();
      return v24;
    }

    else
    {
      v25 = *(v13 + 8);

      v25(v17, v11);
    }
  }

  return v21;
}

BOOL sub_10066C744()
{
  v1 = sub_10022C350(&qword_100CBD410);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v36 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for LayoutDirection();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = *(type metadata accessor for ScrubberDayView() + 28);
  v37 = v0;
  sub_10066D458(v0 + v23, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v18 + 32))(v22, v15, v16);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v24 = v6;
    v25 = v3;
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v3 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v12, v24);
  }

  v27 = (*(v18 + 88))(v22, v16);
  if (v27 == enum case for LayoutDirection.leftToRight(_:))
  {
    return 0;
  }

  if (v27 != enum case for LayoutDirection.rightToLeft(_:))
  {
    (*(v18 + 8))(v22, v16);
    return 0;
  }

  v28 = sub_10066C47C();
  v29 = v36;
  sub_1003DFBD0(v28, v36);

  v30 = type metadata accessor for ScrubberHour(0);
  if (sub_100024D10(v29, 1, v30) != 1)
  {
    v32 = *(v29 + *(v30 + 20));
    sub_10066D4C8(v29);
    if (v32 != 1)
    {
      return 1;
    }

    v33 = sub_10066C47C();
    sub_1002F553C(v33);

    if (sub_100024D10(v3, 1, v30) == 1)
    {
      v29 = v3;
      goto LABEL_7;
    }

    v34 = v3[*(v30 + 20)];
    sub_10066D4C8(v3);
    if (v34 != 1)
    {
      return 1;
    }

    v35 = *(sub_10066C47C() + 16);

    return v35 <= 1;
  }

LABEL_7:
  sub_1000180EC(v29, &qword_100CBD410);
  return 1;
}

uint64_t sub_10066CB2C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  type metadata accessor for ColorRenderingMode();
  sub_1000037C4();
  v23 = v3;
  v24 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for ScrubberDayView();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10022C350(&qword_100CBD8C8);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_10022C350(&qword_100CCF908);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  v18 = *(sub_10066C47C() + 16);

  if (v18)
  {
    sub_10066D3E8(v1, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScrubberDayView);
    v19 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v20 = swift_allocObject();
    sub_10066D2FC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    (*(v23 + 104))(v6, enum case for ColorRenderingMode.nonLinear(_:), v24);
    Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
    (*(v11 + 16))(v17, v14, v9);
    swift_storeEnumTagMultiPayload();
    sub_1005284D4();
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v14, v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1005284D4();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10066CE5C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v25 = a1;
  v24 = type metadata accessor for GraphicsContext.Shading();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CCF910);
  __chkstk_darwin(v23);
  v10 = (&v23 - v9);
  result = sub_10066C47C();
  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  v15 = (v6 + 8);
  while (1)
  {
    if (v14 == v13)
    {
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v16 = type metadata accessor for ScrubberHour(0);
    v17 = v12 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v13;
    v18 = v10 + *(v23 + 48);
    *v10 = v13;
    sub_10066D3E8(v17, v18, type metadata accessor for ScrubberHour);
    if (sub_10066C744())
    {
      type metadata accessor for ScrubberDayView();
    }

    v19 = type metadata accessor for ScrubberDayView();
    v20 = __chkstk_darwin(v19).n128_u64[0];
    *(&v23 - 6) = v21;
    *(&v23 - 5) = 0;
    *(&v23 - 4) = v20;
    *(&v23 - 3) = a4;
    *(&v23 - 2) = a2;
    Path.init(_:)();
    v22 = *(v18 + *(v16 + 20));

    if (v22 == 1)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.gray.getter();
      Color.opacity(_:)();
    }

    static GraphicsContext.Shading.color(_:)();

    GraphicsContext.fill(_:with:style:)();

    sub_1001A8674(v26);
    (*v15)(v8, v24);
    result = sub_1000180EC(v10, &qword_100CCF910);
    ++v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10066D190()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScrubberDayView();
  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  Path.addRoundedRect(in:cornerSize:style:transform:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10066D2FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberDayView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066D360(uint64_t a1, double a2, double a3)
{
  v7 = *(type metadata accessor for ScrubberDayView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10066CE5C(a1, v8, a2, a3);
}

uint64_t sub_10066D3E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10066D458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA2D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066D4C8(uint64_t a1)
{
  v2 = type metadata accessor for ScrubberHour(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10066D524()
{
  result = qword_100CCF918;
  if (!qword_100CCF918)
  {
    sub_10022E824(&qword_100CCF920);
    sub_1005284D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF918);
  }

  return result;
}

BOOL sub_10066D5D8(void *a1, void *a2)
{
  type metadata accessor for DetailComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CA7188);
  __chkstk_darwin(v7 - 8);
  v9 = (&v28 - v8);
  v10 = sub_10022C350(&qword_100CAA958);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = *a1 == *a2 && a1[1] == a2[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = _s10PolarModelVMa();
  sub_10001BC88(v16[6]);
  if ((static PolarType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[8]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[9]);
  if ((static AttributedString.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1001CAA30();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v16[11];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[12]);
  if ((static SunriseSunsetDetailChartViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[13]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[14]);
  if ((static DaylightStringBuilder.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[15]);
  if ((static OverviewTableViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v16[16];
  v24 = *(v10 + 48);
  sub_10066D8E4(a1 + v23, v13);
  sub_10066D8E4(a2 + v23, &v13[v24]);
  sub_100003A40(v13);
  if (v14)
  {
    sub_100003A40(&v13[v24]);
    if (v14)
    {
      sub_1000180EC(v13, &qword_100CA7188);
      return 1;
    }

    goto LABEL_33;
  }

  sub_10066D8E4(v13, v9);
  sub_100003A40(&v13[v24]);
  if (v25)
  {
    sub_10066D954(v9);
LABEL_33:
    sub_1000180EC(v13, &qword_100CAA958);
    return 0;
  }

  sub_10066D9B0(&v13[v24], v6);
  v27 = sub_100428860(v9, v6);
  sub_10066D954(v6);
  sub_10066D954(v9);
  sub_1000180EC(v13, &qword_100CA7188);
  return (v27 & 1) != 0;
}

uint64_t sub_10066D8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA7188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066D954(uint64_t a1)
{
  v2 = type metadata accessor for DetailComponentContainerViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10066D9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailComponentContainerViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066DA14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10066DA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10066DAB4()
{
  sub_10022C350(&qword_100CCB7A0);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100D90758 = result;
  return result;
}

uint64_t sub_10066DB04(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  if (qword_100CA24A0 != -1)
  {
    swift_once();
  }

  sub_1002DCC84();
  if ((v4 & 1) == 0)
  {
    return sub_10066DD28(v3, sub_10066E074, 0, a1);
  }
}

uint64_t sub_10066DBDC@<X0>(void *a1@<X8>)
{
  if (qword_100CA24A0 != -1)
  {
    swift_once();
  }

  *a1 = qword_100D90758;
}

uint64_t sub_10066DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a1, a3, v8);

  return sub_10060CE0C(a4, a2);
}

uint64_t sub_10066DCF8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;

  return a2;
}

uint64_t sub_10066DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_10066DD9C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_10066DD9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_10066E038(a1, a2, a3, v37);
  v7 = v37[1];
  v8 = v37[3];
  v9 = v37[4];
  v33 = v37[5];
  v34 = v37[0];
  v10 = (v37[2] + 64) >> 6;

  v31 = v7;
  v32 = a5;
  if (v9)
  {
    while (1)
    {
      v38 = a4;
      v11 = v8;
LABEL_8:
      v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
      v14 = *(*(v34 + 56) + v13);
      v36[0] = *(*(v34 + 48) + v13);
      v36[1] = v14;

      v33(v35, v36);

      v15 = v35[0];
      v16 = v35[1];
      v17 = *a5;
      v19 = sub_1000D5F5C(v35[0]);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        break;
      }

      v23 = v18;
      if (v17[3] >= v22)
      {
        if ((v38 & 1) == 0)
        {
          sub_10022C350(&qword_100CCF9F8);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_10060BBA8(v22, v38 & 1);
        v24 = sub_1000D5F5C(v15);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_24;
        }

        v19 = v24;
      }

      v9 &= v9 - 1;
      v26 = *a5;
      if (v23)
      {
        v36[0] = *(v26[7] + 8 * v19);

        sub_10035DC70(v16);
        *(v26[7] + 8 * v19) = v36[0];
      }

      else
      {
        v26[(v19 >> 6) + 8] |= 1 << v19;
        *(v26[6] + 8 * v19) = v15;
        *(v26[7] + 8 * v19) = v16;
        v27 = v26[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_23;
        }

        v26[2] = v29;
      }

      a4 = 1;
      v8 = v11;
      v7 = v31;
      a5 = v32;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_10027FAE8();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v38 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066E038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10066E074@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10066DCF8(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10066E384()
{
  result = qword_100CCFA00;
  if (!qword_100CCFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFA00);
  }

  return result;
}

unint64_t sub_10066E3DC()
{
  result = qword_100CCFA08;
  if (!qword_100CCFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFA08);
  }

  return result;
}

uint64_t sub_10066E558@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007612D4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_10066E7B0(void *a1@<X8>)
{
  sub_10076719C();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_10066EAF0@<X0>(_BYTE *a1@<X8>)
{
  result = static MoonPhase.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10066EB38@<X0>(uint64_t a1@<X8>)
{
  result = sub_10076AD40();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
  }

  return result;
}

void *sub_10066ECB0@<X0>(void *a1@<X8>)
{
  result = sub_10076D3DC(v4);
  if (!v1)
  {
    return memcpy(a1, v4, 0x80uLL);
  }

  return result;
}

void *sub_10066ED50@<X0>(void *a1@<X8>)
{
  result = sub_10076D550(v4);
  if (!v1)
  {
    return memcpy(a1, v4, 0x70uLL);
  }

  return result;
}

uint64_t sub_10066EE80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076E440();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_10066EEC8(void *a1@<X8>)
{
  sub_10076E4E8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

double sub_10066EF18@<D0>(uint64_t a1@<X8>)
{
  sub_10076E670(v5);
  if (!v1)
  {
    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_10066EFCC@<X0>(_BYTE *a1@<X8>)
{
  result = static UVIndex.ExposureCategory.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10066F044@<X0>(_BYTE *a1@<X8>)
{
  result = static Wind.CompassDirection.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10066F11C@<X0>(_BYTE *a1@<X8>)
{
  result = static WeatherChange.Direction.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

double sub_10066F314@<D0>(_OWORD *a1@<X8>)
{
  sub_1007720E8();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void *sub_10066F3C4@<X0>(void *a1@<X8>)
{
  result = sub_100772494();
  if (!v1)
  {
    return memcpy(a1, __src, 0xE8uLL);
  }

  return result;
}

unint64_t sub_10066F85C()
{
  result = qword_100CCFA10;
  if (!qword_100CCFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFA10);
  }

  return result;
}

uint64_t sub_10066F8B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WindComponentViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = (a1 + *(type metadata accessor for WindComponent() + 20));
  memcpy(v48, v9, sizeof(v48));
  v10 = v9[1];
  v55 = v9[2];
  v56 = v10;
  v11 = v48[7];
  v44 = v48[6];
  v12 = v48[9];
  v45 = v48[8];
  v46 = v48[0];
  v13 = v9[5];
  v53 = v9[6];
  v54 = v13;
  v14 = v48[15];
  v42 = v48[1];
  v43 = v48[14];
  v15 = v9[10];
  v51 = v9[11];
  v52 = v15;
  v16 = v9[12];
  v17 = v48[26];
  v49 = *(v9 + 216);
  v50 = v16;
  v18 = *(v5 + 76);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100358150(&v56, v47);
  sub_100358150(&v55, v47);
  sub_100358150(&v54, v47);
  sub_100358150(&v53, v47);
  sub_100358150(&v52, v47);
  sub_100358150(&v51, v47);
  sub_100358150(&v50, v47);
  sub_100358150(&v49, v47);
  sub_10066FCAC(v48, v8 + v18);
  sub_10022C350(&qword_100CCFAE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A3BBA0;
  v20 = v55;
  *(v8 + 16) = v56;
  *(v8 + 32) = v20;
  v21 = v53;
  *(v8 + 80) = v54;
  *(v8 + 96) = v21;
  v22 = v51;
  *(v8 + 128) = v52;
  *(v8 + 144) = v22;
  v23 = v49;
  *(v8 + 160) = v50;
  *(v19 + 32) = v44;
  *(v19 + 40) = v11;
  *(v19 + 48) = v46;
  *(v19 + 56) = v42;
  *(v19 + 64) = v43;
  *(v19 + 72) = v14;
  *(v19 + 80) = v45;
  *(v19 + 88) = v12;
  v24 = v48[19];
  v25 = v48[16];
  v26 = v48[17];
  *(v19 + 96) = v48[18];
  *(v19 + 104) = v24;
  *(v19 + 112) = v25;
  *(v19 + 120) = v26;
  *v8 = v46;
  *(v8 + 8) = v42;
  *(v8 + 48) = v44;
  *(v8 + 56) = v11;
  *(v8 + 64) = v45;
  *(v8 + 72) = v12;
  *(v8 + 112) = v43;
  *(v8 + 120) = v14;
  *(v8 + 176) = v17;
  *(v8 + 184) = v23;
  *(v8 + *(v5 + 80)) = v19;
  v27 = objc_opt_self();

  v28 = [v27 mainBundle];
  v57._object = 0x8000000100ADAB50;
  sub_1000080F4();
  v57._countAndFlagsBits = 0xD000000000000036;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v31, v32, v57);

  *a2 = v33;
  *(a2 + 16) = 1684957559;
  *(a2 + 24) = 0xE400000000000000;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for LocationComponentContainerViewModel();
  sub_100670384(v8, a2 + v34[5]);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v35 = a2 + v34[8];
  v36 = *(sub_10022C350(&qword_100CA6690) + 48);
  v37 = enum case for DetailCondition.wind(_:);
  v38 = type metadata accessor for DetailCondition();
  (*(*(v38 - 8) + 104))(v35, v37, v38);
  *(v35 + v36) = 0;
  v39 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v35, 0, 1, v39);
  sub_10013D288();
  v40 = Dictionary.init(dictionaryLiteral:)();
  result = sub_1006703E8(v8);
  *(a2 + v34[6]) = 256;
  *(a2 + v34[7]) = v40;
  return result;
}

uint64_t sub_10066FCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v40 = type metadata accessor for Locale.Language();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Locale();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WindComponentCompassViewStyle();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v50 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v35 - v7;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v60._object = 0x8000000100ADAB90;
  v10._countAndFlagsBits = 87;
  v10._object = 0xE100000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD000000000000024;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v60);

  v13 = [v8 mainBundle];
  v61._object = 0x8000000100ADABC0;
  v14._countAndFlagsBits = 69;
  v14._object = 0xE100000000000000;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0xD000000000000024;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v61);

  v17 = [v8 mainBundle];
  v62._object = 0x8000000100ADABF0;
  v62._countAndFlagsBits = 0xD000000000000025;
  v18._countAndFlagsBits = 78;
  v18._object = 0xE100000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v62);

  v21 = [v8 mainBundle];
  v63._object = 0x8000000100ADAC20;
  v63._countAndFlagsBits = 0xD000000000000025;
  v22._countAndFlagsBits = 83;
  v22._object = 0xE100000000000000;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v63);

  sub_10022C350(&qword_100CA7300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3B020;
  countAndFlagsBits = v12._countAndFlagsBits;
  *(inited + 32) = v12;
  v47 = v16._countAndFlagsBits;
  *(inited + 48) = v16;
  v45 = v20._countAndFlagsBits;
  *(inited + 64) = v20;
  v42 = v24._countAndFlagsBits;
  *(inited + 80) = v24;
  object = v12._object;

  v46 = v16._object;

  v44 = v20._object;

  v41 = v24._object;

  v26 = 0;
  do
  {
    v27 = v26 + 16;
    if (v26 == 64)
    {
      break;
    }

    v28 = String.count.getter();

    v26 = v27;
  }

  while (v28 == 1);

  v29 = v43;
  *v43 = v27 == 80;
  (*(v53 + 104))(v29, enum case for WindComponentCompassViewStyle.cardinalDirectionsInline(_:), v54);
  if (WindComponentCompassViewStyle.canPrimaryLabelShowWindDirection.getter())
  {
    v30 = v35;
    static Locale.current.getter();
    v31 = v38;
    Locale.language.getter();
    (*(v36 + 8))(v30, v37);
    LOBYTE(v30) = Locale.Language.isHebrew.getter();
    (*(v39 + 8))(v31, v40);
    if (v30)
    {
      v59 = *(v51 + 192);
      v57 = 47;
      v58 = 0xE100000000000000;
      v55 = 10;
      v56 = 0xE100000000000000;
      sub_10002D5A4();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    }

    else
    {
    }
  }

  else
  {
  }

  v33 = v53;
  v32 = v54;
  (*(v53 + 16))(v50, v29, v54);
  WindComponentCompassViewModel.init(style:angle:primaryLabel:secondaryLabel:primaryLabelLineLimit:northString:eastString:southString:westString:)();
  return (*(v33 + 8))(v29, v32);
}

uint64_t sub_100670384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WindComponentViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006703E8(uint64_t a1)
{
  v2 = type metadata accessor for WindComponentViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100670448()
{
  type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons();
  *(swift_allocObject() + 16) = &_swiftEmptyDictionarySingleton;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_1006704BC()
{
  sub_10000FE4C();
  result = EnvironmentValues.isWindowFocused.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_10067050C()
{
  v0 = type metadata accessor for WeatherMapPresentationState(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MainViewModel(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  sub_1000A3D20(&v7[*(v5 + 44)], v3, type metadata accessor for WeatherMapPresentationState);
  sub_100097CF4(v7, type metadata accessor for MainViewModel);
  v8 = v3[*(v1 + 44)];
  sub_100097CF4(v3, type metadata accessor for WeatherMapPresentationState);
  if (v8 == 1)
  {
    if (qword_100CA2058 != -1)
    {
      swift_once();
    }
  }

  else
  {
    static Animation.easeInOut.getter();
  }

  return Transaction.animation.setter();
}

unint64_t sub_1006706BC()
{
  result = qword_100CCFB30;
  if (!qword_100CCFB30)
  {
    sub_10022E824(&qword_100CCFB28);
    sub_100670774();
    sub_100006F64(&qword_100CCFB90, &qword_100CCFB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB30);
  }

  return result;
}

unint64_t sub_100670774()
{
  result = qword_100CCFB38;
  if (!qword_100CCFB38)
  {
    sub_10022E824(&qword_100CCFB20);
    sub_100082EE8();
    sub_100670800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB38);
  }

  return result;
}

unint64_t sub_100670800()
{
  result = qword_100CCFB88;
  if (!qword_100CCFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFB88);
  }

  return result;
}

uint64_t sub_1006708A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MainViewModel(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  sub_1000A3D20(&v10[*(v8 + 44)], v6, type metadata accessor for WeatherMapPresentationState);
  sub_100097CF4(v10, type metadata accessor for MainViewModel);
  v11 = *(v6 + 1);
  sub_100097CF4(v6, type metadata accessor for WeatherMapPresentationState);
  LOBYTE(v8) = (v11 & 0xC0) == 64;
  type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons();
  sub_1004C70C8();
  v12 = Environment.init<A>(_:)();
  LOBYTE(v6) = v13;
  v14 = sub_10022C350(&qword_100CCFBA0);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = sub_10022C350(&qword_100CCFBA8);
  v16 = a2 + *(result + 36);
  *v16 = v12;
  *(v16 + 8) = v6 & 1;
  *(v16 + 9) = v8;
  return result;
}

unint64_t sub_100670A94()
{
  result = qword_100CCFBB0;
  if (!qword_100CCFBB0)
  {
    sub_10022E824(&qword_100CCFBA8);
    sub_100006F64(&qword_100CCFBB8, &qword_100CCFBA0);
    sub_100006F64(&qword_100CCFBC0, &qword_100CCFBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFBB0);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for NetworkState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 4;
    v8 = v6 - 4;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100670D0C(void *a1)
{
  sub_10022C350(&qword_100CCFBD8);
  sub_1000037C4();
  __chkstk_darwin(v3);
  v4 = sub_1000161C0(a1, a1[3]);
  sub_100671438();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10067148C();
    sub_10001072C();
    if (v11)
    {
      v6 = sub_10001C984();
      v7(v6);
      v4 = 4;
    }

    else
    {
      sub_1006714E0();
      sub_10001072C();
      v8 = sub_10001C984();
      v9(v8);
      v4 = v10;
    }
  }

  sub_100006F14(a1);
  return v4;
}

uint64_t sub_100670EBC(void *a1, unsigned __int8 a2)
{
  v5 = a2;
  v6 = sub_10022C350(&qword_100CCFBF8);
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_1000161C0(a1, a1[3]);
  sub_100671438();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v5 == 4)
  {
    v18 = 1;
    v17 = 0;
    sub_100671534();
LABEL_5:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v8 + 8))(v11, v6);
  }

  v16 = 0;
  sub_100671534();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = a2;
    v14 = 1;
    sub_100671588();
    goto LABEL_5;
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_100671070(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006710C0(char a1)
{
  if (a1)
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x6C62616863616572;
  }
}

uint64_t sub_100671120@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100C44D10;
  result = sub_100671070(*a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_100671158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100206308(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10067118C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100C44D10;
  result = sub_100671070(a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1006711BC(uint64_t a1)
{
  v2 = sub_100671438();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006711F8(uint64_t a1)
{
  v2 = sub_100671438();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100671258@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100C44D60;
  result = sub_100671070(*a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_100671290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006710C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10067136C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100670D0C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1006713B4()
{
  sub_1006715DC();

  return ShortDescribable.description.getter();
}

uint64_t sub_1006713F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100778854();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100671438()
{
  result = qword_100CCFBE0;
  if (!qword_100CCFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFBE0);
  }

  return result;
}

unint64_t sub_10067148C()
{
  result = qword_100CCFBE8;
  if (!qword_100CCFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFBE8);
  }

  return result;
}

unint64_t sub_1006714E0()
{
  result = qword_100CCFBF0;
  if (!qword_100CCFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFBF0);
  }

  return result;
}

unint64_t sub_100671534()
{
  result = qword_100CCFC00;
  if (!qword_100CCFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC00);
  }

  return result;
}

unint64_t sub_100671588()
{
  result = qword_100CCFC08;
  if (!qword_100CCFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC08);
  }

  return result;
}

unint64_t sub_1006715DC()
{
  result = qword_100CCFC10;
  if (!qword_100CCFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC10);
  }

  return result;
}

_BYTE *sub_100671640(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100671720()
{
  result = qword_100CCFC18;
  if (!qword_100CCFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC18);
  }

  return result;
}

unint64_t sub_100671778()
{
  result = qword_100CCFC20;
  if (!qword_100CCFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC20);
  }

  return result;
}

unint64_t sub_1006717D0()
{
  result = qword_100CCFC28;
  if (!qword_100CCFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC28);
  }

  return result;
}

unint64_t sub_100671828()
{
  result = qword_100CCFC30;
  if (!qword_100CCFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC30);
  }

  return result;
}

unint64_t sub_10067187C()
{
  result = qword_100CCFC38;
  if (!qword_100CCFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFC38);
  }

  return result;
}

void sub_1006718D4()
{
  sub_10000C778();
  v239 = v0;
  v235 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000038E4();
  v238 = v2;
  sub_1000038CC();
  v231 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v222 = v4;
  sub_1000038CC();
  v230 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v237 = v6;
  sub_1000038CC();
  v228 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v236 = v8;
  sub_1000038CC();
  v219 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v234 = v10;
  sub_1000038CC();
  v225 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v233 = v12;
  sub_1000038CC();
  *(&v206 + 1) = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v232 = v14;
  v15 = sub_10022C350(&qword_100CA65E8);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v213 = v18;
  v19 = sub_10022C350(&qword_100CA6610);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v229 = v22;
  v23 = sub_10022C350(&qword_100CA6618);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v227 = v26;
  v27 = sub_10022C350(&qword_100CA6620);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v226 = v30;
  v31 = sub_10022C350(&qword_100CA6628);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v224 = v34;
  v35 = sub_10022C350(&qword_100CA6630);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v215 = v38;
  v39 = sub_10022C350(&qword_100CA6638);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v212 = v42;
  v43 = sub_10022C350(&qword_100CA6640);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v223 = v46;
  sub_1000038CC();
  v210 = type metadata accessor for UUID();
  sub_1000037C4();
  v209 = v47;
  __chkstk_darwin(v48);
  sub_1000038E4();
  v208 = v49;
  v50 = sub_1000038CC();
  v51 = type metadata accessor for ModalViewState(v50);
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003C38();
  v55 = v53 - v54;
  __chkstk_darwin(v56);
  v58 = &v196 - v57;
  __chkstk_darwin(v59);
  v61 = &v196 - v60;
  __chkstk_darwin(v62);
  v64 = &v196 - v63;
  v65 = sub_10022C350(&qword_100CB0F88);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  v68 = &v196 - v67;
  v69 = type metadata accessor for PresentedLocation();
  sub_1000037E8();
  __chkstk_darwin(v70);
  v72 = &v196 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = [objc_opt_self() currentDevice];
  v74 = [v73 userInterfaceIdiom];

  if (!v74)
  {
    v75 = v61;
    v204 = v51;
    v202 = v55;
    v203 = v58;
    v205 = v64;
    *&v206 = v72;
    v76 = v238;
    v77 = v239;
    sub_100962FAC(0, v68);
    sub_1000038B4(v68, 1, v69);
    if (v78)
    {
      sub_1000180EC(v68, &qword_100CB0F88);
    }

    else
    {
      v79 = v206;
      sub_100673B88(v68, v206, type metadata accessor for PresentedLocation);
      v80 = v77 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
      sub_100024974();
      sub_100020FE8();
      sub_1000BC914(v81, v82, v83);
      swift_storeEnumTagMultiPayload();
      sub_1000BC008();
      v85 = v84;
      sub_1000DFFE8(v75, type metadata accessor for ModalViewState);
      sub_1000DFFE8(v55, type metadata accessor for ModalViewState);
      if (v85)
      {
        v197 = v80;
        if (qword_100CA26E0 != -1)
        {
          sub_100019C5C();
        }

        v86 = type metadata accessor for Logger();
        sub_10000703C(v86, qword_100D90B08);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();
        v89 = os_log_type_enabled(v87, v88);
        v90 = *(&v206 + 1);
        if (v89)
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v87, v88, "Found presentedLocationIdentifier. Remove none-presented locations weather data.", v91, 2u);
        }

        v92 = v77 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
        v93 = *(v92 + 16);
        __chkstk_darwin(v94);
        v195 = v79;

        v201 = sub_100672C94(sub_100672C50, &v194, v93, type metadata accessor for LocationWeatherDataState, sub_100673648, type metadata accessor for LocationWeatherDataState, type metadata accessor for LocationWeatherDataState);

        v96 = *(v92 + 24);
        __chkstk_darwin(v95);
        v195 = v79;

        v200 = sub_100672C94(sub_100672E3C, &v194, v96, type metadata accessor for LocationAvailableDataSetState, sub_10067341C, type metadata accessor for LocationAvailableDataSetState, type metadata accessor for LocationAvailableDataSetState);

        v97 = v208;
        UUID.init()();
        v199 = UUID.uuidString.getter();
        v198 = v98;
        (*(v209 + 8))(v97, v210);
        sub_100003934();
        sub_10001B350(v99, v100, v101, v90);
        sub_100003934();
        sub_10001B350(v102, v103, v104, v225);
        v105 = v215;
        sub_100003934();
        sub_10001B350(v106, v107, v108, v219);
        sub_100003934();
        sub_10001B350(v109, v110, v111, v228);
        sub_100003934();
        sub_10001B350(v112, v113, v114, v230);
        sub_100003934();
        sub_10001B350(v115, v116, v117, v231);
        sub_100003934();
        sub_10001B350(v118, v119, v120, v235);
        v121 = v213;
        sub_100003934();
        v122 = v204;
        sub_10001B350(v123, v124, v125, v204);
        sub_100024974();
        v126 = v202;
        sub_1000BC914(v197, v202, v127);
        sub_100020FE8();
        sub_1002AB08C(v128, v129, v130);
        v131 = sub_10000C834();
        sub_1000038B4(v131, v132, v122);
        if (v78)
        {
          sub_1000180EC(v121, &qword_100CA65E8);
        }

        else
        {
          sub_1000DFFE8(v126, type metadata accessor for ModalViewState);
          sub_100014C4C();
          sub_100673B88(v121, v126, v138);
        }

        v139 = v232;
        sub_100014C4C();
        sub_100673B88(v126, v140, v141);
        v142 = v239;
        v143 = *(v239 + 16);
        v214 = *(v239 + 24);
        sub_100020FE8();
        sub_1002AB08C(v144, v145, v146);
        v147 = sub_10000C834();
        sub_1000038B4(v147, v148, v90);
        v149 = v236;
        v238 = v143;
        if (v78)
        {
          v150 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
          sub_1000BC914(v150, v139, v151);
          v152 = sub_10000C834();
          v154 = sub_100024D10(v152, v153, v90);

          v155 = v222;
          if (v154 != 1)
          {
            sub_1000180EC(v121, &qword_100CA6640);
          }
        }

        else
        {
          sub_100673B88(v121, v139, type metadata accessor for AppConfigurationState);

          v155 = v222;
        }

        sub_100020FE8();
        sub_1002AB08C(v156, v157, v158);
        v159 = sub_10000C834();
        v160 = v225;
        sub_1000038B4(v159, v161, v225);
        if (v78)
        {
          v162 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
          swift_beginAccess();
          sub_1000BC914(v142 + v162, v233, type metadata accessor for EnvironmentState);
          v163 = sub_10000C834();
          sub_1000038B4(v163, v164, v160);
          v165 = v237;
          v166 = v217;
          if (!v78)
          {
            sub_1000180EC(v121, &qword_100CA6638);
          }
        }

        else
        {
          sub_100673B88(v121, v233, type metadata accessor for EnvironmentState);
          v165 = v237;
          v166 = v217;
        }

        v167 = v105;
        v168 = v216;
        sub_1002AB08C(v167, v216, &qword_100CA6630);
        sub_100003A40(v168);
        if (v78)
        {
          v169 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
          sub_1000BC914(v169, v234, v170);
          sub_100003A40(v168);
          v171 = v76;
          if (!v78)
          {
            sub_1000180EC(v168, &qword_100CA6630);
          }
        }

        else
        {
          sub_100673B88(v168, v234, type metadata accessor for LocationsState);
          v171 = v76;
        }

        sub_1002AB08C(v224, v166, &qword_100CA6628);
        sub_1000038B4(v166, 1, v228);
        if (v78)
        {
          v172 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
          sub_1000BC914(v172, v149, v173);
          sub_100003A40(v166);
          v174 = v227;
          if (!v78)
          {
            sub_1000180EC(v166, &qword_100CA6628);
          }
        }

        else
        {
          sub_100673B88(v166, v149, type metadata accessor for NotificationsState);
          v174 = v227;
        }

        v175 = v218;
        sub_1002AB08C(v226, v218, &qword_100CA6620);
        v176 = v230;
        sub_1000038B4(v175, 1, v230);
        if (v78)
        {
          v177 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
          sub_1000BC914(v177, v165, v178);
          sub_1000038B4(v175, 1, v176);
          if (!v78)
          {
            sub_1000180EC(v175, &qword_100CA6620);
          }
        }

        else
        {
          sub_100673B88(v175, v165, type metadata accessor for NotificationsOptInState);
        }

        v179 = v220;
        sub_1002AB08C(v174, v220, &qword_100CA6618);
        v180 = v231;
        sub_1000038B4(v179, 1, v231);
        v181 = v238;
        if (v78)
        {
          v182 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
          sub_1000BC914(v182, v155, v183);
          sub_1000038B4(v179, 1, v180);
          if (!v78)
          {
            sub_1000180EC(v179, &qword_100CA6618);
          }
        }

        else
        {
          sub_100673B88(v179, v155, type metadata accessor for TimeState);
        }

        v184 = v221;
        sub_1002AB08C(v229, v221, &qword_100CA6610);
        sub_100003A40(v184);
        if (v78)
        {
          v185 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
          sub_1000BC914(v185, v171, v186);
          sub_100003A40(v184);
          if (!v78)
          {
            sub_1000180EC(v184, &qword_100CA6610);
          }
        }

        else
        {
          sub_100673B88(v184, v171, type metadata accessor for ViewState);
        }

        sub_100014C4C();
        v187 = v205;
        sub_100673B88(v203, v205, v188);
        v189 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
        v190 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
        v191 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
        v192 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
        type metadata accessor for MainState._Storage(0);
        swift_allocObject();
        LOBYTE(v194) = v189;
        sub_10003E038(v181, v214, v232, v233, v234, v236, v237, v155, v171, v187, v199, v198, v201, v200, v194, v190, v191, v192, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);

        sub_10000CD98();
        sub_1000DFFE8(v206, v193);
      }

      else
      {
        if (qword_100CA26E0 != -1)
        {
          sub_100019C5C();
        }

        v133 = type metadata accessor for Logger();
        sub_10000703C(v133, qword_100D90B08);
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&_mh_execute_header, v134, v135, "DiscardNonePresentedLocationDataStateProcessor: A modal view is presented. Skip cleaning up state", v136, 2u);
        }

        sub_10000CD98();
        sub_1000DFFE8(v79, v137);
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_100672B34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_10022C350(a4);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v13 = (v21 - v12);
  v14 = *a1;
  v15 = a1[1];
  *v13 = v14;
  v13[1] = v15;
  sub_1000BC914(a2, v21 + *(v16 + 56) - v12, a6);

  if (v14 == Location.Identifier.id.getter() && v15 == v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1000180EC(v13, a4);
  return v19 & 1;
}

void (*sub_100672C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t *a7))(void)
{
  v9 = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    v31 = a7;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v30 = swift_slowAlloc();
      sub_1000215C0();
      v12 = sub_100673098(v22, v23, v24, v25, v26, v27, v28, a6, v31);

      return v12;
    }
  }

  v30 = a6;
  v31 = &v29;
  __chkstk_darwin(a1);
  v12 = v11;
  sub_1006A76B8(0, v10, &v29 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1000215C0();
  sub_100672E80(v13, v14, v15, v16, v17, v18, v19, v30, v12);
  if (!v7)
  {
    return v20;
  }

  swift_willThrow();
  return v12;
}

void sub_100672E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void), void (*a9)(void))
{
  v42 = a4;
  v43 = a8;
  v35 = a2;
  v36 = a7;
  v37 = a1;
  v41 = a9;
  v10 = a6(0);
  v11 = sub_100003AE8(v10);
  v40 = v12;
  __chkstk_darwin(v11);
  v38 = 0;
  v39 = &v34 - v13;
  v14 = 0;
  v44 = a3;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v45 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v14 << 6);
    v26 = *(v44 + 56);
    v27 = (*(v44 + 48) + 16 * v25);
    v28 = v27[1];
    v46[0] = *v27;
    v46[1] = v28;
    v29 = v39;
    v30 = v25;
    sub_1000BC914(v26 + *(v40 + 72) * v25, v39, v43);

    v31 = v47;
    v32 = v42(v46, v29);
    sub_1000DFFE8(v29, v41);

    v47 = v31;
    if (v31)
    {
      return;
    }

    v20 = v45;
    if (v32)
    {
      *(v37 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_16:
        v36(v37, v35, v38, v44);
        return;
      }
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_16;
    }

    ++v23;
    if (*(v16 + 8 * v14))
    {
      sub_100004818();
      v45 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100673098(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void), void (*a9)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      v18 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v18;
    }

    sub_100672E80(v11, a2, a3, a4, a5, a6, a7, a8, a9);
    v17 = v16;

    return v17;
  }

  return result;
}

void sub_100673160()
{
  sub_10000C778();
  v4 = v3;
  v5 = sub_1000288E0();
  v6 = type metadata accessor for CalendarMoonPhaseData(v5);
  v7 = sub_100003AE8(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  v34 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v32 = v10;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  if (!v0)
  {
    goto LABEL_23;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  sub_10022C350(&qword_100CCFC50);
  sub_1000A7CDC();
  sub_100037218();
  while (v15)
  {
    sub_100074730();
    v33 = v16;
LABEL_13:
    v20 = sub_10002C934();
    v21(v20);
    v22 = sub_100016468();
    sub_1000BC914(v22, v32, type metadata accessor for CalendarMoonPhaseData);
    v23 = sub_1000210B4();
    v12(v23);
    sub_10003C6CC();
    sub_100673B88(v32, v34, v24);
    sub_100673874();
    sub_1000867F4();
    sub_100006474();
    if (v25)
    {
      sub_100022F00();
      while (1)
      {
        sub_1000202E0();
        if (v25)
        {
          if (v26)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v25)
        {
          sub_100018638();
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
LABEL_21:
    v27 = sub_1000697CC();
    v12(v27);
    sub_10003C6CC();
    sub_100673B88(v34, v28, v29);
    sub_1000D3F14();
    if (v30)
    {
      goto LABEL_26;
    }

    v12 = v31;
    v15 = v33;
  }

  v17 = v2;
  while (1)
  {
    v2 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v18)
    {
      sub_100004818();
      v33 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10067341C()
{
  sub_10000C778();
  v6 = v5;
  v7 = sub_1000288E0();
  v8 = type metadata accessor for LocationAvailableDataSetState(v7);
  v9 = sub_100003AE8(v8);
  __chkstk_darwin(v9);
  sub_100003C38();
  __chkstk_darwin(v10);
  sub_10000E70C();
  if (!v2)
  {
    goto LABEL_23;
  }

  if (*(v6 + 16) == v2)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  v30 = v11;
  sub_10022C350(&qword_100CCFC40);
  sub_1000A7CDC();
  sub_100036DD4();
  while (v12)
  {
    sub_100074730();
    v31 = v14;
LABEL_13:
    v18 = sub_1000252E0(v13);
    sub_1000BC914(v18, v1, type metadata accessor for LocationAvailableDataSetState);
    sub_100017C20();
    sub_100673B88(v1, v0, v19);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v1 = &v32;
    Hasher._finalize()();
    sub_100006474();
    if (v20)
    {
      sub_100022F00();
      v0 = v30;
      while (1)
      {
        sub_1000202E0();
        if (v20)
        {
          if (v24)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v20)
        {
          sub_100018638();
          v23 = v26 + (v25 << 6);
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
    v23 = v21 | v22;
    v0 = v30;
LABEL_21:
    sub_10004E884(v23);
    sub_100017C20();
    sub_100673B88(v0, v27, v28);
    sub_10003BB0C();
    if (v29)
    {
      goto LABEL_26;
    }

    v12 = v31;
  }

  v15 = v4;
  while (1)
  {
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v4 >= v3)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v16)
    {
      sub_100004818();
      v31 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100673648()
{
  sub_10000C778();
  v6 = v5;
  v7 = sub_1000288E0();
  v8 = type metadata accessor for LocationWeatherDataState(v7);
  v9 = sub_100003AE8(v8);
  __chkstk_darwin(v9);
  sub_100003C38();
  __chkstk_darwin(v10);
  sub_10000E70C();
  if (!v2)
  {
    goto LABEL_23;
  }

  if (*(v6 + 16) == v2)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  v30 = v11;
  sub_10022C350(&qword_100CCFC48);
  sub_1000A7CDC();
  sub_100036DD4();
  while (v12)
  {
    sub_100074730();
    v31 = v14;
LABEL_13:
    v18 = sub_1000252E0(v13);
    sub_1000BC914(v18, v1, type metadata accessor for LocationWeatherDataState);
    sub_10000EC88();
    sub_100673B88(v1, v0, v19);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v1 = &v32;
    Hasher._finalize()();
    sub_100006474();
    if (v20)
    {
      sub_100022F00();
      v0 = v30;
      while (1)
      {
        sub_1000202E0();
        if (v20)
        {
          if (v24)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v20)
        {
          sub_100018638();
          v23 = v26 + (v25 << 6);
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
    v23 = v21 | v22;
    v0 = v30;
LABEL_21:
    sub_10004E884(v23);
    sub_10000EC88();
    sub_100673B88(v0, v27, v28);
    sub_10003BB0C();
    if (v29)
    {
      goto LABEL_26;
    }

    v12 = v31;
  }

  v15 = v4;
  while (1)
  {
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v4 >= v3)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v16)
    {
      sub_100004818();
      v31 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_100673874()
{
  result = qword_100CA39C8;
  if (!qword_100CA39C8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA39C8);
  }

  return result;
}

void sub_1006738CC()
{
  sub_10000C778();
  v4 = v3;
  v5 = sub_1000288E0();
  v6 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(v5);
  v7 = sub_100003AE8(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  v34 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v32 = v10;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  if (!v0)
  {
    goto LABEL_23;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  sub_10022C350(&qword_100CCFC58);
  sub_1000A7CDC();
  sub_100037218();
  while (v15)
  {
    sub_100074730();
    v33 = v16;
LABEL_13:
    v20 = sub_10002C934();
    v21(v20);
    v22 = sub_100016468();
    sub_1000BC914(v22, v32, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
    v23 = sub_1000210B4();
    v12(v23);
    sub_1000209E4();
    sub_100673B88(v32, v34, v24);
    sub_100673874();
    sub_1000867F4();
    sub_100006474();
    if (v25)
    {
      sub_100022F00();
      while (1)
      {
        sub_1000202E0();
        if (v25)
        {
          if (v26)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v25)
        {
          sub_100018638();
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
LABEL_21:
    v27 = sub_1000697CC();
    v12(v27);
    sub_1000209E4();
    sub_100673B88(v34, v28, v29);
    sub_1000D3F14();
    if (v30)
    {
      goto LABEL_26;
    }

    v12 = v31;
    v15 = v33;
  }

  v17 = v2;
  while (1)
  {
    v2 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v18)
    {
      sub_100004818();
      v33 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100673B88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100673BE8(uint64_t a1, uint64_t a2)
{
  if (static Location.currentLocationID.getter() == a1 && v4 == a2)
  {

    return 1;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 1;
  }

  if (qword_100CA2950 != -1)
  {
    swift_once();
  }

  v7 = static WeatherLocation.currentLocationID == a1 && *algn_100D911C8 == a2;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x69436C61636F6C5FLL && a2 == 0xEB000000005F7974)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100673D44()
{
  type metadata accessor for CurrentWeather();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10038F248();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100673DE0()
{
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NextHourPrecipitationComponent();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MinuteWeather();
  sub_10067499C(&qword_100CB1738, &type metadata accessor for MinuteWeather);
  sub_10067499C(&qword_100CB1740, &type metadata accessor for MinuteWeather);
  sub_10067499C(&unk_100CB1748, &type metadata accessor for MinuteWeather);

  return static Forecast.== infix(_:_:)();
}

uint64_t sub_100673F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_10022C350(&qword_100CAE8F0);
  sub_1000037C4();
  v42 = v3;
  __chkstk_darwin(v4);
  v45 = &v40 - v5;
  type metadata accessor for Date();
  sub_1000037C4();
  v48 = v7;
  v49 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v46 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v50 = v15 - v14;
  v52 = sub_10022C350(&qword_100CCFCF8);
  sub_1000037C4();
  v47 = v16;
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent();
  __chkstk_darwin(HourPrecipitationComponent);
  sub_1000037D8();
  v23 = v22 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_100674888();
  v51 = v19;
  v24 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100006F14(a1);
  }

  v41 = HourPrecipitationComponent;
  v53 = v23;
  v25 = a1;
  v26 = v48;
  v27 = v49;
  v56 = 0;
  sub_10001074C();
  sub_10067499C(v28, v29);
  v30 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = *(v46 + 32);
  v50 = v11;
  v31(v53, v30, v11);
  v55 = 1;
  sub_10001C994();
  sub_10067499C(v32, v33);
  v34 = v10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v53;
  (*(v26 + 32))(v53 + *(v41 + 20), v34, v27);
  v54 = 2;
  sub_1006749E4(&qword_100CCFD08);
  v36 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = sub_10000482C();
  v38(v37);
  (*(v42 + 32))(v35 + *(v41 + 24), v45, v36);
  sub_1006748DC(v35, v43);
  sub_100006F14(v25);
  return sub_100674940(v35);
}

uint64_t sub_1006743FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100674520(char a1)
{
  if (!a1)
  {
    return 0x57746E6572727563;
  }

  if (a1 == 1)
  {
    return 0x54746E6572727563;
  }

  return 0x7469706963657270;
}

uint64_t sub_1006745A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006743FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006745C8(uint64_t a1)
{
  v2 = sub_100674888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100674604(uint64_t a1)
{
  v2 = sub_100674888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100674640(void *a1)
{
  v3 = sub_10022C350(&qword_100CCFD10);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100674888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for CurrentWeather();
  sub_10001074C();
  sub_10067499C(v9, v10);
  sub_100005AE0();
  if (!v1)
  {
    type metadata accessor for NextHourPrecipitationComponent();
    v14[14] = 1;
    type metadata accessor for Date();
    sub_10001C994();
    sub_10067499C(v11, v12);
    sub_100005AE0();
    v14[13] = 2;
    sub_10022C350(&qword_100CAE8F0);
    sub_1006749E4(&qword_100CCFD18);
    sub_100005AE0();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_100674888()
{
  result = qword_100CCFD00;
  if (!qword_100CCFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFD00);
  }

  return result;
}

uint64_t sub_1006748DC(uint64_t a1, uint64_t a2)
{
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent();
  (*(*(HourPrecipitationComponent - 8) + 16))(a2, a1, HourPrecipitationComponent);
  return a2;
}

uint64_t sub_100674940(uint64_t a1)
{
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent();
  (*(*(HourPrecipitationComponent - 8) + 8))(a1, HourPrecipitationComponent);
  return a1;
}

uint64_t sub_10067499C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006749E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CAE8F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextHourPrecipitationComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100674B14()
{
  result = qword_100CCFD20;
  if (!qword_100CCFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFD20);
  }

  return result;
}

unint64_t sub_100674B6C()
{
  result = qword_100CCFD28;
  if (!qword_100CCFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFD28);
  }

  return result;
}

unint64_t sub_100674BC4()
{
  result = qword_100CCFD30;
  if (!qword_100CCFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFD30);
  }

  return result;
}

uint64_t sub_100674C18()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.title2(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

double sub_100674DE8()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  *(v0 + 32) = 0x4000000000000000;
  *(v0 + 40) = 0;
  return 2.0;
}

uint64_t sub_100674E0C()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 56))
  {
    v8 = *(v0 + 56);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 56) = v8;
  }

  return v8;
}

double sub_100674F18()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4024000000000000;
  *(v0 + 24) = 0;
  return 10.0;
}

double sub_100674F3C()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  *v0 = 0x4053800000000000;
  v0[8] = 0;
  return 78.0;
}

Swift::Int sub_100674F68(uint64_t *a1)
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309288();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_10067633C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_100675010()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___preset;
  v3 = *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___preset);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for Preset();
    swift_allocObject();
    v4 = Preset.init(extends:apply:)();
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_10002CD5C(v5);
  }

  sub_10065F6B4(v3);
  return v4;
}

uint64_t sub_1006750B8()
{
  v0 = URL.lastPathComponent.getter();
  v2 = v1;
  if (v0 == URL.lastPathComponent.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100675150@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CCF250);
  __chkstk_darwin(v3 - 8);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___locations;
  swift_beginAccess();
  sub_1000302D8(v1 + v10, v9, &qword_100CCF250);
  v11 = sub_10022C350(&qword_100CA6630);
  if (sub_100024D10(v9, 1, v11) != 1)
  {
    return sub_10011C0F0(v9, a1, &qword_100CA6630);
  }

  sub_1000180EC(v9, &qword_100CCF250);
  sub_10067530C(a1);
  sub_1000302D8(a1, v6, &qword_100CA6630);
  sub_10001B350(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10053347C(v6, v1 + v10, &qword_100CCF250);
  return swift_endAccess();
}

uint64_t sub_10067530C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PresetAppState();
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CB1B20);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_10067549C(&v11 - v6);
  if (sub_100024D10(v7, 1, v2))
  {
    sub_1000180EC(v7, &qword_100CB1B20);
    v8 = 1;
  }

  else
  {
    sub_100677950(v7, v4, type metadata accessor for PresetAppState);
    sub_1000180EC(v7, &qword_100CB1B20);
    sub_100677950(&v4[*(v2 + 20)], a1, type metadata accessor for LocationsState);
    sub_1003997B0(v4);
    v8 = 0;
  }

  v9 = type metadata accessor for LocationsState();
  return sub_10001B350(a1, v8, 1, v9);
}

uint64_t sub_10067549C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CCFE88);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___loadedData;
  swift_beginAccess();
  sub_1000302D8(v1 + v9, v8, &qword_100CCFE88);
  v10 = sub_10022C350(&qword_100CB1B20);
  if (sub_100024D10(v8, 1, v10) != 1)
  {
    return sub_10011C0F0(v8, a1, &qword_100CB1B20);
  }

  sub_1000180EC(v8, &qword_100CCFE88);
  sub_100675E90(v1, a1);
  sub_1000302D8(a1, v5, &qword_100CB1B20);
  sub_10001B350(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10053347C(v5, v1 + v9, &qword_100CCFE88);
  return swift_endAccess();
}

uint64_t sub_100675694@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v35 = type metadata accessor for PresetAppState();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v34 = v5 - v4;
  v6 = sub_10022C350(&qword_100CB1B20);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  type metadata accessor for Date();
  sub_1000037C4();
  v37 = v10;
  v38 = v9;
  __chkstk_darwin(v9);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v36 = &v34 - v15;
  v16 = sub_10022C350(&qword_100CA6618);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v20 = sub_10022C350(&qword_100CCF248);
  __chkstk_darwin(v20 - 8);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v34 - v25;
  v27 = OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___timeState;
  swift_beginAccess();
  sub_1000302D8(v2 + v27, v26, &qword_100CCF248);
  if (sub_100024D10(v26, 1, v16) == 1)
  {
    sub_1000180EC(v26, &qword_100CCF248);
    sub_10067549C(v8);
    if (sub_100024D10(v8, 1, v35))
    {
      sub_1000180EC(v8, &qword_100CB1B20);
      static WeatherClock.date.getter();
      Date.timeIntervalSince1970.getter();
      v29 = v37;
      v28 = v38;
      (*(v37 + 8))(v13, v38);
    }

    else
    {
      v30 = v34;
      sub_100677950(v8, v34, type metadata accessor for PresetAppState);
      sub_1000180EC(v8, &qword_100CB1B20);
      sub_1003997B0(v30);
      v29 = v37;
      v28 = v38;
    }

    v31 = v36;
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v29 + 32))(v19, v31, v28);
    v32 = type metadata accessor for TimeState();
    sub_10001B350(v19, 0, 1, v32);
    sub_1000302D8(v19, v23, &qword_100CA6618);
    sub_10001B350(v23, 0, 1, v16);
    swift_beginAccess();
    sub_10053347C(v23, v2 + v27, &qword_100CCF248);
    swift_endAccess();
  }

  else
  {
    v19 = v26;
  }

  return sub_10011C0F0(v19, v39, &qword_100CA6618);
}

uint64_t sub_100675AA4()
{
  v1 = (v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState);
  v2 = *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState);
  if (*(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState + 8) == 1)
  {
    v2 = sub_100675B78();
    v3 = v1[1];
    v10 = *v1;
    *v1 = v2;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    sub_1000D3B68(v2, v4);
    sub_1000425D8(v10, v3);
  }

  v7 = sub_100003940();
  sub_10065F714(v7, v8);
  return v2;
}

uint64_t sub_100675B78()
{
  v0 = sub_10022C350(&qword_100CB1B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  sub_10067549C(&v6 - v1);
  v3 = type metadata accessor for PresetAppState();
  v4 = 0;
  if (!sub_100024D10(v2, 1, v3))
  {
    v4 = *&v2[*(v3 + 24)];
  }

  sub_1000180EC(v2, &qword_100CB1B20);
  return v4;
}

uint64_t sub_100675C80(void *a1)
{
  v2 = type metadata accessor for WeatherMapOverlayServiceSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000161C0(a1, a1[3]);
  static Settings.Maps.source.getter();
  (*(v3 + 104))(v5, enum case for WeatherMapOverlayServiceSource.staging(_:), v2);
  sub_1006762E4();
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  (*(v3 + 8))(v5, v2);
  sub_1000161C0(a1, a1[3]);
  static Settings.Maps.showDebugConsole.getter();
  v7[15] = 0;
  dispatch thunk of PresetApplicatorType.set<A>(_:to:)();

  static Settings.Maps.overrides.getter();
  dispatch thunk of SettingGroup.setEnabled(_:)();

  sub_1000161C0(a1, a1[3]);
  if (qword_100CA2470 != -1)
  {
    swift_once();
  }

  v7[14] = 1;
  return dispatch thunk of PresetApplicatorType.set<A>(_:to:)();
}

uint64_t sub_100675E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100044004();
  v17 = *(a1 + 24);
  v22 = *(a1 + 16);
  v23 = v17;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_10002D5A4();

  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v6, v3);

  v18 = *(v8 + 8);
  v18(v10, v7);
  URL.appendingPathExtension(_:)();
  v18(v13, v7);
  (*(v8 + 16))(v13, v16, v7);
  sub_10051D67C(v13, v21);
  return (v18)(v16, v7);
}

uint64_t sub_100676118()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___locations, &qword_100CCF250);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___timeState, &qword_100CCF248);
  sub_1000425D8(*(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState), *(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___weatherDataState + 8));
  sub_10002CD5C(*(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___preset));
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather11LocalPreset____lazy_storage___loadedData, &qword_100CCFE88);
  return v0;
}

uint64_t sub_1006761C0()
{
  sub_100676118();

  return swift_deallocClassInstance();
}

uint64_t sub_100676220()
{
  v1 = *(*v0 + 16);

  return v1;
}

unint64_t sub_1006762E4()
{
  result = qword_100CCFE80;
  if (!qword_100CCFE80)
  {
    type metadata accessor for WeatherMapOverlayServiceSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFE80);
  }

  return result;
}

Swift::Int sub_10067633C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for URL();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URL() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10067678C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10067646C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10067646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  result = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = URL.lastPathComponent.getter();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == URL.lastPathComponent.getter() && v31 == v32)
        {
          break;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10067678C(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v148 = a1;
  v8 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v8);
  v153 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v166 = &v144 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v144 - v14;
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v162 = &v144 - v18;
  v19 = __chkstk_darwin(v17);
  v161 = &v144 - v20;
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v26 = &v144 - v22;
  v159 = v23;
  v160 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_114:
    v171 = *v148;
    if (!v171)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v167 = v24;
  v144 = a4;
  v28 = 0;
  v171 = v23 + 16;
  v169 = (v23 + 32);
  v170 = (v23 + 8);
  v29 = _swiftEmptyArrayStorage;
  v163 = v8;
  v155 = v15;
  v145 = v25;
  v147 = &v144 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v150 = v28;
    if (v28 + 1 < v27)
    {
      v165 = v27;
      v146 = v29;
      v32 = v26;
      v33 = *v160;
      v34 = *(v23 + 72);
      v35 = v25;
      v158 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v147;
      v157 = v38;
      v38(v35, v39, v8);
      LODWORD(v164) = sub_1006750B8();
      if (v5)
      {
        v143 = *v170;
        (*v170)(v35, v8);
        (v143)(v40, v8);
LABEL_124:

        return;
      }

      v149 = 0;
      v41 = *v170;
      (*v170)(v35, v8);
      v156 = v41;
      (v41)(v40, v8);
      v42 = v150 + 2;
      v43 = &v33[v34 * (v150 + 2)];
      v31 = v158;
      v44 = v34;
      v168 = v34;
      v45 = v165;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v163;
        v5 = v157;
        (v157)(v161, v43, v163);
        v5(v162, v37, v48);
        v49 = URL.lastPathComponent.getter();
        v51 = v50;
        if (v49 == URL.lastPathComponent.getter() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v55 = v163;
        v56 = v156;
        (v156)(v162, v163);
        v56(v161, v55);
        v44 = v168;
        v43 += v168;
        v37 += v168;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v165;
        if ((v164 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v164)
      {
        v30 = v150;
        if (v31 < v150)
        {
          goto LABEL_149;
        }

        v5 = v149;
        if (v150 >= v31)
        {
          v23 = v159;
          v29 = v146;
          v8 = v163;
          v15 = v155;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v57 = v46;
        }

        else
        {
          v57 = v45;
        }

        v58 = v44 * (v57 - 1);
        v59 = v44 * v57;
        v60 = v150;
        v61 = v150 * v44;
        v62 = v31;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v160;
            if (!*v160)
            {
              goto LABEL_154;
            }

            v64 = v163;
            v165 = *v169;
            v165(v153, &v63[v61], v163);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v165(&v63[v58], v153, v64);
            v5 = v149;
            v44 = v168;
          }

          ++v60;
          v58 -= v44;
          v59 -= v44;
          v61 += v44;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v149;
      }

      v23 = v159;
      v29 = v146;
      v8 = v163;
      v15 = v155;
      v30 = v150;
    }

LABEL_39:
    v66 = v160[1];
    if (v31 < v66)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v144)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v29 = v133;
    }

    v89 = *(v29 + 2);
    v88 = *(v29 + 3);
    v90 = v89 + 1;
    v158 = v31;
    if (v89 >= v88 >> 1)
    {
      sub_10011E564();
      v29 = v134;
    }

    *(v29 + 2) = v90;
    v91 = v29 + 32;
    v92 = &v29[16 * v89 + 32];
    v93 = v158;
    *v92 = v150;
    *(v92 + 1) = v93;
    v168 = *v148;
    if (!v168)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v29[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v29 + 4);
          v98 = *(v29 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
LABEL_141:
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
          goto LABEL_148;
        }

        if (!*v160)
        {
          goto LABEL_152;
        }

        v126 = v29;
        v127 = &v91[16 * v94 - 16];
        v128 = *v127;
        v129 = &v91[16 * v94];
        v130 = *(v129 + 1);
        sub_100677348(&(*v160)[*(v159 + 72) * *v127], &(*v160)[*(v159 + 72) * *v129], &(*v160)[*(v159 + 72) * v130], v168);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v130 < v128)
        {
          goto LABEL_127;
        }

        v131 = *(v126 + 2);
        if (v94 > v131)
        {
          goto LABEL_128;
        }

        *v127 = v128;
        *(v127 + 1) = v130;
        if (v94 >= v131)
        {
          goto LABEL_129;
        }

        v90 = v131 - 1;
        sub_1003090FC(v129 + 16, v131 - 1 - v94, &v91[16 * v94]);
        v29 = v126;
        *(v126 + 2) = v131 - 1;
        v132 = v131 > 2;
        v15 = v155;
        if (!v132)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v159;
    v27 = v160[1];
    v28 = v158;
    v8 = v163;
    v25 = v145;
    v26 = v147;
    if (v158 >= v27)
    {
      goto LABEL_114;
    }
  }

  v67 = (v30 + v144);
  if (__OFADD__(v30, v144))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v160[1];
  }

  if (v67 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_100308E24();
LABEL_116:
    v135 = v29 + 16;
    v136 = *(v29 + 2);
    while (v136 >= 2)
    {
      if (!*v160)
      {
        goto LABEL_153;
      }

      v137 = v29;
      v138 = &v29[16 * v136];
      v139 = *v138;
      v140 = &v135[2 * v136];
      v141 = *(v140 + 1);
      sub_100677348(&(*v160)[*(v159 + 72) * *v138], &(*v160)[*(v159 + 72) * *v140], &(*v160)[*(v159 + 72) * v141], v171);
      if (v5)
      {
        break;
      }

      if (v141 < v139)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v138 = v139;
      *(v138 + 1) = v141;
      v142 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_1003090FC(v140 + 16, v142, v140);
      *v135 = v136;
      v29 = v137;
    }

    goto LABEL_124;
  }

  if (v31 == v67)
  {
    goto LABEL_62;
  }

  v146 = v29;
  v149 = v5;
  v68 = *v160;
  v69 = *(v23 + 72);
  v168 = *(v23 + 16);
  v70 = &v68[v69 * (v31 - 1)];
  v164 = -v69;
  v165 = v68;
  v71 = (v30 - v31);
  v151 = v69;
  v152 = v67;
  v72 = &v68[v31 * v69];
  v73 = v167;
LABEL_48:
  v157 = v70;
  v158 = v31;
  v154 = v72;
  v156 = v71;
  while (1)
  {
    v74 = v168;
    (v168)(v73, v72, v8);
    v74(v15, v70, v8);
    v75 = v15;
    v76 = URL.lastPathComponent.getter();
    v77 = v8;
    v79 = v78;
    if (v76 == URL.lastPathComponent.getter() && v79 == v80)
    {

      v87 = *v170;
      (*v170)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v15 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v84 = *v170;
    (*v170)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v15 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v167;
LABEL_60:
      v31 = v158 + 1;
      v70 = &v157[v151];
      v71 = v156 - 1;
      v72 = &v154[v151];
      if (v158 + 1 == v152)
      {
        v31 = v152;
        v5 = v149;
        v29 = v146;
        v30 = v150;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v165)
    {
      break;
    }

    v85 = *v169;
    v86 = v166;
    (*v169)(v166, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v164;
    v72 += v164;
    v65 = __CFADD__(v71++, 1);
    v73 = v167;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_100677348(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v70 = &v64 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - v14;
  result = __chkstk_darwin(v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_1006A07A4(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = URL.lastPathComponent.getter();
      v36 = v35;
      if (v34 == URL.lastPathComponent.getter() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = v42 + v27;
      v77 = a1;
    }
  }

  sub_1006A07A4(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = URL.lastPathComponent.getter();
    v54 = v53;
    if (v52 == URL.lastPathComponent.getter() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v58 = (v49 + v68);
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_100308F2C(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_100677950(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006779AC(uint64_t a1)
{
  v3 = type metadata accessor for MainAction();
  __chkstk_darwin(v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  sub_1006559C8(a1, v5);
  type metadata accessor for MoonDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v5, v8, v6);
  sub_1000E17D8(v8);
  return sub_1000547B8(v5);
}

double sub_100677ABC@<D0>(_OWORD *a1@<X8>)
{
  sub_10002F7A8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_100677B04@<D0>(_OWORD *a1@<X8>)
{
  result = sub_100677ABC(v5);
  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100677B48()
{
  v1 = type metadata accessor for WeatherMetadata();
  v10 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA7030);
  Forecast.forecast.getter();
  type metadata accessor for HourWeather();
  sub_10068280C(&qword_100CD00F8, &type metadata accessor for HourWeather);
  sub_10068280C(&qword_100CD0100, &type metadata accessor for HourWeather);
  Array<A>.write(to:)();

  if (!v0)
  {
    v8 = v3;
    v9 = v1;
    v11 = Forecast.minuteSummary.getter();
    v12 = v5;
    sub_10022C350(&qword_100CA6078);
    Optional<A>.write(to:)();

    v11 = Forecast.minuteConditions.getter();
    sub_10022C350(&qword_100CCFF38);
    sub_100678390();
    sub_100678478();
    Optional<A>.write(to:)();

    v11 = Forecast.minuteSummaries.getter();
    sub_10022C350(&qword_100CCFF68);
    sub_100678560();
    sub_100678648();
    Optional<A>.write(to:)();

    v6 = v8;
    Forecast.metadata.getter();
    WeatherMetadata.write(to:)();
    return (*(v10 + 8))(v6, v9);
  }

  return result;
}