id sub_10059BE28()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_labelBaseline];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 preferredFontForTextStyle:UIFontTextStyleBody];
    [v4 _scaledValueForValue:42.0];
    v6 = v5;

    [v3 setConstant:v6];
  }

  [v0 invalidateIntrinsicContentSize];

  return [v0 setNeedsLayout];
}

void sub_10059BF50()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_label];
  v2 = [v1 leadingAnchor];
  v3 = [v0 leadingAnchor];
  v39 = [v2 constraintEqualToAnchor:v3 constant:16.0];

  v4 = [v1 trailingAnchor];
  v5 = [v0 trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-16.0];

  v7 = [v1 firstBaselineAnchor];
  v8 = [v0 topAnchor];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 _scaledValueForValue:42.0];
  v11 = v10;

  v12 = [v7 constraintEqualToAnchor:v8 constant:v11];
  v13 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_labelBaseline];
  v37 = OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_labelBaseline;
  *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_labelBaseline] = v12;

  v14 = sub_10059BAE8();
  v15 = [v14 leadingAnchor];

  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:16.0];

  v18 = OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader____lazy_storage___divider;
  v19 = [*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader____lazy_storage___divider] trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  v22 = [*&v0[v18] topAnchor];
  v23 = [v0 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  v25 = [*&v0[v18] heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v26 = [v25 constraintEqualToConstant:{*&qword_100925B90, v37}];

  v27 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1006DF610;
  *(v28 + 32) = v39;
  *(v28 + 40) = v6;
  *(v28 + 48) = v17;
  *(v28 + 56) = v21;
  *(v28 + 64) = v24;
  *(v28 + 72) = v26;
  sub_1000059F8(0, &qword_1008DC980);
  v40 = v39;
  v29 = v6;
  v30 = v17;
  v31 = v21;
  v32 = v24;
  v33 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  v35 = *&v0[v38];
  if (v35)
  {
    v36 = v35;
    [v36 setActive:1];
  }
}

uint64_t sub_10059C3CC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_label;
  v5 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAdjustsFontForContentSizeCategory:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v7 = UILabel.withFont(_:)();

  v8 = [objc_opt_self() labelColor];
  v9 = UILabel.withTextColor(_:)();

  v10 = v9;
  LODWORD(v11) = 1148846080;
  [v10 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v12];

  *(v2 + v4) = v10;
  v13 = OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader____lazy_storage___divider;
  *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader____lazy_storage___divider) = 0;
  v14 = OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_labelBaseline;
  *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTableViewSectionHeader_labelBaseline) = 0;

  type metadata accessor for DayViewTableViewSectionHeader();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10059C594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayViewTableViewSectionHeader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10059C648(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100599BF8, v8);
}

uint64_t sub_10059C71C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v19 = type metadata accessor for Date();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100140278(&unk_1008E51B0);
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006D64F0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for Calendar.Component.month(_:), v6);
  v12(v11 + v8, enum case for Calendar.Component.year(_:), v6);
  v12(v11 + 2 * v8, enum case for Calendar.Component.era(_:), v6);
  sub_10001C970(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = [v15[1] endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Calendar.dateComponents(_:from:)();

  (*(v17 + 8))(v2, v19);
  return (*(v3 + 8))(v5, v16);
}

void sub_10059CA10(void *a1, int a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue;
    *v6 = a1;
    *(v6 + 8) = a2;
    v7 = *(Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider);
    v8 = sub_100448AF0(a1, a2);
    v10 = v9;

    *&v5[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v8;

    *&v5[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v10;

    v11 = [v5 tableView];
    if (v11)
    {
      v12 = v11;
      [v11 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10059CB10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue);
    v2 = *(Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8);
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider);
    v5 = sub_100448AF0(v1, v2);
    v7 = v6;

    *&v3[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v5;

    *&v3[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v7;

    sub_10059D990();
  }
}

id sub_10059CBDC()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v8);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v8, v8[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v8);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for HistoryListViewController();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10059CE6C()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() mainQueue];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_1005A2070;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026F8C;
  v8[3] = &unk_100861770;
  v4 = _Block_copy(v8);

  v5 = [v1 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v2 usingBlock:v4];
  _Block_release(v4);

  sub_100140278(&qword_1008E7590);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D46C0;
  *(v6 + 56) = swift_getObjectType();
  *(v6 + 32) = v5;
  *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers) = v6;
}

void sub_10059D014()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong tableView];

    if (v3)
    {
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10059D0EC()
{
  v1 = v0;
  v2 = type metadata accessor for ManualWorkoutLoggingView();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  result = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:*&v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore]];
  if (result)
  {
    v10 = result;
    FIActivityMoveModeWithHealthStore();
    v11 = *&v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager];
    v12 = v10;
    ManualWorkoutLoggingView.init(activityMoveMode:formattingManager:healthStore:wheelchairStatusProvider:navigateOnComplete:)();
    (*(v3 + 16))(v5, v8, v2);
    v13 = objc_allocWithZone(sub_100140278(&qword_1008F3EE0));
    v14 = UIHostingController.init(rootView:)();
    [v1 presentViewController:v14 animated:1 completion:0];

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10059D320(uint64_t a1, __int16 a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_1005A2064;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100861748;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_10059D5DC(uint64_t a1, void *a2, int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider;
    v8 = *(*(Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider) + OBJC_IVAR___CHHistoryDataProvider_lock);
    __chkstk_darwin(Strong);
    __chkstk_darwin(v9);
    os_unfair_lock_lock(v8 + 4);
    sub_100577E2C(&v37);
    os_unfair_lock_unlock(v8 + 4);
    v10 = sub_1003578B0(a2, a3, v37);

    v11 = static os_log_type_t.default.getter();
    v12 = HKLogActivity;
    v13 = os_log_type_enabled(HKLogActivity, v11);
    if (v10)
    {
      if (v13)
      {
        v14 = v12;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39[0] = v16;
        *v15 = 136315138;
        v37 = a2;
        v38 = a3;
        v17 = String.init<A>(describing:)();
        v19 = sub_10000AFDC(v17, v18, v39);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v14, v11, "DEEPLINK: filtering history to %s", v15, 0xCu);
        sub_100005A40(v16);
      }

      v20 = &v6[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
      *v20 = a2;
      *(v20 + 4) = a3;
      v21 = *&v6[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
      if (v21)
      {
        v22 = &v21[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_selectedHistoryType];
        *v22 = a2;
        *(v22 + 4) = a3;
        v23 = v21;
        sub_100258840();

        v24 = *&v6[v7];
        v25 = sub_100448AF0(a2, a3);
        v27 = v26;

        *&v6[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v25;

        *&v6[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v27;

        v28 = [v6 tableView];
        if (v28)
        {
          v29 = v28;
          [v28 reloadData];

LABEL_11:
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    if (v13)
    {
      v30 = v12;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v31 = 136315138;
      v37 = a2;
      v38 = a3;
      v33 = String.init<A>(describing:)();
      v35 = sub_10000AFDC(v33, v34, v39);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v30, v11, "DEEPLINK: unable to filter to %s", v31, 0xCu);
      sub_100005A40(v32);
    }

    v36 = &v6[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
    *v36 = a2;
    *(v36 + 4) = a3;
    goto LABEL_11;
  }
}

uint64_t sub_10059D990()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = ObjectType;
  aBlock[4] = sub_1005A205C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_1008616F8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_10059DC4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = static os_log_type_t.default.getter();
    v3 = HKLogActivity;
    v4 = os_log_type_enabled(HKLogActivity, v2);
    if (v4)
    {
      v5 = v3;
      v6 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = _typeName(_:qualified:)();
      v9 = sub_10000AFDC(v7, v8, &v19);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_10000AFDC(0xD000000000000012, 0x8000000100749A00, &v19);
      _os_log_impl(&_mh_execute_header, v5, v2, "%s::%s", v6, 0x16u);
      swift_arrayDestroy();
    }

    if (*&v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController])
    {
      v10 = *(*&v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] + OBJC_IVAR___CHHistoryDataProvider_lock);
      __chkstk_darwin(v4);
      __chkstk_darwin(v11);
      v13 = v12;
      os_unfair_lock_lock(v10 + 4);
      sub_100577778(&v19);
      os_unfair_lock_unlock(v10 + 4);
      if (*(v19 + 16))
      {
        *&v13[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v19;

        sub_100258840();
      }

      else
      {
      }

      v14 = &v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
      v15 = *&v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter + 8];
      if ((v15 & 0xFF00) != 0x700)
      {
        v16 = *v14;
        *v14 = 0;
        *(v14 + 4) = 1792;
        sub_10059D320(v16, v15);
      }

      v17 = [v1 tableView];
      if (v17)
      {
        v18 = v17;
        [v17 reloadData];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_10059DF18()
{
  v1 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v87 - v2;
  v4 = type metadata accessor for FitnessPlusStackViewModel();
  v5 = *(v4 - 8);
  v92 = v4;
  v93 = v5;
  __chkstk_darwin(v4);
  v91 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  v18 = &v0[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  if (v0[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 9] << 8 != 512 && !IndexPath.row.getter())
  {
    result = [v0 tableView];
    if (!result)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v61 = result;
    v62 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v93 = [v61 dequeueReusableCellWithIdentifier:v62 forIndexPath:isa];

    if (v18[9] << 8 == 1280)
    {
      v64 = IndexPath.section.getter();
      v65 = sub_10059EDD0(v64);
      objc_opt_self();
      v23 = v93;
      v66 = swift_dynamicCastObjCClass();
      if (v66)
      {
        v67 = v66;
        v68 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager];
        v23 = v23;
        [v67 setMindfulnessSessionsStatistics:v65 formattingManager:v68];
      }

      goto LABEL_48;
    }

    v74 = v93;
    IndexPath.section.getter();
    IndexPath.init(row:section:)();
    sub_1005A0D9C(v97);
    (*(v14 + 8))(v16, v13);
    if (v98)
    {
      sub_100140278(&unk_1008E4E60);
      sub_1000059F8(0, &qword_1008ED7C0);
      v23 = v74;
      if (swift_dynamicCast())
      {
        v75 = v95[0];
        sub_10059C71C(v12);
        v76 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics];
        if (*(v76 + 16))
        {

          v77 = sub_1004C59D4(v12);
          if (v78)
          {
            v79 = *(v87 + 8);
            v80 = *(*(v76 + 56) + 8 * v77);
            v79(v12, v88);

            objc_opt_self();
            v81 = swift_dynamicCastObjCClass();
            if (v81)
            {
              v82 = v81;
              v83 = objc_opt_self();
              v23 = v74;
              v84 = v80;
              v85 = [v83 initForWorkout:v75];
              [v82 setWorkoutStatistics:v84 activityTypeKey:v85 formattingManager:*&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager]];

              [v82 setIsForAllWorkouts:v18[9] << 8 == 768];
            }

            else
            {
            }

            goto LABEL_48;
          }
        }

        (*(v87 + 8))(v12, v88);
      }
    }

    else
    {
      sub_10000EA04(v97, &qword_1008EDB58);
      v23 = v74;
    }

LABEL_48:
    v86 = [objc_opt_self() clearColor];
    [v23 setBackgroundColor:v86];

    [v23 setSelectionStyle:0];
    return v23;
  }

  sub_1005A0D9C(v97);
  sub_1005A1FEC(v97, v95);
  if (v96)
  {
    sub_100140278(&unk_1008E4E60);
    sub_1000059F8(0, &qword_1008ED7C0);
    if (swift_dynamicCast())
    {

      result = [v0 tableView];
      if (result)
      {
        v20 = result;
        v21 = String._bridgeToObjectiveC()();
        v22 = IndexPath._bridgeToObjectiveC()().super.isa;
        v23 = [v20 dequeueReusableCellWithIdentifier:v21 forIndexPath:v22];

        sub_1005A1FEC(v97, v95);
        if (v96)
        {
          if (swift_dynamicCast())
          {
            v24 = v94;
            v25 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider];
            v26 = [v94 UUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            UUID.uuidString.getter();
            (*(v89 + 8))(v9, v90);
            v27 = String._bridgeToObjectiveC()();

            v28 = [v25 achievementsForWorkoutIdentifier:v27];

            sub_1000059F8(0, &qword_1008E8750);
            v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for WorkoutsListTableViewCell();
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              v31 = v30;
              v32 = v23;
              v33 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext];
              v34 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager];
              if (v29 >> 62)
              {
                v35 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v93 = v32;

              v36 = *(v31 + OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView);
              v37 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v38 = swift_allocObject();
              v38[3] = 0;
              v38[4] = 0;
              v38[2] = v37;
              v39 = *&v36[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
              *&v36[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = v24;
              v40 = v24;

              *&v36[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = v35;
              v41 = *&v36[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
              *&v36[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = v34;
              v42 = v34;

              v36[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
              v43 = *&v36[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
              v44 = *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
              *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = v24;

              v45 = *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
              *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = v33;
              v46 = v33;
              v23 = v93;

              v47 = *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
              *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = v34;

              *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = v35;
              *(v43 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
              sub_100697158(sub_100175B38, v38);
              sub_100698004();
              [v36 configureWithCurrentWorkout];

              sub_10000EA04(v97, &qword_1008EDB58);

              goto LABEL_35;
            }
          }

          goto LABEL_46;
        }

        goto LABEL_30;
      }

      goto LABEL_54;
    }
  }

  else
  {
    sub_10000EA04(v95, &qword_1008EDB58);
  }

  sub_1005A1FEC(v97, v95);
  if (!v96)
  {
    sub_10000EA04(v95, &qword_1008EDB58);
    goto LABEL_21;
  }

  sub_100140278(&unk_1008E4E60);
  type metadata accessor for MindfulnessSessionViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    result = [v0 tableView];
    if (result)
    {
      v55 = result;
      v56 = String._bridgeToObjectiveC()();
      v57 = IndexPath._bridgeToObjectiveC()().super.isa;
      v23 = [v55 dequeueReusableCellWithIdentifier:v56 forIndexPath:v57];

      sub_1005A1FEC(v97, v95);
      if (v96)
      {
        sub_100140278(&unk_1008E4E60);
        v58 = v92;
        v59 = swift_dynamicCast();
        v60 = v93;
        (*(v93 + 7))(v3, v59 ^ 1u, 1, v58);
        if (v60[6](v3, 1, v58) != 1)
        {
          v71 = v91;
          sub_100306E28(v3, v91);
          type metadata accessor for StackListTableViewCell();
          if (swift_dynamicCastClass())
          {
            v72 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext];
            v73 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v23 = v23;

            sub_10033834C(v71, v72, sub_100282E28, v73);

            sub_1001AB550(v71);
            sub_10000EA04(v97, &qword_1008EDB58);
LABEL_35:

            goto LABEL_48;
          }

          sub_1001AB550(v71);
          goto LABEL_46;
        }

        sub_10000EA04(v97, &qword_1008EDB58);
      }

      else
      {
        sub_10000EA04(v97, &qword_1008EDB58);
        sub_10000EA04(v95, &qword_1008EDB58);
        (*(v93 + 7))(v3, 1, 1, v92);
      }

      v70 = &qword_1008E0BC0;
      v69 = v3;
LABEL_47:
      sub_10000EA04(v69, v70);
      goto LABEL_48;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = [v0 tableView];
  if (result)
  {
    v48 = result;
    v49 = String._bridgeToObjectiveC()();
    v50 = IndexPath._bridgeToObjectiveC()().super.isa;
    v23 = [v48 dequeueReusableCellWithIdentifier:v49 forIndexPath:v50];

    sub_1005A1FEC(v97, v95);
    if (!v96)
    {
LABEL_30:
      sub_10000EA04(v97, &qword_1008EDB58);
      v69 = v95;
      v70 = &qword_1008EDB58;
      goto LABEL_47;
    }

    if (swift_dynamicCast())
    {
      v51 = v94;
      type metadata accessor for MindfulnessSessionListTableViewCell();
      if (swift_dynamicCastClass())
      {
        v52 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext];
        v53 = *&v17[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager];
        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = v23;

        sub_1004D643C(v51, v52, v53, sub_100192CCC, v54);

        sub_10000EA04(v97, &qword_1008EDB58);

        goto LABEL_48;
      }
    }

LABEL_46:
    v70 = &qword_1008EDB58;
    v69 = v97;
    goto LABEL_47;
  }

LABEL_56:
  __break(1u);
  return result;
}

char *sub_10059EDD0(char *result)
{
  v30 = _swiftEmptyArrayStorage;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems);
  if (*(v2 + 16) <= result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v3 = *(v2 + 8 * result + 32);
  v4 = *(v3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = v3 + 32;

    v7 = _swiftEmptyArrayStorage;
    do
    {
      sub_100007C5C(v6, v29);
      sub_100007C5C(v29, v28);
      sub_100140278(&unk_1008E4E60);
      type metadata accessor for MindfulnessSessionViewModel();
      if (swift_dynamicCast() && (v27, sub_100007C5C(v29, v28), (swift_dynamicCast() & 1) != 0))
      {
        v8 = v27;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_100005A40(v29);
        v7 = v30;
      }

      else
      {
        sub_100005A40(v29);
      }

      v6 += 40;
      --v4;
    }

    while (v4);

    if (!(v7 >> 62))
    {
LABEL_13:
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_14;
      }

LABEL_25:
      v17 = _swiftEmptyArrayStorage[2];
      if (!v17)
      {
        v19 = 0.0;
        goto LABEL_33;
      }

LABEL_26:
      if (v17 > 3)
      {
        v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
        v20 = (v5 + 6);
        v19 = 0.0;
        v21 = v17 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
          v20 += 4;
          v21 -= 4;
        }

        while (v21);
        if (v17 == v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v18 = 0;
        v19 = 0.0;
      }

      v22 = v17 - v18;
      v23 = 8 * v18 + 32;
      do
      {
        v19 = v19 + *(v5 + v23);
        v23 += 8;
        --v22;
      }

      while (v22);
LABEL_33:

      v24 = type metadata accessor for MindfulnessSessionsStatistics();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR___CHMindfulnessSessionsStatistics_sessionCount] = v9;
      *&v25[OBJC_IVAR___CHMindfulnessSessionsStatistics_totalDuration] = v19;
      v26.receiver = v25;
      v26.super_class = v24;
      return objc_msgSendSuper2(&v26, "init");
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_13;
    }
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_14:
  v29[0] = _swiftEmptyArrayStorage;
  result = sub_100185AF4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v5 = v29[0];
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      MindfulnessSessionViewModel.duration.getter();
      v14 = v13;

      v29[0] = v5;
      v16 = v5[2];
      v15 = v5[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_100185AF4((v15 > 1), v16 + 1, 1);
        v5 = v29[0];
      }

      ++v10;
      v5[2] = v17;
      v5[v16 + 4] = v14;
    }

    while (v9 != v10);
    goto LABEL_26;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_10059F1D0(void *a1, unint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems;
  v10 = *(v2 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems);
  if (*(v10 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*(*(v10 + 8 * a2 + 32) + 16))
  {
    return;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v11];

  v13 = *(v2 + v9);
  if (*(v13 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = *(v13 + 8 * a2 + 32);
  if (*(v14 + 16))
  {
    sub_100007C5C(v14 + 32, v22);
    if (v12)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v17 = v23;
        v18 = v24;
        sub_1000066AC(v22, v23);
        v19 = *(v18 + 32);
        v21 = v12;
        v19(v17, v18);
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v6 + 8))(v8, v5);
        [v16 setDate:isa];
      }
    }

    sub_100005A40(v22);
  }
}

Class sub_10059F6FC(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    sub_1000059F8(0, &qword_1008E0C88);
    v5 = objc_opt_self();
    v6 = a2;
    v7 = [v5 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() smm_systemImageNamed:v10];

    *(swift_allocObject() + 16) = v4;
    v12 = v6;
    v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000059F8(0, &qword_1008EB650);
    sub_100140278(&unk_1008E4E20);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D4E70;
    *(v14 + 32) = v13;
    preferredElementSize = v14;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v21.value.super.isa = 0;
    v21.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;

    return isa;
  }

  else
  {
    sub_1000059F8(0, &qword_1008EB650);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v22.value.super.isa = 0;
    v22.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v22, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v20).super.super.isa;
  }
}

void sub_10059FAA8(void *a1)
{
  v1 = a1[3];
  v2 = sub_1000066AC(a1, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10059FF70(v2, v1);
  }
}

uint64_t sub_10059FBBC(void *a1)
{
  sub_1005A0D9C(&v6);
  if (!v7)
  {
    return sub_10000EA04(&v6, &qword_1008EDB58);
  }

  sub_1001AB740(&v6, v8);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  v3 = v9;
  v4 = sub_1000066AC(v8, v9);
  sub_10059FF70(v4, v3);
  return sub_100005A40(v8);
}

uint64_t sub_10059FD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1005A0F20(a6);
  }

  return a3(1);
}

void sub_10059FF70(uint64_t a1, uint64_t a2)
{
  v5 = [v2 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1005A0018(a1, a2);
    [v6 pushViewController:v7 animated:1];
  }
}

char *sub_1005A0018(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v4 - 8);
  v139 = &v128 - v5;
  v142 = type metadata accessor for FitnessPlusStackViewModel();
  v138 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = &v128 - v8;
  __chkstk_darwin(v9);
  v11 = &v128 - v10;
  v12 = *(a2 - 8);
  __chkstk_darwin(v13);
  v137 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v128 - v16;
  __chkstk_darwin(v18);
  v20 = &v128 - v19;
  __chkstk_darwin(v21);
  v23 = &v128 - v22;
  v25 = __chkstk_darwin(v24);
  v26 = *(v12 + 16);
  v26(&v128 - v27, a1, a2, v25);
  type metadata accessor for MindfulnessSessionViewModel();
  if (swift_dynamicCast())
  {

    (v26)(v23, a1, a2);
    if (swift_dynamicCast())
    {
      v28 = aBlock[0];
      v29 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext];
      v30 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager];
      v31 = objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController());
      sub_100349480(v28, v29, v30);
      return v32;
    }

    return [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
  }

  (v26)(v20, a1, a2);
  v33 = v142;
  if (swift_dynamicCast())
  {
    sub_1001AB550(v11);
    (v26)(v17, a1, a2);
    v34 = v139;
    v35 = swift_dynamicCast();
    v36 = v138[7];
    if (!v35)
    {
      v36(v34, 1, 1, v33);
      sub_10000EA04(v34, &qword_1008E0BC0);
      return [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
    }

    v36(v34, 0, 1, v33);
    v37 = v136;
    sub_100306E28(v34, v136);
    v38 = v140;
    sub_1001AB4EC(v37, v140);
    v139 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider];
    v128 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager];
    v39 = v128;
    v40 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext];
    v129 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore];
    v41 = v129;
    v43 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory];
    v130 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model];
    v42 = v130;
    v131 = v43;
    v45 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider];
    v132 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager];
    v44 = v132;
    v133 = v45;
    v46 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator];
    v47 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider];
    v134 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider];
    v135 = v47;
    v48 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager];
    v137 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager];
    v138 = v48;
    v141 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager];
    v49 = type metadata accessor for StackDetailViewController();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = 0;
    sub_1001AB4EC(v38, &v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel]);
    v51 = v40;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext] = v40;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fiuiFormattingManager] = v39;
    v52 = v139;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_historyDataProvider] = v139;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_healthStore] = v41;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_model] = v42;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_badgeImageFactory] = v43;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_friendListManager] = v44;
    v53 = v133;
    v54 = v134;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementLocalizationProvider] = v133;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_pauseRingsCoordinator] = v46;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementResourceProvider] = v54;
    v55 = v135;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_awardsDataProvider] = v135;
    v57 = v137;
    v56 = v138;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackFormattingManager] = v137;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_workoutFormattingManager] = v56;
    v58 = v141;
    *&v50[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_mindfulnessSessionFormattingManager] = v141;
    v144.receiver = v50;
    v144.super_class = v49;
    v59 = v51;
    v60 = v128;
    v61 = v52;
    v62 = v129;
    v63 = v130;
    v64 = v131;
    v65 = v132;
    v66 = v53;
    v67 = v46;
    v68 = v54;
    v69 = v55;
    v70 = v57;
    v71 = v56;
    v72 = v58;
    v73 = objc_msgSendSuper2(&v144, "initWithNibName:bundle:", 0, 0);
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 detailViewDateFormatter];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v78 = [v76 stringFromDate:isa];

    if (!v78)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = String._bridgeToObjectiveC()();
    }

    [v75 setTitle:v78];
    v79 = [v75 navigationItem];
    [v79 setLargeTitleDisplayMode:2];

    v80 = [v75 tableView];
    if (v80)
    {
      v81 = v80;
      [v80 setSeparatorStyle:0];

      v82 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v83 = v75;
      v84 = [v83 tableView];
      if (v84)
      {
        v85 = v84;
        v86 = objc_allocWithZone(UITableViewDiffableDataSource);
        aBlock[4] = sub_100282A98;
        aBlock[5] = v82;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100410D80;
        aBlock[3] = &unk_1008615E0;
        v87 = _Block_copy(aBlock);

        v88 = [v86 initWithTableView:v85 cellProvider:v87];

        _Block_release(v87);

        v89 = *&v83[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource];
        *&v83[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = v88;

        v90 = [v83 tableView];
        if (v90)
        {
          v91 = v90;
          type metadata accessor for StackDetailHeaderCell();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v93 = String._bridgeToObjectiveC()();
          [v91 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v93];

          v94 = [v83 tableView];
          if (v94)
          {
            v95 = v94;
            type metadata accessor for StackDetailSideBySideItemsCell();
            v96 = swift_getObjCClassFromMetadata();
            v97 = String._bridgeToObjectiveC()();
            [v95 registerClass:v96 forCellReuseIdentifier:v97];

            v98 = [v83 tableView];
            if (v98)
            {
              v99 = v98;
              type metadata accessor for WorkoutsListTableViewCell();
              v100 = swift_getObjCClassFromMetadata();
              v101 = String._bridgeToObjectiveC()();
              [v99 registerClass:v100 forCellReuseIdentifier:v101];

              v102 = [v83 tableView];
              if (v102)
              {
                type metadata accessor for MindfulnessSessionListTableViewCell();
                v103 = swift_getObjCClassFromMetadata();
                v104 = String._bridgeToObjectiveC()();
                [v102 registerClass:v103 forCellReuseIdentifier:v104];

                sub_10029DB90();
                v105 = swift_allocObject();
                swift_unknownObjectWeakInit();

                v106 = swift_allocObject();
                *(v106 + 16) = sub_100282AA0;
                *(v106 + 24) = v105;
                v107 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
                swift_beginAccess();
                v108 = *&v61[v107];
                swift_retain_n();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v61[v107] = v108;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v108 = sub_1001A1E7C(0, v108[2] + 1, 1, v108);
                  *&v61[v107] = v108;
                }

                v111 = v108[2];
                v110 = v108[3];
                if (v111 >= v110 >> 1)
                {
                  v108 = sub_1001A1E7C((v110 > 1), v111 + 1, 1, v108);
                }

                v108[2] = v111 + 1;
                v112 = &v108[2 * v111];
                v112[4] = sub_100077508;
                v112[5] = v106;
                *&v61[v107] = v108;
                swift_endAccess();

                sub_1001AB550(v140);
                sub_1001AB550(v136);

                return v83;
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  (v26)(v137, a1, a2);
  sub_1000059F8(0, &qword_1008ED7C0);
  if (swift_dynamicCast())
  {
    v142 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore];
    v113 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model];
    v139 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext];
    v140 = v113;
    v114 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager];
    v115 = aBlock[0];
    v116 = *(*&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] + OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider);
    v117 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory];
    v118 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager];
    v119 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider];
    v120 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator];
    v121 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider];
    v122 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager];
    v123 = *&v141[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider];
    v124 = objc_allocWithZone(CHWorkoutDetailViewController);
    LOBYTE(v127) = 1;
    v125 = [v124 initWithWorkout:v115 workoutActivity:0 healthStore:v142 model:v140 fitnessAppContext:v139 workoutFormattingManager:v114 workoutDataProvider:v116 badgeImageFactory:v117 friendListManager:v118 achievementLocalizationProvider:v119 pauseRingsCoordinator:v120 achievementResourceProvider:v121 formattingManager:v122 awardsDataProvider:v123 shouldExposeDeepLinkToTrainingLoadFromEffort:v127];
    if (v125)
    {
      v83 = v125;

      return v83;
    }
  }

LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1005A0D9C(uint64_t a1@<X8>)
{
  v3 = IndexPath.row.getter();
  v4 = v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 9] << 8 != 512;
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = IndexPath.section.getter();
  v7 = [v1 tableView];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [v7 numberOfSections];

  if (v6 >= v9 || v5 < 0)
  {
    goto LABEL_13;
  }

  v10 = [v1 tableView];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 numberOfRowsInSection:IndexPath.section.getter()];

  if (v5 >= v12)
  {
LABEL_13:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v13 = IndexPath.section.getter();
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v14 = *&v1[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems];
  if (v13 >= *(v14 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v14 + 8 * v13 + 32);
  if (v5 >= *(v15 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100007C5C(v15 + 40 * v5 + 32, a1);
}

id sub_1005A0F20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-v5];
  sub_1005A0D9C(&v23);
  if (!v24)
  {
    return sub_10000EA04(&v23, &qword_1008EDB58);
  }

  sub_1001AB740(&v23, v25);
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result numberOfRowsInSection:IndexPath.section.getter()];

  v10 = v2[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 9] << 8 != 512;
  v11 = __OFSUB__(v9, v10);
  v12 = &v9[-v10];
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12 == 1;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1 = swift_allocObject();
  *(a1 + 16) = v14;
  *(a1 + 24) = v13;
  sub_100007C5C(v25, &v23);
  sub_100140278(&unk_1008E4E60);
  sub_1000059F8(0, &qword_1008ED7C0);
  if (!swift_dynamicCast())
  {
    sub_100007C5C(v25, &v23);
    v18 = type metadata accessor for FitnessPlusStackViewModel();
    v19 = swift_dynamicCast();
    v20 = *(*(v18 - 8) + 56);
    if (!v19)
    {
      v20(v6, 1, 1, v18);
      sub_10000EA04(v6, &qword_1008E0BC0);
LABEL_15:

      sub_10044A4A4(v25, 0, sub_1005A1FE0, a1);
      goto LABEL_16;
    }

    v20(v6, 0, 1, v18);
    v8 = sub_1003745B4();
    sub_1001AB550(v6);
    if (!(v8 >> 62))
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:

        sub_1005A13B0(v8, v25, sub_1005A1FE0, a1);

LABEL_16:

        return sub_100005A40(v25);
      }

      goto LABEL_14;
    }

LABEL_13:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

LABEL_14:

    goto LABEL_15;
  }

  v15 = v22;
  sub_100140278(&unk_1008E4E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D4E70;
  *(inited + 32) = v15;
  v17 = v15;

  sub_1005A13B0(inited, v25, sub_1005A1FE0, a1);

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_100005A40(v25);
}

void sub_1005A130C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue;
      *v5 = 0;
      *(v5 + 8) = 512;
      v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController);
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6 + OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_selectedHistoryType;
      *v7 = 0;
      *(v7 + 8) = 512;
      sub_10059D320(0, 512);
    }
  }
}

void sub_1005A13B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = [v9 _activityMoveMode];

    v7 = v8 + 1;
    if (v11 == 2)
    {
      v19 = objc_opt_self();
      v20 = [v19 mainBundle];
      v21 = String._bridgeToObjectiveC()();
      v22 = String._bridgeToObjectiveC()();
      v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = [v19 mainBundle];
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = [v19 mainBundle];
      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

      goto LABEL_13;
    }
  }

  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = [v12 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = [v12 mainBundle];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v28 localizedStringForKey:v30 value:0 table:0];
LABEL_13:

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = String._bridgeToObjectiveC()();

  v33 = String._bridgeToObjectiveC()();

  v34 = [objc_opt_self() alertControllerWithTitle:v32 message:v33 preferredStyle:1];

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007C5C(a2, v62);
  v36 = swift_allocObject();
  v36[2] = v35;
  sub_1001AB740(v62, (v36 + 3));
  v36[8] = a3;
  v36[9] = a4;

  sub_10000B210(a3);
  v37 = String._bridgeToObjectiveC()();

  v60 = sub_1005A1F70;
  v61 = v36;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_1001CA96C;
  v59 = &unk_1008614C8;
  v38 = _Block_copy(&aBlock);

  v39 = objc_opt_self();
  v40 = [v39 actionWithTitle:v37 style:0 handler:v38];
  _Block_release(v38);

  [v34 addAction:v40];
  if (v6 == v8)
  {
    v41 = [objc_opt_self() mainBundle];
    v42 = String._bridgeToObjectiveC()();
    v43 = [v41 localizedStringForKey:v42 value:0 table:0];

    if (!v43)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = String._bridgeToObjectiveC()();
    }

    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100007C5C(a2, v62);
    v45 = swift_allocObject();
    v45[2] = v44;
    sub_1001AB740(v62, (v45 + 3));
    v45[8] = a3;
    v45[9] = a4;
    v60 = sub_1005A1FD0;
    v61 = v45;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1001CA96C;
    v59 = &unk_100861518;
    v46 = _Block_copy(&aBlock);
    sub_10000B210(a3);

    v47 = [v39 actionWithTitle:v43 style:0 handler:v46];
    _Block_release(v46);

    [v34 addAction:v47];
  }

  v48 = [objc_opt_self() mainBundle];
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 localizedStringForKey:v49 value:0 table:0];

  if (!v50)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = String._bridgeToObjectiveC()();
  }

  v51 = [v39 actionWithTitle:v50 style:0 handler:0];
  [v34 addAction:v51];

  [v55 presentViewController:v34 animated:1 completion:0];
}

uint64_t sub_1005A1C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider);

    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    sub_10000B210(a4);
    sub_10044A4A4(a3, 1, sub_1003D1EBC, v11);
  }

  return result;
}

void sub_1005A1D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider);

    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    sub_10000B210(a4);
    sub_10044A4A4(a3, 0, sub_1005A2DAC, v11);
  }
}

id sub_1005A1EE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000059F8(0, &qword_1008EAA38);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1005A1F80()
{

  sub_100005A40(v0 + 24);
  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1005A1FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EDB58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1005A2078()
{
  v1 = type metadata accessor for DateComponents();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = IndexPath.section.getter();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems;
  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems);
  if (v5 >= *(v7 + 16))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*(*(v7 + 8 * v5 + 32) + 16))
  {
    return;
  }

  if (IndexPath.row.getter())
  {
    return;
  }

  v8 = *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 9);
  switch(v8)
  {
    case 2:
      return;
    case 3:
      v9 = objc_opt_self();
      v10 = "heightForAllWorkoutSummary";
      goto LABEL_12;
    case 5:
      v9 = objc_opt_self();
      v10 = "heightForMindfulnessSessions";
LABEL_12:

      [v9 v10];
      return;
  }

  v11 = IndexPath.section.getter();
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v12 = *(v0 + v6);
  if (v11 >= *(v12 + 16))
  {
LABEL_27:
    __break(1u);
    return;
  }

  v13 = *(v12 + 8 * v11 + 32);
  if (*(v13 + 16))
  {
    sub_100007C5C(v13 + 32, v23);
    sub_100140278(&unk_1008E4E60);
    sub_1000059F8(0, &qword_1008ED7C0);
    if (swift_dynamicCast())
    {
      v14 = v22;
      sub_10059C71C(v4);
      v15 = *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics);
      if (*(v15 + 16))
      {

        v16 = sub_1004C59D4(v4);
        if (v17)
        {
          v18 = *(v2 + 8);
          v19 = *(*(v15 + 56) + 8 * v16);
          v18(v4, v1);

          v20 = objc_opt_self();
          v21 = [objc_opt_self() initForWorkout:v14];
          [v20 heightForWorkoutActivityTypeKey:v21 statistics:v19];

          return;
        }
      }

      (*(v2 + 8))(v4, v1);
    }
  }
}

id sub_1005A2398()
{
  sub_1005A0D9C(&aBlock);
  if (v14)
  {
    sub_1001AB740(&aBlock, v17);
    v0 = v18;
    v1 = sub_1000066AC(v17, v18);
    v2 = sub_1005A0018(v1, v0);
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v2;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = objc_opt_self();
    v15 = sub_100192CBC;
    v16 = v3;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v13 = sub_10054EC2C;
    v14 = &unk_1008618B0;
    v8 = _Block_copy(&aBlock);

    v15 = sub_1005A2D70;
    v16 = v6;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v13 = sub_1005A1EE0;
    v14 = &unk_1008618D8;
    v9 = _Block_copy(&aBlock);

    v10 = [v7 configurationWithIdentifier:isa previewProvider:v8 actionProvider:v9];

    _Block_release(v9);
    _Block_release(v8);
    sub_100005A40(v17);
  }

  else
  {
    sub_10000EA04(&aBlock, &qword_1008EDB58);
    return 0;
  }

  return v10;
}

uint64_t sub_1005A25CC(void *a1, void *a2)
{
  v4 = sub_100140278(&qword_1008DE740);
  __chkstk_darwin(v4 - 8);
  v6 = (&aBlock - v5);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = [a1 identifier];
  sub_100140278(&qword_1008DE748);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
    sub_1005A0D9C(&aBlock);
    if (v22)
    {
      sub_1001AB740(&aBlock, v26);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100007C5C(v26, v25);
      v15 = swift_allocObject();
      sub_1001AB740(v25, v15 + 16);
      *(v15 + 56) = v14;
      v23 = sub_1005A2D64;
      v24 = v15;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v21 = sub_1000449A8;
      v22 = &unk_100861838;
      v16 = _Block_copy(&aBlock);

      [a2 addCompletion:v16];
      _Block_release(v16);
      sub_100005A40(v26);
      return (*(v8 + 8))(v11, v7);
    }

    (*(v8 + 8))(v11, v7);
    v18 = &qword_1008EDB58;
    p_aBlock = &aBlock;
  }

  else
  {
    v13(v6, 1, 1, v7);
    v18 = &qword_1008DE740;
    p_aBlock = v6;
  }

  return sub_10000EA04(p_aBlock, v18);
}

id sub_1005A28EC(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1005A2CC8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10059C648;
  aBlock[3] = &unk_1008617C0;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_self();

  v10 = [v9 contextualActionWithStyle:1 title:0 handler:v8];
  _Block_release(v8);

  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  [v10 setImage:v12];
  sub_100140278(&unk_1008E4E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D4E70;
  *(v13 + 32) = v10;
  sub_1000059F8(0, &qword_1008DE738);
  v14 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [objc_opt_self() configurationWithActions:isa];

  return v16;
}

void sub_1005A2BF0()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource) = 0;
  v1 = v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue;
  *v1 = 0;
  *(v1 + 8) = 512;
  *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers) = _swiftEmptyArrayStorage;
  v2 = v0 + OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter;
  *v2 = 0;
  *(v2 + 8) = 1792;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005A2CC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10059FD7C(a1, a2, a3, a4, v10, v11);
}

uint64_t type metadata accessor for WorkoutDetailChartView()
{
  result = qword_1008F3F40;
  if (!qword_1008F3F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A2E44()
{
  result = type metadata accessor for WorkoutChartViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkoutChartProperties();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005A2EE4()
{
  static Color.gray.getter();
  v0 = Color.opacity(_:)();

  qword_100925EF0 = v0;
  return result;
}

uint64_t sub_1005A2F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F3F90);
  __chkstk_darwin(v4 - 8);
  v37 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  v9 = *(type metadata accessor for WorkoutChartViewModel(0) + 24);
  v36 = a1;
  v10 = (a1 + v9);
  v11 = *v10;
  v12 = v10[1];
  v38 = *v10;
  v39 = v12;
  sub_10000FCBC();
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if ((StringProtocol.isEmptyOrWhiteSpace.getter() & 1) == 0)
  {
    v38 = v11;
    v39 = v12;

    v17 = Text.init<A>(_:)();
    v19 = v18;
    v21 = v20;
    static Color.white.getter();
    v35 = Text.foregroundColor(_:)();
    v23 = v22;
    v25 = v24;

    sub_10004642C(v17, v19, v21 & 1);

    static Font.headline.getter();
    LOBYTE(v19) = v25;
    v26 = v35;
    v13 = Text.font(_:)();
    v14 = v27;
    v34 = v28;
    v16 = v29;

    sub_10004642C(v26, v23, v19 & 1);

    v15 = v34 & 1;
  }

  sub_1005A31A8(v8);
  v30 = v37;
  sub_10009FA40(v8, v37);
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  v31 = sub_100140278(&qword_1008F3F98);
  sub_10009FA40(v30, a2 + *(v31 + 48));
  sub_1001E53F8(v13, v14, v15, v16);
  sub_10000EA04(v8, &qword_1008F3F90);
  sub_10000EA04(v30, &qword_1008F3F90);
  return sub_1001E543C(v13, v14, v15, v16);
}

double sub_1005A31A8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for WorkoutChart();
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008F3FA0);
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  sub_10017A990(v2, v5, type metadata accessor for WorkoutChartViewModel);
  type metadata accessor for WorkoutDetailChartView();
  v10 = &v5[*(v3 + 20)];
  type metadata accessor for WorkoutChartProperties();
  sub_1005A66EC(&unk_1008EC148, type metadata accessor for WorkoutChartProperties);

  *v10 = ObservedObject.init(wrappedValue:)();
  v10[1] = v11;
  v43 = v2;
  v12 = sub_100140278(&qword_1008F3FA8);
  v13 = sub_1005A66EC(&qword_1008ED9B0, type metadata accessor for WorkoutChart);
  v14 = sub_1005A6734();
  View.chartXAxis<A>(content:)();
  sub_1005A6C10(v5, type metadata accessor for WorkoutChart);
  v42 = v2;
  sub_100140278(&qword_1008F3FD8);
  *&v51 = v3;
  *(&v51 + 1) = v12;
  v52 = v13;
  v53 = v14;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008F3FE0, &qword_1008F3FD8);
  v15 = v41;
  v16 = v39;
  View.chartYAxis<A>(content:)();
  (*(v40 + 8))(v9, v16);
  v17 = static Alignment.topTrailing.getter();
  v19 = v18;
  sub_1005A3E94(v2, &v51);
  v20 = v51;
  LOBYTE(v9) = v52;
  v21 = v53;
  v22 = v54;
  v46 = v52;
  v47 = v51;
  LOBYTE(v48) = v52;
  *(&v48 + 1) = v53;
  v49 = v54;
  *&v50 = v17;
  *(&v50 + 1) = v19;
  v23 = (v15 + *(sub_100140278(&qword_1008F3FE8) + 36));
  v24 = v48;
  *v23 = v47;
  v23[1] = v24;
  v25 = v50;
  v23[2] = v49;
  v23[3] = v25;
  v51 = v20;
  LOBYTE(v52) = v9;
  v53 = v21;
  v54 = v22;
  v55 = v17;
  v56 = v19;
  sub_10001B104(&v47, v44, &qword_1008F3FF0);
  sub_10000EA04(&v51, &qword_1008F3FF0);
  LOBYTE(v17) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v15 + *(sub_100140278(&qword_1008F3FF8) + 36);
  *v34 = v17;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = (v15 + *(sub_100140278(&qword_1008F3F90) + 36));
  v36 = v44[1];
  *v35 = v44[0];
  v35[1] = v36;
  result = *&v45;
  v35[2] = v45;
  return result;
}

