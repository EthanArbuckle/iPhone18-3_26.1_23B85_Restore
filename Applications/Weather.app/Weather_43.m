uint64_t sub_100484F94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100484FEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10048504C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1004850AC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = type metadata accessor for DispatchQoS();
  v4 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040690();
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.utility(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_1004853C0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C592C0;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v1 + 8))(v3, v0);
  return (*(v4 + 8))(v6, v14[0]);
}

void sub_1004853C0()
{
  if (qword_100CA2738 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90C00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting widget timeline reload", v3, 2u);
  }

  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Finished widget timeline reload", v5, 2u);
  }
}

void sub_100485580()
{
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();

  if (qword_100CA2738 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90C00);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished widget timeline reload without debounce", v2, 2u);
  }
}

uint64_t type metadata accessor for FeelsLikeComponentVarianceView()
{
  result = qword_100CBCFF0;
  if (!qword_100CBCFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100485704()
{
  sub_100485788();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100485788()
{
  if (!qword_100CB8758)
  {
    sub_10022E824(&qword_100CA6188);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB8758);
    }
  }
}

uint64_t sub_100485808()
{
  v1 = type metadata accessor for TemperatureScaleConfiguration();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v21 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for FeelsLikeVarianceView.Configuration();
  __chkstk_darwin(v14 - 8);
  sub_1000037D8();
  v15 = *v0;
  v16 = *(v0 + 8);
  if (*(v0 + 9) != 1)
  {

    static os_log_type_t.fault.getter();
    v20 = v8;
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427C44(v15, v16, 0);
    (*(v21 + 8))(v13, v20);
  }

  v18 = type metadata accessor for FeelsLikeComponentVarianceView();
  (*(v3 + 16))(v7, v0 + *(v18 + 20), v1);
  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);

  FeelsLikeVarianceView.Configuration.init(contentWidth:gradientScale:actualTemperature:feelsLikeTemperature:differenceThreshold:differenceText:useDayGradient:)();
  return FeelsLikeVarianceView.init(configuration:)();
}

unint64_t sub_100485ACC()
{
  result = qword_100CBD028;
  if (!qword_100CBD028)
  {
    type metadata accessor for FeelsLikeVarianceView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD028);
  }

  return result;
}

uint64_t sub_100485B24(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = a2(0);
  sub_100003810(v7);
  v9 = v8;
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = a4(v13);
  *a1 = v10;
  return result;
}

uint64_t sub_100485BE4()
{
  v1 = OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___subscriptions;
  if (*(v0 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___subscriptions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___subscriptions);
  }

  else
  {
    v2 = sub_100485C4C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100485C4C()
{
  NotificationStore.subscriptions.getter();
  dispatch thunk of Table.query.getter();

  v0 = dispatch thunk of Query.all()();

  v2 = v0;

  sub_100485B24(&v2, &type metadata accessor for SubscriptionEntity, sub_1003092B8, sub_100488A00);

  return v2;
}

id sub_100485D50()
{
  v1 = OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100485DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___subscriptions] = 0;
  *&v3[OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___dateFormatter] = 0;
  sub_10042F370(a1, &v3[OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationsManager]);
  *&v3[OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationStore] = a2;
  sub_10042F370(a3, &v3[OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationSubscriptionManager]);
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DebugNotificationSubscriptionsViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:", 2);
  sub_100006F14(a3);
  sub_100006F14(a1);
  return v7;
}

void sub_100485EA0()
{
  *(v0 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___subscriptions) = 0;
  *(v0 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100485F24()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugNotificationSubscriptionsViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    sub_10000C70C(0, &qword_100CB2D30);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    sub_1003C1790(0x6163696669746F4ELL, 0xED0000736E6F6974, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100486058(uint64_t a1, uint64_t a2)
{
  v2 = 2;
  switch(a2)
  {
    case 0:
      v2 = *(sub_100485BE4() + 16);

      break;
    case 1:
    case 2:
      return v2;
    case 3:
      v2 = 4;
      break;
    case 4:
      v2 = 1;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

unint64_t sub_100486120(uint64_t a1, uint64_t a2)
{
  v2 = 0x7069726373627553;
  if (a2)
  {
    v2 = 0;
  }

  if (a2 == 3)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10048618C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      result = 0xD00000000000004DLL;
      break;
    case 1:
      result = 0xD000000000000060;
      break;
    case 2:
      result = 0xD000000000000053;
      break;
    case 3:
      result = 0xD000000000000047;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

id sub_100486278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a5(a1, a4);
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1004862D4(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      if (IndexPath.row.getter())
      {
        if (IndexPath.row.getter() == 1)
        {
          sub_100488254();
        }
      }

      else
      {
        sub_100487BDC();
      }
    }

    else if (IndexPath.section.getter() == 2)
    {
      if (IndexPath.row.getter())
      {
        if (IndexPath.row.getter() == 1)
        {
          sub_100488358();
        }
      }

      else
      {
        sub_10048832C();
      }
    }

    else if (IndexPath.section.getter() == 3)
    {
      if (IndexPath.row.getter())
      {
        if (IndexPath.row.getter() == 1)
        {
          sub_100488484();
        }

        else if (IndexPath.row.getter() == 2)
        {
          sub_100488570();
        }

        else if (IndexPath.row.getter() == 3)
        {
          sub_1004887CC();
        }
      }

      else
      {
        sub_100488648();
      }
    }

    else if (IndexPath.section.getter() == 4)
    {
      sub_100488444(v4);
    }
  }

  else
  {
    v5 = IndexPath.row.getter();
    sub_100487828(v4, v5);
  }

  return v4;
}

void sub_10048657C(void *a1, uint64_t a2)
{
  v3 = v2;
  v67 = a1;
  v5 = type metadata accessor for IndexPath();
  sub_1000037C4();
  v66 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = type metadata accessor for SubscriptionEntity();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003C38();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v66 - v18;
  if (!IndexPath.section.getter())
  {
    v24 = IndexPath.row.getter();
    v25 = sub_100485BE4();
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v25 + 16))
    {
      v26 = *(v12 + 16);
      v26(v19, v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v10);

      v26(v16, v19, v10);
      objc_allocWithZone(type metadata accessor for DebugNotificationSubscriptionViewController());

      v28 = sub_10058AD54(v27, v16);
      v29 = [v3 navigationController];
      if (v29)
      {
        v30 = v29;
        [v29 pushViewController:v28 animated:1];

        (*(v12 + 8))(v19, v10);
        goto LABEL_36;
      }

      (*(v12 + 8))(v19, v10);
      goto LABEL_19;
    }

    __break(1u);
    sub_1000042FC();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v20 = v3;
  if (IndexPath.section.getter() == 1)
  {
    if (IndexPath.row.getter())
    {
      if (IndexPath.row.getter() == 1)
      {
        NotificationStore.fetchSchedules.getter();
        dispatch thunk of Table.query.getter();
        sub_100031D38();
        dispatch thunk of Query.all()();
        sub_10001159C();
        sub_10000CB84();
        sub_100485B24(v68, &type metadata accessor for FetchScheduleEntity, sub_100309348, sub_100489498);

        sub_1000315E4();
        v21 = objc_allocWithZone(type metadata accessor for DebugNotificationFetchSchedulesViewController());
        v22 = sub_1000695DC();
        v67 = sub_100987374(v22);
        v23 = [v3 navigationController];
        goto LABEL_28;
      }
    }

    else
    {
      sub_100028578(OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationsManager);
      dispatch thunk of NotificationsManagerProxyType.schedule()();
      sub_10000C70C(0, &qword_100CB4670);
      v35 = static OS_dispatch_queue.main.getter();
      v36 = v66;
      (*(v66 + 16))(&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
      v37 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v38 = swift_allocObject();
      v39 = v67;
      *(v38 + 16) = v67;
      (*(v36 + 32))(v38 + v37, &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      v40 = v39;
      Promise.always(on:closure:)();

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v40 deselectRowAtIndexPath:isa animated:1];
    }

LABEL_36:
    sub_10000536C();
    return;
  }

  if (IndexPath.section.getter() != 2)
  {
    if (IndexPath.section.getter() != 3)
    {
      if (IndexPath.section.getter() != 4)
      {
        goto LABEL_36;
      }

      sub_10000C70C(0, &qword_100CAC5F8);
      v42 = sub_100604878(0xD000000000000013, 0x8000000100ACB7F0, 0xD000000000000056, 0x8000000100ACB810, 1);
      sub_10000C70C(0, &qword_100CAC600);
      v43 = swift_allocObject();
      *(v43 + 16) = v20;
      v44 = v20;
      v45 = sub_100604930(0x7465736552, 0xE500000000000000, 2, sub_10048DE60, v43);
      v46 = sub_100604930(0x6C65636E6143, 0xE600000000000000, 1, 0, 0);
      [v42 addAction:v45];
      [v42 addAction:v46];
      [v44 presentViewController:v42 animated:1 completion:0];
      v47.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v67 deselectRowAtIndexPath:v47.super.isa animated:{1, v47.super.isa}];

      goto LABEL_30;
    }

    if (!IndexPath.row.getter())
    {
      sub_100028578(OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationsManager);
      dispatch thunk of NotificationsManagerProxyType.validate()();

      v52.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v67 deselectRowAtIndexPath:v52.super.isa animated:{1, v52.super.isa}];
      goto LABEL_30;
    }

    if (IndexPath.row.getter() == 1)
    {
      NotificationStore.incomingMessages.getter();
      dispatch thunk of Table.query.getter();

      v33 = dispatch thunk of Query.all()();

      sub_10000CB84();
      sub_100485B24(v68, &type metadata accessor for IncomingMessageEntity, sub_100309318, sub_100489110);

      sub_1000315E4();
      objc_allocWithZone(type metadata accessor for DebugIncomingMessagesViewController());

      v67 = sub_100522450(v34, v33);
      v23 = [v3 navigationController];
      goto LABEL_28;
    }

    if (IndexPath.row.getter() == 2)
    {
      NotificationStore.severeNotifications.getter();
      dispatch thunk of Table.query.getter();
      sub_100031D38();
      dispatch thunk of Query.all()();
      sub_10001159C();
      sub_10000CB84();
      sub_100485B24(v68, &type metadata accessor for SevereNotificationEntity, sub_100309300, sub_100488F4C);

      sub_1000315E4();
      v53 = objc_allocWithZone(type metadata accessor for DebugSevereNotificationsViewController());
      v54 = sub_1000695DC();
      v67 = sub_100806AA8(v54);
      v23 = [v3 navigationController];
      goto LABEL_28;
    }

    if (IndexPath.row.getter() != 3)
    {
      goto LABEL_36;
    }

    NotificationStore.weatherAlerts.getter();
    dispatch thunk of Table.query.getter();

    dispatch thunk of Query.all()();

    sub_10000CB84();
    sub_100485B24(v68, &type metadata accessor for WeatherAlertEntity, sub_1003092E8, sub_100488D88);

    v59 = v68[0];
    NotificationStore.periodicWeatherAlerts.getter();
    dispatch thunk of Table.query.getter();
    sub_100031D38();
    dispatch thunk of Query.all()();
    sub_10001159C();
    sub_10000CB84();
    sub_100485B24(v68, &type metadata accessor for PeriodicWeatherAlertEntity, sub_1003092D0, sub_100488BC4);

    sub_10068AF4C(v68[0], v59);
    v68[0] = v60;
    v68[1] = v61;
    v68[2] = v62;
    v63 = objc_allocWithZone(sub_10022C350(&qword_100CBD098));
    v28 = UIHostingController.init(rootView:)();
    v64 = [v3 navigationController];
    if (v64)
    {
      v65 = v64;
      [v64 pushViewController:v28 animated:1];
    }

LABEL_19:

    goto LABEL_36;
  }

  if (IndexPath.row.getter())
  {
    if (IndexPath.row.getter() != 1)
    {
      goto LABEL_36;
    }

    NotificationStore.deliverySchedules.getter();
    dispatch thunk of Table.query.getter();
    sub_100031D38();
    dispatch thunk of Query.all()();
    sub_10001159C();
    sub_10000CB84();
    sub_100485B24(v68, &type metadata accessor for DeliveryScheduleEntity, sub_100309330, sub_1004892D4);

    sub_1000315E4();
    v31 = objc_allocWithZone(type metadata accessor for DebugNotificationDeliverySchedulesViewController());
    v32 = sub_1000695DC();
    v67 = sub_10078E880(v32);
    v23 = [v3 navigationController];
LABEL_28:
    v55 = v23;
    if (v55)
    {
      v56 = v55;
      [v55 pushViewController:v67 animated:1];
    }

    goto LABEL_30;
  }

  sub_100028578(OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationsManager);
  dispatch thunk of NotificationsManagerProxyType.evaluate()();
  sub_10000C70C(0, &qword_100CB4670);
  v48 = static OS_dispatch_queue.main.getter();
  v49 = swift_allocObject();
  v50 = v67;
  *(v49 + 16) = v67;
  v51 = v50;
  Promise.always(on:closure:)();

  v67 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v51 deselectRowAtIndexPath:v67 animated:1];
LABEL_30:
  sub_10000536C();
}

void sub_100487198(void *a1, uint64_t a2)
{
  sub_10022C350(&qword_100CB1B18);
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  (*(v5 + 16))(v7 + v6, a2, v4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 reloadRowsAtIndexPaths:isa withRowAnimation:0];
}

void sub_1004872C8(void *a1)
{
  sub_10022C350(&qword_100CB1B18);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  IndexPath.init(row:section:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 reloadRowsAtIndexPaths:isa withRowAnimation:0];
}

uint64_t sub_1004873E0(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t (*a4)(char *, uint64_t))
{
  v6 = sub_10022C350(&unk_100CB2CF0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v20 - v13;
  a3(v12);
  dispatch thunk of Column.value.getter();

  v15 = type metadata accessor for Date();
  result = sub_100024D10(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (a3)();
    dispatch thunk of Column.value.getter();

    result = sub_100024D10(v10, 1, v15);
    if (result != 1)
    {
      v17 = a4(v14, v10);
      sub_100003B20();
      v19 = *(v18 + 8);
      v19(v10, v15);
      v19(v14, v15);
      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_10048756C(uint64_t a1, uint64_t a2)
{
  NotificationStore.subscriptions.getter();
  dispatch thunk of Table.delete.getter();

  dispatch thunk of Delete.all()();

  NotificationStore.deliverySchedules.getter();
  dispatch thunk of Table.delete.getter();

  dispatch thunk of Delete.all()();

  NotificationStore.fetchSchedules.getter();
  dispatch thunk of Table.delete.getter();

  dispatch thunk of Delete.all()();

  sub_1000161C0((a2 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationsManager), *(a2 + OBJC_IVAR____TtC7Weather44DebugNotificationSubscriptionsViewController_notificationsManager + 24));
  dispatch thunk of NotificationsManagerProxyType.schedule()();
  v3 = zalgo.getter();
  Promise.always(on:closure:)();
}

void sub_100487828(void *a1, unint64_t a2)
{
  v35 = a1;
  v3 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CBD088);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  type metadata accessor for Location();
  sub_1000037C4();
  v33 = v15;
  v34 = v14;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for SubscriptionEntity();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_100485BE4();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v26 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  (*(v21 + 16))(v25, v26 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * a2, v19);

  SubscriptionEntity.location.getter();
  dispatch thunk of Column.value.getter();

  v27 = sub_10022C350(&qword_100CBD090);
  if (sub_100024D10(v13, 1, v27) != 1)
  {
    JSON.value.getter();
    sub_100003B20();
    (*(v28 + 8))(v13, v27);
    static UIListContentConfiguration.subtitleCell()();
    Location.name.getter();
    UIListContentConfiguration.text.setter();
    Location.id.getter();
    UIListContentConfiguration.secondaryText.setter();
    v29 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v29(v36, 0);
    v30 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.lineBreakMode.setter();
    v30(v36, 0);
    v36[3] = v3;
    v36[4] = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(v36);
    sub_100008718();
    v31();
    v32 = v35;
    UITableViewCell.contentConfiguration.setter();
    [v32 setAccessoryType:1];
    (*(v5 + 8))(v9, v3);
    (*(v33 + 8))(v18, v34);
    (*(v21 + 8))(v25, v19);
    sub_10000536C();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100487BDC()
{
  v2 = sub_10001793C();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();
  v6 = [objc_opt_self() systemBlueColor];
  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v7(v9, 0);
  UIListContentConfiguration.text.setter();
  sub_100487D48(v0);
  UIListContentConfiguration.secondaryText.setter();
  v9[3] = v2;
  v9[4] = &protocol witness table for UIListContentConfiguration;
  sub_100042FB0(v9);
  sub_100008718();
  v8();
  UITableViewCell.contentConfiguration.setter();
  (*(v4 + 8))(v1, v2);
  sub_10000536C();
}

uint64_t sub_100487D48(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_10022C350(&qword_100CB2D08);
  __chkstk_darwin(v5 - 8);
  v7 = (&v30 - v6);
  v8 = type metadata accessor for Expression();
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CBD080);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  ScheduleEntity = type metadata accessor for FetchScheduleEntity();
  v14 = *(ScheduleEntity - 8);
  __chkstk_darwin(ScheduleEntity);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  NotificationStore.fetchSchedules.getter();
  v34 = v4;
  v35 = v8;
  v31 = v16;
  v32 = v14;
  v33 = a1;
  dispatch thunk of Table.query.getter();

  v39 = &type metadata for Bool;
  v40 = &protocol witness table for Bool;
  v38[0] = 1;
  == infix(_:_:)();
  sub_100006F14(v38);
  *v7 = 1702125924;
  v7[1] = 0xE400000000000000;
  v17 = enum case for OrderBy.descending(_:);
  v18 = type metadata accessor for OrderBy();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  sub_10001B350(v7, 0, 1, v18);
  dispatch thunk of Query.first(_:orderBy:)();

  sub_10002C4AC(v7, &qword_100CB2D08);
  (*(v36 + 8))(v10, v35);
  v21 = ScheduleEntity;
  v22 = sub_100024D10(v13, 1, ScheduleEntity);
  if (v22 == 1)
  {
    sub_10002C4AC(v13, &qword_100CBD080);
    return 0x3F726576654ELL;
  }

  v24 = v31;
  v23 = v32;
  (*(v32 + 32))(v31, v13, v21);
  v25 = sub_100485D50();
  FetchScheduleEntity.date.getter();
  v26 = v34;
  dispatch thunk of Column.value.getter();
  v27 = type metadata accessor for Date();
  result = sub_100024D10(v26, 1, v27);
  if (result != 1)
  {

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v27 - 8) + 8))(v26, v27);
    v29 = [v25 stringFromDate:isa];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v23 + 8))(v24, v21);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_100488254()
{
  sub_10001793C();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();
  sub_10002470C();
  sub_10000EAA0(&protocol witness table for UIListContentConfiguration);
  sub_100005E9C();
  v1();
  v2 = sub_10002C754();
  sub_100020774(v2, "setAccessoryType:");
  v3 = sub_1000198D0();
  return v4(v3);
}

uint64_t sub_100488358()
{
  sub_10001793C();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();
  UIListContentConfiguration.text.setter();
  sub_10000EAA0(&protocol witness table for UIListContentConfiguration);
  sub_100005E9C();
  v1();
  v2 = sub_10002C754();
  sub_100020774(v2, "setAccessoryType:");
  v3 = sub_1000198D0();
  return v4(v3);
}

uint64_t sub_100488484()
{
  sub_10001793C();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();
  UIListContentConfiguration.text.setter();
  sub_10000EAA0(&protocol witness table for UIListContentConfiguration);
  sub_100005E9C();
  v1();
  v2 = sub_10002C754();
  sub_100020774(v2, "setAccessoryType:");
  v3 = sub_1000198D0();
  return v4(v3);
}

uint64_t sub_100488570()
{
  sub_10001793C();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();
  sub_10002470C();
  sub_10000EAA0(&protocol witness table for UIListContentConfiguration);
  sub_100005E9C();
  v1();
  v2 = sub_10002C754();
  sub_100020774(v2, "setAccessoryType:");
  v3 = sub_1000198D0();
  return v4(v3);
}

uint64_t sub_100488674(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_10001793C();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10001EA5C();
  a2();
  UIListContentConfiguration.text.setter();
  v12 = [objc_opt_self() *a5];
  v13 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v13(v16, 0);
  v16[3] = v8;
  v16[4] = &protocol witness table for UIListContentConfiguration;
  sub_100042FB0(v16);
  sub_100008718();
  v14();
  UITableViewCell.contentConfiguration.setter();
  return (*(v10 + 8))(v5, v8);
}

uint64_t sub_1004887CC()
{
  sub_10001793C();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();
  UIListContentConfiguration.text.setter();
  sub_10000EAA0(&protocol witness table for UIListContentConfiguration);
  sub_100005E9C();
  v1();
  v2 = sub_10002C754();
  sub_100020774(v2, "setAccessoryType:");
  v3 = sub_1000198D0();
  return v4(v3);
}

id sub_100488950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugNotificationSubscriptionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100488A00(uint64_t *a1)
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
        type metadata accessor for SubscriptionEntity();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for SubscriptionEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100489A24(v8, v9, a1, v4, &type metadata accessor for SubscriptionEntity, &SubscriptionEntity.created.getter, &static Date.< infix(_:_:), &SubscriptionEntity.created.getter, &static Date.< infix(_:_:), sub_10048A75C);
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
    sub_10048965C(0, v2, 1, a1, &type metadata accessor for SubscriptionEntity, &SubscriptionEntity.created.getter, &static Date.< infix(_:_:));
  }
}

void sub_100488BC4(uint64_t *a1)
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
        type metadata accessor for PeriodicWeatherAlertEntity();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for PeriodicWeatherAlertEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100489A24(v8, v9, a1, v4, &type metadata accessor for PeriodicWeatherAlertEntity, &PeriodicWeatherAlertEntity.created.getter, &static Date.> infix(_:_:), &PeriodicWeatherAlertEntity.created.getter, &static Date.> infix(_:_:), sub_10048AF38);
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
    sub_10048965C(0, v2, 1, a1, &type metadata accessor for PeriodicWeatherAlertEntity, &PeriodicWeatherAlertEntity.created.getter, &static Date.> infix(_:_:));
  }
}

