void sub_100087AE8()
{
  v1 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMMeViewController<%@>: present location label selector", v8, 0xCu);
    sub_100012DF0(v9, &unk_1006AF760);
  }

  v11 = *&v5[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];

  dispatch thunk of FMFManager.myUnshiftedLocation.getter();

  v12 = objc_allocWithZone(type metadata accessor for FMLabelViewController());
  v13 = sub_1003D8234(v11, v3, 1);

  v14 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress];
  v15 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 8];
  v16 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 16];
  v17 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 24];
  v18 = &v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress];
  v19 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress];
  v20 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 8];
  v21 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 16];
  v22 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 24];
  v23 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 32];
  *v18 = v14;
  *(v18 + 1) = v15;
  *(v18 + 2) = v16;
  *(v18 + 3) = v17;
  *(v18 + 16) = v23;
  sub_10008FAA4(v14, v15, v16, v17);
  sub_10008ECE4(v19, v20, v21, v22);
  objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v24 = v13;
  v25 = sub_1000CC510(v24, 2);
  [v5 presentViewController:v25 animated:1 completion:0];
}

void sub_100087D88(uint64_t a1, char a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v33 = a1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    aBlock = 0;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v36 = 0xE000000000000000;
    if (a2)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a2)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = v6;
    v15._countAndFlagsBits = v12;
    v15._object = v13;
    String.append(_:)(v15);

    v16 = sub_100005B4C(aBlock, v36, &v34);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMeViewController<%@>: location settings, share location state changed: %s", v9, 0x16u);
    sub_100012DF0(v10, &unk_1006AF760);

    sub_100006060(v11);

    a1 = v33;
  }

  type metadata accessor for FMFShowHideLocationAction();
  swift_allocObject();
  v17 = 1;
  v18 = FMFShowHideLocationAction.init(hideLocation:)();
  [*(a1 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch) setUserInteractionEnabled:0];
  v19 = a2 & 1;
  *(v6 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride) = v19;
  if (v19)
  {
    v17 = 2;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v19;
  v21 = v6;

  sub_1000FB600(v18, sub_10008EED8, v20);

  v22 = [objc_allocWithZone(type metadata accessor for ToggleLocationSharingIntent()) init];
  [v22 setState:v17];
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = objc_allocWithZone(INInteraction);
  v25 = v21;
  v26 = [v24 initWithIntent:v22 response:0];
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10008EEE4;
  *(v27 + 24) = v23;
  v39 = sub_10008EEEC;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1001A44B4;
  v38 = &unk_100624158;
  v28 = _Block_copy(&aBlock);

  [v26 donateInteractionWithCompletion:v28];
  _Block_release(v28);

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  v39 = sub_10008EEF4;
  v40 = v30;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100004AE4;
  v38 = &unk_1006241A8;
  v31 = _Block_copy(&aBlock);
  v32 = v25;

  [v29 animateWithDuration:v31 animations:0.2];
  _Block_release(v31);
}

id sub_100088264(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = a3;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005B4C(v15, v16, &v19);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMMeViewController<%@>: location settings, share location completed with error?: %s", v11, 0x16u);
    sub_100012DF0(v12, &unk_1006AF760);

    sub_100006060(v13);
  }

  [*(*&v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings] + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch) setUserInteractionEnabled:1];
  v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride] = ((a2 != 0) ^ a4) & 1;
  return sub_100083A2C();
}

void sub_10008849C(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100005B14(v3, qword_1006D4630);
    swift_errorRetain();
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2080;
      swift_errorRetain();
      v10 = v4;
      sub_10007EBC0(&unk_1006AF7B0);
      v11 = String.init<A>(describing:)();
      v13 = sub_100005B4C(v11, v12, &v14);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "FMMeViewController<%@>: error during show/hide location donation - %s", v7, 0x16u);
      sub_100012DF0(v8, &unk_1006AF760);

      sub_100006060(v9);
    }

    else
    {
    }
  }
}

id sub_1000886BC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = a3;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005B4C(v15, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMMeViewController<%@>: allow friend requests setting change completed with error?: %s", v11, 0x16u);
    sub_100012DF0(v12, &unk_1006AF760);

    sub_100006060(v13);
  }

  [*(*&v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings] + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch) setUserInteractionEnabled:1];
  v18 = a4 & 1;
  if (a2)
  {
    v18 = 2;
  }

  v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride] = v18;
  return sub_100083A2C();
}

void sub_10008893C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMeViewController<%@>: clear ignored tags", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760);
  }

  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10._countAndFlagsBits = 0xD000000000000012;
  v32._object = 0x8000000100579A00;
  v10._object = 0x80000001005799C0;
  v11.value._object = 0x80000001005799E0;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v32);

  v13 = [v8 mainBundle];
  v33._object = 0x8000000100579A00;
  v14._object = 0x8000000100579A20;
  v15.value._object = 0x80000001005799E0;
  v14._countAndFlagsBits = 0xD000000000000018;
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v33);

  v17 = [v8 mainBundle];
  v18._countAndFlagsBits = 0xD000000000000017;
  v34._object = 0x8000000100579A00;
  v18._object = 0x8000000100579A40;
  v19.value._object = 0x80000001005799E0;
  v19.value._countAndFlagsBits = 0xD000000000000013;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v34);

  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:0 message:v21 preferredStyle:0];

  v23 = String._bridgeToObjectiveC()();

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v23 style:1 handler:0];

  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = v2;
  v28 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10008FA84;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100624220;
  v29 = _Block_copy(aBlock);

  v30 = [v24 actionWithTitle:v28 style:2 handler:v29];
  _Block_release(v29);

  [v22 addAction:v25];
  [v22 addAction:v30];
  [v27 presentViewController:v22 animated:1 completion:0];
}

uint64_t sub_100088DB0(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = FMIPManager.unknownItems.getter();

  a2[OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride] = 1;
  sub_100083A2C();
  sub_10000905C(0, &qword_1006AEDC0);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a2;
  aBlock[4] = sub_10008FA8C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624270;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100009E38(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

uint64_t sub_1000891A0(uint64_t a1, char *a2)
{
  v47 = a2;
  v3 = type metadata accessor for FMIPUnknownItemAlertState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v17 = &v39 - v15;
  v18 = *(a1 + 16);
  if (v18)
  {
    v20 = *(v11 + 16);
    v19 = v11 + 16;
    v54 = v20;
    v21 = (a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64)));
    v53 = *(v19 + 56);
    v52 = enum case for FMIPUnknownItemAlertState.ignored(_:);
    v50 = (v4 + 8);
    v51 = (v4 + 104);
    v49 = (v19 - 8);
    *&v16 = 136315138;
    v39 = v16;
    v40 = v3;
    v44 = v10;
    v45 = v9;
    v42 = &v39 - v15;
    v43 = v19;
    v20(v17, v21, v10);
    while (1)
    {
      FMIPUnknownItem.alertState.getter();
      (*v51)(v7, v52, v3);
      sub_100009E38(&unk_1006AF8D0, &type metadata accessor for FMIPUnknownItemAlertState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v24 = *v50;
      (*v50)(v7, v3);
      v24(v9, v3);
      if (v56 == v55)
      {
        v54(v46, v17, v10);
        type metadata accessor for FMIPIgnoreItemAction();
        swift_allocObject();
        FMIPIgnoreItemAction.init(unknownItem:until:)();
        v25 = v47;
        v26 = *(*(*&v47[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 24) + 32);
        v48 = swift_allocObject();
        *(v48 + 16) = v25;
        v27 = qword_1006AEBE0;

        v28 = v25;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100005B14(v29, qword_1006D4630);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v41 = v26;
          v33 = v32;
          v34 = swift_slowAlloc();
          v56 = v34;
          *v33 = v39;
          v35 = FMIPUTItemAction.debugDescription.getter();
          v37 = v7;
          v38 = sub_100005B4C(v35, v36, &v56);

          *(v33 + 4) = v38;
          v7 = v37;
          _os_log_impl(&_mh_execute_header, v30, v31, "FMDevicesActionController: perform UT item action %s", v33, 0xCu);
          sub_100006060(v34);
          v3 = v40;
        }

        v22 = swift_allocObject();
        v23 = v48;
        *(v22 + 16) = sub_10008FA94;
        *(v22 + 24) = v23;

        FMIPManager.perform(action:completion:)();

        v10 = v44;
        v9 = v45;
        v17 = v42;
      }

      result = (*v49)(v17, v10);
      v21 += v53;
      if (!--v18)
      {
        break;
      }

      v54(v17, v21, v10);
    }
  }

  return result;
}

void sub_1000896D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPItemActionStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  (*(v7 + 16))(v9, a1, v6);
  v11 = a3;
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 138412802;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    sub_100009E38(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
    v16 = v11;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_100005B4C(v17, v19, &v27);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v26 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v21 = String.init<A>(describing:)();
    v23 = sub_100005B4C(v21, v22, &v27);

    *(v14 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMMeViewController<%@>: clear ignoreAction completed with status %s, and error %s", v14, 0x20u);
    sub_100012DF0(v24, &unk_1006AF760);

    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  *(v11 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride) = 2;
}

id sub_100089A80(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = a3;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44._countAndFlagsBits = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v13 = String.init<A>(describing:)();
    v15 = sub_100005B4C(v13, v14, &v44._countAndFlagsBits);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMeViewController<%@>: me device update with error?: %s", v9, 0x16u);
    sub_100012DF0(v10, &unk_1006AF760);

    sub_100006060(v11);
  }

  v16 = *&v6[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings];
  [*(v16 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceSpinner) stopAnimating];
  v17 = *(v16 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow);
  *(v17 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable) = 1;
  v18 = *(v17 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemBlueColor];
  [v20 setTextColor:v21];

  result = sub_100083A2C();
  if (a2)
  {
    v23 = objc_opt_self();
    swift_errorRetain();
    v24 = [v23 mainBundle];
    v45._object = 0x8000000100579AB0;
    object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD000000000000026;
    v26._object = 0x8000000100579A80;
    v45._countAndFlagsBits = 0xD000000000000038;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v24, v27, v45);

    if (static SystemInfo.isInternalBuild.getter())
    {
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v29._countAndFlagsBits = 0x7265746E69280A0ALL;
      v29._object = 0xED0000203A6C616ELL;
      String.append(_:)(v29);
      sub_10007EBC0(&unk_1006AF7B0);
      _print_unlocked<A, B>(_:_:)();
      v30._countAndFlagsBits = 41;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      countAndFlagsBits = v44._countAndFlagsBits;
      object = v44._object;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    v44 = v28;

    v32._countAndFlagsBits = countAndFlagsBits;
    v32._object = object;
    String.append(_:)(v32);

    v35 = v44;
    v34 = v35._object;
    v33 = v35._countAndFlagsBits;
    v36 = [v23 mainBundle];
    v46._object = 0x8000000100579B20;
    v37._countAndFlagsBits = 0xD000000000000023;
    v37._object = 0x8000000100579AF0;
    v46._countAndFlagsBits = 0xD000000000000035;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

    v40 = [v23 mainBundle];
    v47._object = 0x8000000100579B60;
    v41._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v41._object = 0xEF454C5449545F4ELL;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD000000000000021;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v47);

    sub_10027CEB4(v39._countAndFlagsBits, v39._object, v33, v34, v43._countAndFlagsBits, v43._object);
  }

  return result;
}

void sub_10008A010()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLayoutSubviews");
  v9 = &type metadata for SolariumFeatureFlag;
  v10 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v8);
  if ((v1 & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
      v4 = v2;
      [v3 frame];
      v6 = v5;
      [v3 frame];
      [v4 setConstant:v6 + v7 + 30.0];
    }
  }
}

void sub_10008A164()
{
  sub_100083A2C();
  if (*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 208) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton);
    if (v1)
    {
      v2 = v1;
      sub_10008E704(v2);
    }
  }
}

uint64_t sub_10008A40C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10008A4B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v8 = String.Iterator.next()();
  countAndFlagsBits = v8.value._countAndFlagsBits;
  if (v8.value._object)
  {
    object = v8.value._object;
    while (1)
    {
      v13[0] = countAndFlagsBits;
      v13[1] = object;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
      if (!v11.value._object)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_10008A5E8(uint64_t (*a1)(char *), char a2, uint64_t a3, uint64_t (*a4)(void))
{
  v25 = a1;
  v26 = a4(0);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v4)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008A800(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

__n128 sub_10008A928@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_10008A9AC(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1[1];
  v4[2] = *a1;
  v4[3] = v3;

  sub_10008EDD0(v5, v4);
  static Published.subscript.setter();
  sub_100170F90();
}

void *sub_10008AA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  v8 = String._bridgeToObjectiveC()();
  v46 = [v6 systemImageNamed:v8];

  sub_10000905C(0, &qword_1006AF730);
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v53._object = 0x80000001005796A0;
  v11._countAndFlagsBits = 0xD000000000000026;
  v11._object = 0x8000000100579670;
  v53._countAndFlagsBits = 0xD000000000000038;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v53);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v7;
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v15 = [v9 mainBundle];
  v54._object = 0x8000000100579710;
  v16._countAndFlagsBits = 0xD00000000000002ALL;
  v16._object = 0x80000001005796E0;
  v54._countAndFlagsBits = 0xD00000000000003CLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v54);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v46;
  v45 = a3;
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = String._bridgeToObjectiveC()();
  v47 = v6;
  v20 = [v6 _systemImageNamed:{v19, 0, 0, 0, v45, v18}];

  v21 = [v9 mainBundle];
  v55._object = 0x80000001005797A0;
  v22._countAndFlagsBits = 0xD00000000000002BLL;
  v22._object = 0x8000000100579750;
  v23.value._object = 0x8000000100579780;
  v55._countAndFlagsBits = 0xD000000000000015;
  v23.value._countAndFlagsBits = 0xD000000000000010;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v55);

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v20;
  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 userInterfaceIdiom];

  if (v29 == 1)
  {
    if (qword_1006AECB8 != -1)
    {
      swift_once();
    }

    if (byte_1006D4AD0 == 1)
    {
      v30 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v31 = String._bridgeToObjectiveC()();
  v32 = MGGetBoolAnswer();

  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();
    v34 = [v47 systemImageNamed:v33];

    if (v34)
    {
      v35 = [objc_opt_self() labelColor];
      v36 = [v34 imageWithTintColor:v35];
    }

    else
    {
      v36 = 0;
    }

    v37 = [v9 mainBundle];
    v56._object = 0x8000000100579840;
    v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38.value._object = 0xEC00000031656C62;
    v39._countAndFlagsBits = 0xD000000000000031;
    v39._object = 0x8000000100579800;
    v56._countAndFlagsBits = 0xD000000000000043;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v38, v37, v40, v56);

    v41 = v36;
    v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v43 = v50;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return _swiftEmptyArrayStorage;
}

void *sub_10008B1D0()
{
  v13 = &type metadata for SolariumFeatureFlag;
  v14 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v12);
  if ((v0 & 1) != 0 || (v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2], v2 = objc_msgSend(objc_opt_self(), "configurationWithFont:", v1), v1, !v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4 withConfiguration:v3];

  sub_10000905C(0, &qword_1006AF730);
  v6 = [objc_opt_self() mainBundle];
  v15._object = 0x8000000100579630;
  v7._object = 0x8000000100579600;
  v15._countAndFlagsBits = 0xD000000000000033;
  v7._countAndFlagsBits = 0xD000000000000021;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v15);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v5;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  LOBYTE(v5) = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  if (v5)
  {

    return 0;
  }

  return v10;
}

uint64_t sub_10008B454()
{
  v0 = type metadata accessor for FMSelectedSection();
  v1 = __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(*(result + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 56);
    v8 = result;
    swift_storeEnumTagMultiPayload();
    v9 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v7 + v9, v3);
    swift_beginAccess();

    sub_100058530(v5, v7 + v9);
    swift_endAccess();
    sub_100058594(v3);

    sub_100029E60(v3, type metadata accessor for FMSelectedSection);
    return sub_100029E60(v5, type metadata accessor for FMSelectedSection);
  }

  return result;
}

uint64_t sub_10008B5E0()
{
  v0 = type metadata accessor for FMSelectedSection();
  v1 = __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  v6 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
    v11 = *(*(result + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 56);
    v12 = result;
    v13 = type metadata accessor for FMSelectionPendingAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();

    sub_10008EC74(v8, v11 + v14);
    swift_endAccess();

    v15 = *(*&v12[v10] + 56);
    swift_storeEnumTagMultiPayload();
    v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v15 + v16, v3);
    swift_beginAccess();

    sub_100058530(v5, v15 + v16);
    swift_endAccess();
    sub_100058594(v3);

    sub_100029E60(v3, type metadata accessor for FMSelectedSection);
    return sub_100029E60(v5, type metadata accessor for FMSelectedSection);
  }

  return result;
}

