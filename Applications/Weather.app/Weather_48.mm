uint64_t sub_100521610()
{
  type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_10022C350(&qword_100CC3A00);
  UISettingProperty.projectedValue.getter();
  return Stepper.init<A>(value:in:step:onEditingChanged:label:)();
}

void sub_100521708(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(27);

  type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_10022C350(&qword_100CC3A00);
  UISettingProperty.wrappedValue.getter();
  v2 = v5 * 100.0;
  if (COERCE__INT64(fabs(v5 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 9504;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    *a1 = 0xD000000000000017;
    *(a1 + 8) = 0x8000000100AD3600;
    *(a1 + 16) = 0;
    *(a1 + 24) = _swiftEmptyArrayStorage;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10052184C()
{
  type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_10022C350(&qword_100CC39F0);
  UISettingProperty.projectedValue.getter();
  return Toggle.init(isOn:label:)();
}

void sub_1005218E4(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002ELL;
  *(a1 + 8) = 0x8000000100AD3620;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_100521914()
{
  type metadata accessor for PredictedLocationNotificationsDebugView();

  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1005219CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationNotificationsDebugView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100521A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationNotificationsDebugView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100521A94()
{
  v0 = sub_100051E9C();
  sub_100003810(v0);

  return sub_100521914();
}

unint64_t sub_100521B30()
{
  result = qword_100CC3B30;
  if (!qword_100CC3B30)
  {
    sub_10022E824(&qword_100CC3B28);
    sub_100521BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC3B30);
  }

  return result;
}

unint64_t sub_100521BB4()
{
  result = qword_100CC3B38;
  if (!qword_100CC3B38)
  {
    sub_10022E824(&qword_100CC3B40);
    sub_100006F64(&qword_100CC3B48, &qword_100CC3B50);
    sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC3B38);
  }

  return result;
}

uint64_t sub_100521C98@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_100003810(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10052117C(a1, v7, a2);
}

unint64_t sub_100521D14()
{
  result = qword_100CC3B68;
  if (!qword_100CC3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC3B68);
  }

  return result;
}

uint64_t sub_100521D68()
{
  v0 = type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_100003AE8(v0);

  return sub_100521330();
}

uint64_t sub_100521E94()
{
  v1 = type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_100003810(v1);
  return sub_10052068C(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_100521F04()
{
  sub_10000EB1C();
  sub_100008188();
  v0 = sub_100051E9C();
  sub_100003810(v0);
  sub_100016AB4();
  v1 = swift_task_alloc();
  v2 = sub_100007F54(v1);
  *v2 = v3;
  sub_10000C9B8(v2);
  sub_10002C7FC();

  return sub_100520810(v4, v5, v6, v7);
}

uint64_t sub_100521FB8()
{
  sub_10000EB1C();
  sub_100008188();
  v0 = sub_100051E9C();
  sub_100003810(v0);
  sub_100016AB4();
  v1 = swift_task_alloc();
  v2 = sub_100007F54(v1);
  *v2 = v3;
  sub_10000C9B8(v2);
  sub_10002C7FC();

  return sub_100520354(v4, v5, v6, v7);
}

uint64_t sub_10052208C()
{
  sub_10000C778();
  type metadata accessor for PredictedLocationNotificationsDebugView();
  sub_100008560();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = sub_10022C350(&qword_100CC39F0);
  sub_1000037E8();
  v6 = *(v5 + 8);
  v6(v1 + v3, v4);
  v7 = v0[7];
  sub_10022C350(&qword_100CC39F8);
  sub_100003D98();
  (*(v8 + 8))(v1 + v3 + v7);
  v9 = v0[8];
  sub_10022C350(&qword_100CC3A00);
  sub_100003D98();
  (*(v10 + 8))(v1 + v3 + v9);
  v11 = sub_10004E684();
  (v6)(v11);

  sub_1000247C4();
  sub_100006F14(v1 + v3 + v0[12]);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100522210()
{
  sub_10000EB1C();
  sub_100008188();
  v0 = sub_100051E9C();
  sub_100003810(v0);
  sub_100016AB4();
  v1 = swift_task_alloc();
  v2 = sub_100007F54(v1);
  *v2 = v3;
  sub_10000C9B8(v2);
  sub_10002C7FC();

  return sub_10051FBB8(v4, v5, v6, v7);
}

uint64_t sub_1005222C4()
{
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id sub_1005223B4()
{
  v1 = OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100522450(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController____lazy_storage___dateFormatter] = 0;
  *&v2[OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController_notificationStore] = a1;
  *&v2[OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController_messages] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DebugIncomingMessagesViewController();
  return objc_msgSendSuper2(&v4, "initWithStyle:", 2);
}

void sub_1005224AC()
{
  *(v0 + OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100522524()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugIncomingMessagesViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    sub_1003C1790(0xD000000000000011, 0x8000000100ACB710, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1005226E4(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v41 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v42 = type metadata accessor for IncomingMessageEntity();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [a1 dequeueReusableCellWithIdentifier:v18 forIndexPath:isa];

  v21 = *(v1 + OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController_messages);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v21 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v13 + 16))(v17, v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result, v42);
  static UIListContentConfiguration.subtitleCell()();
  IncomingMessageEntity.messageID.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.text.setter();
  v23 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v23(&v43, 0);
  v24 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.lineBreakMode.setter();
  v24(&v43, 0);
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v43 = 0x203A65746144;
  v44 = 0xE600000000000000;
  v25 = sub_1005223B4();
  IncomingMessageEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v26 = type metadata accessor for Date();
  result = sub_100024D10(v5, 1, v26);
  if (result != 1)
  {

    v27 = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v26 - 8) + 8))(v5, v26);
    v28 = [v25 stringFromDate:v27];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0x656E6E6168430A20;
    v33._object = 0xEB00000000203A6CLL;
    String.append(_:)(v33);
    IncomingMessageEntity.channel.getter();
    dispatch thunk of Column.value.getter();

    v34 = v48;
    if (v48 != 1)
    {
      v35 = v47;
      if (v48)
      {
LABEL_8:
        v36 = v34;
        String.append(_:)(*&v35);

        UIListContentConfiguration.secondaryText.setter();
        v37 = UIListContentConfiguration.secondaryTextProperties.modify();
        UIListContentConfiguration.TextProperties.numberOfLines.setter();
        v37(&v43, 0);
        v38 = v41;
        v45 = v41;
        v46 = &protocol witness table for UIListContentConfiguration;
        v39 = sub_100042FB0(&v43);
        (*(v7 + 16))(v39, v11, v38);
        UITableViewCell.contentConfiguration.setter();
        [v20 setAccessoryType:1];
        (*(v7 + 8))(v11, v38);
        (*(v13 + 8))(v17, v42);
        return v20;
      }

      sub_1000885AC(v47, 0);
    }

    v34 = 0xE700000000000000;
    v35 = 0x6E776F6E6B6E55;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_100522D08()
{
  v1 = v0;
  v2 = type metadata accessor for IncomingMessageEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR____TtC7Weather35DebugIncomingMessagesViewController_messages];
  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v2);
  objc_allocWithZone(type metadata accessor for DebugIncomingMessageViewController());

  v12 = sub_1003B0C68(v11, v8);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    v12 = v14;
  }
}

id sub_100523000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugIncomingMessagesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005230B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MapsConfiguration.OverlayKind();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.Maps.Overrides();
  static Settings.Maps.Overrides.defaultOverlayKind.getter();
  SettingReader.read<A>(_:)();

  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 88))(v6, v2);
  if (v9 == enum case for MapsConfiguration.OverlayKind.precipitation(_:))
  {
    static SettingReader.shared.getter();
    static Settings.Maps.Overrides.forceRadarPrecipOverlayKind.getter();
    SettingReader.read<A>(_:)();

    (*(v3 + 8))(v8, v2);
    v10 = v17[15];
    v11 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
    if (v10 == 1)
    {
      v12 = &enum case for WeatherMapPrecipitationOverlayKind.radar(_:);
    }

    else
    {
      v12 = &enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
    }

    (*(*(v11 - 8) + 104))(a1, *v12, v11);
    v13 = &enum case for WeatherMapOverlayKind.precipitation(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MapsConfiguration.OverlayKind.airQuality(_:))
  {
    (*(v3 + 8))(v8, v2);
    v13 = &enum case for WeatherMapOverlayKind.airQuality(_:);
LABEL_8:
    v14 = *v13;
    v15 = type metadata accessor for WeatherMapOverlayKind();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  if (v9 == enum case for MapsConfiguration.OverlayKind.temperature(_:))
  {
    (*(v3 + 8))(v8, v2);
    v13 = &enum case for WeatherMapOverlayKind.temperature(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MapsConfiguration.OverlayKind.wind(_:))
  {
    (*(v3 + 8))(v8, v2);
    v13 = &enum case for WeatherMapOverlayKind.wind(_:);
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1005233D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapsConfiguration.OverlayKind();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  (*(v6 + 16))(v10, a1, v4);
  v18 = (*(v6 + 88))(v10, v4);
  if (v18 == enum case for MapsConfiguration.OverlayKind.precipitation(_:))
  {
    v19 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
    type metadata accessor for WeatherMapPrecipitationOverlayKind();
    sub_1000037E8();
    (*(v20 + 104))(v17, v19);
    v21 = &enum case for WeatherMapOverlayKind.precipitation(_:);
LABEL_7:
    v22 = *v21;
    v23 = *(v13 + 104);
    goto LABEL_8;
  }

  if (v18 == enum case for MapsConfiguration.OverlayKind.airQuality(_:))
  {
    v21 = &enum case for WeatherMapOverlayKind.airQuality(_:);
    goto LABEL_7;
  }

  if (v18 == enum case for MapsConfiguration.OverlayKind.temperature(_:))
  {
    v21 = &enum case for WeatherMapOverlayKind.temperature(_:);
    goto LABEL_7;
  }

  v23 = *(v13 + 104);
  if (v18 != enum case for MapsConfiguration.OverlayKind.wind(_:))
  {
    v23(v17, enum case for WeatherMapOverlayKind.temperature(_:), v11);
    (*(v6 + 8))(v10, v4);
    goto LABEL_9;
  }

  v22 = enum case for WeatherMapOverlayKind.wind(_:);
LABEL_8:
  v23(v17, v22, v11);
LABEL_9:
  (*(v13 + 32))(a2, v17, v11);
  return (*(v6 + 8))(a1, v4);
}

void sub_100523678(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v216 = a4;
  v203 = a3;
  v196 = a2;
  v217 = a1;
  v218 = a5;
  v180 = type metadata accessor for RainExpectation();
  sub_1000037C4();
  v179 = v5;
  __chkstk_darwin(v6);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v7);
  v209 = &v174 - v8;
  v187 = type metadata accessor for WeatherAvailability.AvailabilityKind();
  sub_1000037C4();
  v186 = v9;
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003918(&v174 - v12);
  v183 = type metadata accessor for WeatherAvailability();
  sub_1000037C4();
  v182 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  sub_100003918(v16 - v15);
  v212 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
  sub_1000037C4();
  v214 = v17;
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  v192 = &v174 - v20;
  v21 = sub_10022C350(&qword_100CAEC90);
  __chkstk_darwin(v21 - 8);
  v202 = &v174 - v22;
  v199 = type metadata accessor for Wind();
  sub_1000037C4();
  v198 = v23;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v197 = v26 - v25;
  v201 = sub_10022C350(&qword_100CACCC8);
  sub_1000037C4();
  v190 = v27;
  __chkstk_darwin(v28);
  v189 = &v174 - v29;
  v194 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v193 = v30;
  __chkstk_darwin(v31);
  sub_100003918(&v174 - v32);
  v215 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v219 = v33;
  __chkstk_darwin(v34);
  sub_1000037D8();
  sub_100003918(v36 - v35);
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v210 = v38;
  v211 = v37;
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  v41 = &v174 - v40;
  v213 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v43 = v42;
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  v47 = &v174 - v46;
  v48 = sub_10022C350(&qword_100CA5CF8);
  __chkstk_darwin(v48 - 8);
  sub_100003848();
  v204 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v208 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  v207 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v206 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v205 = v58;
  sub_10000386C();
  v60 = __chkstk_darwin(v59);
  v62 = &v174 - v61;
  v63 = __chkstk_darwin(v60);
  v65 = &v174 - v64;
  v66 = __chkstk_darwin(v63);
  v68 = &v174 - v67;
  v69 = __chkstk_darwin(v66);
  v71 = &v174 - v70;
  __chkstk_darwin(v69);
  v73 = &v174 - v72;
  static Settings.Maps.overrides.getter();
  v74 = dispatch thunk of SettingGroup.isEnabled.getter();

  if ((v74 & 1) == 0)
  {
    if (sub_10043D478(v220 + 5))
    {
      sub_1000135C8();

      __asm { BRAA            X3, X16 }
    }

    v79 = v215;
    sub_10001B350(v73, 1, 1, v215);
    WeatherDataModel.currentWeather.getter();
    CurrentWeather.condition.getter();
    v80 = *(v43 + 8);
    v177 = v43 + 8;
    v176 = v80;
    v80(v47, v213);
    v81 = WeatherCondition.isPrecipitation.getter();
    v82 = v210 + 8;
    v175 = *(v210 + 8);
    v175(v41, v211);
    if (v81)
    {
      sub_1000180EC(v73, &qword_100CA5CF8);
      v83 = sub_10002080C();
      v84(v83);
      v85 = sub_100028664();
      v86(v85);
      v87 = sub_10001483C();
      sub_10001B350(v87, v88, v89, v79);
    }

    sub_10052498C(v73, v71);
    v90 = sub_100017854(v71);
    sub_1000180EC(v71, &qword_100CA5CF8);
    if (v90 == 1)
    {
      sub_1005249FC(v196, v217, v68);
      if (sub_100017854(v68) == 1)
      {
        sub_1000180EC(v68, &qword_100CA5CF8);
      }

      else
      {
        sub_1000180EC(v73, &qword_100CA5CF8);
        v91 = *(v219 + 32);
        v216 = v82;
        v92 = v188;
        v91(v188, v68, v79);
        v91(v73, v92, v79);
        v93 = sub_10001483C();
        sub_10001B350(v93, v94, v95, v79);
      }
    }

    sub_10052498C(v73, v65);
    v96 = sub_100017854(v65);
    sub_1000180EC(v65, &qword_100CA5CF8);
    if (v96 == 1)
    {
      sub_10000CC10();
      WeatherDataModel.hourlyForecast.getter();
      v97 = Forecast<>.numberOfHoursWithPrecipitation(withinHoursFromNow:minimumChance:)();
      (*(v193 + 8))(v68, v194);
      if (v97 >= 2)
      {
        sub_1000180EC(v73, &qword_100CA5CF8);
        v98 = sub_10002080C();
        v99(v98);
        v100 = sub_100028664();
        v101(v100);
        v102 = sub_10001483C();
        sub_10001B350(v102, v103, v104, v79);
      }
    }

    sub_10052498C(v73, v62);
    v105 = sub_100017854(v62);
    sub_1000180EC(v62, &qword_100CA5CF8);
    if (v105 == 1)
    {
      WeatherDataModel.currentWeather.getter();
      CurrentWeather.condition.getter();
      sub_1000179BC();
      v106();
      v107 = v211;
      v108 = v195;
      (*(v210 + 104))(v195, enum case for WeatherCondition.windy(_:), v211);
      v109 = sub_1007488C4(v41, v108);
      v110 = v108;
      v111 = v175;
      v175(v110, v107);
      v111(v41, v107);
      if (v109)
      {
        sub_1000180EC(v73, &qword_100CA5CF8);
        v112 = sub_100028664();
        v113(v112);
        v114 = sub_10001483C();
        sub_10001B350(v114, v115, v116, v79);
      }
    }

    v117 = v205;
    sub_10052498C(v73, v205);
    v118 = sub_100017854(v117);
    sub_1000180EC(v117, &qword_100CA5CF8);
    v119 = v212;
    v120 = v79;
    v121 = v214;
    if (v118 == 1)
    {
      WeatherDataModel.currentWeather.getter();
      sub_10000CC10();
      CurrentWeather.wind.getter();
      sub_1000179BC();
      v122();
      v123 = v202;
      Wind.gust.getter();
      (*(v198 + 8))(enum case for WeatherMapOverlayKind.wind(_:), v199);
      v124 = v201;
      if (sub_100024D10(v123, 1, v201) == 1)
      {
        sub_1000180EC(v123, &qword_100CAEC90);
      }

      else
      {
        sub_10000CC10();
        v126 = v189;
        (*(v125 + 32))(v189, v123, v124);
        Measurement.value.getter();
        v128 = v127;
        enum case for WeatherMapOverlayKind.wind(_:)[1](v126, v124);
        if (v128 > 24.14)
        {
          sub_1000180EC(v73, &qword_100CA5CF8);
          v129 = sub_100028664();
          v130(v129);
          v131 = sub_10001483C();
          sub_10001B350(v131, v132, v133, v79);
        }
      }
    }

    v134 = v206;
    sub_10052498C(v73, v206);
    v135 = sub_1000247E0(v134);
    sub_1000180EC(v134, &qword_100CA5CF8);
    if (v135 == 1 && *(v203 + 16))
    {
      sub_1000180EC(v73, &qword_100CA5CF8);
      (*(v121 + 104))(v73, enum case for WeatherMapPrecipitationOverlayKind.auto(_:), v119);
      v136 = sub_100028664();
      v137(v136);
      v138 = sub_10001483C();
      sub_10001B350(v138, v139, v140, v79);
    }

    v141 = v207;
    sub_10052498C(v73, v207);
    v142 = sub_1000247E0(v141);
    sub_1000180EC(v141, &qword_100CA5CF8);
    v143 = v209;
    if (v142 == 1)
    {
      v144 = v200;
      sub_1001A79EC(v200);
      sub_1000180EC(v73, &qword_100CA5CF8);
      sub_10001B350(v144, 0, 1, v79);
      sub_100282180(v144, v73);
    }

    v145 = v208;
    sub_10052498C(v73, v208);
    if (sub_1000247E0(v145) == 1)
    {
      sub_1000180EC(v145, &qword_100CA5CF8);
LABEL_39:
      v167 = v218;
      goto LABEL_40;
    }

    v146 = (*(v219 + 88))(v145, v79);
    if (v146 != enum case for WeatherMapOverlayKind.precipitation(_:))
    {
      (*(v219 + 8))(v145, v79);
      goto LABEL_39;
    }

    LODWORD(v216) = v146;
    (*(v219 + 96))(v145, v79);
    v147 = v192;
    (*(v121 + 32))(v192, v145, v119);
    v148 = v191;
    v213 = *(v121 + 104);
    v213(v191, enum case for WeatherMapPrecipitationOverlayKind.auto(_:), v119);
    v149 = static WeatherMapPrecipitationOverlayKind.== infix(_:_:)();
    v151 = *(v121 + 8);
    v150 = v121 + 8;
    v152 = v148;
    v153 = v151;
    v151(v152, v119);
    if ((v149 & 1) == 0)
    {
      v153(v147, v119);
      v167 = v218;
LABEL_40:
      v168 = v204;
      sub_10052498C(v73, v204);
      if (sub_1000247E0(v168) == 1)
      {
        sub_1001A79EC(v167);
        sub_1000180EC(v73, &qword_100CA5CF8);
        if (sub_1000247E0(v168) != 1)
        {
          sub_1000180EC(v168, &qword_100CA5CF8);
        }
      }

      else
      {
        sub_1000180EC(v73, &qword_100CA5CF8);
        (*(v219 + 32))(v167, v168, v79);
      }

      goto LABEL_50;
    }

    v220 = v153;
    v214 = v150;
    v154 = v181;
    WeatherDataModel.availability.getter();
    v155 = v184;
    WeatherAvailability.minuteAvailability.getter();
    (*(v182 + 8))(v154, v183);
    sub_10000CC10();
    v157 = v185;
    v158 = v187;
    (*(v156 + 104))(v185);
    v159 = sub_10074A144(v155, v157);
    v160 = *(v147 + 1);
    v160(v157, v158);
    v160(v155, v158);
    if (v159)
    {
      WeatherDataModel.rainExpectation.getter();
      v161 = v179;
      v162 = v143;
      v163 = v178;
      v164 = v180;
      v211 = *(v179 + 104);
      v211(v178, enum case for RainExpectation.nextHour(_:), v180);
      v165 = static RainExpectation.== infix(_:_:)();
      v160 = *(v161 + 8);
      v160(v163, v164);
      v160(v162, v164);
      if (v165)
      {
        sub_100016AC4();
        v166();
        sub_1000180EC(v73, &qword_100CA5CF8);
        v120 = v215;
LABEL_48:
        v170 = &enum case for WeatherMapPrecipitationOverlayKind.radar(_:);
        goto LABEL_49;
      }

      WeatherDataModel.rainExpectation.getter();
      v211(v163, enum case for RainExpectation.now(_:), v164);
      v171 = static RainExpectation.== infix(_:_:)();
      v160(v163, v164);
      v160(v162, v164);
      sub_100016AC4();
      v172();
      sub_1000180EC(v73, &qword_100CA5CF8);
      v120 = v215;
      if (v171)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_100016AC4();
      v169();
      sub_1000180EC(v73, &qword_100CA5CF8);
    }

    v170 = &enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
LABEL_49:
    v173 = v218;
    v213(v218, *v170, v160);
    (*(v219 + 104))(v173, v216, v120);
LABEL_50:
    sub_1000135C8();
    return;
  }

  sub_1000135C8();

  sub_1005230B4(v75);
}

uint64_t sub_10052498C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1005249FC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a2;
  type metadata accessor for WeatherAvailability.AvailabilityKind();
  sub_1000037C4();
  v57 = v7;
  v58 = v6;
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for WeatherAvailability();
  sub_1000037C4();
  v55 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  static Settings.Maps.overrides.getter();
  v19 = dispatch thunk of SettingGroup.isEnabled.getter();

  if (v19)
  {
    sub_1005230B4(a3);
    type metadata accessor for WeatherMapOverlayKind();
    goto LABEL_38;
  }

  v54 = a3;
  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  if (sub_10043D478((v3 + 40)))
  {
    v20 = &enum case for WeatherMapOverlayKind.airQuality(_:);
    goto LABEL_6;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  sub_100037B74();
  String.hash(into:)();
  v24 = Hasher._finalize()();
  v25 = -1 << *(a1 + 32);
  v26 = v24 & ~v25;
  if ((*(a1 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (2)
    {
      switch(*(*(a1 + 48) + v26))
      {
        case 1:

          goto LABEL_42;
        case 2:
          sub_100008844();
          goto LABEL_14;
        case 3:
          sub_100013964();
          goto LABEL_14;
        default:
LABEL_14:
          _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000379AC();
          if (v59)
          {
LABEL_42:
            WeatherDataModel.availability.getter();
            WeatherAvailability.minuteAvailability.getter();
            (*(v55 + 8))(v18, v13);
            v41 = v57;
            v40 = v58;
            (*(v57 + 104))(v10, enum case for WeatherAvailability.AvailabilityKind.available(_:), v58);
            v42 = sub_10074A144(v12, v10);
            v43 = *(v41 + 8);
            v43(v10, v40);
            v43(v12, v40);
            type metadata accessor for WeatherMapPrecipitationOverlayKind();
            sub_1000037E8();
            if (v42)
            {
              v45 = &enum case for WeatherMapPrecipitationOverlayKind.radar(_:);
            }

            else
            {
              v45 = &enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
            }

            v46 = v54;
            (*(v44 + 104))(v54, *v45);
            v47 = enum case for WeatherMapOverlayKind.precipitation(_:);
            v48 = type metadata accessor for WeatherMapOverlayKind();
            sub_1000037E8();
            (*(v49 + 104))(v46, v47, v48);
            sub_10001B350(v46, 0, 1, v48);
            sub_10000536C();
            return;
          }

          v26 = (v26 + 1) & v27;
          if (((*(a1 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  sub_100037B74();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100006084();
  v28 = v54;
  if (v29)
  {
    while (2)
    {
      switch(*(*(a1 + 48) + v13))
      {
        case 1:
          goto LABEL_21;
        case 2:
          sub_100008844();
          goto LABEL_21;
        case 3:
          sub_100013964();
LABEL_21:
          _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000379AC();
          if (v59)
          {
            goto LABEL_47;
          }

          sub_100022D44();
          if ((v30 & 1) == 0)
          {
            break;
          }

          continue;
        default:

LABEL_47:
          v50 = &enum case for WeatherMapOverlayKind.airQuality(_:);
          goto LABEL_50;
      }

      break;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_37;
  }

  sub_100037B74();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100006084();
  v28 = v54;
  if (v31)
  {
    while (2)
    {
      switch(*(*(a1 + 48) + v13))
      {
        case 1:
          sub_10004E694();
          goto LABEL_28;
        case 2:
          sub_100008844();
          goto LABEL_28;
        case 3:

          goto LABEL_49;
        default:
LABEL_28:
          _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000379AC();
          if (v59)
          {
LABEL_49:
            v50 = &enum case for WeatherMapOverlayKind.wind(_:);
LABEL_50:
            v51 = *v50;
            v52 = type metadata accessor for WeatherMapOverlayKind();
            sub_1000037E8();
            (*(v53 + 104))(v28, v51, v52);
            goto LABEL_38;
          }

          sub_100022D44();
          if ((v32 & 1) == 0)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (!*(a1 + 16) || (sub_100037B74(), String.hash(into:)(), Hasher._finalize()(), sub_100006084(), (v33 & 1) == 0))
  {
LABEL_37:
    type metadata accessor for WeatherMapOverlayKind();
    goto LABEL_38;
  }

  while (2)
  {
    switch(*(*(a1 + 48) + v13))
    {
      case 1:
        sub_10004E694();
        goto LABEL_35;
      case 2:

        goto LABEL_52;
      case 3:
        sub_100013964();
        goto LABEL_35;
      default:
LABEL_35:
        _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000379AC();
        if ((v59 & 1) == 0)
        {
          sub_100022D44();
          if ((v34 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }

LABEL_52:
        v20 = &enum case for WeatherMapOverlayKind.temperature(_:);
LABEL_6:
        v21 = *v20;
        v22 = type metadata accessor for WeatherMapOverlayKind();
        sub_1000037E8();
        (*(v23 + 104))(v54, v21, v22);
LABEL_38:
        sub_10000536C();

        sub_10001B350(v35, v36, v37, v38);
        return;
    }
  }
}

uint64_t sub_100525168(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1005251A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10052520C(void *a1)
{
  v2 = v1;
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v145 - v5;
  type metadata accessor for ActivityAction();
  sub_1000037E8();
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 interaction];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 intent];
    type metadata accessor for WeatherIntent();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v148 = v13;
      v16 = [v14 isPredictedLocation];
      sub_100420880();
      v17.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
      if (v16)
      {
        v18 = static NSObject.== infix(_:_:)();

        v17.super.super.isa = v16;
      }

      else
      {
        v18 = 0;
      }

      v23 = [v15 location];
      if (!v23)
      {
        if (qword_100CA2760 != -1)
        {
          sub_10000FAB4();
        }

        v59 = type metadata accessor for Logger();
        sub_10000703C(v59, qword_100D90C78);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        v62 = os_log_type_enabled(v60, v61);
        v63 = v148;
        if (v62)
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "WeatherIntentUserActivityHandler found no location; opening location viewer to current location", v64, 2u);
          sub_100003884();
        }

        sub_1000161C0((v2 + 16), *(v2 + 40));
        swift_storeEnumTagMultiPayload();
        sub_100004464();
        v65 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
        sub_100004464();
        v66 = static VerticalSizingBehaviorKey.defaultValue.getter();
        sub_100366814(v10, v65 & 1, v66 & 1);

        goto LABEL_30;
      }

      v24 = v23;
      v147 = v18;
      v25 = v23;
      v26 = sub_100526894(v25);
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        type metadata accessor for WeatherLocation();
        LOBYTE(v28) = sub_100673BE8(v28, v29);

        if (v28)
        {

          if (qword_100CA2760 != -1)
          {
            sub_10000FAB4();
          }

          v30 = type metadata accessor for Logger();
          sub_10000703C(v30, qword_100D90C78);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          v33 = os_log_type_enabled(v31, v32);
          v34 = v148;
          if (v33)
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "WeatherIntentUserActivityHandler found intent for current location; opening location viewer to current location", v35, 2u);
            sub_100003884();
          }

          sub_1000161C0((v2 + 16), *(v2 + 40));
          swift_storeEnumTagMultiPayload();
          sub_100004464();
          v36 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
          sub_100004464();
          v37 = static VerticalSizingBehaviorKey.defaultValue.getter();
          sub_100366814(v10, v36 & 1, v37 & 1);

LABEL_30:
          sub_10004F888(v10, type metadata accessor for ActivityAction);
          return;
        }
      }

      v38 = [v25 geolocation];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 location];
        if (v40)
        {
          v41 = v40;

          [v41 coordinate];
          v43 = v42;
          v45 = v44;

          if (qword_100CA2760 != -1)
          {
            sub_10000FAB4();
          }

          v46 = type metadata accessor for Logger();
          sub_10000703C(v46, qword_100D90C78);
          v47 = v39;
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v146 = v47;
            v51 = v50;
            v145 = swift_slowAlloc();
            v151[0] = v145;
            *v51 = 141559043;
            *(v51 + 4) = 1752392040;
            *(v51 + 12) = 2081;
            v149 = v43;
            v150 = v45;
            type metadata accessor for CLLocationCoordinate2D(0);
            v52 = String.init<A>(describing:)();
            v54 = sub_100078694(v52, v53, v151);

            *(v51 + 14) = v54;
            *(v51 + 22) = 2160;
            *(v51 + 24) = 1752392040;
            *(v51 + 32) = 2081;
            v55 = sub_1004CE2F8(v146, &selRef_name);
            if (v56)
            {
              v57 = v56;
            }

            else
            {
              v55 = 0xD000000000000014;
              v57 = 0x8000000100ABCAE0;
            }

            v58 = sub_100078694(v55, v57, v151);

            *(v51 + 34) = v58;
            *(v51 + 42) = 1024;
            *(v51 + 44) = v147 & 1;
            _os_log_impl(&_mh_execute_header, v48, v49, "WeatherIntentUserActivityHandler found intent with geolocation; coordinate=%{private,mask.hash}s, locationName=%{private,mask.hash}s, isPredictedLocation=%{BOOL}d", v51, 0x30u);
            swift_arrayDestroy();
            sub_100003884();
            v47 = v146;
            sub_100003884();
          }

          else
          {
          }

          sub_1004CE2F8(v47, &selRef_name);
          v87 = type metadata accessor for Date();
          sub_100008864(v87);
          v88 = Dictionary.init(dictionaryLiteral:)();
          v89 = sub_10001C4D8();
          sub_1002A2C08(v89, v90, v91, v92, v88, 0, v93, v94, v95);

          goto LABEL_49;
        }
      }

      v67 = v25;
      v68 = sub_100526894(v67);
      if (v69)
      {
        v149 = v68;
        v150 = v69;
        sub_10002D5A4();
        v70 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

        if (v70[2] == 3 && (sub_100526820(v70[4], v70[5], v70[6], v70[7], 0x6E6F697461636F4CLL, 0xEA00000000004449) & 1) != 0 && (, v71 = Double.init(_:)(), (v72 & 1) == 0))
        {
          if (v70[2] < 3uLL)
          {
            goto LABEL_72;
          }

          v110 = *&v71;
          v146 = v70[14];

          *&v111 = COERCE_DOUBLE(Double.init(_:)());
          if ((v112 & 1) == 0)
          {
            v113 = v110;
            v114 = *&v111;
            if (qword_100CA2760 != -1)
            {
              sub_10000FAB4();
            }

            v115 = type metadata accessor for Logger();
            sub_10000703C(v115, qword_100D90C78);
            v116 = v67;
            v117 = Logger.logObject.getter();
            v118 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v149 = v120;
              sub_1000102DC(7.2226e-34);
              v121 = sub_1004CE2F8(v116, &selRef_identifier);
              if (v122)
              {
                v123 = v122;
              }

              else
              {
                v121 = 7104878;
                v123 = 0xE300000000000000;
              }

              v124 = sub_100078694(v121, v123, &v149);

              *(v119 + 14) = v124;
              *(v119 + 22) = 1024;
              v125 = v147;
              *(v119 + 24) = v147 & 1;
              sub_1000199B8(&_mh_execute_header, v126, v127, "WeatherIntentUserActivityHandler found intent with ID like 'LocationID:<lat>:<long>'; handling coordinate for locationID=%{private,mask.hash}s, isPredictedLocation=%{BOOL}d");
              sub_100006F14(v120);
              sub_100003884();
              sub_100003884();

              v128 = v148;
            }

            else
            {

              v128 = v148;
              v125 = v147;
            }

            v139 = [v116 displayString];

            v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v142 = v141;

            v143 = type metadata accessor for Date();
            sub_100008864(v143);
            v144 = Dictionary.init(dictionaryLiteral:)();
            sub_1002A2C08(v140, v142, 18, v6, v144, 0, v125 & 1, v113, v114);

            goto LABEL_49;
          }
        }

        else
        {
        }
      }

      v67 = v67;
      v73 = sub_100526894(v67);
      if (!v74)
      {
LABEL_41:

        sub_1005267CC();
        v19 = swift_allocError();
        *v78 = v24;
        *(v78 + 8) = 2;
        swift_willThrow();

        goto LABEL_42;
      }

      v149 = v73;
      v150 = v74;
      sub_10002D5A4();
      v75 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

      if (*(v75 + 16) != 2 || (, v76 = Double.init(_:)(), (v77 & 1) != 0))
      {

        goto LABEL_41;
      }

      v146 = v76;
      if (*(v75 + 16) >= 2uLL)
      {

        Double.init(_:)();
        if (v96)
        {
          goto LABEL_41;
        }

        if (qword_100CA2760 == -1)
        {
LABEL_53:
          v97 = type metadata accessor for Logger();
          sub_10000703C(v97, qword_100D90C78);
          v98 = v67;
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v149 = v102;
            sub_1000102DC(7.2226e-34);
            v103 = sub_1004CE2F8(v98, &selRef_identifier);
            if (v104)
            {
              v105 = v104;
            }

            else
            {
              v103 = 7104878;
              v105 = 0xE300000000000000;
            }

            v106 = sub_100078694(v103, v105, &v149);

            *(v101 + 14) = v106;
            *(v101 + 22) = 1024;
            *(v101 + 24) = v147 & 1;
            sub_1000199B8(&_mh_execute_header, v107, v108, "WeatherIntentUserActivityHandler found intent with ID like '<lat>,<long>'; handling coordinate for locationID=%{private,mask.hash}s, isPredictedLocation=%{BOOL}d");
            sub_100006F14(v102);
            sub_100003884();
            sub_100003884();

            v109 = v148;
          }

          else
          {

            v109 = v148;
          }

          v129 = [v98 displayString];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = type metadata accessor for Date();
          sub_100008864(v130);
          v131 = Dictionary.init(dictionaryLiteral:)();
          v132 = sub_10001C4D8();
          sub_1002A2C08(v132, v133, v134, v135, v131, 0, v136, v137, v138);

LABEL_49:
          sub_1000180EC(v6, &unk_100CB2CF0);
          return;
        }

LABEL_73:
        sub_10000FAB4();
        goto LABEL_53;
      }

      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v21 = [v12 intent];
    sub_1005267CC();
    v19 = swift_allocError();
    *v22 = v21;
    *(v22 + 8) = 0;
    swift_willThrow();
  }

  else
  {
    sub_1005267CC();
    v19 = swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 3;
    swift_willThrow();
  }

LABEL_42:
  if (qword_100CA2760 != -1)
  {
    sub_10000FAB4();
  }

  v79 = type metadata accessor for Logger();
  sub_10000703C(v79, qword_100D90C78);
  swift_errorRetain();
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v149 = v83;
    *v82 = 136446210;
    v151[0] = v19;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220);
    v84 = String.init<A>(describing:)();
    v86 = sub_100078694(v84, v85, &v149);

    *(v82 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v80, v81, "WeatherIntentUserActivityHandler failed to handle user activity; error=%{public}s", v82, 0xCu);
    sub_100006F14(v83);
    sub_100003884();
    sub_100003884();
  }

  else
  {
  }
}

uint64_t sub_100526070(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for WeatherIntentType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100526130, 0, 0);
}

uint64_t sub_100526130()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for WeatherIntentType.openUnitsConfiguration(_:))
  {
    type metadata accessor for MainActor();
    v0[8] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1005263E0;
LABEL_5:

    return _swift_task_switch(v8, v5, v7);
  }

  if (v4 == enum case for WeatherIntentType.openNotificationsConfiguration(_:))
  {
    type metadata accessor for MainActor();
    v0[7] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1005262D0;
    goto LABEL_5;
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005262D0()
{
  v1 = *(v0 + 24);

  sub_10052648C(v1);

  return _swift_task_switch(sub_10052637C, 0, 0);
}

uint64_t sub_10052637C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005263E0()
{
  v1 = *(v0 + 24);

  sub_100526598(v1);

  return _swift_task_switch(sub_1005269CC, 0, 0);
}

uint64_t sub_10052648C(uint64_t a1)
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 64);
  type metadata accessor for NotificationsAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_1000180EC(v7, &unk_100CD81B0);
  return sub_10004F888(v4, type metadata accessor for MainAction);
}

uint64_t sub_100526598(uint64_t a1)
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 64);
  *v4 = 1;
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_1000180EC(v7, &unk_100CD81B0);
  return sub_10004F888(v4, type metadata accessor for MainAction);
}