uint64_t sub_1005A3638@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_100140278(&qword_1008F3FD0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - v4;
  v5 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v5 - 8);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for WorkoutDetailChartView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100140278(&qword_1008F3FC0);
  v23 = *(v11 - 8);
  v24 = v11;
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = [*(v1 + *(type metadata accessor for WorkoutChartViewModel(0) + 28)) string];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v30 = v15;
  v31 = v17;
  sub_10000FCBC();
  LOBYTE(v15) = StringProtocol.isEmptyOrWhiteSpace.getter();

  sub_1002E4220();
  sub_10017A990(v2, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutDetailChartView);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_1005A6BA8(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for WorkoutDetailChartView);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  if (v15)
  {
    sub_100140278(&qword_1008F4040);
    type metadata accessor for Date();
    sub_1005A6834(&qword_1008F4048, &qword_1008F4040, &unk_1006FB660, sub_1005A6A94);
    AxisMarks.init<A>(preset:position:values:content:)();
    (*(v23 + 32))(v29, v13, v24);
  }

  else
  {
    sub_100140278(&qword_1008F4008);
    type metadata accessor for Date();
    sub_1005A6834(&qword_1008F4010, &qword_1008F4008, &unk_1006FB638, sub_1005A68E4);
    v20 = v25;
    AxisMarks.init<A>(preset:position:values:content:)();
    (*(v26 + 32))(v29, v20, v27);
  }

  sub_100140278(&qword_1008F4038);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005A3B64(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v3 - 8);
  sub_100140278(&qword_1008DE480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D46C0;
  *(v4 + 32) = *(a1 + *(type metadata accessor for WorkoutChartViewModel(0) + 68));
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008F4000);
  type metadata accessor for AxisGridLine();
  swift_getOpaqueTypeConformance2();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_1005A3D28()
{
  v0 = type metadata accessor for AxisGridLine();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = v6;
  v10 = v7;
  v11 = v8;
  AxisGridLine.init(centered:stroke:)();
  if (qword_1008DAE78 != -1)
  {
    swift_once();
  }

  v5[1] = qword_100925EF0;
  AxisMark.foregroundStyle<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005A3E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  result = type metadata accessor for WorkoutChartViewModel(0);
  v7 = *(a1 + *(result + 64));
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
    LocalizedStringKey.init(stringInterpolation:)();
    v9 = Text.init(_:tableName:bundle:comment:)();
    v11 = v10;
    v13 = v12;
    static Font.footnote.getter();
    v14 = Text.font(_:)();
    v16 = v15;
    v18 = v17;

    sub_10004642C(v9, v11, v13 & 1);

    static Color.secondary.getter();
    v19 = Text.foregroundStyle<A>(_:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_10004642C(v14, v16, v18 & 1);

    *a2 = v19;
    *(a2 + 8) = v21;
    *(a2 + 16) = v23 & 1;
    *(a2 + 24) = v25;
    *(a2 + 32) = xmmword_1006FB540;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005A40DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v60 = a3;
  v53 = sub_100140278(&qword_1008F4090);
  __chkstk_darwin(v53);
  v52 = &v46 - v4;
  v5 = sub_100140278(&qword_1008F4020);
  __chkstk_darwin(v5 - 8);
  v54 = &v46 - v6;
  v51 = sub_100140278(&qword_1008F4030);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v46 - v9;
  v10 = type metadata accessor for AxisGridLine();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100140278(&qword_1008F4000);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v46 - v15;
  v16 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v17 - 8);
  v18 = sub_100140278(&qword_1008EDA40);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v46 - v20;
  v22 = AxisValue.index.getter();
  v46 = a1;
  v23 = AxisValue.count.getter();
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v22 != v23 - 1)
  {
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v65 = v62;
    v66 = v63;
    v67 = v64;
    AxisGridLine.init(centered:stroke:)();
    if (qword_1008DAE78 == -1)
    {
LABEL_5:
      v61 = qword_100925EF0;
      v24 = v55;
      AxisMark.foregroundStyle<A>(_:)();
      v25 = (*(v47 + 8))(v12, v10);
      __chkstk_darwin(v25);
      static AxisValueLabelCollisionResolution.automatic.getter();
      static AxisValueLabelOrientation.automatic.getter();
      v44 = sub_100140278(&qword_1008F4098);
      v45 = sub_10014A6B0(&qword_1008F40A0, &qword_1008F4098);
      v42 = sub_1005A6C70;
      v43 = &v42;
      LODWORD(v56) = 1;
      v26 = v58;
      AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
      v27 = v48;
      v28 = *(v48 + 16);
      v29 = v57;
      v30 = v49;
      v28(v57, v24, v49);
      v31 = v50;
      v32 = *(v50 + 16);
      v33 = v51;
      v32(v59, v26, v51);
      v34 = v52;
      v28(v52, v29, v30);
      sub_10014A6B0(&qword_1008F4028, &qword_1008F4030);
      v35 = v53;
      v36 = *(v53 + 48);
      v37 = v59;
      v32(&v34[v36], v59, v33);
      v38 = v54;
      (*(v27 + 32))(v54, v34, v30);
      (*(v31 + 32))(v38 + *(v35 + 48), &v34[v36], v33);
      v39 = *(v31 + 8);
      v39(v58, v33);
      v40 = *(v27 + 8);
      v40(v55, v30);
      v39(v37, v33);
      v40(v57, v30);
      sub_100015E80(v38, v60, &qword_1008F4020);
      goto LABEL_6;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  __chkstk_darwin(v23);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v44 = sub_100140278(&qword_1008EDA48);
  v45 = sub_100447628();
  v42 = sub_1005A6C78;
  v43 = &v42;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  (*(v19 + 32))(v60, v21, v18);
  LODWORD(v56) = 0;
LABEL_6:
  sub_100140278(&qword_1008F40A8);
  return swift_storeEnumTagMultiPayload();
}

__n128 sub_1005A4950@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  sub_1005A49E8(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_1005A49E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v5 = AxisValue.index.getter();
  sub_1005A4C54(v5, v31);
  v6 = v31[0];
  v7 = v31[1];
  v8 = v32;
  v30 = v33;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!AxisValue.index.getter())
  {
    v29 = type metadata accessor for WorkoutChartViewModel(0);
    v13 = *(a1 + *(v29 + 28));
    AttributedString.init(_:)();
    v14 = Text.init(_:)();
    v16 = v15;
    v18 = v17;
    static Font.footnote.getter();
    v19 = Text.font(_:)();
    v27 = v20;
    v28 = v19;
    v26 = v21;

    sub_10004642C(v14, v16, v18 & 1);

    sub_1005D5EA8(*(a1 + *(v29 + 20)));
    Color.init(_:)();
    v9 = Text.foregroundColor(_:)();
    v10 = v22;
    LOBYTE(v29) = v23;
    v12 = v24;

    sub_10004642C(v28, v27, v26 & 1);

    v11 = v29 & 1;
    sub_10006965C(v9, v10, v29 & 1);
  }

  sub_10006965C(v6, v7, v8);

  sub_1001E53F8(v9, v10, v11, v12);
  sub_1001E543C(v9, v10, v11, v12);
  LOBYTE(v31[0]) = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v30;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  sub_1001E543C(v9, v10, v11, v12);
  sub_10004642C(v6, v7, v8);
}

uint64_t sub_1005A4C54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutDetailChartView();
  v8 = sub_1002E4220();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a1)
  {
    (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v4);

    if (qword_1008DAF70 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v9 = qword_1008F7F00;
  sub_100666080();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v9 setDateFormat:v11];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v9 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  (*(v5 + 8))(v7, v4);
  v36 = v14;
  v37 = v16;
  sub_10000FCBC();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.footnote.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  sub_10004642C(v17, v19, v21 & 1);

  if (qword_1008DAE78 != -1)
  {
    swift_once();
  }

  v36 = qword_100925EF0;

  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10004642C(v22, v24, v26 & 1);

  *a2 = v27;
  *(a2 + 8) = v29;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v33;
  return result;
}

uint64_t sub_1005A4F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v60 = a3;
  v53 = sub_100140278(&qword_1008F4070);
  __chkstk_darwin(v53);
  v52 = &v46 - v4;
  v5 = sub_100140278(&qword_1008F4058);
  __chkstk_darwin(v5 - 8);
  v54 = &v46 - v6;
  v51 = sub_100140278(&qword_1008F4068);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v46 - v9;
  v10 = type metadata accessor for AxisGridLine();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100140278(&qword_1008F4000);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v46 - v15;
  v16 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v17 - 8);
  v18 = sub_100140278(&qword_1008EDA40);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v46 - v20;
  v22 = AxisValue.index.getter();
  v46 = a1;
  v23 = AxisValue.count.getter();
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v22 != v23 - 1)
  {
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v65 = v62;
    v66 = v63;
    v67 = v64;
    AxisGridLine.init(centered:stroke:)();
    if (qword_1008DAE78 == -1)
    {
LABEL_5:
      v61 = qword_100925EF0;
      v24 = v55;
      AxisMark.foregroundStyle<A>(_:)();
      v25 = (*(v47 + 8))(v12, v10);
      __chkstk_darwin(v25);
      static AxisValueLabelCollisionResolution.automatic.getter();
      static AxisValueLabelOrientation.automatic.getter();
      v44 = sub_100140278(&qword_1008F4078);
      v45 = sub_10014A6B0(&qword_1008F4080, &qword_1008F4078);
      v42 = sub_1005A6B98;
      v43 = &v42;
      LODWORD(v56) = 1;
      v26 = v58;
      AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
      v27 = v48;
      v28 = *(v48 + 16);
      v29 = v57;
      v30 = v49;
      v28(v57, v24, v49);
      v31 = v50;
      v32 = *(v50 + 16);
      v33 = v51;
      v32(v59, v26, v51);
      v34 = v52;
      v28(v52, v29, v30);
      sub_10014A6B0(&qword_1008F4060, &qword_1008F4068);
      v35 = v53;
      v36 = *(v53 + 48);
      v37 = v59;
      v32(&v34[v36], v59, v33);
      v38 = v54;
      (*(v27 + 32))(v54, v34, v30);
      (*(v31 + 32))(v38 + *(v35 + 48), &v34[v36], v33);
      v39 = *(v31 + 8);
      v39(v58, v33);
      v40 = *(v27 + 8);
      v40(v55, v30);
      v39(v37, v33);
      v40(v57, v30);
      sub_100015E80(v38, v60, &qword_1008F4058);
      goto LABEL_6;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  __chkstk_darwin(v23);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v44 = sub_100140278(&qword_1008EDA48);
  v45 = sub_100447628();
  v42 = sub_1005A6BA0;
  v43 = &v42;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  (*(v19 + 32))(v60, v21, v18);
  LODWORD(v56) = 0;
LABEL_6:
  sub_100140278(&qword_1008F4088);
  return swift_storeEnumTagMultiPayload();
}

__n128 sub_1005A57EC@<Q0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  sub_1005A5894(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  *(a1 + 49) = *&v4[32];
  *&v4[71] = v6;
  *(a1 + 65) = *&v4[48];
  result = *&v4[63];
  *(a1 + 80) = *&v4[63];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_1005A5894@<X0>(uint64_t a1@<X8>)
{
  if (AxisValue.index.getter())
  {
    v2 = AxisValue.index.getter();
    sub_1005A5A44(v2, &v13);
  }

  else
  {
    v3 = AxisValue.index.getter();
    sub_1005A4C54(v3, &v13);
  }

  _ConditionalContent<>.init(storage:)();
  v4 = v15;
  v11 = v14;
  v12 = v13;
  v5 = v13;
  v6 = v14;
  sub_10017A7AC(v13, *(&v13 + 1), v14);
  v7 = AxisValue.index.getter();
  sub_1005A5C84(v7, &v13);
  v8 = v13;
  v9 = v14;
  sub_10017A7AC(v5, *(&v5 + 1), v6);
  sub_1001E53F8(v8, *(&v8 + 1), v9, *(&v9 + 1));
  sub_10017A8F0(v5, *(&v5 + 1), v6);
  LOBYTE(v13) = v4;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v4;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  sub_1001E543C(v8, *(&v8 + 1), v9, *(&v9 + 1));
  return sub_10017A8F0(v5, *(&v5 + 1), v6);
}

uint64_t sub_1005A5A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D46C0;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  static String.localizedStringWithFormat(_:_:)();

  sub_10000FCBC();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.footnote.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_10004642C(v8, v10, v12 & 1);

  if (qword_1008DAE78 != -1)
  {
    swift_once();
  }

  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_10004642C(v13, v15, v17 & 1);

  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v24;
  return result;
}

uint64_t sub_1005A5C84@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for WorkoutChartDataElement(0);
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = v50 - v9;
  v10 = sub_100140278(&qword_1008E8AC0);
  __chkstk_darwin(v10 - 8);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = v50 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  type metadata accessor for WorkoutDetailChartView();
  v58 = v2;
  result = sub_1002E4220();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v23 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * a1;
    v52 = *(v16 + 16);
    v52(v18, v23, v15);

    sub_1002E4BC8();
    v26 = *(v16 + 8);
    v24 = v16 + 8;
    v25 = v26;
    v26(v18, v15);
    v27 = v60;
    sub_10031BBF8(v21, v60);
    sub_10001B104(v27, v12, &qword_1008E8AC0);
    if ((*(v6 + 48))(v12, 1, v59) == 1)
    {
      sub_10000EA04(v27, &qword_1008E8AC0);
      v25(v21, v15);
      result = sub_10000EA04(v12, &qword_1008E8AC0);
    }

    else
    {
      v50[1] = v24;
      v51 = v25;
      v53 = v15;
      v28 = v56;
      sub_1005A6BA8(v12, v56, type metadata accessor for WorkoutChartDataElement);
      v29 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
      v30 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
      v31 = [v29 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v30];

      if (v31)
      {
        v32 = v59;
        v33 = *(v28 + *(v59 + 24));
        v34 = v55;
        v52(v55, v28, v53);
        *(v34 + v32[5]) = v33;
        *(v34 + v32[6]) = v33;
        *(v34 + v32[7]) = v33;
        v35 = type metadata accessor for WorkoutChartViewModel(0);
        v36 = v58;
        v52 = sub_10019656C(v34, v31);
        AttributedString.init(_:)();
        v37 = Text.init(_:)();
        v59 = v21;
        v38 = v37;
        v40 = v39;
        LOBYTE(v32) = v41;
        sub_1005D5EA8(*(v36 + *(v35 + 20)));
        v61 = Color.init(_:)();
        v42 = Text.foregroundStyle<A>(_:)();
        v44 = v43;
        LODWORD(v58) = v45;
        v47 = v46;
        sub_10004642C(v38, v40, v32 & 1);

        sub_1005A6C10(v34, type metadata accessor for WorkoutChartDataElement);
        sub_1005A6C10(v56, type metadata accessor for WorkoutChartDataElement);
        sub_10000EA04(v60, &qword_1008E8AC0);
        result = v51(v59, v53);
        v48 = v58 & 1;
LABEL_9:
        v49 = v57;
        *v57 = v42;
        v49[1] = v44;
        v49[2] = v48;
        v49[3] = v47;
        return result;
      }

      sub_1005A6C10(v28, type metadata accessor for WorkoutChartDataElement);
      sub_10000EA04(v27, &qword_1008E8AC0);
      result = v51(v21, v53);
    }

    v42 = 0;
    v44 = 0;
    v48 = 0;
    v47 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A62A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  result = type metadata accessor for WorkoutChartViewModel(0);
  v7 = *(a1 + *(result + 60));
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
    LocalizedStringKey.init(stringInterpolation:)();
    v9 = Text.init(_:tableName:bundle:comment:)();
    v11 = v10;
    v13 = v12;
    static Font.footnote.getter();
    v14 = Text.font(_:)();
    v16 = v15;
    v18 = v17;

    sub_10004642C(v9, v11, v13 & 1);

    static Color.secondary.getter();
    v19 = Text.foregroundStyle<A>(_:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_10004642C(v14, v16, v18 & 1);

    *a2 = v19;
    *(a2 + 8) = v21;
    *(a2 + 16) = v23 & 1;
    *(a2 + 24) = v25;
    *(a2 + 32) = xmmword_1006DC5B0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1005A64EC()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F3F78);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_100140278(&qword_1008F3F80);
  sub_1005A2F24(v0, &v7[*(v8 + 44)]);
  (*(v2 + 104))(v4, enum case for DynamicTypeSize.large(_:), v1);
  sub_10014A6B0(&qword_1008F3F88, &qword_1008F3F78);
  View.dynamicTypeSize(_:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000EA04(v7, &qword_1008F3F78);
}

uint64_t sub_1005A66EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005A6734()
{
  result = qword_1008F3FB0;
  if (!qword_1008F3FB0)
  {
    sub_100141EEC(&qword_1008F3FA8);
    sub_10014A6B0(&qword_1008F3FB8, &qword_1008F3FC0);
    sub_10014A6B0(&qword_1008F3FC8, &qword_1008F3FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3FB0);
  }

  return result;
}

uint64_t sub_1005A6834(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    sub_10014A6B0(&qword_1008EDA38, &qword_1008EDA40);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005A68E4()
{
  result = qword_1008F4018;
  if (!qword_1008F4018)
  {
    sub_100141EEC(&qword_1008F4020);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008F4028, &qword_1008F4030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4018);
  }

  return result;
}

uint64_t sub_1005A6A00(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutDetailChartView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1005A6A94()
{
  result = qword_1008F4050;
  if (!qword_1008F4050)
  {
    sub_100141EEC(&qword_1008F4058);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008F4060, &qword_1008F4068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4050);
  }

  return result;
}

uint64_t sub_1005A6BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005A6C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1005A6C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_dayLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_goalView] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v30.receiver = v3;
  v30.super_class = type metadata accessor for ActivityGoalDayCell();
  v8 = objc_msgSendSuper2(&v30, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_dayLabel;
  v10 = *&v8[OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_dayLabel];
  v11 = v8;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v11 contentView];
  [v12 addSubview:*&v8[v9]];

  v13 = [*&v8[v9] topAnchor];
  v14 = [v11 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [*&v8[v9] leadingAnchor];
  v18 = [v11 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [*&v8[v9] bottomAnchor];
  v22 = [v11 contentView];

  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = *&v8[v9];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 preferredFontForTextStyle:UIFontTextStyleBody];
  [v27 setFont:v28];

  return v11;
}