uint64_t sub_10008B86C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_10008B8B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006AF798);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10008B9E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&unk_1006AF770);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008BC7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF858);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008BEF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF8F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF900);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008C054(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10007EBC0(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_10008C140(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF7C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF7C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008C29C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF850);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10008C470(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007EBC0(a5);
  v14 = *(sub_10007EBC0(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10007EBC0(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10008C658(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006AF7F0);
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

void *sub_10008C780(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10007EBC0(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_10008C904(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007EBC0(&qword_1006AF938);
  v4 = *(sub_10007EBC0(&qword_1006AF940) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10008CA70(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007EBC0(&qword_1006B4160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void *sub_10008CB1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007EBC0(&qword_1006AF960);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10008CBC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007EBC0(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10008CCC4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

_BYTE **sub_10008CD4C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10008CD5C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10008CDD0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_10008CE28(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10008CE9C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10008CEF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for FMLocationSettingsView()) init];
  v3 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsContainerView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsBackgroundView;
  v5 = type metadata accessor for FMPlatterBackgroundView();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v19.receiver = v6;
  v19.super_class = v5;
  v7 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettings;
  *(v1 + v8) = [objc_allocWithZone(type metadata accessor for FMStewieSettingsView()) init];
  v9 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView;
  *(v1 + v9) = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsBackgroundView;
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v18.receiver = v11;
  v18.super_class = v5;
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtC6FindMy18FMMeViewController_helpFriendView;
  *(v1 + v13) = [objc_allocWithZone(type metadata accessor for FMHelpFriendView()) init];
  v14 = OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView;
  *(v1 + v14) = [objc_allocWithZone(UIStackView) init];
  v15 = OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel;
  *(v1 + v15) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_peopleSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_deviceSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_conditionsSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowLocationAlertsOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_currentLimitedPrecision) = 0;
  v16 = v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress;
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = sub_100174A74(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_cancellables) = v17;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10008D1D8(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10007EBC0(&qword_1006AF740);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = type metadata accessor for FMFLocation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v16 = [objc_opt_self() mainBundle];
    v69._object = 0x80000001005798C0;
    v17._countAndFlagsBits = 0xD000000000000021;
    v17._object = 0x8000000100579890;
    v66._countAndFlagsBits = 0xD000000000000033;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v66);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_25;
  }

  dispatch thunk of FMFManager.myLocation.getter();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    if (qword_1006AECC0 != -1)
    {
      swift_once();
    }

    if (byte_1006D4AD1 != 1)
    {
      (*(v13 + 8))(v15, v12);
      goto LABEL_11;
    }

    v26 = *(*(a2 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
    v65[3] = &type metadata for SolariumFeatureFlag;
    v65[4] = sub_10000BD04();
    v27 = isFeatureEnabled(_:)();
    sub_100006060(v65);
    (*(v13 + 16))(v9, v15, v12);
    v64 = v13;
    (*(v13 + 56))(v9, 0, 1, v12);
    v61 = v26;
    v28 = v26 ^ 1u;
    if (v27)
    {
      v29 = sub_100051E0C(v9, v28);
      v62 = v30;
      v63 = v29;
      countAndFlagsBits = v31;
      object = v32;
    }

    else
    {
      countAndFlagsBits = sub_1000532F8(v9, v28);
      object = v37;
      v62 = 0;
      v63 = 0;
    }

    sub_100012DF0(v9, &qword_1006AF740);

    sub_10007EBC0(&unk_1006AF770);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552210;
    v60 = objc_opt_self();
    v39 = [v60 mainBundle];
    v69._object = 0x8000000100579940;
    v40._object = 0x8000000100579920;
    v68._countAndFlagsBits = 0xD000000000000030;
    v40._countAndFlagsBits = 0xD00000000000001ELL;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v68);

    *(inited + 32) = v42;
    v43 = static PublishedLocation.Label.noLocationLabel.getter();
    *(inited + 48) = v43;
    *(inited + 56) = v44;
    v65[0] = countAndFlagsBits;
    v65[1] = object;
    __chkstk_darwin(v43);
    v69._object = v65;
    v45 = sub_10008A40C(sub_10008EE2C, (&v60 - 4), inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    if ((v45 & 1) != 0 && (v46 = FMFLocation.location.getter()) != 0)
    {
      v47 = v46;

      [v47 coordinate];
      v49 = v48;
      v51 = v50;

      v52 = [objc_allocWithZone(MUCoordinateStringFormatter) init];
      v53 = [v52 stringFromCoordinate:{v49, v51}];

      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v54;

      v22 = 1;
      if (!v61)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = 0;
      if (!v61)
      {
LABEL_24:
        (*(v64 + 8))(v15, v12);
        v23 = 1;
        v25 = v62;
        v24 = v63;
        goto LABEL_25;
      }
    }

    v55 = [v60 mainBundle];
    v69._object = 0x8000000100579980;
    v56._countAndFlagsBits = 0x4444415F5241454ELL;
    v56._object = 0xEC00000053534552;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v69);

    sub_10007EBC0(&unk_1006B20B0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100552220;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_10008EE84();
    *(v58 + 32) = countAndFlagsBits;
    *(v58 + 40) = object;
    countAndFlagsBits = String.init(format:_:)();
    object = v59;

    goto LABEL_24;
  }

  sub_100012DF0(v11, &qword_1006AF740);
LABEL_11:
  if (qword_1006AECC0 != -1)
  {
    swift_once();
  }

  if (byte_1006D4AD1 == 1)
  {
    v33 = [objc_opt_self() mainBundle];
    v67._countAndFlagsBits = 0xD00000000000001CLL;
    v69._object = 0x8000000100579900;
    v34._countAndFlagsBits = 0x45524444415F4F4ELL;
    v34._object = 0xEA00000000005353;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v67);
    countAndFlagsBits = v36._countAndFlagsBits;
    object = v36._object;

    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v23 = 0;
    countAndFlagsBits = 0;
    v24 = 0;
    v25 = 0;
    object = 0xE000000000000000;
  }

  v22 = 1;
LABEL_25:
  *a3 = v24;
  *(a3 + 8) = v25;
  *(a3 + 16) = countAndFlagsBits;
  *(a3 + 24) = object;
  *(a3 + 32) = v23;
  *(a3 + 33) = v22;
}

void sub_10008D940(char a1)
{
  My = type metadata accessor for Feature.FindMy();
  v17[3] = My;
  v17[4] = sub_100009E38(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v4 = sub_100008FC0(v17);
  (*(*(My - 8) + 104))(v4, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMMeViewController<%@>: update Stewie location actioned", v9, 0xCu);
      sub_100012DF0(v10, &unk_1006AF760);
    }

    type metadata accessor for FMStewieWelcomeViewController();
    v12 = *&v6[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];
    v13 = *&v6[OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieViewModel];
    v14 = v6;

    v15 = sub_100426428(v12, v13, v6, &off_100623BC8, a1 & 1);
    v16 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v15];
    [v14 presentViewController:v16 animated:1 completion:0];
  }
}

void sub_10008DBCC(void *a1)
{
  v3 = *(*(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMActionButtonController: areAccountsSignedIn: %{BOOL}d", v7, 8u);
  }

  v8 = sub_10008AA3C(&unk_100624320, sub_10008FB0C, sub_10008FB2C, sub_10008FB4C);
  v9 = v8;
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11 != 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMActionButtonController: hasActions: %{BOOL}d", v15, 8u);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMActionButtonController: Platform Action Button Visibility: %{BOOL}d", v18, 8u);
  }

  v19 = sub_10008B1D0();
  if (v19)
  {
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v21 = [objc_opt_self() mainBundle];
  swift__string._object = 0x80000001005795D0;
  v22._object = 0x80000001005795B0;
  swift__string._countAndFlagsBits = 0xD00000000000002BLL;
  v22._countAndFlagsBits = 0xD000000000000019;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, swift__string);

  if (v10)
  {
    sub_10000905C(0, &unk_1006BAA80);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80);
    preferredElementSize = v9;
  }

  sub_10000905C(0, &unk_1006AF720);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v32, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v33, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v29).super.super.isa;
  [a1 setMenu:isa];

  [a1 setPreferredMenuElementOrder:2];
  [a1 setHidden:v12 ^ 1u];
}

uint64_t sub_10008E13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009E38(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

uint64_t sub_10008E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009E38(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10008E704(void *a1)
{
  v3 = *(*(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMActionButtonController: areAccountsSignedIn: %{BOOL}d", v7, 8u);
  }

  v8 = sub_10008AA3C(&unk_100623DF8, sub_10008FCA0, sub_10008FCA4, sub_10008FCA8);
  v9 = v8;
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11 != 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMActionButtonController: hasActions: %{BOOL}d", v15, 8u);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMActionButtonController: Platform Action Button Visibility: %{BOOL}d", v18, 8u);
  }

  v19 = sub_10008B1D0();
  if (v19)
  {
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v21 = [objc_opt_self() mainBundle];
  swift__string._object = 0x80000001005795D0;
  v22._object = 0x80000001005795B0;
  swift__string._countAndFlagsBits = 0xD00000000000002BLL;
  v22._countAndFlagsBits = 0xD000000000000019;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, swift__string);

  if (v10)
  {
    sub_10000905C(0, &unk_1006BAA80);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80);
    preferredElementSize = v9;
  }

  sub_10000905C(0, &unk_1006AF720);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v32, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v33, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v29).super.super.isa;
  [a1 setMenu:isa];

  [a1 setPreferredMenuElementOrder:2];
  [a1 setHidden:v12 ^ 1u];
}

uint64_t sub_10008EC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B8DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_10008EE2C(void *a1)
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

unint64_t sub_10008EE84()
{
  result = qword_1006AF780;
  if (!qword_1006AF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF780);
  }

  return result;
}

uint64_t sub_10008EF58(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
    sub_100012DF0(v10, &unk_1006AF760);
  }

  return a2();
}

void sub_10008F0AC(char a1)
{
  v3 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = type metadata accessor for FMFPreferences();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v51 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = v48 - v11;
  __chkstk_darwin(v10);
  v53 = v48 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100005B14(v13, qword_1006D4630);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48[1] = v14;
    v19 = v18;
    v20 = swift_slowAlloc();
    v49 = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v50 = v6;
    v48[0] = v22;
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v21 = v15;
    *(v19 + 12) = 2080;
    v54 = 0;
    v55 = 0xE000000000000000;
    v56 = v22;
    v23 = v5;
    if (a1)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    v25 = a1;
    if (a1)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = v15;
    v28._countAndFlagsBits = v24;
    v5 = v23;
    v28._object = v26;
    String.append(_:)(v28);

    v29 = sub_100005B4C(v54, v55, &v56);
    a1 = v25;

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMMeViewController<%@>: friends settings, allow friend request state changed: %s", v19, 0x16u);
    sub_100012DF0(v21, &unk_1006AF760);
    v7 = v49;

    sub_100006060(v48[0]);
    v6 = v50;
  }

  *(v15 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride) = a1 & 1;
  v30 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;

  dispatch thunk of FMFManager.preferences.getter();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(v5, &qword_1006AF750);
    v31 = v15;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "FMMeViewController<%@>: prefs is nil for some reason", v34, 0xCu);
      sub_100012DF0(v35, &unk_1006AF760);
    }
  }

  else
  {
    v37 = *(v7 + 32);
    v38 = v53;
    v50 = v15;
    v39 = v6;
    v37(v53, v5, v6);
    v40 = a1 & 1;
    v49 = v30;
    v41 = *(v7 + 16);
    v41(v51, v38, v39);
    v42 = v52;
    FMFPreferences.init(prefs:allowFriendRequests:)();
    v43 = *(v7 + 8);
    v43(v38, v39);
    v37(v38, v42, v39);
    v41(v42, v38, v39);
    type metadata accessor for FMFUpdatePrefsAction();
    swift_allocObject();
    v44 = FMFUpdatePrefsAction.init(prefs:)();
    v45 = v50;
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v40;
    v47 = v45;

    sub_1000FB600(v44, sub_10008F690, v46);

    v43(v38, v39);
  }
}

void sub_10008F69C()
{
  v1 = sub_10007EBC0(&qword_1006AF748);
  __chkstk_darwin(v1 - 8);
  v3 = &v22[-1] - v2;
  My = type metadata accessor for Feature.FindMy();
  v22[3] = My;
  v22[4] = sub_100009E38(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v5 = sub_100008FC0(v22);
  (*(*(My - 8) + 104))(v5, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v22);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMMeViewController<%@>: update Stewie location confirmed", v10, 0xCu);
      sub_100012DF0(v11, &unk_1006AF760);
    }

    dispatch thunk of FMFManager.myInfo.getter();

    v13 = type metadata accessor for FMFMyInfo();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v3, 1, v13) == 1)
    {
      sub_100012DF0(v3, &qword_1006AF748);
      v15 = v7;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "FMMeViewController<%@>: couldn't update Stewie: No deviceId", v18, 0xCu);
        sub_100012DF0(v19, &unk_1006AF760);
      }
    }

    else
    {
      FMFMyInfo.deviceId.getter();
      (*(v14 + 8))(v3, v13);

      sub_100170934(v7);
    }
  }
}

uint64_t sub_10008FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_10008FBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10008FCAC()
{
  v0 = [objc_opt_self() systemBlueColor];
  xmmword_1006AF9C0 = xmmword_1005525D0;
  *algn_1006AF9D0 = xmmword_1005525E0;
  *&xmmword_1006AF9E0 = 0x4041000000000000;
  *(&xmmword_1006AF9E0 + 1) = 2;
  qword_1006AF9F0 = v0;
  *algn_1006AF9F8 = xmmword_1005525F0;
  __asm { FMOV            V0.2D, #4.0 }

  *(&xmmword_1006AFA00 + 8) = result;
  return result;
}

uint64_t sub_10008FDD8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAnnotation:", a1);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  if (objc_msgSendSuper2(&v7, "annotation"))
  {
    type metadata accessor for FMClusterAnnotation();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      __chkstk_darwin(v4);
      sub_10007EBC0(&unk_1006BEF10);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_10008FF20(v6);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10008FF20(unint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  LOBYTE(v6) = static os_log_type_t.default.getter();
  v7 = a1 >> 62;
  if (!os_log_type_enabled(v5, LOBYTE(v6)))
  {

    goto LABEL_8;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  if (!v7)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  while (1)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v5, LOBYTE(v6), "*x* FMClusteredAnnotation: update annotations %ld ", v8, 0xCu);

LABEL_8:
    if (v7)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = &v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style];
    v11 = 0.0;
    if (v8 >= 2)
    {
      v11 = *(v10 + 10);
    }

    v12 = *v10;
    v13 = *(v10 + 2);
    v87 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
    [v87 frame];
    v15 = v14;
    v16 = *(v10 + 7);
    v17 = *(v10 + 8);
    v18 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v18 setHidden:1];
    v86 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage];
    [v86 setHidden:1];
    v83 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage];
    [*&v83 setHidden:1];
    v82 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount];
    [v82 setHidden:1];
    v6 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText];
    [*&v6 setHidden:1];
    if (v7)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_22;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(a1 + 32);
      goto LABEL_19;
    }

    __break(1u);
LABEL_67:
    __break(1u);
  }

  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
  v21 = v20;
  v22 = *&v20[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
  v5 = *&v20[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
  sub_10009186C(v22, v5);

  if (v5 < 4 || (v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden] & 1) != 0)
  {
    sub_100091880(v22, v5);
LABEL_22:
    v22 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon];
    v5 = 1;
    [v22 setHidden:1];
    goto LABEL_23;
  }

  while (1)
  {
    v81 = v6;
    v71 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon;
    if (*&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon])
    {
      sub_100091880(v22, v5);
    }

    else
    {
      v85 = String._bridgeToObjectiveC()();
      v72 = [objc_opt_self() systemImageNamed:v85];

      sub_100091880(v22, v5);
      v73 = v72;
      if (v72)
      {
        v74 = [objc_opt_self() whiteColor];
        v75 = sub_1003DE2DC(v74);

        v73 = [(UIImage *)v75 CGImage];
      }

      v76 = *&v2[v71];
      *&v2[v71] = v73;
    }

    v22 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon];
    [v22 setContents:*&v2[v71]];
    [v22 p:0 ivar:?lyt[403]];
    v5 = 0;
    v6 = v81;
LABEL_23:
    v23 = (v12 - v13) * 0.5;
    v15 = v23 + v15;
    v24 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer];
    [v24 p:v5 ivar:?lyt[403]];
    if (v8 < 1)
    {
      break;
    }

    v84 = v22;
    v7 = a1 & 0xC000000000000001;
    v80 = *&v6;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v25 = *(a1 + 32);
    }

    v26 = v25;
    v11 = v23 + v11;
    v6 = COERCE_DOUBLE((*((swift_isaMask & *v25) + 0x188))());

    v5 = [*&v6 CGImage];
    [v18 setContents:v5];

    [v18 setFrame:{v11, v15, v13, v13}];
    [v18 p:0 ivar:?lyt[403]];
    if (v8 < 2)
    {
LABEL_39:
      v18 = 0;
      goto LABEL_40;
    }

    if (v7)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v27 = &selRef__enter3DMode;
    }

    else
    {
      v27 = &selRef__enter3DMode;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_71:
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_35;
      }

      v28 = *(a1 + 40);
    }

    v29 = (*((swift_isaMask & *v28) + 0x188))();

    v5 = [v29 CGImage];
    v6 = *&v86;
    [v86 setContents:v5];

    [v86 v27[311]];
    [v86 p:0 ivar:?lyt[403]];
    if (v8 == 2)
    {
      goto LABEL_39;
    }

    v86 = (v8 - 2);
    if (v7)
    {
      goto LABEL_71;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
    }

    v30 = *(a1 + 48);
LABEL_35:
    v31 = v30;
    v32 = (*((swift_isaMask & *v30) + 0x188))();

    v5 = [v32 CGImage];
    v6 = v83;
    [*&v83 setContents:v5];

    v11 = v13 + v13 + v11;
    [*&v83 v27[311]];
    [*&v83 p:0 ivar:?lyt[403]];
    if (v8 < 4)
    {
      goto LABEL_39;
    }

    v33 = v27;
    v34 = *(v10 + 3);
    v18 = 1;
    [*&v83 p:1 ivar:?lyt[403]];
    [v87 frame];
    v83 = (v12 - v34) * 0.5;
    [v82 v33[311]];
    v78 = v34;
    v79 = v11;
    v36 = *(v10 + 4);
    v37 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v36, v34, v34 * 0.5}];
    v38 = [v37 CGPath];

    [v82 setPath:v38];
    v39 = [v2 traitCollection];
    v40 = [v39 userInterfaceStyle];

    v41 = objc_opt_self();
    v42 = &selRef_systemGray4Color;
    if (v40 != 2)
    {
      v42 = &selRef_systemGray3Color;
    }

    v43 = [v41 *v42];
    v44 = [v43 CGColor];

    [v82 setFillColor:v44];
    [v82 p:0 ivar:?lyt[403]];
    v45 = p_ivar_lyt[403];
    p_ivar_lyt = v80;
    [v80 v45];
    *&transform.a = 43;
    transform.b = -1.7573882e159;
    sub_100091894();
    v46 = BinaryInteger.formatted()();
    String.append(_:)(v46);

    v5 = 0xE100000000000000;
    v6 = COERCE_DOUBLE(String._bridgeToObjectiveC()());

    [v80 setString:*&v6];

    [v80 preferredFrameSize];
    v48 = v47;
    v50 = v49;
    v11 = v79 + (v36 - v47) * 0.5;
    [v87 frame];
    [v80 setFrame:{v11, (v78 - v50) * 0.5 + v83 + v51 + 1.0, v48, v50}];
LABEL_40:
    v22 = v84;
    v52 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_41;
    }

LABEL_55:
    __break(1u);
  }

  v18 = 0;
  v52 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    goto LABEL_55;
  }

LABEL_41:
  v53 = v52 & ~(v52 >> 63);
  if (*(v10 + 5) < v53)
  {
    v53 = *(v10 + 5);
  }

  v54 = v13 * v53 + *(v10 + 10) + *(v10 + 10);
  v55 = v54 + -4.0;
  v56 = v54 + 0.0;
  if (v8 <= 1)
  {
    v56 = 0.0;
  }

  if (v18)
  {
    v57 = v55;
  }

  else
  {
    v57 = v56;
  }

  v58 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations;
  v59 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations];
  if (v59 >> 62)
  {
    v77 = v57;
    v60 = _CocoaArrayWrapper.endIndex.getter();
    v57 = v77;
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v12 + v57;
  if (v60 != v8)
  {
    v62 = sub_10043C384(v12 * 0.5, v12 * 0.125, v57);
    v63 = [v62 CGPath];
    [v87 setPath:v63];

    [v87 setFrame:{0.0, 0.0, v61, v12}];
    transform.a = 1.0;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.d = 1.0;
    transform.tx = 0.0;
    transform.ty = 0.0;
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = v61;
    v89.size.height = v12;
    v64 = CGPathCreateWithEllipseInRect(v89, &transform);
    [v87 setShadowPath:v64];
    v65 = [v2 layer];
    [v65 setFrame:{0.0, 0.0, v61, v12 + v12 + 45.0}];
  }

  [v24 setFrame:{v61 * 0.5 - v16 * 0.5, v17 + v15 + v16 + v16, v16, v16}];
  [v24 frame];
  [v22 setFrame:{v66 + *(v10 + 9), v67 + *(v10 + 9), v68 - (*(v10 + 9) + *(v10 + 9)), v69 - (*(v10 + 9) + *(v10 + 9))}];
  sub_1000912E8();
  *&v2[v58] = a1;
}

id sub_100090B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style;
  if (qword_1006AEA20 != -1)
  {
    swift_once();
  }

  v23[2] = xmmword_1006AF9E0;
  v23[3] = *&qword_1006AF9F0;
  v23[4] = xmmword_1006AFA00;
  v24 = qword_1006AFA10;
  v23[0] = xmmword_1006AF9C0;
  v23[1] = *algn_1006AF9D0;
  memmove(&v3[v7], &xmmword_1006AF9C0, 0x58uLL);
  v8 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer;
  v9 = objc_allocWithZone(CAShapeLayer);
  sub_100091B08(v23, v22);
  *&v3[v8] = [v9 init];
  v10 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage;
  *&v3[v10] = [objc_allocWithZone(CALayer) init];
  v11 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage;
  *&v3[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage;
  *&v3[v12] = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount;
  *&v3[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText;
  *&v3[v14] = [objc_allocWithZone(CATextLayer) init];
  v15 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer;
  *&v3[v15] = [objc_allocWithZone(CAShapeLayer) init];
  v16 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon;
  *&v3[v16] = [objc_allocWithZone(CALayer) init];
  *&v3[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden] = 0;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v21.receiver = v3;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, "initWithAnnotation:reuseIdentifier:", a1, v17);

  v19 = v18;
  sub_100090DC0();
  sub_1000912E8();

  swift_unknownObjectRelease();
  return v19;
}

void sub_100090DC0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
  [v2 setAnchorPoint:{0.5, 1.0}];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText];
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v6 = UIFontWeightTrait;
  v7 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v8 = sub_10002ACDC(v7);

  [v3 setFont:v8];

  [v3 setFontSize:15.0];
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [v3 setContentsScale:v11];
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  [v3 setForegroundColor:v14];
  v15 = [v12 blackColor];
  v16 = [v15 CGColor];

  [v2 setShadowColor:v16];
  [v2 setShadowOffset:{0.0, 0.0}];
  LODWORD(v17) = 1045220557;
  [v2 setShadowOpacity:v17];
  v18 = &v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style];
  [v2 setShadowRadius:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style + 8]];
  v19 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, *(v18 + 7), *(v18 + 7)}];
  v20 = *&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer];
  v21 = [v19 CGPath];
  [v20 setPath:v21];

  v22 = [*(v18 + 6) CGColor];
  [v20 setFillColor:v22];

  v23 = *&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon];
  [v23 setContentsGravity:kCAGravityResizeAspectFill];
  v24 = [v1 layer];
  [v24 addSublayer:v20];

  v25 = [v1 layer];
  [v25 addSublayer:v23];

  v26 = [v1 layer];
  [v26 addSublayer:v2];

  v27 = [v1 layer];
  [v27 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage]];

  v28 = [v1 layer];
  [v28 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage]];

  v29 = [v1 layer];
  [v29 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage]];

  v30 = [v1 layer];
  [v30 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount]];

  v31 = [v1 layer];
  [v31 addSublayer:v3];

  v32 = [v1 layer];
  [v32 setAnchorPoint:{0.5, 0.5}];

  LODWORD(v33) = 1148846080;
  [v1 setDisplayPriority:v33];
}

void sub_1000912E8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    v3 = [objc_opt_self() systemGray3Color];
    v4 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
    v7 = [v3 CGColor];
    [v4 setFillColor:?];
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setFillColor:v7];
  }
}