void sub_100488D88(uint64_t *a1)
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
        type metadata accessor for WeatherAlertEntity();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for WeatherAlertEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100489A24(v8, v9, a1, v4, &type metadata accessor for WeatherAlertEntity, &WeatherAlertEntity.created.getter, &static Date.> infix(_:_:), &WeatherAlertEntity.created.getter, &static Date.> infix(_:_:), sub_10048B714);
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
    sub_10048965C(0, v2, 1, a1, &type metadata accessor for WeatherAlertEntity, &WeatherAlertEntity.created.getter, &static Date.> infix(_:_:));
  }
}

void sub_100488F4C(uint64_t *a1)
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
        type metadata accessor for SevereNotificationEntity();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for SevereNotificationEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100489A24(v8, v9, a1, v4, &type metadata accessor for SevereNotificationEntity, &SevereNotificationEntity.date.getter, &static Date.> infix(_:_:), &SevereNotificationEntity.date.getter, &static Date.> infix(_:_:), sub_10048BEF0);
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
    sub_10048965C(0, v2, 1, a1, &type metadata accessor for SevereNotificationEntity, &SevereNotificationEntity.date.getter, &static Date.> infix(_:_:));
  }
}

void sub_100489110(uint64_t *a1)
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
        type metadata accessor for IncomingMessageEntity();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IncomingMessageEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100489A24(v8, v9, a1, v4, &type metadata accessor for IncomingMessageEntity, &IncomingMessageEntity.date.getter, &static Date.> infix(_:_:), &IncomingMessageEntity.date.getter, &static Date.> infix(_:_:), sub_10048C6CC);
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
    sub_10048965C(0, v2, 1, a1, &type metadata accessor for IncomingMessageEntity, &IncomingMessageEntity.date.getter, &static Date.> infix(_:_:));
  }
}

void sub_1004892D4(uint64_t *a1)
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
        type metadata accessor for DeliveryScheduleEntity();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DeliveryScheduleEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100489A24(v8, v9, a1, v4, &type metadata accessor for DeliveryScheduleEntity, &DeliveryScheduleEntity.created.getter, &static Date.> infix(_:_:), &DeliveryScheduleEntity.created.getter, &static Date.> infix(_:_:), sub_10048CEA8);
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
    sub_10048965C(0, v2, 1, a1, &type metadata accessor for DeliveryScheduleEntity, &DeliveryScheduleEntity.created.getter, &static Date.> infix(_:_:));
  }
}

void sub_100489498(uint64_t *a1)
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
        type metadata accessor for FetchScheduleEntity();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FetchScheduleEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100489A24(v8, v9, a1, v4, &type metadata accessor for FetchScheduleEntity, &FetchScheduleEntity.created.getter, &static Date.> infix(_:_:), &FetchScheduleEntity.created.getter, &static Date.> infix(_:_:), sub_10048D684);
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
    sub_10048965C(0, v2, 1, a1, &type metadata accessor for FetchScheduleEntity, &FetchScheduleEntity.created.getter, &static Date.> infix(_:_:));
  }
}