id sub_1005A70D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityGoalDayCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005A7280(double a1)
{
  v2 = Color.cgColor.getter();
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = v2;
  v4 = Color.cgColor.getter();
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = v4;
  NumberOfComponents = CGColorGetNumberOfComponents(v3);
  if (NumberOfComponents != CGColorGetNumberOfComponents(v5))
  {
    goto LABEL_27;
  }

  v7 = CGColorGetColorSpace(v3);
  v8 = CGColorGetColorSpace(v5);
  v9 = v8;
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_33:
LABEL_34:

    goto LABEL_35;
  }

  if (!v8)
  {

    goto LABEL_33;
  }

  type metadata accessor for CGColorSpace(0);
  sub_1005A75BC();
  v10 = static _CFObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  v11 = CGColorGetColorSpace(v3);
  if (!v11)
  {
LABEL_27:

    goto LABEL_35;
  }

  v12 = v11;
  v13 = CGColorRef.components.getter();
  if (!v13)
  {

    goto LABEL_35;
  }

  v14 = v13;
  v15 = CGColorRef.components.getter();
  if (!v15)
  {

    goto LABEL_35;
  }

  v16 = v15;
  v17 = CGColorGetNumberOfComponents(v3);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  if (!v17)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  if (v17 > *(v14 + 16))
  {
    goto LABEL_25;
  }

  if (v17 > *(v16 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = sub_1001A2BA4(0, 1, 1, _swiftEmptyArrayStorage);
  v20 = (v14 + 32);
  v21 = (v16 + 32);
  v22 = *(v19 + 2);
  do
  {
    v23 = *v20;
    v24 = *v21;
    v25 = *(v19 + 3);
    if (v22 >= v25 >> 1)
    {
      v19 = sub_1001A2BA4((v25 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    *&v19[8 * v22 + 32] = (1.0 - a1) * v23 + v24 * a1;
    ++v21;
    ++v20;
    ++v22;
    --v18;
  }

  while (v18);
LABEL_22:
  if (CGColorCreate(v12, v19 + 4))
  {

    v26 = Color.init(_:)();

    return v26;
  }

LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1005A75BC()
{
  result = qword_1008F4150;
  if (!qword_1008F4150)
  {
    type metadata accessor for CGColorSpace(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4150);
  }

  return result;
}

Swift::Int sub_1005A7614()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1005A769C()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1005A7724()
{
  result = qword_1008F4158;
  if (!qword_1008F4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4158);
  }

  return result;
}

uint64_t sub_1005A7794(void *a1)
{
  v2 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005A79E8(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000EA04(v4, &unk_1008EB5B0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  sub_1004C9534(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100066080(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 openURL:v13 options:isa completionHandler:0];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005A79E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v3 = sub_100140278(&qword_1008F4180);
  __chkstk_darwin(v3 - 8);
  v83 = &v75 - v4;
  v5 = type metadata accessor for Locale.Language();
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin(v5);
  v84 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  countAndFlagsBits = *(v7 - 8);
  v88 = v7;
  __chkstk_darwin(v7);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v75 - v10;
  v12 = sub_100140278(&qword_1008E3708);
  __chkstk_darwin(v12 - 8);
  v14 = &v75 - v13;
  v93 = type metadata accessor for URLQueryItem();
  v15 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v81 = &v75 - v18;
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  v25 = sub_100140278(&unk_1008EAF30);
  __chkstk_darwin(v25 - 8);
  v27 = &v75 - v26;
  v28 = type metadata accessor for URLComponents();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(string:)();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000EA04(v27, &unk_1008EAF30);
    v32 = type metadata accessor for URL();
    return (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
  }

  v77 = v29;
  v78 = v28;
  (*(v29 + 32))(v31, v27, v28);
  v76 = v31;
  v34 = URLComponents.queryItems.getter();
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v80 = sub_100140278(&unk_1008E4E50);
  v36 = swift_allocObject();
  v75 = xmmword_1006D46C0;
  *(v36 + 16) = xmmword_1006D46C0;
  v37 = v92;
  [v92 coordinate];
  *(v36 + 56) = &type metadata for Double;
  *(v36 + 64) = &protocol witness table for Double;
  *(v36 + 32) = v38;
  String.init(format:_:)();
  URLQueryItem.init(name:value:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_1001A3980(0, v35[2] + 1, 1, v35);
  }

  v41 = v35[2];
  v40 = v35[3];
  if (v41 >= v40 >> 1)
  {
    v35 = sub_1001A3980(v40 > 1, v41 + 1, 1, v35);
  }

  v35[2] = v41 + 1;
  v43 = *(v15 + 32);
  v42 = (v15 + 32);
  v91 = (v42[48] + 32) & ~v42[48];
  v92 = v43;
  v90 = *(v42 + 5);
  v44 = v24;
  v45 = v93;
  (v43)(v35 + v91 + v90 * v41, v44, v93);
  v46 = swift_allocObject();
  *(v46 + 16) = v75;
  [v37 coordinate];
  *(v46 + 56) = &type metadata for Double;
  *(v46 + 64) = &protocol witness table for Double;
  *(v46 + 32) = v47;
  String.init(format:_:)();
  URLQueryItem.init(name:value:)();

  v49 = v35[2];
  v48 = v35[3];
  if (v49 >= v48 >> 1)
  {
    v35 = sub_1001A3980(v48 > 1, v49 + 1, 1, v35);
  }

  v50 = v76;
  v35[2] = v49 + 1;
  v76 = v42;
  (v92)(v35 + v91 + v49 * v90, v21, v45);
  static Locale.current.getter();
  v51 = v84;
  Locale.language.getter();
  v52 = v88;
  v53 = *(countAndFlagsBits + 8);
  v53(v11, v88);
  Locale.Language.languageCode.getter();
  (*(v85 + 8))(v51, v86);
  v54 = type metadata accessor for Locale.LanguageCode();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v14, 1, v54) == 1)
  {
    v56 = &qword_1008E3708;
  }

  else
  {
    Locale.LanguageCode.identifier.getter();
    (*(v55 + 8))(v14, v54);
    v57 = String.uppercased()();
    countAndFlagsBits = v57._countAndFlagsBits;

    v58 = v82;
    static Locale.current.getter();
    v14 = v83;
    Locale.region.getter();
    v53(v58, v52);
    v59 = type metadata accessor for Locale.Region();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v14, 1, v59) != 1)
    {
      Locale.Region.identifier.getter();
      (*(v60 + 8))(v14, v59);
      v63 = String.uppercased()();

      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1006D1F70;
      *(v64 + 56) = &type metadata for String;
      v65 = sub_10000A788();
      *(v64 + 32) = countAndFlagsBits;
      *(v64 + 40) = v57._object;
      *(v64 + 96) = &type metadata for String;
      *(v64 + 104) = v65;
      *(v64 + 64) = v65;
      *(v64 + 72) = v63;
      String.init(format:_:)();
      v66 = v81;
      URLQueryItem.init(name:value:)();

      v68 = v35[2];
      v67 = v35[3];
      v61 = v93;
      if (v68 >= v67 >> 1)
      {
        v35 = sub_1001A3980(v67 > 1, v68 + 1, 1, v35);
      }

      v62 = v89;
      v69 = v90;
      v35[2] = v68 + 1;
      (v92)(v35 + v91 + v68 * v69, v66, v61);
      goto LABEL_20;
    }

    v56 = &qword_1008F4180;
  }

  sub_10000EA04(v14, v56);
  v61 = v93;
  v62 = v89;
LABEL_20:
  v70 = [objc_opt_self() processInfo];
  v71 = [v70 processName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URLQueryItem.init(name:value:)();

  v73 = v35[2];
  v72 = v35[3];
  if (v73 >= v72 >> 1)
  {
    v35 = sub_1001A3980(v72 > 1, v73 + 1, 1, v35);
  }

  v74 = v77;
  v35[2] = v73 + 1;
  (v92)(v35 + v91 + v73 * v90, v62, v61);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  return (*(v74 + 8))(v50, v78);
}

uint64_t sub_1005A8480()
{
  Image.init(_:bundle:)();
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  View.accessibilityLabel<A>(_:)();
}

uint64_t sub_1005A85B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityTraits();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F4160);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = *v1;
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100140278(&qword_1008F4168);
  *(swift_allocObject() + 16) = v11;
  v12 = v11;
  sub_100140278(&qword_1008E76A0);
  sub_1005A8818();
  Button.init(action:label:)();
  static AccessibilityTraits.isLink.getter();
  sub_10014A6B0(&qword_1008F4178, &qword_1008F4160);
  View.accessibilityAddTraits(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1005A8818()
{
  result = qword_1008F4170;
  if (!qword_1008F4170)
  {
    sub_100141EEC(&qword_1008E76A0);
    sub_100066080(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4170);
  }

  return result;
}

Swift::Int sub_1005A88D4()
{
  v1 = v0;
  Hasher.init()();
  Card = type metadata accessor for LoadCard();
  v3 = (v0 + Card[5]);
  v4 = *v3;
  v5 = *(v3 + 16);
  sub_100035B30(*v3, *(v3 + 16));
  String.hash(into:)();

  if (!v5 || v5 == 2)
  {
    Hasher._combine(_:)(v4);
  }

  else if (v5 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + Card[6]));
  Hasher._combine(_:)(*(v1 + Card[7]));
  NSObject.hash(into:)();
  return Hasher.finalize()();
}

uint64_t sub_1005A89CC()
{
  Card = type metadata accessor for LoadCard();
  v2 = (v0 + Card[5]);
  v13 = *v2;
  LOBYTE(v14) = *(v2 + 16);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  LOBYTE(v13) = *(v0 + Card[6]);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  type metadata accessor for UUID();
  sub_100071140();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 540945696;
  v6._object = 0xE400000000000000;
  String.append(_:)(v6);
  v7 = [*(v0 + Card[9]) description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return 0;
}

uint64_t sub_1005A8B68()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BalanceDataProvider();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1005A8C98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoverySheetConstants();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005A8D9C()
{
  _StringGuts.grow(_:)(24);

  if (*(v0 + OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  return 0xD000000000000016;
}

id sub_1005A8ED8@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  *a1 = result;
  return result;
}

void sub_1005A8F4C(double a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = UIFontTextStyleBody;
  v7 = [v5 defaultFontForTextStyle:v6];

  if (v7)
  {
    v8 = [v7 fu_fontWithSize:a1];

    *a3 = v8;
  }

  else
  {
    __break(1u);
  }
}

char *sub_1005A8FF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_insetContentView;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_iconImageView;
  v13 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = UIView.withContentMode(_:)();

  v15 = [v14 layer];
  [v15 setCornerRadius:3.0];

  [v14 setClipsToBounds:1];
  v16 = [objc_opt_self() secondarySystemBackgroundColor];
  [v14 setBackgroundColor:v16];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v12] = v14;
  v17 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_titleLabel;
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setLineBreakMode:0];
  [v18 setNumberOfLines:1];
  if (qword_1008DAE80 != -1)
  {
    swift_once();
  }

  [v18 setFont:qword_1008F4290];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_subtitleLabel;
  v20 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setLineBreakMode:0];
  [v20 setNumberOfLines:1];
  if (qword_1008DAE88 != -1)
  {
    swift_once();
  }

  [v20 setFont:qword_1008F4298];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v19] = v20;
  *&v5[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_configurationTask] = 0;
  v21 = &v5[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_title];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v5[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation];
  v23 = type metadata accessor for SeymourWorkoutRecommendationCollectionViewCell();
  *v22 = 0;
  *(v22 + 1) = 0;
  v28.receiver = v5;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v25 = *&v24[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_iconImageView];
  v26 = v24;
  [v26 addSubview:v25];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_titleLabel]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_subtitleLabel]];
  sub_1005A93A0();

  return v26;
}

void sub_1005A93A0()
{
  v1 = v0;
  v35 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006E41A0;
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_iconImageView];
  v4 = [v3 topAnchor];
  v5 = [v1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v3 centerXAnchor];
  v9 = [v1 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v2 + 40) = v10;
  v11 = [v3 widthAnchor];
  v12 = [v11 constraintEqualToConstant:222.0];

  *(v2 + 48) = v12;
  v13 = [v3 heightAnchor];
  v14 = [v13 constraintEqualToConstant:125.0];

  *(v2 + 56) = v14;
  v15 = *&v1[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_titleLabel];
  v16 = [v15 topAnchor];
  v17 = [v3 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];

  *(v2 + 64) = v18;
  v19 = [v15 leadingAnchor];
  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v2 + 72) = v21;
  v22 = [v15 trailingAnchor];
  v23 = [v1 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v2 + 80) = v24;
  v25 = *&v1[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_subtitleLabel];
  v26 = [v25 topAnchor];
  v27 = [v15 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v2 + 88) = v28;
  v29 = [v25 leadingAnchor];
  v30 = [v1 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v2 + 96) = v31;
  v32 = [v25 trailingAnchor];
  v33 = [v1 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v2 + 104) = v34;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];
}

uint64_t sub_1005A9824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v9 = sub_100140278(&unk_1008E4D90);
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v8[25] = *(v10 + 64);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v11 = sub_100140278(&qword_1008ED060);
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[31] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[32] = v13;
  v8[33] = v12;

  return _swift_task_switch(sub_1005A99A8, v13, v12);
}

uint64_t sub_1005A99A8()
{
  sub_1000066AC(*(v0 + 144), *(*(v0 + 144) + 24));
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1005A9A4C;
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  return sub_10016F738(v3, v2);
}

uint64_t sub_1005A9A4C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 280) = a1;

  if (v1)
  {

    v4 = *(v3 + 256);
    v5 = *(v3 + 264);
    v6 = sub_1005A9EFC;
  }

  else
  {
    v4 = *(v3 + 256);
    v5 = *(v3 + 264);
    v6 = sub_1005A9B74;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1005A9B74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(*(v0 + 280) + OBJC_IVAR___CHCatalogItemViewModel_title) string];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = &v2[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_title];
    *v7 = v4;
    v7[1] = v6;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *(v0 + 280);
    v10 = v8;
    v11 = *(v8 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_titleLabel);

    v12 = [*(v9 + OBJC_IVAR___CHCatalogItemViewModel_title) string];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    [v11 setText:v12];
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *(v0 + 280);
    v15 = v13;
    v16 = *(v13 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_subtitleLabel);

    v17 = [*(v14 + OBJC_IVAR___CHCatalogItemViewModel_subtitle) string];
    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    [v16 setText:v17];
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 192);
  v21 = *(v0 + 200);
  v22 = *(v0 + 184);
  sub_1000066AC(*(v0 + 176), *(*(v0 + 176) + 24));
  dispatch thunk of ArtworkImageLoading.fetchFallbackArtwork(for:)();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1005AA6C8;
  *(v23 + 24) = 0;
  (*(v20 + 16))(v19, v18, v22);
  v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v25 = swift_allocObject();
  (*(v20 + 32))(v25 + v24, v19, v22);
  v26 = (v25 + ((v21 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_1005AAD48;
  v26[1] = v23;
  *(v0 + 288) = sub_100140278(&qword_1008E9B30);
  Promise.init(asyncOperation:)();
  (*(v20 + 8))(v18, v22);

  return _swift_task_switch(sub_1005A9F7C, 0, 0);
}

uint64_t sub_1005A9EFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005A9F7C()
{
  v1 = v0[30];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = "FitnessApp/SeymourWorkoutRecommendationCollectionViewCell.swift";
  *(v2 + 24) = 63;
  *(v2 + 32) = 2;
  *(v2 + 40) = 92;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_1005AA08C;
  v4 = v0[36];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 17, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005AAE0C, v2, v4);
}

uint64_t sub_1005AA08C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {

    v3 = sub_1005AA320;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[29];
    v6 = v2[30];
    v8 = v2[28];
    v2[40] = v2[17];

    (*(v7 + 8))(v6, v8);
    v4 = v2[32];
    v5 = v2[33];
    v3 = sub_1005AA1F8;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005AA1F8()
{
  v1 = *(v0 + 320);
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_iconImageView);

      [v4 setImage:v1];
    }
  }

  sub_1000066AC(*(v0 + 144), *(*(v0 + 144) + 24));
  v5 = swift_task_alloc();
  *(v0 + 328) = v5;
  *v5 = v0;
  v5[1] = sub_1005AA424;
  v6 = *(v0 + 280);

  return sub_10016FDA4(v6, 222.0, 125.0);
}

uint64_t sub_1005AA320()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[32];
  v2 = v0[33];

  return _swift_task_switch(sub_1005AA394, v1, v2);
}

uint64_t sub_1005AA394()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005AA424(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 336) = a1;

  if (v1)
  {

    v4 = *(v3 + 256);
    v5 = *(v3 + 264);
    v6 = sub_1005AA640;
  }

  else
  {
    v4 = *(v3 + 256);
    v5 = *(v3 + 264);
    v6 = sub_1005AA54C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1005AA54C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[42];
  v3 = v0[35];
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_iconImageView);

    [v5 setImage:v2];
    v3 = v5;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005AA640()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1005AA6C8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_1005AA6F8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SeymourWorkoutRecommendationCollectionViewCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_iconImageView] setImage:0];
  v1 = &v0[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation];
  *v1 = 0;
  *(v1 + 1) = 0;

  *&v0[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_configurationTask] = 0;

  v2 = &v0[OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_title];
  *v2 = 0;
  *(v2 + 1) = 0;
}

id sub_1005AA7FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourWorkoutRecommendationCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005AA8F8(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;
  sub_100140278(&qword_1008E9B30);

  return Promise.init(asyncOperation:)();
}

void sub_1005AA9A4(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_100428CE8(v6, 0);
}