id sub_1000914AC()
{
  ObjectType = swift_getObjectType();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "prepareForDisplay");
  v5.receiver = v0;
  v5.super_class = ObjectType;
  result = objc_msgSendSuper2(&v5, "annotation");
  if (result)
  {
    type metadata accessor for FMClusterAnnotation();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      __chkstk_darwin(v3);
      sub_10007EBC0(&unk_1006BEF10);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_10008FF20(v4);
      swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

__n128 sub_10009179C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000917C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100091808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009186C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_100091880(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_100091894()
{
  result = qword_1006B6BE0;
  if (!qword_1006B6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6BE0);
  }

  return result;
}

void sub_100091904()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style;
  if (qword_1006AEA20 != -1)
  {
    swift_once();
  }

  v12[3] = *&qword_1006AF9F0;
  v12[4] = xmmword_1006AFA00;
  v13 = qword_1006AFA10;
  v12[0] = xmmword_1006AF9C0;
  v12[1] = *algn_1006AF9D0;
  v12[2] = xmmword_1006AF9E0;
  memmove((v0 + v1), &xmmword_1006AF9C0, 0x58uLL);
  v2 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer;
  v3 = objc_allocWithZone(CAShapeLayer);
  sub_100091B08(v12, v11);
  *(v0 + v2) = [v3 init];
  v4 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage;
  *(v0 + v5) = [objc_allocWithZone(CALayer) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage;
  *(v0 + v6) = [objc_allocWithZone(CALayer) init];
  v7 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount;
  *(v0 + v7) = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText;
  *(v0 + v8) = [objc_allocWithZone(CATextLayer) init];
  v9 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer;
  *(v0 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon;
  *(v0 + v10) = [objc_allocWithZone(CALayer) init];
  *(v0 + OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t UITabBarItem.largeContentTitle.getter()
{
  v1 = [v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id UITabBarItem.largeContentImage.getter()
{
  v1 = [v0 image];

  return v1;
}

NSString *sub_100091D04()
{
  v0 = objc_opt_self();
  v4 = UIFontTextStyleBody;
  v1 = [v0 labelColor];
  v2 = [v1 colorWithAlphaComponent:0.5];

  qword_1006D3C40 = v4;
  qword_1006D3C48 = v4;
  qword_1006D3C50 = v2;
  *&qword_1006D3C58 = xmmword_1005526A0;
  unk_1006D3C68 = xmmword_1005526B0;
  unk_1006D3C78 = xmmword_1005526C0;

  return v4;
}

void sub_100091DD0()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  if (qword_1006AEA28 != -1)
  {
    swift_once();
  }

  v2 = qword_1006D3C40;
  v3 = *&qword_1006D3C60;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField];
  v5 = [v4 superview];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = [v6 preferredFontForTextStyle:v2];
    [v4 setFont:v7];

    [v4 setAdjustsFontForContentSizeCategory:1];
    [v4 setAutocorrectionType:2];
    [v4 setTextContentType:UITextContentTypeTelephoneNumber];
    [v4 setKeyboardType:5];
    [v4 setAutocorrectionType:1];
    [v4 setTextAlignment:4];
    [v4 setClearButtonMode:1];
    [v4 setDelegate:v0];
    [v4 addTarget:v0 action:"textFieldDidChangeWithSender:" forControlEvents:0x20000];
    v8 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v8];

    v9 = [v0 contentView];
    [v9 addSubview:v4];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1005521F0;
    v11 = [v4 centerYAnchor];
    v12 = [v0 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v4 leadingAnchor];
    v15 = [v0 leadingAnchor];
    [v0 layoutMargins];
    v17 = [v14 constraintEqualToAnchor:v15 constant:v16];

    *(v10 + 40) = v17;
    v18 = [v4 trailingAnchor];
    v19 = [v0 trailingAnchor];
    [v0 layoutMargins];
    v21 = [v18 constraintEqualToAnchor:v19 constant:-v20];

    *(v10 + 48) = v21;
    v22 = [v4 heightAnchor];
    v23 = *&qword_1006D3C58;
    v24 = [v6 preferredFontForTextStyle:v2];
    [v24 lineHeight];
    v26 = v25;

    v27 = [v22 constraintEqualToConstant:v3 + v3 + v23 * v26 - (v3 + v3)];
    *(v10 + 56) = v27;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 activateConstraints:isa];
    v5 = isa;
  }

  sub_10009229C();
}

void sub_10009229C()
{
  if (qword_1006AEA28 != -1)
  {
    swift_once();
  }

  v2 = qword_1006D3C48;
  v1 = qword_1006D3C50;
  v3 = *&qword_1006D3C60;
  v4 = unk_1006D3C68;
  v5 = *&qword_1006D3C70;
  v6 = unk_1006D3C78;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel];
  v8 = [v7 superview];
  if (!v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 preferredFontForTextStyle:v2];
    [v7 setFont:v10];

    [v7 setNumberOfLines:0];
    [v7 setTextColor:v1];
    [v7 setTextAlignment:4];
    [v7 setAdjustsFontForContentSizeCategory:1];
    [v0 addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v0[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled])
    {
      v5 = v5 + v6;
    }

    v11 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1005521F0;
    v13 = [v7 centerYAnchor];
    v14 = [v0 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v12 + 32) = v15;
    v16 = [v7 leadingAnchor];
    v17 = [v0 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:v5];

    *(v12 + 40) = v18;
    v19 = [v7 trailingAnchor];
    v20 = [v0 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-v4];

    *(v12 + 48) = v21;
    v22 = [v7 heightAnchor];
    v23 = *&qword_1006D3C58;
    v24 = [v9 preferredFontForTextStyle:qword_1006D3C40];
    [v24 lineHeight];
    v26 = v25;

    v27 = [v22 constraintEqualToConstant:v3 + v3 + v23 * v26 - (v3 + v3)];
    *(v12 + 56) = v27;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 activateConstraints:isa];
    v8 = isa;
  }
}

id sub_100092668()
{
  if (*(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled) == 1)
  {
    v1 = [*(*(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textView) + OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView) text];
    if (v1)
    {
LABEL_3:
      v2 = v1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = String.characterCount.getter();

      v4 = v3 > 0;
      goto LABEL_6;
    }
  }

  else
  {
    v1 = [*(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField) text];
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel);

  return [v5 setHidden:v4];
}

uint64_t sub_1000928A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();

  v16 = sub_100123328(a4, a5, v15);
  v18 = v17;

  (*(v13 + 8))(v15, v12);
  v19 = v6 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v22 = (*(v20 + 16))(a1, a2, a3, v16, v18, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
  }

  sub_100092668();
  return v22 & 1;
}

id sub_100092CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField;
  *&v3[v6] = [objc_allocWithZone(UITextField) init];
  v7 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  v8 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textFieldIsEnabled] = 0;
  v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled] = 0;
  v9 = &v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_initialPhoneNumber];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderText];
  *v10 = 0;
  v10[1] = 0;
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for FMPhoneNumberTableViewCell();
  v12 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v11);

  return v12;
}

id sub_100092E54(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField;
  *&v1[v3] = [objc_allocWithZone(UITextField) init];
  v4 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  v5 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textFieldIsEnabled] = 0;
  v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled] = 0;
  v6 = &v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_initialPhoneNumber];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderText];
  v8 = type metadata accessor for FMPhoneNumberTableViewCell();
  *v7 = 0;
  v7[1] = 0;
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_100092FAC()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewDelegate);
}

id sub_100093044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000931A4()
{
  v1 = type metadata accessor for FMIPFeatures();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v106 - v6;
  v8 = sub_10007EBC0(&unk_1006BBCE0);
  v9 = __chkstk_darwin(v8 - 8);
  v113 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v115 = &v106 - v12;
  v13 = __chkstk_darwin(v11);
  v114 = &v106 - v14;
  v15 = __chkstk_darwin(v13);
  v121 = &v106 - v16;
  __chkstk_darwin(v15);
  v18 = &v106 - v17;
  sub_100264BC8();
  v19 = [v0 headerView];
  v119 = objc_opt_self();
  v20 = [v119 mainBundle];
  v124._object = 0x800000010057A100;
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v21._object = 0x800000010057A0E0;
  v124._countAndFlagsBits = 0xD00000000000002CLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v124);

  v23 = String._bridgeToObjectiveC()();

  [v19 setTitle:v23];

  v24 = v0;
  v25 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  v120 = v25;
  sub_100007204(v0 + v25, v18, &unk_1006BBCE0);
  v26 = type metadata accessor for FMIPDevice();
  v27 = *(v26 - 8);
  v117 = *(v27 + 48);
  if ((v117)(v18, 1, v26) == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  FMIPDevice.features.getter();
  v116 = *(v27 + 8);
  v116(v18, v26);
  static FMIPFeatures.isKeypadEnabled.getter();
  v28 = sub_1000971D0(&qword_1006C1D50, &type metadata accessor for FMIPFeatures);
  LODWORD(v118) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v31 = *(v2 + 8);
  v30 = v2 + 8;
  v29 = v31;
  v31(v5, v1);
  v31(v7, v1);
  if (v24[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4])
  {
    return;
  }

  v32 = *&v24[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
  if (v32 == 4)
  {
    v47 = v24;
    v54 = 0xD000000000000012;
    v67 = "ERASE_BUTTON_TITLE";
    v68 = 0xD000000000000026;
    v117 = &selRef_setDetailText_;
    v118 = "g DEVICE_ENTER_MESSAGE_TITLE";
    v69 = &selRef_headerView;
    v46 = v120;
LABEL_19:
    v81 = [v47 *v69];
    v82 = v121;
    sub_100007204(&v47[v46], v121, &unk_1006BBCE0);
    v83 = sub_10022F104(v68, v67 | 0x8000000000000000, v82);
    v85 = v84;
    v87 = v86;
    v89 = v88;

    sub_10022E0A8(v83, v85, v87, v89, 0, 0);

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v82, &unk_1006BBCE0);
    v90 = String._bridgeToObjectiveC()();
    v55 = v47;

    [v81 *v117];

    goto LABEL_20;
  }

  if (v32 == 2)
  {
    v109 = v28;
    v110 = v29;
    v111 = v5;
    v112 = v30;
    v107 = v1;
    v108 = v7;
    v56 = [v24 headerView];
    v57 = v120;
    v58 = v121;
    sub_100007204(&v24[v120], v121, &unk_1006BBCE0);
    v59 = sub_10022F104(0xD000000000000025, 0x800000010057A1C0, v58);
    v61 = v60;
    v114 = v62;
    v37 = v24;
    v64 = v63;

    v114 = sub_10022E0A8(v59, v61, v114, v64, 0, 0);

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v58, &unk_1006BBCE0);
    v65 = String._bridgeToObjectiveC()();

    [v56 setDetailText:v65];

    v44 = "FMLocalizedString ";
    if (v118)
    {
      goto LABEL_11;
    }

    v118 = "FMLocalizedString ";
    v70 = v115;
    sub_100007204(&v37[v57], v115, &unk_1006BBCE0);
    if ((v117)(v70, 1, v26) != 1)
    {
      v71 = v37;
      v72 = v108;
      FMIPDevice.features.getter();
      v73 = v116;
      v116(v70, v26);
      v74 = v111;
      static FMIPFeatures.isEraseAfterLockSupported.getter();
      v75 = v107;
      v76 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v77 = v74;
      v78 = v110;
      v110(v77, v75);
      v78(v72, v75);
      if (v76)
      {
        v55 = v71;
        v54 = 0xD000000000000011;
        goto LABEL_20;
      }

      v46 = v120;
      v79 = v113;
      sub_100007204(&v71[v120], v113, &unk_1006BBCE0);
      if ((v117)(v79, 1, v26) != 1)
      {
        v47 = v71;
        v80 = FMIPDevice.isConsideredAccessory.getter();
        v73(v79, v26);
        if (v80)
        {
          goto LABEL_9;
        }

LABEL_18:
        v67 = "SAGE_LOST_DESCRIPTION";
        v68 = 0xD00000000000001DLL;
        v117 = &selRef_setCaptionText_;
        v69 = &selRef_buttonTray;
        v54 = 0xD000000000000011;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v32 != 1)
  {
    return;
  }

  v109 = v28;
  v110 = v29;
  v111 = v5;
  v112 = v30;
  v107 = v1;
  v108 = v7;
  v33 = [v24 headerView];
  v34 = v120;
  v35 = v121;
  sub_100007204(&v24[v120], v121, &unk_1006BBCE0);
  v36 = sub_10022F104(0xD000000000000025, 0x800000010057A230, v35);
  v37 = v24;
  v39 = v38;
  v115 = v40;
  v42 = v41;

  v115 = sub_10022E0A8(v36, v39, v115, v42, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v35, &unk_1006BBCE0);
  v43 = String._bridgeToObjectiveC()();

  [v33 setDetailText:v43];

  v44 = "DEVICE_ENTER_MESSAGE_FOOTNOTE";
  if ((v118 & 1) == 0)
  {
    v118 = "DEVICE_ENTER_MESSAGE_FOOTNOTE";
    v45 = v114;
    sub_100007204(&v37[v34], v114, &unk_1006BBCE0);
    if ((v117)(v45, 1, v26) != 1)
    {
      v46 = v34;
      v47 = v37;
      v48 = v108;
      FMIPDevice.features.getter();
      v116(v45, v26);
      v49 = v111;
      static FMIPFeatures.isEraseAfterLockSupported.getter();
      v50 = v107;
      v51 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v52 = v49;
      v53 = v110;
      v110(v52, v50);
      v53(v48, v50);
      if (v51)
      {
LABEL_9:
        v54 = 0xD000000000000011;
        v55 = v47;
LABEL_20:
        v44 = v118;
        v66 = v119;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_11:
  v54 = 0xD000000000000011;
  v66 = v119;
  v55 = v37;
LABEL_21:
  v91 = [v55 buttonTray];
  [v91 removeAllButtons];

  v92 = [objc_opt_self() boldButton];
  v122 = 0;
  v123 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v122 = 0xD000000000000012;
  v123 = 0x800000010057A180;
  v93._object = (v44 | 0x8000000000000000);
  v93._countAndFlagsBits = v54;
  String.append(_:)(v93);
  v94 = v122;
  v95 = v123;
  v96 = [v66 mainBundle];
  v125._object = v95;
  v97._object = (v44 | 0x8000000000000000);
  v97._countAndFlagsBits = v54;
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  v125._countAndFlagsBits = v94;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v125);

  v99 = String._bridgeToObjectiveC()();

  [v92 setTitle:v99 forState:0];

  v100 = v92;
  v101 = String._bridgeToObjectiveC()();
  [v100 setAccessibilityIdentifier:v101];

  sub_10000905C(0, &qword_1006AF730);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v100 addAction:v102 forControlEvents:64];

  v103 = *&v55[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton];
  *&v55[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton] = v100;
  v104 = v100;

  v105 = [v55 buttonTray];
  [v105 addButton:v104];
}

void sub_100093E18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000948F0();
  }
}

uint64_t sub_100093F1C()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  sub_100007204(v0 + v4, v3, &unk_1006BBCE0);
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = FMIPDevice.maxMessageLength.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }

  return result;
}

id sub_100094060(void *a1)
{
  v3 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_100264DE8(a1);
  type metadata accessor for FMEditableMessageTableViewCell();
  v7 = swift_dynamicCastClass();
  if (!v7 || (*(v1 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4) & 1) != 0)
  {
    return v6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode);
  switch(v8)
  {
    case 4:
      v36 = *(v7 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
      v37 = objc_opt_self();
      v38 = v6;
      v22 = v36;
      v39 = [v37 mainBundle];
      v48._object = 0x800000010057A070;
      v40._object = 0x800000010057A040;
      v48._countAndFlagsBits = 0xD000000000000037;
      v40._countAndFlagsBits = 0xD000000000000025;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v48);

      *&v22[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText] = v42;

      v43 = *&v22[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel];
      v44 = String._bridgeToObjectiveC()();

      [v43 setText:v44];

      sub_100155E6C();
      goto LABEL_9;
    case 2:
      v19 = *(v7 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
      v20 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
      swift_beginAccess();
      sub_100007204(v1 + v20, v5, &unk_1006BBCE0);
      v21 = v6;
      v22 = v19;
      v23 = sub_10022F104(0xD000000000000025, 0x800000010057A0B0, v5);
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = sub_10022E0A8(v23, v25, v27, v29, 0, 0);
      v32 = v31;

      swift_bridgeObjectRelease_n();
      sub_100012DF0(v5, &unk_1006BBCE0);
      v33 = &v22[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText];
      *v33 = v30;
      v33[1] = v32;

      v34 = *&v22[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel];
      v35 = String._bridgeToObjectiveC()();

      [v34 setText:v35];

      sub_100155E6C();
LABEL_9:

      return v6;
    case 1:
      v9 = *(v7 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
      v10 = objc_opt_self();
      v11 = v6;
      v12 = v9;
      v13 = [v10 mainBundle];
      v47._object = 0x800000010057A070;
      v14._object = 0x800000010057A040;
      v47._countAndFlagsBits = 0xD000000000000037;
      v14._countAndFlagsBits = 0xD000000000000025;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v47);

      *&v12[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText] = v16;

      v17 = *&v12[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel];
      v18 = String._bridgeToObjectiveC()();

      [v17 setText:v18];

      sub_100155E6C();
      break;
  }

  return v6;
}

void sub_100094620(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v5 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &object - v6;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v27._object = 0x800000010057A3C0;
  v10._object = 0x800000010057A390;
  v27._countAndFlagsBits = 0xD000000000000039;
  v10._countAndFlagsBits = 0xD000000000000027;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v27);
  object = v12._object;
  countAndFlagsBits = v12._countAndFlagsBits;

  v13 = [v8 mainBundle];
  v14._countAndFlagsBits = 0xD000000000000015;
  v28._object = 0x800000010057A420;
  v14._object = 0x800000010057A400;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000027;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v28);

  v17 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  v18 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  sub_100007204(v3 + v18, v7, &unk_1006BBCE0);
  v19 = type metadata accessor for FMIPDevice();
  if ((*(*(v19 - 8) + 48))(v7, 1, v19) == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for FMIPLockAction();
    swift_allocObject();

    v20 = FMIPLockAction.init(device:message:passcode:)();
    [v17 setPresentingViewController:v3];

    v21 = v17;
    dispatch thunk of FMIPDeviceAction.authenticationContext.setter();

    v22 = object;
    v23 = countAndFlagsBits;
    *a2 = v20;
    *(a2 + 8) = v23;
    *(a2 + 16) = v22;
    *(a2 + 24) = v16;
  }
}

void sub_1000948F0()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  v125 = v2;
  v126 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v122 = (v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10007EBC0(&unk_1006BBCE0);
  v6 = __chkstk_darwin(v5 - 8);
  v121 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v123 = v115 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v115 - v11;
  __chkstk_darwin(v10);
  v14 = v115 - v13;
  v15 = type metadata accessor for FMLostModeTrackable();
  v16 = __chkstk_darwin(v15);
  v18 = v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v115 - v20;
  __chkstk_darwin(v19);
  v23 = v115 - v22;
  v24 = sub_1002653B0();
  v25 = v24;
  v124 = v12;
  if (v24)
  {
    v26 = [*&v24[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView] text];
    if (v26)
    {
      v27 = v26;
      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v25 = v29;
    }

    else
    {

      v127 = 0;
      v25 = 0;
    }
  }

  else
  {
    v127 = 0;
  }

  v30 = &v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
  v31 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber + 8];
  if (v31)
  {
    if ((v31 & 0x2000000000000000) != 0 ? HIBYTE(v31) & 0xF : *v30 & 0xFFFFFFFFFFFFLL)
    {
      if (!v25)
      {
        goto LABEL_16;
      }

      v33 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v33 = v127 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {
LABEL_16:
        if ((v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4] & 1) == 0 && *&v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode] == 2)
        {
          v120 = v25;
          v25 = sub_1002653B0();

          if (v25)
          {
            v34 = *(v25 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText + 8);
            v127 = *(v25 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText);
            v120 = v34;

            v25 = v120;
          }

          else
          {
            v127 = 0;
          }
        }
      }
    }
  }

  if (v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4])
  {
    goto LABEL_21;
  }

  v39 = *&v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
  if (v39 == 4)
  {
    v120 = v25;
    v61 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
    swift_beginAccess();
    v62 = &v1[v61];
    v23 = v124;
    sub_100007204(v62, v124, &unk_1006BBCE0);
    v63 = v126;
    v64 = v125;
    if ((*(v126 + 48))(v23, 1) != 1)
    {
      v65 = v30[1];
      v117 = *v30;
      v115[0] = v65;
      v66 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode + 8];
      v116 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
      v115[1] = v66;
      v67 = objc_opt_self();

      v68 = [v67 mainBundle];
      v138._object = 0x800000010057A290;
      v69._countAndFlagsBits = 0xD000000000000028;
      v69._object = 0x800000010057A260;
      v138._countAndFlagsBits = 0xD00000000000003ALL;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      v118 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v138);

      v71 = [v67 mainBundle];
      v139._object = 0x800000010057A2F0;
      v72._object = 0x800000010057A2D0;
      v139._countAndFlagsBits = 0xD000000000000027;
      v72._countAndFlagsBits = 0xD000000000000015;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v139);
      countAndFlagsBits = v74._countAndFlagsBits;
      object = v74._object;

      v75 = *(v63 + 16);
      v76 = v122;
      v77 = v124;
      v75(v122, v124, v64);
      type metadata accessor for FMIPEraseAction();
      swift_allocObject();

      v78 = FMIPEraseAction.init(device:message:phoneNumber:passcode:)();
      v79 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
      [v79 setPresentingViewController:v1];
      v127 = v79;
      dispatch thunk of FMIPDeviceAction.authenticationContext.setter();
      v75(v76, v77, v64);
      v41 = v78;
      v80 = v126;
      v81 = (*(v126 + 80) + 16) & ~*(v126 + 80);
      v82 = v4 + v81;
      v40 = v118._countAndFlagsBits;
      v83 = (v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      (*(v80 + 32))(v84 + v81, v76, v64);
      *(v84 + v83) = v1;
      v85 = v1;
      dispatch thunk of FMIPDeviceAction.trustedDeviceConfirmation.setter();

      (*(v80 + 8))(v124, v64);
      v44 = v64;
      v42 = v118._object;
      goto LABEL_35;
    }

LABEL_45:
    __break(1u);