uint64_t sub_100526688()
{
  sub_100006F14(v0 + 16);

  return v0;
}

uint64_t sub_1005266B8()
{
  sub_100526688();

  return swift_deallocClassInstance();
}

uint64_t sub_100526734(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000926F8;

  return sub_100526070(a1);
}

unint64_t sub_1005267CC()
{
  result = qword_100CC3C80[0];
  if (!qword_100CC3C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC3C80);
  }

  return result;
}

uint64_t sub_100526820(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a3 == a5 && a4 == a6;
  if (v7 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_100526894(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100526904(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100526920(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100526960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1005269A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1005269D0()
{
  sub_1002B5AAC();
  v0 = static NSNumberFormatter.percent.getter();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v2 = [v0 stringFromNumber:isa];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = Double._bridgeToObjectiveC()().super.super.isa;
  v7 = [v0 stringFromNumber:v6];

  if (!v7)
  {
    if (!v5)
    {
LABEL_17:

      return 1;
    }

    goto LABEL_13;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v5)
  {
    if (v10)
    {
      if (v3 != v8 || v5 != v10)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v12 & 1;
      }

      goto LABEL_17;
    }

LABEL_13:

LABEL_15:

    return 0;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_100526B70()
{
  if ((v0[80] & 1) != 0 || (v0[81] & 1) == 0)
  {
    if (v0[82])
    {
      v1 = 0;
    }

    else
    {
      v1 = v0[32] ^ 1;
    }
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_100526BA8@<X0>(uint64_t a1@<X8>)
{
  sub_100526F5C(v1, __src);
  type metadata accessor for MainActor();
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __src, 0x68uLL);
  sub_100526F5C(v1, __src);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  memcpy(v6 + 4, __src, 0x68uLL);
  Binding.init(get:set:)();
  sub_10022C350(&qword_100CB8160);
  sub_100422844();
  Toggle.init(isOn:label:)();
  v7 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_10022C350(&qword_100CC3D28) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  LOBYTE(v7) = sub_100526B70();
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v7 & 1;
  result = sub_10022C350(&qword_100CC3D30);
  v13 = (a1 + *(result + 36));
  *v13 = v10;
  v13[1] = sub_100168F20;
  v13[2] = v11;
  return result;
}

uint64_t sub_100526DB8@<X0>(_BYTE *a1@<X8>)
{
  sub_10022C350(&qword_100CA5A80);
  result = State.wrappedValue.getter();
  if (v4 == 1)
  {
    result = sub_100526B70();
    v3 = result ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3 & 1;
  return result;
}

void sub_100526E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  sub_1000161C0((a4 + 40), *(a4 + 64));
  sub_100514E68();
}

uint64_t sub_100526ED0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = 256;
  return result;
}

unint64_t sub_100526FAC()
{
  result = qword_100CC3D38;
  if (!qword_100CC3D38)
  {
    sub_10022E824(&qword_100CC3D30);
    sub_100527064();
    sub_100006F64(&qword_100CA6F10, &qword_100CA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC3D38);
  }

  return result;
}

unint64_t sub_100527064()
{
  result = qword_100CC3D40;
  if (!qword_100CC3D40)
  {
    sub_10022E824(&qword_100CC3D28);
    sub_100006F64(&qword_100CC3D48, qword_100CC3D50);
    sub_100006F64(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC3D40);
  }

  return result;
}

void sub_100527148(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    __chkstk_darwin(a1);
    v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v4 != i; ++i)
    {
      *&v6[8 * i] = *((*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  if (v3 <= 0x3F)
  {
    v10[14] = 0;
    v11 = TupleTypeMetadata;
    sub_10014F9F8();
    if (v9 <= 0x3F)
    {
      v10[15] = 0;
      v12 = v8;
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100527290()
{
  swift_allocateMetadataPack();
  swift_allocateWitnessTablePack();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100527304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  sub_100007FD0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA3EE8);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_10052978C(v2 + *(a1 + 44), &v17 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Font.Context();
    sub_1000037E8();
    return (*(v14 + 32))(a2, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_1005274D8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v6 = *(v5 + 24);
  v7 = 8 * v6;
  v69 = v9;
  v70 = v8;
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v4;
  if (v6 == 1)
  {
    TupleTypeMetadata = *(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(v3);
    for (i = 0; v6 != i; ++i)
    {
      *(&v52 + 8 * i - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v68 = &v52;
  sub_100007FD0();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = &v52;
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  v20 = *(a1 + 24);
  v21 = sub_10022E824(&qword_100CBD8C8);
  v57 = a1;
  v22 = *(a1 + 32);
  v23 = sub_1005284D4();
  v74 = v6;
  v75 = v20;
  v72 = v20;
  v60 = v21;
  v76 = v21;
  v77 = v22;
  v58 = v22;
  v56 = v23;
  v78 = v23;
  v24 = type metadata accessor for SizeFittingCanvasViewLayoutContainer();
  v62 = &v52;
  sub_100007FD0();
  v61 = v25;
  __chkstk_darwin(v26);
  v53 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = &v52;
  __chkstk_darwin(v28);
  v55 = &v52 - v29;
  v54 = &v52;
  v31 = __chkstk_darwin(v30);
  v71 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v13;
  v32 = *(v13 + 16);
  v66 = v1;
  v73 = TupleTypeMetadata;
  v32(v16, v1, TupleTypeMetadata, v31);
  if (v6)
  {
    v33 = (v72 & 0xFFFFFFFFFFFFFFFELL);
    v34 = (v73 + 32);
    v35 = v71;
    v36 = v6;
    do
    {
      if (v6 == 1)
      {
        v37 = 0;
        v38 = v19;
      }

      else
      {
        v37 = *v34;
        v38 = &v19[v37];
      }

      v39 = *v33++;
      (*(*(v39 - 8) + 16))(v38, &v16[v37]);
      *v35++ = v38;
      v34 += 4;
      --v36;
    }

    while (v36);
  }

  v40 = v69;
  v41 = v67;
  v42 = v57;
  (*(v69 + 16))(v67, v66, v57);
  v43 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v6;
  v45 = v72;
  *(v44 + 3) = swift_allocateMetadataPack();
  v46 = v58;
  *(v44 + 4) = swift_allocateWitnessTablePack();
  (*(v40 + 32))(&v44[v43], v41, v42);
  v47 = v53;
  sub_1005281AC(v71, sub_100528550, v44, v6, v45, v60, v46, v56, v53);
  (*(v63 + 8))(v16, v73);
  sub_1000102F8();
  WitnessTable = swift_getWitnessTable();
  v49 = v55;
  sub_1000833D8(v47, v24, WitnessTable);
  v50 = *(v61 + 8);
  v50(v47, v24);
  sub_1000833D8(v49, v24, WitnessTable);
  return (v50)(v49, v24);
}

uint64_t sub_100527A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[1] = a3;
  v19 = a4;
  v18 = type metadata accessor for ColorRenderingMode();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SizeFittingCanvasView();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v17 - v12;
  (*(v10 + 16))(v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = swift_allocateMetadataPack();
  *(v15 + 4) = swift_allocateWitnessTablePack();
  (*(v10 + 32))(&v15[v14], v13, v9);
  (*(v6 + 104))(v8, enum case for ColorRenderingMode.nonLinear(_:), v18);
  return Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
}

uint64_t sub_100527C58(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v11 = TupleTypeMetadata;
  v49 = a5;
  v50 = a2;
  if (a3 == 1)
  {
    v12 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a3 != i; ++i)
    {
      *&v14[8 * i] = *((a4 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = TupleTypeMetadata;
  }

  v16 = *(v12 - 8);
  __chkstk_darwin(TupleTypeMetadata);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CanvasContentMeasurementContext(0);
  v47[1] = v47;
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = (v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *v11;
  v24 = *(v20 + 28);
  v25 = type metadata accessor for SizeFittingCanvasView();
  v47[0] = a4;
  v26 = v25;

  v27 = v50;
  sub_100527304(v26, v22 + v24);
  *v22 = v23;
  v28 = *(v20 + 32);
  v51 = v22;
  v52 = v18;
  v29 = (v22 + v28);
  *v29 = a6;
  v29[1] = a7;
  v53 = 0;
  v48 = v16;
  v30 = *(v16 + 16);
  v50 = v12;
  v31 = v30(v18, v27, v12);
  if (a3)
  {
    v32 = a3;
    v33 = (v47[0] & 0xFFFFFFFFFFFFFFFELL);
    v34 = (v49 & 0xFFFFFFFFFFFFFFFELL);
    v35 = v50 + 32;
    v36 = a3;
    do
    {
      v37 = v32;
      v39 = *v33++;
      v38 = v39;
      v40 = *v34++;
      v41 = *(v38 - 8);
      v42 = __chkstk_darwin(v31);
      v44 = v47 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44, &v52[v45], v38, v42);
      sub_100527FCC(v51, &v53, v38, v40);
      v31 = (*(v41 + 8))(v44, v38);
      v35 += 16;
      --v36;
      v32 = v37;
    }

    while (v36);
  }

  sub_100529B34(v51, type metadata accessor for CanvasContentMeasurementContext);
  return (*(v48 + 8))(v52, v50);
}

void sub_100527FCC(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for MeasuredCanvasContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  if ((*a2 & 1) == 0)
  {
    (*(a4 + 32))(a1, a3, a4, v10);
    v13 = (a1 + *(type metadata accessor for CanvasContentMeasurementContext(0) + 24));
    v14 = *v13;
    v15 = v13[1];
    if (sub_100624884(v8, *v13, v15))
    {
      (*(a4 + 40))(*a1, v12, a3, a4, v14, v15);
      (*(v9 + 8))(v12, v8);
      *a2 = 1;
    }

    else
    {
      (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_1005281AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = a4;
  v42 = a9;
  v43 = a1;
  v40 = a2;
  v41 = a3;
  if (a4 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(a1);
    for (i = 0; v13 != i; ++i)
    {
      *(&v39 + 8 * i - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a5 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v45 = TupleTypeMetadata;
  v17 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(TupleTypeMetadata);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v13;
  v47 = a5;
  v44 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v20 = type metadata accessor for SizeFittingCanvasViewLayoutContainer();
  v39 = &v39;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v39 - v22;
  v25 = *(v24 + 64);
  *(&v39 + v25 - v22) = swift_getKeyPath();
  sub_10022C350(&qword_100CA3EE8);
  swift_storeEnumTagMultiPayload();
  if (v13)
  {
    v26 = (v44 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v45 + 32);
    v28 = v43;
    v29 = v13;
    do
    {
      if (v13 == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = *v27;
      }

      v32 = *v26++;
      v31 = v32;
      v33 = *v28++;
      (*(*(v31 - 8) + 16))(&v19[v30], v33);
      v27 += 4;
      --v29;
    }

    while (v29);
  }

  (*(v17 + 32))(v23, v19, v45);
  v34 = &v23[*(v20 + 60)];
  v35 = v41;
  *v34 = v40;
  *(v34 + 1) = v35;
  result = (*(v21 + 32))(v42, v23, v20);
  if (v13)
  {
    v37 = (v44 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v38 = v43 - 1;
    do
    {
      result = (*(*(*(v37 + 8 * v13) - 8) + 8))(v38[v13]);
      --v13;
    }

    while (v13);
  }

  return result;
}

unint64_t sub_1005284D4()
{
  result = qword_100CBD8F0;
  if (!qword_100CBD8F0)
  {
    sub_10022E824(&qword_100CBD8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD8F0);
  }

  return result;
}

uint64_t sub_100528550()
{
  sub_100028674();
  type metadata accessor for SizeFittingCanvasView();
  sub_100028674();

  return sub_100527A2C(v0, v1, v2, v3);
}

uint64_t sub_1005285E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA3EE8);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10052978C(v2 + *(a1 + 64), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Font.Context();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1005287CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v7 = type metadata accessor for SizeFittingCanvasViewLayout();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for _LayoutRoot();
  v10 = a1[4];
  swift_getWitnessTable();
  v66 = v10;
  v11 = type metadata accessor for _VariadicView.Tree();
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v14 = 8 * v4;
  v75 = TupleTypeMetadata;
  v76 = a2;
  v74 = v15;
  v70 = &v56 - v16;
  v71 = v9;
  v68 = v17;
  v69 = v6;
  v77 = v5;
  v67 = WitnessTable;
  if (v4 == 1)
  {
    v18 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    for (i = 0; v4 != i; ++i)
    {
      *(&v56 + 8 * i - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v18 = TupleTypeMetadata;
  }

  v65 = &v56;
  v20 = *(v18 - 8);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = &v56;
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  v26 = type metadata accessor for Font.Context();
  v63 = &v56;
  __chkstk_darwin(v26 - 8);
  v62 = &v56;
  v73 = v7;
  v59 = *(v7 - 8);
  __chkstk_darwin(v27);
  v58 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v29;
  v72 = a1;
  v30 = v78;
  v31 = sub_1005285E0(a1, v29);
  v61 = &v56;
  v32 = __chkstk_darwin(v31);
  v33 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = v20;
  v34 = v30;
  v35 = v18;
  (*(v20 + 16))(v22, v34, v18, v32);
  if (v4)
  {
    v36 = (v77 & 0xFFFFFFFFFFFFFFFELL);
    v37 = (v18 + 32);
    v38 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = v4;
    do
    {
      if (v4 == 1)
      {
        v40 = 0;
        v41 = v25;
      }

      else
      {
        v40 = *v37;
        v41 = &v25[v40];
      }

      v42 = *v36++;
      (*(*(v42 - 8) + 16))(v41, &v22[v40]);
      *v38++ = v41;
      v37 += 4;
      --v39;
    }

    while (v39);
  }

  v43 = v58;
  v44 = v77;
  v45 = v69;
  sub_100528DC0(v57, v33, v4, v77, v69, v58);
  v46 = (*(v60 + 8))(v22, v35);
  __chkstk_darwin(v46);
  *(&v56 - 6) = v4;
  *(&v56 - 5) = v44;
  *(&v56 - 4) = v66;
  *(&v56 - 3) = v45;
  v47 = v73;
  v48 = v72[6];
  v49 = v78;
  *(&v56 - 2) = v48;
  *(&v56 - 1) = v49;
  v50 = v68;
  sub_1005DE46C();
  (*(v59 + 8))(v43, v47);
  v79 = swift_getWitnessTable();
  v80 = v48;
  v51 = v75;
  v52 = swift_getWitnessTable();
  v53 = v70;
  sub_1000833D8(v50, v51, v52);
  v54 = *(v74 + 8);
  v54(v50, v51);
  sub_1000833D8(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_100528DC0@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28[0] = TupleTypeMetadata;
  v28[1] = a5;
  if (a3 == 1)
  {
    v10 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a3 != i; ++i)
    {
      *&v12[8 * i] = *((a4 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v14 = *(v10 - 8);
  v15 = __chkstk_darwin(TupleTypeMetadata);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v18 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v19 = (v10 + 32);
    v20 = a3;
    do
    {
      if (a3 == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = *v19;
      }

      v23 = *v18++;
      v22 = v23;
      v24 = *a2++;
      (*(*(v22 - 8) + 32))(&v17[v21], v24, v15);
      v19 += 4;
      --v20;
    }

    while (v20);
  }

  v25 = type metadata accessor for Font.Context();
  (*(*(v25 - 8) + 32))(a6, v28[0], v25);
  v26 = type metadata accessor for SizeFittingCanvasViewLayout();
  return (*(v14 + 32))(a6 + *(v26 + 44), v17, v10);
}

uint64_t sub_100528FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v20 = type metadata accessor for SizeFittingCanvasViewLayoutContainer();
  (*(a1 + *(v20 + 60)))();
  sub_1000833D8(v11, a4, a6);
  v21 = *(v9 + 8);
  v21(v11, a4);
  sub_1000833D8(v14, a4, a6);
  return (v21)(v14, a4);
}

double sub_100529138(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v46 = type metadata accessor for CanvasContentSizeEstimationContext(0);
  __chkstk_darwin(v46);
  v14 = (v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a7[2];
  if (v15 == 1)
  {
    v16 = *(a7[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; v15 != i; ++i)
    {
      *&v18[8 * i] = *((a7[3] & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16 = TupleTypeMetadata;
  }

  v43[1] = v43;
  __chkstk_darwin(TupleTypeMetadata);
  if (a2)
  {
    v22 = 10.0;
  }

  else
  {
    v22 = *&a1;
  }

  if (a4)
  {
    v23 = 10.0;
  }

  else
  {
    v23 = *&a3;
  }

  v43[0] = v21;
  v24 = *(v21 + 16);
  v47 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24();
  v44 = v16;
  if (v15)
  {
    v26 = (a7[3] & 0xFFFFFFFFFFFFFFFELL);
    v27 = (a7[4] & 0xFFFFFFFFFFFFFFFELL);
    v28 = v16 + 32;
    v29 = v15;
    v45 = v15;
    do
    {
      v49 = v43;
      v31 = *v26++;
      v30 = v31;
      v32 = *v27++;
      v33 = *(v30 - 8);
      v34 = __chkstk_darwin(v25);
      v36 = v43 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v36, &v47[v37], v30, v34);
      v38 = *(v46 + 20);
      v39 = type metadata accessor for Font.Context();
      (*(*(v39 - 8) + 16))(v14 + v38, v48, v39);
      *v14 = v22;
      v14[1] = v23;
      (*(v32 + 24))(v14, v30, v32);
      if (v23 <= v41)
      {
        v23 = v41;
      }

      if (v22 <= v40)
      {
        v22 = v40;
      }

      sub_100529B34(v14, type metadata accessor for CanvasContentSizeEstimationContext);
      v25 = (*(v33 + 8))(v36, v30);
      v28 += 16;
      --v29;
    }

    while (v29);
  }

  (*(v43[0] + 8))(v47, v44);
  return v22;
}

uint64_t sub_1005294F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for LayoutSubview();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  v11[8] = a2 & 1;
  v11[0] = a4 & 1;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v7 + 8))(v9, v6);
}

void (*sub_100529668(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_1005296DC(uint64_t a1, double a2, double a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  sub_100028674();
  v10 = *(type metadata accessor for SizeFittingCanvasView() - 8);
  v11 = v3 + ((*(v10 + 80) + 40) & ~*(v10 + 80));

  return sub_100527C58(a1, v11, v7, v8, v9, a2, a3);
}

uint64_t sub_10052978C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1005297FC(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    __chkstk_darwin(a1);
    v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v4 != i; ++i)
    {
      *&v6[8 * i] = *((*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  if (v3 <= 0x3F)
  {
    v12[5] = 0;
    v13 = TupleTypeMetadata;
    v8 = sub_10013DB50();
    if (v9 <= 0x3F)
    {
      v12[6] = 0;
      v14 = v8;
      sub_10014F9F8();
      if (v11 <= 0x3F)
      {
        v12[7] = 0;
        v15 = v10;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100529944()
{
  swift_allocateMetadataPack();
  swift_allocateWitnessTablePack();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1005299E8(uint64_t a1)
{
  result = type metadata accessor for Font.Context();
  if (v3 <= 0x3F)
  {
    v9[14] = 0;
    v10 = result;
    if (*(a1 + 16) == 1)
    {
      result = swift_checkMetadataState();
    }

    else
    {
      __chkstk_darwin(result);
      v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
      for (i = 0; v5 != i; ++i)
      {
        *&v7[8 * i] = *((*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
      }

      result = swift_getTupleTypeMetadata();
    }

    if (v4 <= 0x3F)
    {
      v9[15] = 0;
      v11 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100529B34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100529B90()
{
  sub_10002B028(*(v0 + 24));
  sub_100529BF4(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100529BF4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC3F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100529C5C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v15 = a1;
  v6 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  sub_1000302D8(v4, &v14 - v10, &unk_100CE49F0);
  if (sub_100024D10(v11, 1, v6) == 1)
  {
    v12 = type metadata accessor for ListLocationViewModel(0);
    return sub_10001B350(a2, 1, 1, v12);
  }

  else
  {
    sub_100113754(v11, v8, &type metadata accessor for CurrentLocation);
    v15(v8);
    result = sub_100533554(v8, &type metadata accessor for CurrentLocation);
    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100529E20(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  while (1)
  {
    if (v5 == v4)
    {
      return 0;
    }

    v6 = *(type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0) - 8);
    if (sub_1001D1BB8(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a1))
    {
      break;
    }

    ++v4;
  }

  return v4;
}

uint64_t sub_100529EE0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    type metadata accessor for Location.Identifier();
    sub_1001150CC(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

uint64_t sub_100529FFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CC3788);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___listAnimationKind;
  swift_beginAccess();
  sub_1000302D8(v2 + v10, v9, &qword_100CC3788);
  v11 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  if (sub_100024D10(v9, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  sub_1000180EC(v9, &qword_100CC3788);
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.listAnimationKind.getter();

  sub_1001150CC(&qword_100CC41A0, type metadata accessor for ListViewModelFactory);
  Configurable.setting<A>(_:)();

  (*(*(v11 - 8) + 16))(v6, a1, v11);
  sub_10001B350(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10053347C(v6, v2 + v10, &qword_100CC3788);
  return swift_endAccess();
}

uint64_t sub_10052A278()
{
  v1 = OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___allListVfxBackgroundsEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___allListVfxBackgroundsEnabled);
  if (v2 == 2)
  {
    static Settings.VFX.allListVfxBackgroundsEnabled.getter();
    sub_1001150CC(&qword_100CC41A0, type metadata accessor for ListViewModelFactory);
    Configurable.setting<A>(_:)();

    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

uint64_t sub_10052A344()
{
  v1 = (v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___listVfxCellsEnabled);
  if (*(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___listVfxCellsEnabled + 8) != 1)
  {
    return *v1;
  }

  static Settings.VFX.listVfxCellsEnabled.getter();
  sub_1001150CC(&qword_100CC41A0, type metadata accessor for ListViewModelFactory);
  Configurable.setting<A>(_:)();

  result = v3;
  *v1 = v3;
  v1[8] = 0;
  return result;
}

void sub_10052A41C()
{
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v1 = UnitManager.temperature.getter();

  v2 = *(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedByCachedModel);
  *(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedByCachedModel) = v1;
}

uint64_t sub_10052A488(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Weather20ListViewModelFactory_cachedModel;
  swift_beginAccess();
  sub_1005334C8(a1, v1 + v3);
  swift_endAccess();
  sub_10052A41C();
  return sub_1000180EC(a1, &qword_100CA4C30);
}

uint64_t sub_10052A504()
{
  if (static Settings.HomeAndWork.homeAndWorkLabelEnabled.getter())
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_forceDisplayHomeAndWorkUI);
  }
}

uint64_t sub_10052A534@<X0>(uint64_t a1@<X0>, char a2@<W1>, BOOL *a3@<X8>)
{
  v6 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100529FFC(v9);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:))
  {
    *a3 = (sub_10052A278() & 1) != 0 || (a2 & 1) == 0 && sub_10052A344() > a1;
    v16 = enum case for BackgroundAnimationKind.vfx(_:);
    v17 = type metadata accessor for BackgroundAnimationKind();
    return (*(*(v17 - 8) + 104))(a3, v16, v17);
  }

  else
  {
    v11 = v10;
    v12 = enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.mica(_:);
    v13 = enum case for BackgroundAnimationKind.mica(_:);
    v14 = type metadata accessor for BackgroundAnimationKind();
    result = (*(*(v14 - 8) + 104))(a3, v13, v14);
    if (v11 != v12)
    {
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_10052A714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v386 = a1;
  v387 = a2;
  v375 = type metadata accessor for LearnMoreAttributorViewModel();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_100003918(v5);
  v363 = type metadata accessor for LazyOptions();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for ProviderAttributionConfiguration();
  v9 = sub_100003E5C(v8, v397);
  v373 = v10;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v11);
  v389 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003990(v13);
  v14 = sub_10022C350(&qword_100CB3AB0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_10000E70C();
  sub_100003918(v17);
  v18 = type metadata accessor for AppConfiguration();
  v19 = sub_100003E5C(v18, &v400);
  v383 = v20;
  __chkstk_darwin(v19);
  sub_100003990(&v347[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v360 = v22;
  __chkstk_darwin(v23);
  sub_10000E70C();
  sub_100003990(v24);
  v25 = sub_10022C350(&unk_100CE49F0);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003918(v29);
  v30 = type metadata accessor for Date();
  v31 = sub_100003E5C(v30, &v399);
  v380 = v32;
  __chkstk_darwin(v31);
  sub_1000038E4();
  sub_100003990(v33);
  v34 = sub_10022C350(&qword_100CA3588);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  sub_100003918(v36);
  v37 = type metadata accessor for LocationModel();
  v38 = sub_100003E5C(v37, v394);
  v359 = v39;
  __chkstk_darwin(v38);
  sub_1000038E4();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CC4158);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  v45 = &v347[-v44];
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CB0250);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CBC9A8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003990(v54);
  v55 = sub_10022C350(&qword_100CA4C30);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  v59 = &v347[-v58];
  v60 = type metadata accessor for ListViewModel();
  sub_1000037E8();
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_10000E70C();
  v64 = v63;
  v65 = sub_10022C350(&qword_100CC4160);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  v69 = &v347[-v68];
  v70 = type metadata accessor for OSSignpostID();
  v71 = sub_100003E5C(v70, v398);
  v377 = v72;
  __chkstk_darwin(v71);
  sub_1000037D8();
  v75 = v74 - v73;
  v76 = type metadata accessor for ListInput(0);
  v77 = sub_100003810(v76);
  __chkstk_darwin(v77);
  sub_1000037D8();
  v78 = sub_1000115E8();
  v79 = type metadata accessor for ActualListInput(v78);
  sub_1000037E8();
  __chkstk_darwin(v80);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_10004E424();
  sub_1001113A0(v386, v2, type metadata accessor for ListInput);
  sub_1000038B4(v2, 1, v79);
  if (v94)
  {
    sub_100533554(v2, type metadata accessor for ListInput);
    sub_100003934();
    return sub_10001B350(v82, v83, v84, v60);
  }

  v365 = v60;
  sub_10003BE08();
  v86 = v2;
  v87 = v3;
  sub_100113754(v86, v3, v88);
  v89 = v391;
  v90 = *(v391 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_logger);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v351 = v90;
  os_signpost(_:dso:log:name:signpostID:)();
  v91 = v89 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_cachedInput;
  sub_100003CD0();
  swift_beginAccess();
  v350 = v91;
  sub_1000302D8(v91, v69, &qword_100CC4160);
  v92 = sub_10000C7F0();
  sub_1000038B4(v92, v93, v79);
  v95 = v79;
  v352 = v75;
  if (v94)
  {
    v96 = &qword_100CC4160;
    v97 = v69;
LABEL_10:
    v105 = sub_1000180EC(v97, v96);
LABEL_11:
    v106 = v87;
    goto LABEL_12;
  }

  sub_10003BE08();
  sub_10003778C();
  sub_100113754(v98, v99, v100);
  v101 = OBJC_IVAR____TtC7Weather20ListViewModelFactory_cachedModel;
  v102 = v391;
  sub_100003CD0();
  swift_beginAccess();
  sub_1000302D8(v102 + v101, v59, &qword_100CA4C30);
  sub_1000038B4(v59, 1, v365);
  if (v103)
  {
    sub_100014868();
    sub_100533554(v79, v104);
    v96 = &qword_100CA4C30;
    v97 = v59;
    goto LABEL_10;
  }

  sub_1000247F8();
  v158 = v64;
  sub_100113754(v59, v64, v159);
  v160 = v79[11];
  if (*(v79 + v160) != 1 || *(v87 + v160) != 1)
  {
    sub_100022D60();
    sub_100533554(v64, v274);
    sub_100014868();
    v105 = sub_100533554(v79, v275);
    goto LABEL_11;
  }

  v161 = v79[31];
  v162 = *(v87 + v161);
  v106 = v87;
  if (v162 != *(v79 + v161))
  {
LABEL_27:
    sub_100022D60();
    sub_100533554(v158, v163);
    sub_100014868();
    v105 = sub_100533554(v79, v164);
    goto LABEL_12;
  }

  v87 = *(v391 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedByCachedModel);
  v276 = *(v391 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_temperatureUnitUsedToPreprocess);
  if (v87)
  {
    if (!v276)
    {
      goto LABEL_27;
    }

    sub_10000F868();
    v277 = v276;
    v87 = v87;
    v278 = static NSObject.== infix(_:_:)();

    if ((v278 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v276)
  {
    goto LABEL_27;
  }

  LODWORD(v386) = v162;
  v87 = v79[14];
  v279 = *(v52 + 48);
  sub_10003778C();
  sub_1000302D8(v280, v281, &qword_100CB0250);
  sub_1000302D8(v79 + v87, v79 + v279, &qword_100CB0250);
  v282 = type metadata accessor for SearchViewState.ViewState(0);
  v283 = sub_1000131C4();
  sub_1000038B4(v283, v284, v282);
  if (!v94)
  {
    sub_10003778C();
    sub_1000302D8(v285, v286, v287);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_45:
      sub_100533554(v79, type metadata accessor for SearchViewState.ViewState);
      goto LABEL_46;
    }

    sub_1000038B4(v79 + v279, 1, v282);
    if (!v94)
    {
      sub_10003778C();
      sub_1000302D8(v288, v289, v290);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_100022D60();
        sub_100533554(v158, v291);
        sub_100014868();
        sub_100533554(v367, v292);
        sub_1000180EC(v79 + v279, &qword_100CB0250);
        v105 = sub_1000180EC(v79, &qword_100CB0250);
LABEL_12:
        v107 = v106 + v79[10];
        v355 = *v107;
        v108 = *(v107 + 8);
        __chkstk_darwin(v105);
        v386 = v109;
        sub_100071518();
        sub_100529C5C(v110, v111);
        sub_1000302D8(v87, v45, &qword_100CC4158);
        v112 = type metadata accessor for ListLocationViewModel(0);
        v113 = sub_100024D10(v45, 1, v112);
        v114 = sub_100003940();
        v116 = sub_1000180EC(v114, v115);
        v117 = v368;
        if (v113 == 1 && *(v106 + v79[24]) - 1 <= 1)
        {
          sub_10022C350(&qword_100CA38C0);
          v118 = v358;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for LocationOfInterest();
          v367 = 0;
          sub_100003934();
          sub_10001B350(v119, v120, v121, v122);
          LocationModelData.init(locationOfInterest:isPredictedLocation:)();
          sub_1000371B0();
          v124 = v366;
          (*(v123 + 104))(v118);
          v346 = *(v106 + v95[32]);
          v345 = *(v106 + v95[35]);
          v344 = *(v106 + v95[28]);
          v343 = *(v106 + v95[30] + 16);
          sub_1000184C0();
          sub_10052CECC(v118, v125, v126, v127, v128, v343, v106, v344, v108, 1u, 0, 0, v345, v346);
          MEMORY[0](v118, v124);
          v129 = sub_100003A80();
          sub_1000180EC(v129, v130);
          v131 = sub_10000FEF4();
          sub_10001B350(v131, v132, v133, v112);
          v134 = sub_1000370B0();
          v116 = sub_10011C0F0(v134, v135, &qword_100CC4158);
        }

        __chkstk_darwin(v116);
        sub_100003F28();
        v136 = v391;
        *(v137 - 16) = v391;
        *(v137 - 8) = v106;
        sub_100744F94();
        v359 = v138;
        v139 = sub_10052FF68(v108, v138, v106);
        __chkstk_darwin(v139);
        sub_1008EF358();
        v367 = v140;

        sub_100035B30(v136 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_notificationsOptInStatusFactory, &v395);
        v353 = v397[1];
        v357 = v397[0];
        v358 = sub_1000161C0(&v395, v397[0]);
        v141 = v95[20];
        v356 = *(v106 + v95[19]);
        v354 = *(v106 + v141);
        (*(v380 + 16))(v379, v106 + v95[21], v381);
        v142 = v95[25];
        LODWORD(v366) = *(v106 + v95[24]);
        v348 = *(v106 + v142);
        v143 = *(v106 + v95[30] + 16);
        sub_1000302D8(v106 + v386, v117, &unk_100CE49F0);
        sub_1000038B4(v117, 1, v389);
        if (v94)
        {
          sub_1000180EC(v117, &unk_100CE49F0);
        }

        else
        {
          CurrentLocation.id.getter();
          sub_10001C50C();
          sub_100533554(v117, v144);
        }

        LODWORD(v368) = v108;
        sub_1000C8364();
        sub_100141E5C();
        v146 = v145;

        v147 = v369;
        sub_1000302D8(v106 + v386, v369, &unk_100CE49F0);
        sub_1000038B4(v147, 1, v389);
        if (v94)
        {
          sub_1000180EC(v147, &unk_100CE49F0);
          v148 = 0;
        }

        else
        {
          v148 = CurrentLocation.id.getter();
          sub_10001C50C();
          sub_100533554(v147, v149);
        }

        sub_1000C8364();
        sub_100141E74();
        v151 = v150;

        v152 = *(v106 + v95[22]);
        v153 = *(v353 + 8);
        LODWORD(v369) = *(v106 + v95[17]) | (*(v106 + v95[17] + 2) << 16);
        v154 = v379;
        v155 = v153(v356, v354, v379, v366, v348, v146 & 1, v151 & 1, v152, v369, v357, v353);
        sub_10000E73C();
        v156(v154, v381);
        sub_100006F14(&v395);
        if (*(v106 + v95[32]) == 1)
        {
          sub_1000526A4();
        }

        else
        {
          sub_1000526A4();
          if (v155)
          {
            v157 = *(v106 + v95[23]) == 1;
          }
        }

        LODWORD(v381) = v157;
        v165 = *(v391 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_appConfigurationManager + 32);
        sub_1000161C0((v391 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_appConfigurationManager), *(v391 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_appConfigurationManager + 24));
        sub_10002C810();
        dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
        sub_100530664(v106, v388);
        v379 = v106;
        sub_1000113EC();
        sub_1000302D8(v166, v167, v168);
        v169 = sub_10000C7F0();
        sub_1000038B4(v169, v170, v389);
        v349 = v95;
        if (v94)
        {
          sub_1000180EC(v155, &unk_100CE49F0);
          v171 = v361;
          (*(v146 + 16))(v361, v148, v143);
          v172 = (*(v146 + 80) + 16) & ~*(v146 + 80);
          v173 = swift_allocObject();
          (*(v146 + 32))(v173 + v172, v171, v143);
          *&v395 = _swiftEmptyArrayStorage;
          sub_1001150CC(&qword_100CC4168, &type metadata accessor for LazyOptions);
          sub_10022C350(&qword_100CC4170);
          sub_10003EB4C();
          sub_1000184C0();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_10022C350(&qword_100CC4180);
          swift_allocObject();
          v185 = Lazy.init(options:loadBlock:)();
          v184 = v374;
          v183 = v373;
          v165 = v372;
        }

        else
        {
          sub_1000214F8();
          v174 = v362;
          sub_100113754(v155, v362, v175);
          CurrentLocation.coordinate.getter();
          v177 = v176;
          v179 = v178;
          sub_100020250();
          AppConfiguration.providerAttribution.getter();
          v180 = ProviderAttributionConfiguration.mapDataLearnMoreURL.getter();
          v182 = v181;
          v183 = v373;
          v184 = v374;
          (*(v373 + 8))(v165, v374);
          v185 = sub_1001A25F0(v180, v182, v177, v179);

          sub_10001C50C();
          sub_100533554(v174, v186);
        }

        v187 = v379;
        v188 = v391;
        v189 = sub_1005311C4(v379, v391);
        v190 = v371;
        sub_1000302D8(v388, v371, &qword_100CB3AB0);
        v389 = v185;
        AppConfiguration.providerAttribution.getter();
        v191 = ProviderAttributionConfiguration.featureAvailabilityURL.getter();
        v192 = v165;
        v194 = v193;
        (*(v183 + 8))(v192, v184);
        v195 = v385;
        *v385 = 1;
        *(v195 + 1) = v189;
        v196 = v375;
        sub_1000302D8(v190, &v195[*(v375 + 24)], &qword_100CB3AB0);
        v197 = &v195[*(v196 + 28)];
        *v197 = v191;
        v197[1] = v194;
        v198 = sub_100003A80();
        sub_1000180EC(v198, v199);
        *&v195[*(v196 + 32)] = v185;
        v386 = sub_1005317BC(v359, v368, v367);

        v200 = v188 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_listViewTipManager;
        v201 = *(v188 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_listViewTipManager + 24);
        v202 = *(v188 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_listViewTipManager + 32);
        v203 = sub_100003A80();
        sub_1000161C0(v203, v204);
        (*(v202 + 80))(v369, v201, v202);
        v205 = v349;
        LODWORD(v380) = *(v187 + v349[18]);
        sub_100020820();
        v206 = sub_10002C810();
        v207(v206);
        sub_100020820();
        v208 = sub_10002C810();
        v209(v208);
        sub_100020820();
        v210 = sub_10002C810();
        v211(v210);
        sub_100020820();
        v212 = sub_10002C810();
        v213(v212);
        sub_100020820();
        v214 = sub_10002C810();
        LODWORD(v188) = v215(v214);
        LODWORD(v375) = v188 >> 8;
        sub_100020820();
        v216 = sub_10002C810();
        v217(v216);
        sub_100020820();
        v218 = sub_10002C810();
        LODWORD(v374) = v219(v218);
        v220 = *(v200 + 24);
        v221 = *(v200 + 32);
        v222 = sub_100003A80();
        sub_1000161C0(v222, v223);
        v373 = (*(v221 + 72))(v220, v221);
        LODWORD(v371) = v188 & 1;
        LODWORD(v372) = WORD1(v188) & 1;
        v364 = *(v187 + v205[16]);
        v224 = v365;
        v225 = v376;
        v226 = sub_1000AF578();
        sub_1000302D8(v226, v227, v228);
        v229 = v205[11];
        v230 = (v187 + v205[12]);
        v231 = v230[1];
        v359 = *v230;
        v370 = v231;
        v232 = (v187 + v205[13]);
        v233 = v232[1];
        v358 = *v232;
        LODWORD(v363) = *(v187 + v229);
        LODWORD(v362) = *(v187 + v205[15]);
        LODWORD(v361) = *(v187 + v205[35]);
        LODWORD(v360) = *(v187 + v205[31]);
        sub_1000B998C();
        sub_1001113A0(v195, v225 + v234, v235);
        LOBYTE(v202) = *(v187 + v205[8]);
        v236 = (v187 + v205[9]);
        v237 = *v236;
        v238 = v236[1];
        LOBYTE(v188) = *(v187 + v205[33]);
        sub_1000302D8(v187 + v205[34], v225 + v224[22], &qword_100CA5010);
        *v225 = v355;
        *(v225 + 8) = v368;
        *(v225 + 9) = v381;
        *(v225 + 10) = v364;
        v239 = v369;
        *(v225 + 13) = BYTE2(v369);
        *(v225 + 11) = v239;
        *(v225 + v224[9]) = v367;
        v240 = (v225 + v224[10]);
        *v240 = v359;
        v240[1] = v231;
        v241 = (v225 + v224[11]);
        *v241 = v358;
        v241[1] = v233;
        sub_1000B0E90();
        sub_1000B0E90();
        sub_1000B0E90();
        sub_1000B0E90();
        *(v225 + v224[17]) = v386;
        *(v225 + v224[18]) = v202;
        v242 = (v225 + v224[19]);
        *v242 = v237;
        v242[1] = v238;
        sub_1000B0E90();
        *(v225 + v224[21]) = v188;
        *(v225 + v224[23]) = v243;
        v244 = v225 + v224[24];
        *(v244 + 2) = v245;
        *v244 = v246;
        *(v244 + 3) = v380;
        *(v244 + 4) = v247;
        *(v244 + 5) = v371;
        *(v244 + 6) = v375;
        *(v244 + 7) = v372;
        *(v244 + 8) = v374;
        *(v244 + 12) = *(v393 + 3);
        *(v244 + 9) = v393[0];
        *(v244 + 16) = v373;
        sub_1000241D0();
        sub_1000113EC();
        sub_1001113A0(v248, v249, v250);
        sub_10000E7B0();
        sub_10001B350(v251, v252, v253, v205);
        v254 = v350;
        swift_beginAccess();

        sub_10053347C(v231, v254, &qword_100CC4160);
        swift_endAccess();
        sub_100036D6C();
        sub_1000113EC();
        sub_1001113A0(v255, v256, v257);
        sub_10000E7B0();
        sub_10001B350(v258, v259, v260, v224);
        sub_10052A488(v231);

        sub_100533554(v385, type metadata accessor for LearnMoreAttributorViewModel);
        sub_1000180EC(v388, &qword_100CB3AB0);
        sub_10000E73C();
        v261(v382, v384);
        v262 = sub_1000AF578();
        sub_1000180EC(v262, &qword_100CC4158);
        sub_1000247F8();
        sub_100020FE8();
        sub_100113754(v263, v264, v265);
        v266 = sub_10000FEF4();
        sub_10001B350(v266, v267, v268, v224);
        static os_signpost_type_t.end.getter();
        sub_100042270();
        v270 = *(v269 - 256);
        os_signpost(_:dso:log:name:signpostID:)();
        sub_10000E73C();
        v271(v270, v378);
        sub_100014868();
        v273 = v187;
        return sub_100533554(v273, v272);
      }

      goto LABEL_45;
    }
  }

LABEL_46:
  v293 = v106 + v79[10];
  v390 = *v293;
  LODWORD(v389) = *(v293 + 8);
  LODWORD(v388) = *(v158 + 9);
  v294 = v79[17];
  LODWORD(v385) = *(v106 + v79[16]);
  LODWORD(v384) = *(v106 + v294);
  LODWORD(v383) = *(v106 + v294 + 2);
  v295 = v365;
  v296 = v365[8];
  v297 = v158 + v296;
  v298 = v158;
  v299 = v376;
  sub_1000302D8(v297, v376 + v296, &qword_100CC4158);
  v382 = *(v298 + v295[9]);
  v300 = v382;
  v301 = v95[13];
  v302 = (v106 + v95[12]);
  v303 = v302[1];
  v374 = *v302;
  v381 = v303;
  v304 = *(v106 + v301 + 8);
  v375 = *(v106 + v301);
  LODWORD(v380) = *(v106 + v95[15]);
  LODWORD(v379) = *(v106 + v95[35]);
  sub_1000B998C();
  sub_1001113A0(v298 + v305, v299 + v305, v306);
  v307 = *(v298 + v295[17]);
  v308 = v95[9];
  LODWORD(v372) = *(v106 + v95[8]);
  LODWORD(v373) = *(v106 + v95[24]);
  v309 = *(v106 + v308 + 8);
  v371 = *(v106 + v308);
  v369 = v309;
  v310 = v95[34];
  LODWORD(v370) = *(v106 + v95[33]);
  sub_1000302D8(v106 + v310, v299 + v295[22], &qword_100CA5010);
  v311 = v298 + v295[24];
  v395 = *v311;
  v396 = *(v311 + 16);
  *v299 = v390;
  *(v299 + 8) = v389;
  *(v299 + 9) = v388;
  *(v299 + 10) = v385;
  *(v299 + 13) = v383;
  *(v299 + 11) = v384;
  *(v299 + v295[9]) = v300;
  v312 = (v299 + v295[10]);
  *v312 = v374;
  v312[1] = v303;
  v313 = (v299 + v295[11]);
  *v313 = v375;
  v313[1] = v304;
  *(v299 + v295[12]) = 1;
  sub_100043784();
  sub_100043784();
  sub_100043784();
  *(v299 + v295[17]) = v307;
  sub_100043784();
  v314 = (v299 + v295[19]);
  *v314 = v371;
  v314[1] = v369;
  sub_100043784();
  sub_100043784();
  *(v299 + v295[23]) = v315;
  v316 = v299 + v295[24];
  *(v316 + 16) = *(v317 + 16);
  *v316 = *v317;
  sub_1000241D0();
  sub_100020FE8();
  sub_1001113A0(v318, v319, v320);
  v321 = sub_10000FEF4();
  sub_10001B350(v321, v322, v323, v95);
  swift_beginAccess();

  sub_100533400(&v395, v392);
  v324 = sub_100003940();
  sub_10053347C(v324, v325, v326);
  swift_endAccess();
  sub_100036D6C();
  sub_100020FE8();
  sub_1001113A0(v327, v328, v329);
  v330 = sub_10000FEF4();
  sub_10001B350(v330, v331, v332, v295);
  sub_10052A488(v303);
  sub_100022D60();
  sub_100533554(v298, v333);
  sub_100533554(v367, type metadata accessor for ActualListInput);
  sub_1000247F8();
  sub_1000113EC();
  sub_100113754(v334, v335, v336);
  sub_10000E7B0();
  sub_10001B350(v337, v338, v339, v295);
  sub_1000180EC(v355, &qword_100CBC9A8);
  static os_signpost_type_t.end.getter();
  sub_100042270();
  v341 = *(v340 - 256);
  os_signpost(_:dso:log:name:signpostID:)();
  sub_10000E73C();
  v342(v341, v378);
  v273 = v106;
  v272 = type metadata accessor for ActualListInput;
  return sub_100533554(v273, v272);
}

uint64_t sub_10052C5D0@<X0>(uint64_t a1@<X0>, void (**a2)(unint64_t, unint64_t, uint64_t)@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LocationModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActualListInput(0);
  sub_10052C768(a1, *(a2 + v12[7]), v11);
  sub_10052CECC(v11, *a2, a2 + v12[27], *(a2 + v12[26] + 8), a4, *(a2 + v12[30] + 16), v15, *(a2 + v12[28]), a3, 1u, 0, 0, *(a2 + v12[35]), *(a2 + v12[32]));
  (*(v9 + 8))(v11, v8);
  v13 = type metadata accessor for ListLocationViewModel(0);
  return sub_10001B350(a4, 0, 1, v13);
}

uint64_t sub_10052C768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v61 = a3;
  v4 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v4 - 8);
  v60 = &v57 - v5;
  v6 = type metadata accessor for LocationModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  __chkstk_darwin(v12);
  v75 = &v57 - v13;
  __chkstk_darwin(v14);
  v76 = &v57 - v15;
  v16 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v16 - 8);
  v58 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v62 = &v57 - v20;
  v21 = 0;
  v22 = *(a2 + 16);
  v74 = v7 + 16;
  v69 = v7 + 88;
  v70 = v22;
  v71 = enum case for LocationModel.current(_:);
  v68 = enum case for LocationModel.saved(_:);
  v23 = (v7 + 8);
  v72 = v7;
  v67 = (v7 + 96);
  v19.n128_u64[0] = 136446210;
  v63 = v19;
  v73 = (v7 + 8);
  v66 = a2;
  while (1)
  {
    if (v70 == v21)
    {
      v44 = 1;
      v45 = v62;
      goto LABEL_15;
    }

    v24 = v72;
    v25 = v21;
    v26 = v6;
    v27 = *(v72 + 16);
    v28 = v76;
    v27(v76, a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v72 + 72) * v21, v26);
    v29 = v75;
    v27(v75, v28, v26);
    v30 = (*(v24 + 88))(v29, v26);
    if (v30 == v71)
    {
      break;
    }

    if (v30 == v68)
    {
      v31 = v75;
      (*v67)(v75, v26);
      v32 = *(sub_10022C350(&qword_100CA38B8) + 48);
      v33 = type metadata accessor for LocationModelData();
      v23 = v73;
      (*(*(v33 - 8) + 8))(&v31[v32], v33);
      v34 = v31;
      v6 = v26;
      sub_100533554(v34, &type metadata accessor for SavedLocation);
      (*v23)(v76, v26);
    }

    else
    {
      if (qword_100CA26A0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000703C(v35, qword_100D90A48);
      v27(v11, v76, v26);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v77 = v65;
        *v38 = v63.n128_u32[0];
        v27(v64, v11, v26);
        v39 = String.init<A>(describing:)();
        v41 = v40;
        v42 = *v73;
        (*v73)(v11, v26);
        v43 = sub_100078694(v39, v41, &v77);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to create savedLocations with unknown type=%{public}s", v38, 0xCu);
        sub_100006F14(v65);
        v23 = v73;
      }

      else
      {

        v42 = *v23;
        (*v23)(v11, v26);
      }

      v6 = v26;
      v42(v75, v26);
      a2 = v66;
      v42(v76, v26);
    }

    v21 = v25 + 1;
  }

  v46 = v72;
  v47 = v75;
  v6 = v26;
  (*(v72 + 96))(v75, v26);
  v48 = *(sub_10022C350(&qword_100CA38C0) + 48);
  v49 = type metadata accessor for LocationModelData();
  (*(*(v49 - 8) + 8))(v47 + v48, v49);
  sub_100533554(v47, &type metadata accessor for CurrentLocation);
  v45 = v62;
  (*(v46 + 32))(v62, v76, v26);
  v44 = 0;
LABEL_15:
  sub_10001B350(v45, v44, 1, v6);
  v50 = v61;
  sub_1001113A0(v59, v61, &type metadata accessor for CurrentLocation);
  v51 = v45;
  v52 = v58;
  sub_1000302D8(v51, v58, &unk_100CE2F20);
  v53 = sub_100024D10(v52, 1, v6);
  v54 = v60;
  if (v53 == 1)
  {
    sub_1000180EC(v52, &unk_100CE2F20);
    v55 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v54, 1, 1, v55);
  }

  else
  {
    LocationModel.locationOfInterest.getter();
    (*v73)(v52, v6);
  }

  sub_10022C350(&qword_100CA38C0);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  sub_1000180EC(v62, &unk_100CE2F20);
  return (*(v72 + 104))(v50, v71, v6);
}

void sub_10052CECC(uint64_t a1@<X0>, void (*a2)(unint64_t, unint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, char a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, char a12, unsigned __int8 a13, uint64_t a14)
{
  v492 = a4;
  v503 = a3;
  v534 = a2;
  v498 = a5;
  v524 = a13;
  v499[0] = a6;
  v16 = type metadata accessor for ListLocationRowPrimaryText(0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000038E4();
  sub_100003918(v18);
  v19 = type metadata accessor for LocationModel();
  v20 = sub_100003E5C(v19, &v536);
  v505 = v21;
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003918(v23);
  v459 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  sub_100003990(v26);
  v27 = sub_10022C350(&unk_100CB2CF0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  sub_100003990(v30);
  v31 = sub_10022C350(&qword_100CB1288);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  sub_100003918(v33);
  v34 = type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  v35 = sub_100003E5C(v34, &v518);
  v487 = v36;
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003990(v37);
  v38 = sub_10022C350(&qword_100CA2CD8);
  sub_100003810(v38);
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CACCC0);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v44 = sub_10022C350(&qword_100CA58B8);
  sub_100003810(v44);
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  sub_100003918(v46);
  v47 = type metadata accessor for Date();
  v48 = sub_100003E5C(v47, &v538);
  v484 = v49;
  __chkstk_darwin(v48);
  sub_1000038E4();
  sub_100003918(v50);
  v51 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  v52 = sub_100003E5C(v51, &v520);
  v490 = v53;
  __chkstk_darwin(v52);
  sub_1000038E4();
  sub_100003918(v54);
  v55 = type metadata accessor for WeatherConditionBackgroundModel();
  v56 = sub_100003E5C(v55, v526);
  v496 = v57;
  __chkstk_darwin(v56);
  sub_1000038E4();
  sub_100003990(v58);
  v59 = sub_10022C350(&qword_100CA65D8);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  sub_100003918(v62);
  v63 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
  v64 = sub_100003810(v63);
  __chkstk_darwin(v64);
  sub_1000038E4();
  sub_100003918(v65);
  v531 = type metadata accessor for ListPreprocessedDataModel();
  sub_1000037E8();
  __chkstk_darwin(v66);
  sub_1000038E4();
  sub_100003918(v67);
  v483 = type metadata accessor for WeatherConditionBackgroundTimeData();
  sub_1000037E8();
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_10000E70C();
  sub_100003918(v70);
  v71 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  v72 = sub_100003E5C(v71, &v502);
  v473 = v73;
  __chkstk_darwin(v72);
  sub_1000038E4();
  sub_100003918(v74);
  v75 = type metadata accessor for WeatherConditionBackgroundConfig.CameraPositionType();
  v76 = sub_100003E5C(v75, v501);
  v470 = v77;
  __chkstk_darwin(v76);
  sub_1000038E4();
  sub_100003918(v78);
  v536 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v525 = v79;
  __chkstk_darwin(v80);
  sub_1000038E4();
  v535 = v81;
  sub_1000038CC();
  v82 = type metadata accessor for VFXEffectViewID();
  v83 = sub_100003E5C(v82, v499);
  v468 = v84;
  __chkstk_darwin(v83);
  sub_1000038E4();
  sub_100003918(v85);
  v86 = type metadata accessor for WeatherConditionBackgroundOptions();
  v87 = sub_100003E5C(v86, &v541);
  v521 = v88;
  __chkstk_darwin(v87);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  sub_100003918(v90);
  v91 = type metadata accessor for BackgroundAnimationKind();
  v92 = sub_100003E5C(v91, &v540);
  v519 = v93;
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_10000E70C();
  sub_100003918(v95);
  v96 = type metadata accessor for CurrentWeather();
  v97 = sub_100003E5C(v96, &v481);
  v456[2] = v98;
  __chkstk_darwin(v97);
  sub_1000038E4();
  sub_100003990(v99);
  v100 = sub_10022C350(&qword_100CACDF8);
  sub_100003810(v100);
  sub_100003828();
  __chkstk_darwin(v101);
  sub_1000039BC();
  sub_100003990(v102);
  v103 = sub_10022C350(&qword_100CA7000);
  sub_100003E5C(v103, &v490);
  v458 = v104;
  sub_100003828();
  __chkstk_darwin(v105);
  sub_1000039BC();
  sub_100003990(v106);
  v107 = sub_10022C350(&qword_100CB0BA0);
  sub_100003810(v107);
  sub_100003828();
  __chkstk_darwin(v108);
  sub_1000039BC();
  sub_100003918(v109);
  v110 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v480 = v111;
  __chkstk_darwin(v112);
  sub_1000038E4();
  sub_100003918(v113);
  v114 = type metadata accessor for WeatherEventDescription();
  v115 = sub_100003E5C(v114, &v514);
  v481 = v116;
  __chkstk_darwin(v115);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_10000E70C();
  v119 = sub_100003918(v118);
  v120 = type metadata accessor for WeatherData(v119);
  sub_1000037E8();
  __chkstk_darwin(v121);
  sub_1000038E4();
  v533 = v122;
  sub_1000038CC();
  v456[0] = type metadata accessor for PreprocessedWeatherData();
  sub_1000037E8();
  __chkstk_darwin(v123);
  sub_1000038E4();
  sub_100003990(v124);
  v125 = sub_10022C350(&qword_100CA37B0);
  v126 = sub_100003810(v125);
  __chkstk_darwin(v126);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v127);
  v129 = v456 - v128;
  v130 = sub_10022C350(&qword_100CACE08);
  v131 = sub_100003810(v130);
  __chkstk_darwin(v131);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_10004E424();
  v135 = sub_10022C350(&qword_100CC4188);
  v136 = sub_100003810(v135);
  __chkstk_darwin(v136);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  v143 = v456 - v142;
  v144 = sub_10022C350(&qword_100CA3898);
  v145 = sub_100003810(v144);
  __chkstk_darwin(v145);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  v150 = v456 - v149;
  __chkstk_darwin(v151);
  v153 = v456 - v152;
  v154 = LocationModel.coalesceLocationID.getter();
  v156 = v155;
  v526[1] = a1;
  LocationModel.timeZone.getter();
  v502 = v110;
  v157 = sub_100024D10(v14, 1, v110);
  sub_1000180EC(v14, &qword_100CACE08);
  v532 = v143;
  v526[0] = v120;
  v465 = v156;
  v464 = v154;
  if (v157 == 1)
  {
    sub_100003934();
    sub_10001B350(v158, v159, v160, v120);
    sub_100003934();
    sub_10001B350(v161, v162, v163, v531);
    sub_1000C89FC();
    v164 = v120;
    v165 = v507;
  }

  else
  {
    v143 = v153;
    sub_1000864C0(v154, v156, v499[0]);
    v166 = type metadata accessor for LocationWeatherDataState(0);
    sub_1000038B4(v129, 1, v166);
    v165 = v507;
    v157 = v531;
    if (v212)
    {
LABEL_6:
      sub_100003934();
      v164 = v526[0];
      sub_10001B350(v168, v169, v170, v526[0]);
      sub_100003934();
      sub_10001B350(v171, v172, v173, v157);
    }

    else
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v214 = sub_10022C350(&qword_100CA75D8);
          v215 = *(v214 + 48);
          v216 = v157;
          v157 = *(v214 + 64);
          sub_100020FD0();
          v217 = v143;
          sub_100113754(v129, v143, v218);
          v143 = v518;
          sub_100113754(&v129[v215], v518, type metadata accessor for PreprocessedWeatherData);
          sub_10000E7B0();
          v219 = v526[0];
          sub_10001B350(v220, v221, v222, v526[0]);
          sub_1001113A0(&v143[*(v456[0] + 32)], v532, type metadata accessor for ListPreprocessedDataModel);
          sub_100533554(v143, type metadata accessor for PreprocessedWeatherData);
          v153 = v217;
          v164 = v219;
          sub_10000E7B0();
          sub_10001B350(v223, v224, v225, v216);
          sub_100533554(&v129[v157], type metadata accessor for NewsDataModel);
          break;
        case 3u:
          goto LABEL_6;
        default:
          sub_10003BA4C();
          sub_100533554(v129, v167);
          goto LABEL_6;
      }
    }

    sub_1000C89FC();
  }

  LODWORD(v518) = a11;
  v494 = v153;
  if (v524)
  {
    sub_1000302D8(v153, v150, &qword_100CA3898);
    v174 = sub_100024D10(v150, 1, v164);
    sub_1000180EC(v150, &qword_100CA3898);
    v175 = v530;
    if (v174 == 1)
    {
      sub_1000498FC();
      sub_10017070C();
    }

    else
    {
      v181 = [objc_opt_self() mainBundle];
      v542._object = 0x8000000100AD3CF0;
      v477 = 0xE000000000000000;
      sub_100010220();
      v186 = NSLocalizedString(_:tableName:bundle:value:comment:)(v182, v183, v184, v185, v542);
      sub_1000EFF94(v186._countAndFlagsBits, v186._object);
      v461 = 0;
      v480 = 0xEA00000000006873;
      v462 = 0x616C732E69666977;
      LODWORD(v510) = 1;
    }

    goto LABEL_15;
  }

  sub_1000113EC();
  sub_1000302D8(v176, v177, v178);
  v179 = sub_10000C7F0();
  sub_1000038B4(v179, v180, v164);
  if (v212)
  {
    sub_1000180EC(v157, &qword_100CA3898);
    sub_1000498FC();
    sub_10017070C();
    v175 = v530;
LABEL_15:
    v187 = v534;
    goto LABEL_33;
  }

  sub_100020FD0();
  v188 = v533;
  sub_100113754(v157, v533, v189);
  sub_100020250();
  LocationModel.timeZone.getter();
  v190 = v502;
  v191 = sub_100024D10(v143, 1, v502);
  if (v191 == 1)
  {
    sub_1000180EC(v143, &qword_100CACE08);
    v192 = v481;
    v193 = v482;
    v194 = v485;
    (*(v481 + 104))(v482, enum case for WeatherEventDescription.none(_:), v485);
    v175 = v530;
    v187 = v534;
  }

  else
  {
    v110 = v457;
    (*(v480 + 32))(v457, v143, v190);
    v175 = v530;
    v195 = *(v530 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherEventDescriptionStringBuilder + 24);
    v510 = *(v530 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherEventDescriptionStringBuilder + 32);
    v477 = sub_1000161C0((v530 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherEventDescriptionStringBuilder), v195);
    WeatherDataModel.weatherAlerts.getter();
    sub_100071518();
    WeatherDataModel.minuteForecast.getter();
    sub_1000371B0();
    WeatherDataModel.dailyForecast.getter();
    sub_100020250();
    WeatherDataModel.weatherChanges.getter();
    v196 = v482;
    dispatch thunk of WeatherEventDescriptionStringBuilderType.buildShortString(from:minuteForecast:dailyForecast:weatherChanges:timeZone:date:)();
    v193 = v196;

    sub_1000180EC(v188, &qword_100CACDF8);
    sub_10000E73C();
    v197(&enum case for WeatherEventDescription.none(_:), v461);
    sub_1000180EC(0xEA00000000006465, &qword_100CB0BA0);
    sub_10000E73C();
    v198(v110, v502);
    sub_1000C89FC();
    v187 = v534;
    v194 = v485;
    v192 = v481;
  }

  v199 = v486;
  (*(v192 + 16))(v486, v193, v194);
  v200 = (*(v192 + 88))(v199, v194);
  if (v200 == enum case for WeatherEventDescription.severeWeather(_:))
  {
    (*(v192 + 96))(v199, v194);
    v201 = v199[1];
    v461 = *v199;
    v477 = v201;
    v480 = 0x8000000100AC04D0;
    v202 = [objc_opt_self() mainBundle];
    v543._object = 0x8000000100AD3C50;
    sub_100010220();
    v207 = NSLocalizedString(_:tableName:bundle:value:comment:)(v203, v204, v205, v206, v543);
    sub_1000EFF94(v207._countAndFlagsBits, v207._object);
    (*(v192 + 8))(v193, v194);
    sub_1000199E4();
    sub_100533554(v533, v208);
    LODWORD(v510) = 0;
    v209 = 0xD00000000000001DLL;
    v210 = &v491;
  }

  else
  {
    v211 = v200;
    v212 = v200 == enum case for WeatherEventDescription.nextHourPrecipitation(_:) || v200 == enum case for WeatherEventDescription.changeInCondition(_:);
    if (!v212)
    {
      LODWORD(v534) = enum case for WeatherEventDescription.none(_:);
      v226 = v533;
      v227 = v456[1];
      WeatherDataModel.currentWeather.getter();
      v228 = v192;
      v461 = CurrentWeather.conditionDescription.getter();
      v230 = v229;
      sub_10000E73C();
      v231(v227, v456[3]);
      v232 = *(v228 + 8);
      v232(v482, v194);
      sub_1000199E4();
      sub_100533554(v226, v233);
      v477 = v230;
      if (v211 != v534)
      {
        v232(v486, v194);
      }

      sub_1000498FC();
      goto LABEL_32;
    }

    (*(v192 + 8))(v193, v194);
    sub_1000199E4();
    sub_100533554(v533, v213);
    (*(v192 + 96))(v199, v194);
    sub_1000498FC();
    v209 = *v199;
    v477 = v199[1];
    v210 = &v490;
  }

  *(v210 - 32) = v209;
LABEL_32:
  v165 = v507;
LABEL_33:
  v234 = sub_100531EAC(v110, v187);
  LODWORD(v482) = v235;
  v481 = v234;
  sub_10052A534(v234, v235 & 1, v528);
  v236 = [objc_opt_self() sharedApplication];
  v237 = UIApplication.maybeWindow.getter();

  v238 = *(v187 + 16);
  v239 = _swiftEmptyArrayStorage;
  v502 = v237;
  if (v238)
  {
    *&v537 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v238, 0);
    v239 = v537;
    v110 = (v525 + 16);
    v240 = *(v525 + 16);
    v241 = v187 + ((*(v525 + 80) + 32) & ~*(v525 + 80));
    v533 = *(v525 + 72);
    v534 = v240;
    v242 = (v525 + 8);
    do
    {
      v243 = v535;
      v244 = v536;
      v534(v535, v241, v536);
      v245 = Location.Identifier.uniqueID.getter();
      v247 = v246;
      (*v242)(v243, v244);
      *&v537 = v239;
      v249 = v239[2];
      v248 = v239[3];
      if (v249 >= v248 >> 1)
      {
        sub_10000369C((v248 > 1), v249 + 1, 1);
        v239 = v537;
      }

      v239[2] = v249 + 1;
      v250 = &v239[2 * v249];
      v250[4] = v245;
      v250[5] = v247;
      v241 += v533;
      --v238;
    }

    while (v238);
    sub_1000C89FC();
    v175 = v530;
    v251 = v531;
    v237 = v502;
    v165 = v507;
  }

  else
  {
    v251 = v531;
  }

  v252 = v475;
  if (v518)
  {
    v253 = &enum case for VFXEffectViewID.mapInteractionPreview(_:);
  }

  else
  {
    v254 = v535;
    LocationModel.identifier.getter();
    v255 = Location.Identifier.uniqueID.getter();
    v257 = v256;
    (*(v525 + 8))(v254, v536);
    *v165 = v255;
    v165[1] = v257;
    v253 = &enum case for VFXEffectViewID.list(_:);
  }

  v258 = v499[0];
  v259 = v476;
  v260 = v474;
  (*(v468 + 104))(v165, *v253, v469);
  (*(v470 + 104))(v252, enum case for WeatherConditionBackgroundConfig.CameraPositionType.list(_:), v472);
  (*(v473 + 104))(v259, enum case for WeatherConditionBackgroundOptions.DisplayLocation.list(_:), v260);
  if (v237)
  {
    [v237 bounds];
    v261 = v237;
    UIWindow.displayScale.getter();
  }

  sub_10000E7B0();
  WeatherConditionBackgroundOptions.init(locationIDs:applyMask:applyLegibilityScrim:effectViewID:canShowCollisionLayer:cameraPositionType:displayLocation:windowBounds:displayScale:locationViewerOrientation:)();
  v262 = v467;
  sub_1000864C0(v464, v465, v258);

  type metadata accessor for LocationWeatherDataState(0);
  v263 = sub_10000C7F0();
  sub_1000038B4(v263, v264, v265);
  if (v212)
  {
    sub_1000180EC(v262, &qword_100CA37B0);
    v269 = v527;
    sub_100003934();
    sub_10001B350(v266, v267, v268, v526[0]);
  }

  else
  {
    v269 = v527;
    sub_1001A0D3C();
    sub_10003BA4C();
    sub_100533554(v262, v270);
  }

  v271 = v251;
  v272 = v466;
  sub_1000302D8(v532, v466, &qword_100CC4188);
  v273 = sub_10000C7F0();
  sub_1000038B4(v273, v274, v251);
  if (v212)
  {
    sub_1000180EC(v272, &qword_100CC4188);
    v271 = sub_1000161C0((v175 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundTimeDataFactory), *(v175 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundTimeDataFactory + 24));
    sub_1000371B0();
    LocationModel.location.getter();
    sub_1000184C0();
    v275 = sub_100003A80();
    sub_1000756B0(v275, v276, v503, v277);
    sub_1000180EC(v239, &qword_100CA65D8);
  }

  else
  {
    sub_1000113EC();
    sub_100113754(v278, v279, v280);
    sub_100020FE8();
    sub_1001113A0(v281, v282, v283);
    sub_100004470();
    sub_100533554(v272, v284);
    sub_1000179D4();
    sub_100020FE8();
    sub_100113754(v285, v286, v287);
  }

  v288 = v484;
  LODWORD(v534) = a10;
  sub_1000179D4();
  sub_100020FE8();
  sub_100113754(v289, v290, v291);
  sub_100035B30(v175 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundModelFactory, &v537);
  sub_1000161C0(&v537, *(&v538 + 1));
  (*(v519 + 16))(v508, v528, v520);
  (*(v288 + 16))(v513, v271, v512);
  v292 = v483;
  sub_1000302D8(v271 + *(v483 + 20), v514, &qword_100CA58B8);
  sub_1000302D8(v271 + *(v292 + 24), v515, &qword_100CACCC0);
  v293 = v535;
  LocationModel.identifier.getter();
  v294 = Location.Identifier.id.getter();
  v296 = v295;
  sub_100113300(v294, v295, v492);

  sub_10000E73C();
  v297(v293, v536);
  v298 = v110;
  LocationModel.location.getter();
  (*(v521 + 16))(v509, v529, v522);
  sub_1000184C0();
  BackgroundAnimationKind.gradientContext.getter();
  (*(v487 + 104))(v296, enum case for WeatherConditionGradientModel.PresentationContext.tile(_:), v489);
  v299 = v471;
  sub_1000302D8(v269, v471, &qword_100CA3898);
  v300 = v526[0];
  sub_1000038B4(v299, 1, v526[0]);
  if (v212)
  {
    sub_1000180EC(v299, &qword_100CA3898);
    type metadata accessor for WeatherDataModel();
    sub_100003934();
  }

  else
  {
    v301 = *(v300 + 24);
    v302 = type metadata accessor for WeatherDataModel();
    sub_1000037E8();
    (*(v303 + 16))(v493, v299 + v301, v302);
    sub_1000199E4();
    sub_100533554(v299, v304);
    sub_10000E7B0();
    v308 = v302;
  }

  sub_10001B350(v305, v306, v307, v308);
  v309 = v531;
  v310 = v491;
  v311 = v478;
  sub_100003934();
  sub_10001B350(v312, v313, v314, v512);
  v315 = v488;
  WeatherConditionBackgroundModelFactoryInput.init(animationKind:currentTime:elevation:moonData:debugConditionOverride:isReduceMotionEnabled:location:options:presentationContext:weatherData:conditionBackgroundDateOverride:)();
  dispatch thunk of WeatherConditionBackgroundModelFactoryType.makeModel(from:)();
  sub_10000E73C();
  v316(v315, v310);
  sub_100006F14(&v537);
  v516 = sub_1005320EC();
  v525 = v317;
  sub_1000302D8(v532, v311, &qword_100CC4188);
  sub_1000038B4(v311, 1, v309);
  if (v212)
  {
    sub_1000180EC(v311, &qword_100CC4188);
    v319 = 0xE200000000000000;
    v318 = 11565;
  }

  else
  {
    v318 = *(v311 + 32);
    v319 = *(v311 + 40);

    sub_100004470();
    sub_100533554(v311, v320);
  }

  v321 = v505;
  v322 = v503;
  v323 = v479;
  v324 = sub_100003A80();
  sub_1000302D8(v324, v325, v326);
  v327 = sub_1000131C4();
  sub_1000038B4(v327, v328, v309);
  v329 = v298;
  if (v212)
  {
    sub_1000180EC(v323, &qword_100CC4188);
    v331 = 0xE200000000000000;
    v330 = 11565;
  }

  else
  {
    v330 = *(v323 + 48);
    v331 = *(v323 + 56);

    sub_100004470();
    sub_100533554(v323, v332);
  }

  if (v510)
  {

    v319 = 0xE200000000000000;
    v333 = 11565;
    v536 = 11565;
    v331 = 0xE200000000000000;
  }

  else
  {
    v333 = v318;
    v536 = v330;
  }

  v334 = v322;
  v335 = v333 == 11565 && v319 == 0xE200000000000000;
  v535 = v319;
  v526[0] = v331;
  v517 = v333;
  if (v335 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v536 == 11565 ? (v336 = v331 == 0xE200000000000000) : (v336 = 0), v336 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v337 = [objc_opt_self() mainBundle];
    v544._object = 0x8000000100AD3C10;
    sub_100010220();
    v544._countAndFlagsBits = 0xD00000000000003DLL;
    v342 = NSLocalizedString(_:tableName:bundle:value:comment:)(v338, v339, v340, v341, v544);
    countAndFlagsBits = v342._countAndFlagsBits;
    object = v342._object;
  }

  else
  {
    v446 = v331;
    v447 = [objc_opt_self() mainBundle];
    v546._object = 0x8000000100AD3B70;
    sub_100003CD0();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v448, v449, v447, v450, v546);

    sub_10022C350(&qword_100CA40C8);
    v451 = swift_allocObject();
    *(v451 + 16) = xmmword_100A2D320;
    *(v451 + 56) = &type metadata for String;
    v452 = sub_100035744();
    v453 = v535;
    *(v451 + 32) = v333;
    *(v451 + 40) = v453;
    *(v451 + 96) = &type metadata for String;
    *(v451 + 104) = v452;
    v334 = v503;
    v454 = v536;
    *(v451 + 64) = v452;
    *(v451 + 72) = v454;
    *(v451 + 80) = v446;

    countAndFlagsBits = String.init(format:_:)();
    object = v455;
  }

  v345 = *(v321 + 16);
  v346 = v495;
  v347 = v506;
  v345(v495, v329, v506);
  v348 = sub_1000370B0();
  if (v349(v348) == enum case for LocationModel.current(_:))
  {
    v350 = sub_1000370B0();
    v351(v350);
    v352 = v346;
    v353 = *(sub_10022C350(&qword_100CA38C0) + 48);
    sub_1000214F8();
    v354 = v463;
    sub_100113754(v352, v463, v355);
    type metadata accessor for LocationModelData();
    sub_1000037E8();
    (*(v356 + 8))(v352 + v353);
    v357 = v460;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v353) = static CurrentLocation.== infix(_:_:)();
    sub_10001C50C();
    sub_100533554(v357, v358);
    if (v353)
    {

      v359 = v498;
      v345(v498, v329, v347);
      v360 = type metadata accessor for ListLocationViewModel(0);
      sub_100087164();
      sub_1005322E8(v361, v362, v363, v364);
      v365 = v504;
      v366 = LocationModel.timeZone.getter();
      __chkstk_darwin(v366);
      sub_100003F28();
      *(v367 - 16) = v334;
      sub_1003497F8(sub_10053345C, v368, v359 + v360[10]);
      sub_1000180EC(v365, &qword_100CACE08);
      LocationModel.timeZone.getter();
      v369 = [objc_opt_self() mainBundle];
      v545._object = 0x8000000100AD3C10;
      sub_100003CD0();
      v370._countAndFlagsBits = 0;
      v370._object = 0xE000000000000000;
      v545._countAndFlagsBits = 0xD00000000000003DLL;
      v373 = NSLocalizedString(_:tableName:bundle:value:comment:)(v371, v372, v369, v370, v545);
      v535 = v373._object;
      v536 = v373._countAndFlagsBits;

      v374 = v496;
      v375 = v523;
      v376 = v497;
      (*(v496 + 16))(v359 + v360[22], v523, v497);
      LODWORD(v531) = static Settings.InternationalAuthenticity.verticalHeroEnabledForCurrentLocale.getter();
      LocationModel.timeZone.getter();
      sub_1009AAB94();
      v533 = v377;
      v379 = v378;

      sub_1000180EC(v365, &qword_100CACE08);
      sub_10001C50C();
      sub_100533554(v463, v380);
      (*(v374 + 8))(v375, v376);
      sub_10006A7E0();
      v381 = sub_1000AF578();
      sub_1000180EC(v381, &qword_100CA3898);
      sub_10000E73C();
      v382 = sub_100052384();
      v383(v382);
      sub_10000E73C();
      v384 = sub_1000325FC();
      v385(v384);
      sub_1000180EC(v532, &qword_100CC4188);
      sub_1000180EC(v494, &qword_100CA3898);
      v386 = v359;
      sub_100086794(v359 + v360[5]);
      v388 = (v359 + v387);
      *v388 = 0;
      v388[1] = 0xE000000000000000;
      v389 = v359 + v360[8];
      *v389 = 0u;
      *(v389 + 16) = 0u;
      *(v389 + 32) = 2;
      *(v359 + v360[9]) = 1;
      v390 = v359 + v360[12];
      strcpy(v390, "partly cloudy");
      *(v390 + 14) = -4864;
      v391 = (v359 + v360[13]);
      *v391 = 0;
      v391[1] = 0;
      *(v359 + v360[14]) = v510;
      sub_1000179EC((v359 + v360[15]));
      v392 = (v359 + v360[16]);
      *v392 = 11565;
      v392[1] = 0xE200000000000000;
      v393 = (v359 + v360[17]);
      *v393 = 0;
      v393[1] = 0;
      v394 = (v359 + v360[18]);
      *v394 = 11565;
      v394[1] = 0xE200000000000000;
      v395 = (v359 + v360[19]);
      *v395 = 11565;
      v395[1] = 0xE200000000000000;
      v396 = (v359 + v360[20]);
      v397 = v535;
      *v396 = v536;
      v396[1] = v397;
      *(v359 + v360[21]) = 0;
      goto LABEL_90;
    }

    v515 = object;
    sub_10001C50C();
    sub_100533554(v354, v400);
  }

  else
  {
    v515 = object;
    v398 = sub_1000370B0();
    v399(v398);
  }

  v401 = v497;
  v345(v501[0], v329, v347);
  sub_100087164();
  sub_1005322E8(v402, v403, v404, v405);
  sub_100532B0C(v329, a14, &v537);
  sub_1000371B0();
  v406 = LocationModel.timeZone.getter();
  __chkstk_darwin(v406);
  sub_100003F28();
  *(v407 - 16) = v334;
  sub_1003497F8(sub_1005335AC, v408, v500);
  sub_1000180EC(v347, &qword_100CACE08);
  LocationModel.timeZone.getter();
  v409 = 0x6320796C74726170;
  if (v477)
  {
    v409 = v461;
  }

  v530 = v409;
  v410 = 0xED00007964756F6CLL;
  if (v477)
  {
    v410 = v477;
  }

  v513 = v410;
  v411 = v532;
  sub_10003778C();
  sub_1000302D8(v412, v413, v414);
  v415 = sub_1000131C4();
  v416 = v531;
  sub_1000038B4(v415, v417, v531);
  if (v212)
  {
    sub_1000180EC(0, &qword_100CC4188);
    v512 = 0xE200000000000000;
    v511 = 11565;
  }

  else
  {
    v511 = MEMORY[0];
    v512 = MEMORY[8];

    sub_100004470();
    sub_100533554(0, v418);
  }

  LODWORD(v509) = a9;
  sub_1000113EC();
  sub_1000302D8(v419, v420, v421);
  v422 = sub_10000C7F0();
  sub_1000038B4(v422, v423, v416);
  v514 = countAndFlagsBits;
  if (v212)
  {
    sub_1000180EC(v411, &qword_100CC4188);
    v508 = 0;
    v424 = 0;
  }

  else
  {
    v424 = *(v411 + 24);
    v508 = *(v411 + 16);

    sub_100004470();
    sub_100533554(v411, v425);
  }

  v360 = type metadata accessor for ListLocationViewModel(0);
  v426 = v496;
  v386 = v498;
  v427 = v523;
  (*(v496 + 16))(v498 + v360[22], v523, v401);
  LODWORD(v531) = static Settings.InternationalAuthenticity.verticalHeroEnabledForCurrentLocale.getter();
  v428 = v504;
  LocationModel.timeZone.getter();
  sub_1009AAB94();
  v533 = v429;
  v379 = v430;

  sub_1000180EC(v428, &qword_100CACE08);
  (*(v426 + 8))(v427, v401);
  sub_10006A7E0();
  v431 = sub_1000AF578();
  sub_1000180EC(v431, &qword_100CA3898);
  sub_10000E73C();
  v432 = sub_100052384();
  v433(v432);
  sub_10000E73C();
  v434 = sub_1000325FC();
  v435(v434);
  sub_1000180EC(v532, &qword_100CC4188);
  sub_1000180EC(v494, &qword_100CA3898);
  (*(v505 + 32))(v386, v501[0], v506);
  sub_100086794(v386 + v360[5]);
  sub_1000179EC((v386 + v436));
  sub_100113754(v501[1], v386 + v360[7], type metadata accessor for ListLocationRowPrimaryText);
  v437 = v386 + v360[8];
  v438 = v538;
  *v437 = v537;
  *(v437 + 16) = v438;
  *(v437 + 32) = v539;
  *(v386 + v360[9]) = v534 & 1;
  sub_10011C0F0(v500, v386 + v360[10], &unk_100CB2CF0);
  sub_10011C0F0(v499[1], v386 + v360[11], &qword_100CACE08);
  sub_1000179EC((v386 + v360[12]));
  sub_1000179EC((v386 + v360[13]));
  *(v386 + v360[14]) = v510;
  sub_1000179EC((v386 + v360[15]));
  sub_1000179EC((v386 + v360[16]));
  v439 = (v386 + v360[17]);
  *v439 = v508;
  v439[1] = v424;
  v440 = (v386 + v360[18]);
  v442 = v535;
  v441 = v536;
  *v440 = v517;
  v440[1] = v442;
  v443 = (v386 + v360[19]);
  *v443 = v441;
  v443[1] = v526[0];
  sub_1000179EC((v386 + v360[20]));
  *(v386 + v360[21]) = v509 & 1;
LABEL_90:
  v212 = (v524 & 1) == 0;
  *(v386 + v360[23]) = (v518 & 1) == 0;
  if (v212)
  {
    v444 = 1;
  }

  else
  {
    v444 = 2;
  }

  *(v386 + v360[24]) = v531 & 1;
  v445 = (v386 + v360[25]);
  *v445 = v533;
  v445[1] = v379;
  *(v386 + v360[26]) = v444;
}

uint64_t sub_10052FB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  v15 = type metadata accessor for ActualListInput(0);
  sub_10052FDC8(a1, *(a2 + *(v15 + 28)), *(a2 + *(v15 + 24)), v14);
  sub_1001113A0(a1, a3, &type metadata accessor for SavedLocation);
  sub_1000302D8(v14, v11, &unk_100CE2F20);
  v16 = type metadata accessor for LocationModel();
  if (sub_100024D10(v11, 1, v16) == 1)
  {
    sub_1000180EC(v11, &unk_100CE2F20);
    v17 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v8, 1, 1, v17);
  }

  else
  {
    LocationModel.locationOfInterest.getter();
    (*(*(v16 - 8) + 8))(v11, v16);
  }

  sub_10022C350(&qword_100CA38B8);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  sub_1000180EC(v14, &unk_100CE2F20);
  (*(*(v16 - 8) + 104))(a3, enum case for LocationModel.saved(_:), v16);
  return sub_10001B350(a3, 0, 1, v16);
}

uint64_t sub_10052FDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_10068A470(a1, a3, a2);
  sub_10022C350(&qword_100CA38B8);
  sub_1001113A0(a1, a4, &type metadata accessor for SavedLocation);
  sub_1000302D8(v13, v10, &qword_100CA3588);
  LocationModelData.init(locationOfInterest:isPredictedLocation:)();
  sub_1000180EC(v13, &qword_100CA3588);
  v14 = enum case for LocationModel.saved(_:);
  v15 = type metadata accessor for LocationModel();
  (*(*(v15 - 8) + 104))(a4, v14, v15);
  return sub_10001B350(a4, 0, 1, v15);
}

uint64_t sub_10052FF68(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v53 = &v47 - v9;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v56 = &v47 - v14;
  __chkstk_darwin(v15);
  v64 = &v47 - v17;
  if (a1)
  {

    return a2;
  }

  else
  {
    v49 = v16;
    result = type metadata accessor for ActualListInput(0);
    v19 = 0;
    v20 = *(a3 + *(result + 28));
    v59 = v7 + 88;
    v62 = (v7 + 8);
    v61 = *(v20 + 16);
    v58 = enum case for LocationModel.current(_:);
    v54 = enum case for LocationModel.saved(_:);
    v55 = (v7 + 96);
    v50 = _swiftEmptyArrayStorage;
    v48 = (v7 + 32);
    *&v21 = 136446210;
    v51 = v21;
    v52 = v7;
    v57 = v12;
    v60 = v20;
    v63 = v7 + 16;
LABEL_4:
    v22 = v56;
    while (1)
    {
      if (v61 == v19)
      {
        return v50;
      }

      if (v19 >= *(v20 + 16))
      {
        break;
      }

      v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v24 = *(v7 + 72);
      v25 = *(v7 + 16);
      v26 = v64;
      v25(v64, v20 + v23 + v24 * v19, v6);
      v25(v22, v26, v6);
      v27 = (*(v7 + 88))(v22, v6);
      if (v27 == v58)
      {
        v28 = v62;
        (*v55)(v22, v6);
        v29 = *(sub_10022C350(&qword_100CA38C0) + 48);
        v30 = type metadata accessor for LocationModelData();
        (*(*(v30 - 8) + 8))(v22 + v29, v30);
        sub_100533554(v22, &type metadata accessor for CurrentLocation);
        result = (*v28)(v64, v6);
      }

      else
      {
        if (v27 == v54)
        {
          (*v55)(v22, v6);
          v41 = *(sub_10022C350(&qword_100CA38B8) + 48);
          v42 = type metadata accessor for LocationModelData();
          (*(*(v42 - 8) + 8))(v22 + v41, v42);
          sub_100533554(v22, &type metadata accessor for SavedLocation);
          v43 = *v48;
          (*v48)(v49, v64, v6);
          v44 = v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1006A77CC();
            v44 = v66;
          }

          v46 = v44[2];
          if (v46 >= v44[3] >> 1)
          {
            sub_1006A77CC();
            v44 = v66;
          }

          ++v19;
          v44[2] = v46 + 1;
          v50 = v44;
          result = (v43)(v44 + v23 + v46 * v24, v49, v6);
          v20 = v60;
          goto LABEL_4;
        }

        if (qword_100CA26A0 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_10000703C(v31, qword_100D90A48);
        v25(v12, v64, v6);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v65 = v35;
          *v34 = v51;
          v25(v53, v57, v6);
          v36 = String.init<A>(describing:)();
          v38 = v37;
          v39 = *v62;
          (*v62)(v57, v6);
          v40 = sub_100078694(v36, v38, &v65);

          *(v34 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v32, v33, "Failed to create coalescedSavedLocations with unknown type=%{public}s", v34, 0xCu);
          sub_100006F14(v35);
          v7 = v52;

          v12 = v57;
        }

        else
        {

          v39 = *v62;
          (*v62)(v12, v6);
        }

        v22 = v56;
        v39(v56, v6);
        result = v39(v64, v6);
      }

      ++v19;
      v20 = v60;
    }

    __break(1u);
  }

  return result;
}

void sub_100530598(uint64_t a1@<X0>, void (**a2)(unint64_t, unint64_t, uint64_t)@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = type metadata accessor for ActualListInput(0);
  sub_10052CECC(a1, v8, a2 + v9[27], *(a2 + v9[26] + 8), a4, *(a2 + v9[30] + 16), v10, *(a2 + v9[28]), a3, 0, 0, 0, *(a2 + v9[35]), *(a2 + v9[32]));
}

uint64_t sub_100530664@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for URL.WeatherSourcePar();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WeatherMetadata();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CurrentWeather();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CC41A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v13 - 8);
  v45 = &v41 - v14;
  v15 = sub_10022C350(&qword_100CB1288);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for ProviderAttributionConfiguration();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppConfiguration.providerAttribution.getter();
  v25 = ProviderAttributionConfiguration.hideLocationViewDataProviderLogos.getter();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    v28 = v50;
    sub_100530CA4(v49, v20);
    sub_1000302D8(v20, v17, &qword_100CB1288);
    v29 = type metadata accessor for WeatherDataModel();
    if (sub_100024D10(v17, 1, v29) == 1)
    {
      sub_1000180EC(v20, &qword_100CB1288);
      v30 = v17;
      v31 = &qword_100CB1288;
    }

    else
    {
      WeatherDataModel.currentWeather.getter();
      (*(*(v29 - 8) + 8))(v17, v29);
      CurrentWeather.metadata.getter();
      (*(v46 + 8))(v9, v7);
      WeatherMetadata.attribution.getter();
      (*(v47 + 8))(v6, v48);
      v32 = type metadata accessor for WeatherAttribution();
      if (sub_100024D10(v12, 1, v32) != 1)
      {
        v36 = v45;
        WeatherAttribution.sourceURL.getter();
        (*(*(v32 - 8) + 8))(v12, v32);
        v37 = type metadata accessor for URL();
        v33 = v28;
        if (sub_100024D10(v36, 1, v37) != 1)
        {
          v39 = v42;
          v38 = v43;
          v40 = v44;
          (*(v43 + 104))(v42, enum case for URL.WeatherSourcePar.app(_:), v44);
          URL.applyWeatherSourceQueryParams(for:)();
          (*(v38 + 8))(v39, v40);
          sub_1000180EC(v20, &qword_100CB1288);
          (*(*(v37 - 8) + 8))(v36, v37);
          v27 = v33;
          v34 = 0;
          v26 = v37;
          return sub_10001B350(v27, v34, 1, v26);
        }

        sub_1000180EC(v20, &qword_100CB1288);
        sub_1000180EC(v36, &qword_100CB3AB0);
        goto LABEL_8;
      }

      sub_1000180EC(v20, &qword_100CB1288);
      v31 = &qword_100CC41A8;
      v30 = v12;
    }

    sub_1000180EC(v30, v31);
    v33 = v28;
LABEL_8:
    v26 = type metadata accessor for URL();
    v27 = v33;
    goto LABEL_9;
  }

  v26 = type metadata accessor for URL();
  v27 = v50;
LABEL_9:
  v34 = 1;
  return sub_10001B350(v27, v34, 1, v26);
}

uint64_t sub_100530CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v10 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v24[-v14];
  v25 = a1;
  sub_1007451C0();
  sub_1003DFBA4(v16, v9);

  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_1000180EC(v9, &qword_100CA37B0);
LABEL_5:
    v17 = type metadata accessor for WeatherDataModel();
    return sub_10001B350(a2, 1, 1, v17);
  }

  else
  {
    sub_100113754(v9, v15, type metadata accessor for LocationWeatherDataState);
    sub_100113754(v15, v12, type metadata accessor for LocationWeatherDataState);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v19 = sub_10022C350(&qword_100CA75D8);
        v20 = *(v19 + 48);
        v21 = *(v19 + 64);
        sub_100113754(v12, v6, type metadata accessor for WeatherData);
        v22 = *(v4 + 24);
        v23 = type metadata accessor for WeatherDataModel();
        (*(*(v23 - 8) + 16))(a2, &v6[v22], v23);
        sub_100533554(v6, type metadata accessor for WeatherData);
        sub_10001B350(a2, 0, 1, v23);
        sub_100533554(&v12[v21], type metadata accessor for NewsDataModel);
        result = sub_100533554(&v12[v20], type metadata accessor for PreprocessedWeatherData);
        break;
      case 3u:
        goto LABEL_5;
      default:
        sub_100533554(v12, type metadata accessor for LocationWeatherDataState);
        goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_100530FE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ActualListInput(0) + 120) + 16);
  Location.Identifier.id.getter();
  if (*(v3 + 16) && (v4 = sub_100031B34(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for LocationWeatherDataState(0);
    sub_1001113A0(v7 + *(*(v8 - 8) + 72) * v6, a2, type metadata accessor for LocationWeatherDataState);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for LocationWeatherDataState(0);
    v9 = a2;
    v10 = 1;
  }

  sub_10001B350(v9, v10, 1, v11);
}

uint64_t sub_1005310E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ProviderAttributionConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppConfiguration.providerAttribution.getter();
  v6 = ProviderAttributionConfiguration.mapDataLearnMoreURL.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

void *sub_1005311C4(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v62 = type metadata accessor for URL.WeatherSourcePar();
  v3 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for URL();
  v65 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = v44 - v7;
  __chkstk_darwin(v8);
  v57 = v44 - v9;
  v10 = type metadata accessor for WeatherProviderAttribution();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  v16 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v16 - 8);
  v18 = v44 - v17;
  v19 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v19);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ActualListInput(0);
  sub_1000302D8(a1 + *(v22 + 20), v18, &unk_100CE49F0);
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_1000180EC(v18, &unk_100CE49F0);
    return _swiftEmptyArrayStorage;
  }

  sub_100113754(v18, v21, &type metadata accessor for CurrentLocation);
  sub_1000161C0((v66 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherProviderAttributionCacheManager), *(v66 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherProviderAttributionCacheManager + 24));
  v23 = CurrentLocation.clLocation.getter();
  v24 = dispatch thunk of WeatherProviderAttributionCacheManagerType.cachedAttributions(for:)();

  v25 = *(v24 + 16);
  if (!v25)
  {

    sub_100533554(v21, &type metadata accessor for CurrentLocation);
    return _swiftEmptyArrayStorage;
  }

  v45 = v21;
  v67 = _swiftEmptyArrayStorage;
  sub_1006A7FF4();
  v26 = v67;
  v28 = *(v11 + 16);
  v27 = v11 + 16;
  v54 = v28;
  v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
  v44[1] = v24;
  v53 = v29;
  v30 = v24 + v29;
  v52 = *(v27 + 56);
  v51 = (v3 + 104);
  v50 = enum case for URL.WeatherSourcePar.app(_:);
  v48 = (v65 + 1);
  v49 = (v3 + 8);
  v47 = (v27 - 8);
  v55 = v27;
  v46 = (v27 + 16);
  do
  {
    v65 = v26;
    v66 = v25;
    v31 = v56;
    v54(v56, v30, v10);
    v32 = WeatherProviderAttribution.name.getter();
    v63 = v33;
    v64 = v32;
    WeatherProviderAttribution.logoURL.getter();
    v34 = v15;
    v35 = v59;
    WeatherProviderAttribution.source.getter();
    v36 = v61;
    v37 = v10;
    v38 = v62;
    (*v51)(v61, v50, v62);
    URL.applyWeatherSourceQueryParams(for:)();
    v26 = v65;
    v39 = v38;
    v10 = v37;
    (*v49)(v36, v39);
    v40 = v35;
    v15 = v34;
    (*v48)(v40, v60);
    WeatherProviderAttribution.init(name:logoURL:source:)();
    (*v47)(v31, v37);
    v67 = v26;
    v41 = v26[2];
    if (v41 >= v26[3] >> 1)
    {
      sub_1006A7FF4();
      v26 = v67;
    }

    v26[2] = v41 + 1;
    v42 = v52;
    (*v46)(v26 + v53 + v41 * v52, v34, v37);
    v30 += v42;
    v25 = v66 - 1;
  }

  while (v66 != 1);
  sub_100533554(v45, &type metadata accessor for CurrentLocation);

  return v26;
}

uint64_t sub_1005317BC(uint64_t a1, int a2, uint64_t a3)
{
  v26 = a3;
  v25 = a2;
  v31 = type metadata accessor for Location.Identifier();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LocationModel();
  v9 = __chkstk_darwin(v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v28 = *(v13 + 56);
    v29 = v14;
    v16 = (v13 - 8);
    v27 = v4 + 32;
    v17 = _swiftEmptyArrayStorage;
    v30 = v6;
    do
    {
      v18 = v13;
      v29(v11, v15, v7, v9);
      LocationModel.identifier.getter();
      (*v16)(v11, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100030858();
        v17 = v20;
      }

      v19 = v17[2];
      if (v19 >= v17[3] >> 1)
      {
        sub_100030858();
        v17 = v21;
      }

      v17[2] = v19 + 1;
      (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v30, v31);
      v15 += v28;
      --v12;
      v13 = v18;
    }

    while (v12);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  sub_100531A64(v25 & 1, v17, v26);
  v22 = static LocationIndexMapper.makeMapping(from:savedLocations:)();

  return v22;
}

void *sub_100531A64(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for ListLocationViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Location.Identifier();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
  }

  else
  {
    v13 = *(a3 + 16);
    a2 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v20 = _swiftEmptyArrayStorage;
      sub_10003DC90();
      a2 = v20;
      v14 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v18 = *(v7 + 72);
      do
      {
        sub_1001113A0(v14, v9, type metadata accessor for ListLocationViewModel);
        LocationModel.identifier.getter();
        sub_100533554(v9, type metadata accessor for ListLocationViewModel);
        v20 = a2;
        v15 = a2[2];
        if (v15 >= a2[3] >> 1)
        {
          sub_10003DC90();
          a2 = v20;
        }

        a2[2] = v15 + 1;
        (*(v10 + 32))(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v15, v12, v19);
        v14 += v18;
        --v13;
      }

      while (v13);
    }
  }

  return a2;
}

uint64_t sub_100531CBC()
{
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory____lazy_storage___listAnimationKind, &qword_100CC3788);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundModelFactory);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherConditionBackgroundTimeDataFactory);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherEventDescriptionStringBuilder);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_appConfigurationManager);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_listViewTipManager);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_notificationsOptInStatusFactory);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_weatherProviderAttributionCacheManager);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_cachedInput, &qword_100CC4160);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_cachedModel, &qword_100CA4C30);

  return v0;
}

uint64_t sub_100531DE8()
{
  sub_100531CBC();

  return swift_deallocClassInstance();
}

uint64_t sub_100531EAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Location.Identifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Location();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationModel.location.getter();
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_1000180EC(v9, &qword_100CA65D8);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    Location.identifier.getter();
    v14 = sub_100529EE0(v6, a2);
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
  }

  return v14;
}

uint64_t sub_1005320EC()
{
  v0 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for LocationCompositionState();
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10052A504() & 1) == 0)
  {
    return LocationModel.name.getter();
  }

  v6 = type metadata accessor for WeatherData(0);
  sub_10001B350(v2, 1, 1, v6);
  sub_1001A38F4(v2, v5);
  sub_1000180EC(v2, &qword_100CA3898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001A6184(*v5, *(v5 + 1));
    v7 = *(sub_10022C350(&qword_100CC4190) + 48);
    v8 = LocationModel.name.getter();
    v9 = &v5[v7];
  }

  else
  {
    v10 = *(v5 + 1);
    v8 = *(v5 + 2);
    v11 = *(sub_10022C350(&qword_100CC4198) + 48);

    if (v10)
    {
    }

    else
    {
      v8 = LocationModel.name.getter();
    }

    v9 = &v5[v11];
  }

  sub_1000180EC(v9, &qword_100CA3588);
  return v8;
}

uint64_t sub_1005322E8@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v67 = a4;
  v64 = a3;
  v61 = a2;
  v5 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v5 - 8);
  v65 = &v59 - v6;
  v7 = type metadata accessor for Location.Identifier();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v59 - v11;
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocationCompositionState();
  __chkstk_darwin(v14);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = (&v59 - v18);
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  sub_1001A38F4(a1, (&v59 - v21));
  sub_1001113A0(v22, v19, type metadata accessor for LocationCompositionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100533554(v19, type metadata accessor for LocationCompositionState);
  }

  else
  {
    sub_1001A6184(*v19, v19[1]);
    v23 = sub_10022C350(&qword_100CC4198);
    v24 = v19 + *(v23 + 64);
    v25 = *(v24 + 1);
    v26 = v24[16];
    sub_1000180EC(v19 + *(v23 + 48), &qword_100CA3588);
    if (v25)
    {

      if ((v26 & 1) == 0)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        LOWORD(v58) = 2;
        v57[0] = "A description for the user's last-seen location, shown only if we are using weather data that's from a cached 'best' location and not their actual current location.";
        v57[1] = 164;
        v51 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
        v53 = v52;
        sub_100533554(v22, type metadata accessor for LocationCompositionState);
        v54 = v67;
        *v67 = v51;
        v54[1] = v53;
        type metadata accessor for ListLocationRowPrimaryText(0);
        return swift_storeEnumTagMultiPayload();
      }
    }
  }

  v27 = v66;
  if ((sub_10052A504() & 1) == 0)
  {
    if (v61)
    {
      LocationModel.identifier.getter();
      v33 = Location.Identifier.name.getter();
      v35 = v34;
      (*(v62 + 8))(v9, v63);

      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        sub_100533554(v22, type metadata accessor for LocationCompositionState);
        v37 = *(v27 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_myLocationString + 8);
        v38 = v67;
        *v67 = *(v27 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_myLocationString);
        v38[1] = v37;
        type metadata accessor for ListLocationRowPrimaryText(0);
        swift_storeEnumTagMultiPayload();
      }
    }

    v40 = v65;
    v41 = LocationModel.timeZone.getter();
    __chkstk_darwin(v41);
    v58 = v64;
    sub_1003497F8(sub_1005335AC, v57, v67);
    sub_1000180EC(v40, &qword_100CACE08);
    sub_100533554(v22, type metadata accessor for LocationCompositionState);
    type metadata accessor for ListLocationRowPrimaryText(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1001113A0(v22, v16, type metadata accessor for LocationCompositionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001A6184(*v16, v16[1]);
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(sub_10022C350(&qword_100CC4190) + 48);
    v30 = v65;
    v31 = LocationModel.timeZone.getter();
    __chkstk_darwin(v31);
    v58 = v64;
    sub_1003497F8(sub_1005335AC, v57, v67);
    sub_1000180EC(v30, &qword_100CACE08);
    sub_100533554(v22, type metadata accessor for LocationCompositionState);
    type metadata accessor for ListLocationRowPrimaryText(0);
    swift_storeEnumTagMultiPayload();
    v32 = v16 + v29;
  }

  else
  {
    v42 = sub_10022C350(&qword_100CC4198);

    v43 = v60;
    LocationModel.identifier.getter();
    v44 = Location.Identifier.name.getter();
    v46 = v45;
    (*(v62 + 8))(v43, v63);

    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v44 & 0xFFFFFFFFFFFFLL;
    }

    v48 = *(v42 + 48);
    if (v47)
    {
      sub_100533554(v22, type metadata accessor for LocationCompositionState);
      v49 = *(v27 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_myLocationString + 8);
      v50 = v67;
      *v67 = *(v27 + OBJC_IVAR____TtC7Weather20ListViewModelFactory_myLocationString);
      v50[1] = v49;
      type metadata accessor for ListLocationRowPrimaryText(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v55 = v65;
      v56 = LocationModel.timeZone.getter();
      __chkstk_darwin(v56);
      v58 = v64;
      sub_1003497F8(sub_1005335AC, v57, v67);
      sub_1000180EC(v55, &qword_100CACE08);
      sub_100533554(v22, type metadata accessor for LocationCompositionState);
      type metadata accessor for ListLocationRowPrimaryText(0);
      swift_storeEnumTagMultiPayload();
    }

    v32 = v16 + v48;
  }

  return sub_1000180EC(v32, &qword_100CA3588);
}

uint64_t sub_100532B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v73 = a2;
  v75 = a1;
  v76 = a3;
  v3 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v3 - 8);
  v67 = &v67 - v4;
  v5 = type metadata accessor for LocationOfInterestType();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for LocationOfInterest();
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v67 - v10;
  v11 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  __chkstk_darwin(v20);
  v22 = &v67 - v21;
  v23 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v23 - 8);
  v25 = &v67 - v24;
  v26 = type metadata accessor for LocationCompositionState();
  __chkstk_darwin(v26);
  v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v31 = (&v67 - v30);
  result = sub_10052A504();
  if ((result & 1) == 0)
  {
    if (v73 != 1)
    {
      goto LABEL_19;
    }

    LocationModel.kind.getter();
    v42 = Location.Identifier.Kind.rawValue.getter();
    v44 = v43;
    if (v42 == Location.Identifier.Kind.rawValue.getter() && v44 == v45)
    {

      goto LABEL_19;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
LABEL_19:
      countAndFlagsBits = 0;
      object = 0;
LABEL_20:
      v38 = 0;
      v39 = 0;
LABEL_21:
      v40 = 2;
      goto LABEL_24;
    }

    v48 = v67;
    LocationModel.location.getter();
    v49 = type metadata accessor for Location();
    if (sub_100024D10(v48, 1, v49) != 1)
    {
      Location.sanitizedSecondaryName.getter();
      v39 = v65;
      result = (*(*(v49 - 8) + 8))(v48, v49);
      if (v39)
      {
        v66 = String.uppercasedWithPreferredLocale()();
        countAndFlagsBits = v66._countAndFlagsBits;
        object = v66._object;

        v38 = 0;
        v39 = 0;
        v40 = 0;
        goto LABEL_24;
      }

      countAndFlagsBits = 0;
      object = 0;
      v38 = 0;
      goto LABEL_21;
    }

    v50 = &qword_100CA65D8;
    v51 = v48;
LABEL_16:
    result = sub_1000180EC(v51, v50);
    goto LABEL_19;
  }

  v33 = type metadata accessor for WeatherData(0);
  sub_10001B350(v25, 1, 1, v33);
  sub_1001A38F4(v25, v31);
  sub_1000180EC(v25, &qword_100CA3898);
  sub_1001113A0(v31, v28, type metadata accessor for LocationCompositionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  object = v28[1];
  if (EnumCaseMultiPayload != 1)
  {
    sub_1001A6184(*v28, v28[1]);
    v52 = *(sub_10022C350(&qword_100CC4198) + 48);

    sub_10011C0F0(v28 + v52, v22, &qword_100CA3588);
    sub_1000302D8(v22, v19, &qword_100CA3588);
    v53 = v74;
    if (sub_100024D10(v19, 1, v74) != 1)
    {
      v59 = v70;
      v60 = v68;
      (*(v70 + 32))(v68, v19, v53);
      countAndFlagsBits = LocationOfInterest.imageName.getter();
      object = v61;
      v62 = v69;
      LocationOfInterest.type.getter();
      v38 = LocationOfInterestType.title.getter();
      v39 = v63;
      (*(v71 + 8))(v62, v72);
      (*(v59 + 8))(v60, v53);
      v58 = v22;
      goto LABEL_23;
    }

    sub_1000180EC(v22, &qword_100CA3588);
    sub_100533554(v31, type metadata accessor for LocationCompositionState);
    v51 = v19;
    v50 = &qword_100CA3588;
    goto LABEL_16;
  }

  v75 = *v28;
  v36 = sub_10022C350(&qword_100CC4190);
  sub_10011C0F0(v28 + *(v36 + 48), v16, &qword_100CA3588);
  sub_1000302D8(v16, v13, &qword_100CA3588);
  v37 = v74;
  if (sub_100024D10(v13, 1, v74) != 1)
  {
    sub_1001A6184(v75, object);
    v54 = v70;
    (*(v70 + 32))(v8, v13, v37);
    countAndFlagsBits = LocationOfInterest.imageName.getter();
    object = v55;
    v56 = v69;
    LocationOfInterest.type.getter();
    v38 = LocationOfInterestType.title.getter();
    v39 = v57;
    (*(v71 + 8))(v56, v72);
    (*(v54 + 8))(v8, v37);
    v58 = v16;
LABEL_23:
    sub_1000180EC(v58, &qword_100CA3588);
    result = sub_100533554(v31, type metadata accessor for LocationCompositionState);
    v40 = 1;
    goto LABEL_24;
  }

  sub_1000180EC(v16, &qword_100CA3588);
  sub_100533554(v31, type metadata accessor for LocationCompositionState);
  result = sub_1000180EC(v13, &qword_100CA3588);
  if (!object)
  {
    countAndFlagsBits = 0;
    goto LABEL_20;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  countAndFlagsBits = v75;
LABEL_24:
  v64 = v76;
  *v76 = countAndFlagsBits;
  v64[1] = object;
  v64[2] = v38;
  v64[3] = v39;
  *(v64 + 32) = v40;
  return result;
}

uint64_t sub_10053332C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for Date();
  sub_1000037E8();
  return (*(v4 + 16))(a2, a1);
}

uint64_t sub_100533394@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppConfiguration();
  sub_100003810(v2);

  return sub_1005310E0(a1);
}

uint64_t sub_10053347C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return v3;
}

uint64_t sub_1005334C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA4C30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100533554(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005335C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ViewState(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 48))(&v24, v7);
  sub_1000950A0();

  sub_1000950A0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10009EE14();
    sub_10009EE14();
LABEL_3:
    if (qword_100CA26A8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000703C(v10, qword_100D90A60);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Location track view session was called but ViewState is not set to locationViewer", v13, 2u);
    }

    v14 = enum case for ViewAction.unknown(_:);
    v15 = type metadata accessor for ViewAction();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  v17 = *v5;
  if (*&v9[*(v6 + 36) + 8] == 1)
  {
    v18 = [objc_opt_self() currentDevice];
    [v18 userInterfaceIdiom];

    v19 = v9[*(v6 + 28)];
    sub_10009EE14();
    if ((v19 & 1) == 0)
    {

      goto LABEL_3;
    }
  }

  else
  {
    sub_10009EE14();
  }

  v20 = *(v17 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);

  v21 = type metadata accessor for ViewAction();
  switch(v20)
  {
    case 1:
      v22 = &enum case for ViewAction.swipe(_:);
      break;
    case 2:
      v22 = &enum case for ViewAction.appLaunch(_:);
      break;
    case 3:
      v22 = &enum case for ViewAction.locationTap(_:);
      break;
    default:
      v22 = &enum case for ViewAction.unknown(_:);
      break;
  }

  return (*(*(v21 - 8) + 104))(a1, *v22, v21);
}

uint64_t sub_100533980@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = type metadata accessor for ViewAction();
  __chkstk_darwin(v1 - 8);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ViewType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 104))(v7, enum case for ViewType.location(_:), v4);
  sub_1005335C4(v3);
  return ViewData.init(viewSessionID:viewType:viewAction:)();
}

uint64_t sub_100533B74()
{
  v1 = type metadata accessor for ViewData();
  sub_1000037C4();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  sub_10003BA64();
  sub_100533980(v0);
  (*(v3 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  Tracker.transaction(block:)();

  return (*(v3 + 8))(v0, v1);
}

void sub_100533CDC()
{
  sub_10000C778();
  v24 = v1;
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ViewData();
  sub_1000037C4();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  sub_100533980(&v23 - v17);
  v23 = *v0;
  (*(v11 + 16))(v15, v18, v9);
  v19 = v2;
  (*(v4 + 16))(v8, v24, v2);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = (v13 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  (*(v11 + 32))(v22 + v20, v15, v9);
  (*(v4 + 32))(v22 + v21, v8, v19);
  Tracker.transaction(block:)();

  (*(v11 + 8))(v18, v9);
  sub_10000536C();
}

uint64_t sub_100533F14()
{
  type metadata accessor for ViewData();
  sub_100171D5C(&qword_100CB3EE0, &type metadata accessor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationViewEvent();
  sub_100171D5C(&qword_100CC41B8, &type metadata accessor for LocationViewEvent);
  return AccessTracker.explicitTime<A>(_:startTime:)();
}

uint64_t sub_100534014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v4 = type metadata accessor for LocationsState();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Location.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = v31 - v14;
  v16 = *(v9 + 16);
  v17 = v16(v31 - v14, a1, v8, v13);
  (*(v2 + 48))(&v34, v17);
  sub_1000950A0();

  v18 = *&v7[*(v5 + 44)];

  sub_10009EE14();
  v33 = v15;
  v19 = sub_1000E8AF0(sub_10053856C, v32, v18);
  LOBYTE(v5) = v20;

  if (v5)
  {
    if (qword_100CA26A8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000703C(v22, qword_100D90A60);
    (v16)(v11, v15, v8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      v34 = v31[0];
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v26 = Location.Identifier.id.getter();
      v28 = v27;
      v29 = *(v9 + 8);
      v29(v11, v8);
      v30 = sub_100078694(v26, v28, &v34);

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to find location position, location=%{private,mask.hash}s", v25, 0x16u);
      sub_100006F14(v31[0]);
    }

    else
    {

      v29 = *(v9 + 8);
      v29(v11, v8);
    }

    LocationListPositionData.init(position:)();
    return (v29)(v15, v8);
  }

  else
  {
    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v19 <= 0x7FFFFFFF)
    {
      LocationListPositionData.init(position:)();
      return (*(v9 + 8))(v15, v8);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1005343F0()
{
  v0 = Location.Identifier.id.getter();
  v2 = v1;
  if (v0 == Location.Identifier.id.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100534488()
{
  v0 = type metadata accessor for TemperatureScale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v7 = UnitManager.temperature.getter();

  sub_1009D072C(v7, v6);
  (*(v1 + 16))(v3, v6, v0);
  TemperatureScaleData.init(temperatureScale:)();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1005345D0(uint64_t a1)
{
  v3 = type metadata accessor for Location.Identifier();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  sub_1000161C0((v1 + 8), *(v1 + 32));
  if (dispatch thunk of LocationPrivacySamplerType.canRecordLocation(_:)())
  {
    Location.Identifier.coordinate.getter();
    Location.Identifier.coordinate.getter();
  }

  LocationData.init(latitudeDouble:longitudeDouble:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10053471C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v55 - v5;
  v7 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v9 = type metadata accessor for Location.Identifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v55 - v14;
  v16 = __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v58 = v10;
  v59 = v19;
  v57 = *(v10 + 16);
  v20 = v57(&v55 - v17, a1, v16);
  (*(v2 + 48))(&v62, v20);
  v21 = *(v62 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v61 = v18;
  v22 = Location.Identifier.id.getter();
  sub_1000864C0(v22, v23, v21);

  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_1000180EC(v6, &qword_100CA37B0);
    if (qword_100CA26A8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000703C(v24, qword_100D90A60);
    v25 = v61;
    v26 = v59;
    (v57)(v12, v61, v59);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v31 = Location.Identifier.id.getter();
      v33 = v32;
      v34 = *(v58 + 8);
      v34(v12, v26);
      v35 = sub_100078694(v31, v33, &v62);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Weather missing for location: %{private,mask.hash}s", v29, 0x16u);
      sub_100006F14(v30);

      v34(v61, v26);
    }

    else
    {

      v38 = *(v58 + 8);
      v38(v12, v26);
      v38(v25, v26);
    }

LABEL_14:
    v37 = 1;
    v36 = v60;
    goto LABEL_15;
  }

  sub_10010709C();
  sub_1000950A0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10009EE14();
    v39 = v59;
    if (qword_100CA26A8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000703C(v40, qword_100D90A60);
    v41 = v56;
    v42 = v61;
    (v57)(v56, v61, v39);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v62 = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v47 = Location.Identifier.id.getter();
      v49 = v48;
      v50 = *(v58 + 8);
      v50(v41, v39);
      v51 = sub_100078694(v47, v49, &v62);

      *(v45 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "Data missing for weather data for %{private,mask.hash}s", v45, 0x16u);
      sub_100006F14(v46);

      sub_10009EE14();
      v50(v61, v39);
    }

    else
    {

      v52 = *(v58 + 8);
      v52(v41, v39);
      sub_10009EE14();
      v52(v42, v39);
    }

    goto LABEL_14;
  }

  sub_10009EE14();
  (*(v58 + 8))(v61, v59);
  sub_10022C350(&qword_100CA75D8);
  v36 = v60;
  sub_10010709C();
  sub_10009EE14();
  sub_10009EE14();
  v37 = 0;
LABEL_15:
  v53 = type metadata accessor for WeatherData(0);
  return sub_10001B350(v36, v37, 1, v53);
}

void sub_100534E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v141 = type metadata accessor for AQIAvailabilityData();
  sub_1000037C4();
  v123 = v28;
  __chkstk_darwin(v29);
  sub_10000FBD0();
  v140 = v30;
  v122 = v31;
  __chkstk_darwin(v32);
  sub_10000E70C();
  v138 = v33;
  v34 = sub_10022C350(&qword_100CC41C0);
  v35 = sub_100003AE8(v34);
  v120 = v36;
  __chkstk_darwin(v35);
  sub_10000FBD0();
  v139 = v37;
  v121 = v38;
  __chkstk_darwin(v39);
  sub_10000E70C();
  v137 = v40;
  v41 = sub_10022C350(&qword_100CB1288);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003C38();
  v116 = v43 - v44;
  __chkstk_darwin(v45);
  v47 = v115 - v46;
  v48 = sub_10022C350(&qword_100CB1290);
  v49 = sub_100003AE8(v48);
  v117 = v50;
  __chkstk_darwin(v49);
  sub_10000FBD0();
  v134 = v51;
  sub_100022D78(&a16);
  __chkstk_darwin(v52);
  v54 = v115 - v53;
  v55 = sub_10022C350(&qword_100CA3898);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003C38();
  v59 = v57 - v58;
  __chkstk_darwin(v60);
  v62 = v115 - v61;
  __chkstk_darwin(v63);
  sub_10002C820();
  v135 = type metadata accessor for LocationData();
  sub_1000037C4();
  v119 = v64;
  __chkstk_darwin(v65);
  sub_10000FBD0();
  v126 = v66;
  sub_100022D78(&a13);
  __chkstk_darwin(v67);
  sub_10003BA64();
  type metadata accessor for LocationListPositionData();
  sub_1000037C4();
  v131 = v69;
  v132 = v68;
  __chkstk_darwin(v68);
  sub_10000FBD0();
  v125 = v70;
  sub_100022D78(&a12);
  __chkstk_darwin(v71);
  sub_10000EA8C();
  v130 = type metadata accessor for TemperatureScaleData();
  sub_1000037C4();
  v128 = v72;
  v74 = *(v73 + 64);
  __chkstk_darwin(v75);
  v124 = v115 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  sub_10000E70C();
  v127 = v77;
  sub_100534488();
  v129 = v23;
  sub_100534014(v27, v23);
  v133 = v22;
  sub_1005345D0(v27);
  sub_10053471C(v27, v20);
  v136 = v20;
  sub_100095588();
  v78 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v62, 1, v78) == 1)
  {
    sub_1000180EC(v62, &qword_100CA3898);
    type metadata accessor for WeatherDataModel();
    sub_100003934();
  }

  else
  {
    v83 = *(v78 + 24);
    v84 = v54;
    v85 = type metadata accessor for WeatherDataModel();
    sub_1000037E8();
    (*(v86 + 16))(v47, &v62[v83], v85);
    sub_1000060A8();
    sub_10009EE14();
    sub_10000E7B0();
    v82 = v85;
    v54 = v84;
  }

  sub_10001B350(v79, v80, v81, v82);
  sub_1008B1ED0(v47, v54);
  sub_100095588();
  if (sub_100024D10(v59, 1, v78) == 1)
  {
    sub_1000180EC(v59, &qword_100CA3898);
    type metadata accessor for WeatherDataModel();
    v87 = v116;
    sub_100003934();
  }

  else
  {
    v92 = *(v78 + 24);
    v93 = type metadata accessor for WeatherDataModel();
    sub_1000037E8();
    v95 = v59 + v92;
    v87 = v116;
    (*(v94 + 16))(v116, v95, v93);
    sub_1000060A8();
    sub_10009EE14();
    sub_10000E7B0();
    v91 = v93;
  }

  sub_10001B350(v88, v89, v90, v91);
  v96 = v137;
  sub_100727954(v87, v137);
  v97 = type metadata accessor for AQIData();
  sub_100024D10(v96, 1, v97);
  v98 = v138;
  AQIAvailabilityData.init(isAQIAvailable:)();
  v116 = *v21;
  v99 = v131;
  (*(v131 + 16))(v125, v129, v132);
  v100 = v128;
  (*(v128 + 16))(v124, v127, v130);
  sub_1000184CC();
  v101(v126, v133, v135);
  sub_100095588();
  sub_100095588();
  v102 = v123;
  (*(v123 + 16))(v140, v98, v141);
  v103 = *(v99 + 80);
  v115[0] = v54;
  v104 = (v103 + 16) & ~v103;
  v105 = (v115[1] + *(v100 + 80) + v104) & ~*(v100 + 80);
  v106 = (v74 + *(v23 + 80) + v105) & ~*(v23 + 80);
  v121 = (v121 + *(v102 + 80) + ((v118 + *(v120 + 80) + ((v115[2] + *(v117 + 80) + v106) & ~*(v117 + 80))) & ~*(v120 + 80))) & ~*(v102 + 80);
  v107 = swift_allocObject();
  v108 = v107 + v104;
  v109 = v132;
  (*(v99 + 32))(v108, v125, v132);
  v110 = v107 + v105;
  v111 = v130;
  (*(v100 + 32))(v110, v124, v130);
  v112 = v107 + v106;
  v113 = v135;
  (*(v23 + 32))(v112, v126, v135);
  sub_100051BBC();
  sub_100051BBC();
  v114 = v141;
  (*(v102 + 32))(v107 + v121, v140, v141);
  Tracker.transaction(block:)();

  (*(v102 + 8))(v138, v114);
  sub_1000180EC(v115[0], &qword_100CB1290);
  sub_1000180EC(v136, &qword_100CA3898);
  (*(v23 + 8))(v133, v113);
  (*(v131 + 8))(v129, v109);
  (*(v128 + 8))(v127, v111);
  sub_1000180EC(v137, &qword_100CC41C0);
  sub_10000536C();
}

uint64_t sub_100535804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v7 = sub_10022C350(&qword_100CC41C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v28 = type metadata accessor for AQIData();
  v23 = *(v28 - 8);
  __chkstk_darwin(v28);
  v22 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CB1290);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for LocationConditionData();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationListPositionData();
  sub_100171D5C(&qword_100CC41C8, &type metadata accessor for LocationListPositionData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for TemperatureScaleData();
  sub_100171D5C(&qword_100CB3EE8, &type metadata accessor for TemperatureScaleData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationData();
  sub_100171D5C(&qword_100CB12A8, &type metadata accessor for LocationData);
  AccessTracker.push<A>(data:traits:file:line:)();
  sub_100095588();
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CB1290);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_100171D5C(&qword_100CB12F8, &type metadata accessor for LocationConditionData);
    AccessTracker.push<A>(data:traits:file:line:)();
    (*(v15 + 8))(v17, v14);
  }

  sub_100095588();
  v18 = v28;
  if (sub_100024D10(v9, 1, v28) == 1)
  {
    sub_1000180EC(v9, &qword_100CC41C0);
  }

  else
  {
    v20 = v22;
    v19 = v23;
    (*(v23 + 32))(v22, v9, v18);
    sub_100171D5C(&qword_100CC41E8, &type metadata accessor for AQIData);
    AccessTracker.push<A>(data:traits:file:line:)();
    (*(v19 + 8))(v20, v18);
  }

  type metadata accessor for AQIAvailabilityData();
  sub_100171D5C(&qword_100CC41D0, &type metadata accessor for AQIAvailabilityData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationViewEvent();
  sub_100171D5C(&qword_100CC41B8, &type metadata accessor for LocationViewEvent);
  memset(v30, 0, sizeof(v30));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1000180EC(v30, &qword_100CE2F40);
}

void sub_100535DE0()
{
  sub_10000C778();
  v135 = v4;
  v142 = v5;
  v7 = v6;
  v157 = type metadata accessor for Date();
  sub_1000037C4();
  v140 = v8;
  __chkstk_darwin(v9);
  v137 = v10;
  v163 = v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ErrorData = type metadata accessor for LocationViewLoadErrorData();
  sub_1000037C4();
  v139 = v11;
  __chkstk_darwin(v12);
  sub_10000FBD0();
  v160 = v13;
  sub_100022D78(&v167);
  __chkstk_darwin(v14);
  sub_10000E70C();
  v161 = v15;
  PerfLogData = type metadata accessor for LocationViewLoadPerfLogData();
  sub_1000037C4();
  v138 = v16;
  __chkstk_darwin(v17);
  sub_10000FBD0();
  v155 = v18;
  sub_100022D78(&v165);
  __chkstk_darwin(v19);
  sub_10000E70C();
  v159 = v20;
  StatusLog = type metadata accessor for VisibleLocationWeatherLoadStatusLog();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v158 = type metadata accessor for AQIAvailabilityData();
  sub_1000037C4();
  v156 = v25;
  __chkstk_darwin(v26);
  sub_10000FBD0();
  v154 = v27;
  sub_100022D78(&ErrorData);
  __chkstk_darwin(v28);
  sub_10000E70C();
  v169 = v29;
  v30 = sub_10022C350(&qword_100CC41C0);
  v31 = sub_100003AE8(v30);
  v131 = v32;
  __chkstk_darwin(v31);
  sub_10000FBD0();
  v153 = v33;
  sub_100022D78(&v163);
  __chkstk_darwin(v34);
  sub_10000E70C();
  v170 = v35;
  v36 = sub_10022C350(&qword_100CB1288);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003C38();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  sub_10003BA64();
  v42 = sub_10022C350(&qword_100CB1290);
  v43 = sub_100003AE8(v42);
  v129 = v44;
  __chkstk_darwin(v43);
  sub_10000FBD0();
  sub_100003990(v45);
  sub_100022D78(&v161);
  __chkstk_darwin(v46);
  sub_10000E70C();
  v168 = v47;
  v48 = sub_10022C350(&qword_100CA3898);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003C38();
  v52 = v50 - v51;
  __chkstk_darwin(v53);
  v55 = v128 - v54;
  __chkstk_darwin(v56);
  sub_10000EA8C();
  type metadata accessor for LocationData();
  sub_1000037C4();
  v151 = v58;
  v152 = v57;
  __chkstk_darwin(v57);
  sub_10000FBD0();
  sub_100003990(v59);
  sub_100022D78(&v159);
  __chkstk_darwin(v60);
  v62 = v128 - v61;
  v167 = type metadata accessor for LocationListPositionData();
  sub_1000037C4();
  v149 = v63;
  __chkstk_darwin(v64);
  sub_10000FBD0();
  sub_100003990(v65);
  sub_100022D78(&v158);
  __chkstk_darwin(v66);
  sub_10002C820();
  v166 = type metadata accessor for TemperatureScaleData();
  sub_1000037C4();
  v147 = v67;
  __chkstk_darwin(v68);
  sub_10000FBD0();
  sub_100003990(v69);
  sub_100022D78(&v157);
  __chkstk_darwin(v70);
  sub_10000E70C();
  v146 = v71;
  sub_100534488();
  v148 = v0;
  sub_100534014(v7, v0);
  v150 = v62;
  sub_1005345D0(v7);
  sub_10053471C(v7, v3);
  v165 = v3;
  sub_100095588();
  v72 = type metadata accessor for WeatherData(0);
  v73 = v24;
  if (sub_100030484(v55) == 1)
  {
    sub_1000180EC(v55, &qword_100CA3898);
    type metadata accessor for WeatherDataModel();
    sub_100003934();
  }

  else
  {
    v78 = *(v72 + 24);
    v79 = type metadata accessor for WeatherDataModel();
    sub_1000037E8();
    (*(v80 + 16))(v2, &v55[v78], v79);
    sub_1000060A8();
    sub_10009EE14();
    sub_10000E7B0();
    v77 = v79;
  }

  sub_10001B350(v74, v75, v76, v77);
  sub_1008B1ED0(v2, v168);
  sub_100095588();
  v81 = sub_100030484(v52);
  v171 = v73;
  if (v81 == 1)
  {
    sub_1000180EC(v52, &qword_100CA3898);
    type metadata accessor for WeatherDataModel();
    sub_100003934();
  }

  else
  {
    v86 = *(v72 + 24);
    v87 = type metadata accessor for WeatherDataModel();
    sub_1000037E8();
    (*(v88 + 16))(v40, v52 + v86, v87);
    sub_1000060A8();
    sub_10009EE14();
    sub_10000E7B0();
    v85 = v87;
  }

  sub_10001B350(v82, v83, v84, v85);
  v89 = v170;
  sub_100727954(v40, v170);
  v90 = type metadata accessor for AQIData();
  sub_100024D10(v89, 1, v90);
  AQIAvailabilityData.init(isAQIAvailable:)();
  type metadata accessor for VisibleLocationWeatherLoadState();
  v91 = v171;
  sub_1000950A0();
  v92 = StatusLog;
  v93 = (v91 + *(StatusLog + 36));
  v94 = &unk_100A48000;
  v95 = &unk_100A3B000;
  if ((v93[1] & 1) == 0)
  {
    v96 = sub_10003C5BC(*v93, 1000.0);
    if (!(v98 ^ v99 | v97))
    {
      goto LABEL_36;
    }

    if (v96 <= v95[13])
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v96 >= 9.22337204e18)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  v100 = (v171 + *(v92 + 40));
  if (v100[1])
  {
    goto LABEL_17;
  }

  v101 = sub_10003C5BC(*v100, v94[323]);
  if (!(v98 ^ v99 | v97))
  {
    goto LABEL_38;
  }

  if (v101 <= v95[13])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v101 < 9.22337204e18)
  {
LABEL_17:
    v102 = v94[323];
    v103 = v171[1] * v102;
    if (COERCE__INT64(fabs(v103)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v104 = v95[13];
      if (v103 > v104)
      {
        if (v103 < 9.22337204e18)
        {
          v105 = *v171 * v102;
          if (COERCE__INT64(fabs(v105)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v105 > v104)
            {
              if (v105 < 9.22337204e18)
              {
                v106 = v171[2] * v102;
                if ((*&v106 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v106 > v104)
                  {
                    if (v106 < 9.22337204e18)
                    {
                      v107 = v159;
                      LocationViewLoadPerfLogData.init(offlineDuration:emptyDuration:populatedDuration:dataFirstAppearedDate:firstWeatherDataAge:)();

                      v109 = v161;
                      sub_100536D48(v108);
                      v142 = *v1;
                      sub_1000184CC();
                      v110(v144, v148, v167);
                      v111 = v147;
                      (*(v147 + 16))(v143, v146, v166);
                      v112 = v151;
                      (*(v151 + 16))(v145, v150, v152);
                      sub_100095588();
                      sub_100095588();
                      v113 = v156;
                      (*(v156 + 16))(v154, v169, v158);
                      v114 = v138;
                      (*(v138 + 16))(v155, v107, PerfLogData);
                      v115 = v139;
                      (*(v139 + 16))(v160, v109, ErrorData);
                      v116 = v140;
                      (*(v140 + 16))(v163, v135, v157);
                      v117 = v73;
                      v118 = (*(v73 + 80) + 16) & ~*(v73 + 80);
                      v119 = (v128[1] + *(v111 + 80) + v118) & ~*(v111 + 80);
                      v120 = (v128[0] + *(v112 + 80) + v119) & ~*(v112 + 80);
                      v131 = (v130 + *(v131 + 80) + ((v128[2] + *(v129 + 80) + v120) & ~*(v129 + 80))) & ~*(v131 + 80);
                      v132 = (v132 + *(v113 + 80) + v131) & ~*(v113 + 80);
                      v135 = (v133 + *(v114 + 80) + v132) & ~*(v114 + 80);
                      StatusLog = (v134 + *(v115 + 80) + v135) & ~*(v115 + 80);
                      v136 = (v136 + *(v116 + 80) + StatusLog) & ~*(v116 + 80);
                      v121 = swift_allocObject();
                      (*(v117 + 32))(v121 + v118, v144, v167);
                      (*(v111 + 32))(v121 + v119, v143, v166);
                      v123 = v151;
                      v122 = v152;
                      (*(v151 + 32))(v121 + v120, v145, v152);
                      sub_100051BBC();
                      sub_100051BBC();
                      v124 = v156;
                      v125 = v158;
                      (*(v156 + 32))(v121 + v132, v154, v158);
                      v126 = PerfLogData;
                      (*(v114 + 32))(v121 + v135, v155, PerfLogData);
                      v127 = ErrorData;
                      (*(v115 + 32))(v121 + StatusLog, v160, ErrorData);
                      (*(v116 + 32))(v121 + v136, v163, v157);
                      Tracker.transaction(block:)();

                      (*(v115 + 8))(v161, v127);
                      (*(v114 + 8))(v159, v126);
                      sub_10009EE14();
                      (*(v124 + 8))(v169, v125);
                      sub_1000180EC(v168, &qword_100CB1290);
                      sub_1000180EC(v165, &qword_100CA3898);
                      (*(v123 + 8))(v150, v122);
                      (*(v149 + 8))(v148, v167);
                      (*(v147 + 8))(v146, v166);
                      sub_1000180EC(v170, &qword_100CC41C0);
                      sub_10000536C();
                      return;
                    }

                    goto LABEL_35;
                  }

LABEL_34:
                  __break(1u);
LABEL_35:
                  __break(1u);
LABEL_36:
                  __break(1u);
                  goto LABEL_37;
                }

LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_100536D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = (a1 + 40);
    v18 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *v6;
      v8 = 1;
      switch(*v6)
      {
        case 0uLL:
          break;
        case 1uLL:
        case 4uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
          goto LABEL_7;
        case 2uLL:
          v4 = 1;
          goto LABEL_7;
        case 3uLL:
          v3 = 1;
          goto LABEL_7;
        case 5uLL:
          v2 = 1;
LABEL_7:
          v8 = v5;
          break;
        default:
          v17 = v4;
          v9 = v3;
          v10 = *(v6 - 1);
          sub_100538558(v10, v7);

          v11 = v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100109810();
            v18 = v14;
          }

          v12 = v18[2];
          if (v12 >= v18[3] >> 1)
          {
            sub_100109810();
            v18 = v15;
          }

          v18[2] = v12 + 1;
          v13 = &v18[2 * v12];
          v13[4] = v10;
          v13[5] = v7;
          sub_10031EF8C(v10, v7);
          v8 = v5;
          v2 = v11;
          v3 = v9;
          v4 = v17;
          break;
      }

      v6 += 2;
      v5 = v8;
      --v1;
    }

    while (v1);
  }

  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  BidirectionalCollection<>.joined(separator:)();

  return LocationViewLoadErrorData.init(errorDescriptions:missingCurrent:missingDaily:missingHourly:insufficientDays:insufficientHours:unexpectedDateFormat:missingResponse:failedToCreateResponseModel:invalidAuthorization:responseFailed:invalidJWTResponse:invalidBundleIdentifier:failedToGenerateSigningRequestData:invalidServerResponseForJWTToken:)();
}

uint64_t sub_10053705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a7;
  v34 = a8;
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v35 = a9;
  v36 = a10;
  v10 = sub_10022C350(&qword_100CC41C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v32 = type metadata accessor for AQIData();
  v27 = *(v32 - 8);
  __chkstk_darwin(v32);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CB1290);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for LocationConditionData();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationListPositionData();
  sub_100171D5C(&qword_100CC41C8, &type metadata accessor for LocationListPositionData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for TemperatureScaleData();
  sub_100171D5C(&qword_100CB3EE8, &type metadata accessor for TemperatureScaleData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationData();
  sub_100171D5C(&qword_100CB12A8, &type metadata accessor for LocationData);
  AccessTracker.push<A>(data:traits:file:line:)();
  sub_100095588();
  if (sub_100024D10(v16, 1, v17) == 1)
  {
    sub_1000180EC(v16, &qword_100CB1290);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_100171D5C(&qword_100CB12F8, &type metadata accessor for LocationConditionData);
    AccessTracker.push<A>(data:traits:file:line:)();
    (*(v18 + 8))(v20, v17);
  }

  sub_100095588();
  v21 = v32;
  if (sub_100024D10(v12, 1, v32) == 1)
  {
    sub_1000180EC(v12, &qword_100CC41C0);
  }

  else
  {
    v23 = v26;
    v22 = v27;
    (*(v27 + 32))(v26, v12, v21);
    sub_100171D5C(&qword_100CC41E8, &type metadata accessor for AQIData);
    AccessTracker.push<A>(data:traits:file:line:)();
    (*(v22 + 8))(v23, v21);
  }

  type metadata accessor for AQIAvailabilityData();
  sub_100171D5C(&qword_100CC41D0, &type metadata accessor for AQIAvailabilityData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationViewLoadPerfLogData();
  sub_100171D5C(&qword_100CC41D8, &type metadata accessor for LocationViewLoadPerfLogData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationViewLoadErrorData();
  sub_100171D5C(&qword_100CC41E0, &type metadata accessor for LocationViewLoadErrorData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationViewEvent();
  sub_100171D5C(&qword_100CC41B8, &type metadata accessor for LocationViewEvent);
  return AccessTracker.explicitSubmit<A>(_:submitTime:completion:)();
}

void sub_1005376E8()
{
  sub_10000C778();
  v1 = v0;
  type metadata accessor for ComponentType();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = type metadata accessor for ComponentData();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_1000950A0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
    case 0xAu:
    case 0xFu:
    case 0x11u:
      sub_10001EFD4();
      sub_10009EE14();
      v12 = sub_10000CC34();
      v13(v12);
      ComponentData.init(type:)();
      goto LABEL_7;
    case 9u:
      sub_10009EE14();
      goto LABEL_4;
    case 0xCu:
    case 0x13u:
      sub_10001EFD4();
LABEL_4:
      sub_10009EE14();
      v11 = 1;
      break;
    default:
      v14 = sub_10000CC34();
      v15(v14);
      ComponentData.init(type:)();
      sub_10001EFD4();
      sub_10009EE14();
LABEL_7:
      sub_10001EFD4();
      sub_10009EE14();
      (*(v6 + 32))(v1, v10, v4);
      v11 = 0;
      break;
  }

  sub_10001B350(v1, v11, 1, v4);
  sub_10000536C();
}

void sub_100537A30()
{
  sub_10000C778();
  type metadata accessor for LocationData();
  sub_100171D5C(&qword_100CB12A8, &type metadata accessor for LocationData);
  sub_100013974();
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ComponentData();
  sub_100171D5C(&qword_100CC41F0, &type metadata accessor for ComponentData);
  sub_100013974();
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ComponentPositionData();
  sub_100171D5C(&qword_100CC41F8, &type metadata accessor for ComponentPositionData);
  sub_100013974();
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ComponentExposureEvent();
  sub_100171D5C(&qword_100CC4200, &type metadata accessor for ComponentExposureEvent);
  AccessTracker.explicitTime<A>(_:startTime:)();
  AccessTracker.explicitSubmit<A>(_:submitTime:completion:)();
  sub_10000536C();
}

void sub_100537C10()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = URL.host.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    Tracker.transaction(block:)();
    sub_10000536C();
  }

  else
  {
    if (qword_100CA26A8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000703C(v15, qword_100D90A60);
    (*(v4 + 16))(v8, v1, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      sub_100171D5C(&qword_100CA5728, &type metadata accessor for URL);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v4 + 8))(v8, v2);
      v23 = sub_100078694(v20, v22, &v24);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Attempted to track provider tap but the provider URL has no host. URL=%s", v18, 0xCu);
      sub_100006F14(v19);
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }

    sub_10000536C();
  }
}

uint64_t sub_100537ED8()
{
  v0 = type metadata accessor for LinkType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URLData();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for LinkType.provider(_:), v0, v6);

  URLData.init(url:linkType:)();
  sub_100171D5C(&qword_100CB3EC8, &type metadata accessor for URLData);
  AccessTracker.push<A>(data:traits:file:line:)();
  (*(v5 + 8))(v8, v4);
  type metadata accessor for LinkTapEvent();
  sub_100171D5C(&qword_100CB3ED0, &type metadata accessor for LinkTapEvent);
  memset(v10, 0, sizeof(v10));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1000180EC(v10, &qword_100CE2F40);
}

uint64_t sub_100538160()
{
  sub_100017580();
  v0 = type metadata accessor for ViewData();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Date();
  sub_100003810(v1);

  return sub_100533F14();
}

uint64_t sub_100538224(uint64_t a1)
{
  v2 = type metadata accessor for LocationListPositionData();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for TemperatureScaleData();
  sub_100003AE8(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = type metadata accessor for LocationData();
  sub_100003AE8(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = sub_10022C350(&qword_100CB1290);
  sub_100003AE8(v17);
  v19 = (v14 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v21 = *(v20 + 64);
  v22 = sub_10022C350(&qword_100CC41C0);
  sub_100003AE8(v22);
  v24 = (v19 + v21 + *(v23 + 80)) & ~*(v23 + 80);
  v26 = *(v25 + 64);
  v27 = type metadata accessor for AQIAvailabilityData();
  sub_100003AE8(v27);
  v29 = (v24 + v26 + *(v28 + 80)) & ~*(v28 + 80);
  v31 = *(v30 + 64);
  PerfLogData = type metadata accessor for LocationViewLoadPerfLogData();
  sub_100003AE8(PerfLogData);
  v34 = (v29 + v31 + *(v33 + 80)) & ~*(v33 + 80);
  v36 = *(v35 + 64);
  ErrorData = type metadata accessor for LocationViewLoadErrorData();
  sub_100003AE8(ErrorData);
  v39 = (v34 + v36 + *(v38 + 80)) & ~*(v38 + 80);
  v41 = *(v40 + 64);
  v42 = type metadata accessor for Date();
  sub_100003810(v42);
  v50 = v1 + ((v39 + v41 + *(v43 + 80)) & ~*(v43 + 80));
  sub_1000179F8();
  return sub_10053705C(a1, v44, v45, v46, v47, v48, v1 + v29, v1 + v34, v1 + v39, v50);
}

uint64_t sub_100538558(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xE)
  {
  }

  return result;
}

uint64_t sub_10053858C()
{
  sub_100017580();
  v2 = type metadata accessor for LocationListPositionData();
  sub_100003AE8(v2);
  v3 = type metadata accessor for TemperatureScaleData();
  sub_100003AE8(v3);
  v4 = type metadata accessor for LocationData();
  sub_100003AE8(v4);
  v5 = sub_10022C350(&qword_100CB1290);
  sub_100003AE8(v5);
  v6 = sub_10022C350(&qword_100CC41C0);
  sub_100003AE8(v6);
  v7 = type metadata accessor for AQIAvailabilityData();
  sub_100003810(v7);
  sub_1000179F8();

  return sub_100535804(v0, v8, v9, v10, v11, v12, v1 + v13);
}

uint64_t sub_1005387B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1005387F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10053885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003C38();
  v46 = (v8 - v9);
  __chkstk_darwin(v10);
  v47 = &v45 - v11;
  v48 = type metadata accessor for Location();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for HomeAndWorkRefinementInput();
  __chkstk_darwin(v18 - 8);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = sub_10022C350(&qword_100CC4340);
  __chkstk_darwin(v22 - 8);
  v24 = &v45 - v23;
  v26 = &v45 + *(v25 + 56) - v23;
  sub_1005393CC(a1, &v45 - v23, type metadata accessor for HomeAndWorkRefinementInput);
  sub_1005393CC(a2, v26, type metadata accessor for HomeAndWorkRefinementInput);
  v27 = sub_10022C350(&qword_100CA6650);
  sub_100003BDC(v24);
  if (!v30)
  {
    sub_1005393CC(v24, v21, type metadata accessor for HomeAndWorkRefinementInput);
    v29 = *(v27 + 48);
    sub_100003BDC(v26);
    if (!v30)
    {
      v32 = *(v13 + 32);
      v45 = v13;
      v33 = v48;
      v32(v17, v26, v48);
      v34 = *(v6 + 32);
      v34(v47, v21 + v29, v4);
      v35 = &v26[v29];
      v36 = v33;
      v37 = v45;
      v38 = v46;
      v34(v46, v35, v4);
      v39 = v36;
      v40 = static Location.== infix(_:_:)();
      v41 = *(v37 + 8);
      v41(v21, v39);
      if (v40)
      {
        v42 = v47;
        v28 = static LocationOfInterest.== infix(_:_:)();
        v43 = *(v6 + 8);
        v43(v38, v4);
        v43(v42, v4);
        v41(v17, v48);
        sub_10001C524();
        return v28 & 1;
      }

      v44 = *(v6 + 8);
      v44(v38, v4);
      v44(v47, v4);
      v41(v17, v48);
      sub_10001C524();
      goto LABEL_10;
    }

    (*(v6 + 8))(v21 + v29, v4);
    (*(v13 + 8))(v21, v48);
LABEL_9:
    sub_1000180EC(v24, &qword_100CC4340);
LABEL_10:
    v28 = 0;
    return v28 & 1;
  }

  sub_100003BDC(v26);
  if (!v30)
  {
    goto LABEL_9;
  }

  sub_10001C524();
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_100538C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CC4348);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_100538F08(a1, v6);
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_1000180EC(v6, &qword_100CC4348);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90B68);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to create home and work refinement input due to missing view state", v15, 2u);
    }

    v16 = sub_10022C350(&qword_100CA6650);
    v17 = a2;
    v18 = 1;
  }

  else
  {
    sub_10053942C(v6, v11, type metadata accessor for HomeAndWorkRefinementViewState);
    v19 = sub_10022C350(&qword_100CA6650);
    v20 = *(v19 + 48);
    type metadata accessor for Location();
    sub_1000037E8();
    (*(v21 + 32))(a2, v11);
    v22 = *(v7 + 20);
    type metadata accessor for LocationOfInterest();
    sub_1000037E8();
    (*(v23 + 32))(a2 + v20, v11 + v22);
    v17 = a2;
    v18 = 0;
    v16 = v19;
  }

  sub_10001B350(v17, v18, 1, v16);
  v24 = type metadata accessor for HomeAndWorkRefinementInput();
  return sub_10001B350(a2, 0, 1, v24);
}

uint64_t sub_100538F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v49 = v5 - v4;
  v46 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v47 = v8 - v7;
  v50 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003C38();
  v45 = v10 - v11;
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003C38();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v44 - v27;
  v29 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_1000088A8();
  sub_1005393CC(a1 + v29, v21, v30);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1000060C0();
    v34 = v21;
    goto LABEL_6;
  }

  sub_10053942C(v21, v28, type metadata accessor for ModalViewState.LocationDetailModal);
  sub_10053942C(v28, v25, type metadata accessor for ModalViewState.LocationDetailModal);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    v33 = type metadata accessor for ModalViewState.LocationDetailModal;
    v34 = v25;
LABEL_6:
    sub_10053948C(v34, v33);
    sub_1000088A8();
    sub_1005393CC(a1 + v29, v18, v35);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000060C0();
      v37 = v18;
    }

    else
    {
      v38 = v47;
      sub_10053942C(v18, v47, type metadata accessor for LocationPreviewViewState);
      v39 = v49;
      sub_1005393CC(v38 + *(v46 + 20), v49, type metadata accessor for LocationPreviewModalViewState);
      sub_10053948C(v38, type metadata accessor for LocationPreviewViewState);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v40 = v39;
        v41 = v45;
        sub_10053942C(v40, v45, type metadata accessor for HomeAndWorkRefinementViewState);
        v31 = v41;
        v32 = v51;
        goto LABEL_10;
      }

      v36 = type metadata accessor for LocationPreviewModalViewState;
      v37 = v39;
    }

    sub_10053948C(v37, v36);
    v42 = 1;
    return sub_10001B350(v51, v42, 1, v50);
  }

  sub_10053942C(v25, v14, type metadata accessor for HomeAndWorkRefinementViewState);
  v31 = v14;
  v32 = v51;
LABEL_10:
  sub_10053942C(v31, v32, type metadata accessor for HomeAndWorkRefinementViewState);
  v42 = 0;
  return sub_10001B350(v51, v42, 1, v50);
}

uint64_t type metadata accessor for HomeAndWorkRefinementInput()
{
  result = qword_100CC4310;
  if (!qword_100CC4310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100539374()
{
  sub_10000B6C0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1005393CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10053942C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10053948C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for DayWeatherEditorView()
{
  result = qword_100CC43B0;
  if (!qword_100CC43B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100539558()
{
  sub_100081BC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DayWeather();
    if (v1 <= 0x3F)
    {
      sub_10013DB50();
      if (v2 <= 0x3F)
      {
        sub_100539614();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100539614()
{
  if (!qword_100CC43C0)
  {
    type metadata accessor for DayWeather();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC43C0);
    }
  }
}

void sub_100539688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  sub_10022C350(&qword_100CA54B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  sub_10040492C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100463960(v33, v23);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v26 + 8))(v30, v24);
  }

  sub_10000536C();
}

void sub_100539828()
{
  sub_10000C778();
  v47 = v0;
  v60 = v2;
  v3 = type metadata accessor for DayWeatherEditorView();
  v4 = *(v3 - 8);
  v51 = v3 - 8;
  v57 = v4;
  v56 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5528);
  sub_1000037C4();
  v58 = v6;
  v59 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  v55 = &v46 - v9;
  v10 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v49 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = sub_10022C350(&qword_100CC4400);
  sub_1000037C4();
  v18 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v48 = sub_10022C350(&qword_100CC4408);
  sub_1000037C4();
  v50 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_100014230();
  sub_10022C350(&qword_100CC4410);
  sub_1000037C4();
  v52 = v24;
  v53 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  v61 = &v46 - v27;
  v62 = v0;
  sub_10022C350(&qword_100CC4418);
  sub_100006F64(&qword_100CC4420, &qword_100CC4418);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100005DFC();
  v29 = sub_100006F64(v28, &qword_100CC4400);
  View.listStyle<A>(_:)();
  (*(v49 + 8))(v15, v10);
  (*(v18 + 8))(v21, v16);
  v30 = v47;
  v31 = (v47 + *(v51 + 28));
  v33 = *v31;
  v32 = v31[1];
  v67 = v33;
  v68 = v32;
  v63 = v16;
  v64 = v10;
  v65 = v29;
  v66 = &protocol witness table for InsetGroupedListStyle;
  sub_100005DB4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_10002D5A4();
  v36 = v48;
  View.navigationTitle<A>(_:)();
  (*(v50 + 8))(v1, v36);
  LocalizedStringKey.init(stringLiteral:)();
  v37 = v54;
  sub_10053BCC0(v30, v54);
  v38 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v39 = swift_allocObject();
  sub_10053BD24(v37, v39 + v38);
  v40 = v55;
  Button<>.init(_:action:)();
  v63 = v36;
  v64 = &type metadata for String;
  v65 = OpaqueTypeConformance2;
  v66 = v35;
  sub_100005DE4();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v41, &qword_100CA5528);
  v42 = v61;
  v43 = v40;
  v44 = v52;
  v45 = v58;
  View.navigationBarItems<A>(trailing:)();
  (*(v59 + 8))(v43, v45);
  (*(v53 + 8))(v42, v44);
  sub_10000536C();
}

uint64_t sub_100539DD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v39 = sub_10022C350(&qword_100CC4430);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_10022C350(&qword_100CC4438);
  v35 = *(v7 - 8);
  v8 = v35;
  v36 = v7;
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v44 = v14;
  v45 = v15 & 1;
  v46 = v16;
  v42 = a1;
  sub_10022C350(&qword_100CC4440);
  sub_100006F64(&qword_100CC4448, &qword_100CC4440);
  v34 = v13;
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v44 = v17;
  v45 = v18 & 1;
  v46 = v19;
  v41 = a1;
  sub_10022C350(&qword_100CC4450);
  sub_100006F64(&qword_100CC4458, &qword_100CC4450);
  v32 = v6;
  Section<>.init(header:content:)();
  v20 = *(v8 + 16);
  v33 = v10;
  v21 = v36;
  v20(v10, v13, v36);
  v23 = v37;
  v22 = v38;
  v24 = *(v37 + 16);
  v25 = v39;
  v24(v38, v6, v39);
  v26 = v40;
  v20(v40, v10, v21);
  v27 = &v26[*(sub_10022C350(&qword_100CC4460) + 48)];
  v24(v27, v22, v25);
  v28 = *(v23 + 8);
  v28(v32, v25);
  v29 = *(v35 + 8);
  v29(v34, v21);
  v28(v22, v25);
  return (v29)(v33, v21);
}

uint64_t sub_10053A238()
{
  v0 = sub_10022C350(&qword_100CC4470);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_10053A3E8((&v13 - v10));
  sub_10053A83C(v8);
  sub_10040492C();
  sub_10040492C();
  sub_10040492C();
  sub_10022C350(&qword_100CC4478);
  sub_10040492C();
  sub_1000180EC(v8, &qword_100CC4470);
  sub_1000180EC(v11, &qword_100CC4470);
  sub_1000180EC(v2, &qword_100CC4470);
  return sub_1000180EC(v5, &qword_100CC4470);
}

uint64_t sub_10053A3E8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DayWeatherEditorView();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DayWeather();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(qword_100CA5418);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v35 = 0x8000000100AD3EE0;
  DayWeather.highTemperature.getter();
  v14 = sub_10022C350(&qword_100CA53F8);
  sub_10001B350(v13, 0, 1, v14);
  sub_10022C350(&qword_100CC4350);
  State.wrappedValue.getter();
  DayWeather.highTemperature.getter();
  (*(v5 + 8))(v7, v34);
  sub_10001B350(v10, 0, 1, v14);
  v15 = v36;
  sub_10053BCC0(v1, v36);
  v16 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v17 = swift_allocObject();
  sub_10053BD24(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CC4470);
  sub_10001B350(a1 + v18[10], 1, 1, v14);
  *a1 = 0xD000000000000010;
  a1[1] = v35;
  sub_10040492C();
  sub_10053BE78();
  v19 = (a1 + v18[8]);
  *v19 = sub_10053BED4;
  v19[1] = v17;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v21 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_100855880(inited, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36, v37);
  v30 = v29;
  swift_setDeallocating();
  sub_1005C2008();
  if (v30)
  {
    sub_100855AB8();
    v32 = v31;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v10, qword_100CA5418);
  result = sub_1000180EC(v13, qword_100CA5418);
  *(a1 + v18[9]) = v32;
  return result;
}

uint64_t sub_10053A83C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for DayWeatherEditorView();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v34 = type metadata accessor for DayWeather();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(qword_100CA5418);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  DayWeather.lowTemperature.getter();
  v13 = sub_10022C350(&qword_100CA53F8);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CC4350);
  State.wrappedValue.getter();
  DayWeather.lowTemperature.getter();
  (*(v4 + 8))(v6, v34);
  v14 = v35;
  sub_10001B350(v9, 0, 1, v13);
  sub_10053BCC0(v1, &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v16 = swift_allocObject();
  sub_10053BD24(&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_10022C350(&qword_100CC4470);
  sub_10001B350(v14 + v17[10], 1, 1, v13);
  *v14 = 0x706D657420776F6CLL;
  v14[1] = 0xEF65727574617265;
  sub_10040492C();
  sub_10053BE78();
  v18 = (v14 + v17[8]);
  *v18 = sub_10053BE4C;
  v18[1] = v16;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v20 = objc_opt_self();
  *(inited + 32) = [v20 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v20 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_100855880(inited, v21, v22, v23, v24, v25, v26, v27, v33, v34, v35, v36);
  v29 = v28;
  swift_setDeallocating();
  sub_1005C2008();
  if (v29)
  {
    sub_100855AB8();
    v31 = v30;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, qword_100CA5418);
  result = sub_1000180EC(v12, qword_100CA5418);
  *(v14 + v17[9]) = v31;
  return result;
}

uint64_t sub_10053AC84()
{
  v0 = sub_10022C350(&qword_100CBB730);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_10053AE34((&v13 - v10));
  sub_10053B288(v8);
  sub_10040492C();
  sub_10040492C();
  sub_10040492C();
  sub_10022C350(&qword_100CC4468);
  sub_10040492C();
  sub_1000180EC(v8, &qword_100CBB730);
  sub_1000180EC(v11, &qword_100CBB730);
  sub_1000180EC(v2, &qword_100CBB730);
  return sub_1000180EC(v5, &qword_100CBB730);
}

uint64_t sub_10053AE34@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DayWeatherEditorView();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DayWeather();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CBB740);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v35 = 0x8000000100AD3EC0;
  DayWeather.precipitationAmount.getter();
  v14 = sub_10022C350(&qword_100CAB938);
  sub_10001B350(v13, 0, 1, v14);
  sub_10022C350(&qword_100CC4350);
  State.wrappedValue.getter();
  DayWeather.precipitationAmount.getter();
  (*(v5 + 8))(v7, v34);
  sub_10001B350(v10, 0, 1, v14);
  v15 = v36;
  sub_10053BCC0(v1, v36);
  v16 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v17 = swift_allocObject();
  sub_10053BD24(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CBB730);
  sub_10001B350(a1 + v18[10], 1, 1, v14);
  *a1 = 0xD000000000000014;
  a1[1] = v35;
  sub_10040492C();
  sub_10053BE78();
  v19 = (a1 + v18[8]);
  *v19 = sub_10053BE20;
  v19[1] = v17;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 inches];
  *(inited + 40) = 0x736568636E69;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = [v21 millimeters];
  *(inited + 64) = 0x74656D696C6C696DLL;
  *(inited + 72) = 0xEB00000000737265;
  sub_100855858(inited, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36, v37);
  v30 = v29;
  swift_setDeallocating();
  sub_1005C2008();
  if (v30)
  {
    sub_1008559F0();
    v32 = v31;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v10, &qword_100CBB740);
  result = sub_1000180EC(v13, &qword_100CBB740);
  *(a1 + v18[9]) = v32;
  return result;
}

