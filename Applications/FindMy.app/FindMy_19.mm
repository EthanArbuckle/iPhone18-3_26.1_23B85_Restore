void sub_1002021D0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v2 - 8);
  v28 = &v27 - v3;
  v4 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMDeviceDetailContentViewController: Lost mode button toggled", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v15 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v16 = (*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  sub_1000E512C(v18, v17, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &unk_1006BBCE0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMDeviceDetailContentViewController: cannot enable lost mode on unknown device", v21, 2u);
    }
  }

  else
  {
    v22 = v27;
    (*(v8 + 32))(v27, v6, v7);
    v23 = *&v1[v15] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v24 = type metadata accessor for FMDeviceDetailViewModel();
    v25 = v28;
    sub_100007204(v23 + *(v24 + 36), v28, &qword_1006B07D0);
    v26 = *&v1[v14];

    sub_1000E11B0(v22, v25, v26, v1);

    sub_100012DF0(v25, &qword_1006B07D0);
    (*(v8 + 8))(v22, v7);
  }
}

void sub_100202644()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v26 = &v26 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMDeviceDetailContentViewController: Lock button toggled", v14, 2u);
  }

  v15 = (*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];

  sub_1000E512C(v17, v16, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMDeviceDetailContentViewController: cannot lock unknown device", v20, 2u);
    }
  }

  else
  {
    v21 = v26;
    (*(v6 + 32))(v26, v4, v5);
    type metadata accessor for FMDeviceLockViewController();
    (*(v6 + 16))(v9, v21, v5);
    v22 = swift_retain_n();
    v23 = sub_10018E900(v22, v9);
    objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
    v24 = v23;
    v25 = sub_1000CC510(v24, 2);
    [v1 presentViewController:v25 animated:1 completion:0];

    (*(v6 + 8))(v21, v5);
  }
}

void sub_100202A78()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &countAndFlagsBits - v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDeviceDetailContentViewController: Showing sound pending learn more", v8, 2u);
  }

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v41._object = 0x8000000100586D90;
  v11._object = 0x8000000100586D60;
  v41._countAndFlagsBits = 0xD000000000000032;
  v11._countAndFlagsBits = 0xD000000000000020;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v41)._countAndFlagsBits;

  v13 = *(*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
  v14 = *v13;
  v39 = v1;
  v15 = *(v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v13[v16]);
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v4, &v13[v15], v17);
  os_unfair_lock_unlock(&v13[v16]);

  (*(v18 + 56))(v4, 0, 1, v17);
  v19 = sub_10022F104(0xD000000000000022, 0x8000000100586DD0, v4);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10022E0A8(v19, v21, v23, v25, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v4, &unk_1006BBCE0);
  v26 = [v9 mainBundle];
  v42._object = 0x8000000100579B60;
  v27._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v27._object = 0xEF454C5449545F4ELL;
  v42._countAndFlagsBits = 0xD000000000000021;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v42);

  v29 = String._bridgeToObjectiveC()();

  v30 = String._bridgeToObjectiveC()();

  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v32 = swift_allocObject();
  v33 = v39;
  *(v32 + 16) = v39;
  v34 = v33;
  v35 = String._bridgeToObjectiveC()();

  aBlock[4] = State.rawValue.getter;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10062DBD8;
  v36 = _Block_copy(aBlock);

  v37 = [objc_opt_self() actionWithTitle:v35 style:0 handler:v36];
  _Block_release(v36);

  [v31 addAction:v37];
  [v34 presentViewController:v31 animated:1 completion:0];
}

void sub_100203020()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMDeviceDetailContentViewController: Showing mismatch learn more", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v37._object = 0x80000001005865D0;
  v6._countAndFlagsBits = 0xD000000000000016;
  v6._object = 0x80000001005865B0;
  v37._countAndFlagsBits = 0xD000000000000028;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v37);

  v8 = [v4 mainBundle];
  v38._object = 0x8000000100582060;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x8000000100586D10;
  v10.value._object = 0x8000000100582040;
  v38._countAndFlagsBits = 0xD000000000000015;
  v10.value._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v38);

  v12 = [v4 mainBundle];
  v39._object = 0x8000000100579B60;
  v13._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v13._object = 0xEF454C5449545F4ELL;
  v39._countAndFlagsBits = 0xD000000000000021;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v39);

  v15 = [v4 mainBundle];
  v40._object = 0x800000010057B940;
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x800000010057B920;
  v40._countAndFlagsBits = 0xD000000000000029;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v40);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  v30 = v29;
  v22 = String._bridgeToObjectiveC()();

  v35 = State.rawValue.getter;
  v36 = v21;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100017328;
  v34 = &unk_10062DB60;
  v23 = _Block_copy(&aBlock);

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v22 style:1 handler:v23];
  _Block_release(v23);

  [v20 addAction:v25];
  v26 = String._bridgeToObjectiveC()();

  v35 = sub_100203540;
  v36 = 0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100017328;
  v34 = &unk_10062DB88;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  [v20 addAction:v28];
  [v30 presentViewController:v20 animated:1 completion:0];
}

uint64_t sub_100203540()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_10015391C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10021E650(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 openURL:v11 options:isa completionHandler:0];

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1002037D8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v10 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];

  sub_1000E512C(v12, v11, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "FMDeviceDetailContentViewController: erase unknown device", v16, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v17 = *&v0[v9];

    sub_1000E1BC0(v8, v17, v1);

    (*(v6 + 8))(v8, v5);
  }
}

void sub_100203B10()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  sub_1000E512C(v10, v9, v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100012DF0(v3, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMDeviceDetailContentViewController: cancel erase unknown device", v14, 2u);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    DeviceManagementSectionViewModel.isCancelling.setter();
    v15 = swift_allocObject();
    *(v15 + 16) = v0;

    sub_1000DD274(v7, v0, sub_10021F04C, v15);

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100203E40(uint64_t a1, uint64_t a2)
{
  result = DeviceManagementSectionViewModel.isCancelling.setter();
  if (a2)
  {

    sub_1004E2A54(a2);
  }

  return result;
}

void sub_100203F0C()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v17._object = 0x800000010057FC90;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x800000010057FC60;
  v17._countAndFlagsBits = 0xD000000000000035;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v17);

  v5 = [v1 mainBundle];
  v18._object = 0x8000000100586CD0;
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x8000000100586CA0;
  v18._countAndFlagsBits = 0xD00000000000003BLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v18);

  v8 = [v1 mainBundle];
  v19._object = 0x8000000100579B60;
  v9._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v9._object = 0xEF454C5449545F4ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  [v15 addAction:v12];
  [v0 presentViewController:v15 animated:1 completion:0];
}

void sub_1002041FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v54 = a4;
  v5 = type metadata accessor for FMIPNotifyItemActionType();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v52 = &v43 - v8;
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v43 - v13;
  v14 = type metadata accessor for FMIPAnalyticsActionType();
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v46 = v10;
    *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = a3 & 1;
    [*(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:0];
    v45 = a3;
    if (a3)
    {
      v23 = *(*&v22[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
      v24 = *v23;
      v44 = v9;
      v25 = *(v24 + class metadata base offset for ManagedBuffer + 16);
      v26 = (*(v24 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v23 + v26));
      v27 = v23 + v25;
      v9 = v44;
      (*(v18 + 16))(v20, v27, v17);
      os_unfair_lock_unlock((v23 + v26));

      v28 = v53;
      (*(v53 + 104))(v16, enum case for FMIPAnalyticsActionType.enableNotifyWhenFound(_:), v14);
      sub_10020D6E8(v20, v16);
      (*(v28 + 8))(v16, v14);
      (*(v18 + 8))(v20, v17);
    }

    v29 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
    v30 = *&v22[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v31 = v54;
    if (*(v30 + 40) == 1 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
    {
      v32 = *&v22[v29] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      v33 = type metadata accessor for FMDeviceDetailViewModel();
      v34 = v52;
      sub_100007204(v32 + *(v33 + 36), v52, &qword_1006B07D0);
      v35 = v46;
      if ((*(v46 + 48))(v34, 1, v9) != 1)
      {
        v38 = v51;
        (*(v35 + 32))(v51, v34, v9);
        (*(v35 + 16))(v47, v38, v9);
        (*(v48 + 104))(v50, enum case for FMIPNotifyItemActionType.whenFound(_:), v49);
        type metadata accessor for FMIPNotifyItemAction();
        swift_allocObject();
        v39 = v35;
        v40 = FMIPNotifyItemAction.init(item:type:state:)();
        v41 = swift_allocObject();
        *(v41 + 16) = v22;

        v42 = v22;
        sub_1000D6A90(v40, sub_10021E6C8, v41);

        (*(v39 + 8))(v38, v9);
        return;
      }

      sub_100012DF0(v34, &qword_1006B07D0);
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v22;
    v37 = v22;

    sub_1000DD424(v31, sub_10021E6C0, v36);
  }
}

void sub_1002048AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMIPItemActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v11 - 8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a4 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:1];
  v14 = *(a4 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v15 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v14 + v15, v13, type metadata accessor for FMDeviceDetailViewModel);
  sub_1002053C8(v13);
  sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  (*(v8 + 16))(v10, a1, v7);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28[0] = a4;
    v29 = v20;
    *v19 = 136315394;
    sub_10021E650(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = sub_100005B4C(v21, v23, &v29);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v28[1] = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v25 = String.init<A>(describing:)();
    v27 = sub_100005B4C(v25, v26, &v29);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMDeviceDetailContentViewController: Toggling notify when found completed with status: %s, error: %s", v19, 0x16u);
    swift_arrayDestroy();
    a4 = v28[0];
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  *(a4 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
}

uint64_t sub_100204C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:1];
  v7 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v8 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v7 + v8, v6, type metadata accessor for FMDeviceDetailViewModel);
  sub_1002053C8(v6);
  result = sub_1002201E4(v6, type metadata accessor for FMDeviceDetailViewModel);
  *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  return result;
}

uint64_t sub_100204D8C()
{
  v0 = type metadata accessor for FMIPDevice();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailContentViewController: present NWLB Detail Screen", v9, 2u);
    }

    v10 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
    v11 = *&v5[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource];
    v12 = v11 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v13 = type metadata accessor for FMDeviceDetailViewModel();
    v14 = (*(v12 + *(v13 + 96)) >> 12) & 1;
    v30 = (*(v12 + *(v13 + 92)) >> 14) & 1;
    v31 = v14;
    v15 = *(v11 + 40);
    v16 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
    v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v15 + v17));
    v18 = v1;
    (*(v1 + 16))(v3, v15 + v16, v0);
    os_unfair_lock_unlock((v15 + v17));

    v19 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_trustedLocationsDetailViewController;
    v20 = *&v5[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_trustedLocationsDetailViewController];
    v21 = FMIPDevice.safeLocations.getter();
    v22 = (*&v5[v10] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
    swift_beginAccess();
    v32 = v0;
    v23 = v22[2];
    v24 = v22[3];
    v25 = v22[4];

    sub_1004AC438(v21, v30, v31, v23, v24, v25);

    v26 = *&v5[v19];
    v27 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v28 = v26;
    v29 = sub_1000CC510(v28, 2);
    [v29 setDelegate:v29];

    [v5 presentViewController:v29 animated:1 completion:0];
    return (*(v18 + 8))(v3, v32);
  }

  return result;
}

void sub_100205128()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v19._object = 0x800000010057D660;
  v3._countAndFlagsBits = 0xD000000000000030;
  v3._object = 0x8000000100586C20;
  v4.value._object = 0x800000010057D640;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v4.value._countAndFlagsBits = 0xD000000000000016;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v19);

  v6 = [v1 mainBundle];
  v20._object = 0x800000010057D660;
  v7._countAndFlagsBits = 0xD000000000000032;
  v7._object = 0x8000000100586C60;
  v8.value._object = 0x800000010057D640;
  v20._countAndFlagsBits = 0xD00000000000001BLL;
  v8.value._countAndFlagsBits = 0xD000000000000016;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v20);

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v12 = [v1 mainBundle];
  v21._object = 0x8000000100579B60;
  v13._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v13._object = 0xEF454C5449545F4ELL;
  v21._countAndFlagsBits = 0xD000000000000021;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v21);

  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() actionWithTitle:v15 style:0 handler:0];

  [v17 addAction:v16];
  [v0 presentViewController:v17 animated:1 completion:0];
}

void sub_1002053C8(uint64_t a1)
{
  v187 = type metadata accessor for DispatchWorkItemFlags();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for DispatchQoS();
  v183 = *(v185 - 8);
  __chkstk_darwin(v185);
  v182 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for FMIPFeatures();
  v196 = *(v197 - 8);
  v5 = __chkstk_darwin(v197);
  v195 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v194 = &v170 - v7;
  v191 = type metadata accessor for FMIPSeparationMonitoringState();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for FMFDevice();
  v215 = *(v219 - 8);
  __chkstk_darwin(v219);
  v218 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B68E8);
  v192 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v181 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v205 = &v170 - v14;
  v15 = __chkstk_darwin(v13);
  v193 = &v170 - v16;
  v202 = v17;
  __chkstk_darwin(v15);
  v203 = &v170 - v18;
  v210 = type metadata accessor for FMIPDeviceState();
  v209 = *(v210 - 1);
  v19 = __chkstk_darwin(v210);
  v208 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v207 = &v170 - v21;
  v22 = sub_10007EBC0(&qword_1006AF748);
  v23 = __chkstk_darwin(v22 - 8);
  v214 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v199 = (&v170 - v26);
  __chkstk_darwin(v25);
  v198 = &v170 - v27;
  v28 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v28 - 8);
  v30 = &v170 - v29;
  v31 = type metadata accessor for FMIPDevice();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v180 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v204 = &v170 - v36;
  v37 = __chkstk_darwin(v35);
  v188 = &v170 - v38;
  v201 = v39;
  __chkstk_darwin(v37);
  v41 = &v170 - v40;
  v42 = swift_allocObject();
  v211 = v42;
  *(v42 + 16) = 1;
  v179 = (v42 + 16);
  v216 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v43 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v217 = v1;
  v44 = (*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];

  v47 = v46;
  v48 = v31;
  sub_1000E512C(v47, v45, v30);

  if (v32[6](v30, 1, v31) == 1)
  {
    sub_100012DF0(v30, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_68;
    }

    goto LABEL_3;
  }

  v53 = v32[4];
  v206 = v41;
  v178 = (v32 + 4);
  v177 = v53;
  v53(v41, v30, v31);
  v54 = type metadata accessor for FMDeviceDetailViewModel();
  v55 = v54;
  v56 = *(a1 + *(v54 + 92));
  v57 = a1;
  v200 = v56;
  if ((v56 & 0x10000) != 0)
  {
    v58 = *(a1 + *(v54 + 96));
    v56 = v32;
    v59 = v48;
    v60 = *(*&v217[v216] + 16);
    v61 = *&v217[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView];
    v62 = v60;
    v63 = sub_100057590();

    v48 = v59;
    v32 = v56;
    LODWORD(v56) = v200;
    sub_100242594((v58 & 0x8000) != 0, (v63 & 0xFFFFFFFFFFFFFFFDLL) == 1);
  }

  v64 = v217;
  if ((v56 & 0x8000) == 0)
  {
    v65 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
    v66 = *&v217[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView];
    sub_10024271C(1, (v56 & 0x10000) == 0);

    v67 = *(v211 + 16);
    v68 = *&v64[v65];
    sub_100242940(v67);

    (v32[1])(v206, v48);
LABEL_57:

    return;
  }

  if (*(v57 + 40) == 1 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0 && (v69 = v57 + v55[11], (*(v69 + 8) & 1) == 0) && (v70 = (v57 + v55[10]), (v70[1] & 1) == 0))
  {
    v168 = *v70;
    v169 = (*v69 >> 7) & 1;
    if (v64[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride] != 2)
    {
      LODWORD(v169) = v64[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride];
    }

    v174 = v169;
    v172 = v168 & 8;
  }

  else
  {
    v71 = v64[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride];
    if (v71 == 2)
    {
      v71 = (*(v57 + v55[24]) >> 3) & 1;
    }

    v174 = v71;
    v172 = v56 & 0x40;
  }

  v72 = v64[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride];
  if (v72 == 2)
  {
    v72 = (*(v57 + v55[24] + 1) >> 4) & 1;
  }

  v173 = v72;
  v73 = *&v64[v43] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v175 = *(v73 + v55[35]);

  v74 = v198;
  dispatch thunk of FMFManager.myInfo.getter();

  v75 = type metadata accessor for FMFMyInfo();
  v76 = *(v75 - 8);
  v77 = *(v76 + 48);
  v213 = v76 + 48;
  v212 = v77;
  v78 = v77(v74, 1, v75);
  v176 = v48;
  v170 = v76;
  if (v78 == 1)
  {
    sub_100012DF0(v74, &qword_1006AF748);
    v79 = 0;
    v80 = 0;
  }

  else
  {
    v81 = FMFMyInfo.meDeviceId.getter();
    v80 = v82;
    v83 = v74;
    v79 = v81;
    (*(v76 + 8))(v83, v75);
  }

  v84 = v199;
  v199 = v32;

  dispatch thunk of FMFManager.myInfo.getter();

  if (v212(v84, 1, v75) == 1)
  {
    sub_100012DF0(v84, &qword_1006AF748);
    if (!v80)
    {
      LODWORD(v198) = 1;
      v85 = v210;
      v86 = v209;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v87 = FMFMyInfo.deviceId.getter();
  v89 = v88;
  (*(v170 + 8))(v84, v75);
  if (v80)
  {
    if (v89)
    {
      if (v79 == v87 && v80 == v89)
      {

        LODWORD(v198) = 1;
      }

      else
      {
        LODWORD(v198) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_31;
    }

LABEL_30:
    LODWORD(v198) = 0;
LABEL_31:
    v85 = v210;
    v86 = v209;
LABEL_32:

    goto LABEL_33;
  }

  v85 = v210;
  v86 = v209;
  if (v89)
  {
    LODWORD(v198) = 0;
    goto LABEL_32;
  }

  LODWORD(v198) = 1;
LABEL_33:
  v90 = v207;
  FMIPDevice.state.getter();
  v91 = v208;
  static FMIPDeviceState.isThisDevice.getter();
  sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v171 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v92 = *(v86 + 8);
  v92(v91, v85);
  v92(v90, v85);

  v93 = dispatch thunk of FMFManager.devices.getter();

  if (!v93)
  {
    goto LABEL_47;
  }

  v210 = v75;
  v209 = *(v93 + 16);
  if (!v209)
  {
LABEL_46:

LABEL_47:
    v106 = v203;
    (*(v215 + 56))(v203, 1, 1, v219);
LABEL_48:
    v107 = v211;
    LODWORD(v219) = v172 != 0;
    LODWORD(v214) = (v200 & 0x10000) == 0;

    v108 = v189;
    FMIPManager.separationMonitoringState.getter();

    LODWORD(v218) = FMIPSeparationMonitoringState.allowsSeparationMonitoringUI.getter();
    v109 = *(v190 + 8);
    v110 = v191;
    v109(v108, v191);

    FMIPManager.separationMonitoringState.getter();

    LODWORD(v212) = FMIPSeparationMonitoringState.allowsSeparationMonitoringConfiguration.getter();
    v109(v108, v110);
    v111 = v194;
    v112 = v206;
    FMIPDevice.features.getter();
    v113 = v195;
    static FMIPFeatures.canBeLeashedByHost.getter();
    sub_10021E650(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
    v114 = v197;
    LODWORD(v215) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v115 = *(v196 + 8);
    v115(v113, v114);
    v115(v111, v114);
    *(v107 + 16) = 0;
    v116 = v107;
    v118 = (v199 + 2);
    v117 = v199[2];
    v119 = v188;
    v120 = v176;
    v117(v188, v112, v176);
    v121 = v193;
    sub_100007204(v106, v193, &qword_1006B68E8);
    v210 = v117;
    v117(v204, v119, v120);
    sub_100007204(v121, v205, &qword_1006B68E8);
    v195 = v118;
    v122 = v118[64];
    v123 = (v122 + 49) & ~v122;
    v124 = v123 + v201;
    v125 = *(v192 + 80);
    v126 = (v125 + v123 + v201 + 2) & ~v125;
    v127 = v126 + v202;
    v197 = v122;
    v213 = v125;
    v207 = (v122 | v125);
    v128 = swift_allocObject();
    *(v128 + 16) = v218 & 1;
    *(v128 + 24) = v116;
    LODWORD(v208) = v198 & 1;
    *(v128 + 32) = v198 & 1;
    LOBYTE(v112) = v171;
    LODWORD(v209) = v171 & 1;
    *(v128 + 33) = v171 & 1;
    *(v128 + 34) = (v200 & 0x4000) != 0;
    *(v128 + 35) = v175;
    *(v128 + 36) = v215 & 1;
    v129 = v217;
    *(v128 + 40) = v217;
    LODWORD(v196) = v173 & 1;
    *(v128 + 48) = v173 & 1;
    v130 = v128 + v123;
    v131 = v129;
    v177(v130, v119, v120);
    v132 = (v128 + v124);
    *v132 = v219;
    v133 = v174 & 1;
    v132[1] = v174 & 1;
    sub_100035318(v121, v128 + v126, &qword_1006B68E8);
    v134 = v212 & 1;
    *(v128 + v127) = v134;
    v135 = *&v131[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView];
    v136 = v131;

    v137 = v135;
    sub_10024271C(0, v214);

    if (v112)
    {
      sub_100012DF0(v205, &qword_1006B68E8);
      v138 = v199[1];
      v139 = v176;
      (v138)(v204, v176);
      v140 = swift_allocObject();
      *(v140 + 16) = sub_10021EBE4;
      *(v140 + 24) = v128;

      FMIPManager.isCompanion(completion:)();

      sub_100012DF0(v203, &qword_1006B68E8);
      (v138)(v206, v139);
    }

    else
    {
      LODWORD(v216) = v133;
      v217 = v136;
      v141 = v176;
      v142 = v200 & 0x4000;
      v143 = v179;
      if ((v218 & 1) == 0)
      {
        swift_beginAccess();
        *v143 = 1;
      }

      LODWORD(v218) = v134;
      v144 = v197;
      v214 = ~v213;
      v145 = v205;
      v146 = v204;
      if (!v142 || v175 || ((v198 ^ 1 | v215) & 1) == 0)
      {
        swift_beginAccess();
        *v143 = 1;
      }

      v212 = (v142 >> 14);
      sub_10000905C(0, &qword_1006AEDC0);
      v215 = static OS_dispatch_queue.main.getter();
      v147 = v180;
      v148 = v141;
      (v210)(v180, v146, v141);
      v149 = v181;
      sub_100007204(v145, v181, &qword_1006B68E8);
      v150 = (v144 + 25) & ~v144;
      v151 = v150 + v201;
      v152 = (v213 + v150 + v201 + 4) & v214;
      v153 = v152 + v202;
      v154 = (v152 + v202 + 9) & 0xFFFFFFFFFFFFFFF8;
      v155 = swift_allocObject();
      *(v155 + 16) = v217;
      *(v155 + 24) = v196;
      v177((v155 + v150), v147, v148);
      v156 = (v155 + v151);
      *v156 = v212;
      v156[1] = v219;
      v156[2] = v216;
      v156[3] = v208;
      sub_100035318(v149, v155 + v152, &qword_1006B68E8);
      v157 = (v155 + v153);
      *v157 = v209;
      v157[1] = v218;
      *(v155 + v154) = v211;
      aBlock[4] = sub_10021ED30;
      aBlock[5] = v155;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10062DA70;
      v158 = _Block_copy(aBlock);
      v159 = v217;

      v160 = v182;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
      v161 = v184;
      v162 = v187;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v163 = v215;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v158);

      (*(v186 + 8))(v161, v162);
      (*(v183 + 8))(v160, v185);
      sub_100012DF0(v205, &qword_1006B68E8);
      v164 = v199[1];
      v165 = v176;
      (v164)(v204, v176);
      sub_100012DF0(v203, &qword_1006B68E8);
      (v164)(v206, v165);
    }

    goto LABEL_57;
  }

  v94 = 0;
  v208 = (v93 + ((*(v215 + 80) + 32) & ~*(v215 + 80)));
  v207 = (v215 + 16);
  v95 = (v170 + 8);
  v96 = (v215 + 8);
  while (v94 < *(v93 + 16))
  {
    (*(v215 + 16))(v218, &v208[*(v215 + 72) * v94], v219);
    v97 = FMFDevice.identifier.getter();
    v99 = v98;

    v100 = v214;
    dispatch thunk of FMFManager.myInfo.getter();

    v101 = v210;
    if (v212(v100, 1, v210) == 1)
    {
      sub_100012DF0(v100, &qword_1006AF748);
LABEL_37:

      goto LABEL_38;
    }

    v102 = FMFMyInfo.meDeviceId.getter();
    v104 = v103;
    (*v95)(v100, v101);
    if (!v104)
    {
      goto LABEL_37;
    }

    if (v97 == v102 && v104 == v99)
    {

LABEL_62:

      v166 = v215;
      v106 = v203;
      v167 = v219;
      (*(v215 + 32))(v203, v218, v219);
      (*(v166 + 56))(v106, 0, 1, v167);
      goto LABEL_48;
    }

    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v105)
    {
      goto LABEL_62;
    }

LABEL_38:
    ++v94;
    (*v96)(v218, v219);
    if (v209 == v94)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_68:
  swift_once();
LABEL_3:
  v49 = type metadata accessor for Logger();
  sub_100005B14(v49, qword_1006D4630);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "FMDeviceDetailContentViewController: cannot enable notify when detach for unknown device", v52, 2u);
  }
}

