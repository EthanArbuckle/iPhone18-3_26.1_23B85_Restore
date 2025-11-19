uint64_t sub_100238BD0(uint64_t a1)
{

  sub_10005CD20(a1 + qword_1006B7550);
  v2 = *(a1 + qword_1006B7570);

  return sub_10001835C(v2);
}

void sub_100238C90()
{
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4D08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMUnknownItemsListDataSource: applicationDidEnterBackground", v3, 2u);
  }

  sub_1002393B0();
}

void sub_100238D7C(void *a1)
{
  v1 = a1;
  sub_100238C90();
}

void sub_100238DC8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4D08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005B4C(0x6470557472617473, 0xEF2928676E697461, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "FMUnknownItemsListDataSource: %s", v11, 0xCu);
    sub_100006060(v12);
  }

  if ((v1[qword_1006B7568] & 1) == 0)
  {
    v13 = *(*&v1[qword_1006B7510] + 24);
    type metadata accessor for FMDevicesSubscription();
    v14 = swift_allocObject();
    *(v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100630920;
    swift_unknownObjectWeakAssign();
    v15 = *(v13 + 16);

    os_unfair_lock_lock((v15 + 24));
    sub_10000E7C0((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));

    *&v1[qword_1006B7548] = v14;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMUnknownItemsListDataSource: Scanning disabled, no session running.", v18, 2u);
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    aBlock[4] = sub_10023FAC4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100630BA0;
    v21 = _Block_copy(aBlock);
    v22 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10023EF54(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v25 + 8))(v4, v2);
    (*(v5 + 8))(v7, v24);
  }
}

uint64_t sub_10023931C(uint64_t a1)
{
  v1 = *(a1 + qword_1006B7560);
  *(a1 + qword_1006B7560) = 1;

  v2 = FMIPManager.unknownItems.getter();

  sub_10023A060(v2, v1);
}

void sub_1002393B0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4D08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005B4C(0x61647055706F7473, 0xEE002928676E6974, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "FMUnknownItemsListDataSource: %s", v11, 0xCu);
    sub_100006060(v12);
  }

  if (v1[qword_1006B7568] == 1)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMUnknownItemsListDataSource: Stopping discovery", v15, 2u);
    }

    if (*&v1[qword_1006B7548])
    {
      v16 = *(*(*&v1[qword_1006B7510] + 24) + 16);

      os_unfair_lock_lock((v16 + 24));
      sub_10008FB6C((v16 + 16));
      os_unfair_lock_unlock((v16 + 24));
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMUnknownItemsListDataSource: Scanning disabled, no session running.", v19, 2u);
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    aBlock[4] = sub_10023FA94;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100630B50;
    v22 = _Block_copy(aBlock);
    v23 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10023EF54(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v26 + 8))(v4, v2);
    (*(v5 + 8))(v7, v25);
  }
}

void sub_100239920(void *a1)
{
  dispatch thunk of UITableViewDiffableDataSource.defaultRowAnimation.setter();
  [a1 setDelegate:v1];
  sub_10000905C(0, &unk_1006B7840);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  [a1 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v4];

  [a1 setSectionHeaderTopPadding:0.0];
  v5 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v5];

  type metadata accessor for FMUnknownItemListCellView();
  v6 = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();
  [a1 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = String._bridgeToObjectiveC()();
  [a1 registerClass:v6 forCellReuseIdentifier:v8];

  type metadata accessor for FMAccessoryDiscoverySearchingCell();
  v9 = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();
  [a1 registerClass:v9 forCellReuseIdentifier:v10];
}

uint64_t sub_100239AEC()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v0 = dispatch thunk of FMIPUnknownAccessoryDiscoveryController.callbacks.modify();
  FMIPUnknownAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.setter();
  v0(v4, 0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v1 = dispatch thunk of FMIPUnknownAccessoryDiscoveryController.callbacks.modify();
  FMIPUnknownAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.setter();
  v1(v4, 0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = dispatch thunk of FMIPUnknownAccessoryDiscoveryController.callbacks.modify();
  FMIPUnknownAccessoryDiscoveryController.Callbacks.accessoryDiscoveryFinished.setter();
  v2(v4, 0);
}

uint64_t sub_100239CA0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = FMIPManager.unknownItems.getter();

    sub_10023A060(v2, 1);
  }

  return result;
}

uint64_t sub_100239D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v10 = *(v16 - 8);
  __chkstk_darwin(v16);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a3;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a4;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10023EF54(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v16);
}

void sub_10023A00C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10023D558();
  }
}

uint64_t sub_10023A060(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v9 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4D08);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v6;
    v17 = v9;
    v18 = a1;
    v19 = a2;
    v20 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100005B4C(0xD000000000000022, 0x80000001005885F0, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_100006060(v20);
    a2 = v19;
    a1 = v18;
    v9 = v17;
    v6 = v25;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2 & 1;
  aBlock[4] = sub_10023F958;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100630A10;
  v22 = _Block_copy(aBlock);
  v23 = v3;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10023EF54(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v8, v6);
  (*(v9 + 8))(v11, v26);
}

uint64_t sub_10023A478(char *a1, uint64_t *a2, int a3)
{
  v107 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v110 = *(v8 - 8);
  __chkstk_darwin(v8);
  v109 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v118 = *(v10 - 8);
  __chkstk_darwin(v10);
  v99 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMUnknownItemCellViewModel();
  v115 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v100 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = &v89 - v15;
  v114 = sub_10007EBC0(&qword_1006B77A8);
  __chkstk_darwin(v114);
  v17 = &v89 - v16;
  v18 = *&a1[qword_1006B7530];
  v108 = a1;
  v19 = sub_10023B63C(a2);
  swift_beginAccess();
  v20 = v19[2];
  swift_beginAccess();
  v21 = *(v18 + 16);

  v22 = sub_100236EA8(v20, v21);

  if (v22)
  {
    swift_beginAccess();
    v23 = v19[3];
    swift_beginAccess();
    v24 = *(v18 + 24);

    v25 = sub_100237460(v23, v24);

    if (v25)
    {
    }
  }

  v102 = v7;
  v104 = v5;
  v106 = sub_10007EBC0(&qword_1006B7810);
  v101 = swift_allocBox();
  v27 = v26;
  v28 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  sub_10023F964();
  sub_10023EF54(&unk_1006B7820, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v105 = v27;
  NSDiffableDataSourceSnapshot.init()();
  swift_beginAccess();
  v29 = *(v19[3] + 16);
  v117 = v10;
  if (v29)
  {
    sub_1001C2758(0);
    if (v30)
    {
      sub_10007EBC0(&qword_1006B7838);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100552220;
      *(v31 + 32) = 0;

      NSDiffableDataSourceSnapshot.appendSections(_:)(v31);

      LOBYTE(aBlock[0]) = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }

  if (*(v19[3] + 16))
  {
    sub_1001C2758(1);
    if (v32)
    {

      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100622650);
      LOBYTE(aBlock[0]) = 1;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }

  v103 = v8;
  if (*(v19[3] + 16))
  {
    sub_1001C2758(2);
    if (v33)
    {

      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100622628);
      LOBYTE(aBlock[0]) = 2;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }

  v112 = v19;
  v34 = v19[2];
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v116 = v118 + 16;
  v96 = (v118 + 8);
  v98 = v28 - 8;
  result = swift_bridgeObjectRetain_n();
  v40 = 0;
  *&v41 = 136315138;
  v95 = v41;
  v97 = xmmword_100552220;
  while (v37)
  {
LABEL_22:
    v43 = __clz(__rbit64(v37)) | (v40 << 6);
    v44 = *(v118 + 16);
    v44(v17, *(v34 + 48) + *(v118 + 72) * v43, v117);
    v45 = *(v115 + 72);
    sub_10023EE8C(*(v34 + 56) + v45 * v43, &v17[*(v114 + 48)], type metadata accessor for FMUnknownItemCellViewModel);
    v46 = *(v18 + 16);
    if (!*(v46 + 16))
    {
      goto LABEL_16;
    }

    v47 = sub_1001B3964(v17);
    if ((v48 & 1) == 0)
    {

      goto LABEL_16;
    }

    sub_10023EE8C(*(v46 + 56) + v47 * v45, v113, type metadata accessor for FMUnknownItemCellViewModel);

    v49 = v112[2];
    if (!*(v49 + 16))
    {
      goto LABEL_29;
    }

    v50 = sub_1001B3964(v17);
    if ((v51 & 1) == 0)
    {

LABEL_29:
      sub_10023EEF4(v113, type metadata accessor for FMUnknownItemCellViewModel);
      goto LABEL_16;
    }

    v52 = *(v49 + 56) + v50 * v45;
    v53 = v100;
    sub_10023EE8C(v52, v100, type metadata accessor for FMUnknownItemCellViewModel);

    v54 = v113;
    if (sub_10010BF14(v113, v53))
    {
      sub_10023EEF4(v53, type metadata accessor for FMUnknownItemCellViewModel);
      v55 = v54;
    }

    else
    {
      if (qword_1006AED78 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100005B14(v56, qword_1006D4D08);
      v44(v99, v17, v117);
      v57 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v94))
      {
        v58 = swift_slowAlloc();
        v93 = v58;
        v92 = swift_slowAlloc();
        aBlock[0] = v92;
        *v58 = v95;
        sub_10023EF54(&qword_1006B7830, &type metadata accessor for UUID);
        v91 = v57;
        v59 = v117;
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        (*v96)(v99, v59);
        v62 = sub_100005B4C(v90, v61, aBlock);

        v63 = v93;
        *(v93 + 1) = v62;
        v64 = v91;
        _os_log_impl(&_mh_execute_header, v91, v94, "FMUnknownItemsListDataSource: Reconfiguring item: %s)", v63, 0xCu);
        sub_100006060(v92);
      }

      else
      {

        (*v96)(v99, v117);
      }

      sub_10007EBC0(&qword_1006AF928);
      v65 = (*(*v98 + 80) + 32) & ~*(*v98 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = v97;
      v44((v66 + v65), v17, v117);
      v67 = sub_10007EBC0(&qword_1006B76D0);
      (*(*(v67 - 8) + 56))(v66 + v65, 0, 2, v67);
      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v66);

      sub_10023EEF4(v100, type metadata accessor for FMUnknownItemCellViewModel);
      v55 = v113;
    }

    sub_10023EEF4(v55, type metadata accessor for FMUnknownItemCellViewModel);
LABEL_16:
    v37 &= v37 - 1;
    result = sub_100012DF0(v17, &qword_1006B77A8);
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v42 >= v38)
    {
      break;
    }

    v37 = *(v34 + 64 + 8 * v42);
    ++v40;
    if (v37)
    {
      v40 = v42;
      goto LABEL_22;
    }
  }

  v68 = v112;
  result = sub_1002375E8(v112);
  v69 = 0;
  v70 = 0;
  v71 = v68[3];
  v72 = 1 << *(v71 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v71 + 64);
  v75 = (v72 + 63) >> 6;
  while (v74)
  {
    v76 = v69;
LABEL_46:
    v77 = __clz(__rbit64(v74));
    v74 &= v74 - 1;
    v78 = *(*(*(v71 + 56) + ((v76 << 9) | (8 * v77))) + 16);
    v79 = __OFADD__(v70, v78);
    v70 += v78;
    if (v79)
    {
      __break(1u);
LABEL_49:
      sub_10000905C(0, &qword_1006AEDC0);
      v80 = static OS_dispatch_queue.main.getter();
      v81 = swift_allocObject();
      *(v81 + 16) = v107 & 1;
      v82 = v108;
      v83 = v101;
      *(v81 + 24) = v108;
      *(v81 + 32) = v83;
      *(v81 + 40) = v70;
      aBlock[4] = sub_10023F9B8;
      aBlock[5] = v81;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100630A60;
      v84 = _Block_copy(aBlock);
      v85 = v82;

      v86 = v109;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10023EF54(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v87 = v102;
      v88 = v104;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v84);

      (*(v111 + 8))(v87, v88);
      (*(v110 + 8))(v86, v103);
    }
  }

  while (1)
  {
    v76 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v76 >= v75)
    {
      goto LABEL_49;
    }

    v74 = *(v71 + 64 + 8 * v76);
    ++v69;
    if (v74)
    {
      v69 = v76;
      goto LABEL_46;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_10023B344(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10007EBC0(&qword_1006B7810);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = swift_projectBox();
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4D08);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMUnknownItemsListDataSource: Reloading data (animated: %{BOOL}d)", v15, 8u);
  }

  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  (*(v8 + 8))(v10, v7);

  v16 = dispatch thunk of FMIPUnknownAccessoryDiscoveryController.discoveredAccessories.getter();
  v17 = v16;
  v18 = *(v16 + 16);
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = sub_10008CAF4(*(v16 + 16), 0);
  v20 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v21 = sub_1004A2EC0(&v24, &v19[(*(v20 + 80) + 32) & ~*(v20 + 80)], v18, v17);
  sub_10000BEC8();
  if (v21 != v18)
  {
    __break(1u);
LABEL_8:

    v19 = _swiftEmptyArrayStorage;
  }

  sub_1000E9968(v19);

  v23 = a2 + qword_1006B7558;
  *v23 = a4;
  *(v23 + 8) = 0;
  return result;
}