LABEL_46:

    __break(1u);
    goto LABEL_47;
  }

  if (v39 == 2)
  {
    v120 = v25;
    v45 = v30[1];
    v122 = *v30;
    v124 = v45;
    v46 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode + 8];
    v121 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
    v123 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_mediator];
    v47 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
    swift_beginAccess();
    sub_100007204(&v1[v47], v14, &unk_1006BBCE0);
    v48 = v125;
    v49 = v126;
    if ((*(v126 + 48))(v14, 1, v125) != 1)
    {
      v50 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
      (*(v49 + 32))(v23, v14, v48);
      v51 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
      swift_beginAccess();
      sub_100007204(&v1[v51], &v23[v50], &qword_1006B07D0);
      swift_storeEnumTagMultiPayload();
      v52 = objc_allocWithZone(type metadata accessor for FMLostModeConfirmationViewController());
      sub_1000970F8(v23, v21);
      *&v52[qword_1006B8820] = 0;
      *&v52[qword_1006D4360] = 0;
      v53 = &v52[qword_1006D4358];
      v54 = v120;
      *v53 = v127;
      *(v53 + 1) = v54;
      v55 = v121;
      v56 = v124;
      *(v53 + 2) = v122;
      *(v53 + 3) = v56;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0;
      *(v53 + 6) = v55;
      *(v53 + 7) = v46;
      v53[64] = 1;
      sub_1000970F8(v21, v18);
      *&v52[qword_1006B3A80] = 0;
      sub_1000970F8(v18, &v52[qword_1006D3E00]);

      v57 = v123;

      v58 = sub_1003C3E60(v57);
      sub_10009715C(v21);
      sub_10009715C(v18);
      sub_10009715C(v23);
      v59 = [v1 navigationController];
      if (v59)
      {
        v60 = v59;
        [v59 pushViewController:v58 animated:1];
      }

      else
      {
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v39 != 1)
  {
LABEL_21:
    v35 = [v1 navigationController];
    if (v35)
    {
      v36 = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      v135 = sub_1000822F4;
      v136 = v37;
      aBlock = _NSConcreteStackBlock;
      v132 = 1107296256;
      v133 = sub_100004AE4;
      v134 = &unk_100624528;
      v38 = _Block_copy(&aBlock);

      [v36 dismissViewControllerAnimated:1 completion:v38];

      _Block_release(v38);

      return;
    }

    goto LABEL_29;
  }

  v120 = v25;
  sub_100094620(v127, &aBlock);
  v41 = aBlock;
  v40 = v132;
  v42 = v133;
  countAndFlagsBits = v134;
  object = v135;
  v44 = v125;
LABEL_35:
  v86 = qword_1006AEBE0;

  v87 = v123;
  if (v86 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  sub_100005B14(v88, qword_1006D4630);
  v23 = v1;

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v89, v90))
  {

    goto LABEL_42;
  }

  LODWORD(v117) = v90;
  v122 = v89;
  v124 = v41;
  v118._countAndFlagsBits = v40;
  v118._object = v42;
  v91 = swift_slowAlloc();
  v116 = swift_slowAlloc();
  v130 = v116;
  *v91 = 136315650;
  v125 = object;
  *(v91 + 4) = sub_100005B4C(countAndFlagsBits, object, &v130);
  *(v91 + 12) = 2080;
  v128 = 0;
  v129 = 0xE000000000000000;
  v92 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  sub_100007204(&v23[v92], v87, &unk_1006BBCE0);
  v93 = v126;
  v127 = *(v126 + 48);
  v94 = (v127)(v87, 1, v44);

  if (v94 == 1)
  {
    goto LABEL_46;
  }

  v95 = v44;
  v96 = FMIPDevice.name.getter();
  v98 = v97;
  v99 = v87;
  v100 = *(v93 + 8);
  v100(v99, v95);
  v101._countAndFlagsBits = v96;
  v101._object = v98;
  String.append(_:)(v101);

  v102 = sub_100005B4C(v128, v129, &v130);

  *(v91 + 14) = v102;
  *(v91 + 22) = 2080;
  v128 = 0;
  v129 = 0xE000000000000000;
  v103 = &v23[v92];
  v104 = v121;
  sub_100007204(v103, v121, &unk_1006BBCE0);
  v105 = (v127)(v104, 1, v95);

  if (v105 != 1)
  {
    FMIPDevice.identifier.getter();
    v100(v104, v95);
    sub_10047BEA4(10);

    v106 = static String._fromSubstring(_:)();
    v108 = v107;

    v109._countAndFlagsBits = v106;
    v109._object = v108;
    String.append(_:)(v109);

    v110 = sub_100005B4C(v128, v129, &v130);

    *(v91 + 24) = v110;
    v111 = v122;
    _os_log_impl(&_mh_execute_header, v122, v117, "FMDeviceMessageViewController: %s %s %s...", v91, 0x20u);
    swift_arrayDestroy();

    v42 = v118._object;
    v40 = v118._countAndFlagsBits;
    v41 = v124;
    object = v125;
LABEL_42:
    sub_100437A74(0);
    v112 = swift_allocObject();
    v113 = countAndFlagsBits;
    v112[2] = v23;
    v112[3] = v113;
    v112[4] = object;
    v112[5] = v41;
    v112[6] = v40;
    v112[7] = v42;
    v112[8] = v113;
    v112[9] = object;
    v114 = v23;

    sub_1000D7218(v41, sub_100096DF0, v112);

LABEL_29:

    return;
  }

LABEL_47:
  __break(1u);
}

void sub_100095770(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, NSObject *a6, unint64_t a7, uint64_t a8)
{
  v158 = a7;
  v159 = a3;
  v155 = a2;
  v156 = a6;
  v149 = a1;
  v9 = *(a8 + 8);
  v151 = *(a8 + 16);
  v152 = v9;
  v154 = type metadata accessor for FMIPActionStatus();
  v150 = *(v154 - 8);
  __chkstk_darwin(v154);
  v11 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPDevice();
  v157 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v143 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v143 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v143 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v143 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v143 - v29;
  __chkstk_darwin(v28);
  v32 = &v143 - v31;
  v153 = a5;
  sub_1003EB538(0);
  if (!v159)
  {
    v143 = v30;
    v146 = v24;
    v147 = v18;
    v144 = v27;
    v148 = v21;
    v145 = v15;
    v151 = v11;
    v152 = v12;
    v49 = v154;
    v159 = v32;
    v50 = v157;
    if (!v155 || !*(v155 + 16))
    {
      return;
    }

    v51 = *(v157 + 16);
    v52 = v159;
    v53 = v152;
    v51(v159, v155 + ((*(v157 + 80) + 32) & ~*(v157 + 80)), v152);
    v54 = v150;
    v55 = v151;
    v56 = v49;
    (*(v150 + 16))(v151, v149, v49);
    v57 = (*(v54 + 88))(v55, v49);
    if (v57 == enum case for FMIPActionStatus.error(_:))
    {
      v58 = v158;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100005B14(v59, qword_1006D4630);
      v60 = v146;
      v51(v146, v52, v53);
      v61 = v148;
      v51(v148, v52, v53);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        aBlock = v155;
        *v64 = 136315650;
        *(v64 + 4) = sub_100005B4C(v156, v58, &aBlock);
        *(v64 + 12) = 2080;
        LODWORD(v158) = v63;
        v65 = FMIPDevice.name.getter();
        v66 = v60;
        v68 = v67;
        v69 = *(v50 + 8);
        v69(v66, v53);
        v70 = sub_100005B4C(v65, v68, &aBlock);

        *(v64 + 14) = v70;
        *(v64 + 22) = 2080;
        FMIPDevice.identifier.getter();
        sub_10047BEA4(10);
        v71 = v61;

        v72 = static String._fromSubstring(_:)();
        v74 = v73;
        v53 = v152;

        v69(v71, v53);
        v75 = sub_100005B4C(v72, v74, &aBlock);

        *(v64 + 24) = v75;
        _os_log_impl(&_mh_execute_header, v62, v158, "FMDeviceMessageViewController: Error %s %s %s", v64, 0x20u);
        swift_arrayDestroy();

        goto LABEL_29;
      }

      v69 = *(v50 + 8);
      v69(v61, v53);
      v118 = v60;
    }

    else
    {
      v101 = v158;
      if (v57 != enum case for FMIPActionStatus.pending(_:))
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v119 = type metadata accessor for Logger();
        sub_100005B14(v119, qword_1006D4630);
        v51(v147, v52, v53);
        v120 = v51;
        v121 = v145;
        v120(v145, v52, v53);

        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          aBlock = v155;
          *v124 = 136315650;
          *(v124 + 4) = sub_100005B4C(v156, v101, &aBlock);
          *(v124 + 12) = 2080;
          LODWORD(v158) = v123;
          v125 = v147;
          v126 = FMIPDevice.name.getter();
          v128 = v127;
          v156 = v122;
          v129 = *(v50 + 8);
          v129(v125, v53);
          v130 = sub_100005B4C(v126, v128, &aBlock);

          *(v124 + 14) = v130;
          *(v124 + 22) = 2080;
          v131 = v145;
          FMIPDevice.identifier.getter();
          sub_10047BEA4(10);

          v55 = v151;
          v56 = v49;
          v132 = static String._fromSubstring(_:)();
          v134 = v133;
          v53 = v152;

          v129(v131, v53);
          v69 = v129;
          v135 = sub_100005B4C(v132, v134, &aBlock);

          *(v124 + 24) = v135;
          v136 = v156;
          _os_log_impl(&_mh_execute_header, v156, v158, "FMDeviceMessageViewController: Done %s %s %s", v124, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v69 = *(v50 + 8);
          v69(v121, v53);
          v69(v147, v53);
        }

        (*(v150 + 8))(v55, v56);
        v117 = sub_1003E1AD0();
        if (!v117)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v102 = v51;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      sub_100005B14(v103, qword_1006D4630);
      v104 = v143;
      v102(v143, v52, v53);
      v105 = v144;
      v102(v144, v52, v53);

      v62 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v106))
      {
        v107 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        aBlock = v155;
        *v107 = 136315650;
        *(v107 + 4) = sub_100005B4C(v156, v101, &aBlock);
        *(v107 + 12) = 2080;
        LODWORD(v158) = v106;
        v108 = FMIPDevice.name.getter();
        v110 = v109;
        v111 = *(v50 + 8);
        v111(v104, v53);
        v112 = sub_100005B4C(v108, v110, &aBlock);

        *(v107 + 14) = v112;
        *(v107 + 22) = 2080;
        FMIPDevice.identifier.getter();
        sub_10047BEA4(10);

        v69 = v111;
        v113 = static String._fromSubstring(_:)();
        v115 = v114;
        v53 = v152;

        v111(v105, v53);
        v116 = sub_100005B4C(v113, v115, &aBlock);

        *(v107 + 24) = v116;
        _os_log_impl(&_mh_execute_header, v62, v158, "FMDeviceMessageViewController: %s pending on %s %s", v107, 0x20u);
        swift_arrayDestroy();

LABEL_29:

        v117 = sub_1003E1AD0();
        if (!v117)
        {
LABEL_44:
          v69(v159, v53);
          return;
        }

LABEL_41:
        v137 = v117;
        type metadata accessor for FMActivityIndicatingNavigationController();
        v138 = swift_dynamicCastClass();

        if (v138)
        {
          v139 = [v153 navigationController];
          if (v139)
          {
            v140 = v139;
            v141 = swift_allocObject();
            *(v141 + 16) = 0;
            *(v141 + 24) = 0;
            v164 = sub_100097224;
            v165 = v141;
            aBlock = _NSConcreteStackBlock;
            v161 = 1107296256;
            v162 = sub_100004AE4;
            v163 = &unk_1006245C8;
            v142 = _Block_copy(&aBlock);

            [v140 dismissViewControllerAnimated:1 completion:v142];
            _Block_release(v142);
          }
        }

        goto LABEL_44;
      }

      v69 = *(v50 + 8);
      v69(v105, v53);
      v118 = v104;
    }

    v69(v118, v53);
    v117 = sub_1003E1AD0();
    if (!v117)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v33 = _convertErrorToNSError(_:)();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  v35 = v158;

  v159 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100005B4C(v156, v35, &aBlock);
    *(v38 + 12) = 2080;
    v39 = v159;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_100005B4C(v41, v43, &aBlock);

    *(v38 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMDeviceMessageViewController: Error %s %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  v45 = [v159 domain];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 == 0xD000000000000015 && 0x800000010057A320 == v48)
  {
  }

  else
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v76 & 1) == 0)
    {
LABEL_18:
      if (!sub_100271C38())
      {
        v79 = objc_opt_self();
        v80 = [v79 mainBundle];
        v167._object = 0x800000010057A360;
        v81._countAndFlagsBits = 0xD00000000000001DLL;
        v81._object = 0x800000010057A340;
        v167._countAndFlagsBits = 0xD00000000000002FLL;
        v82._countAndFlagsBits = 0;
        v82._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v81, 0, v80, v82, v167);

        sub_10007EBC0(&unk_1006B20B0);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_100552220;
        v84 = [v159 localizedDescription];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        *(v83 + 56) = &type metadata for String;
        *(v83 + 64) = sub_10008EE84();
        *(v83 + 32) = v85;
        *(v83 + 40) = v87;
        String.init(format:_:)();

        v88 = String._bridgeToObjectiveC()();
        v89 = String._bridgeToObjectiveC()();

        v90 = [objc_opt_self() alertControllerWithTitle:v88 message:v89 preferredStyle:1];

        v91 = [v79 mainBundle];
        v168._object = 0x8000000100579B60;
        v92._countAndFlagsBits = 0x4F545455425F4B4FLL;
        v92._object = 0xEF454C5449545F4ELL;
        v168._countAndFlagsBits = 0xD000000000000021;
        v93._countAndFlagsBits = 0;
        v93._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v168);

        v94 = swift_allocObject();
        v95 = v153;
        *(v94 + 16) = v153;
        v96 = v95;
        v97 = String._bridgeToObjectiveC()();

        v164 = sub_1000971B8;
        v165 = v94;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_100017328;
        v163 = &unk_100624618;
        v98 = _Block_copy(&aBlock);

        v99 = [objc_opt_self() actionWithTitle:v97 style:1 handler:v98];
        _Block_release(v98);

        [v90 addAction:v99];
        v100 = sub_1002653B0();
        [v100 resignFirstResponder];

        [v96 presentViewController:v90 animated:1 completion:0];
        return;
      }

      v78 = v159;
      goto LABEL_20;
    }
  }

  v77 = [v159 code] == -7003;
  v78 = v159;
  if (!v77)
  {
    goto LABEL_18;
  }

LABEL_20:
}

void sub_1000968F8(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6[4] = sub_100097224;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100004AE4;
    v6[3] = &unk_100624668;
    v5 = _Block_copy(v6);

    [v3 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_100096A2C()
{
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device, &unk_1006BBCE0);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart, &qword_1006B07D0);
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint);
}

id sub_100096A9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceEditableMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDeviceEditableMessageViewController()
{
  result = qword_1006AFC68;
  if (!qword_1006AFC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100096BA4()
{
  sub_100096CC0(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
  if (v0 <= 0x3F)
  {
    sub_100096CC0(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100096CC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100096D2C(char a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for FMIPDevice() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000D9E8C(a1, a2, a3, a4, v4 + v10, v11);
}

void sub_100096DF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 56);
  v9 = *(v4 + 72);
  v10[0] = *(v4 + 40);
  v10[1] = v8;
  v11 = v9;
  sub_100095770(a1, a2, a3, a4, v5, v6, v7, v10);
}

uint64_t sub_100096E34()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000971C0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006246B8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000971D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000970F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMLostModeTrackable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009715C(uint64_t a1)
{
  v2 = type metadata accessor for FMLostModeTrackable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000971D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10009734C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v2 centerYAnchor];
  v6 = [v1 centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v2 heightAnchor];
  v15 = [v1 heightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_1000975A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlusButtonTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100097610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton;
  if (qword_1006AEB28 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_1006D4130;
  v13[1] = *&qword_1006D4140;
  v13[2] = xmmword_1006D4150;
  v6 = objc_allocWithZone(type metadata accessor for FMAddButton());
  *&v2[v5] = sub_10022D0C8(0, 0xE000000000000000, v13);
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for FMPlusButtonTableViewCell();
  v8 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", 3, v7);

  v9 = *&v8[OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton];
  v10 = v8;
  [v10 addSubview:v9];
  sub_10009734C();

  return v10;
}

CGFloat sub_100097740()
{
  result = UITableViewAutomaticDimension;
  qword_1006D3CA8 = *&UITableViewAutomaticDimension;
  return result;
}

Swift::Int sub_10009776C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000977B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

double sub_1000977F8()
{
  qword_1006AFCC0 = 0;
  qword_1006AFCC8 = *&UITableViewAutomaticDimension;
  result = 0.0;
  xmmword_1006AFCD0 = 0u;
  unk_1006AFCE0 = 0u;
  return result;
}

uint64_t sub_100097820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v43 = a1;
  v4 = type metadata accessor for FMFLocationAlertTriggerType();
  v41 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v39 - v7;
  v8 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_10007EBC0(&qword_1006AF740);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = type metadata accessor for FMFLocation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(v43, v16, &qword_1006AF740);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100012DF0(v16, &qword_1006AF740);
    (*(v18 + 56))(v14, 1, 1, v17);
    v21 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
    swift_beginAccess();
    sub_1000BBF40(v14, &v3[v21], &qword_1006AF740);
    swift_endAccess();
    v22 = type metadata accessor for TimeZone();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    v23 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    sub_1000BBF40(v10, &v3[v23], &qword_1006AFFF8);
    return swift_endAccess();
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v14, v20, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    v25 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
    swift_beginAccess();
    sub_1000BBF40(v14, &v3[v25], &qword_1006AF740);
    swift_endAccess();
    sub_100007204(v42, v10, &qword_1006AFFF8);
    v26 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    sub_1000BBF40(v10, &v3[v26], &qword_1006AFFF8);
    swift_endAccess();
    v27 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
    swift_beginAccess();
    v28 = v41;
    v29 = v39;
    (*(v41 + 16))(v39, &v3[v27], v4);
    v30 = v40;
    (*(v28 + 104))(v40, enum case for FMFLocationAlertTriggerType.scheduled(_:), v4);
    sub_1000BBEF8(&qword_1006B0098, &type metadata accessor for FMFLocationAlertTriggerType);
    LOBYTE(v27) = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *(v28 + 8);
    v31(v30, v4);
    v31(v29, v4);
    if (v27)
    {
      v32 = type metadata accessor for TimeZone();
      if ((*(*(v32 - 8) + 48))(v42, 1, v32) == 1)
      {
        sub_1000A838C();
        v33 = FMFLocation.location.getter();
        if (v33)
        {
          v34 = v33;
          v35 = [objc_allocWithZone(CLGeocoder) init];
          v36 = swift_allocObject();
          *(v36 + 16) = v3;
          aBlock[4] = sub_1000BBFA8;
          aBlock[5] = v36;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100485DE8;
          aBlock[3] = &unk_100624BF0;
          v37 = _Block_copy(aBlock);
          v38 = v3;

          [v35 reverseGeocodeLocation:v34 completionHandler:v37];
          _Block_release(v37);
        }
      }
    }

    return (*(v18 + 8))(v20, v17);
  }
}

void sub_100097EB0(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    v27 = v12;
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v27;
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005B14(v29, qword_1006D4630);
    v34 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v34, v30, "FMLocationAlertViewController: reverse geocode failed while getting directions", v31, 2u);
    }

    v32 = v34;

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  v34 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(a1 + 32);
  }

  v16 = v15;
  v17 = v7;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMLocationAlertViewController: reverse geocode updating timeZone", v21, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = a3;
  aBlock[4] = sub_1000BBFB0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624C40;
  v24 = _Block_copy(aBlock);
  v25 = v16;
  v26 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000BBEF8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v17 + 8))(v9, v6);
  (*(v11 + 8))(v14, v34);
}

id sub_100098390(void *a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006AFFF8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v23[-v15];
  result = [a1 timeZone];
  if (result)
  {
    v18 = result;
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v16, v14, v10);
    v19 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    sub_100007204(a2 + v19, v9, &qword_1006AFFF8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100012DF0(v9, &qword_1006AFFF8);
      (*(v11 + 16))(v7, v16, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      swift_beginAccess();
      sub_1000BBF40(v7, a2 + v19, &qword_1006AFFF8);
      swift_endAccess();
      v20 = *(a2 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
      v21 = sub_1000986CC(1);
      sub_1000A6A44(v21);
      type metadata accessor for IndexPath();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 reloadRowsAtIndexPaths:isa withRowAnimation:5];

      sub_1000A838C();
      return (*(v11 + 8))(v16, v10);
    }

    else
    {
      (*(v11 + 8))(v16, v10);
      return sub_100012DF0(v9, &qword_1006AFFF8);
    }
  }

  return result;
}