void sub_10048965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void, __n128), void (*a6)(void), uint64_t (*a7)(char *, uint64_t))
{
  v66 = a7;
  v70 = a6;
  v12 = sub_10022C350(&unk_100CB2CF0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003C38();
  v68 = v14 - v15;
  sub_10000386C();
  v17 = __chkstk_darwin(v16);
  v69 = &v50 - v18;
  v19 = a5(0, v17);
  sub_1000037C4();
  __chkstk_darwin(v20);
  sub_100003C38();
  v60 = v21 - v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100037B08();
  v28 = __chkstk_darwin(v24);
  v29 = &v50 - v25;
  v52 = a2;
  if (a3 != a2)
  {
    v30 = v27;
    v31 = *a4;
    v64 = *(v26 + 16);
    v65 = v26 + 16;
    v32 = *(v26 + 72);
    v61 = (v26 + 8);
    v62 = &v50 - v25;
    v33 = v31 + v32 * (a3 - 1);
    v57 = -v32;
    v58 = (v26 + 32);
    v34 = a1 - a3;
    v59 = v31;
    v51 = v32;
    v35 = v31 + v32 * a3;
    v63 = v27;
    while (2)
    {
      v55 = v33;
      v56 = a3;
      v53 = v35;
      v54 = v34;
      v36 = v34;
      do
      {
        v37 = v64;
        (v64)(v29, v35, v19, v28);
        v38 = v37(v30, v33, v19);
        (v70)(v38);
        v39 = v69;
        dispatch thunk of Column.value.getter();

        v40 = type metadata accessor for Date();
        if (sub_100024D10(v39, 1, v40) == 1)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v70();
        v41 = v68;
        dispatch thunk of Column.value.getter();

        if (sub_100024D10(v41, 1, v40) == 1)
        {
          goto LABEL_12;
        }

        v43 = v68;
        v42 = v69;
        v67 = v66(v69, v68);
        v44 = v36;
        v45 = *(*(v40 - 8) + 8);
        v45(v43, v40);
        v46 = v42;
        v30 = v63;
        v45(v46, v40);
        v47 = *v61;
        (*v61)(v30, v19);
        v29 = v62;
        v47(v62, v19);
        if ((v67 & 1) == 0)
        {
          break;
        }

        if (!v59)
        {
          goto LABEL_13;
        }

        v48 = *v58;
        v49 = v60;
        (*v58)(v60, v35, v19);
        swift_arrayInitWithTakeFrontToBack();
        v48(v33, v49, v19);
        v33 += v57;
        v35 += v57;
        v36 = v44 + 1;
      }

      while (v44 != -1);
      a3 = v56 + 1;
      v33 = v55 + v51;
      v34 = v54 - 1;
      v35 = v53 + v51;
      if (v56 + 1 != v52)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100489A24(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5, void (*a6)(__n128), uint64_t (*a7)(char *, uint64_t), void (*a8)(void), uint64_t (*a9)(void, void), void (*a10)(void, void, void, void))
{
  v171 = a7;
  v170 = a6;
  v174 = a1;
  v183 = a10;
  v14 = sub_10022C350(&unk_100CB2CF0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003C38();
  v193 = v16 - v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_100003878();
  v202 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_100003878();
  v179 = v21;
  sub_10000386C();
  v23 = __chkstk_darwin(v22);
  v188 = &v167 - v24;
  (a5)(0, v23);
  sub_1000037C4();
  __chkstk_darwin(v25);
  sub_100003C38();
  v177 = (v26 - v27);
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_100003878();
  v192 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v32 = &v167 - v31;
  __chkstk_darwin(v33);
  sub_100003878();
  v201 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100037B08();
  __chkstk_darwin(v36);
  sub_100003878();
  v187 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_100003878();
  v169 = v39;
  sub_10000386C();
  v44 = __chkstk_darwin(v40);
  v168 = &v167 - v45;
  v186 = a3;
  v46 = a3[1];
  v184 = v42;
  if (v46 >= 1)
  {
    v167 = v43;
    v47 = 0;
    v199 = v42 + 16;
    v200 = v41;
    v198 = (v42 + 8);
    v194 = (v42 + 32);
    v195 = a9;
    v48 = _swiftEmptyArrayStorage;
    v197 = a8;
    v173 = a4;
    v196 = v32;
    while (1)
    {
      v49 = v47;
      v50 = v47 + 1;
      v175 = v49;
      v185 = v50;
      if (v50 >= v46)
      {
        v60 = v189;
      }

      else
      {
        v182 = v46;
        v51 = *v186;
        v52 = *(v42 + 72);
        a5 = (*v186 + v52 * v50);
        v53 = *(v42 + 16);
        v54 = v49;
        v55 = v168;
        v56 = v200;
        (v53)(v168, a5, v200, v44);
        v57 = &v51[v52 * v54];
        v58 = v169;
        v180 = v53;
        (v53)(v169, v57, v56);
        v59 = v189;
        LODWORD(v181) = sub_1004873E0(v55, v58, v170, v171);
        v60 = v59;
        if (v59)
        {
          v166 = *v198;
          (*v198)(v58, v56);
          v166(v55, v56);
LABEL_119:

          return;
        }

        v172 = v48;
        v61 = *v198;
        (*v198)(v58, v56);
        v178 = v61;
        v61(v55, v56);
        v62 = v175 + 2;
        v63 = &v51[v52 * (v175 + 2)];
        v189 = 0;
        v64 = v167;
        v65 = v185;
        v66 = v52;
        v190 = v52;
        v67 = v182;
        while (1)
        {
          v68 = v62;
          if (v65 + 1 >= v67)
          {
            break;
          }

          v69 = v180;
          (v180)(v187, v63, v56);
          v70 = v69(v64, a5, v56);
          v71 = v197;
          v197(v70);
          v72 = v188;
          dispatch thunk of Column.value.getter();

          v73 = type metadata accessor for Date();
          v74 = sub_10000E7EC(v72);
          if (v75)
          {
            goto LABEL_149;
          }

          v71(v74);
          v76 = v179;
          dispatch thunk of Column.value.getter();

          sub_10000E7EC(v76);
          if (v75)
          {
            goto LABEL_150;
          }

          v77 = v188;
          LOBYTE(v191) = v195(v188, v76) & 1;
          LODWORD(v191) = v191;
          sub_100003B20();
          v79 = *(v78 + 8);
          v79(v76, v73);
          v79(v77, v73);
          v56 = v200;
          v80 = v178;
          v178(v64, v200);
          v80(v187, v56);
          v60 = v189;
          v66 = v190;
          v63 += v190;
          a5 += v190;
          ++v65;
          v62 = v68 + 1;
          v67 = v182;
          if ((v181 & 1) != v191)
          {
            goto LABEL_13;
          }
        }

        v65 = v67;
LABEL_13:
        a4 = v173;
        v185 = v65;
        if (v181)
        {
          v49 = v175;
          if (v65 < v175)
          {
            goto LABEL_144;
          }

          if (v175 >= v65)
          {
            v42 = v184;
            v32 = v196;
            a8 = v197;
            v48 = v172;
            goto LABEL_36;
          }

          if (v67 >= v68)
          {
            v81 = v68;
          }

          else
          {
            v81 = v67;
          }

          v82 = v66 * (v81 - 1);
          v83 = v66 * v81;
          v84 = v175;
          v85 = v175 * v66;
          v86 = v65;
          do
          {
            if (v84 != --v86)
            {
              v87 = *v186;
              if (!*v186)
              {
                goto LABEL_153;
              }

              a5 = &v87[v85];
              v88 = *v194;
              v89 = v200;
              (*v194)(v177, &v87[v85], v200);
              v90 = v85 < v82 || a5 >= &v87[v83];
              if (v90)
              {
                sub_100051E4C();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v85 != v82)
              {
                sub_100051E4C();
                swift_arrayInitWithTakeBackToFront();
              }

              v88(&v87[v82], v177, v89);
              v60 = v189;
              v66 = v190;
            }

            ++v84;
            v82 -= v66;
            v83 -= v66;
            v85 += v66;
          }

          while (v84 < v86);
          v42 = v184;
          a8 = v197;
          a4 = v173;
        }

        else
        {
          v42 = v184;
          a8 = v197;
        }

        v48 = v172;
        v32 = v196;
        v49 = v175;
      }

LABEL_36:
      v91 = v186[1];
      if (v185 < v91)
      {
        if (__OFSUB__(v185, v49))
        {
          goto LABEL_141;
        }

        if (v185 - v49 < a4)
        {
          if (__OFADD__(v49, a4))
          {
            goto LABEL_142;
          }

          if (v49 + a4 >= v91)
          {
            v92 = v186[1];
          }

          else
          {
            v92 = (v49 + a4);
          }

          if (v92 >= v49)
          {
            if (v185 == v92)
            {
              goto LABEL_57;
            }

            v172 = v48;
            v93 = *v186;
            v94 = *(v42 + 72);
            v95 = *(v42 + 16);
            v96 = *v186 + v94 * (v185 - 1);
            v189 = v60;
            v190 = -v94;
            v97 = v49 - v185;
            v191 = v93;
            v176 = v94;
            a5 = &v93[v185 * v94];
            v98 = v200;
            v178 = v92;
LABEL_46:
            v180 = a5;
            v181 = v97;
            v182 = v96;
            while (1)
            {
              v95(v201, a5, v98, v44);
              v99 = (v95)(v32, v96, v98);
              a8(v99);
              v100 = v202;
              dispatch thunk of Column.value.getter();

              v101 = type metadata accessor for Date();
              v102 = sub_10000E7EC(v100);
              if (v75)
              {
                goto LABEL_147;
              }

              a8(v102);
              v103 = v193;
              dispatch thunk of Column.value.getter();

              sub_10000E7EC(v103);
              if (v75)
              {
                break;
              }

              v104 = v202;
              v105 = v195(v202, v103);
              sub_100003B20();
              v107 = *(v106 + 8);
              v107(v103, v101);
              v108 = v104;
              v32 = v196;
              v107(v108, v101);
              v109 = *v198;
              v98 = v200;
              (*v198)(v32, v200);
              v109(v201, v98);
              if ((v105 & 1) == 0)
              {
                a8 = v197;
LABEL_55:
                v96 = v182 + v176;
                v97 = v181 - 1;
                a5 = &v180[v176];
                if (++v185 == v178)
                {
                  v185 = v178;
                  v60 = v189;
                  v48 = v172;
                  v49 = v175;
                  goto LABEL_57;
                }

                goto LABEL_46;
              }

              if (!v191)
              {
                goto LABEL_148;
              }

              v110 = *v194;
              v111 = v192;
              (*v194)(v192, a5, v98);
              swift_arrayInitWithTakeFrontToBack();
              v110(v96, v111, v98);
              v96 += v190;
              a5 += v190;
              v90 = __CFADD__(v97++, 1);
              a8 = v197;
              if (v90)
              {
                goto LABEL_55;
              }
            }

            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          v48 = sub_100308E24();
LABEL_111:
          v156 = (v48 + 16);
          v157 = *(v48 + 2);
          while (v157 >= 2)
          {
            if (!*v186)
            {
              goto LABEL_152;
            }

            v158 = v48;
            v159 = &v48[16 * v157];
            v160 = *v159;
            v161 = &v156[2 * v157];
            v162 = *(v161 + 1);
            v163 = v189;
            v183(*v186 + *(v184 + 72) * *v159, *v186 + *(v184 + 72) * *v161, *v186 + *(v184 + 72) * v162, a5);
            if (v163)
            {
              break;
            }

            if (v162 < v160)
            {
              goto LABEL_136;
            }

            if (v157 - 2 >= *v156)
            {
              goto LABEL_137;
            }

            *v159 = v160;
            *(v159 + 1) = v162;
            v164 = *v156;
            v165 = *v156 - v157;
            if (*v156 < v157)
            {
              goto LABEL_138;
            }

            v189 = 0;
            v157 = v164 - 1;
            sub_1003090FC(v161 + 16, v165, v161);
            *v156 = v157;
            v48 = v158;
          }

          goto LABEL_119;
        }
      }

LABEL_57:
      if (v185 < v49)
      {
        goto LABEL_140;
      }

      v189 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10011E564();
        v48 = v154;
      }

      a5 = *(v48 + 2);
      v112 = (a5 + 1);
      if (a5 >= *(v48 + 3) >> 1)
      {
        sub_10011E564();
        v48 = v155;
      }

      *(v48 + 2) = v112;
      v113 = v48 + 32;
      v114 = &v48[16 * a5 + 32];
      v115 = v185;
      *v114 = v175;
      *(v114 + 1) = v115;
      v191 = *v174;
      if (!v191)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      if (a5)
      {
        while (1)
        {
          v116 = v112 - 1;
          v117 = &v113[16 * v112 - 16];
          v118 = &v48[16 * v112];
          if (v112 >= 4)
          {
            break;
          }

          if (v112 == 3)
          {
            v119 = *(v48 + 4);
            v120 = *(v48 + 5);
            v129 = __OFSUB__(v120, v119);
            v121 = v120 - v119;
            v122 = v129;
LABEL_77:
            if (v122)
            {
              goto LABEL_127;
            }

            v134 = *v118;
            v133 = *(v118 + 1);
            v135 = __OFSUB__(v133, v134);
            v136 = v133 - v134;
            v137 = v135;
            if (v135)
            {
              goto LABEL_130;
            }

            v138 = *(v117 + 1);
            v139 = v138 - *v117;
            if (__OFSUB__(v138, *v117))
            {
              goto LABEL_133;
            }

            if (__OFADD__(v136, v139))
            {
              goto LABEL_135;
            }

            if (v136 + v139 >= v121)
            {
              if (v121 < v139)
              {
                v116 = v112 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          if (v112 < 2)
          {
            goto LABEL_129;
          }

          v141 = *v118;
          v140 = *(v118 + 1);
          v129 = __OFSUB__(v140, v141);
          v136 = v140 - v141;
          v137 = v129;
LABEL_92:
          if (v137)
          {
            goto LABEL_132;
          }

          v143 = *v117;
          v142 = *(v117 + 1);
          v129 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v129)
          {
            goto LABEL_134;
          }

          if (v144 < v136)
          {
            goto LABEL_106;
          }

LABEL_99:
          if (v116 - 1 >= v112)
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
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          if (!*v186)
          {
            goto LABEL_151;
          }

          v148 = v48;
          v149 = &v113[16 * v116 - 16];
          v150 = *v149;
          a5 = &v113[16 * v116];
          v151 = *(a5 + 1);
          v152 = v189;
          v183(*v186 + *(v184 + 72) * *v149, *v186 + *(v184 + 72) * *a5, *v186 + *(v184 + 72) * v151, v191);
          if (v152)
          {
            goto LABEL_119;
          }

          if (v151 < v150)
          {
            goto LABEL_122;
          }

          v153 = *(v148 + 2);
          if (v116 > v153)
          {
            goto LABEL_123;
          }

          *v149 = v150;
          *(v149 + 1) = v151;
          if (v116 >= v153)
          {
            goto LABEL_124;
          }

          v189 = 0;
          v112 = v153 - 1;
          sub_1003090FC(a5 + 16, v153 - 1 - v116, &v113[16 * v116]);
          v48 = v148;
          *(v148 + 2) = v153 - 1;
          v32 = v196;
          if (v153 <= 2)
          {
            goto LABEL_106;
          }
        }

        v123 = &v113[16 * v112];
        v124 = *(v123 - 8);
        v125 = *(v123 - 7);
        v129 = __OFSUB__(v125, v124);
        v126 = v125 - v124;
        if (v129)
        {
          goto LABEL_125;
        }

        v128 = *(v123 - 6);
        v127 = *(v123 - 5);
        v129 = __OFSUB__(v127, v128);
        v121 = v127 - v128;
        v122 = v129;
        if (v129)
        {
          goto LABEL_126;
        }

        v130 = *(v118 + 1);
        v131 = v130 - *v118;
        if (__OFSUB__(v130, *v118))
        {
          goto LABEL_128;
        }

        v129 = __OFADD__(v121, v131);
        v132 = v121 + v131;
        if (v129)
        {
          goto LABEL_131;
        }

        if (v132 >= v126)
        {
          v146 = *v117;
          v145 = *(v117 + 1);
          v129 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v129)
          {
            goto LABEL_139;
          }

          if (v121 < v147)
          {
            v116 = v112 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_77;
      }

LABEL_106:
      v47 = v185;
      v46 = v186[1];
      v42 = v184;
      a4 = v173;
      if (v185 >= v46)
      {
        goto LABEL_109;
      }
    }
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_109:
  a5 = *v174;
  if (*v174)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_111;
    }

    goto LABEL_145;
  }

LABEL_155:
  __break(1u);
}

void sub_10048A75C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v93 = &v84 - v13;
  __chkstk_darwin(v14);
  v99 = &v84 - v15;
  v100 = type metadata accessor for SubscriptionEntity();
  __chkstk_darwin(v100);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v84 - v19;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  __chkstk_darwin(v23);
  v98 = &v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_65;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v90 = v17;
  v94 = a3;
  v31 = a2;
  v32 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v96 = (v24 + 8);
  v97 = (v24 + 16);
  v33 = v29 / v27;
  if (v32 >= v29 / v27)
  {
    v93 = a1;
    sub_1006A07D4(v31, v29 / v27, a4);
    v56 = a4;
    v57 = (a4 + v33 * v27);
    v58 = -v27;
    v59 = v57;
    v60 = v94;
    v61 = v90;
    v87 = a4;
    v99 = -v27;
LABEL_39:
    v62 = v31 + v58;
    v63 = v60;
    v85 = v59;
    v64 = v59;
    v88 = v31 + v58;
    while (1)
    {
      if (v57 <= v56)
      {
        v103 = v31;
        v101 = v64;
        goto LABEL_63;
      }

      if (v31 <= v93)
      {
        break;
      }

      v65 = v63;
      v86 = v64;
      v98 = v57;
      v66 = *v97;
      v94 = &v57[v58];
      v67 = v100;
      v66(v91);
      (v66)(v61, v62, v67);
      SubscriptionEntity.created.getter();
      v68 = v92;
      dispatch thunk of Column.value.getter();

      v69 = type metadata accessor for Date();
      if (sub_100024D10(v68, 1, v69) == 1)
      {
        goto LABEL_69;
      }

      v70 = v100;
      v71 = v31;
      SubscriptionEntity.created.getter();
      v72 = v61;
      v73 = v89;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v73, 1, v69) == 1)
      {
        goto LABEL_70;
      }

      v74 = v65;
      v60 = &v65[v99];
      v75 = v92;
      LODWORD(v95) = static Date.< infix(_:_:)();
      v76 = *(*(v69 - 8) + 8);
      v76(v73, v69);
      v76(v75, v69);
      v77 = *v96;
      (*v96)(v72, v70);
      v77(v91, v70);
      if (v95)
      {
        v81 = v74 < v71 || v60 >= v71;
        v56 = v87;
        v82 = v88;
        v57 = v98;
        if (v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v82;
          v59 = v86;
          v61 = v90;
          v58 = v99;
        }

        else
        {
          v83 = v86;
          v59 = v86;
          v28 = v74 == v71;
          v31 = v88;
          v61 = v90;
          v58 = v99;
          if (!v28)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v82;
            v59 = v83;
          }
        }

        goto LABEL_39;
      }

      v78 = v74 < v98 || v60 >= v98;
      v56 = v87;
      v62 = v88;
      v31 = v71;
      if (v78)
      {
        v79 = v94;
        swift_arrayInitWithTakeFrontToBack();
        v63 = v60;
        v57 = v79;
        v64 = v79;
        v61 = v90;
        v58 = v99;
      }

      else
      {
        v80 = v94;
        v64 = v94;
        v63 = v60;
        v57 = v94;
        v61 = v90;
        v58 = v99;
        if (v98 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v60;
          v57 = v80;
          v64 = v80;
        }
      }
    }

    v103 = v31;
    v101 = v85;
  }

  else
  {
    sub_1006A07D4(a1, v32, a4);
    v92 = (a4 + v32 * v27);
    v101 = v92;
    v34 = v31;
    v95 = v27;
    while (a4 < v92 && v34 < v94)
    {
      v36 = *v97;
      v37 = v34;
      v38 = v34;
      v39 = v100;
      (*v97)(v98, v38, v100);
      (v36)(v22, a4, v39);
      SubscriptionEntity.created.getter();
      v40 = v99;
      dispatch thunk of Column.value.getter();

      v41 = type metadata accessor for Date();
      if (sub_100024D10(v40, 1, v41) == 1)
      {
        goto LABEL_67;
      }

      v42 = a4;
      SubscriptionEntity.created.getter();
      v43 = v93;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v43, 1, v41) == 1)
      {
        goto LABEL_68;
      }

      v44 = v99;
      v45 = static Date.< infix(_:_:)();
      v46 = v43;
      v47 = *(*(v41 - 8) + 8);
      v47(v46, v41);
      v47(v44, v41);
      v48 = *v96;
      v49 = v22;
      v50 = v22;
      v51 = v100;
      (*v96)(v50, v100);
      v48(v98, v51);
      if (v45)
      {
        v34 = v37 + v95;
        v52 = a1 < v37 || a1 >= v34;
        a4 = v42;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v95;
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v95;
        }
      }

      else
      {
        v54 = v42;
        v53 = v95;
        a4 = v54 + v95;
        v55 = a1 < v54 || a1 >= a4;
        v34 = v37;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_63:
  sub_100308F44(&v103, &v102, &v101);
}

void sub_10048AF38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v93 = &v84 - v13;
  __chkstk_darwin(v14);
  v99 = &v84 - v15;
  v100 = type metadata accessor for PeriodicWeatherAlertEntity();
  __chkstk_darwin(v100);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v84 - v19;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  __chkstk_darwin(v23);
  v98 = &v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_65;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v90 = v17;
  v94 = a3;
  v31 = a2;
  v32 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v96 = (v24 + 8);
  v97 = (v24 + 16);
  v33 = v29 / v27;
  if (v32 >= v29 / v27)
  {
    v93 = a1;
    sub_1006A0804(v31, v29 / v27, a4);
    v56 = a4;
    v57 = (a4 + v33 * v27);
    v58 = -v27;
    v59 = v57;
    v60 = v94;
    v61 = v90;
    v87 = a4;
    v99 = -v27;
LABEL_39:
    v62 = v31 + v58;
    v63 = v60;
    v85 = v59;
    v64 = v59;
    v88 = v31 + v58;
    while (1)
    {
      if (v57 <= v56)
      {
        v103 = v31;
        v101 = v64;
        goto LABEL_63;
      }

      if (v31 <= v93)
      {
        break;
      }

      v65 = v63;
      v86 = v64;
      v98 = v57;
      v66 = *v97;
      v94 = &v57[v58];
      v67 = v100;
      v66(v91);
      (v66)(v61, v62, v67);
      PeriodicWeatherAlertEntity.created.getter();
      v68 = v92;
      dispatch thunk of Column.value.getter();

      v69 = type metadata accessor for Date();
      if (sub_100024D10(v68, 1, v69) == 1)
      {
        goto LABEL_69;
      }

      v70 = v100;
      v71 = v31;
      PeriodicWeatherAlertEntity.created.getter();
      v72 = v61;
      v73 = v89;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v73, 1, v69) == 1)
      {
        goto LABEL_70;
      }

      v74 = v65;
      v60 = &v65[v99];
      v75 = v92;
      LODWORD(v95) = static Date.> infix(_:_:)();
      v76 = *(*(v69 - 8) + 8);
      v76(v73, v69);
      v76(v75, v69);
      v77 = *v96;
      (*v96)(v72, v70);
      v77(v91, v70);
      if (v95)
      {
        v81 = v74 < v71 || v60 >= v71;
        v56 = v87;
        v82 = v88;
        v57 = v98;
        if (v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v82;
          v59 = v86;
          v61 = v90;
          v58 = v99;
        }

        else
        {
          v83 = v86;
          v59 = v86;
          v28 = v74 == v71;
          v31 = v88;
          v61 = v90;
          v58 = v99;
          if (!v28)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v82;
            v59 = v83;
          }
        }

        goto LABEL_39;
      }

      v78 = v74 < v98 || v60 >= v98;
      v56 = v87;
      v62 = v88;
      v31 = v71;
      if (v78)
      {
        v79 = v94;
        swift_arrayInitWithTakeFrontToBack();
        v63 = v60;
        v57 = v79;
        v64 = v79;
        v61 = v90;
        v58 = v99;
      }

      else
      {
        v80 = v94;
        v64 = v94;
        v63 = v60;
        v57 = v94;
        v61 = v90;
        v58 = v99;
        if (v98 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v60;
          v57 = v80;
          v64 = v80;
        }
      }
    }

    v103 = v31;
    v101 = v85;
  }

  else
  {
    sub_1006A0804(a1, v32, a4);
    v92 = (a4 + v32 * v27);
    v101 = v92;
    v34 = v31;
    v95 = v27;
    while (a4 < v92 && v34 < v94)
    {
      v36 = *v97;
      v37 = v34;
      v38 = v34;
      v39 = v100;
      (*v97)(v98, v38, v100);
      (v36)(v22, a4, v39);
      PeriodicWeatherAlertEntity.created.getter();
      v40 = v99;
      dispatch thunk of Column.value.getter();

      v41 = type metadata accessor for Date();
      if (sub_100024D10(v40, 1, v41) == 1)
      {
        goto LABEL_67;
      }

      v42 = a4;
      PeriodicWeatherAlertEntity.created.getter();
      v43 = v93;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v43, 1, v41) == 1)
      {
        goto LABEL_68;
      }

      v44 = v99;
      v45 = static Date.> infix(_:_:)();
      v46 = v43;
      v47 = *(*(v41 - 8) + 8);
      v47(v46, v41);
      v47(v44, v41);
      v48 = *v96;
      v49 = v22;
      v50 = v22;
      v51 = v100;
      (*v96)(v50, v100);
      v48(v98, v51);
      if (v45)
      {
        v34 = v37 + v95;
        v52 = a1 < v37 || a1 >= v34;
        a4 = v42;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v95;
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v95;
        }
      }

      else
      {
        v54 = v42;
        v53 = v95;
        a4 = v54 + v95;
        v55 = a1 < v54 || a1 >= a4;
        v34 = v37;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_63:
  sub_100308F5C(&v103, &v102, &v101);
}