uint64_t sub_10053B288@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for DayWeatherEditorView();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v34 = type metadata accessor for DayWeather();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB740);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  DayWeather.snowfallAmount.getter();
  v13 = sub_10022C350(&qword_100CAB938);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CC4350);
  State.wrappedValue.getter();
  DayWeather.snowfallAmount.getter();
  (*(v4 + 8))(v6, v34);
  v14 = v35;
  sub_10001B350(v9, 0, 1, v13);
  sub_10053BCC0(v1, &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v16 = swift_allocObject();
  sub_10053BD24(&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_10022C350(&qword_100CBB730);
  sub_10001B350(v14 + v17[10], 1, 1, v13);
  *v14 = 0x6C6C6166776F6E73;
  v14[1] = 0xEF746E756F6D6120;
  sub_10040492C();
  sub_10053BE78();
  v18 = (v14 + v17[8]);
  *v18 = sub_10053BDF4;
  v18[1] = v16;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v20 = objc_opt_self();
  *(inited + 32) = [v20 inches];
  *(inited + 40) = 0x736568636E69;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = [v20 millimeters];
  *(inited + 64) = 0x74656D696C6C696DLL;
  *(inited + 72) = 0xEB00000000737265;
  sub_100855858(inited, v21, v22, v23, v24, v25, v26, v27, v33, v34, v35, v36);
  v29 = v28;
  swift_setDeallocating();
  sub_1005C2008();
  if (v29)
  {
    sub_1008559F0();
    v31 = v30;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, &qword_100CBB740);
  result = sub_1000180EC(v12, &qword_100CBB740);
  *(v14 + v17[9]) = v31;
  return result;
}

uint64_t sub_10053B6D0(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA6D28);
  __chkstk_darwin(v3);
  v5 = var50 - v4;
  v6 = type metadata accessor for DayWeather();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for DayWeatherEditorView() + 28));
  sub_10022C350(&qword_100CC4350);
  State.wrappedValue.getter();
  v10(v9);
  v11 = (*(v7 + 8))(v9, v6);
  sub_100539688(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_1000180EC(v5, &qword_100CA6D28);
}