void sub_1005AAA40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_insetContentView;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_iconImageView;
  v5 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = UIView.withContentMode(_:)();

  v7 = [v6 layer];
  [v7 setCornerRadius:3.0];

  [v6 setClipsToBounds:1];
  v8 = [objc_opt_self() secondarySystemBackgroundColor];
  [v6 setBackgroundColor:v8];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v4) = v6;
  v9 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_titleLabel;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:1];
  if (qword_1008DAE80 != -1)
  {
    swift_once();
  }

  [v10 setFont:qword_1008F4290];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v9) = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_subtitleLabel;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:1];
  if (qword_1008DAE88 != -1)
  {
    swift_once();
  }

  [v12 setFont:qword_1008F4298];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_configurationTask) = 0;
  v13 = (v1 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_title);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC10FitnessApp46SeymourWorkoutRecommendationCollectionViewCell_recommendation);
  *v14 = 0;
  v14[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005AAD50(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&unk_1008E4D90) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_10041FB2C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1005AAE28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_100007C5C(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        sub_100005A40(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1001AB740(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100185DC4(0, v9[2] + 1, 1);
          v9 = v29;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_100185DC4((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = sub_1001DF03C(v25, v26);
        v17 = __chkstk_darwin(v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19, v17);
        sub_10044FA40(v13, v19, &v29, v14, v15);
        result = sub_100005A40(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = sub_100005A40(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

void *sub_1005AB058(uint64_t (*a1)(id *), void *a2, unint64_t a3)
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

void sub_1005AB204(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_100140278(&qword_1008DE640);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_10001B104(a3 + v14 + v15 * v12, v11, &qword_1008DE640);
      v16 = a1(v11);
      if (v3)
      {
        sub_10000EA04(v11, &qword_1008DE640);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1005931E4(v11, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001864D0(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_1001864D0(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_1005931E4(v23, v13 + v14 + v19 * v15);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_10000EA04(v11, &qword_1008DE640);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1005AB468(uint64_t result, int a2)
{
  v2 = *(result + 104);
  *(result + 104) = a2;
  if (v2 == 2)
  {
    if (a2 == 2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a2 == 2 || ((v2 ^ a2) & 1) != 0)
  {
LABEL_6:
    if (*(result + 80))
    {
      swift_unknownObjectRetain();
      sub_100069D98(0x2Au);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1005AB4E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 112);
  *(a1 + 112) = a2;
  v4 = a2;

  if (*(a1 + 80))
  {
    swift_unknownObjectRetain();
    sub_100069D98(0x2Au);
    swift_unknownObjectRelease();
  }
}

void sub_1005AB540()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v3 - 8);
  v5 = aBlock - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = v2;
  sub_10026E198(0, 0, v5, &unk_1006FBA20, v8);

  out_token = -1;
  v9 = ACHLastHistoricalRunDateChangedNotification;
  sub_1000059F8(0, &qword_1008E3FD0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v2;
  aBlock[4] = sub_1005AD3D4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100629B20;
  aBlock[3] = &unk_100861B80;
  v12 = _Block_copy(aBlock);

  notify_register_dispatch(v9, &out_token, v10, v12);
  _Block_release(v12);
}

uint64_t sub_1005AB7AC()
{
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v0, "%s received lastHistoricalRunDateChangedNotification.", v3, 0xCu);
    sub_100005A40(v4);
  }

  return sub_1005AB8C8();
}

uint64_t sub_1005AB8C8()
{
  v1 = *v0;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v1;
  sub_10026E198(0, 0, v4, &unk_1006FBA18, v7);
}

uint64_t sub_1005ABA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_1005ABA30, 0, 0);
}

uint64_t sub_1005ABA30()
{
  v34 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000066AC((Strong + 16), *(Strong + 40));
    HistoricalRun = dispatch thunk of AAUIAwardsDataProviding.isFirstHistoricalRunComplete()();
    v4 = static os_log_type_t.default.getter();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v4))
    {
      v6 = v5;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33[0] = v8;
      *v7 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10000AFDC(v9, v10, v33);

      *(v7 + 4) = v11;
      *(v7 + 12) = 1024;
      *(v7 + 14) = HistoricalRun & 1;
      _os_log_impl(&_mh_execute_header, v6, v4, "%s firstHistoricalRunComplete: %{BOOL}d.", v7, 0x12u);
      sub_100005A40(v8);
    }

    if ((HistoricalRun & 1) == 0 || (sub_1000066AC(v2 + 2, v2[5]), (dispatch thunk of AAUIAwardsDataProviding.isCloudRestoreComplete()() & 1) == 0))
    {
      v12 = v2[12];
      v13 = swift_task_alloc();
      *(v13 + 16) = sub_1005AD424;
      *(v13 + 24) = v2;
      os_unfair_lock_lock(v12 + 4);
      sub_100577E2C(v33);
      os_unfair_lock_unlock(v12 + 4);
      v14 = v33[0];

      if (v14)
      {
      }

      else
      {
        v21 = static os_log_type_t.default.getter();
        v22 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v21))
        {
          v23 = v22;
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v33[0] = v25;
          *v24 = 136315138;
          v26 = _typeName(_:qualified:)();
          v28 = sub_10000AFDC(v26, v27, v33);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v23, v21, "%s fetching restoringPlaceholderAchievement.", v24, 0xCu);
          sub_100005A40(v25);
        }

        sub_1000066AC(v2 + 2, v2[5]);
        v29 = dispatch thunk of AAUIAwardsDataProviding.restoringPlaceholderAchievement()();
        v30 = v2[12];
        v31 = swift_task_alloc();
        *(v31 + 16) = v2;
        *(v31 + 24) = v29;
        v32 = swift_task_alloc();
        *(v32 + 16) = sub_1005AD270;
        *(v32 + 24) = v31;
        os_unfair_lock_lock(v30 + 4);
        sub_1005AD28C();
        os_unfair_lock_unlock(v30 + 4);
      }
    }

    v15 = HistoricalRun & 1;
    v16 = v2[12];
    v17 = swift_task_alloc();
    *(v17 + 16) = v2;
    *(v17 + 24) = v15;
    v18 = swift_task_alloc();
    *(v18 + 16) = sub_1005AD2B4;
    *(v18 + 24) = v17;
    os_unfair_lock_lock(v16 + 4);
    sub_1005AD43C();
    os_unfair_lock_unlock(v16 + 4);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1005ABE5C()
{
  sub_100005A40((v0 + 2));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1005ABEE8(int a1@<W3>, id a2@<X4>, int a3@<W5>, uint64_t *a4@<X8>)
{
  v80 = a1;
  v81 = a3;
  v79 = a4;
  v6 = type metadata accessor for UUID();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v78 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v67 - v9;
  v10 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v10 - 8);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  __chkstk_darwin(v15);
  v72 = &v67 - v16;
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v20 = type metadata accessor for AwardsCard();
  __chkstk_darwin(v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v75 = &v67 - v24;
  __chkstk_darwin(v25);
  v73 = &v67 - v26;
  sub_1000066AC(v4 + 2, v4[5]);
  v27 = dispatch thunk of AAUIAwardsDataProviding.topThreeAchievements()();
  v28 = v4[12];
  v84 = sub_1005AD0F0;
  v85 = v4;
  os_unfair_lock_lock(v28 + 4);
  sub_1005AD124(v86);
  v76 = v28;
  os_unfair_lock_unlock(v28 + 4);
  if (LOBYTE(v86[0]) != 2)
  {
    v71 = a2;
    if (v86[0] & 1) != 0 && (sub_1000066AC(v4 + 2, v4[5]), v29 = dispatch thunk of AAUIAwardsDataProviding.isCloudRestoreComplete()(), (v29))
    {
      a2 = v71;
    }

    else
    {
      __chkstk_darwin(v29);
      *(&v67 - 2) = sub_1005AD13C;
      *(&v67 - 1) = v4;
      v30 = v76;
      os_unfair_lock_lock(v76 + 4);
      sub_100577778(v86);
      os_unfair_lock_unlock(v30 + 4);
      a2 = v71;
      if (!v86[0])
      {
        goto LABEL_19;
      }
    }

    if (v27 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() != 3)
      {
        goto LABEL_19;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) != 3)
    {
      goto LABEL_19;
    }

    v71 = sub_1005AC944();
    if (v71)
    {
      v31 = v19;
      sub_1000066AC(v4 + 2, v4[5]);
      v32 = dispatch thunk of AAUIAwardsDataProviding.isCloudRestoreComplete()();
      sub_10001B104(a2, v86, &qword_1008DCC60);
      v33 = v87;
      v70 = v27;
      if (v87)
      {
        v34 = v88;
        sub_1000066AC(v86, v87);
        (*(v34 + 8))(v33, v34);
        (*(v82 + 56))(v31, 0, 1, v83);
        v35 = sub_100005A40(v86);
      }

      else
      {
        sub_10000EA04(v86, &qword_1008DCC60);
        v35 = (*(v82 + 56))(v31, 1, 1, v83);
      }

      v36 = v72;
      v37 = v76;
      __chkstk_darwin(v35);
      *(&v67 - 2) = sub_1005AD3DC;
      *(&v67 - 1) = v4;
      os_unfair_lock_lock(v37 + 4);
      sub_1005AD3F4(v86);
      os_unfair_lock_unlock(v37 + 4);
      LODWORD(v77) = LOBYTE(v86[0]);
      __chkstk_darwin(v38);
      *(&v67 - 2) = sub_1005AD424;
      *(&v67 - 1) = v4;
      v78 = v71;
      os_unfair_lock_lock(v37 + 4);
      sub_100577E2C(v86);
      v69 = v32 & 1;
      os_unfair_lock_unlock(v37 + 4);
      v72 = v86[0];
      v39 = v4[8];
      v68 = v4[7];
      v40 = v4[9];
      v41 = &v75[v20[5]];
      *v41 = xmmword_1006D4AE0;
      v41[16] = 3;
      sub_10001B104(v31, v36, &unk_1008DB8A0);
      v42 = v82;
      v43 = *(v82 + 48);
      v44 = v36;
      v45 = v36;
      v46 = v83;
      v47 = v43(v44, 1, v83);
      v76 = v39;
      v48 = v39;
      v49 = v68;
      v50 = v68;
      v51 = v40;
      if (v47 == 1)
      {
        v52 = v74;
        UUID.init()();
        sub_10000EA04(v31, &unk_1008DB8A0);
        if (v43(v45, 1, v46) != 1)
        {
          sub_10000EA04(v45, &unk_1008DB8A0);
        }
      }

      else
      {
        sub_10000EA04(v31, &unk_1008DB8A0);
        v52 = v74;
        (*(v42 + 32))(v74, v45, v46);
      }

      v53 = v75;
      (*(v42 + 32))(v75, v52, v46);
      *(v53 + v20[6]) = v80 & 1;
      *(v53 + v20[7]) = v81 & 1;
      *(v53 + v20[8]) = 1;
      *(v53 + v20[9]) = v69;
      *(v53 + v20[10]) = v77;
      *(v53 + v20[11]) = v70;
      *(v53 + v20[12]) = v71;
      *(v53 + v20[13]) = v72;
      *(v53 + v20[14]) = v76;
      *(v53 + v20[15]) = v49;
      *(v53 + v20[16]) = v40;
      v54 = v73;
      sub_10002E7C4(v53, v73, type metadata accessor for AwardsCard);
      v55 = v79;
      v79[3] = v20;
      v55[4] = &off_100852430;
      v56 = sub_100005994(v55);
      sub_10002E7C4(v54, v56, type metadata accessor for AwardsCard);

      return;
    }
  }

LABEL_19:

  sub_10001B104(a2, v86, &qword_1008DCC60);
  v57 = v87;
  if (v87)
  {
    v58 = v88;
    sub_1000066AC(v86, v87);
    (*(v58 + 8))(v57, v58);
    v60 = v82;
    v59 = v83;
    (*(v82 + 56))(v14, 0, 1, v83);
    sub_100005A40(v86);
  }

  else
  {
    sub_10000EA04(v86, &qword_1008DCC60);
    v60 = v82;
    v59 = v83;
    (*(v82 + 56))(v14, 1, 1, v83);
  }

  v62 = v78;
  v61 = v79;
  v79[3] = v20;
  v61[4] = &off_100852430;
  v63 = sub_100005994(v61);
  v64 = &v22[v20[5]];
  *v64 = xmmword_1006D4AE0;
  v64[16] = 3;
  v65 = v77;
  sub_10001B104(v14, v77, &unk_1008DB8A0);
  v66 = *(v60 + 48);
  if (v66(v65, 1, v59) == 1)
  {
    UUID.init()();
    sub_10000EA04(v14, &unk_1008DB8A0);
    if (v66(v65, 1, v59) != 1)
    {
      sub_10000EA04(v65, &unk_1008DB8A0);
    }
  }

  else
  {
    sub_10000EA04(v14, &unk_1008DB8A0);
    (*(v60 + 32))(v62, v65, v59);
  }

  (*(v60 + 32))(v22, v62, v59);
  v22[v20[6]] = v80 & 1;
  v22[v20[7]] = v81 & 1;
  v22[v20[8]] = 0;
  v22[v20[9]] = 2;
  v22[v20[10]] = 2;
  *&v22[v20[11]] = 0;
  *&v22[v20[12]] = 0;
  *&v22[v20[13]] = 0;
  *&v22[v20[14]] = 0;
  *&v22[v20[15]] = 0;
  *&v22[v20[16]] = 0;
  sub_10002E7C4(v22, v63, type metadata accessor for AwardsCard);
}

unint64_t sub_1005AC944()
{
  v1 = type metadata accessor for AAUIAwardsDataProviderSection();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v62 = v0;
  sub_1000066AC((v0 + 16), v5);
  v6 = (v2 + 104);
  v7 = *(v2 + 104);
  v7(v4, enum case for AAUIAwardsDataProviderSection.limitedEdtion(_:), v1);
  v8 = dispatch thunk of AAUIAwardsDataProviding.achievements(forSection:)();
  v11 = *(v2 + 8);
  v9 = (v2 + 8);
  v10 = v11;
  v11(v4, v1);
  v63 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = _swiftEmptyArrayStorage;
    if (i)
    {
      v56 = v10;
      v57 = v7;
      v58 = v6;
      v59 = v4;
      v60 = v9;
      v61 = v1;
      v4 = 0;
      v1 = v8 & 0xC000000000000001;
      v6 = &selRef_setNavigationBarHidden_animated_;
      while (1)
      {
        if (v1)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v14 = *(v8 + 8 * v4 + 32);
        }

        v7 = v14;
        v9 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_21;
        }

        if ([v14 unearned])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v10 = v63[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v4;
        if (v9 == i)
        {
          v13 = v63;
          v9 = v60;
          v1 = v61;
          v6 = v58;
          v4 = v59;
          v10 = v56;
          v7 = v57;
          break;
        }
      }
    }

    if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
    {
      if (!*(v13 + 16))
      {
        break;
      }

      goto LABEL_18;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      break;
    }

LABEL_18:
    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_73;
    }

    if (*(v13 + 16))
    {
      goto LABEL_70;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  sub_1000066AC((v62 + 16), *(v62 + 40));
  v7(v4, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v1);
  v15 = dispatch thunk of AAUIAwardsDataProviding.achievements(forSection:)();
  v10(v4, v1);
  if (v15 >> 62)
  {
    goto LABEL_47;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_27:
    v17 = 0;
    v18 = v15 & 0xC000000000000001;
    v19 = v15 & 0xFFFFFFFFFFFFFF8;
    v20 = &selRef_setNavigationBarHidden_animated_;
    v60 = v16;
    v61 = v15;
    v58 = v15 & 0xFFFFFFFFFFFFFF8;
    v59 = v15 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_46;
        }

        v25 = *(v15 + 8 * v17 + 32);
      }

      v26 = v25;
      v27 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (!v16)
        {
          break;
        }

        goto LABEL_27;
      }

      if ([v25 v20[507]])
      {
        v28 = [v26 progress];
        if (v28)
        {
          v29 = v28;
          v30 = [v26 goal];
          if (!v30)
          {
            v37 = v29;
LABEL_43:

            v20 = &selRef_setNavigationBarHidden_animated_;
            goto LABEL_29;
          }

          v31 = v30;
          v32 = [v29 _unit];
          v33 = objc_opt_self();
          v34 = v32;
          v35 = [v33 countUnit];
          sub_1000059F8(0, &qword_1008DEED0);
          v36 = static NSObject.== infix(_:_:)();

          if (v36)
          {
            [v31 doubleValueForUnit:v34];
            v22 = v21;
            [v29 doubleValueForUnit:v34];
            v24 = v23;

            v16 = v60;
            v15 = v61;
            v19 = v58;
            v18 = v59;
            v20 = &selRef_setNavigationBarHidden_animated_;
            if (v22 - v24 <= 1.0)
            {
              goto LABEL_81;
            }

            goto LABEL_29;
          }

          v37 = v34;
          v38 = [v33 largeCalorieUnit];
          v39 = static NSObject.== infix(_:_:)();

          if ((v39 & 1) == 0)
          {

            v16 = v60;
            v15 = v61;
            v19 = v58;
            v18 = v59;
            goto LABEL_43;
          }

          [v29 doubleValueForUnit:v37];
          v41 = v40;
          [v31 doubleValueForUnit:v37];
          v43 = v42;

          v16 = v60;
          v15 = v61;
          v19 = v58;
          v18 = v59;
          v20 = &selRef_setNavigationBarHidden_animated_;
          if (v43 * 0.9 < v41)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_29:

      ++v17;
    }

    while (v27 != v16);
  }

  sub_1000066AC((v62 + 16), *(v62 + 40));
  v44 = dispatch thunk of AAUIAwardsDataProviding.topThreeAchievements()();
  v45 = v44;
  v63 = _swiftEmptyArrayStorage;
  if (v44 >> 62)
  {
    goto LABEL_63;
  }

  for (j = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v47 = 0;
    while (1)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v48 = *(v45 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if ([v48 unearned])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v47;
      if (v50 == j)
      {
        v13 = v63;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_65:

  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_68;
    }
  }

  else if (*(v13 + 16))
  {
LABEL_68:
    if ((v13 & 0xC000000000000001) != 0)
    {
LABEL_73:
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_71;
    }

    if (*(v13 + 16))
    {
LABEL_70:
      v52 = *(v13 + 32);
LABEL_71:
      v26 = v52;

      return v26;
    }

    __break(1u);
LABEL_83:
    v54 = result;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    result = v54;
    if (!v55)
    {
      goto LABEL_84;
    }

    goto LABEL_77;
  }

  sub_1000066AC((v62 + 16), *(v62 + 40));
  result = dispatch thunk of AAUIAwardsDataProviding.topThreeAchievements()();
  if (result >> 62)
  {
    goto LABEL_83;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_84:

    return 0;
  }

LABEL_77:
  if ((result & 0xC000000000000001) != 0)
  {
    v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_80:
    v26 = v53;
LABEL_81:

    return v26;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(result + 32);
    goto LABEL_80;
  }

  __break(1u);
  return result;
}

id sub_1005AD13C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return v2;
}

void *sub_1005AD16C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1005AD1B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1005ABA10(a1, v4, v5, v7, v6);
}

uint64_t sub_1005AD2D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005AD314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_1005ABA10(a1, v4, v5, v7, v6);
}

id sub_1005AD544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessIntelligenceConnectionBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FitnessIntelligenceConnectionBridge()
{
  result = qword_1008F4490;
  if (!qword_1008F4490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005AD5D0()
{
  result = type metadata accessor for FitnessIntelligenceConnection();
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

uint64_t sub_1005AD660@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue;
  v5 = type metadata accessor for FitnessIntelligenceConnection();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1005AD744()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925F00);
  sub_10001AC90(v0, qword_100925F00);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1005AD7A8()
{
  v0 = sub_100140278(&qword_1008F45C8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008F45D0);
  __chkstk_darwin(v1);
  sub_10036F8C4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x746F7420776F6853;
  v2._object = 0xEB00000000206C61;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100140278(&qword_1008F45D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x636E617473696420;
  v3._object = 0xEE0020726F662065;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_100140278(&qword_1008F45E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100140278(&qword_1008F45E8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1005AD9FC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for IntentDialog();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008DEC88);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005ADB50, 0, 0);
}

uint64_t sub_1005ADB50()
{
  *(v0 + 112) = **(v0 + 48);
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1005ADC04;
  v3 = *(v0 + 104);

  return sub_1005ADFC0(v3, v1);
}

uint64_t sub_1005ADC04()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1005ADF44;
  }

  else
  {
    v2 = sub_1005ADD18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005ADD18()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v16 = v0[8];
  v17 = v0[12];
  v15 = v0[11];
  IntentParameter.wrappedValue.getter();
  v4 = sub_1005B26D8(v1, v0[3]);
  v6 = v5;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x746F742072756F59;
  v7._object = 0xEB00000000206C61;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  IntentParameter.wrappedValue.getter();
  sub_1005B27D0();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)();
  v8._countAndFlagsBits = 0x636E617473696420;
  v8._object = 0xED00002073692065;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  v9._countAndFlagsBits = v4;
  v9._object = v6;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);

  v10._countAndFlagsBits = 0x20726F6620;
  v10._object = 0xE500000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  sub_1005AEB3C();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  IntentDialog.init(stringInterpolation:)();
  sub_10014A6B0(&qword_1008DEC80, &qword_1008DEC88);
  static IntentResult.result<A>(value:dialog:)();
  (*(v3 + 8))(v2, v16);
  (*(v17 + 8))(v1, v15);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005ADF44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005ADFC0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100140278(&qword_1008E1890);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005AE148, 0, 0);
}

uint64_t sub_1005AE148()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  IntentParameter.wrappedValue.getter();
  v5 = *(v0 + 160);
  IntentParameter.wrappedValue.getter();
  sub_1005AF2F0(v5, *(v0 + 161), v1);
  v6 = objc_opt_self();
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = *(v3 + 8);
  v8(v2, v4);
  DateInterval.end.getter();
  v9 = Date._bridgeToObjectiveC()().super.isa;
  v8(v2, v4);
  v10 = [v6 predicateForSamplesWithStartDate:isa endDate:v9 options:1];
  *(v0 + 120) = v10;

  sub_100140278(&qword_1008E18A0);
  sub_100140278(&qword_1008E1898);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  sub_1000059F8(0, &qword_1008ED7C0);
  v11 = v10;
  static HKSamplePredicate.workout(_:)();

  sub_100140278(&qword_1008E18A8);
  sub_100140278(&qword_1008E18B0);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v12 = *(v0 + 16);
  *(v0 + 128) = v12;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_1005AE498;
  v14 = *(v0 + 48);

  return HKSampleQueryDescriptor.result(for:)(v12, v14);
}

uint64_t sub_1005AE498(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_1005AEA68;
  }

  else
  {
    v5 = sub_1005AE5C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_1005AE5C8()
{
  result = _HKWorkoutDistanceTypeForActivityType();
  v48 = result;
  if (result)
  {
    v2 = v0[18];
    if (v2 >> 62)
    {
      goto LABEL_37;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[18];
    while (v3)
    {
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      v44 = v3;
      v45 = v4 + 32;
      v8 = 0.0;
      v9 = &selRef_unitFormatString;
      v42 = v2 & 0xFFFFFFFFFFFFFF8;
      v43 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_35;
          }

          v10 = *(v45 + 8 * v5);
        }

        v11 = v10;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v2 = v0[4];
        if ([v10 v9[86]] == v2)
        {
          v13 = [v11 statisticsForType:v48];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 sumQuantity];

            if (v15)
            {
              v16 = [objc_opt_self() meterUnit];
              [v15 doubleValueForUnit:v16];
              v18 = v17;

              v8 = v8 + v18;
              goto LABEL_6;
            }
          }

LABEL_5:

          goto LABEL_6;
        }

        if ([v11 v9[86]] != 82)
        {
          goto LABEL_5;
        }

        v47 = v11;
        v19 = [v11 workoutActivities];
        sub_1000059F8(0, &qword_1008EAF90);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v20 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          if (!v21)
          {
LABEL_32:

            v9 = &selRef_unitFormatString;
            goto LABEL_6;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_32;
          }
        }

        if (v21 < 1)
        {
          goto LABEL_36;
        }

        v22 = 0;
        v2 = v20 & 0xC000000000000001;
        do
        {
          if (v2)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v20 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v0[4];
          v26 = [v23 workoutConfiguration];
          v27 = [v26 activityType];

          if (v27 == v25 && (v28 = [v24 statisticsForType:v48]) != 0 && (v29 = v28, v30 = objc_msgSend(v28, "sumQuantity"), v29, v30))
          {
            v31 = [objc_opt_self() meterUnit];
            [v30 doubleValueForUnit:v31];
            v33 = v32;

            v8 = v8 + v33;
          }

          else
          {
          }

          ++v22;
        }

        while (v21 != v22);

        v6 = v43;
        v3 = v44;
        v7 = v42;
        v9 = &selRef_unitFormatString;
LABEL_6:
        if (v5 == v3)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      v4 = v0[18];
    }

LABEL_38:
    v34 = v0[14];
    v35 = v0[15];
    v36 = v0[13];
    v46 = v0[12];
    v38 = v0[7];
    v37 = v0[8];
    v39 = v0[6];

    v40 = [objc_opt_self() meters];
    sub_1000059F8(0, &qword_1008DEE38);
    Measurement.init(value:unit:)();

    (*(v38 + 8))(v37, v39);
    (*(v36 + 8))(v34, v46);

    v41 = v0[1];

    return v41();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005AEA68()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

