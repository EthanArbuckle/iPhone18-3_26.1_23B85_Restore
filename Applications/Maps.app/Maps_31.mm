uint64_t sub_1003912BC()
{
  if (qword_1019067B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_100021540(v1, qword_101960138);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching weather conditions", v4, 2u);
  }

  static WeatherQuery.current.getter();
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_10039143C;
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[3];

  return WeatherService.weather<A>(for:including:)(v6, v9, v7, v8);
}

uint64_t sub_10039143C()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003919D0;
  }

  else
  {
    v5 = sub_1003915AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003915AC()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v29 = v3;
  v36 = v0[11];
  v27 = v0[10];
  v5 = v0[9];
  v30 = v0[8];
  v31 = v0[7];
  v35 = v0[6];
  v33 = v0[5];
  v34 = v0[4];
  v32 = v0[3];
  CurrentWeather.condition.getter();
  CurrentWeather.isDaylight.getter();
  WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
  v28 = *(v1 + 8);
  v28(v2, v3);
  CurrentWeather.temperature.getter();
  Measurement<>.formattedString()();
  v6 = *(v36 + 8);
  v6(v4, v27);
  WeatherConditionIcon.name.getter();
  WeatherConditionIcon.palette.getter();
  CurrentWeather.metadata.getter();
  WeatherMetadata.expirationDate.getter();
  (*(v30 + 8))(v5, v31);
  CurrentWeather.condition.getter();
  WeatherCondition.accessibilityDescription.getter();
  v28(v2, v29);
  CurrentWeather.temperature.getter();
  Measurement<>.formattedDigitsOnlyString()();
  v6(v4, v27);
  v7 = objc_allocWithZone(WeatherConditions);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  sub_100014C84(0, &qword_10190CA00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = Date._bridgeToObjectiveC()().super.isa;
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = [v7 initWithTemperature:v8 name:v9 palette:isa forLocation:v32 withExpirationDate:v11 conditionDescription:v12 temperatureDescription:v13];

  (*(v33 + 8))(v35, v34);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Successfully fetched Weather conditions", v17, 2u);
  }

  v19 = v0[23];
  v18 = v0[24];
  v20 = v0[22];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[16];

  v24 = v14;
  sub_10004EE78(v14);

  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v18, v20);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1003919D0()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to retrieve weather conditions", v3, 2u);
  }

  sub_10004EE78(0);

  v4 = *(v0 + 8);

  return v4();
}

void sub_100391B10()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_lastSavedLocation);
  if (v1)
  {
    v2 = qword_1019067B0;
    v7 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100021540(v3, qword_101960138);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Updating weather based on temperature unit change", v6, 2u);
    }

    sub_100390D20(v7);
  }
}

void sub_100391C40(uint64_t a1, void *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_weatherConditions);
  *(a1 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_weatherConditions) = a2;
  v5 = a2;

  if (a2)
  {
    v6 = [v5 location];
    if (v6)
    {
      v7 = *(a1 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_lastSavedLocation);
      *(a1 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_lastSavedLocation) = v6;
    }
  }

  sub_10038FDD4();
  sub_100390208();
}

uint64_t sub_100391CF4()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960138);
  sub_100021540(v0, qword_101960138);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100391D80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_100390FB8(a1, v4, v5, v6, v7, v8);
}

double sub_100391E6C@<D0>(double *a1@<X8>)
{
  sub_1001DF920();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100391FCC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TestResizeableContaineeViewController.ResizeableCardViewModel();

  State.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  a1[3] = &type metadata for TestResizeableContaineeViewController.ResizeableCard;
  a1[4] = sub_1003928A8();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v4;
  *(result + 24) = v5;
  *(result + 32) = KeyPath;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_100392078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v28 = a1;
  v30 = a5;
  v29 = type metadata accessor for CardHeaderSize();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-v9];
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v15 - 8);
  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v31, "Content Alpha ");
  HIBYTE(v31[0]) = -18;
  v24 = a4;
  if ((a4 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000F1230(a3, 0);
    (*(v12 + 8))(v14, v11);
  }

  v17._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v17);

  v18 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v28;
  *(v19 + 24) = v20;
  *(v19 + 32) = a3;
  v21 = v24 & 1;
  *(v19 + 40) = v24 & 1;
  sub_1001D31A8(a3, v21);

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  (*(v27 + 104))(v25, enum case for CardHeaderSize.medium(_:), v29);
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  return LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
}

uint64_t sub_10039251C()
{
  sub_1000CE6B8(&qword_10191CA78);
  State.wrappedValue.getter();
  v0 = *(v2 + 16);
  if (!v0)
  {
  }

  v0();

  return sub_1000588AC(v0);
}

uint64_t sub_1003925B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  sub_1000CE6B8(&qword_101917A20);
  sub_1002A282C();
  List<>.init(content:)();
  v7 = sub_100154F0C(v5, v6);
  *(a1 + *(sub_1000CE6B8(&qword_10191CA68) + 36)) = v7;
  v8 = a1 + *(sub_1000CE6B8(&qword_10191CA70) + 36);
  sub_100392078(v3, v4, v5, v6, v8);
  result = sub_1000CE6B8(&qword_101910FB8);
  *(v8 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_1003928A8()
{
  result = qword_10191CA60;
  if (!qword_10191CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CA60);
  }

  return result;
}

unint64_t sub_100392938()
{
  result = qword_10191CA80;
  if (!qword_10191CA80)
  {
    sub_1000D6664(&qword_10191CA70);
    sub_1003929F0();
    sub_1000414C8(&qword_101911018, &qword_101910FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CA80);
  }

  return result;
}

unint64_t sub_1003929F0()
{
  result = qword_10191CA88;
  if (!qword_10191CA88)
  {
    sub_1000D6664(&qword_10191CA68);
    sub_100392A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CA88);
  }

  return result;
}

unint64_t sub_100392A7C()
{
  result = qword_10191CA90;
  if (!qword_10191CA90)
  {
    sub_1000D6664(&qword_10191CA98);
    sub_1000414C8(&qword_101917A00, &qword_1019179F8);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CA90);
  }

  return result;
}

void sub_100392B38(void *a1)
{
  v9 = [a1 originalMarkedLocation];
  v3 = [a1 presentingViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v9;
    aBlock[4] = sub_100392E9C;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_101614EC8;
    v6 = _Block_copy(aBlock);
    v7 = v1;
    v8 = v9;

    [v4 dismissViewControllerAnimated:1 completion:v6];

    _Block_release(v6);
  }

  else
  {
  }
}

void sub_100392C8C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v3 = [Strong searchPinsManager];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 clearDroppedPin];

  v5 = [objc_opt_self() sharedManager];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  [v6 setCustomSearchResult:0 animated:1 shouldSelectOnMap:0 context:v7];

  [v8 popContext:a1 animated:1 completion:0];
}

uint64_t sub_100392EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ClientOrigin();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100392F90, 0, 0);
}

uint64_t sub_100392F90()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for ClientOrigin.other(_:), v0[3]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC4Maps19SearchFindMySession_session) = Session.init(_:)();

  v2 = v0[1];

  return v2();
}

id sub_1003931AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchFindMySession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100393214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100392EA4(a1, v4, v5, v6);
}

uint64_t sub_10039332C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1003933C4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_100393478(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = a1[1];

  return sub_1003934D8(v7, v6, a5);
}

uint64_t sub_1003934D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100394EF4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100393610@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps9UserGuide__image;
  swift_beginAccess();
  return sub_100395198(v5 + v3, a1);
}

uint64_t sub_1003936A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps9UserGuide__image;
  swift_beginAccess();
  return sub_100395198(v3 + v4, a2);
}

uint64_t sub_100393740(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UserGuide.ImageType(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100395198(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100394EF4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100395080(v6);
}

uint64_t sub_100393838(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps9UserGuide__image;
  swift_beginAccess();
  sub_100395134(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_1003938A4()
{
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps9UserGuide__publisherImage);
  v2 = v1;
  return v1;
}

id sub_100393924@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps9UserGuide__publisherImage);
  *a2 = v4;

  return v4;
}

void sub_1003939B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003939E4(v1);
}

void sub_1003939E4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps9UserGuide__publisherImage;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps9UserGuide__publisherImage);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100394EF4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000F1178();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100393B3C()
{
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps9UserGuide__numberOfPlaces);
}

uint64_t sub_100393BBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC4Maps9UserGuide__numberOfPlaces + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps9UserGuide__numberOfPlaces);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100393C48(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC4Maps9UserGuide__numberOfPlaces;
  if ((*(v2 + OBJC_IVAR____TtC4Maps9UserGuide__numberOfPlaces + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100394EF4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100393D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps9UserGuide__canShare);
  return result;
}

uint64_t sub_100393E4C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100394EF4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100393EE4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100394EF4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_100393FB8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UserGuide.ImageType(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v34.receiver - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC4Maps9UserGuide__publisherImage;
  *&v2[OBJC_IVAR____TtC4Maps9UserGuide__publisherImage] = 0;
  v9 = &v2[OBJC_IVAR____TtC4Maps9UserGuide__numberOfPlaces];
  *v9 = 0;
  v9[8] = 1;
  ObservationRegistrar.init()();
  v10 = [a1 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = &v2[OBJC_IVAR____TtC4Maps9UserGuide_id];
  *v14 = v11;
  v14[1] = v13;
  v15 = [a1 title];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = &v2[OBJC_IVAR____TtC4Maps9UserGuide__title];
  *v19 = v16;
  v19[1] = v18;
  v20 = [a1 subtitle];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = &v2[OBJC_IVAR____TtC4Maps9UserGuide__subtitle];
  *v24 = v21;
  v24[1] = v23;
  sub_100394270(a1, v7);
  sub_100394F4C(v7, &v2[OBJC_IVAR____TtC4Maps9UserGuide__image]);
  v25 = [a1 badgeImage];

  *&v2[v8] = v25;
  v2[OBJC_IVAR____TtC4Maps9UserGuide_type] = 0;
  v26 = [a1 numberOfItems];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 unsignedIntegerValue];
  }

  else
  {
    v28 = 0;
  }

  *v9 = v28;
  v9[8] = v27 == 0;
  v29 = [a1 canShare];
  v2[OBJC_IVAR____TtC4Maps9UserGuide__canShare] = v29;
  v30 = [a1 canDelete];
  v2[OBJC_IVAR____TtC4Maps9UserGuide__canDelete] = v30;
  *&v2[OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler] = a1;
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v31 = a1;
  v32 = objc_msgSendSuper2(&v34, "init");
  [v31 addObserver:v32];

  return v32;
}

uint64_t sub_100394270@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 isFavoriteCollection] && (v4 = String._bridgeToObjectiveC()(), v5 = objc_msgSend(objc_opt_self(), "imageNamed:", v4), v4, v5))
  {
    *a2 = v5;
  }

  else
  {
    v6 = [a1 image];
    if (v6 || (v6 = [a1 glyphImage]) != 0)
    {
      *a2 = v6;
    }
  }

  type metadata accessor for UserGuide.ImageType(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_100394378()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10039454C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003945E4, v6, v5);
}

uint64_t sub_1003945E4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100394670();
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_100394670()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for UserGuide.ImageType(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler);
  v7 = [v6 title];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1003934D8(v8, v10, &OBJC_IVAR____TtC4Maps9UserGuide__title);
  v11 = [v6 subtitle];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_1003934D8(v12, v14, &OBJC_IVAR____TtC4Maps9UserGuide__subtitle);
  v15 = [v6 numberOfItems];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 unsignedIntegerValue];
  }

  else
  {
    v17 = 0;
  }

  sub_100393C48(v17, v16 == 0);
  sub_100394270(v6, v5);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v25 - 2) = v1;
  *(&v25 - 1) = v5;
  v26 = v1;
  sub_100394EF4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100395080(v5);
  sub_1003939E4([v6 badgeImage]);
  v19 = [v6 canShare];
  v20 = v19;
  if (v19 == *(v1 + OBJC_IVAR____TtC4Maps9UserGuide__canShare))
  {
    *(v1 + OBJC_IVAR____TtC4Maps9UserGuide__canShare) = v19;
  }

  else
  {
    v21 = swift_getKeyPath();
    __chkstk_darwin(v21);
    *(&v25 - 2) = v1;
    *(&v25 - 8) = v20;
    v26 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  result = [v6 canDelete];
  v23 = result;
  if (result == *(v1 + OBJC_IVAR____TtC4Maps9UserGuide__canDelete))
  {
    *(v1 + OBJC_IVAR____TtC4Maps9UserGuide__canDelete) = result;
  }

  else
  {
    v24 = swift_getKeyPath();
    __chkstk_darwin(v24);
    *(&v25 - 2) = v1;
    *(&v25 - 8) = v23;
    v26 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100394A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100395374, v6, v5);
}

void sub_100394B1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v12 = a1;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;

  sub_10020AAE4(0, 0, v9, a5, v14);
}

uint64_t sub_100394CB4()
{
  result = type metadata accessor for UserGuide.ImageType(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_100394DEC()
{
  result = sub_1000F1178();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100394E6C()
{
  result = qword_10191CD20;
  if (!qword_10191CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CD20);
  }

  return result;
}

uint64_t sub_100394EC0@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC4Maps9UserGuide_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

unint64_t sub_100394EF4()
{
  result = qword_10190C910;
  if (!qword_10190C910)
  {
    type metadata accessor for UserGuide(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C910);
  }

  return result;
}

uint64_t sub_100394F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuide.ImageType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100394FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_100394A64(a1, v4, v5, v6);
}

uint64_t sub_100395080(uint64_t a1)
{
  v2 = type metadata accessor for UserGuide.ImageType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003950F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps9UserGuide__publisherImage);
  *(v1 + OBJC_IVAR____TtC4Maps9UserGuide__publisherImage) = v2;
  v4 = v2;
}

uint64_t sub_100395134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuide.ImageType(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100395198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuide.ImageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003951FC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC4Maps9UserGuide__numberOfPlaces;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_10039525C(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_1003952A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10039454C(a1, v4, v5, v6);
}

id PlaceCardDeviceProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceCardDeviceProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id PlaceCardDeviceProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceCardDeviceProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10039547C()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  v2 = *(v0 + 56);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3 = qword_1019600D8;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E1D30;
  *(v7 + 56) = &type metadata for UInt;
  *(v7 + 64) = &protocol witness table for UInt;
  *(v7 + 32) = v2;
  v8 = static String.localizedStringWithFormat(_:_:)();

  return v8;
}

uint64_t sub_1003955F0()
{
  swift_getKeyPath();
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState);
  sub_1000F0120(v1);
  return v1;
}

uint64_t sub_1003956B0(uint64_t a1, void *a2)
{
  v3 = sub_10005E838((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000CE6B8(&qword_101915AB0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10039575C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
  swift_beginAccess();
  return sub_1000EF908(v5 + v3, a1);
}

uint64_t sub_100395824(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary;
  swift_beginAccess();
  sub_100397464(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100395890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState);
  *v3 = a2;
  v3[1] = a3;
  sub_1000F0120(a2);
  return sub_1001187B0(v4);
}

void *sub_1003958E8()
{
  swift_getKeyPath();
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver);
  v2 = v1;
  return v1;
}

id sub_100395998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver);
  *a2 = v4;

  return v4;
}

void sub_100395A58(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100395A88(v1);
}

void sub_100395A88(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100014C84(0, &unk_10191CE90);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100395C20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000D24C8();

  *a1 = v2;
  return result;
}

char *sub_100395C60(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver] = 0;
  ObservationRegistrar.init()();
  *&v1[OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler] = a1;
  v4 = type metadata accessor for UserGuideCoverPhotoImageProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v6 = a1;
  ObservationRegistrar.init()();
  *&v5[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v6;
  v40.receiver = v5;
  v40.super_class = v4;
  v7 = v6;
  v8 = objc_msgSendSuper2(&v40, "init");
  [v7 addObserver:v8];

  v42 = v4;
  v43 = sub_10039749C(&qword_10191F510, type metadata accessor for UserGuideCoverPhotoImageProvider);
  *&v41 = v8;
  v9 = [v7 title];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v7 numberOfItems];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 == 0;
  v17 = [v7 isFavoriteCollection];
  v18 = [v7 isSharedCollection];
  v19 = [v7 canShare];
  sub_10005E7BC(&v41, v44);
  *(&v45 + 1) = v10;
  *&v46 = v12;
  *(&v46 + 1) = v15;
  LOBYTE(v47) = v16;
  BYTE1(v47) = v17;
  BYTE2(v47) = v18;
  HIBYTE(v47) = v19;
  v20 = &v1[OBJC_IVAR____TtC4Maps26UserGuideContentController__userGuideSummary];
  v21 = v46;
  *(v20 + 2) = v45;
  *(v20 + 3) = v21;
  *(v20 + 16) = v47;
  v22 = v44[1];
  *v20 = v44[0];
  *(v20 + 1) = v22;
  v23 = &v1[OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState];
  *v23 = 0;
  *(v23 + 1) = 0;
  v39.receiver = v1;
  v39.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v39, "init");
  v25 = OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler;
  v26 = *&v24[OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler];
  v27 = v24;
  [v26 addObserver:v27];
  v28 = *&v24[v25];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = [v30 curatedCollectionIdentifier];
    if (v32)
    {
      v33 = v32;
      v34 = [objc_allocWithZone(CuratedCollectionResolver) initWithCuratedCollectionIdentifier:v32 delegate:v27];
      v35 = v34;
      sub_100395A88(v34);

      v36 = v31;
      v7 = v33;
      v31 = v35;
    }

    else
    {
      v36 = v27;
    }

    v37 = v7;
    v7 = v31;
  }

  else
  {
    v37 = v27;
  }

  return v27;
}