unint64_t sub_1000986CC(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFLocationAlertTriggerType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v37 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v36 = &v31[-v9];
  v10 = __chkstk_darwin(v8);
  v34 = &v31[-v11];
  __chkstk_darwin(v10);
  v33 = &v31[-v12];
  v13 = *&v2[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView];
  v42 = v2;
  result = [v2 numberOfSectionsInTableView:v13];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (result)
    {
      v32 = a1;
      v41 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
      swift_beginAccess();
      v16 = 0;
      v40 = (v5 + 16);
      v39 = enum case for FMFLocationAlertTriggerType.scheduled(_:);
      v38 = (v5 + 104);
      v17 = (v5 + 8);
      v18 = _swiftEmptyArrayStorage;
      v35 = v15;
      while (1)
      {
        if (v16 == 1)
        {
          LOBYTE(v19) = 1;
        }

        else if (v16)
        {
          v20 = *v40;
          v21 = v33;
          (*v40)(v33, &v42[v41], v4);
          v22 = *v38;
          v23 = v34;
          (*v38)(v34, v39, v4);
          sub_1000BBEF8(&qword_1006B0098, &type metadata accessor for FMFLocationAlertTriggerType);
          v24 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25 = *v17;
          (*v17)(v23, v4);
          v25(v21, v4);
          if (v24)
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
            v15 = v35;
            if (v16 == 2)
            {
              goto LABEL_20;
            }
          }

          v20(v36, &v42[v41], v4);
          v22(v37, v39, v4);
          sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v45 == v43 && v46 == v44)
          {
            v25(v37, v4);
            v25(v36, v4);

            v15 = v35;
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v25(v37, v4);
            v25(v36, v4);

            v15 = v35;
            if ((v26 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          if (v16 == v19)
          {
            LOBYTE(v19) = 2;
          }

          else
          {
            if (v16 != v19 + 1)
            {
LABEL_19:
              LOBYTE(v19) = 5;
              goto LABEL_20;
            }

            LOBYTE(v19) = 4;
          }
        }

        else
        {
          LOBYTE(v19) = 0;
        }

LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10008BC68(0, *(v18 + 2) + 1, 1, v18);
        }

        v28 = *(v18 + 2);
        v27 = *(v18 + 3);
        v29 = (v28 + 1);
        if (v28 >= v27 >> 1)
        {
          v18 = sub_10008BC68((v27 > 1), v28 + 1, 1, v18);
        }

        ++v16;
        *(v18 + 2) = v29;
        v30 = v18 + 32;
        v18[v28 + 32] = v19;
        if (v15 == v16)
        {
          LOBYTE(a1) = v32;
LABEL_28:
          v2 = 0;
          while (v2[v30] != a1)
          {
            if (v29 == ++v2)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_32;
        }
      }
    }

    v29 = _swiftEmptyArrayStorage[2];
    if (v29)
    {
      v30 = &_swiftEmptyArrayStorage[4];
      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:

    return v2;
  }

  return result;
}

_BYTE *sub_100098BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = v7;
  v240 = a7;
  LODWORD(v268) = a6;
  v275 = a5;
  v276 = a1;
  v269 = a4;
  v277 = a3;
  v272 = a2;
  v9 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v9 - 8);
  v222 = &v205 - v10;
  v217 = type metadata accessor for UUID();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFLocation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v212 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for FMFLocationAlertTriggerType();
  v262 = *(v263 - 8);
  __chkstk_darwin(v263);
  v228 = &v205 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMFLocationAlertTarget();
  v270 = *(v16 - 8);
  v271 = v16;
  __chkstk_darwin(v16);
  v242 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMFLocationAlert();
  v274 = *(v18 - 8);
  v19 = v274;
  v20 = __chkstk_darwin(v18);
  v245 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v230 = &v205 - v23;
  v229 = v24;
  __chkstk_darwin(v22);
  v244 = &v205 - v25;
  v273 = type metadata accessor for FMFFriend();
  v264 = *(v273 - 8);
  v26 = __chkstk_darwin(v273);
  v208 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v232 = &v205 - v28;
  v29 = sub_10007EBC0(&qword_1006B0050);
  v226 = *(v29 - 8);
  v30 = __chkstk_darwin(v29 - 8);
  v207 = &v205 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v211 = &v205 - v33;
  v34 = __chkstk_darwin(v32);
  v243 = &v205 - v35;
  v36 = __chkstk_darwin(v34);
  v225 = &v205 - v37;
  v38 = __chkstk_darwin(v36);
  v214 = &v205 - v39;
  v40 = __chkstk_darwin(v38);
  v239 = &v205 - v41;
  v42 = __chkstk_darwin(v40);
  v210 = &v205 - v43;
  v227 = v44;
  __chkstk_darwin(v42);
  v237 = &v205 - v45;
  v46 = type metadata accessor for FMFSchedule.DaysOfWeek();
  __chkstk_darwin(v46 - 8);
  v235 = &v205 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for Calendar.Component();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v254 = &v205 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for Calendar();
  v253 = *(v255 - 8);
  v49 = __chkstk_darwin(v255);
  v252 = &v205 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v251 = &v205 - v51;
  v250 = type metadata accessor for Date();
  v249 = *(v250 - 8);
  v52 = __chkstk_darwin(v250);
  v247 = &v205 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v248 = &v205 - v54;
  v224 = sub_10007EBC0(&qword_1006AF740);
  v55 = __chkstk_darwin(v224);
  v206 = &v205 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v209 = &v205 - v58;
  v59 = __chkstk_darwin(v57);
  v218 = &v205 - v60;
  v61 = __chkstk_darwin(v59);
  v213 = &v205 - v62;
  v63 = __chkstk_darwin(v61);
  v231 = &v205 - v64;
  v65 = __chkstk_darwin(v63);
  v223 = &v205 - v66;
  __chkstk_darwin(v65);
  v258 = &v205 - v67;
  v68 = sub_10007EBC0(&unk_1006BEF80);
  v69 = __chkstk_darwin(v68 - 8);
  v241 = &v205 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v238 = &v205 - v72;
  __chkstk_darwin(v71);
  v74 = &v205 - v73;
  *&v7[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v75 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  (*(v19 + 56))(&v7[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert], 1, 1, v18);
  v76 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView;
  *&v8[v76] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v77 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *&v8[v77] = sub_10012114C();
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeatingCellsExpanded] = 1;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded] = 1;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationCellsExpanded] = 1;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded] = 0;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded] = 0;
  v78 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  v259 = v13;
  v79 = *(v13 + 56);
  v265 = v13 + 56;
  v80 = v12;
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation], 1, 1, v12);
  v261 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation;
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation], 1, 1, v12);
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation], 1, 1, v12);
  v81 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationShifter;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *&v8[v81] = FMLocationShifter.init()();
  v82 = v18;
  v260 = v80;
  v83 = v274;
  v266 = v79;
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation], 1, 1, v80);
  v84 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
  v85 = type metadata accessor for TimeZone();
  v86 = *(v85 - 8);
  v87 = *(v86 + 56);
  v221 = v85;
  v220 = v87;
  v219 = v86 + 56;
  (v87)(&v8[v84], 1, 1);
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_imageCache] = &_swiftEmptyDictionarySingleton;
  v236 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating] = 0;
  (*(v262 + 104))(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType], enum case for FMFLocationAlertTriggerType.leaving(_:), v263);
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeButton] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeCell] = 0;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_cancelable] = v268;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendHandles] = v269;
  sub_100007204(v277, &v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], &qword_1006B0050);
  (*(v270 + 16))(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_alertTarget], v272, v271);
  swift_beginAccess();
  v88 = v275;
  sub_1000BBE44(v275, &v8[v75], &unk_1006BEF80);
  swift_endAccess();
  sub_100007204(v88, v74, &unk_1006BEF80);
  v89 = *(v83 + 48);
  v268 = (v83 + 48);
  v267 = v89;
  v90 = v89(v74, 1, v82);
  v269 = v82;
  if (v90 != 1)
  {
    FMFLocationAlert.radius.getter();
    v91 = v92;
    (*(v83 + 8))(v74, v82);
    goto LABEL_5;
  }

  sub_100012DF0(v74, &unk_1006BEF80);
  if (qword_1006AED88 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v91 = qword_1006D4D20;
LABEL_5:
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedRadius] = v91;

    v93 = v258;
    dispatch thunk of FMFManager.myLocation.getter();

    swift_beginAccess();
    sub_1000BBF40(v93, &v8[v78], &qword_1006AF740);
    swift_endAccess();

    dispatch thunk of FMFManager.myUnshiftedLocation.getter();

    v94 = v261;
    swift_beginAccess();
    sub_1000BBF40(v93, &v8[v94], &qword_1006AF740);
    swift_endAccess();
    v95 = [objc_allocWithZone(NSDateFormatter) init];
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_dateFormatter] = v95;
    v96 = v95;
    v97 = String._bridgeToObjectiveC()();
    [v96 setLocalizedDateFormatFromTemplate:v97];

    v98 = [objc_allocWithZone(NSDateFormatter) init];
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_timeFormatterWithTimezone] = v98;
    v99 = v98;
    v100 = String._bridgeToObjectiveC()();
    [v99 setLocalizedDateFormatFromTemplate:v100];

    v101 = [objc_allocWithZone(NSDateFormatter) init];
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_timeFormatterNoTimezone] = v101;
    [v101 setTimeStyle:1];
    v234 = type metadata accessor for FMFSchedule();
    v261 = swift_allocBox();
    v103 = v102;
    FMFSchedule.init()();
    FMFSchedule.startHour.setter();
    FMFSchedule.startMin.setter();
    FMFSchedule.endHour.setter();
    FMFSchedule.endMin.setter();
    v104 = v248;
    Date.init()();
    v105 = v251;
    static Calendar.current.getter();
    v106 = v252;
    static Calendar.current.getter();
    v107 = v256;
    v108 = v254;
    v109 = v257;
    (*(v256 + 13))(v254, enum case for Calendar.Component.weekday(_:), v257);
    v110 = v247;
    Date.init()();
    v246 = Calendar.component(_:from:)();
    v233 = v8;
    v8 = (v249 + 8);
    v111 = *(v249 + 8);
    v112 = v110;
    v113 = v250;
    v111(v112, v250);
    (*(v107 + 1))(v108, v109);
    v114 = *(v253 + 8);
    v78 = v255;
    v114(v106, v255);
    v114(v105, v78);
    v111(v104, v113);
    v115 = v246 + 6;
    if (!__OFADD__(v246, 6))
    {
      break;
    }

    __break(1u);
LABEL_54:
    swift_once();
  }

  type metadata accessor for ScheduleDaysOfWeekCell(0);
  sub_10009AE7C(v115 % 7);
  FMFSchedule.daysOfWeek.setter();
  v116 = v233;
  (*(*(v234 - 8) + 16))(&v233[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule], v103);
  v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable] = v240 & 1;
  v117 = v237;
  sub_100007204(v277, v237, &qword_1006B0050);
  v118 = v264;
  v119 = *(v264 + 48);
  v120 = v273;
  if (v119(v117, 1, v273) == 1)
  {
    sub_100012DF0(v117, &qword_1006B0050);
    v121 = v260;
    v122 = v269;
LABEL_13:
    v131 = v231;
    v266(v231, 1, 1, v121);
    LODWORD(v257) = 0;
    goto LABEL_14;
  }

  v123 = v223;
  FMFFriend.location.getter();
  v124 = *(v118 + 8);
  v124(v117, v120);
  v125 = v259;
  v121 = v260;
  v126 = (*(v259 + 48))(v123, 1, v260);
  v122 = v269;
  if (v126 == 1)
  {
    sub_100012DF0(v123, &qword_1006AF740);
    v120 = v273;
    goto LABEL_13;
  }

  v127 = FMFLocation.location.getter();
  v128 = v123;
  v129 = v127;
  (*(v125 + 8))(v128, v121);
  v120 = v273;
  if (!v129)
  {
    goto LABEL_13;
  }

  v130 = v210;
  sub_100007204(v277, v210, &qword_1006B0050);
  if (v119(v130, 1, v120) == 1)
  {
    sub_100012DF0(v130, &qword_1006B0050);
    LODWORD(v257) = 1;
    v131 = v231;
    v266(v231, 1, 1, v121);
  }

  else
  {
    v131 = v231;
    FMFFriend.location.getter();
    v124(v130, v120);
    LODWORD(v257) = 1;
  }

LABEL_14:
  v132 = v232;
  sub_100035318(v131, &v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation], &qword_1006AF740);
  v133 = v239;
  sub_100007204(v277, v239, &qword_1006B0050);
  if (v119(v133, 1, v120) == 1)
  {
    sub_100012DF0(v133, &qword_1006B0050);
LABEL_20:
    v143 = v274;
    v266(&v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendUnshiftedLocation], 1, 1, v121);
    v144 = v238;
    goto LABEL_23;
  }

  v134 = v264;
  v135 = *(v264 + 32);
  v135(v132, v133, v120);
  if (!v257)
  {
    (*(v134 + 8))(v132, v120);
    v122 = v269;
    goto LABEL_20;
  }

  v136 = v132;
  v137 = FMFFriend.identifier.getter();
  v138 = v214;
  sub_1000BD300(v137, v139, v214);
  v140 = v138;
  v141 = v273;

  v256 = v119;
  if (v119(v140, 1, v141) == 1)
  {
    (*(v264 + 8))(v136, v141);
    sub_100012DF0(v140, &qword_1006B0050);
    v142 = v213;
    v121 = v260;
    v266(v213, 1, 1, v260);
    v122 = v269;
    v143 = v274;
    v144 = v238;
  }

  else
  {
    v145 = v208;
    v135(v208, v140, v141);
    v146 = v141;
    v142 = v213;
    dispatch thunk of FMFManager.unshiftedLocation(for:)();
    v147 = *(v264 + 8);
    v147(v145, v146);
    v147(v136, v146);
    v122 = v269;
    v143 = v274;
    v144 = v238;
    v121 = v260;
  }

  sub_100035318(v142, &v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendUnshiftedLocation], &qword_1006AF740);
  v120 = v273;
  v119 = v256;
LABEL_23:
  sub_100007204(v275, v144, &unk_1006BEF80);
  if (v267(v144, 1, v122) == 1)
  {
    sub_100012DF0(v144, &unk_1006BEF80);
    v148 = 0;
  }

  else
  {
    v148 = FMFLocationAlert.repeating.getter();
    (*(v143 + 8))(v144, v122);
  }

  v116[v236] = v148 & 1;
  *&v116[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v276;
  v149 = type metadata accessor for FMMediatedViewController();
  v282.receiver = v116;
  v282.super_class = v149;

  v150 = objc_msgSendSuper2(&v282, "initWithNibName:bundle:", 0, 0);
  v151 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  swift_beginAccess();
  v152 = &v150[v151];
  v153 = v241;
  sub_100007204(v152, v241, &unk_1006BEF80);
  if (v267(v153, 1, v122) == 1)
  {
    sub_100012DF0(v153, &unk_1006BEF80);
    v155 = v270;
    v154 = v271;
    (*(v270 + 104))(v242, enum case for FMFLocationAlertTarget.alertMe(_:), v271);
    sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
    v156 = v272;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v278 == v280 && v279 == v281)
    {
      (*(v155 + 8))(v242, v154);

LABEL_35:
      if (!v257)
      {

        v189 = v218;
        dispatch thunk of FMFManager.myLocation.getter();

        goto LABEL_47;
      }

      v187 = v211;
      sub_100007204(v277, v211, &qword_1006B0050);
      if (v119(v187, 1, v120) != 1)
      {
        v189 = v218;
        FMFFriend.location.getter();
        (*(v264 + 8))(v187, v120);
        goto LABEL_47;
      }

      sub_100012DF0(v187, &qword_1006B0050);
      v188 = &v250;
LABEL_38:
      v189 = *(v188 - 32);
      v266(v189, 1, 1, v260);
LABEL_47:
      v199 = v222;
      v220(v222, 1, 1, v221);
      sub_100097820(v189, v199);
      sub_100012DF0(v199, &qword_1006AFFF8);
      v200 = v189;
LABEL_48:
      sub_100012DF0(v200, &qword_1006AF740);
      goto LABEL_49;
    }

    v186 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v155 + 8))(v242, v154);

    if (v186)
    {
      goto LABEL_35;
    }

    v194 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
    swift_beginAccess();
    v195 = v209;
    sub_100007204(&v150[v194], v209, &qword_1006AF740);
    v196 = (*(v259 + 48))(v195, 1, v260);
    sub_100012DF0(v195, &qword_1006AF740);
    if (v196 != 1)
    {
      v202 = &v150[v194];
      v203 = v258;
      sub_100007204(v202, v258, &qword_1006AF740);
      v204 = v222;
      v220(v222, 1, 1, v221);
      sub_100097820(v203, v204);
      sub_100012DF0(v204, &qword_1006AFFF8);
      v200 = v203;
      goto LABEL_48;
    }

    if (v257)
    {
      v197 = v207;
      sub_100007204(v277, v207, &qword_1006B0050);
      v198 = v273;
      if (v119(v197, 1, v273) != 1)
      {
        v189 = v206;
        FMFFriend.location.getter();
        (*(v264 + 8))(v197, v198);
        goto LABEL_47;
      }

      sub_100012DF0(v197, &qword_1006B0050);
      v188 = &v238;
      goto LABEL_38;
    }
  }

  else
  {
    v157 = v244;
    v267 = *(v143 + 32);
    v267(v244, v153, v122);
    v158 = v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable];
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded] = v158;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationCellsExpanded] = v158;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded] = 0;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded] = 0;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeatingCellsExpanded] = v158;
    v159 = v228;
    FMFLocationAlert.triggerType.getter();
    v160 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
    swift_beginAccess();
    (*(v262 + 40))(&v150[v160], v159, v263);
    swift_endAccess();
    v273 = swift_allocBox();
    v162 = v161;
    FMFLocationAlert.location.getter();
    v163 = v259;
    v164 = (*(v259 + 48))(v162, 1, v121);
    v268 = 0;
    if (!v164)
    {
      v165 = v212;
      (*(v163 + 16))(v212, v162, v121);
      v268 = FMFLocation.location.getter();
      (*(v163 + 8))(v165, v121);
    }

    v166 = *(v143 + 16);
    v167 = v230;
    v166(v230, v157, v122);
    v168 = v225;
    sub_100007204(v277, v225, &qword_1006B0050);
    v166(v245, v167, v122);
    sub_100007204(v168, v243, &qword_1006B0050);
    v169 = (*(v143 + 80) + 24) & ~*(v143 + 80);
    v170 = (v229 + v169 + 7) & 0xFFFFFFFFFFFFFFF8;
    v171 = (*(v226 + 80) + v170 + 8) & ~*(v226 + 80);
    v172 = v122;
    v173 = (v227 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
    v174 = swift_allocObject();
    *(v174 + 16) = v273;
    v267(v174 + v169, v167, v172);
    *(v174 + v170) = v150;
    sub_100035318(v168, v174 + v171, &qword_1006B0050);
    v175 = v261;
    *(v174 + v173) = v261;
    if (v268)
    {
      v176 = v150;

      v177 = v268;
      v178 = v215;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v216 + 8))(v178, v217);
      type metadata accessor for FMLocationShiftingRequest();
      swift_allocObject();
      v179 = v177;
      v180 = FMLocationShiftingRequest.init(identifier:location:)();
      sub_10007EBC0(&qword_1006AFC30);
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_1005528C0;
      *(v181 + 32) = v180;
      v182 = swift_allocObject();
      v182[2] = v179;
      v182[3] = sub_1000BA99C;
      v182[4] = v174;
      v183 = v179;

      dispatch thunk of FMLocationShifter.shift(requests:completion:)();

      v154 = v271;
      v156 = v272;
      v155 = v270;
      v184 = v245;
      v185 = v243;
    }

    else
    {
      v190 = v150;

      v191 = v273;

      v184 = v245;
      v185 = v243;
      sub_10009AEE0(0, v191, v245, v190, v243, v175);

      v154 = v271;
      v156 = v272;
      v155 = v270;
    }

    v192 = *(v274 + 8);
    v193 = v269;
    v192(v244, v269);
    v192(v184, v193);
    sub_100012DF0(v185, &qword_1006B0050);
  }

LABEL_49:
  sub_10009C2E4();
  sub_10009CB1C();

  sub_100012DF0(v275, &unk_1006BEF80);
  sub_100012DF0(v277, &qword_1006B0050);
  (*(v155 + 8))(v156, v154);

  return v150;
}

uint64_t sub_10009AE7C(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return static FMFSchedule.DaysOfWeek.sunday.getter();
      case 1:
        return static FMFSchedule.DaysOfWeek.monday.getter();
      case 2:
        return static FMFSchedule.DaysOfWeek.tuesday.getter();
    }

    return static FMFSchedule.DaysOfWeek.none.getter();
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return static FMFSchedule.DaysOfWeek.friday.getter();
    }

    if (a1 == 6)
    {
      return static FMFSchedule.DaysOfWeek.saturday.getter();
    }

    return static FMFSchedule.DaysOfWeek.none.getter();
  }

  if (a1 == 3)
  {
    return static FMFSchedule.DaysOfWeek.wednesday.getter();
  }

  else
  {
    return static FMFSchedule.DaysOfWeek.thursday.getter();
  }
}