void sub_1005AEB3C()
{
  v0 = 1936287860;
  v1 = type metadata accessor for Date();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for DateInterval();
  v48 = *(v14 - 8);
  v49 = v14;
  __chkstk_darwin(v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = [objc_allocWithZone(NSDateFormatter) init];
  [v50 setDateStyle:3];
  IntentParameter.wrappedValue.getter();
  if (v51)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v0 = 1953718636;
    }

    v47 = v0;
  }

  else
  {
    v47 = 1936287860;
  }

  IntentParameter.wrappedValue.getter();
  v18 = v51;
  IntentParameter.wrappedValue.getter();
  sub_1005AF2F0(v18, v51, v16);
  IntentParameter.wrappedValue.getter();
  if (!v51)
  {
    v51 = v47;
    v52 = 0xE400000000000000;
    v26._countAndFlagsBits = 0x6B65657720;
    v26._object = 0xE500000000000000;
    String.append(_:)(v26);

LABEL_21:
    (*(v48 + 8))(v16, v49);
    return;
  }

  if (v51 != 1)
  {
    static Calendar.current.getter();
    sub_100140278(&unk_1008E51B0);
    v27 = type metadata accessor for Calendar.Component();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1006D46C0;
    (*(v28 + 104))(v30 + v29, enum case for Calendar.Component.year(_:), v27);
    sub_10001C970(v30);
    swift_setDeallocating();
    (*(v28 + 8))(v30 + v29, v27);
    swift_deallocClassInstance();
    DateInterval.start.getter();
    Calendar.dateComponents(_:from:)();

    (*(v45 + 8))(v3, v46);
    (*(v43 + 8))(v6, v44);
    v31 = DateComponents.year.getter();
    v32 = (v42 + 8);
    if (v33)
    {
      v51 = v47;
      v52 = 0xE400000000000000;
      v34._countAndFlagsBits = 0x7261657920;
      v34._object = 0xE500000000000000;
      String.append(_:)(v34);
    }

    else
    {
      v40 = v31;

      v51 = v40;
      dispatch thunk of CustomStringConvertible.description.getter();
    }

    (*v32)(v10, v41);
    goto LABEL_21;
  }

  static Calendar.current.getter();
  sub_100140278(&unk_1008E51B0);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006D46C0;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.month(_:), v19);
  sub_10001C970(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  DateInterval.start.getter();
  Calendar.dateComponents(_:from:)();

  (*(v45 + 8))(v3, v46);
  (*(v43 + 8))(v6, v44);
  v23 = DateComponents.month.getter();
  if (v24)
  {
    v51 = v47;
    v52 = 0xE400000000000000;
    v25._countAndFlagsBits = 0x68746E6F6D20;
    v25._object = 0xE600000000000000;
    String.append(_:)(v25);

LABEL_18:
    (*(v42 + 8))(v13, v41);
    goto LABEL_21;
  }

  v35 = v23 - 1;
  v36 = v50;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v37 = [v50 monthSymbols];
  if (v37)
  {
    v38 = v37;

    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v35 & 0x8000000000000000) == 0)
    {
      if (v35 < *(v39 + 16))
      {

        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1005AF2F0@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v89) = a2;
  LODWORD(v90) = a1;
  v92 = a3;
  v87 = type metadata accessor for Calendar.Component();
  v3 = *(v87 - 8);
  __chkstk_darwin(v87);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v6 - 8);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v78 - v9;
  __chkstk_darwin(v10);
  v79 = &v78 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = &v78 - v16;
  __chkstk_darwin(v17);
  v83 = &v78 - v18;
  __chkstk_darwin(v19);
  v85 = &v78 - v20;
  __chkstk_darwin(v21);
  v82 = &v78 - v22;
  __chkstk_darwin(v23);
  v25 = &v78 - v24;
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  __chkstk_darwin(v29);
  v31 = &v78 - v30;
  __chkstk_darwin(v32);
  v34 = &v78 - v33;
  __chkstk_darwin(v35);
  v37 = &v78 - v36;
  v88 = type metadata accessor for Calendar();
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v93 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  Date.init()();
  if ((v89 & 1) == 0)
  {
    sub_1005AFC1C(v90, v37, v34);
    v52 = *(v13 + 16);
    v52(v31, v34, v12);
    v52(v28, v37, v12);
    DateInterval.init(start:end:)();
    v53 = *(v13 + 8);
    v53(v34, v12);
LABEL_21:
    v53(v37, v12);
    v75 = v88;
    v48 = v91;
    return (*(v48 + 8))(v93, v75);
  }

  v89 = v34;
  v78 = v31;
  v39 = (v3 + 104);
  v40 = (v3 + 8);
  v41 = (v13 + 48);
  if (!v90)
  {
    sub_1005AFC1C(0, v37, v25);
    v54 = v87;
    (*v39)(v5, enum case for Calendar.Component.weekOfYear(_:), v87);
    v55 = v79;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v56 = v54;
    v57 = v55;
    (*v40)(v5, v56);
    v58 = *v41;
    if ((*v41)(v57, 1, v12) == 1)
    {
      v59 = *(v13 + 16);
      v59(v82, v37, v12);
      v60 = v58(v57, 1, v12);
      v61 = v78;
      if (v60 != 1)
      {
        sub_1001F145C(v57);
      }

      v62 = v89;
      v63 = v82;
    }

    else
    {
      v63 = v82;
      (*(v13 + 32))(v82, v57, v12);
      v59 = *(v13 + 16);
      v61 = v78;
      v62 = v89;
    }

    v59(v62, v63, v12);
    v59(v61, v25, v12);
    DateInterval.init(start:end:)();
    v53 = *(v13 + 8);
    v53(v63, v12);
    v53(v25, v12);
    goto LABEL_21;
  }

  if (v90 == 1)
  {
    sub_1005AFC1C(1, v37, v85);
    v42 = v87;
    (*v39)(v5, enum case for Calendar.Component.month(_:), v87);
    v43 = v80;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v40)(v5, v42);
    v44 = *v41;
    if ((*v41)(v43, 1, v12) == 1)
    {
      v45 = *(v13 + 16);
      v45(v83, v37, v12);
      v46 = v44(v43, 1, v12) == 1;
      v47 = v43;
      v48 = v91;
      v49 = v78;
      if (!v46)
      {
        sub_1001F145C(v47);
      }

      v50 = v89;
      v51 = v83;
    }

    else
    {
      v51 = v83;
      (*(v13 + 32))(v83, v43, v12);
      v45 = *(v13 + 16);
      v48 = v91;
      v49 = v78;
      v50 = v89;
    }

    v45(v50, v51, v12);
    v71 = v45;
    v72 = v85;
    v71(v49, v85, v12);
    DateInterval.init(start:end:)();
    v73 = *(v13 + 8);
    v73(v51, v12);
    v74 = v72;
  }

  else
  {
    sub_1005AFC1C(2, v37, v86);
    v64 = v87;
    (*v39)(v5, enum case for Calendar.Component.year(_:), v87);
    v65 = v81;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v40)(v5, v64);
    v66 = *v41;
    if ((*v41)(v65, 1, v12) == 1)
    {
      v90 = *(v13 + 16);
      v90(v84, v37, v12);
      v46 = v66(v65, 1, v12) == 1;
      v67 = v65;
      v48 = v91;
      v68 = v78;
      if (!v46)
      {
        sub_1001F145C(v67);
      }

      v69 = v90;
      v70 = v84;
      v90(v89, v84, v12);
    }

    else
    {
      v70 = v84;
      (*(v13 + 32))(v84, v65, v12);
      v69 = *(v13 + 16);
      v48 = v91;
      v68 = v78;
      v69(v89, v70, v12);
    }

    v76 = v86;
    v69(v68, v86, v12);
    DateInterval.init(start:end:)();
    v73 = *(v13 + 8);
    v73(v70, v12);
    v74 = v76;
  }

  v73(v74, v12);
  v73(v37, v12);
  v75 = v88;
  return (*(v48 + 8))(v93, v75);
}

uint64_t sub_1005AFC1C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v56 = a1;
  v64 = a3;
  v3 = type metadata accessor for DateComponents();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v51 - v7;
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v11 - 8);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v55 = &v51 - v14;
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for Date();
  v62 = *(v18 - 8);
  v63 = v18;
  __chkstk_darwin(v18);
  v51 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v51 - v21;
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v25 = type metadata accessor for Calendar();
  v57 = *(v25 - 8);
  v58 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100140278(&unk_1008E51B0);
  v28 = type metadata accessor for Calendar.Component();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  if (v56)
  {
    if (v56 == 1)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1006D1F70;
      v33 = *(v29 + 104);
      v33(v32 + v31, enum case for Calendar.Component.year(_:), v28);
      v33(v32 + v31 + v30, enum case for Calendar.Component.month(_:), v28);
      sub_10001C970(v32);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v34 = v53;
      v35 = v61;
      Calendar.dateComponents(_:from:)();

      v36 = v55;
      Calendar.date(from:)();
      (*(v59 + 8))(v34, v60);
      (*(v57 + 8))(v27, v58);
      v38 = v62;
      v37 = v63;
      v39 = *(v62 + 48);
      if (v39(v36, 1, v63) != 1)
      {
        v24 = v52;
        (*(v38 + 32))(v52, v36, v37);
        return (*(v38 + 32))(v64, v24, v37);
      }

      v40 = v52;
      (*(v38 + 16))(v52, v35, v37);
      if (v39(v36, 1, v37) == 1)
      {
        goto LABEL_13;
      }

      v41 = v36;
    }

    else
    {
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1006D46C0;
      (*(v29 + 104))(v46 + v31, enum case for Calendar.Component.year(_:), v28);
      sub_10001C970(v46);
      swift_setDeallocating();
      (*(v29 + 8))(v46 + v31, v28);
      swift_deallocClassInstance();
      v47 = v61;
      Calendar.dateComponents(_:from:)();

      v48 = v54;
      Calendar.date(from:)();
      (*(v59 + 8))(v5, v60);
      (*(v57 + 8))(v27, v58);
      v38 = v62;
      v37 = v63;
      v49 = *(v62 + 48);
      if (v49(v48, 1, v63) != 1)
      {
        v24 = v51;
        (*(v38 + 32))(v51, v48, v37);
        return (*(v38 + 32))(v64, v24, v37);
      }

      v40 = v51;
      (*(v38 + 16))(v51, v47, v37);
      if (v49(v48, 1, v37) == 1)
      {
        goto LABEL_13;
      }

      v41 = v48;
    }

    sub_1001F145C(v41);
LABEL_13:
    v24 = v40;
    return (*(v38 + 32))(v64, v24, v37);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1006D1F70;
  v43 = *(v29 + 104);
  v43(v42 + v31, enum case for Calendar.Component.yearForWeekOfYear(_:), v28);
  v43(v42 + v31 + v30, enum case for Calendar.Component.weekOfYear(_:), v28);
  sub_10001C970(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v44 = v61;
  Calendar.dateComponents(_:from:)();

  Calendar.date(from:)();
  (*(v59 + 8))(v10, v60);
  (*(v57 + 8))(v27, v58);
  v38 = v62;
  v37 = v63;
  v45 = *(v62 + 48);
  if (v45(v17, 1, v63) == 1)
  {
    (*(v38 + 16))(v24, v44, v37);
    if (v45(v17, 1, v37) != 1)
    {
      sub_1001F145C(v17);
    }
  }

  else
  {
    (*(v38 + 32))(v24, v17, v37);
  }

  return (*(v38 + 32))(v64, v24, v37);
}

uint64_t sub_1005B043C()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v17 = type metadata accessor for LocalizedStringResource();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  sub_100140278(&qword_1008F45F8);
  v15 = sub_100140278(&qword_1008EF998);
  v5 = *(*(v15 - 8) + 72);
  v6 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v16 = 2 * v5;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D64F0;
  v8 = (v7 + v6);
  *v8 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v9 = v4 + 56;
  v10 = *(v4 + 56);
  v14 = v9;
  v11 = v17;
  v10(v3, 1, 1, v17);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v8[v5] = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v10(v3, 1, 1, v11);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v8[v16] = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v10(v3, 1, 1, v17);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v12 = sub_1004CCAB0(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100925F30 = v12;
  return result;
}

uint64_t sub_1005B0818(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x68746E6F6DLL;
  if (v2 != 1)
  {
    v4 = 1918985593;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1801807223;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x68746E6F6DLL;
  if (*a2 != 1)
  {
    v8 = 1918985593;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1801807223;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

unint64_t sub_1005B0900()
{
  result = qword_1008F44A0;
  if (!qword_1008F44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44A0);
  }

  return result;
}

Swift::Int sub_1005B0954()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005B09E4()
{
  String.hash(into:)();
}

Swift::Int sub_1005B0A60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005B0AEC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005B2824(*a1);
  *a2 = result;
  return result;
}

void sub_1005B0B1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x68746E6F6DLL;
  if (v2 != 1)
  {
    v5 = 1918985593;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1801807223;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1005B0B6C()
{
  result = qword_1008F44A8;
  if (!qword_1008F44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44A8);
  }

  return result;
}

unint64_t sub_1005B0BC4()
{
  result = qword_1008F44B0;
  if (!qword_1008F44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44B0);
  }

  return result;
}

unint64_t sub_1005B0C1C()
{
  result = qword_1008F44B8;
  if (!qword_1008F44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44B8);
  }

  return result;
}

unint64_t sub_1005B0C74()
{
  result = qword_1008F44C0;
  if (!qword_1008F44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44C0);
  }

  return result;
}

unint64_t sub_1005B0CC8()
{
  result = qword_1008F44C8;
  if (!qword_1008F44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44C8);
  }

  return result;
}

unint64_t sub_1005B0D20()
{
  result = qword_1008F44D0;
  if (!qword_1008F44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44D0);
  }

  return result;
}

unint64_t sub_1005B0DC4()
{
  result = qword_1008F44D8;
  if (!qword_1008F44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44D8);
  }

  return result;
}

uint64_t sub_1005B0E18(uint64_t a1)
{
  v2 = sub_1005B0DC4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1005B0E68()
{
  result = qword_1008F44E0;
  if (!qword_1008F44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44E0);
  }

  return result;
}

unint64_t sub_1005B0EC0()
{
  result = qword_1008F44E8;
  if (!qword_1008F44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44E8);
  }

  return result;
}

unint64_t sub_1005B0F18()
{
  result = qword_1008F44F0;
  if (!qword_1008F44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F44F0);
  }

  return result;
}

uint64_t sub_1005B0F90(uint64_t a1)
{
  v2 = sub_1005B0D20();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1005B105C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v8, a2);
  sub_10001AC90(v8, a2);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v7 + 56))(v5, 1, 1, v6);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1005B11C8()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v15 = type metadata accessor for LocalizedStringResource();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  sub_100140278(&qword_1008F45F0);
  v5 = sub_100140278(&qword_1008EF988);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D1F70;
  v9 = (v8 + v7);
  v14 = *(v5 + 48);
  *v9 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v10 = *(v4 + 56);
  v11 = v15;
  v10(v3, 1, 1, v15);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v14 = *(v5 + 48);
  v9[v6] = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v10(v3, 1, 1, v11);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v12 = sub_1004CCC98(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100925F50 = v12;
  return result;
}

uint64_t sub_1005B1504(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953718636;
  }

  else
  {
    v3 = 0x746E6572727563;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953718636;
  }

  else
  {
    v5 = 0x746E6572727563;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_1005B15A8()
{
  result = qword_1008F4508;
  if (!qword_1008F4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4508);
  }

  return result;
}

Swift::Int sub_1005B15FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005B1678()
{
  String.hash(into:)();
}

Swift::Int sub_1005B16E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005B1758@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008461A0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1005B17B8(uint64_t *a1@<X8>)
{
  v2 = 1953718636;
  if (!*v1)
  {
    v2 = 0x746E6572727563;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1005B17F4()
{
  result = qword_1008F4510;
  if (!qword_1008F4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4510);
  }

  return result;
}

unint64_t sub_1005B184C()
{
  result = qword_1008F4518;
  if (!qword_1008F4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4518);
  }

  return result;
}

unint64_t sub_1005B18A4()
{
  result = qword_1008F4520;
  if (!qword_1008F4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4520);
  }

  return result;
}

unint64_t sub_1005B18FC()
{
  result = qword_1008F4528;
  if (!qword_1008F4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4528);
  }

  return result;
}

unint64_t sub_1005B1950()
{
  result = qword_1008F4530;
  if (!qword_1008F4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4530);
  }

  return result;
}

unint64_t sub_1005B19A8()
{
  result = qword_1008F4538;
  if (!qword_1008F4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4538);
  }

  return result;
}

unint64_t sub_1005B1AA0()
{
  result = qword_1008F4540;
  if (!qword_1008F4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4540);
  }

  return result;
}

uint64_t sub_1005B1AF4(uint64_t a1)
{
  v2 = sub_1005B1AA0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1005B1B44()
{
  result = qword_1008F4548;
  if (!qword_1008F4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4548);
  }

  return result;
}

unint64_t sub_1005B1B9C()
{
  result = qword_1008F4550;
  if (!qword_1008F4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4550);
  }

  return result;
}

unint64_t sub_1005B1BF4()
{
  result = qword_1008F4558;
  if (!qword_1008F4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4558);
  }

  return result;
}

uint64_t sub_1005B1C6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1005B1CD0(uint64_t a1)
{
  v2 = sub_1005B19A8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1005B1D74()
{
  result = qword_1008F4570;
  if (!qword_1008F4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4570);
  }

  return result;
}

unint64_t sub_1005B1DCC()
{
  result = qword_1008F4578;
  if (!qword_1008F4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4578);
  }

  return result;
}

uint64_t sub_1005B1EA8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10001AC90(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1005B1F54(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1002A4F38;

  return sub_1005AD9FC(a1);
}

double sub_1005B2000@<D0>(uint64_t a1@<X8>)
{
  sub_1005B20B0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1005B2044(uint64_t a1)
{
  v2 = sub_10036F8C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1005B20B0@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v38 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v40 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v29[1] = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100140278(&qword_1008F45A8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v31 = *(v14 + 56);
  v39 = v14 + 56;
  v31(v12, 0, 1, v13);
  *&v41 = 0;
  BYTE8(v41) = 1;
  v16 = type metadata accessor for IntentDialog();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v29[2] = v17 + 56;
  v19 = v9;
  v18(v9, 1, 1, v16);
  v18(v6, 1, 1, v16);
  v37 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v1 + 104);
  v35 = v3;
  v36 = v1 + 104;
  v20 = v38;
  v30(v3);
  sub_100200F48();
  v33 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v32 = sub_100140278(&qword_1008F45B0);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v21 = v31;
  v31(v12, 0, 1, v40);
  LOBYTE(v41) = 3;
  v18(v19, 1, 1, v16);
  v18(v6, 1, 1, v16);
  v22 = v20;
  v23 = v30;
  (v30)(v35, v37, v22);
  sub_1005B0DC4();
  v32 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_100140278(&qword_1008F45B8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v21(v12, 0, 1, v40);
  LOBYTE(v41) = 2;
  v18(v19, 1, 1, v16);
  v18(v6, 1, 1, v16);
  (v23)(v35, v37, v38);
  sub_1005B1AA0();
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  static AppDependencyManager.shared.getter();
  v25 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v27 = v34;
  v28 = v32;
  *v34 = v33;
  v27[1] = v28;
  v27[2] = v24;
  v27[3] = v25;
  v27[4] = result;
  return result;
}

uint64_t sub_1005B26D8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(FIUIWorkoutActivityType) initWithActivityTypeIdentifier:a2 isIndoor:0];
  v3 = FIUIDistanceTypeForActivityType();
  AppDependency.wrappedValue.getter();
  sub_100140278(&qword_1008DEC88);
  Measurement.value.getter();
  v4 = [v7 localizedNaturalScaleStringWithDistanceInMeters:v3 distanceType:3 unitStyle:0 usedUnit:2 decimalTrimmingMode:?];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v5;
}

unint64_t sub_1005B27D0()
{
  result = qword_1008F45C0;
  if (!qword_1008F45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F45C0);
  }

  return result;
}

unint64_t sub_1005B2824(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100846110, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005B28F4()
{
  result = qword_1008F4600;
  if (!qword_1008F4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4600);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutChartGroupView()
{
  result = qword_1008F4668;
  if (!qword_1008F4668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005B29BC()
{
  sub_10058D8E4();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008F03E8);
    if (v1 <= 0x3F)
    {
      sub_1003EEA78();
      if (v2 <= 0x3F)
      {
        sub_1005B2AB0();
        if (v3 <= 0x3F)
        {
          sub_10006DC4C();
          if (v4 <= 0x3F)
          {
            sub_1005B2B44();
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

void sub_1005B2AB0()
{
  if (!qword_1008F4678)
  {
    type metadata accessor for WorkoutChartDataStore();
    sub_1005B9C94(&qword_1008F4680, type metadata accessor for WorkoutChartDataStore);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F4678);
    }
  }
}

void sub_1005B2B44()
{
  if (!qword_1008F4688)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F4688);
    }
  }
}

uint64_t sub_1005B2BB8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for WorkoutChartGroupView();
  v3 = v2[5];
  *(a1 + v3) = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  v4 = a1 + v2[8];
  State.init(wrappedValue:)();
  *v4 = v13;
  *(v4 + 1) = v14;
  v5 = a1 + v2[9];
  State.init(wrappedValue:)();
  *v5 = v13;
  *(v5 + 1) = v14;
  AccessibilityFocusState.init<>()();
  v6 = (a1 + v2[7]);
  type metadata accessor for WorkoutChartDataStore();
  sub_1005B9C94(&qword_1008F4680, type metadata accessor for WorkoutChartDataStore);

  *v6 = ObservedObject.init(wrappedValue:)();
  v6[1] = v7;
  v8 = (a1 + v2[6]);
  type metadata accessor for WorkoutChartProperties();
  sub_1005B9C94(&unk_1008EC148, type metadata accessor for WorkoutChartProperties);
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;

  *v8 = v9;
  v8[1] = v11;
  return result;
}

uint64_t sub_1005B2D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_100140278(&qword_1008DB030);
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v50 = a2;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008F46D0);
  v8 = sub_100141EEC(&qword_1008F46D8);
  v9 = sub_100141EEC(&unk_1008F73A0);
  v10 = sub_100141EEC(&qword_1008F46E0);
  v11 = sub_1005B8E9C();
  v52 = v10;
  v53 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_100250B00();
  v52 = v8;
  v53 = v9;
  v54 = OpaqueTypeConformance2;
  v55 = v13;
  swift_getOpaqueTypeConformance2();
  v46 = v7;
  ScrollView.init(_:showsIndicators:content:)();
  v14 = type metadata accessor for WorkoutChartGroupView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  sub_1005B9D44(a2, &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChartGroupView);
  v17 = type metadata accessor for GeometryProxy();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v21 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v20);
  type metadata accessor for MainActor();
  v22 = static MainActor.shared.getter();
  v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v24 = (v16 + *(v18 + 80) + v23) & ~*(v18 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = &protocol witness table for MainActor;
  sub_1005B9CDC(&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23, type metadata accessor for WorkoutChartGroupView);
  (*(v18 + 32))(v25 + v24, v21, v17);
  v26 = type metadata accessor for TaskPriority();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_10069AF38(2, 26, 4, 0))
  {
    v44 = type metadata accessor for _TaskModifier2();
    v45 = &v42;
    v43 = *(v44 - 8);
    __chkstk_darwin(v44);
    v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v52 = 0xD000000000000033;
    v53 = 0x8000000100764F40;
    v51 = 75;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v34 = __chkstk_darwin(v33);
    (*(v27 + 16))(&v42 - v29, &v42 - v29, v26, v34);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v27 + 8))(&v42 - v29, v26);
    v35 = v49;
    (*(v47 + 32))(v49, v46, v48);
    v36 = sub_100140278(&qword_1008DB038);
    return (*(v43 + 32))(v35 + *(v36 + 36), v31, v44);
  }

  else
  {
    v38 = sub_100140278(&qword_1008DB040);
    v39 = v49;
    v40 = (v49 + *(v38 + 36));
    v41 = type metadata accessor for _TaskModifier();
    (*(v27 + 32))(&v40[*(v41 + 20)], &v42 - v29, v26);
    *v40 = &unk_1006FC4A8;
    *(v40 + 1) = v25;
    return (*(v47 + 32))(v39, v46, v48);
  }
}

