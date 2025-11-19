uint64_t sub_100677E40()
{
  v1 = type metadata accessor for WeatherMetadata();
  v10 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA7000);
  Forecast.forecast.getter();
  type metadata accessor for DayWeather();
  sub_10068280C(&qword_100CD00E8, &type metadata accessor for DayWeather);
  sub_10068280C(&qword_100CD00F0, &type metadata accessor for DayWeather);
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

void Forecast<>.write(to:)()
{
  sub_10000E8AC();
  type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  Forecast.forecast.getter();
  Array<A>.write(to:)();

  if (!v0)
  {
    Forecast.minuteSummary.getter();
    sub_10022C350(&qword_100CA6078);
    Optional<A>.write(to:)();

    Forecast.minuteConditions.getter();
    sub_10022C350(&qword_100CCFF38);
    sub_100678390();
    sub_100678478();
    sub_1000046B4();
    Optional<A>.write(to:)();

    Forecast.minuteSummaries.getter();
    sub_10022C350(&qword_100CCFF68);
    sub_100678560();
    sub_100678648();
    sub_1000046B4();
    Optional<A>.write(to:)();

    Forecast.metadata.getter();
    WeatherMetadata.write(to:)();
    v2 = sub_100037B8C();
    v3(v2);
  }

  sub_10000C8F4();
}

unint64_t sub_100678390()
{
  result = qword_100CCFF40;
  if (!qword_100CCFF40)
  {
    sub_10022E824(&qword_100CCFF48);
    sub_10068280C(&qword_100CCFF50, &type metadata accessor for MinuteCondition);
    sub_10068280C(&qword_100CCFF58, &type metadata accessor for MinuteCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFF40);
  }

  return result;
}

unint64_t sub_100678478()
{
  result = qword_100CCFF60;
  if (!qword_100CCFF60)
  {
    sub_10022E824(&qword_100CCFF48);
    sub_10068280C(&qword_100CCFF50, &type metadata accessor for MinuteCondition);
    sub_10068280C(&qword_100CCFF58, &type metadata accessor for MinuteCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFF60);
  }

  return result;
}

unint64_t sub_100678560()
{
  result = qword_100CCFF70;
  if (!qword_100CCFF70)
  {
    sub_10022E824(&qword_100CCFF78);
    sub_10068280C(&qword_100CCFF80, &type metadata accessor for MinuteSummary);
    sub_10068280C(&qword_100CCFF88, &type metadata accessor for MinuteSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFF70);
  }

  return result;
}

unint64_t sub_100678648()
{
  result = qword_100CCFF90;
  if (!qword_100CCFF90)
  {
    sub_10022E824(&qword_100CCFF78);
    sub_10068280C(&qword_100CCFF80, &type metadata accessor for MinuteSummary);
    sub_10068280C(&qword_100CCFF88, &type metadata accessor for MinuteSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFF90);
  }

  return result;
}

uint64_t sub_100678730()
{
  v1 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for HourWeather();
  sub_10068280C(&qword_100CD00F8, &type metadata accessor for HourWeather);
  sub_10068280C(&qword_100CD0100, &type metadata accessor for HourWeather);
  result = static Array<A>.read(from:)();
  if (!v0)
  {
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF48);
    sub_100678390();
    sub_100678478();
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF78);
    sub_100678560();
    sub_100678648();
    static Optional<A>.read(from:)();
    static WeatherMetadata.read(from:)();
    sub_10068280C(&qword_100CB0C20, &type metadata accessor for HourWeather);
    sub_10068280C(&qword_100CB0C28, &type metadata accessor for HourWeather);
    sub_10068280C(&qword_100CB0C30, &type metadata accessor for HourWeather);
    return Forecast.init(_:minuteSummary:minuteConditions:minuteSummaries:metadata:)();
  }

  return result;
}

uint64_t sub_100678A58()
{
  v1 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for DayWeather();
  sub_10068280C(&qword_100CD00E8, &type metadata accessor for DayWeather);
  sub_10068280C(&qword_100CD00F0, &type metadata accessor for DayWeather);
  result = static Array<A>.read(from:)();
  if (!v0)
  {
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF48);
    sub_100678390();
    sub_100678478();
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF78);
    sub_100678560();
    sub_100678648();
    static Optional<A>.read(from:)();
    static WeatherMetadata.read(from:)();
    sub_10068280C(&qword_100CB0C50, &type metadata accessor for DayWeather);
    sub_10068280C(&qword_100CB0C58, &type metadata accessor for DayWeather);
    sub_10068280C(&qword_100CB0C60, &type metadata accessor for DayWeather);
    return Forecast.init(_:minuteSummary:minuteConditions:minuteSummaries:metadata:)();
  }

  return result;
}

void static Forecast<>.read(from:)()
{
  sub_10000E8AC();
  v1 = type metadata accessor for WeatherMetadata();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  static Array<A>.read(from:)();
  if (!v0)
  {
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF48);
    sub_100678390();
    sub_100678478();
    sub_10006A870();
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CCFF78);
    sub_100678560();
    sub_100678648();
    sub_10006A870();
    static Optional<A>.read(from:)();
    static WeatherMetadata.read(from:)();
    Forecast.init(_:minuteSummary:minuteConditions:minuteSummaries:metadata:)();
  }

  sub_10000C8F4();
}

void Trend<>.write(to:)()
{
  sub_10000E8AC();
  v27 = v2;
  v4 = v3;
  type metadata accessor for Deviation();
  sub_1000037C4();
  v23[1] = v5;
  v23[2] = v6;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v23[0] = v7;
  type metadata accessor for Measurement();
  sub_1000037C4();
  v23[3] = v9;
  v24 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for TrendBaseline();
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  v25 = v0;
  v26 = v4;
  Trend.baseline.getter();
  TrendBaseline<>.write(to:)();
  (*(v13 + 8))(v16, v11);
  if (!v1)
  {
    Trend.currentValue.getter();
    v17 = v24;
    Measurement<>.write(to:)();
    v18 = sub_100037B8C();
    v19(v18, v17);
    Trend.deviation.getter();
    Deviation.write(to:)();
    v20 = sub_100037B8C();
    v22(v20, v21);
  }

  sub_1000AF600();
  sub_10000C8F4();
}

void TrendBaseline<>.write(to:)()
{
  sub_10000E8AC();
  v4 = v3;
  type metadata accessor for Date();
  sub_1000037C4();
  v16 = v5;
  v17 = v6;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v15 = v7;
  sub_1001200F8();
  type metadata accessor for Measurement();
  sub_1000037C4();
  v18 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000871C0();
  sub_1001200F8();
  v10 = type metadata accessor for TrendBaseline.Kind();
  sub_1000037C4();
  v12 = v11;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100021D38();
  TrendBaseline.kind.getter();
  TrendBaseline.Kind<>.write(to:)(v4, v10);
  (*(v12 + 8))(v1, v10);
  if (!v0)
  {
    TrendBaseline.value.getter();
    Measurement<>.write(to:)();
    sub_100014A24();
    v14(v2, v18);
    TrendBaseline.startDate.getter();
    Date.write(to:)();
    (*(v17 + 8))(v15, v16);
  }

  sub_1000AF600();
  sub_10000C8F4();
}

void Measurement<>.write(to:)()
{
  Measurement.value.getter();
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    v1 = Measurement.unit.getter();
    dispatch thunk of BinaryEncodable.write(to:)();
  }
}

void static Trend<>.read(from:)()
{
  sub_10000E8AC();
  sub_100003A00();
  v1 = type metadata accessor for Deviation();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for Measurement();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10003038C();
  sub_1001200F8();
  type metadata accessor for TrendBaseline();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100021D38();
  static TrendBaseline<>.read(from:)();
  if (!v0)
  {
    sub_1000046B4();
    static Measurement<>.read(from:)();
    static Deviation.read(from:)();
    Trend.init(baseline:currentValue:deviation:)();
  }

  sub_10000C8F4();
}

void static TrendBaseline<>.read(from:)()
{
  sub_10000E8AC();
  v1 = type metadata accessor for Date();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1001200F8();
  type metadata accessor for Measurement();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000183C0();
  sub_1001200F8();
  type metadata accessor for TrendBaseline.Kind();
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10001365C();
  sub_1000046B4();
  static TrendBaseline.Kind<>.read(from:)(v5);
  if (!v0)
  {
    sub_1000046B4();
    static Measurement<>.read(from:)();
    static Date.read(from:)();
    TrendBaseline.init(kind:value:startDate:)();
  }

  sub_1000AF600();
  sub_10000C8F4();
}

uint64_t static Measurement<>.read(from:)()
{
  result = static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    dispatch thunk of static BinaryDecodable.read(from:)();
    return Measurement.init(value:unit:)();
  }

  return result;
}

uint64_t TrendBaseline.Kind<>.write(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a2, v4);
  if ((*(v3 + 88))(v6, a2) == enum case for TrendBaseline.Kind.mean<A>(_:))
  {
    v14 = 1;
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    v9 = type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v10, v11);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v12, enum case for BinaryDecoder.Error.valueNotSupported(_:), v9);
    swift_willThrow();
    return (*(v3 + 8))(v6, a2);
  }
}

uint64_t static TrendBaseline.Kind<>.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000526D4();
  if (!v1)
  {
    sub_100051AC0();
    if (v4)
    {
      v5 = enum case for TrendBaseline.Kind.mean<A>(_:);
      type metadata accessor for TrendBaseline.Kind();
      sub_1000037E8();
      return (*(v6 + 104))(a1, v5);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v7, v8);
      v9 = sub_100074D7C();
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

void DailyWeatherSummary<>.write(to:)()
{
  sub_10000E8AC();
  type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000106FC();
  DailyWeatherSummary.days.getter();
  Array<A>.write(to:)();

  if (!v0)
  {
    DailyWeatherSummary.metadata.getter();
    sub_1000437C8();
    WeatherMetadata.write(to:)();
    v2 = sub_1000215E0();
    v3(v2);
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void static DailyWeatherSummary<>.read(from:)()
{
  sub_10000E8AC();
  v1 = type metadata accessor for WeatherMetadata();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_1000183C0();
  static Array<A>.read(from:)();
  if (!v0)
  {
    static WeatherMetadata.read(from:)();
    DailyWeatherSummary.init(days:metadata:)();
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void sub_10067A230()
{
  sub_10000E8AC();
  v15 = v2;
  v17 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for WeatherMetadata();
  sub_1000037C4();
  v16 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_1000871C0();
  v11 = type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v5(v7);
  Array<A>.write(to:)();

  if (!v0)
  {
    v17(v7);
    Date.write(to:)();
    v13 = sub_100037B8C();
    v14(v13, v11);
    v15(v7);
    WeatherMetadata.write(to:)();
    (*(v16 + 8))(v1, v8);
  }

  sub_1000AF600();
  sub_10000C8F4();
}

void sub_10067A45C()
{
  sub_10000E8AC();
  v16 = v3;
  v17 = v4;
  v14 = v5;
  v15 = v6;
  v8 = v7;
  v9 = type metadata accessor for WeatherMetadata();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_1000183C0();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_10001365C();
  v12 = static Array<A>.read(from:)();
  if (!v1)
  {
    v13 = v12;
    static Date.read(from:)();
    static WeatherMetadata.read(from:)();
    v17(v13, v0, v2, v8, v14, v15, v16);
  }

  sub_10000C8F4();
}

void Percentiles<>.write(to:)()
{
  sub_10000E8AC();
  v2 = type metadata accessor for Measurement();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  sub_100020104();
  __chkstk_darwin(v8);
  Percentiles.p10.getter();
  Measurement<>.write(to:)();
  v9 = sub_1000046B4();
  if (v0)
  {
    v11(v9, v10);
  }

  else
  {
    v12 = v11;
    (v11)(v9);
    Percentiles.p50.getter();
    sub_1000215E0();
    Measurement<>.write(to:)();
    v12(v1, v2);
    Percentiles.p90.getter();
    sub_1000215E0();
    Measurement<>.write(to:)();
    v12(v6, v2);
  }

  sub_10000C8F4();
}

void static Percentiles<>.read(from:)()
{
  sub_10000E8AC();
  type metadata accessor for Measurement();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100003C38();
  __chkstk_darwin(v2);
  sub_100020104();
  __chkstk_darwin(v3);
  sub_100051FCC();
  static Measurement<>.read(from:)();
  if (!v0)
  {
    sub_100051FCC();
    static Measurement<>.read(from:)();
    sub_100051FCC();
    static Measurement<>.read(from:)();
    Percentiles.init(p10:p50:p90:)();
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void sub_10067A9E8()
{
  FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_1007527F8();
    type metadata accessor for ViewState(0);
    sub_100013AD0();
    sub_10077BF3C();
    sub_10000CDB0();
    ListSessionTrigger.write(to:)();
    sub_1000B010C();
    sub_10000CDB0();
    ListSessionTrigger.write(to:)();
    sub_10022C350(&qword_100CA6600);
    sub_10068280C(&qword_100CD0060, type metadata accessor for SearchViewState);
    sub_10003A2E8();
    sub_10068280C(v1, type metadata accessor for SearchViewState);
    sub_1001721B0();
    Optional<A>.write(to:)();
    v2 = sub_100013AD0();
    sub_10077C0B0(v2);
    sub_100013AD0();
    sub_100756344();
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }
}

void sub_10067ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v17 = v16;
  v52 = v18;
  v19 = type metadata accessor for WeatherMapPresentationState(0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100021D38();
  v21 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v51 = v22;
  __chkstk_darwin(v23);
  sub_1000037D8();
  sub_10001365C();
  v24 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  sub_10003038C();
  v26 = sub_10022C350(&qword_100CA6600);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000871C0();
  v28 = type metadata accessor for ViewState.SecondaryViewState(0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000106FC();
  sub_1000B0CA4();
  v30 = sub_10077C158();
  if (!v14)
  {
    v49 = v15;
    v48 = v21;
    v50 = v30;
    sub_10003BB20();
    sub_10077C238();
    sub_10003BB20();
    v31 = static ListSessionTrigger.read(from:)();
    sub_10003BB20();
    v32 = static ListSessionTrigger.read(from:)();
    type metadata accessor for SearchViewState(0);
    sub_10068280C(&qword_100CD0060, type metadata accessor for SearchViewState);
    sub_10003A2E8();
    sub_10068280C(v33, type metadata accessor for SearchViewState);
    static Optional<A>.read(from:)();
    sub_10003BB20();
    v34 = static UIInterfaceOrientation.read(from:)();
    sub_10003BB20();
    v47 = static UIUserInterfaceSizeClass.read(from:)();
    sub_10003BB20();
    v53 = static NotificationAuthorizationState.read(from:)();
    sub_10003BB20();
    v46 = static ListSessionTrigger.read(from:)();
    sub_10003BB20();
    v45 = sub_100786250();
    sub_10003BB20();
    static DynamicTypeSize.read(from:)(v35);
    *v49 = v34;
    *(v49 + 8) = v47;
    *(v49 + 16) = v53;
    *(v49 + 17) = v46 & 1;
    *(v49 + 18) = v45;
    (*(v51 + 32))(v49 + *(v24 + 36), v13, v48);
    sub_100756108(v17, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, SBYTE2(v46), SHIBYTE(v46));
    static FixedSizeTypeBinaryCodable.read(from:)();
    *v52 = v50;
    v43 = type metadata accessor for ViewState(0);
    sub_10068275C();
    *(v52 + v43[6]) = v31 & 1;
    *(v52 + v43[7]) = v32 & 1;
    sub_100682654();
    sub_10068275C();
    sub_10068275C();
    *(v52 + v43[11]) = a13;
  }

  sub_10000C8F4();
}

void static WeatherAttribution.read(from:)()
{
  sub_10000E8AC();
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100003C38();
  __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  sub_100018648();
  static String.read(from:)();
  if (!v0)
  {
    sub_100018648();
    static URL.read(from:)();
    sub_100018648();
    static URL.read(from:)();
    sub_100018648();
    static URL.read(from:)();
    sub_100018648();
    static URL.read(from:)();
    WeatherAttribution.init(serviceName:legalPageURL:squareMarkURL:combinedMarkDarkURL:combinedMarkLightURL:)();
  }

  sub_10000C8F4();
}

void WeatherAttribution.write(to:)()
{
  sub_10000E8AC();
  v1 = type metadata accessor for URL();
  sub_1000037C4();
  v24 = v2;
  __chkstk_darwin(v3);
  sub_100003C38();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  WeatherAttribution.serviceName.getter();
  String.write(to:)();
  if (v0)
  {
  }

  else
  {
    v22 = v6;
    v23 = v9;
    v16 = v24;

    WeatherAttribution.legalPageURL.getter();
    URL.write(to:)();
    v17 = *(v16 + 8);
    v18 = v1;
    v17(v15, v1);
    WeatherAttribution.squareMarkURL.getter();
    URL.write(to:)();
    v17(v12, v1);
    v19 = v23;
    WeatherAttribution.combinedMarkDarkURL.getter();
    URL.write(to:)();
    v17(v19, v18);
    v20 = v22;
    WeatherAttribution.combinedMarkLightURL.getter();
    URL.write(to:)();
    v17(v20, v18);
  }

  sub_10000C8F4();
}

void static WeatherDataModel.read(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v44 = v10;
  v45 = v12;
  v43[7] = v13;
  v14 = sub_10022C350(&qword_100CABD00);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v43[8] = v16;
  v17 = sub_10022C350(&qword_100CABD10);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v43[11] = v19;
  sub_1000038CC();
  type metadata accessor for WeatherAvailability();
  sub_1000037C4();
  v43[9] = v21;
  v43[10] = v20;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v43[12] = v22;
  v23 = sub_10022C350(&qword_100CACDF8);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v43[13] = v25;
  v26 = sub_10022C350(&qword_100CC62B8);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000183C0();
  v28 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v43[14] = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = v43 - v31;
  v33 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v43[15] = v34;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_10001365C();
  v36 = sub_10022C350(&qword_100CB0BA0);
  sub_100003810(v36);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000132E8();
  v38 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_1000037D8();
  v42 = v44;
  static CurrentWeather.read(from:)(v45);
  if (!v42)
  {
    v43[2] = v28;
    v43[3] = v11;
    v43[4] = v33;
    v43[5] = v32;
    v43[6] = v38;
    v44 = v40;
    sub_10022C350(&qword_100CAE8F0);
    sub_10067BDCC();
    sub_10067BEB4();
    sub_1001721B0();
    static Optional<A>.read(from:)();
    sub_100678730();
    sub_100678A58();
    type metadata accessor for AirQuality();
    sub_10068280C(&qword_100CCFFC0, &type metadata accessor for AirQuality);
    sub_1000BCEE4(&qword_100CCFFC8);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    type metadata accessor for WeatherChanges();
    sub_10068280C(&qword_100CCFFD0, &type metadata accessor for WeatherChanges);
    sub_1000BCEE4(&qword_100CCFFD8);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    sub_10022C350(&qword_100CB4738);
    sub_10067BF9C();
    sub_10067C084();
    sub_1001721B0();
    static Optional<A>.read(from:)();
    static WeatherAvailability.read(from:)();
    v43[1] = a10;
    v43[0] = type metadata accessor for HistoricalComparisons();
    sub_10068280C(&qword_100CD0000, &type metadata accessor for HistoricalComparisons);
    sub_1000BCEE4(&qword_100CD0008);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    v43[0] = type metadata accessor for HistoricalFacts();
    sub_10068280C(&qword_100CD0010, &type metadata accessor for HistoricalFacts);
    sub_1000BCEE4(&qword_100CD0018);
    sub_1000523E0();
    static Optional<A>.read(from:)();
    WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  }

  sub_10000C8F4();
}

unint64_t sub_10067BDCC()
{
  result = qword_100CCFFA0;
  if (!qword_100CCFFA0)
  {
    sub_10022E824(&qword_100CAE8F0);
    sub_10068280C(&qword_100CCFFA8, &type metadata accessor for MinuteWeather);
    sub_10068280C(&qword_100CCFFB0, &type metadata accessor for MinuteWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFFA0);
  }

  return result;
}

unint64_t sub_10067BEB4()
{
  result = qword_100CCFFB8;
  if (!qword_100CCFFB8)
  {
    sub_10022E824(&qword_100CAE8F0);
    sub_10068280C(&qword_100CCFFA8, &type metadata accessor for MinuteWeather);
    sub_10068280C(&qword_100CCFFB0, &type metadata accessor for MinuteWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFFB8);
  }

  return result;
}

unint64_t sub_10067BF9C()
{
  result = qword_100CCFFE0;
  if (!qword_100CCFFE0)
  {
    sub_10022E824(&qword_100CB4738);
    sub_10068280C(&qword_100CCFFE8, &type metadata accessor for WeatherAlert);
    sub_10068280C(&qword_100CCFFF0, &type metadata accessor for WeatherAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFFE0);
  }

  return result;
}

unint64_t sub_10067C084()
{
  result = qword_100CCFFF8;
  if (!qword_100CCFFF8)
  {
    sub_10022E824(&qword_100CB4738);
    sub_10068280C(&qword_100CCFFE8, &type metadata accessor for WeatherAlert);
    sub_10068280C(&qword_100CCFFF0, &type metadata accessor for WeatherAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFFF8);
  }

  return result;
}

void WeatherDataModel.write(to:)(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_10067C1D8(v1, a1, &v4);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_10067C1D8(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = a3;
  v39 = sub_10022C350(&qword_100CABD00);
  __chkstk_darwin(v39);
  v40 = &v39 - v5;
  v41 = sub_10022C350(&qword_100CABD10);
  __chkstk_darwin(v41);
  v42 = &v39 - v6;
  v7 = type metadata accessor for WeatherAvailability();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10022C350(&qword_100CACDF8);
  __chkstk_darwin(v46);
  v47 = &v39 - v9;
  v49 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v49);
  v48 = &v39 - v10;
  v11 = sub_10022C350(&qword_100CA7000);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v50 = &v39 - v13;
  v14 = sub_10022C350(&qword_100CA7030);
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = sub_10022C350(&qword_100CB0BA0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for CurrentWeather();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  WeatherDataModel.currentWeather.getter();
  v24 = v56;
  CurrentWeather.write(to:)(a2, v25, v26, v27, v28, v29, v30, v31, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  if (v24)
  {
    result = (*(v21 + 8))(v23, v20);
    *v55 = v24;
  }

  else
  {
    (*(v21 + 8))(v23, v20);
    WeatherDataModel.minuteForecast.getter();
    sub_10067BDCC();
    sub_10067BEB4();
    Optional<A>.write(to:)();
    sub_1006827B8(v19, &qword_100CB0BA0);
    WeatherDataModel.hourlyForecast.getter();
    sub_100677B48();
    (*(v53 + 8))(v16, v14);
    v33 = v50;
    WeatherDataModel.dailyForecast.getter();
    sub_100677E40();
    (*(v52 + 8))(v33, v51);
    v34 = v48;
    WeatherDataModel.airQuality.getter();
    sub_10068280C(&qword_100CCFFC0, &type metadata accessor for AirQuality);
    sub_10068280C(&qword_100CCFFC8, &type metadata accessor for AirQuality);
    Optional<A>.write(to:)();
    sub_1006827B8(v34, &qword_100CC62B8);
    v35 = v47;
    WeatherDataModel.weatherChanges.getter();
    sub_10068280C(&qword_100CCFFD0, &type metadata accessor for WeatherChanges);
    sub_10068280C(&qword_100CCFFD8, &type metadata accessor for WeatherChanges);
    Optional<A>.write(to:)();
    sub_1006827B8(v35, &qword_100CACDF8);
    v57 = WeatherDataModel.weatherAlerts.getter();
    sub_10022C350(&qword_100CD00E0);
    sub_10067BF9C();
    sub_10067C084();
    Optional<A>.write(to:)();

    v36 = v43;
    WeatherDataModel.availability.getter();
    WeatherAvailability.write(to:)();
    (*(v44 + 8))(v36, v45);
    v37 = v42;
    WeatherDataModel.historicalComparisons.getter();
    sub_10068280C(&qword_100CD0000, &type metadata accessor for HistoricalComparisons);
    sub_10068280C(&qword_100CD0008, &type metadata accessor for HistoricalComparisons);
    Optional<A>.write(to:)();
    sub_1006827B8(v37, &qword_100CABD10);
    v38 = v40;
    WeatherDataModel.historicalFacts.getter();
    sub_10068280C(&qword_100CD0010, &type metadata accessor for HistoricalFacts);
    sub_10068280C(&qword_100CD0018, &type metadata accessor for HistoricalFacts);
    Optional<A>.write(to:)();
    return sub_1006827B8(v38, &qword_100CABD00);
  }

  return result;
}

uint64_t DynamicTypeSize.write(to:)()
{
  v1 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000106FC();
  sub_10006A870();
  v5();
  v6 = (*(v3 + 88))(v0, v1);
  if (v6 == enum case for DynamicTypeSize.xSmall(_:) || v6 == enum case for DynamicTypeSize.small(_:) || v6 == enum case for DynamicTypeSize.medium(_:) || v6 == enum case for DynamicTypeSize.large(_:) || v6 == enum case for DynamicTypeSize.xLarge(_:) || v6 == enum case for DynamicTypeSize.xxLarge(_:) || v6 == enum case for DynamicTypeSize.xxxLarge(_:) || v6 == enum case for DynamicTypeSize.accessibility1(_:) || v6 == enum case for DynamicTypeSize.accessibility2(_:) || v6 == enum case for DynamicTypeSize.accessibility3(_:) || v6 == enum case for DynamicTypeSize.accessibility4(_:) || v6 == enum case for DynamicTypeSize.accessibility5(_:))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    return (*(v3 + 8))(v0, v1);
  }
}

uint64_t static DynamicTypeSize.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000526D4();
  if (!v1)
  {
    sub_1000719BC();
    if (v4 >= 0xC)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v7, v8);
      v9 = sub_100074D7C();
      sub_10002C964(v9, v10);
      sub_100006494();
      (*(v11 + 104))();
      return swift_willThrow();
    }

    else
    {
      v5 = **(&off_100C65340 + v4);
      type metadata accessor for DynamicTypeSize();
      sub_1000037E8();
      return (*(v6 + 104))(a1, v5);
    }
  }

  return result;
}

void NSUnitAngle.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 degrees];
  sub_10008845C(v1, &qword_100CCFAD0);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = [v0 arcMinutes], v4 = sub_1000C87F8(), v1, (v4) || (v5 = objc_msgSend(v0, "arcSeconds"), v6 = sub_1000C87F8(), v1, (v6) || (v7 = objc_msgSend(v0, "radians"), v8 = sub_1000C87F8(), v1, (v8) || (v9 = objc_msgSend(v0, "gradians"), v10 = sub_1000C87F8(), v1, (v10) || (v11 = objc_msgSend(v0, "revolutions"), v12 = sub_100032654(), v0, (v12))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v13, v14);
    v15 = sub_100074D7C();
    sub_10002C964(v15, v16);
    sub_100006494();
    (*(v17 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitAngle.read(from:)()
{
  result = sub_1000526D4();
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 6)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v5, v6);
      v7 = sub_100074D7C();
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }

    else
    {
      v4 = [sub_1000C8608() *v0];
      return sub_100017C38(v4);
    }
  }

  return result;
}

uint64_t sub_10067D37C@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUnitAngle.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void NSUnitSpeed.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v1 = objc_opt_self();
  v2 = [v1 metersPerSecond];
  sub_10008845C(v2, &qword_100CAC428);
  v3 = sub_1000202EC();

  if (v3)
  {
    goto LABEL_12;
  }

  v4 = [v1 kilometersPerHour];
  v5 = sub_1000C87F8();

  if (v5)
  {
    goto LABEL_12;
  }

  v6 = [v1 milesPerHour];
  v7 = sub_1000C87F8();

  if (v7)
  {
    goto LABEL_12;
  }

  v8 = [v1 knots];
  v9 = sub_100032654();

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = [v0 symbol];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 1747938669 && v13 == 0xE400000000000000)
  {

    goto LABEL_12;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_12:
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
    goto LABEL_13;
  }

  type metadata accessor for BinaryDecoder.Error();
  sub_10001F4A0();
  sub_10068280C(v16, v17);
  v18 = sub_100074D7C();
  sub_10002C964(v18, v19);
  sub_100006494();
  (*(v20 + 104))();
  swift_willThrow();
LABEL_13:
  sub_100088758();
}

uint64_t static NSUnitSpeed.read(from:)()
{
  result = sub_1000526D4();
  if (!v0)
  {
    switch(v11)
    {
      case 1:
        v2 = [swift_getObjCClassFromMetadata() metersPerSecond];
        goto LABEL_8;
      case 2:
        v2 = [swift_getObjCClassFromMetadata() kilometersPerHour];
        goto LABEL_8;
      case 3:
        v2 = [swift_getObjCClassFromMetadata() milesPerHour];
        goto LABEL_8;
      case 4:
        v2 = [swift_getObjCClassFromMetadata() knots];
LABEL_8:
        v5 = v2;
        goto LABEL_9;
      case 5:
        v3 = [objc_allocWithZone(NSUnitConverterLinear) initWithCoefficient:0.00000027777];
        v4 = objc_allocWithZone(NSUnitSpeed);
        v5 = sub_1006825F0(1747938669, 0xE400000000000000, v3);
LABEL_9:
        result = sub_100017C38(v5);
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        sub_10068280C(v6, v7);
        v8 = sub_100074D7C();
        sub_10002C964(v8, v9);
        sub_100006494();
        (*(v10 + 104))();
        result = swift_willThrow();
        break;
    }
  }

  return result;
}

uint64_t sub_10067D808@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUnitSpeed.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void NSUnitTemperature.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 celsius];
  sub_10008845C(v1, &qword_100CA51B0);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = [v0 fahrenheit], v4 = sub_1000C87F8(), v1, (v4) || (v5 = objc_msgSend(v0, "kelvin"), v6 = sub_100032654(), v0, (v6))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v7, v8);
    v9 = sub_100074D7C();
    sub_10002C964(v9, v10);
    sub_100006494();
    (*(v11 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitTemperature.read(from:)()
{
  result = sub_1000526D4();
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 3)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v5, v6);
      v7 = sub_100074D7C();
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }

    else
    {
      v4 = [sub_1000C8608() *v0];
      return sub_100017C38(v4);
    }
  }

  return result;
}