void sub_10048B714(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v93 = &v84 - v13;
  __chkstk_darwin(v14);
  v99 = &v84 - v15;
  v100 = type metadata accessor for WeatherAlertEntity();
  __chkstk_darwin(v100);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v84 - v19;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  __chkstk_darwin(v23);
  v98 = &v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_65;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v90 = v17;
  v94 = a3;
  v31 = a2;
  v32 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v96 = (v24 + 8);
  v97 = (v24 + 16);
  v33 = v29 / v27;
  if (v32 >= v29 / v27)
  {
    v93 = a1;
    sub_1006A07EC(v31, v29 / v27, a4);
    v56 = a4;
    v57 = (a4 + v33 * v27);
    v58 = -v27;
    v59 = v57;
    v60 = v94;
    v61 = v90;
    v87 = a4;
    v99 = -v27;
LABEL_39:
    v62 = v31 + v58;
    v63 = v60;
    v85 = v59;
    v64 = v59;
    v88 = v31 + v58;
    while (1)
    {
      if (v57 <= v56)
      {
        v103 = v31;
        v101 = v64;
        goto LABEL_63;
      }

      if (v31 <= v93)
      {
        break;
      }

      v65 = v63;
      v86 = v64;
      v98 = v57;
      v66 = *v97;
      v94 = &v57[v58];
      v67 = v100;
      v66(v91);
      (v66)(v61, v62, v67);
      WeatherAlertEntity.created.getter();
      v68 = v92;
      dispatch thunk of Column.value.getter();

      v69 = type metadata accessor for Date();
      if (sub_100024D10(v68, 1, v69) == 1)
      {
        goto LABEL_69;
      }

      v70 = v100;
      v71 = v31;
      WeatherAlertEntity.created.getter();
      v72 = v61;
      v73 = v89;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v73, 1, v69) == 1)
      {
        goto LABEL_70;
      }

      v74 = v65;
      v60 = &v65[v99];
      v75 = v92;
      LODWORD(v95) = static Date.> infix(_:_:)();
      v76 = *(*(v69 - 8) + 8);
      v76(v73, v69);
      v76(v75, v69);
      v77 = *v96;
      (*v96)(v72, v70);
      v77(v91, v70);
      if (v95)
      {
        v81 = v74 < v71 || v60 >= v71;
        v56 = v87;
        v82 = v88;
        v57 = v98;
        if (v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v82;
          v59 = v86;
          v61 = v90;
          v58 = v99;
        }

        else
        {
          v83 = v86;
          v59 = v86;
          v28 = v74 == v71;
          v31 = v88;
          v61 = v90;
          v58 = v99;
          if (!v28)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v82;
            v59 = v83;
          }
        }

        goto LABEL_39;
      }

      v78 = v74 < v98 || v60 >= v98;
      v56 = v87;
      v62 = v88;
      v31 = v71;
      if (v78)
      {
        v79 = v94;
        swift_arrayInitWithTakeFrontToBack();
        v63 = v60;
        v57 = v79;
        v64 = v79;
        v61 = v90;
        v58 = v99;
      }

      else
      {
        v80 = v94;
        v64 = v94;
        v63 = v60;
        v57 = v94;
        v61 = v90;
        v58 = v99;
        if (v98 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v60;
          v57 = v80;
          v64 = v80;
        }
      }
    }

    v103 = v31;
    v101 = v85;
  }

  else
  {
    sub_1006A07EC(a1, v32, a4);
    v92 = (a4 + v32 * v27);
    v101 = v92;
    v34 = v31;
    v95 = v27;
    while (a4 < v92 && v34 < v94)
    {
      v36 = *v97;
      v37 = v34;
      v38 = v34;
      v39 = v100;
      (*v97)(v98, v38, v100);
      (v36)(v22, a4, v39);
      WeatherAlertEntity.created.getter();
      v40 = v99;
      dispatch thunk of Column.value.getter();

      v41 = type metadata accessor for Date();
      if (sub_100024D10(v40, 1, v41) == 1)
      {
        goto LABEL_67;
      }

      v42 = a4;
      WeatherAlertEntity.created.getter();
      v43 = v93;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v43, 1, v41) == 1)
      {
        goto LABEL_68;
      }

      v44 = v99;
      v45 = static Date.> infix(_:_:)();
      v46 = v43;
      v47 = *(*(v41 - 8) + 8);
      v47(v46, v41);
      v47(v44, v41);
      v48 = *v96;
      v49 = v22;
      v50 = v22;
      v51 = v100;
      (*v96)(v50, v100);
      v48(v98, v51);
      if (v45)
      {
        v34 = v37 + v95;
        v52 = a1 < v37 || a1 >= v34;
        a4 = v42;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v95;
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v95;
        }
      }

      else
      {
        v54 = v42;
        v53 = v95;
        a4 = v54 + v95;
        v55 = a1 < v54 || a1 >= a4;
        v34 = v37;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_63:
  sub_100308F74(&v103, &v102, &v101);
}

void sub_10048BEF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v93 = &v84 - v13;
  __chkstk_darwin(v14);
  v99 = &v84 - v15;
  v100 = type metadata accessor for SevereNotificationEntity();
  __chkstk_darwin(v100);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v84 - v19;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  __chkstk_darwin(v23);
  v98 = &v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_65;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v90 = v17;
  v94 = a3;
  v31 = a2;
  v32 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v96 = (v24 + 8);
  v97 = (v24 + 16);
  v33 = v29 / v27;
  if (v32 >= v29 / v27)
  {
    v93 = a1;
    sub_1006A081C(v31, v29 / v27, a4);
    v56 = a4;
    v57 = (a4 + v33 * v27);
    v58 = -v27;
    v59 = v57;
    v60 = v94;
    v61 = v90;
    v87 = a4;
    v99 = -v27;
LABEL_39:
    v62 = v31 + v58;
    v63 = v60;
    v85 = v59;
    v64 = v59;
    v88 = v31 + v58;
    while (1)
    {
      if (v57 <= v56)
      {
        v103 = v31;
        v101 = v64;
        goto LABEL_63;
      }

      if (v31 <= v93)
      {
        break;
      }

      v65 = v63;
      v86 = v64;
      v98 = v57;
      v66 = *v97;
      v94 = &v57[v58];
      v67 = v100;
      v66(v91);
      (v66)(v61, v62, v67);
      SevereNotificationEntity.date.getter();
      v68 = v92;
      dispatch thunk of Column.value.getter();

      v69 = type metadata accessor for Date();
      if (sub_100024D10(v68, 1, v69) == 1)
      {
        goto LABEL_69;
      }

      v70 = v100;
      v71 = v31;
      SevereNotificationEntity.date.getter();
      v72 = v61;
      v73 = v89;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v73, 1, v69) == 1)
      {
        goto LABEL_70;
      }

      v74 = v65;
      v60 = &v65[v99];
      v75 = v92;
      LODWORD(v95) = static Date.> infix(_:_:)();
      v76 = *(*(v69 - 8) + 8);
      v76(v73, v69);
      v76(v75, v69);
      v77 = *v96;
      (*v96)(v72, v70);
      v77(v91, v70);
      if (v95)
      {
        v81 = v74 < v71 || v60 >= v71;
        v56 = v87;
        v82 = v88;
        v57 = v98;
        if (v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v82;
          v59 = v86;
          v61 = v90;
          v58 = v99;
        }

        else
        {
          v83 = v86;
          v59 = v86;
          v28 = v74 == v71;
          v31 = v88;
          v61 = v90;
          v58 = v99;
          if (!v28)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v82;
            v59 = v83;
          }
        }

        goto LABEL_39;
      }

      v78 = v74 < v98 || v60 >= v98;
      v56 = v87;
      v62 = v88;
      v31 = v71;
      if (v78)
      {
        v79 = v94;
        swift_arrayInitWithTakeFrontToBack();
        v63 = v60;
        v57 = v79;
        v64 = v79;
        v61 = v90;
        v58 = v99;
      }

      else
      {
        v80 = v94;
        v64 = v94;
        v63 = v60;
        v57 = v94;
        v61 = v90;
        v58 = v99;
        if (v98 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v60;
          v57 = v80;
          v64 = v80;
        }
      }
    }

    v103 = v31;
    v101 = v85;
  }

  else
  {
    sub_1006A081C(a1, v32, a4);
    v92 = (a4 + v32 * v27);
    v101 = v92;
    v34 = v31;
    v95 = v27;
    while (a4 < v92 && v34 < v94)
    {
      v36 = *v97;
      v37 = v34;
      v38 = v34;
      v39 = v100;
      (*v97)(v98, v38, v100);
      (v36)(v22, a4, v39);
      SevereNotificationEntity.date.getter();
      v40 = v99;
      dispatch thunk of Column.value.getter();

      v41 = type metadata accessor for Date();
      if (sub_100024D10(v40, 1, v41) == 1)
      {
        goto LABEL_67;
      }

      v42 = a4;
      SevereNotificationEntity.date.getter();
      v43 = v93;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v43, 1, v41) == 1)
      {
        goto LABEL_68;
      }

      v44 = v99;
      v45 = static Date.> infix(_:_:)();
      v46 = v43;
      v47 = *(*(v41 - 8) + 8);
      v47(v46, v41);
      v47(v44, v41);
      v48 = *v96;
      v49 = v22;
      v50 = v22;
      v51 = v100;
      (*v96)(v50, v100);
      v48(v98, v51);
      if (v45)
      {
        v34 = v37 + v95;
        v52 = a1 < v37 || a1 >= v34;
        a4 = v42;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v95;
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v95;
        }
      }

      else
      {
        v54 = v42;
        v53 = v95;
        a4 = v54 + v95;
        v55 = a1 < v54 || a1 >= a4;
        v34 = v37;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_63:
  sub_100308F8C(&v103, &v102, &v101);
}

void sub_10048C6CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v93 = &v84 - v13;
  __chkstk_darwin(v14);
  v99 = &v84 - v15;
  v100 = type metadata accessor for IncomingMessageEntity();
  __chkstk_darwin(v100);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v84 - v19;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  __chkstk_darwin(v23);
  v98 = &v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_65;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v90 = v17;
  v94 = a3;
  v31 = a2;
  v32 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v96 = (v24 + 8);
  v97 = (v24 + 16);
  v33 = v29 / v27;
  if (v32 >= v29 / v27)
  {
    v93 = a1;
    sub_1006A0834(v31, v29 / v27, a4);
    v56 = a4;
    v57 = (a4 + v33 * v27);
    v58 = -v27;
    v59 = v57;
    v60 = v94;
    v61 = v90;
    v87 = a4;
    v99 = -v27;
LABEL_39:
    v62 = v31 + v58;
    v63 = v60;
    v85 = v59;
    v64 = v59;
    v88 = v31 + v58;
    while (1)
    {
      if (v57 <= v56)
      {
        v103 = v31;
        v101 = v64;
        goto LABEL_63;
      }

      if (v31 <= v93)
      {
        break;
      }

      v65 = v63;
      v86 = v64;
      v98 = v57;
      v66 = *v97;
      v94 = &v57[v58];
      v67 = v100;
      v66(v91);
      (v66)(v61, v62, v67);
      IncomingMessageEntity.date.getter();
      v68 = v92;
      dispatch thunk of Column.value.getter();

      v69 = type metadata accessor for Date();
      if (sub_100024D10(v68, 1, v69) == 1)
      {
        goto LABEL_69;
      }

      v70 = v100;
      v71 = v31;
      IncomingMessageEntity.date.getter();
      v72 = v61;
      v73 = v89;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v73, 1, v69) == 1)
      {
        goto LABEL_70;
      }

      v74 = v65;
      v60 = &v65[v99];
      v75 = v92;
      LODWORD(v95) = static Date.> infix(_:_:)();
      v76 = *(*(v69 - 8) + 8);
      v76(v73, v69);
      v76(v75, v69);
      v77 = *v96;
      (*v96)(v72, v70);
      v77(v91, v70);
      if (v95)
      {
        v81 = v74 < v71 || v60 >= v71;
        v56 = v87;
        v82 = v88;
        v57 = v98;
        if (v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v82;
          v59 = v86;
          v61 = v90;
          v58 = v99;
        }

        else
        {
          v83 = v86;
          v59 = v86;
          v28 = v74 == v71;
          v31 = v88;
          v61 = v90;
          v58 = v99;
          if (!v28)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v82;
            v59 = v83;
          }
        }

        goto LABEL_39;
      }

      v78 = v74 < v98 || v60 >= v98;
      v56 = v87;
      v62 = v88;
      v31 = v71;
      if (v78)
      {
        v79 = v94;
        swift_arrayInitWithTakeFrontToBack();
        v63 = v60;
        v57 = v79;
        v64 = v79;
        v61 = v90;
        v58 = v99;
      }

      else
      {
        v80 = v94;
        v64 = v94;
        v63 = v60;
        v57 = v94;
        v61 = v90;
        v58 = v99;
        if (v98 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v60;
          v57 = v80;
          v64 = v80;
        }
      }
    }

    v103 = v31;
    v101 = v85;
  }

  else
  {
    sub_1006A0834(a1, v32, a4);
    v92 = (a4 + v32 * v27);
    v101 = v92;
    v34 = v31;
    v95 = v27;
    while (a4 < v92 && v34 < v94)
    {
      v36 = *v97;
      v37 = v34;
      v38 = v34;
      v39 = v100;
      (*v97)(v98, v38, v100);
      (v36)(v22, a4, v39);
      IncomingMessageEntity.date.getter();
      v40 = v99;
      dispatch thunk of Column.value.getter();

      v41 = type metadata accessor for Date();
      if (sub_100024D10(v40, 1, v41) == 1)
      {
        goto LABEL_67;
      }

      v42 = a4;
      IncomingMessageEntity.date.getter();
      v43 = v93;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v43, 1, v41) == 1)
      {
        goto LABEL_68;
      }

      v44 = v99;
      v45 = static Date.> infix(_:_:)();
      v46 = v43;
      v47 = *(*(v41 - 8) + 8);
      v47(v46, v41);
      v47(v44, v41);
      v48 = *v96;
      v49 = v22;
      v50 = v22;
      v51 = v100;
      (*v96)(v50, v100);
      v48(v98, v51);
      if (v45)
      {
        v34 = v37 + v95;
        v52 = a1 < v37 || a1 >= v34;
        a4 = v42;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v95;
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v95;
        }
      }

      else
      {
        v54 = v42;
        v53 = v95;
        a4 = v54 + v95;
        v55 = a1 < v54 || a1 >= a4;
        v34 = v37;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_63:
  sub_100308FA4(&v103, &v102, &v101);
}

void sub_10048CEA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v93 = &v84 - v13;
  __chkstk_darwin(v14);
  v99 = &v84 - v15;
  v100 = type metadata accessor for DeliveryScheduleEntity();
  __chkstk_darwin(v100);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v84 - v19;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  __chkstk_darwin(v23);
  v98 = &v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_65;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v90 = v17;
  v94 = a3;
  v31 = a2;
  v32 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v96 = (v24 + 8);
  v97 = (v24 + 16);
  v33 = v29 / v27;
  if (v32 >= v29 / v27)
  {
    v93 = a1;
    sub_1006A084C(v31, v29 / v27, a4);
    v56 = a4;
    v57 = (a4 + v33 * v27);
    v58 = -v27;
    v59 = v57;
    v60 = v94;
    v61 = v90;
    v87 = a4;
    v99 = -v27;
LABEL_39:
    v62 = v31 + v58;
    v63 = v60;
    v85 = v59;
    v64 = v59;
    v88 = v31 + v58;
    while (1)
    {
      if (v57 <= v56)
      {
        v103 = v31;
        v101 = v64;
        goto LABEL_63;
      }

      if (v31 <= v93)
      {
        break;
      }

      v65 = v63;
      v86 = v64;
      v98 = v57;
      v66 = *v97;
      v94 = &v57[v58];
      v67 = v100;
      v66(v91);
      (v66)(v61, v62, v67);
      DeliveryScheduleEntity.created.getter();
      v68 = v92;
      dispatch thunk of Column.value.getter();

      v69 = type metadata accessor for Date();
      if (sub_100024D10(v68, 1, v69) == 1)
      {
        goto LABEL_69;
      }

      v70 = v100;
      v71 = v31;
      DeliveryScheduleEntity.created.getter();
      v72 = v61;
      v73 = v89;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v73, 1, v69) == 1)
      {
        goto LABEL_70;
      }

      v74 = v65;
      v60 = &v65[v99];
      v75 = v92;
      LODWORD(v95) = static Date.> infix(_:_:)();
      v76 = *(*(v69 - 8) + 8);
      v76(v73, v69);
      v76(v75, v69);
      v77 = *v96;
      (*v96)(v72, v70);
      v77(v91, v70);
      if (v95)
      {
        v81 = v74 < v71 || v60 >= v71;
        v56 = v87;
        v82 = v88;
        v57 = v98;
        if (v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v82;
          v59 = v86;
          v61 = v90;
          v58 = v99;
        }

        else
        {
          v83 = v86;
          v59 = v86;
          v28 = v74 == v71;
          v31 = v88;
          v61 = v90;
          v58 = v99;
          if (!v28)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v82;
            v59 = v83;
          }
        }

        goto LABEL_39;
      }

      v78 = v74 < v98 || v60 >= v98;
      v56 = v87;
      v62 = v88;
      v31 = v71;
      if (v78)
      {
        v79 = v94;
        swift_arrayInitWithTakeFrontToBack();
        v63 = v60;
        v57 = v79;
        v64 = v79;
        v61 = v90;
        v58 = v99;
      }

      else
      {
        v80 = v94;
        v64 = v94;
        v63 = v60;
        v57 = v94;
        v61 = v90;
        v58 = v99;
        if (v98 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v60;
          v57 = v80;
          v64 = v80;
        }
      }
    }

    v103 = v31;
    v101 = v85;
  }

  else
  {
    sub_1006A084C(a1, v32, a4);
    v92 = (a4 + v32 * v27);
    v101 = v92;
    v34 = v31;
    v95 = v27;
    while (a4 < v92 && v34 < v94)
    {
      v36 = *v97;
      v37 = v34;
      v38 = v34;
      v39 = v100;
      (*v97)(v98, v38, v100);
      (v36)(v22, a4, v39);
      DeliveryScheduleEntity.created.getter();
      v40 = v99;
      dispatch thunk of Column.value.getter();

      v41 = type metadata accessor for Date();
      if (sub_100024D10(v40, 1, v41) == 1)
      {
        goto LABEL_67;
      }

      v42 = a4;
      DeliveryScheduleEntity.created.getter();
      v43 = v93;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v43, 1, v41) == 1)
      {
        goto LABEL_68;
      }

      v44 = v99;
      v45 = static Date.> infix(_:_:)();
      v46 = v43;
      v47 = *(*(v41 - 8) + 8);
      v47(v46, v41);
      v47(v44, v41);
      v48 = *v96;
      v49 = v22;
      v50 = v22;
      v51 = v100;
      (*v96)(v50, v100);
      v48(v98, v51);
      if (v45)
      {
        v34 = v37 + v95;
        v52 = a1 < v37 || a1 >= v34;
        a4 = v42;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v95;
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v95;
        }
      }

      else
      {
        v54 = v42;
        v53 = v95;
        a4 = v54 + v95;
        v55 = a1 < v54 || a1 >= a4;
        v34 = v37;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_63:
  sub_100308FBC(&v103, &v102, &v101);
}