id sub_100395FB8()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for UserGuideContentController()
{
  result = qword_10191CE10;
  if (!qword_10191CE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100396190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v7;
  v5[22] = v6;

  return _swift_task_switch(sub_100396228, v7, v6);
}

uint64_t sub_100396228()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler);
  sub_100396598(v0[19]);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v0[2] = v0;
  v0[3] = sub_100396380;
  v3 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_101615140;
  v0[14] = v3;
  [v1 removeObjects:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100396380()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_100396518;
  }

  else
  {
    v5 = sub_1003964B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003964B0()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100396518()
{
  v1 = *(v0 + 184);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100396598(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000CE6B8(&unk_1019193C0);
  v3 = static _SetStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_100014C84(0, &unk_101918390);
  sub_100397A24();
  result = Set.Iterator.init(_cocoa:)();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_34:
      sub_10005F150();

      return v3;
    }

    *&v27 = v16;
    sub_100014C84(0, &unk_101918390);
    swift_dynamicCast();
LABEL_25:
    sub_100014C84(0, &unk_101918390);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100396914(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserGuideCoverPhotoImageProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v6 = a1;
  ObservationRegistrar.init()();
  *&v5[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v6;
  v28.receiver = v5;
  v28.super_class = v4;
  v7 = v6;
  v8 = objc_msgSendSuper2(&v28, "init");
  [v7 addObserver:v8];

  v26 = v4;
  v27 = sub_10039749C(&qword_10191F510, type metadata accessor for UserGuideCoverPhotoImageProvider);
  *&v25 = v8;
  v9 = [v7 title];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v7 numberOfItems];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 == 0;
  v17 = [v7 isFavoriteCollection];
  v18 = [v7 isSharedCollection];
  v19 = [v7 canShare];
  sub_10005E7BC(&v25, v29);
  v30 = v10;
  v31 = v12;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  sub_1000EF908(v29, &v25);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000EF9B8(&v25);
  v21 = [v7 content];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10039753C(v22);

  v23 = swift_getKeyPath();
  __chkstk_darwin(v23);
  *&v25 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000EF9B8(v29);
}

uint64_t sub_100396CE4()
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

uint64_t sub_100396E08(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler);
  v4 = type metadata accessor for UserGuideCoverPhotoImageProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v6 = v3;
  ObservationRegistrar.init()();
  *&v5[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v6;
  v25.receiver = v5;
  v25.super_class = v4;
  v7 = v6;
  v8 = objc_msgSendSuper2(&v25, "init");
  [v7 addObserver:v8];

  v23 = v4;
  v24 = sub_10039749C(&qword_10191F510, type metadata accessor for UserGuideCoverPhotoImageProvider);
  *&v22 = v8;
  v9 = [a1 title];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [a1 numberOfItems];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 == 0;
  v17 = [a1 isFavoriteCollection];
  v18 = [a1 isSharedCollection];
  v19 = [a1 canShare];
  sub_10005E7BC(&v22, v26);
  v27 = v10;
  v28 = v12;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  sub_1000EF908(v26, &v22);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000EF9B8(v26);
  return sub_1000EF9B8(&v22);
}

uint64_t sub_1003972A8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003972C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100397310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_100397364(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

__n128 sub_100397394(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1003973B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100397400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10039749C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003974E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver);
  *(v1 + OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver) = v2;
  v4 = v2;
}

uint64_t sub_10039753C(uint64_t result)
{
  v1 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage;
  v2 = *(result + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = 0;
  v23 = result + 32;
  do
  {
    v4 = v23 + 32 * v3;
    for (i = v3; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      result = sub_10004E374(v4, v29);
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      sub_10004E374(v29, v28);
      sub_100014C84(0, &unk_10191B570);
      if (swift_dynamicCast())
      {
        break;
      }

LABEL_9:
      sub_10004E374(v29, v28);
      sub_100014C84(0, &unk_101918390);
      if (swift_dynamicCast())
      {
        v8 = v27;
        v9 = type metadata accessor for UserGuideItem();
        v10 = objc_allocWithZone(v9);
        v11 = &v10[OBJC_IVAR____TtC4Maps13UserGuideItem_type];
        *v11 = v8;
        v11[8] = 0;
        v25.receiver = v10;
        v25.super_class = v9;
        objc_msgSendSuper2(&v25, "init");
        goto LABEL_16;
      }

      sub_10004E374(v29, v28);
      sub_100014C84(0, &qword_10190EC58);
      if (swift_dynamicCast())
      {
        v12 = v27;
        v13 = [v27 mapItem];
        v14 = type metadata accessor for UserGuideItem();
        v15 = objc_allocWithZone(v14);
        v16 = &v15[OBJC_IVAR____TtC4Maps13UserGuideItem_type];
        *v16 = v13;
        v16[8] = 0;
        v26.receiver = v15;
        v26.super_class = v14;
        v17 = v13;
        objc_msgSendSuper2(&v26, "init");

        goto LABEL_16;
      }

      result = sub_10004E3D0(v29);
      v4 += 32;
      if (v3 == v2)
      {
        return v1;
      }
    }

    v6 = v27;
    v7 = [objc_opt_self() _itemWithGeoMapItem:v27];
    if (!v7)
    {

      goto LABEL_9;
    }

    v18 = v7;
    v19 = type metadata accessor for UserGuideItem();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR____TtC4Maps13UserGuideItem_type];
    *v21 = v18;
    v21[8] = 0;
    v24.receiver = v20;
    v24.super_class = v19;
    v22 = v18;
    objc_msgSendSuper2(&v24, "init");

LABEL_16:
    sub_10004E3D0(v29);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v30;
  }

  while (v3 != v2);
  return v1;
}

uint64_t sub_10039786C(void *a1)
{
  v1 = [a1 collectionItems];
  sub_100014C84(0, &qword_10190EC58);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10019392C(v2);

  sub_10039753C(v3);

  swift_getKeyPath();
  sub_10039749C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1003979CC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_1000F0120(v1);
  return sub_1001187B0(v4);
}

unint64_t sub_100397A24()
{
  result = qword_10190D338;
  if (!qword_10190D338)
  {
    sub_100014C84(255, &unk_101918390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D338);
  }

  return result;
}

unint64_t sub_100397AB0()
{
  result = qword_10191CEA8;
  if (!qword_10191CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CEA8);
  }

  return result;
}

unint64_t sub_100397B08()
{
  result = qword_10191CEB0;
  if (!qword_10191CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CEB0);
  }

  return result;
}

unint64_t sub_100397B60()
{
  result = qword_10191CEB8;
  if (!qword_10191CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CEB8);
  }

  return result;
}

unint64_t sub_100397BB8()
{
  result = qword_10191CEC0;
  if (!qword_10191CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CEC0);
  }

  return result;
}

id sub_100397C4C(char *a1, uint64_t a2, id *a3)
{
  v4 = [*a3 homeResult];
  sub_1001D6A70(v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (swift_getObjectType(), (Strong = swift_conformsToProtocol2()) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&a1[OBJC_IVAR____TtC4Maps36HomePublisherGuidesCollectionRowCell_delegate + 8] = Strong;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v6 = String._bridgeToObjectiveC()();
    [a1 setAccessibilityIdentifier:v6];

    v7 = UIAccessibilityTraitButton;

    return [a1 setAccessibilityTraits:v7];
  }

  return result;
}

uint64_t sub_100397D9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019067B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_10191C2D0);
  v3 = sub_100021540(v2, qword_101960160);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100397E50(uint64_t a1, uint64_t a2)
{
  sub_10011A1CC();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10010ED08(a1 + 8, a2 + 8);
}

unint64_t sub_100397EC8()
{
  result = qword_10191CED0;
  if (!qword_10191CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CED0);
  }

  return result;
}

unint64_t sub_100397F1C(uint64_t a1)
{
  result = sub_100397F44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100397F44()
{
  result = qword_10191CF10;
  if (!qword_10191CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CF10);
  }

  return result;
}

unint64_t sub_100397FBC()
{
  result = qword_10191CF20;
  if (!qword_10191CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CF20);
  }

  return result;
}

void sub_100398010(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_100398088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  ImageProvidingSpecs.displayScale.getter();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_1000D2C74;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100398010;
  v11[3] = &unk_101615330;
  v10 = _Block_copy(v11);

  [v6 fetchImageForScreenScale:v10 withCompletionHandler:v8];
  _Block_release(v10);
}

unint64_t sub_100398188()
{
  result = qword_10191CF28;
  if (!qword_10191CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CF28);
  }

  return result;
}

unint64_t sub_1003981E4()
{
  result = qword_10191CF30;
  if (!qword_10191CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CF30);
  }

  return result;
}

unint64_t sub_10039823C()
{
  result = qword_10191CF38;
  if (!qword_10191CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191CF38);
  }

  return result;
}

uint64_t sub_100398290(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v16[1] = a3;
  v17 = a2;
  v3 = sub_1000CE6B8(&qword_10191CF40);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  static SymbolRenderingMode.palette.getter();
  v10 = type metadata accessor for SymbolRenderingMode();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = Image.symbolRenderingMode(_:)();

  sub_100024F64(v5, &qword_10191CF40);
  v12 = static Color.white.getter();
  v13 = static Color.green.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18[0] = 1;
  *(v19 + 6) = v21;
  *(&v19[1] + 6) = v22;
  *(&v19[2] + 6) = v23;
  *&v24[0] = v11;
  *(&v24[0] + 1) = v12;
  v24[1] = v13;
  *v25 = 257;
  *&v25[2] = v19[0];
  *&v25[18] = v19[1];
  *&v25[34] = v19[2];
  *&v25[48] = *(&v23 + 1);
  v19[0] = v24[0];
  v19[1] = v13;
  v19[2] = *v25;
  v19[3] = *&v25[16];
  v19[4] = *&v25[32];
  v20 = *(&v23 + 1);
  sub_1000CE6B8(&qword_10191CF48);
  swift_allocObject();
  sub_1003985C0(v24, v18);
  ImageRenderer.init(content:)();
  v14 = ImageRenderer.uiImage.getter();

  v17(v14);

  return sub_100024F64(v24, &unk_10191CF50);
}

uint64_t sub_1003985C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10191CF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100398634(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697463;
  v3 = 0x655374696B706974;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x655374696B706974;
    }

    if (v4 == 2)
    {
      v6 = 0x80000001012169A0;
    }

    else
    {
      v6 = 0xED00006E6F697463;
    }
  }

  else
  {
    v5 = 0xD000000000000019;
    if (v4)
    {
      v6 = 0x8000000101216980;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
      v6 = 0x8000000101216960;
    }
  }

  if (a2 == 2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001012169A0;
  }

  v7 = 0x8000000101216980;
  v8 = 0xD000000000000019;
  if (!a2)
  {
    v8 = 0xD00000000000001BLL;
    v7 = 0x8000000101216960;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100398768(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6469754772657375;
  v5 = 0xEA00000000007365;
  if (a1 != 5)
  {
    v4 = 0x4C65736963657270;
    v5 = 0xEF6E6F697461636FLL;
  }

  v6 = 0xE700000000000000;
  v7 = 0x73746E65636572;
  if (a1 != 3)
  {
    v7 = 0x6469754772657375;
    v6 = 0xED00007473694C65;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6974736567677573;
  v9 = 0xEB00000000736E6FLL;
  if (a1 != 1)
  {
    v8 = 0x64656E6E6970;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701670760;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEB00000000736E6FLL;
        if (v10 != 0x6974736567677573)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x64656E6E6970)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701670760)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000007365;
      if (v10 != 0x6469754772657375)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xEF6E6F697461636FLL;
      if (v10 != 0x4C65736963657270)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73746E65636572)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xED00007473694C65;
    if (v10 != 0x6469754772657375)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

unint64_t sub_1003989D0()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1003FD07C();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_1003FA524(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_1003FA524(result);
      }
    }

    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100398A60()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_10041667C(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100398AD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100398C24()
{
  String.hash(into:)();
}

unint64_t sub_100398D54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10039B4DC(*a1);
  *a2 = result;
  return result;
}

void sub_100398D84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701670760;
  v5 = 0xEA00000000007365;
  v6 = 0x6469754772657375;
  if (v2 != 5)
  {
    v6 = 0x4C65736963657270;
    v5 = 0xEF6E6F697461636FLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73746E65636572;
  if (v2 != 3)
  {
    v8 = 0x6469754772657375;
    v7 = 0xED00007473694C65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000736E6FLL;
  v10 = 0x6974736567677573;
  if (v2 != 1)
  {
    v10 = 0x64656E6E6970;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void sub_100399054(void *a1, void *a2)
{
  v3 = v2;
  v32.receiver = v3;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "becomeTopContextInChromeViewController:withAnimation:", a1, a2);
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 hasDeferredAction:v6 forContext:v3];

  if ((v7 & 1) == 0)
  {
    v25 = [a2 isAnimated];
    v8 = [a1 previousTopContext];
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = 0;
    v24 = v9;
    if (v8)
    {
      sub_100014C84(0, &qword_10191D028);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([swift_unknownObjectRetain() isKindOfClass:ObjCClassFromMetadata])
      {
        v13 = 1;
      }

      else
      {
        sub_100014C84(0, &qword_10191D030);
        v13 = [v8 isKindOfClass:swift_getObjCClassFromMetadata()];
      }

      *(v9 + 16) = v13;
      sub_100014C84(0, &qword_10191D038);
      if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        v16 = 1;
      }

      else
      {
        sub_100014C84(0, &qword_10191D040);
        v16 = [v8 isKindOfClass:swift_getObjCClassFromMetadata()];
      }

      sub_100014C84(0, &qword_10191D048);
      if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        objc_opt_self();
        v17 = [swift_dynamicCastObjCClassUnconditional() mapWasPanned];
      }

      else
      {
        v17 = 0;
      }

      if ([v8 isKindOfClass:{ObjCClassFromMetadata, v9}])
      {
        objc_opt_self();
        v18 = [swift_dynamicCastObjCClassUnconditional() searchSession];
        swift_unknownObjectRelease();
        v14 = v11;
        *(v11 + 16) = v18;
      }

      else
      {
        v14 = v11;
        swift_unknownObjectRelease();
      }

      v15 = v17;
    }

    else
    {
      v14 = v10;
      v15 = 0;
      v16 = 0;
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_10039B528;
    v31 = v19;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100039C64;
    v29 = &unk_101615460;
    v20 = _Block_copy(&aBlock);

    [a2 addPreparation:v20];
    _Block_release(v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v16;
    *(v22 + 32) = v24;
    *(v22 + 40) = v14;
    *(v22 + 48) = v25;
    *(v22 + 56) = v8;
    *(v22 + 64) = v15;
    v30 = sub_10039B530;
    v31 = v22;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1002ABAC8;
    v29 = &unk_1016154B0;
    v23 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [a2 addCompletion:v23];
    swift_unknownObjectRelease();
    _Block_release(v23);
  }
}

void sub_100399504()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (!MapsFeature_IsEnabled_EVRouting())
    {
      goto LABEL_8;
    }

    v2 = [objc_opt_self() sharedInstance];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 platformController];

      if (v4)
      {
        v5 = [v4 auxiliaryTasksManager];

        v6 = [v5 vehicleDisambiguationTask];
        if (v6)
        {
          v7 = v6;
          v8 = [v1 carChromeViewController];
          if (v8)
          {
            v9 = v8;
            [v7 displayDisambiguationPromptIfNeededFromChromeViewController:v8];

            goto LABEL_8;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_8:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_100399644(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ((a3 & 1) != 0 || (swift_beginAccess(), *(a4 + 16) == 1))
    {
      swift_beginAccess();
      v16 = *(a5 + 16);
      if (v16)
      {
        [v16 invalidate];
      }

      v17 = [v15 carChromeViewController];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 defaultMapSettings];

        if (v19)
        {
          if ([v19 trackingMode] || (v24 = objc_msgSend(v15, "chromeViewController")) == 0 || (v25 = v24, v26 = objc_msgSend(v24, "navigationDisplay"), v25, !v26))
          {
LABEL_9:
            [v19 zoomLevel];
            if (v20 > 19.0)
            {
              v20 = 19.0;
            }

            [v19 setZoomLevel:v20];
            [v19 applyToMapViewAnimated:a6 & 1 duration:0 completion:-1.0];

            goto LABEL_28;
          }

          v27 = [v26 configuration];

          if (v27)
          {
            v28 = [v27 cameraStyle];

            if (v28 == 2)
            {
              v29 = 1;
            }

            else
            {
              v29 = 2;
            }

            [v19 setTrackingMode:v29];
            goto LABEL_9;
          }

LABEL_32:
          __break(1u);
          return;
        }

LABEL_28:

        return;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (a7)
    {
      swift_unknownObjectRetain();
      v21 = [v15 carChromeViewController];
      if (!v21)
      {
        goto LABEL_31;
      }

      v22 = v21;
      v23 = [v21 defaultMapSettings];

      if (v23)
      {
        if (a8)
        {
          [v23 readFromMapView];
        }

        else
        {
          [v23 applyToMapViewAnimated:a6 & 1 duration:0 completion:-1.0];
        }
      }

      swift_unknownObjectRelease();
    }

    [v15 setInitialTrackingIfNeededAndPossible];
    goto LABEL_28;
  }
}

char *sub_100399984()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC4Maps14CarHomeContext_cardIdentifiersByViewControllers;
  *&v0[OBJC_IVAR____TtC4Maps14CarHomeContext_cardIdentifiersByViewControllers] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC4Maps14CarHomeContext_preciseLocationCard] = 0;
  v0[OBJC_IVAR____TtC4Maps14CarHomeContext_interactingWithMap] = 0;
  *&v0[OBJC_IVAR____TtC4Maps14CarHomeContext_presentedCardIdentifiers] = &off_1016010A8;
  v3 = [objc_allocWithZone(type metadata accessor for CarHomeViewController()) initWithNibName:0 bundle:0];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *&v0[v2];
  *&v0[v2] = 0x8000000000000000;
  sub_10039B0B8(v3, 0, isUniquelyReferenced_nonNull_native, &v12);
  *&v0[v2] = v12;
  swift_endAccess();
  v0[OBJC_IVAR____TtC4Maps14CarHomeContext_showPreciseLocationCard] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, "init");
  v6 = objc_allocWithZone(CarPreciseLocationOffButtonCardViewController);
  v7 = v5;
  v8 = [v6 initWithDelegate:v7];
  v9 = *&v7[OBJC_IVAR____TtC4Maps14CarHomeContext_preciseLocationCard];
  *&v7[OBJC_IVAR____TtC4Maps14CarHomeContext_preciseLocationCard] = v8;

  return v7;
}