void sub_10053B8CC()
{
  sub_10000C778();
  v17 = v3;
  sub_100003A00();
  v4 = type metadata accessor for DayWeather();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = sub_10022C350(qword_100CA5418);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014230();
  v8 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000088C0();
  __chkstk_darwin(v12);
  sub_10002869C();
  if (sub_100024D10(v2, 1, v8) == 1)
  {
    sub_1000180EC(v2, qword_100CA5418);
  }

  else
  {
    v13 = sub_10004E6B8();
    v14(v13);
    v15 = sub_100016AE4();
    v16(v15);
    type metadata accessor for DayWeatherEditorView();
    sub_10022C350(&qword_100CC4350);
    State.wrappedValue.getter();
    v17(v1);
    State.wrappedValue.setter();
    (*(v10 + 8))(v0, v8);
  }

  sub_10000536C();
}

void sub_10053BAC0()
{
  sub_10000C778();
  v17 = v3;
  sub_100003A00();
  v4 = type metadata accessor for DayWeather();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = sub_10022C350(&qword_100CBB740);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014230();
  v8 = sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000088C0();
  __chkstk_darwin(v12);
  sub_10002869C();
  if (sub_100024D10(v2, 1, v8) == 1)
  {
    sub_1000180EC(v2, &qword_100CBB740);
  }

  else
  {
    v13 = sub_10004E6B8();
    v14(v13);
    v15 = sub_100016AE4();
    v16(v15);
    type metadata accessor for DayWeatherEditorView();
    sub_10022C350(&qword_100CC4350);
    State.wrappedValue.getter();
    v17(v1);
    State.wrappedValue.setter();
    (*(v10 + 8))(v0, v8);
  }

  sub_10000536C();
}