uint64_t sub_10067DAEC@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUnitTemperature.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void NSUnitLength.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 megameters];
  sub_10008845C(v1, &qword_100CAB968);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = [v0 kilometers], v4 = sub_1000C87F8(), v1, (v4) || (v5 = objc_msgSend(v0, "hectometers"), v6 = sub_1000C87F8(), v1, (v6) || (v7 = objc_msgSend(v0, "decameters"), v8 = sub_1000C87F8(), v1, (v8) || (v9 = objc_msgSend(v0, "meters"), v10 = sub_1000C87F8(), v1, (v10) || (v11 = objc_msgSend(v0, "decimeters"), v12 = sub_1000C87F8(), v1, (v12) || (v13 = objc_msgSend(v0, "centimeters"), v14 = sub_1000C87F8(), v1, (v14) || (v15 = objc_msgSend(v0, "millimeters"), v16 = sub_1000C87F8(), v1, (v16) || (v17 = objc_msgSend(v0, "micrometers"), v18 = sub_1000C87F8(), v1, (v18) || (v19 = objc_msgSend(v0, "nanometers"), v20 = sub_1000C87F8(), v1, (v20) || (v21 = objc_msgSend(v0, "picometers"), v22 = sub_1000C87F8(), v1, (v22) || (v23 = objc_msgSend(v0, "inches"), v24 = sub_1000C87F8(), v1, (v24) || (v25 = objc_msgSend(v0, "feet"), v26 = sub_1000C87F8(), v1, (v26) || (v27 = objc_msgSend(v0, "yards"), v28 = sub_1000C87F8(), v1, (v28) || (v29 = objc_msgSend(v0, "miles"), v30 = sub_1000C87F8(), v1, (v30) || (v31 = objc_msgSend(v0, "scandinavianMiles"), v32 = sub_1000C87F8(), v1, (v32) || (v33 = objc_msgSend(v0, "lightyears"), v34 = sub_1000C87F8(), v1, (v34) || (v35 = objc_msgSend(v0, "nauticalMiles"), v36 = sub_1000C87F8(), v1, (v36) || (v37 = objc_msgSend(v0, "fathoms"), v38 = sub_1000C87F8(), v1, (v38) || (v39 = objc_msgSend(v0, "furlongs"), v40 = sub_1000C87F8(), v1, (v40) || (v41 = objc_msgSend(v0, "astronomicalUnits"), v42 = sub_1000C87F8(), v1, (v42) || (v43 = objc_msgSend(v0, "parsecs"), v44 = sub_100032654(), v0, (v44))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v45, v46);
    v47 = sub_100074D7C();
    sub_10002C964(v47, v48);
    sub_100006494();
    (*(v49 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitLength.read(from:)()
{
  result = sub_1000526D4();
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 0x16)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v5, v6);
      v7 = sub_100074D7C();
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }

    else
    {
      v4 = [sub_1000C8608() *v0];
      return sub_100017C38(v4);
    }
  }

  return result;
}

uint64_t sub_10067E130@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUnitLength.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NSUnitPressure.write(to:)()
{
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 newtonsPerMetersSquared];
  sub_10008845C(v1, &qword_100CAC448);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = [v0 gigapascals], v4 = sub_1000C87F8(), v1, (v4) || (v5 = objc_msgSend(v0, "megapascals"), v6 = sub_1000C87F8(), v1, (v6) || (v7 = objc_msgSend(v0, "kilopascals"), v8 = sub_1000C87F8(), v1, (v8) || (v9 = objc_msgSend(v0, "hectopascals"), v10 = sub_1000C87F8(), v1, (v10) || (v11 = objc_msgSend(v0, "inchesOfMercury"), v12 = sub_1000C87F8(), v1, (v12) || (v13 = objc_msgSend(v0, "bars"), v14 = sub_1000C87F8(), v1, (v14) || (v15 = objc_msgSend(v0, "millibars"), v16 = sub_1000C87F8(), v1, (v16) || (v17 = objc_msgSend(v0, "millimetersOfMercury"), v18 = sub_1000C87F8(), v1, (v18) || (v19 = objc_msgSend(v0, "poundsForcePerSquareInch"), v20 = sub_100032654(), v0, (v20))
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v22, v23);
    v24 = sub_100074D7C();
    sub_10002C964(v24, v25);
    sub_100006494();
    (*(v26 + 104))();
    return swift_willThrow();
  }
}

uint64_t static NSUnitPressure.read(from:)()
{
  result = sub_1000526D4();
  if (!v1)
  {
    sub_1000719BC();
    if (v3 >= 0xA)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v5, v6);
      v7 = sub_100074D7C();
      sub_10002C964(v7, v8);
      sub_100006494();
      (*(v9 + 104))();
      return swift_willThrow();
    }

    else
    {
      v4 = [sub_1000C8608() *v0];
      return sub_100017C38(v4);
    }
  }

  return result;
}

uint64_t sub_10067E61C@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUnitPressure.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NSUnitDispersion.write(to:)()
{
  v0 = [objc_opt_self() partsPerMillion];
  sub_10000C70C(0, &qword_100CD0020);
  v1 = static NSObject.== infix(_:_:)();

  if (v1)
  {
    sub_10000CDB0();
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v3, v4);
    v5 = sub_100074D7C();
    sub_10002C964(v5, v6);
    sub_100006494();
    (*(v7 + 104))();
    return swift_willThrow();
  }
}

uint64_t static NSUnitDispersion.read(from:)()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_100051AC0();
    if (v2)
    {
      v3 = [swift_getObjCClassFromMetadata() partsPerMillion];
      return sub_100017C38(v3);
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v4, v5);
      v6 = sub_100074D7C();
      sub_10002C964(v6, v7);
      sub_100006494();
      (*(v8 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10067E880@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUnitDispersion.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void NSUnitConcentrationMass.write(to:)()
{
  sub_1000D3C1C();
  sub_10002498C();
  v0 = objc_opt_self();
  v1 = [v0 gramsPerLiter];
  sub_10008845C(v1, &qword_100CD0028);
  v2 = sub_1000202EC();

  if (v2 & 1) != 0 || (v3 = [v0 milligramsPerDeciliter], v4 = sub_100032654(), v0, (v4))
  {
    sub_10000CDB0();
    FixedSizeTypeBinaryCodable.write(to:)();
  }

  else
  {
    type metadata accessor for BinaryDecoder.Error();
    sub_10001F4A0();
    sub_10068280C(v5, v6);
    v7 = sub_100074D7C();
    sub_10002C964(v7, v8);
    sub_100006494();
    (*(v9 + 104))();
    swift_willThrow();
  }

  sub_100088758();
}

uint64_t static NSUnitConcentrationMass.read(from:)()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_100051AC0();
    if (v3)
    {
      v4 = &selRef_gramsPerLiter;
    }

    else
    {
      if (v2 != 2)
      {
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        sub_10068280C(v6, v7);
        v8 = sub_100074D7C();
        sub_10002C964(v8, v9);
        sub_100006494();
        (*(v10 + 104))();
        return swift_willThrow();
      }

      v4 = &selRef_milligramsPerDeciliter;
    }

    v5 = [swift_getObjCClassFromMetadata() *v4];
    return sub_100017C38(v5);
  }

  return result;
}

uint64_t sub_10067EB30@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUnitConcentrationMass.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t UIInterfaceOrientation.write(to:)(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      result = FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v3, v4);
      v5 = sub_100074D7C();
      sub_10002C964(v5, v6);
      sub_100006494();
      (*(v7 + 104))();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t static UIInterfaceOrientation.read(from:)()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_1000719BC();
    if (v2 >= 4u)
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v3, v4);
      v5 = sub_100074D7C();
      sub_10002C964(v5, v6);
      sub_100006494();
      (*(v7 + 104))();
      return swift_willThrow();
    }

    else
    {
      return qword_100A74890[v2];
    }
  }

  return result;
}

uint64_t sub_10067EDA4@<X0>(uint64_t *a1@<X8>)
{
  result = static UIInterfaceOrientation.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t UIUserInterfaceSizeClass.write(to:)(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 || a2 == 2)
  {
    return FixedSizeTypeBinaryCodable.write(to:)();
  }

  type metadata accessor for BinaryDecoder.Error();
  sub_10001F4A0();
  sub_10068280C(v3, v4);
  v5 = sub_100074D7C();
  sub_10002C964(v5, v6);
  sub_100006494();
  (*(v7 + 104))();
  return swift_willThrow();
}

uint64_t static UIUserInterfaceSizeClass.read(from:)()
{
  result = sub_1000526D4();
  if (!v0)
  {
    sub_100051AC0();
    if (v3)
    {
      return 2;
    }

    else if (v2 == 2)
    {
      return 1;
    }

    else
    {
      type metadata accessor for BinaryDecoder.Error();
      sub_10001F4A0();
      sub_10068280C(v4, v5);
      v6 = sub_100074D7C();
      sub_10002C964(v6, v7);
      sub_100006494();
      (*(v8 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10067EFB4@<X0>(uint64_t *a1@<X8>)
{
  result = static UIUserInterfaceSizeClass.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

double static CGSize.read(from:)()
{
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    v1 = v3;
    sub_1000B02B8();
  }

  return v1;
}

uint64_t CGSize.write(to:)()
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    return sub_1000888B4();
  }

  return result;
}

void sub_10067F0D0(uint64_t a1@<X8>)
{
  v3 = static CGSize.read(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
  }
}

double static CGRect.read(from:)()
{
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    v1 = v3;
    sub_1000B02B8();
    sub_1000B02B8();
    sub_1000B02B8();
  }

  return v1;
}

uint64_t CGRect.write(to:)()
{
  result = FixedSizeTypeBinaryCodable.write(to:)();
  if (!v0)
  {
    sub_1000888B4();
    sub_1000888B4();
    return sub_1000888B4();
  }

  return result;
}

void sub_10067F27C(uint64_t a1@<X8>)
{
  v3 = static CGRect.read(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void sub_10067F2CC()
{
  sub_10000E8AC();
  UUID.write(to:)();
  if (!v1)
  {
    v3 = type metadata accessor for PreprocessedWeatherData();
    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100037238();
    sub_10068280C(v4, v2);
    sub_1000210CC(&qword_100CD0098);
    Array<A>.write(to:)();
    sub_100013AD0();
    sub_100763C88();
    sub_10022C350(&qword_100CC2B20);
    sub_10000CDB0();
    Optional<A>.write(to:)();
    type metadata accessor for HourlyForecastComponentViewModel(0);
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
    sub_10068280C(&qword_100CD00A0, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    sub_10068280C(&qword_100CD00A8, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    sub_1001721B0();
    Array<A>.write(to:)();
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
    sub_10022C350(&qword_100CAE8E8);
    sub_10068280C(&qword_100CD00B0, &type metadata accessor for WeatherDescription);
    sub_1000BCEE4(&qword_100CD00B8);
    Optional<A>.write(to:)();
    sub_100013AD0();
    sub_1007675FC();
    sub_10000CDB0();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    String.write(to:)();
    sub_100013AD0();
    WeatherDescription.write(to:)();
    type metadata accessor for UVIndexComponentPreprocessedDataModel();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_10000CDB0();
    String.write(to:)();
    sub_100037850();
    String.write(to:)();
    sub_1000523E0();
    String.write(to:)();
    sub_100013AD0();
    sub_1007723E4();
    memcpy(__dst, (v0 + *(v3 + 52)), sizeof(__dst));
    sub_10000CDB0();
    sub_100772984();
    Date.write(to:)();
    type metadata accessor for WeatherConditionBackgroundTimeData();
    sub_10022C350(&qword_100CA58B8);
    sub_10068280C(&qword_100CD00C0, &type metadata accessor for Elevation);
    sub_1000A7CF4(&qword_100CD00C8);
    Optional<A>.write(to:)();
    sub_10022C350(&qword_100CACCC0);
    sub_10068280C(&qword_100CD00D0, &type metadata accessor for BackgroundMoonData);
    sub_1000A7CF4(&qword_100CD00D8);
    sub_100037850();
    Optional<A>.write(to:)();
    memcpy(v5, (v0 + *(v3 + 60)), sizeof(v5));
    sub_10000CDB0();
    sub_100767344();
  }

  sub_10000C8F4();
}

void sub_10067F898()
{
  sub_10000E8AC();
  v71 = v6;
  v7 = type metadata accessor for WeatherConditionBackgroundTimeData();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_1000038CC();
  v9 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000038E4();
  sub_1000038CC();
  v11 = type metadata accessor for PressureComponentPreprocessedDataModel();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v74 = v14;
  v75 = v13;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v76 = v15;
  sub_1000038CC();
  v73 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_1000132E8();
  v17 = type metadata accessor for ListPreprocessedDataModel();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_100021D38();
  v19 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10003038C();
  v21 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_1000183C0();
  v23 = type metadata accessor for UUID();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000106FC();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v0)
  {
    v68 = v5;
    type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100037238();
    sub_10068280C(v27, v23);
    sub_1000210CC(&qword_100CD0098);
    v28 = static Array<A>.read(from:)();
    sub_100018648();
    sub_100763A5C();
    v29 = sub_100018648();
    sub_100764208(v29, v30, v31, v32, v33, v34, v35, v36, v57, v58, v60, v62, v65, v1, v3, v68, v4, v23, v25, v71);
    v66 = v28;
    sub_100018648();
    sub_100767444();
    sub_100018648();
    sub_10076D550(v37);
    memcpy(v79, v80, sizeof(v79));
    sub_100018648();
    v38 = static String.read(from:)();
    v63 = v39;
    memcpy(v78, v79, 0x70uLL);
    v78[14] = v38;
    v78[15] = v63;
    sub_100018648();
    static WeatherDescription.read(from:)();
    sub_100018648();
    v40 = static String.read(from:)();
    v42 = v41;
    v64 = v40;
    sub_100018648();
    v43 = static String.read(from:)();
    v59 = v44;
    v61 = v43;
    (*(v74 + 32))(v67, v76, v75);
    v45 = (v67 + *(v73 + 20));
    *v45 = v64;
    v45[1] = v42;
    v46 = (v67 + *(v73 + 24));
    *v46 = v61;
    v46[1] = v59;
    sub_100018648();
    v47 = static String.read(from:)();
    v49 = v48;
    sub_1000422E8();
    v50 = static String.read(from:)();
    v52 = v51;
    sub_1000422E8();
    v77 = static String.read(from:)();
    v54 = v53;
    sub_1000422E8();
    sub_1007721C8();
    sub_1000422E8();
    sub_100772494();
    sub_1000422E8();
    sub_100772B80();
    sub_10068275C();
    sub_1000422E8();
    sub_10076719C();
    (*(v70 + 32))(v72, v2, v69);
    v55 = type metadata accessor for PreprocessedWeatherData();
    *(v72 + v55[5]) = v66;
    sub_100087E08();
    sub_10068275C();
    sub_100087E08();
    sub_10068275C();
    sub_100087E08();
    sub_10068275C();
    memcpy((v72 + v55[9]), v78, 0x80uLL);
    sub_100087E08();
    sub_10068275C();
    v56 = (v72 + v55[11]);
    *v56 = v47;
    v56[1] = v49;
    v56[2] = v50;
    v56[3] = v52;
    v56[4] = v77;
    v56[5] = v54;
    sub_100087E08();
    sub_10068275C();
    memcpy((v72 + v55[13]), v81, 0xE8uLL);
    sub_100087E08();
    sub_10068275C();
    memcpy((v72 + v55[15]), v82, 0x70uLL);
  }

  sub_10000C8F4();
}

void sub_1006801AC()
{
  sub_10000E8AC();
  v54 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v59 = v4;
  sub_1000038CC();
  v55 = type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v61 = v6;
  sub_1000038CC();
  type metadata accessor for NewsArticle();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v62 = v8;
  sub_1000038CC();
  v56 = type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v60 = v10;
  sub_1000038CC();
  v52 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v58 = v12;
  sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v57 = v15;
  sub_1000038CC();
  v16 = type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v19 = v18;
  sub_1000038CC();
  v53 = type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v22 = v21;
  sub_1000038CC();
  v23 = type metadata accessor for URL();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000106FC();
  type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000037D8();
  sub_10003038C();
  sub_1000BC974();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10002FFB0();
      sub_10068275C();
      sub_1000D4280();
      if (!v0)
      {
        sub_1000EFFD8();
        DetailCondition.write(to:)();
        sub_100043A24();
        Location.write(to:)();
        v41 = *(v53 + 24);
        sub_10022C350(&unk_100CB2CF0);
        sub_100043A24();
        Optional<A>.write(to:)();
        sub_1000288F4(v22 + *(v53 + 28));
        sub_10022C350(&qword_100CB73A0);
        sub_100010764();
        sub_10068280C(v42, (v22 + v41));
        sub_10001C9AC();
        sub_10068280C(v43, (v22 + v41));
        sub_1000209FC();
        sub_10022C350(&qword_100CB0BA8);
        sub_10068280C(&qword_100CD0080, type metadata accessor for DetailChartSelection);
        sub_1000A7CF4(&qword_100CD0088);
        sub_1000209FC();
        sub_100043A24();
        FixedSizeTypeBinaryCodable.write(to:)();
      }

      v40 = type metadata accessor for ConditionDetailViewState;
      goto LABEL_24;
    case 2u:
      sub_10002FFB0();
      v28 = v19;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        ListSessionTrigger.write(to:)();
        sub_1000288F4(v19 + *(v16 + 24));
        sub_10022C350(&qword_100CB73A0);
        sub_100010764();
        sub_10068280C(v32, v19);
        sub_10001C9AC();
        sub_10068280C(v33, v19);
        sub_100069800();
      }

      v31 = type metadata accessor for AirQualityDetailViewState;
      goto LABEL_29;
    case 3u:
      sub_100031E94();
      v28 = v57;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        sub_1000288F4(v57 + *(HourPrecipitationDetailViewState + 20));
        sub_10022C350(&qword_100CB73A0);
        sub_100010764();
        sub_10068280C(v34, v19);
        sub_10001C9AC();
        sub_10068280C(v35, v19);
        sub_100069800();
      }

      v31 = type metadata accessor for NextHourPrecipitationDetailViewState;
      goto LABEL_29;
    case 4u:
      sub_10002FFB0();
      v28 = v58;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        sub_1000288F4(v58 + *(v52 + 20));
        sub_10022C350(&qword_100CB73A0);
        sub_100010764();
        sub_10068280C(v29, v19);
        sub_10001C9AC();
        sub_10068280C(v30, v19);
        sub_100069800();
        sub_1007861A8();
      }

      v31 = type metadata accessor for SunriseSunsetDetailViewState;
      goto LABEL_29;
    case 5u:
      sub_10002FFB0();
      v22 = v60;
      sub_10068275C();
      sub_1000D4280();
      if (!v0)
      {
        sub_1000EFFD8();
        Location.write(to:)();
        sub_10022C350(qword_100CA66A0);
        sub_10068280C(&qword_100CD0070, type metadata accessor for MoonDetailSelectedDate);
        sub_1000A7CF4(&qword_100CD0078);
        sub_1000209FC();
        v44 = *(v56 + 24);
        sub_10022C350(&unk_100CB2CF0);
        sub_100043A24();
        Optional<A>.write(to:)();
        sub_1000288F4(v60 + *(v56 + 28));
        sub_10022C350(&qword_100CB73A0);
        sub_100010764();
        sub_10068280C(v45, (v60 + v44));
        sub_10001C9AC();
        sub_10068280C(v46, (v60 + v44));
        sub_1000209FC();
        sub_100043A24();
        sub_1007861A8();
      }

      v40 = type metadata accessor for MoonDetailViewState;
      goto LABEL_24;
    case 6u:
      sub_10002FFB0();
      sub_10068275C();
      FixedSizeTypeBinaryCodable.write(to:)();
      sub_10007953C();
      String.write(to:)();
      sub_10007953C();
      String.write(to:)();
      sub_10022C350(&qword_100CB3AB0);
      sub_1000046B4();
      Optional<A>.write(to:)();
      sub_10007953C();
      Date.write(to:)();
      sub_10007953C();
      URL.write(to:)();
      sub_10007953C();
      String.write(to:)();
      sub_10007953C();
      String.write(to:)();
      type metadata accessor for NewsChannel();
      sub_1000046B4();
      Optional<A>.write(to:)();
      Array<A>.write(to:)();
      Array<A>.write(to:)();
      type metadata accessor for UUID();
      Array<A>.write(to:)();
      sub_100041AD0();
      v48 = v62;
      goto LABEL_30;
    case 7u:
      sub_10002FFB0();
      v22 = v61;
      sub_10068275C();
      sub_1000D4280();
      if (!v0)
      {
        sub_1000EFFD8();
        Location.write(to:)();
        sub_100043A24();
        ListSessionTrigger.write(to:)();
        v36 = *(v55 + 24);
        sub_10022C350(&qword_100CAB960);
        sub_10068280C(&qword_100CD0050, type metadata accessor for DetailHeroChartLollipopPosition);
        sub_100025304();
        sub_10068280C(v37, type metadata accessor for DetailHeroChartLollipopPosition);
        sub_1000209FC();
        sub_1000288F4(v61 + *(v55 + 28));
        sub_10022C350(&qword_100CB73A0);
        sub_100010764();
        sub_10068280C(v38, (v61 + v36));
        sub_10001C9AC();
        sub_10068280C(v39, (v61 + v36));
        sub_1000209FC();
      }

      v40 = type metadata accessor for AveragesDetailViewState;
LABEL_24:
      v47 = v40;
      v48 = v22;
      goto LABEL_30;
    case 8u:
      sub_10002FFB0();
      v28 = v59;
      sub_10068275C();
      sub_10003BED8();
      if (!v0)
      {
        sub_1000437C8();
        Location.write(to:)();
        v49 = (v59 + *(v54 + 20));
        LocationOfInterest.write(to:)();
        sub_1000288F4(v59 + *(v54 + 24));
        sub_10022C350(&qword_100CB73A0);
        sub_100010764();
        sub_10068280C(v50, v49);
        sub_10001C9AC();
        sub_10068280C(v51, v49);
        sub_100069800();
      }

      v31 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_29:
      v47 = v31;
      v48 = v28;
LABEL_30:
      sub_100682704(v48, v47);
      break;
    case 9u:
      FixedSizeTypeBinaryCodable.write(to:)();
      break;
    default:
      (*(v25 + 32))(v1, v2, v23);
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_1000437C8();
        URL.write(to:)();
      }

      (*(v25 + 8))(v1, v23);
      break;
  }

  sub_1000C8EF8();
  sub_10000C8F4();
}

void sub_10068104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  *&v151 = v13;
  v16 = v15;
  v143 = v17;
  v139 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v138 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v150.n128_u64[0] = v20;
  sub_1000038CC();
  v135 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v134 = v22;
  v23 = sub_10022C350(&qword_100CAB960);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v137 = v25;
  sub_1000038CC();
  v131 = type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000038E4();
  v130 = v27;
  sub_1000038CC();
  v28 = type metadata accessor for NewsArticle();
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000038E4();
  v149.n128_u64[0] = v30;
  sub_1000038CC();
  v31 = type metadata accessor for MoonDetailViewState();
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_1000038E4();
  v148 = v33;
  sub_1000038CC();
  v133 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_1000038E4();
  v132 = v35;
  sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_1000038E4();
  v147 = v37;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v141 = v38;
  v142 = v39;
  __chkstk_darwin(v38);
  sub_100003C38();
  v146 = v40 - v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  v140 = &v129 - v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v145 = &v129 - v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v144 = &v129 - v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  v49 = type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_1000106FC();
  v51 = type metadata accessor for ConditionDetailViewState();
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_1000037D8();
  sub_10003038C();
  v53 = type metadata accessor for URL();
  sub_1000037C4();
  v55 = v54;
  __chkstk_darwin(v56);
  sub_1000037D8();
  v59 = (v58 - v57);
  v60 = v16;
  v61 = v151;
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v61)
  {
    v69 = v55;
    *&v151 = v14;
    v70 = v147;
    v71 = v150.n128_u64[0];
    switch(a13)
    {
      case 1:
        goto LABEL_15;
      case 2:
        static URL.read(from:)();
        (*(v69 + 32))(v143, v59, v53);
        goto LABEL_15;
      case 3:
        sub_100757638(v60, v62, v63, v64, v65, v66, v67, v68, v129, v130, SWORD2(v130), SBYTE6(v130), SHIBYTE(v130));
        goto LABEL_12;
      case 4:
        static Location.read(from:)();
        v94 = static ListSessionTrigger.read(from:)();
        type metadata accessor for CGRect(0);
        v96 = v95;
        sub_100030578();
        sub_10068280C(v97, v59);
        sub_10001C9AC();
        sub_10068280C(v98, v59);
        sub_100051FCC();
        static Optional<A>.read(from:)();
        v149 = sub_100170760();
        v150 = v109;
        v110 = v151;
        v111(v151, 0);
        *(v110 + *(v49 + 20)) = v94;
        v112 = (v110 + *(v49 + 24));
        v113 = v149;
        *v112 = v150;
        v112[1] = v113;
        v112[2].n128_u8[0] = v96;
        sub_1000132F8();
        goto LABEL_15;
      case 5:
        v72 = v144;
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        v74 = v73;
        sub_100010764();
        sub_10068280C(v75, v69);
        sub_10001C9AC();
        sub_10068280C(v76, v69);
        sub_100011714();
        v150 = sub_100044E38();
        v151 = v86;
        v87(v70, v72);
        v88 = v70 + *(HourPrecipitationDetailViewState + 20);
        v89 = v150;
        *v88 = v151;
        *(v88 + 16) = v89;
        *(v88 + 32) = v74;
        sub_100031E94();
        sub_10068275C();
        goto LABEL_15;
      case 6:
        v79 = v145;
        static Location.read(from:)();
        type metadata accessor for CGRect(0);
        sub_100010764();
        sub_10068280C(v80, v69);
        sub_10001C9AC();
        sub_10068280C(v81, v69);
        sub_100011714();
        v150 = v153;
        v151 = v152;
        v99 = v154;
        v114 = sub_100786250();
        v115 = v132;
        (*(v142 + 32))(v132, v79, v141);
        v116 = v133;
        v117 = v115 + *(v133 + 20);
        v118 = v150;
        *v117 = v151;
        *(v117 + 16) = v118;
        *(v117 + 32) = v99;
        *(v115 + *(v116 + 24)) = v114;
        sub_1000132F8();
        goto LABEL_15;
      case 7:
        sub_1007570D8();
        goto LABEL_12;
      case 8:
        sub_10077CD9C();
LABEL_12:
        sub_100071560();
        goto LABEL_15;
      case 9:
        static Location.read(from:)();
        v100 = static ListSessionTrigger.read(from:)();
        type metadata accessor for DetailHeroChartLollipopPosition(0);
        sub_10068280C(&qword_100CD0050, type metadata accessor for DetailHeroChartLollipopPosition);
        sub_100025304();
        sub_10068280C(v101, type metadata accessor for DetailHeroChartLollipopPosition);
        sub_10006A870();
        static Optional<A>.read(from:)();
        type metadata accessor for CGRect(0);
        v120 = v119;
        sub_100030578();
        sub_10068280C(v121, type metadata accessor for DetailHeroChartLollipopPosition);
        sub_10001C9AC();
        sub_10068280C(v122, type metadata accessor for DetailHeroChartLollipopPosition);
        sub_100051FCC();
        static Optional<A>.read(from:)();
        v150 = sub_100170760();
        v151 = v123;
        v124 = v130;
        v125(v130, v140);
        v126 = v131;
        *(v124 + *(v131 + 20)) = v100;
        sub_100682654();
        v127 = v124 + *(v126 + 28);
        v128 = v150;
        *v127 = v151;
        *(v127 + 16) = v128;
        *(v127 + 32) = v120;
        sub_10068275C();
        goto LABEL_15;
      case 10:
        v77 = v146;
        static Location.read(from:)();
        v78 = v71;
        static LocationOfInterest.read(from:)();
        type metadata accessor for CGRect(0);
        v91 = v90;
        sub_100010764();
        sub_10068280C(v92, v69);
        sub_10001C9AC();
        sub_10068280C(v93, v69);
        sub_100011714();
        v102 = sub_100044E38();
        v151 = v103;
        v149 = v102;
        v104 = v134;
        v105(v134, v77);
        v106 = v135;
        (*(v138 + 32))(v104 + *(v135 + 20), v78, v139);
        v107 = v104 + *(v106 + 24);
        v108 = v149;
        *v107 = v151;
        *(v107 + 16) = v108;
        *(v107 + 32) = v91;
        sub_1000132F8();
LABEL_15:
        type metadata accessor for LocationPreviewModalViewState(0);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v82 = type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        sub_10068280C(v83, v84);
        swift_allocError();
        (*(*(v82 - 8) + 104))(v85, enum case for BinaryDecoder.Error.valueNotSupported(_:), v82);
        swift_willThrow();
        break;
    }
  }

  sub_10000C8F4();
}

void sub_100681CEC()
{
  sub_10000E8AC();
  v4 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000106FC();
  sub_10022C350(&qword_100CA65E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  v7 = sub_1000132E8();
  type metadata accessor for LocationPreviewViewState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100021D38();
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_10003038C();
  sub_1000BC974();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_10077D39C();
      }

      goto LABEL_20;
    case 2u:
      sub_10012CD78();
      if (!v0)
      {
        sub_1007587A8();
      }

      goto LABEL_12;
    case 3u:
      sub_10012CD78();
      if (!v0)
      {
        sub_10075532C();
      }

LABEL_12:

      goto LABEL_20;
    case 4u:
      sub_100682654();
      FixedSizeTypeBinaryCodable.write(to:)();
      if (!v0)
      {
        sub_10068280C(&qword_100CD0030, type metadata accessor for ModalViewState.MapViewModal);
        sub_1000242B4();
        sub_10068280C(v12, type metadata accessor for ModalViewState.MapViewModal);
        Optional<A>.write(to:)();
      }

      sub_1006827B8(v1, &qword_100CA65E0);
      goto LABEL_20;
    case 5u:
      sub_10002FFB0();
      sub_10068275C();
      sub_10012CD78();
      if (!v0)
      {
        sub_10077D408();
      }

      v10 = type metadata accessor for ModalViewState.LocationDetailModal;
      v11 = v2;
      goto LABEL_18;
    case 6u:
    case 7u:
      FixedSizeTypeBinaryCodable.write(to:)();
      goto LABEL_20;
    default:
      sub_10002FFB0();
      sub_10068275C();
      sub_10012CD78();
      if (!v0)
      {
        sub_10077F6B8();
        sub_1006801AC();
        sub_100781DA4();
      }

      v10 = type metadata accessor for LocationPreviewViewState;
      v11 = v3;
LABEL_18:
      sub_100682704(v11, v10);
LABEL_20:
      sub_10000C8F4();
      return;
  }
}

void sub_1006821D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1000D3C1C();
  v15 = v14;
  v16 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_100021D38();
  v18 = sub_10022C350(&qword_100CA65E0);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  v20 = type metadata accessor for LocationPreviewViewState(0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_1000871C0();
  static FixedSizeTypeBinaryCodable.read(from:)();
  if (!v13)
  {
    switch(a13)
    {
      case 1:
      case 8:
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 2:
        sub_1000B0CA4();
        sub_100757C30();
        sub_10068275C();
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 3:
        sub_1000B0CA4();
        v23 = sub_10077DFAC();
        *v15 = v23 & 1;
        v15[1] = HIBYTE(v23) & 1;
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 4:
        sub_1000B0CA4();
        sub_1007586B4();
        v25 = v24;
        v26 = v24 >> 24;
        v27 = v24 >> 8;
        type metadata accessor for NotificationsOptInViewState._Storage();
        v28 = swift_allocObject();
        *(v28 + 16) = v25;
        *(v28 + 17) = v27;
        *(v28 + 18) = BYTE2(v25) & 1;
        *(v28 + 21) = BYTE2(v26);
        *(v28 + 19) = v26;
        *(v28 + 22) = BYTE6(v25) & 1;
        *v15 = v28;
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 5:
        sub_1000B0CA4();
        sub_100756EA0();
        type metadata accessor for ReportWeatherViewState._Storage();
        v22 = swift_allocObject();
        memcpy((v22 + 16), v43, 0x60uLL);
        *v15 = v22;
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 6:
        type metadata accessor for ModalViewState.MapViewModal(0);
        sub_10068280C(&qword_100CD0030, type metadata accessor for ModalViewState.MapViewModal);
        sub_1000242B4();
        sub_10068280C(v29, type metadata accessor for ModalViewState.MapViewModal);
        static Optional<A>.read(from:)();
        sub_100682654();
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
        goto LABEL_10;
      case 7:
        v30 = sub_1000B0CA4();
        sub_10077E028(v30, v31, v32, v33, v34, v35, v36, v37, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11]);
        sub_10068275C();
        type metadata accessor for ModalViewState(0);
        sub_100017BC0();
LABEL_10:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        type metadata accessor for BinaryDecoder.Error();
        sub_10001F4A0();
        sub_10068280C(v38, v39);
        v40 = sub_100074D7C();
        sub_10002C964(v40, v41);
        sub_100006494();
        (*(v42 + 104))();
        swift_willThrow();
        break;
    }
  }

  sub_100088758();
}

id sub_1006825F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithSymbol:v5 converter:a3];

  return v6;
}

uint64_t sub_100682654()
{
  sub_100003A00();
  sub_10022C350(v2);
  sub_1000037E8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_100682704(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10068275C()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1006827B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002C964(a1, a2);
  sub_10022C350(v3);
  sub_1000037E8();
  (*(v4 + 8))(v2);
  return v2;
}

uint64_t sub_10068280C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100682854(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA24B8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA24C8 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA24C0 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA24B0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA24A8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1006829C0(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v79 = &v74 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v74 - v31;
  __chkstk_darwin(v33);
  v35 = &v74 - v34;
  v36 = sub_100682854(a1, a2);
  v37 = OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v37, v14, &qword_100CA5008);
  v38 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v38) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v39], v23, v40);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v41);
    sub_100566A5C(v36, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v43);
      v42 = 0;
      v44 = &v32[*(v6 + 20)];
      v45 = v82[1];
      *v44 = v82[0];
      *(v44 + 1) = v45;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v42 = 1;
LABEL_7:
  v46 = v76;
  sub_10001B350(v32, v42, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v46, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v47 + v48, v20, v49);
  sub_100566A94(v36, v84);
  v50 = v77;
  if (v85 & 1) != 0 || (sub_100011474(), v51 = v79, sub_1001B6FB0(v20, v79, v52), v53 = (v51 + *(v6 + 20)), v54 = v84[1], *v53 = v84[0], v53[1] = v54, sub_100035AD0(v35, v50, &qword_100CAC7F8), sub_10001BD64(), v57 = v75, sub_10031694C(v55 + v56, v75, v58), sub_100566AB0(v36, v86), v59 = v80, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v57, v59, v60);
    v61 = (v59 + *(v6 + 20));
    v62 = v86[1];
    *v61 = v86[0];
    v61[1] = v62;
    sub_10001BD64();
    v65 = v78;
    sub_10031694C(v63 + v64, v78, v66);
    sub_100566AE8(v36, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v67 = v65;
      v68 = v81;
      sub_1001B6FB0(v67, v81, v69);
      v70 = (v68 + *(v6 + 20));
      v71 = v88[1];
      *v70 = v88[0];
      v70[1] = v71;
      v72 = sub_100924C14(v46, v51, v50, v59, v68);
      sub_1000180EC(v35, &qword_100CAC7F8);
      return v72;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100682FD0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_newsArticle, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_newsArticle, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_100683890()
{
  v34[0] = xmmword_100A2C3F0;
  v34[1] = xmmword_100A3BBF0;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3BBA0;
  v35 = v34;
  v36 = v33;
  v32[0] = xmmword_100A3BBB0;
  v32[1] = xmmword_100A3BC00;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A3BBD0;
  v37 = v32;
  v38 = v31;
  v30[0] = xmmword_100A2C3F0;
  v30[1] = xmmword_100A3BC00;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A41B80;
  v39 = v30;
  v40 = v29;
  v28[0] = xmmword_100A3BBB0;
  v28[1] = xmmword_100A3BBF0;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A2C3F0;
  v41 = v28;
  v42 = v27;
  v26[0] = xmmword_100A2C3F0;
  v26[1] = xmmword_100A3BBC0;
  v25[0] = xmmword_100A2C3F0;
  v25[1] = xmmword_100A3BC10;
  v43 = v26;
  v44 = v25;
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  *(&v22 + 1) = 2;
  v23 = xmmword_100A3BC20;
  sub_10003C6E4(v24, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, 1);
  v16 = v0;
  v17 = v1;
  v45 = v2;
  v46 = &v16;
  sub_10004E8D4(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  qword_100D90760 = v11;
}

void sub_10068399C()
{
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC00;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC20;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC00;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_10055A878();
  qword_100D90768 = v0;
}

void sub_100683AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BB80;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v26 = v21;
  v27 = v19;
  v18[0] = xmmword_100A3BBD0;
  v18[1] = xmmword_100A3BC50;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BB80;
  v13[0] = xmmword_100A3BBB0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_10004E8D4(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90770 = v8;
}

void sub_100683BC4()
{
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v17 = v16;
  v18 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC50;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v19 = v14;
  v20 = &v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_10055A878();
  qword_100D90778 = v0;
}

void sub_100683CE0()
{
  v37[0] = xmmword_100A3BC50;
  v37[1] = xmmword_100A3BC60;
  v35 = 1;
  v36 = 4;
  v38 = v37;
  v39 = &v34;
  v33[0] = xmmword_100A3BC60;
  v33[1] = xmmword_100A3BC40;
  v34 = xmmword_100A3BB70;
  v32[0] = xmmword_100A41B90;
  v32[1] = xmmword_100A3BBB0;
  v40 = v33;
  v41 = v32;
  v31[0] = xmmword_100A3BBD0;
  v31[1] = xmmword_100A3BC60;
  v30[0] = xmmword_100A3BC90;
  v30[1] = xmmword_100A3BD20;
  v42 = v31;
  v43 = v30;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A3BC60;
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A2C3F0;
  v44 = v29;
  v45 = v28;
  v27[0] = xmmword_100A3BC60;
  v27[1] = xmmword_100A3BC60;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC40;
  v46 = v27;
  v47 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10003C6E4(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v48 = v2;
  v49 = &v17;
  sub_10004E8D4(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D90780 = v12;
}

uint64_t sub_100683DF8(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v33 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v32 = v8;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for LocationViewComponent();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA5008);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v30 - v24;

  sub_1005D71C4(v26, a2);
  v31 = v27;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationNoAqiSevereNewsConfiguration8_Storage_map, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10001B350(v25, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationNoAqiSevereNewsConfiguration8_Storage_newsArticle, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationNoAqiSevereNewsConfiguration8_Storage_severeAlert, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v25, v22, &qword_100CA5008);
  sub_10031694C(v14, v32, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v11, v33, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NoAqiSevereNewsContent._Storage(0);
  swift_allocObject();
  v28 = sub_1002D4374(v31);
  sub_1003169AC(v11, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v25, &qword_100CA5008);
  return v28;
}

uint64_t sub_100684140()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100014C64();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  result = sub_100004594();
  qword_100D90790 = result;
  return result;
}

uint64_t sub_1006842A4()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100014C64();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  result = sub_100004594();
  qword_100D907B0 = result;
  return result;
}

uint64_t sub_100684430(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000)
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

uint64_t sub_100684538(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x4C52556F676F6CLL;
}

uint64_t sub_100684584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100684430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006845AC(uint64_t a1)
{
  v2 = sub_100684E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006845E8(uint64_t a1)
{
  v2 = sub_100684E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100684654(void *a1)
{
  v3 = sub_10022C350(&qword_100CD0248);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100684E14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for NewsChannel();
    v10[13] = 2;
    type metadata accessor for URL();
    sub_10032DEB8(&qword_100CAA9C8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100684810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_10022C350(&qword_100CB3AB0);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  sub_10022C350(&qword_100CD0238);
  sub_1000037C4();
  v21 = v8;
  v22 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for NewsChannel();
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000161C0(a1, a1[3]);
  sub_100684E14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v19 = v10;
  v25 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v14;
  v24 = 1;
  v13[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v13[3] = v15;
  type metadata accessor for URL();
  v23 = 2;
  sub_10032DEB8(&qword_100CAAB78);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = sub_10001C9C4();
  v17(v16);
  sub_10043D988(v6, v13 + *(v19 + 24));
  sub_100684E68(v13, v20);
  sub_100006F14(a1);
  return sub_100684ECC(v13);
}

BOOL sub_100684B0C(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB3AB0);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10022C350(qword_100CAD4D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = *a1 == *a2 && a1[1] == a2[1];
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for NewsChannel() + 24);
  v20 = *(v13 + 48);
  sub_1000E594C(a1 + v19, v16);
  sub_1000E594C(a2 + v19, &v16[v20]);
  sub_100003A40(v16);
  if (!v17)
  {
    sub_1000E594C(v16, v12);
    sub_100003A40(&v16[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v9, &v16[v20], v4);
      sub_10032DEB8(qword_100CAD328);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v6 + 8);
      v24(v9, v4);
      v24(v12, v4);
      sub_1000180EC(v16, &qword_100CB3AB0);
      return (v23 & 1) != 0;
    }

    (*(v6 + 8))(v12, v4);
LABEL_19:
    sub_1000180EC(v16, qword_100CAD4D0);
    return 0;
  }

  sub_100003A40(&v16[v20]);
  if (!v17)
  {
    goto LABEL_19;
  }

  sub_1000180EC(v16, &qword_100CB3AB0);
  return 1;
}

unint64_t sub_100684E14()
{
  result = qword_100CD0240;
  if (!qword_100CD0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0240);
  }

  return result;
}

uint64_t sub_100684E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100684ECC(uint64_t a1)
{
  v2 = type metadata accessor for NewsChannel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for NewsChannel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100685008()
{
  result = qword_100CD0250;
  if (!qword_100CD0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0250);
  }

  return result;
}

unint64_t sub_100685060()
{
  result = qword_100CD0258;
  if (!qword_100CD0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0258);
  }

  return result;
}

unint64_t sub_1006850B8()
{
  result = qword_100CD0260;
  if (!qword_100CD0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0260);
  }

  return result;
}

void sub_10068511C(uint64_t *a1)
{
  v2 = *(sub_10022C350(&qword_100CAC4D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309240();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_100687DE0(v6);
  *a1 = v3;
}

uint64_t sub_1006851D0()
{
  sub_100003B08();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_10022C350(&qword_100CAC4D0);
  v1[7] = v5;
  sub_100003AE8(v5);
  v1[8] = v6;
  v1[9] = sub_100037C4C();
  v1[10] = swift_task_alloc();
  v7 = type metadata accessor for EdgeSunEvents(0);
  v1[11] = v7;
  sub_100003810(v7);
  v1[12] = sub_1000134B0();
  v8 = type metadata accessor for MaxDaylight(0);
  v1[13] = v8;
  sub_100003810(v8);
  v1[14] = sub_1000134B0();
  v9 = type metadata accessor for DaylightData(0);
  v1[15] = v9;
  sub_100003810(v9);
  v1[16] = sub_1000134B0();
  v10 = type metadata accessor for Date();
  v1[17] = v10;
  sub_100003AE8(v10);
  v1[18] = v11;
  v1[19] = sub_100037C4C();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v12);
  v1[27] = sub_100037C4C();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v13 = type metadata accessor for DateComponents();
  v1[32] = v13;
  sub_100003AE8(v13);
  v1[33] = v14;
  v1[34] = sub_1000134B0();
  v15 = type metadata accessor for Calendar();
  v1[35] = v15;
  sub_100003AE8(v15);
  v1[36] = v16;
  v1[37] = sub_100037C4C();
  v1[38] = swift_task_alloc();
  v17 = type metadata accessor for TimeZone();
  v1[39] = v17;
  sub_100003AE8(v17);
  v1[40] = v18;
  v1[41] = sub_1000134B0();
  v19 = sub_100013484();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1006854E8()
{
  v1 = v0[41];
  v2 = v0[29];
  v3 = v0[17];
  type metadata accessor for SunriseSunsetProportionCalculator();
  v128 = swift_allocObject();
  v0[42] = v128;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  sub_1009FBBFC(v1);
  Calendar.date(from:)();
  sub_100095588();
  if (sub_100024D10(v2, 1, v3) == 1)
  {
    sub_1000180EC(v0[29], &unk_100CB2CF0);
    v4 = 1;
  }

  else
  {
    v5 = v0[36];
    v6 = v0[37];
    v7 = v0[35];
    v8 = v0[29];
    v9 = v0[17];
    v10 = v0[18];
    static Calendar.current.getter();
    Date.wc_addDays(_:calendar:)();
    (*(v5 + 8))(v6, v7);
    (*(v10 + 8))(v8, v9);
    v4 = 0;
  }

  v11 = v0[28];
  v12 = v0[17];
  sub_10001B350(v0[30], v4, 1, v12);
  sub_100119F7C();
  v13 = static NSDateFormatter.shortMonthNameFormatter(with:)();
  v0[43] = v13;
  v14 = static NSDateFormatter.longMonthNameFormatter(with:)();
  v0[44] = v14;
  sub_100095588();
  v127 = v13;
  if (sub_100024D10(v11, 1, v12) != 1)
  {
    v125 = v14;
    v15 = v0[27];
    v16 = v0[17];
    v17 = *(v0[18] + 32);
    v17(v0[26], v0[28], v16);
    sub_100095588();
    v18 = sub_100024D10(v15, 1, v16);
    v19 = v0[17];
    if (v18 == 1)
    {
      v20 = v0[26];
      v21 = v0[18];
      sub_1000180EC(v0[27], &unk_100CB2CF0);
      (*(v21 + 8))(v20, v19);
      v14 = v125;
      goto LABEL_8;
    }

    v33 = v0[16];
    v34 = v0[6];
    v35 = v0[4];
    v17(v0[25], v0[27], v0[17]);
    sub_1000161C0((v34 + 40), *(v34 + 64));
    sub_10082D7BC(v35, v33);
    v0[45] = 0;
    sub_100689284();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v0[26];
      v117 = v0[24];
      v37 = v0[20];
      v114 = v0[19];
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[14];
      v41 = *(sub_10022C350(&qword_100CD0268) + 48);
      v17(v37, v40, v39);
      v17(v114, v40 + v41, v39);
      (*(v38 + 16))(v117, v36, v39);
      Date.timeIntervalSince(_:)();
      v43 = v42;
      if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v42 > -9.22337204e18)
        {
          if (v42 < 9.22337204e18)
          {
            Date.timeIntervalSince(_:)();
            v45 = v44;
            v46 = static NSDateFormatter.timeDurationWithZeroPaddingFormatter.getter();
            v47 = [v46 stringFromTimeInterval:v45];

            if (v47)
            {
              countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
              object = v48;

              sub_10000CDBC();
              v50 = static Date.formattedShortMonthAndDayRange(date1:date2:timeZone:)();
              if (v51)
              {
                v52 = v50;
                v53 = v51;
                v54 = v43;
                v55 = v0[20];
                v56 = v0[17];
                v57 = *(v0[18] + 8);
                v57(v0[19], v56);
                v58 = v55;
                goto LABEL_23;
              }
            }

            v92 = v0[25];
            v123 = v0[24];
            v93 = v0[19];
            v85 = v0[17];
            v94 = v0[18];
            v86 = v0[16];
            sub_100687C8C();
            swift_allocError();
            swift_willThrow();
            v89 = *(v94 + 8);
            v89(v93, v85);
            v95 = sub_100017B70();
            (v89)(v95);
            v91 = v92;
            goto LABEL_29;
          }

LABEL_40:
          __break(1u);
          return withTaskGroup<A, B>(of:returning:isolation:body:)();
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else
    {
      v59 = v0[23];
      v112 = v0[22];
      v115 = v0[21];
      v60 = v0[17];
      v61 = v0[14];
      v62 = sub_10022C350(&qword_100CD0278);
      v63 = *(v62 + 48);
      v64 = *(v62 + 64);
      v17(v59, v61, v60);
      v17(v112, v61 + v63, v60);
      v17(v115, v61 + v64, v60);
      sub_10068922C();
      v65 = Date.secondsSinceMidnight(calendar:)();
      v66 = Date.secondsSinceMidnight(calendar:)();
      v67 = v65 - v66;
      if (!__OFSUB__(v65, v66))
      {
        (*(v0[18] + 16))(v0[24], v0[12], v0[17]);
        Date.timeIntervalSince(_:)();
        v68 = Date.formattedShortMonthAndDay(timeZone:)();
        v53 = v69;
        v70 = Double.formatTimeDuration()();
        countAndFlagsBits = v70.value._countAndFlagsBits;
        if (v70.value._object)
        {
          object = v70.value._object;
          v118 = v67;
          v71 = v68;
          v73 = v0[22];
          v72 = v0[23];
          v74 = v0[21];
          v56 = v0[17];
          v75 = v0[18];
          sub_1000064A4();
          sub_1006891D4(v76, v77);
          v57 = *(v75 + 8);
          v57(v74, v56);
          v57(v73, v56);
          v58 = v72;
          v52 = v71;
          v54 = v118;
LABEL_23:
          v57(v58, v56);
          v0[49] = v52;
          v0[50] = v53;
          v0[47] = countAndFlagsBits;
          v0[48] = object;
          v0[46] = v57;
          v78 = v0[41];
          v79 = v0[26];
          v80 = v0[24];
          v81 = v0[16];
          sub_100673874();
          v0[2] = Dictionary.init(dictionaryLiteral:)();
          sub_10022C350(&qword_100CA58D0);
          v82 = swift_task_alloc();
          v0[51] = v82;
          v82[2] = v81;
          v82[3] = v128;
          v82[4] = v78;
          v82[5] = v54;
          v82[6] = v80;
          v82[7] = v125;
          v82[8] = v127;
          v82[9] = v79;
          v82[10] = v0 + 2;
          v83 = swift_task_alloc();
          v0[52] = v83;
          *v83 = v0;
          v83[1] = sub_100686224;

          return withTaskGroup<A, B>(of:returning:isolation:body:)();
        }

        v119 = v0[25];
        v123 = v0[24];
        v113 = v0[22];
        v116 = v0[23];
        v85 = v0[17];
        v84 = v0[18];
        v86 = v0[16];
        v87 = v0[12];

        sub_100687C8C();
        swift_allocError();
        swift_willThrow();
        sub_1000064A4();
        sub_1006891D4(v87, v88);
        v89 = *(v84 + 8);
        v90 = sub_100017B70();
        (v89)(v90);
        v89(v113, v85);
        v89(v116, v85);
        v91 = v119;
LABEL_29:
        v89(v91, v85);
        v89(v123, v85);
        sub_100008C2C();
        sub_1006891D4(v86, v96);
        v89(v0[26], v0[17]);
        if (qword_100CA2700 != -1)
        {
          sub_100003AB0();
        }

        v97 = type metadata accessor for Logger();
        sub_10000703C(v97, qword_100D90B68);
        swift_errorRetain();
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *v100 = 138412290;
          swift_errorRetain();
          v102 = _swift_stdlib_bridgeErrorToNSError();
          *(v100 + 4) = v102;
          *v101 = v102;
          _os_log_impl(&_mh_execute_header, v98, v99, "Failed to generate SunriseSunsetMonthlyViewModel error:%@", v100, 0xCu);
          sub_1000180EC(v101, &qword_100CBE0F8);
        }

        v103 = v0[36];
        v120 = v0[35];
        v124 = v0[38];
        v105 = v0[33];
        v104 = v0[34];
        v107 = v0[31];
        v106 = v0[32];
        v30 = v0[30];
        v108 = v0[3];

        type metadata accessor for SunriseSunsetMonthlyViewModel();
        WeatherDescription.init(stringLiteral:)();

        sub_1000180EC(v30, &unk_100CB2CF0);
        v29 = v108;
        sub_1000180EC(v107, &unk_100CB2CF0);
        (*(v105 + 8))(v104, v106);
        (*(v103 + 8))(v124, v120);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1000180EC(v0[28], &unk_100CB2CF0);
LABEL_8:
  if (qword_100CA2700 != -1)
  {
    sub_100003AB0();
  }

  v22 = type metadata accessor for Logger();
  sub_10000703C(v22, qword_100D90B68);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to generate midnight", v25, 2u);
  }

  v26 = v0[36];
  v121 = v0[35];
  v126 = v0[38];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[3];

  type metadata accessor for SunriseSunsetMonthlyViewModel();
  WeatherDescription.init(stringLiteral:)();

  v30 = &unk_100CB2CF0;
  sub_1000180EC(v28, &unk_100CB2CF0);
  sub_1000180EC(v27, &unk_100CB2CF0);
  v31 = sub_10000CDBC();
  v32(v31);
  (*(v26 + 8))(v126, v121);
LABEL_34:
  *v29 = _swiftEmptyArrayStorage;
  sub_100019C7C();
  (*(v109 + 8))(v30);

  sub_100003B14();

  return v110();
}

uint64_t sub_100686224()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100686328()
{
  v53 = v0;
  v1 = v0[45];
  v52[0] = sub_1003072E4(v0[2]);
  sub_10068511C(v52);
  if (v1)
  {
  }

  else
  {
    v3 = v52[0];
    v4 = *(v52[0] + 16);
    if (v4)
    {
      v5 = v0[8];
      v50 = v0[7];
      sub_1006A792C(0, v4, 0);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v47 = *(v5 + 72);
      for (i = v4 - 1; ; --i)
      {
        v8 = v0[46];
        v9 = v0[17];
        v10 = v0[9];
        sub_100095588();
        sub_10000CDBC();
        sub_100051BBC();
        memcpy(v52, (v10 + *(v50 + 48)), 0x50uLL);
        v8(v10, v9);
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_1006A792C((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        memcpy(&_swiftEmptyArrayStorage[10 * v12 + 4], v52, 0x50uLL);
        if (!i)
        {
          break;
        }

        v6 += v47;
      }
    }

    v32 = v0[49];
    v33 = v0[50];
    v13 = v0[48];
    v30 = v0[47];
    v36 = v0[44];
    v37 = v0[43];
    v44 = v0[36];
    v46 = v0[35];
    v43 = v0[34];
    v41 = v0[33];
    v42 = v0[32];
    v39 = v0[46];
    v40 = v0[31];
    v38 = v0[30];
    v49 = v0[38];
    v51 = v0[26];
    v48 = v0[24];
    v35 = v0[25];
    v34 = v0[17];
    v45 = v0[16];
    v31 = v0[3];
    v14 = [objc_opt_self() mainBundle];
    v55._object = 0x8000000100ADAE10;
    v15._countAndFlagsBits = 0xD000000000000030;
    v15._object = 0x8000000100ADADB0;
    v16._object = 0x8000000100ADADF0;
    v55._countAndFlagsBits = 0xD000000000000102;
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v55);

    sub_10022C350(&qword_100CA5408);
    v17 = type metadata accessor for WeatherDescription.Argument();
    sub_1000037C4();
    v19 = v18;
    v21 = *(v20 + 72);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100A2D320;
    v24 = (v23 + v22);
    *v24 = v30;
    v24[1] = v13;
    v25 = *(v19 + 104);
    (v25)(v24, enum case for WeatherDescription.Argument.time(_:), v17);
    v26 = (v24 + v21);
    *v26 = v32;
    v26[1] = v33;
    v25();
    type metadata accessor for SunriseSunsetMonthlyViewModel();
    sub_10000CDBC();
    WeatherDescription.init(format:_:)();

    v39(v35, v34);
    sub_1000180EC(v38, &unk_100CB2CF0);
    sub_1000180EC(v40, &unk_100CB2CF0);
    (*(v41 + 8))(v43, v42);
    (*(v44 + 8))(v49, v46);

    *v31 = _swiftEmptyArrayStorage;
    v39(v48, v34);
    sub_100008C2C();
    sub_1006891D4(v45, v27);
    v39(v51, v34);
    sub_100019C7C();
    (*(v28 + 8))(&unk_100A2D7F0);

    sub_100003B14();

    return v29();
  }
}

uint64_t sub_100686940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 416) = v13;
  *(v8 + 400) = v12;
  *(v8 + 384) = a7;
  *(v8 + 392) = a8;
  *(v8 + 368) = a5;
  *(v8 + 376) = a6;
  *(v8 + 352) = a3;
  *(v8 + 360) = a4;
  *(v8 + 344) = a2;
  *(v8 + 424) = sub_10022C350(&qword_100CA58D0);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  sub_10022C350(&qword_100CD0280);
  *(v8 + 456) = swift_task_alloc();
  v9 = sub_10022C350(&qword_100CD0288);
  *(v8 + 464) = v9;
  *(v8 + 472) = *(v9 - 8);
  *(v8 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100686AB8, 0, 0);
}

uint64_t sub_100686AB8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = swift_task_alloc();
  v4 = *(v0 + 360);
  v5 = *(v0 + 384);
  v6 = *(v0 + 400);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  sub_10051AE0C();

  TaskGroup.makeAsyncIterator()();
  v7 = swift_task_alloc();
  *(v0 + 488) = v7;
  *v7 = v0;
  v8 = sub_10001077C(v7);

  return TaskGroup.Iterator.next(isolation:)(v8);
}

uint64_t sub_100686BC0()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100686CA8()
{
  v1 = v0[57];
  v2 = v0[53];
  if (sub_100024D10(v1, 1, v2) == 1)
  {
    (*(v0[59] + 8))(v0[60], v0[58]);

    sub_100003B14();
    sub_1000208FC();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[54];
  v8 = v0[52];
  v9 = *(v2 + 48);
  memcpy(v0 + 22, (v1 + v9), 0x50uLL);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v38 = v10;
  (*(v11 + 32))(v5, v1);
  memcpy((v5 + v9), v0 + 22, 0x50uLL);
  sub_100095588();
  memcpy(v0 + 12, (v6 + *(v2 + 48)), 0x50uLL);
  sub_100688F50((v0 + 12));
  sub_100095588();
  memcpy(v0 + 2, (v7 + *(v2 + 48)), 0x50uLL);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v8;
  v0[42] = *v8;
  *v8 = 0x8000000000000000;
  sub_100237FB4();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = v14;
  v20 = v15;
  sub_10022C350(&qword_100CD0290);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
  {
    v23 = v38;
LABEL_13:
    v26 = v0[56];
    if (v20)
    {
      v27 = v0[42];
      v28 = (v27[7] + 80 * v19);
      memcpy(v0 + 32, v28, 0x50uLL);
      memcpy(v28, v0 + 2, 0x50uLL);
      sub_100688F50((v0 + 32));
      sub_1000180EC(v26, &qword_100CA58D0);
      goto LABEL_17;
    }

    v29 = v0[55];
    v27 = v0[42];
    v27[(v19 >> 6) + 8] |= 1 << v19;
    (*(v11 + 16))(v27[6] + *(v11 + 72) * v19, v29, v23);
    memcpy((v27[7] + 80 * v19), v0 + 2, 0x50uLL);
    v14 = sub_1000180EC(v26, &qword_100CA58D0);
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      v27[2] = v32;
LABEL_17:
      v34 = v0[54];
      v33 = v0[55];
      *v0[52] = v27;

      v35 = *(v11 + 8);
      v35(v33, v23);
      v35(v34, v23);
      v36 = swift_task_alloc();
      v0[61] = v36;
      *v36 = v0;
      sub_10001077C();
      sub_1000208FC();

      return TaskGroup.Iterator.next(isolation:)(v14);
    }

LABEL_21:
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)(v14);
  }

  sub_100237FB4();
  v23 = v38;
  if ((v20 & 1) == (v22 & 1))
  {
    v19 = v21;
    goto LABEL_13;
  }

  sub_1000208FC();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1006870A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v60 = a2;
  v58 = a7;
  v59 = a8;
  v55 = a6;
  v56 = a3;
  v57 = a5;
  v51 = a1;
  v53 = a4;
  v54 = a9;
  v9 = type metadata accessor for Date();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = v61[8];
  __chkstk_darwin(v9);
  v63 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v49 = &v44 - v12;
  v14 = type metadata accessor for TimeZone();
  v47 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CC3798);
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  __chkstk_darwin(v17 - 8);
  v46 = &v44 - v19;
  v20 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v20 - 8);
  v22 = &v44 - v21;
  v52 = &v44 - v21;
  v23 = type metadata accessor for TaskPriority();
  sub_10001B350(v22, 1, 1, v23);
  sub_100095588();
  v45 = v15;
  (*(v15 + 16))(&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v14);
  v25 = v61;
  v24 = v62;
  v26 = v61[2];
  v26(v13, v55, v62);
  v26(v63, v54, v24);
  v27 = (v18 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v15 + 80) + v27 + 8) & ~*(v15 + 80);
  v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v25 + 80);
  v31 = (v30 + 8 + v29) & ~v30;
  v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v30 + 8 + v33) & ~v30;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  sub_100051BBC();
  *(v35 + v27) = v56;
  (*(v45 + 32))(v35 + v28, v48, v47);
  *(v35 + v29) = v57;
  v36 = v62;
  v37 = v61[4];
  v37(v35 + v31, v49, v62);
  v38 = v58;
  *(v35 + v32) = v58;
  v39 = v59;
  *(v35 + v33) = v59;
  v37(v35 + v34, v63, v36);

  v40 = v38;
  v41 = v39;
  v42 = v52;
  sub_10027C40C(v52, &unk_100A74C70, v35);
  return sub_1000180EC(v42, &qword_100CA3538);
}

uint64_t sub_1006874F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v13;
  *(v8 + 64) = v12;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  sub_10022C350(&unk_100CB2CF0);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  type metadata accessor for MonthSunAverage(0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = sub_10022C350(&qword_100CC3798);
  *(v8 + 128) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1006876A4, 0, 0);
}