uint64_t sub_100206E04(char a1, char a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, void *a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15)
{
  LODWORD(v47) = a8;
  LODWORD(v54) = a7;
  v64 = a5;
  v65 = a4;
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v19 - 8);
  v63 = v19;
  __chkstk_darwin(v19);
  v60 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007EBC0(&qword_1006B68E8);
  v53 = *(v22 - 8);
  v23 = *(v53 + 64);
  __chkstk_darwin(v22 - 8);
  v56 = &v47 - v24;
  v55 = type metadata accessor for FMIPDevice();
  v25 = *(v55 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v55);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  if ((v65 & 1) != 0 && (v64 & 1) != 0 && (a1 & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  v51 = a15;
  v50 = a13;
  v49 = a12;
  v48 = a10;
  v52 = a9;
  v57 = a6;
  if ((a6 & 1) == 0 || (v54 & 1) != 0 || ((v65 ^ 1 | v64 | v47) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v54 = static OS_dispatch_queue.main.getter();
  v28 = v55;
  (*(v25 + 16))(&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a11, v55);
  v29 = v56;
  sub_100007204(a14, v56, &qword_1006B68E8);
  v30 = *(v25 + 80);
  v47 = a3;
  v31 = (v30 + 25) & ~v30;
  v32 = v31 + v26;
  v33 = (*(v53 + 80) + v32 + 4) & ~*(v53 + 80);
  v34 = v33 + v23;
  v35 = swift_allocObject();
  v36 = v25;
  v37 = v52;
  *(v35 + 16) = v52;
  *(v35 + 24) = v48 & 1;
  (*(v36 + 32))(v35 + v31, v27, v28);
  v38 = (v35 + v32);
  *v38 = v57 & 1;
  v38[1] = v49 & 1;
  v38[2] = v50 & 1;
  v38[3] = v65 & 1;
  sub_100035318(v29, v35 + v33, &qword_1006B68E8);
  v39 = (v35 + v34);
  *v39 = v64 & 1;
  v39[1] = v51 & 1;
  *(v35 + ((v34 + 9) & 0xFFFFFFFFFFFFFFF8)) = v47;
  aBlock[4] = sub_1002204D0;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062DAE8;
  v40 = _Block_copy(aBlock);
  v41 = v37;

  v42 = v58;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v43 = v60;
  v44 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = v54;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v62 + 8))(v43, v44);
  return (*(v59 + 8))(v42, v61);
}

void sub_10020746C(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v50 = a11;
  v42 = a10;
  v43 = a9;
  v44 = a2;
  v13 = type metadata accessor for FMIPDeviceState();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v20 = sub_10007EBC0(&qword_1006B68E8);
  __chkstk_darwin(v20 - 8);
  v22 = &v39 - v21;
  v49 = a1;
  v41 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
  v40 = *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView);
  v39 = *(FMIPDevice.safeLocations.getter() + 16);

  sub_100007204(a8, v22, &qword_1006B68E8);
  v23 = type metadata accessor for FMFDevice();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100012DF0(v22, &qword_1006B68E8);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = FMFDevice.name.getter();
    v26 = v28;
    (*(v24 + 8))(v22, v23);
    v25 = v27;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.separationWarningPaused.getter();
  sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v29 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v30 = *(v14 + 8);
  v30(v17, v13);
  v30(v19, v13);
  v31 = v49;
  v32 = *(*(v49 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16);
  v33 = sub_100057590();

  v34 = (v33 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  v35 = v40;
  sub_100241AEC(v44 & 1, v39, v45 & 1, v46 & 1, v47 & 1, v48 & 1, v25, v26, v43 & 1, (v42 & 1) == 0, v29 & 1, v34);

  v36 = *(v31 + v41);
  v37 = v50;
  swift_beginAccess();
  LOBYTE(v37) = *(v37 + 16);
  v38 = v36;
  sub_100242940(v37);
}

void sub_10020782C(int a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v4 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = (*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];

  sub_1000E512C(v15, v16, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMDeviceDetailContentViewController: cannot enable notify when detach for unknown device", v20, 2u);
    }
  }

  else
  {
    v32 = *(v8 + 32);
    v32(v13, v6, v7);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v33 & 1;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMDeviceDetailContentViewController: Setting Notify when detached to state = %{BOOL}d", v24, 8u);
    }

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v11, v13, v7);
    v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    v32((v27 + v26), v11, v7);
    v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    v29 = v34;
    v30 = v35;
    *v28 = v34;
    v28[1] = v30;
    sub_100062900(v29);
    sub_1000C5474(sub_10021EAEC, v27, 0, 0);

    (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_100207CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a4;
    v10[4] = a5;

    v11 = v9;
    sub_100062900(a4);
    sub_1000DDAB8(a3, sub_10021EBD8, v10);
  }

  return result;
}

void sub_100207DA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL), uint64_t a5)
{
  v30[2] = a5;
  v31 = a4;
  v30[1] = a1;
  v7 = type metadata accessor for FMIPActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPDeviceState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  if (a2 && *(a2 + 16))
  {
    type metadata accessor for FMIPDevice();
    FMIPDevice.state.getter();
    static FMIPDeviceState.isNotifyWhenDetachedEnabled.getter();
    sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
    v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v19 = *(v12 + 8);
    v19(v15, v11);
    v19(v17, v11);
    v20 = *(*(a3 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16);
    v21 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView);
    v22 = v20;
    v23 = sub_100057590();

    v24 = (v23 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v25 = v18 & 1;
  }

  else
  {
    v26 = *(*(a3 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16);
    v21 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView);
    v27 = v26;
    v28 = sub_100057590();

    v24 = (v28 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v25 = 0;
  }

  sub_100242594(v25, v24);

  v29 = v31;
  if (v31)
  {
    (*(v8 + 104))(v10, enum case for FMIPActionStatus.success(_:), v7);
    sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v8 + 8))(v10, v7);
    v29(v33 == v32);
    sub_10001835C(v29);
  }
}

void sub_10020816C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];

  sub_1000E512C(v14, v13, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "DeviceDetailContentViewController: cannot enable notify when left behind for unknown device", v18, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v19 = objc_allocWithZone(type metadata accessor for FMNotifyWhenDetachedViewController());

    v21 = sub_1003E7A10(v20, v9);
    *&v21[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_delegate + 8] = &off_10062D290;
    swift_unknownObjectWeakAssign();
    objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v22 = v21;
    v23 = sub_1000CC510(v22, 2);
    [v23 setDelegate:v23];
    [v1 presentViewController:v23 animated:1 completion:0];

    (*(v6 + 8))(v11, v5);
  }
}

void sub_10020850C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v30 = a1;
  v6 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-v7];
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  sub_1000E512C(v15, v14, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMDeviceDetailContentViewController: cannot enable/disable show contact details for unknown device", v19, 2u);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v30 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMDeviceDetailContentViewController: Show contact details button toggled with state = %{BOOL}d", v23, 8u);
    }

    v24 = (*&v4[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView] + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_phoneNumber);
    v25 = *v24;
    v26 = v24[1];
    v27 = swift_allocObject();
    v27[2] = v4;
    v27[3] = a2;
    v27[4] = v31;

    v28 = v4;
    sub_100062900(a2);
    sub_1000DDE18(v12, v25, v26, sub_10021EAE0, v27);

    (*(v10 + 8))(v12, v9);
  }
}

void sub_100208944(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = type metadata accessor for FMIPDeviceState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  if (a2)
  {
    if (*(a2 + 16))
    {
      type metadata accessor for FMIPDevice();
      FMIPDevice.state.getter();
      static FMIPDeviceState.isShowContactDetailsEnabled.getter();
      sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
      LOBYTE(a2) = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v15 = *(v9 + 8);
      v15(v12, v8);
      v15(v14, v8);
    }

    else
    {
      LOBYTE(a2) = 0;
    }
  }

  v16 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView);
  sub_10044C7B8(a2 & 1);

  if (a4)
  {

    a4(a1);
    sub_10001835C(a4);
  }
}

char *sub_100208B54()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v13 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  sub_1000E512C(v15, v14, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "DeviceDetailContentViewController: cannot enable showContactDetails for unknown device", v19, 2u);
    }

    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v21 = *&v0[v12];
    (*(v6 + 16))(v9, v11, v5);
    v22 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber];
    v23 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber + 8];
    objc_allocWithZone(type metadata accessor for FMContactDetailsWelcomeScreenViewController());

    v24 = sub_100228D20(v21, v9, v22, v23);

    *&v24[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate + 8] = &off_10062D280;
    swift_unknownObjectWeakAssign();
    objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v25 = v24;
    v26 = sub_1000CC510(v25, 2);
    [v26 setDelegate:v26];

    [v1 presentViewController:v26 animated:1 completion:0];
    (*(v6 + 8))(v11, v5);
    return v25;
  }
}

uint64_t sub_100208F5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = a3 & 1;
    *(result + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = v7;
    v8 = result;
    [*(result + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:0];
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;

    v10 = v8;
    sub_1000DE0C0(a4, v7, sub_10021EAD4, v9);
  }

  return result;
}

uint64_t sub_100209074(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for FMIPActionStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:1];
  v13 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v14 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v13 + v14, v12, type metadata accessor for FMDeviceDetailViewModel);
  sub_1002053C8(v12);
  sub_1002201E4(v12, type metadata accessor for FMDeviceDetailViewModel);
  (*(v7 + 104))(v9, enum case for FMIPActionStatus.success(_:), v6);
  sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (*(v7 + 8))(v9, v6);
  *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = (v16[2] == v16[1]) & a4;
  return result;
}

void sub_1002092CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v3 = type metadata accessor for FMSeparationWelcomeScreenViewController();
  v4 = objc_allocWithZone(v3);

  v6 = sub_1004DEC88(v5, 0);
  v7 = objc_allocWithZone(v3);

  v9 = sub_1004DEC88(v8, 1);
  *&v9[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8] = &off_10062D208;
  swift_unknownObjectWeakAssign();
  v10 = *&v1[v2];
  sub_10007EBC0(&qword_1006AFC30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100552EE0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v9;
  v12 = objc_allocWithZone(type metadata accessor for FMPageViewController());

  v13 = v6;
  v14 = v9;
  v15 = sub_100141E10(v10, v11);
  v16 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v15];
  [v1 presentViewController:v16 animated:1 completion:0];
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  [v17 setBool:1 forKey:v18];
}

void sub_1002094C8(uint64_t a1)
{
  v2 = v1;
  v93 = a1;
  v3 = sub_10007EBC0(&qword_1006BC990);
  __chkstk_darwin(v3 - 8);
  v95 = &v83 - v4;
  v5 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v5 - 8);
  v96 = &v83 - v6;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v11 - 8);
  v13 = &v83 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v18 = *&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v19 = *(v18 + 24);
  if (v19)
  {
    v92 = v17;
    v20 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
    v21 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];
    v90 = *(v18 + 16);
    v22 = *(v21 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v91 = type metadata accessor for FMPendingActionInfo(0);
    sub_100007204(v22 + *(v91 + 28), v13, &unk_1006B0000);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_100012DF0(v13, &unk_1006B0000);
    }

    else
    {
      v88 = v15;
      v27 = *(v15 + 32);
      v89 = v14;
      v27(v92, v13);
      v28 = objc_allocWithZone(NSDateFormatter);

      v29 = [v28 init];
      static TimeZone.autoupdatingCurrent.getter();
      isa = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v8 + 8))(v10, v7);
      [v29 setTimeZone:isa];

      [v29 setTimeStyle:1];
      v31 = Date._bridgeToObjectiveC()().super.isa;
      v86 = v29;
      v32 = [v29 stringFromDate:v31];

      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v33;

      v87 = v20;
      v34 = *&v2[v20];
      sub_10007EBC0(&unk_1006AF770);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100552220;
      *(v35 + 32) = v90;
      *(v35 + 40) = v19;
      v36 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
      swift_beginAccess();
      sub_100007204(&v2[v36], v96, &unk_1006BB1B0);
      sub_100007204(v93, v95, &qword_1006BC990);
      v37 = objc_allocWithZone(type metadata accessor for FMSeparationNotificationWelcomeViewController());
      v38 = &v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler];
      *v38 = 0;
      v38[1] = 0;
      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v39 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel;
      v40 = objc_allocWithZone(UILabel);

      *&v37[v39] = [v40 init];
      v41 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel;
      *&v37[v41] = [objc_allocWithZone(UILabel) init];
      v42 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView;
      *&v37[v42] = [objc_allocWithZone(UIScrollView) init];
      v43 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView;
      *&v37[v43] = [objc_allocWithZone(UIView) init];
      v44 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton;
      v45 = objc_opt_self();
      v46 = [v45 systemBlueColor];
      v47 = type metadata accessor for FMSingleLinePlatterButton();
      v48 = objc_allocWithZone(v47);
      *&v37[v44] = sub_100038758(v46, 1, 0, 1);
      v49 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton;
      v50 = [v45 clearColor];
      v51 = objc_allocWithZone(v47);
      *&v37[v49] = sub_100038758(v50, 1, 0, 1);
      v52 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
      sub_10000905C(0, &qword_1006BC2B0);
      v53 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000);
      v54 = [objc_allocWithZone(UIImageView) initWithImage:v53];

      *&v37[v52] = v54;
      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint] = 0;
      v55 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
      v56 = type metadata accessor for FMIPItem();
      (*(*(v56 - 8) + 56))(&v37[v55], 1, 1, v56);
      v57 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
      v58 = type metadata accessor for FMIPDevice();
      (*(*(v58 - 8) + 56))(&v37[v57], 1, 1, v58);
      v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 2;
      v59 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion;
      v60 = type metadata accessor for FMIPSafeLocation();
      (*(*(v60 - 8) + 56))(&v37[v59], 1, 1, v60);
      v61 = &v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime];
      *v61 = 0;
      v61[1] = 0;
      v62 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation;
      v63 = type metadata accessor for FMIPSeparationLocation();
      (*(*(v63 - 8) + 56))(&v37[v62], 1, 1, v63);
      v64 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_mapSnapshotter;
      type metadata accessor for FMMapSnapshotter();
      swift_allocObject();
      *&v37[v64] = sub_10012114C();
      v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_type] = 0;
      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs] = v35;
      swift_beginAccess();
      sub_1000BBE44(v96, &v37[v59], &unk_1006BB1B0);
      swift_endAccess();
      v65 = v34;
      v66 = *(v34 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
      swift_beginAccess();
      v67 = 1;
      v68 = *(v66 + *(v91 + 32));
      if (v68)
      {
        v67 = *(v68 + 16);
      }

      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount] = v67;
      v69 = v84;
      *v61 = v85;
      v61[1] = v69;

      swift_beginAccess();
      v70 = v95;
      sub_1000BBE44(v95, &v37[v62], &qword_1006BC990);
      swift_endAccess();
      *&v37[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v65;
      v71 = type metadata accessor for FMMediatedViewController();
      v97.receiver = v37;
      v97.super_class = v71;

      v72 = objc_msgSendSuper2(&v97, "initWithNibName:bundle:", 0, 0);
      sub_1002EEB9C();
      sub_1002EF8A8();
      v73 = objc_allocWithZone(UITapGestureRecognizer);
      v74 = v72;
      v75 = [v73 initWithTarget:v74 action:"primaryAction"];
      [*&v74[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton] addGestureRecognizer:v75];
      v76 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v74 action:"secondaryAction"];

      [*&v74[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton] addGestureRecognizer:v76];

      sub_100012DF0(v70, &qword_1006BC990);
      sub_100012DF0(v96, &unk_1006BB1B0);
      *&v74[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = &off_10062D1F8;
      swift_unknownObjectWeakAssign();
      v77 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v74];
      [v2 presentViewController:v77 animated:1 completion:0];
      v78 = *(*&v2[v87] + 16);
      v79 = *&v2[v94] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      v81 = *(v79 + 16);
      v80 = *(v79 + 24);

      v82 = v78;
      sub_100424A30(v81, v80);

      (*(v88 + 8))(v92, v89);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMDeivceDetailViewController: Cannot present onboarding for unknown identifier", v26, 2u);
    }
  }
}