void *sub_100399B04()
{
  v1 = [v0 carChromeViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isAutohidingContentHiddenForContext:v0];

    if (v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  sub_1000CE6B8(&qword_101909BF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E1D30;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = v5;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  return result;
}

void sub_100399CE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(44);

    goto LABEL_64;
  }

  v4 = v3;
  v6 = OBJC_IVAR____TtC4Maps14CarHomeContext_presentedCardIdentifiers;
  swift_beginAccess();
  v7 = *(v4 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v7 + v8 + 31);
  }

  else
  {
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC4Maps14CarHomeContext_cardIdentifiersByViewControllers;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_10029717C(v9);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      swift_endAccess();
      if (v9)
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v14;

        if ((v15 & 1) == 0)
        {
          if (v9 > 5)
          {
          }

          else
          {
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v19 & 1) == 0)
            {
              type metadata accessor for CarHomeListDetailViewController();
              v20 = swift_dynamicCastClass();
              if (v20)
              {
                v21 = v20;
                *(v20 + OBJC_IVAR____TtC4Maps31CarHomeListDetailViewController_actionDelegate + 8) = &off_10161F248;
                swift_unknownObjectWeakAssign();
                if (a1)
                {
                  [a1 setContent:v21];
                  sub_100496BE4(*(*(v21 + OBJC_IVAR____TtC4Maps31CarHomeListDetailViewController_viewModel) + 16));
                  v22 = String._bridgeToObjectiveC()();

                  [a1 setTitle:v22];

LABEL_52:
                  [a1 setAccessoryType:1];
                  goto LABEL_53;
                }

                goto LABEL_59;
              }

              type metadata accessor for CarUserGuideViewController();
              v33 = swift_dynamicCastClass();
              if (v33)
              {
                v34 = v33;
                *(v33 + OBJC_IVAR____TtC4Maps26CarUserGuideViewController_actionDelegate + 8) = &off_10160EB90;
                swift_unknownObjectWeakAssign();
                if (a1)
                {
                  [a1 setContent:v34];
                  v35 = [*(v34 + OBJC_IVAR____TtC4Maps26CarUserGuideViewController_userGuide) title];
                  if (!v35)
                  {
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v35 = String._bridgeToObjectiveC()();
                  }

                  [a1 setTitle:v35];

                  goto LABEL_52;
                }

                goto LABEL_60;
              }

LABEL_53:

              return;
            }
          }

          if (a1)
          {
            [a1 setContent:v16];
            [a1 setTitle:0];
            [a1 setAccessoryType:0];
            v23 = objc_alloc_init(CarCardLayout);
            [(CarCardLayout *)v23 setEdgePosition:0];
            [(CarCardLayout *)v23 setCornerPosition:1];
            [(CarCardLayout *)v23 setPrimaryAxis:1];
            [(CarCardLayout *)v23 setPinnedEdges:0];
            [(CarCardLayout *)v23 setPrimaryAxisFillMode:0];
            LODWORD(v24) = 1.0;
            [(CarCardLayout *)v23 setPrimaryAxisFillModePriority:v24];
            [(CarCardLayout *)v23 setSecondaryAxisFillMode:2];
            LODWORD(v25) = 1148846080;
            UIView.annotateView(with:)([(CarCardLayout *)v23 setSecondaryAxisFillModePriority:v25]);
            [(CarCardLayout *)v23 setMargins:?];
            [(CarCardLayout *)v23 setFlipForRightHandDrive:1];
            v26 = v23;
            v27 = [(CarCardLayout *)v26 primaryAxis];
            v28 = [(CarCardLayout *)v26 cornerPosition];
            if (v27 == 1)
            {
              if (v28 == 4 || [(CarCardLayout *)v26 cornerPosition]== 1 || [(CarCardLayout *)v26 edgePosition]== 2)
              {
                v29 = 8;
              }

              else
              {
                v29 = 0;
              }

              if ([(CarCardLayout *)v26 cornerPosition]== 8 || [(CarCardLayout *)v26 cornerPosition]== 2 || [(CarCardLayout *)v26 edgePosition]== 8)
              {
                v29 |= 2uLL;
              }

              if ([(CarCardLayout *)v26 edgePosition]== 1)
              {
                v29 |= 4uLL;
              }

              v30 = v29 | ([(CarCardLayout *)v26 edgePosition]== 4);
            }

            else
            {
              v30 = v28 == 4 || [(CarCardLayout *)v26 cornerPosition]== 8 || [(CarCardLayout *)v26 edgePosition]== 4;
              if ([(CarCardLayout *)v26 cornerPosition]== 1 || [(CarCardLayout *)v26 cornerPosition]== 2 || [(CarCardLayout *)v26 edgePosition]== 1)
              {
                v30 |= 4uLL;
              }

              if ([(CarCardLayout *)v26 edgePosition]== 2)
              {
                v30 |= 8uLL;
              }

              if ([(CarCardLayout *)v26 edgePosition]== 8)
              {
                v30 |= 2uLL;
              }
            }

            [(CarCardLayout *)v26 setEdgesAffectingMapInsets:v30];
            [(CarCardLayout *)v26 setHorizontallyCenterMapInsets:0];
            v31 = v26;
            if (v31)
            {
              v32 = v31;
              [a1 setLayout:v31];

              goto LABEL_53;
            }

LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else
      {
        v17 = v14;
      }

      if (a1)
      {
        [a1 setContent:v14];
        type metadata accessor for CarHomeViewController();
        v18 = swift_dynamicCastClass();
        if (!v18)
        {

          goto LABEL_64;
        }

        *(v18 + OBJC_IVAR____TtC4Maps21CarHomeViewController_actionDelegate + 8) = &off_1016121A0;
        swift_unknownObjectWeakAssign();
        goto LABEL_53;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

LABEL_61:
  swift_endAccess();
  _StringGuts.grow(_:)(52);
  v36._countAndFlagsBits = 0xD000000000000031;
  v36._object = 0x8000000101233210;
  String.append(_:)(v36);
  _print_unlocked<A, B>(_:_:)();
  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
LABEL_64:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10039A62C()
{
  v1 = [v0 chromeViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationDisplay];

    if (v3)
    {
      [v3 isCameraPanning];
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  [v4 isIncidentReportingEnabled];

  return 1;
}

void sub_10039A710(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  v5 = [v7 chromeViewController];
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsUpdateComponent:@"cards" animated:{objc_msgSend(v4, "isAnimated")}];
  }
}

void sub_10039A7BC(char a1)
{
  if (v1[OBJC_IVAR____TtC4Maps14CarHomeContext_showPreciseLocationCard] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC4Maps14CarHomeContext_showPreciseLocationCard])
    {
      v2 = [objc_allocWithZone(CarPreciseLocationOffButtonCardViewController) initWithDelegate:v1];
      v3 = OBJC_IVAR____TtC4Maps14CarHomeContext_presentedCardIdentifiers;
      swift_beginAccess();
      v4 = *&v1[v3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v3] = v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_4:
        v7 = *(v4 + 2);
        v6 = *(v4 + 3);
        if (v7 >= v6 >> 1)
        {
          v4 = sub_100356AAC((v6 > 1), v7 + 1, 1, v4);
        }

        *(v4 + 2) = v7 + 1;
        v4[v7 + 32] = 6;
        *&v1[v3] = v4;
        swift_endAccess();
        v8 = OBJC_IVAR____TtC4Maps14CarHomeContext_cardIdentifiersByViewControllers;
        swift_beginAccess();
        v9 = v2;
        v10 = swift_isUniquelyReferenced_nonNull_native();
        v28 = *&v1[v8];
        *&v1[v8] = 0x8000000000000000;
        sub_10039B0B8(v9, 6u, v10, &v28);
        *&v1[v8] = v28;
        swift_endAccess();

LABEL_37:
        v26 = [v1 chromeViewController];
        if (v26)
        {
          v27 = v26;
          [v26 setNeedsUpdateComponent:@"cards" animated:1];
        }

        return;
      }
    }

    else
    {
      v11 = OBJC_IVAR____TtC4Maps14CarHomeContext_presentedCardIdentifiers;
      swift_beginAccess();
      v4 = *&v1[v11];
      v12 = *(v4 + 2);
      if (!v12)
      {
        v2 = 0;
        v14 = 0;
LABEL_36:
        sub_10054E484(v2, v14);
        swift_endAccess();
        goto LABEL_37;
      }

      v2 = 0;
      v3 = 0xE600000000000000;
      while (1)
      {
        if (v2 >= *(v4 + 2))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (v4[v2 + 32] > 5u)
        {
          break;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          goto LABEL_16;
        }

        if (v12 == ++v2)
        {
          v2 = *(v4 + 2);
          v14 = v2;
          goto LABEL_36;
        }
      }

LABEL_16:
      v3 = v2 + 1;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v11] = v4;
      if ((v15 & 1) == 0)
      {
LABEL_49:
        v4 = sub_10041667C(v4);
      }

      *&v1[v11] = v4;
      v16 = *(v4 + 2);
      if (v16 - 1 == v2)
      {
        v14 = v3;
        goto LABEL_36;
      }

      v17 = (v2 + 33);
      v3 = 0xE400000000000000;
      while (1)
      {
        v20 = v17 - 32;
        if ((v17 - 32) >= v16)
        {
          break;
        }

        if (v17[v4] > 5u)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            if (v20 != v2)
            {
              if ((v2 & 0x8000000000000000) != 0)
              {
                goto LABEL_42;
              }

              v22 = *(v4 + 2);
              if (v2 >= v22)
              {
                goto LABEL_43;
              }

              if (v20 >= v22)
              {
                goto LABEL_44;
              }

              v3 = v4[v2 + 32];
              v23 = v17[v4];
              v24 = swift_isUniquelyReferenced_nonNull_native();
              *&v1[v11] = v4;
              if ((v24 & 1) == 0)
              {
                v4 = sub_10041667C(v4);
              }

              v25 = *(v4 + 2);
              if (v2 >= v25)
              {
                goto LABEL_45;
              }

              v4[v2 + 32] = v23;
              if (v20 >= v25)
              {
                goto LABEL_46;
              }

              v17[v4] = v3;
              *&v1[v11] = v4;
              v3 = 0xE400000000000000;
            }

            ++v2;
          }
        }

        v16 = *(v4 + 2);
        v18 = v17 + 1;
        v19 = v17 - 31;
        ++v17;
        if (v19 == v16)
        {
          v14 = (v18 - 32);
          if ((v18 - 32) >= v2)
          {
            goto LABEL_36;
          }

          __break(1u);
          goto LABEL_49;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    v4 = sub_100356AAC(0, *(v4 + 2) + 1, 1, v4);
    *&v1[v3] = v4;
    goto LABEL_4;
  }
}

void sub_10039AD38(void *a1, uint64_t a2, char a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return;
  }

  v8 = [v4 carChromeViewController];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v8 captureUserActionChangedTrackingMode:a2];

  v10 = [v4 carChromeViewController];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v10 defaultMapSettings];

  if (!v12)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v12 setTrackingMode:a2];

  if (a2 != 2)
  {
    v15 = [a1 camera];
    [v15 heading];
    if (v13 == 0.0)
    {
    }

    else
    {
      [v15 copy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_100014C84(0, &unk_10191D018);
      swift_dynamicCast();
      v14 = v16;
      [v14 setHeading:0.0];
      [a1 setCamera:v14 animated:a3 & 1];
    }
  }
}

unint64_t sub_10039B064()
{
  result = qword_10191D010;
  if (!qword_10191D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D010);
  }

  return result;
}

void sub_10039B0B8(uint64_t a1, unsigned __int8 a2, char a3, void *a4)
{
  v8 = *a4;
  v9 = sub_10029717C(a2);
  v11 = v8[2];
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
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100126BEC(v14, a3 & 1);
      v9 = sub_10029717C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_10012C7B4();
      v9 = v17;
    }
  }

  v19 = *a4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_10039B200(void *a1)
{
  v1 = [a1 sharedTrips];
  sub_100014C84(0, &qword_10191D050);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_20:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  if ([v4 disallowDetailsForChina])
  {
    v5 = [objc_opt_self() sharedInstance];
    if (v5)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  if (([v4 disallowDetailsForTransportType] & 1) != 0 || objc_msgSend(v4, "disallowDetailsForProtocolVersion"))
  {
    v5 = [objc_opt_self() sharedInstance];
    if (v5)
    {
LABEL_12:
      v6 = v5;
      sub_1000D0EC4(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v8 = [v6 presentInterruptionOfKind:13 userInfo:isa completionHandler:0];

      _Block_release(v8);
      return;
    }

    goto LABEL_26;
  }

  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 displaySharedTrip:v4];
}

unint64_t sub_10039B4DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101600FE0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10039B5B0()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    result = sub_10039B64C();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10039B64C()
{
  result = qword_10190EED0;
  if (!qword_10190EED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190EED0);
  }

  return result;
}

uint64_t sub_10039B698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10039B754()
{
  result = type metadata accessor for CarDetailRowViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10039B7DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  v29 = 0;
  sub_10039B954(v2, &v23);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v30 = v23;
  v35[1] = v24;
  v35[2] = v25;
  v35[3] = v26;
  v35[4] = v27;
  v35[0] = v23;
  sub_10039BBBC(&v30, v22);
  sub_10039BC2C(v35);
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[7] = v30;
  v5 = v29;
  LOBYTE(v2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v23) = 0;
  v14 = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  v16 = *&v28[48];
  *(a1 + 49) = *&v28[32];
  *(a1 + 65) = v16;
  *(a1 + 81) = *&v28[64];
  v17 = *&v28[16];
  *(a1 + 17) = *v28;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 96) = *&v28[79];
  *(a1 + 33) = v17;
  *(a1 + 104) = v2;
  *(a1 + 112) = v7;
  *(a1 + 120) = v9;
  *(a1 + 128) = v11;
  *(a1 + 136) = v13;
  *(a1 + 144) = 0;
  *(a1 + 152) = v14;
  *(a1 + 160) = v18;
  *(a1 + 168) = v19;
  *(a1 + 176) = v20;
  *(a1 + 184) = v21;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_10039B954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = Text.init(_:)();
  v10 = v9;
  v12 = v11;
  static Font.caption.getter();
  v13 = Text.font(_:)();
  v36 = v14;
  v37 = v13;
  HIDWORD(v35) = v15;
  v38 = v16;

  sub_1000F0A40(v8, v10, v12 & 1);

  v17 = *(a1 + *(type metadata accessor for CarDetailRowViewModel(0) + 20));
  AttributedString.init(_:)();
  v18 = Text.init(_:)();
  v20 = v19;
  LOBYTE(v10) = v21;
  static Font.caption.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_1000F0A40(v18, v20, v10 & 1);

  v29 = BYTE4(v35) & 1;
  v42 = BYTE4(v35) & 1;
  v41 = BYTE4(v35) & 1;
  v40 = 1;
  LOBYTE(v18) = v26 & 1;
  v39 = v26 & 1;
  v30 = v26 & 1;
  v32 = v36;
  v31 = v37;
  *a2 = v37;
  *(a2 + 8) = v32;
  *(a2 + 16) = v29;
  *(a2 + 24) = v38;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v22;
  *(a2 + 56) = v24;
  *(a2 + 64) = v30;
  *(a2 + 72) = v28;
  v33 = v31;
  sub_1001C8AFC(v31, v32, v29);

  sub_1001C8AFC(v22, v24, v18);

  sub_1000F0A40(v22, v24, v18);

  sub_1000F0A40(v33, v32, v42);
}

uint64_t sub_10039BBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191D188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10039BC2C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191D188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039BCC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10039BD48()
{
  result = qword_10191D1B0;
  if (!qword_10191D1B0)
  {
    sub_1000D6664(&qword_10191D1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D1B0);
  }

  return result;
}

double sub_10039BDE8()
{
  sub_1000CE6B8(&qword_10191D2B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D40;
  static Color.white.getter();
  Color.opacity(_:)();

  *(v0 + 32) = Gradient.Stop.init(color:location:)();
  *(v0 + 40) = v1;
  static Color.white.getter();
  Color.opacity(_:)();

  *(v0 + 48) = Gradient.Stop.init(color:location:)();
  *(v0 + 56) = v2;
  static Color.white.getter();
  Color.opacity(_:)();

  *(v0 + 64) = Gradient.Stop.init(color:location:)();
  *(v0 + 72) = v3;
  Gradient.init(stops:)();
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  xmmword_101960178 = v5;
  unk_101960188 = v6;
  qword_101960198 = v7;
  return result;
}

double sub_10039BF34()
{
  sub_1000CE6B8(&qword_10191D2B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D60;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v0 + 32) = Gradient.Stop.init(color:location:)();
  *(v0 + 40) = v1;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v0 + 48) = Gradient.Stop.init(color:location:)();
  *(v0 + 56) = v2;
  Gradient.init(stops:)();
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v4;
  xmmword_1019601A0 = v4;
  unk_1019601B0 = v5;
  qword_1019601C0 = v6;
  return result;
}