uint64_t sub_1006876A4()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  sub_100095588();
  v7 = *(v5 + 48);
  v88 = *(v3 + 32);
  v88(v1, v4, v2);
  sub_1006891D4(v4 + v7, type metadata accessor for MonthSunAverage);
  sub_100095588();
  v86 = v5;
  sub_10068922C();
  v87 = *(v3 + 8);
  v87(v4, v2);
  sub_100003940();
  sub_100689284();
  v8 = sub_10022C350(&qword_100CD0298);
  v9 = sub_100024D10(v6, 2, v8);
  v10 = v0[21];
  if (v9)
  {
    if (v9 == 1)
    {
      v11.super.isa = sub_10000ECA0().super.isa;
      v12 = sub_10004E8F0(v11.super.isa);

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v14;
      v84 = v13;

      v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = sub_10002C970(v15.super.isa);

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v18;
      v80 = v17;

      v19 = Date.formattedTime(timeZone:)();
      v76 = v20;
      v77 = v19;
      v21 = Date.formattedTime(timeZone:)();
      v72 = v22;
      v74 = v21;
      v23 = 0.0;
      v24 = 0;
    }

    else
    {
      v51.super.isa = sub_10000ECA0().super.isa;
      v52 = sub_10004E8F0(v51.super.isa);

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v54;
      v84 = v53;

      v55.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v56 = sub_10002C970(v55.super.isa);

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v58;
      v80 = v57;

      v59 = Date.formattedTime(timeZone:)();
      v76 = v60;
      v77 = v59;
      v61 = Date.formattedTime(timeZone:)();
      v72 = v62;
      v74 = v61;
      v24 = 0;
      v23 = 1.0;
    }
  }

  else
  {
    v26 = v0[19];
    v25 = v0[20];
    v27 = v0[17];
    v28 = v0[12];
    v29 = v0[13];
    v30 = v0[11];
    v85 = v0[8];
    v81 = v0[9];
    v83 = v0[7];
    v78 = v0[6];
    v73 = v0[18];
    v75 = v0[5];
    v31 = *(v8 + 48);
    v71 = v25;
    v88(v25, v29, v27);
    v88(v26, v29 + v31, v27);
    v32 = *(v73 + 16);
    v32(v28, v25, v27);
    sub_100016CE4(v28);
    v32(v30, v26, v27);
    sub_100016CE4(v30);
    sub_10030A098(v28, v30, v75, v78);
    v23 = v33;
    sub_1000180EC(v30, &unk_100CB2CF0);
    v34 = sub_100017B70();
    sub_1000180EC(v34, v35);
    v32(v28, v25, v27);
    sub_100016CE4(v28);
    sub_10030A93C(v28, v75, v83, v78);
    v24 = v36;
    v37 = sub_100017B70();
    sub_1000180EC(v37, v38);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v85 stringFromDate:isa];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v42;
    v84 = v41;

    v43 = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v81 stringFromDate:v43];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v46;
    v80 = v45;

    v47 = Date.formattedTime(timeZone:)();
    v76 = v48;
    v77 = v47;
    v49 = Date.formattedTime(timeZone:)();
    v72 = v50;
    v74 = v49;
    v87(v26, v27);
    v87(v71, v27);
  }

  v63 = v0[21];
  v64 = v0[16];
  v65 = v0[17];
  v66 = v0[2];
  sub_1006891D4(v0[14], type metadata accessor for MonthSunAverage);
  v87(v63, v65);
  v67 = (v66 + *(sub_10022C350(&qword_100CA58D0) + 48));
  sub_100095588();
  v68 = *(v86 + 48);
  v88(v66, v64, v65);
  *v67 = v84;
  *(v67 + 1) = v82;
  *(v67 + 2) = v80;
  *(v67 + 3) = v79;
  *(v67 + 4) = v77;
  *(v67 + 5) = v76;
  *(v67 + 6) = v74;
  *(v67 + 7) = v72;
  v67[8] = v23;
  *(v67 + 9) = v24;
  sub_1006891D4(v64 + v68, type metadata accessor for MonthSunAverage);

  sub_100003B14();

  return v69();
}