uint64_t sub_10020A0F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v9 = type metadata accessor for FMIPSafeLocation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMItemNotificationsViewController: Add Safe Location", v16, 2u);
  }

  v17 = *(v5 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v18 = *(v17 + 16);
  v21 = v17 + 24;
  v20 = *(v17 + 24);
  v19 = *(v21 + 8);
  if (!v19 || !*(v19 + 16))
  {
    sub_10007EBC0(&unk_1006AF770);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100552220;
    if (v20)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v20)
    {
      v25 = v20;
    }

    *(v23 + 32) = v24;
    *(v23 + 40) = v25;

    if ((a2 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:

    (*(v10 + 16))(v12, a1, v9);
    type metadata accessor for FMIPAssignSafeLocationToAllSupportedBeaconsAction();
    swift_allocObject();
    v22 = FMIPAssignSafeLocationToAllSupportedBeaconsAction.init(location:)();
    goto LABEL_16;
  }

  if (a2)
  {
    goto LABEL_15;
  }

LABEL_8:
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  swift_allocObject();
  v22 = FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)();
LABEL_16:
  v26 = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = v29;
  *(v27 + 24) = a4;

  sub_1000D6C5C(v26, sub_10021E964, v27);
}

uint64_t sub_10020A424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v12 = String.init<A>(describing:)();
    v14 = sub_100005B4C(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMDeivceDetailViewController: Add Safe Location completed with error: %s", v10, 0xCu);
    sub_100006060(v11);
  }

  return a5(a1 == 0);
}

void sub_10020A5C4()
{
  v1 = v0;
  v2 = sub_1001D73FC();
  v4 = v3;
  v5 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    FMIPSeparationEvent.addSafeLocationTapped.setter();
  }

  (v2)(&aBlock, 0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailContentViewController: Left Behind Button Toggled", v9, 2u);
  }

  if (v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded] == 1)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000C5474(sub_1002206A8, v10, 0, 0);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = [v11 mainBundle];
    v61._object = 0x800000010057D660;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x8000000100586AB0;
    v14.value._object = 0x800000010057D640;
    v61._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v61);

    sub_10007EBC0(&unk_1006B20B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    v18 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress];
    v17 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress + 8];
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10008EE84();
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0xE000000000000000;
    if (v17)
    {
      v20 = v17;
    }

    *(v16 + 32) = v19;
    *(v16 + 40) = v20;

    String.init(format:_:)();

    v21 = v11;
    v22 = [v11 mainBundle];
    v62._object = 0x800000010057D660;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    v23._object = 0x8000000100586AE0;
    v24.value._object = 0x800000010057D640;
    v62._countAndFlagsBits = 0xD00000000000001BLL;
    v24.value._countAndFlagsBits = 0xD000000000000016;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v62);

    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    v52 = v1;
    v27 = String._bridgeToObjectiveC()();

    v59 = sub_10021E838;
    v60 = v26;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10062D6D8;
    v28 = _Block_copy(&aBlock);

    v51 = objc_opt_self();
    v54 = [v51 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    v29 = v21;
    v30 = [v21 mainBundle];
    v63._object = 0x800000010057D660;
    v31._countAndFlagsBits = 0xD000000000000030;
    v31._object = 0x8000000100586B10;
    v32.value._object = 0x800000010057D640;
    v63._countAndFlagsBits = 0xD00000000000001BLL;
    v32.value._countAndFlagsBits = 0xD000000000000016;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v63);

    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() alertControllerWithTitle:v34 message:v35 preferredStyle:1];

    [v36 addAction:v54];
    v37 = [v29 mainBundle];
    v64._object = 0x800000010057D660;
    v38._countAndFlagsBits = 0xD000000000000034;
    v38._object = 0x8000000100586B50;
    v39.value._object = 0x800000010057D640;
    v64._countAndFlagsBits = 0xD00000000000001BLL;
    v39.value._countAndFlagsBits = 0xD000000000000016;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v64);

    v41 = swift_allocObject();
    *(v41 + 16) = v52;
    v53 = v52;
    v42 = String._bridgeToObjectiveC()();

    v59 = sub_10021E878;
    v60 = v41;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10062D728;
    v43 = _Block_copy(&aBlock);

    v44 = [v51 actionWithTitle:v42 style:0 handler:v43];
    _Block_release(v43);

    [v36 addAction:v44];
    v45 = [v29 mainBundle];
    v46._countAndFlagsBits = 0xD000000000000013;
    v65._object = 0x800000010057B8F0;
    v46._object = 0x800000010057B8D0;
    v65._countAndFlagsBits = 0xD000000000000025;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v65);

    v48 = String._bridgeToObjectiveC()();

    v59 = State.rawValue.getter;
    v60 = 0;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10062D750;
    v49 = _Block_copy(&aBlock);

    v50 = [v51 actionWithTitle:v48 style:0 handler:v49];
    _Block_release(v49);

    [v36 addAction:v50];
    [v53 presentViewController:v36 animated:1 completion:0];
  }
}

void sub_10020ADAC(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1001D73FC();
  v11 = v10;
  v12 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    FMIPSeparationEvent.addToAllTapped.setter();
  }

  (v9)(v20, 0);
  v13 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(a1 + v13, v4, &unk_1006BB1B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005B14(v14, qword_1006D4630);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceDetailContentViewController: No pending safe location", v17, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = a1;
    sub_10020A0F0(v8, 1, sub_10021E924, v18);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10020B0DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_10020B3AC(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(a1 + v9, v4, &unk_1006BB1B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMDeviceDetailContentViewController: No pending safe location", v13, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = a1;
    sub_10020A0F0(v8, 0, sub_10021E8C0, v14);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10020B668(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v40 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    aBlock[4] = a4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = a5;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v40;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v41 + 8))(v11, v9);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMDeviceDetailContentViewController: Add Safe Location failed", v24, 2u);
    }

    v25 = objc_opt_self();
    v26 = [v25 mainBundle];
    v44._object = 0x800000010057D660;
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    v27._object = 0x8000000100586B90;
    v28.value._object = 0x800000010057D640;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    v28.value._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v44);

    v31 = [v25 mainBundle];
    v45._object = 0x800000010057D660;
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x8000000100586BB0;
    v33.value._object = 0x800000010057D640;
    v45._countAndFlagsBits = 0xD00000000000001BLL;
    v33.value._countAndFlagsBits = 0xD000000000000016;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v45);

    v36 = [v25 mainBundle];
    v46._object = 0x8000000100579B60;
    v37._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v37._object = 0xEF454C5449545F4ELL;
    v46._countAndFlagsBits = 0xD000000000000021;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

    sub_10027CEB4(v30._countAndFlagsBits, v30._object, v35._countAndFlagsBits, v35._object, v39._countAndFlagsBits, v39._object);
  }
}

uint64_t sub_10020BBC4(uint64_t a1)
{
  v2 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded) = 1;
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v6 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v5 + v6, v4, type metadata accessor for FMDeviceDetailViewModel);
  sub_1001F995C();
  return sub_1002201E4(v4, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_10020BCFC()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v101 - v2;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v108 = (&v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v111 = &v101 - v9;
  v10 = __chkstk_darwin(v8);
  v107 = &v101 - v11;
  v110 = v12;
  __chkstk_darwin(v10);
  v14 = &v101 - v13;
  v109 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v15 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v16 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];

  v19 = v17;
  v20 = v4;
  v21 = v5;
  sub_1000E512C(v19, v18, v3);

  if ((*(v5 + 48))(v3, 1, v20) == 1)
  {
    sub_100012DF0(v3, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4630);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMDeviceDetailContentViewController: cannot remove an unknown device", v25, 2u);
    }
  }

  else
  {
    v26 = *(v5 + 32);
    v26(v14, v3, v20);
    v105 = v0;
    v27 = *&v0[v15] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v28 = *(v27 + *(type metadata accessor for FMDeviceDetailViewModel() + 92) + 2);
    v106 = v14;
    if ((v28 & 0x10) != 0)
    {
      v109 = v21 + 32;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v108 = v26;
      v43 = type metadata accessor for Logger();
      sub_100005B14(v43, qword_1006D4630);
      v44 = *(v21 + 16);
      v45 = v107;
      v104 = v21 + 16;
      v103 = v44;
      v44(v107, v14, v20);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v102 = v21;
      if (v48)
      {
        v49 = swift_slowAlloc();
        v50 = v20;
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v49 = 136315138;
        v52 = FMIPDevice.name.getter();
        v54 = v53;
        v55 = v45;
        v56 = v50;
        (*(v21 + 8))(v55, v50);
        v57 = sub_100005B4C(v52, v54, aBlock);

        *(v49 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v46, v47, "FMDeviceDetailContentViewController: Remove button selected but needs repair for device: %s", v49, 0xCu);
        sub_100006060(v51);
      }

      else
      {

        (*(v21 + 8))(v45, v20);
        v56 = v20;
      }

      v73 = objc_opt_self();
      v74 = [v73 mainBundle];
      v113._object = 0x8000000100586960;
      v75._countAndFlagsBits = 0xD000000000000019;
      v75._object = 0x8000000100586940;
      v113._countAndFlagsBits = 0xD00000000000002BLL;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v113);

      v77 = [v73 mainBundle];
      v114._object = 0x80000001005869B0;
      v78._countAndFlagsBits = 0xD00000000000001CLL;
      v78._object = 0x8000000100586990;
      v114._countAndFlagsBits = 0xD00000000000002ELL;
      v79._countAndFlagsBits = 0;
      v79._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v114);

      v80 = String._bridgeToObjectiveC()();

      v81 = String._bridgeToObjectiveC()();

      v82 = [objc_opt_self() alertControllerWithTitle:v80 message:v81 preferredStyle:1];

      v83 = [v73 mainBundle];
      v115._object = 0x800000010057B8F0;
      v84._object = 0x800000010057B8D0;
      v115._countAndFlagsBits = 0xD000000000000025;
      v84._countAndFlagsBits = 0xD000000000000013;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v115);

      v86 = String._bridgeToObjectiveC()();

      v107 = objc_opt_self();
      v87 = [v107 actionWithTitle:v86 style:1 handler:0];

      [v82 addAction:v87];
      v88 = [v73 mainBundle];
      v116._object = 0x800000010057B8A0;
      v89._countAndFlagsBits = 0xD000000000000015;
      v89._object = 0x800000010057B880;
      v116._countAndFlagsBits = 0xD000000000000027;
      v90._countAndFlagsBits = 0;
      v90._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v116);

      v91 = v111;
      v92 = v106;
      v103(v111, v106, v56);
      v93 = v102;
      v94 = (*(v102 + 80) + 24) & ~*(v102 + 80);
      v95 = swift_allocObject();
      v96 = v105;
      *(v95 + 16) = v105;
      v108(v95 + v94, v91, v56);
      v97 = v96;
      v98 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_10021E710;
      aBlock[5] = v95;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100017328;
      aBlock[3] = &unk_10062D660;
      v99 = _Block_copy(aBlock);

      v100 = [v107 actionWithTitle:v98 style:0 handler:v99];
      _Block_release(v99);

      [v82 addAction:v100];
      [v97 presentViewController:v82 animated:1 completion:0];

      (*(v93 + 8))(v92, v56);
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100005B14(v29, qword_1006D4630);
      v30 = *(v21 + 16);
      v31 = v108;
      v30(v108, v14, v20);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = v30;
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v34 = 136315138;
        v37 = FMIPDevice.name.getter();
        v38 = v31;
        v39 = v20;
        v41 = v40;
        v110 = *(v21 + 8);
        v110(v38, v39);
        v42 = sub_100005B4C(v37, v41, aBlock);
        v20 = v39;

        *(v34 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v32, v33, "FMDeviceDetailContentViewController: Remove Accessory Device %s", v34, 0xCu);
        sub_100006060(v36);
        v30 = v35;
      }

      else
      {

        v110 = *(v21 + 8);
        v110(v31, v20);
      }

      v58 = v105;
      v59 = v106;
      v60 = v111;
      v30(v111, v106, v20);
      v61 = objc_allocWithZone(type metadata accessor for FMRemoveDeviceViewController());

      v63 = sub_1005047C0(v62, v60);
      objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
      v64 = v63;
      v65 = sub_1000CC510(v64, 2);
      [v65 setDelegate:v65];
      v66 = qword_1006AEC30;
      v67 = v65;
      if (v66 != -1)
      {
        swift_once();
      }

      v68 = [objc_opt_self() mainScreen];
      [v68 bounds];
      v70 = v69;
      v72 = v71;

      [v67 setPreferredContentSize:{fmin(v70, 520.0), fmin(v72, 720.0)}];
      [v58 presentViewController:v67 animated:1 completion:0];

      v110(v59, v20);
    }
  }
}

uint64_t sub_10020C928(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = (v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v9, v8, v5);
  *(v11 + v10) = a2;

  sub_1000DE3B4(a3, a2, sub_10021E784, v11);
}

void sub_10020CAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v67 - v14;
  __chkstk_darwin(v13);
  v17 = v67 - v16;
  if (!a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    (*(v9 + 16))(v17, a4, v8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      (*(v9 + 8))(v17, v8);
      return;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = 136315138;
    v30 = FMIPDevice.name.getter();
    v32 = v31;
    (*(v9 + 8))(v17, v8);
    v33 = sub_100005B4C(v30, v32, &v68);

    *(v28 + 4) = v33;
    v34 = "FMDeviceDetailContentViewController: Repair device %s succeeded";
    goto LABEL_20;
  }

  swift_getErrorValue();
  v18 = sub_100271E80(v67[1]);
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v20)
  {
    if (v18 == v21 && v20 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    swift_getErrorValue();
    if (sub_100271D20(v67[5]) == -7003)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100005B14(v35, qword_1006D4630);
      (*(v9 + 16))(v12, a4, v8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v26, v27))
      {

        (*(v9 + 8))(v12, v8);
        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v68 = v29;
      *v28 = 136315138;
      v36 = FMIPDevice.name.getter();
      v38 = v37;
      (*(v9 + 8))(v12, v8);
      v39 = sub_100005B4C(v36, v38, &v68);

      *(v28 + 4) = v39;
      v34 = "FMDevicesListDataSource: Repair device %s, user cancelled auth.";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v26, v27, v34, v28, 0xCu);
      sub_100006060(v29);

      return;
    }
  }

  else
  {
  }

LABEL_21:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100005B14(v40, qword_1006D4630);
  (*(v9 + 16))(v15, a4, v8);
  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v43 = 136315394;
    v44 = FMIPDevice.name.getter();
    v45 = v8;
    v47 = v46;
    (*(v9 + 8))(v15, v45);
    v48 = sub_100005B4C(v44, v47, &v68);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v67[8] = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v49 = String.init<A>(describing:)();
    v51 = sub_100005B4C(v49, v50, &v68);

    *(v43 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "FMDeviceDetailContentViewController: Repair device %s failed with error: %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  v52 = objc_opt_self();
  v53 = [v52 mainBundle];
  v54._countAndFlagsBits = 0xD00000000000001FLL;
  v69._object = 0x8000000100586A00;
  v54._object = 0x80000001005869E0;
  v69._countAndFlagsBits = 0xD000000000000031;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v69);

  v56 = [v52 mainBundle];
  v70._object = 0x8000000100586A70;
  v57._object = 0x8000000100586A40;
  v70._countAndFlagsBits = 0xD000000000000033;
  v57._countAndFlagsBits = 0xD000000000000021;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v56, v58, v70);

  v59 = String._bridgeToObjectiveC()();

  v60 = String._bridgeToObjectiveC()();

  v61 = [objc_opt_self() alertControllerWithTitle:v59 message:v60 preferredStyle:1];

  v62 = [v52 mainBundle];
  v71._object = 0x8000000100579B60;
  v63._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v63._object = 0xEF454C5449545F4ELL;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v71);

  v65 = String._bridgeToObjectiveC()();

  v66 = [objc_opt_self() actionWithTitle:v65 style:0 handler:0];

  [v61 addAction:v66];
  [a5 presentViewController:v61 animated:1 completion:0];
}