uint64_t sub_1005B3408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for WorkoutChartGroupView();
  v4 = v3 - 8;
  v32 = *(v3 - 8);
  v31 = *(v32 + 64);
  __chkstk_darwin(v3);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v33);
  v27 = &v27 - v6;
  v7 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v7);
  v8 = sub_100140278(&qword_1008F46E0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_100140278(&qword_1008F46D8);
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v35 = a1;
  static HorizontalAlignment.center.getter();
  LODWORD(v38) = 0;
  sub_1005B9C94(&qword_1008F4700, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100140278(&qword_1008F4708);
  sub_10014A6B0(&qword_1008F4710, &qword_1008F4708);
  LazyVStack.init(alignment:spacing:pinnedViews:content:)();
  v15 = static Edge.Set.all.getter();
  v16 = &v10[*(v8 + 36)];
  *v16 = v15;
  *(v16 + 8) = xmmword_1006D6F10;
  *(v16 + 24) = xmmword_1006D6F10;
  v16[40] = 0;
  sub_100140278(&unk_1008F73B0);
  AccessibilityFocusState.projectedValue.getter();
  v17 = sub_1005B8E9C();
  View.accessibilityFocused(_:)();

  sub_10000EA04(v10, &qword_1008F46E0);
  v18 = *(a1 + *(v4 + 32) + 8);
  v19 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  v20 = v27;
  sub_10001B104(v18 + v19, v27, &unk_1008F73A0);
  v21 = a1;
  v22 = v30;
  sub_1005B9D44(v21, v30, type metadata accessor for WorkoutChartGroupView);
  v23 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v24 = swift_allocObject();
  sub_1005B9CDC(v22, v24 + v23, type metadata accessor for WorkoutChartGroupView);
  v36 = v8;
  v37 = v17;
  swift_getOpaqueTypeConformance2();
  sub_100250B00();
  v25 = v28;
  View.onChange<A>(of:initial:_:)();

  sub_10000EA04(v20, &unk_1008F73A0);
  return (*(v29 + 8))(v14, v25);
}

uint64_t sub_1005B391C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = sub_100140278(&qword_1008F4728);
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v70 = &v67 - v4;
  v5 = sub_100140278(&qword_1008F4730);
  __chkstk_darwin(v5 - 8);
  v83 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v67 - v8;
  v9 = sub_100140278(&qword_1008F4738);
  v78 = *(v9 - 8);
  v79 = v9;
  __chkstk_darwin(v9);
  v68 = &v67 - v10;
  v11 = sub_100140278(&qword_1008F4740);
  __chkstk_darwin(v11 - 8);
  v82 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v67 - v14;
  v15 = sub_100140278(&qword_1008F4748);
  v74 = *(v15 - 8);
  v75 = v15;
  __chkstk_darwin(v15);
  v69 = &v67 - v16;
  v17 = sub_100140278(&qword_1008F4750);
  __chkstk_darwin(v17 - 8);
  v88 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v86 = &v67 - v20;
  v73 = sub_100140278(&qword_1008F4758);
  __chkstk_darwin(v73);
  v22 = &v67 - v21;
  v23 = type metadata accessor for WorkoutChartGroupView();
  v24 = v23 - 8;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  v72 = sub_100140278(&qword_1008F4760);
  __chkstk_darwin(v72);
  v28 = &v67 - v27;
  v29 = sub_100140278(&qword_1008F4768);
  v76 = *(v29 - 8);
  v77 = v29;
  __chkstk_darwin(v29);
  v87 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v67 - v32;
  v34 = *(a1 + *(v24 + 36) + 8);
  swift_beginAccess();
  v90 = *(v34 + 16);
  sub_1005B9D44(a1, &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChartGroupView);
  v35 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v36 = swift_allocObject();
  sub_1005B9CDC(&v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for WorkoutChartGroupView);

  sub_100140278(&qword_1008F1958);
  sub_100140278(&qword_1008F4770);
  sub_10014A6B0(&qword_1008F1960, &qword_1008F1958);
  sub_1005B929C();
  sub_10052088C();
  ForEach<>.init(_:content:)();
  sub_1005B48AC(v22);
  static GestureMask.all.getter();
  sub_1005B934C();
  sub_10014A6B0(&qword_1008F47A8, &qword_1008F4758);
  v37 = v33;
  View.gesture<A>(_:including:)();
  sub_10000EA04(v22, &qword_1008F4758);
  sub_10000EA04(v28, &qword_1008F4760);
  if (*(*(v34 + 16) + 16) < 2uLL)
  {
    v43 = 1;
    v40 = v86;
    v45 = v74;
    v44 = v75;
  }

  else
  {
    v38 = v69;
    sub_1005B517C(v69);
    v39 = v74;
    v40 = v86;
    v41 = v38;
    v42 = v75;
    (*(v74 + 32))(v86, v41, v75);
    v43 = 0;
    v44 = v42;
    v45 = v39;
  }

  v46 = 1;
  (*(v45 + 56))(v40, v43, 1, v44);
  v47 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_activityType;
  v48 = [*(v34 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_activityType) effectiveTypeIdentifier];
  v49 = v89;
  if (v48 == 37 && ([*(v34 + v47) isIndoor] & 1) == 0)
  {
    v50 = v68;
    sub_1005B5C88(v68);
    sub_100015E80(v50, v49, &qword_1008F4738);
    v46 = 0;
  }

  v51 = 1;
  (*(v78 + 56))(v49, v46, 1, v79);
  if ([*(v34 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_locationReadings) count] >= 2)
  {
    v52 = v70;
    sub_1005B63EC(v70);
    sub_100015E80(v52, v85, &qword_1008F4728);
    v51 = 0;
  }

  v53 = v85;
  (*(v80 + 56))(v85, v51, 1, v81);
  v54 = v76;
  v55 = *(v76 + 16);
  v56 = v87;
  v57 = v37;
  v71 = v37;
  v58 = v77;
  v55(v87, v57, v77);
  v59 = v40;
  v60 = v88;
  sub_10001B104(v59, v88, &qword_1008F4750);
  v61 = v82;
  sub_10001B104(v49, v82, &qword_1008F4740);
  v62 = v83;
  sub_10001B104(v53, v83, &qword_1008F4730);
  v63 = v84;
  v55(v84, v56, v58);
  v64 = sub_100140278(&qword_1008F47B0);
  sub_10001B104(v60, &v63[v64[12]], &qword_1008F4750);
  sub_10001B104(v61, &v63[v64[16]], &qword_1008F4740);
  sub_10001B104(v62, &v63[v64[20]], &qword_1008F4730);
  sub_10000EA04(v53, &qword_1008F4730);
  sub_10000EA04(v89, &qword_1008F4740);
  sub_10000EA04(v86, &qword_1008F4750);
  v65 = *(v54 + 8);
  v65(v71, v58);
  sub_10000EA04(v62, &qword_1008F4730);
  sub_10000EA04(v61, &qword_1008F4740);
  sub_10000EA04(v88, &qword_1008F4750);
  return (v65)(v87, v58);
}

uint64_t sub_1005B4388@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_100140278(&qword_1008F4788);
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v39 - v6;
  v40 = sub_100140278(&qword_1008DE0B0);
  __chkstk_darwin(v40);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v39 - v9;
  v10 = type metadata accessor for WorkoutChartView();
  __chkstk_darwin(v10);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for WorkoutChartViewModel(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v22 = *a1;
  type metadata accessor for WorkoutChartGroupView();
  v39 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = v48;
  if (*(v48 + 16) && (v24 = sub_1004C63C4(v22), (v25 & 1) != 0))
  {
    sub_1005B9D44(*(v23 + 56) + *(v16 + 72) * v24, v18, type metadata accessor for WorkoutChartViewModel);

    sub_1005B9CDC(v18, v21, type metadata accessor for WorkoutChartViewModel);
    sub_1005B9D44(v21, v14, type metadata accessor for WorkoutChartViewModel);
    v26 = &v14[*(v10 + 20)];
    type metadata accessor for WorkoutChartProperties();
    sub_1005B9C94(&unk_1008EC148, type metadata accessor for WorkoutChartProperties);

    *v26 = ObservedObject.init(wrappedValue:)();
    v26[1] = v27;
    v14[*(v10 + 24)] = 0;
    v28 = v41;
    Divider.init()();
    v29 = static Edge.Set.all.getter();
    v30 = v28 + *(v40 + 36);
    *v30 = v29;
    *(v30 + 8) = xmmword_1006FC3B0;
    *(v30 + 24) = xmmword_1006FC3C0;
    *(v30 + 40) = 0;
    v31 = v42;
    sub_1005B9D44(v14, v42, type metadata accessor for WorkoutChartView);
    v32 = v43;
    sub_10001B104(v28, v43, &qword_1008DE0B0);
    v33 = v44;
    sub_1005B9D44(v31, v44, type metadata accessor for WorkoutChartView);
    v34 = sub_100140278(&qword_1008F48A8);
    sub_10001B104(v32, v33 + *(v34 + 48), &qword_1008DE0B0);
    sub_10000EA04(v28, &qword_1008DE0B0);
    sub_1005B9DAC(v14, type metadata accessor for WorkoutChartView);
    sub_1005B9DAC(v21, type metadata accessor for WorkoutChartViewModel);
    sub_10000EA04(v32, &qword_1008DE0B0);
    sub_1005B9DAC(v31, type metadata accessor for WorkoutChartView);
    v35 = v47;
    sub_1005B9E0C(v33, v47);
    v36 = v35;
    v37 = 0;
  }

  else
  {

    v37 = 1;
    v36 = v47;
  }

  return (*(v45 + 56))(v36, v37, 1, v46);
}

uint64_t sub_1005B48AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = type metadata accessor for DelayedLongPressGesture();
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  __chkstk_darwin(v3);
  v70 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SpatialTapGesture();
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100140278(&qword_1008F0808);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v77 = &v53 - v7;
  v8 = type metadata accessor for WorkoutChartGroupView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = v10;
  v12 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v59);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DragGesture();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008F0810);
  v20 = *(v19 - 8);
  v60 = v19;
  v61 = v20;
  __chkstk_darwin(v19);
  v54 = &v53 - v21;
  v22 = sub_100140278(&qword_1008F4890);
  v62 = *(v22 - 8);
  v63 = v22;
  __chkstk_darwin(v22);
  v76 = &v53 - v23;
  v58 = v14;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v74 = type metadata accessor for WorkoutChartGroupView;
  sub_1005B9D44(v2, v12, type metadata accessor for WorkoutChartGroupView);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = v11;
  v26 = *(v9 + 80);
  v27 = swift_allocObject();
  v73 = type metadata accessor for WorkoutChartGroupView;
  sub_1005B9CDC(v12, v27 + v24, type metadata accessor for WorkoutChartGroupView);
  sub_1005B9C94(&qword_1008EDA18, &type metadata accessor for DragGesture);
  sub_1005B9C94(&qword_1008EDA20, &type metadata accessor for DragGesture.Value);
  Gesture<>.onChanged(_:)();

  (*(v16 + 8))(v18, v15);
  v29 = v74;
  v28 = v75;
  sub_1005B9D44(v75, v12, v74);
  v57 = v25;
  v56 = v26;
  v30 = swift_allocObject() + v24;
  v31 = v12;
  v32 = v12;
  v33 = v73;
  sub_1005B9CDC(v31, v30, v73);
  sub_10014A6B0(&qword_1008F4898, &qword_1008F0810);
  v34 = v60;
  v35 = v54;
  Gesture.onEnded(_:)();

  (*(v61 + 8))(v35, v34);
  static CoordinateSpaceProtocol<>.local.getter();
  v36 = v64;
  SpatialTapGesture.init<A>(count:coordinateSpace:)();
  v55 = v32;
  sub_1005B9D44(v28, v32, v29);
  v37 = swift_allocObject();
  sub_1005B9CDC(v32, v37 + v24, v33);
  sub_1005B9C94(&qword_1008F0818, &type metadata accessor for SpatialTapGesture);
  v38 = v77;
  v39 = v66;
  Gesture.onEnded(_:)();

  (*(v68 + 8))(v36, v39);
  v40 = sub_100140278(&qword_1008F4758);
  v41 = v69 + *(v40 + 52);
  v42 = v65;
  v43 = v67;
  (*(v65 + 16))(v41, v38, v67);
  v44 = sub_100140278(&qword_1008F48A0);
  v45 = v62;
  v46 = v63;
  v47 = v76;
  (*(v62 + 16))(v41 + *(v44 + 52), v76, v63);
  v48 = v70;
  DelayedLongPressGesture.init(minimumDuration:maximumDistance:)();
  v49 = v55;
  sub_1005B9D44(v75, v55, v74);
  v50 = swift_allocObject();
  sub_1005B9CDC(v49, v50 + v24, v73);
  sub_1005B9C94(&qword_1008F0828, &type metadata accessor for DelayedLongPressGesture);
  v51 = v71;
  Gesture.onEnded(_:)();

  (*(v72 + 8))(v48, v51);
  (*(v42 + 8))(v77, v43);
  return (*(v45 + 8))(v47, v46);
}

uint64_t sub_1005B517C@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = type metadata accessor for WorkoutChartGroupView();
  v2 = *(v1 - 8);
  v81 = v1 - 8;
  v79 = v2;
  v78 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v82 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v63 - v5;
  v6 = type metadata accessor for DynamicTypeSize();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v72 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for AccessibilityTraits();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AccessibilityChildBehavior();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008F0A68);
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  v63 = sub_100140278(&qword_1008F0A70);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v15 = &v63 - v14;
  v16 = sub_100140278(&qword_1008F0A78);
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  v68 = sub_100140278(&qword_1008F47B8);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v20 = &v63 - v19;
  v85 = sub_100140278(&qword_1008F47C0);
  __chkstk_darwin(v85);
  v84 = &v63 - v21;
  v22 = sub_100140278(&qword_1008F47C8);
  v23 = *(v22 - 8);
  v75 = v22;
  v76 = v23;
  __chkstk_darwin(v22);
  v86 = &v63 - v24;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v25 = sub_100140278(&qword_1008F0A90);
  sub_1005B7320(&v13[*(v25 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v26 = sub_10014A6B0(&qword_1008F0A98, &qword_1008F0A68);
  View.accessibilityElement(children:)();
  (*(v66 + 8))(v10, v67);
  sub_10000EA04(v13, &qword_1008F0A68);
  v27 = v64;
  static AccessibilityTraits.isButton.getter();
  v87 = v11;
  v88 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v27;
  v29 = v63;
  View.accessibilityAddTraits(_:)();
  (*(v70 + 8))(v28, v71);
  (*(v65 + 8))(v15, v29);
  v18[*(sub_100140278(&qword_1008F0AA0) + 36)] = 0;
  v30 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v32 = &v18[*(v16 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = sub_1004F39AC();
  View.bold(_:)();
  sub_10000EA04(v18, &qword_1008F0A78);
  v34 = v72;
  v35 = v73;
  v36 = v74;
  (*(v73 + 104))(v72, enum case for DynamicTypeSize.large(_:), v74);
  v87 = v16;
  v88 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v84;
  v38 = v68;
  View.dynamicTypeSize(_:)();
  (*(v35 + 8))(v34, v36);
  (*(v69 + 8))(v20, v38);
  v39 = static Color.secondary.getter();
  v40 = swift_getKeyPath();
  v41 = &v37[*(sub_100140278(&qword_1008F47D0) + 36)];
  *v41 = v40;
  v41[1] = v39;
  LOBYTE(v39) = static Edge.Set.all.getter();
  v42 = &v37[*(sub_100140278(&qword_1008F47D8) + 36)];
  *v42 = v39;
  *(v42 + 8) = xmmword_1006FC3D0;
  *(v42 + 24) = xmmword_1006FC3E0;
  v42[40] = 0;
  v43 = &v37[*(v85 + 36)];
  Divider.init()();
  LOBYTE(v40) = static Edge.Set.all.getter();
  v44 = &v43[*(sub_100140278(&qword_1008DE0B0) + 36)];
  *v44 = v40;
  *(v44 + 8) = xmmword_1006FC3B0;
  *(v44 + 24) = xmmword_1006FC3B0;
  v44[40] = 0;
  v45 = static Alignment.bottom.getter();
  v47 = v46;
  v48 = &v43[*(sub_100140278(&qword_1008F47E0) + 36)];
  *v48 = v45;
  v48[1] = v47;
  v49 = v80;
  v50 = v77;
  sub_1005B9D44(v80, v77, type metadata accessor for WorkoutChartGroupView);
  v51 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v52 = swift_allocObject();
  sub_1005B9CDC(v50, v52 + v51, type metadata accessor for WorkoutChartGroupView);
  v79 = sub_1005B962C();
  v53 = v84;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v53, &qword_1008F47C0);
  v54 = v49 + *(v81 + 44);
  v55 = *v54;
  v56 = *(v54 + 8);
  v90 = v55;
  v91 = v56;
  sub_100140278(&qword_1008DDBB8);
  State.projectedValue.getter();
  v81 = v87;
  LODWORD(v84) = v89;
  sub_1005B9D44(v49, v50, type metadata accessor for WorkoutChartGroupView);
  v57 = swift_allocObject();
  sub_1005B9CDC(v50, v57 + v51, type metadata accessor for WorkoutChartGroupView);
  v58 = v82;
  sub_1005B9D44(v49, v82, type metadata accessor for WorkoutChartGroupView);
  v59 = swift_allocObject();
  sub_1005B9CDC(v58, v59 + v51, type metadata accessor for WorkoutChartGroupView);
  type metadata accessor for WorkoutChartableMetricsView();
  v87 = v85;
  v88 = v79;
  swift_getOpaqueTypeConformance2();
  sub_1005B9C94(&qword_1008F4808, type metadata accessor for WorkoutChartableMetricsView);
  v60 = v75;
  v61 = v86;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v76 + 8))(v61, v60);
}

uint64_t sub_1005B5C88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100140278(&qword_1008F4810);
  __chkstk_darwin(v60);
  v6 = &v57 - v5;
  v7 = sub_100140278(&qword_1008F4818);
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v59 = &v57 - v8;
  v9 = sub_100140278(&qword_1008F4820);
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  __chkstk_darwin(v9);
  v66 = &v57 - v11;
  v12 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v57 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  v22 = *(v2 + *(type metadata accessor for WorkoutChartGroupView() + 28) + 8);
  swift_beginAccess();
  v58 = *(*(v22 + 16) + 16);
  v23 = [objc_opt_self() mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 localizedStringForKey:v24 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.init(string:)();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000EA04(v14, &unk_1008EB5B0);
    v26 = 1;
    v27 = v69;
    v28 = v67;
  }

  else
  {
    v29 = *(v16 + 32);
    v57 = v21;
    v29(v21, v14, v15);
    (*(v16 + 16))(v18, v21, v15);
    sub_100140278(&qword_1008F4828);
    sub_10014A6B0(&qword_1008F4830, &qword_1008F4828);
    Link.init(destination:label:)();
    v6[*(sub_100140278(&qword_1008F4838) + 36)] = 0;
    v30 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    v32 = v60;
    v33 = &v6[*(v60 + 36)];
    *v33 = KeyPath;
    v33[1] = v30;
    v34 = sub_1005B9930();
    v35 = v59;
    View.bold(_:)();
    sub_10000EA04(v6, &qword_1008F4810);
    v37 = v63;
    v36 = v64;
    v38 = v65;
    (*(v64 + 104))(v63, enum case for DynamicTypeSize.large(_:), v65);
    v70 = v32;
    v71 = v34;
    swift_getOpaqueTypeConformance2();
    v39 = v66;
    v40 = v62;
    View.dynamicTypeSize(_:)();
    (*(v36 + 8))(v37, v38);
    (*(v61 + 8))(v35, v40);
    v41 = static Color.secondary.getter();
    v42 = swift_getKeyPath();
    v43 = (v39 + *(sub_100140278(&qword_1008F4860) + 36));
    *v43 = v42;
    v43[1] = v41;
    if (v58 <= 1)
    {
      v44 = 0x401C000000000000;
    }

    else
    {
      v44 = 0x4028000000000000;
    }

    v45 = static Edge.Set.all.getter();
    v46 = v39 + *(sub_100140278(&qword_1008F4868) + 36);
    *v46 = v45;
    *(v46 + 8) = v44;
    *(v46 + 16) = xmmword_1006FC3F0;
    *(v46 + 32) = 0x4008000000000000;
    *(v46 + 40) = 0;
    v47 = v67;
    v48 = v39 + *(v67 + 36);
    Divider.init()();
    v49 = static Edge.Set.all.getter();
    v50 = v48 + *(sub_100140278(&qword_1008DE0B0) + 36);
    *v50 = v49;
    *(v50 + 8) = xmmword_1006FC3B0;
    *(v50 + 24) = xmmword_1006FC3B0;
    *(v50 + 40) = 0;
    v51 = static Alignment.bottom.getter();
    v53 = v52;
    (*(v16 + 8))(v57, v15);
    v54 = (v48 + *(sub_100140278(&qword_1008F47E0) + 36));
    *v54 = v51;
    v54[1] = v53;
    v55 = v69;
    sub_100015E80(v39, v69, &qword_1008F4820);
    v26 = 0;
    v27 = v55;
    v28 = v47;
  }

  return (*(v68 + 56))(v27, v26, 1, v28);
}