unint64_t sub_100687C8C()
{
  result = qword_100CD0270;
  if (!qword_100CD0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0270);
  }

  return result;
}

uint64_t sub_100687CE0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000FE59C;

  return sub_100686940(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_100687DE0(unint64_t *a1)
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
        sub_10022C350(&qword_100CAC4D0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10022C350(&qword_100CAC4D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100688170(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100687F28(0, v2, 1, a1);
  }
}

void sub_100687F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_10022C350(&qword_100CAC4D0);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v31 = v16;
    v25 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v29 = v18;
      v30 = a3;
      v27 = v21;
      v28 = v20;
      do
      {
        sub_100095588();
        sub_100095588();
        v22 = static Date.< infix(_:_:)();
        sub_1000180EC(v11, &qword_100CAC4D0);
        sub_1000180EC(v15, &qword_100CAC4D0);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return;
        }

        sub_100051BBC();
        swift_arrayInitWithTakeFrontToBack();
        sub_100051BBC();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v30 + 1;
      v18 = v29 + v25;
      v20 = v28 - 1;
      v21 = v27 + v25;
      if (v30 + 1 != v26)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100688170(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v124 = sub_10022C350(&qword_100CAC4D0);
  v120 = *(v124 - 8);
  __chkstk_darwin(v124);
  v115 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v108 - v10;
  __chkstk_darwin(v11);
  v126 = &v108 - v12;
  __chkstk_darwin(v13);
  v125 = &v108 - v14;
  v121 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_100:
    v126 = *v111;
    if (!v126)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v100 = v17 + 16;
      v101 = *(v17 + 2);
      while (v101 >= 2)
      {
        if (!*v121)
        {
          goto LABEL_139;
        }

        v102 = v17;
        v103 = &v17[16 * v101];
        v104 = *v103;
        v105 = &v100[2 * v101];
        v106 = *(v105 + 1);
        sub_100688A94(*v121 + *(v120 + 72) * *v103, *v121 + *(v120 + 72) * *v105, *v121 + *(v120 + 72) * v106, v126);
        if (v5)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_127;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_128;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v107 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_129;
        }

        v101 = *v100 - 1;
        sub_1003090FC(v105 + 16, v107, v105);
        *v100 = v101;
        v17 = v102;
      }

LABEL_110:

      return;
    }

LABEL_136:
    v17 = sub_100308E24();
    goto LABEL_102;
  }

  v108 = a4;
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v112 = v17;
    if (v16 + 1 < v15)
    {
      v110 = v5;
      v20 = *v121;
      v21 = *(v120 + 72);
      v22 = v16;
      v23 = v16 + 1;
      v24 = *v121 + v21 * v19;
      v25 = v125;
      v119 = v15;
      sub_100095588();
      v26 = v126;
      sub_100095588();
      LODWORD(v118) = static Date.< infix(_:_:)();
      sub_1000180EC(v26, &qword_100CAC4D0);
      sub_1000180EC(v25, &qword_100CAC4D0);
      v27 = v119;
      v109 = v22;
      v28 = v22 + 2;
      v122 = v21;
      v29 = v20 + v21 * (v22 + 2);
      while (1)
      {
        v30 = v28;
        if (v23 + 1 >= v27)
        {
          break;
        }

        ++v23;
        v31 = v125;
        sub_100095588();
        v32 = v126;
        sub_100095588();
        v33 = static Date.< infix(_:_:)() & 1;
        sub_1000180EC(v32, &qword_100CAC4D0);
        sub_1000180EC(v31, &qword_100CAC4D0);
        v29 += v122;
        v24 += v122;
        v28 = v30 + 1;
        v27 = v119;
        if ((v118 & 1) != v33)
        {
          goto LABEL_9;
        }
      }

      v23 = v27;
LABEL_9:
      v5 = v110;
      if (v118)
      {
        v34 = v109;
        if (v23 < v109)
        {
          goto LABEL_133;
        }

        if (v109 >= v23)
        {
          v19 = v23;
          v17 = v112;
          v18 = v109;
          goto LABEL_32;
        }

        if (v27 >= v30)
        {
          v35 = v30;
        }

        else
        {
          v35 = v27;
        }

        v36 = v122 * (v35 - 1);
        v37 = v122 * v35;
        v38 = v109 * v122;
        v39 = v23;
        v17 = v112;
        do
        {
          if (v34 != --v39)
          {
            v40 = *v121;
            if (!*v121)
            {
              goto LABEL_140;
            }

            sub_100051BBC();
            v41 = v38 < v36 || v40 + v38 >= v40 + v37;
            if (v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100051BBC();
            v17 = v112;
          }

          ++v34;
          v36 -= v122;
          v37 -= v122;
          v38 += v122;
        }

        while (v34 < v39);
        v5 = v110;
        v19 = v23;
      }

      else
      {
        v19 = v23;
        v17 = v112;
      }

      v18 = v109;
    }

LABEL_32:
    v42 = v121[1];
    if (v19 < v42)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_132;
      }

      if (v19 - v18 < v108)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v18)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10011E564();
      v17 = v98;
    }

    v54 = *(v17 + 2);
    v55 = v54 + 1;
    if (v54 >= *(v17 + 3) >> 1)
    {
      sub_10011E564();
      v17 = v99;
    }

    *(v17 + 2) = v55;
    v56 = v17 + 32;
    v57 = &v17[16 * v54 + 32];
    v58 = v119;
    *v57 = v18;
    *(v57 + 1) = v58;
    v122 = *v111;
    if (!v122)
    {
      goto LABEL_141;
    }

    if (v54)
    {
      while (1)
      {
        v59 = v55 - 1;
        v60 = &v56[16 * v55 - 16];
        v61 = &v17[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v17 + 4);
          v63 = *(v17 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_68:
          if (v65)
          {
            goto LABEL_118;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_121;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_126;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v55 < 2)
        {
          goto LABEL_120;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_83:
        if (v80)
        {
          goto LABEL_123;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v87 < v79)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v59 - 1 >= v55)
        {
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
          goto LABEL_135;
        }

        if (!*v121)
        {
          goto LABEL_138;
        }

        v91 = v17;
        v92 = &v56[16 * v59 - 16];
        v93 = *v92;
        v94 = v59;
        v95 = &v56[16 * v59];
        v96 = *(v95 + 1);
        sub_100688A94(*v121 + *(v120 + 72) * *v92, *v121 + *(v120 + 72) * *v95, *v121 + *(v120 + 72) * v96, v122);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v96 < v93)
        {
          goto LABEL_113;
        }

        v5 = *(v91 + 2);
        if (v94 > v5)
        {
          goto LABEL_114;
        }

        *v92 = v93;
        *(v92 + 1) = v96;
        if (v94 >= v5)
        {
          goto LABEL_115;
        }

        v55 = v5 - 1;
        sub_1003090FC(v95 + 16, v5 - 1 - v94, v95);
        v17 = v91;
        *(v91 + 2) = v5 - 1;
        v97 = v5 > 2;
        v5 = 0;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v66 = &v56[16 * v55];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_116;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_117;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_119;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_122;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_130;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v121[1];
    v16 = v119;
    if (v119 >= v15)
    {
      goto LABEL_100;
    }
  }

  v43 = v18 + v108;
  if (__OFADD__(v18, v108))
  {
    goto LABEL_134;
  }

  if (v43 >= v42)
  {
    v43 = v121[1];
  }

  if (v43 < v18)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v43)
  {
    goto LABEL_48;
  }

  v109 = v18;
  v110 = v5;
  v44 = *(v120 + 72);
  v45 = *v121 + v44 * (v19 - 1);
  v46 = -v44;
  v47 = v18 - v19;
  v122 = *v121;
  v113 = v44;
  v114 = v43;
  v48 = v122 + v19 * v44;