void sub_10048D684(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v93 = &v84 - v13;
  __chkstk_darwin(v14);
  v99 = &v84 - v15;
  ScheduleEntity = type metadata accessor for FetchScheduleEntity();
  __chkstk_darwin(ScheduleEntity);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v84 - v19;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  __chkstk_darwin(v23);
  v98 = &v84 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_65;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v90 = v17;
  v94 = a3;
  v31 = a2;
  v32 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  v96 = (v24 + 8);
  v97 = (v24 + 16);
  v33 = v29 / v27;
  if (v32 >= v29 / v27)
  {
    v93 = a1;
    sub_1006A0864(v31, v29 / v27, a4);
    v56 = a4;
    v57 = (a4 + v33 * v27);
    v58 = -v27;
    v59 = v57;
    v60 = v94;
    v61 = v90;
    v87 = a4;
    v99 = -v27;
LABEL_39:
    v62 = v31 + v58;
    v63 = v60;
    v85 = v59;
    v64 = v59;
    v88 = v31 + v58;
    while (1)
    {
      if (v57 <= v56)
      {
        v103 = v31;
        v101 = v64;
        goto LABEL_63;
      }

      if (v31 <= v93)
      {
        break;
      }

      v65 = v63;
      v86 = v64;
      v98 = v57;
      v66 = *v97;
      v94 = &v57[v58];
      v67 = ScheduleEntity;
      v66(v91);
      (v66)(v61, v62, v67);
      FetchScheduleEntity.created.getter();
      v68 = v92;
      dispatch thunk of Column.value.getter();

      v69 = type metadata accessor for Date();
      if (sub_100024D10(v68, 1, v69) == 1)
      {
        goto LABEL_69;
      }

      v70 = ScheduleEntity;
      v71 = v31;
      FetchScheduleEntity.created.getter();
      v72 = v61;
      v73 = v89;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v73, 1, v69) == 1)
      {
        goto LABEL_70;
      }

      v74 = v65;
      v60 = &v65[v99];
      v75 = v92;
      LODWORD(v95) = static Date.> infix(_:_:)();
      v76 = *(*(v69 - 8) + 8);
      v76(v73, v69);
      v76(v75, v69);
      v77 = *v96;
      (*v96)(v72, v70);
      v77(v91, v70);
      if (v95)
      {
        v81 = v74 < v71 || v60 >= v71;
        v56 = v87;
        v82 = v88;
        v57 = v98;
        if (v81)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v82;
          v59 = v86;
          v61 = v90;
          v58 = v99;
        }

        else
        {
          v83 = v86;
          v59 = v86;
          v28 = v74 == v71;
          v31 = v88;
          v61 = v90;
          v58 = v99;
          if (!v28)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v82;
            v59 = v83;
          }
        }

        goto LABEL_39;
      }

      v78 = v74 < v98 || v60 >= v98;
      v56 = v87;
      v62 = v88;
      v31 = v71;
      if (v78)
      {
        v79 = v94;
        swift_arrayInitWithTakeFrontToBack();
        v63 = v60;
        v57 = v79;
        v64 = v79;
        v61 = v90;
        v58 = v99;
      }

      else
      {
        v80 = v94;
        v64 = v94;
        v63 = v60;
        v57 = v94;
        v61 = v90;
        v58 = v99;
        if (v98 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v63 = v60;
          v57 = v80;
          v64 = v80;
        }
      }
    }

    v103 = v31;
    v101 = v85;
  }

  else
  {
    sub_1006A0864(a1, v32, a4);
    v92 = (a4 + v32 * v27);
    v101 = v92;
    v34 = v31;
    v95 = v27;
    while (a4 < v92 && v34 < v94)
    {
      v36 = *v97;
      v37 = v34;
      v38 = v34;
      v39 = ScheduleEntity;
      (*v97)(v98, v38, ScheduleEntity);
      (v36)(v22, a4, v39);
      FetchScheduleEntity.created.getter();
      v40 = v99;
      dispatch thunk of Column.value.getter();

      v41 = type metadata accessor for Date();
      if (sub_100024D10(v40, 1, v41) == 1)
      {
        goto LABEL_67;
      }

      v42 = a4;
      FetchScheduleEntity.created.getter();
      v43 = v93;
      dispatch thunk of Column.value.getter();

      if (sub_100024D10(v43, 1, v41) == 1)
      {
        goto LABEL_68;
      }

      v44 = v99;
      v45 = static Date.> infix(_:_:)();
      v46 = v43;
      v47 = *(*(v41 - 8) + 8);
      v47(v46, v41);
      v47(v44, v41);
      v48 = *v96;
      v49 = v22;
      v50 = v22;
      v51 = ScheduleEntity;
      (*v96)(v50, ScheduleEntity);
      v48(v98, v51);
      if (v45)
      {
        v34 = v37 + v95;
        v52 = a1 < v37 || a1 >= v34;
        a4 = v42;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v53 = v95;
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v95;
        }
      }

      else
      {
        v54 = v42;
        v53 = v95;
        a4 = v54 + v95;
        v55 = a1 < v54 || a1 >= a4;
        v34 = v37;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
          v22 = v49;
        }

        else
        {
          v22 = v49;
          if (a1 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v102 = a4;
      }

      a1 += v53;
      v103 = a1;
    }
  }

LABEL_63:
  sub_100308FD4(&v103, &v102, &v101);
}