void sub_1005B63EC(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v5 = [v3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v4];

  if (v5)
  {
    v49 = v1;
    v50 = a1;
    v6 = [objc_opt_self() tertiaryLabelColor];
    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 localizedStringForKey:v9 value:0 table:0];

    v11 = v10;
    v12 = v10;
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    v48 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v16 = v10;

    v17 = [v7 mainBundle];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1006D46C0;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_10000A788();
    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    String.init(format:_:)();

    sub_100140278(&unk_1008E7FB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D1F70;
    *(inited + 32) = NSFontAttributeName;
    v47 = sub_1000059F8(0, &qword_1008F73C0);
    *(inited + 40) = v5;
    *(inited + 64) = v47;
    *(inited + 72) = NSForegroundColorAttributeName;
    v46 = sub_1000059F8(0, &qword_1008E7FC0);
    *(inited + 104) = v46;
    *(inited + 80) = v6;
    v22 = NSFontAttributeName;
    v23 = NSForegroundColorAttributeName;
    v45 = v22;
    v44 = v23;
    v24 = v5;
    v43 = v6;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_100140278(&unk_1008EE730);
    swift_arrayDestroy();
    v25 = objc_allocWithZone(NSMutableAttributedString);
    v26 = v12;
    v27 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_1005B9C94(&qword_1008E7FD0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = [v25 initWithString:v27 attributes:isa];

    v30 = String._bridgeToObjectiveC()();

    v42 = [v30 rangeOfString:v26];
    v32 = v31;

    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1006D64F0;
    *(v33 + 32) = v45;
    *(v33 + 40) = v24;
    *(v33 + 64) = v47;
    *(v33 + 72) = v44;
    *(v33 + 80) = v43;
    *(v33 + 104) = v46;
    *(v33 + 112) = NSUnderlineStyleAttributeName;
    *(v33 + 144) = &type metadata for Int;
    *(v33 + 120) = 1;
    v34 = v24;
    v35 = v43;
    v36 = NSUnderlineStyleAttributeName;
    sub_1004C9200(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v37 = objc_allocWithZone(NSAttributedString);
    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = [v37 initWithString:v48 attributes:v38];

    [v29 replaceCharactersInRange:v42 withAttributedString:{v32, v39}];
    *v50 = static VerticalAlignment.center.getter();
    *(v50 + 8) = 0;
    *(v50 + 16) = 1;
    v40 = sub_100140278(&qword_1008F4870);
    sub_1005B78A4(v29, v49, (v50 + *(v40 + 44)));
    LOBYTE(v38) = static Edge.Set.all.getter();

    v41 = v50 + *(sub_100140278(&qword_1008F4728) + 36);
    *v41 = v38;
    *(v41 + 8) = xmmword_1006DB530;
    *(v41 + 24) = xmmword_1006DB530;
    *(v41 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005B6A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a1;
  v43 = a2;
  v3 = type metadata accessor for AccessibilityNotification.Announcement();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F4718);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AttributedString();
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for AccessibilityNotification.LayoutChanged();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v42, 1, v21) == 1 || v22(v43, 1, v21) == 1)
  {
    v22(v43, 1, v21);
    v23 = [objc_opt_self() mainBundle];
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 localizedStringForKey:v24 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v26 = enum case for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.high(_:);
    v27 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v9, v26, v27);
    (*(v28 + 56))(v9, 0, 1, v27);
    sub_10001B104(v9, v35, &qword_1008F4718);
    sub_1005B91C8();
    AttributedString.subscript.setter();
    sub_10000EA04(v9, &qword_1008F4718);
    v30 = v36;
    v29 = v37;
    (*(v36 + 16))(v13, v16, v37);
    v31 = v38;
    AccessibilityNotification.Announcement.init(_:)();
    v32 = v40;
    _AccessibilityNotifications.post()();
    (*(v39 + 8))(v31, v32);
    type metadata accessor for WorkoutChartGroupView();
    LOBYTE(v44) = 1;
    sub_100140278(&unk_1008F73B0);
    AccessibilityFocusState.wrappedValue.setter();
    return (*(v30 + 8))(v16, v29);
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    AccessibilityNotification.LayoutChanged.init(_:)();
    _AccessibilityNotifications.post()();
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1005B6FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1005B707C, v6, v5);
}

uint64_t sub_1005B707C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for WorkoutChartGroupView();
  v3 = *(v1 + *(v2 + 24) + 8);
  GeometryProxy.size.getter();
  v5 = v3 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth;
  *v5 = v4 + -32.0;
  *(v5 + 8) = 0;
  *(v0 + 56) = *(v1 + *(v2 + 28) + 8);

  return _swift_task_switch(sub_1005B7138, 0, 0);
}

uint64_t sub_1005B7138()
{
  sub_10055BB40();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1005B720C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1005B720C()
{

  return _swift_task_switch(sub_1005B7308, 0, 0);
}

uint64_t sub_1005B7320@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E76A0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17[0] = Image.init(systemName:)();
  View.accessibilityHidden(_:)();

  sub_10001B104(v7, v4, &qword_1008E76A0);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v15 = sub_100140278(&qword_1008F0AE0);
  sub_10001B104(v4, a1 + *(v15 + 64), &qword_1008E76A0);
  sub_10006965C(v8, v10, v12 & 1);

  sub_10000EA04(v7, &qword_1008E76A0);
  sub_10000EA04(v4, &qword_1008E76A0);
  sub_10004642C(v8, v10, v12 & 1);
}

uint64_t sub_1005B7534()
{
  type metadata accessor for WorkoutChartGroupView();

  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

id sub_1005B75E0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for WorkoutChartGroupView() + 28) + 8);
  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  if (v2)
  {
    v3 = [v2 fiui_activityType];
LABEL_4:
    swift_beginAccess();

    sub_1005E9CE0(v5, v3);

    type metadata accessor for WorkoutChartDataStore();
    sub_1005B9C94(&qword_1008F4680, type metadata accessor for WorkoutChartDataStore);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  result = [*(v1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) fiui_activityType];
  v3 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005B7714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WorkoutChartGroupView() + 28) + 8);
  *a2 = swift_getKeyPath();
  sub_100140278(&qword_1008EE800);
  swift_storeEnumTagMultiPayload();
  *(a2 + *(type metadata accessor for WorkoutChartableMetricsView() + 20)) = v3;
}

uint64_t sub_1005B77A4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_10006965C(v2, v4, v6);

  sub_10004642C(v2, v4, v6);
}

uint64_t sub_1005B78A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for AccessibilityTraits();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutChartGroupView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = type metadata accessor for AttributedString();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100140278(&qword_1008F4878);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_100140278(&qword_1008F4880);
  __chkstk_darwin(v15 - 8);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = a1;
  AttributedString.init(_:)();
  v21 = Text.init(_:)();
  v23 = v22;
  v45 = v21;
  v46 = v22;
  v25 = v24 & 1;
  v47 = v24 & 1;
  v48 = v26;
  sub_1005B9D44(a2, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChartGroupView);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  sub_1005B9CDC(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for WorkoutChartGroupView);
  View.onTapGesture(count:perform:)();

  sub_10004642C(v21, v23, v25);

  v29 = v41;
  static AccessibilityTraits.isLink.getter();
  v45 = &type metadata for Text;
  v46 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v30 = v39;
  View.accessibilityAddTraits(_:)();
  (*(v42 + 8))(v29, v43);
  (*(v40 + 8))(v14, v30);
  v31 = v38;
  sub_10001B104(v19, v38, &qword_1008F4880);
  v32 = v44;
  *v44 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = sub_100140278(&qword_1008F4888);
  sub_10001B104(v31, v33 + *(v34 + 48), &qword_1008F4880);
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_10000EA04(v19, &qword_1008F4880);
  return sub_10000EA04(v31, &qword_1008F4880);
}

void sub_1005B7D20()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutChartGroupView();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() sharedApplication];
    v7 = [*(v5 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView) urlForMapAttribution];
    if (v7)
    {
      v8 = v7;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v9);
      v11 = v10;
      (*(v1 + 8))(v3, v0);
      sub_1004C9534(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1005B9C94(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v6 openURL:v11 options:isa completionHandler:0];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005B7F20(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  result = type metadata accessor for WorkoutChartGroupView();
  v11 = *(a2 + *(result + 24) + 8);
  if ((*(v11 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8) & 1) == 0)
  {
    v12 = result;
    v13 = *(v11 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
    sub_100487D24(v9);
    (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
    v14 = static LayoutDirection.== infix(_:_:)();
    v15 = *(v4 + 8);
    v15(v6, v3);
    v15(v9, v3);
    DragGesture.Value.location.getter();
    v17 = *(v11 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration);
    if (v14)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13 - v16;
    }

    v19 = *(v11 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) * *(v11 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
    if (v17 < v19 || v17 - v19 < 0.01 || (v20 = (a2 + *(v12 + 32)), v21 = *v20, v22 = *(v20 + 1), LOBYTE(v24) = v21, v25 = v22, sub_100140278(&qword_1008DDBB8), State.wrappedValue.getter(), v23[15] == 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v18;
      LOBYTE(v25) = 0;

      static Published.subscript.setter();
      return sub_1002E4518();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = 0.0;
      LOBYTE(v25) = 1;

      static Published.subscript.setter();
      sub_1002E4518();
      return sub_1002E5134(*&v18, 0);
    }
  }

  return result;
}

uint64_t sub_1005B81FC()
{
  type metadata accessor for WorkoutChartGroupView();
  sub_1002E5134(0, 1);
  sub_100140278(&qword_1008DDBB8);
  return State.wrappedValue.setter();
}

uint64_t sub_1005B8290(void *a1, uint64_t a2)
{
  v59 = a1;
  v56 = sub_100140278(&qword_1008E7250);
  __chkstk_darwin(v56);
  v57 = &v51 - v3;
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v51 - v7;
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for LayoutDirection();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v51 - v22;
  result = type metadata accessor for WorkoutChartGroupView();
  v25 = *(a2 + *(result + 24) + 8);
  if ((*(v25 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8) & 1) == 0)
  {
    v53 = v16;
    v26 = *(v25 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
    sub_100487D24(v23);
    (*(v18 + 104))(v20, enum case for LayoutDirection.leftToRight(_:), v17);
    v27 = static LayoutDirection.== infix(_:_:)();
    v28 = *(v18 + 8);
    v28(v20, v17);
    v28(v23, v17);
    SpatialTapGesture.Value.location.getter();
    if ((v27 & 1) == 0)
    {
      v29 = v26 - v29;
    }

    v30 = v29;
    sub_1002E4990(0, v10);
    v31 = v12[6];
    if (v31(v10, 1, v11) == 1)
    {
      return sub_10000EA04(v10, &unk_1008F73A0);
    }

    v52 = v30;
    v32 = v12;
    v33 = v53;
    v51 = v12[4];
    v51(v53, v10, v11);
    v34 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
    swift_beginAccess();
    v35 = v12[2];
    v36 = v58;
    v35(v58, v33, v11);
    v59 = v32;
    (v32[7])(v36, 0, 1, v11);
    v37 = *(v56 + 48);
    v38 = v25 + v34;
    v39 = v57;
    sub_10001B104(v38, v57, &unk_1008F73A0);
    v40 = v39;
    sub_10001B104(v36, v39 + v37, &unk_1008F73A0);
    if (v31(v39, 1, v11) == 1)
    {
      sub_10000EA04(v36, &unk_1008F73A0);
      v41 = v31((v39 + v37), 1, v11);
      v42 = v59;
      v43 = v53;
      if (v41 == 1)
      {
        sub_10000EA04(v40, &unk_1008F73A0);
        v44 = 0.0;
        v45 = 1;
LABEL_14:
        swift_getKeyPath();
        swift_getKeyPath();
        v60 = v44;
        v61 = v45 & 1;

        static Published.subscript.setter();
        sub_1002E4518();
        return (v42[1])(v43, v11);
      }
    }

    else
    {
      v46 = v55;
      sub_10001B104(v39, v55, &unk_1008F73A0);
      if (v31((v39 + v37), 1, v11) != 1)
      {
        v47 = (v39 + v37);
        v48 = v54;
        v51(v54, v47, v11);
        sub_1005B9C94(&qword_1008E1D78, &type metadata accessor for Date);
        v49 = v40;
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v42 = v59;
        v50 = v59[1];
        v50(v48, v11);
        sub_10000EA04(v58, &unk_1008F73A0);
        v50(v46, v11);
        sub_10000EA04(v49, &unk_1008F73A0);
        v44 = v52;
        v43 = v53;
        if (v45)
        {
          v44 = 0.0;
        }

        goto LABEL_14;
      }

      sub_10000EA04(v58, &unk_1008F73A0);
      v42 = v59;
      (v59[1])(v46, v11);
      v43 = v53;
    }

    sub_10000EA04(v40, &qword_1008E7250);
    v45 = 0;
    v44 = v52;
    goto LABEL_14;
  }

  return result;
}

id sub_1005B8970(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutChartGroupView();
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.setter();
  return [*(a2 + *(v3 + 20)) selectionChanged];
}

uint64_t sub_1005B8A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1005B8A9C, v6, v5);
}

uint64_t sub_1005B8A9C()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = *(v1 + *(type metadata accessor for WorkoutChartGroupView() + 28) + 8);

  return _swift_task_switch(sub_1005B8B18, 0, 0);
}

uint64_t sub_1005B8B18()
{
  sub_10055BB40();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1005B8BEC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1005B8BEC()
{

  return _swift_task_switch(sub_1005B8CE8, 0, 0);
}

uint64_t sub_1005B8D00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1005B9D44(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChartGroupView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1005B9CDC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for WorkoutChartGroupView);
  *a2 = sub_1005B8E14;
  a2[1] = v7;
  return result;
}

uint64_t sub_1005B8E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1005B2D9C(a1, v6, a2);
}

unint64_t sub_1005B8E9C()
{
  result = qword_1008F46E8;
  if (!qword_1008F46E8)
  {
    sub_100141EEC(&qword_1008F46E0);
    sub_10014A6B0(&qword_1008F46F0, &qword_1008F46F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F46E8);
  }

  return result;
}

uint64_t sub_1005B8F54()
{
  v2 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10002BBC0;

  return sub_1005B6FE4(v7, v8, v0 + v3, v0 + v6);
}

uint64_t sub_1005B9094(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002BBC0;

  return sub_10055C0A0(a1, a2, v2);
}

uint64_t sub_1005B9148(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1005B6A40(a1, a2, v6);
}

unint64_t sub_1005B91C8()
{
  result = qword_1008F4720;
  if (!qword_1008F4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4720);
  }

  return result;
}

uint64_t sub_1005B921C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1005B4388(a1, v6, a2);
}

unint64_t sub_1005B929C()
{
  result = qword_1008F4778;
  if (!qword_1008F4778)
  {
    sub_100141EEC(&qword_1008F4770);
    sub_10014A6B0(&qword_1008F4780, &qword_1008F4788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4778);
  }

  return result;
}

unint64_t sub_1005B934C()
{
  result = qword_1008F4790;
  if (!qword_1008F4790)
  {
    sub_100141EEC(&qword_1008F4760);
    sub_1005B93D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4790);
  }

  return result;
}

unint64_t sub_1005B93D0()
{
  result = qword_1008F4798;
  if (!qword_1008F4798)
  {
    sub_100141EEC(&qword_1008F47A0);
    sub_1005B929C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4798);
  }

  return result;
}

uint64_t sub_1005B9454@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1005B94DC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_1002E4518();
}

uint64_t sub_1005B9564@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1005B95BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1005B962C()
{
  result = qword_1008F47E8;
  if (!qword_1008F47E8)
  {
    sub_100141EEC(&qword_1008F47C0);
    sub_1005B96E4();
    sub_10014A6B0(&qword_1008F4800, &qword_1008F47E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F47E8);
  }

  return result;
}

unint64_t sub_1005B96E4()
{
  result = qword_1008F47F0;
  if (!qword_1008F47F0)
  {
    sub_100141EEC(&qword_1008F47D8);
    sub_1005B9770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F47F0);
  }

  return result;
}

unint64_t sub_1005B9770()
{
  result = qword_1008F47F8;
  if (!qword_1008F47F8)
  {
    sub_100141EEC(&qword_1008F47D0);
    sub_100141EEC(&qword_1008F47B8);
    sub_100141EEC(&qword_1008F0A78);
    sub_1004F39AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F47F8);
  }

  return result;
}

uint64_t sub_1005B98C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1005B7714(v4, a1);
}

unint64_t sub_1005B9930()
{
  result = qword_1008F4840;
  if (!qword_1008F4840)
  {
    sub_100141EEC(&qword_1008F4810);
    sub_1005B99E8();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4840);
  }

  return result;
}

unint64_t sub_1005B99E8()
{
  result = qword_1008F4848;
  if (!qword_1008F4848)
  {
    sub_100141EEC(&qword_1008F4838);
    sub_10014A6B0(&qword_1008F4850, &qword_1008F4858);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4848);
  }

  return result;
}

uint64_t sub_1005B9AE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1005B9BA0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

id sub_1005B9C24(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1005B8970(a1, v4);
}

uint64_t sub_1005B9C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B9CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B9D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B9DAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005B9E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F4788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B9E7C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002BACC;

  return sub_10055C0A0(a1, a2, v2);
}

unint64_t sub_1005B9F2C()
{
  result = qword_1008F48C0;
  if (!qword_1008F48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F48C0);
  }

  return result;
}

unint64_t sub_1005B9F84()
{
  result = qword_1008F48C8;
  if (!qword_1008F48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F48C8);
  }

  return result;
}

uint64_t sub_1005B9FDC()
{
  AppDependency.wrappedValue.getter();
  v0 = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:v33];

  if (!v0)
  {
    return 0;
  }

  AppDependency.wrappedValue.getter();
  v1 = [objc_allocWithZone(AAUIAchievementsDataProvider) initWithHealthStore:v33 layoutMode:0];

  if (!v1)
  {

    return 0;
  }

  AppDependency.wrappedValue.getter();
  v2 = *&v33[OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider];

  AppDependency.wrappedValue.getter();
  v3 = objc_allocWithZone(type metadata accessor for ActivityDataProvider());
  v30 = v2;
  v31 = v1;
  v4 = v0;
  v5 = sub_1001F6498(v33, v4, v30, v31);
  v6 = [objc_allocWithZone(type metadata accessor for SeymourAvailabilityManager(0)) init];
  AppDependency.wrappedValue.getter();
  v7 = [objc_allocWithZone(FIUIPregnancyStateProvider) initWithHealthStore:v33];

  AppDependency.wrappedValue.getter();
  v8 = v4;
  v29 = v6;
  AppDependency.wrappedValue.getter();
  v9 = objc_allocWithZone(type metadata accessor for FitnessAppContext());
  v10 = v7;
  v11 = sub_10000C10C(v33, v29, v8, v33, v10);
  type metadata accessor for FitnessPlusSubscriptionProvider();
  swift_allocObject();
  v12 = v11;
  v13 = sub_1001FF08C();
  v14 = v5;
  AppDependency.wrappedValue.getter();
  v15 = objc_allocWithZone(type metadata accessor for TrendsAvailabilityManager());
  v16 = sub_10001ED54(v14, v33);
  v17 = v14;

  AppDependency.wrappedValue.getter();
  v18 = v33;
  v19 = *&v12[OBJC_IVAR___CHFitnessAppContext_seymourAvailabilityManager];

  v20 = type metadata accessor for SummaryUserProfileProvider();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_notificationCenterObservers] = _swiftEmptyArrayStorage;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_forceUpdateNotifyToken] = -1;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fetchRequests] = _swiftEmptyArrayStorage;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_activityDataProvider] = v17;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fitnessPlusSubscriptionProvider] = v13;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_healthStore] = v18;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_seymourAvailabilityManager] = v19;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_trendsAvailabilityManager] = v16;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_wheelchairCache] = v8;
  sub_100140278(&qword_1008ED288);
  v22 = swift_allocObject();
  *(v22 + 28) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState] = v22;
  v32.receiver = v21;
  v32.super_class = v20;
  v23 = v8;
  v24 = v16;
  v25 = objc_msgSendSuper2(&v32, "init");
  sub_1001B206C();
  v26 = *&v25[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState];
  os_unfair_lock_lock((v26 + 28));
  v27 = *(v26 + 16);
  LODWORD(v8) = *(v26 + 24);
  os_unfair_lock_unlock((v26 + 28));

  if (v8)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

uint64_t sub_1005BA400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005BA49C, v5, v4);
}

uint64_t sub_1005BA49C()
{

  v1 = sub_1005B9FDC();
  if (v2)
  {
    v3 = &off_100841F80;
    v4 = 20;
  }

  else
  {
    v3 = sub_100183F44(v1);
    v4 = v3[2];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  sub_100186510(0, v4, 0);
  v5 = _swiftEmptyArrayStorage[2];
  v6 = 32;
  do
  {
    v7 = *(v3 + v6);
    v8 = _swiftEmptyArrayStorage[3];
    if (v5 >= v8 >> 1)
    {
      sub_100186510((v8 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5) = v7;
    ++v6;
    ++v5;
    --v4;
  }

  while (v4);
LABEL_9:

  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}