void sub_10020D468()
{
  sub_10020DB1C(319, &qword_1006B3F80, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_10020DB1C(319, &qword_1006B67A8, &type metadata accessor for FMIPAirPodsPlaySoundEvent);
    if (v1 <= 0x3F)
    {
      sub_10020DB1C(319, &qword_1006BB190, &type metadata accessor for FMIPSafeLocation);
      if (v2 <= 0x3F)
      {
        sub_10020DB1C(319, &qword_1006B67B0, &type metadata accessor for FMIPSeparationEvent);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10020D6E8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v23 = a1;
  v2 = type metadata accessor for FMIPDevice();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPAnalyticsProductType();
  __chkstk_darwin(v4 - 8);
  v20 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPAnalyticsActionType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPActionEvent();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v21, v8);

  v16 = v23;
  v17 = FMIPDevice.isOwned.getter();
  v18 = &enum case for FMIPAnalyticsOwnerContext.owner(_:);
  if ((v17 & 1) == 0)
  {
    v18 = &enum case for FMIPAnalyticsOwnerContext.shared(_:);
  }

  (*(v5 + 104))(v7, *v18, v20);
  (*(v24 + 16))(v22, v16, v25);
  FMIPAnalyticsProductType.init(device:)();
  FMIPActionEvent.init(type:ownerContext:productType:)();
  FMIPManager.enqueue(actionEvent:)();
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_10020DA3C()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v5 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v4 + v5, v3, type metadata accessor for FMDeviceDetailViewModel);
  sub_1001DFC5C(v3);
  return sub_1002201E4(v3, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_10020DB1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10020DB78()
{
  sub_10000905C(0, &qword_1006B4980);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {

    return sub_1004244CC();
  }

  return result;
}

void sub_10020DBEC()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100208F2C(0);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention);
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention) = 0;
  if (v4 == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
    v6 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    sub_10022017C(v5 + v6, v3, type metadata accessor for FMDeviceDetailViewModel);
    sub_1001DFC5C(v3);
    sub_1002201E4(v3, type metadata accessor for FMDeviceDetailViewModel);
  }
}

uint64_t sub_10020DCF8(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceDetailViewModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_10007EBC0(&unk_1006BEF30);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask;
  if (!*&a1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask] && !*&a1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken])
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_10022017C(a2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMDeviceDetailViewModel);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_10021FB38(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FMDeviceDetailViewModel);
    *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v15 = a1;
    *&a1[v11] = sub_10047F498(0, 0, v10, &unk_100558B98, v14);
  }

  return result;
}

uint64_t sub_10020DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  sub_10007EBC0(&unk_1006B20C0);
  v5[41] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[42] = v8;
  v5[43] = *(v8 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return _swift_task_switch(sub_10020E0C4, 0, 0);
}

uint64_t sub_10020E0C4()
{
  if (!*(v0[33] + 24))
  {
LABEL_7:

    v6 = v0[1];

    return v6();
  }

  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  UUID.init(uuidString:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100012DF0(v0[41], &unk_1006B20C0);
    goto LABEL_7;
  }

  (*(v0[43] + 32))(v0[45], v0[41], v0[42]);
  static Task<>.checkCancellation()();
  v0[46] = 0;
  type metadata accessor for MainActor();
  v0[47] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020E56C, v5, v4);
}

uint64_t sub_10020E56C()
{
  v1 = *(v0 + 272);

  v2 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession);
  *(v0 + 384) = v2;
  v3 = v2;

  return _swift_task_switch(sub_10020E5F0, 0, 0);
}

uint64_t sub_10020E5F0()
{
  v1 = v0[48];
  if (v1)
  {
    v2 = v1;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[49] = isa;
    v0[2] = v0;
    v0[7] = v0 + 31;
    v0[3] = sub_10020E97C;
    v4 = swift_continuation_init();
    v0[17] = sub_10007EBC0(&qword_1006B6988);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10020F6A0;
    v0[13] = &unk_10062F898;
    v0[14] = v4;
    [v2 peripheralConnectionMaterialForAccessoryIdentifier:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v18 = v0[42];
    v19 = v0[45];
    v15 = v0[39];
    v5 = v0[37];
    v16 = v0[38];
    v17 = v0[43];
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[34];
    v14 = v0[40];
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v0[22] = sub_1002200EC;
    v0[23] = v9;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100004AE4;
    v0[21] = &unk_10062F870;
    v10 = _Block_copy(v0 + 18);
    v11 = v8;
    static DispatchQoS.unspecified.getter();
    v0[30] = _swiftEmptyArrayStorage;
    sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v6 + 8))(v5, v7);
    (*(v15 + 8))(v14, v16);
    (*(v17 + 8))(v19, v18);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10020E97C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {

    v3 = sub_10020F2E0;
  }

  else
  {
    v3 = sub_10020EA94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020EA94()
{
  v70 = v0;
  v1 = v0[46];
  v2 = v0[31];

  static Task<>.checkCancellation()();
  v3 = v0[48];
  v4 = &off_100550000;
  if (v1)
  {

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "FMDeviceDetailContentViewController: Attempting to get connection material failed with error: %@", v8, 0xCu);
      sub_100012DF0(v9, &unk_1006AF760);
    }

    else
    {
    }
  }

  else
  {
    v67 = v2;

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = v0[44];
    v11 = v0[45];
    v14 = v0[42];
    v13 = v0[43];
    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    (*(v13 + 16))(v12, v11, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[43];
    v20 = v0[44];
    v21 = v0[42];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v69 = v23;
      *v22 = 136315138;
      sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v19 + 8))(v20, v21);
      v27 = sub_100005B4C(v24, v26, &v69);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMDeviceDetailContentViewController: Got pheripheral connection material successfully for %s", v22, 0xCu);
      sub_100006060(v23);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    v28 = v0[40];
    v62 = v0[39];
    v64 = v0[38];
    v57 = v0[37];
    v59 = v0[48];
    v29 = v0[35];
    v60 = v0[36];
    v30 = v0[34];
    v31 = objc_opt_self();
    v32 = [v67 btAddressWithTypeData];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000A858(v33, v35);
    v37 = [v67 irkData];
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = Data._bridgeToObjectiveC()().super.isa;
    sub_10000A858(v38, v40);
    v42 = [v31 generateBluetoothDeviceTokenWithPublicAddress:isa IRK:v41];

    v43 = swift_allocObject();
    *(v43 + 16) = v30;
    *(v43 + 24) = v42;
    v0[28] = sub_100220130;
    v0[29] = v43;
    v0[24] = _NSConcreteStackBlock;
    v0[25] = 1107296256;
    v0[26] = sub_100004AE4;
    v0[27] = &unk_10062F8E8;
    v44 = _Block_copy(v0 + 24);
    v45 = v30;
    v46 = v42;
    static DispatchQoS.unspecified.getter();
    v0[32] = _swiftEmptyArrayStorage;
    sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v47 = v44;
    v4 = &off_100550000;
    _Block_release(v47);

    (*(v60 + 8))(v57, v29);
    (*(v62 + 8))(v28, v64);
  }

  aBlock = v0[42];
  v68 = v0[45];
  v61 = v0[39];
  v48 = v0[37];
  v63 = v0[38];
  v65 = v0[43];
  v50 = v0[35];
  v49 = v0[36];
  v51 = v0[34];
  v58 = v0[40];
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  v0[22] = sub_1002200EC;
  v0[23] = v52;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = *(v4 + 130);
  v0[20] = sub_100004AE4;
  v0[21] = &unk_10062F870;
  v53 = _Block_copy(v0 + 18);
  v54 = v51;
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v53);
  (*(v49 + 8))(v48, v50);
  (*(v61 + 8))(v58, v63);
  (*(v65 + 8))(v68, aBlock);

  v55 = v0[1];

  return v55();
}

uint64_t sub_10020F2E0()
{
  v1 = v0[49];
  v2 = v0[48];
  swift_willThrow();

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMDeviceDetailContentViewController: Attempting to get connection material failed with error: %@", v6, 0xCu);
    sub_100012DF0(v7, &unk_1006AF760);
  }

  else
  {
  }

  v22 = v0[42];
  v23 = v0[45];
  v19 = v0[39];
  v9 = v0[37];
  v20 = v0[38];
  v21 = v0[43];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[34];
  v18 = v0[40];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v0[22] = sub_1002200EC;
  v0[23] = v13;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100004AE4;
  v0[21] = &unk_10062F870;
  v14 = _Block_copy(v0 + 18);
  v15 = v12;
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v10 + 8))(v9, v11);
  (*(v19 + 8))(v18, v20);
  (*(v21 + 8))(v23, v22);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10020F6A0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000244BC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10007EBC0(&unk_1006AF7B0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_10020F7E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FindingMode(0);
  __chkstk_darwin(v3);
  v5 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v6 - 8);
  v71 = &v64 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPDevice();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v72 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v73 = v12;
    v65 = v11;
    v67 = v3;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = v19;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v70 = v23;
    v24 = os_log_type_enabled(v22, v23);
    v25 = &qword_1006B6000;
    v66 = v5;
    v68 = v9;
    v69 = v8;
    v74 = v21;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75 = v64;
      *v26 = 136315394;
      v27 = *(*&v21[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
      v28 = *(*v27 + class metadata base offset for ManagedBuffer + 16);
      v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v27 + v29));
      v30 = v73;
      (*(v13 + 16))(v17, v27 + v28, v73);
      os_unfair_lock_unlock((v27 + v29));

      v31 = FMIPDevice.baIdentifier.getter();
      v33 = v32;
      (*(v13 + 8))(v17, v30);
      v76 = v31;
      v77 = v33;
      sub_10007EBC0(&qword_1006AF8F0);
      v34 = String.init<A>(describing:)();
      v36 = sub_100005B4C(v34, v35, &v75);

      *(v26 + 4) = v36;
      *(v26 + 12) = 2080;
      v76 = a2;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v37 = String.init<A>(describing:)();
      v39 = sub_100005B4C(v37, v38, &v75);

      *(v26 + 14) = v39;
      v25 = &qword_1006B6000;
      _os_log_impl(&_mh_execute_header, v22, v70, "FMDeviceDetailContentViewController, fast advertisement stopped for device: %s. With error?: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v30 = v73;
    }

    v40 = v25[181];
    v41 = *(*&v74[v40] + 40);
    v42 = *(*v41 + class metadata base offset for ManagedBuffer + 16);
    v43 = (*(*v41 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v41 + v43));
    v44 = *(v13 + 16);
    v44(v17, v41 + v42, v30);
    os_unfair_lock_unlock((v41 + v43));

    v45 = FMIPDevice.isLocalFindable.getter();
    v46 = *(v13 + 8);
    v46(v17, v30);
    if (v45)
    {
      v47 = v74;
      v48 = *&v74[v40];
      v49 = v48 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      if (*(v49 + *(type metadata accessor for FMDeviceDetailViewModel() + 156)) == 1)
      {
        v50 = *(v48 + 40);
        v51 = *(*v50 + class metadata base offset for ManagedBuffer + 16);
        v52 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v50 + v52));
        v53 = v50 + v51;
        v55 = v72;
        v54 = v73;
        v44(v72, v53, v73);
        os_unfair_lock_unlock((v50 + v52));

        FMIPDevice.baIdentifier.getter();
        v57 = v56;
        v46(v55, v54);
        if (v57)
        {
          v58 = v71;
          UUID.init(uuidString:)();

          v60 = v68;
          v59 = v69;
          if ((*(v68 + 48))(v58, 1, v69) == 1)
          {

            sub_100012DF0(v58, &unk_1006B20C0);
            return;
          }

          v61 = v65;
          (*(v60 + 32))(v65, v58, v59);
          v62 = *(v60 + 16);
          v63 = v66;
          v62(v66, v61, v59);
          swift_storeEnumTagMultiPayload();
          sub_100162FAC(v63);
          sub_1002201E4(v63, type metadata accessor for FindingMode);
          v62(v63, v61, v59);
          swift_storeEnumTagMultiPayload();
          sub_100458B70(v63);
          sub_1002201E4(v63, type metadata accessor for FindingMode);
          (*(v60 + 8))(v61, v59);
        }
      }
    }

    else
    {
    }
  }
}

void sub_10020FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7)
{
  v13 = type metadata accessor for FMIPItemActionStatus();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v27 = a1;
    v28 = a7;
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v26 = a6;
      v21 = v20;
      v30 = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_100005B4C(a4, a5, &v30);
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_100005B4C(v22, v23, &v30);

      *(v21 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMDeviceDetailContentViewController: Failed to play sound for item identifier: %s - error: %s", v21, 0x16u);
      swift_arrayDestroy();

      a6 = v26;
    }

    else
    {
    }
  }

  if (a6)
  {
    (*(v14 + 104))(v16, enum case for FMIPItemActionStatus.success(_:), v13);
    sub_10021E650(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v14 + 8))(v16, v13);
    a6(v30 == v29);
  }
}

uint64_t sub_100210320(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_100005B4C(v14, v16, v22);

    *(v12 + 10) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMDeviceDetailContentViewController: isRangingServiceAvailable: %{BOOL}d, error: %s", v12, 0x12u);
    sub_100006060(v13);
  }

  *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable) = a1 & 1;
  v18 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v19 = *(v18 + *(v6 + 92));
  sub_10022017C(v18, v8, type metadata accessor for FMDeviceDetailViewModel);
  sub_1001E3A7C(v8, (v19 & 0x1400) != 0);
  return sub_1002201E4(v8, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_1002105F0(uint64_t a1, void *a2, uint64_t a3)
{
  v80 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin(v5);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v11;
  __chkstk_darwin(v10);
  v79 = &v77 - v13;
  v14 = type metadata accessor for FMIPDevice();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  v89 = UUID.uuidString.getter();
  v19 = v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v21 = *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource), v22 = Strong, , v22, v23 = *(v21 + 40), v24 = *v23, v87 = v19, v88 = v9, v25 = v12, v26 = v17, v27 = v14, v28 = v8, v29 = a3, v30 = *(v24 + class metadata base offset for ManagedBuffer + 16), v31 = (*(v24 + 48) + 3) & 0x1FFFFFFFCLL, , os_unfair_lock_lock((v23 + v31)), v32 = v23 + v30, v33 = v29, v8 = v28, v14 = v27, v17 = v26, v12 = v25, v34 = v87, (*(v15 + 16))(v17, v32, v14), v35 = (v23 + v31), v9 = v88, os_unfair_lock_unlock(v35), , , v36 = FMIPDevice.baIdentifier.getter(), v38 = v37, (*(v15 + 8))(v17, v14), v38))
  {
    if (v89 == v36 && v38 == v34)
    {

      goto LABEL_14;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {
LABEL_14:
      swift_beginAccess();
      v60 = swift_unknownObjectWeakLoadStrong();
      if (v60)
      {
        v61 = v9;
        v62 = v60;
        v63 = *(v60 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialUpdateQueue);

        v64 = v79;
        (*(v61 + 2))(v79, v90, v8);
        v65 = (v61[80] + 16) & ~v61[80];
        v66 = (v78 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        v67 = swift_allocObject();
        (*(v61 + 4))(v67 + v65, v64, v8);
        v68 = v80;
        *(v67 + v66) = v80;
        *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
        aBlock[4] = sub_100220264;
        aBlock[5] = v67;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_10062FA50;
        v69 = _Block_copy(aBlock);
        v70 = v68;

        v71 = v81;
        static DispatchQoS.unspecified.getter();
        v92 = _swiftEmptyArrayStorage;
        sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
        v72 = v83;
        v73 = v86;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v69);

        (*(v85 + 8))(v72, v73);
        (*(v82 + 8))(v71, v84);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100005B14(v39, qword_1006D4630);
  (*(v9 + 2))(v12, v90, v8);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    LODWORD(v90) = v41;
    v88 = v17;
    v42 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v92 = v89;
    *v42 = 136315394;
    sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    (*(v9 + 1))(v12, v8);
    v46 = sub_100005B4C(v43, v45, &v92);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
      v49 = v47;

      v50 = *(v48 + 40);
      v51 = v14;
      v52 = *(*v50 + class metadata base offset for ManagedBuffer + 16);
      v53 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v50 + v53));
      v54 = v50 + v52;
      v55 = v88;
      (*(v15 + 16))(v88, v54, v51);
      os_unfair_lock_unlock((v50 + v53));

      v56 = FMIPDevice.baIdentifier.getter();
      v58 = v57;
      (*(v15 + 8))(v55, v51);
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    aBlock[6] = v56;
    aBlock[7] = v58;
    sub_10007EBC0(&qword_1006AF8F0);
    v74 = String.init<A>(describing:)();
    v76 = sub_100005B4C(v74, v75, &v92);

    *(v42 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v40, v90, "Peripheral connection updated for id: %s, doesn't match deviceId: %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 1))(v12, v8);
  }
}

void sub_100210F88(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  (*(v7 + 16))(v9, a1, v6);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = &selRef_initWithScrollView_edge_;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v51 = a3;
    v52[0] = v16;
    *v15 = 136315650;
    sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_100005B4C(v17, v19, v52);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v11 irkData];
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = Data.description.getter();
    v27 = v26;
    sub_10000A858(v22, v24);
    v28 = sub_100005B4C(v25, v27, v52);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2080;
    v29 = [v11 btAddressWithTypeData];
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = Data.description.getter();
    v35 = v34;
    sub_10000A858(v30, v32);
    v36 = sub_100005B4C(v33, v35, v52);
    v14 = &selRef_initWithScrollView_edge_;

    *(v15 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v12, v13, "Peripheral connection updated for id: %s - irk: %s btAddress: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v37 = objc_opt_self();
  v38 = [v11 btAddressWithTypeData];
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10000A858(v39, v41);
  v43 = [v11 v14[97]];
  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = Data._bridgeToObjectiveC()().super.isa;
  sub_10000A858(v44, v46);
  v48 = [v37 generateBluetoothDeviceTokenWithPublicAddress:isa IRK:v47];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = *&Strong[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken];
    *&Strong[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken] = v48;

    v48 = v50;
  }
}

uint64_t sub_100211414(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a3;
  v9(v8, v10);

  return (*(v6 + 8))(v8, v5);
}

void sub_100211528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession;
    v3 = *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession);
    *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession) = 0;

    sub_1001DC624();
    v4 = *&v1[v2];
    if (v4)
    {
      aBlock[4] = sub_10021162C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A44B4;
      aBlock[3] = &unk_10062FA00;
      v5 = _Block_copy(aBlock);
      v6 = v4;
      [v6 startLocalFindableConnectionMaterialMonitoringWithCompletion:v5];

      _Block_release(v5);
      v1 = v6;
    }
  }
}

void sub_10021162C(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Accessory Characteristics monitoring session started!", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error starting characteristic monitoring session: %@", v3, 0xCu);
    sub_100012DF0(v4, &unk_1006AF760);

LABEL_10:

    return;
  }
}

void sub_10021187C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, const char *a6)
{
  v11 = type metadata accessor for FMIPActionStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for FMIPActionStatus.success(_:), v11);
  sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v12 + 8))(v14, v11);
  if (v28 == v27)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100005B4C(a3, a4, &v28);
      _os_log_impl(&_mh_execute_header, v16, v17, a5, v18, 0xCu);
      sub_100006060(v19);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v25;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      *(v23 + 4) = v25;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, a6, v23, 0xCu);
      sub_100012DF0(v24, &unk_1006AF760);
    }
  }
}

uint64_t sub_100211C28()
{
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMyP33_FDB0C6A0A8911E0A6244ECE6337EF12425LostModeStatusCoordinator_continuation, &qword_1006B68D0);

  return swift_deallocClassInstance();
}

void sub_100211CC4()
{
  sub_100211D54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100211D54()
{
  if (!qword_1006B67F8)
  {
    sub_10007EC08(&unk_1006B6800);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B67F8);
    }
  }
}