void sub_10048DE70()
{
  v1 = type metadata accessor for IndexPath();
  sub_100003810(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_100487198(v3, v4);
}

uint64_t sub_10048DED0@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v81 = a1;
  v82 = a2;
  v3 = type metadata accessor for NotificationsState();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v79 = (v6 - v5);
  v7 = type metadata accessor for EnvironmentState();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v80 = v9;
  __chkstk_darwin(v10);
  v78 = &v71 - v11;
  v12 = type metadata accessor for NotificationsOptInState();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for LocationsState();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = sub_10022C350(&unk_100CE49F0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  v72 = v24;
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  v29 = __chkstk_darwin(v28);
  v31 = &v71 - v30;
  v32 = *(v2 + 16);
  v33 = *(v2 + 24);
  v32(v85, v29);
  v34 = *(v85[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v71 = *(v85[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v35 = *(v85[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v74 = v34;

  v73 = v35;

  (v32)(v85, v36);
  sub_10048E6E0(v85[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v21, type metadata accessor for LocationsState);

  sub_1001A00C8(v21, v31);
  v37 = sub_10048E740(v21, type metadata accessor for LocationsState);
  v76 = v33;
  v77 = v32;
  (v32)(v85, v37);
  sub_10048E6E0(v85[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, v16, type metadata accessor for NotificationsOptInState);

  v75 = *(v16 + *(v13 + 72));
  sub_10048E740(v16, type metadata accessor for NotificationsOptInState);
  v83 = v31;
  sub_1001A00C8(v31, v27);
  v38 = type metadata accessor for CurrentLocation();
  if (sub_100024D10(v27, 1, v38) == 1)
  {
    sub_10048E678(v27);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_10001ED88();
    sub_10048E740(v27, v39);
  }

  sub_100141E5C();
  v41 = v40;

  v42 = v72;
  sub_1001A00C8(v83, v72);
  if (sub_100024D10(v42, 1, v38) == 1)
  {
    sub_10048E678(v42);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_10001ED88();
    sub_10048E740(v42, v43);
  }

  sub_100141E74();
  v45 = v44;

  v47 = v77;
  v77(v85, v46);
  v48 = v85[0];
  v49 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v50 = v78;
  sub_10048E6E0(v48 + v49, v78, type metadata accessor for EnvironmentState);

  LOBYTE(v48) = *(v50 + 1);
  v51 = sub_10048E740(v50, type metadata accessor for EnvironmentState);
  v47(v84, v51);
  v52 = v79;
  sub_10048E6E0(v84[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v79, type metadata accessor for NotificationsState);

  LOBYTE(v50) = *v52;
  v53 = sub_10048E740(v52, type metadata accessor for NotificationsState);
  v47(v84, v53);
  v54 = v84[0];
  v55 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v56 = v54 + v55;
  v57 = v80;
  sub_10048E6E0(v56, v80, type metadata accessor for EnvironmentState);

  LOBYTE(v54) = *(v57 + 2);
  sub_10048E740(v57, type metadata accessor for EnvironmentState);
  LODWORD(v48) = sub_100141E8C(v75, v41 & 1, v45 & 1, v48, v50, v54);
  v58 = [objc_opt_self() mainBundle];
  v86._object = 0x8000000100ACBA40;
  v59._object = 0x8000000100AC0350;
  v86._countAndFlagsBits = 0xD000000000000028;
  v59._countAndFlagsBits = 0xD000000000000014;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v86);

  v62 = v82;
  *v82 = v61;
  strcpy(&v62[1], "location.fill");
  HIWORD(v62[1]._object) = -4864;
  LOBYTE(v62[2]._countAndFlagsBits) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  v62[2]._object = 0;
  v62[3]._countAndFlagsBits = 0;
  swift_storeEnumTagMultiPayload();
  v63 = type metadata accessor for LocationComponentContainerViewModel();
  v64 = v62 + v63[5];
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v65 + 16))(v64, v81);
  v66 = &v64[*(type metadata accessor for NotificationsOptInComponentViewModel() + 20)];
  v66[2] = BYTE2(v48);
  *v66 = v48;
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v67 = v63[8];
  v68 = type metadata accessor for LocationComponentAction(0);
  sub_10001B350(v62 + v67, 1, 1, v68);
  sub_10013D288();
  v69 = Dictionary.init(dictionaryLiteral:)();
  result = sub_10048E678(v83);
  *(&v62->_countAndFlagsBits + v63[6]) = 258;
  *(&v62->_countAndFlagsBits + v63[7]) = v69;
  return result;
}

uint64_t sub_10048E62C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10048E678(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE49F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10048E6E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10048E740(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10048E7A8(void *a1, void *a2)
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

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10048E89C()
{
  result = type metadata accessor for LollipopDetailViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DetailHeroChartActiveLollipopModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10048E958()
{
  result = type metadata accessor for LollipopMarkModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LollipopDetailViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10048E9EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 120 && a2 == 0xE100000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x597472617473 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1499754085 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10048EB34(char a1)
{
  result = 120;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x597472617473;
      break;
    case 3:
      result = 1499754085;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10048EB98(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = sub_100003B38();
  v5 = type metadata accessor for DetailHeroChartLollipopPosition(v4);
  return (static Date.== infix(_:_:)() & 1) != 0 && *(v3 + *(v5 + 24)) == *(v2 + *(v5 + 24)) && *(v3 + *(v5 + 28)) == *(v2 + *(v5 + 28));
}

uint64_t sub_10048EC28(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CBD338);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_10048F86C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v12[7] = 0;
  sub_10048F96C();
  sub_100016834();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for DetailHeroChartLollipopPosition(0);
    v12[6] = 1;
    type metadata accessor for Date();
    sub_10005B714(&qword_100CA39B8);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[5] = 2;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[4] = 3;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10048EE24(void *a1)
{
  v21 = type metadata accessor for Date();
  sub_1000037C4();
  v19 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_10022C350(&qword_100CBD320);
  sub_1000037C4();
  __chkstk_darwin(v8);
  v20 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = (v11 - v10);
  sub_1000161C0(a1, a1[3]);
  sub_10048F86C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006F14(a1);
  }

  sub_10048F8C0();
  sub_10004984C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v12 = v22;
  sub_10005B714(&qword_100CA3998);
  sub_10004984C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(&v12[v20[5]], v7, v21);
  sub_10004984C();
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v12[v20[6]] = v13;
  sub_10004984C();
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v16 = sub_100022C60();
  v17(v16);
  *&v12[v20[7]] = v15;
  sub_10048F914();
  sub_100006F14(a1);
  return sub_10048F7BC(v12, type metadata accessor for DetailHeroChartLollipopPosition);
}

uint64_t sub_10048F20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10048E9EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10048F234(uint64_t a1)
{
  v2 = sub_10048F86C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10048F270(uint64_t a1)
{
  v2 = sub_10048F86C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10048F310()
{
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v3 = (v2 - v1);
  v4 = type metadata accessor for LollipopDetailViewModel(0);
  __chkstk_darwin(v4 - 8);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for DetailHeroChartLollipopModel(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_10022C350(&qword_100CBD318);
  __chkstk_darwin(v14 - 8);
  v16 = &v30 - v15;
  sub_10048F914();
  sub_10048F914();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100005EB0();
    sub_10048F914();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10048F814();
      v24 = sub_10043057C(v13, v7);
      sub_10048F7BC(v7, type metadata accessor for LollipopDetailViewModel);
      sub_10048F7BC(v13, type metadata accessor for LollipopDetailViewModel);
      sub_10001C2D0();
      return v24 & 1;
    }

    v25 = type metadata accessor for LollipopDetailViewModel;
    v26 = v13;
LABEL_16:
    sub_10048F7BC(v26, v25);
    sub_10048F754(v16);
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  sub_100005EB0();
  sub_10048F914();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001EDA0();
    v26 = v10;
    goto LABEL_16;
  }

  sub_10048F814();
  if (*v10 != *v3 || (static Date.== infix(_:_:)() & 1) == 0 || (v17 = type metadata accessor for LollipopMarkModel(0), sub_1000285A4(*(v17 + 20)), !v19) || (sub_1000285A4(*(v18 + 24)), !v19) || (sub_1000285A4(*(v20 + 28)), !v19))
  {
    sub_10001EDA0();
    sub_10048F7BC(v3, v27);
    goto LABEL_19;
  }

  v21 = sub_10043057C(v10 + *(active + 24), v3 + *(active + 24));
  sub_10001EDA0();
  sub_10048F7BC(v3, v22);
  if ((v21 & 1) == 0)
  {
LABEL_19:
    sub_10001EDA0();
    sub_10048F7BC(v10, v28);
    sub_10001C2D0();
    goto LABEL_20;
  }

  sub_10001EDA0();
  sub_10048F7BC(v10, v23);
  sub_10001C2D0();
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10048F68C(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = sub_100003B38();
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(v4);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for LollipopMarkModel(0);
  sub_1000198E0(*(v6 + 20));
  if (!v8)
  {
    return 0;
  }

  sub_1000198E0(*(v7 + 24));
  if (!v8)
  {
    return 0;
  }

  sub_1000198E0(*(v9 + 28));
  if (!v8)
  {
    return 0;
  }

  v10 = *(active + 24);

  return sub_10043057C(v3 + v10, v2 + v10);
}

uint64_t sub_10048F754(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CBD318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10048F7BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10048F814()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 32))(v0, v1);
  return v0;
}

unint64_t sub_10048F86C()
{
  result = qword_100CBD328;
  if (!qword_100CBD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD328);
  }

  return result;
}

unint64_t sub_10048F8C0()
{
  result = qword_100CBD330;
  if (!qword_100CBD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD330);
  }

  return result;
}

uint64_t sub_10048F914()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_10048F96C()
{
  result = qword_100CBD340;
  if (!qword_100CBD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD340);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailHeroChartLollipopPosition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10048FAA0()
{
  result = qword_100CBD348;
  if (!qword_100CBD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD348);
  }

  return result;
}

unint64_t sub_10048FAF8()
{
  result = qword_100CBD350;
  if (!qword_100CBD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD350);
  }

  return result;
}

unint64_t sub_10048FB50()
{
  result = qword_100CBD358;
  if (!qword_100CBD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD358);
  }

  return result;
}

uint64_t sub_10048FBA4()
{
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 16) = sub_100857F38();
  sub_100046E64();
  *(v0 + 24) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t sub_10048FC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  sub_10001C2F8();
  sub_10048FDA0(a1, a2);
  static os_signpost_type_t.end.getter();
  sub_10001C2F8();
  (*(v6 + 8))(v8, v5);
  v10 = type metadata accessor for MoonScrubberViewModel();
  return sub_10001B350(a2, 0, 1, v10);
}

uint64_t sub_10048FDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v3 = sub_10022C350(&qword_100CBD410);
  __chkstk_darwin(v3 - 8);
  v170 = &v163 - v4;
  v5 = sub_10022C350(&qword_100CBD418);
  __chkstk_darwin(v5 - 8);
  v178 = &v163 - v6;
  v203 = type metadata accessor for ScrubberDay(0);
  v201 = *(v203 - 8);
  v7 = __chkstk_darwin(v203);
  v166 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v165 = &v163 - v10;
  v11 = __chkstk_darwin(v9);
  v172 = &v163 - v12;
  __chkstk_darwin(v11);
  v208 = &v163 - v13;
  v192 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v207 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v15 - 8);
  v190 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v200 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CBD420);
  __chkstk_darwin(v19 - 8);
  v199 = &v163 - v20;
  v21 = sub_10022C350(&qword_100CBD428);
  __chkstk_darwin(v21 - 8);
  v198 = &v163 - v22;
  v189 = type metadata accessor for Date.FormatStyle();
  v206 = *(v189 - 8);
  v23 = __chkstk_darwin(v189);
  v188 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v197 = &v163 - v25;
  v26 = type metadata accessor for ScrubberHour(0);
  v210 = *(v26 - 8);
  v211 = v26;
  v27 = __chkstk_darwin(v26);
  v164 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v171 = &v163 - v30;
  v31 = __chkstk_darwin(v29);
  v222 = &v163 - v32;
  v33 = __chkstk_darwin(v31);
  v221 = &v163 - v34;
  __chkstk_darwin(v33);
  v36 = &v163 - v35;
  v219 = sub_10022C350(&qword_100CBD430) - 8;
  v37 = __chkstk_darwin(v219);
  v217 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v181 = &v163 - v39;
  v40 = type metadata accessor for Date();
  v220 = *(v40 - 8);
  v41 = __chkstk_darwin(v40);
  v169 = &v163 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v168 = &v163 - v44;
  v45 = __chkstk_darwin(v43);
  v163 = &v163 - v46;
  v47 = __chkstk_darwin(v45);
  v167 = &v163 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v163 - v50;
  v52 = __chkstk_darwin(v49);
  v215 = &v163 - v53;
  v54 = __chkstk_darwin(v52);
  v56 = &v163 - v55;
  v57 = __chkstk_darwin(v54);
  v212 = &v163 - v58;
  v59 = __chkstk_darwin(v57);
  v205 = &v163 - v60;
  v61 = __chkstk_darwin(v59);
  v183 = &v163 - v62;
  __chkstk_darwin(v61);
  v64 = &v163 - v63;
  v65 = type metadata accessor for TimeZone();
  v182 = v65;
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v68 = &v163 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for Calendar();
  v175 = *(v176 - 8);
  v69 = __chkstk_darwin(v176);
  v187 = &v163 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v218 = &v163 - v71;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v72 = *(v66 + 8);
  v72(v68, v65);
  v173 = type metadata accessor for MoonScrubberInput();
  v73 = *(v173 + 24);
  Location.timeZone.getter();
  v193 = a1;
  v174 = v73;
  Date.startOfDay(timeZone:)();
  v204 = v68;
  v180 = v66 + 8;
  v179 = v72;
  v72(v68, v182);
  v74 = v219;
  v75 = v181;
  v76 = v181 + *(v219 + 56);
  v202 = v64;
  sub_10031B024(v181, v76, v64, v218);
  v77 = v217;
  sub_100035AD0(v75, v217, &qword_100CBD430);
  v216 = *(v74 + 56);
  v78 = v220;
  v79 = v220 + 32;
  v80 = *(v220 + 32);
  v80(v183, v77, v40);
  v81 = v78 + 8;
  v82 = *(v78 + 8);
  v82(v216 + v77, v40);
  sub_100035AD0(v75, v77, &qword_100CBD430);
  v83 = v77 + *(v219 + 56);
  v213 = v80;
  v214 = v79;
  v80(v205, v83, v40);
  v216 = v82;
  v217 = v81;
  v82(v77, v40);
  v84 = v212;
  v219 = *(v220 + 16);
  v220 += 16;
  (v219)(v212, v183, v40);
  v85 = static Date.< infix(_:_:)();
  v209 = v40;
  if (v85)
  {
    v186 = (v207 + 1);
    v196 = (v206 + 8);
    v185 = "TimelineViewModel";
    v86 = _swiftEmptyArrayStorage;
    v184 = 0x8000000100ACBB30;
    v87 = _swiftEmptyArrayStorage;
    v195 = v51;
    do
    {
      v207 = v86;
      (v219)(v56, v84, v40);
      Date.wc_addDays(_:calendar:)();
      if (static Date.< infix(_:_:)())
      {
        v88 = _swiftEmptyArrayStorage;
        do
        {
          (v219)(v36, v56, v40);
          v36[*(v211 + 20)] = static Date.== infix(_:_:)() & 1;
          sub_1004916A8(v36, v221, type metadata accessor for ScrubberHour);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10069F808();
            v87 = v94;
          }

          v89 = v87[2];
          if (v89 >= v87[3] >> 1)
          {
            sub_10069F808();
            v87 = v95;
          }

          v87[2] = v89 + 1;
          v90 = (*(v210 + 80) + 32) & ~*(v210 + 80);
          v91 = *(v210 + 72);
          sub_100491648(v221, v87 + v90 + v91 * v89, type metadata accessor for ScrubberHour);
          sub_1004916A8(v36, v222, type metadata accessor for ScrubberHour);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10069F808();
            v88 = v96;
          }

          v92 = v88[2];
          if (v92 >= v88[3] >> 1)
          {
            sub_10069F808();
            v88 = v97;
          }

          v88[2] = v92 + 1;
          sub_100491648(v222, v88 + v90 + v92 * v91, type metadata accessor for ScrubberHour);
          Date.wc_addHours(_:calendar:)();
          sub_1004915F0(v36, type metadata accessor for ScrubberHour);
          v40 = v209;
          v216(v56, v209);
          v213(v56, v51, v40);
          v93 = static Date.< infix(_:_:)();
          v84 = v212;
        }

        while ((v93 & 1) != 0);
      }

      else
      {
        v88 = _swiftEmptyArrayStorage;
      }

      LODWORD(v206) = static Date.== infix(_:_:)();
      if (v206)
      {
        v98 = [objc_opt_self() mainBundle];
        v224._object = v184;
        v99._object = (v185 | 0x8000000000000000);
        v224._countAndFlagsBits = 0xD000000000000082;
        v99._countAndFlagsBits = 0xD00000000000001DLL;
        v100._countAndFlagsBits = 0x5941444F54;
        v100._object = 0xE500000000000000;
        v101 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v224);
        countAndFlagsBits = v101._countAndFlagsBits;
        object = v101._object;
      }

      else
      {
        v104 = type metadata accessor for Date.FormatStyle.DateStyle();
        sub_10001B350(v198, 1, 1, v104);
        v105 = type metadata accessor for Date.FormatStyle.TimeStyle();
        sub_10001B350(v199, 1, 1, v105);
        Location.timeZone.getter();
        static Locale.autoupdatingCurrent.getter();
        static Calendar.autoupdatingCurrent.getter();
        static FormatStyleCapitalizationContext.unknown.getter();
        v106 = v188;
        Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
        v107 = v191;
        static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
        Date.FormatStyle.weekday(_:)();
        (*v186)(v107, v192);
        v194 = *v196;
        v108 = v106;
        v109 = v189;
        v194(v108, v189);
        sub_100491708();
        v110 = v197;
        Date.formatted<A>(_:)();
        v194(v110, v109);
        v111 = String.uppercasedWithPreferredLocale()();
        countAndFlagsBits = v111._countAndFlagsBits;
        object = v111._object;
      }

      v112 = v208;
      (v219)(v208, v84, v40);
      v113 = v203;
      *(v112 + *(v203 + 20)) = v88;
      v114 = (v112 + *(v113 + 24));
      *v114 = countAndFlagsBits;
      v114[1] = object;
      *(v112 + *(v113 + 28)) = v206 & 1;
      v115 = v207;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069F8E0();
        v115 = v119;
      }

      v116 = v115[2];
      if (v116 >= v115[3] >> 1)
      {
        sub_10069F8E0();
        v115 = v120;
      }

      v117 = v216;
      v216(v56, v40);
      v117(v84, v40);
      v86 = v115;
      v115[2] = v116 + 1;
      sub_100491648(v208, v115 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v116, type metadata accessor for ScrubberDay);
      v213(v84, v215, v40);
      v118 = static Date.< infix(_:_:)();
      v51 = v195;
    }

    while ((v118 & 1) != 0);
  }

  else
  {
    v87 = _swiftEmptyArrayStorage;
    v86 = _swiftEmptyArrayStorage;
  }

  v121 = v178;
  sub_1002F5510(v86);
  v122 = v203;
  if (sub_100024D10(v121, 1, v203) != 1)
  {
    v123 = v172;
    sub_100491648(v121, v172, type metadata accessor for ScrubberDay);
    v124 = *(v123 + *(v122 + 20));
    v125 = v170;
    sub_1002F553C(v124);
    v126 = v211;
    if (sub_100024D10(v125, 1, v211) == 1)
    {
      sub_1000180EC(v125, &qword_100CBD410);
      v127 = v123;
LABEL_39:
      sub_1004915F0(v127, type metadata accessor for ScrubberDay);
      goto LABEL_40;
    }

    v222 = v124;
    v128 = v163;
    (v219)(v163, v125, v40);
    sub_1004915F0(v125, type metadata accessor for ScrubberHour);
    v213(v167, v128, v40);
    v129 = v126;
    Date.wc_addHours(_:calendar:)();
    v130 = v204;
    Location.timeZone.getter();
    Date.startOfDay(timeZone:)();
    v179(v130, v182);
    v131 = v171;
    Date.addMinutes(_:calendar:)();
    *(v131 + *(v126 + 20)) = static Date.== infix(_:_:)() & 1;
    v132 = v164;
    sub_1004916A8(v131, v164, type metadata accessor for ScrubberHour);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069F808();
      v87 = v159;
    }

    v133 = v87[2];
    if (v133 >= v87[3] >> 1)
    {
      sub_10069F808();
      v87 = v160;
    }

    v87[2] = v133 + 1;
    v134 = *(v210 + 80);
    v135 = (v134 + 32) & ~v134;
    sub_100491648(v132, v87 + v135 + *(v210 + 72) * v133, type metadata accessor for ScrubberHour);
    if (v86[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    sub_1008FBD04();
    v86 = v161;
LABEL_36:
    v136 = v86[2];
    if (v136)
    {
      v137 = v86;
      v138 = v122;
      v139 = v136 - 1;
      v221 = (*(v201 + 80) + 32) & ~*(v201 + 80);
      v122 = *(v201 + 72);
      sub_1004915F0(v137 + v221 + v122 * (v136 - 1), type metadata accessor for ScrubberDay);
      v137[2] = v139;
      v132 = v172;
      sub_10022C350(&qword_100CBD438);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_100A2C3F0;
      sub_1004916A8(v171, v140 + v135, type metadata accessor for ScrubberHour);
      v223 = v222;

      sub_10035DAD8(v140);
      v141 = v223;
      v142 = (v132 + v138[6]);
      v144 = *v142;
      v143 = v142[1];
      v145 = *(v132 + v138[7]);
      v146 = v40;
      v147 = v165;
      (v219)(v165, v132, v146);
      *(v147 + v138[5]) = v141;
      v148 = (v147 + v138[6]);
      *v148 = v144;
      v148[1] = v143;
      *(v147 + v138[7]) = v145;
      sub_1004916A8(v147, v166, type metadata accessor for ScrubberDay);
      v134 = v137[2];
      v149 = v137[3];
      v129 = v134 + 1;

      if (v134 < v149 >> 1)
      {
LABEL_38:
        sub_1004915F0(v165, type metadata accessor for ScrubberDay);
        sub_1004915F0(v171, type metadata accessor for ScrubberHour);
        v40 = v209;
        v150 = v216;
        v216(v169, v209);
        v150(v168, v40);
        v150(v167, v40);
        v86 = v137;
        v137[2] = v129;
        sub_100491648(v166, v137 + v221 + v134 * v122, type metadata accessor for ScrubberDay);
        v127 = v132;
        goto LABEL_39;
      }
    }

    else
    {
      __break(1u);
    }

    sub_10069F8E0();
    v137 = v162;
    goto LABEL_38;
  }

  sub_1000180EC(v121, &qword_100CBD418);
LABEL_40:
  v151 = v177;
  sub_100035AD0(v193 + *(v173 + 20), v177, &qword_100CA6BC0);
  v152 = type metadata accessor for MoonScrubberViewModel();
  v153 = v183;
  v154 = v219;
  (v219)(v151 + v152[5], v183, v40);
  v155 = v205;
  v154(v151 + v152[6], v205, v40);
  v156 = v204;
  Location.timeZone.getter();
  Date.zeroMinutes(timeZone:)();
  v179(v156, v182);
  Location.timeZone.getter();
  v157 = v216;
  v216(v212, v40);
  v157(v155, v40);
  v157(v153, v40);
  sub_1000180EC(v181, &qword_100CBD430);
  v157(v202, v40);
  result = (*(v175 + 8))(v218, v176);
  *(v151 + v152[8]) = v86;
  *(v151 + v152[9]) = v87;
  return result;
}

uint64_t sub_100491594()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004915F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100491648(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1004916A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100491708()
{
  result = qword_100CAD280;
  if (!qword_100CAD280)
  {
    type metadata accessor for Date.FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAD280);
  }

  return result;
}

uint64_t sub_100491760()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    asyncMain(block:)();
  }

  return result;
}

uint64_t sub_1004917D8()
{
  sub_100491834();

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather21DisplayMetricsMonitor_previousDisplayMetrics, &qword_100CA65F8);
  swift_unknownObjectWeakDestroy();
  return v0;
}

void sub_100491834()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v1 name:UIContentSizeCategoryDidChangeNotification object:0];
}

uint64_t sub_1004918CC()
{
  sub_1004917D8();

  return swift_deallocClassInstance();
}

uint64_t sub_100491968(uint64_t a1, void *a2)
{
  v5 = sub_10022C350(&qword_100CA65F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7Weather21DisplayMetricsMonitor_previousDisplayMetrics;
  swift_beginAccess();
  sub_1000A79E8(v2 + v11, v7);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &qword_100CA65F8);
    v12 = 1;
  }

  else
  {
    sub_100491B28(v7, v10);
    if ([a2 isInteractivelyResizing])
    {
      v13 = *(a1 + 8);
      v14 = *(v10 + 1);
      sub_100154090(v10, type metadata accessor for DisplayMetrics);
      v12 = v13 != v14;
    }

    else
    {
      v15 = sub_1000BB930(a1, v10);
      sub_100154090(v10, type metadata accessor for DisplayMetrics);
      v12 = v15 ^ 1;
    }
  }

  return v12 & 1;
}

uint64_t sub_100491B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100491B98()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, static OpenNotificationsConfigurationIntent.title);
  sub_10000703C(v6, static OpenNotificationsConfigurationIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100491DE8()
{
  v0 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100007074(v10, static OpenNotificationsConfigurationIntent.description);
  sub_10000703C(v10, static OpenNotificationsConfigurationIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t sub_100492104()
{
  v0 = type metadata accessor for IntentModes.ForegroundMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntentModes();
  sub_100007074(v4, static OpenNotificationsConfigurationIntent.supportedModes);
  sub_10000703C(v4, static OpenNotificationsConfigurationIntent.supportedModes);
  sub_10022C350(&qword_100CADDB8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  static IntentModes.ForegroundMode.immediate.getter();
  static IntentModes.foreground(_:)();
  (*(v1 + 8))(v3, v0);
  v7[1] = v5;
  sub_10033BE2C();
  sub_10022C350(&qword_100CADDC8);
  sub_100006F64(&qword_100CADDD0, &qword_100CADDC8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OpenNotificationsConfigurationIntent.perform()()
{
  sub_100003B08();
  v0[7] = v1;
  v0[8] = v2;
  v3 = type metadata accessor for WeatherIntentType();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_100492438, 0, 0);
}

uint64_t sub_100492438()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  AppDependency.wrappedValue.getter();
  v4 = v0[5];
  v5 = v0[6];
  sub_1000161C0(v0 + 2, v4);
  (*(v2 + 104))(v1, enum case for WeatherIntentType.openNotificationsConfiguration(_:), v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10033AF20;
  v7 = v0[11];

  return dispatch thunk of WeatherIntentHandlerType.handleIntent(_:)(v7, v4, v5);
}

unint64_t sub_100492534()
{
  result = qword_100CBD518;
  if (!qword_100CBD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD518);
  }

  return result;
}

unint64_t sub_10049258C()
{
  result = qword_100CBD520;
  if (!qword_100CBD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD520);
  }

  return result;
}

unint64_t sub_10049264C()
{
  result = qword_100CBD528;
  if (!qword_100CBD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD528);
  }

  return result;
}

uint64_t sub_1004926F8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1();
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v5, v6);
}