void *sub_10023B63C(uint64_t *a1)
{
  v112 = a1;
  v92 = sub_10007EBC0(&unk_1006B77E0);
  v111 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = v67 - v1;
  v2 = sub_10007EBC0(&qword_1006B5CB0);
  __chkstk_darwin(v2 - 8);
  v90 = v67 - v3;
  v89 = type metadata accessor for UUID();
  v110 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  v75 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v95 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FMUnknownItemCellViewModel();
  v109 = *(v87 - 8);
  __chkstk_darwin(v87);
  v101 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPUnknownItemAlertState();
  v102 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v74 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v67 - v12;
  __chkstk_darwin(v11);
  v15 = v67 - v14;
  v16 = type metadata accessor for FMIPUnknownItem();
  v107 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v86 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v108 = v67 - v19;
  v72 = type metadata accessor for Date();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v21 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMUnknownItemsListDataSource.ViewModel();
  v22 = swift_allocObject();
  v22[2] = sub_100153C5C(_swiftEmptyArrayStorage);
  v85 = v22 + 2;
  v22[3] = sub_100153E78(_swiftEmptyArrayStorage);
  v23 = sub_100153FB4(_swiftEmptyArrayStorage);
  v94 = v22;
  v22[4] = v23;
  v84 = (v22 + 4);
  sub_10007EBC0(&qword_1006B77F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0;
  *(inited + 40) = _swiftEmptyArrayStorage;
  *(inited + 48) = 1;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = 2;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v25 = sub_100153E78(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B77F8);
  swift_arrayDestroy();
  swift_beginAccess();
  v22[3] = v25;

  Date.init()();
  v70 = v21;
  v114 = v21;
  v116 = v112;

  v26 = 0;
  sub_1004CB91C(sub_10023F8B0, v113);
  v27 = v116[2];
  if (v27)
  {
    v100 = *(v93 + qword_1006B7520);
    v105 = *(v93 + qword_1006B7540);
    v104 = *(v107 + 16);
    v28 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v67[1] = v116;
    v29 = v116 + v28;
    v99 = (v102 + 104);
    v103 = (v102 + 8);
    v73 = (v102 + 88);
    v80 = (v109 + 56);
    v79 = (v111 + 8);
    v78 = (v110 + 8);
    v98 = (v107 + 8);
    v77 = qword_1006B7518;
    v107 += 16;
    v97 = *(v107 + 56);
    LODWORD(v102) = enum case for FMIPUnknownItemAlertState.triggered(_:);
    v96 = enum case for FMIPUnknownItemAlertState.cleared(_:);
    v76 = enum case for FMIPUnknownItemAlertState.ignored(_:);
    v69 = enum case for FMIPUnknownItemAlertState.discovered(_:);
    v68 = enum case for FMIPUnknownItemAlertState.unknown(_:);
    v82 = v13;
    v81 = v15;
    v30 = v108;
    v83 = v8;
    v106 = v16;
    do
    {
      v111 = v27;
      v110 = v29;
      v104(v30);
      v41 = dispatch thunk of FMIPUnknownAccessoryDiscoveryController.discoveredAccessories.getter();
      __chkstk_darwin(v41);
      v67[-2] = v30;
      LODWORD(v109) = sub_10008A588(sub_10023F8D0, &v67[-4], v41);
      v112 = v26;
      v30 = v108;

      FMIPUnknownItem.alertState.getter();
      v42 = *v99;
      (*v99)(v13, v102, v8);
      sub_10023EF54(&unk_1006AF8D0, &type metadata accessor for FMIPUnknownItemAlertState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v43 = *v103;
      (*v103)(v13, v8);
      v43(v15, v8);
      if (v116 == v115 || (FMIPUnknownItem.alertState.getter(), v42(v13, v96, v8), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v43(v13, v8), v43(v15, v8), v116 == v115))
      {
        v44 = v15;
        v45 = v13;
        v46 = 1;
      }

      else
      {
        FMIPUnknownItem.alertState.getter();
        v42(v13, v76, v8);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v45 = v13;
        dispatch thunk of RawRepresentable.rawValue.getter();
        v43(v13, v8);
        v44 = v15;
        v43(v15, v8);
        v46 = v116 == v115;
      }

      v40 = v106;
      if (v105)
      {
        v13 = v45;
        v15 = v44;
        if (v109)
        {
          v47 = 1;
LABEL_15:
          v48 = v86;
          (v104)(v86, v30, v106);
          sub_10010B450(v48, v101);
          if ((v105 & 1) == 0)
          {
            v49 = v74;
            FMIPUnknownItem.alertState.getter();
            v50 = (*v73)(v49, v8);
            if (v50 == v102 || v50 == v96 || v50 == v76)
            {
              v51 = [objc_opt_self() systemRedColor];
              v52 = v101;

              *(v52 + 16) = v51;
              v53 = [objc_opt_self() configurationWithPointSize:9.0];
              v54 = String._bridgeToObjectiveC()();
              v55 = [objc_opt_self() systemImageNamed:v54 withConfiguration:v53];

              *(v52 + 8) = v55;
            }

            else if (v50 != v69 && v50 != v68)
            {
              v43(v74, v8);
            }
          }

          v56 = sub_100237598();
          v58 = sub_1004B1E98(&v115, v47);
          if (*v57)
          {
            v59 = v57;
            v60 = v95;
            FMIPUnknownItem.identifier.getter();
            v61 = sub_10007EBC0(&qword_1006B76D0);
            (*(*(v61 - 8) + 56))(v60, 0, 2, v61);
            v62 = *v59;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v59 = v62;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v62 = sub_10008BE88(0, v62[2] + 1, 1, v62);
              *v59 = v62;
            }

            v65 = v62[2];
            v64 = v62[3];
            if (v65 >= v64 >> 1)
            {
              v62 = sub_10008BE88(v64 > 1, v65 + 1, 1, v62);
              *v59 = v62;
            }

            v62[2] = v65 + 1;
            sub_10023F8F0(v95, v62 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v65, type metadata accessor for FMUnknownItemsListDataSource.Entry);
          }

          (v58)(&v115, 0);
          (v56)(&v116, 0);
          v31 = v88;
          v30 = v108;
          FMIPUnknownItem.identifier.getter();
          v32 = v101;
          v33 = v90;
          sub_10023EE8C(v101, v90, type metadata accessor for FMUnknownItemCellViewModel);
          (*v80)(v33, 0, 1, v87);
          swift_beginAccess();
          sub_1001AF140(v33, v31);
          swift_endAccess();
          FMIPUnknownItem.identifier.getter();
          v116 = sub_1001AFD50(v30, 0);
          v34 = [objc_allocWithZone(UIImage) init];
          v115 = v34;
          sub_10007EBC0(&unk_1006B4D90);
          sub_100004098(&qword_1006B7800, &unk_1006B4D90);
          v35 = v91;
          Publisher.replaceError(with:)();

          sub_100004098(&qword_1006B7808, &unk_1006B77E0);
          v36 = v92;
          v37 = Publisher.eraseToAnyPublisher()();
          (*v79)(v35, v36);
          v38 = v84;
          swift_beginAccess();
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v115 = *v38;
          sub_1001BC57C(v37, v31, v39);
          (*v78)(v31, v89);
          *v38 = v115;
          swift_endAccess();
          sub_10023EEF4(v32, type metadata accessor for FMUnknownItemCellViewModel);
          v8 = v83;
          v13 = v82;
          v15 = v81;
          v40 = v106;
        }
      }

      else
      {
        v13 = v45;
        v15 = v44;
        if ((v109 | v46))
        {
          v47 = v109 & 1;
          goto LABEL_15;
        }
      }

      (*v98)(v30, v40);
      v29 = &v110[v97];
      v27 = v111 - 1;
      v26 = v112;
    }

    while (v111 != 1);
  }

  (*(v71 + 8))(v70, v72);
  return v94;
}

uint64_t sub_10023C7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v50 = a2;
  v4 = type metadata accessor for UUID();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = __chkstk_darwin(v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v43 - v7;
  v8 = type metadata accessor for FMIPLocation();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v45 = &v43 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v43 - v21;
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  v49 = a1;
  v25 = FMIPUnknownItem.locations.getter();
  if (*(v25 + 16))
  {
    (*(v9 + 16))(v13, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    v26 = FMIPLocation.location.getter();
    (*(v9 + 8))(v13, v8);
    v27 = [v26 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v15 + 32))(v24, v22, v14);
    v28 = v46;
  }

  else
  {

    v28 = v46;
    (*(v15 + 16))(v24, v46, v14);
  }

  v29 = FMIPUnknownItem.locations.getter();
  v30 = v45;
  if (*(v29 + 16))
  {
    v31 = v43;
    (*(v9 + 16))(v43, v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    v32 = FMIPLocation.location.getter();
    (*(v9 + 8))(v31, v8);
    v33 = [v32 timestamp];

    v34 = v44;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 32))(v30, v34, v14);
  }

  else
  {

    (*(v15 + 16))(v30, v28, v14);
  }

  v35 = v47;
  FMIPUnknownItem.identifier.getter();
  v36 = v48;
  FMIPUnknownItem.identifier.getter();
  v37 = sub_1004B1FE4(v24, v35, v30, v36);
  v38 = *(v51 + 8);
  v39 = v36;
  v40 = v52;
  v38(v39, v52);
  v38(v35, v40);
  v41 = *(v15 + 8);
  v41(v30, v14);
  v41(v24, v14);
  return v37 & 1;
}

uint64_t sub_10023CCCC()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  FMIPUnknownItem.identifier.getter();
  FMIPUnknownItem.identifier.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