uint64_t sub_10053BCC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayWeatherEditorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10053BD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayWeatherEditorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10053BD88()
{
  v1 = type metadata accessor for DayWeatherEditorView();
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_10053B6D0(v3);
}

uint64_t sub_10053BE78()
{
  sub_100003A00();
  sub_10022C350(v2);
  sub_1000037E8();
  (*(v3 + 24))(v0, v1);
  return v0;
}

uint64_t sub_10053BF00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = type metadata accessor for DayWeatherEditorView();
  sub_100003810(v7);
  return a3(a1, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a2);
}

uint64_t sub_10053BFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a2;
  v5 = *a1;
  memcpy(__dst, *a1, sizeof(__dst));
  memmove(v4, v5, 0xD8uLL);
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  memcpy(v15, v7, sizeof(v15));
  memmove(v6, v7, 0xD8uLL);
  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  memcpy(v16, v9, sizeof(v16));
  memmove(v8, v9, 0xD8uLL);
  v10 = *(a2 + 24);
  v11 = *(a1 + 24);
  memcpy(v17, v11, sizeof(v17));
  memmove(v10, v11, 0xC0uLL);
  sub_10053F620(__dst, v13);
  sub_10053F620(v15, v13);
  sub_10053F658(v16, v13);
  return sub_10053F690(v17, v13);
}