uint64_t sub_100492780()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return OpenNotificationsConfigurationIntent.perform()();
}

uint64_t sub_100492820(uint64_t a1)
{
  v2 = sub_10049264C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10049285C()
{
  type metadata accessor for _AssistantIntent();
  sub_10000548C();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA2D38);
  type metadata accessor for AppDependencyManager();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  static AppDependencyManager.shared.getter();
  *&v10[0] = AppDependency.__allocating_init(key:manager:)();
  sub_10049264C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  (*(v2 + 8))(v5, v0);
  sub_10022C350(&qword_100CADD98);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 32) = v6;
  v8 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1004929F8()
{
  v0 = sub_10022C350(&qword_100CBD530);
  v49 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v34 - v1;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBD538);
  __chkstk_darwin(v7);
  sub_10049264C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x206E65704FLL;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v44 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v45 = *(v4 + 104);
  v46 = v4 + 104;
  v43 = v3;
  v45(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v36 = *(v4 + 8);
  v47 = v4 + 8;
  v36(v6, v3);
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x8000000100ACBC10;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = v49 + 8;
  v10 = *(v49 + 8);
  v10(v2, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v2, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v2, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v48 = v0;
  v49 = v11;
  v10(v2, v0);
  v42 = v10;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v2, v0);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000017;
  v12._object = 0x8000000100ACBCD0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v44;
  v14 = v43;
  v15 = v45;
  (v45)(v6, v44, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v16 = v14;
  v17 = v36;
  v36(v6, v16);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42(v2, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v19._object = 0x8000000100ACBCF0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v13;
  v21 = v43;
  v15(v6, v20, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v17(v6, v21);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v42;
  v42(v2, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0xD00000000000002ALL;
  v24._object = 0x8000000100ACBD10;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  (v45)(v6, v44, v21);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v17(v6, v21);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v2, v48);
  sub_10022C350(&qword_100CBD540);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100A3ECD0;
  v28 = v40;
  *(v27 + 32) = v41;
  *(v27 + 40) = v28;
  v29 = v38;
  *(v27 + 48) = v39;
  *(v27 + 56) = v29;
  v30 = v34;
  v31 = v35;
  *(v27 + 64) = v37;
  *(v27 + 72) = v31;
  *(v27 + 80) = v30;
  *(v27 + 88) = v26;
  v32 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v32;
}

uint64_t sub_1004930E0()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_10000548C();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10049264C();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v6 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v2 + 8))(v5, v0);
  sub_10022C350(&qword_100CADD88);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 32) = v6;
  v8 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v8;
}

id sub_100493238()
{
  v1 = OBJC_IVAR____TtC7Weather37DebugSevereNotificationViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather37DebugSevereNotificationViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather37DebugSevereNotificationViewController____lazy_storage___dateFormatter);
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

uint64_t sub_1004932D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SevereNotificationContent();
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC7Weather37DebugSevereNotificationViewController____lazy_storage___dateFormatter] = 0;
  v7 = OBJC_IVAR____TtC7Weather37DebugSevereNotificationViewController_notification;
  v8 = type metadata accessor for SevereNotificationEntity();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v2[v7], a1, v8);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  SevereNotificationEntity.notification.getter();
  dispatch thunk of Column.value.getter();

  v10 = v18;
  if (v18 >> 60 == 15)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v11 = v17;
    sub_1004942F0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_1003B3404(v11, v10);
    sub_100494348(v6, &v2[OBJC_IVAR____TtC7Weather37DebugSevereNotificationViewController_content]);
    v12 = type metadata accessor for DebugSevereNotificationViewController();
    v16.receiver = v2;
    v16.super_class = v12;
    v13 = objc_msgSendSuper2(&v16, "initWithStyle:", 2);
    (*(v9 + 8))(a1, v8);
    return v13;
  }

  return result;
}

void sub_1004934DC()
{
  *(v0 + OBJC_IVAR____TtC7Weather37DebugSevereNotificationViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10049355C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugSevereNotificationViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v0 tableView];
  if (v2)
  {
    v3 = v2;
    sub_1003B3418();
    swift_getObjCClassFromMetadata();
    v4 = sub_100005ECC();
    [v3 registerClass:v1 forCellReuseIdentifier:v4];

    sub_1003C1790(0xD000000000000013, 0x8000000100ACBF50, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10049366C(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_100A54600[a2];
  }
}

uint64_t sub_1004936A8(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return *&aMetadatanotifi[8 * a2];
  }
}

id sub_100493730()
{
  v1 = sub_100005ECC();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v0 dequeueReusableCellWithIdentifier:v1 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      v4 = IndexPath.row.getter();
      sub_100493C88(v3, v4);
    }

    else if (IndexPath.section.getter() == 2)
    {
      sub_100493EB4(v3);
    }
  }

  else
  {
    v5 = IndexPath.row.getter();
    sub_100493914(v3, v5);
  }

  return v3;
}

uint64_t sub_100493914(void *a1, uint64_t a2)
{
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-1] - v6;
  v8 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10001EA5C();
  static UIListContentConfiguration.valueCell()();
  switch(a2)
  {
    case 0:
      UIListContentConfiguration.text.setter();
      SevereNotificationEntity.id.getter();
      goto LABEL_6;
    case 1:
      UIListContentConfiguration.text.setter();
      SevereNotificationEntity.alertIdentifier.getter();
      dispatch thunk of Column.value.getter();

      goto LABEL_8;
    case 2:
      UIListContentConfiguration.text.setter();
      v12 = sub_100493238();
      SevereNotificationEntity.date.getter();
      dispatch thunk of Column.value.getter();
      v13 = type metadata accessor for Date();
      result = sub_100024D10(v7, 1, v13);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {

        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(*(v13 - 8) + 8))(v7, v13);
        v16 = [v12 stringFromDate:isa];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_8:
        UIListContentConfiguration.secondaryText.setter();
LABEL_9:
        v19[3] = v8;
        v19[4] = &protocol witness table for UIListContentConfiguration;
        sub_100042FB0(v19);
        sub_10001015C();
        v17();
        UITableViewCell.contentConfiguration.setter();
        [a1 setSelectionStyle:0];
        return (*(v10 + 8))(v2, v8);
      }

      return result;
    case 3:
      UIListContentConfiguration.text.setter();
      SevereNotificationEntity.subscription.getter();
LABEL_6:
      dispatch thunk of Column.value.getter();

      goto LABEL_8;
    default:
      goto LABEL_9;
  }
}

uint64_t sub_100493C88(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10001EA5C();
  static UIListContentConfiguration.valueCell()();
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
      UIListContentConfiguration.text.setter();

      goto LABEL_4;
    case 3:
      UIListContentConfiguration.text.setter();
LABEL_4:
      UIListContentConfiguration.secondaryText.setter();
      break;
    default:
      break;
  }

  v11[3] = v5;
  v11[4] = &protocol witness table for UIListContentConfiguration;
  v9 = sub_100042FB0(v11);
  (*(v7 + 16))(v9, v2, v5);
  UITableViewCell.contentConfiguration.setter();
  [a1 setSelectionStyle:0];
  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_100493EB4(void *a1)
{
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10001EA5C();
  static UIListContentConfiguration.cell()();
  SevereNotificationEntity.alert.getter();
  dispatch thunk of Column.value.getter();

  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    sub_1003B3404(v10, v11);
    UIListContentConfiguration.text.setter();
    v12 = v4;
    v13 = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(&v10);
    sub_10001015C();
    v9();
    UITableViewCell.contentConfiguration.setter();
    [a1 setSelectionStyle:0];
    return (*(v6 + 8))(v1, v4);
  }

  return result;
}

id sub_100494104()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSevereNotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugSevereNotificationViewController()
{
  result = qword_100CBD588;
  if (!qword_100CBD588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10049421C()
{
  result = type metadata accessor for SevereNotificationEntity();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SevereNotificationContent();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1004942F0()
{
  result = qword_100CBD598[0];
  if (!qword_100CBD598[0])
  {
    type metadata accessor for SevereNotificationContent();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CBD598);
  }

  return result;
}

uint64_t sub_100494348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereNotificationContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004943AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A40(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_airQuality, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A24(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_severeAlert, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather28ElevatedAqiMinorAlertContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100495BBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100495C68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PresentedLocation();
  sub_1000952C4(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for Location.Identifier();
  v8 = sub_100024D10(v5, 1, v7);
  v9 = *(v7 - 8);
  if (v8 != 1)
  {
    return (*(v9 + 32))(a1, v5, v7);
  }

  (*(v9 + 16))(a1, v1, v7);
  result = sub_100024D10(v5, 1, v7);
  if (result != 1)
  {
    return sub_10044B3F0(v5);
  }

  return result;
}

uint64_t type metadata accessor for PresentedLocation()
{
  result = qword_100CBD678;
  if (!qword_100CBD678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100495E14()
{
  type metadata accessor for Location.Identifier();
  if (v0 <= 0x3F)
  {
    sub_1000414F8();
    if (v1 <= 0x3F)
    {
      sub_100495EB0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100495EB0()
{
  if (!qword_100CBD688)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBD688);
    }
  }
}

BOOL sub_100495F00(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Location();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for PreviewLocation();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  sub_100496220(a1, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100431B10(v15);
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_100CA26B8 != -1)
    {
      sub_10001BE20();
    }

    v17 = type metadata accessor for Logger();
    sub_10000703C(v17, qword_100D90A90);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Check AddLocationActAsLocationOfInterest flag for a location of interest";
    goto LABEL_11;
  }

  sub_1006E6234(v4);
  if (sub_100024D10(v4, 1, v5) != 1)
  {
    (*(v7 + 32))(v11, v4, v5);
    v23 = sub_100496284(v11);
    (*(v7 + 8))(v11, v5);
    return v23;
  }

  sub_10003FDF4(v4, &qword_100CA65D8);
  if (qword_100CA26B8 != -1)
  {
    sub_10001BE20();
  }

  v22 = type metadata accessor for Logger();
  sub_10000703C(v22, qword_100D90A90);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Check AddLocationActAsLocationOfInterest, but locationForPreview has no location";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
  }

LABEL_12:

  return 1;
}

uint64_t sub_100496220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100496284(uint64_t a1)
{
  v3 = type metadata accessor for Location();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  type metadata accessor for LocationOfInterestMatchResult();
  sub_1000037C4();
  v32 = v14;
  v33 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_1000161C0(v1, v1[3]);
  dispatch thunk of WeatherLocationCoalescenceManagerType.matchLocationsOfInterest(for:locationsOfInterest:)();
  LocationOfInterestMatchResult.locationsOfInterest.getter();
  v18 = type metadata accessor for LocationOfInterest();
  v19 = sub_100024D10(v12, 1, v18);
  sub_10003FDF4(v12, &qword_100CA3588);
  if (qword_100CA26B8 != -1)
  {
    sub_10001BE20();
  }

  v20 = type metadata accessor for Logger();
  sub_10000703C(v20, qword_100D90A90);
  (*(v5 + 16))(v9, a1, v3);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v3;
    HIDWORD(v31) = v19;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 67240707;
    *(v24 + 4) = v19 == 1;
    *(v24 + 8) = 2160;
    *(v24 + 10) = 1752392040;
    *(v24 + 18) = 2081;
    sub_1002F33A8();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v5 + 8))(v9, v23);
    v29 = sub_100078694(v26, v28, &v34);

    *(v24 + 20) = v29;
    v19 = HIDWORD(v31);
    _os_log_impl(&_mh_execute_header, v21, v22, "canAddLocationActAsLocationOfInterest is %{BOOL,public}d for location:%{private,mask.hash}s", v24, 0x1Cu);
    sub_100006F14(v25);
  }

  else
  {

    (*(v5 + 8))(v9, v3);
  }

  (*(v32 + 8))(v17, v33);
  return v19 == 1;
}

uint64_t sub_100496624()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v2 = [objc_opt_self() secondarySystemFillColor];
    Color.init(uiColor:)();
    v1 = AnyShapeStyle.init<A>(_:)();
    *v0 = v1;
  }

  return v1;
}

uint64_t sub_1004966B0()
{
  v1 = type metadata accessor for Material();
  __chkstk_darwin(v1);
  if (*(v0 + 8))
  {
    v2 = *(v0 + 8);
  }

  else
  {
    static Material.thick.getter();
    v2 = AnyShapeStyle.init<A>(_:)();
    *(v0 + 8) = v2;
  }

  return v2;
}