uint64_t sub_10039C050@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_1000CE6B8(&qword_10190D6F0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_1000CE6B8(&qword_10191D1C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_1000CE6B8(&qword_10191D1C8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v44 - v19);
  *v20 = static Alignment.bottomLeading.getter();
  v20[1] = v21;
  v22 = v20 + *(sub_1000CE6B8(&qword_10191D1D0) + 44);
  v44 = a2;
  sub_10039C4B4(a1, a2, v22);
  v23 = v20 + *(v15 + 44);
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #26.0 }

  *v23 = _Q0;
  *&v23[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  if (a1)
  {
    v32 = *&a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics];
    if (v32 && *(v32 + OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_showsDivider) == 1)
    {
      Divider.init()();
      v33 = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      v34 = &v7[*(v5 + 36)];
      *v34 = v33;
      *(v34 + 1) = v35;
      *(v34 + 2) = v36;
      *(v34 + 3) = v37;
      *(v34 + 4) = v38;
      v34[40] = 0;
      sub_1003A08E4();
      View.accessibilityIdentifier(_:)();
      sub_100024F64(v7, &qword_10190D6F0);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = sub_1000CE6B8(&qword_10191D1D8);
    (*(*(v40 - 8) + 56))(v13, v39, 1, v40);
    sub_1000D2DFC(v20, v17, &qword_10191D1C8);
    sub_1000D2DFC(v13, v10, &qword_10191D1C0);
    v41 = v45;
    sub_1000D2DFC(v17, v45, &qword_10191D1C8);
    v42 = sub_1000CE6B8(&qword_10191D1E0);
    sub_1000D2DFC(v10, v41 + *(v42 + 48), &qword_10191D1C0);
    sub_100024F64(v13, &qword_10191D1C0);
    sub_100024F64(v20, &qword_10191D1C8);
    sub_100024F64(v10, &qword_10191D1C0);
    return sub_100024F64(v17, &qword_10191D1C8);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039C4B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v98 = a3;
  v97 = sub_1000CE6B8(&qword_10191D1F8);
  __chkstk_darwin(v97);
  v103 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = (&v88 - v6);
  *&v100 = type metadata accessor for Image.ResizingMode();
  v93 = *(v100 - 8);
  __chkstk_darwin(v100);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10191D200);
  __chkstk_darwin(v8 - 8);
  v10 = &v88 - v9;
  v11 = sub_1000CE6B8(&qword_10191D208);
  __chkstk_darwin(v11);
  v102 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v88 - v14;
  __chkstk_darwin(v16);
  v18 = &v88 - v17;
  if (a1)
  {
    v19 = objc_opt_self();
    v95 = a1;
    v20 = a1;
    v101 = v19;
    v21 = [v19 sharedInstance];
    v22 = [v21 joeColorForCuratedCollection:*&v20[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection]];

    v23 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    v130 = v23;
    sub_1000CE6B8(&qword_10190F580);
    sub_1001C5AC0();
    View.accessibilityIdentifier(_:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_1000F11C4(v10, v15, &qword_10191D200);
    v24 = &v15[*(v11 + 36)];
    v25 = v148[3];
    *v24 = v148[2];
    *(v24 + 1) = v25;
    *(v24 + 2) = v148[4];
    sub_1000F11C4(v15, v18, &qword_10191D208);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v94 = v18;
    if (KeyPath)
    {
      v27 = v92;
      v26 = v93;
      v28 = v100;
      (*(v93 + 104))(v92, enum case for Image.ResizingMode.stretch(_:), v100);
      v29 = Image.resizable(capInsets:resizingMode:)();
      (*(v26 + 8))(v27, v28);
      sub_1002B4098();

      sub_1002B419C();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v30 = v149;
      LOBYTE(v26) = v150;
      v31 = v151;
      v32 = v152;
      v100 = v153;

      LOBYTE(KeyPath) = v26;
      LOBYTE(v117[0]) = v32;
      *&v146 = v29;
      *(&v146 + 1) = v30;
      LOBYTE(v147) = v26;
      *(&v147 + 1) = v31;
      LOBYTE(v148[0]) = v32;

      v33 = v100;
      v34 = 1;
    }

    else
    {

      v34 = 0;
      *&v148[0] = 0;
      v33 = 0uLL;
      v146 = 0u;
      v147 = 0u;
    }

    *(v148 + 8) = v33;
    BYTE8(v148[1]) = v34;
    v35 = [v101 sharedInstance];
    v36 = [v35 joeColorForCuratedCollection:*&v20[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection]];

    v89 = Color.init(_:)();
    v101 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    if (qword_1019067C0 != -1)
    {
      swift_once();
    }

    v92 = unk_101960188;
    v93 = *(&xmmword_101960178 + 1);
    v90 = qword_101960198;
    v91 = qword_101960190;
    v37 = qword_1019067C8;
    *&v100 = xmmword_101960178;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = *(&xmmword_1019601A0 + 1);
    v88 = xmmword_1019601A0;
    v39 = unk_1019601B0;
    v40 = qword_1019601B8;
    v41 = qword_1019601C0;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = static HorizontalAlignment.leading.getter();
    v43 = v99;
    *v99 = v42;
    *(v43 + 8) = 0x4000000000000000;
    *(v43 + 16) = 0;
    v44 = sub_1000CE6B8(&qword_10191D210);
    sub_10039D218(v95, v96, v43 + *(v44 + 44));
    v45 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v43 + *(sub_1000CE6B8(&qword_10191D218) + 36);
    *v54 = v45;
    *(v54 + 8) = v47;
    *(v54 + 16) = v49;
    *(v54 + 24) = v51;
    *(v54 + 32) = v53;
    *(v54 + 40) = 0;
    v55 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v56 = v43 + *(v97 + 36);
    *v56 = v55;
    *(v56 + 8) = v57;
    *(v56 + 16) = v58;
    *(v56 + 24) = v59;
    *(v56 + 32) = v60;
    *(v56 + 40) = 0;
    v61 = v94;
    v62 = v102;
    sub_1000D2DFC(v94, v102, &qword_10191D208);
    v107 = v146;
    v108 = v147;
    v109[0] = v148[0];
    *(v109 + 9) = *(v148 + 9);
    v63 = v103;
    sub_1000D2DFC(v43, v103, &qword_10191D1F8);
    v64 = v62;
    v65 = v98;
    sub_1000D2DFC(v64, v98, &qword_10191D208);
    v66 = sub_1000CE6B8(&qword_10191D220);
    v67 = (v65 + v66[12]);
    v68 = *(v109 + 9);
    *(v116 + 9) = *(v109 + 9);
    v69 = v108;
    v115[0] = v107;
    v115[1] = v108;
    v70 = v109[0];
    v116[0] = v109[0];
    *v67 = v107;
    v67[1] = v69;
    v67[2] = v70;
    *(v67 + 41) = v68;
    v71 = v65 + v66[16];
    v72 = v89;
    *&v117[0] = v101;
    *(&v117[0] + 1) = v89;
    v117[2] = v111;
    v117[3] = v112;
    v117[1] = v110;
    *&v118 = 0x403E000000000000;
    WORD4(v118) = 1;
    BYTE10(v118) = 0;
    *(&v118 + 11) = v113;
    HIBYTE(v118) = v114;
    *&v119 = v100;
    v74 = v92;
    v73 = v93;
    *(&v119 + 1) = v93;
    *&v120 = v92;
    v76 = v90;
    v75 = v91;
    *(&v120 + 1) = v91;
    v121 = v90;
    v77 = v117[0];
    v78 = v110;
    v79 = v112;
    *(v71 + 32) = v111;
    *(v71 + 48) = v79;
    *v71 = v77;
    *(v71 + 16) = v78;
    v80 = v118;
    v81 = v119;
    v82 = v120;
    *(v71 + 112) = v121;
    *(v71 + 80) = v81;
    *(v71 + 96) = v82;
    *(v71 + 64) = v80;
    v83 = v65 + v66[20];
    v84 = v88;
    *&v122 = v88;
    *(&v122 + 1) = v38;
    *&v123 = v39;
    *(&v123 + 1) = v40;
    *v124 = v41;
    *&v124[8] = v104;
    *&v124[40] = v106;
    *&v124[24] = v105;
    v85 = v123;
    *v83 = v122;
    *(v83 + 16) = v85;
    v86 = *&v124[16];
    *(v83 + 32) = *v124;
    *(v83 + 48) = v86;
    *(v83 + 64) = *&v124[32];
    *(v83 + 80) = *&v124[48];
    sub_1000D2DFC(v63, v65 + v66[24], &qword_10191D1F8);
    sub_1000D2DFC(v115, &KeyPath, &qword_10191D228);
    sub_1000D2DFC(v117, &KeyPath, &qword_10191D230);
    sub_1000D2DFC(&v122, &KeyPath, &qword_10191D238);
    sub_100024F64(&v146, &qword_10191D228);
    sub_100024F64(v43, &qword_10191D1F8);
    sub_100024F64(v61, &qword_10191D208);
    sub_100024F64(v103, &qword_10191D1F8);
    v125[0] = v84;
    v125[1] = v38;
    v125[2] = v39;
    v125[3] = v40;
    v125[4] = v41;
    v126 = v104;
    v127 = v105;
    v128 = v106;
    sub_100024F64(v125, &qword_10191D238);
    v131 = v110;
    v132 = v111;
    KeyPath = v101;
    v130 = v72;
    v133 = v112;
    v134 = 0x403E000000000000;
    v135 = 1;
    v136 = 0;
    v137 = v113;
    v138 = v114;
    v139 = v100;
    v140 = v73;
    v141 = v74;
    v142 = v75;
    v143 = v76;
    sub_100024F64(&KeyPath, &qword_10191D230);
    v144[0] = v107;
    v144[1] = v108;
    v145[0] = v109[0];
    *(v145 + 9) = *(v109 + 9);
    sub_100024F64(v144, &qword_10191D228);
    return sub_100024F64(v102, &qword_10191D208);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039D218@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v93 = a3;
  v4 = sub_1000CE6B8(&qword_10191D240);
  __chkstk_darwin(v4 - 8);
  v94 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = (&v80 - v7);
  v8 = sub_1000CE6B8(&qword_10191DF90);
  __chkstk_darwin(v8 - 8);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v80 - v11;
  v84 = sub_1000CE6B8(&qword_10191D248);
  __chkstk_darwin(v84);
  v13 = &v80 - v12;
  v86 = sub_1000CE6B8(&qword_10191D250);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v80 - v14;
  v15 = sub_1000CE6B8(&qword_10191D258);
  __chkstk_darwin(v15 - 8);
  v88 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v80 - v18;
  if (a1)
  {
    v81 = a1;
    v98 = sub_1002B3C98();
    v99 = v19;
    v82 = sub_1000E5580();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    static Font.caption.getter();
    v25 = Text.font(_:)();
    v87 = a1;
    v27 = v26;
    v29 = v28;

    sub_1000F0A40(v20, v22, v24 & 1);

    v98 = static Color.white.getter();
    v30 = Text.foregroundStyle<A>(_:)();
    v32 = v31;
    LOBYTE(v22) = v33;
    v80 = v34;
    sub_1000F0A40(v25, v27, v29 & 1);

    v35 = v84;
    v36 = &v13[*(v84 + 36)];
    v37 = *(sub_1000CE6B8(&qword_10191D260) + 28);
    v38 = enum case for Text.Case.uppercase(_:);
    v39 = type metadata accessor for Text.Case();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v36 + v37, v38, v39);
    (*(v40 + 56))(v36 + v37, 0, 1, v39);
    *v36 = swift_getKeyPath();
    *v13 = v30;
    *(v13 + 1) = v32;
    v13[16] = v22 & 1;
    *(v13 + 3) = v80;
    static Font.Weight.medium.getter();
    v41 = sub_1003A0AC4();
    v42 = v83;
    View.fontWeight(_:)();
    sub_100024F64(v13, &qword_10191D248);
    v98 = 0xD000000000000010;
    v99 = 0x8000000101233270;
    v43._countAndFlagsBits = 0x656C746954;
    v43._object = 0xE500000000000000;
    String.append(_:)(v43);
    v98 = v35;
    v99 = v41;
    swift_getOpaqueTypeConformance2();
    v44 = v86;
    View.accessibilityIdentifier(_:)();

    (*(v85 + 8))(v42, v44);
    v45 = v81;
    v46 = [*&v81[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection] collectionTitle];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v98 = v47;
    v99 = v49;
    v50 = Text.init<A>(_:)();
    v52 = v51;
    LOBYTE(v49) = v53;
    static Font.title3.getter();
    v54 = Text.font(_:)();
    v56 = v55;
    LOBYTE(v35) = v57;

    sub_1000F0A40(v50, v52, v49 & 1);

    v98 = static Color.white.getter();
    v58 = Text.foregroundStyle<A>(_:)();
    v60 = v59;
    LOBYTE(v45) = v61;
    sub_1000F0A40(v54, v56, v35 & 1);

    static Font.Weight.semibold.getter();
    v62 = Text.fontWeight(_:)();
    v64 = v63;
    LOBYTE(v35) = v65;
    v67 = v66;
    sub_1000F0A40(v58, v60, v45 & 1);

    v98 = v62;
    v99 = v64;
    v100 = v35 & 1;
    v101 = v67;
    v96 = 0x6564697547;
    v97 = 0xE500000000000000;
    v68._countAndFlagsBits = 0x656C746954;
    v68._object = 0xE500000000000000;
    String.append(_:)(v68);
    v69 = v89;
    View.accessibilityIdentifier(_:)();
    sub_1000F0A40(v62, v64, v35 & 1);

    v70 = static VerticalAlignment.center.getter();
    v71 = v91;
    *v91 = v70;
    *(v71 + 8) = 0x4014000000000000;
    *(v71 + 16) = 0;
    v72 = sub_1000CE6B8(&qword_10191D278);
    sub_10039DB50(v87, v71 + *(v72 + 44));
    v73 = v95;
    v74 = v88;
    sub_1000D2DFC(v95, v88, &qword_10191D258);
    v75 = v92;
    sub_1000D2DFC(v69, v92, &qword_10191DF90);
    v76 = v94;
    sub_1000D2DFC(v71, v94, &qword_10191D240);
    v77 = v93;
    sub_1000D2DFC(v74, v93, &qword_10191D258);
    v78 = sub_1000CE6B8(&qword_10191D280);
    sub_1000D2DFC(v75, v77 + *(v78 + 48), &qword_10191DF90);
    sub_1000D2DFC(v76, v77 + *(v78 + 64), &qword_10191D240);
    sub_100024F64(v71, &qword_10191D240);
    sub_100024F64(v69, &qword_10191DF90);
    sub_100024F64(v73, &qword_10191D258);
    sub_100024F64(v76, &qword_10191D240);
    sub_100024F64(v75, &qword_10191DF90);
    return sub_100024F64(v74, &qword_10191D258);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039DB50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_1000CE6B8(&qword_10191E4B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000CE6B8(&qword_101910090);
  __chkstk_darwin(v77);
  v14 = &v72 - v13;
  v15 = sub_1000CE6B8(&qword_10191D288);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  if (a1)
  {
    v78 = v17;
    v79 = v8;
    v80 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = a1;
    static Published.subscript.getter();

    if (v86)
    {
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v75 = Image.resizable(capInsets:resizingMode:)();
      (*(v10 + 8))(v12, v9);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v74 = v86;
      v73 = v87;
      v21 = v88;
      v22 = v89;
      v72 = v90;
      v76 = v19;
      v23 = v91;
      v24 = v20;
      v25 = &v14[*(v77 + 36)];
      v26 = *(type metadata accessor for RoundedRectangle() + 20);
      v27 = enum case for RoundedCornerStyle.continuous(_:);
      v28 = type metadata accessor for RoundedCornerStyle();
      (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
      __asm { FMOV            V0.2D, #4.0 }

      *v25 = _Q0;
      *&v25[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
      v20 = v24;
      v34 = v74;
      *v14 = v75;
      *(v14 + 1) = v34;
      v14[16] = v73;
      *(v14 + 3) = v21;
      v14[32] = v22;
      *(v14 + 5) = v72;
      *(v14 + 6) = v23;
      v19 = v76;
      strcpy(v83, "Publisher Icon");
      HIBYTE(v83[1]) = -18;
      v35._countAndFlagsBits = 0x6567616D49;
      v35._object = 0xE500000000000000;
      String.append(_:)(v35);
      sub_1003A0B7C();
      View.accessibilityIdentifier(_:)();

      sub_100024F64(v14, &qword_101910090);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = sub_1000CE6B8(&qword_10191D290);
    v38 = 1;
    (*(*(v37 - 8) + 56))(v19, v36, 1, v37);
    v39 = sub_1002B3F0C();
    v41 = v40;

    if (v41)
    {
      v83[0] = v39;
      v83[1] = v41;
      sub_1000E5580();
      v42 = Text.init<A>(_:)();
      v44 = v43;
      v46 = v45;
      static Font.subheadline.getter();
      v47 = Text.font(_:)();
      v48 = v19;
      v50 = v49;
      v52 = v51;

      sub_1000F0A40(v42, v44, v46 & 1);

      v83[0] = static Color.white.getter();
      v53 = Text.foregroundStyle<A>(_:)();
      v55 = v54;
      v57 = v56;
      sub_1000F0A40(v47, v50, v52 & 1);

      static Font.Weight.medium.getter();
      v58 = Text.fontWeight(_:)();
      v60 = v59;
      LOBYTE(v50) = v61;
      v63 = v62;
      sub_1000F0A40(v53, v55, v57 & 1);

      v83[0] = v58;
      v83[1] = v60;
      LOBYTE(v55) = v50 & 1;
      v19 = v48;
      v84 = v55;
      v85 = v63;
      strcpy(v82, "Publisher Name");
      v82[15] = -18;
      v64._countAndFlagsBits = 0x656C746954;
      v64._object = 0xE500000000000000;
      String.append(_:)(v64);
      v65 = v79;
      View.accessibilityIdentifier(_:)();
      sub_1000F0A40(v58, v60, v55);

      v38 = 0;
    }

    else
    {
      v65 = v79;
    }

    v66 = sub_1000CE6B8(&qword_10191DF90);
    (*(*(v66 - 8) + 56))(v65, v38, 1, v66);
    v67 = v78;
    sub_1000D2DFC(v19, v78, &qword_10191D288);
    v68 = v80;
    sub_1000D2DFC(v65, v80, &qword_10191E4B0);
    v69 = v81;
    sub_1000D2DFC(v67, v81, &qword_10191D288);
    v70 = sub_1000CE6B8(&qword_10191D298);
    sub_1000D2DFC(v68, v69 + *(v70 + 48), &qword_10191E4B0);
    sub_100024F64(v65, &qword_10191E4B0);
    sub_100024F64(v19, &qword_10191D288);
    sub_100024F64(v68, &qword_10191E4B0);
    return sub_100024F64(v67, &qword_10191D288);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039E374(char *a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191D2B8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v44 - v6;
  v8 = sub_1000CE6B8(&qword_10191D2C0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = sub_1000CE6B8(&qword_10191D2C8);
  __chkstk_darwin(v11);
  v13 = v44 - v12;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v14 = sub_1000CE6B8(&qword_10191D2D0);
  sub_10039E6FC(a1, a2, &v7[*(v14 + 44)]);
  v15 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v16 = &v7[*(v5 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = static Edge.Set.bottom.getter();
  if (a1)
  {
    v22 = v21;
    EdgeInsets.init(_all:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_1000F11C4(v7, v10, &qword_10191D2B8);
    v31 = &v10[*(v8 + 36)];
    *v31 = v22;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    v32 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1000F11C4(v10, v13, &qword_10191D2C0);
    v41 = &v13[*(v11 + 36)];
    *v41 = v32;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v44[0] = 0x7242206564697547;
    v44[1] = 0xEB000000006B6369;
    v42._countAndFlagsBits = 2003134806;
    v42._object = 0xE400000000000000;
    String.append(_:)(v42);
    sub_1003A0C84(&qword_10191D2D8, &qword_10191D2C8, &unk_101200608, sub_1003A0C54);
    View.accessibilityIdentifier(_:)();

    return sub_100024F64(v13, &qword_10191D2C8);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039E6FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_1000CE6B8(&qword_10190D6E0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_1000CE6B8(&qword_10191D300);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = sub_1000CE6B8(&qword_10191D308);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v21 = sub_1000CE6B8(&qword_10191D310);
  sub_10039EB90(a1, a2, &v20[*(v21 + 44)]);
  v22 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = &v20[*(v15 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  if (a1)
  {
    v28 = *&a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics];
    if (v28 && *(v28 + OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_showsDivider) == 1)
    {
      Divider.init()();
      v29 = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = &v7[*(sub_1000CE6B8(&qword_10190D6F0) + 36)];
      *v38 = v29;
      *(v38 + 1) = v31;
      *(v38 + 2) = v33;
      *(v38 + 3) = v35;
      *(v38 + 4) = v37;
      v38[40] = 0;
      v39 = static Edge.Set.trailing.getter();
      EdgeInsets.init(_all:)();
      v40 = &v7[*(v5 + 36)];
      *v40 = v39;
      *(v40 + 1) = v41;
      *(v40 + 2) = v42;
      *(v40 + 3) = v43;
      *(v40 + 4) = v44;
      v40[40] = 0;
      sub_1003A0C84(&qword_10191D328, &qword_10190D6E0, &unk_1011F5F20, sub_1003A08E4);
      View.accessibilityIdentifier(_:)();
      sub_100024F64(v7, &qword_10190D6E0);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = sub_1000CE6B8(&qword_10191D318);
    (*(*(v46 - 8) + 56))(v13, v45, 1, v46);
    sub_1000D2DFC(v20, v17, &qword_10191D308);
    sub_1000D2DFC(v13, v10, &qword_10191D300);
    v47 = v51;
    sub_1000D2DFC(v17, v51, &qword_10191D308);
    v48 = sub_1000CE6B8(&qword_10191D320);
    sub_1000D2DFC(v10, v47 + *(v48 + 48), &qword_10191D300);
    sub_100024F64(v13, &qword_10191D300);
    sub_100024F64(v20, &qword_10191D308);
    sub_100024F64(v10, &qword_10191D300);
    return sub_100024F64(v17, &qword_10191D308);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039EB90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_10191D330);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v31 - v10);
  v12 = sub_1000CE6B8(&qword_10191D338);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  *v18 = static HorizontalAlignment.leading.getter();
  *(v18 + 1) = 0x4000000000000000;
  v18[16] = 0;
  v19 = sub_1000CE6B8(&qword_10191D340);
  sub_10039EE28(a1, a2, &v18[*(v19 + 44)]);
  v20 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v21 = &v18[*(v13 + 44)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  *v11 = static Alignment.bottomLeading.getter();
  v11[1] = v26;
  v27 = sub_1000CE6B8(&qword_10191D348);
  sub_1003A0020(a1, v11 + *(v27 + 44));
  sub_1000D2DFC(v18, v15, &qword_10191D338);
  sub_1000D2DFC(v11, v8, &qword_10191D330);
  sub_1000D2DFC(v15, a3, &qword_10191D338);
  v28 = sub_1000CE6B8(&qword_10191D350);
  v29 = a3 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_1000D2DFC(v8, a3 + *(v28 + 64), &qword_10191D330);
  sub_100024F64(v11, &qword_10191D330);
  sub_100024F64(v18, &qword_10191D338);
  sub_100024F64(v8, &qword_10191D330);
  return sub_100024F64(v15, &qword_10191D338);
}

uint64_t sub_10039EE28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v95 = a3;
  v4 = sub_1000CE6B8(&qword_10191D240);
  __chkstk_darwin(v4 - 8);
  v96 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = (&v78 - v7);
  v89 = sub_1000CE6B8(&qword_10191D3B0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v78 - v8;
  v9 = sub_1000CE6B8(&qword_10191D3B8);
  __chkstk_darwin(v9 - 8);
  v92 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v78 - v12;
  v83 = sub_1000CE6B8(&qword_10191D248);
  __chkstk_darwin(v83);
  v14 = &v78 - v13;
  v85 = sub_1000CE6B8(&qword_10191D250);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v78 - v15;
  v16 = sub_1000CE6B8(&qword_10191D258);
  __chkstk_darwin(v16 - 8);
  v90 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v97 = &v78 - v19;
  if (a1)
  {
    v80 = a1;
    *&v102[0] = sub_1002B3C98();
    *(&v102[0] + 1) = v20;
    v81 = sub_1000E5580();
    v21 = Text.init<A>(_:)();
    v23 = v22;
    v25 = v24;
    static Font.caption.getter();
    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;
    v86 = a1;

    sub_1000F0A40(v21, v23, v25 & 1);

    LODWORD(v102[0]) = static HierarchicalShapeStyle.secondary.getter();
    v31 = Text.foregroundStyle<A>(_:)();
    v33 = v32;
    v35 = v34;
    v79 = v36;
    sub_1000F0A40(v26, v28, v30 & 1);

    v37 = v83;
    v38 = &v14[*(v83 + 36)];
    v39 = *(sub_1000CE6B8(&qword_10191D260) + 28);
    v40 = enum case for Text.Case.uppercase(_:);
    v41 = type metadata accessor for Text.Case();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v38 + v39, v40, v41);
    (*(v42 + 56))(v38 + v39, 0, 1, v41);
    *v38 = swift_getKeyPath();
    *v14 = v31;
    *(v14 + 1) = v33;
    v14[16] = v35 & 1;
    *(v14 + 3) = v79;
    static Font.Weight.medium.getter();
    v43 = sub_1003A0AC4();
    v44 = v82;
    View.fontWeight(_:)();
    sub_100024F64(v14, &qword_10191D248);
    *&v102[0] = 0xD000000000000010;
    *(&v102[0] + 1) = 0x8000000101233270;
    v45._countAndFlagsBits = 0x656C746954;
    v45._object = 0xE500000000000000;
    String.append(_:)(v45);
    *&v102[0] = v37;
    *(&v102[0] + 1) = v43;
    swift_getOpaqueTypeConformance2();
    v46 = v97;
    v47 = v85;
    View.accessibilityIdentifier(_:)();

    (*(v84 + 8))(v44, v47);
    v48 = v80;
    v49 = [*&v80[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection] collectionTitle];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    *&v102[0] = v50;
    *(&v102[0] + 1) = v52;
    v53 = Text.init<A>(_:)();
    v55 = v54;
    LOBYTE(v52) = v56;
    v58 = v57;
    v59 = static Font.headline.getter();
    KeyPath = swift_getKeyPath();
    LOBYTE(v52) = v52 & 1;
    LOBYTE(v102[0]) = v52;
    v61 = [objc_opt_self() labelColor];
    v62 = Color.init(_:)();
    *&v98 = v53;
    *(&v98 + 1) = v55;
    LOBYTE(v99) = v52;
    *(&v99 + 1) = v58;
    LOWORD(v100) = 256;
    *(&v100 + 1) = KeyPath;
    *&v101 = v59;
    *(&v101 + 1) = v62;
    static Font.Weight.semibold.getter();
    v63 = sub_1000CE6B8(&qword_10191D3C0);
    v64 = sub_1003A10B8();
    v65 = v87;
    View.fontWeight(_:)();
    v102[0] = v98;
    v102[1] = v99;
    v102[2] = v100;
    v102[3] = v101;
    sub_100024F64(v102, &qword_10191D3C0);
    *&v98 = 0x6564697547;
    *(&v98 + 1) = 0xE500000000000000;
    v66._countAndFlagsBits = 0x656C746954;
    v66._object = 0xE500000000000000;
    String.append(_:)(v66);
    *&v98 = v63;
    *(&v98 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    v67 = v91;
    v68 = v89;
    View.accessibilityIdentifier(_:)();

    (*(v88 + 8))(v65, v68);
    v69 = static VerticalAlignment.center.getter();
    v70 = v94;
    *v94 = v69;
    *(v70 + 8) = 0x4014000000000000;
    *(v70 + 16) = 0;
    v71 = sub_1000CE6B8(&qword_10191D278);
    sub_10039F810(v86, v70 + *(v71 + 44));
    v72 = v90;
    sub_1000D2DFC(v46, v90, &qword_10191D258);
    v73 = v92;
    sub_1000D2DFC(v67, v92, &qword_10191D3B8);
    v74 = v96;
    sub_1000D2DFC(v70, v96, &qword_10191D240);
    v75 = v95;
    sub_1000D2DFC(v72, v95, &qword_10191D258);
    v76 = sub_1000CE6B8(&qword_10191D3D0);
    sub_1000D2DFC(v73, v75 + *(v76 + 48), &qword_10191D3B8);
    sub_1000D2DFC(v74, v75 + *(v76 + 64), &qword_10191D240);
    sub_100024F64(v70, &qword_10191D240);
    sub_100024F64(v67, &qword_10191D3B8);
    sub_100024F64(v97, &qword_10191D258);
    sub_100024F64(v74, &qword_10191D240);
    sub_100024F64(v73, &qword_10191D3B8);
    return sub_100024F64(v72, &qword_10191D258);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039F810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_1000CE6B8(&qword_10191E4B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000CE6B8(&qword_101910090);
  __chkstk_darwin(v77);
  v14 = &v72 - v13;
  v15 = sub_1000CE6B8(&qword_10191D288);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  if (a1)
  {
    v78 = v17;
    v79 = v8;
    v80 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = a1;
    static Published.subscript.getter();

    if (v86)
    {
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v75 = Image.resizable(capInsets:resizingMode:)();
      (*(v10 + 8))(v12, v9);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v74 = v86;
      v73 = v87;
      v21 = v88;
      v22 = v89;
      v72 = v90;
      v76 = v19;
      v23 = v91;
      v24 = v20;
      v25 = &v14[*(v77 + 36)];
      v26 = *(type metadata accessor for RoundedRectangle() + 20);
      v27 = enum case for RoundedCornerStyle.continuous(_:);
      v28 = type metadata accessor for RoundedCornerStyle();
      (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
      __asm { FMOV            V0.2D, #4.0 }

      *v25 = _Q0;
      *&v25[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
      v20 = v24;
      v34 = v74;
      *v14 = v75;
      *(v14 + 1) = v34;
      v14[16] = v73;
      *(v14 + 3) = v21;
      v14[32] = v22;
      *(v14 + 5) = v72;
      *(v14 + 6) = v23;
      v19 = v76;
      strcpy(v83, "Publisher Icon");
      HIBYTE(v83[1]) = -18;
      v35._countAndFlagsBits = 0x6567616D49;
      v35._object = 0xE500000000000000;
      String.append(_:)(v35);
      sub_1003A0B7C();
      View.accessibilityIdentifier(_:)();

      sub_100024F64(v14, &qword_101910090);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = sub_1000CE6B8(&qword_10191D290);
    v38 = 1;
    (*(*(v37 - 8) + 56))(v19, v36, 1, v37);
    v39 = sub_1002B3F0C();
    v41 = v40;

    if (v41)
    {
      v83[0] = v39;
      v83[1] = v41;
      sub_1000E5580();
      v42 = Text.init<A>(_:)();
      v44 = v43;
      v46 = v45;
      static Font.subheadline.getter();
      v47 = Text.font(_:)();
      v48 = v19;
      v50 = v49;
      v52 = v51;

      sub_1000F0A40(v42, v44, v46 & 1);

      LODWORD(v83[0]) = static HierarchicalShapeStyle.secondary.getter();
      v53 = Text.foregroundStyle<A>(_:)();
      v55 = v54;
      v57 = v56;
      sub_1000F0A40(v47, v50, v52 & 1);

      static Font.Weight.medium.getter();
      v58 = Text.fontWeight(_:)();
      v60 = v59;
      LOBYTE(v50) = v61;
      v63 = v62;
      sub_1000F0A40(v53, v55, v57 & 1);

      v83[0] = v58;
      v83[1] = v60;
      LOBYTE(v55) = v50 & 1;
      v19 = v48;
      v84 = v55;
      v85 = v63;
      strcpy(v82, "Publisher Name");
      v82[15] = -18;
      v64._countAndFlagsBits = 0x656C746954;
      v64._object = 0xE500000000000000;
      String.append(_:)(v64);
      v65 = v79;
      View.accessibilityIdentifier(_:)();
      sub_1000F0A40(v58, v60, v55);

      v38 = 0;
    }

    else
    {
      v65 = v79;
    }

    v66 = sub_1000CE6B8(&qword_10191DF90);
    (*(*(v66 - 8) + 56))(v65, v38, 1, v66);
    v67 = v78;
    sub_1000D2DFC(v19, v78, &qword_10191D288);
    v68 = v80;
    sub_1000D2DFC(v65, v80, &qword_10191E4B0);
    v69 = v81;
    sub_1000D2DFC(v67, v81, &qword_10191D288);
    v70 = sub_1000CE6B8(&qword_10191D298);
    sub_1000D2DFC(v68, v69 + *(v70 + 48), &qword_10191E4B0);
    sub_100024F64(v65, &qword_10191E4B0);
    sub_100024F64(v19, &qword_10191D288);
    sub_100024F64(v68, &qword_10191E4B0);
    return sub_100024F64(v67, &qword_10191D288);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003A0020@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v60 = type metadata accessor for Image.ResizingMode();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000CE6B8(&qword_10191D358);
  __chkstk_darwin(v61);
  v5 = &v54 - v4;
  v6 = sub_1000CE6B8(&qword_10191D360);
  __chkstk_darwin(v6 - 8);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v54 - v9;
  v10 = sub_1000CE6B8(&qword_10191D368);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = sub_1000CE6B8(&qword_10191D370);
  __chkstk_darwin(v13 - 8);
  v62 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v54 - v16;
  if (a1)
  {
    v17 = objc_opt_self();
    v18 = a1;
    v19 = [v17 sharedInstance];
    v20 = [v19 joeColorForCuratedCollection:*&v18[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection]];

    v21 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    sub_1002B4098();

    sub_1002B4098();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v23 = &v12[*(v10 + 36)];
    v57 = type metadata accessor for RoundedRectangle();
    v24 = *(v57 + 20);
    v25 = enum case for RoundedCornerStyle.continuous(_:);
    v26 = type metadata accessor for RoundedCornerStyle();
    v27 = *(v26 - 8);
    v28 = *(v27 + 104);
    v56 = v25;
    v29 = v25;
    v30 = v28;
    v55 = v27 + 104;
    v28(&v23[v24], v29, v26);
    __asm { FMOV            V0.2D, #10.0 }

    v54 = _Q0;
    *v23 = _Q0;
    v36 = sub_1000CE6B8(&qword_10191E590);
    *&v23[*(v36 + 36)] = 256;
    *v12 = KeyPath;
    *(v12 + 1) = v21;
    v37 = v71;
    *(v12 + 1) = v70;
    *(v12 + 2) = v37;
    *(v12 + 3) = v72;
    sub_1003A0DC0();
    v38 = v66;
    View.accessibilityIdentifier(_:)();
    sub_100024F64(v12, &qword_10191D368);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v73)
    {
      v39 = v59;
      v40 = v58;
      v41 = v60;
      (*(v59 + 104))(v58, enum case for Image.ResizingMode.stretch(_:), v60);
      v42 = Image.resizable(capInsets:resizingMode:)();
      (*(v39 + 8))(v40, v41);
      sub_1002B4098();

      sub_1002B419C();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      LOBYTE(v67) = 1;
      *&v69[6] = v73;
      *&v69[22] = v74;
      *&v69[38] = v75;
      v43 = &v5[*(sub_1000CE6B8(&qword_10191D398) + 36)];
      v30(&v43[*(v57 + 20)], v56, v26);
      *v43 = v54;
      *&v43[*(v36 + 36)] = 256;
      v44 = *&v69[16];
      *(v5 + 18) = *v69;
      *v5 = v42;
      *(v5 + 1) = 0;
      v38 = v66;
      *(v5 + 8) = 257;
      *(v5 + 34) = v44;
      *(v5 + 50) = *&v69[32];
      *(v5 + 8) = *&v69[46];
      v5[*(v61 + 36)] = 1;
      v67 = 0x6564697547;
      v68 = 0xE500000000000000;
      v45._countAndFlagsBits = 0x6567616D49;
      v45._object = 0xE500000000000000;
      String.append(_:)(v45);
      sub_1003A0F04();
      v46 = v63;
      View.accessibilityIdentifier(_:)();

      sub_100024F64(v5, &qword_10191D358);
      v47 = 0;
    }

    else
    {

      v47 = 1;
      v46 = v63;
    }

    v48 = sub_1000CE6B8(&qword_10191D388);
    (*(*(v48 - 8) + 56))(v46, v47, 1, v48);
    v49 = v62;
    sub_1000D2DFC(v38, v62, &qword_10191D370);
    v50 = v64;
    sub_1000D2DFC(v46, v64, &qword_10191D360);
    v51 = v65;
    sub_1000D2DFC(v49, v65, &qword_10191D370);
    v52 = sub_1000CE6B8(&qword_10191D390);
    sub_1000D2DFC(v50, v51 + *(v52 + 48), &qword_10191D360);
    sub_100024F64(v46, &qword_10191D360);
    sub_100024F64(v38, &qword_10191D370);
    sub_100024F64(v50, &qword_10191D360);
    return sub_100024F64(v49, &qword_10191D370);
  }

  else
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1003A1258(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1003A08E4()
{
  result = qword_10191D1E8;
  if (!qword_10191D1E8)
  {
    sub_1000D6664(&qword_10190D6F0);
    sub_1003A1258(&qword_10191D1F0, &type metadata accessor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D1E8);
  }

  return result;
}

uint64_t sub_1003A09A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1003A0A1C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191D2A8);
  __chkstk_darwin(v2 - 8);
  sub_1000D2DFC(a1, &v5 - v3, &qword_10191D2A8);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_1003A0AC4()
{
  result = qword_10191D268;
  if (!qword_10191D268)
  {
    sub_1000D6664(&qword_10191D248);
    sub_1000414C8(&qword_10191D270, &qword_10191D260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D268);
  }

  return result;
}

unint64_t sub_1003A0B7C()
{
  result = qword_10191D2A0;
  if (!qword_10191D2A0)
  {
    sub_1000D6664(&qword_101910090);
    sub_1003A1048(&qword_1019106A0, &qword_10190C5C8);
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D2A0);
  }

  return result;
}

uint64_t sub_1003A0C84(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003A0D08()
{
  result = qword_10191D2E8;
  if (!qword_10191D2E8)
  {
    sub_1000D6664(&qword_10191D2B8);
    sub_1000414C8(&qword_10191D2F0, &qword_10191D2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D2E8);
  }

  return result;
}

unint64_t sub_1003A0DC0()
{
  result = qword_10191D378;
  if (!qword_10191D378)
  {
    sub_1000D6664(&qword_10191D368);
    sub_1003A0E78();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D378);
  }

  return result;
}

unint64_t sub_1003A0E78()
{
  result = qword_10191D380;
  if (!qword_10191D380)
  {
    sub_1000D6664(&qword_10190F530);
    sub_1001C5AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D380);
  }

  return result;
}

unint64_t sub_1003A0F04()
{
  result = qword_10191D3A0;
  if (!qword_10191D3A0)
  {
    sub_1000D6664(&qword_10191D358);
    sub_1003A0F90();
    sub_1001CAB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D3A0);
  }

  return result;
}

unint64_t sub_1003A0F90()
{
  result = qword_10191D3A8;
  if (!qword_10191D3A8)
  {
    sub_1000D6664(&qword_10191D398);
    sub_1001CA1F8();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D3A8);
  }

  return result;
}

uint64_t sub_1003A1048(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003A10B8()
{
  result = qword_10191D3C8;
  if (!qword_10191D3C8)
  {
    sub_1000D6664(&qword_10191D3C0);
    sub_1001C7E2C();
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D3C8);
  }

  return result;
}

unint64_t sub_1003A1170()
{
  result = qword_10191D3E8;
  if (!qword_10191D3E8)
  {
    sub_1000D6664(&unk_10191D3F0);
    sub_1003A0C84(&qword_10191D2D8, &qword_10191D2C8, &unk_101200608, sub_1003A0C54);
    sub_1003A1258(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D3E8);
  }

  return result;
}

uint64_t sub_1003A1258(unint64_t *a1, void (*a2)(uint64_t))
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

void *UIHostingController.focusOrderSubItems.getter()
{
  v1 = [v0 focusItemContainer];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  if (qword_101906750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_101960090);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "============= focusOrderSubItems for %@ =============", v7, 0xCu);
    sub_1000DCD10(v8);
  }

  v10 = sub_10017E264();
  sub_1003A1604(v2, 0, v10, v11, v12, v13);
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "=============        Final Items             =============", v18, 2u);
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    sub_1000CE6B8(&qword_101914ED0);
    v23 = Array.description.getter();
    v25 = sub_10004DEB8(v23, v24, &v30);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s", v21, 0xCu);
    sub_10004E3D0(v22);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "=============            End                 ============= ", v28, 2u);
  }

  swift_unknownObjectRelease();
  return v15;
}

void sub_1003A1604(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = [a1 focusItemsInRect:?];
  sub_1000CE6B8(&qword_101914ED0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = _swiftEmptyArrayStorage;
  v47 = v12;
  if (v12 >> 62)
  {
    goto LABEL_36;
  }

  v50 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
LABEL_37:

    return;
  }

LABEL_3:
  if ((a2 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v43 = v47 + 32;
    v45 = a2 + 1;
    v14 = __OFADD__(a2, 1);
    v46 = v14;
    v44 = a2;
    while (1)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v13 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v15 = *(v43 + 8 * v13);
        swift_unknownObjectRetain();
        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v50 = _CocoaArrayWrapper.endIndex.getter();
          if (!v50)
          {
            goto LABEL_37;
          }

          goto LABEL_3;
        }
      }

      v17 = [v15 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [v15 canBecomeFocused];
      [v15 frame];
      v22 = NSStringFromCGRect(v55);
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v52 = 0;
      v53 = 0xE000000000000000;
      if (a2)
      {
        swift_beginAccess();
        v26 = a2;
        do
        {
          v27._countAndFlagsBits = 757935484;
          v27._object = 0xE400000000000000;
          String.append(_:)(v27);
          --v26;
        }

        while (v26);
        swift_endAccess();
      }

      if (qword_101906750 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100021540(v28, qword_101960090);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v51[0] = swift_slowAlloc();
        *v31 = 136315906;
        swift_beginAccess();
        v48 = v23;
        log = v29;
        v32 = v21;
        v33 = v18;
        v34 = v20;
        v35 = v52;
        v36 = v53;

        v37 = sub_10004DEB8(v35, v36, v51);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2080;
        v38 = sub_10004DEB8(v33, v34, v51);

        *(v31 + 14) = v38;
        *(v31 + 22) = 1024;
        *(v31 + 24) = v32;
        *(v31 + 28) = 2080;
        v39 = sub_10004DEB8(v48, v25, v51);

        *(v31 + 30) = v39;
        v29 = log;
        _os_log_impl(&_mh_execute_header, log, v30, "%s%s (focusable: %{BOOL}d, frame: %s", v31, 0x26u);
        swift_arrayDestroy();

        a2 = v44;
      }

      else
      {
      }

      if (![objc_opt_self() shouldFilterUnfocusableItems] || objc_msgSend(v15, "canBecomeFocused"))
      {
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v40 = swift_dynamicCastObjCProtocolConditional();
      if (v40)
      {
        if (v46)
        {
          goto LABEL_34;
        }

        v41 = v40;
        swift_unknownObjectRetain();
        v42 = sub_1003A1604(v41, v45, a3, a4, a5, a6);
        sub_100247098(v42);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();

      if (v13 == v50)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
}

char *sub_1003A1B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191D400);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

uint64_t sub_1003A1DF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000CE6B8(&qword_10191D448);
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *v9 = sub_1003A2644;
  *(v9 + 1) = v10;
  v9[16] = 0;
  type metadata accessor for CarSearchResultsView();
  type metadata accessor for UUID();
  sub_1003A2714(&qword_1019156D0, &type metadata accessor for UUID);
  v11 = v1;
  FocusState.init<A>()();
  v12 = static Color.clear.getter();
  v13 = static Edge.Set.all.getter();
  v14 = &v9[*(v7 + 36)];
  *v14 = v12;
  v14[8] = v13;
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000101233300;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v3);
  a1[3] = sub_1000CE6B8(&qword_10191D450);
  v15 = sub_1003A2658();
  v17[0] = v7;
  v17[1] = v15;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v3);
  return sub_1003A275C(v9);
}

uint64_t sub_1003A2088(char a1)
{
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = (v3 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onSelectResult);
  v6 = *(v3 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onSelectResult);
  *v5 = sub_1003A28F8;
  v5[1] = v4;
  v7 = v1;
  sub_1000588AC(v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = (v3 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onFocusResult);
  v10 = *(v3 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onFocusResult);
  *v9 = sub_1003A291C;
  v9[1] = v8;
  v11 = v7;
  sub_1000588AC(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = (v3 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onVisibleResultsChange);
  v14 = *(v3 + OBJC_IVAR____TtC4Maps25CarSearchResultsViewModel_onVisibleResultsChange);
  *v13 = sub_1003A2940;
  v13[1] = v12;
  v15 = v11;
  return sub_1000588AC(v14);
}

void *sub_1003A21D0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003A224C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_10019152C();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 searchResultsCard:a3 didUpdateVisibleResults:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003A2514()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel);
}

uint64_t type metadata accessor for CarSearchResultsCardViewController()
{
  result = qword_10191D438;
  if (!qword_10191D438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1003A2658()
{
  result = qword_10191D458;
  if (!qword_10191D458)
  {
    sub_1000D6664(&qword_10191D448);
    sub_1003A2714(&unk_10191D460, type metadata accessor for CarSearchResultsView);
    sub_10022E18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D458);
  }

  return result;
}

uint64_t sub_1003A2714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003A275C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191D448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A27C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1003A284C(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v3;
  sub_1003A28DC(v2, v4);
  return static Published.subscript.setter();
}

id sub_1003A28DC(id result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
  }

  return result;
}

id sub_1003A2AE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RAPNotificationDetailsCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003A2B98(void *a1, int a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a2;
    *(v7 + 32) = v5;

    v8 = v5;
    sub_1003A3440(a1, sub_1003A3D14, v7);
  }

  else
  {
    if (qword_1019067D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_10191D470);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "parentViewController is nil", v11, 2u);
    }
  }
}

void sub_1003A2D60(void *a1, uint64_t a2, unsigned int a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (sub_1003A2EB4(a1, a3, a4))
    {
      if (qword_1019067D0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100021540(v9, qword_10191D470);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Successfully open DetailsViewController", v12, 2u);
      }
    }

    else if (GEOConfigGetBOOL())
    {
      sub_1003A3E74(a4);
    }
  }
}

id sub_1003A2EB4(void *a1, unsigned int a2, void *a3)
{
  if ([a1 reportStatus] != 2 && objc_msgSend(a1, "reportStatus") != 1)
  {
    if (qword_1019067D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100021540(v28, qword_10191D470);
    v29 = a1;
    v8 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v30))
    {

      v32 = 0;
      v8 = v29;
      goto LABEL_35;
    }

    v31 = swift_slowAlloc();
    *v31 = 33554688;
    *(v31 + 4) = [v29 reportStatus];

    _os_log_impl(&_mh_execute_header, v8, v30, "Should not open a rap with status:%hd", v31, 6u);
    goto LABEL_24;
  }

  v7 = [a1 rapResponse];
  if (!v7)
  {
    if (qword_1019067D0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100021540(v25, qword_10191D470);
    v8 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v26))
    {
      v32 = 0;
      goto LABEL_35;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v8, v26, "Empty rapResponse", v27, 2u);
LABEL_24:

    v32 = 0;
LABEL_35:

    return v32;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(type metadata accessor for RAPNotificationDetailsViewModel()) initWithRapRecord:a1];
  if (!v9)
  {
    if (qword_1019067D0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100021540(v33, qword_10191D470);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to build ViewModel", v36, 2u);
    }

    v32 = 0;
    goto LABEL_35;
  }

  v10 = v9;
  if ([a1 reportStatus] != 2)
  {
    v22 = 0;
    v11 = 0;
LABEL_34:
    v37 = [objc_allocWithZone(RAPNotificationDetailsViewController) initWithViewModel:v10 report:v11 question:v22];
    [v37 setDelegate:v3];
    v38 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v37];
    [v38 setModalPresentationStyle:2];
    v32 = 1;
    [a3 _maps_topMostPresentViewController:v38 animated:1 completion:0];

    v8 = v22;
    goto LABEL_35;
  }

  v11 = sub_1003A3D4C(a3);
  if (!v11)
  {
    v22 = 0;
    goto LABEL_34;
  }

  v39 = a2;
  v12 = [a1 communityIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if ((v15 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  result = [v8 responseId];
  if (result)
  {
    v18 = result;
    v19 = [a1 reportID];
    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v20 = v16 != 0;
    v21 = objc_allocWithZone(RAPUserResponseQuestion);
    v11 = v11;
    v22 = [v21 initWithReport:v11 parentQuestion:0 responseID:v18 reportID:v19 isAnonymous:v20];

    [v11 setInitialQuestion:v22];
    v23 = [a1 reportID];
    if (!v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = String._bridgeToObjectiveC()();
    }

    [v11 setPreviousFeedbackID:v23];

    v24 = [v11 combinedUserPath];
    [v24 addNativePath:v39];

    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1003A3440(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 reportID];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = *(v3 + OBJC_IVAR____TtC4Maps33RAPNotificationDetailsCoordinator_rapStatusDownloader);
  sub_1000CE6B8(&qword_101909BF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1011E1D30;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v10;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v17[4] = sub_1003A3D24;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100039C64;
  v17[3] = &unk_101615718;
  v15 = _Block_copy(v17);
  v16 = a1;

  [v11 updateSubmissionStatusesWithIdentifier:isa completion:v15];
  _Block_release(v15);
}

void sub_1003A3644(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v13[4] = sub_1003A3D34;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10042308C;
  v13[3] = &unk_101615768;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v8 fetchRAPRecordsMatchingProblemId:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1003A3768(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100109428();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1003A3D40;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_1016157B8;
  v16 = _Block_copy(aBlock);

  v17 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1003A3A10(unint64_t a1, void *a2, void (*a3)(void *))
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_11:
    a3(a2);
    return;
  }

  v8 = a1;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v8;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(a1 + 32);
  }

  v10 = v6;
  v7 = [a2 mapItem];
  [v10 setMapItem:v7];

  a3(v10);
}

uint64_t sub_1003A3C6C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10191D470);
  sub_100021540(v0, qword_10191D470);
  type metadata accessor for RAPNotificationDetailsCoordinator();
  sub_1000CE6B8(&unk_10191D530);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

id sub_1003A3D4C(void *a1)
{
  result = [a1 _maps_mapsSceneDelegate];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedMapsDelegate];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(RAPAppStateCreator) initWithSceneDelegate:v2];
      v6 = [v5 createReportAProblemAppState];
      result = [v4 submissionManager];
      if (result)
      {
        v7 = result;
        v8 = objc_allocWithZone(RAPReport);
        v9 = v6;
        v10 = [v8 initWithContext:v9 submitter:v7];

        return v10;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1003A3E74(void *a1)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2.super.isa = qword_1019600D8;
  v17._object = 0x8000000101233500;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x80000001012334C0;
  v4._object = 0x80000001012334E0;
  v17._countAndFlagsBits = 0xD000000000000035;
  v4._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v4, v17);
  v18._object = 0x80000001012335D0;
  v5._countAndFlagsBits = 0xD000000000000043;
  v5._object = 0x8000000101233540;
  v6._countAndFlagsBits = 0xD00000000000003DLL;
  v6._object = 0x8000000101233590;
  v18._countAndFlagsBits = 0xD00000000000003BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v2, v6, v18);
  v19._object = 0x8000000101233610;
  v7._countAndFlagsBits = 0x4B4F205D5041525BLL;
  v19._countAndFlagsBits = 0xD000000000000036;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 19279;
  v8._object = 0xE200000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v2, v8, v19);
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() actionWithTitle:v12 style:0 handler:0];

  [v11 addAction:v13];
  aBlock[4] = UIView.annotateView(with:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_1016157E0;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  [a1 _maps_topMostPresentViewController:v15 animated:1 completion:v14];
  _Block_release(v14);
}

unint64_t sub_1003A4174()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 128);
  sub_100100D84(v1);
  return v1;
}

uint64_t sub_1003A4220()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003A42D4()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003A4388()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003A443C()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003A44F0()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003A45A4()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003A4658()
{
  swift_getKeyPath();
  sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 112);
  sub_1000CD9D4(v1);
  return v1;
}

unint64_t sub_1003A470C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = a2;
  sub_100100D84(a2);
  return sub_100100D94(v2);
}

uint64_t sub_1003A4748()
{
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  ObservationRegistrar.init()();
  *(v0 + 136) = [objc_allocWithZone(type metadata accessor for CarHomeDataProvider()) init];
  return v0;
}

char *sub_1003A47A4@<X0>(char **a1@<X8>)
{
  result = sub_1003A47D0();
  *a1 = result;
  return result;
}

char *sub_1003A47D0()
{
  v1 = sub_1000CE6B8(&qword_10191D640);
  __chkstk_darwin(v1 - 8);
  v3 = (&v116 - v2);
  v116 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v117 = *(v116 - 8);
  __chkstk_darwin(v116);
  v122 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v139 = &v116 - v6;
  v127 = type metadata accessor for RichTextType();
  v143 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for UUID();
  v142 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CarHomeSection.RowType();
  v145 = *(v9 - 8);
  v146 = v9;
  __chkstk_darwin(v9);
  v140 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v132 = &v116 - v12;
  __chkstk_darwin(v13);
  v144 = (&v116 - v14);
  __chkstk_darwin(v15);
  v129 = &v116 - v16;
  __chkstk_darwin(v17);
  v19 = (&v116 - v18);
  v20 = *(v0 + 136);
  swift_getKeyPath();
  v148 = v20;
  sub_1003A60A4(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v20 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state;
  v22 = *(v20 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state);
  v23 = *(v20 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 8);
  v25 = *(v20 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 16);
  v24 = *(v20 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__state + 24);
  v135 = *(v21 + 4);
  v148 = _swiftEmptyArrayStorage;
  v134 = v22;
  if (v25 >> 62)
  {
    goto LABEL_109;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v133 = v3;

  v128 = v23;

  v118 = v24;

  if (v26)
  {
    v27 = 0;
    v24 = v25 & 0xC000000000000001;
    v3 = (v25 & 0xFFFFFFFFFFFFFF8);
    v28 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v24)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }

        v29 = *(v25 + 8 * v27 + 32);
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
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
          v26 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_100332800(v29, v19);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1003582DC(0, v28[2] + 1, 1, v28);
      }

      v23 = v28[2];
      v31 = v28[3];
      if (v23 >= v31 >> 1)
      {
        v28 = sub_1003582DC(v31 > 1, v23 + 1, 1, v28);
      }

      v28[2] = v23 + 1;
      sub_1003A60EC(v19, v28 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v23);
      ++v27;
      if (v30 == v26)
      {
        goto LABEL_18;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_18:

  v25 = &v148;
  sub_100247744(v28);
  v23 = v128;
  if (v128 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v139;
  v3 = v129;
  if (v32)
  {
    v33 = 0;
    v130 = v23 & 0xFFFFFFFFFFFFFF8;
    v131 = v23 & 0xC000000000000001;
    v119 = (v142 + 1);
    v125 = enum case for RichTextType.line(_:);
    v124 = (v143 + 104);
    v123 = (v143 + 8);
    v34 = _swiftEmptyArrayStorage;
    v138 = xmmword_1011E1D30;
    while (1)
    {
      if (v131)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v130 + 16))
        {
          goto LABEL_104;
        }

        v35 = *(v23 + 8 * v33 + 32);
      }

      v25 = v35;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_103;
      }

      v142 = v34;
      v143 = (v33 + 1);
      v141 = type metadata accessor for CarSuggestionRowViewModel();
      v36 = objc_allocWithZone(v141);
      ObservationRegistrar.init()();
      *&v36[OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_suggestion] = v25;
      v37 = v25;
      v38 = [v37 _maps_diffableDataSourceIdentifier];
      if (v38)
      {
        v39 = v38;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;
      }

      else
      {
        v43 = v120;
        UUID.init()();
        v40 = UUID.uuidString.getter();
        v42 = v44;
        (*v119)(v43, v121);
      }

      v45 = &v36[OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_id];
      *v45 = v40;
      v45[1] = v42;
      v46 = [v37 title];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = &v36[OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_title];
      *v50 = v47;
      v50[1] = v49;
      v51 = &v36[OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_imageProvider];
      *&v36[OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_imageProvider + 24] = &type metadata for MapsSuggestionsEntryImageProvider;
      *(v51 + 4) = sub_1003A6150();
      *v51 = v37;
      *(v51 + 4) = 1;
      v52 = v37;
      v53 = [v52 subtitle];
      if (v53)
      {
        v54 = v53;
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v56;
        v137 = v55;

        sub_1000CE6B8(&unk_1019157F0);
        v57 = swift_allocObject();
        *(v57 + 1) = v138;
        sub_1000CE6B8(&qword_10190A070);
        type metadata accessor for RichTextViewModel();
        v58 = swift_allocObject();
        *(v58 + 16) = v138;
        v59 = v126;
        v60 = v32;
        v61 = v127;
        (*v124)(v126, v125, v127);
        v3 = v129;
        RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

        v62 = v61;
        v32 = v60;
        v23 = v128;
        (*v123)(v59, v62);
        v57[4] = v58;
      }

      else
      {
        v57 = _swiftEmptyArrayStorage;
      }

      *&v36[OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel__richTextViews] = v57;
      v147.receiver = v36;
      v147.super_class = v141;
      v63 = objc_msgSendSuper2(&v147, "init");
      v64 = String._bridgeToObjectiveC()();
      [v52 addObserver:v63 forKeyPath:v64 options:0 context:0];

      *v3 = v63;
      swift_storeEnumTagMultiPayload();
      v34 = v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1003582DC(0, v34[2] + 1, 1, v34);
      }

      v19 = v139;
      v65 = v143;
      v24 = v34[2];
      v66 = v34[3];
      v25 = v24 + 1;
      if (v24 >= v66 >> 1)
      {
        v34 = sub_1003582DC(v66 > 1, v24 + 1, 1, v34);
      }

      v34[2] = v25;
      sub_1003A60EC(v3, v34 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v24);
      ++v33;
      if (v65 == v32)
      {
        goto LABEL_40;
      }
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_40:

  v25 = &v148;
  sub_100247744(v34);
  v67 = v148;
  if (v148[2])
  {

    v68 = sub_100358304(0, 1, 1, _swiftEmptyArrayStorage);
    v24 = *(v68 + 2);
    v69 = *(v68 + 3);
    v25 = v24 + 1;
    if (v24 >= v69 >> 1)
    {
      v68 = sub_100358304((v69 > 1), v24 + 1, 1, v68);
    }

    v70 = v134;
    *(v68 + 2) = v25;
    v71 = &v68[16 * v24];
    v71[32] = 0;
    *(v71 + 5) = v67;
    if (!(v70 >> 62))
    {
LABEL_44:
      v72 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v142 = v67;
      v143 = v68;
      if (v72)
      {
        goto LABEL_45;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v68 = _swiftEmptyArrayStorage;
    v70 = v134;
    if (!(v134 >> 62))
    {
      goto LABEL_44;
    }
  }

  v72 = _CocoaArrayWrapper.endIndex.getter();
  v70 = v134;
  v142 = v67;
  v143 = v68;
  if (v72)
  {
LABEL_45:
    v73 = 0;
    v3 = (v70 & 0xC000000000000001);
    v74 = v70 & 0xFFFFFFFFFFFFFF8;
    v23 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v3)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v73 >= *(v74 + 16))
        {
          goto LABEL_106;
        }

        v75 = *(v70 + 8 * v73 + 32);
      }

      v76 = v75;
      v77 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_105;
      }

      v78 = objc_allocWithZone(type metadata accessor for CarPinnedRowViewModel());
      v79 = sub_1003D2A18(v76);

      *v144 = v79;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1003582DC(0, *(v23 + 16) + 1, 1, v23);
      }

      v24 = *(v23 + 16);
      v80 = *(v23 + 24);
      v25 = v24 + 1;
      if (v24 >= v80 >> 1)
      {
        v23 = sub_1003582DC(v80 > 1, v24 + 1, 1, v23);
      }

      *(v23 + 16) = v25;
      sub_1003A60EC(v144, v23 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v24);
      ++v73;
      v70 = v134;
      if (v77 == v72)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_59:
  v23 = _swiftEmptyArrayStorage;
LABEL_60:

  if (*(v23 + 16))
  {
    v81 = v143;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v146;
    v84 = v118;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v81 = sub_100358304(0, *(v81 + 2) + 1, 1, v81);
    }

    v86 = *(v81 + 2);
    v85 = *(v81 + 3);
    if (v86 >= v85 >> 1)
    {
      v81 = sub_100358304((v85 > 1), v86 + 1, 1, v81);
    }

    *(v81 + 2) = v86 + 1;
    v87 = &v81[16 * v86];
    v87[32] = 1;
    *(v87 + 5) = v23;
    v88 = *(v84 + 16);
    if (v88)
    {
LABEL_66:
      v143 = v81;
      v89 = v19 + *(v116 + 24);
      v90 = v84 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
      v91 = *(v117 + 72);
      v92 = (v145 + 56);
      v93 = (v145 + 48);
      v94 = _swiftEmptyArrayStorage;
      do
      {
        sub_10017F024(v90, v19);
        if (v89[8] > 1u)
        {
          v99 = 1;
          v97 = v133;
        }

        else
        {
          v95 = v19;
          v96 = v122;
          sub_10017F024(v95, v122);
          v97 = v133;
          v98 = v96;
          v19 = v139;
          sub_10017E31C(v98, v133);
          swift_storeEnumTagMultiPayload();
          v99 = 0;
        }

        (*v92)(v97, v99, 1, v83);
        sub_10017F128(v19);
        if ((*v93)(v97, 1, v83) == 1)
        {
          sub_1003A61A4(v97);
        }

        else
        {
          sub_1003A60EC(v97, v132);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_1003582DC(0, v94[2] + 1, 1, v94);
          }

          v101 = v94[2];
          v100 = v94[3];
          if (v101 >= v100 >> 1)
          {
            v94 = sub_1003582DC(v100 > 1, v101 + 1, 1, v94);
          }

          v94[2] = v101 + 1;
          sub_1003A60EC(v132, v94 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v101);
          v83 = v146;
        }

        v90 += v91;
        --v88;
      }

      while (v88);

      v81 = v143;
      if (v94[2])
      {
        goto LABEL_79;
      }

LABEL_86:

      goto LABEL_87;
    }
  }

  else
  {

    v83 = v146;
    v84 = v118;
    v81 = v143;
    v88 = *(v118 + 16);
    if (v88)
    {
      goto LABEL_66;
    }
  }

  v94 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_86;
  }