uint64_t sub_10009AEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v125 = a6;
  v116 = a5;
  v132 = a3;
  v8 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v8 - 8);
  v124 = &v107 - v9;
  v10 = sub_10007EBC0(&unk_1006B0010);
  v11 = __chkstk_darwin(v10 - 8);
  v123 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v107 - v13;
  v122 = type metadata accessor for FMFSchedule();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v15 - 8);
  v115 = &v107 - v16;
  v17 = type metadata accessor for FMFLocation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v111 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10007EBC0(&qword_1006B0020);
  v20 = __chkstk_darwin(v129);
  v117 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v107 - v22;
  v24 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v24 - 8);
  v114 = &v107 - v25;
  v26 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v26 - 8);
  v28 = &v107 - v27;
  v29 = sub_10007EBC0(&qword_1006AF740);
  v30 = __chkstk_darwin(v29 - 8);
  v118 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v110 = &v107 - v33;
  v34 = __chkstk_darwin(v32);
  v109 = &v107 - v35;
  v36 = __chkstk_darwin(v34);
  v127 = &v107 - v37;
  v38 = __chkstk_darwin(v36);
  v131 = &v107 - v39;
  v40 = __chkstk_darwin(v38);
  v112 = &v107 - v41;
  v42 = __chkstk_darwin(v40);
  v128 = &v107 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v107 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v107 - v48;
  __chkstk_darwin(v47);
  v51 = &v107 - v50;
  v52 = swift_projectBox();
  v113 = swift_projectBox();
  v125 = v18;
  v126 = a4;
  v130 = v52;
  if (a1)
  {
    v108 = a1;
    FMFLocationAlert.location.getter();
    v53 = *(v18 + 48);
    if (v53(v49, 1, v17) == 1)
    {
      sub_100012DF0(v49, &qword_1006AF740);
      v54 = type metadata accessor for FMFAddress();
      (*(*(v54 - 8) + 56))(v28, 1, 1, v54);
    }

    else
    {
      FMFLocation.address.getter();
      (*(v18 + 8))(v49, v17);
    }

    FMFLocationAlert.location.getter();
    v55 = v53(v46, 1, v17);
    v56 = v114;
    if (v55 == 1)
    {
      sub_100012DF0(v46, &qword_1006AF740);
      v57 = type metadata accessor for FMFLabel();
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
      a4 = v126;
      v52 = v130;
      v18 = v125;
    }

    else
    {
      FMFLocation.label.getter();
      v18 = v125;
      (*(v125 + 8))(v46, v17);
      a4 = v126;
      v52 = v130;
    }

    FMFLocation.init(from:address:label:labels:)();
    (*(v18 + 56))(v51, 0, 1, v17);
    swift_beginAccess();
    sub_1000BBF40(v51, v52, &qword_1006AF740);
  }

  swift_beginAccess();
  v58 = a4;
  v59 = v128;
  sub_100007204(v52, v128, &qword_1006AF740);
  v60 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  swift_beginAccess();
  v61 = *(v129 + 48);
  sub_100007204(v59, v23, &qword_1006AF740);
  sub_100007204(v58 + v60, &v23[v61], &qword_1006AF740);
  v62 = *(v18 + 48);
  v63 = v62(v23, 1, v17);
  v64 = v17;
  v114 = v62;
  if (v63 == 1)
  {
    sub_100012DF0(v59, &qword_1006AF740);
    v65 = v62(&v23[v61], 1, v17);
    v66 = v131;
    v67 = v127;
    if (v65 == 1)
    {
      v68 = v58;
      sub_100012DF0(v23, &qword_1006AF740);
      v69 = v119;
      v70 = v130;
      goto LABEL_28;
    }
  }

  else
  {
    v71 = v112;
    sub_100007204(v23, v112, &qword_1006AF740);
    v72 = v62(&v23[v61], 1, v17);
    v67 = v127;
    if (v72 != 1)
    {
      v87 = &v23[v61];
      v88 = v111;
      (*(v18 + 32))(v111, v87, v64);
      sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
      LODWORD(v108) = dispatch thunk of static Equatable.== infix(_:_:)();
      v89 = *(v18 + 8);
      v89(v88, v64);
      sub_100012DF0(v128, &qword_1006AF740);
      v128 = v64;
      v89(v71, v64);
      v70 = v130;
      v68 = v58;
      sub_100012DF0(v23, &qword_1006AF740);
      v69 = v119;
      v66 = v131;
      if (v108)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    sub_100012DF0(v128, &qword_1006AF740);
    (*(v18 + 8))(v71, v64);
    v66 = v131;
  }

  v128 = v64;
  sub_100012DF0(v23, &qword_1006B0020);
  v69 = v119;
  v70 = v130;
LABEL_15:
  swift_beginAccess();
  sub_100007204(v70, v66, &qword_1006AF740);
  v73 = v115;
  sub_100007204(v116, v115, &qword_1006B0050);
  v74 = type metadata accessor for FMFFriend();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1, v74) == 1)
  {
    sub_100012DF0(v73, &qword_1006B0050);
    v76 = v128;
    (*(v125 + 56))(v67, 1, 1, v128);
    v77 = v117;
  }

  else
  {
    FMFFriend.location.getter();
    (*(v75 + 8))(v73, v74);
    v77 = v117;
    v76 = v128;
  }

  v78 = *(v129 + 48);
  v79 = v131;
  sub_100007204(v131, v77, &qword_1006AF740);
  sub_100007204(v67, v77 + v78, &qword_1006AF740);
  v80 = v114;
  v81 = v76;
  if ((v114)(v77, 1, v76) == 1)
  {
    sub_100012DF0(v67, &qword_1006AF740);
    sub_100012DF0(v79, &qword_1006AF740);
    v82 = v80(v77 + v78, 1, v76);
    v68 = v126;
    if (v82 == 1)
    {
      sub_100012DF0(v77, &qword_1006AF740);
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v83 = v109;
  sub_100007204(v77, v109, &qword_1006AF740);
  v84 = v80(v77 + v78, 1, v81);
  v68 = v126;
  if (v84 == 1)
  {
    sub_100012DF0(v127, &qword_1006AF740);
    sub_100012DF0(v131, &qword_1006AF740);
    (*(v125 + 8))(v83, v81);
LABEL_23:
    sub_100012DF0(v77, &qword_1006B0020);
LABEL_24:
    swift_beginAccess();
    v85 = v110;
    sub_100007204(v70, v110, &qword_1006AF740);
    v86 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
    swift_beginAccess();
    sub_1000BBF40(v85, v68 + v86, &qword_1006AF740);
    swift_endAccess();
    goto LABEL_28;
  }

  v90 = v83;
  v91 = v125;
  v92 = v77 + v78;
  v93 = v111;
  (*(v125 + 32))(v111, v92, v81);
  sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
  LODWORD(v129) = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = *(v91 + 8);
  v94(v93, v81);
  sub_100012DF0(v127, &qword_1006AF740);
  sub_100012DF0(v131, &qword_1006AF740);
  v94(v90, v81);
  sub_100012DF0(v77, &qword_1006AF740);
  if ((v129 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  FMFLocationAlert.schedule.getter();
  v95 = v121;
  v96 = *(v121 + 48);
  v97 = v122;
  if (v96(v69, 1, v122) == 1)
  {
    v98 = v113;
    swift_beginAccess();
    v99 = v120;
    (*(v95 + 16))(v120, v98, v97);
    v100 = v96(v69, 1, v97);
    v101 = v123;
    if (v100 != 1)
    {
      sub_100012DF0(v69, &unk_1006B0010);
    }
  }

  else
  {
    v99 = v120;
    (*(v95 + 32))(v120, v69, v97);
    v101 = v123;
  }

  v102 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
  swift_beginAccess();
  (*(v95 + 40))(v68 + v102, v99, v97);
  swift_endAccess();
  swift_beginAccess();
  v103 = v118;
  sub_100007204(v70, v118, &qword_1006AF740);
  FMFLocationAlert.schedule.getter();
  if (v96(v101, 1, v97) == 1)
  {
    sub_100012DF0(v101, &unk_1006B0010);
    v104 = type metadata accessor for TimeZone();
    v105 = v124;
    (*(*(v104 - 8) + 56))(v124, 1, 1, v104);
  }

  else
  {
    v105 = v124;
    FMFSchedule.timeZone.getter();
    (*(v95 + 8))(v101, v97);
  }

  sub_100097820(v103, v105);
  sub_100012DF0(v105, &qword_1006AFFF8);
  return sub_100012DF0(v103, &qword_1006AF740);
}

void sub_10009C0C8(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMLocationAlertViewController(0);
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setPrefersLargeTitles:1];
  }

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationItem];

    [v8 setLargeTitleDisplayMode:3];
  }
}

void sub_10009C2E4()
{
  v1 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v1 - 8);
  v3 = &v53[-v2];
  if (v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_cancelable] == 1)
  {
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"cancel"];
    v5 = [v0 navigationItem];
    [v5 setLeftBarButtonItem:v4];
  }

  if (v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable] == 1)
  {
    v6 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
    swift_beginAccess();
    sub_100007204(&v0[v6], v3, &unk_1006BEF80);
    v7 = type metadata accessor for FMFLocationAlert();
    LODWORD(v6) = (*(*(v7 - 8) + 48))(v3, 1, v7);
    sub_100012DF0(v3, &unk_1006BEF80);
    v8 = [objc_opt_self() mainBundle];
    if (v6 == 1)
    {
      v9 = 0xD000000000000012;
      v52 = 0x800000010057BB00;
      v10 = 0x800000010057BAE0;
      v11 = 0xD000000000000024;
    }

    else
    {
      v9 = 0xD000000000000013;
      v52 = 0x800000010057BB50;
      v10 = 0x800000010057BB30;
      v11 = 0xD000000000000025;
    }

    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, 0, v8, v12, *&v11);

    v13 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"saveAlertWithSender:"];
    [v13 setEnabled:0];
    v14 = [v0 navigationItem];
    sub_10007EBC0(&qword_1006AFC30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1005528C0;
    *(v15 + 32) = v13;
    sub_10000905C(0, &qword_1006B0160);
    v16 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setRightBarButtonItems:isa animated:0];

    v18 = *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem];
    *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem] = v16;
    v19 = v16;

    sub_1000A838C();
  }

  v20 = [v0 navigationItem];
  sub_10009CE0C();
  v21 = String._bridgeToObjectiveC()();

  [v20 setTitle:v21];

  v22 = [v0 view];
  if (!v22)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [objc_opt_self() systemGroupedBackgroundColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView];
  [v25 _setSectionContentInsetFollowsLayoutMargins:1];
  v54[3] = &type metadata for SolariumFeatureFlag;
  v54[4] = sub_10000BD04();
  LOBYTE(v24) = isFeatureEnabled(_:)();
  sub_100006060(v54);
  if ((v24 & 1) == 0)
  {
    [v25 contentInset];
    [v25 setContentInset:-17.0];
  }

  [v25 setDataSource:v0];
  [v25 setDelegate:v0];
  type metadata accessor for SelectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = String._bridgeToObjectiveC()();
  [v25 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v27];

  type metadata accessor for TriggerTypeCell();
  v28 = swift_getObjCClassFromMetadata();
  v29 = String._bridgeToObjectiveC()();
  [v25 registerClass:v28 forCellReuseIdentifier:v29];

  type metadata accessor for FMPlusButtonTableViewCell();
  v30 = swift_getObjCClassFromMetadata();
  v31 = String._bridgeToObjectiveC()();
  [v25 registerClass:v30 forCellReuseIdentifier:v31];

  type metadata accessor for ScheduleTimeCell();
  v32 = swift_getObjCClassFromMetadata();
  v33 = String._bridgeToObjectiveC()();
  [v25 registerClass:v32 forCellReuseIdentifier:v33];

  type metadata accessor for ScheduleTimePickerCell(0);
  v34 = swift_getObjCClassFromMetadata();
  v35 = String._bridgeToObjectiveC()();
  [v25 registerClass:v34 forCellReuseIdentifier:v35];

  type metadata accessor for ScheduleDaysOfWeekCell(0);
  v36 = swift_getObjCClassFromMetadata();
  v37 = String._bridgeToObjectiveC()();
  [v25 registerClass:v36 forCellReuseIdentifier:v37];

  type metadata accessor for AlertLocationCell();
  v38 = swift_getObjCClassFromMetadata();
  v39 = String._bridgeToObjectiveC()();
  [v25 registerClass:v38 forCellReuseIdentifier:v39];

  v40 = sub_10000905C(0, &qword_1006B00B0);
  v41 = swift_getObjCClassFromMetadata();
  v54[0] = v40;
  sub_10007EBC0(&qword_1006B00B8);
  String.init<A>(describing:)();
  v42 = String._bridgeToObjectiveC()();

  [v25 registerClass:v41 forCellReuseIdentifier:v42];

  v43 = [v0 view];
  if (!v43)
  {
    goto LABEL_18;
  }

  v44 = v43;
  [v43 addSubview:v25];

  v45 = [v0 traitCollection];
  v46 = [v45 horizontalSizeClass];

  if (v46 == 2)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v47 = [objc_opt_self() mainScreen];
    [v47 bounds];
    v49 = v48;
    v51 = v50;

    [v0 setPreferredContentSize:{fmin(v49, 520.0), fmin(v51, 720.0)}];
  }
}

void sub_10009CB1C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = [v1 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v2 + 40) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v2 + 48) = v17;
  v18 = [v1 bottomAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v20 bottomAnchor];

  v23 = [v18 constraintEqualToAnchor:v22];
  *(v2 + 56) = v23;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints:isa];
}

uint64_t sub_10009CE0C()
{
  v1 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for FMFLocationAlertTarget();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_alertTarget, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for FMFLocationAlertTarget.alertMe(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v25 = 0x800000010057BAA0;
    v10 = 0x800000010057BA70;
    v11 = 0xD000000000000038;
    v12 = 0xD000000000000026;
    goto LABEL_9;
  }

  if (v8 == enum case for FMFLocationAlertTarget.alertFriends(_:))
  {
    sub_100007204(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v3, &qword_1006B0050);
    v13 = type metadata accessor for FMFFriend();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v3, 1, v13) == 1)
    {
      sub_100012DF0(v3, &qword_1006B0050);
    }

    else
    {
      v15 = FMFFriend.properName.getter();
      v17 = v16;
      (*(v14 + 8))(v3, v13);
      if (v17)
      {
        v18 = [objc_opt_self() mainBundle];
        v27._object = 0x800000010057BA30;
        v19._countAndFlagsBits = 0xD00000000000002ALL;
        v19._object = 0x800000010057BA00;
        v27._countAndFlagsBits = 0xD00000000000003CLL;
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v27);

        sub_10007EBC0(&unk_1006B20B0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100552220;
        *(v21 + 56) = &type metadata for String;
        *(v21 + 64) = sub_10008EE84();
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        countAndFlagsBits = String.init(format:_:)();

        return countAndFlagsBits;
      }
    }

    v9 = [objc_opt_self() mainBundle];
    v25 = 0x800000010057B9B0;
    v12 = 0xD000000000000032;
    v10 = 0x800000010057B970;
    v11 = 0xD000000000000044;