uint64_t sub_100496768()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = static Color.white.getter();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1004967B0()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, static OpenSunriseSunsetIntent.title);
  sub_10000703C(v6, static OpenSunriseSunsetIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t (*static OpenSunriseSunsetIntent.title.modify())()
{
  if (qword_100CA2180 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000703C(v0, static OpenSunriseSunsetIntent.title);
  sub_100005E7C();
  return j_j__swift_endAccess_1;
}

uint64_t sub_100496ABC()
{
  v0 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100007074(v10, static OpenSunriseSunsetIntent.description);
  sub_10000703C(v10, static OpenSunriseSunsetIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t sub_100496DA0(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return sub_10000703C(v5, a3);
}

uint64_t sub_100496E34@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_10000703C(v7, a3);
  swift_beginAccess();
  sub_100003B20();
  return (*(v9 + 16))(a4, v8, v7);
}

uint64_t sub_100496F18(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  v8 = sub_10000703C(v7, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static OpenSunriseSunsetIntent.description.modify())()
{
  if (qword_100CA2188 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();
  sub_10000703C(v0, static OpenSunriseSunsetIntent.description);
  sub_100005E7C();
  return j__swift_endAccess_1;
}

uint64_t static OpenSunriseSunsetIntent.parameterSummary.getter()
{
  v0 = sub_10022C350(&qword_100CBD6C0);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10022C350(&qword_100CBD6C8);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100497220();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100ACBF70;
  v3._countAndFlagsBits = 0xD000000000000024;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBD6D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t sub_100497220()
{
  result = qword_100CBD6D0;
  if (!qword_100CBD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD6D0);
  }

  return result;
}

uint64_t sub_100497274()
{
  v0 = sub_10022C350(&qword_100CBCC30);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v8 - v4;
  v6 = sub_1004839E0();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_100483A34();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10015E1DC();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  v8[0] = v6;
  v8[1] = &type metadata for LocationSearchEntityFromStringResolver;
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_1004973DC()
{
  v0 = sub_10022C350(&qword_100CBD728);
  __chkstk_darwin(v0);
  v1 = sub_10022C350(&qword_100CBD6E0);
  sub_100007074(v1, static OpenSunriseSunsetIntent.urlRepresentation);
  sub_10000703C(v1, static OpenSunriseSunsetIntent.urlRepresentation);
  sub_100497220();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100ACC0C0;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBD6D8);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

uint64_t OpenSunriseSunsetIntent.urlRepresentation.unsafeMutableAddressor()
{
  if (qword_100CA2190 != -1)
  {
    sub_10001EDE0();
  }

  v0 = sub_10022C350(&qword_100CBD6E0);

  return sub_10000703C(v0, static OpenSunriseSunsetIntent.urlRepresentation);
}

uint64_t static OpenSunriseSunsetIntent.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2190 != -1)
  {
    sub_10001EDE0();
  }

  v2 = sub_10022C350(&qword_100CBD6E0);
  v3 = sub_10000703C(v2, static OpenSunriseSunsetIntent.urlRepresentation);
  swift_beginAccess();
  sub_100003B20();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static OpenSunriseSunsetIntent.urlRepresentation.setter(uint64_t a1)
{
  if (qword_100CA2190 != -1)
  {
    sub_10001EDE0();
  }

  v2 = sub_10022C350(&qword_100CBD6E0);
  v3 = sub_10000703C(v2, static OpenSunriseSunsetIntent.urlRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenSunriseSunsetIntent.urlRepresentation.modify())()
{
  if (qword_100CA2190 != -1)
  {
    sub_10001EDE0();
  }

  v0 = sub_10022C350(&qword_100CBD6E0);
  sub_10000703C(v0, static OpenSunriseSunsetIntent.urlRepresentation);
  sub_100005E7C();
  return j_j__swift_endAccess_1;
}

uint64_t OpenSunriseSunsetIntent.init()()
{
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v34 = v1;
  v35 = v0;
  __chkstk_darwin(v0);
  sub_1000037D8();
  v33 = v3 - v2;
  v4 = sub_10022C350(&qword_100CA2D68);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v30 - v8;
  v9 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = type metadata accessor for Locale();
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_1000037D8();
  v22 = type metadata accessor for String.LocalizationValue();
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_1000037D8();
  v24 = type metadata accessor for LocalizedStringResource();
  sub_100003B20();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v30 = sub_10022C350(&qword_100CA2D78);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v27 = *(v15 + 104);
  v27(v19, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27(v19, v26, v13);
  sub_100005354();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v12, 0, 1, v24);
  static LocationSearchEntity.makeCurrentLocation()();
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v28 = type metadata accessor for IntentDialog();
  sub_10001B350(v31, 1, 1, v28);
  sub_10001B350(v32, 1, 1, v28);
  (*(v34 + 104))(v33, enum case for InputConnectionBehavior.default(_:), v35);
  sub_10022C350(&qword_100CA2D80);
  sub_100006F64(&qword_100CA2D88, &qword_100CA2D80);
  sub_10015E074();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
}

uint64_t sub_100497C54@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenSunriseSunsetIntent.urlRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10022C350(&qword_100CBD6E0);
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

unint64_t sub_100497CE0()
{
  result = qword_100CBD6E8;
  if (!qword_100CBD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD6E8);
  }

  return result;
}

unint64_t sub_100497D38()
{
  result = qword_100CBD6F0;
  if (!qword_100CBD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD6F0);
  }

  return result;
}

uint64_t sub_100497DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenSunriseSunsetIntent.title.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for LocalizedStringResource();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_100497E28(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100498B10();
  *v4 = v2;
  v4[1] = sub_1004801A8;

  return URLRepresentableIntent.perform()(a2, v5);
}

uint64_t sub_100497ED4@<X0>(uint64_t *a1@<X8>)
{
  result = OpenSunriseSunsetIntent.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100497EFC(uint64_t a1)
{
  v2 = sub_100497220();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100497F38()
{
  type metadata accessor for _AssistantIntent();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  OpenSunriseSunsetIntent.init()();
  sub_100497220();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  static _AssistantIntent.Builder.buildExpression(_:)();
  v2 = sub_100049858();
  v3(v2);
  sub_10022C350(&qword_100CADD98);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v0;
  v5 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10049807C(uint64_t a1)
{
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CBD708);
  __chkstk_darwin(v4);
  v5 = sub_10022C350(&qword_100CBD710);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  sub_100497220();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v6 + 8);
  v50 = v5;
  v9(v8, v5);
  v51 = v6 + 8;
  v49 = v9;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9(v8, v5);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x8000000100ACBFE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v47 = sub_10015E1DC();
  v48 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v49;
  v49(v8, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000011;
  v13._object = 0x8000000100ACC000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v50;
  v12(v8, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x8000000100ACC020;
  v16._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v15;
  v19 = v49;
  v49(v8, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x206E65704FLL;
  v20._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0xD000000000000016;
  v21._object = 0x8000000100ACC040;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v8, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000030;
  v22._object = 0x8000000100ACC060;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v49;
  v25 = v50;
  v49(v8, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD00000000000001ELL;
  v26._object = 0x8000000100ACC0A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v46);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v27 + 8))(v28, v29);
  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24(v8, v25);
  sub_10022C350(&qword_100CBD718);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100A3ECD0;
  v33 = v42;
  *(v32 + 32) = v43;
  *(v32 + 40) = v33;
  v34 = v40;
  *(v32 + 48) = v41;
  *(v32 + 56) = v34;
  v35 = v38;
  *(v32 + 64) = v39;
  *(v32 + 72) = v35;
  *(v32 + 80) = v48;
  *(v32 + 88) = v31;
  v36 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v36;
}

uint64_t sub_100498858()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100497220();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10022C350(&qword_100CBCBD8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1004989C8()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100497220();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v2 = sub_100049858();
  v3(v2);
  sub_10022C350(&qword_100CADD88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v0;
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v5;
}

unint64_t sub_100498B10()
{
  result = qword_100CBD720;
  if (!qword_100CBD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD720);
  }

  return result;
}

uint64_t sub_100498B64(void *a1)
{
  v1 = *a1 >> 58;
  v2 = *a1 & 6 | (8 * ((v1 >> 2) & 7));
  v3 = 64 - (v2 | (v1 >> 5));
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100498B90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 96))
  {
    return (*a1 + 62);
  }

  v3 = (*a1 & 6 | ((*a1 >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*a1 >> 58) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100498BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      v3 = (32 * (a2 ^ 0x3F)) | ((a2 ^ 0x3F) >> 1);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0;
    }
  }

  return result;
}

double sub_100498C6C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x3E)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 63;
  }

  else if (a2)
  {
    v2 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
    *a1 = ((v2 << 58) | (2 * v2)) & 0xF000000000000007;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0;
  }

  return result;
}

uint64_t sub_100498CEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CBD738);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  if ((~*v1 & 0xF000000000000006) != 0)
  {
    v15 = *v1;
    memcpy(v16, v1 + 1, sizeof(v16));
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v13 = v11;
    v14 = v12;
    v7._countAndFlagsBits = 0xD000000000000014;
    v7._object = 0x8000000100ACC1D0;
    String.append(_:)(v7);
    sub_1003C49A0(&v11);
    sub_10022C350(&qword_100CB0D60);
    _print_unlocked<A, B>(_:_:)();
    sub_100006F14(&v11);
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v3;
  a1[4] = sub_100498FB8();
  v8 = sub_100042FB0(a1);
  return (*(v4 + 32))(v8, v6, v3);
}

uint64_t sub_100498F24()
{
  sub_10049901C();

  return ShortDescribable.description.getter();
}

unint64_t sub_100498F64()
{
  result = qword_100CBD730;
  if (!qword_100CBD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD730);
  }

  return result;
}

unint64_t sub_100498FB8()
{
  result = qword_100CBD740;
  if (!qword_100CBD740)
  {
    sub_10022E824(&qword_100CBD738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD740);
  }

  return result;
}

unint64_t sub_10049901C()
{
  result = qword_100CBD748;
  if (!qword_100CBD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBD748);
  }

  return result;
}

uint64_t sub_10049907C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x67 && *(a1 + 8))
    {
      v2 = *a1 + 102;
    }

    else
    {
      v2 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
      if (v2 >= 0x66)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1004990D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x66)
  {
    *result = a2 - 103;
    if (a3 >= 0x67)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x67)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_100499134(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x19)
  {
    v2 = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v2 = (8 * (a2 - 25)) | 0xC000000000000004;
  }

  *result = v2;
  return result;
}

BOOL sub_100499198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a4)
  {
    return a1 >= a3;
  }

  else
  {
    return a2 >= a4;
  }
}

BOOL sub_1004991D4(char a1, char a2)
{
  v2 = 1024.0;
  if (a1)
  {
    v3 = 1024.0;
  }

  else
  {
    v3 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v2 = 0.0;
  }

  return v3 >= v2;
}

BOOL sub_100499230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return a3 < a1;
  }

  else
  {
    return a4 < a2;
  }
}

BOOL sub_100499248(char a1, char a2)
{
  v2 = 1024.0;
  if (a2)
  {
    v3 = 1024.0;
  }

  else
  {
    v3 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v2 = 0.0;
  }

  return v3 < v2;
}

uint64_t sub_1004992F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  v11 = sub_10022C350(&qword_100CBD760);
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 121;
  *(inited + 120) = v11;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  Dictionary.init(dictionaryLiteral:)();
  a5[3] = sub_10022C350(&qword_100CBD768);
  a5[4] = sub_10049BC68();
  sub_100042FB0(a5);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100499438()
{
  sub_10049BCCC();

  return ShortDescribable.description.getter();
}

BOOL sub_100499498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a4)
  {
    return a1 < a3;
  }

  else
  {
    return a2 < a4;
  }
}

BOOL sub_1004994E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return a3 >= a1;
  }

  else
  {
    return a4 >= a2;
  }
}

BOOL sub_100499524(char a1, char a2)
{
  v2 = 1024.0;
  if (a2)
  {
    v3 = 1024.0;
  }

  else
  {
    v3 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v2 = 0.0;
  }

  return v3 >= v2;
}

uint64_t sub_100499598(__int16 a1, unint64_t a2)
{
  v3 = a1;
  result = 0;
  switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
    case 1uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2C08 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_218;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_218:
          if (qword_100CA2C10 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2C18 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2BF8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2C00 != -1)
      {
        goto LABEL_377;
      }

    case 2uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2040 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_224;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_224:
          if (qword_100CA2048 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2050 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2030 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2038 != -1)
      {
        goto LABEL_377;
      }

    case 3uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2B90 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_176;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_176:
          if (qword_100CA2B98 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2BA0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2B80 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2B88 != -1)
      {
        goto LABEL_377;
      }

    case 4uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2388 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_239;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_239:
          if (qword_100CA2390 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2398 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2378 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2380 != -1)
      {
        goto LABEL_377;
      }

    case 5uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2548 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_248;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_248:
          if (qword_100CA2550 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2558 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2538 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2540 != -1)
      {
        goto LABEL_377;
      }

    case 6uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA28F0 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_227;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_227:
          if (qword_100CA28F8 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2900 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA28E0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA28E8 != -1)
      {
        goto LABEL_377;
      }

    case 7uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2858 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_257;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_257:
          if (qword_100CA2860 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2868 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2848 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2850 != -1)
      {
        goto LABEL_377;
      }

    case 8uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA24B8 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_185;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_185:
          if (qword_100CA24C0 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA24C8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA24A8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA24B0 != -1)
      {
        goto LABEL_377;
      }

    case 9uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2928 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_254;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_254:
          if (qword_100CA2930 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2938 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2918 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2920 != -1)
      {
        goto LABEL_377;
      }

    case 0xAuLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA1FB0 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_164;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_164:
          if (qword_100CA1FB8 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA1FC0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA1FA0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA1FA8 != -1)
      {
        goto LABEL_377;
      }

    case 0xBuLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA1FE8 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_182;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_182:
          if (qword_100CA1FF0 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA1FF8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA1FD8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA1FE0 != -1)
      {
        goto LABEL_377;
      }

    case 0xCuLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA23E0 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_245;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_245:
          if (qword_100CA23E8 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA23F0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA23D0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA23D8 != -1)
      {
        goto LABEL_377;
      }

    case 0xDuLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA1EE8 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_137;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_137:
          if (qword_100CA1EF0 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA1EF8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA1ED8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA1EE0 != -1)
      {
        goto LABEL_377;
      }

    case 0xEuLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA22B8 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_221;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_221:
          if (qword_100CA22C0 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA22C8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA22A8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA22B0 != -1)
      {
        goto LABEL_377;
      }

    case 0xFuLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2338 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_134;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_134:
          if (qword_100CA2340 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2348 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2328 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2330 != -1)
      {
        goto LABEL_377;
      }

    case 0x10uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA22E0 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_233;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_233:
          if (qword_100CA22E8 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA22F0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA22D0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA22D8 != -1)
      {
        goto LABEL_377;
      }

    case 0x11uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2090 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_251;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_251:
          if (qword_100CA2098 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA20A0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2080 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2088 != -1)
      {
        goto LABEL_377;
      }

    case 0x12uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2628 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_272;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_272:
          if (qword_100CA2630 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2638 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2618 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2620 != -1)
      {
        goto LABEL_377;
      }

    case 0x13uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2B08 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_236;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_236:
          if (qword_100CA2B10 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2B18 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2AF8 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2B00 != -1)
      {
        goto LABEL_377;
      }

    case 0x14uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA1F60 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_242;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_242:
          if (qword_100CA1F68 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA1F70 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA1F50 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA1F58 != -1)
      {
        goto LABEL_377;
      }

    case 0x15uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2290 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_269;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_269:
          if (qword_100CA2298 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA22A0 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2280 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2288 != -1)
      {
        goto LABEL_377;
      }

    case 0x16uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2670 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_275;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_275:
          if (qword_100CA2678 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2680 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2660 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2668 != -1)
      {
        goto LABEL_377;
      }

    case 0x17uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2520 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_200;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_200:
          if (qword_100CA2528 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2530 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2510 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2518 != -1)
      {
        goto LABEL_377;
      }

    case 0x18uLL:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA2218 != -1)
            {
              goto LABEL_377;
            }
          }

          goto LABEL_194;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_194:
          if (qword_100CA2220 != -1)
          {
            goto LABEL_377;
          }
        }

        if (qword_100CA2228 != -1)
        {
          goto LABEL_377;
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA2208 != -1)
        {
          goto LABEL_377;
        }
      }

      else if (qword_100CA2210 != -1)
      {
        goto LABEL_377;
      }

    case 0x19uLL:
      return result;
    default:
      if (v3)
      {
        if (v3 == 1)
        {
          if ((a1 & 0x100) != 0)
          {
            if (qword_100CA21F0 == -1)
            {
            }

            goto LABEL_377;
          }

          goto LABEL_230;
        }

        if ((a1 & 0x100) == 0)
        {
LABEL_230:
          if (qword_100CA21F8 == -1)
          {
          }

          goto LABEL_377;
        }

        if (qword_100CA2200 == -1)
        {
        }
      }

      else if ((a1 & 0x100) != 0)
      {
        if (qword_100CA21E0 == -1)
        {
        }
      }

      else if (qword_100CA21E8 == -1)
      {
      }

LABEL_377:
      swift_once();
  }
}

uint64_t sub_10049B8DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  switch((a3 >> 59) & 0x1E | (a3 >> 2) & 1)
  {
    case 1uLL:
      sub_100010170();
      return sub_1009BCE74(v29, v30, v31);
    case 2uLL:
      sub_100010170();
      return sub_100406884(v35, v36, v37);
    case 3uLL:
      sub_100010170();
      return sub_100998474(v14, v15, v16);
    case 4uLL:
      sub_100010170();
      return sub_100619AD0(v47, v48, v49);
    case 5uLL:
      sub_100010170();
      return sub_1006EA97C(v56, v57, v58);
    case 6uLL:
      sub_100010170();
      return sub_100850F28(v38, v39, v40);
    case 7uLL:
      sub_100010170();
      return sub_1007FA404(v65, v66, v67);
    case 8uLL:
      sub_100010170();
      return sub_1006829C0(v20, v21, v22);
    case 9uLL:
      sub_100010170();
      return sub_100865C70(v62, v63, v64);
    case 0xAuLL:
      sub_100010170();
      return sub_10038D860(v11, v12, v13);
    case 0xBuLL:
      sub_100010170();
      return sub_1003CC6C8(v17, v18, v19);
    case 0xCuLL:
      sub_100010170();
      return sub_100653E54(v53, v54, v55);
    case 0xDuLL:
      sub_100010170();
      return sub_100316258(v8, v9, v10);
    case 0xEuLL:
      sub_100010170();
      return sub_1005BF198(v32, v33, v34);
    case 0xFuLL:
      sub_100010170();
      return sub_1006019F0(v5, v6, v7);
    case 0x10uLL:
      sub_100010170();
      return sub_1005D5478(v41, v42, v43);
    case 0x11uLL:
      sub_100010170();
      return sub_100424FE4(v59, v60, v61);
    case 0x12uLL:
      sub_100010170();
      return sub_100793DCC(v71, v72, v73);
    case 0x13uLL:
      sub_100010170();
      return sub_100927518(v44, v45, v46);
    case 0x14uLL:
      sub_100010170();
      return sub_10036489C(v50, v51, v52);
    case 0x15uLL:
      sub_100010170();
      return sub_1005AE980(v68, v69, v70);
    case 0x16uLL:
      sub_100010170();
      return sub_1007AA3D8(v74, v75, v76);
    case 0x17uLL:
      sub_100010170();
      return sub_1006A9F04(v26, v27, v28);
    case 0x18uLL:
      sub_100010170();
      return sub_10057C0A4(v23, v24, v25);
    case 0x19uLL:
      return v3;
    default:
      sub_100566EB8();
      return v4;
  }
}

void sub_10049BA50(unint64_t a1)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      sub_1009BD49C(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 2uLL:
      sub_100405FE0(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 3uLL:
      sub_100998AF8(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 4uLL:
      sub_10061A154(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 5uLL:
      sub_1006EB000(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 6uLL:
      sub_1008515AC(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 7uLL:
      sub_1007FAA88(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 8uLL:
      sub_100682FD0(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 9uLL:
      sub_100866280(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0xAuLL:
      sub_10038CFBC(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0xBuLL:
      sub_1003CBDF0(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0xCuLL:
      sub_1006544D8(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0xDuLL:
      sub_100315980(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0xEuLL:
      sub_1005BF81C(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0xFuLL:
      sub_100602074(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x10uLL:
      sub_1005D5A88(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x11uLL:
      sub_100424794(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x12uLL:
      sub_1007943F4(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x13uLL:
      sub_100927B40(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x14uLL:
      sub_1003640D0(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x15uLL:
      sub_1005AF010(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x16uLL:
      sub_1007AAA5C(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x17uLL:
      sub_1006AA588(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x18uLL:
      sub_10057C728(a1 & 0xFFFFFFFFFFFFFFBLL);
      break;
    case 0x19uLL:
      return;
    default:
      sub_1005675C4();
      break;
  }
}