LABEL_79:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v81 = sub_100358304(0, *(v81 + 2) + 1, 1, v81);
  }

  v103 = *(v81 + 2);
  v102 = *(v81 + 3);
  if (v103 >= v102 >> 1)
  {
    v81 = sub_100358304((v102 > 1), v103 + 1, 1, v81);
  }

  *(v81 + 2) = v103 + 1;
  v104 = &v81[16 * v103];
  v104[32] = 2;
  *(v104 + 5) = v94;
LABEL_87:
  v25 = v135;
  if (v135 >> 62)
  {
    v105 = _CocoaArrayWrapper.endIndex.getter();
    if (v105)
    {
LABEL_89:
      v106 = 0;
      v24 = v25 & 0xC000000000000001;
      v3 = (v25 & 0xFFFFFFFFFFFFFF8);
      v23 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v24)
        {
          v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v106 >= v3[2])
          {
            goto LABEL_108;
          }

          v107 = *(v25 + 8 * v106 + 32);
        }

        v25 = v107;
        v108 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          goto LABEL_107;
        }

        type metadata accessor for CarUserGuideRowViewModel();
        swift_allocObject();
        v109 = sub_10046B73C(v25);
        *v140 = v109;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1003582DC(0, *(v23 + 16) + 1, 1, v23);
        }

        v111 = *(v23 + 16);
        v110 = *(v23 + 24);
        if (v111 >= v110 >> 1)
        {
          v23 = sub_1003582DC(v110 > 1, v111 + 1, 1, v23);
        }

        *(v23 + 16) = v111 + 1;
        sub_1003A60EC(v140, v23 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v111);
        ++v106;
        v25 = v135;
        if (v108 == v105)
        {
          goto LABEL_113;
        }
      }
    }
  }

  else
  {
    v105 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v105)
    {
      goto LABEL_89;
    }
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_113:

  if (*(v23 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_100358304(0, *(v81 + 2) + 1, 1, v81);
    }

    v113 = *(v81 + 2);
    v112 = *(v81 + 3);
    if (v113 >= v112 >> 1)
    {
      v81 = sub_100358304((v112 > 1), v113 + 1, 1, v81);
    }

    *(v81 + 2) = v113 + 1;
    v114 = &v81[16 * v113];
    v114[32] = 3;
    *(v114 + 5) = v23;
  }

  else
  {

    if (!*(v81 + 2))
    {

      return 0;
    }
  }

  return v81;
}