LABEL_9:
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, 0, v9, v23, *&v11)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_10009D2F8()
{
  v1 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendHandles);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendHandles);
    v3 = *(v4 + 16);
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_100007204(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v3, &qword_1006B0050);
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) != 1)
  {
    goto LABEL_8;
  }

  sub_100012DF0(v3, &qword_1006B0050);
  v5 = _swiftEmptySetSingleton;
  v3 = _swiftEmptySetSingleton[2];
  if (!v3)
  {
LABEL_9:

    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  while (1)
  {
    v8 = sub_10002E21C(v3, 0);
    v9 = sub_100016318(v12, v8 + 4, v3, v5);
    v6 = v12[0];
    v7 = v12[1];

    sub_10000BEC8();
    if (v9 == v3)
    {
      return v8;
    }

    __break(1u);
LABEL_8:
    v5 = FMFFriend.contactHandles.getter();
    (*(v7 + 8))(v3, v6);
    v3 = v5[2];
    if (!v3)
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_10009D4F8()
{
  result = sub_10009D2F8();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 40;
    v14 = _swiftEmptyArrayStorage;
    v13 = result + 40;
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v3 = v6 + 1;
        sub_100035F3C();

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v5 += 2;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v9 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10016715C(0, v14[2] + 1, 1);
        v9 = v14;
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_10016715C((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      v9[2] = v11 + 1;
      v14 = v9;
      v12 = &v9[2 * v11];
      v12[4] = v8;
      v12[5] = v7;
      v4 = v13;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v14;
}

uint64_t sub_10009D68C()
{
  result = sub_10009D2F8();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 40;
    v14 = _swiftEmptyArrayStorage;
    v13 = result + 40;
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v3 = v6 + 1;
        sub_100035F3C();

        if ((StringProtocol.contains<A>(_:)() & 1) == 0)
        {
          break;
        }

        v5 += 2;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v9 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10016715C(0, v14[2] + 1, 1);
        v9 = v14;
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_10016715C((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      v9[2] = v11 + 1;
      v14 = v9;
      v12 = &v9[2 * v11];
      v12[4] = v8;
      v12[5] = v7;
      v4 = v13;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v14;
}

uint64_t sub_10009D820@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v121 = type metadata accessor for Calendar.SearchDirection();
  v129 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v89 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v128 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Calendar.MatchingPolicy();
  v104 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006B0000);
  v5 = __chkstk_darwin(v4 - 8);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v114 = &v89 - v8;
  __chkstk_darwin(v7);
  v115 = &v89 - v9;
  v124 = type metadata accessor for Date();
  v10 = *(v124 - 8);
  v11 = __chkstk_darwin(v124);
  v94 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v113 = &v89 - v14;
  __chkstk_darwin(v13);
  v100 = &v89 - v15;
  v127 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v137 = *(v127 - 8);
  v16 = __chkstk_darwin(v127);
  v136 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v123 = &v89 - v18;
  v19 = type metadata accessor for TimeZone();
  v106 = v19;
  v105 = *(v19 - 8);
  v20 = v105;
  __chkstk_darwin(v19);
  v111 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Calendar.Identifier();
  v109 = *(v110 - 1);
  __chkstk_darwin(v110);
  v108 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Calendar();
  v93 = *(v23 - 8);
  __chkstk_darwin(v23);
  v126 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FMFSchedule();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10007EBC0(&qword_1006AFFF8);
  v30 = __chkstk_darwin(v29 - 8);
  v107 = (&v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v33 = &v89 - v32;
  v34 = sub_10007EBC0(&qword_1006B00A8);
  __chkstk_darwin(v34 - 8);
  v36 = &v89 - v35;
  v91 = type metadata accessor for DateComponents();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v10;
  v39 = *(v10 + 7);
  v96 = v10 + 56;
  v95 = v39;
  v39(v99, 1, 1, v124);
  v40 = *(v93 + 56);
  v92 = v23;
  v40(v36, 1, 1, v23);
  v41 = v20[7];
  v122 = v33;
  (v41)(v33, 1, 1, v19);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v42 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
  v43 = v125;
  swift_beginAccess();
  v44 = *(v26 + 16);
  v44(v28, v43 + v42, v25);
  FMFSchedule.startHour.getter();
  v45 = *(v26 + 8);
  v45(v28, v25);
  DateComponents.hour.setter();
  v131 = v44;
  v132 = v26 + 16;
  v44(v28, v43 + v42, v25);
  FMFSchedule.startMin.getter();
  v133 = v28;
  v134 = v26 + 8;
  v135 = v25;
  v130 = v45;
  v45(v28, v25);
  DateComponents.minute.setter();
  v46 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
  swift_beginAccess();
  v47 = v43;
  sub_100007204(v43 + v46, v122, &qword_1006AFFF8);
  v122 = v38;
  v48 = v105;
  DateComponents.timeZone.setter();
  v49 = v109;
  v50 = v108;
  v51 = v110;
  (*(v109 + 104))(v108, enum case for Calendar.Identifier.gregorian(_:), v110);
  Calendar.init(identifier:)();
  v52 = v50;
  v53 = v106;
  (*(v49 + 8))(v52, v51);
  v54 = v47 + v46;
  v55 = v107;
  sub_100007204(v54, v107, &qword_1006AFFF8);
  v56 = v48[6];
  if ((v56)(v55, 1, v53) == 1)
  {
    static TimeZone.current.getter();
    if ((v56)(v55, 1, v53) != 1)
    {
      sub_100012DF0(v55, &qword_1006AFFF8);
    }
  }

  else
  {
    (v48[4])(v111, v55, v53);
  }

  Calendar.timeZone.setter();
  ++v137;
  LODWORD(v111) = enum case for Calendar.MatchingPolicy.nextTime(_:);
  v110 = (v104 + 13);
  LODWORD(v109) = enum case for Calendar.RepeatedTimePolicy.first(_:);
  v108 = (v128 + 13);
  v107 = (v129 + 104);
  v106 = (v129 + 8);
  v105 = v128 + 1;
  ++v104;
  v128 = (v101 + 8);
  v103 = (v101 + 48);
  v102 = enum case for Calendar.SearchDirection.forward(_:);
  v97 = (v101 + 32);
  v57 = 1;
  v58 = v125;
  v59 = v127;
  v60 = v123;
  v112 = v42;
  do
  {
    if (v57 - 1 <= 2)
    {
      if (v57 == 1)
      {
        static FMFSchedule.DaysOfWeek.sunday.getter();
        goto LABEL_25;
      }

      if (v57 != 2)
      {
        if (v57 == 3)
        {
          static FMFSchedule.DaysOfWeek.tuesday.getter();
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      static FMFSchedule.DaysOfWeek.monday.getter();
    }

    else if (v57 - 1 > 4)
    {
      if (v57 != 6)
      {
        if (v57 == 7)
        {
          static FMFSchedule.DaysOfWeek.saturday.getter();
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      static FMFSchedule.DaysOfWeek.friday.getter();
    }

    else
    {
      if (v57 != 4)
      {
        if (v57 == 5)
        {
          static FMFSchedule.DaysOfWeek.thursday.getter();
          goto LABEL_25;
        }

LABEL_21:
        static FMFSchedule.DaysOfWeek.none.getter();
        goto LABEL_25;
      }

      static FMFSchedule.DaysOfWeek.wednesday.getter();
    }

LABEL_25:
    v61 = v133;
    v62 = v135;
    v131(v133, v58 + v42, v135);
    v63 = v136;
    FMFSchedule.daysOfWeek.getter();
    v130(v61, v62);
    sub_1000BBEF8(&qword_1006B0070, &type metadata accessor for FMFSchedule.DaysOfWeek);
    LOBYTE(v61) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v64 = *v137;
    (*v137)(v63, v59);
    if ((v61 & 1) == 0)
    {
      v64(v60, v59);
      goto LABEL_7;
    }

    v129 = v64;
    DateComponents.weekday.setter();
    v65 = v113;
    Date.init()();
    v66 = v116;
    v67 = v117;
    (*v110)(v116, v111, v117);
    v68 = v118;
    v69 = v121;
    v70 = v119;
    (*v108)(v118, v109, v119);
    v71 = v120;
    (*v107)(v120, v102, v69);
    v72 = v115;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*v106)(v71, v69);
    (*v105)(v68, v70);
    v73 = v67;
    v74 = v124;
    (*v104)(v66, v73);
    v75 = *v128;
    (*v128)(v65, v74);
    v76 = *v103;
    if ((*v103)(v72, 1, v74) == 1)
    {
      v60 = v123;
      v59 = v127;
      v129(v123, v127);
      sub_100012DF0(v72, &unk_1006B0000);
      v42 = v112;
      v58 = v125;
      goto LABEL_7;
    }

    v77 = v100;
    v101 = *v97;
    (v101)(v100, v72, v74);
    v78 = v99;
    v79 = v114;
    sub_100007204(v99, v114, &unk_1006B0000);
    if (v76(v79, 1, v74) == 1)
    {
      v80 = v123;
      v59 = v127;
      v129(v123, v127);
      sub_100012DF0(v78, &unk_1006B0000);
      sub_100012DF0(v114, &unk_1006B0000);
      (v101)(v78, v77, v74);
      v81 = v78;
      v60 = v80;
      v95(v81, 0, 1, v74);
    }

    else
    {
      sub_100012DF0(v114, &unk_1006B0000);
      v82 = v98;
      sub_100007204(v78, v98, &unk_1006B0000);
      if (v76(v82, 1, v74) != 1)
      {
        v83 = v94;
        v84 = v101;
        (v101)(v94, v98, v74);
        v85 = v100;
        v86 = static Date.< infix(_:_:)();
        v75(v83, v74);
        v60 = v123;
        v129(v123, v127);
        if (v86)
        {
          v87 = v99;
          sub_100012DF0(v99, &unk_1006B0000);
          v84(v87, v85, v74);
          v95(v87, 0, 1, v74);
        }

        else
        {
          v75(v85, v74);
        }

        v58 = v125;
        v59 = v127;
        goto LABEL_37;
      }

      v75(v100, v74);
      v60 = v123;
      v59 = v127;
      v129(v123, v127);
      sub_100012DF0(v98, &unk_1006B0000);
    }

    v58 = v125;
LABEL_37:
    v42 = v112;
LABEL_7:
    ++v57;
  }

  while (v57 != 8);
  (*(v93 + 8))(v126, v92);
  return (*(v90 + 8))(v122, v91);
}

void sub_10009EA98()
{
  v1 = v0;
  v2 = type metadata accessor for FMFLocationAlertTarget();
  v399 = *(v2 - 8);
  v400 = v2;
  __chkstk_darwin(v2);
  v413 = &v387 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v4 - 8);
  v403 = &v387 - v5;
  v407 = sub_10007EBC0(&qword_1006B0020);
  v6 = __chkstk_darwin(v407);
  v391 = &v387 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v396 = &v387 - v8;
  v9 = type metadata accessor for FMFLocationAlertAddressType();
  v429 = *(v9 - 8);
  v430 = v9;
  v10 = __chkstk_darwin(v9);
  v412 = &v387 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v428 = &v387 - v12;
  v13 = sub_10007EBC0(&unk_1006BC950);
  v14 = __chkstk_darwin(v13 - 8);
  v402 = &v387 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v426 = &v387 - v16;
  v17 = sub_10007EBC0(&unk_1006B0010);
  v18 = __chkstk_darwin(v17 - 8);
  v401 = &v387 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v425 = &v387 - v20;
  v21 = sub_10007EBC0(&unk_1006BC960);
  __chkstk_darwin(v21 - 8);
  v444 = &v387 - v22;
  v23 = sub_10007EBC0(&unk_1006BEF80);
  v24 = __chkstk_darwin(v23 - 8);
  v397 = &v387 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v389 = &v387 - v27;
  __chkstk_darwin(v26);
  v451 = (&v387 - v28);
  v456 = type metadata accessor for FMFLocationAlert();
  v453 = *(v456 - 8);
  v29 = __chkstk_darwin(v456);
  v390 = &v387 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v443 = &v387 - v32;
  __chkstk_darwin(v31);
  v452 = &v387 - v33;
  v34 = type metadata accessor for TimeZone();
  v433 = *(v34 - 8);
  v434 = v34;
  __chkstk_darwin(v34);
  v414 = &v387 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = type metadata accessor for FMFLocationAlertTriggerType();
  v459 = *(v462 - 8);
  v36 = __chkstk_darwin(v462);
  v398 = &v387 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v410 = &v387 - v39;
  v40 = __chkstk_darwin(v38);
  v411 = &v387 - v41;
  v42 = __chkstk_darwin(v40);
  v424 = &v387 - v43;
  v44 = __chkstk_darwin(v42);
  v441 = &v387 - v45;
  v46 = __chkstk_darwin(v44);
  v450 = &v387 - v47;
  __chkstk_darwin(v46);
  v449 = &v387 - v48;
  v49 = sub_10007EBC0(&qword_1006AFFF8);
  v50 = __chkstk_darwin(v49 - 8);
  v432 = &v387 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v435 = &v387 - v52;
  v463 = type metadata accessor for FMFAddress();
  v464 = *(v463 - 1);
  __chkstk_darwin(v463);
  v427 = &v387 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_10007EBC0(&qword_1006B0100);
  v54 = __chkstk_darwin(v457);
  v440 = (&v387 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v54);
  v458 = (&v387 - v56);
  v57 = sub_10007EBC0(&qword_1006B0040);
  v58 = __chkstk_darwin(v57 - 8);
  v442 = &v387 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v417 = &v387 - v61;
  v62 = __chkstk_darwin(v60);
  v439 = &v387 - v63;
  v64 = __chkstk_darwin(v62);
  v446 = (&v387 - v65);
  v66 = __chkstk_darwin(v64);
  v415 = &v387 - v67;
  v68 = __chkstk_darwin(v66);
  v431 = &v387 - v69;
  v70 = __chkstk_darwin(v68);
  v455 = &v387 - v71;
  v72 = __chkstk_darwin(v70);
  v448 = &v387 - v73;
  __chkstk_darwin(v72);
  v465 = &v387 - v74;
  v75 = type metadata accessor for FMFLocation();
  v76 = *(v75 - 8);
  v77 = __chkstk_darwin(v75);
  v409 = &v387 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v77);
  v436 = &v387 - v80;
  v81 = __chkstk_darwin(v79);
  v394 = &v387 - v82;
  v83 = __chkstk_darwin(v81);
  v406 = &v387 - v84;
  v85 = __chkstk_darwin(v83);
  v393 = &v387 - v86;
  v87 = __chkstk_darwin(v85);
  v405 = &v387 - v88;
  v89 = __chkstk_darwin(v87);
  v454 = &v387 - v90;
  v91 = __chkstk_darwin(v89);
  v445 = &v387 - v92;
  __chkstk_darwin(v91);
  v94 = &v387 - v93;
  v95 = sub_10007EBC0(&qword_1006AF740);
  v96 = __chkstk_darwin(v95 - 8);
  v387 = &v387 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __chkstk_darwin(v96);
  v392 = &v387 - v99;
  v100 = __chkstk_darwin(v98);
  v388 = &v387 - v101;
  v102 = __chkstk_darwin(v100);
  v395 = &v387 - v103;
  v104 = __chkstk_darwin(v102);
  v422 = &v387 - v105;
  v106 = __chkstk_darwin(v104);
  v423 = &v387 - v107;
  v108 = __chkstk_darwin(v106);
  v421 = &v387 - v109;
  v110 = __chkstk_darwin(v108);
  v408 = &v387 - v111;
  v112 = __chkstk_darwin(v110);
  v438 = &v387 - v113;
  v114 = __chkstk_darwin(v112);
  v437 = &v387 - v115;
  v116 = __chkstk_darwin(v114);
  v416 = &v387 - v117;
  v118 = __chkstk_darwin(v116);
  v420 = &v387 - v119;
  v120 = __chkstk_darwin(v118);
  v419 = &v387 - v121;
  v122 = __chkstk_darwin(v120);
  v418 = &v387 - v123;
  v124 = __chkstk_darwin(v122);
  v447 = &v387 - v125;
  v126 = __chkstk_darwin(v124);
  v128 = &v387 - v127;
  v129 = __chkstk_darwin(v126);
  v131 = &v387 - v130;
  __chkstk_darwin(v129);
  v133 = &v387 - v132;
  v134 = sub_10007EBC0(&qword_1006B0038);
  v135 = __chkstk_darwin(v134 - 8);
  v404 = &v387 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v135);
  v138 = &v387 - v137;
  v139 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
  swift_beginAccess();
  v469 = v1;
  v466 = v139;
  sub_100007204(v1 + v139, v133, &qword_1006AF740);
  v140 = *(v76 + 48);
  v467 = v76 + 48;
  v468 = v140;
  v141 = v140(v133, 1, v75);
  v460 = v75;
  v461 = v76;
  if (v141)
  {
    v142 = &qword_1006AF740;
    v143 = v133;
  }

  else
  {
    (*(v76 + 16))(v94, v133, v75);
    sub_100012DF0(v133, &qword_1006AF740);
    FMFLocation.label.getter();
    (*(v76 + 8))(v94, v75);
    v144 = type metadata accessor for FMFLabel();
    v145 = *(v144 - 8);
    if ((*(v145 + 48))(v138, 1, v144) != 1)
    {
      v445 = FMFLabel.value.getter();
      v465 = v157;
      (*(v145 + 8))(v138, v144);
      v148 = v469;
      v149 = v460;
      v151 = v464;
      v146 = v468;
      v147 = v455;
      goto LABEL_16;
    }

    v142 = &qword_1006B0038;
    v143 = v138;
  }

  sub_100012DF0(v143, v142);
  v146 = v468;
  v147 = v455;
  v148 = v469;
  sub_100007204(v469 + v466, v131, &qword_1006AF740);
  v149 = v460;
  v150 = v146(v131, 1, v460);
  v151 = v464;
  if (v150)
  {
    sub_100012DF0(v131, &qword_1006AF740);
    v445 = 0;
    v465 = 0;
    goto LABEL_16;
  }

  v152 = v461;
  v153 = v445;
  (*(v461 + 16))(v445, v131, v149);
  sub_100012DF0(v131, &qword_1006AF740);
  v154 = v465;
  FMFLocation.address.getter();
  v155 = v152;
  v151 = v464;
  (*(v155 + 8))(v153, v149);
  v156 = v463;
  if ((*(v151 + 48))(v154, 1, v463) != 1)
  {
    v158 = FMFAddress.formattedAddressLines.getter();
    (*(v151 + 8))(v154, v156);
    if (v158)
    {
      if (v158[2])
      {
        v159 = v158[5];
        v445 = v158[4];
        v465 = v159;

        goto LABEL_15;
      }
    }

    v445 = 0;
    v465 = 0;
    goto LABEL_15;
  }

  sub_100012DF0(v154, &qword_1006B0040);
  v445 = 0;
  v465 = 0;
LABEL_15:
  v146 = v468;
LABEL_16:
  sub_100007204(v148 + v466, v128, &qword_1006AF740);
  if (v146(v128, 1, v149))
  {
    sub_100012DF0(v128, &qword_1006AF740);
    v160 = v448;
    (*(v151 + 56))(v448, 1, 1, v463);
  }

  else
  {
    v161 = v461;
    v162 = v454;
    (*(v461 + 16))(v454, v128, v149);
    sub_100012DF0(v128, &qword_1006AF740);
    v160 = v448;
    FMFLocation.address.getter();
    v146 = v468;
    v163 = v161;
    v147 = v455;
    (*(v163 + 8))(v162, v149);
  }

  v164 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  swift_beginAccess();
  v455 = v164;
  v165 = v148 + v164;
  v166 = v447;
  sub_100007204(v165, v447, &qword_1006AF740);
  if (v146(v166, 1, v149))
  {
    sub_100012DF0(v166, &qword_1006AF740);
    v167 = v463;
    (*(v151 + 56))(v147, 1, 1, v463);
  }

  else
  {
    v168 = v461;
    v169 = v454;
    (*(v461 + 16))(v454, v166, v149);
    sub_100012DF0(v166, &qword_1006AF740);
    FMFLocation.address.getter();
    (*(v168 + 8))(v169, v149);
    v167 = v463;
  }

  v170 = *(v457 + 48);
  v171 = v458;
  sub_100007204(v160, v458, &qword_1006B0040);
  v172 = v171;
  sub_100007204(v147, v171 + v170, &qword_1006B0040);
  v173 = v151 + 48;
  v174 = *(v151 + 48);
  v175 = (v174)(v172, 1, v167);
  v448 = v174;
  if (v175 == 1)
  {
    sub_100012DF0(v147, &qword_1006B0040);
    v176 = v458;
    sub_100012DF0(v160, &qword_1006B0040);
    if ((v174)(&v176[v170], 1, v167) == 1)
    {
      sub_100012DF0(v176, &qword_1006B0040);
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v177 = v173;
  v178 = v431;
  sub_100007204(v172, v431, &qword_1006B0040);
  v447 = v177;
  if ((v174)(v172 + v170, 1, v167) == 1)
  {
    sub_100012DF0(v147, &qword_1006B0040);
    v176 = v458;
    sub_100012DF0(v160, &qword_1006B0040);
    (*(v464 + 8))(v178, v167);
LABEL_27:
    sub_100012DF0(v176, &qword_1006B0100);
    goto LABEL_28;
  }

  v182 = v464;
  v183 = v172 + v170;
  v184 = v427;
  (*(v464 + 32))(v427, v183, v167);
  sub_1000BBEF8(&qword_1006B0108, &type metadata accessor for FMFAddress);
  v185 = v178;
  v186 = v172;
  v187 = dispatch thunk of static Equatable.== infix(_:_:)();
  v188 = *(v182 + 8);
  v188(v184, v463);
  sub_100012DF0(v147, &qword_1006B0040);
  sub_100012DF0(v160, &qword_1006B0040);
  v188(v185, v463);
  v167 = v463;
  v149 = v460;
  sub_100012DF0(v186, &qword_1006B0040);
  if (v187)
  {
LABEL_31:

    v189 = v418;
    sub_100007204(v469 + v455, v418, &qword_1006AF740);
    v190 = v468;
    if ((v468)(v189, 1, v149))
    {
      sub_100012DF0(v189, &qword_1006AF740);
      v191 = v419;
    }

    else
    {
      v213 = v461;
      v214 = v405;
      (*(v461 + 16))(v405, v189, v149);
      sub_100012DF0(v189, &qword_1006AF740);
      v215 = v404;
      FMFLocation.label.getter();
      (*(v213 + 8))(v214, v149);
      v216 = type metadata accessor for FMFLabel();
      v217 = *(v216 - 8);
      v218 = (*(v217 + 48))(v215, 1, v216);
      v191 = v419;
      if (v218 != 1)
      {
        v445 = FMFLabel.value.getter();
        v204 = v231;
        (*(v217 + 8))(v215, v216);
        v201 = v469;
        v203 = v450;
        goto LABEL_60;
      }

      sub_100012DF0(v215, &qword_1006B0038);
      v190 = v468;
    }

    sub_100007204(v469 + v455, v191, &qword_1006AF740);
    v219 = v190(v191, 1, v149);
    v220 = v415;
    if (v219)
    {
      v221 = &qword_1006AF740;
      v222 = v191;
    }

    else
    {
      v229 = v461;
      v230 = v393;
      (*(v461 + 16))(v393, v191, v149);
      sub_100012DF0(v191, &qword_1006AF740);
      FMFLocation.address.getter();
      (*(v229 + 8))(v230, v149);
      if ((v448)(v220, 1, v167) != 1)
      {
        v232 = FMFAddress.formattedAddressLines.getter();
        (*(v464 + 8))(v220, v167);
        v201 = v469;
        if (v232)
        {
          v203 = v450;
          if (v232[2])
          {
            v204 = v232[5];
            v445 = v232[4];
          }

          else
          {

            v445 = 0;
            v204 = 0;
          }
        }

        else
        {
          v445 = 0;
          v204 = 0;
          v203 = v450;
        }

LABEL_60:
        v233 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation;
        swift_beginAccess();
        v234 = v201 + v233;
        v235 = v420;
        sub_100007204(v234, v420, &qword_1006AF740);
        if ((v468)(v235, 1, v149) == 1)
        {
          sub_100012DF0(v235, &qword_1006AF740);
        }

        else
        {
          v236 = v461;
          v237 = v406;
          (*(v461 + 32))(v406, v235, v149);
          v238 = *(v236 + 16);
          v465 = v204;
          v239 = v416;
          v238(v416, v237, v149);
          (*(v236 + 56))(v239, 0, 1, v149);
          v240 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
          swift_beginAccess();
          v241 = v435;
          sub_100007204(v201 + v240, v435, &qword_1006AFFF8);
          sub_100097820(v239, v241);
          sub_100012DF0(v241, &qword_1006AFFF8);
          v242 = v239;
          v204 = v465;
          sub_100012DF0(v242, &qword_1006AF740);
          (*(v236 + 8))(v237, v149);
        }

        v202 = v456;
        goto LABEL_64;
      }

      v221 = &qword_1006B0040;
      v222 = v220;
    }

    sub_100012DF0(v222, v221);
    v445 = 0;
    v204 = 0;
    v201 = v469;
    v203 = v450;
    goto LABEL_60;
  }

LABEL_28:
  v179 = v437;
  sub_100007204(v469 + v466, v437, &qword_1006AF740);
  v180 = v468;
  if ((v468)(v179, 1, v149))
  {
    sub_100012DF0(v179, &qword_1006AF740);
    v181 = v446;
    (*(v464 + 56))(v446, 1, 1, v167);
  }

  else
  {
    v192 = v461;
    v193 = v454;
    (*(v461 + 16))(v454, v179, v149);
    sub_100012DF0(v179, &qword_1006AF740);
    v181 = v446;
    FMFLocation.address.getter();
    v194 = v193;
    v180 = v468;
    (*(v192 + 8))(v194, v149);
  }

  v196 = v439;
  v195 = v440;
  v197 = v438;
  sub_100007204(v469 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation, v438, &qword_1006AF740);
  if (v180(v197, 1, v149) == 1)
  {
    sub_100012DF0(v197, &qword_1006AF740);
    (*(v464 + 56))(v196, 1, 1, v167);
  }

  else
  {
    FMFLocation.address.getter();
    (*(v461 + 8))(v197, v149);
  }

  v198 = *(v457 + 48);
  sub_100007204(v181, v195, &qword_1006B0040);
  sub_100007204(v196, v195 + v198, &qword_1006B0040);
  v199 = v181;
  v200 = v448;
  if ((v448)(v195, 1, v167) != 1)
  {
    v205 = v417;
    sub_100007204(v195, v417, &qword_1006B0040);
    if ((v200)(v195 + v198, 1, v167) != 1)
    {
      v206 = v464;
      v207 = v427;
      (*(v464 + 32))(v427, v195 + v198, v167);
      sub_1000BBEF8(&qword_1006B0108, &type metadata accessor for FMFAddress);
      v208 = v205;
      v209 = dispatch thunk of static Equatable.== infix(_:_:)();
      v210 = *(v206 + 8);
      v210(v207, v167);
      sub_100012DF0(v196, &qword_1006B0040);
      sub_100012DF0(v446, &qword_1006B0040);
      v210(v208, v167);
      sub_100012DF0(v195, &qword_1006B0040);
      v201 = v469;
      v202 = v456;
      v203 = v450;
      v204 = v465;
      if ((v209 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_44;
    }

    sub_100012DF0(v196, &qword_1006B0040);
    sub_100012DF0(v446, &qword_1006B0040);
    (*(v464 + 8))(v205, v167);
LABEL_42:
    sub_100012DF0(v195, &qword_1006B0100);
    v201 = v469;
    v202 = v456;
    v203 = v450;
    v204 = v465;
    goto LABEL_64;
  }

  sub_100012DF0(v196, &qword_1006B0040);
  sub_100012DF0(v199, &qword_1006B0040);
  if ((v200)(v195 + v198, 1, v167) != 1)
  {
    goto LABEL_42;
  }

  sub_100012DF0(v195, &qword_1006B0040);
  v201 = v469;
  v202 = v456;
  v203 = v450;
  v204 = v465;
LABEL_44:
  v211 = v408;
  sub_100007204(v201 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendUnshiftedLocation, v408, &qword_1006AF740);
  v212 = v460;
  if ((v468)(v211, 1, v460) == 1)
  {
    sub_100012DF0(v211, &qword_1006AF740);
  }

  else
  {
    v223 = v461;
    v224 = v394;
    (*(v461 + 32))(v394, v211, v212);
    v225 = v416;
    (*(v223 + 16))(v416, v224, v212);
    (*(v223 + 56))(v225, 0, 1, v212);
    v226 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    v227 = v435;
    sub_100007204(v201 + v226, v435, &qword_1006AFFF8);
    sub_100097820(v225, v227);
    v202 = v456;
    sub_100012DF0(v227, &qword_1006AFFF8);
    v228 = v225;
    v204 = v465;
    sub_100012DF0(v228, &qword_1006AF740);
    (*(v223 + 8))(v224, v212);
  }

LABEL_64:
  v243 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  swift_beginAccess();
  v244 = v459;
  v245 = *(v459 + 16);
  v450 = v243;
  v246 = v449;
  v447 = v459 + 16;
  v440 = v245;
  (v245)(v449, v201 + v243, v462);
  v247 = *(v244 + 104);
  LODWORD(v439) = enum case for FMFLocationAlertTriggerType.scheduled(_:);
  v448 = (v244 + 104);
  v446 = v247;
  (v247)(v203);
  v248 = sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v457 = v248;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v465 = v204;
  if (v470 == v478 && v471 == v479)
  {
    v249 = 1;
  }

  else
  {
    v249 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v250 = *(v459 + 8);
  v251 = v203;
  v252 = v462;
  v250(v251, v462);
  v458 = v250;
  v250(v246, v252);

  v253 = &off_1006AE000;
  v254 = v451;
  if (v249)
  {
    v255 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    v256 = v432;
    sub_100007204(v201 + v255, v432, &qword_1006AFFF8);
    v258 = v433;
    v257 = v434;
    if ((*(v433 + 48))(v256, 1, v434) == 1)
    {

      sub_100012DF0(v256, &qword_1006AFFF8);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v259 = type metadata accessor for Logger();
      sub_100005B14(v259, qword_1006D4630);
      v260 = Logger.logObject.getter();
      v261 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v260, v261))
      {
        goto LABEL_84;
      }

      v262 = swift_slowAlloc();
      *v262 = 0;
      v263 = "No time zone to set alert on";
      goto LABEL_83;
    }

    v264 = v256;
    v265 = v414;
    (*(v258 + 32))(v414, v264, v257);
    v266 = v435;
    (*(v258 + 16))(v435, v265, v257);
    (*(v258 + 56))(v266, 0, 1, v257);
    swift_beginAccess();
    FMFSchedule.timeZone.setter();
    swift_endAccess();
    (*(v258 + 8))(v265, v257);
    v253 = &off_1006AE000;
  }

  v267 = *(v201 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedRadius);
  v268 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  swift_beginAccess();
  sub_100007204(v201 + v268, v254, &unk_1006BEF80);
  v269 = v453;
  v270 = *(v453 + 48);
  if (v270(v254, 1, v202) != 1)
  {
    (*(v269 + 32))(v452, v254, v202);
    v278 = v269;
    if (v253[380] != -1)
    {
      swift_once();
    }

    v279 = type metadata accessor for Logger();
    sub_100005B14(v279, qword_1006D4630);
    v280 = Logger.logObject.getter();
    v281 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      *v282 = 134217984;
      *(v282 + 4) = v267;
      _os_log_impl(&_mh_execute_header, v280, v281, "LocationAlertViewController: Updating an existing alert (radius=%fm)", v282, 0xCu);
    }

    (*(v278 + 16))(v443, v452, v202);
    v283 = v421;
    sub_100007204(v201 + v466, v421, &qword_1006AF740);
    v284 = v460;
    v285 = (v468)(v283, 1, v460);
    v286 = v423;
    if (v285)
    {
      sub_100012DF0(v283, &qword_1006AF740);
      v455 = 0;
    }

    else
    {
      v300 = v461;
      v301 = v454;
      (*(v461 + 16))(v454, v283, v284);
      sub_100012DF0(v283, &qword_1006AF740);
      v455 = FMFLocation.location.getter();
      (*(v300 + 8))(v301, v284);
    }

    v302 = v463;
    sub_100007204(v201 + v466, v286, &qword_1006AF740);
    if ((v468)(v286, 1, v284))
    {
      sub_100012DF0(v286, &qword_1006AF740);
      (*(v464 + 56))(v442, 1, 1, v302);
    }

    else
    {
      v303 = v461;
      v304 = v454;
      (*(v461 + 16))(v454, v286, v284);
      sub_100012DF0(v286, &qword_1006AF740);
      FMFLocation.address.getter();
      (*(v303 + 8))(v304, v284);
    }

    v305 = v450;
    v306 = v444;
    v307 = v462;
    v308 = v440;
    v440(v444, &v450[v201], v462);
    (*(v459 + 56))(v306, 0, 1, v307);
    sub_10009D68C();
    sub_10009D4F8();
    v308(v441, &v305[v201], v307);
    v309 = v424;
    (v446)(v424, v439, v307);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v470 == v476 && v471 == v477)
    {
      v310 = v309;
      v311 = v462;
      v312 = v458;
      v458(v310, v462);
      v312(v441, v311);
    }

    else
    {
      v313 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v314 = v309;
      v315 = v462;
      v316 = v458;
      v458(v314, v462);
      v316(v441, v315);

      if ((v313 & 1) == 0)
      {
        v323 = type metadata accessor for FMFSchedule();
        (*(*(v323 - 8) + 56))(v425, 1, 1, v323);
        goto LABEL_105;
      }
    }

    v317 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
    v318 = v469;
    swift_beginAccess();
    v319 = type metadata accessor for FMFSchedule();
    v320 = *(v319 - 8);
    v321 = v318 + v317;
    v322 = v425;
    (*(v320 + 16))(v425, v321, v319);
    (*(v320 + 56))(v322, 0, 1, v319);
LABEL_105:
    v324 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
    (*(*(v324 - 8) + 56))(v426, 1, 1, v324);
    type metadata accessor for FMFUpdateLocationAlertAction();
    swift_allocObject();
    v325 = FMFUpdateLocationAlertAction.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)();
    (*(v453 + 8))(v452, v456);
LABEL_106:

    v326 = v469;
    sub_100437A74(0);
    v327 = swift_allocObject();
    *(v327 + 16) = v326;

    v328 = v326;
    sub_1000FB600(v325, sub_1000BBEE0, v327);

    return;
  }

  v464 = v270;
  sub_100012DF0(v254, &unk_1006BEF80);
  if (v253[380] != -1)
  {
    swift_once();
  }

  v271 = type metadata accessor for Logger();
  v272 = sub_100005B14(v271, qword_1006D4630);
  v273 = Logger.logObject.getter();
  v274 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v273, v274))
  {
    v275 = swift_slowAlloc();
    *v275 = 134217984;
    *(v275 + 4) = v267;
    _os_log_impl(&_mh_execute_header, v273, v274, "LocationAlertViewController: Creating a new alert (radius=%fm)", v275, 0xCu);
    v201 = v469;
  }

  v276 = v422;
  sub_100007204(v201 + v466, v422, &qword_1006AF740);
  v277 = v460;
  if ((v468)(v276, 1, v460) == 1)
  {

    sub_100012DF0(v276, &qword_1006AF740);
    v260 = Logger.logObject.getter();
    v261 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v260, v261))
    {
LABEL_84:

      return;
    }

    v262 = swift_slowAlloc();
    *v262 = 0;
    v263 = "No location to set alert on";
LABEL_83:
    _os_log_impl(&_mh_execute_header, v260, v261, v263, v262, 2u);

    goto LABEL_84;
  }

  v287 = v461;
  v288 = *(v461 + 32);
  v289 = v436;
  v452 = (v461 + 32);
  v451 = v288;
  v288(v436, v276, v277);
  v290 = sub_10009D2F8()[2];

  if (v290)
  {
    v459 = v268;
    v449 = v272;
    v441 = *(v429 + 104);
    v442 = (v429 + 104);
    (v441)(v428, enum case for FMFLocationAlertAddressType.custom(_:), v430);
    v291 = *(v287 + 16);
    v292 = v395;
    v466 = v287 + 16;
    v463 = v291;
    (v291)(v395, v289, v277);
    v443 = *(v287 + 56);
    v444 = (v287 + 56);
    (v443)(v292, 0, 1, v277);
    v293 = *(v407 + 48);
    v294 = v396;
    sub_100007204(v292, v396, &qword_1006AF740);
    sub_100007204(v201 + v455, v294 + v293, &qword_1006AF740);
    v295 = v468;
    if ((v468)(v294, 1, v277) == 1)
    {
      sub_100012DF0(v292, &qword_1006AF740);
      v296 = v295(v294 + v293, 1, v277);
      v297 = v436;
      if (v296 == 1)
      {
        v298 = v469;
        v299 = v403;
LABEL_116:
        v343 = v459;
        sub_100012DF0(v294, &qword_1006AF740);
LABEL_123:
        v350 = v428;
        v351 = v430;
        (*(v429 + 8))(v428, v430);
        (v441)(v350, enum case for FMFLocationAlertAddressType.currentLocation(_:), v351);
LABEL_124:
        sub_100007204(v298 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v299, &qword_1006B0050);
        v352 = type metadata accessor for FMFFriend();
        v353 = v298;
        v354 = *(v352 - 8);
        if ((*(v354 + 48))(v299, 1, v352) == 1)
        {
          sub_100012DF0(v299, &qword_1006B0050);
          v355 = v389;
          sub_100007204(v353 + v343, v389, &unk_1006BEF80);
          v356 = v456;
          v357 = v353;
          if ((v464)(v355, 1, v456))
          {
            sub_100012DF0(v355, &unk_1006BEF80);
            v468 = 0;
            v467 = 0;
          }

          else
          {
            v360 = v453;
            v361 = v390;
            (*(v453 + 16))(v390, v355, v356);
            sub_100012DF0(v355, &unk_1006BEF80);
            v468 = FMFLocationAlert.friendId.getter();
            v467 = v362;
            (*(v360 + 8))(v361, v356);
          }

          v359 = v356;
        }

        else
        {
          v468 = FMFFriend.identifier.getter();
          v467 = v358;
          (*(v354 + 8))(v299, v352);
          v357 = v353;
          v359 = v456;
        }

        v363 = v397;
        sub_100007204(v357 + v343, v397, &unk_1006BEF80);
        if ((v464)(v363, 1, v359))
        {
          sub_100012DF0(v363, &unk_1006BEF80);
          v464 = 0;
        }

        else
        {
          v364 = v453;
          v365 = v390;
          (*(v453 + 16))(v390, v363, v359);
          sub_100012DF0(v363, &unk_1006BEF80);
          v464 = FMFLocationAlert.followerIds.getter();
          (*(v364 + 8))(v365, v359);
        }

        v366 = v357;
        sub_10009D4F8();
        sub_10009D68C();
        (v463)(v409, v436, v460);
        (*(v429 + 16))(v412, v428, v430);
        (*(v399 + 16))(v413, v357 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_alertTarget, v400);
        v367 = v450;
        v368 = v462;
        v369 = v440;
        v440(v411, &v450[v366], v462);
        v369(v410, &v367[v366], v368);
        v370 = v398;
        (v446)(v398, v439, v368);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v470 == v476 && v471 == v477)
        {
          v371 = v370;
          v372 = v462;
          v373 = v458;
          v458(v371, v462);
          v373(v410, v372);

          v374 = v461;
          v375 = v401;
        }

        else
        {
          v376 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v377 = v370;
          v378 = v462;
          v379 = v458;
          v458(v377, v462);
          v379(v410, v378);

          v374 = v461;
          v375 = v401;
          if ((v376 & 1) == 0)
          {
            v384 = type metadata accessor for FMFSchedule();
            (*(*(v384 - 8) + 56))(v375, 1, 1, v384);
            goto LABEL_139;
          }
        }

        v380 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
        v381 = v469;
        swift_beginAccess();
        v382 = type metadata accessor for FMFSchedule();
        v383 = *(v382 - 8);
        (*(v383 + 16))(v375, v381 + v380, v382);
        (*(v383 + 56))(v375, 0, 1, v382);
LABEL_139:
        v385 = v460;
        v386 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
        (*(*(v386 - 8) + 56))(v402, 1, 1, v386);
        type metadata accessor for FMFAddLocationAlertAction();
        swift_allocObject();
        v325 = FMFAddLocationAlertAction.init(friendId:followerIds:emails:phoneNumbers:location:address:label:addressType:radius:locationAlertTarget:triggerType:repeating:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)();
        (*(v429 + 8))(v428, v430);
        (*(v374 + 8))(v436, v385);
        goto LABEL_106;
      }
    }

    else
    {
      v334 = v388;
      sub_100007204(v294, v388, &qword_1006AF740);
      if (v295(v294 + v293, 1, v277) != 1)
      {
        v345 = v454;
        v451(v454, v294 + v293, v277);
        sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
        LODWORD(v455) = dispatch thunk of static Equatable.== infix(_:_:)();
        v346 = *(v461 + 8);
        v346(v345, v277);
        sub_100012DF0(v292, &qword_1006AF740);
        v346(v334, v277);
        sub_100012DF0(v294, &qword_1006AF740);
        v298 = v469;
        v297 = v436;
        v299 = v403;
        v343 = v459;
        if (v455)
        {
          goto LABEL_123;
        }

LABEL_113:
        v335 = v392;
        v336 = v460;
        (v463)(v392, v297, v460);
        (v443)(v335, 0, 1, v336);
        v337 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation;
        v338 = *(v407 + 48);
        v339 = v391;
        sub_100007204(v335, v391, &qword_1006AF740);
        v340 = v469 + v337;
        v298 = v469;
        sub_100007204(v340, v339 + v338, &qword_1006AF740);
        v341 = v468;
        if ((v468)(v339, 1, v336) == 1)
        {
          sub_100012DF0(v335, &qword_1006AF740);
          v342 = v341(v339 + v338, 1, v336);
          v299 = v403;
          if (v342 == 1)
          {
            v294 = v339;
            goto LABEL_116;
          }
        }

        else
        {
          v344 = v387;
          sub_100007204(v339, v387, &qword_1006AF740);
          if (v341(v339 + v338, 1, v336) != 1)
          {
            v347 = v454;
            v451(v454, v339 + v338, v336);
            sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
            v348 = v339;
            LODWORD(v468) = dispatch thunk of static Equatable.== infix(_:_:)();
            v349 = *(v461 + 8);
            v349(v347, v336);
            sub_100012DF0(v392, &qword_1006AF740);
            v349(v344, v336);
            v298 = v469;
            sub_100012DF0(v348, &qword_1006AF740);
            v343 = v459;
            v299 = v403;
            if ((v468 & 1) == 0)
            {
              goto LABEL_124;
            }

            goto LABEL_123;
          }

          sub_100012DF0(v392, &qword_1006AF740);
          (*(v461 + 8))(v344, v336);
          v299 = v403;
        }

        sub_100012DF0(v339, &qword_1006B0020);
        v343 = v459;
        goto LABEL_124;
      }

      sub_100012DF0(v292, &qword_1006AF740);
      (*(v461 + 8))(v334, v277);
      v297 = v436;
    }

    sub_100012DF0(v294, &qword_1006B0020);
    goto LABEL_113;
  }

  v329 = Logger.logObject.getter();
  v330 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v329, v330))
  {
    v331 = swift_slowAlloc();
    *v331 = 0;
    _os_log_impl(&_mh_execute_header, v329, v330, "No friend handles to set alert on", v331, 2u);
    v289 = v436;
  }

  v332 = swift_allocObject();
  *(v332 + 16) = 0;
  *(v332 + 24) = 0;
  v474 = sub_100097224;
  v475 = v332;
  v470 = _NSConcreteStackBlock;
  v471 = 1107296256;
  v472 = sub_100004AE4;
  v473 = &unk_100624A88;
  v333 = _Block_copy(&v470);

  [v201 dismissViewControllerAnimated:1 completion:v333];
  _Block_release(v333);
  (*(v461 + 8))(v289, v460);
}