uint64_t sub_10053C0C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA71B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v11 = sub_1000286C8();
  sub_100074B8C(*(v11 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    return (*(v12 + 32))(a1, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    sub_100017884();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_10053C278@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2E38);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v11 = sub_1000286C8();
  sub_100074B8C(*(v11 + 28));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    return (*(v12 + 32))(a1, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    sub_100017884();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_10053C428@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  sub_1000037C4();
  v39 = v2;
  v40 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v36 = v4 - v3;
  v35 = sub_10022C350(&qword_100CC4520);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  sub_10022C350(&qword_100CC4528);
  sub_1000037C4();
  v37 = v8;
  v38 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for DynamicTypeSize();
  v14 = *(v13 - 8);
  v15 = v14;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v18 = v17 - v16;
  sub_10022C350(&qword_100CC4530);
  v19 = *(v14 + 72);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100A3BBA0;
  v22 = v21 + v20;
  v23 = *(v15 + 104);
  v23(v22, enum case for DynamicTypeSize.xLarge(_:), v13);
  v23(v22 + v19, enum case for DynamicTypeSize.xxLarge(_:), v13);
  v23(v22 + 2 * v19, enum case for DynamicTypeSize.xxxLarge(_:), v13);
  v24 = v34;
  sub_10053C278(v18);
  v43 = v18;
  LOBYTE(v19) = sub_100745940(sub_10053F480, v42, v21);
  swift_setDeallocating();
  sub_1005C201C();
  (*(v15 + 8))(v18, v13);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v25 = sub_10022C350(&qword_100CC4538);
  sub_10053C858(v24, v19 & 1, &v7[*(v25 + 44)]);
  v26 = v35;
  v27 = *(v35 + 36);
  v28 = enum case for BlendMode.plusLighter(_:);
  type metadata accessor for BlendMode();
  sub_1000037E8();
  (*(v29 + 104))(&v7[v27], v28);
  v30 = v36;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v31 = sub_10053F4A0();
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  (*(v39 + 8))(v30, v40);
  sub_1000180EC(v7, &qword_100CC4520);
  v44 = v26;
  v45 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  View.accessibilityRespondsToUserInteraction(_:)();
  return (*(v38 + 8))(v12, v32);
}

uint64_t sub_10053C858@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v84 = a3;
  v78 = sub_10022C350(&qword_100CC4558);
  __chkstk_darwin(v78);
  v85 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = &v66 - v7;
  v8 = type metadata accessor for ColorSchemeContrast();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v66 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v69 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Font.Leading();
  v15 = *(v86 - 8);
  __chkstk_darwin(v86);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Font.TextStyle();
  v87 = *(v18 - 8);
  v88 = v18;
  __chkstk_darwin(v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10053D438();
  v81 = v22;
  v82 = v21;
  v79 = v23;
  v83 = v24;
  v80 = a1;
  v67 = v14;
  v68 = v12;
  if ((a2 & 1) != 0 || (v28 = [objc_opt_self() currentDevice], v29 = objc_msgSend(v28, "userInterfaceIdiom"), v28, !v29) && sub_1004558C8())
  {
    v26 = v87;
    v25 = v88;
    (*(v87 + 104))(v20, enum case for Font.TextStyle.footnote(_:), v88);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v26 + 8))(v20, v25);
    v27 = v86;
    (*(v15 + 104))(v17, enum case for Font.Leading.tight(_:), v86);
    v77 = Font.leading(_:)();

    (*(v15 + 8))(v17, v27);
    goto LABEL_10;
  }

  v30 = &a1[*(type metadata accessor for AveragesComponentView(0) + 32)];
  v31 = *v30;
  if (v30[8] == 1)
  {
    if ((v31 & 1) == 0)
    {
LABEL_7:
      v33 = v87;
      v32 = v88;
      (*(v87 + 104))(v20, enum case for Font.TextStyle.subheadline(_:), v88);
      static Font.Weight.semibold.getter();
      v77 = static Font.system(_:weight:)();
      (*(v33 + 8))(v20, v32);
      goto LABEL_10;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    v93 = v15;
    v35 = v34;
    os_log(_:dso:log:_:_:)();

    v15 = v93;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v31, 0);
    (*(v69 + 8))(v14, v12);
    if (v102[0] != 1)
    {
      goto LABEL_7;
    }
  }

  v77 = static Font.footnote.getter();
LABEL_10:
  static Font.subheadline.getter();
  v36 = enum case for Font.Leading.tight(_:);
  v37 = *(v15 + 104);
  v90 = enum case for Font.Leading.tight(_:);
  v38 = v86;
  v37(v17, enum case for Font.Leading.tight(_:), v86);
  v89 = v15 + 104;
  v91 = v37;
  v93 = Font.leading(_:)();

  v39 = *(v15 + 8);
  v39(v17, v38);
  v72 = v39;
  static Font.caption2.getter();
  v37(v17, v36, v38);
  v92 = Font.leading(_:)();

  v39(v17, v38);
  v41 = v87;
  v40 = v88;
  v71 = *(v87 + 104);
  v71(v20, enum case for Font.TextStyle.subheadline(_:), v88);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  v70 = *(v41 + 8);
  v70(v20, v40);
  v91(v17, v90, v38);
  v87 = Font.leading(_:)();

  v42 = v72;
  v72(v17, v38);
  v71(v20, enum case for Font.TextStyle.caption2(_:), v40);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  v70(v20, v40);
  v91(v17, v90, v38);
  v91 = Font.leading(_:)();

  v42(v17, v38);
  v43 = v73;
  v44 = v80;
  sub_10053C0C8(v73);
  v46 = v74;
  v45 = v75;
  v47 = v76;
  (*(v75 + 104))(v74, enum case for ColorSchemeContrast.increased(_:), v76);
  LOBYTE(v38) = static ColorSchemeContrast.== infix(_:_:)();
  v48 = *(v45 + 8);
  v48(v46, v47);
  v48(v43, v47);
  if ((v38 & 1) == 0)
  {
    v50 = &v44[*(type metadata accessor for AveragesComponentView(0) + 24)];
    v51 = *v50;
    if (v50[8] == 1)
    {
      if (v51)
      {
        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v52 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v53 = v67;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v51, 0);
      (*(v69 + 8))(v53, v68);
      if (v102[0] == 1)
      {
        goto LABEL_11;
      }
    }

    v49 = static HierarchicalShapeStyle.tertiary.getter();
    goto LABEL_17;
  }

LABEL_11:
  v49 = static HierarchicalShapeStyle.primary.getter();
LABEL_17:
  v54 = v49;
  v55 = *(v78 + 44);
  *&v94[v55] = swift_getKeyPath();
  sub_10022C350(&qword_100CA3EE8);
  swift_storeEnumTagMultiPayload();
  memcpy(v103, v44, sizeof(v103));
  memcpy(v99, v44, 0xB0uLL);
  memcpy(v104, v44, sizeof(v104));
  memcpy(v98, v44, 0xB0uLL);
  memcpy(v105, v44, sizeof(v105));
  memcpy(v97, v44, 0xB0uLL);
  memcpy(v106, v44, sizeof(v106));
  memcpy(v96, v44, 0xB0uLL);
  v101[0] = v102;
  v101[1] = &v102[216];
  v101[2] = &v102[432];
  v101[3] = &v102[648];
  LODWORD(v99[22]) = v54;
  v99[23] = 0x4010000000000000;
  v99[24] = v77;
  v99[25] = v93;
  v99[26] = v87;
  LODWORD(v98[22]) = v54;
  v98[23] = 0x4010000000000000;
  v98[24] = v77;
  v98[25] = v92;
  v98[26] = v91;
  v100[0] = v99;
  v100[1] = v98;
  LODWORD(v97[22]) = v54;
  v97[23] = 0x4010000000000000;
  v97[24] = v77;
  v97[25] = v93;
  v97[26] = v87;
  LODWORD(v96[22]) = v54;
  v96[23] = v77;
  v100[2] = v97;
  v100[3] = v96;
  sub_10053BFBC(v100, v101);
  memcpy(v107, v96, sizeof(v107));
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_100470A6C(v103, v110);
  sub_100470A6C(v104, v110);

  sub_100470A6C(v105, v110);
  sub_100470A6C(v106, v110);
  sub_10053F590(v107);
  memcpy(v108, v97, sizeof(v108));
  sub_10053F5C0(v108);
  memcpy(v109, v98, sizeof(v109));
  sub_10053F5F0(v109);
  memcpy(v110, v99, 0xD8uLL);
  sub_10053F5F0(v110);
  v56 = v94;
  memcpy(v94, v102, 0x348uLL);
  v57 = v79 & 1;
  v95 = v79 & 1;
  v58 = v56;
  v59 = v85;
  sub_100035AD0(v58, v85, &qword_100CC4558);
  v61 = v83;
  v60 = v84;
  v63 = v81;
  v62 = v82;
  *v84 = v82;
  v60[1] = v63;
  *(v60 + 16) = v57;
  v60[3] = v61;
  v60[4] = 0;
  *(v60 + 40) = 1;
  v64 = sub_10022C350(&qword_100CC4560);
  sub_100035AD0(v59, v60 + *(v64 + 64), &qword_100CC4558);
  sub_10010CD54(v62, v63, v57);

  sub_10010CD54(v62, v63, v57);

  sub_10010CD64(v62, v63, v57);

  sub_1000180EC(v94, &qword_100CC4558);
  sub_1000180EC(v59, &qword_100CC4558);
  sub_10010CD64(v62, v63, v95);
}