id sub_10023CE08()
{
  sub_10023F08C();
  if (v0)
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_10023CE74(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  sub_10023F1C4(v8);

  return (*(v6 + 8))(v8, v5);
}

void *sub_10023CF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector:"scrollViewDidScroll:"])
    {
      [v5 scrollViewDidScroll:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10023CFF8@<X0>(uint64_t a1@<X8>)
{
  v3 = IndexPath.section.getter();
  if (v3 >= 3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *(v1 + qword_1006B7530);
  v6 = IndexPath.item.getter();
  swift_beginAccess();
  v7 = *(v5 + 24);
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = sub_1001C2758(v4);
  if ((v9 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    if (v6 < *(v10 + 16))
    {
      v11 = *(type metadata accessor for FMUnknownItemsListDataSource.Entry(0) - 8);
      return sub_10023EE8C(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v6, a1, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10023D174@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  sub_10023CFF8(&v21[-v10]);
  sub_10023EE8C(v11, v9, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v12 = sub_10007EBC0(&qword_1006B76D0);
  if ((*(*(v12 - 8) + 48))(v9, 2, v12))
  {
    sub_10023EEF4(v11, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    v13 = type metadata accessor for FMIPUnknownItem();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);

    v15 = FMIPManager.unknownItems.getter();
    __chkstk_darwin(v15);
    *&v21[-16] = v5;
    v17 = sub_100104884(sub_10017014C, &v21[-32], v16);
    if (*(v17 + 16))
    {
      v18 = type metadata accessor for FMIPUnknownItem();
      v19 = *(v18 - 8);
      (*(v19 + 16))(a1, v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);

      sub_10023EEF4(v11, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      (*(v19 + 56))(a1, 0, 1, v18);
    }

    else
    {

      sub_10023EEF4(v11, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      v20 = type metadata accessor for FMIPUnknownItem();
      (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10023D558()
{
  v1 = v0;
  if (qword_1006AED78 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMUnknownItemsListDataSource: handleScanningFinished", v5, 2u);
  }

  *(v1 + qword_1006B7568) = 0;
  sub_100237EB8();
  v6 = *(v1 + qword_1006B7530);
  result = swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = *(v6 + 24);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v17 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_16;
        }

        v13 = *(v10 + 64 + 8 * v17);
        ++v8;
        if (v13)
        {
          v8 = v17;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_7:
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v16 = v15 | (v8 << 6);
    if (*(*(v10 + 48) + v16) != 2)
    {
      v18 = *(*(*(v10 + 56) + 8 * v16) + 16);
      v19 = __OFADD__(v9, v18);
      v9 += v18;
      if (v19)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  if (v9)
  {

    v20 = FMIPManager.unknownItems.getter();

    sub_10023A060(v20, 1);
  }

  else
  {
    v21 = *(v1 + qword_1006B7570);
    if (v21)
    {

      v21(v22);
      return sub_10001835C(v21);
    }
  }

  return result;
}

id sub_10023D798(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v105 = a4;
  v116 = a3;
  v6 = sub_10007EBC0(&unk_1006B77C0);
  __chkstk_darwin(v6 - 8);
  v110 = v100 - v7;
  v109 = type metadata accessor for UIBackgroundConfiguration();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMUnknownItemCellViewModel();
  v102 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v103 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = (v100 - v12);
  v13 = type metadata accessor for UUID();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v106 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for UIListContentConfiguration();
  v115 = *(v112 - 8);
  __chkstk_darwin(v112);
  v16 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  v18 = __chkstk_darwin(v17 - 8);
  v111 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v100 - v20;
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100005B14(v26, qword_1006D4D08);
  (*(v23 + 16))(v25, a2, v22);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v100[1] = a2;
    v30 = v29;
    v31 = swift_slowAlloc();
    v101 = v16;
    v100[0] = v31;
    v117[0] = v31;
    *v30 = 136315138;
    sub_10023EF54(&qword_1006C01F0, &type metadata accessor for IndexPath);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v21;
    v34 = a1;
    v36 = v35;
    (*(v23 + 8))(v25, v22);
    v37 = sub_100005B4C(v32, v36, v117);
    a1 = v34;
    v21 = v33;

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "FMUnknownItemsListDataSource: dequeueConfiguredReusableCell(for: %s)", v30, 0xCu);
    sub_100006060(v100[0]);
    v16 = v101;
  }

  else
  {

    (*(v23 + 8))(v25, v22);
  }

  sub_10023EE8C(v116, v21, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v38 = sub_10007EBC0(&qword_1006B76D0);
  v39 = *(*(v38 - 8) + 48);
  if (!v39(v21, 2, v38))
  {
    (*(v113 + 8))(v21, v114);
  }

  v40 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v42 = [a1 dequeueReusableCellWithIdentifier:v40 forIndexPath:isa];

  static UIListContentConfiguration.cell()();
  [objc_allocWithZone(UIImage) init];
  UIListContentConfiguration.image.setter();
  v43 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v43(v117, 0);
  v44 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v44(v117, 0);
  v45 = v16;
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  v46 = v111;
  sub_10023EE8C(v116, v111, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v47 = v39(v46, 2, v38);
  if (!v47)
  {
    v60 = v106;
    (*(v113 + 32))(v106, v46, v114);
    v61 = v105;
    swift_beginAccess();
    v62 = *(v61 + 16);
    v48 = v112;
    v49 = v115;
    if (*(v62 + 16))
    {

      v63 = sub_1001B3964(v60);
      if (v64)
      {
        v65 = v103;
        sub_10023EE8C(*(v62 + 56) + *(v102 + 72) * v63, v103, type metadata accessor for FMUnknownItemCellViewModel);

        v66 = v104;
        sub_10023F8F0(v65, v104, type metadata accessor for FMUnknownItemCellViewModel);
        type metadata accessor for FMUnknownItemListCellView();
        v116 = swift_dynamicCastClass();
        if (v116)
        {
          v111 = v42;

          UIListContentConfiguration.text.setter();

          UIListContentConfiguration.secondaryText.setter();
          v67 = *v66;
          if (!*v66)
          {
            [objc_allocWithZone(UIImage) init];
          }

          v68 = v67;
          UIListContentConfiguration.image.setter();
          v69 = objc_opt_self();
          v70 = [v69 preferredFontForTextStyle:UIFontTextStyleHeadline];
          sub_100039388(2);

          v71 = UIListContentConfiguration.textProperties.modify();
          UIListContentConfiguration.TextProperties.font.setter();
          v71(v117, 0);
          v72 = [v69 preferredFontForTextStyle:UIFontTextStyleSubheadline];
          v73 = UIListContentConfiguration.secondaryTextProperties.modify();
          UIListContentConfiguration.TextProperties.font.setter();
          v73(v117, 0);
          v74 = [objc_opt_self() secondaryLabelColor];
          v75 = UIListContentConfiguration.secondaryTextProperties.modify();
          UIListContentConfiguration.TextProperties.color.setter();
          v75(v117, 0);
          v76 = v111;
          v77 = v116;
          [v116 setAccessoryType:1];
          [v77 setSelectionStyle:2];

          v78 = v105;
          swift_beginAccess();
          v79 = *(v78 + 32);
          if (*(v79 + 16))
          {

            v80 = v106;
            v81 = sub_1001B3964(v106);
            v49 = v115;
            if (v82)
            {
              v83 = *(*(v79 + 56) + 8 * v81);

              sub_1002366DC(v104, v83);

              v80 = v106;
            }

            else
            {
            }

            v16 = v45;
          }

          else
          {

            v49 = v115;
            v16 = v45;
            v80 = v106;
          }

          sub_10023EEF4(v104, type metadata accessor for FMUnknownItemCellViewModel);
          (*(v113 + 8))(v80, v114);
          goto LABEL_26;
        }

        sub_10023EEF4(v66, type metadata accessor for FMUnknownItemCellViewModel);
      }

      else
      {
      }
    }

    (*(v113 + 8))(v60, v114);
    v16 = v45;
LABEL_26:
    UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
    v94 = v107;
    static UIBackgroundConfiguration.clear()();
    v117[3] = v48;
    v117[4] = &protocol witness table for UIListContentConfiguration;
    v95 = sub_100008FC0(v117);
    (*(v49 + 16))(v95, v16, v48);
    UITableViewCell.contentConfiguration.setter();
    v96 = v108;
    v98 = v109;
    v97 = v110;
    (*(v108 + 16))(v110, v94, v109);
    (*(v96 + 56))(v97, 0, 1, v98);
    UITableViewCell.backgroundConfiguration.setter();
    (*(v96 + 8))(v94, v98);
    goto LABEL_27;
  }

  v48 = v112;
  v49 = v115;
  if (v47 != 1)
  {
    type metadata accessor for FMAccessoryDiscoverySearchingCell();
    v84 = swift_dynamicCastClass();
    if (v84)
    {
      v85 = v84;
      v86 = objc_opt_self();
      v87 = v42;
      v88 = [v86 linkColor];
      v89 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v89(v117, 0);
      v90 = [objc_opt_self() mainBundle];
      v119._object = 0x8000000100579A00;
      v91._countAndFlagsBits = 0xD00000000000002ALL;
      v91._object = 0x8000000100588490;
      v92.value._object = 0x80000001005799E0;
      v119._countAndFlagsBits = 0xD000000000000018;
      v92.value._countAndFlagsBits = 0xD000000000000013;
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v90, v93, v119);

      UIListContentConfiguration.text.setter();
      [*(v85 + OBJC_IVAR____TtC6FindMy33FMAccessoryDiscoverySearchingCell_activityIndicator) setHidden:1];
    }

    goto LABEL_26;
  }

  type metadata accessor for FMAccessoryDiscoverySearchingCell();
  v50 = swift_dynamicCastClass();
  if (v50)
  {
    v51 = v50;
    v52 = objc_opt_self();
    v53 = v42;
    v54 = [v52 mainBundle];
    v118._object = 0x8000000100579A00;
    v55._countAndFlagsBits = 0xD000000000000027;
    v55._object = 0x80000001005884C0;
    v56.value._object = 0x80000001005799E0;
    v118._countAndFlagsBits = 0xD000000000000018;
    v56.value._countAndFlagsBits = 0xD000000000000013;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v118);

    UIListContentConfiguration.text.setter();
    v58 = [objc_opt_self() secondaryLabelColor];
    v59 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v59(v117, 0);
    [*&v51[OBJC_IVAR____TtC6FindMy33FMAccessoryDiscoverySearchingCell_activityIndicator] setHidden:0];
    [v51 setSelectionStyle:0];

    goto LABEL_26;
  }

LABEL_27:
  (*(v49 + 8))(v16, v48);
  return v42;
}

void sub_10023E6A4()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_10023E750()
{
  sub_100012DA8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_10023E800()
{
  result = qword_1006B7790;
  if (!qword_1006B7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7790);
  }

  return result;
}

uint64_t sub_10023E8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&unk_1006B77B0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_10023EE8C(a1, &v22 - v13, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  sub_10023EE8C(a2, &v14[v15], type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v16 = sub_10007EBC0(&qword_1006B76D0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 2, v16);
  if (!v18)
  {
    sub_10023EE8C(v14, v10, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    if (!v17(&v14[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = static UUID.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_10023EEF4(v14, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v14[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v14[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_100012DF0(v14, &unk_1006B77B0);
    v19 = 0;
    return v19 & 1;
  }

  sub_10023EEF4(v14, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_10023EBE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);

  v6 = sub_100236EA8(v4, v5);

  if (v6)
  {
    swift_beginAccess();
    v7 = *(a1 + 24);
    swift_beginAccess();
    v8 = *(a2 + 24);

    v9 = sub_100237460(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10023ECEC(uint64_t a1)
{
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4D08);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "FMUnknownItemsListDataSource: didUpdate %ld items", v5, 0xCu);
  }

  else
  {
  }

  return sub_10023A060(a1, 1);
}

uint64_t sub_10023EE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B77A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023EE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023EEF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10023EF54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10023EFA4()
{
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4D08);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMUnknownItemsListDataSource: applicationWillEnterForeground", v2, 2u);
  }
}

uint64_t sub_10023F08C()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(row:section:)();
  v4 = IndexPath.section.getter();
  if (v4 > 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4;
    (*(v1 + 8))(v3, v0);
    return sub_100237738(v5);
  }

  return result;
}

uint64_t sub_10023F1C4(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMSelectedSection();
  v8 = __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v13 = sub_10007EBC0(&unk_1006B77D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = type metadata accessor for FMIPUnknownItem();
  v17 = *(v16 - 8);
  v58 = v16;
  v59 = v17;
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v53 - v24;
  sub_10023CFF8(&v53 - v24);
  v60 = v25;
  sub_10023EE8C(v25, v23, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v26 = sub_10007EBC0(&qword_1006B76D0);
  v27 = (*(*(v26 - 8) + 48))(v23, 2, v26);
  if (v27)
  {
    if (v27 != 1)
    {
      sub_100238DC8();
    }

    return sub_10023EEF4(v60, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  }

  else
  {
    v54 = v10;
    v55 = v23;
    v29 = a1;
    sub_10023D174(v15);
    if ((*(v59 + 48))(v15, 1, v58) == 1)
    {
      sub_100012DF0(v15, &unk_1006B77D0);
      v30 = v55;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100005B14(v31, qword_1006D4630);
      v32 = v56;
      v33 = v57;
      v34 = v6;
      (*(v57 + 16))(v6, v29, v56);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v61[0] = v38;
        *v37 = 136315138;
        sub_10023EF54(&qword_1006C01F0, &type metadata accessor for IndexPath);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v34;
        v42 = v41;
        (*(v33 + 8))(v40, v32);
        v43 = sub_100005B4C(v39, v42, v61);

        *(v37 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "FMItemsListDataSource: cannnot select device at indexPath: %s", v37, 0xCu);
        sub_100006060(v38);
      }

      else
      {

        (*(v33 + 8))(v6, v32);
      }

      sub_10023EEF4(v60, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      v52 = type metadata accessor for UUID();
      return (*(*(v52 - 8) + 8))(v30, v52);
    }

    else
    {
      v44 = v59;
      v45 = v19;
      v46 = v19;
      v47 = v58;
      (*(v59 + 32))(v46, v15, v58);
      v48 = *(*(v1 + qword_1006B7510) + 56);
      (*(v44 + 16))(v12, v45, v47);
      swift_storeEnumTagMultiPayload();
      v49 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      v50 = v54;
      sub_10023EE8C(v48 + v49, v54, type metadata accessor for FMSelectedSection);
      swift_beginAccess();

      sub_100058530(v12, v48 + v49);
      swift_endAccess();
      sub_100058594(v50);

      sub_10023EEF4(v50, type metadata accessor for FMSelectedSection);
      sub_10023EEF4(v12, type metadata accessor for FMSelectedSection);
      (*(v44 + 8))(v45, v47);
      sub_10023EEF4(v60, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      v51 = type metadata accessor for UUID();
      return (*(*(v51 - 8) + 8))(v55, v51);
    }
  }
}

uint64_t sub_10023F8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10023F964()
{
  result = qword_1006B7818;
  if (!qword_1006B7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7818);
  }

  return result;
}

uint64_t sub_10023FACC(void **a1)
{
  v3 = *(type metadata accessor for FMUnknownItemCellViewModel() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100236A80(a1, v4);
}

uint64_t sub_10023FBA0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10023FBB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10023FBDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10023FC24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10023FCAC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v21 = type metadata accessor for OnboardingTrayAction.Style();
  v20 = *(v21 - 8);
  __chkstk_darwin(v21);
  v18 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OnboardingTrayAction.State();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v16 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10018DF0C();
  v25 = v6;
  v26 = v5;
  v24 = sub_10018E0BC();
  v23 = v7;
  v22 = [objc_opt_self() clearColor];
  sub_10007EBC0(&qword_1006B78A0);
  type metadata accessor for OnboardingBulletedListItem();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100552210;
  sub_10018E1CC();

  sub_10018E1CC();

  OnboardingBulletedListItem.init(title:detailText:symbolName:)();
  sub_10018E38C();

  sub_10018E38C();

  OnboardingBulletedListItem.init(title:detailText:symbolName:)();
  v28 = v1;
  sub_10007EBC0(&qword_1006B78A8);
  type metadata accessor for OnboardingTrayAction();
  *(swift_allocObject() + 16) = xmmword_100552220;
  v8 = [objc_opt_self() mainBundle];
  v30._object = 0x800000010057B8A0;
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010057B880;
  v30._countAndFlagsBits = 0xD000000000000027;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v30);

  (*(v3 + 104))(v16, enum case for OnboardingTrayAction.State.enabled(_:), v17);
  (*(v20 + 104))(v18, enum case for OnboardingTrayAction.Style.bold(_:), v21);
  v11 = swift_allocObject();
  v12 = v1[5];
  v11[5] = v1[4];
  v11[6] = v12;
  v11[7] = v1[6];
  v13 = v1[1];
  v11[1] = *v1;
  v11[2] = v13;
  v14 = v1[3];
  v11[3] = v1[2];
  v11[4] = v14;
  sub_1002403DC(v1, v29);
  OnboardingTrayAction.init(title:state:style:actionHandler:)();
  sub_10007EBC0(&qword_1006B78B0);
  sub_100240414();
  return OnboardingWelcomeView.init<A>(title:detailText:headerColor:bulletedListItems:primaryContent:secondaryContent:captionText:trayActions:)();
}

uint64_t sub_1002401F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 16);
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  v10 = a1[7];
  v11 = a1[9];
  result = static Edge.Set.all.getter();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v10;
  *(a2 + 40) = 0;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_1002403AC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100240414()
{
  result = qword_1006B78B8;
  if (!qword_1006B78B8)
  {
    sub_10007EC08(&qword_1006B78B0);
    sub_1001A18F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B78B8);
  }

  return result;
}

unint64_t sub_1002404B0()
{
  result = qword_1006B78C0;
  if (!qword_1006B78C0)
  {
    type metadata accessor for OnboardingWelcomeView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B78C0);
  }

  return result;
}

uint64_t sub_100240508()
{
  v9 = &type metadata for SolariumFeatureFlag;
  v10 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  result = sub_100006060(v8);
  v2 = 16.0;
  if ((v0 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      result = swift_once();
    }

    v2 = *&qword_1006D4798;
  }

  __asm { FMOV            V1.2D, #10.0 }

  xmmword_1006D4260 = _Q1;
  *algn_1006D4270 = _Q1;
  *&xmmword_1006D4280 = 0x4028000000000000;
  *(&xmmword_1006D4280 + 1) = v2;
  return result;
}

void sub_1002405D8(uint64_t a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for FMSectionPlatterMessageTextView();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v4 = *&v2[OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_messageTextView];
  v5 = sub_1001561BC();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = UIFontTextStyleBody;
  }

  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 preferredFontForTextStyle:v7];

  v11 = *&v2[OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_messageTextViewHeightConstraint];
  if (v11)
  {
    v12 = v11;
    [v10 lineHeight];
    v14 = v13 * 3.25;
    v15 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
    [*(v4 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView) textContainerInset];
    v17 = v14 + v16;
    [*(v4 + v15) textContainerInset];
    [v12 setConstant:v17 + v18];
  }

  else
  {
    __break(1u);
  }
}

id sub_100240970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSectionPlatterMessageTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100240A7C()
{
  v1 = OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_style;
  if (qword_1006AEB70 != -1)
  {
    swift_once();
  }

  v2 = (v0 + v1);
  v3 = *algn_1006D4270;
  v4 = xmmword_1006D4280;
  *v2 = xmmword_1006D4260;
  v2[1] = v3;
  v2[2] = v4;
  v5 = OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_sectionLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_contentView;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_messageTextView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_messageTextViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_isEditing) = 0;
  v8 = (v0 + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_initialMessageText);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC6FindMy31FMSectionPlatterMessageTextView_placeHolderText);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100240BE4()
{
  v1 = v0;
  v2 = type metadata accessor for FMPlatterIcon();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v63[0] = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B3298);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = v63 - v9;
  v10 = OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenFoundSwitch;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v70 = &type metadata for SolariumFeatureFlag;
  v65 = sub_10000BD04();
  v71 = v65;
  LOBYTE(v10) = isFeatureEnabled(_:)();
  sub_100006060(v69);
  v11 = 16.0;
  v12 = 16.0;
  if ((v10 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v12 = *&qword_1006D4798;
  }

  v64 = v8;
  v13 = OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch;
  v14 = type metadata accessor for FMSettingRowView();
  v15 = objc_allocWithZone(v14);
  *&v1[v13] = sub_100502750(1, v12);
  v70 = &type metadata for SolariumFeatureFlag;
  v71 = v65;
  v16 = isFeatureEnabled(_:)();
  sub_100006060(v69);
  if ((v16 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v11 = *&qword_1006D4798;
  }

  v17 = OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenLeftBehindSwitch;
  v18 = objc_allocWithZone(v14);
  *&v1[v17] = sub_100502750(1, v11);
  *&v1[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_disabled] = 0;
  v19 = [objc_opt_self() mainBundle];
  v72._object = 0x8000000100588840;
  v20._countAndFlagsBits = 0xD000000000000022;
  v20._object = 0x8000000100588810;
  v72._countAndFlagsBits = 0xD000000000000034;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v63[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v72)._countAndFlagsBits;

  v22 = v66;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v22, 0, 1, v2);
  v23 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  *&v1[v23] = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *&v1[v24] = [objc_allocWithZone(UILabel) init];
  v25 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *&v1[v25] = [objc_allocWithZone(UIStackView) init];
  v26 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *&v1[v26] = [objc_allocWithZone(UIStackView) init];
  v27 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v28 = objc_opt_self();
  *&v1[v27] = [v28 buttonWithType:1];
  v29 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *&v1[v29] = [v28 buttonWithType:1];
  v30 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *&v1[v30] = [objc_allocWithZone(UIView) init];
  v31 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *&v1[v31] = [objc_allocWithZone(UIView) init];
  v32 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *&v1[v32] = [objc_allocWithZone(UIView) init];
  v33 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v34 = type metadata accessor for FMPlatterBackgroundView();
  v35 = objc_allocWithZone(v34);
  v35[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v68.receiver = v35;
  v68.super_class = v34;
  v36 = objc_msgSendSuper2(&v68, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v1[v33] = v36;
  v37 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *&v1[v37] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v38 = &v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isTransparent] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator] = 0;
  v39 = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v67.receiver = v1;
  v67.super_class = v39;
  v40 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v41 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v42 = *&v40[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v43 = v40;
  v44 = v42;
  v45 = String._bridgeToObjectiveC()();

  [v44 setText:v45];

  [*&v40[v41] setAdjustsFontForContentSizeCategory:1];
  v46 = *&v40[v41];
  v47 = String._bridgeToObjectiveC()();
  [v46 setAccessibilityIdentifier:v47];

  v48 = v64;
  sub_100243148(v22, v64);
  if ((*(v3 + 48))(v48, 1, v2) == 1)
  {
    v49 = sub_10017D238(v48);
  }

  else
  {
    v50 = v63[0];
    sub_10015DA28(v48, v63[0]);
    v70 = &type metadata for SolariumFeatureFlag;
    v71 = v65;
    v51 = isFeatureEnabled(_:)();
    sub_100006060(v69);
    if (v51)
    {
      v52 = sub_100438138(0);
      v54 = v53;
      v55 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
      [*&v43[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView] setImage:v52];
      [*&v43[v55] setTintColor:v54];
      [*&v43[v55] setTintAdjustmentMode:1];
    }

    else
    {
      v52 = *&v43[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
      v54 = sub_10043B9F4(v50, 0);
      [v52 setImage:v54];
    }

    v49 = sub_1000D59F8(v50);
  }

  (*((swift_isaMask & *v43) + 0x1E0))(v49);
  sub_100455CF8();
  (*((swift_isaMask & *v43) + 0x1F8))();
  v56 = v43;
  v57 = String._bridgeToObjectiveC()();
  [v56 setAccessibilityIdentifier:v57];

  sub_10017D238(v66);
  v58 = v56;
  v59 = String._bridgeToObjectiveC()();
  [v58 setAccessibilityIdentifier:v59];

  v60 = *&v58[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v61 = String._bridgeToObjectiveC()();
  [v60 setAccessibilityIdentifier:v61];

  return v58;
}

id sub_100241554()
{
  sub_100455328();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenLeftBehindSwitch);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4.value._countAndFlagsBits = 0xD000000000000016;
  v34._object = 0x800000010057D660;
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001005888C0;
  v4.value._object = 0x800000010057D640;
  v34._countAndFlagsBits = 0xD00000000000001BLL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v34);

  *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v7;

  v8 = *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  v11 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v11];

  v12 = *(v0 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenFoundSwitch);
  v13 = [v2 mainBundle];
  v35._object = 0x8000000100588930;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x8000000100588910;
  v35._countAndFlagsBits = 0xD000000000000031;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v35);

  *&v12[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v16;

  v17 = *&v12[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v18 = v17;
  v19 = String._bridgeToObjectiveC()();

  [v18 setText:v19];

  v12[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = 0;
  [*&v12[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:0];
  *&v12[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_100630DD0;
  swift_unknownObjectWeakAssign();
  v20 = String._bridgeToObjectiveC()();
  [v12 setAccessibilityIdentifier:v20];

  v21 = *(v0 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch);
  v22 = [v2 mainBundle];
  v36._object = 0x80000001005889C0;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEC00000031656C62;
  v24._countAndFlagsBits = 0xD000000000000022;
  v24._object = 0x8000000100588990;
  v36._countAndFlagsBits = 0xD000000000000034;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, v36);

  *&v21[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v26;

  v27 = *&v21[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v28 = v27;
  v29 = String._bridgeToObjectiveC()();

  [v28 setText:v29];

  v30 = String._bridgeToObjectiveC()();
  [v21 setAccessibilityIdentifier:v30];

  v31 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView);
  [v31 addArrangedSubview:v12];
  [v31 addArrangedSubview:v1];

  return [v31 addArrangedSubview:v21];
}

void sub_100241A08()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"notifyWhenLeftBehindRowTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenLeftBehindSwitch] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"notifyWhenDetachedRowTap"];

  [*&v2[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch] addGestureRecognizer:v4];
}

id sub_100241AEC(char a1, uint64_t a2, char a3, char a4, char a5, char a6, uint64_t a7, unint64_t a8, char a9, char a10, char a11, char a12)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v102 = a4;
  v103 = a5;
  v99 = a2;
  v100 = a7;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v107 = v21;
    *v20 = 67111426;
    *(v20 + 4) = a1 & 1;
    *(v20 + 8) = 2048;
    *(v20 + 10) = a2;
    *(v20 + 18) = 1024;
    *(v20 + 20) = a3 & 1;
    *(v20 + 24) = 1024;
    *(v20 + 26) = a4 & 1;
    *(v20 + 30) = 1024;
    *(v20 + 32) = a5 & 1;
    *(v20 + 38) = a6 & 1;
    *(v20 + 42) = 2080;
    if (a8)
    {
      v22 = a7;
    }

    else
    {
      v22 = 0x216C696E21;
    }

    if (a8)
    {
      v23 = a8;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    *(v20 + 36) = 1024;

    v24 = sub_100005B4C(v22, v23, &v107);

    *(v20 + 44) = v24;
    *(v20 + 52) = 1024;
    *(v20 + 54) = a9 & 1;
    *(v20 + 58) = 1024;
    *(v20 + 60) = (a10 & 1) == 0;
    *(v20 + 64) = 1024;
    *(v20 + 66) = (a11 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMDeviceNotificationsView.update:\n  status: %{BOOL}d,\n  safeLocationCount: %ld,\n  supportsSeparation: %{BOOL}d,\n  enabled: %{BOOL}d,\n  notifyWhenFoundEnabled: %{BOOL}d,\n  isMeDevice: %{BOOL}d,\n  meDeviceName: %s,\n  isThisDevice: %{BOOL}d,\n  temporarilyUnavailable: %{BOOL}d\n  paused: %{BOOL}d", v20, 0x46u);
    sub_100006060(v21);
  }

  v25 = *(v106 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenLeftBehindSwitch);
  if (a12)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  else
  {
    v28 = [objc_opt_self() mainBundle];
    if (a1)
    {
      v98 = 0x8000000100588AA0;
      v29 = 0xD00000000000001DLL;
      v30 = 0x8000000100588A80;
      v31 = 0xD00000000000002FLL;
    }

    else
    {
      v98 = 0x8000000100588A40;
      v29 = 0xD00000000000001ELL;
      v30 = 0x8000000100588A20;
      v31 = 0xD000000000000030;
    }

    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v29, 0, v28, v32, *&v31);
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
  }

  v34 = (v25 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle);
  *v34 = countAndFlagsBits;
  v34[1] = object;

  v35 = OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel;
  v36 = *(v25 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel);

  v37 = v36;
  v38 = String._bridgeToObjectiveC()();

  [v37 setText:v38];

  if ((a3 & 1) == 0)
  {
    v46 = [objc_opt_self() mainBundle];
    v111._object = 0x800000010057D660;
    v47._countAndFlagsBits = 0xD00000000000002FLL;
    v47._object = 0x8000000100588AD0;
    v48.value._object = 0x800000010057D640;
    v111._countAndFlagsBits = 0xD00000000000001BLL;
    v48.value._countAndFlagsBits = 0xD000000000000016;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v111);

    sub_100502538(v50._countAndFlagsBits, v50._object);
    v51 = 0;
    v53 = v102;
    v52 = v103;
    goto LABEL_43;
  }

  if (a11)
  {
    v39 = objc_opt_self();
    v40 = [v39 mainBundle];
    v110._object = 0x800000010057D660;
    v41 = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD00000000000002ALL;
    v42._object = 0x8000000100588CA0;
    v43.value._object = 0x800000010057D640;
    v110._countAndFlagsBits = 0xD00000000000001BLL;
    v43.value._countAndFlagsBits = 0xD000000000000016;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v40, v44, v110);

    sub_100502538(v45._countAndFlagsBits, v45._object);
    if ((a12 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_24;
  }

  if (a10)
  {
    v39 = objc_opt_self();
    v54 = [v39 mainBundle];
    v112._object = 0x800000010057D660;
    v41 = 0xE000000000000000;
    v55._countAndFlagsBits = 0xD00000000000002FLL;
    v55._object = 0x8000000100588C70;
    v56.value._object = 0x800000010057D640;
    v112._countAndFlagsBits = 0xD00000000000001BLL;
    v56.value._countAndFlagsBits = 0xD000000000000016;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v112);

    sub_100502538(v58._countAndFlagsBits, v58._object);
    if ((a12 & 1) == 0)
    {
LABEL_39:
      v81 = [v39 mainBundle];
      v115._object = 0x8000000100588A40;
      v82._countAndFlagsBits = 0xD00000000000001ELL;
      v82._object = 0x8000000100588A20;
      v115._countAndFlagsBits = 0xD000000000000030;
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      v84 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v81, v83, v115);
      v59 = v84._countAndFlagsBits;
      v41 = v84._object;

      goto LABEL_40;
    }

LABEL_24:
    v59 = 0;
LABEL_40:
    *v34 = v59;
    v34[1] = v41;

    v85 = *(v25 + v35);

    v86 = v85;
    v87 = String._bridgeToObjectiveC()();

    [v86 setText:v87];

    goto LABEL_41;
  }

  if ((a6 & 1) != 0 || !a8)
  {
    v53 = v102;
    v52 = v103;
    if (a9)
    {
      v72 = [objc_opt_self() mainBundle];
      v73 = "SAFE_LOCATION_DESCRIPTION";
      if (a1)
      {
        v73 = "ABLED_FOR_APPLE_WATCH";
        v74 = 0xD000000000000034;
      }

      else
      {
        v74 = 0xD000000000000035;
      }

      v114._object = 0x800000010057D660;
      v75 = v73 | 0x8000000000000000;
      v76.value._object = 0x800000010057D640;
      v114._countAndFlagsBits = 0xD00000000000001BLL;
      v76.value._countAndFlagsBits = 0xD000000000000016;
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v74, v76, v72, v77, v114);

      v79 = v78._countAndFlagsBits;
      v80 = v78._object;
    }

    else if (v99)
    {
      v91 = [objc_opt_self() mainBundle];
      v116._object = 0x8000000100588B40;
      v92._countAndFlagsBits = 0xD000000000000037;
      v92._object = 0x8000000100588B00;
      v116._countAndFlagsBits = 0xD000000000000049;
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v116);

      sub_10007EBC0(&unk_1006B20B0);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_100552220;
      *(v94 + 56) = &type metadata for Int;
      *(v94 + 64) = &protocol witness table for Int;
      *(v94 + 32) = v99;
      v95 = static String.localizedStringWithFormat(_:_:)();
      v97 = v96;

      v79 = v95;
      v80 = v97;
    }

    else
    {
      v79 = 0;
      v80 = 0xE000000000000000;
    }

    sub_100502538(v79, v80);
    goto LABEL_42;
  }

  if (a1)
  {
    v60 = 0xD000000000000028;
  }

  else
  {
    v60 = 0xD000000000000029;
  }

  if (a1)
  {
    v61 = "OTIFICATIONS_DISABLED_FOR";
  }

  else
  {
    v61 = "BLED_FOR_APPLE_WATCH";
  }

  v107 = 0;
  v108 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v107 = 0xD000000000000012;
  v108 = 0x800000010057A180;
  v62._object = (v61 | 0x8000000000000000);
  v62._countAndFlagsBits = v60;
  String.append(_:)(v62);
  v63 = v107;
  v64 = v108;
  v65 = [objc_opt_self() mainBundle];
  v113._object = v64;
  v66._object = (v61 | 0x8000000000000000);
  v66._countAndFlagsBits = v60;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v113._countAndFlagsBits = v63;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v113);

  sub_10007EBC0(&unk_1006B20B0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100552220;
  *(v68 + 56) = &type metadata for String;
  *(v68 + 64) = sub_10008EE84();
  *(v68 + 32) = v100;
  *(v68 + 40) = a8;

  v69 = String.init(format:_:)();
  v71 = v70;

  sub_100502538(v69, v71);
LABEL_41:
  v53 = v102;
  v52 = v103;
LABEL_42:
  v51 = a10 ^ 1;
LABEL_43:
  *(v25 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled) = v51 & 1;
  sub_100503F58();
  v88 = *(v106 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenFoundSwitch);
  *(v88 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = v53 & 1;
  sub_10014B454();
  *(v88 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = v52 & 1;
  v89 = *(v88 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch);

  return [v89 setOn:?];
}

void sub_100242594(char a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch);
  if (a2)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    if (a1)
    {
      v17 = 0x8000000100588AA0;
      v8 = 0x8000000100588A80;
      v9 = 0xD00000000000002FLL;
      v10 = 0xD00000000000001DLL;
    }

    else
    {
      v17 = 0x8000000100588A40;
      v10 = 0xD00000000000001ELL;
      v8 = 0x8000000100588A20;
      v9 = 0xD000000000000030;
    }

    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, 0, v7, v11, *&v9);
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
  }

  v13 = (v3 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle);
  *v13 = countAndFlagsBits;
  v13[1] = object;

  v14 = *(v3 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel);

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  [v15 setText:v16];

  *(v3 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled) = 1;
  sub_100503F58();
}

id sub_10024271C(char a1, char a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenFoundSwitch];
  [v6 setHidden:a1 & 1];
  v7 = *&v3[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch];
  [v7 setHidden:a2 & 1];
  v8 = *&v3[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenLeftBehindSwitch];
  v9 = [v8 isHidden];
  v6[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = v9 & a2 ^ 1;
  [*&v6[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:?];
  v8[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated] = a2 ^ 1;
  [*&v8[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator] setHidden:a2 & 1];
  v7[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated] = 0;
  [*&v7[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator] setHidden:1];
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
    *v13 = 67109376;
    *(v13 + 4) = a1 & 1;
    *(v13 + 8) = 1024;
    *(v13 + 10) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMDeviceNotificationsView: Visibility state: hideNotifyWhenFound: %{BOOL}d hideNotifyWhenDetached: %{BOOL}d", v13, 0xEu);
  }

  v14 = 0;
  if (a1 & 1) != 0 && (a2)
  {
    v14 = [v8 isHidden];
  }

  return [v3 setHidden:v14];
}

id sub_100242940(char a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&v1[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenLeftBehindSwitch];
  [v4 setHidden:a1 & 1];
  v5 = *&v2[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenFoundSwitch];
  if (v3)
  {
    v6 = [*&v2[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch] isHidden] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v5[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = v6;
  [*&v5[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:v6 ^ 1];
  v7 = *&v2[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch];
  v8 = [v7 isHidden];
  v4[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated] = v8 ^ 1;
  [*&v4[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator] setHidden:v8];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMDeviceNotificationsView: Visibility state: hideNotifyWhenLeftBehind: %{BOOL}d", v12, 8u);
  }

  if (![v5 isHidden] || (objc_msgSend(v7, "isHidden") & 1) == 0)
  {
    v3 = 0;
  }

  return [v2 setHidden:v3 & 1];
}

uint64_t sub_100242B4C(uint64_t a1, char a2)
{
  sub_1002431B8();
  if (static NSObject.== infix(_:_:)())
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
      _os_log_impl(&_mh_execute_header, v4, v5, "FMDeviceNotificationsView:  User toggled notify when found switch", v6, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100215D5C(a2 & 1);
      swift_unknownObjectRelease();
    }
  }

  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "FMDeviceNotificationsView:  User toggled notify if left behind switch", v11, 2u);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = [objc_opt_self() standardUserDefaults];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 BOOLForKey:v13];

      if (v14)
      {
        sub_100208F2C(a2 & 1);
      }

      else
      {
        sub_1002092CC();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100242EA8(const char *a1, void (*a2)(void))
{
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
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100243020()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_delegate;

  return sub_10005CD20(v1);
}

id sub_100243080()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceNotificationsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100243148(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002431B8()
{
  result = qword_1006B4980;
  if (!qword_1006B4980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B4980);
  }

  return result;
}

uint64_t sub_100243204()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenFoundSwitch;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v14 = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v15 = v3;
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100006060(v13);
  v4 = 16.0;
  v5 = 16.0;
  if ((v2 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v5 = *&qword_1006D4798;
  }

  v6 = OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenDetachedSwitch;
  v7 = type metadata accessor for FMSettingRowView();
  v8 = objc_allocWithZone(v7);
  *(v1 + v6) = sub_100502750(1, v5);
  v14 = &type metadata for SolariumFeatureFlag;
  v15 = v3;
  v9 = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if ((v9 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1006D4798;
  }

  v10 = OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_notifyWhenLeftBehindSwitch;
  v11 = objc_allocWithZone(v7);
  *(v1 + v10) = sub_100502750(1, v4);
  *(v1 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_disabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1002434C8()
{
  v1 = v0;
  v2 = [v0 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setNumberOfLines:0];
  }

  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v4) = v7;
  [v1 setContentHuggingPriority:1 forAxis:v4];
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v5) = v7;
  return [v1 setContentHuggingPriority:0 forAxis:v5];
}

id sub_1002435F8()
{
  result = [v0 titleLabel];
  if (result)
  {
    v2 = result;
    [result intrinsicContentSize];

    [v0 contentEdgeInsets];
    [v0 contentEdgeInsets];
    [v0 contentEdgeInsets];
    return [v0 contentEdgeInsets];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100243770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMultilineButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002437D8()
{
  if (!qword_1006B7A50)
  {
    type metadata accessor for URL();
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006B7A50);
    }
  }
}

Swift::Int sub_100243860()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100243934()
{
  String.hash(into:)();
}

Swift::Int sub_1002439F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100243AC4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001C4B4(*a1);
  *a2 = result;
  return result;
}

void sub_100243AF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73656369766564;
  v5 = 0xE200000000000000;
  v6 = 25965;
  v7 = 0xEA00000000006465;
  v8 = 0x646E61707845656DLL;
  if (v2 != 3)
  {
    v8 = 0x736D657469;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C706F6570;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100243B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v5 = type metadata accessor for FMIPItem();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v37 = &v36 - v8;
  v9 = sub_10007EBC0(&qword_1006B7A90);
  __chkstk_darwin(v9);
  v38 = &v36 - v10;
  v11 = sub_10007EBC0(&qword_1006B7A98);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = type metadata accessor for FMIPDevice();
  v19 = *(*(v18 - 8) + 16);
  v19(v17, a1, v18);
  v20 = *(v12 + 56);
  sub_100007204(v41, &v17[v20], &qword_1006B07D0);
  v19(v15, v42, v18);
  v21 = *(v12 + 56);
  sub_100007204(v43, &v15[v21], &qword_1006B07D0);
  sub_100245AA8(&qword_1006B7AA0, &type metadata accessor for FMIPDevice);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_100012DF0(v15, &qword_1006B7A98);
    v28 = v17;
    v29 = &qword_1006B7A98;
LABEL_9:
    sub_100012DF0(v28, v29);
    v27 = 0;
    return v27 & 1;
  }

  v22 = *(v9 + 48);
  v23 = v38;
  sub_100007204(&v17[v20], v38, &qword_1006B07D0);
  sub_100007204(&v15[v21], v23 + v22, &qword_1006B07D0);
  v25 = v39;
  v24 = v40;
  v26 = *(v39 + 48);
  if (v26(v23, 1, v40) != 1)
  {
    v30 = v37;
    sub_100007204(v23, v37, &qword_1006B07D0);
    if (v26(v23 + v22, 1, v24) != 1)
    {
      v32 = v23 + v22;
      v33 = v36;
      (*(v25 + 32))(v36, v32, v24);
      sub_100245AA8(&qword_1006B7AA8, &type metadata accessor for FMIPItem);
      v34 = v30;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v25 + 8);
      v35(v33, v24);
      sub_100012DF0(v15, &qword_1006B7A98);
      sub_100012DF0(v17, &qword_1006B7A98);
      v35(v34, v24);
      sub_100012DF0(v23, &qword_1006B07D0);
      return v27 & 1;
    }

    sub_100012DF0(v15, &qword_1006B7A98);
    sub_100012DF0(v17, &qword_1006B7A98);
    (*(v25 + 8))(v30, v24);
    goto LABEL_8;
  }

  sub_100012DF0(v15, &qword_1006B7A98);
  sub_100012DF0(v17, &qword_1006B7A98);
  if (v26(v23 + v22, 1, v24) != 1)
  {
LABEL_8:
    v29 = &qword_1006B7A90;
    v28 = v23;
    goto LABEL_9;
  }

  sub_100012DF0(v23, &qword_1006B07D0);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_100244134(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10007EBC0(&unk_1006B77B0);
  __chkstk_darwin(v39);
  v7 = &v31 - v6;
  v8 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0) - 8;
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v40 = &v31 - v11;
  __chkstk_darwin(v10);
  v15 = &v31 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (!v16 || a1 == a2)
  {
    return 1;
  }

  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v31 = (v4 + 32);
  v32 = v7;
  v33 = (v4 + 8);
  v34 = v13;
  v38 = *(v12 + 72);
  while (1)
  {
    sub_100027A40(v18, v15, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    v20 = v40;
    sub_100027A40(v19, v40, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    v21 = *(v39 + 48);
    sub_100027A40(v15, v7, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    sub_100027A40(v20, &v7[v21], type metadata accessor for FMUnknownItemsListDataSource.Entry);
    v22 = sub_10007EBC0(&qword_1006B76D0);
    v23 = *(*(v22 - 8) + 48);
    v24 = v23(v7, 2, v22);
    if (!v24)
    {
      break;
    }

    if (v24 == 1)
    {
      sub_100029F80(v40, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      sub_100029F80(v15, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      if (v23(&v7[v21], 2, v22) != 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_100029F80(v40, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      sub_100029F80(v15, type metadata accessor for FMUnknownItemsListDataSource.Entry);
      if (v23(&v7[v21], 2, v22) != 2)
      {
        goto LABEL_17;
      }
    }

    sub_100029F80(v7, type metadata accessor for FMUnknownItemsListDataSource.Entry);
LABEL_7:
    v19 += v38;
    v18 += v38;
    if (!--v16)
    {
      return 1;
    }
  }

  v25 = v34;
  sub_100027A40(v7, v34, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  if (!v23(&v7[v21], 2, v22))
  {
    v26 = &v7[v21];
    v28 = v36;
    v27 = v37;
    (*v31)(v36, v26, v37);
    v35 = static UUID.== infix(_:_:)();
    v29 = *v33;
    (*v33)(v28, v27);
    sub_100029F80(v40, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    sub_100029F80(v15, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    v29(v25, v27);
    v7 = v32;
    sub_100029F80(v32, type metadata accessor for FMUnknownItemsListDataSource.Entry);
    if ((v35 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  sub_100029F80(v40, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  sub_100029F80(v15, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  (*v33)(v25, v37);
LABEL_17:
  sub_100012DF0(v7, &unk_1006B77B0);
  return 0;
}

uint64_t sub_100244690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMLocationAlertRowViewModel(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v24 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    do
    {
      sub_100027A40(v13, v10, type metadata accessor for FMLocationAlertRowViewModel);
      sub_100027A40(v14, v7, type metadata accessor for FMLocationAlertRowViewModel);
      v17 = v10[1];
      v18 = v7[1];
      if (v17)
      {
        if (!v18 || (*v10 != *v7 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_21:
          sub_100029F80(v7, type metadata accessor for FMLocationAlertRowViewModel);
          sub_100029F80(v10, type metadata accessor for FMLocationAlertRowViewModel);
          return 0;
        }
      }

      else if (v18)
      {
        goto LABEL_21;
      }

      if ((v10[2] != v7[2] || v10[3] != v7[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_21;
      }

      v19 = FMFLocationAlertTriggerType.rawValue.getter();
      v21 = v20;
      if (v19 == FMFLocationAlertTriggerType.rawValue.getter() && v21 == v22)
      {

        sub_100029F80(v7, type metadata accessor for FMLocationAlertRowViewModel);
        sub_100029F80(v10, type metadata accessor for FMLocationAlertRowViewModel);
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100029F80(v7, type metadata accessor for FMLocationAlertRowViewModel);
        sub_100029F80(v10, type metadata accessor for FMLocationAlertRowViewModel);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_100244968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100244A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_100245AA8(v31, v32);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100244D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = 0xD000000000000015;
      if (*v3 == 2)
      {
        v6 = 0xD000000000000010;
        v7 = 0x8000000100578BA0;
      }

      else
      {
        v7 = 0x8000000100578BC0;
      }

      v8 = 0x744965766F6D6572;
      if (!*v3)
      {
        v8 = 0x7449656D616E6572;
      }

      v9 = *v3 <= 1u ? v8 : v6;
      v10 = *v3 <= 1u ? 0xEA00000000006D65 : v7;
      if (*i <= 1u)
      {
        break;
      }

      if (*i == 2)
      {
        v11 = 0xD000000000000010;
        v12 = 0x8000000100578BA0;
LABEL_24:
        if (v9 != v11)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }

      v12 = 0x8000000100578BC0;
      if (v9 != 0xD000000000000015)
      {
LABEL_5:
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_25:
      if (v10 != v12)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    v11 = 0x7449656D616E6572;
    v12 = 0xEA00000000006D65;
    if (*i)
    {
      if (v9 != 0x744965766F6D6572)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_100244EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMItemCellViewModel();
  v31 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v28 = a1 + 32;
  v29 = v11;
  v27 = a2 + 32;
  while (v12 != v11)
  {
    v15 = (v13 + 16 * v12);
    v16 = (v14 + 16 * v12);
    if (*v15 != *v16)
    {
      return 0;
    }

    v17 = *(v15 + 1);
    v18 = *(v16 + 1);
    v19 = *(v17 + 16);
    if (v19 != *(v18 + 16))
    {
      return 0;
    }

    if (v19 && v17 != v18)
    {
      v30 = v12;
      v20 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v21 = v17 + v20;
      v22 = v18 + v20;

      v23 = 0;
      while (v23 < *(v17 + 16))
      {
        v24 = *(v31 + 72) * v23;
        result = sub_100027A40(v21 + v24, v10, type metadata accessor for FMItemCellViewModel);
        if (v23 >= *(v18 + 16))
        {
          goto LABEL_22;
        }

        sub_100027A40(v22 + v24, v7, type metadata accessor for FMItemCellViewModel);
        v25 = sub_10034A694(v10, v7);
        sub_100029F80(v7, type metadata accessor for FMItemCellViewModel);
        result = sub_100029F80(v10, type metadata accessor for FMItemCellViewModel);
        if ((v25 & 1) == 0)
        {

          return 0;
        }

        if (v19 == ++v23)
        {

          v11 = v29;
          v12 = v30;
          v14 = v27;
          v13 = v28;
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

LABEL_5:
    ++v12;
    result = 1;
    if (v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100245174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceCellViewModel();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v44 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = a1 + 32;
  v13 = a2 + 32;
  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v16 = *(v14 + 16);
  if (v16 != *(v15 + 16))
  {
    return 0;
  }

  v17 = 1;
  while (!v16 || v14 == v15)
  {
LABEL_44:
    result = v17 == v11;
    if (v17 != v11)
    {
      v14 = *(v12 + 8 * v17);
      v15 = *(v13 + 8 * v17++);
      v16 = *(v14 + 16);
      if (v16 == *(v15 + 16))
      {
        continue;
      }
    }

    return result;
  }

  v45 = v17;
  v46 = v13;
  v47 = v12;
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v50 = v15 + v18;
  v51 = v14 + v18;

  v20 = 0;
  v48 = v16;
  v49 = v5;
  while (v20 < *(v14 + 16))
  {
    v22 = *(v5 + 72) * v20;
    result = sub_100027A40(v51 + v22, v10, type metadata accessor for FMDeviceCellViewModel);
    if (v20 >= *(v15 + 16))
    {
      goto LABEL_53;
    }

    sub_100027A40(v50 + v22, v8, type metadata accessor for FMDeviceCellViewModel);
    if ((v10[2] != v8[2] || v10[3] != v8[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_48;
    }

    v23 = v4[8];
    v24 = *(v10 + v23);
    v25 = *(v8 + v23);
    if (v24)
    {
      if (!v25)
      {
        goto LABEL_48;
      }

      sub_100152B54();
      v26 = v25;
      v27 = v24;
      v28 = static NSObject.== infix(_:_:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (v25)
    {
      goto LABEL_48;
    }

    v29 = v4[17];
    v30 = *(v10 + v29);
    v31 = *(v10 + v29 + 8);
    v32 = (v8 + v29);
    v33 = v30 == *v32 && v31 == v32[1];
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v34 = v4[16], v35 = *(v10 + v34), v36 = *(v10 + v34 + 8), v37 = (v8 + v34), v35 != *v37) || v36 != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_48:
      sub_100029F80(v8, type metadata accessor for FMDeviceCellViewModel);
      sub_100029F80(v10, type metadata accessor for FMDeviceCellViewModel);
LABEL_49:

      return 0;
    }

    v38 = v10[1];
    v39 = v8[1];
    if (v38)
    {
      if (!v39 || (*v10 != *v8 || v38 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (v39)
    {
      goto LABEL_48;
    }

    if (*(v10 + v4[13]) != *(v8 + v4[13]) || *(v10 + v4[14]) != *(v8 + v4[14]) || *(v10 + v4[15]) != *(v8 + v4[15]) || *(v10 + v4[24]) != *(v8 + v4[24]))
    {
      goto LABEL_48;
    }

    v40 = v4[25];
    v41 = *(v10 + v40);
    v42 = *(v10 + v40 + 8);
    v43 = (v8 + v40);
    if (v41 == *v43 && v42 == v43[1])
    {
      sub_100029F80(v8, type metadata accessor for FMDeviceCellViewModel);
      result = sub_100029F80(v10, type metadata accessor for FMDeviceCellViewModel);
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100029F80(v8, type metadata accessor for FMDeviceCellViewModel);
      result = sub_100029F80(v10, type metadata accessor for FMDeviceCellViewModel);
      if ((v21 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    ++v20;
    v5 = v49;
    if (v48 == v20)
    {

      v13 = v46;
      v12 = v47;
      v17 = v45;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

unint64_t sub_1002455E0()
{
  result = qword_1006B7A80;
  if (!qword_1006B7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7A80);
  }

  return result;
}

uint64_t sub_100245634(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - v7;
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  sub_100027A40(a1, v10, type metadata accessor for FMSelectedSection);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    sub_100027A40(v10, v8, type metadata accessor for FMSelectedSection);
    v16 = String.init<A>(describing:)();
    v26 = v2;
    v17 = v5;
    v18 = a1;
    v20 = v19;
    sub_100029F80(v10, type metadata accessor for FMSelectedSection);
    v21 = sub_100005B4C(v16, v20, &v27);
    a1 = v18;
    v5 = v17;

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMRestoreState: restoreState(%s)", v14, 0xCu);
    sub_100006060(v15);
  }

  else
  {

    sub_100029F80(v10, type metadata accessor for FMSelectedSection);
  }

  sub_100027A40(a1, v5, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v24 = sub_10007EBC0(&qword_1006BEEE0);
      sub_100012DF0(&v5[*(v24 + 48)], &qword_1006B07D0);
      v25 = type metadata accessor for FMIPDevice();
      (*(*(v25 - 8) + 8))(v5, v25);
      return 0;
    }

    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_10;
      }

LABEL_23:
      sub_100029F80(v5, type metadata accessor for FMSelectedSection);
      return 0;
    }

    sub_100029F80(v5, type metadata accessor for FMSelectedSection);
    return 4;
  }

  if (EnumCaseMultiPayload > 14)
  {
    if (EnumCaseMultiPayload == 15)
    {
      return 1;
    }

    if (EnumCaseMultiPayload != 17 && EnumCaseMultiPayload != 19)
    {
LABEL_10:
      sub_100029F80(v5, type metadata accessor for FMSelectedSection);
      return 1;
    }

    return 4;
  }

  if (EnumCaseMultiPayload == 12)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 13)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100245A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BEEE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100245AA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100245AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B7A88);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = &v18 + *(v8 + 56) - v9;
  sub_100027A40(a1, &v18 - v9, type metadata accessor for FMSelectedSection);
  sub_100027A40(a2, v11, type metadata accessor for FMSelectedSection);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    case 2u:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_39;
      }

LABEL_37:
      sub_100029F80(v11, type metadata accessor for FMSelectedSection);
      v14 = v10;
      goto LABEL_42;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0xAu:
      goto LABEL_39;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    default:
      sub_100027A40(v10, v6, type metadata accessor for FMSelectedSection);
      v12 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100012DF0(&v6[v12], &qword_1006B07D0);
        v13 = type metadata accessor for FMIPDevice();
        (*(*(v13 - 8) + 8))(v6, v13);
LABEL_39:
        sub_100012DF0(v10, &qword_1006B7A88);
        return 0;
      }

      else
      {
        sub_100012DF0(&v11[v12], &qword_1006B07D0);
        v16 = type metadata accessor for FMIPDevice();
        v17 = *(*(v16 - 8) + 8);
        v17(v11, v16);
        sub_100012DF0(&v6[v12], &qword_1006B07D0);
        v17(v6, v16);
LABEL_41:
        v14 = v10;
LABEL_42:
        sub_100029F80(v14, type metadata accessor for FMSelectedSection);
        return 1;
      }
  }
}

unint64_t sub_100245F80()
{
  result = qword_1006B7AC0;
  if (!qword_1006B7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7AC0);
  }

  return result;
}

double sub_100245FD4()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 CGColor];

  v3 = [v0 whiteColor];
  v4 = [v0 blackColor];
  *&xmmword_1006D4290 = v2;
  *(&xmmword_1006D4290 + 8) = xmmword_100558480;
  qword_1006D42A8 = 0x4000000000000000;
  unk_1006D42B0 = v3;
  qword_1006D42B8 = v4;
  xmmword_1006D42C0 = xmmword_100559FE0;
  xmmword_1006D42D0 = xmmword_100559FF0;
  result = 0.00781250182;
  qword_1006D42E0 = 0x3F8000003E800000;
  return result;
}

void sub_10024610C()
{
  v1 = [v0 layer];
  [v1 setShouldRasterize:1];

  v2 = [v0 layer];
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  [v2 setRasterizationScale:v5];
  v6 = [v0 layer];
  v14 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_100006060(v13);
  v7 = _UISheetCornerRadius;
  if (v3)
  {
    v7 = 26.0;
  }

  [v6 setCornerRadius:v7];

  v8 = [v0 layer];
  [v8 setCornerCurve:kCACornerCurveContinuous];

  v9 = [v0 layer];
  [v9 setMasksToBounds:0];

  v10 = [v0 layer];
  if (qword_1006AEB78 != -1)
  {
    swift_once();
  }

  [v10 setShadowColor:xmmword_1006D4290];

  v11 = [v0 layer];
  [v11 setShadowRadius:*(&xmmword_1006D4290 + 1)];

  v12 = [v0 layer];
  [v12 setShadowOffset:{*&qword_1006D42A0, *&qword_1006D42A8}];

  sub_100246368();
}

void sub_100246368()
{
  v1 = OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled;
  v2 = v0[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled];
  if (qword_1006AEB78 != -1)
  {
    swift_once();
  }

  v3 = 40;
  if (v2)
  {
    v3 = 32;
  }

  [v0 setBackgroundColor:*(&xmmword_1006D4290 + v3)];
  if (qword_1006AEB78 != -1)
  {
    swift_once();
  }

  v17[2] = unk_1006D42B0;
  v17[3] = xmmword_1006D42C0;
  v17[4] = xmmword_1006D42D0;
  v18 = qword_1006D42E0;
  v17[0] = xmmword_1006D4290;
  v17[1] = *&qword_1006D42A0;
  sub_1002466A4(v17, v15);
  v4 = [v0 traitCollection];
  v5 = v0[v1];
  v6 = [v4 userInterfaceStyle];

  sub_1002466DC(v17);
  v7 = 48;
  if (v6 == 2)
  {
    v7 = 56;
  }

  v8 = 64;
  if (v6 == 2)
  {
    v8 = 72;
  }

  if (!v5)
  {
    v7 = v8;
  }

  [v0 setAlpha:*(v17 + v7)];
  v9 = [v0 layer];
  v15[3] = xmmword_1006D42C0;
  v15[4] = xmmword_1006D42D0;
  v16 = qword_1006D42E0;
  v15[0] = xmmword_1006D4290;
  v15[1] = *&qword_1006D42A0;
  v15[2] = unk_1006D42B0;
  sub_1002466A4(v15, v14);
  v10 = [v0 traitCollection];
  v11 = v10;
  if (v0[v1] == 1)
  {
    v12 = [v10 userInterfaceStyle];

    sub_1002466DC(v15);
    if (v12 == 2)
    {
      LODWORD(v13) = HIDWORD(v16);
    }

    else
    {
      LODWORD(v13) = v16;
    }
  }

  else
  {
    sub_1002466DC(v15);

    v13 = 0.0;
  }

  [v9 setShadowOpacity:v13];
}

id sub_10024664C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlatterBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024670C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100246754(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1002467BC()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32[0] = v6;
    *v5 = 136315138;
    if (*(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2))
    {
      v7 = 0x10000;
    }

    else
    {
      v7 = 0;
    }

    if (*(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1))
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_1002318A0(v8 | *(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode) | v7);
    v11 = sub_100005B4C(v9, v10, v32);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMSelectionController: map configuration updated %s", v5, 0xCu);
    sub_100006060(v6);
  }

  v12 = (v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  v13 = *(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  v14 = *(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1);
  v15 = *(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2);
  v16 = [objc_opt_self() standardUserDefaults];
  My = type metadata accessor for Feature.FindMy();
  v32[3] = My;
  v32[4] = sub_1000069D8();
  v18 = sub_100008FC0(v32);
  (*(*(My - 8) + 104))(v18, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  v19 = isFeatureEnabled(_:)();
  sub_100006060(v32);
  if (v15)
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  if (v14)
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  sub_100231DAC(v16, v19 & 1, v21 | v13 | v20);

  result = swift_beginAccess();
  v23 = *(v1 + 16);
  if (v23 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v24 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return result;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v24; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v23 + 8 * i + 32);
      }

      v31 = v30 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(v31 + 8);
        ObjectType = swift_getObjectType();
        if (v12[2])
        {
          v28 = 0x10000;
        }

        else
        {
          v28 = 0;
        }

        if (v12[1])
        {
          v29 = 256;
        }

        else
        {
          v29 = 0;
        }

        (*(v26 + 16))(v1, v29 | *v12 | v28, ObjectType, v26);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100246B60()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  v22 = My;
  v23 = sub_1000069D8();
  v3 = sub_100008FC0(&v20);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100006060(&v20);
  if ((My & 1) == 0)
  {
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
      v9 = swift_slowAlloc();
      v19 = v9;
      v20 = 0;
      *v8 = 136315138;
      v21 = 0xE000000000000000;
      type metadata accessor for FMDistanceCalculatorMeasurementSystem(0);
      _print_unlocked<A, B>(_:_:)();
      v10 = sub_100005B4C(v20, v21, &v19);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "FMSelectionController: selected distance %s", v8, 0xCu);
      sub_100006060(v9);
    }

    if (qword_1006AEC58 != -1)
    {
      swift_once();
    }

    v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedUnit;
    [qword_1006D48A8 setMeasurementSystem:*(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedUnit)];
    result = swift_beginAccess();
    v12 = *(v1 + 16);
    if (v12 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v13 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        return result;
      }
    }

    if (v13 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v13; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v12 + 8 * i + 32);
        }

        v18 = v17 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = *(v18 + 8);
          ObjectType = swift_getObjectType();
          (*(v15 + 24))(v1, *(v1 + v11), ObjectType, v15);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_100246EC8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B2B70);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMSelectionController: entering background", v11, 2u);
  }

  v12 = type metadata accessor for FMSelectedSection();
  v13 = *(*(v12 - 8) + 56);
  v13(v7, 1, 1, v12);
  v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027AA8(v1 + v14, v5, type metadata accessor for FMSelectedSection);
  v13(v5, 0, 1, v12);
  sub_1000598FC(v7, v5);
  sub_100012DF0(v5, &qword_1006B2B70);
  return sub_100012DF0(v7, &qword_1006B2B70);
}

uint64_t sub_100247120()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B2B70);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMSelectionController: entering foreground", v11, 2u);
  }

  v12 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027AA8(v1 + v12, v7, type metadata accessor for FMSelectedSection);
  v13 = type metadata accessor for FMSelectedSection();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 0, 1, v13);
  v14(v5, 1, 1, v13);
  sub_1000598FC(v7, v5);
  sub_100012DF0(v5, &qword_1006B2B70);
  return sub_100012DF0(v7, &qword_1006B2B70);
}

uint64_t sub_100247370(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1002473B4()
{

  sub_100029FE0(v0 + OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection, type metadata accessor for FMSelectedSection);
  sub_100029FE0(v0 + OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection, type metadata accessor for FMSelectedSection);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction, &unk_1006B8DD0);
  sub_100029FE0(v0 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo, type metadata accessor for FMPendingActionInfo);
  return v0;
}

uint64_t sub_10024747C()
{
  sub_1002473B4();

  return swift_deallocClassInstance();
}

uint64_t sub_10024752C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100005B4C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100247588(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006B32B8);
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

uint64_t sub_10024767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FMSelectionSubscription();
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v6 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v6;
}

uint64_t sub_100247790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for FMSelectionPendingAction(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = sub_10007EBC0(&qword_1006B7EF8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v30 - v18;
  v20 = *(v17 + 56);
  sub_100027AA8(a1, &v30 - v18, type metadata accessor for FMSelectionPendingAction);
  sub_100027AA8(a2, &v19[v20], type metadata accessor for FMSelectionPendingAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_28;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() != 10)
        {
          goto LABEL_28;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_28;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_28;
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_28;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_28;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100027AA8(v19, v15, type metadata accessor for FMSelectionPendingAction);
      if (!swift_getEnumCaseMultiPayload())
      {
        v28 = v30;
        v27 = v31;
        (*(v30 + 32))(v9, &v19[v20], v31);
        v24 = static UUID.== infix(_:_:)();
        v29 = *(v28 + 8);
        v29(v9, v27);
        v29(v15, v27);
        goto LABEL_39;
      }

      v13 = v15;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_100027AA8(v19, v13, type metadata accessor for FMSelectionPendingAction);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v30;
        v22 = v31;
        (*(v30 + 32))(v7, &v19[v20], v31);
        v24 = static UUID.== infix(_:_:)();
        v25 = *(v23 + 8);
        v25(v7, v22);
        v25(v13, v22);
LABEL_39:
        sub_100029FE0(v19, type metadata accessor for FMSelectionPendingAction);
        return v24 & 1;
      }

LABEL_22:
      (*(v30 + 8))(v13, v31);
LABEL_28:
      sub_100012DF0(v19, &qword_1006B7EF8);
      v24 = 0;
      return v24 & 1;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_28;
    }
  }

  sub_100029FE0(v19, type metadata accessor for FMSelectionPendingAction);
  v24 = 1;
  return v24 & 1;
}

double sub_100247C54()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 tertiaryLabelColor];
  qword_1006D4320 = v1;
  qword_1006D4328 = v2;
  result = -6.0;
  xmmword_1006D4330 = xmmword_10055A1D0;
  return result;
}

id sub_100247CC8()
{
  v1 = v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_showActivityIndicator];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicator];
  if (v1 == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicator]];
    v3 = &selRef_startAnimating;
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicator] removeFromSuperview];
    v3 = &selRef_stopAnimating;
  }

  v4 = objc_opt_self();
  sub_10002B27C();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints:v6];

  [v2 setHidden:v1 ^ 1u];
  v7 = *v3;

  return [v2 v7];
}

id sub_100247E64()
{
  v24 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator;
  v1 = *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.1];

  [v3 setBackgroundColor:v5];
  v6 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v10];

  [*&v0[v6] setNumberOfLines:0];
  v11 = qword_1006AEB80;
  v12 = *&v0[v6];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTextColor:qword_1006D4320];

  [*&v0[v6] setAdjustsFontForContentSizeCategory:1];
  v13 = *&v0[v6];
  v14 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityIdentifier:v14];

  v15 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel;
  v16 = *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel];
  v17 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
  [v16 setFont:v17];

  [*&v0[v15] setTextAlignment:2];
  [*&v0[v15] setNumberOfLines:0];
  [*&v0[v15] setTextColor:qword_1006D4328];
  [*&v0[v15] setAdjustsFontForContentSizeCategory:1];
  v18 = *&v0[v15];
  v19 = String._bridgeToObjectiveC()();
  [v18 setAccessibilityIdentifier:v19];

  v20 = *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicator];
  [v20 setHidden:1];
  v21 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView] setAxis:0];
  [*&v0[v21] setDistribution:2];
  [*&v0[v21] setAlignment:4];
  [*&v0[v21] addArrangedSubview:*&v0[v6]];
  [*&v0[v21] addArrangedSubview:*&v0[v15]];
  [*&v0[v21] addArrangedSubview:v20];
  [v0 addSubview:*&v0[v21]];
  [v0 addSubview:v20];
  v22 = *&v0[v24];

  return [v0 addSubview:v22];
}

id sub_100248220()
{
  v1 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator;
  [*&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicator];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100555120;
  v4 = [v2 trailingAnchor];
  v5 = [v0 trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v2 widthAnchor];
  if (qword_1006AEB80 != -1)
  {
    swift_once();
  }

  v8 = [v7 constraintEqualToConstant:*(&xmmword_1006D4330 + 1)];

  *(v3 + 40) = v8;
  v9 = [v2 centerYAnchor];
  v10 = [v0 centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v3 + 48) = v11;
  v12 = [*&v0[v1] topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:15.0];

  *(v3 + 56) = v14;
  v15 = [*&v0[v1] bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-15.0];

  *(v3 + 64) = v17;
  v18 = [*&v0[v1] leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v3 + 72) = v20;
  v21 = [*&v0[v1] trailingAnchor];
  v22 = [v2 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:*&xmmword_1006D4330];

  *(v3 + 80) = v23;
  *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicatorShowingContraints] = v3;

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1005521F0;
  v25 = [*&v0[v1] topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:15.0];

  *(v24 + 32) = v27;
  v28 = [*&v0[v1] bottomAnchor];
  v29 = [v0 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-15.0];

  *(v24 + 40) = v30;
  v31 = [*&v0[v1] leadingAnchor];
  v32 = [v0 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v24 + 48) = v33;
  v34 = [*&v0[v1] trailingAnchor];
  v35 = [v0 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v24 + 56) = v36;
  *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicatorHiddenConstraints] = v24;

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1005521F0;
  v38 = [*&v0[v53] leadingAnchor];
  v39 = [v0 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v37 + 32) = v40;
  v41 = [*&v0[v53] trailingAnchor];
  v42 = [v0 trailingAnchor];
  v55 = &type metadata for SolariumFeatureFlag;
  v56 = sub_10000BD04();
  LOBYTE(v38) = isFeatureEnabled(_:)();
  sub_100006060(v54);
  v43 = 16.0;
  if ((v38 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v43 = *&qword_1006D4798;
  }

  v44 = objc_opt_self();
  v45 = [v41 constraintEqualToAnchor:v42 constant:v43];

  *(v37 + 40) = v45;
  v46 = [*&v0[v53] bottomAnchor];
  v47 = [v0 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v37 + 48) = v48;
  v49 = [*&v0[v53] heightAnchor];
  v50 = [v49 constraintEqualToConstant:1.0];

  *(v37 + 56) = v50;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 activateConstraints:isa];

  v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_showActivityIndicator] = 0;
  return sub_100247CC8();
}

id sub_1002489F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDetailRowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100248B20()
{
  v1 = &v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_identifier];
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView;
  *&v0[v2] = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel;
  *&v0[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel;
  *&v0[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicator;
  *&v0[v6] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicatorShowingContraints] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicatorHiddenConstraints] = _swiftEmptyArrayStorage;
  v7 = &v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_title];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailText];
  *v8 = 0;
  v8[1] = 0;
  v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_isEnabled] = 1;
  v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_separated] = 1;
  v0[OBJC_IVAR____TtC6FindMy15FMDetailRowView_showActivityIndicator] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FMDetailRowView();
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100247E64();
  sub_100248220();

  return v9;
}