LABEL_41:
  v118 = v45;
  v119 = v19;
  v116 = v48;
  v117 = v47;
  v49 = v48;
  while (1)
  {
    v50 = v125;
    sub_100095588();
    v51 = v126;
    sub_100095588();
    v52 = static Date.< infix(_:_:)();
    sub_1000180EC(v51, &qword_100CAC4D0);
    sub_1000180EC(v50, &qword_100CAC4D0);
    if ((v52 & 1) == 0)
    {
LABEL_46:
      v19 = v119 + 1;
      v45 = v118 + v113;
      v47 = v117 - 1;
      v48 = v116 + v113;
      if (v119 + 1 == v114)
      {
        v19 = v114;
        v18 = v109;
        v5 = v110;
        v17 = v112;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v122)
    {
      break;
    }

    sub_100051BBC();
    swift_arrayInitWithTakeFrontToBack();
    sub_100051BBC();
    v45 += v46;
    v49 += v46;
    v41 = __CFADD__(v47++, 1);
    if (v41)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_100688A94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = sub_10022C350(&qword_100CAC4D0);
  __chkstk_darwin(v48);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v40 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v53 = a1;
  v52 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1006A0718(a2, v15 / v12, a4);
    v47 = a4;
    v26 = a4 + v18 * v12;
    v27 = -v12;
    v28 = v26;
    v43 = a1;
    v44 = -v12;
LABEL_37:
    v29 = a3;
    v41 = v28;
    v30 = v28;
    v45 = a2 + v27;
    v46 = a2;
    while (1)
    {
      if (v26 <= v47)
      {
        v53 = a2;
        v51 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v42 = v30;
      v31 = v29 + v27;
      v32 = v26 + v27;
      v33 = v49;
      sub_100095588();
      v34 = v50;
      sub_100095588();
      v35 = static Date.< infix(_:_:)();
      sub_1000180EC(v34, &qword_100CAC4D0);
      sub_1000180EC(v33, &qword_100CAC4D0);
      if (v35)
      {
        v37 = v29 < v46 || v31 >= v46;
        a3 = v31;
        if (v37)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          v28 = v42;
          a1 = v43;
        }

        else
        {
          v38 = v42;
          v28 = v42;
          v27 = v44;
          v39 = v45;
          a2 = v45;
          a1 = v43;
          if (v29 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v39;
            v28 = v38;
          }
        }

        goto LABEL_37;
      }

      if (v29 < v26 || v31 >= v26)
      {
        swift_arrayInitWithTakeFrontToBack();
        v29 = v31;
        v26 = v32;
        v30 = v32;
        a1 = v43;
        v27 = v44;
        a2 = v46;
      }

      else
      {
        v30 = v32;
        v14 = v26 == v29;
        v29 = v31;
        v26 = v32;
        a1 = v43;
        v27 = v44;
        a2 = v46;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v29 = v31;
          v26 = v32;
          v30 = v32;
        }
      }
    }

    v53 = a2;
    v51 = v41;
  }

  else
  {
    sub_1006A0718(a1, v13 / v12, a4);
    v46 = a3;
    v47 = a4 + v17 * v12;
    v51 = v47;
    while (a4 < v47 && a2 < a3)
    {
      v20 = v12;
      v21 = v49;
      sub_100095588();
      v22 = v50;
      sub_100095588();
      v23 = static Date.< infix(_:_:)();
      sub_1000180EC(v22, &qword_100CAC4D0);
      sub_1000180EC(v21, &qword_100CAC4D0);
      v12 = v20;
      if (v23)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v53 = a1;
      a3 = v46;
    }
  }