uint64_t sub_10053D438()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v2 - 8);
  v62 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v56 - v5;
  v60 = type metadata accessor for EnvironmentValues();
  v6 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Scale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = v0[3];
  if (v13)
  {
    v14 = v0[2];

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
    v16 = *v0;
    v61 = v0;
    v17 = v0[1];
    v64 = v16;
    v65 = v17;
    sub_10002D5A4();
    v58 = v6;

    v18 = Text.init<A>(_:)();
    v20 = v19;
    v56 = v9;
    v57 = v8;
    v22 = v21;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    sub_10010CD64(v18, v20, v22 & 1);

    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
    v64 = v14;
    v65 = v13;
    v24 = Text.init<A>(_:)();
    v26 = v25;
    v28 = v27;
    static Text.Scale.secondary.getter();
    v29 = Text.textScale(_:isEnabled:)();
    v31 = v30;
    LOBYTE(v18) = v32;
    v33 = v26;
    v1 = v61;
    sub_10010CD64(v24, v33, v28 & 1);

    (*(v56 + 8))(v11, v57);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v34 = v31;
    v6 = v58;
    sub_10010CD64(v29, v34, v18 & 1);

    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
    LocalizedStringKey.init(stringInterpolation:)();
    v36 = Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    v39 = v0[1];
    v64 = *v0;
    v65 = v39;
    sub_10002D5A4();

    v36 = Text.init<A>(_:)();
  }

  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = static Font.largeTitle.getter();
  v44 = static Font.title2.getter();
  v45 = v1 + *(type metadata accessor for AveragesComponentView(0) + 32);
  v46 = *v45;
  if (v45[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v48 = v59;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v46, 0);
    (*(v6 + 8))(v48, v60);
    LOBYTE(v46) = v64;
  }

  v49 = enum case for Font.Leading.tight(_:);
  v50 = type metadata accessor for Font.Leading();
  v51 = v63;
  (*(*(v50 - 8) + 104))(v63, v49, v50);
  sub_10001B350(v51, 0, 1, v50);
  v52 = v62;
  sub_100035AD0(v51, v62, &qword_100CACFF0);

  sub_1001C987C(v43, v44, v46 & 1, v52);
  v53 = Text.font(_:)();
  v61 = v54;
  v62 = v53;

  sub_10010CD64(v40, v41, v42 & 1);

  sub_1000180EC(v51, &qword_100CACFF0);
  return v62;
}