void sub_100248CB0()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicator;
  *(v0 + v6) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicatorShowingContraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_activityIndicatorHiddenConstraints) = _swiftEmptyArrayStorage;
  v7 = (v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_title);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailText);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_isEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_separated) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_showActivityIndicator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100248E38()
{
  result = qword_1006B7FC0;
  if (!qword_1006B7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7FC0);
  }

  return result;
}

id sub_100248FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1Transition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100249030(void *a1, void *a2, char a3)
{
  v4 = [a1 viewControllerForKey:*a2];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      v6 = [v5 view];
      if (!v6)
      {
        break;
      }

      v7 = v6;
      type metadata accessor for FMPassthroughView();
      v17 = v7;
      v8 = v17;
      while (!swift_dynamicCastClass())
      {
        v9 = [v17 superview];

        v8 = v9;
        if (!v9)
        {

          return;
        }
      }

      v10 = [v5 view];
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = v10;
      v12 = v11;
      while (1)
      {
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          break;
        }

        v14 = [v11 superview];

        v12 = v14;
        if (!v14)
        {
          v12 = v11;
          goto LABEL_14;
        }
      }

      v15 = v13;

      *(v15 + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = a3;
LABEL_14:

      v16 = [v5 presentingViewController];
      v5 = v16;
      if (!v16)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1002492B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F60(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000BD1D4(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      sub_1000070D4(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v8 + 8))(v10, v7);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  aBlock[4] = sub_100097224;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100631158;
  v18 = _Block_copy(aBlock);

  [v2 dismissViewControllerAnimated:1 completion:v18];
  _Block_release(v18);
}

void sub_100249568(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPAccessoryError();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = FMIPAccessoryError.localizedAlertTitle.getter();
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v37._object = 0x8000000100579A00;
  v12.value._object = 0x80000001005799E0;
  v37._countAndFlagsBits = 0xD000000000000018;
  v13._countAndFlagsBits = v7;
  v13._object = v9;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v37);

  v15 = String._bridgeToObjectiveC()();

  [v2 setTitle:v15];

  v16 = FMIPAccessoryError.localizedDescription.getter();
  v18 = v17;
  v19 = [v10 mainBundle];
  v38._object = 0x8000000100579A00;
  v20.value._object = 0x80000001005799E0;
  v21 = v2;
  v38._countAndFlagsBits = 0xD000000000000018;
  v22._countAndFlagsBits = v16;
  v22._object = v18;
  v20.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v20, v19, v23, v38);

  v24 = v35;
  v25 = String._bridgeToObjectiveC()();

  [v2 setSubtitle:v25];

  v26 = v36;
  (*(v24 + 16))(v6, a1, v36);
  v27 = (*(v24 + 88))(v6, v26);
  if (v27 == enum case for FMIPAccessoryError.bluetoothDisabled(_:))
  {
    v28 = 0x8000000100589320;
LABEL_3:
    v29 = 0xD00000000000001BLL;
    goto LABEL_8;
  }

  if (v27 == enum case for FMIPAccessoryError.invalidAccountState(_:))
  {
    v28 = 0x8000000100589300;
    v29 = 0xD000000000000010;
  }

  else
  {
    if (v27 != enum case for FMIPAccessoryError.accessoryBatteryTooLow(_:))
    {
      v28 = 0x80000001005892E0;
      (*(v24 + 8))(v6, v26);
      goto LABEL_3;
    }

    v28 = 0xEA00000000003532;
    v29 = 0x2E79726574746162;
  }