LABEL_59:
  sub_100308E50(&v53, &v52, &v51);
}

uint64_t sub_100688FA4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC3798);
  sub_100003AE8(v2);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v4 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for TimeZone();
  sub_100003AE8(v6);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for Date();
  sub_100003AE8(v11);
  v13 = (*(v12 + 80) + 8 + v10) & ~*(v12 + 80);
  v14 = *(v1 + v5);
  v15 = *(v1 + v10);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = swift_task_alloc();
  *(v20 + 16) = v18;
  *v18 = v20;
  v18[1] = sub_1000FDB98;

  return sub_1006874F8(a1, v16, v17, v1 + v21, v14, v1 + v8, v15, v1 + v13);
}

uint64_t sub_1006891D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10068922C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100689284()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetMonthlyViewModelFactory.FactoryError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10068938C()
{
  result = qword_100CD02A0;
  if (!qword_100CD02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD02A0);
  }

  return result;
}

uint64_t sub_1006893E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0350);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4CA8);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for NotificationsOptInInteractor();
      v21[3] = v12;
      v21[4] = &off_100C528A0;
      v21[0] = v11;
      v13 = type metadata accessor for NotificationsOptInModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C528A0;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C7B360;
      *a2 = v14;
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

uint64_t sub_10068967C()
{
  sub_10022C350(&qword_100CD0350);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD0358);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4CA8);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100689768@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0360);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for NotificationsOptInInteractor();
    swift_allocObject();
    result = sub_1003AD98C(v12, v13, v14, v15, v10, v11, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_100C528A0;
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100689950(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v24;
  v4 = v25;
  v6 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0358);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v20, v21);
  v18 = type metadata accessor for NotificationsOptInInputFactory();
  v19 = &off_100C62768;
  v17[0] = v7;
  sub_100035B30(v17, v16);
  v8 = swift_allocObject();
  sub_100013188(v16, v8 + 16);

  sub_100006F14(v17);
  sub_100006F14(v20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100689D38;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v10 = *sub_1000161C0(v20, v21);
    v18 = type metadata accessor for NotificationsOptInViewModelFactory();
    v19 = &off_100C69B18;
    v17[0] = v10;
    sub_100035B30(v17, v16);
    v11 = swift_allocObject();
    sub_100013188(v16, v11 + 16);

    sub_100006F14(v17);
    sub_100006F14(v20);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100689D40;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100689D48;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10009F868;
    *(v14 + 24) = v9;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100689D78;
    *(v15 + 24) = v13;
    sub_10022C350(&qword_100CA4CA8);
    swift_allocObject();
    return sub_10024B9B4(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v14, sub_100689DA8, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100689DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v4 = type metadata accessor for SearchLocation();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for Location.Identifier();
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v78[1] = v12 - v11;
  sub_1000038CC();
  v80 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v78[0] = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = sub_10022C350(&qword_100CA3588);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v79 = v78 - v20;
  sub_1000038CC();
  v21 = type metadata accessor for Location();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003C38();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  sub_100008C44();
  type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003C38();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = v78 - v34;
  sub_100014C80();
  v81 = a1;
  sub_100031274(a1, v35, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v70 = sub_100051FDC();
      v71(v70);
      sub_10022C350(&qword_100CA38B8);
      v49 = v82;
      (*(v23 + 16))(v82, v2, v21);
      type metadata accessor for SavedLocation();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v72, v73, v74, v75);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      sub_100074D9C();
      (*(v23 + 8))(v2, v21);
      goto LABEL_7;
    case 2u:
      v54 = v78[0];
      v55 = v35;
      v56 = v80;
      (*(v78[0] + 32))(v17, v55, v80);
      LocationOfInterest.location.getter();
      v57 = v79;
      (*(v54 + 16))(v79, v17, v56);
      sub_10001B350(v57, 0, 1, v56);
      LocationModel.init(location:locationOfInterest:isPredictedLocation:)();
      sub_100074D9C();
      result = (*(v54 + 8))(v17, v56);
      break;
    case 3u:
      sub_10003D6A8(v35, v8, type metadata accessor for SearchLocation);
      sub_10022C350(&qword_100CA38B8);
      sub_100014C80();
      v58 = v81;
      sub_100031274(v81, v32, v59);
      sub_1006E6430();
      v61 = v60;
      sub_1006E6834();
      sub_1006E6B60();
      sub_100031EB0();
      sub_100069828();
      sub_100032908(v32, v62);

      v63 = v82;
      SavedLocation.Placeholder.init(identifier:searchTitle:searchSubtitle:)();
      type metadata accessor for SavedLocation();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v64, v65, v66, v67);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      sub_100032908(v58, v61);
      sub_100032908(v8, type metadata accessor for SearchLocation);
      v68 = enum case for LocationModel.saved(_:);
      type metadata accessor for LocationModel();
      sub_1000037E8();
      result = (*(v69 + 104))(v63, v68);
      break;
    case 4u:

      sub_10022C350(&qword_100CA38B8);
      sub_100014C80();
      v44 = v81;
      sub_100031274(v81, v32, v45);
      sub_1006E6430();
      v47 = v46;
      sub_1006E6834();
      sub_1006E6B60();
      sub_100031EB0();
      sub_100069828();
      sub_100032908(v32, v48);
      v49 = v82;
      SavedLocation.Placeholder.init(identifier:searchTitle:searchSubtitle:)();
      type metadata accessor for SavedLocation();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v50, v51, v52, v53);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      sub_100032908(v44, v47);
LABEL_7:
      v76 = enum case for LocationModel.saved(_:);
      type metadata accessor for LocationModel();
      sub_1000037E8();
      result = (*(v77 + 104))(v49, v76);
      break;
    default:
      v37 = sub_100051FDC();
      v38(v37);
      (*(v23 + 16))(v27, v2, v21);
      sub_100003934();
      sub_10001B350(v39, v40, v41, v42);
      LocationModel.init(location:locationOfInterest:isPredictedLocation:)();
      sub_100074D9C();
      result = (*(v23 + 8))(v2, v21);
      break;
  }

  return result;
}

uint64_t sub_10068A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&unk_100CE2F20);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v21[-v12];
  v22 = a1;
  v23 = a3;
  v24 = a2;
  sub_100030C98();
  sub_100035AD0(v13, v10, &unk_100CE2F20);
  v14 = type metadata accessor for LocationModel();
  sub_1000038B4(v10, 1, v14);
  if (v15)
  {
    sub_1000180EC(v13, &unk_100CE2F20);
    sub_1000180EC(v10, &unk_100CE2F20);
    type metadata accessor for LocationOfInterest();
    sub_100003934();
    return sub_10001B350(v16, v17, v18, v19);
  }

  else
  {
    LocationModel.locationOfInterest.getter();
    sub_1000180EC(v13, &unk_100CE2F20);
    return (*(*(v14 - 8) + 8))(v10, v14);
  }
}

uint64_t sub_10068A650(uint64_t a1, uint64_t a2)
{
  v5 = sub_10095D050(a1, a2);
  v6 = v2[5];
  v7 = v2[6];
  sub_1000161C0(v2 + 2, v6);
  v8 = (*(v7 + 16))(a1, a2, v6, v7);
  sub_10022C350(&unk_100CE49D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A3AEB0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  type metadata accessor for WireframeInterestToken();
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = sub_10068A88C;
  *(result + 24) = v10;
  return result;
}

uint64_t sub_10068A7E8(uint64_t a1)
{
  result = sub_100073CDC(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    sub_10095D7E8();
  }

  return result;
}

uint64_t sub_10068A894(void *a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10000C8C8();
  v4 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Location();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_100019CA0();
  v10 = type metadata accessor for TimeZone();
  result = sub_100024D10(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    [a1 coordinate];
    v12 = type metadata accessor for Date();
    sub_1000061CC(v12);
    sub_10001CA04();
    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)();
    sub_10022C350(&qword_100CD04C0);
    sub_100003B6C();
    return sub_100004838();
  }

  return result;
}

uint64_t sub_10068AA1C()
{
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_10000C8C8();
  v3 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100022FA4();
  v5 = type metadata accessor for Location.Identifier();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for Location();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  SavedLocation.Placeholder.identifier.getter();
  sub_100019CA0();
  v9 = type metadata accessor for TimeZone();
  result = sub_100024D10(v0, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = type metadata accessor for Date();
    sub_1000061CC(v11);
    Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)();
    sub_10022C350(&qword_100CD04C0);
    sub_100003B6C();
    return Promise.init(value:)();
  }

  return result;
}

uint64_t sub_10068ABC8(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  __chkstk_darwin(v2);
  sub_1000037D8();
  (*(v5 + 16))(v4 - v3, a1);
  sub_10022C350(&qword_100CD04C0);
  sub_100003B6C();
  return sub_100004838();
}

uint64_t sub_10068AC90()
{
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_10000C8C8();
  v3 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100022FA4();
  v5 = type metadata accessor for Location();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100019CA0();
  v7 = type metadata accessor for TimeZone();
  result = sub_100024D10(v0, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = type metadata accessor for Date();
    sub_1000061CC(v9);
    sub_10001CA04();
    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)();
    sub_10022C350(&qword_100CD04C0);
    sub_100003B6C();
    return sub_100004838();
  }

  return result;
}

uint64_t sub_10068AEBC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewComponentContainerDescriptor();
  v3 = sub_100588E2C(v2);
  if (v3)
  {
    sub_1001B3B30(v3 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for LocationComponentContainerViewModel();

  return sub_10001B350(a1, v4, 1, v5);
}

void sub_10068AF4C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v5 = type metadata accessor for WeatherAlertEntity();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  __chkstk_darwin(v11);
  v36 = &v31 - v12;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = 0;
  v17 = *(a2 + 16);
  v39 = v6 + 16;
  v40 = v17;
  v18 = (v6 + 8);
  v38 = (v6 + 32);
  v37 = _swiftEmptyArrayStorage;
  while (v40 != v16)
  {
    if (v16 >= *(a2 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    sub_10001F4D0();
    (*(v6 + 16))(v15, v19 + v2 * v16, v5);
    WeatherAlertEntity.relevant.getter();
    dispatch thunk of Column.value.getter();

    if (v41 == 2)
    {
      goto LABEL_26;
    }

    if (v41)
    {
      v33 = *v38;
      (v33)(v36, v15, v5);
      v20 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000107C8();
        v20 = v42;
      }

      v22 = v20[2];
      v23 = (v22 + 1);
      if (v22 >= v20[3] >> 1)
      {
        v37 = (v22 + 1);
        v32 = v22;
        sub_1006A7FAC();
        v23 = v37;
        v22 = v32;
        v20 = v42;
      }

      ++v16;
      v20[2] = v23;
      v37 = v20;
      (v33)(v20 + v3 + v22 * v2, v36, v5);
    }

    else
    {
      (*v18)(v15, v5);
      ++v16;
    }
  }

  v24 = 0;
  v25 = _swiftEmptyArrayStorage;
  while (v40 != v24)
  {
    if (v24 >= *(a2 + 16))
    {
      goto LABEL_25;
    }

    sub_10001F4D0();
    (*(v6 + 16))(v10, v26 + v2 * v24, v5);
    WeatherAlertEntity.relevant.getter();
    dispatch thunk of Column.value.getter();

    if (v41 == 2)
    {
      goto LABEL_27;
    }

    if (v41)
    {
      (*v18)(v10, v5);
      ++v24;
    }

    else
    {
      v36 = *v38;
      (v36)(v35, v10, v5);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25;
      if ((v27 & 1) == 0)
      {
        sub_1000107C8();
        v25 = v42;
      }

      v28 = v25;
      v29 = v25[2];
      v30 = (v29 + 1);
      if (v29 >= v28[3] >> 1)
      {
        v33 = (v29 + 1);
        sub_1006A7FAC();
        v30 = v33;
        v28 = v42;
      }

      ++v24;
      v28[2] = v30;
      (v36)(v28 + v3 + v29 * v2, v35, v5);
      v25 = v28;
    }
  }
}

uint64_t sub_10068B348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CD04C8);
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  sub_10022C350(&qword_100CD04D0);
  sub_100006F64(&qword_100CD04D8, &qword_100CD04D0);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(v6 + 36)];
  *v10 = KeyPath;
  *(v10 + 1) = 0x4028000000000000;
  v10[16] = 0;
  sub_10068C908();
  View.navigationTitle(_:)();
  return sub_10003FDF4(v8, &qword_100CD04C8);
}

uint64_t sub_10068B4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a4;
  v36 = sub_10022C350(&qword_100CD04F8);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v29 - v9;
  v33 = sub_10022C350(&qword_100CD0500);
  v32 = *(v33 - 8);
  v10 = v32;
  __chkstk_darwin(v33);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v45 = 0xD000000000000010;
  v46 = 0x8000000100ADAFD0;
  v47 = 0;
  v48 = _swiftEmptyArrayStorage;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  sub_10022C350(&qword_100CD0508);
  sub_10068C9F8();
  v31 = v15;
  Section<>.init(header:content:)();
  v45 = 0xD000000000000014;
  v46 = 0x8000000100ADAFF0;
  v47 = 0;
  v48 = _swiftEmptyArrayStorage;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  sub_10022C350(&qword_100CD0520);
  sub_100006F64(&qword_100CD0528, &qword_100CD0520);
  v16 = v38;
  Section<>.init(header:content:)();
  v17 = *(v10 + 16);
  v30 = v12;
  v18 = v33;
  v17(v12, v15, v33);
  v19 = v34;
  v20 = v35;
  v21 = *(v34 + 16);
  v22 = v16;
  v23 = v36;
  v21(v35, v22, v36);
  v24 = v37;
  v17(v37, v12, v18);
  v25 = sub_10022C350(&qword_100CD0530);
  v21(&v24[*(v25 + 48)], v20, v23);
  v26 = *(v19 + 8);
  v26(v38, v23);
  v27 = *(v32 + 8);
  v27(v31, v18);
  v26(v20, v23);
  return (v27)(v30, v18);
}

uint64_t sub_10068B8D4()
{
  swift_getKeyPath();

  sub_10022C350(&qword_100CD0560);
  type metadata accessor for RowView();
  sub_100006F64(&qword_100CD0568, &qword_100CD0560);
  sub_10068CB2C();
  sub_10068CA7C();
  return ForEach<>.init(_:id:content:)();
}

double sub_10068B9CC@<D0>(_OWORD *a1@<X8>)
{
  dispatch thunk of Column.value.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10068BA44@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  PeriodicWeatherAlertEntity.alertIdentifier.getter();
  dispatch thunk of Column.value.getter();

  v6 = v11;
  if (v11)
  {
    v7 = v10;
    PeriodicWeatherAlertEntity.created.getter();
    dispatch thunk of Column.value.getter();

    v8 = type metadata accessor for Date();
    result = sub_100024D10(v4, 1, v8);
    if (result != 1)
    {
      *a1 = v7;
      *(a1 + 1) = v6;
      v9 = type metadata accessor for RowView();
      result = (*(*(v8 - 8) + 32))(&a1[*(v9 + 20)], v4, v8);
      a1[*(v9 + 24)] = 1;
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

uint64_t sub_10068BB98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v27 = a3;
  v5 = sub_10022C350(&qword_100CD0538);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25 = &v23 - v9;
  __chkstk_darwin(v10);
  v24 = &v23 - v11;
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v28 = a1;
  swift_getKeyPath();

  sub_10022C350(&qword_100CD0540);
  type metadata accessor for RowView();
  sub_100006F64(&qword_100CD0548, &qword_100CD0540);
  sub_10068CB2C();
  sub_10068CA7C();
  ForEach<>.init(_:id:content:)();
  v28 = a2;
  swift_getKeyPath();

  v15 = v24;
  ForEach<>.init(_:id:content:)();
  v16 = *(v6 + 16);
  v17 = v25;
  v16(v25, v14, v5);
  v18 = v26;
  v16(v26, v15, v5);
  v19 = v27;
  v16(v27, v17, v5);
  v20 = sub_10022C350(&qword_100CD0558);
  v16(&v19[*(v20 + 48)], v18, v5);
  v21 = *(v6 + 8);
  v21(v15, v5);
  v21(v14, v5);
  v21(v18, v5);
  return (v21)(v17, v5);
}

uint64_t sub_10068BEDC@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  WeatherAlertEntity.alertIdentifier.getter();
  dispatch thunk of Column.value.getter();

  v6 = v14;
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v13;
  WeatherAlertEntity.created.getter();
  dispatch thunk of Column.value.getter();

  v8 = type metadata accessor for Date();
  result = sub_100024D10(v4, 1, v8);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  WeatherAlertEntity.relevant.getter();
  dispatch thunk of Column.value.getter();

  v9 = v12;
  if (v12 != 2)
  {
    *a1 = v7;
    *(a1 + 1) = v6;
    v10 = type metadata accessor for RowView();
    result = (*(*(v8 - 8) + 32))(&a1[*(v10 + 20)], v4, v8);
    a1[*(v10 + 24)] = v9 & 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10068C068@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10022C350(&qword_100CD0608);
  return sub_10068C0BC(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_10068C0BC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Date.FormatStyle.DateStyle();
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Divider();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v39 - v14;
  __chkstk_darwin(v15);
  v50 = &v39 - v16;
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = *a1;
  v42 = a1[1];
  v43 = v20;

  v45 = v19;
  Divider.init()();
  v21 = type metadata accessor for RowView();
  static Date.FormatStyle.DateStyle.long.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v22 = Date.formatted(date:time:)();
  v40 = v23;
  v41 = v22;
  (*(v48 + 8))(v6, v49);
  (*(v7 + 8))(v9, v47);
  v24 = v50;
  Divider.init()();
  if (*(a1 + *(v21 + 24)))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  v26 = 0xE400000000000000;
  if (!*(a1 + *(v21 + 24)))
  {
    v26 = 0xE500000000000000;
  }

  v48 = v26;
  v49 = v25;
  v27 = *(v11 + 16);
  v28 = v44;
  v27(v44, v19, v10);
  v29 = v46;
  v27(v46, v24, v10);
  *a2 = 0x7472656C41;
  *(a2 + 1) = 0xE500000000000000;
  v30 = v42;
  *(a2 + 2) = v43;
  *(a2 + 3) = v30;
  v31 = sub_10022C350(&qword_100CD0610);
  v32 = v28;
  v27(&a2[v31[12]], v28, v10);
  v33 = &a2[v31[16]];
  *v33 = 0x64657461657243;
  *(v33 + 1) = 0xE700000000000000;
  v34 = v40;
  *(v33 + 2) = v41;
  *(v33 + 3) = v34;
  v27(&a2[v31[20]], v29, v10);
  v35 = &a2[v31[24]];
  *v35 = 0x746E6176656C6552;
  *(v35 + 1) = 0xE800000000000000;
  v36 = v48;
  *(v35 + 2) = v49;
  *(v35 + 3) = v36;
  v37 = *(v11 + 8);

  v37(v50, v10);
  v37(v45, v10);

  v37(v29, v10);

  v37(v32, v10);
}

void *sub_10068C548@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.firstTextBaseline.getter();
  v8 = 0;
  sub_10068C630(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_10068CC9C(__dst, &v5);
  sub_10003FDF4(v10, &qword_100CD0628);
  memcpy(&v7[7], __dst, 0x50uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x57uLL);
}

uint64_t sub_10068C630@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.Weight.semibold.getter();
  v7 = Text.fontWeight(_:)();
  v24 = v8;
  v25 = v7;
  v23 = v9;
  v26 = v10;
  sub_10010CD64(v2, v4, v6 & 1);

  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v2) = v14;
  static Color.secondary.getter();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10010CD64(v11, v13, v2 & 1);

  *a1 = v25;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = 0x4030000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v21;
  sub_10010CD54(v25, v24, v23 & 1);

  sub_10010CD54(v15, v17, v19 & 1);

  sub_10010CD64(v15, v17, v19 & 1);

  sub_10010CD64(v25, v24, v23 & 1);
}

uint64_t sub_10068C830(uint64_t result, int a2, int a3)
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

uint64_t sub_10068C8A8()
{
  sub_10000FE4C();
  result = EnvironmentValues.listRowSpacing.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_10068C908()
{
  result = qword_100CD04E0;
  if (!qword_100CD04E0)
  {
    sub_10022E824(&qword_100CD04C8);
    sub_100006F64(&qword_100CD04E8, &qword_100CD04F0);
    sub_100006F64(&qword_100CC2270, &qword_100CC2278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD04E0);
  }

  return result;
}

unint64_t sub_10068C9F8()
{
  result = qword_100CD0510;
  if (!qword_100CD0510)
  {
    sub_10022E824(&qword_100CD0508);
    sub_10068CA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0510);
  }

  return result;
}

unint64_t sub_10068CA7C()
{
  result = qword_100CD0518;
  if (!qword_100CD0518)
  {
    type metadata accessor for RowView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0518);
  }

  return result;
}