uint64_t sub_100211DB8(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

Swift::Int sub_100211DE8(void **a1)
{
  v2 = *(sub_10007EBC0(&qword_1006AF940) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F2F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100211E9C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100211E9C(unint64_t *a1)
{
  v2 = a1[1];
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
        sub_10007EBC0(&qword_1006AF940);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10007EBC0(&qword_1006AF940) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100212260(v8, v9, a1, v4);
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
    return sub_100211FE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100211FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_10007EBC0(&qword_1006AF940);
  v8 = __chkstk_darwin(v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = (&v27 - v11);
  result = __chkstk_darwin(v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    while (1)
    {
      sub_100007204(v22, v16, &qword_1006AF940);
      sub_100007204(v19, v12, &qword_1006AF940);
      if (*v16 == *v12 && v16[1] == v12[1])
      {
        sub_100012DF0(v12, &qword_1006AF940);
        result = sub_100012DF0(v16, &qword_1006AF940);
LABEL_5:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_6;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100012DF0(v12, &qword_1006AF940);
      result = sub_100012DF0(v16, &qword_1006AF940);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_100035318(v22, v35, &qword_1006AF940);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100035318(v25, v19, &qword_1006AF940);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100212260(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v132 = sub_10007EBC0(&qword_1006AF940);
  v8 = *(v132 - 8);
  v9 = __chkstk_darwin(v132);
  v122 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v131 = &v112 - v12;
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v129 = (&v112 - v16);
  v17 = __chkstk_darwin(v15);
  v128 = (&v112 - v18);
  v19 = __chkstk_darwin(v17);
  v116 = (&v112 - v20);
  result = __chkstk_darwin(v19);
  v115 = (&v112 - v24);
  v25 = a3[1];
  if (v25 < 1)
  {
    v29 = a3;
    v27 = _swiftEmptyArrayStorage;
LABEL_112:
    a4 = *v117;
    if (!*v117)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_144:
      result = sub_10025EFD4(v27);
      v27 = result;
    }

    v135 = v27;
    v107 = *(v27 + 16);
    if (v107 >= 2)
    {
      while (*v29)
      {
        v108 = v27;
        v27 = v107 - 1;
        v109 = *&v108[16 * v107];
        v110 = *&v108[16 * v107 + 24];
        sub_100212CC8(*v29 + *(v8 + 72) * v109, *v29 + *(v8 + 72) * *&v108[16 * v107 + 16], *v29 + *(v8 + 72) * v110, a4);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_10025EFD4(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_138;
        }

        v111 = &v108[16 * v107];
        *v111 = v109;
        *(v111 + 1) = v110;
        v135 = v108;
        result = sub_10025EF48(v27);
        v27 = v135;
        v107 = *(v135 + 16);
        if (v107 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v133 = v23;
  v134 = v22;
  v112 = a4;
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v28 = &unk_100555E70;
  v29 = a3;
  v118 = a3;
  v126 = v8;
  while (1)
  {
    v30 = v26++;
    v119 = v30;
    if (v26 >= v25)
    {
      goto LABEL_37;
    }

    v124 = v25;
    a4 = *v29;
    v8 = *(v8 + 72);
    v31 = v30;
    v32 = v115;
    sub_100007204(*v29 + v8 * v26, v115, &qword_1006AF940);
    v127 = v8;
    v33 = a4 + v8 * v31;
    v34 = v116;
    sub_100007204(v33, v116, &qword_1006AF940);
    v35 = *v32 == *v34 && v32[1] == v34[1];
    v114 = v5;
    if (v35)
    {
      LODWORD(v125) = 0;
    }

    else
    {
      LODWORD(v125) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v113 = v27;
    sub_100012DF0(v116, &qword_1006AF940);
    result = sub_100012DF0(v115, &qword_1006AF940);
    v36 = v119 + 2;
    v37 = v127 * (v119 + 2);
    v38 = a4 + v37;
    v39 = v127 * v26;
    v5 = a4 + v127 * v26;
    v40 = v26;
    do
    {
      v26 = v36;
      v29 = v40;
      v41 = v39;
      v27 = v37;
      if (v36 >= v124)
      {
        break;
      }

      v130 = v36;
      v42 = v128;
      v8 = &qword_1006AF940;
      sub_100007204(v38, v128, &qword_1006AF940);
      v43 = v129;
      sub_100007204(v5, v129, &qword_1006AF940);
      v44 = *v42 == *v43 && v42[1] == v43[1];
      a4 = v44 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100012DF0(v129, &qword_1006AF940);
      result = sub_100012DF0(v128, &qword_1006AF940);
      v26 = v130;
      v36 = v130 + 1;
      v38 += v127;
      v5 += v127;
      v40 = (v29 + 1);
      v39 = v41 + v127;
      v37 = v27 + v127;
    }

    while (((v125 ^ a4) & 1) == 0);
    if (v125)
    {
      v30 = v119;
      if (v26 < v119)
      {
        goto LABEL_141;
      }

      if (v119 >= v26)
      {
        v5 = v114;
        v29 = v118;
        goto LABEL_36;
      }

      v45 = v119;
      v46 = v119 * v127;
      do
      {
        if (v45 != v29)
        {
          a4 = *v118;
          if (!*v118)
          {
            goto LABEL_147;
          }

          sub_100035318(a4 + v46, v122, &qword_1006AF940);
          if (v46 < v41 || a4 + v46 >= a4 + v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_100035318(v122, a4 + v41, &qword_1006AF940);
        }

        v45 = (v45 + 1);
        v41 -= v127;
        v27 -= v127;
        v46 += v127;
        v47 = v45 < v29;
        v29 = (v29 - 1);
      }

      while (v47);
    }

    v5 = v114;
    v29 = v118;
    v30 = v119;
LABEL_36:
    v8 = v126;
    v27 = v113;
    v28 = &unk_100555E70;
LABEL_37:
    v48 = v29[1];
    if (v26 < v48)
    {
      if (__OFSUB__(v26, v30))
      {
        goto LABEL_140;
      }

      if (v26 - v30 < v112)
      {
        v49 = v30 + v112;
        if (__OFADD__(v30, v112))
        {
          goto LABEL_142;
        }

        if (v49 >= v48)
        {
          v49 = v29[1];
        }

        if (v49 < v30)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v26 != v49)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v26 < v30)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v27 + 16) + 1, 1, v27);
      v27 = result;
    }

    a4 = *(v27 + 16);
    v62 = *(v27 + 24);
    v63 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      result = sub_10008B8B8((v62 > 1), a4 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 16) = v63;
    v64 = v27 + 16 * a4;
    *(v64 + 32) = v119;
    *(v64 + 40) = v26;
    if (!*v117)
    {
      goto LABEL_149;
    }

    if (a4)
    {
      v8 = *v117;
      while (1)
      {
        a4 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v65 = *(v27 + 32);
          v66 = *(v27 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_81:
          if (v68)
          {
            goto LABEL_128;
          }

          v81 = (v27 + 16 * v63);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_131;
          }

          v87 = (v27 + 32 + 16 * a4);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_135;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              a4 = v63 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v91 = (v27 + 16 * v63);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_95:
        if (v86)
        {
          goto LABEL_130;
        }

        v94 = v27 + 16 * a4;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_133;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_102:
        v102 = a4 - 1;
        if (a4 - 1 >= v63)
        {
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

        if (!*v29)
        {
          goto LABEL_146;
        }

        v103 = v27;
        v104 = v27 + 32;
        v27 = *(v27 + 32 + 16 * v102);
        v105 = *(v104 + 16 * a4 + 8);
        sub_100212CC8(*v29 + *(v126 + 72) * v27, *v29 + *(v126 + 72) * *(v104 + 16 * a4), *v29 + *(v126 + 72) * v105, v8);
        if (v5)
        {
        }

        if (v105 < v27)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_10025EFD4(v103);
        }

        if (v102 >= *(v103 + 2))
        {
          goto LABEL_125;
        }

        v106 = &v103[16 * v102];
        *(v106 + 4) = v27;
        *(v106 + 5) = v105;
        v135 = v103;
        result = sub_10025EF48(a4);
        v27 = v135;
        v63 = *(v135 + 16);
        v28 = &unk_100555E70;
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v27 + 32 + 16 * v63;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_126;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_127;
      }

      v76 = (v27 + 16 * v63);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_129;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_132;
      }

      if (v80 >= v72)
      {
        v98 = (v27 + 32 + 16 * a4);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_136;
        }

        if (v67 < v101)
        {
          a4 = v63 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v25 = v29[1];
    v8 = v126;
    if (v26 >= v25)
    {
      goto LABEL_112;
    }
  }

  v113 = v27;
  v114 = v5;
  v50 = *v29;
  v51 = *(v8 + 72);
  v52 = *v29 + v51 * (v26 - 1);
  v53 = -v51;
  v54 = v30 - v26;
  v130 = v50;
  v120 = v51;
  v121 = v49;
  a4 = v50 + v26 * v51;
  v8 = &qword_1006AF940;
  while (2)
  {
    v127 = v26;
    v123 = a4;
    v124 = v54;
    v125 = v52;
LABEL_49:
    v55 = v133;
    sub_100007204(a4, v133, &qword_1006AF940);
    v56 = v28;
    v57 = v134;
    sub_100007204(v52, v134, &qword_1006AF940);
    if (*v55 == *v57 && v55[1] == v57[1])
    {
      sub_100012DF0(v57, &qword_1006AF940);
      sub_100012DF0(v55, &qword_1006AF940);
      v28 = v56;
LABEL_47:
      v26 = v127 + 1;
      v52 = v125 + v120;
      v54 = v124 - 1;
      a4 = v123 + v120;
      if (v127 + 1 != v121)
      {
        continue;
      }

      v26 = v121;
      v5 = v114;
      v29 = v118;
      v30 = v119;
      v27 = v113;
      goto LABEL_60;
    }

    break;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100012DF0(v57, &qword_1006AF940);
  result = sub_100012DF0(v55, &qword_1006AF940);
  v28 = v56;
  if ((v59 & 1) == 0)
  {
    v8 = &qword_1006AF940;
    goto LABEL_47;
  }

  if (v130)
  {
    v60 = v131;
    v8 = &qword_1006AF940;
    sub_100035318(a4, v131, &qword_1006AF940);
    swift_arrayInitWithTakeFrontToBack();
    sub_100035318(v60, v52, &qword_1006AF940);
    v52 += v53;
    a4 += v53;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_100212CC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_10007EBC0(&qword_1006AF940);
  v8 = __chkstk_darwin(v54);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = (&v47 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - v13);
  result = __chkstk_darwin(v12);
  v17 = (&v47 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_75;
  }

  v20 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v21 = (a2 - a1) / v19;
    v58 = a1;
    v57 = a4;
    v55 = v19;
    if (v21 < v20 / v19)
    {
      v22 = a2;
      v23 = v21 * v19;
      if (a4 < a1 || a1 + v23 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v53 = a4 + v23;
      v56 = a4 + v23;
      if (v23 >= 1 && v22 < a3)
      {
        v26 = v22;
        while (1)
        {
          v27 = v26;
          sub_100007204(v26, v17, &qword_1006AF940);
          sub_100007204(a4, v14, &qword_1006AF940);
          if (*v17 == *v14 && v17[1] == v14[1])
          {
            sub_100012DF0(v14, &qword_1006AF940);
            sub_100012DF0(v17, &qword_1006AF940);
LABEL_31:
            v30 = v55;
            v32 = a4 + v55;
            if (a1 < a4 || a1 >= v32)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_36:
              v30 = v55;
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_36;
            }

            v57 = v32;
            a4 = v32;
            v26 = v27;
            goto LABEL_41;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100012DF0(v14, &qword_1006AF940);
          sub_100012DF0(v17, &qword_1006AF940);
          if ((v29 & 1) == 0)
          {
            goto LABEL_31;
          }

          v30 = v55;
          v31 = v27 + v55;
          if (a1 < v27 || a1 >= v31)
          {
            break;
          }

          if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_39:
            v30 = v55;
          }

          v26 = v31;
LABEL_41:
          a1 += v30;
          v58 = a1;
          if (a4 >= v53 || v26 >= a3)
          {
            goto LABEL_73;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_39;
      }

      goto LABEL_73;
    }

    v24 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_46:
        v33 = a4 + v24;
        if (v24 >= 1)
        {
          v34 = -v19;
          v35 = v33;
          v55 = -v19;
          v49 = a4;
          do
          {
            v47 = v33;
            v36 = a2;
            v37 = a2 + v34;
            v50 = v36;
            v51 = v37;
            while (1)
            {
              if (v36 <= a1)
              {
                v58 = v36;
                v33 = v47;
                goto LABEL_72;
              }

              v39 = a3;
              v48 = v33;
              v40 = v35 + v34;
              v41 = v52;
              sub_100007204(v40, v52, &qword_1006AF940);
              v42 = v53;
              sub_100007204(v37, v53, &qword_1006AF940);
              v43 = *v41 == *v42 && v41[1] == v42[1];
              v44 = v43 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
              a3 = v39 + v55;
              sub_100012DF0(v53, &qword_1006AF940);
              sub_100012DF0(v52, &qword_1006AF940);
              v36 = v50;
              if (v44)
              {
                break;
              }

              v33 = v40;
              v45 = v49;
              if (v39 < v35 || a3 >= v35)
              {
                swift_arrayInitWithTakeFrontToBack();
                v33 = v40;
                v37 = v51;
              }

              else
              {
                v37 = v51;
                if (v39 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                  v33 = v40;
                }
              }

              v35 = v33;
              v38 = v40 > v45;
              v34 = v55;
              if (!v38)
              {
                v58 = v36;
                goto LABEL_72;
              }
            }

            v46 = v49;
            if (v39 < v50 || a3 >= v50)
            {
              a2 = v51;
              swift_arrayInitWithTakeFrontToBack();
              v34 = v55;
            }

            else
            {
              a2 = v51;
              v34 = v55;
              if (v39 != v50)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v33 = v48;
          }

          while (v35 > v46);
        }

        v58 = a2;
LABEL_72:
        v56 = v33;
LABEL_73:
        sub_10025F000(&v58, &v57, &v56);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v55;
    goto LABEL_46;
  }

LABEL_76:
  __break(1u);
  return result;
}

void *sub_100213264(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_100215AFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1002132F4(uint64_t a1)
{
  v3 = sub_10007EBC0(&qword_1006B6948);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for FMIPPlaySoundChannels();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_100012DF0(v5, &qword_1006B6948))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_10021554C(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100213510(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMIPPlaySoundChannels();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v48 - v9;
  __chkstk_darwin(v8);
  i = v48 - v11;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = a2 + 7;
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, v58[6] + v20 * v59, v4);
    sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    __chkstk_darwin(v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_100214EFC(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, v58[6] + v20 * v59, v4);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, v58[6] + v20 * v59, v4);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = _swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_100214634(v47, v48[0], v58, v20, v62);

LABEL_30:

  return a2;
}

void *sub_100213BD0(uint64_t a1, void *a2)
{
  v5 = sub_10007EBC0(&qword_1006B6948);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v64 - v9);
  v11 = type metadata accessor for FMIPPlaySoundChannels();
  v12 = __chkstk_darwin(v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v64 - v15);
  __chkstk_darwin(v14);
  v79 = (&v64 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = a2 + 7;
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_100012DF0(v30, &qword_1006B6948);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, a2[6] + v83 * v24, v11);
    v35 = sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    __chkstk_darwin(v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_100012DF0(v24, &qword_1006B6948);
        a2 = sub_100214EFC(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, v52[6] + v54 * v83, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, v52[6] + v54 * v83, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_100214A28(v63, v64, v79, v24, &v88);

LABEL_52:
  sub_10000BEC8();
  return a2;
}

void *sub_100214634(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = type metadata accessor for FMIPPlaySoundChannels();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v42 = &v35 - v15;
  result = __chkstk_darwin(v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_100214EFC(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return _swiftEmptySetSingleton;
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_100214A28(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_10007EBC0(&qword_1006B6948);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for FMIPPlaySoundChannels();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_100012DF0(v11, &qword_1006B6948);
          v45 = v61;

          return sub_100214EFC(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

uint64_t sub_100214EFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for FMIPPlaySoundChannels();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10007EBC0(&qword_1006B6950);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_100215224(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for FMIPItem();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10007EBC0(&qword_1006B6910);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10021E650(&qword_1006B6918, &type metadata accessor for FMIPItem);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_10021554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPPlaySoundChannels();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002584A0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1002157F4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1002157F4(int64_t a1)
{
  v3 = type metadata accessor for FMIPPlaySoundChannels();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_100215AFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = type metadata accessor for FMIPItem();
  result = __chkstk_darwin(v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_100215224(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_100215D8C(int a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v37 = a4;
  v35 = a3;
  v33 = a2;
  v36 = a1;
  v7 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FMIPDevice();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = (*(v5 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  sub_1000E512C(v18, v17, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012DF0(v9, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, a5, v22, 2u);
    }
  }

  else
  {
    v32 = *(v11 + 32);
    v32(v15, v9, v10);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, v33, v26, 2u);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v34;
    (*(v11 + 16))(v34, v15, v10);
    v29 = (*(v11 + 80) + 25) & ~*(v11 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    *(v30 + 24) = v36 & 1;
    v32((v30 + v29), v28, v10);
    sub_1000C5474(v37, v30, 0, 0);

    (*(v11 + 8))(v15, v10);
  }
}

void *sub_1002161DC()
{
  v0 = type metadata accessor for FMIPPlaySoundChannels();
  v198 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v197 = &v183 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v196 = &v183 - v3;
  v4 = sub_10007EBC0(&qword_1006B6958);
  v5 = __chkstk_darwin(v4 - 8);
  v195 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v194 = &v183 - v8;
  v9 = __chkstk_darwin(v7);
  v193 = &v183 - v10;
  __chkstk_darwin(v9);
  v191 = &v183 - v11;
  v12 = type metadata accessor for FMIPItemState();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v212 = &v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v183 - v17;
  v19 = __chkstk_darwin(v16);
  v208 = &v183 - v20;
  v21 = __chkstk_darwin(v19);
  v209 = &v183 - v22;
  __chkstk_darwin(v21);
  v210 = &v183 - v23;
  v24 = type metadata accessor for FMIPPartType();
  v202 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v220 = &v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v219 = &v183 - v28;
  v29 = __chkstk_darwin(v27);
  v214 = &v183 - v30;
  v31 = __chkstk_darwin(v29);
  v213 = &v183 - v32;
  v33 = __chkstk_darwin(v31);
  v185 = &v183 - v34;
  v35 = __chkstk_darwin(v33);
  v224 = &v183 - v36;
  v37 = __chkstk_darwin(v35);
  v226 = &v183 - v38;
  __chkstk_darwin(v37);
  v225 = &v183 - v39;
  v230 = type metadata accessor for FMIPItem();
  v227 = *(v230 - 8);
  v40 = __chkstk_darwin(v230);
  v221 = &v183 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v222 = &v183 - v43;
  v44 = __chkstk_darwin(v42);
  v223 = &v183 - v45;
  __chkstk_darwin(v44);
  v47 = &v183 - v46;
  v48 = sub_10007EBC0(&qword_1006B07D0);
  v49 = __chkstk_darwin(v48 - 8);
  v192 = &v183 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v190 = &v183 - v52;
  v53 = __chkstk_darwin(v51);
  v189 = &v183 - v54;
  v55 = __chkstk_darwin(v53);
  v188 = &v183 - v56;
  v57 = __chkstk_darwin(v55);
  v204 = &v183 - v58;
  v59 = __chkstk_darwin(v57);
  v205 = &v183 - v60;
  v61 = __chkstk_darwin(v59);
  v206 = &v183 - v62;
  __chkstk_darwin(v61);
  v207 = &v183 - v63;
  v64 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v64 - 8);
  v66 = &v183 - v65;
  v199 = FMIPDevice.identifier.getter();
  v203 = v67;
  v235 = _swiftEmptySetSingleton;
  FMIPDevice.itemGroup.getter();
  v68 = type metadata accessor for FMIPItemGroup();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v66, 1, v68) == 1)
  {
    v70 = &unk_1006BB1C0;
    v71 = v66;
    goto LABEL_80;
  }

  v72 = FMIPItemGroup.items.getter();
  (*(v69 + 8))(v66, v68);
  v73 = *(v72 + 16);
  v184 = v12;
  v183 = v13;
  v186 = v18;
  v228 = v73;
  v229 = v72;
  v187 = v0;
  if (v73)
  {
    v74 = v72;
    v75 = 0;
    v76 = v227;
    v218 = (v227 + 16);
    LODWORD(v217) = enum case for FMIPPartType.leftBud(_:);
    v77 = (v202 + 104);
    v78 = (v202 + 8);
    v79 = (v227 + 8);
    v80 = v230;
    while (v75 < *(v74 + 16))
    {
      (*(v76 + 16))(v47, v74 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75, v80);
      FMIPItem.partType.getter();
      (*v77)(v226, v217, v24);
      sub_10021E650(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v233 == v231 && v234 == v232)
      {
        v85 = *v78;
        (*v78)(v226, v24);
        v85(v225, v24);

LABEL_13:
        v76 = v227;
        v84 = v207;
        v80 = v230;
        (*(v227 + 32))(v207, v47, v230);
        v83 = 0;
        goto LABEL_14;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v82 = *v78;
      (*v78)(v226, v24);
      v82(v225, v24);

      if (v81)
      {
        goto LABEL_13;
      }

      ++v75;
      v80 = v230;
      (*v79)(v47, v230);
      v76 = v227;
      v74 = v229;
      if (v228 == v75)
      {
        v83 = 1;
        v84 = v207;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  else
  {
    v83 = 1;
    v84 = v207;
    v80 = v230;
    v76 = v227;
LABEL_14:
    v86 = *(v76 + 56);
    v86(v84, v83, 1, v80);
    v201 = v76 + 56;
    v200 = v86;
    if (v228)
    {
      v87 = 0;
      v226 = (v76 + 16);
      v211 = enum case for FMIPPartType.rightBud(_:);
      v225 = (v202 + 104);
      v88 = (v202 + 8);
      v216 = (v76 + 8);
      v89 = v185;
      while (1)
      {
        if (v87 >= *(v229 + 16))
        {
          goto LABEL_88;
        }

        v90 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v215 = *(v76 + 72);
        v218 = *(v76 + 16);
        v218(v223, v229 + v90 + v215 * v87, v80);
        FMIPItem.partType.getter();
        v217 = *v225;
        v217(v89, v211, v24);
        sub_10021E650(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v233 == v231 && v234 == v232)
        {
          break;
        }

        v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v92 = *v88;
        (*v88)(v89, v24);
        v92(v224, v24);

        if (v91)
        {
          goto LABEL_24;
        }

        ++v87;
        v80 = v230;
        (*v216)(v223, v230);
        v76 = v227;
        if (v228 == v87)
        {
          v93 = 1;
          v94 = v206;
          goto LABEL_25;
        }
      }

      v97 = *v88;
      (*v88)(v89, v24);
      v97(v224, v24);

LABEL_24:
      v94 = v206;
      v80 = v230;
      (*(v227 + 32))(v206, v223, v230);
      v93 = 0;
LABEL_25:
      v200(v94, v93, 1, v80);
      v98 = 0;
      LODWORD(v224) = enum case for FMIPPartType.case(_:);
      v99 = v229;
      v100 = v229 + v90;
      v101 = v213;
      while (1)
      {
        if (v98 >= *(v99 + 16))
        {
          goto LABEL_89;
        }

        v218(v222, v100, v80);
        FMIPItem.partType.getter();
        v102 = v214;
        v217(v214, v224, v24);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v103 = v233 == v231 && v234 == v232;
        if (v103)
        {
          break;
        }

        v104 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v105 = v102;
        v106 = v104;
        v107 = *v88;
        (*v88)(v105, v24);
        v107(v101, v24);

        if (v106)
        {
          goto LABEL_35;
        }

        ++v98;
        v80 = v230;
        (*v216)(v222, v230);
        v100 += v215;
        v99 = v229;
        if (v228 == v98)
        {
          v95 = 1;
          v96 = v205;
          goto LABEL_36;
        }
      }

      v108 = *v88;
      (*v88)(v102, v24);
      v108(v101, v24);

LABEL_35:
      v96 = v205;
      v80 = v230;
      (*(v227 + 32))(v205, v222, v230);
      v95 = 0;
LABEL_36:
      v86 = v200;
      goto LABEL_37;
    }

    v95 = 1;
    v86(v206, 1, 1, v80);
    v96 = v205;
LABEL_37:
    v86(v96, v95, 1, v80);
    if (!v228)
    {
LABEL_44:

      v116 = 1;
      v117 = v204;
      v118 = v227;
LABEL_47:
      v200(v117, v116, 1, v80);
      v120 = v188;
      sub_100007204(v207, v188, &qword_1006B07D0);
      v121 = *(v118 + 48);
      v122 = v121(v120, 1, v80);
      v123 = v80;
      v124 = v184;
      v125 = v183;
      if (v122 == 1)
      {
        sub_100012DF0(v120, &qword_1006B07D0);
        v126 = *(v125 + 56);
        v127 = v191;
        v126(v191, 1, 1, v124);
        static FMIPItemState.normal.getter();
        if ((*(v125 + 48))(v127, 1, v124) != 1)
        {
          sub_100012DF0(v127, &qword_1006B6958);
        }

        v128 = v187;
        v123 = v230;
      }

      else
      {
        v129 = v191;
        FMIPItem.state.getter();
        (*(v118 + 8))(v120, v123);
        v126 = *(v125 + 56);
        v126(v129, 0, 1, v124);
        (*(v125 + 32))(v210, v129, v124);
        v128 = v187;
      }

      v130 = v189;
      sub_100007204(v206, v189, &qword_1006B07D0);
      if (v121(v130, 1, v123) == 1)
      {
        sub_100012DF0(v130, &qword_1006B07D0);
        v131 = v193;
        v126(v193, 1, 1, v124);
        static FMIPItemState.normal.getter();
        v132 = (*(v125 + 48))(v131, 1, v124);
        v133 = v194;
        if (v132 != 1)
        {
          sub_100012DF0(v131, &qword_1006B6958);
        }
      }

      else
      {
        v134 = v193;
        FMIPItem.state.getter();
        (*(v227 + 8))(v130, v123);
        v126(v134, 0, 1, v124);
        (*(v125 + 32))(v209, v134, v124);
        v133 = v194;
      }

      v135 = v190;
      sub_100007204(v205, v190, &qword_1006B07D0);
      v136 = v230;
      if (v121(v135, 1, v230) == 1)
      {
        sub_100012DF0(v135, &qword_1006B07D0);
        v126(v133, 1, 1, v124);
        static FMIPItemState.normal.getter();
        v103 = (*(v125 + 48))(v133, 1, v124) == 1;
        v137 = v192;
        v138 = v204;
        if (!v103)
        {
          v139 = v204;
          sub_100012DF0(v133, &qword_1006B6958);
          v138 = v139;
        }
      }

      else
      {
        FMIPItem.state.getter();
        (*(v227 + 8))(v135, v136);
        v126(v133, 0, 1, v124);
        (*(v125 + 32))(v208, v133, v124);
        v137 = v192;
        v138 = v204;
      }

      sub_100007204(v138, v137, &qword_1006B07D0);
      v140 = v230;
      if (v121(v137, 1, v230) == 1)
      {
        sub_100012DF0(v137, &qword_1006B07D0);
        v141 = v195;
        v126(v195, 1, 1, v124);
        static FMIPItemState.normal.getter();
        v142 = (*(v125 + 48))(v141, 1, v124);
        v143 = v198;
        v144 = v212;
        v145 = v196;
        v146 = v197;
        if (v142 != 1)
        {
          sub_100012DF0(v141, &qword_1006B6958);
        }
      }

      else
      {
        v147 = v195;
        FMIPItem.state.getter();
        (*(v227 + 8))(v137, v140);
        v126(v147, 0, 1, v124);
        (*(v125 + 32))(v186, v147, v124);
        v143 = v198;
        v144 = v212;
        v145 = v196;
        v146 = v197;
      }

      static FMIPItemState.soundPlaying.getter();
      sub_10021E650(&qword_1006C0350, &type metadata accessor for FMIPItemState);
      v148 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v149 = v144;
      v150 = *(v125 + 8);
      v150(v149, v124);
      if (v148 & 1) != 0 || (v151 = v212, static FMIPItemState.soundPending.getter(), v152 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v150(v151, v124), (v152) || (v153 = v212, static FMIPItemState.soundQueued.getter(), v154 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v150(v153, v124), (v154))
      {
        (*(v143 + 104))(v146, enum case for FMIPPlaySoundChannels.left(_:), v128);
        sub_1002546CC(v145, v146);
        (*(v143 + 8))(v145, v128);
      }

      v155 = v212;
      static FMIPItemState.soundPlaying.getter();
      v156 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v150(v155, v124);
      if (v156 & 1) != 0 || (v157 = v212, static FMIPItemState.soundPending.getter(), v158 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v150(v157, v124), (v158) || (v159 = v212, static FMIPItemState.soundQueued.getter(), v160 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v150(v159, v124), (v160))
      {
        (*(v143 + 104))(v146, enum case for FMIPPlaySoundChannels.right(_:), v128);
        sub_1002546CC(v145, v146);
        (*(v143 + 8))(v145, v128);
      }

      v161 = v212;
      static FMIPItemState.soundPlaying.getter();
      v162 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v150(v161, v124);
      if (v162 & 1) != 0 || (v163 = v212, static FMIPItemState.soundPending.getter(), v164 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v150(v163, v124), (v164) || (v165 = v212, static FMIPItemState.soundQueued.getter(), v166 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v150(v165, v124), (v166))
      {
        (*(v143 + 104))(v146, enum case for FMIPPlaySoundChannels.case(_:), v128);
        sub_1002546CC(v145, v146);
        (*(v143 + 8))(v145, v128);
      }

      v167 = v212;
      static FMIPItemState.soundPlaying.getter();
      v168 = v186;
      v169 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v150(v167, v124);
      if ((v169 & 1) == 0)
      {
        static FMIPItemState.soundPending.getter();
        v170 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v150(v167, v124);
        if ((v170 & 1) == 0)
        {
          static FMIPItemState.soundQueued.getter();
          v171 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v150(v167, v124);
          if ((v171 & 1) == 0)
          {
            v150(v168, v124);
            v150(v208, v124);
            v150(v209, v124);
            v150(v210, v124);
            sub_100012DF0(v204, &qword_1006B07D0);
            sub_100012DF0(v205, &qword_1006B07D0);
            sub_100012DF0(v206, &qword_1006B07D0);
            sub_100012DF0(v207, &qword_1006B07D0);
            v24 = v203;
LABEL_81:
            if (qword_1006AEBE0 == -1)
            {
              goto LABEL_82;
            }

            goto LABEL_91;
          }
        }
      }

      v172 = v187;
      (*(v143 + 104))(v146, enum case for FMIPPlaySoundChannels.standalone(_:), v187);
      sub_1002546CC(v145, v146);
      (*(v143 + 8))(v145, v172);
      v150(v168, v124);
      v150(v208, v124);
      v150(v209, v124);
      v150(v210, v124);
      sub_100012DF0(v204, &qword_1006B07D0);
      sub_100012DF0(v205, &qword_1006B07D0);
      sub_100012DF0(v206, &qword_1006B07D0);
      v71 = v207;
      v70 = &qword_1006B07D0;
LABEL_80:
      sub_100012DF0(v71, v70);
      v24 = v203;
      goto LABEL_81;
    }

    v109 = 0;
    v226 = (v227 + 16);
    v110 = enum case for FMIPPartType.standalone(_:);
    v111 = (v202 + 104);
    v112 = (v202 + 8);
    v113 = (v227 + 8);
    while (v109 < *(v229 + 16))
    {
      (*(v227 + 16))(v221, v229 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v109, v80);
      FMIPItem.partType.getter();
      (*v111)(v220, v110, v24);
      sub_10021E650(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v233 == v231 && v234 == v232)
      {
        v119 = *v112;
        (*v112)(v220, v24);
        v119(v219, v24);

LABEL_46:

        v118 = v227;
        v117 = v204;
        v80 = v230;
        (*(v227 + 32))(v204, v221, v230);
        v116 = 0;
        goto LABEL_47;
      }

      v114 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v115 = *v112;
      (*v112)(v220, v24);
      v115(v219, v24);

      if (v114)
      {
        goto LABEL_46;
      }

      ++v109;
      v80 = v230;
      (*v113)(v221, v230);
      if (v228 == v109)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
LABEL_91:
  swift_once();
LABEL_82:
  v173 = type metadata accessor for Logger();
  sub_100005B14(v173, qword_1006D4630);

  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v233 = swift_slowAlloc();
    *v176 = 141558531;
    *(v176 + 4) = 1752392040;
    *(v176 + 12) = 2081;
    v177 = sub_100005B4C(v199, v24, &v233);

    *(v176 + 14) = v177;
    *(v176 + 22) = 2082;
    swift_beginAccess();
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);

    v178 = Set.description.getter();
    v180 = v179;

    v181 = sub_100005B4C(v178, v180, &v233);

    *(v176 + 24) = v181;
    _os_log_impl(&_mh_execute_header, v174, v175, "FMDeviceDetailContentViewController: offlineActiveChannels for %{private,mask.hash}s %{public}s.", v176, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  return v235;
}

uint64_t sub_100218158()
{
  v1 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if ((*(*(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton) + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) & 1) != 0 || (v4 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight, swift_beginAccess(), sub_100007204(v0 + v4, v3, &unk_1006B0000), v5 = type metadata accessor for Date(), LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5), sub_100012DF0(v3, &unk_1006B0000), v4 != 1))
  {
    sub_1001EFE58();
  }

  *(*(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 104) = 0;

  sub_1004E156C();
}

uint64_t sub_1002182B8()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPFeatures();
  v44 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v13 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v14 = v13 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  if ((*(v14 + *(type metadata accessor for FMDeviceDetailViewModel() + 148)) & 1) == 0)
  {
    v15 = *(v13 + 40);
    v16 = *v15;
    v42 = v2;
    v43 = v12;
    v17 = *(v16 + class metadata base offset for ManagedBuffer + 16);
    v18 = v1;
    v19 = (*(v16 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v15 + v19));
    v40 = *(v9 + 16);
    v41 = v9 + 16;
    v40(v11, v15 + v17, v8);
    v20 = (v15 + v19);
    v1 = v18;
    os_unfair_lock_unlock(v20);

    FMIPDevice.features.getter();
    v39 = *(v9 + 8);
    v39(v11, v8);
    static FMIPFeatures.isBTFindingSupported.getter();
    sub_10021E650(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
    v21 = v42;
    v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v23 = *(v44 + 8);
    v23(v5, v21);
    v23(v7, v21);
    v12 = v43;
    if (v22)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100005B14(v24, qword_1006D4630);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "FMDeviceDetailContentViewController, attempting to stop fast advertisement", v27, 2u);
      }

      v28 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperienceCoordinator);
      v29 = *(*(v1 + v12) + 40);
      v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
      v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v29 + v31));
      v32 = (v29 + v30);
      v12 = v43;
      v40(v11, v32, v8);
      os_unfair_lock_unlock((v29 + v31));

      v33 = FMIPDevice.baIdentifier.getter();
      v35 = v34;
      v39(v11, v8);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1001A4FD0(v33, v35, 0, v28, v36);
    }
  }

  *(*(v1 + v12) + 104) = 1;

  sub_1004E156C();
}

void sub_1002187A4(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v36 = a4;
  v37 = a3;
  v34 = a2;
  v35 = a1;
  v7 = type metadata accessor for FMIPItem();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v29 - v12;
  v29 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v30 = v6;

  v13 = FMIPManager.items.getter();

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      (*(v8 + 16))(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v7);
      if (FMIPItem.identifier.getter() == v37 && v16 == v36)
      {
        v24 = v36;

LABEL_14:
        v25 = v31;
        (*(v8 + 32))(v31, v11, v7);
        v26 = swift_allocObject();
        v26[2] = v37;
        v26[3] = v24;
        v28 = v32;
        v27 = v33;
        v26[4] = v32;
        v26[5] = v27;

        sub_100062900(v28);
        sub_1000DB0B0(v25, v35, v34 & 1, sub_10021E644, v26);

        (*(v8 + 8))(v25, v7);
        return;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {

        v24 = v36;
        goto LABEL_14;
      }

      ++v15;
      (*(v8 + 8))(v11, v7);
      if (v14 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_8:

  if (qword_1006AEBE0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = v36;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100005B4C(v37, v19, &v38);
    _os_log_impl(&_mh_execute_header, v20, v21, "FMDeviceDetailContentViewController: Requested play sound for unknown item identifier: %s", v22, 0xCu);
    sub_100006060(v23);
  }
}

void sub_100218B88()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v2 - 8);
  v172 = &v166 - v3;
  v171 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v171);
  v170 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v173 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v176 = *(v174 - 8);
  __chkstk_darwin(v174);
  v169 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v179);
  v9 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_conditionsSubscription) = 0;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
  v182 = objc_opt_self();
  v10 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for FMIconPlatterButton();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v12[v13] = [objc_allocWithZone(UIImageView) init];
  v14 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v12[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v12[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v12[v16] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v17 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v18 = type metadata accessor for FMPlatterBackgroundView();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v200.receiver = v19;
  v200.super_class = v18;
  v20 = objc_msgSendSuper2(&v200, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v12[v17] = v20;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v21 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v10;
  v180 = type metadata accessor for FMPlatterIcon;
  sub_10022017C(v9, &v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v22 = &v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v22 = 0xD00000000000001ELL;
  *(v22 + 1) = 0x80000001005863C0;
  v22[40] = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = 0;
  *(v22 + 2) = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 1;
  v12[v21] = 1;
  v199.receiver = v12;
  v199.super_class = v11;
  v23 = v10;
  v24 = objc_msgSendSuper2(&v199, "init");
  sub_1000D3C9C();
  v25 = objc_opt_self();
  v177 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = 0;
  v197 = sub_100141408;
  v198 = v26;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v181 = &v195;
  v195 = sub_100004AE4;
  v196 = &unk_10062FAA0;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  [v25 animateWithDuration:v27 animations:0.35];
  _Block_release(v27);

  v178 = type metadata accessor for FMPlatterIcon;
  sub_1002201E4(v9, type metadata accessor for FMPlatterIcon);
  *(v1 + v168) = v28;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v29 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v166 = 0x80000001005863E0;
  v30 = objc_allocWithZone(v11);
  v31 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v30[v31] = [objc_allocWithZone(UIImageView) init];
  v32 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v30[v32] = [objc_allocWithZone(UILabel) init];
  v33 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v30[v33] = [objc_allocWithZone(UILabel) init];
  v34 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v30[v34] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v35 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v175 = v18;
  v36 = objc_allocWithZone(v18);
  v36[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v192.receiver = v36;
  v192.super_class = v18;
  v37 = objc_msgSendSuper2(&v192, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v30[v35] = v37;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v38 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v29;
  sub_10022017C(v9, &v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v39 = &v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v40 = v166;
  *v39 = 0xD000000000000028;
  *(v39 + 1) = v40;
  v39[40] = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = 0;
  *(v39 + 2) = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v30[v38] = 0;
  v191.receiver = v30;
  v191.super_class = v11;
  v41 = v29;
  v42 = objc_msgSendSuper2(&v191, "init");
  sub_1000D3C9C();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = 0;
  v197 = sub_100141408;
  v198 = v43;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FAF0;
  v44 = _Block_copy(&aBlock);
  v45 = v42;

  [v177 animateWithDuration:v44 animations:0.35];
  _Block_release(v44);

  sub_1002201E4(v9, v178);
  *(v1 + v168) = v45;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v46 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v47 = objc_allocWithZone(v11);
  v48 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v47[v48] = [objc_allocWithZone(UIImageView) init];
  v49 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v47[v49] = [objc_allocWithZone(UILabel) init];
  v50 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v47[v50] = [objc_allocWithZone(UILabel) init];
  v51 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v47[v51] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v52 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v53 = v175;
  v54 = objc_allocWithZone(v175);
  v54[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v190.receiver = v54;
  v190.super_class = v53;
  v55 = objc_msgSendSuper2(&v190, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v47[v52] = v55;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v56 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v46;
  v57 = v9;
  v58 = v180;
  sub_10022017C(v9, &v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v59 = &v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v59 = 0xD000000000000029;
  *(v59 + 1) = 0x8000000100586410;
  v59[40] = 0;
  *(v59 + 3) = 0;
  *(v59 + 4) = 0;
  *(v59 + 2) = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v47[v56] = 0;
  v189.receiver = v47;
  v189.super_class = v11;
  v167 = v11;
  v60 = v46;
  v61 = objc_msgSendSuper2(&v189, "init");
  sub_1000D3C9C();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = 0;
  v197 = sub_100141408;
  v198 = v62;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FB40;
  v63 = _Block_copy(&aBlock);
  v64 = v61;

  [v177 animateWithDuration:v63 animations:0.35];
  _Block_release(v63);

  v65 = v178;
  sub_1002201E4(v9, v178);
  *(v1 + v168) = v64;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton;
  v66 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v166 = 0x8000000100586440;
  v67 = objc_allocWithZone(v11);
  v68 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v67[v68] = [objc_allocWithZone(UIImageView) init];
  v69 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v67[v69] = [objc_allocWithZone(UILabel) init];
  v70 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v67[v70] = [objc_allocWithZone(UILabel) init];
  v71 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v67[v71] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v72 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v73 = v175;
  v74 = objc_allocWithZone(v175);
  v74[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v188.receiver = v74;
  v188.super_class = v73;
  v75 = objc_msgSendSuper2(&v188, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v67[v72] = v75;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v76 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v66;
  sub_10022017C(v9, &v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v58);
  v77 = &v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v77 = 0xD00000000000001ELL;
  *(v77 + 1) = v166;
  *(v77 + 2) = 0;
  v77[40] = 0;
  *(v77 + 3) = 0;
  *(v77 + 4) = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v67[v76] = 0;
  v187.receiver = v67;
  v78 = v167;
  v187.super_class = v167;
  v79 = v66;
  v80 = objc_msgSendSuper2(&v187, "init");
  sub_1000D3C9C();
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = 0;
  v197 = sub_100141408;
  v198 = v81;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FB90;
  v82 = _Block_copy(&aBlock);
  v83 = v80;

  v84 = v177;
  [v177 animateWithDuration:v82 animations:0.35];
  _Block_release(v82);

  sub_1002201E4(v57, v65);
  *(v1 + v168) = v83;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton;
  v85 = [v182 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v86 = v78;
  v87 = objc_allocWithZone(v78);
  v88 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v87[v88] = [objc_allocWithZone(UIImageView) init];
  v89 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v87[v89] = [objc_allocWithZone(UILabel) init];
  v90 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v87[v90] = [objc_allocWithZone(UILabel) init];
  v91 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v87[v91] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v92 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v93 = v175;
  v94 = objc_allocWithZone(v175);
  v94[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v186.receiver = v94;
  v186.super_class = v93;
  v95 = objc_msgSendSuper2(&v186, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v87[v92] = v95;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v96 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v85;
  sub_10022017C(v57, &v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v97 = &v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v97 = 0xD00000000000001FLL;
  *(v97 + 1) = 0x800000010057F980;
  v97[40] = 0;
  *(v97 + 3) = 0;
  *(v97 + 4) = 0;
  *(v97 + 2) = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v87[v96] = 0;
  v185.receiver = v87;
  v185.super_class = v86;
  v98 = v85;
  v99 = objc_msgSendSuper2(&v185, "init");
  sub_1000D3C9C();
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = 0;
  v197 = sub_100141408;
  v198 = v100;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FBE0;
  v101 = _Block_copy(&aBlock);
  v102 = v99;

  [v84 animateWithDuration:v101 animations:0.35];
  _Block_release(v101);

  sub_1002201E4(v57, v178);
  *(v1 + v168) = v102;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_itemConnectionManager) = 0;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton;
  v103 = [v182 systemBlueColor];
  v104 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
  v105 = enum case for FMFindingType.owner(_:);
  v106 = type metadata accessor for FMFindingType();
  (*(*(v106 - 8) + 104))(v57, v105, v106);
  *(v57 + v104) = 0;
  v107 = enum case for FMFindingTechnology.proximity(_:);
  v108 = type metadata accessor for FMFindingTechnology();
  (*(*(v108 - 8) + 104))(v57, v107, v108);
  swift_storeEnumTagMultiPayload();
  v109 = objc_allocWithZone(v86);
  v110 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v109[v110] = [objc_allocWithZone(UIImageView) init];
  v111 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v109[v111] = [objc_allocWithZone(UILabel) init];
  v112 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v109[v112] = [objc_allocWithZone(UILabel) init];
  v113 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v109[v113] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v114 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v115 = objc_allocWithZone(v93);
  v115[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v184.receiver = v115;
  v184.super_class = v93;
  v116 = objc_msgSendSuper2(&v184, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v109[v114] = v116;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v117 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v103;
  sub_10022017C(v57, &v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v118 = &v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v118 = 0xD000000000000019;
  *(v118 + 1) = 0x8000000100586460;
  v118[40] = 0;
  *(v118 + 3) = 0;
  *(v118 + 4) = 0;
  *(v118 + 2) = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v109[v117] = 0;
  v183.receiver = v109;
  v183.super_class = v86;
  v119 = v103;
  v120 = objc_msgSendSuper2(&v183, "init");
  sub_1000D3C9C();
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = 0;
  v197 = sub_100141408;
  v198 = v121;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FC30;
  v122 = _Block_copy(&aBlock);
  v123 = v120;

  [v177 animateWithDuration:v122 animations:0.35];
  _Block_release(v122);

  sub_1002201E4(v57, v178);
  *(v1 + v168) = v123;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController____lazy_storage___ownerSession) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession) = 0;
  v175 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialUpdateQueue;
  v179 = sub_10000905C(0, &qword_1006AEDC0);
  LODWORD(v181) = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v124 = *(v176 + 104);
  v176 += 104;
  v182 = v124;
  v125 = v169;
  (v124)(v169);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v178 = sub_10021E650(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  v177 = sub_10007EBC0(&unk_1006AEDD0);
  v180 = sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v175 + v1) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v126 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
  v127 = objc_allocWithZone(type metadata accessor for FMDeviceNotificationsView());
  *(v1 + v126) = sub_100240BE4();
  v128 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView;
  v129 = objc_allocWithZone(type metadata accessor for FMDeviceShowContactDetailsView());
  *(v1 + v128) = sub_10044B9AC();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsWelcomeScreenViewController) = 0;
  v130 = (v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber);
  *v130 = 0;
  v130[1] = 0xE000000000000000;
  v131 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention;
  v132 = type metadata accessor for FMExtendedPlatterInfoView();
  v133 = objc_allocWithZone(v132);
  *(v1 + v131) = sub_10032B2F8(1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_markAsLostHostingController) = 0;
  v134 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention;
  v135 = objc_allocWithZone(v132);
  *(v1 + v134) = sub_10032B2F8(1, 0);
  v136 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention;
  v137 = objc_allocWithZone(type metadata accessor for FMFailablePlatterInfoView());
  v138 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v137[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v137[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v137[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v137[v138] = 1;
  v139 = sub_1002AEC90(1);
  sub_1003F0AB4();

  *(v1 + v136) = v139;
  v140 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_mismatchAttention;
  v141 = objc_allocWithZone(v132);
  *(v1 + v140) = sub_10032B2F8(1, 0);
  v142 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingIncompleteAttention;
  v143 = objc_allocWithZone(v132);
  *(v1 + v142) = sub_10032B2F8(1, 0);
  v144 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingStatusDebugView;
  v145 = objc_allocWithZone(v132);
  *(v1 + v144) = sub_10032B2F8(0, 0);
  v146 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsOffAttention;
  v147 = objc_allocWithZone(v132);
  *(v1 + v146) = sub_10032B2F8(1, 1);
  v148 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_repairModeAttention;
  v149 = objc_allocWithZone(v132);
  *(v1 + v148) = sub_10032B2F8(0, 0);
  v150 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView;
  *(v1 + v150) = [objc_allocWithZone(UIStackView) init];
  v151 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView;
  *(v1 + v151) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackBottomConstraint) = 0;
  v152 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight;
  v153 = type metadata accessor for Date();
  v154 = *(*(v153 - 8) + 56);
  v154(v1 + v152, 1, 1, v153);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
  v154(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_canShowQueueAlert, 1, 1, v153);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem) = 0;
  v155 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_actionQueue;
  (v182)(v125, v181, v174);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + v155) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v156 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingPlaySoundAnalytics;
  v157 = type metadata accessor for FMIPAirPodsPlaySoundEvent();
  (*(*(v157 - 8) + 56))(v1 + v156, 1, 1, v157);
  v158 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  v159 = type metadata accessor for FMIPSafeLocation();
  (*(*(v159 - 8) + 56))(v1 + v158, 1, 1, v159);
  v160 = (v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress);
  *v160 = 0;
  v160[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded) = 0;
  v161 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationEvent;
  v162 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v162 - 8) + 56))(v1 + v161, 1, 1, v162);
  v163 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_geocodingCache;
  v164 = v172;
  static Locale.autoupdatingCurrent.getter();
  v165 = type metadata accessor for Locale();
  (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v1 + v163) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10021AB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPPlaySoundChannels();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_1002546CC(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

uint64_t sub_10021ACA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPPlaySoundMethod();
  v174 = *(v6 - 8);
  v175 = v6;
  v7 = __chkstk_darwin(v6);
  v163 = &v156[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v166 = &v156[-v9];
  v10 = type metadata accessor for FMIPDevice();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v156[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FMIPPlaySoundChannels();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v160 = &v156[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v158 = &v156[-v19];
  v20 = __chkstk_darwin(v18);
  v162 = &v156[-v21];
  v159 = v22;
  __chkstk_darwin(v20);
  v24 = &v156[-v23];
  v167 = swift_allocObject();
  *(v167 + 16) = a3;
  v177 = v15;
  v178 = v24;
  v25 = *(v15 + 16);
  *&v164 = a1;
  v179 = v14;
  v172 = v25;
  v173 = v15 + 16;
  v25(v24, a1, v14);
  v171 = a2;
  v26 = *(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v27 = v26 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v28 = *(type metadata accessor for FMDeviceDetailViewModel() + 100);
  v29 = *(v26 + 40);
  v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  LOBYTE(v24) = *(v27 + v28);
  v161 = a3;

  os_unfair_lock_lock((v29 + v31));
  v169 = v11;
  v32 = *(v11 + 16);
  v170 = v10;
  v32(v13, v29 + v30, v10);
  os_unfair_lock_unlock((v29 + v31));

  v33 = FMIPDevice.identifier.getter();
  v35 = v34;
  v168 = v13;
  v36 = sub_1002161DC();
  v37 = sub_1001F0AF8(v24);
  if (v36[2] <= v37[2] >> 3)
  {
    aBlock[0] = v37;
    sub_1002132F4(v36);
    v38 = aBlock[0];
  }

  else
  {
    v38 = sub_100213BD0(v36, v37);
  }

  v39 = v178;
  v40 = sub_1001605D4(v178, v38);
  v41 = v179;
  v42 = v177;
  v176 = v33;
  if (v40)
  {
    sub_10007EBC0(&qword_1006AF788);
    v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100552220;
    v172(v44 + v43, v39, v41);
    v45 = sub_100213510(v44, v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v36[2] <= v45[2] >> 3)
    {
      aBlock[0] = v45;
      sub_1002132F4(v36);

      v46 = aBlock[0];
    }

    else
    {
      v46 = sub_100213BD0(v36, v45);
    }

    v67 = qword_1006AEB18;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100005B14(v68, qword_1006D4110);

    v69 = Logger.logObject.getter();
    v70 = v35;
    v71 = static os_log_type_t.default.getter();

    v72 = os_log_type_enabled(v69, v71);
    v165 = v70;
    if (v72)
    {
      v73 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v73 = 136446723;
      sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
      v74 = Set.description.getter();
      v76 = sub_100005B4C(v74, v75, aBlock);

      *(v73 + 4) = v76;
      v41 = v179;
      *(v73 + 12) = 2160;
      *(v73 + 14) = 1752392040;
      *(v73 + 22) = 2081;
      *(v73 + 24) = sub_100005B4C(v176, v70, aBlock);
      _os_log_impl(&_mh_execute_header, v69, v71, "FMDeviceDetailContentViewController: mute sound selecting channels to play Classic %{public}s for %{private,mask.hash}s.", v73, 0x20u);
      swift_arrayDestroy();
    }

    (v174[13].isa)(v166, enum case for FMIPPlaySoundMethod.classic(_:), v175);
    v77 = v46[2];
    if (!v77)
    {
      v35 = _swiftEmptyArrayStorage;
      goto LABEL_27;
    }

    v35 = sub_10008C8DC(v46[2], 0);
    v78 = sub_1004A2EA8(aBlock, &v35[v43], v77, v46);
    v41 = aBlock[0];
    v42 = v182;
    v47 = v184;

    sub_10000BEC8();
    if (v78 == v77)
    {
      v41 = v179;
LABEL_27:
      v111 = swift_allocObject();
      v112 = v176;
      v111[2] = v46;
      v111[3] = v112;
      v111[4] = v165;
      v111[5] = sub_10021F5D4;
      v111[6] = v167;

      v113 = v166;
      sub_1001F3DC8(v166, 1, 0, v35, sub_1002204C8, v111);

      (v174[1].isa)(v113, v175);
      (*(v169 + 8))(v168, v170);
      (*(v177 + 8))(v39, v41);
    }

    __break(1u);
    goto LABEL_39;
  }

  if (sub_1001605D4(v39, v36))
  {

    sub_10007EBC0(&qword_1006AF788);
    v47 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v166 = *(v42 + 9);
    v48 = swift_allocObject();
    v164 = xmmword_100552220;
    *(v48 + 16) = xmmword_100552220;
    v172(v48 + v47, v39, v41);
    v46 = sub_100213510(v48, v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v49 = qword_1006AEB18;

    if (v49 == -1)
    {
LABEL_9:
      v50 = type metadata accessor for Logger();
      sub_100005B14(v50, qword_1006D4110);

      v51 = Logger.logObject.getter();
      v52 = v35;
      v53 = static os_log_type_t.default.getter();

      v54 = os_log_type_enabled(v51, v53);
      v165 = v52;
      if (v54)
      {
        v55 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        aBlock[0] = v173;
        *v55 = 136446723;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
        v56 = Set.description.getter();
        LODWORD(v172) = v53;
        v58 = sub_100005B4C(v56, v57, aBlock);

        *(v55 + 4) = v58;
        v41 = v179;
        *(v55 + 12) = 2160;
        *(v55 + 14) = 1752392040;
        *(v55 + 22) = 2081;
        *(v55 + 24) = sub_100005B4C(v176, v52, aBlock);
        _os_log_impl(&_mh_execute_header, v51, v172, "FMDeviceDetailContentViewController: mute sound selecting channels to play LE %{public}s for %{private,mask.hash}s.", v55, 0x20u);
        swift_arrayDestroy();
      }

      v60 = v174;
      v59 = v175;
      v61 = v163;
      (v174[13].isa)(v163, enum case for FMIPPlaySoundMethod.ble(_:), v175);
      v62 = swift_allocObject();
      *(v62 + 16) = v164;
      (*(v42 + 13))(v62 + v47, enum case for FMIPPlaySoundChannels.mute(_:), v41);
      aBlock[0] = sub_10008BB18(0, v46[2] + 1, 0, _swiftEmptyArrayStorage);

      sub_100494038(v63);
      sub_100493EC8(v62);
      v64 = aBlock[0];
      v65 = swift_allocObject();
      v66 = v176;
      v65[2] = v46;
      v65[3] = v66;
      v65[4] = v165;
      v65[5] = sub_10021F5D4;
      v65[6] = v167;

      sub_1001F3DC8(v61, 1, 0, v64, sub_1002204C4, v65);

      (v60[1].isa)(v61, v59);
      (*(v169 + 8))(v168, v170);
      (*(v42 + 1))(v178, v41);
    }

LABEL_39:
    swift_once();
    goto LABEL_9;
  }

  v79 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction;
  v80 = v171;
  swift_beginAccess();
  v81 = *(v80 + v79);
  v82 = v162;
  if (*(v81 + 16))
  {

    v83 = sub_1001B3AC8(v39);
    if (v84)
    {
      v85 = v41;
      v86 = *(*(v81 + 56) + 8 * v83);

      v174 = v86;
      v87 = sub_1001F0FF8(v86, v36, v39, v38);
      if (qword_1006AEB18 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_100005B14(v88, qword_1006D4110);
      v89 = v158;
      v172(v158, v164, v41);

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();

      v92 = os_log_type_enabled(v90, v91);
      v165 = v35;
      v175 = v87;
      if (v92)
      {
        v93 = swift_slowAlloc();
        v161 = v90;
        v94 = v89;
        v95 = v93;
        v162 = swift_slowAlloc();
        aBlock[0] = v162;
        *v95 = 136447491;
        v157 = v91;
        sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels);
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        v99 = *(v42 + 1);
        v163 = ((v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v166 = v99;
        (v99)(v94, v85);
        v100 = sub_100005B4C(v96, v98, aBlock);

        *(v95 + 4) = v100;
        *(v95 + 12) = 2160;
        *(v95 + 14) = 1752392040;
        *(v95 + 22) = 2081;
        *(v95 + 24) = sub_100005B4C(v176, v35, aBlock);
        *(v95 + 32) = 2082;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
        v101 = Set.description.getter();
        v103 = sub_100005B4C(v101, v102, aBlock);

        *(v95 + 34) = v103;
        *(v95 + 42) = 2082;
        v104 = Set.description.getter();
        v106 = sub_100005B4C(v104, v105, aBlock);

        *(v95 + 44) = v106;
        *(v95 + 52) = 2082;
        v180 = v175;
        type metadata accessor for FMIPPlaySoundDeviceAction();
        sub_10021E650(&qword_1006B6940, &type metadata accessor for FMIPPlaySoundDeviceAction);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = sub_100005B4C(v107, v108, aBlock);

        *(v95 + 54) = v109;
        v110 = v161;
        _os_log_impl(&_mh_execute_header, v161, v157, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Reissuing action %{public}s.", v95, 0x3Eu);
        swift_arrayDestroy();
      }

      else
      {

        v144 = *(v42 + 1);
        v163 = ((v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v166 = v144;
        (v144)(v89, v85);
      }

      v171 = *(*(*(v171 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 32);
      v172(v160, v164, v85);
      v145 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v146 = (v159 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
      v173 = (v146 + 23) & 0xFFFFFFFFFFFFFFF8;
      v147 = (v173 + 15) & 0xFFFFFFFFFFFFFFF8;
      v148 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
      v149 = swift_allocObject();
      (*(v42 + 4))(v149 + v145, v160, v85);
      v150 = (v149 + v146);
      v151 = v175;
      v152 = v165;
      *v150 = v176;
      v150[1] = v152;
      *(v149 + v173) = v38;
      *(v149 + v147) = v36;
      *(v149 + v148) = v151;
      v153 = (v149 + ((v148 + 15) & 0xFFFFFFFFFFFFFFF8));
      v154 = v167;
      *v153 = sub_10021F5D4;
      v153[1] = v154;

      sub_1000DA734(v151, sub_1002204CC, v149);

      (*(v169 + 8))(v168, v170);
      (v166)(v178, v85);
    }
  }

  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v114 = type metadata accessor for Logger();
  sub_100005B14(v114, qword_1006D4110);
  v172(v82, v164, v41);

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    aBlock[0] = v175;
    *v117 = 136447235;
    sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels);
    v174 = v115;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v119 = v82;
    v121 = v120;
    v177 = *(v42 + 1);
    LODWORD(v173) = v116;
    (v177)(v119, v41);
    v122 = sub_100005B4C(v118, v121, aBlock);

    *(v117 + 4) = v122;
    *(v117 + 12) = 2160;
    *(v117 + 14) = 1752392040;
    *(v117 + 22) = 2081;
    v123 = sub_100005B4C(v176, v35, aBlock);

    *(v117 + 24) = v123;
    *(v117 + 32) = 2082;
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    v124 = Set.description.getter();
    v125 = v41;
    v127 = v126;

    v128 = sub_100005B4C(v124, v127, aBlock);

    *(v117 + 34) = v128;
    *(v117 + 42) = 2082;
    v129 = Set.description.getter();
    v131 = v130;

    v132 = sub_100005B4C(v129, v131, aBlock);

    *(v117 + 44) = v132;
    v133 = v174;
    _os_log_impl(&_mh_execute_header, v174, v173, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Failed to reissue action, no last action.", v117, 0x34u);
    swift_arrayDestroy();

    v134 = v177;
  }

  else
  {

    v134 = *(v42 + 1);
    v134(v82, v41);
    v125 = v41;
  }

  v135 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v136 = v161;
  v137 = *(&v161->isa + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
  v137[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v138 = v137;
  sub_1000D17E8();

  v139 = *(&v136->isa + v135);
  v139[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v140 = objc_opt_self();
  v141 = swift_allocObject();
  *(v141 + 16) = v139;
  v184 = sub_100141428;
  v185 = v141;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v182 = sub_100004AE4;
  v183 = &unk_10062E240;
  v142 = _Block_copy(aBlock);
  v143 = v139;

  [v140 animateWithDuration:4 delay:v142 options:0 animations:0.3 completion:0.0];
  _Block_release(v142);

  [*(&v136->isa + v135) setUserInteractionEnabled:1];
  (*(v169 + 8))(v168, v170);
  v134(v178, v125);
}

uint64_t sub_10021C3F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPPlaySoundMethod();
  v182 = *(v6 - 8);
  v183 = v6;
  v7 = __chkstk_darwin(v6);
  v171 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v173 = (&v164 - v9);
  v10 = type metadata accessor for FMIPDevice();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPPlaySoundChannels();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v168 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v166 = &v164 - v19;
  v20 = __chkstk_darwin(v18);
  v169 = &v164 - v21;
  v167 = v22;
  __chkstk_darwin(v20);
  v24 = &v164 - v23;
  v174 = swift_allocObject();
  *(v174 + 16) = a3;
  v186 = v15;
  isa = v15[2].isa;
  v184 = v24;
  *&v172 = a1;
  v185 = v14;
  v180 = isa;
  v181 = v15 + 2;
  isa(v24, a1, v14);
  v179 = a2;
  v26 = *(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v27 = v26 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v28 = *(type metadata accessor for FMDeviceDetailViewModel() + 100);
  v29 = *(v26 + 40);
  v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  LOBYTE(v24) = *(v27 + v28);
  v170 = a3;

  os_unfair_lock_lock((v29 + v31));
  v176 = v11;
  v32 = *(v11 + 16);
  v177 = v10;
  v32(v13, v29 + v30, v10);
  os_unfair_lock_unlock((v29 + v31));

  v33 = FMIPDevice.identifier.getter();
  v35 = v34;
  v175 = v13;
  v36 = sub_1002161DC();
  v37 = sub_1001F0AF8(v24);
  if (v36[2] <= v37[2] >> 3)
  {
    aBlock[0] = v37;
    sub_1002132F4(v36);
    v38 = aBlock[0];
  }

  else
  {
    v38 = sub_100213BD0(v36, v37);
  }

  v39 = v184;
  v40 = sub_1001605D4(v184, v38);
  v41 = v185;
  v42 = v186;
  v178 = v33;
  if (v40)
  {
    sub_10007EBC0(&qword_1006AF788);
    v43 = (LOBYTE(v42[10].isa) + 32) & ~LOBYTE(v42[10].isa);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100552220;
    v180(v44 + v43, v39, v41);
    v45 = sub_100213510(v44, v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v36[2] <= v45[2] >> 3)
    {
      aBlock[0] = v45;
      sub_1002132F4(v36);

      v46 = aBlock[0];
    }

    else
    {
      v46 = sub_100213BD0(v36, v45);
    }

    v71 = qword_1006AEB18;

    if (v71 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100005B14(v72, qword_1006D4110);

    v73 = Logger.logObject.getter();
    v74 = v35;
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v75))
    {
      v76 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v76 = 136446723;
      sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
      v77 = Set.description.getter();
      v79 = sub_100005B4C(v77, v78, aBlock);

      *(v76 + 4) = v79;
      v41 = v185;
      *(v76 + 12) = 2160;
      *(v76 + 14) = 1752392040;
      *(v76 + 22) = 2081;
      v80 = v33;
      v81 = v74;
      *(v76 + 24) = sub_100005B4C(v80, v74, aBlock);
      _os_log_impl(&_mh_execute_header, v73, v75, "FMDeviceDetailContentViewController: mute sound selecting channels to play Classic %{public}s for %{private,mask.hash}s.", v76, 0x20u);
      swift_arrayDestroy();
      v39 = v184;
    }

    else
    {
      v81 = v74;
    }

    (*(v182 + 104))(v173, enum case for FMIPPlaySoundMethod.classic(_:), v183);
    v116 = v46[2];
    if (!v116)
    {
      v35 = _swiftEmptyArrayStorage;
      goto LABEL_28;
    }

    v35 = sub_10008C8DC(v46[2], 0);
    v117 = sub_1004A2EA8(aBlock, &v35[v43], v116, v46);
    v39 = v189;
    v48 = v191;

    sub_10000BEC8();
    if (v117 == v116)
    {
      v39 = v184;
      v41 = v185;
LABEL_28:
      v118 = swift_allocObject();
      v119 = v178;
      v118[2] = v46;
      v118[3] = v119;
      v118[4] = v81;
      v118[5] = sub_10021F57C;
      v118[6] = v174;

      v120 = v173;
      sub_1001F3DC8(v173, 1, 0, v35, sub_10021F594, v118);

      (*(v182 + 8))(v120, v183);
      (*(v176 + 8))(v175, v177);
      (v186[1].isa)(v39, v41);
    }

    __break(1u);
    goto LABEL_40;
  }

  if (sub_1001605D4(v39, v36))
  {

    sub_10007EBC0(&qword_1006AF788);
    v47 = v42[9].isa;
    v48 = (LOBYTE(v42[10].isa) + 32) & ~LOBYTE(v42[10].isa);
    v173 = v47;
    v49 = swift_allocObject();
    v172 = xmmword_100552220;
    *(v49 + 16) = xmmword_100552220;
    v180(v49 + v48, v39, v41);
    v46 = sub_100213510(v49, v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v50 = qword_1006AEB18;

    if (v50 == -1)
    {
LABEL_9:
      v51 = type metadata accessor for Logger();
      sub_100005B14(v51, qword_1006D4110);

      v52 = Logger.logObject.getter();
      v53 = v35;
      v54 = static os_log_type_t.default.getter();

      v55 = os_log_type_enabled(v52, v54);
      v165 = v53;
      if (v55)
      {
        v56 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        aBlock[0] = v181;
        *v56 = 136446723;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
        v57 = Set.description.getter();
        LODWORD(v180) = v54;
        v59 = sub_100005B4C(v57, v58, aBlock);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2160;
        *(v56 + 14) = 1752392040;
        *(v56 + 22) = 2081;
        *(v56 + 24) = sub_100005B4C(v178, v53, aBlock);
        _os_log_impl(&_mh_execute_header, v52, v180, "FMDeviceDetailContentViewController: mute sound selecting channels to play LE %{public}s for %{private,mask.hash}s.", v56, 0x20u);
        swift_arrayDestroy();
      }

      v61 = v182;
      v60 = v183;
      v62 = v171;
      (*(v182 + 104))(v171, enum case for FMIPPlaySoundMethod.ble(_:), v183);
      v63 = swift_allocObject();
      *(v63 + 16) = v172;
      v64 = v186;
      v65 = v63 + v48;
      v66 = v185;
      (v186[13].isa)(v65, enum case for FMIPPlaySoundChannels.mute(_:), v185);
      aBlock[0] = sub_10008BB18(0, v46[2] + 1, 0, _swiftEmptyArrayStorage);

      sub_100494038(v67);
      sub_100493EC8(v63);
      v68 = aBlock[0];
      v69 = swift_allocObject();
      v70 = v178;
      v69[2] = v46;
      v69[3] = v70;
      v69[4] = v165;
      v69[5] = sub_10021F57C;
      v69[6] = v174;

      sub_1001F3DC8(v62, 1, 0, v68, sub_10021F588, v69);

      (*(v61 + 8))(v62, v60);
      (*(v176 + 8))(v175, v177);
      (v64[1].isa)(v39, v66);
    }

LABEL_40:
    swift_once();
    goto LABEL_9;
  }

  v82 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction;
  v83 = v179;
  swift_beginAccess();
  v84 = *(v83 + v82);
  if (*(v84 + 16))
  {

    v85 = sub_1001B3AC8(v39);
    if (v86)
    {
      v87 = v41;
      v88 = *(*(v84 + 56) + 8 * v85);

      v182 = v88;
      v89 = sub_1001F0FF8(v88, v36, v39, v38);
      if (qword_1006AEB18 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100005B14(v90, qword_1006D4110);
      v91 = v166;
      v92 = v172;
      v180(v166, v172, v41);

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      LODWORD(v170) = v94;
      v95 = os_log_type_enabled(v93, v94);
      v183 = v89;
      v165 = v35;
      if (v95)
      {
        v96 = swift_slowAlloc();
        v164 = v93;
        v97 = v92;
        v98 = v91;
        v99 = v96;
        v169 = swift_slowAlloc();
        aBlock[0] = v169;
        *v99 = 136447491;
        sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels);
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v103 = v186[1].isa;
        v171 = (&v186[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v104 = v98;
        v92 = v97;
        v173 = v103;
        (v103)(v104, v87);
        v105 = sub_100005B4C(v100, v102, aBlock);

        *(v99 + 4) = v105;
        *(v99 + 12) = 2160;
        *(v99 + 14) = 1752392040;
        *(v99 + 22) = 2081;
        *(v99 + 24) = sub_100005B4C(v178, v35, aBlock);
        *(v99 + 32) = 2082;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
        v106 = Set.description.getter();
        v108 = sub_100005B4C(v106, v107, aBlock);

        *(v99 + 34) = v108;
        *(v99 + 42) = 2082;
        v109 = Set.description.getter();
        v111 = sub_100005B4C(v109, v110, aBlock);

        *(v99 + 44) = v111;
        *(v99 + 52) = 2082;
        v187 = v183;
        type metadata accessor for FMIPPlaySoundDeviceAction();
        sub_10021E650(&qword_1006B6940, &type metadata accessor for FMIPPlaySoundDeviceAction);
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        v114 = sub_100005B4C(v112, v113, aBlock);

        *(v99 + 54) = v114;
        v115 = v164;
        _os_log_impl(&_mh_execute_header, v164, v170, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Reissuing action %{public}s.", v99, 0x3Eu);
        swift_arrayDestroy();

        v42 = v186;
      }

      else
      {

        v151 = v42[1].isa;
        v171 = (&v42[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v173 = v151;
        (v151)(v91, v87);
      }

      v179 = *(*(*(v179 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 32);
      v180(v168, v92, v87);
      v152 = v42;
      v153 = (LOBYTE(v42[10].isa) + 16) & ~LOBYTE(v42[10].isa);
      v154 = (v167 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
      v181 = ((v154 + 23) & 0xFFFFFFFFFFFFFFF8);
      v155 = (&v181[1].isa + 7) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
      v157 = swift_allocObject();
      (v152[4].isa)(v157 + v153, v168, v87);
      v158 = (v157 + v154);
      v159 = v165;
      *v158 = v178;
      v158[1] = v159;
      *(&v181->isa + v157) = v38;
      *(v157 + v155) = v36;
      v160 = v183;
      *(v157 + v156) = v183;
      v161 = (v157 + ((v156 + 15) & 0xFFFFFFFFFFFFFFF8));
      v162 = v174;
      *v161 = sub_10021F57C;
      v161[1] = v162;

      sub_1000DA734(v160, sub_10021F584, v157);

      (*(v176 + 8))(v175, v177);
      (v173)(v184, v87);
    }
  }

  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v121 = type metadata accessor for Logger();
  sub_100005B14(v121, qword_1006D4110);
  v122 = v169;
  v180(v169, v172, v41);

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    aBlock[0] = v183;
    *v125 = 136447235;
    sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels);
    LODWORD(v182) = v124;
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v181 = v123;
    v128 = v127;
    v129 = v186[1].isa;
    v129(v122, v41);
    v130 = sub_100005B4C(v126, v128, aBlock);

    *(v125 + 4) = v130;
    *(v125 + 12) = 2160;
    *(v125 + 14) = 1752392040;
    *(v125 + 22) = 2081;
    v131 = sub_100005B4C(v178, v35, aBlock);

    *(v125 + 24) = v131;
    *(v125 + 32) = 2082;
    v39 = v184;
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    v132 = Set.description.getter();
    v134 = v133;

    v135 = sub_100005B4C(v132, v134, aBlock);
    v41 = v185;

    *(v125 + 34) = v135;
    *(v125 + 42) = 2082;
    v136 = Set.description.getter();
    v138 = v137;
    v139 = v129;

    v140 = sub_100005B4C(v136, v138, aBlock);

    *(v125 + 44) = v140;
    v141 = v181;
    _os_log_impl(&_mh_execute_header, v181, v182, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Failed to reissue action, no last action.", v125, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v139 = v186[1].isa;
    v139(v122, v41);
  }

  v142 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v143 = v170;
  v144 = *&v170[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton];
  v144[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v145 = v144;
  sub_1000D17E8();

  v146 = *&v143[v142];
  v146[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v147 = objc_opt_self();
  v148 = swift_allocObject();
  *(v148 + 16) = v146;
  v191 = sub_100141428;
  v192 = v148;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v189 = sub_100004AE4;
  v190 = &unk_10062E0B0;
  v149 = _Block_copy(aBlock);
  v150 = v146;

  [v147 animateWithDuration:4 delay:v149 options:0 animations:0.3 completion:0.0];
  _Block_release(v149);

  [*&v143[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton] setUserInteractionEnabled:1];
  (*(v176 + 8))(v175, v177);
  v139(v39, v41);
}

void sub_10021DE68()
{
  v1 = v0;
  v25 = type metadata accessor for FMIPDeviceState();
  v2 = *(v25 - 8);
  v3 = __chkstk_darwin(v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMDeviceDetailContentViewController: handle itemNotificationViewSelectNWLBDetailLabel", v15, 2u);
  }

  v16 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 40);
  v17 = *(*v16 + class metadata base offset for ManagedBuffer + 16);
  v18 = *(*v16 + 48) + 3;
  v24 = v1;
  v19 = v18 & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v19));
  (*(v9 + 16))(v11, v16 + v17, v8);
  os_unfair_lock_unlock((v16 + v19));

  FMIPDevice.state.getter();
  (*(v9 + 8))(v11, v8);
  static FMIPDeviceState.separationWarningPaused.getter();
  sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v20 = v25;
  v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22 = *(v2 + 8);
  v22(v5, v20);
  v22(v7, v20);
  if (v21)
  {
    sub_100205128();
  }

  else
  {
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000C5474(sub_10021E6A0, v23, 0, 0);
  }
}

void sub_10021E228()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100012DF0(v2, &unk_1006B0120);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMDeviceDetailContentViewController: Error opening settings. Invalid URL", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10021E4E4(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a1, v6, 2u);
  }

  return a2();
}

uint64_t sub_10021E650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021E710(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPDevice() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10020C928(a1, v4, v5);
}

void sub_10021E784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPDevice() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10020CAB4(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_10021E96C()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10021EA48(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FMIPDevice() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 25) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_10021EAEC(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPDevice() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_100207CA8(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_10021EB90()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021EBE4(char a1)
{
  v3 = *(type metadata accessor for FMIPDevice() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B68E8) - 8);
  v7 = (v5 + *(v6 + 80) + 2) & ~*(v6 + 80);
  return sub_100206E04(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 33), *(v1 + 34), *(v1 + 35), *(v1 + 36), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 1), v1 + v7, *(v1 + v7 + *(v6 + 64)));
}

uint64_t sub_10021ED5C()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B68E8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v4 + v7 + 4) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for FMFDevice();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 9) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

void sub_10021EF14()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10007EBC0(&qword_1006B68E8) - 8);
  v5 = (v3 + *(v4 + 80) + 4) & ~*(v4 + 80);
  sub_10020746C(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + v3 + 1), *(v0 + v3 + 2), *(v0 + v3 + 3), v0 + v5, *(v0 + v5 + *(v4 + 64)), *(v0 + v5 + *(v4 + 64) + 1), *(v0 + ((v5 + *(v4 + 64) + 9) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_10021F054(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100201280(a1, a2, v6);
}

char *sub_10021F0D4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 32);
  v7[1] = *(v2 + 16);
  v7[2] = v5;
  result = sub_1003F8284(sub_10021F128, v7, v4);
  *a2 = result;
  return result;
}

uint64_t sub_10021F2A0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for FMIPPlaySoundMethod() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for FMIPDevice() - 8);
  return sub_1001F4818(a1, a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 80) + 16) & ~*(v12 + 80)));
}

uint64_t sub_10021F3C0()
{
  v1 = *(type metadata accessor for FMIPActionStatus() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for FMIPDevice() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v3);
  v10 = *(v0 + v3 + 8);
  v11 = *(v0 + v4);
  v12 = *(v0 + v7);
  v13 = *(v0 + v8);
  v14 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001F5178(v0 + v2, v9, v10, v11, v0 + v6, v12, v13, v14);
}

uint64_t sub_10021F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPPlaySoundMethod() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_1001F3778(a1, a2, a3, v8, v9);
}

uint64_t sub_10021F5DC()
{
  v1 = type metadata accessor for FMIPPlaySoundChannels();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10021F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for FMIPPlaySoundChannels() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001F150C(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + v12), *(v4 + v13), *(v4 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10021F7D0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021F86C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021F918()
{

  return _swift_deallocObject(v0, 40, 7);
}