LABEL_8:
  v30 = [objc_opt_self() systemBlueColor];
  v31 = sub_10044CA40(50.0, v29, v28, v30);

  if (v31)
  {
    sub_10007EBC0(&qword_1006AFC30);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1005528C0;
    *(v32 + 32) = v31;
    sub_100152B54();
    v33 = v31;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v21 setImages:isa];
  }
}

void sub_10024995C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPAccessoryError();
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006B0120);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v50 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v55 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v50 - v15;
  v17 = sub_10024A1AC();
  if (v18)
  {
    v52 = v18;
    v53 = v16;
    v50[1] = v17;
    v19 = type metadata accessor for FMAccessoryDiscoveryAndPairingFailedCard.ViewModel();
    sub_1000C5F60(a1 + *(v19 + 20), v8);
    v20 = *(v12 + 48);
    v21 = v20(v8, 1, v11);
    v51 = v12;
    if (v21 == 1)
    {
      v22 = v54;
      (*(v54 + 16))(v4, a1, v2);
      v23 = (*(v22 + 88))(v4, v2);
      if (v23 == enum case for FMIPAccessoryError.bluetoothDisabled(_:) || v23 == enum case for FMIPAccessoryError.invalidAccountState(_:))
      {
        URL.init(string:)();
      }

      else
      {
        (*(v51 + 56))(v10, 1, 1, v11);
        (*(v22 + 8))(v4, v2);
      }

      v27 = &selRef__enter3DMode;
      if (v20(v8, 1, v11) != 1)
      {
        sub_1000BD1D4(v8);
      }
    }

    else
    {
      (*(v12 + 32))(v10, v8, v11);
      (*(v12 + 56))(v10, 0, 1, v11);
      v27 = &selRef__enter3DMode;
    }

    if (v20(v10, 1, v11) == 1)
    {

      sub_1000BD1D4(v10);
      v24 = 0;
      v25 = v56;
      v26 = &selRef__enter3DMode;
    }

    else
    {
      v28 = v51;
      v29 = *(v51 + 32);
      v30 = v53;
      v29(v53, v10, v11);
      v31 = swift_allocObject();
      v25 = v56;
      swift_unknownObjectWeakInit();
      v32 = v55;
      (*(v28 + 16))(v55, v30, v11);
      v33 = (*(v28 + 80) + 24) & ~*(v28 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      v29((v34 + v33), v32, v11);

      v35 = String._bridgeToObjectiveC()();

      v61 = sub_10024A7C8;
      v62 = v34;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100017328;
      v60 = &unk_1006310B8;
      v36 = _Block_copy(&aBlock);
      v37 = objc_opt_self();

      v38 = [v37 actionWithTitle:v35 style:0 handler:v36];

      _Block_release(v36);

      v26 = &selRef__enter3DMode;
      v39 = [v25 addAction:v38];

      (*(v28 + 8))(v53, v11);
      v27 = &selRef__enter3DMode;

      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
    v25 = v56;
    v26 = &selRef__enter3DMode;
    v27 = &selRef__enter3DMode;
  }

  v40 = [objc_opt_self() mainBundle];
  v41.value._countAndFlagsBits = 0xD000000000000013;
  v63._object = 0x8000000100579A00;
  v42._countAndFlagsBits = 0xD00000000000002ALL;
  v42._object = 0x80000001005891C0;
  v41.value._object = 0x80000001005799E0;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v41, v40, v43, v63);

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v45 = String._bridgeToObjectiveC()();

  v61 = sub_10024A774;
  v62 = v44;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100017328;
  v60 = &unk_100631068;
  v46 = _Block_copy(&aBlock);
  v47 = objc_opt_self();

  v48 = [v47 v27[202]];

  _Block_release(v46);

  v49 = [v25 v26[203]];
}