void sub_1000A25C0(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_10007EBC0(&qword_1006B0050);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v106 - v9;
  v11 = sub_10007EBC0(&unk_1006B0110);
  __chkstk_darwin(v11 - 8);
  v13 = &v106 - v12;
  v14 = type metadata accessor for FMFActionsError();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v106 - v19;
  sub_1003EB538(0);
  if (!a2)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    aBlock[4] = sub_100097224;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100624AD8;
    v46 = _Block_copy(aBlock);

    [a3 dismissViewControllerAnimated:1 completion:v46];
    _Block_release(v46);
    return;
  }

  v108 = v18;
  v109 = v13;
  swift_errorRetain();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005B14(v21, qword_1006D4630);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  v24 = os_log_type_enabled(v22, v23);
  v110 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v107 = v20;
    v26 = v25;
    v106 = swift_slowAlloc();
    aBlock[0] = v106;
    *v26 = 136315138;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    v29 = v15;
    v30 = v14;
    v31 = v10;
    v32 = v8;
    v33 = a2;
    v34 = sub_100005B4C(v27, v28, aBlock);

    *(v26 + 4) = v34;
    a2 = v33;
    v8 = v32;
    v10 = v31;
    v14 = v30;
    v15 = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error creating action to save alert %s", v26, 0xCu);
    sub_100006060(v106);

    v20 = v107;
  }

  v35 = v109;
  swift_getErrorValue();
  if (sub_1000A3444(v114))
  {
    v36 = objc_opt_self();
    v37 = [v36 mainBundle];
    v116._object = 0x800000010057ABB0;
    v38._countAndFlagsBits = 0xD00000000000002ALL;
    v38._object = 0x800000010057B820;
    v39.value._object = 0x800000010057AB90;
    v116._countAndFlagsBits = 0xD000000000000017;
    v39.value._countAndFlagsBits = 0xD000000000000012;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v116);

    v41 = [v36 mainBundle];
    v117._object = 0x800000010057ABB0;
    v42._countAndFlagsBits = 0xD00000000000002CLL;
    v42._object = 0x800000010057B850;
    v43.value._object = 0x800000010057AB90;
    v117._countAndFlagsBits = 0xD000000000000017;
    v43.value._countAndFlagsBits = 0xD000000000000012;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v117);

    sub_1000A3844();
  }

  else
  {
    aBlock[0] = a2;
    v109 = a2;
    swift_errorRetain();
    sub_10007EBC0(&unk_1006AF7B0);
    v47 = swift_dynamicCast();
    v48 = *(v15 + 56);
    v49 = v110;
    if (v47)
    {
      v48(v35, 0, 1, v14);
      (*(v15 + 32))(v20, v35, v14);
      v50 = v108;
      (*(v15 + 104))(v108, enum case for FMFActionsError.unavailableInDemoMode(_:), v14);
      v51 = static FMFActionsError.== infix(_:_:)();
      v52 = v20;
      v53 = *(v15 + 8);
      v53(v50, v14);
      if (v51)
      {
        v54 = [objc_opt_self() mainBundle];
        v118._object = 0x800000010057B7E0;
        v55._countAndFlagsBits = 0xD00000000000001ELL;
        v55._object = 0x800000010057B7C0;
        v118._countAndFlagsBits = 0xD000000000000030;
        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v118);

        sub_1000A3B40();

        v53(v52, v14);
        return;
      }

      v53(v52, v14);
    }

    else
    {
      v48(v35, 1, 1, v14);
      sub_100012DF0(v35, &unk_1006B0110);
    }

    swift_getErrorValue();
    if (sub_1000A3D48(v113))
    {
      sub_100007204(&v49[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], v10, &qword_1006B0050);
      v57 = type metadata accessor for FMFFriend();
      v58 = *(v57 - 8);
      if ((*(v58 + 48))(v10, 1, v57) == 1)
      {
        sub_100012DF0(v10, &qword_1006B0050);
        v59 = [objc_opt_self() mainBundle];
        v119._object = 0x800000010057ABB0;
        v60._countAndFlagsBits = 0xD00000000000002ELL;
        v60._object = 0x800000010057B730;
        v61.value._object = 0x800000010057AB90;
        v119._countAndFlagsBits = 0xD000000000000017;
        v61.value._countAndFlagsBits = 0xD000000000000012;
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v119);
        countAndFlagsBits = v63._countAndFlagsBits;
        object = v63._object;
      }

      else
      {
        countAndFlagsBits = FMFFriend.name.getter();
        object = v75;
        (*(v58 + 8))(v10, v57);
      }

      v76 = *&v49[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem];
      if (v76)
      {
        [v76 setEnabled:1];
      }

      v77 = objc_opt_self();
      v78 = [v77 mainBundle];
      v121._object = 0x800000010057ABB0;
      v79._countAndFlagsBits = 0xD000000000000025;
      v79._object = 0x800000010057B760;
      v80.value._object = 0x800000010057AB90;
      v121._countAndFlagsBits = 0xD000000000000017;
      v80.value._countAndFlagsBits = 0xD000000000000012;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v78, v81, v121);

      v82 = [v77 mainBundle];
      v122._object = 0x800000010057ABB0;
      v83._countAndFlagsBits = 0xD000000000000027;
      v83._object = 0x800000010057B790;
      v84.value._object = 0x800000010057AB90;
      v122._countAndFlagsBits = 0xD000000000000017;
      v84.value._countAndFlagsBits = 0xD000000000000012;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v122);

      sub_10007EBC0(&unk_1006B20B0);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_100552220;
      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = sub_10008EE84();
      *(v86 + 32) = countAndFlagsBits;
      *(v86 + 40) = object;
      String.init(format:_:)();

      sub_1000A4330();
    }

    else
    {
      swift_getErrorValue();
      if (sub_1000A4614(v111, v112))
      {
        sub_100007204(&v49[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], v8, &qword_1006B0050);
        v66 = type metadata accessor for FMFFriend();
        v67 = *(v66 - 8);
        if ((*(v67 + 48))(v8, 1, v66) == 1)
        {
          sub_100012DF0(v8, &qword_1006B0050);
          v68 = [objc_opt_self() mainBundle];
          v120._object = 0x800000010057ABB0;
          v69._countAndFlagsBits = 0xD000000000000036;
          v69._object = 0x800000010057B690;
          v70.value._object = 0x800000010057AB90;
          v120._countAndFlagsBits = 0xD000000000000017;
          v70.value._countAndFlagsBits = 0xD000000000000012;
          v71._countAndFlagsBits = 0;
          v71._object = 0xE000000000000000;
          v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v120);
          v73 = v72._countAndFlagsBits;
          v74 = v72._object;
        }

        else
        {
          v73 = FMFFriend.name.getter();
          v74 = v94;
          (*(v67 + 8))(v8, v66);
        }

        v95 = *&v110[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem];
        if (v95)
        {
          [v95 setEnabled:1];
        }

        v96 = objc_opt_self();
        v97 = [v96 mainBundle];
        v125._object = 0x800000010057ABB0;
        v98._countAndFlagsBits = 0xD00000000000002DLL;
        v98._object = 0x800000010057B6D0;
        v99.value._object = 0x800000010057AB90;
        v125._countAndFlagsBits = 0xD000000000000017;
        v99.value._countAndFlagsBits = 0xD000000000000012;
        v100._countAndFlagsBits = 0;
        v100._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v98, v99, v97, v100, v125);

        v101 = [v96 mainBundle];
        v126._object = 0x800000010057ABB0;
        v102._countAndFlagsBits = 0xD00000000000002FLL;
        v102._object = 0x800000010057B700;
        v103.value._object = 0x800000010057AB90;
        v126._countAndFlagsBits = 0xD000000000000017;
        v103.value._countAndFlagsBits = 0xD000000000000012;
        v104._countAndFlagsBits = 0;
        v104._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v102, v103, v101, v104, v126);

        sub_10007EBC0(&unk_1006B20B0);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_100552220;
        *(v105 + 56) = &type metadata for String;
        *(v105 + 64) = sub_10008EE84();
        *(v105 + 32) = v73;
        *(v105 + 40) = v74;
        String.init(format:_:)();

        sub_1000A4330();
      }

      else
      {
        v87 = objc_opt_self();
        v88 = [v87 mainBundle];
        v123._object = 0x800000010057B5E0;
        v89._countAndFlagsBits = 0xD000000000000022;
        v89._object = 0x800000010057B5B0;
        v123._countAndFlagsBits = 0xD000000000000034;
        v90._countAndFlagsBits = 0;
        v90._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v123);

        v91 = [v87 mainBundle];
        v124._object = 0x800000010057B650;
        v92._countAndFlagsBits = 0xD000000000000024;
        v92._object = 0x800000010057B620;
        v124._countAndFlagsBits = 0xD000000000000036;
        v93._countAndFlagsBits = 0;
        v93._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v124);

        sub_1000A3B40();
      }
    }
  }
}

uint64_t sub_1000A3444(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v6, v4, a1);
  }

  v7 = _convertErrorToNSError(_:)();

  v8 = [v7 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_26:

      return 0;
    }
  }

  v15 = [v7 code];
  if (v15 != 2)
  {
    v34 = v15;

    return v34 == 110;
  }

  v16 = [v7 userInfo];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {
    goto LABEL_28;
  }

  v20 = sub_10000726C(v18, v19);
  v22 = v21;

  if (v22)
  {

    sub_100006004(*(v17 + 56) + 32 * v20, v37);

    sub_1000072E4(v37, &v38);
    sub_10007EBC0(&qword_1006B0148);
    swift_dynamicCast();
    v23 = v36 + 64;
    v24 = 1 << *(v36 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v36 + 64);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    while (v26)
    {
LABEL_22:
      v26 &= v26 - 1;
      swift_getErrorValue();
      v30 = v35[2];
      v31 = v35[3];
      swift_errorRetain();
      v32 = sub_1000A3444(v30, v31);

      if (v32)
      {

        return 1;
      }
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        goto LABEL_26;
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        v28 = v29;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:

    __break(1u);
  }

  __break(1u);
  return result;
}