uint64_t type metadata accessor for RowView()
{
  result = qword_100CD05C8;
  if (!qword_100CD05C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10068CB2C()
{
  result = qword_100CD0550;
  if (!qword_100CD0550)
  {
    sub_10022E824(&qword_100CA6078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0550);
  }

  return result;
}

uint64_t sub_10068CBD0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10068CC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD0628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LearnMoreAttributorViewModel.PresentationContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10068CDF0()
{
  result = qword_100CD06F0;
  if (!qword_100CD06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD06F0);
  }

  return result;
}

id sub_10068CE44()
{
  if (!*v0)
  {
    sub_100100664();
    static Color.primary.getter();
    return UIColor.init(_:)();
  }

  if (*v0 != 1)
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      v3 = [objc_opt_self() labelColor];
      goto LABEL_12;
    }

    v5 = static Solarium.isEnabled.getter();
    v2 = objc_opt_self();
    if ((v5 & 1) == 0)
    {
      v3 = [v2 tertiaryLabelColor];
      goto LABEL_12;
    }

LABEL_10:
    v3 = [v2 secondaryLabelColor];
    goto LABEL_12;
  }

  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = objc_opt_self();
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = [v2 labelColor];
LABEL_12:

  return v3;
}

id sub_10068CF44()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      v1 = objc_opt_self();
      v2 = &UIFontTextStyleCaption2;
    }

    else
    {
      v3 = [objc_opt_self() currentDevice];
      v4 = [v3 userInterfaceIdiom];

      v1 = objc_opt_self();
      if (v4)
      {
        v2 = &UIFontTextStyleFootnote;
      }

      else
      {
        v2 = &UIFontTextStyleCaption2;
      }
    }
  }

  else
  {
    v1 = objc_opt_self();
    v2 = &UIFontTextStyleFootnote;
  }

  v5 = [v1 preferredFontForTextStyle:*v2];

  return v5;
}

unint64_t sub_10068D030()
{
  result = qword_100CAD328[0];
  if (!qword_100CAD328[0])
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CAD328);
  }

  return result;
}

uint64_t sub_10068D0B0()
{
  result = type metadata accessor for CurrentWeather();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PressureComponentPreprocessedDataModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10068D134(uint64_t a1, uint64_t a2)
{
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for PressureComponent() + 20);

  return sub_1003BE378(a1 + v4, a2 + v4);
}

uint64_t sub_10068D194@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = type metadata accessor for PressureComponentPreprocessedDataModel();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v6 = v5 - v4;
  v27 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v24 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v26 = v10 - v9;
  sub_10022C350(&qword_100CD0790);
  sub_1000037C4();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for PressureComponent();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  sub_1000161C0(a1, a1[3]);
  sub_10068D758();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_10001CA34();
  sub_10068D8D0(v16, v17);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(v15, v26, v27);
  sub_10001F4E8();
  sub_10068D8D0(v18, v19);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = sub_1000064BC();
  v21(v20);
  sub_10068D7AC(v6, v15 + *(v12 + 20));
  sub_10068D810(v15, a2);
  sub_100006F14(a1);
  return sub_10068D874(v15);
}

uint64_t sub_10068D4F8(void *a1)
{
  v3 = sub_10022C350(&qword_100CD07A8);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_10068D758();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for CurrentWeather();
  sub_10001CA34();
  sub_10068D8D0(v9, v10);
  sub_100005AE0();
  if (!v1)
  {
    type metadata accessor for PressureComponent();
    v14[14] = 1;
    type metadata accessor for PressureComponentPreprocessedDataModel();
    sub_10001F4E8();
    sub_10068D8D0(v11, v12);
    sub_100005AE0();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10068D6AC(uint64_t a1)
{
  v2 = sub_10068D758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10068D6E8(uint64_t a1)
{
  v2 = sub_10068D758();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10068D758()
{
  result = qword_100CD0798;
  if (!qword_100CD0798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0798);
  }

  return result;
}

uint64_t sub_10068D7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressureComponentPreprocessedDataModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068D810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressureComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068D874(uint64_t a1)
{
  v2 = type metadata accessor for PressureComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068D8D0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PressureComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10068D9F8()
{
  result = qword_100CD07B8;
  if (!qword_100CD07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD07B8);
  }

  return result;
}

unint64_t sub_10068DA50()
{
  result = qword_100CD07C0;
  if (!qword_100CD07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD07C0);
  }

  return result;
}

unint64_t sub_10068DAA8()
{
  result = qword_100CD07C8;
  if (!qword_100CD07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD07C8);
  }

  return result;
}

uint64_t sub_10068DAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
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

uint64_t sub_10068DC18(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 0x7469736E65746E69;
}

uint64_t sub_10068DC74(void *a1)
{
  v3 = sub_10022C350(&qword_100CD0938);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000161C0(a1, a1[3]);
  sub_10068F0B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

double sub_10068DE18(void *a1)
{
  v2 = sub_10022C350(&qword_100CD0928);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_1000161C0(a1, a1[3]);
  sub_10068F0B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  v11 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100006F14(a1);
  return v7;
}

uint64_t sub_10068DFF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D726F7473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10068E07C(void *a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD0968);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10068F10C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10022C350(&qword_100CD0950);
  sub_10068F1B4(&qword_100CD0970, sub_10068F22C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_10068E208(void *a1)
{
  v3 = sub_10022C350(&qword_100CD0940);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000161C0(a1, a1[3]);
  sub_10068F10C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CD0950);
    sub_10068F1B4(&qword_100CD0958, sub_10068F160);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100006F14(a1);
  }

  return v7;
}

uint64_t sub_10068E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10068DAFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10068E3EC(uint64_t a1)
{
  v2 = sub_10068F0B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10068E428(uint64_t a1)
{
  v2 = sub_10068F0B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10068E464(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10068DE18(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_10068E4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10068DFF4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10068E4E4(uint64_t a1)
{
  v2 = sub_10068F10C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10068E520(uint64_t a1)
{
  v2 = sub_10068F10C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10068E55C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10068E208(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10068E5A4(uint64_t a1)
{
  sub_10022C350(&qword_100CD0908);
  swift_allocObject();
  *(v1 + 16) = AsyncObservable.init(value:)();
  sub_100035B30(a1, v1 + 24);
  sub_10068E634();
  sub_100006F14(a1);
  return v1;
}

void sub_10068E634()
{
  v0 = type metadata accessor for Date();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for NetworkProxy();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  URL.init(string:)();
  v8 = type metadata accessor for URL();
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10022C350(&qword_100CD0910);
    Dictionary.init(dictionaryLiteral:)();
    (*(v2 + 104))(v4, enum case for NetworkProxy.none(_:), v1);
    Date.init()();
    v9 = NetworkOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:)();
    swift_allocObject();
    swift_weakInit();
    dispatch thunk of AsyncOperation.completion.setter();
    [v9 start];
  }
}

uint64_t sub_10068E8A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if ((v2 & 1) == 0)
    {
      v5 = *(v1 + 16);
      if (v5)
      {
        specialized ContiguousArray.reserveCapacity(_:)();
        v6 = v1 + 48;
        do
        {
          v6 += 24;
          sub_1000161C0((v4 + 24), *(v4 + 48));
          dispatch thunk of GeocodeManagerType.reverseGeocode(coordinate:)();
          sub_10022C350(&qword_100CD0918);
          swift_allocObject();
          Promise.init(value:)();
          v7 = zalgo.getter();
          when2<A, B>(on:_:_:)();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v5;
        }

        while (v5);
      }

      v8 = zalgo.getter();
      sub_10022C350(&qword_100CD0920);
      when<A>(on:_:)();

      v9 = zalgo.getter();
      Promise.then<A>(on:closure:)();
    }
  }

  return result;
}

void sub_10068EAC8(uint64_t *a1, uint64_t a2)
{
  v26 = sub_10022C350(&qword_100CD0920);
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v20 - v6;
  v8 = type metadata accessor for DebugLocationManager.DebugLocation();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = &_swiftEmptyArrayStorage;
  if (v12)
  {
    v20[1] = a2;
    v20[2] = v2;
    v27 = &_swiftEmptyArrayStorage;
    v23 = v12;
    sub_1006A8234();
    v14 = 0;
    v13 = v27;
    v22 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v21 = v7 + 16;
    while (v14 < *(v11 + 16))
    {
      v15 = v5;
      sub_10068EF10(v22 + *(v5 + 72) * v14, v7);
      v16 = *&v21[*(v26 + 48)];
      v17 = *(v25 + 20);
      v18 = type metadata accessor for Location();
      (*(*(v18 - 8) + 16))(&v10[v17], v7, v18);
      *v10 = v16;
      sub_10068EF80(v7);
      v27 = v13;
      v19 = v13[2];
      if (v19 >= v13[3] >> 1)
      {
        sub_1006A8234();
        v13 = v27;
      }

      ++v14;
      v13[2] = v19 + 1;
      sub_10068EFE8(v10, v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19);
      v5 = v15;
      if (v23 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v27 = v13;

    AsyncObservable.next(value:quiet:)();
  }
}

uint64_t sub_10068ED98()
{

  sub_100006F14(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugLocationManager.DebugLocation()
{
  result = qword_100CD08D0;
  if (!qword_100CD08D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10068EE70()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10068EF10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD0920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10068EF80(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD0920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068EFE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationManager.DebugLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DebugLocationManager.InterestingStorms.Storm(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebugLocationManager.InterestingStorms.Storm(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_10068F0B8()
{
  result = qword_100CD0930;
  if (!qword_100CD0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0930);
  }

  return result;
}

unint64_t sub_10068F10C()
{
  result = qword_100CD0948;
  if (!qword_100CD0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0948);
  }

  return result;
}

unint64_t sub_10068F160()
{
  result = qword_100CD0960;
  if (!qword_100CD0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0960);
  }

  return result;
}

uint64_t sub_10068F1B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD0950);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10068F22C()
{
  result = qword_100CD0978;
  if (!qword_100CD0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0978);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugLocationManager.InterestingStorms.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugLocationManager.InterestingStorms.Storm.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10068F40C()
{
  result = qword_100CD0980;
  if (!qword_100CD0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0980);
  }

  return result;
}

unint64_t sub_10068F464()
{
  result = qword_100CD0988;
  if (!qword_100CD0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0988);
  }

  return result;
}

unint64_t sub_10068F4BC()
{
  result = qword_100CD0990;
  if (!qword_100CD0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0990);
  }

  return result;
}

unint64_t sub_10068F514()
{
  result = qword_100CD0998;
  if (!qword_100CD0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0998);
  }

  return result;
}

unint64_t sub_10068F56C()
{
  result = qword_100CD09A0;
  if (!qword_100CD09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD09A0);
  }

  return result;
}

unint64_t sub_10068F5C4()
{
  result = qword_100CD09A8;
  if (!qword_100CD09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD09A8);
  }

  return result;
}

uint64_t sub_10068F618@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v34 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for LocationViewerViewAction();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v35 = sub_10022C350(&qword_100CD0A60);
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v34 - v23;
  sub_10068FD20(v2, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v11 + 32))(v15, v19, v9);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0x4B79616C7265766FLL;
      *(inited + 40) = 0xEB00000000646E69;
      *(inited + 72) = v9;
      v29 = sub_100042FB0((inited + 48));
      (*(v11 + 16))(v29, v15, v9);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000064D0();
      ShortDescription.init(name:_:)();
      (*(v11 + 8))(v15, v9);
      break;
    case 2u:
      v25 = v34;
      (*(v34 + 32))(v8, v19, v3);
      sub_10022C350(&qword_100CA36F8);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_100A2C3F0;
      *(v26 + 32) = 0x6E6F697461636F6CLL;
      *(v26 + 40) = 0xE800000000000000;
      *(v26 + 72) = v3;
      v27 = sub_100042FB0((v26 + 48));
      (*(v25 + 16))(v27, v8, v3);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000064D0();
      ShortDescription.init(name:_:)();
      (*(v25 + 8))(v8, v3);
      break;
    case 3u:
    case 6u:
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_8;
    case 4u:
    case 5u:
    case 7u:
    case 8u:
      Dictionary.init(dictionaryLiteral:)();
      sub_10001F500();
      goto LABEL_8;
    case 9u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000064D0();
LABEL_8:
      ShortDescription.init(name:_:)();
      break;
    default:
      Dictionary.init(dictionaryLiteral:)();
      sub_10001F500();
      ShortDescription.init(name:_:)();
      sub_10068FDE8(v19);
      break;
  }

  v30 = v36;
  v31 = v35;
  v36[3] = v35;
  v30[4] = sub_10068FD84();
  v32 = sub_100042FB0(v30);
  return (*(v21 + 32))(v32, v24, v31);
}

uint64_t sub_10068FC94()
{
  sub_10068FE44(&qword_100CD0A70);

  return ShortDescribable.description.getter();
}

uint64_t sub_10068FD20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewerViewAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10068FD84()
{
  result = qword_100CD0A68;
  if (!qword_100CD0A68)
  {
    sub_10022E824(&qword_100CD0A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0A68);
  }

  return result;
}

uint64_t sub_10068FDE8(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewerViewAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10068FE44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationViewerViewAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10068FECC(unint64_t a1, void (*a2)(void *__return_ptr), uint64_t a3, void (*a4)(void))
{
  v7 = sub_10022C350(&qword_100CD0BC8);
  __chkstk_darwin(v7);
  v9 = &v19[-1] - v8;
  v10 = sub_10022C350(&qword_100CD0C98);
  __chkstk_darwin(v10);
  v12 = &v19[-1] - v11;
  if (WeatherAsyncImagePhase.image.getter(a1))
  {
    a2(v19);
    v13 = v19[1];
    v14 = v21;
    v15 = v22;
    v16 = v20;
    v18 = v20;
    *v12 = v19[0];
    *(v12 + 1) = v13;
    *(v12 + 1) = v16;
    v12[32] = v14;
    v12[33] = v15;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_10022C350(&qword_100CD0CA0);
    sub_1006955A8();
    sub_100695318();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    a4();
    sub_1000302D8(v9, v12, &qword_100CD0BC8);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CD0CA0);
    sub_1006955A8();
    sub_100695318();
    _ConditionalContent<>.init(storage:)();
    return sub_1000180EC(v9, &qword_100CD0BC8);
  }
}

uint64_t sub_100690150@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  sub_10022C350(&qword_100CB3AB0);
  sub_100003828();
  __chkstk_darwin(v2);
  v40 = &v40 - v3;
  v46 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v41 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_10022C350(&qword_100CD0B20);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v45 = sub_10022C350(&qword_100CD0B28);
  sub_1000037C4();
  v43 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v44 = sub_10022C350(&qword_100CD0B30);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = sub_10022C350(&qword_100CD0B38);
  sub_100690614(v1, &v16[*(v24 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_100006F64(&qword_100CD0B40, &qword_100CD0B20);
  v42 = v20;
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v13, v41);
  v25 = v40;
  sub_1000180EC(v16, &qword_100CD0B20);
  type metadata accessor for NewsArticleComponentView();
  sub_100354288(v25);
  v26 = type metadata accessor for URL();
  if (sub_100024D10(v25, 1, v26) == 1)
  {
    sub_1000180EC(v25, &qword_100CB3AB0);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v27 = URL.lastPathComponent.getter();
    v28 = v29;
    (*(*(v26 - 8) + 8))(v25, v26);
  }

  v30 = sub_1003544C8();
  v32 = v31;
  v33 = sub_1003543DC();
  *v7 = v27;
  v7[1] = v28;
  v7[2] = v30;
  v7[3] = v32;
  v7[4] = v33;
  v7[5] = v34;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v35 = &v23[*(v44 + 36)];
  v36 = type metadata accessor for AutomationInfoProperty();
  sub_100694E48(v7, &v35[*(v36 + 24)], type metadata accessor for AutomationInfo);
  sub_100695268(v7, type metadata accessor for AutomationInfo);
  *v35 = 0;
  *(v35 + 1) = 0xE000000000000000;
  *(v35 + 2) = swift_getKeyPath();
  v35[24] = 0;
  (*(v43 + 32))(v23, v42, v45);
  sub_1006939D8();
  v48 = v37;
  v49 = v38;
  sub_100694D1C();
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  return sub_1000180EC(v23, &qword_100CD0B30);
}

uint64_t sub_100690614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v3);
  v80 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10022C350(&qword_100CD0B50);
  __chkstk_darwin(v5 - 8);
  v7 = &v72 - v6;
  v8 = sub_10022C350(&qword_100CD0B58);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v72 - v10;
  v12 = sub_10022C350(&qword_100CD0B60);
  __chkstk_darwin(v12);
  v85 = &v72 - v13;
  v73 = sub_10022C350(&qword_100CD0B68);
  __chkstk_darwin(v73);
  v77 = &v72 - v14;
  v76 = sub_10022C350(&qword_100CD0B70);
  __chkstk_darwin(v76);
  v79 = &v72 - v15;
  v78 = sub_10022C350(&qword_100CD0B78);
  __chkstk_darwin(v78);
  v83 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = &v72 - v18;
  __chkstk_darwin(v19);
  v82 = &v72 - v20;
  v21 = sub_10022C350(&qword_100CD0B80);
  __chkstk_darwin(v21 - 8);
  v81 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v72 - v24;
  *v25 = static HorizontalAlignment.leading.getter();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = sub_10022C350(&qword_100CD0B88);
  sub_100690E9C(a1, &v25[*(v26 + 44)]);
  sub_100693504(v7);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v7, v11, &qword_100CD0B50);
  v27 = *(v9 + 44);
  v74 = v11;
  memcpy(&v11[v27], __src, 0x70uLL);
  v28 = *(a1 + *(type metadata accessor for NewsArticleComponentView() + 40));
  if (v28 != 1 || (v29 = 18.0, (static Solarium.isEnabled.getter() & 1) == 0))
  {
    v29 = 8.0;
  }

  v30 = v85;
  v31 = (v85 + *(v12 + 36));
  v32 = *(v3 + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  v35 = *(*(v34 - 8) + 104);
  v35(v31 + v32, v33, v34);
  *v31 = v29;
  v31[1] = v29;
  *(v31 + *(sub_10022C350(&qword_100CB34E0) + 36)) = 256;
  sub_10011C0F0(v74, v30, &qword_100CD0B58);
  v36 = static Alignment.center.getter();
  v74 = v37;
  if (!v28 || (v38 = 18.0, (static Solarium.isEnabled.getter() & 1) == 0))
  {
    v38 = 8.0;
  }

  v39 = v77;
  v40 = &v77[*(v73 + 36)];
  v41 = v80;
  v35(v80 + *(v3 + 20), v33, v34);
  *v41 = v38;
  v41[1] = v38;
  static Color.white.getter();
  v42 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100694E48(v41, v40, &type metadata accessor for RoundedRectangle);
  v43 = v40 + *(sub_10022C350(&qword_100CBACF8) + 36);
  v44 = v88;
  *v43 = v87;
  *(v43 + 16) = v44;
  *(v43 + 32) = v89;
  v45 = sub_10022C350(&qword_100CBAD00);
  *(v40 + *(v45 + 52)) = v42;
  *(v40 + *(v45 + 56)) = 256;
  v46 = static Alignment.center.getter();
  v48 = v47;
  sub_100695268(v41, &type metadata accessor for RoundedRectangle);
  v49 = (v40 + *(sub_10022C350(&qword_100CBAD08) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = (v40 + *(sub_10022C350(&qword_100CC1C58) + 36));
  v51 = v74;
  *v50 = v36;
  v50[1] = v51;
  sub_10011C0F0(v85, v39, &qword_100CD0B60);
  v52 = v79;
  sub_10011C0F0(v39, v79, &qword_100CD0B68);
  v53 = v52 + *(v76 + 36);
  *v53 = 0x3FF0000000000000;
  *(v53 + 8) = 0;
  v54 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v75;
  sub_10011C0F0(v52, v75, &qword_100CD0B70);
  v64 = v63 + *(v78 + 36);
  *v64 = v54;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  v65 = v82;
  sub_10011C0F0(v63, v82, &qword_100CD0B78);
  v66 = v81;
  sub_1000302D8(v25, v81, &qword_100CD0B80);
  v67 = v83;
  sub_1000302D8(v65, v83, &qword_100CD0B78);
  v68 = v84;
  sub_1000302D8(v66, v84, &qword_100CD0B80);
  v69 = sub_10022C350(&qword_100CD0B90);
  v70 = v68 + *(v69 + 48);
  *v70 = 0x4030000000000000;
  *(v70 + 8) = 0;
  sub_1000302D8(v67, v68 + *(v69 + 64), &qword_100CD0B78);
  sub_1000180EC(v65, &qword_100CD0B78);
  sub_1000180EC(v25, &qword_100CD0B80);
  sub_1000180EC(v67, &qword_100CD0B78);
  return sub_1000180EC(v66, &qword_100CD0B80);
}

uint64_t sub_100690E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_10022C350(&qword_100CB5CF8);
  __chkstk_darwin(v3 - 8);
  v102 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v100 = &v93 - v6;
  v96 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v96);
  v112 = &v93 - v7;
  v8 = sub_10022C350(&qword_100CD0BB8);
  __chkstk_darwin(v8 - 8);
  v103 = &v93 - v9;
  v110 = sub_10022C350(&qword_100CD0BC0);
  __chkstk_darwin(v110);
  v111 = &v93 - v10;
  v11 = sub_10022C350(&qword_100CB5CF0);
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v117 = &v93 - v14;
  v104 = sub_10022C350(&qword_100CD0BC8);
  __chkstk_darwin(v104);
  v107 = (&v93 - v15);
  v106 = sub_10022C350(&qword_100CD0BD0);
  __chkstk_darwin(v106);
  v109 = &v93 - v16;
  v108 = sub_10022C350(&qword_100CB5CE8);
  __chkstk_darwin(v108);
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v93 - v19;
  __chkstk_darwin(v20);
  v22 = &v93 - v21;
  v23 = type metadata accessor for Font.TextStyle();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v27 - 8);
  v28 = *(type metadata accessor for NewsArticleComponentView() + 36);
  v113 = a1;
  LODWORD(v28) = *(a1 + v28);
  v118 = v22;
  if (v28 == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
    Image.init(_internalSystemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v30._countAndFlagsBits = 0x7377654E20;
    v30._object = 0xE500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    LocalizedStringKey.init(stringInterpolation:)();
    v31 = Text.init(_:tableName:bundle:comment:)();
    v33 = v32;
    v35 = v34;
    (*(v24 + 104))(v26, enum case for Font.TextStyle.title3(_:), v23);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v24 + 8))(v26, v23);
    v36 = v31;
    v37 = Text.font(_:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v22 = v118;

    sub_10010CD64(v36, v33, v35 & 1);

    v44 = v41 & 1;
    v115 = v39;
    v116 = v37;
    sub_10010CD54(v37, v39, v41 & 1);
    v114 = v43;
  }

  else
  {
    v115 = 0;
    v116 = 0;
    v44 = 0;
    v114 = 0;
  }

  static Color.white.getter();
  v45 = Color.opacity(_:)();

  v46 = sub_10022C350(&qword_100CD0BD8);
  v47 = v107;
  v48 = v107 + *(v46 + 36);
  v49 = *(type metadata accessor for RoundedRectangle() + 20);
  v50 = enum case for RoundedCornerStyle.continuous(_:);
  v51 = type metadata accessor for RoundedCornerStyle();
  (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
  __asm { FMOV            V0.2D, #4.0 }

  *v48 = _Q0;
  *&v48[*(sub_10022C350(&qword_100CB34E0) + 36)] = 256;
  *v47 = v45;
  LOBYTE(v50) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v57 = v47 + *(v104 + 36);
  *v57 = v50;
  *(v57 + 1) = v58;
  *(v57 + 2) = v59;
  *(v57 + 3) = v60;
  *(v57 + 4) = v61;
  v57[40] = 0;
  v62 = v109;
  sub_100694034(v113, v47, v109);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000180EC(v47, &qword_100CD0BC8);
  v63 = (v62 + *(v106 + 36));
  v64 = v149;
  *v63 = v148;
  v63[1] = v64;
  v63[2] = v150;
  LOBYTE(v50) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v62;
  v74 = v105;
  sub_10011C0F0(v73, v105, &qword_100CD0BD0);
  v75 = v74 + *(v108 + 36);
  *v75 = v50;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  sub_10011C0F0(v74, v22, &qword_100CB5CE8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v108 = v151;
  v109 = v153;
  v76 = v155;
  v77 = v156;
  v147 = 1;
  v145 = v152;
  v143 = v154;
  v78 = v103;
  sub_100691A28(v103);
  if (sub_10069227C())
  {
    v79 = 2;
  }

  else
  {
    v79 = 3;
  }

  KeyPath = swift_getKeyPath();
  v81 = v111;
  sub_10011C0F0(v78, v111, &qword_100CD0BB8);
  v82 = v81 + *(v110 + 36);
  *v82 = KeyPath;
  *(v82 + 8) = v79;
  *(v82 + 16) = 0;
  v83 = v112;
  sub_100692604(v112);
  type metadata accessor for DynamicTypeSize();
  sub_1006956F0(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100694EA4();
    v107 = v77;
    v94 = v44;
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v83, &unk_100CE1680);
    sub_1000180EC(v81, &qword_100CD0BC0);
    v85 = v100;
    sub_100692B10(v100);
    v132 = v116;
    v133 = v115;
    v134 = v44;
    v135 = v114;
    v136 = &v132;
    v86 = v95;
    sub_1000302D8(v118, v95, &qword_100CB5CE8);
    v121 = 0;
    v122 = v147;
    *v123 = *v146;
    *&v123[3] = *&v146[3];
    v124 = v108;
    v125 = v145;
    *v126 = *v144;
    *&v126[3] = *&v144[3];
    v127 = v109;
    v128 = v143;
    *v129 = *v142;
    *&v129[3] = *&v142[3];
    v130 = v76;
    v131 = v107;
    v137 = v86;
    v138 = &v121;
    v87 = v97;
    v88 = v98;
    v89 = v117;
    v90 = v99;
    (*(v98 + 16))(v97, v117, v99);
    v119 = 0;
    v120 = 1;
    v139 = v87;
    v140 = &v119;
    v91 = v102;
    sub_1000302D8(v85, v102, &qword_100CB5CF8);
    v141 = v91;
    sub_1003E9448();
    sub_10014A53C(v116, v115, v94, v114);
    sub_1000180EC(v85, &qword_100CB5CF8);
    v92 = *(v88 + 8);
    v92(v89, v90);
    sub_1000180EC(v118, &qword_100CB5CE8);
    sub_1000180EC(v91, &qword_100CB5CF8);
    v92(v87, v90);
    sub_1000180EC(v86, &qword_100CB5CE8);
    return sub_10014A53C(v132, v133, v134, v135);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100691A28@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v78 = type metadata accessor for Font.Leading();
  v1 = *(v78 - 8);
  __chkstk_darwin(v78);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_10022C350(&qword_100CD0C30);
  __chkstk_darwin(v81);
  v8 = &v72 - v7;
  v82 = sub_10022C350(&qword_100CD0BF8);
  __chkstk_darwin(v82);
  v10 = &v72 - v9;
  v75 = sub_10022C350(&qword_100CD0C38);
  __chkstk_darwin(v75);
  v79 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = sub_10022C350(&qword_100CD0C40);
  __chkstk_darwin(v15);
  v77 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v72 - v18;
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  v22 = type metadata accessor for NewsArticleComponentViewModel(0);
  __chkstk_darwin(v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewsArticleComponentView();
  sub_100694E48(v80 + *(v25 + 32), v24, type metadata accessor for NewsArticleComponentViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v24, v6);
    v26 = v6[1];
    v84 = *v6;
    v85 = v26;
    sub_10002D5A4();

    v27 = Text.init<A>(_:)();
    v29 = v28;
    v31 = v30;
    static Font.subheadline.getter();
    v32 = v78;
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v78);
    Font.leading(_:)();
    v80 = v6;

    (*(v1 + 8))(v3, v32);
    v33 = Text.font(_:)();
    v35 = v34;
    LOBYTE(v32) = v36;
    v38 = v37;

    sub_10010CD64(v27, v29, v31 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v84) = v32 & 1;
    *v8 = v33;
    *(v8 + 1) = v35;
    v8[16] = v32 & 1;
    *(v8 + 3) = v38;
    *(v8 + 4) = KeyPath;
    *(v8 + 20) = 0;
    v8[42] = 1;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB6718);
    sub_100006F64(&qword_100CD0BF0, &qword_100CD0BF8);
    sub_100695014();
    _ConditionalContent<>.init(storage:)();
    return sub_100695268(v80, type metadata accessor for NewsArticleComponentContentViewModel);
  }

  else
  {
    static Color.white.getter();
    v78 = Color.opacity(_:)();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = v84;
    v42 = v85;
    v43 = v86;
    v44 = v87;
    v73 = v88;
    v74 = v14;
    v45 = v89;
    v46 = &v21[*(v15 + 36)];
    v47 = type metadata accessor for RoundedRectangle();
    v80 = v10;
    v48 = *(v47 + 20);
    v49 = enum case for RoundedCornerStyle.continuous(_:);
    v50 = type metadata accessor for RoundedCornerStyle();
    (*(*(v50 - 8) + 104))(&v46[v48], v49, v50);
    __asm { FMOV            V0.2D, #4.0 }

    *v46 = _Q0;
    *&v46[*(sub_10022C350(&qword_100CB34E0) + 36)] = 256;
    *v21 = v78;
    *(v21 + 1) = v41;
    v21[16] = v42;
    *(v21 + 3) = v43;
    v21[32] = v44;
    *(v21 + 5) = v73;
    *(v21 + 6) = v45;
    LOBYTE(v49) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = v74;
    sub_1000302D8(v21, v74, &qword_100CD0C40);
    v65 = v76;
    v66 = v64 + *(v75 + 36);
    *v66 = v49;
    *(v66 + 8) = v57;
    *(v66 + 16) = v59;
    *(v66 + 24) = v61;
    *(v66 + 32) = v63;
    *(v66 + 40) = 0;
    sub_1000302D8(v21, v65, &qword_100CD0C40);
    v67 = v77;
    sub_1000302D8(v21, v77, &qword_100CD0C40);
    v68 = v64;
    v69 = v79;
    sub_1000302D8(v68, v79, &qword_100CD0C38);
    v70 = v80;
    sub_1000302D8(v65, v80, &qword_100CD0C40);
    v71 = sub_10022C350(&qword_100CD0C48);
    sub_1000302D8(v67, v70 + *(v71 + 48), &qword_100CD0C40);
    sub_1000302D8(v69, v70 + *(v71 + 64), &qword_100CD0C38);
    sub_1000180EC(v69, &qword_100CD0C38);
    sub_1000180EC(v67, &qword_100CD0C40);
    sub_1000180EC(v65, &qword_100CD0C40);
    sub_1000302D8(v70, v8, &qword_100CD0BF8);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB6718);
    sub_100006F64(&qword_100CD0BF0, &qword_100CD0BF8);
    sub_100695014();
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v70, &qword_100CD0BF8);
    sub_1000180EC(v74, &qword_100CD0C38);
    return sub_1000180EC(v21, &qword_100CD0C40);
  }
}