uint64_t sub_10024A1AC()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPAccessoryError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FMIPAccessoryError.bluetoothDisabled(_:))
  {
    v7 = "IRING_ACCOUNT_UPGRADE_BUTTON";
    v8 = [objc_opt_self() mainBundle];
    v16 = 0x8000000100579A00;
    v9 = 0xD000000000000036;
  }

  else if (v6 == enum case for FMIPAccessoryError.invalidAccountState(_:))
  {
    v7 = "Y_LEARN_MORE_BUTTON";
    v8 = [objc_opt_self() mainBundle];
    v16 = 0x8000000100579A00;
    v9 = 0xD00000000000002CLL;
  }

  else
  {
    if (v6 != enum case for FMIPAccessoryError.accessoryBatteryTooLow(_:))
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    v7 = "prefs:root=Bluetooth";
    v8 = [objc_opt_self() mainBundle];
    v16 = 0x8000000100579A00;
    v9 = 0xD000000000000033;
  }

  v10 = v7 | 0x8000000000000000;
  v11.value._object = 0x80000001005799E0;
  v12 = 0xD000000000000018;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, v11, v8, v13, *(&v16 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10024A444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a3, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    (*((swift_isaMask & *v8) + 0x50))(v6);

    return sub_1000BD1D4(v6);
  }

  return result;
}

void sub_10024A5C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    aBlock[4] = sub_1000822F4;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100631108;
    v3 = _Block_copy(aBlock);

    [v1 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

id sub_10024A718(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for FMAccessoryDiscoveryAndPairingFailedCard.ViewModel()
{
  result = qword_1006B81C8;
  if (!qword_1006B81C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10024A7C8(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10024A444(a1, v4, v5);
}

void sub_10024A864()
{
  type metadata accessor for FMIPAccessoryError();
  if (v0 <= 0x3F)
  {
    sub_10018A184();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_10024A8F4()
{
  v1 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_foregroundLayer;
  *&v0[v1] = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_borderLayer;
  *&v0[v2] = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_backgroundLayer;
  *&v0[v3] = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_animationGroup;
  *&v0[v4] = [objc_allocWithZone(CAAnimationGroup) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FMAccessoryPairingWithYouIndicator();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024AAF0();
  sub_10024AD74();

  return v5;
}

void sub_10024AAF0()
{
  v1 = [v0 layer];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_backgroundLayer];
  [v1 addSublayer:v2];

  v3 = [v0 layer];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_foregroundLayer];
  [v3 addSublayer:v4];

  v5 = [v0 layer];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_borderLayer];
  [v5 addSublayer:v6];

  [v4 setCornerCurve:kCACornerCurveCircular];
  v7 = objc_opt_self();
  v8 = [v7 systemBlueColor];
  v9 = [v8 CGColor];

  [v4 setBackgroundColor:v9];
  [v6 setBorderWidth:1.0];
  v10 = [v7 whiteColor];
  v11 = [v10 CGColor];

  [v6 setBorderColor:v11];
  [v2 setCornerCurve:kCACornerCurveCircular];
  v12 = [v7 systemBlueColor];
  v13 = [v12 CGColor];

  [v2 setBackgroundColor:v13];
  [v2 setBorderWidth:1.0];
  v14 = [v7 clearColor];
  v15 = [v14 CGColor];

  [v2 setBorderColor:v15];
}

void sub_10024AD74()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  v5 = [objc_allocWithZone(CABasicAnimation) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setKeyPath:v6];

  v7 = [objc_opt_self() functionWithName:kCAValueFunctionScale];
  [v5 setValueFunction:v7];

  v8 = Array._bridgeToObjectiveC()().super.isa;
  [v5 setFromValue:v8];

  v9 = Array._bridgeToObjectiveC()().super.isa;
  [v5 setToValue:v9];

  v10 = [objc_allocWithZone(CAAnimationGroup) init];
  sub_10007EBC0(&qword_1006AFC30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100552EE0;
  *(v11 + 32) = v2;
  *(v11 + 40) = v5;
  sub_10000905C(0, &qword_1006B8248);
  v12 = v5;
  v13 = v2;
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setAnimations:v14];

  v15 = v10;
  [v15 setDuration:2.0];
  [v15 setRemovedOnCompletion:0];
  LODWORD(v16) = 2139095039;
  [v15 setRepeatCount:v16];
  v17 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
  [v15 setTimingFunction:v17];

  v18 = *(v0 + OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_backgroundLayer);
  v19 = String._bridgeToObjectiveC()();
  [v18 addAnimation:v15 forKey:v19];
}

void sub_10024B0E4()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_foregroundLayer];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_backgroundLayer];
  *(inited + 40) = v3;
  v36 = v2;
  v4 = v3;
  v5 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_5;
    }

    if (v5 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(inited + 8 * v5 + 32);
LABEL_5:
    v7 = v6;
    ++v5;
    v8 = [v0 layer];
    [v8 bounds];
    v37 = v10;
    v38 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [v0 layer];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v39.origin.x = v17;
    v39.origin.y = v19;
    v39.size.width = v21;
    v39.size.height = v23;
    v24 = CGRectGetWidth(v39) * 0.3;
    v25 = [v0 layer];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v40.origin.x = v27;
    v40.origin.y = v29;
    v40.size.width = v31;
    v40.size.height = v33;
    v34 = CGRectGetHeight(v40) * 0.3;
    v41.origin.y = v37;
    v41.origin.x = v38;
    v41.size.width = v12;
    v41.size.height = v14;
    v42 = CGRectInset(v41, v24, v34);
    [v7 setFrame:{v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
    [v7 bounds];
    [v7 setCornerRadius:CGRectGetWidth(v43) * 0.5];

    if (v5 == 2)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      v35 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_borderLayer];
      [v36 frame];
      v45 = CGRectInset(v44, -1.0, -1.0);
      [v35 setFrame:{v45.origin.x, v45.origin.y, v45.size.width, v45.size.height}];
      [v35 bounds];
      [v35 setCornerRadius:CGRectGetWidth(v46) * 0.5];
      return;
    }
  }

  __break(1u);
}