uint64_t sub_1003A597C()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_101200968, v6);
}

uint64_t sub_1003A5AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  type metadata accessor for MainActor();
  *(v4 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A5B68, v6, v5);
}

uint64_t sub_1003A5B68()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    withObservationTracking<A>(_:onChange:)();
    v3 = v0[5];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v0[6] = v2;
    sub_1003A60A4(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100100D94(v3);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A5D08()
{
  sub_1000588AC(*(v0 + 16));
  sub_1000588AC(*(v0 + 32));
  sub_1000588AC(*(v0 + 48));
  sub_1000588AC(*(v0 + 64));
  sub_1000588AC(*(v0 + 80));
  sub_1000588AC(*(v0 + 96));
  sub_1000588AC(*(v0 + 112));
  sub_100100D94(*(v0 + 128));

  v1 = OBJC_IVAR____TtC4Maps16CarHomeViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003A5DB0()
{
  sub_1003A5D08();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarHomeViewModel()
{
  result = qword_10191D570;
  if (!qword_10191D570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003A5E5C()
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

uint64_t sub_1003A5F1C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003A5F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1003A5AD0(a1, v4, v5, v6);
}

char *sub_1003A6000@<X0>(char **a1@<X8>)
{
  result = sub_1003A47D0();
  *a1 = result;
  return result;
}

unint64_t sub_1003A6068()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;
  sub_100100D84(v1);
  return sub_100100D94(v3);
}

uint64_t sub_1003A60A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003A60EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarHomeSection.RowType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A6150()
{
  result = qword_10191D648[0];
  if (!qword_10191D648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10191D648);
  }

  return result;
}

uint64_t sub_1003A61A4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191D640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A620C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003A62A4(uint64_t a1)
{
  v28 = *(v1 + 16);
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v4;
  v5 = *(v1 + 16);
  *(v3 + 32) = *v1;
  *(v3 + 48) = v5;
  *(v3 + 64) = *(v1 + 32);
  v6 = objc_allocWithZone(UIView);

  sub_1003A6C64(&v28, &v24);

  [v6 init];
  v7 = type metadata accessor for Button();
  v8 = sub_1000D6664(&qword_10191D6D8);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1003A6CD4();
  v24 = v7;
  v25 = v8;
  v26 = WitnessTable;
  v27 = v10;
  swift_getOpaqueTypeMetadata2();
  v24 = v7;
  v25 = v8;
  v26 = WitnessTable;
  v27 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1004BEF10(sub_1003A6C58);
  v13 = v12;
  v20 = v11;
  v21 = v14;
  v22 = v12;
  v23 = v15;
  v16 = type metadata accessor for BackgroundUIView();
  v17 = swift_getWitnessTable();
  sub_10010ADFC(&v20, v16, v17);

  v18 = v26;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  sub_10010ADFC(&v20, v16, v17);
}

uint64_t sub_1003A64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Button();
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v24 = *(a2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = *(a2 + 16);
  *(v11 + 32) = *a2;
  *(v11 + 48) = v12;
  *(v11 + 64) = *(a2 + 32);
  v20 = a3;
  v21 = a4;
  v22 = a2;

  sub_1003A6C64(&v24, v23);

  Button.init(action:label:)();
  v16 = a3;
  v17 = a4;
  v18 = a2;
  v19 = a1;
  sub_1000CE6B8(&qword_10191D6D8);
  swift_getWitnessTable();
  sub_1003A6CD4();
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  return (*(v15 + 8))(v10, v8);
}

uint64_t sub_1003A66EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v14 - v10;
  (*(v9 + 24))();
  sub_10010ADFC(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_10010ADFC(v11, a2, a3);
  return (v12)(v11, a2);
}

uint64_t sub_1003A6820(uint64_t a1, void *a2)
{
  v6 = *(a1 + 16);
  v7 = v6;
  *(swift_allocObject() + 16) = a2;
  sub_1003A6C64(&v7, v5);
  v3 = a2;
  sub_1000CE6B8(&qword_10191D6D0);
  sub_1000CE6B8(&qword_10191D6F0);
  sub_1000414C8(&qword_10191D700, &qword_10191D6D0);
  sub_1003A6D58();
  sub_1003A6E5C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1003A6940@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_1019191F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-v7];
  v9 = sub_1000CE6B8(&qword_10191D8F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v25 = *a1;
  v13 = *(a1 + 3);
  v26 = *(a1 + 2);
  v14 = *(a1 + 4);
  v27 = v25;
  v24 = *a1;
  v28 = v14;
  if (v14)
  {
    v15 = type metadata accessor for ButtonRole();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  else
  {

    static ButtonRole.destructive.getter();
    v16 = type metadata accessor for ButtonRole();
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  *(v17 + 32) = v26;
  *(v17 + 40) = v13;
  *(v17 + 48) = v14;
  *(v17 + 56) = a2;
  sub_100147688(&v27, v23);

  v18 = a2;
  sub_1003A6EDC(&v28, v23);
  sub_1000E5580();
  Button<>.init<A>(_:role:action:)();
  KeyPath = swift_getKeyPath();
  v20 = v28;
  if (v28)
  {
    *&v24 = v28;
    sub_1003A6EDC(&v28, v23);

    v20 = AnyShapeStyle.init<A>(_:)();
  }

  (*(v10 + 16))(a3, v12, v9);
  sub_1003A6F14(&v28);
  v21 = (a3 + *(sub_1000CE6B8(&qword_10191D6F0) + 36));
  *v21 = KeyPath;
  v21[1] = v20;
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1003A6C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191D6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A6CD4()
{
  result = qword_10191D6E0;
  if (!qword_10191D6E0)
  {
    sub_1000D6664(&qword_10191D6D8);
    sub_1003A6D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D6E0);
  }

  return result;
}

unint64_t sub_1003A6D58()
{
  result = qword_10191D6E8;
  if (!qword_10191D6E8)
  {
    sub_1000D6664(&qword_10191D6F0);
    sub_1000414C8(&qword_10190C668, &qword_10191D8F0);
    sub_1000414C8(&unk_10191DCB0, &qword_10191D6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D6E8);
  }

  return result;
}

unint64_t sub_1003A6E5C()
{
  result = qword_10191D708;
  if (!qword_10191D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D708);
  }

  return result;
}

uint64_t sub_1003A6F98()
{
  result = GEOConfigGetBOOL();
  byte_1019601D1 = result;
  return result;
}

id sub_1003A7074(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

id VisitedPlacesUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedPlacesUIUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id VisitedPlacesUIUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedPlacesUIUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003A7704(void *a1)
{
  if (![PlaceSummaryTableViewCell canBecomeFirstResponder]_0(a1))
  {
    v2 = [a1 traitCollection];
    v3 = [v2 userInterfaceIdiom];

    if (v3)
    {
      v4 = [a1 cardPresentationController];
      if (v4)
      {
        v5 = v4;
        [v4 setDefaultContaineeLayout:3];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1003A77CC(uint64_t a1)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2 = qword_1019600D8;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t sub_1003A7B50(uint64_t a1)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2 = qword_1019600D8;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t sub_1003A7CB0(uint64_t a1)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2 = qword_1019600D8;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t sub_1003A7E10(uint64_t a1)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2 = qword_1019600D8;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

unint64_t sub_1003A7F70()
{
  result = qword_101908720;
  if (!qword_101908720)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101908720);
  }

  return result;
}

uint64_t sub_1003A7FF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FilterBarOption();
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilterBarViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    static Published.subscript.getter();

    v15 = *&v65[0];
    v16 = *(*&v65[0] + 16);
    v17 = _swiftEmptyArrayStorage;
    if (!v16)
    {
LABEL_23:

      FilterBarViewModel.init(options:accessibilityIdentifier:)();
      (*(v8 + 16))(v50, v12, v7);
      v41 = swift_allocObject();
      v42 = *(v2 + 48);
      *(v41 + 48) = *(v2 + 32);
      *(v41 + 64) = v42;
      *(v41 + 80) = *(v2 + 64);
      *(v41 + 96) = *(v2 + 80);
      v43 = *(v2 + 16);
      *(v41 + 16) = *v2;
      *(v41 + 32) = v43;
      *(v41 + 104) = v17;
      *(v41 + 112) = v15;
      sub_1003BAF80(v2, v65);
      FilterBar.init(model:allowGlass:tapHandler:)();
      return (*(v8 + 8))(v12, v7);
    }

    v45 = v12;
    v46 = v8;
    v47 = v7;
    v49 = a1;
    v70 = _swiftEmptyArrayStorage;

    sub_100511578(0, v16, 0);
    v18 = 0;
    v19 = *(v15 + 16);
    v55 = v15 + 32;
    v56 = v19;
    v20 = v70;
    v21 = *(v2 + 32);
    v71 = *(v2 + 16);
    v72 = v21;
    v48 = v2;
    v73 = *(v2 + 48);
    v52 = v59 + 32;
    v53 = "or nearby transit";
    v51 = v15;
    v54 = v16;
    while (v18 != v56)
    {
      if (v18 >= *(v15 + 16))
      {
        goto LABEL_25;
      }

      v22 = (v55 + 32 * v18);
      v24 = *v22;
      v23 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      v64 = v20;
      *&v65[0] = 0x79726F6765746163;
      *(&v65[0] + 1) = 0xE90000000000005FLL;
      v66 = v18;
      swift_unknownObjectRetain();

      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v62 = *(&v65[0] + 1);
      v63 = *&v65[0];
      v65[0] = v71;
      v65[1] = v72;
      v65[2] = v73;

      sub_1000CE6B8(&qword_10191D8D8);
      Binding.wrappedValue.getter();
      v28 = v68;
      v61 = v69;
      if (v66 == v24 && v67 == v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v60 = v25, (v29 = *(v28 + 16)) != 0) && v29 == *(v26 + 16) && v28 != v26)
      {
        v30 = 32;
        do
        {
          v31 = *(v28 + v30);
          v32 = *(v28 + v30 + 16);
          v33 = *(v28 + v30 + 48);
          v74[2] = *(v28 + v30 + 32);
          v74[3] = v33;
          v74[0] = v31;
          v74[1] = v32;
          v34 = *(v26 + v30);
          v35 = *(v26 + v30 + 16);
          v36 = *(v26 + v30 + 48);
          v75[2] = *(v26 + v30 + 32);
          v75[3] = v36;
          v75[0] = v34;
          v75[1] = v35;
          sub_1001F1238(v74, v65);
          sub_1001F1238(v75, v65);
          v37 = sub_100407808(v74, v75);
          sub_1001F1294(v75);
          sub_1001F1294(v74);
          if ((v37 & 1) == 0)
          {
            break;
          }

          v30 += 64;
          --v29;
        }

        while (v29);

        v15 = v51;
      }

      else
      {
      }

      swift_unknownObjectRelease();
      v38 = v57;
      FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)();
      swift_unknownObjectRelease();

      v20 = v64;
      v70 = v64;
      v40 = v64[2];
      v39 = v64[3];
      if (v40 >= v39 >> 1)
      {
        sub_100511578(v39 > 1, v40 + 1, 1);
        v20 = v70;
      }

      ++v18;
      v20[2] = v40 + 1;
      (*(v59 + 32))(v20 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40, v38, v58);
      if (v18 == v54)
      {

        v2 = v48;
        v8 = v46;
        v7 = v47;
        v12 = v45;
        v17 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  type metadata accessor for NearbyTransitDeparturesProvider();
  sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_1003A8674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v40 = a2;
  v10 = type metadata accessor for FilterBarOption();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a5 + 64);
  v35 = a5;
  LOBYTE(v48) = *(a5 + 80);
  LOBYTE(v43) = 1;
  sub_1000CE6B8(&qword_10191D8E0);
  Binding.wrappedValue.setter();
  v38 = *(a6 + 16);
  if (v38)
  {
    v14 = 0;
    v39 = v11 + 16;
    v15 = (v11 + 8);
    v16 = a6 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v37 = *(v11 + 72);
    v17 = *(v11 + 16);
    for (i = (v36 + 56); ; i += 4)
    {
      v17(v13, v16, v10);
      if (FilterBarOption.id.getter() == a1 && v19 == v40)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v15)(v13, v10);
      if (v20)
      {
        goto LABEL_9;
      }

      ++v14;
      v16 += v37;
      if (v38 == v14)
      {
        return;
      }
    }

    (*v15)(v13, v10);
LABEL_9:
    if (v14 < *(v36 + 16))
    {
      v21 = *(i - 3);
      v22 = *(i - 2);
      v24 = *(i - 1);
      v23 = *i;
      v25 = v35;
      v26 = v35[2];
      v47 = v35[1];
      v48 = v26;
      v49 = v35[3];
      v43 = v21;
      v44 = v22;
      v45 = v24;
      v46 = v23;
      swift_unknownObjectRetain();

      sub_1000CE6B8(&qword_10191D8D8);
      Binding.wrappedValue.setter();
      *&v47 = v14;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v27;
      v28._countAndFlagsBits = 8236;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      v29 = v25[2];
      v47 = v25[1];
      v48 = v29;
      v49 = v25[3];
      Binding.wrappedValue.getter();
      v30 = v43;
      v31 = v44;

      swift_unknownObjectRelease();
      v32._countAndFlagsBits = v30;
      v32._object = v31;
      String.append(_:)(v32);

      v33 = objc_opt_self();
      v34 = String._bridgeToObjectiveC()();

      [v33 captureUserAction:219 target:44 value:v34];
    }
  }
}

uint64_t sub_1003A89F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10191E4E0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v22 = sub_1000CE6B8(&qword_10191E4E8);
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v21 - v12;
  v24 = sub_1000CE6B8(&qword_10191E4F0);
  __chkstk_darwin(v24);
  v15 = &v21 - v14;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = sub_1000CE6B8(&qword_10191E4F8);
  sub_1003A8DC4(v2, &v10[*(v16 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v17 = sub_1000414C8(&unk_10191E500, &qword_10191E4E0);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v25);
  sub_100024F64(v10, &qword_10191E4E0);
  v18 = v23;
  static AccessibilityTraits.isHeader.getter();
  v29 = v8;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  View.accessibilityAddTraits(_:)();
  (*(v26 + 8))(v18, v27);
  (*(v11 + 8))(v13, v19);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_100024F64(v15, &qword_10191E4F0);
}

uint64_t sub_1003A8DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = type metadata accessor for AccessibilityChildBehavior();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_1019109C0);
  __chkstk_darwin(v5 - 8);
  v73 = v69 - v6;
  v80 = sub_1000CE6B8(&qword_10191E510);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v8 = v69 - v7;
  *&v86 = sub_1000CE6B8(&qword_10191E518);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = v69 - v9;
  v10 = sub_1000CE6B8(&qword_10191E520);
  __chkstk_darwin(v10 - 8);
  v87 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = v69 - v13;
  v88 = sub_100193940(*(a1 + 40));

  v91 = static Alignment.bottomTrailing.getter();
  v90 = v14;
  v15 = 0.0;
  v16 = *(a1 + 48) == 1;
  v78 = v8;
  if (v16 && (v17 = [objc_opt_self() mainScreen], objc_msgSend(v17, "scale"), v17, (v18 = MKTransitIncidentIcon()) != 0))
  {
    v19 = v18;
    v89 = Image.init(uiImage:)();
    [v19 size];
    v15 = v20 * 0.5;
    [v19 size];
    v22 = v21;

    v23 = v22 * 0.5;
  }

  else
  {
    v89 = 0;
    v23 = 0.0;
  }

  v114 = 1;
  v113 = 0;
  v112 = 0;
  v24 = *(a1 + 8);
  v99._countAndFlagsBits = *a1;
  v99._object = v24;
  v25 = sub_1000E5580();

  v72 = v25;
  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  v71 = type metadata accessor for NearbyTransitLineSectionHeaderView(0);
  v31 = Text.font(_:)();
  v33 = v32;
  v35 = v34;
  sub_1000F0A40(v26, v28, v30 & 1);

  static Font.Weight.semibold.getter();
  v83 = Text.fontWeight(_:)();
  v82 = v36;
  v38 = v37;
  v84 = v39;
  sub_1000F0A40(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v40 = 1;
  if (*(a1 + 32) == 1)
  {
    v70 = v38;
    v41 = Image.init(systemName:)();
    v69[1] = v41;
    v42 = static Color.yellow.getter();
    v43 = swift_getKeyPath();
    v44 = type metadata accessor for Font.Design();
    v45 = v73;
    (*(*(v44 - 8) + 56))(v73, 1, 1, v44);
    v46 = static Font.system(_:design:weight:)();
    sub_100024F64(v45, &qword_1019109C0);
    v47 = swift_getKeyPath();
    v99._countAndFlagsBits = v41;
    v99._object = v43;
    v100 = v42;
    v101 = v47;
    *&v102 = v46;
    v48 = v74;
    static AccessibilityChildBehavior.ignore.getter();
    v49 = sub_1000CE6B8(&qword_101910198);
    v50 = sub_1001C8EFC();
    v51 = v78;
    View.accessibilityElement(children:)();
    (*(v75 + 8))(v48, v76);

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v119._object = 0x80000001012340D0;
    v52._countAndFlagsBits = 0x64656E6E6950;
    v53._object = 0x80000001012340B0;
    v119._countAndFlagsBits = 0xD00000000000002DLL;
    v53._countAndFlagsBits = 0xD000000000000017;
    v52._object = 0xE600000000000000;
    v99 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, qword_1019600D8, v52, v119);
    *&v93 = v49;
    *(&v93 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    v54 = v77;
    v55 = v80;
    View.accessibilityValue<A>(_:)();

    (*(v79 + 8))(v51, v55);
    sub_1000F11C4(v54, v92, &qword_10191E518);
    v40 = 0;
    LOBYTE(v38) = v70;
  }

  v56 = v92;
  (*(v85 + 56))(v92, v40, 1, v86);
  v57 = v87;
  sub_1000D2DFC(v56, v87, &qword_10191E520);
  v58 = v88;
  *&v93 = v88;
  BYTE8(v93) = 1;
  *(&v93 + 9) = *v118;
  HIDWORD(v93) = *&v118[3];
  *&v94 = 6;
  BYTE8(v94) = 0;
  HIDWORD(v94) = *&v117[3];
  *(&v94 + 9) = *v117;
  v86 = xmmword_101200CD0;
  v95 = xmmword_101200CD0;
  LOWORD(v96) = 256;
  BYTE2(v96) = 1;
  BYTE7(v96) = v116;
  *(&v96 + 3) = v115;
  *(&v96 + 1) = v89;
  *&v97 = v15;
  *(&v97 + 1) = v23;
  *&v98 = v91;
  *(&v98 + 1) = v90;
  v59 = v94;
  *a2 = v93;
  *(a2 + 16) = v59;
  v60 = v95;
  v61 = v96;
  v62 = v98;
  *(a2 + 64) = v97;
  *(a2 + 80) = v62;
  *(a2 + 32) = v60;
  *(a2 + 48) = v61;
  v63 = v83;
  v64 = v82;
  *(a2 + 96) = v83;
  *(a2 + 104) = v64;
  v65 = v38 & 1;
  *(a2 + 112) = v38 & 1;
  v66 = KeyPath;
  *(a2 + 120) = v84;
  *(a2 + 128) = v66;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v67 = a2 + *(sub_1000CE6B8(&qword_10191E528) + 80);
  sub_1000D2DFC(v57, v67, &qword_10191E520);
  sub_1000D2DFC(&v93, &v99, &unk_10191E530);
  sub_1001C8AFC(v63, v64, v65);

  sub_100024F64(v92, &qword_10191E520);
  sub_100024F64(v57, &qword_10191E520);
  sub_1000F0A40(v63, v64, v65);

  v99._countAndFlagsBits = v58;
  LOBYTE(v99._object) = 1;
  *(&v99._object + 1) = *v118;
  HIDWORD(v99._object) = *&v118[3];
  v100 = 6;
  LOBYTE(v101) = 0;
  *(&v101 + 1) = *v117;
  HIDWORD(v101) = *&v117[3];
  v102 = v86;
  v103 = 256;
  v104 = 1;
  v105 = v115;
  v106 = v116;
  v107 = v89;
  v108 = v15;
  v109 = v23;
  v110 = v91;
  v111 = v90;
  return sub_100024F64(&v99, &unk_10191E530);
}

void *sub_1003A98C4()
{
  result = &_swiftEmptySetSingleton;
  v2 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  v26 = &_swiftEmptySetSingleton;
  v3 = v0[2];
  v4 = v0[3] >> 1;
  if (v3 == v4)
  {
LABEL_25:

    return v2;
  }

  v5 = v0[1];
  v6 = &selRef_storageIdentifier;
  v23 = v4;
  v21 = _swiftEmptyArrayStorage;
  v22 = v5;
  while (v3 < v4)
  {
    v7 = *(v5 + 80 * v3 + 24);

    swift_unknownObjectRetain();

    v8 = [v7 v6[356]];
    if (v8)
    {
      v9 = [v8 name];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = v26;
        if (v26[2] && (Hasher.init(_seed:)(), String.hash(into:)(), v15 = Hasher._finalize()(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) != 0))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (v14[6] + 16 * v17);
            v20 = *v19 == v11 && v19[1] == v13;
            if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v14 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          v4 = v23;
        }

        else
        {
LABEL_18:
          sub_1003077A4(&v24, v11, v13);

          swift_unknownObjectRetain();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v4 = v23;
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          v21 = v25;
        }

        v5 = v22;
        v6 = &selRef_storageIdentifier;
        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();

LABEL_5:
    if (++v3 == v4)
    {
      v2 = v21;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003A9BD8(uint64_t a1, double a2)
{
  v5 = sub_1000CE6B8(&qword_101918918);
  __chkstk_darwin(v5 - 8);
  v82 = &v78 - v6;
  v7 = sub_1000CE6B8(&qword_10191E010);
  __chkstk_darwin(v7 - 8);
  v80 = &v78 - v8;
  v9 = type metadata accessor for Text.Measurements.Context();
  v83 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorScheme();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  v18 = _swiftEmptyArrayStorage;
  v88 = _swiftEmptyArrayStorage;
  v84 = v2;
  sub_1003B1100(type metadata accessor for NearbyTransitCollapsedLinesView, &v78 - v16);
  (*(v12 + 104))(v14, enum case for ColorScheme.dark(_:), v11);
  LODWORD(v19) = static ColorScheme.== infix(_:_:)();
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  v87 = &_swiftEmptySetSingleton;
  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_54;
  }

  v79 = v9;
  v22 = (a1 + 32);
  v23 = &MKLookAroundViewDidBecomeFullyDrawnNotification_ptr;
  v24 = &selRef_lowercaseString;
  v25 = 0.0;
  v26 = &selRef_routePlanningDataCoordinator_didUpdateRouteCollection_;
  v85 = v19;
  while (1)
  {
    v29 = *v22++;
    v28 = v29;
    if (!v29)
    {
      goto LABEL_4;
    }

    v30 = objc_opt_self();
    swift_unknownObjectRetain();
    v31 = [v30 v24[35]];
    [v31 v26[238]];
    v33 = v32;

    v34 = [objc_opt_self() sharedInstance];
    v35 = [v34 imageForArtwork:v28 size:6 featureType:2 scale:v19 & 1 nightMode:v33];

    if (v35)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_4:
    v27 = v25;
LABEL_5:
    v25 = v27;
    if (!--v21)
    {
      goto LABEL_54;
    }
  }

  v36 = UIImagePNGRepresentation(v35);
  if (!v36)
  {
    goto LABEL_12;
  }

  v19 = v18;
  v37 = v24;
  v38 = v23;
  v39 = v36;
  v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (sub_100361058(v40, v42, v87))
  {
    sub_1000D41B4(v40, v42);
    swift_unknownObjectRelease();

    v27 = v25;
    v23 = v38;
    v24 = v37;
    v18 = v19;
    LOBYTE(v19) = v85;
    v26 = &selRef_routePlanningDataCoordinator_didUpdateRouteCollection_;
    goto LABEL_5;
  }

  sub_100307918(&v86._countAndFlagsBits, v40, v42);
  sub_1000D41B4(v86._countAndFlagsBits, v86._object);
  v23 = v38;
  v24 = v37;
  v18 = v19;
  LOBYTE(v19) = v85;
  v26 = &selRef_routePlanningDataCoordinator_didUpdateRouteCollection_;
LABEL_12:
  if (v18 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

LABEL_14:
    v43 = *(v84 + *(type metadata accessor for NearbyTransitCollapsedLinesView(0) + 24));
  }

  else
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_16:
    v43 = 0.0;
  }

  [(UIImage *)v35 size];
  v27 = v25 + v43 + v44;
  if (v27 <= a2)
  {
    v45 = v35;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_unknownObjectRelease();
    v18 = v88;
    goto LABEL_5;
  }

  swift_unknownObjectRelease();

  v46 = type metadata accessor for NearbyTransitCollapsedLinesView(0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v89._object = 0x8000000101233EC0;
  v47._object = 0x8000000101233EA0;
  v89._countAndFlagsBits = 0xD000000000000046;
  v47._countAndFlagsBits = 0xD000000000000019;
  v48._countAndFlagsBits = 10911970;
  v48._object = 0xA300000000000000;
  v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, qword_1019600D8, v48, v89);
  sub_1000E5580();
  v49 = Text.init<A>(_:)();
  v51 = v50;
  v53 = v52;
  v54 = type metadata accessor for Text.WritingMode();
  (*(*(v54 - 8) + 56))(v80, 1, 1, v54);
  v55 = type metadata accessor for Text.Suffix();
  (*(*(v55 - 8) + 56))(v82, 1, 1, v55);
  v56 = v81;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v57 = v84;
  Text.Measurements.size(of:in:context:)();
  v59 = v58;
  sub_1000F0A40(v49, v51, v53 & 1);

  (*(v83 + 8))(v56, v79);
  v60 = *(v57 + *(v46 + 24));
  if (v18 >> 62)
  {
    v61 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v61 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v61)
  {
    v62 = v59 + v60;
    v63 = v18;
    while (!__OFSUB__(v61--, 1))
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        if (v61 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v65 = *(v18 + 32 + 8 * v61);
      }

      v66 = v65;
      if (v62 <= a2 - v25)
      {

LABEL_53:
        v18 = v63;
        goto LABEL_54;
      }

      v67 = v63 >> 62;
      if (v63 >> 62)
      {
        v68 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v68 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v68)
      {
        v69 = v60;
      }

      else
      {
        v69 = 0.0;
      }

      [v66 size];
      v71 = v70;
      if (v67)
      {
        v72 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v72 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v72)
      {
        goto LABEL_58;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v67 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v63 = sub_1000564AC(v63);
      }

      v74 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v74)
      {
        goto LABEL_59;
      }

      v25 = v25 - (v69 + v71);
      v75 = v74 - 1;
      v76 = *((v63 & 0xFFFFFFFFFFFFFF8) + 8 * v75 + 0x20);
      *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) = v75;

      if (!v61)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

LABEL_54:

  return v18;
}

void *sub_1003AA45C(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      return result;
    }

    if (i != 1)
    {
      v21 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if ((i & 0x8000000000000000) == 0)
      {
        v18 = 0;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(v2 + 8 * v18 + 32);
            swift_unknownObjectRetain();
          }

          ++v18;
          v20 = [v19 artwork];
          swift_unknownObjectRelease();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (i != v18);
        return v21;
      }

      goto LABEL_35;
    }

    v5 = v1[2];
    v6 = v1[3] >> 1;
    v2 = v6 - v5;
    if (__OFSUB__(v6, v5))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v7 = v1[1];
    if (!v2)
    {
      break;
    }

    v21 = _swiftEmptyArrayStorage;
    v1 = &v21;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      goto LABEL_36;
    }

    if (v5 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8 - v5;
    v10 = &v7[10 * v5 + 3];
    while (v9)
    {
      v11 = *v10;
      v10 += 10;
      v12 = [v11 headerArtwork];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = &v21;
      specialized ContiguousArray._endMutation()();
      --v9;
      if (!--v2)
      {
        result = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    ;
  }

LABEL_15:
  if (v5 == v6)
  {
    return result;
  }

  if (v5 >= v6)
  {
    goto LABEL_37;
  }

  v13 = result;
  v14 = [swift_unknownObjectRetain() system];
  if (v14)
  {
    v15 = [v14 artwork];
    swift_unknownObjectRelease();
    if (v15)
    {
      v16 = *(v13 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if (!isUniquelyReferenced_nonNull_native || v16 >= *(v13 + 24) >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v13;
      }

      sub_10054E72C(0, 0, 1, v15);
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1003AA724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for NearbyTransitCollapsedLinesView(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000CE6B8(&qword_10191DF90);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v33._object = 0x8000000101233E40;
  v11._countAndFlagsBits = 0x6E694C2065726F4DLL;
  v12._object = 0x8000000101233E20;
  v33._countAndFlagsBits = 0xD00000000000003FLL;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0xEA00000000007365;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, qword_1019600D8, v11, v33);
  sub_1000E5580();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v30._countAndFlagsBits = v13;
  v30._object = v14;
  v17 = v16 & 1;
  v31 = v16 & 1;
  v32 = v18;
  View.accessibility(identifier:)();
  sub_1000F0A40(v13, v15, v17);

  v19 = sub_1003A98C4();
  v20 = sub_1003AA45C(v19);

  sub_1003BD4C4(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyTransitCollapsedLinesView);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_1003BCE58(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for NearbyTransitCollapsedLinesView);
  *(v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  sub_1000D2DFC(v10, v7, &qword_10191DF90);
  v23 = v29;
  sub_1000D2DFC(v7, v29, &qword_10191DF90);
  v24 = sub_1000CE6B8(&qword_10191DF98);
  v25 = v23 + *(v24 + 48);
  *v25 = 0x4024000000000000;
  *(v25 + 8) = 0;
  v26 = (v23 + *(v24 + 64));
  *v26 = sub_1003BD52C;
  v26[1] = v22;

  sub_100024F64(v10, &qword_10191DF90);

  return sub_100024F64(v7, &qword_10191DF90);
}

__n128 sub_1003AAAB0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_10191DFA0);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = *(a1 + *(type metadata accessor for NearbyTransitCollapsedLinesView(0) + 24));
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = v9;
  v8[16] = 0;
  v10 = sub_1000CE6B8(&qword_10191DFA8);
  sub_1003AAC9C(a2, &v8[*(v10 + 44)]);
  GeometryProxy.size.getter();
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000F11C4(v8, a3, &qword_10191DFA0);
  v11 = a3 + *(sub_1000CE6B8(&qword_10191DFB0) + 36);
  v12 = v15[6];
  *(v11 + 64) = v15[5];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[7];
  v13 = v15[2];
  *v11 = v15[1];
  *(v11 + 16) = v13;
  result = v15[4];
  *(v11 + 32) = v15[3];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_1003AAC9C@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000CE6B8(&qword_10191DFB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  GeometryProxy.size.getter();
  v11 = sub_1003A9BD8(a1, v10);
  v13 = v12;
  v43._countAndFlagsBits = v11;
  swift_getKeyPath();
  sub_1000CE6B8(&qword_10191DFC0);
  sub_1000CE6B8(&qword_10191DFC8);
  sub_1000414C8(&qword_10191DFD0, &qword_10191DFC0);
  sub_1003BAAF0(&unk_10191DFD8, sub_1000F1178);
  sub_1003BD5D8();
  v38 = v9;
  ForEach<>.init(_:id:content:)();
  if (v13)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v48._object = 0x8000000101233EC0;
    v14._object = 0x8000000101233EA0;
    v48._countAndFlagsBits = 0xD000000000000046;
    v14._countAndFlagsBits = 0xD000000000000019;
    v15._countAndFlagsBits = 10911970;
    v15._object = 0xA300000000000000;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v15, v48);
    sub_1000E5580();
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    v22 = v21 & 1;
    sub_1001C8AFC(v16, v17, v21 & 1);

    sub_1001C8AFC(v16, v18, v22);

    sub_1000F0A40(v16, v18, v22);

    v39 = 0uLL;
    *&v40 = v16;
    *(&v40 + 1) = v18;
    *&v41 = v22;
    *(&v41 + 1) = v20;
    v42 = 0;
    sub_1000CE6B8(&qword_10191DFF0);
    sub_1000414C8(&qword_10191DFF8, &qword_10191DFF0);
    _ConditionalContent<>.init(storage:)();
    sub_1000F0A40(v16, v18, v22);
  }

  else
  {
    v39 = xmmword_1011F07A0;
    v40 = 0u;
    v41 = 0u;
    v42 = 1;
    sub_1000CE6B8(&qword_10191DFF0);
    sub_1000414C8(&qword_10191DFF8, &qword_10191DFF0);
    _ConditionalContent<>.init(storage:)();
  }

  v35 = v43;
  v36 = v44;
  v24 = v45;
  v23 = v46;
  v25 = v47;
  v26 = *(v4 + 16);
  v26(v6, v38, v3);
  v27 = v37;
  v26(v37, v6, v3);
  v28 = &v27[*(sub_1000CE6B8(&unk_10191E000) + 48)];
  v30 = v35;
  v29 = v36;
  *v28 = v35;
  *(v28 + 1) = v29;
  *(v28 + 4) = v24;
  *(v28 + 5) = v23;
  v28[48] = v25;
  v31 = v30;
  v32 = v29;
  sub_1003BD694(v30._countAndFlagsBits, v30._object, v29, *(&v29 + 1), v24, v23, v25);
  v37 = v6;
  v33 = *(v4 + 8);
  v33(v38, v3);
  sub_1003BD6E0(v31._countAndFlagsBits, v31._object, v32, *(&v32 + 1), v24, v23, v25);
  return (v33)(v37, v3);
}

uint64_t sub_1003AB1B8(id *a1)
{
  v1 = *a1;
  Image.init(uiImage:)();
  View.accessibility(identifier:)();
}

uint64_t sub_1003AB238@<X0>(uint64_t *a1@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v4 = static VerticalAlignment.center.getter();
  *a1 = swift_getKeyPath();
  sub_1000CE6B8(&qword_10191DF80);
  swift_storeEnumTagMultiPayload();
  v5 = sub_1000CE6B8(&qword_10191DF88);
  result = sub_1003AA724(v1, a1 + v5[9]);
  *(a1 + v5[12]) = v4;
  v7 = a1 + v5[13];
  *v7 = 0;
  v7[8] = 1;
  *(a1 + v5[10]) = v3;
  v8 = a1 + v5[11];
  *v8 = 0;
  v8[8] = 1;
  *(a1 + v5[14]) = 0;
  return result;
}

void sub_1003AB310(uint64_t *a1)
{
  v2 = type metadata accessor for NearbyTransitLineSectionView(0);
  v3 = *(v1 + *(v2 + 24));
  if (!v3)
  {
    goto LABEL_49;
  }

  v4 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v3;
  static Published.subscript.getter();

  v6 = v77;
  v56 = *(v77 + 16);
  if (!v56)
  {
    goto LABEL_44;
  }

  v53 = 0;
  v54 = 0;
  v7 = 0;
  v57 = v77 + 32;
  v59 = v4;
  v60 = v1;
  v55 = v77;
  do
  {
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_48;
    }

    v58 = v7;
    v8 = *(v57 + 32 * v7 + 16);
    v9 = *(v8 + 16);
    swift_bridgeObjectRetain_n();

    swift_unknownObjectRetain();
    if (v9)
    {
      v10 = 0;
      v11 = v8 + 32;
      v62 = v9;
      v63 = v8;
      v61 = v8 + 32;
      while (v10 < *(v8 + 16))
      {
        v12 = (v11 + (v10 << 6));
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[3];
        v73[2] = v12[2];
        v73[3] = v15;
        v73[0] = v13;
        v73[1] = v14;
        v16 = *v12;
        v17 = v12[1];
        v18 = v12[3];
        v75 = v12[2];
        v76 = v18;
        v74[0] = v16;
        v74[1] = v17;
        v19 = v75;
        v20 = (v1 + *(v4 + 20));
        v21 = *v20;
        v22 = v20[1];
        *(v80 + 9) = *(v20 + 57);
        v23 = v20[3];
        v79 = v20[2];
        v80[0] = v23;
        v77 = v21;
        v78 = v22;

        sub_1001F1238(v73, &v71);
        sub_1003CF6D0(&v77, v19);
        v25 = v24;
        sub_1001F1294(v74);

        if ((v25 & 1) == 0)
        {
          v26 = v78;
          v68 = *(v78 + 16);
          if (v68)
          {
            v64 = v10;
            v65 = v78;
            v27 = 0;
            v28 = *a1;
            v69 = a1[1];
            v29 = (v78 + 56);
            while (1)
            {
              if (v27 >= *(v26 + 16))
              {
                __break(1u);
LABEL_44:

                v50 = objc_opt_self();
LABEL_45:
                v52 = 0;
                goto LABEL_46;
              }

              v30 = *(v29 - 1);
              v31 = *v29;
              v32 = v29[1];
              v33 = v29[2];
              v34 = v29[3];
              v35 = v29[4];
              v36 = v29[5];
              v66 = v29[6];
              v67 = v29[7];
              if (*(v29 - 3) == v28 && *(v29 - 2) == v69 || (v37 = _stringCompareWithSmolCheck(_:_:expecting:)(), v26 = v65, (v37 & 1) != 0))
              {
                v38 = a1[3];
                if (v31)
                {
                  if (!v38)
                  {
                    goto LABEL_14;
                  }

                  if (v30 != a1[2] || v31 != v38)
                  {
                    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v26 = v65;
                    if ((v39 & 1) == 0)
                    {
                      goto LABEL_14;
                    }
                  }
                }

                else if (v38)
                {
                  goto LABEL_14;
                }

                if (v32 != a1[4] || v33 != a1[5])
                {
                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v26 = v65;
                  if ((v40 & 1) == 0)
                  {
                    goto LABEL_14;
                  }
                }

                v41 = a1[7];
                if (v35)
                {
                  if (!v41)
                  {
                    goto LABEL_14;
                  }

                  if (v34 != a1[6] || v35 != v41)
                  {
                    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v26 = v65;
                    if ((v42 & 1) == 0)
                    {
                      goto LABEL_14;
                    }

                    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v26 = v65;
                    if ((v43 & 1) == 0)
                    {
                      goto LABEL_14;
                    }
                  }
                }

                else if (v41)
                {
                  goto LABEL_14;
                }

                if (v36 == a1[8] && v67 == a1[10])
                {
                  v44 = [v66 isEqual:a1[9]];
                  v26 = v65;
                  if (v44)
                  {

                    v71 = dispatch thunk of CustomStringConvertible.description.getter();
                    v72 = v45;
                    v46._countAndFlagsBits = 8236;
                    v46._object = 0xE200000000000000;
                    String.append(_:)(v46);
                    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v47);

                    v48._countAndFlagsBits = 8236;
                    v48._object = 0xE200000000000000;
                    String.append(_:)(v48);
                    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v49);
                    swift_unknownObjectRelease();

                    v53 = v71;
                    v54 = v72;
                    v4 = v59;
                    v1 = v60;
                    goto LABEL_40;
                  }
                }
              }

LABEL_14:
              ++v27;
              v29 += 11;
              if (v68 == v27)
              {
                v4 = v59;
                v1 = v60;
                v9 = v62;
                v8 = v63;
                v10 = v64;
                v11 = v61;
                break;
              }
            }
          }
        }

        if (++v10 == v9)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      type metadata accessor for NearbyTransitDeparturesProvider();
      sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

LABEL_39:
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();

LABEL_40:
    v7 = v58 + 1;
    v6 = v55;
  }

  while (v58 + 1 != v56);

  v50 = objc_opt_self();
  if (!v54)
  {
    goto LABEL_45;
  }

  v51 = v50;
  v52 = String._bridgeToObjectiveC()();

  v50 = v51;
LABEL_46:
  [v50 captureUserAction:231 target:44 value:{v52, v53}];
}

uint64_t sub_1003AB8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = type metadata accessor for BorderlessButtonStyle();
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbyTransitLineSectionView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_1000CE6B8(&qword_10191E088);
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_1000CE6B8(&qword_10191E1B0);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  __chkstk_darwin(v15);
  v18 = &v29 - v17;
  sub_1003BD4C4(v3, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyTransitLineSectionView);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1003BCE58(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for NearbyTransitLineSectionView);
  v21 = v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *(a1 + 48);
  *(v21 + 32) = *(a1 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a1 + 64);
  *(v21 + 80) = *(a1 + 80);
  v23 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v23;
  v35 = a1;
  v36 = v3;
  sub_1001603D8(a1, v37);
  sub_1000CE6B8(&qword_10191E1B8);
  sub_1003BE190();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  v24 = sub_1000414C8(&qword_10191E090, &qword_10191E088);
  v25 = sub_1003BAAF0(&unk_10191DC00, &type metadata accessor for BorderlessButtonStyle);
  v26 = v32;
  View.buttonStyle<A>(_:)();
  (*(v33 + 8))(v8, v26);
  (*(v29 + 8))(v14, v12);
  v37[0] = v12;
  v37[1] = v26;
  v37[2] = v24;
  v37[3] = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v30;
  View.accessibilityIdentifier(_:)();
  return (*(v31 + 8))(v18, v27);
}

uint64_t sub_1003ABD10(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for NearbyTransitLineSectionView(0) + 24));
  if (v3)
  {
    v4 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_viewDelegate;
    swift_beginAccess();
    sub_1000D2DFC(v3 + v4, v7, &qword_10190D330);
    if (v8)
    {
      sub_10005EB40(v7, v6);
      sub_100024F64(v7, &qword_10190D330);
      sub_10005E838(v6, v6[3]);
      sub_1003CBD24(a2, 1);
      return sub_10004E3D0(v6);
    }

    else
    {
      return sub_100024F64(v7, &qword_10190D330);
    }
  }

  else
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    sub_1003BAAF0(&qword_10191D790, type metadata accessor for NearbyTransitDeparturesProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}