uint64_t sub_10053D9FC()
{
  v0 = type metadata accessor for Locale();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  static Locale.current.getter();
  Locale.textDirectionIsRTL.getter();
  (*(v2 + 8))(v6, v0);
  type metadata accessor for MeasuredText(0);
  return GraphicsContext.draw(_:in:)();
}

double sub_10053DB20(uint64_t a1)
{
  type metadata accessor for CanvasContentSizeEstimationContext(0);
  Font.lineHeight(in:)();
  Font.lineHeight(in:)();
  Font.lineHeight(in:)();
  return *a1;
}

uint64_t sub_10053DB9C@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v162 = a1;
  v161 = a2;
  v167 = type metadata accessor for MeasuredAveragesRowContent(0) - 8;
  __chkstk_darwin(v167);
  v160 = &v142[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v166 = &v142[-v6];
  v169 = type metadata accessor for MeasuredText(0) - 8;
  __chkstk_darwin(v169);
  v157 = &v142[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v168 = &v142[-v9];
  __chkstk_darwin(v10);
  v150 = &v142[-v11];
  __chkstk_darwin(v12);
  v165 = &v142[-v13];
  __chkstk_darwin(v14);
  v16 = &v142[-v15];
  v159 = type metadata accessor for SubheadingAndBothRowsFooterCanvasContent.MeasurementCache(0) - 8;
  __chkstk_darwin(v159);
  v158 = &v142[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v3 + 32);
  v19 = *(v3 + 40);
  v20 = *(v3 + 72);
  v149 = *(v3 + 64);
  v148 = v20;
  v21 = *(v3 + 104);
  v147 = *(v3 + 96);
  v146 = v21;
  v22 = *(v3 + 120);
  v152 = *(v3 + 112);
  v151 = v22;
  v23 = *(v3 + 152);
  v154 = *(v3 + 144);
  v153 = v23;
  v170 = v18;
  v171 = v19;
  v163 = sub_10002D5A4();

  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;
  sub_10010CD64(v24, v26, v28 & 1);

  v164 = *v162;
  type metadata accessor for CanvasContentMeasurementContext(0);
  GraphicsContext.resolve(_:)();
  v155 = v16;
  GraphicsContext.ResolvedText.measure(in:)();
  v35 = v34;
  v37 = v36;
  v156 = v36;
  sub_10010CD64(v29, v31, v33 & 1);

  v38 = &v16[*(v169 + 28)];
  *v38 = v35;
  v38[1] = v37;
  v170 = v149;
  v171 = v148;

  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v149 = *(v3 + 200);
  v44 = Text.font(_:)();
  v46 = v45;
  v48 = v47;
  sub_10010CD64(v39, v41, v43 & 1);

  LODWORD(v148) = *(v3 + 176);
  LODWORD(v170) = v148;
  v145 = Text.foregroundStyle<A>(_:)();
  v144 = v49;
  v143 = v50;
  v162 = v51;
  sub_10010CD64(v44, v46, v48 & 1);

  v170 = v147;
  v171 = v146;

  v52 = Text.init<A>(_:)();
  v54 = v53;
  LOBYTE(v44) = v55;
  v147 = *(v3 + 208);
  v56 = Text.font(_:)();
  v58 = v57;
  LOBYTE(v24) = v59;
  sub_10010CD64(v52, v54, v44 & 1);

  v146 = Text.monospacedDigit()();
  v61 = v60;
  LOBYTE(v46) = v62;
  sub_10010CD64(v56, v58, v24 & 1);

  v63 = *(v3 + 184);
  LOBYTE(v54) = v143;
  v64 = v165;
  v65 = v145;
  v66 = v144;
  GraphicsContext.resolve(_:)();
  GraphicsContext.ResolvedText.measure(in:)();
  v68 = v67;
  v70 = v69;
  v71 = v169;
  v72 = &v64[*(v169 + 28)];
  *v72 = v67;
  v72[1] = v69;
  LOBYTE(v56) = v46;
  v73 = v150;
  v74 = v146;
  GraphicsContext.resolve(_:)();
  v75 = v73;
  GraphicsContext.ResolvedText.measure(in:)();
  v77 = v76;
  v79 = v78;
  sub_10010CD64(v74, v61, v56 & 1);

  sub_10010CD64(v65, v66, v54 & 1);

  v80 = &v73[*(v71 + 28)];
  *v80 = v77;
  v80[1] = v79;
  v162 = type metadata accessor for MeasuredText;
  v81 = v166;
  sub_10053FA70(v165, v166, type metadata accessor for MeasuredText);
  v82 = v167;
  sub_10053FA70(v75, &v81[*(v167 + 28)], type metadata accessor for MeasuredText);
  *&v81[*(v82 + 32)] = v63;
  if (v70 > v79)
  {
    v79 = v70;
  }

  v83 = v63 + v68 + v77;
  v84 = &v81[*(v82 + 36)];
  *v84 = v83;
  v84[1] = v79;
  v170 = v152;
  v171 = v151;

  v85 = Text.init<A>(_:)();
  v87 = v86;
  v89 = v88;
  v90 = Text.font(_:)();
  v92 = v91;
  v94 = v93;
  sub_10010CD64(v85, v87, v89 & 1);

  LODWORD(v170) = v148;
  v152 = Text.foregroundStyle<A>(_:)();
  v151 = v95;
  LODWORD(v150) = v96;
  v165 = v97;
  sub_10010CD64(v90, v92, v94 & 1);

  v170 = v154;
  v171 = v153;

  v98 = Text.init<A>(_:)();
  v100 = v99;
  LOBYTE(v90) = v101;
  v102 = Text.font(_:)();
  v104 = v103;
  v106 = v105;
  sub_10010CD64(v98, v100, v90 & 1);

  v163 = Text.monospacedDigit()();
  v108 = v107;
  LOBYTE(v92) = v109;
  sub_10010CD64(v102, v104, v106 & 1);

  LOBYTE(v100) = v150;
  v110 = v168;
  v111 = v152;
  v112 = v151;
  GraphicsContext.resolve(_:)();
  GraphicsContext.ResolvedText.measure(in:)();
  v114 = v113;
  v116 = v115;
  v117 = v169;
  v118 = &v110[*(v169 + 28)];
  *v118 = v113;
  v118[1] = v115;
  v119 = v92;
  v120 = v157;
  v121 = v163;
  GraphicsContext.resolve(_:)();
  v122 = v120;
  GraphicsContext.ResolvedText.measure(in:)();
  v124 = v123;
  v126 = v125;
  sub_10010CD64(v121, v108, v119 & 1);

  sub_10010CD64(v111, v112, v100 & 1);

  v127 = &v120[*(v117 + 28)];
  *v127 = v124;
  v127[1] = v126;
  v128 = v160;
  v129 = v162;
  sub_10053FA70(v168, v160, v162);
  v130 = v167;
  sub_10053FA70(v122, &v128[*(v167 + 28)], v129);
  *&v128[*(v130 + 32)] = v63;
  if (v116 > v126)
  {
    v126 = v116;
  }

  v131 = v63 + v114 + v124;
  v132 = &v128[*(v130 + 36)];
  *v132 = v131;
  v132[1] = v126;
  v133 = v155;
  v134 = v158;
  sub_10053F9B8(v155, v158, type metadata accessor for MeasuredText);
  v135 = v159;
  v136 = v166;
  sub_10053F9B8(v166, &v134[*(v159 + 28)], type metadata accessor for MeasuredAveragesRowContent);
  sub_10053F9B8(v128, &v134[*(v135 + 32)], type metadata accessor for MeasuredAveragesRowContent);
  sub_100302F24(_swiftEmptyArrayStorage, v35, v83, v131);
  v138 = v137;
  sub_10053FA18(v133, type metadata accessor for MeasuredText);
  sub_10053FA18(v136, type metadata accessor for MeasuredAveragesRowContent);
  v139 = v156 + v79;
  sub_10053FA18(v128, type metadata accessor for MeasuredAveragesRowContent);
  v140 = &v134[*(v135 + 36)];
  *v140 = v138;
  v140[1] = v139 + v126;
  return sub_10053FA70(v134, v161, type metadata accessor for SubheadingAndBothRowsFooterCanvasContent.MeasurementCache);
}

uint64_t sub_10053E680()
{
  sub_10053D9FC();
  type metadata accessor for SubheadingAndBothRowsFooterCanvasContent.MeasurementCache(0);
  type metadata accessor for MeasuredAveragesRowContent(0);
  sub_10053D9FC();
  type metadata accessor for MeasuredText(0);
  sub_10053D9FC();
  sub_10053D9FC();
  return sub_10053D9FC();
}