id sub_10024B3D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryPairingWithYouIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10024B498()
{
  v1 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_foregroundLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_borderLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_backgroundLayer;
  *(v0 + v3) = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingWithYouIndicator_animationGroup;
  *(v0 + v4) = [objc_allocWithZone(CAAnimationGroup) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10024B578(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v45[0]))
  {
    v4 = 0x74696C6C65746173;
  }

  else
  {
    v4 = 0x65726F6C707865;
  }

  if (LOBYTE(v45[0]))
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (a1)
  {
    v6 = 0x74696C6C65746173;
  }

  else
  {
    v6 = 0x65726F6C707865;
  }

  if (a1)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 != v6 || v5 != v7)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return result;
    }

    v11 = *(*(v2 + 16) + 56);
    v12 = objc_opt_self();

    v13 = [v12 standardUserDefaults];
    v14 = sub_10023245C(a1 & 1);

    v15 = (v11 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
    *v15 = v14 & 1;
    v15[1] = BYTE1(v14) & 1;
    v15[2] = BYTE2(v14) & 1;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45[0] = v20;
      *v19 = 136315138;
      if (v15[2])
      {
        v21 = 0x10000;
      }

      else
      {
        v21 = 0;
      }

      if (v15[1])
      {
        v22 = 256;
      }

      else
      {
        v22 = 0;
      }

      v23 = sub_1002318A0(v22 | *v15 | v21);
      v25 = v11;
      v26 = sub_100005B4C(v23, v24, v45);

      *(v19 + 4) = v26;
      v11 = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMSelectionController: map configuration updated %s", v19, 0xCu);
      sub_100006060(v20);
    }

    v27 = *v15;
    v28 = v15[1];
    v29 = v15[2];
    v30 = [v12 standardUserDefaults];
    My = type metadata accessor for Feature.FindMy();
    v45[3] = My;
    v45[4] = sub_10000A150(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v32 = sub_100008FC0(v45);
    (*(*(My - 8) + 104))(v32, enum case for Feature.FindMy.springfieldIntegration(_:), My);
    v33 = isFeatureEnabled(_:)();
    sub_100006060(v45);
    if (v29)
    {
      v34 = 0x10000;
    }

    else
    {
      v34 = 0;
    }

    if (v28)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    sub_100231DAC(v30, v33 & 1, v35 | v27 | v34);

    result = swift_beginAccess();
    v36 = *(v11 + 16);
    if (v36 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v37 = result;
      if (result)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
LABEL_36:
        if (v37 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v37; ++i)
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v43 = *(v36 + 8 * i + 32);
          }

          v44 = v43 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v39 = *(v44 + 8);
            ObjectType = swift_getObjectType();
            if (v15[2])
            {
              v41 = 0x10000;
            }

            else
            {
              v41 = 0;
            }

            if (v15[1])
            {
              v42 = 256;
            }

            else
            {
              v42 = 0;
            }

            (*(v39 + 16))(v11, v42 | *v15 | v41, ObjectType, v39);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_10024BA8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1 | (v2 << 16);
}

void sub_10024BB08()
{
  v1 = sub_10007EBC0(&qword_1006B5210);
  __chkstk_darwin(v1 - 8);
  v3 = (&v25 - v2);
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10024D0C0(v0 + OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel_mapAttribution, v3);
  v11 = sub_10007EBC0(&qword_1006B5230);
  if ((*(*(v11 - 8) + 48))(v3, 1, v11) == 1)
  {
    sub_100012DF0(v3, &qword_1006B5210);
    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_4:
    sub_100012DF0(v6, &unk_1006B0120);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMChooseMapViewModel: No URL found", v15, 2u);
    }

    return;
  }

  sub_100035318(v3 + *(v11 + 48), v6, &unk_1006B0120);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  (*(v8 + 32))(v10, v6, v7);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMChooseMapViewModel: Open attribution URL", v19, 2u);
  }

  v20 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  sub_10015391C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10000A150(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 openURL:v23 options:isa completionHandler:0];

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_10024BFD0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = [v2 string];
  if (v7)
  {
    *a1 = v7;
    v8 = v7;
    v9 = [v2 url];
    if (v9)
    {
      v10 = v9;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    v16 = sub_10007EBC0(&qword_1006B5230);
    sub_100035318(v6, a1 + *(v16 + 48), &unk_1006B0120);
    return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
  }

  else
  {
    v12 = sub_10007EBC0(&qword_1006B5230);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_10024C1F8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10024C288()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10024C314(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_10007EBC0(&qword_1006B5210);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-v7];
  v9 = sub_10007EBC0(&qword_1006B8360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28[-v11];
  v13 = OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel__availableModes;
  v29 = &off_100621C70;
  sub_10007EBC0(&qword_1006B82B0);
  Published.init(initialValue:)();
  (*(v10 + 32))(v3 + v13, v12, v9);
  *(v3 + OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel_selectionSubscription) = 0;
  *(v3 + 16) = a1;
  if (a2)
  {

    v14 = a2;
    sub_10024BFD0(v8);
  }

  else
  {
    v15 = sub_10007EBC0(&qword_1006B5230);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  sub_100035318(v8, v3 + OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel_mapAttribution, &qword_1006B5210);
  v16 = (*(a1 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  swift_beginAccess();
  v28[5] = v17;
  v28[6] = v18;
  v28[7] = v19;
  Published.init(initialValue:)();
  swift_endAccess();
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
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMChooseMapViewModel: Subscribe to selection controller", v23, 2u);
  }

  v24 = *(a1 + 56);

  v26 = sub_1003CD38C(v25, v24);

  *(v3 + OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel_selectionSubscription) = v26;

  return v3;
}

int64_t sub_10024C690()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMChooseMapViewModel: Unsubscribe to selection controller", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel_selectionSubscription);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(*(v1 + 16) + 56);
  swift_beginAccess();

  result = sub_1003CD53C((v7 + 16), v6);
  v9 = *(v7 + 16);
  if (v9 >> 62)
  {
    v15 = result;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    result = v15;
    if (v10 >= v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= result)
    {
LABEL_8:
      sub_1003CD570(result, v10);
      swift_endAccess();

LABEL_9:

      sub_100012DF0(v1 + OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel_mapAttribution, &qword_1006B5210);
      v11 = OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel__availableModes;
      v12 = sub_10007EBC0(&qword_1006B8360);
      (*(*(v12 - 8) + 8))(v1 + v11, v12);
      v13 = OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel__selection;
      v14 = sub_10007EBC0(&qword_1006B8368);
      (*(*(v14 - 8) + 8))(v1 + v13, v14);

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024C8FC()
{
  sub_10024C690();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMChooseMapViewModel()
{
  result = qword_1006B8290;
  if (!qword_1006B8290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024C9A8()
{
  sub_10024CB1C(319, &qword_1006B82A0, &qword_1006B5230, &unk_1005570F0, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10024CB1C(319, &qword_1006B82A8, &qword_1006B82B0, &unk_10055A400, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_10024CB80();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10024CB1C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10007EC08(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10024CB80()
{
  if (!qword_1006B82B8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B82B8);
    }
  }
}

uint64_t sub_10024CBD0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10024CC58@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10024CCC4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
    v21 = a1;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMChooseMapViewModel: <FMSelectionSubscriber> selectedMapMode update", v15, 2u);
    a1 = v21;
  }

  sub_100003E90();
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1 & 1;
  *(v17 + 25) = BYTE1(a1) & 1;
  *(v17 + 26) = BYTE2(a1) & 1;
  aBlock[4] = sub_10024D08C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006311E8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A150(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10024D0C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B5210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL MKCircle.isEqual(_:)(uint64_t a1)
{
  sub_10017EE08(a1, v27);
  if (!v28)
  {
    sub_10000D2C0(v27);
    return 0;
  }

  sub_10024D294();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v26 coordinate];
  v3 = v2;
  [v1 coordinate];
  if (v3 != v4 || ([v26 coordinate], v6 = v5, objc_msgSend(v1, "coordinate"), v6 != v7) || (objc_msgSend(v26, "radius"), v9 = v8, objc_msgSend(v1, "radius"), v9 != v10))
  {

    return 0;
  }

  [v26 boundingMapRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 boundingMapRect];
  if (v12 == v22)
  {
    v23 = v16 == v20;
    if (v18 != v21)
    {
      v23 = 0;
    }

    v24 = v14 == v19 && v23;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

unint64_t sub_10024D294()
{
  result = qword_1006B8370;
  if (!qword_1006B8370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B8370);
  }

  return result;
}

uint64_t MKCircle.hash.getter()
{
  [v0 coordinate];
  v1 = Double.hashValue.getter();
  [v0 coordinate];
  v2 = Double.hashValue.getter() ^ v1;
  [v0 radius];
  v3 = Double.hashValue.getter();
  [v0 boundingMapRect];
  v4 = v2 ^ v3 ^ Double.hashValue.getter();
  [v0 boundingMapRect];
  v5 = Double.hashValue.getter();
  [v0 boundingMapRect];
  v6 = v5 ^ Double.hashValue.getter();
  [v0 boundingMapRect];
  return v4 ^ v6 ^ Double.hashValue.getter();
}

void *sub_10024D460(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  result = sub_10003C3C0(a1);
  *(result + OBJC_IVAR____TtC6FindMy14FMTerminalView_isPeopleTab) = 1;
  return result;
}

id sub_10024D504()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPersonTerminalView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10024D538(char a1, double a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  v16 = sub_100252664;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100004AE4;
  v15 = &unk_100631678;
  v7 = _Block_copy(&v12);
  v8 = v2;

  [v5 animateWithDuration:0x20000 delay:v7 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.8 completion:a2];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v16 = sub_100252670;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100004AE4;
  v15 = &unk_1006316C8;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v5 animateWithDuration:0x20000 delay:v10 options:0 animations:0.4 completion:0.0];
  _Block_release(v10);
}

void sub_10024D71C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setUserInteractionEnabled:0];

    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v14 = sub_100252640;
    v15 = v4;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100004AE4;
    v13 = &unk_100631588;
    v5 = _Block_copy(&v10);
    v6 = v0;

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v14 = sub_10025265C;
    v15 = v7;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_10037A044;
    v13 = &unk_1006315D8;
    v8 = _Block_copy(&v10);
    v9 = v6;

    [v3 animateWithDuration:v5 animations:v8 completion:0.1];
    _Block_release(v8);
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_10024D8DC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setUserInteractionEnabled:0];

    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v14 = sub_1002526B8;
    v15 = v4;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100004AE4;
    v13 = &unk_100631498;
    v5 = _Block_copy(&v10);
    v6 = v0;

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v14 = sub_100252618;
    v15 = v7;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_10037A044;
    v13 = &unk_1006314E8;
    v8 = _Block_copy(&v10);
    v9 = v6;

    [v3 animateWithDuration:v5 animations:v8 completion:0.1];
    _Block_release(v8);
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

id sub_10024DA9C(double a1, double a2)
{
  v5 = v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1006D4738;
  v61 = *&qword_1006D4740;
  v7 = *&qword_1006D4748;
  v8 = *&qword_1006D4770;
  v9 = unk_1006D4780;
  v57 = *&qword_1006D4768;
  v58 = *&qword_1006D4778;
  v10 = qword_1006D47A0;
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 keyWindow];

  if (v12 && (v13 = [v12 rootViewController], v12, v13) && (v14 = objc_msgSend(v13, "view"), v13, v14))
  {
    [v14 layoutMargins];
    top = v15;
    right = v18;
    left = v17;
    bottom = v19;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    left = UIEdgeInsetsZero.left;
  }

  v21 = [v2 traitCollection];
  v22 = [v21 horizontalSizeClass];

  if (v22 == 1)
  {
    result = [v2 view];
    if (result)
    {
      v24 = result;
      [result setFrame:{0.0, 0.0, a1, a2}];

      v25 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground];
      [v25 setHidden:0];
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_42;
  }

  result = [v2 view];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v26 = result;
  v27 = [result window];

  if (v27)
  {
    [v27 bounds];
    v29 = v28;
  }

  else
  {
    v29 = 0.0;
  }

  v63 = &type metadata for SolariumFeatureFlag;
  v64 = sub_10000BD04();
  v30 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  if (v30)
  {
    v54 = v9;
    v55 = a2;
    v56 = v6;
    result = [v2 view];
    if (!result)
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v31 = result;
    [result bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v65.origin.x = v33;
    v65.origin.y = v35;
    v65.size.width = v37;
    v65.size.height = v39;
    v40 = v58 + v57 + CGRectGetMinY(v65);
    if (v40 <= v58 + v8 + top)
    {
      v40 = v58 + v8 + top;
    }

    v41 = v54 + v7 + v40;
    v6 = v56;
    v42 = v55 - v41 - v61;
  }

  else
  {
    v41 = v7 + top;
    v42 = a2 - v61 - top - bottom;
  }

  result = [v2 view];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v43 = result;
  v44 = v29 - right - v6;
  if (v10 != 1)
  {
    v44 = left;
  }

  [result setFrame:{v44, v41, v6, v42}];

  v25 = *&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground];
  [v25 setHidden:1];
LABEL_25:
  if (v5 == 2)
  {
    v47 = 1.0;
    v50 = 1.0;
  }

  else
  {
    if (v5 == 1)
    {
      v63 = &type metadata for SolariumFeatureFlag;
      v45 = sub_10000BD04();
      v64 = v45;
      v46 = isFeatureEnabled(_:)();
      sub_100006060(v62);
      v47 = 0.64;
      if (v46)
      {
        v48 = 0.5;
      }

      else
      {
        v48 = 0.64;
      }

      sub_1000493F8(0, v48);
      v63 = &type metadata for SolariumFeatureFlag;
      v64 = v45;
      v49 = isFeatureEnabled(_:)();
      sub_100006060(v62);
      if (v49)
      {
        v47 = 0.5;
      }

      goto LABEL_36;
    }

    v47 = 0.0;
    v50 = 0.0;
  }

  sub_1000493F8(0, v50);
LABEL_36:
  v63 = &type metadata for SolariumFeatureFlag;
  v64 = sub_10000BD04();
  v51 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  v52 = 0.64;
  if (v51)
  {
    v52 = 0.5;
  }

  v53 = v52 - v47;
  if (v53 <= 0.0)
  {
    v53 = 0.0;
  }

  return [v25 setAlpha:*&v2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration] * v53];
}

void sub_10024DF58(char a1)
{
  v15 = *(*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer) + OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = objc_opt_self();
      v3 = v15;
      v4 = [v2 mainBundle];
      v14 = 0x8000000100589880;
      v5 = 0x8000000100589860;
      v6 = 0xD000000000000022;
      v7 = 0xD000000000000010;
    }

    else
    {
      v10 = objc_opt_self();
      v11 = v15;
      v4 = [v10 mainBundle];
      v14 = 0x80000001005898B0;
      v7 = 0x5A49535F44524143;
      v5 = 0xEF4C4C414D535F45;
      v6 = 0xD000000000000021;
    }
  }

  else
  {
    v8 = objc_opt_self();
    v9 = v15;
    v4 = [v8 mainBundle];
    v14 = 0x80000001005898E0;
    v7 = 0x5A49535F44524143;
    v5 = 0xEE004C4C55465F45;
    v6 = 0xD000000000000020;
  }

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v4, v12, *&v6);

  v13 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityValue:v13];
}

uint64_t sub_10024E18C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x79656B2D636F6CLL;
    }

    else
    {
      v3 = 2036625250;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x736772612D636F6CLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001005790C0;
  }

  else
  {
    v3 = 0x2D7972616D6D7573;
    v4 = 0xEB00000000677261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x79656B2D636F6CLL;
    }

    else
    {
      v6 = 2036625250;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x736772612D636F6CLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001005790C0;
    if (v3 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000677261;
    if (v3 != 0x2D7972616D6D7573)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

BOOL sub_10024E338(char a1, unsigned __int8 a2)
{
  v2 = 0.0;
  v3 = 0.0;
  if (a1)
  {
    if (a1 != 1)
    {
      v3 = 1.0;
      v6 = a2;
      if (!a2)
      {
        return v3 == v2;
      }

      goto LABEL_9;
    }

    v10 = &type metadata for SolariumFeatureFlag;
    v4 = a2;
    v11 = sub_10000BD04();
    v5 = isFeatureEnabled(_:)();
    sub_100006060(v9);
    a2 = v4;
    if (v5)
    {
      v3 = 0.5;
    }

    else
    {
      v3 = 0.64;
    }
  }

  v6 = a2;
  if (!a2)
  {
    return v3 == v2;
  }

LABEL_9:
  if (v6 == 1)
  {
    v10 = &type metadata for SolariumFeatureFlag;
    v11 = sub_10000BD04();
    v7 = isFeatureEnabled(_:)();
    sub_100006060(v9);
    if (v7)
    {
      v2 = 0.5;
    }

    else
    {
      v2 = 0.64;
    }
  }

  else
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

uint64_t sub_10024E42C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746553746F6ELL;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x64656C6261736964;
  if (a1 != 5)
  {
    v5 = 0x646575657571;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x676E69646E6570;
  if (a1 != 3)
  {
    v7 = 0x676E6970706F7473;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6C616D726F6ELL;
  if (a1 != 1)
  {
    v8 = 0x657669746361;
  }

  if (!a1)
  {
    v8 = 0x746553746F6ELL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x6C616D726F6ELL)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 0x657669746361)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xE800000000000000;
        if (v9 != 0x64656C6261736964)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xE600000000000000;
        if (v9 != 0x646575657571)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x676E69646E6570)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v11 = 0xE800000000000000;
    v2 = 0x676E6970706F7473;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_10024E628(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6563616C706572;
  if (a1 != 5)
  {
    v5 = 1684104548;
    v4 = 0xE400000000000000;
  }

  v6 = 0x66694C796C726165;
  v7 = 0xE800000000000000;
  if (a1 == 3)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v6 = 0x6566694C6574616CLL;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6873657266;
  if (a1 != 1)
  {
    v9 = 0x65776F5068676968;
    v8 = 0xE900000000000072;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6873657266)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = 0xE900000000000072;
        if (v11 != 0x65776F5068676968)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6E776F6E6B6E75)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6563616C706572)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1684104548)
      {
LABEL_42:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xE900000000000065;
    if (v11 != 0x66694C796C726165)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6566694C6574616CLL)
    {
      goto LABEL_42;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_42;
  }

  v14 = 1;
LABEL_43:

  return v14 & 1;
}

uint64_t sub_10024E850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000015;
  v5 = 0x8000000100579000;
  if (a1 != 5)
  {
    v4 = 0x6E6564646968;
    v5 = 0xE600000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xE90000000000006BLL;
  }

  else
  {
    v6 = 0xEF6569776574536BLL;
  }

  if (a1 <= 4u)
  {
    v4 = 0x726F7774654E6F6ELL;
    v5 = v6;
  }

  v7 = 0x41646567616E616DLL;
  v8 = 0xE900000000000074;
  if (a1 == 1)
  {
    v8 = 0xEE00746E756F6363;
  }

  else
  {
    v7 = 0x6E756F6363416F6ELL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xEE00746E756F6363;
        if (v9 != 0x41646567616E616DLL)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v11 = 0xE900000000000074;
        if (v9 != 0x6E756F6363416F6ELL)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0x8000000100579000;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6564646968)
      {
LABEL_41:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE90000000000006BLL;
    if (v9 != 0x726F7774654E6F6ELL)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v11 = 0xEF6569776574536BLL;
    if (v9 != 0x726F7774654E6F6ELL)
    {
      goto LABEL_41;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_41;
  }

  v12 = 1;
LABEL_42:

  return v12 & 1;
}

uint64_t sub_10024EAA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  if (a1 <= 2u)
  {
    v3 = 0x8000000100578F00;
    v4 = 0x8000000100578F20;
    v7 = 0xD00000000000001ALL;
    if (a1 != 1)
    {
      v7 = 0x6E756F5379616C70;
      v4 = 0xE900000000000064;
    }

    v5 = a1 == 0;
    if (a1)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xD000000000000013;
    }
  }

  else if (a1 > 4u)
  {
    v3 = 0x8000000100578F90;
    v4 = 0x8000000100578FB0;
    v5 = a1 == 5;
    if (a1 == 5)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000012;
    }
  }

  else
  {
    v3 = 0x8000000100578F50;
    v4 = 0x8000000100578F70;
    v5 = a1 == 3;
    if (a1 == 3)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD00000000000001BLL;
    }
  }

  if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD00000000000001ALL;
      }

      else
      {
        v2 = 0x6E756F5379616C70;
      }

      if (a2 == 1)
      {
        v10 = 0x8000000100578F20;
      }

      else
      {
        v10 = 0xE900000000000064;
      }
    }

    else
    {
      v10 = 0x8000000100578F00;
      v2 = 0xD000000000000013;
    }

    goto LABEL_34;
  }

  if (a2 > 4u)
  {
    if (a2 != 5)
    {
      v9 = "followingPlaySound";
      goto LABEL_33;
    }

    v10 = 0x8000000100578F90;
    v2 = 0xD000000000000015;
  }

  else
  {
    if (a2 == 3)
    {
      v9 = "followingLearnMore";
LABEL_33:
      v10 = (v9 - 32) | 0x8000000000000000;
      goto LABEL_34;
    }

    v10 = 0x8000000100578F70;
    v2 = 0xD00000000000001BLL;
  }