uint64_t sub_10069227C()
{
  v1 = v0;
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NewsArticleComponentView();
  v14 = v0 + *(v13 + 24);
  v15 = *v14;
  LODWORD(v14) = *(v14 + 8);
  v34 = v13;
  if (v14 == 1)
  {
    v16 = v15;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v33 = v8;
    v18 = v5;
    v19 = v3;
    v20 = v2;
    v21 = v12;
    v22 = v1;
    v23 = v10;
    v24 = v9;
    v25 = v17;
    os_log(_:dso:log:_:_:)();

    v9 = v24;
    v10 = v23;
    v1 = v22;
    v12 = v21;
    v2 = v20;
    v3 = v19;
    v5 = v18;
    v8 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v15, 0);
    (*(v10 + 8))(v12, v9);
    v16 = v36;
  }

  if (v16 == 1 && (sub_10009ECC8(), (*(v3 + 104))(v5, enum case for ContentSizeCategory.medium(_:), v2), v26 = sub_100693C30(v8, v5), v27 = *(v3 + 8), v27(v5, v2), v27(v8, v2), v26))
  {
    v28 = v1 + *(v34 + 20);
    v29 = *v28;
    if (*(v28 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v29, 0);
      (*(v10 + 8))(v12, v9);
      LOBYTE(v29) = v35;
    }
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  return v29 & 1;
}

uint64_t sub_100692604@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for ContentSizeCategory();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v36 - v6;
  v7 = type metadata accessor for EnvironmentValues();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewsArticleComponentView();
  v11 = v1 + *(v10 + 24);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v13 == 1)
  {
    v14 = *v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v42 + 8))(v9, v7);
    v14 = v46;
  }

  if (v14 != 1)
  {
    goto LABEL_9;
  }

  v16 = v2 + *(v10 + 20);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v37 = v3;
    v20 = v19;
    os_log(_:dso:log:_:_:)();

    v21 = v42;
    v3 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v17, 0);
    (*(v21 + 8))(v9, v7);
    if (v43)
    {
      goto LABEL_7;
    }

LABEL_9:
    if (v13)
    {
      v22 = v12;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v12, 0);
      (*(v42 + 8))(v9, v7);
      v22 = v45;
    }

    if (v22 >= 2)
    {
      v24 = v10;
      v25 = v38;
      sub_10009ECC8();
      v27 = v39;
      v26 = v40;
      (*(v40 + 104))(v39, enum case for ContentSizeCategory.extraExtraLarge(_:), v3);
      v28 = sub_100693C30(v25, v27);
      v29 = *(v26 + 8);
      v29(v27, v3);
      v29(v25, v3);
      if (v28)
      {
        v30 = v2 + *(v24 + 20);
        v31 = *v30;
        if (*(v30 + 8) == 1)
        {
          if (v31)
          {
LABEL_16:
            v18 = &enum case for DynamicTypeSize.xxLarge(_:);
            goto LABEL_19;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v32 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000EBD74(v31, 0);
          (*(v42 + 8))(v9, v7);
          if (v44)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v18 = &enum case for DynamicTypeSize.accessibility5(_:);
    goto LABEL_19;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for DynamicTypeSize.large(_:);
LABEL_19:
  v33 = *v18;
  v34 = type metadata accessor for DynamicTypeSize();
  return (*(*(v34 - 8) + 104))(v41, v33, v34);
}

uint64_t sub_100692B10@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = type metadata accessor for BlendMode();
  v75 = *(v2 - 8);
  v76 = v2;
  __chkstk_darwin(v2);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ColorSchemeContrast();
  v83 = *(v73 - 8);
  __chkstk_darwin(v73);
  v80 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v62 - v6;
  v66 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v66);
  v8 = &v62 - v7;
  v77 = type metadata accessor for Font.Leading();
  v9 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v68 = sub_10022C350(&qword_100CD0C00);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v78 = &v62 - v13;
  v65 = sub_10022C350(&qword_100CD0C08);
  __chkstk_darwin(v65);
  v71 = &v62 - v14;
  v15 = sub_10022C350(&qword_100CD0C10);
  __chkstk_darwin(v15);
  v70 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v72 = &v62 - v18;
  v19 = sub_10022C350(&qword_100CD0C18);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = type metadata accessor for NewsArticleComponentViewModel(0);
  __chkstk_darwin(v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for NewsArticleComponentView() + 32);
  v81 = v1;
  sub_100694E48(v1 + v25, v24, type metadata accessor for NewsArticleComponentViewModel);
  v69 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = v19;
    v63 = v21;
    v64 = v15;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0x206E69206E65704FLL;
    v26._object = 0xED0000207377654ELL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
    LocalizedStringKey.init(stringInterpolation:)();
    v28 = Text.init(_:tableName:bundle:comment:)();
    v30 = v29;
    v32 = v31;
    static Font.caption.getter();
    v33 = v77;
    (*(v9 + 104))(v11, enum case for Font.Leading.tight(_:), v77);
    Font.leading(_:)();

    (*(v9 + 8))(v11, v33);
    v34 = Text.font(_:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;

    sub_10010CD64(v28, v30, v32 & 1);

    v84 = v34;
    v85 = v36;
    v86 = v38 & 1;
    v87 = v40;
    sub_100692604(v8);
    type metadata accessor for DynamicTypeSize();
    sub_1006956F0(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
      View.dynamicTypeSize<A>(_:)();
      sub_1000180EC(v8, &unk_100CE1680);
      sub_10010CD64(v34, v36, v38 & 1);

      v42 = v79;
      sub_1001C7668();
      v43 = v83;
      v44 = *(v83 + 104);
      v45 = v80;
      LODWORD(v77) = enum case for ColorSchemeContrast.increased(_:);
      v46 = v73;
      v44(v80);
      v47 = static ColorSchemeContrast.== infix(_:_:)();
      v48 = *(v43 + 8);
      v48(v45, v46);
      v83 = v43 + 8;
      v48(v42, v46);
      if (v47)
      {
        v49 = static HierarchicalShapeStyle.primary.getter();
      }

      else
      {
        v49 = static HierarchicalShapeStyle.tertiary.getter();
      }

      v50 = v49;
      v52 = v74;
      v51 = v75;
      v53 = v71;
      (*(v67 + 32))(v71, v78, v68);
      *(v53 + *(v65 + 36)) = v50;
      v54 = v79;
      sub_1001C7668();
      v55 = v80;
      (v44)(v80, v77, v46);
      v56 = static ColorSchemeContrast.== infix(_:_:)();
      v48(v55, v46);
      v48(v54, v46);
      v57 = &enum case for BlendMode.normal(_:);
      if ((v56 & 1) == 0)
      {
        v57 = &enum case for BlendMode.plusLighter(_:);
      }

      v58 = v76;
      (*(v51 + 104))(v52, *v57, v76);
      v59 = v70;
      (*(v51 + 32))(&v70[*(v64 + 36)], v52, v58);
      sub_10011C0F0(v53, v59, &qword_100CD0C08);
      v60 = v59;
      v61 = v72;
      sub_10011C0F0(v60, v72, &qword_100CD0C10);
      sub_1000302D8(v61, v63, &qword_100CD0C10);
      swift_storeEnumTagMultiPayload();
      sub_1006950A0();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v61, &qword_100CD0C10);
      return sub_100695268(v69, type metadata accessor for NewsArticleComponentViewModel);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1006950A0();
    return _ConditionalContent<>.init(storage:)();
  }

  return result;
}

uint64_t sub_100693504@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v43 = sub_10022C350(&qword_100CD0B98);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_100003C38();
  v44 = v2 - v3;
  __chkstk_darwin(v4);
  v6 = (&v40 - v5);
  v7 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v7 - 8);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = sub_10022C350(&qword_100CD0BA0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v46 = sub_10022C350(&qword_100CD0BA8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = (&v40 - v24);
  type metadata accessor for NewsArticleComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = type metadata accessor for NewsArticleComponentView();
  sub_100694E48(v45 + *(v30 + 32), v29, type metadata accessor for NewsArticleComponentViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v22;
    sub_10035526C(v29, v22);
    sub_1000302D8(v22 + *(v18 + 20), v13, &qword_100CB3AB0);
    v41 = v10;
    sub_1000302D8(v13, v10, &qword_100CB3AB0);
    v31 = type metadata accessor for URL();
    sub_10001B350(v17, 1, 1, v31);
    v32 = v14;
    *v6 = 0;
    v33 = v43;
    sub_10001B350(v6 + *(v43 + 36), 1, 1, v31);
    *(v6 + *(v33 + 40)) = 0x8000000000000000;
    sub_1000302D8(v6, v44, &qword_100CD0B98);
    State.init(wrappedValue:)();
    sub_1000180EC(v6, &qword_100CD0B98);
    sub_1000180EC(v13, &qword_100CB3AB0);
    sub_10032A9F8(v41, v17);
    *&v17[v32[9]] = 0x3FF0000000000000;
    *&v17[v32[10]] = 0;
    v34 = &v17[v32[11]];
    *v34 = sub_10032AC4C;
    v34[1] = 0;
    sub_1000302D8(v17, v25, &qword_100CD0BA0);
    swift_storeEnumTagMultiPayload();
    sub_10001CA4C();
    sub_100006F64(v35, &qword_100CD0BA0);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v17, &qword_100CD0BA0);
    return sub_100695268(v42, type metadata accessor for NewsArticleComponentContentViewModel);
  }

  else
  {
    static Color.white.getter();
    v37 = Color.opacity(_:)();

    *v25 = v37;
    swift_storeEnumTagMultiPayload();
    sub_10001CA4C();
    sub_100006F64(v38, v39);
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_1006939D8()
{
  sub_10022C350(&qword_100CA3DA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  type metadata accessor for NewsArticleComponentView();
  *(inited + 32) = sub_1003544C8();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1003543DC();
  *(inited + 56) = v2;
  v3 = [objc_opt_self() mainBundle];
  v19._object = 0x8000000100ADB140;
  v4._countAndFlagsBits = 0x206E69206E65704FLL;
  v4._object = 0xEC0000007377654ELL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000071;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v19);

  v7 = 0;
  *(inited + 64) = v6;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = v7 - 1;
  v10 = 16 * v7 + 40;
  while (1)
  {
    if (v9 == 2)
    {
      swift_setDeallocating();
      sub_10015A594();
      v18 = sub_100003940();
      sub_10022C350(v18);
      sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
      BidirectionalCollection<>.joined(separator:)();

      sub_100003940();
      return;
    }

    if (++v9 > 2)
    {
      break;
    }

    v11 = v10 + 16;
    v12 = *(inited + v10);
    v10 += 16;
    if (v12)
    {
      v13 = *(inited + v11 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100109810();
        v8 = v16;
      }

      v14 = v8[2];
      if (v14 >= v8[3] >> 1)
      {
        sub_100109810();
        v8 = v17;
      }

      v7 = v9 + 1;
      v8[2] = v14 + 1;
      v15 = &v8[2 * v14];
      v15[4] = v13;
      v15[5] = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
}