LABEL_34:
  if (v6 == v2 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10024EC88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C706F6570;
    }

    else
    {
      v3 = 0x73656369766564;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE200000000000000;
    v3 = 25965;
  }

  else if (a1 == 3)
  {
    v3 = 0x646E61707845656DLL;
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x736D657469;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C706F6570;
    }

    else
    {
      v9 = 0x73656369766564;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x646E61707845656DLL;
    v6 = 0xEA00000000006465;
    if (a2 != 3)
    {
      v5 = 0x736D657469;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 25965;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10024EDF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F4C796150666D66;
    }

    else
    {
      v4 = 7565409;
    }

    if (v2)
    {
      v3 = 0xEA00000000006461;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x70416E49776F6873;
    v3 = 0xEE007472656C4170;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7107189;
  }

  else
  {
    v4 = 0x696669746E656469;
    v3 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F4C796150666D66;
    }

    else
    {
      v9 = 7565409;
    }

    if (a2)
    {
      v8 = 0xEA00000000006461;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7107189;
    if (a2 != 3)
    {
      v6 = 0x696669746E656469;
      v5 = 0xEA00000000007265;
    }

    if (a2 == 2)
    {
      v7 = 0x70416E49776F6873;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEE007472656C4170;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10024EF98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472656C61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79726F6765746163;
    }

    else
    {
      v4 = 0x646E756F73;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567646162;
    }

    else
    {
      v4 = 0x7472656C61;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x79726F6765746163;
  if (a2 != 2)
  {
    v7 = 0x646E756F73;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6567646162;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10024F0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656D614E6C6C7566;
  if (a1 != 5)
  {
    v5 = 0x666C6573794D7369;
    v4 = 0xE800000000000000;
  }

  v6 = 0x614E796C696D6166;
  v7 = 0xEA0000000000656DLL;
  if (a1 != 3)
  {
    v6 = 0x656D616E6B63696ELL;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6C6562616CLL;
  if (a1 != 1)
  {
    v9 = 0x6D614E6E65766967;
    v8 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656C646E6168;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6C6562616CLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE900000000000065;
        if (v10 != 0x6D614E6E65766967)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C646E6168)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA0000000000656DLL;
      if (v10 != 0x614E796C696D6166)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE800000000000000;
    v13 = 0x616E6B63696ELL;
LABEL_34:
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x656D000000000000))
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v12 = 0xE800000000000000;
  if (a2 == 5)
  {
    v13 = 0x614E6C6C7566;
    goto LABEL_34;
  }

  if (v10 != 0x666C6573794D7369)
  {
LABEL_39:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

void sub_10024F2E8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = &type metadata for SolariumFeatureFlag;
      v7 = sub_10000BD04();
      v2 = isFeatureEnabled(_:)();
      sub_100006060(v5);
      v3 = 0.64;
      if (v2)
      {
        v3 = 0.5;
      }
    }

    else
    {
      v3 = 1.0;
    }
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *&v3;
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_10024F388()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10024F2E8(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10024F3D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10024F2E8(v3, v1);
  return Hasher._finalize()();
}

double *sub_10024F41C@<X0>(double *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 0.0)
  {
    *a2 = 0;
  }

  else if (v2 == 1.0)
  {
    *a2 = 1;
  }

  else
  {
    if (v2 == 2.0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    *a2 = v3;
  }

  return result;
}

void sub_10024F464(double *a1@<X8>)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      v6 = &type metadata for SolariumFeatureFlag;
      v2 = a1;
      v7 = sub_10000BD04();
      v3 = isFeatureEnabled(_:)();
      sub_100006060(v5);
      a1 = v2;
      v4 = 0.64;
      if (v3)
      {
        v4 = 0.5;
      }
    }

    else
    {
      v4 = 1.0;
    }
  }

  else
  {
    v4 = 0.0;
  }

  *a1 = v4;
}

void sub_10024F4F0()
{
  v0 = sub_10004922C();
  if (v0)
  {
    v1 = v0;
    v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];

    sub_1002524A0(1);
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];

      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        [v6 safeAreaInsets];

        v8 = [v3 view];
        if (v8)
        {
          [v8 bounds];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;

          v23.origin.x = v10;
          v23.origin.y = v12;
          v23.size.width = v14;
          v23.size.height = v16;
          CGRectGetHeight(v23);
          v17 = [objc_opt_self() mainScreen];
          UIRoundToScreenScale();

          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMCardContainerConfiguration: Couldn't find MainViewController's view", v21, 2u);
  }

  v22 = [objc_opt_self() mediumDetent];
  UISheetPresentationControllerDetent.resolvedValue(in:)();
}

void sub_10024F7EC(_BYTE *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v9 = &type metadata for SolariumFeatureFlag;
      v10 = sub_10000BD04();
      v4 = isFeatureEnabled(_:)();
      sub_100006060(v8);
      v5 = 0.64;
      if (v4)
      {
        v5 = 0.5;
      }
    }

    else
    {
      v5 = 1.0;
    }
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000493F8(0, v5);
  a1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] = a2;
  sub_1000507D4();
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id sub_10024F8C8(uint64_t a1, char a2)
{
  v3 = 0.0;
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = &type metadata for SolariumFeatureFlag;
      v11 = sub_10000BD04();
      v4 = isFeatureEnabled(_:)();
      sub_100006060(v9);
      if (v4)
      {
        v3 = 0.5;
      }

      else
      {
        v3 = 0.64;
      }
    }

    else
    {
      v3 = 1.0;
    }
  }

  v10 = &type metadata for SolariumFeatureFlag;
  v11 = sub_10000BD04();
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v9);
  v6 = 0.64;
  if (v5)
  {
    v6 = 0.5;
  }

  v7 = v6 - v3;
  if (v7 <= 0.0)
  {
    v7 = 0.0;
  }

  return [*(a1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground) setAlpha:v7 * *(a1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration)];
}

void sub_10024FB00(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 8);
    v5 = v1;
    v6 = v4(ObjectType, v2);

    if (v6)
    {
      [v6 setContentOffset:0 animated:{0.0, 0.0}];
    }
  }
}

void sub_10024FBD4(uint64_t a1, void *a2)
{
  (*((swift_isaMask & *a2) + 0x368))();
  v3 = *(a2 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  if (v3)
  {
    v4 = *(a2 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 56);
    v7 = v3;
    v6(ObjectType, v4);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v10[4] = sub_1000822F4;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100004AE4;
  v10[3] = &unk_100631628;
  v9 = _Block_copy(v10);

  [a2 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

id sub_10024FD84(uint64_t a1)
{
  v4 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  isFeatureEnabled(_:)();
  sub_100006060(v3);
  return [*(a1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground) setAlpha:*(a1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration) * 0.0];
}

void sub_10024FDFC(uint64_t a1, void *a2)
{
  (*((swift_isaMask & *a2) + 0x368))();
  v3 = *(a2 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  if (v3)
  {
    v4 = *(a2 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 56);
    v7 = v3;
    v6(ObjectType, v4);
  }

  v8 = [a2 presentingViewController];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = sub_100252620;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100004AE4;
  v12[3] = &unk_100631538;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a2 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

void sub_10024FFD8(void *a1, double a2, double a3)
{
  v19.receiver = v3;
  v19.super_class = type metadata accessor for FMCardContainerViewController();
  objc_msgSendSuper2(&v19, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v17 = sub_1002526A0;
  v18 = v7;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10045B250;
  v16 = &unk_1006313F8;
  v8 = _Block_copy(&v13);
  v9 = v3;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v17 = sub_1002525EC;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10045B250;
  v16 = &unk_100631448;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

id sub_1002502F8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint] = 0;
  v4 = &v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration];
  *v4 = xmmword_100557A60;
  v4[1] = xmmword_100557A70;
  v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] = 1;
  v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_dismissable] = 1;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardLeadingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTrailingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardBottomConstraint] = 0;
  v5 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground;
  v6 = type metadata accessor for FMPassthroughView();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled] = 1;
  *&v7[OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews] = _swiftEmptyArrayStorage;
  v22.receiver = v7;
  v22.super_class = v6;
  *&v1[v5] = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardShadow;
  *&v1[v8] = [objc_allocWithZone(UIView) init];
  v20 = &type metadata for SolariumFeatureFlag;
  v21 = sub_10000BD04();
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100006060(v19);
  v9 = objc_opt_self();
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 7;
  }

  v11 = [v9 buttonWithType:v10];
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_closeButton] = v11;
  v12 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer;
  *&v1[v12] = [objc_allocWithZone(type metadata accessor for FMCardContainerView()) init];
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView] = 0;
  v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isFirstLayoutCompleted] = 0;
  v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanFromScrollView] = 0;
  v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isPanningCard] = 0;
  v13 = &v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_startPosition];
  *v13 = 0;
  v13[8] = 1;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_otherGesture] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_compactCardTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_regularCardTopConstraint] = 0;
  v14 = &v1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
  v15 = type metadata accessor for FMCardContainerViewController();
  *v14 = 0;
  v14[1] = 0;
  v18.receiver = v1;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);

  if (v16)
  {
  }

  return v16;
}

id sub_1002505A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10025072C()
{
  result = qword_1006B84E0;
  if (!qword_1006B84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B84E0);
  }

  return result;
}

uint64_t sub_100250790(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1000C1EE4(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

size_t sub_100250820@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000BF614(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for FMPeopleCellViewModel() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100035380(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_100250940(void *a1, char *a2, uint64_t a3, void *a4)
{
  v7 = [a1 view];
  if (v7)
  {
    v8 = v7;
    sub_10004184C();
    [a2 addChildViewController:a1];
    v9 = *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
    v35 = &type metadata for SolariumFeatureFlag;
    v10 = sub_10000BD04();
    v36 = v10;
    v11 = isFeatureEnabled(_:)();
    sub_100006060(v34);
    if (v11)
    {
      v12 = *(v9 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView);
    }

    else
    {
      v12 = [*(v9 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground) contentView];
    }

    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v8 setFrame:{v15, v17, v19, v21}];
    [v8 setAutoresizingMask:18];
    [v8 setPreservesSuperviewLayoutMargins:1];
    v35 = &type metadata for SolariumFeatureFlag;
    v36 = v10;
    LOBYTE(v13) = isFeatureEnabled(_:)();
    sub_100006060(v34);
    if (v13)
    {
      v22 = *(v9 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView);
    }

    else
    {
      v22 = [*(v9 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground) contentView];
    }

    v23 = v22;
    [v22 addSubview:v8];

    v35 = &type metadata for SolariumFeatureFlag;
    v36 = v10;
    LOBYTE(v23) = isFeatureEnabled(_:)();
    sub_100006060(v34);
    if (v23)
    {
      v24 = *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
      v25 = *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar + 8];
      v26 = v24;
      sub_100457D40(v24, v25);
    }

    [a1 didMoveToParentViewController:a2];
    v27 = a1;
    sub_100048E34(a1, a4);
    [v8 layoutIfNeeded];
    sub_1000490B0();
    sub_1000493F8(0, v28);
    sub_1000490B0();
    v30 = v29;
    v35 = &type metadata for SolariumFeatureFlag;
    v36 = v10;
    v31 = isFeatureEnabled(_:)();
    sub_100006060(v34);
    v32 = 0.64;
    if (v31)
    {
      v32 = 0.5;
    }

    v33 = v32 - v30;
    if (v33 <= 0.0)
    {
      v33 = 0.0;
    }

    [*&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v33 * *&a2[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
  }
}

uint64_t sub_100250C38()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1000C1EE4(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100250C9C()
{
  v10 = &type metadata for SolariumFeatureFlag;
  v11 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v9);
  v1 = 10.0;
  if (v0)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 == 1)
    {
      v4 = sub_10004922C();
      if (v4)
      {
        v5 = v4;
        v6 = [v4 traitCollection];

        v7 = [v6 horizontalSizeClass];
        if (v7 == 1)
        {
          if (qword_1006AEC30 != -1)
          {
            swift_once();
          }

          return *&qword_1006D4768 + *&qword_1006D4778 + 10.0;
        }
      }
    }
  }

  return v1;
}

void sub_100250DD0()
{
  v0 = sub_10004922C();
  if (v0)
  {
    v1 = v0;
    v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];

    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v17.origin.x = v6;
      v17.origin.y = v8;
      v17.size.width = v10;
      v17.size.height = v12;
      CGRectGetHeight(v17);
      sub_100250C9C();
      v13 = sub_10004922C();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 traitCollection];

        [v15 horizontalSizeClass];
      }

      v16 = [objc_opt_self() mainScreen];
      UIRoundToScreenScale();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100250F24()
{
  v0 = sub_10004922C();
  if (v0)
  {
    v1 = v0;
    v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];

    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];

      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      sub_100250C9C();
      v6 = [v3 view];

      if (v6)
      {
        [v6 frame];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v16.origin.x = v8;
        v16.origin.y = v10;
        v16.size.width = v12;
        v16.size.height = v14;
        CGRectGetHeight(v16);
        v15 = [objc_opt_self() mainScreen];
        UIRoundToScreenScale();

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

void sub_1002510B8()
{
  v14 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if ((v0 & 1) == 0)
  {
    v1 = sub_10004922C();
    if (v1)
    {
      v2 = v1;
      v3 = *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];

      v5 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
      v4 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8];
      v6 = v5;

      if (v5)
      {
        ObjectType = swift_getObjectType();
        (*(v4 + 24))(ObjectType, v4);

        v8 = [objc_opt_self() mainScreen];
        UIRoundToScreenScale();

        return;
      }
    }
  }

  v9 = sub_10004922C();
  if (!v9 || (v10 = v9, v11 = [v9 traitCollection], v10, v12 = objc_msgSend(v11, "horizontalSizeClass"), v11, v12 != 1))
  {
    if (qword_1006AEBA8 == -1)
    {
      return;
    }

    goto LABEL_10;
  }

  if (qword_1006AEBA8 != -1)
  {
LABEL_10:
    swift_once();
  }
}

unint64_t sub_100251280(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_10000905C(0, &qword_1006B4980);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}