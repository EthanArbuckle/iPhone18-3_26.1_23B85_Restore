void sub_10027AF00(void *a1, char a2)
{
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_historyDataProvider];
  v120 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
  v4 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
  v5 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager];
  v6 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
  v7 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiModel];
  v8 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager];
  v122 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
  v123 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
  v9 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator];
  v121 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider];
  sub_100007C5C(&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider], v126);
  v10 = type metadata accessor for CHAwardsDataProvider();
  v11 = objc_allocWithZone(v10);
  sub_100007C5C(v126, v11 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v125.receiver = v11;
  v125.super_class = v10;
  v119 = objc_msgSendSuper2(&v125, "init");
  sub_100005A40(v126);
  v115 = v2;
  v117 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_stackFormattingManager];
  v118 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager];
  v12 = type metadata accessor for HistoryListViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource] = 0;
  v14 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  *v14 = 0;
  *(v14 + 4) = 512;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = &_swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers] = _swiftEmptyArrayStorage;
  v15 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
  *v15 = 0;
  *(v15 + 4) = 1792;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] = v3;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext] = v120;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager] = v4;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager] = v5;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore] = v6;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model] = v7;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager] = v8;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory] = v122;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider] = v123;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator] = v9;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider] = v121;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider] = v119;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager] = v118;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager] = v117;
  v124.receiver = v13;
  v124.super_class = v12;
  v16 = v3;
  v17 = v120;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v122;
  v24 = v123;
  v25 = v9;
  v26 = v121;
  v27 = v119;
  v28 = v118;
  v29 = v16;
  v30 = v117;
  v31 = objc_msgSendSuper2(&v124, "initWithNibName:bundle:", 0, 0);
  v32 = *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  LODWORD(v12) = *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8];
  v33 = v31;
  v34 = sub_100448AF0(v32, v12);
  v36 = v35;
  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v34;

  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v36;

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = objc_allocWithZone(type metadata accessor for HistoryFilterUIViewController());
  v39 = sub_1002586AC(sub_1002831D8, v37);
  v40 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController;
  v41 = *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = v39;

  v42 = *&v29[OBJC_IVAR___CHHistoryDataProvider_lock];
  v43 = v39;
  os_unfair_lock_lock(v42 + 4);
  sub_1002831DC(v126);
  os_unfair_lock_unlock(v42 + 4);
  if (*(v126[0] + 16))
  {
    *&v43[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v126[0];

    sub_100258840();
  }

  else
  {
  }

  v44 = [objc_opt_self() mainBundle];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 localizedStringForKey:v45 value:0 table:0];

  if (!v46)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = String._bridgeToObjectiveC()();
  }

  [v33 setTitle:v46];
  v47 = [v33 tableView];
  if (!v47)
  {
    __break(1u);
    goto LABEL_39;
  }

  v48 = v47;
  [v47 setSectionHeaderTopPadding:0.0];

  v49 = [v33 tableView];
  if (!v49)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = v49;
  [v49 setSeparatorStyle:0];

  v51 = [v33 tableView];
  if (!v51)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v52 = v51;
  v53 = *&v33[v40];
  if (!v53)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v54;
  [v54 frame];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v64 = [objc_allocWithZone(UIView) initWithFrame:{v57, v59, v61, v63}];
  [v52 setTableHeaderView:v64];

  v65 = [v33 tableView];
  if (!v65)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v66 = v65;
  v67 = [v65 tableHeaderView];

  if (v67)
  {
    v68 = *&v33[v40];
    if (!v68)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v69 = [v68 view];
    if (!v69)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v70 = v69;
    [v67 addSubview:v69];
  }

  v71 = [v33 tableView];
  if (!v71)
  {
    goto LABEL_44;
  }

  v72 = v71;
  sub_1000059F8(0, &unk_1008E4DF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v74 = String._bridgeToObjectiveC()();
  [v72 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v74];

  v75 = [v33 tableView];
  if (!v75)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v76 = v75;
  sub_1000059F8(0, &unk_1008EAF80);
  v77 = swift_getObjCClassFromMetadata();
  v78 = String._bridgeToObjectiveC()();
  [v76 registerClass:v77 forCellReuseIdentifier:v78];

  v79 = [v33 tableView];
  if (!v79)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v80 = v79;
  type metadata accessor for MindfulnessSessionListTableViewCell();
  v81 = swift_getObjCClassFromMetadata();
  v82 = String._bridgeToObjectiveC()();
  [v80 registerClass:v81 forCellReuseIdentifier:v82];

  v83 = [v33 tableView];
  if (!v83)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v84 = v83;
  type metadata accessor for WorkoutsListTableViewCell();
  v85 = swift_getObjCClassFromMetadata();
  v86 = String._bridgeToObjectiveC()();
  [v84 registerClass:v85 forCellReuseIdentifier:v86];

  v87 = [v33 tableView];
  if (!v87)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  type metadata accessor for StackListTableViewCell();
  v88 = swift_getObjCClassFromMetadata();
  v89 = String._bridgeToObjectiveC()();
  [v87 registerClass:v88 forCellReuseIdentifier:v89];

  v90 = type metadata accessor for WorkoutFeatures();
  v127 = v90;
  v91 = sub_100281448(&qword_1008E4E00, 255, &type metadata accessor for WorkoutFeatures);
  v128 = v91;
  v92 = sub_100005994(v126);
  v93 = *(*(v90 - 8) + 104);
  v93(v92, enum case for WorkoutFeatures.Kahana(_:), v90);
  v94 = isFeatureEnabled(_:)();
  sub_100005A40(v126);
  v95 = v33;
  if (v94)
  {
    v127 = v90;
    v128 = v91;
    v96 = sub_100005994(v126);
    v93(v96, enum case for WorkoutFeatures.ManualLogging(_:), v90);
    v97 = isFeatureEnabled(_:)();
    sub_100005A40(v126);
    v95 = v33;
    if (v97)
    {
      v98 = [v33 navigationItem];
      v95 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:7 target:v33 action:"presentManualLoggingViewController"];

      [v98 setRightBarButtonItem:v95];
    }
  }

  sub_10059D990();
  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v100 = swift_allocObject();
  *(v100 + 16) = sub_1002831D4;
  *(v100 + 24) = v99;
  v101 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v102 = *&v29[v101];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29[v101] = v102;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v102 = sub_1001A1E7C(0, v102[2] + 1, 1, v102);
    *&v29[v101] = v102;
  }

  v105 = v102[2];
  v104 = v102[3];
  if (v105 >= v104 >> 1)
  {
    v102 = sub_1001A1E7C((v104 > 1), v105 + 1, 1, v102);
  }

  v102[2] = v105 + 1;
  v106 = &v102[2 * v105];
  v106[4] = sub_100283170;
  v106[5] = v100;
  *&v29[v101] = v102;
  swift_endAccess();

  sub_10059CE6C();

  if (a1)
  {
    v107 = a1;
    v108 = v115;
    if ([v107 effectiveTypeIdentifier] == 84)
    {
      v109 = 0;
      v110 = 1024;
    }

    else
    {
      if ([objc_opt_self() historyFilterDisambiguatesLocationForActivityType:{objc_msgSend(v107, "identifier")}])
      {
        v112 = [v107 isIndoor];
      }

      else
      {
        v112 = 2;
      }

      v109 = [v107 identifier];
      v110 = v112;
    }

    sub_10059D320(v109, v110);

    v111 = a2;
  }

  else
  {
    sub_10059D320(0, 768);
    v111 = a2;
    v108 = v115;
  }

  v113 = [v108 navigationController];
  [v113 pushViewController:v33 animated:v111 & 1];
}

void sub_10027BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v7 = sub_100140278(&unk_1008DB8A0);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = objc_opt_self();
  sub_100140278(&qword_1008DE3E8);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D46C0;
  (*(v13 + 16))(v15 + v14, a1, v12);
  sub_10029D44C(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  sub_100281448(&qword_1008E4E10, 255, &type metadata accessor for UUID);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v17 = [v11 predicateForObjectsWithUUIDs:isa];

  sub_1000059F8(0, &unk_1008E4E30);
  v18 = [swift_getObjCClassFromMetadata() workoutType];
  sub_10001B104(a2, v10, &unk_1008DB8A0);
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100015E80(v10, v21 + v19, &unk_1008DB8A0);
  v23 = v31;
  v22 = v32;
  *(v21 + v20) = v31;
  v24 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v22;
  v24[1] = a4;
  v25 = objc_allocWithZone(HKSampleQuery);
  aBlock[4] = sub_100282970;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DEE0;
  aBlock[3] = &unk_10084EF50;
  v26 = _Block_copy(aBlock);

  v27 = v23;
  v28 = [v25 initWithSampleType:v18 predicate:v17 limit:1 sortDescriptors:0 resultsHandler:v26];

  _Block_release(v26);

  [*&v27[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore] executeQuery:v28];
}

void sub_10027C000(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 >> 62)
    {
      v43 = v13;
      v46 = v17;
      v37 = a6;
      v38 = v18;
      v39 = _CocoaArrayWrapper.endIndex.getter();
      v18 = v38;
      a6 = v37;
      v40 = v39;
      v17 = v46;
      v13 = v43;
      if (!v40)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v45 = v18;
    v46 = v17;
    v44 = a6;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v21 = *(a2 + 32);
    }

    v47 = v21;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v43 = v13;
      v24 = type metadata accessor for UUID();
      v25 = 0;
      if ((*(*(v24 - 8) + 48))(a4, 1, v24) != 1)
      {
        v26 = [v23 workoutActivities];
        sub_1000059F8(0, &qword_1008EAF90);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = &v41;
        __chkstk_darwin(v28);
        *(&v41 - 2) = a4;
        v25 = sub_10042C650(sub_100282A70, (&v41 - 4), v27);
      }

      sub_1000059F8(0, &qword_1008E3FD0);
      v42 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      v29[2] = a5;
      v29[3] = v23;
      v30 = v44;
      v29[4] = v25;
      v29[5] = v30;
      v29[6] = a7;
      aBlock[4] = sub_100282A40;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10084EFA0;
      v31 = _Block_copy(aBlock);

      v32 = a5;
      v33 = v47;
      v34 = v25;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100281448(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v35 = v42;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v43 + 8))(v15, v12);
      (*(v45 + 8))(v20, v46);
    }

    else
    {
      v36 = v47;
    }
  }
}

uint64_t sub_10027C4F4(id *a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008E4E40);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v24 - v15;
  v17 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 56))(v16, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_10001B104(v16, v9, &unk_1008DB8A0);
  sub_10001B104(v25, &v9[v18], &unk_1008DB8A0);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_10001B104(v9, v12, &unk_1008DB8A0);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = v24;
      (*(v4 + 32))(v24, &v9[v18], v3);
      sub_100281448(&qword_1008EAFA0, 255, &type metadata accessor for UUID);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_10000EA04(v16, &unk_1008DB8A0);
      v22(v12, v3);
      sub_10000EA04(v9, &unk_1008DB8A0);
      return v20 & 1;
    }

    sub_10000EA04(v16, &unk_1008DB8A0);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_10000EA04(v16, &unk_1008DB8A0);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_10000EA04(v9, &unk_1008E4E40);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000EA04(v9, &unk_1008DB8A0);
  v20 = 1;
  return v20 & 1;
}

void sub_10027CAAC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_100140278(&qword_1008DE3E8);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D46C0;
  (*(v6 + 16))(v8 + v7, a1, v5);
  sub_10029D44C(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  sub_100281448(&qword_1008E4E10, 255, &type metadata accessor for UUID);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10 = [v4 predicateForObjectsWithUUIDs:isa];

  sub_1000059F8(0, &unk_1008E4060);
  v11 = HKCategoryType.init(_:)(HKCategoryTypeIdentifierMindfulSession).super.super.super.isa;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  v13 = objc_allocWithZone(HKSampleQuery);
  v17[4] = sub_100282960;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000DEE0;
  v17[3] = &unk_10084EEB0;
  v14 = _Block_copy(v17);
  v15 = v2;
  v16 = [v13 initWithSampleType:v11 predicate:v10 limit:1 sortDescriptors:0 resultsHandler:v14];

  _Block_release(v14);

  [*&v15[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore] executeQuery:v16];
}

void sub_10027CD94(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v42 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14 - 8);
  if (a2)
  {
    if (a2 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v15 = *(a2 + 32);
    }

    v41 = v15;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v38 = v9;
      v39 = v6;
      v40 = v5;
      v18 = v41;
      v19 = [v17 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = v18;
      v21 = [v17 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v17 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v17 metadata];
      if (v23)
      {
        v24 = v23;
        v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v41 = 0;
      }

      v26 = [v17 sourceRevision];

      sub_100140278(&unk_1008E4E20);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1006D4E70;
      *(v27 + 32) = v17;
      v28 = objc_allocWithZone(type metadata accessor for MindfulnessSessionViewModel());
      v29 = v20;
      v30 = MindfulnessSessionViewModel.init(uuid:startDate:endDate:duration:metadata:sourceRevision:mindfulnessSessions:)();
      sub_1000059F8(0, &qword_1008E3FD0);
      v31 = static OS_dispatch_queue.main.getter();
      v32 = swift_allocObject();
      v33 = v42;
      *(v32 + 16) = v42;
      *(v32 + 24) = v30;
      aBlock[4] = sub_100282968;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10084EF00;
      v34 = _Block_copy(aBlock);
      v35 = v33;
      v36 = v30;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100281448(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
      v37 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);

      (*(v39 + 8))(v8, v37);
      (*(v43 + 8))(v11, v38);
    }

    else
    {
      v25 = v41;
    }
  }
}

void sub_10027D370(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
  v5 = *&a1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager];
  v6 = objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController());
  sub_100349480(a2, v4, v5);
  v10 = v7;
  v8 = [a1 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 pushViewController:v10 animated:1];
  }
}

void sub_10027D52C(char a1)
{
  v114 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_historyDataProvider];
  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager];
  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
  v6 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiModel];
  v113 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager];
  v7 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
  v8 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator];
  v115 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider];
  v116 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
  sub_100007C5C(&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider], v119);
  v9 = type metadata accessor for CHAwardsDataProvider();
  v10 = objc_allocWithZone(v9);
  sub_100007C5C(v119, v10 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v118.receiver = v10;
  v118.super_class = v9;
  v11 = objc_msgSendSuper2(&v118, "init");
  sub_100005A40(v119);
  v109 = v1;
  v111 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager];
  v112 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_stackFormattingManager];
  v12 = type metadata accessor for HistoryListViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource] = 0;
  v14 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  *v14 = 0;
  *(v14 + 4) = 512;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = &_swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers] = _swiftEmptyArrayStorage;
  v15 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
  *v15 = 0;
  *(v15 + 4) = 1792;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] = v114;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext] = v2;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager] = v3;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager] = v4;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore] = v5;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model] = v6;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager] = v113;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory] = v116;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider] = v7;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator] = v8;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider] = v115;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider] = v11;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager] = v111;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager] = v112;
  v117.receiver = v13;
  v117.super_class = v12;
  v16 = v114;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v16;
  v21 = v5;
  v22 = v6;
  v23 = v113;
  v24 = v116;
  v25 = v7;
  v26 = v8;
  v27 = v115;
  v28 = v11;
  v29 = v111;
  v30 = v112;
  v31 = objc_msgSendSuper2(&v117, "initWithNibName:bundle:", 0, 0);
  v32 = *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  LODWORD(v11) = *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8];
  v33 = v31;
  v34 = sub_100448AF0(v32, v11);
  v36 = v35;
  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v34;

  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v36;

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = objc_allocWithZone(type metadata accessor for HistoryFilterUIViewController());
  v39 = sub_1002586AC(sub_1002831D8, v37);
  v40 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController;
  v41 = *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = v39;

  v42 = *&v20[OBJC_IVAR___CHHistoryDataProvider_lock];
  v43 = v20;
  v44 = v39;
  os_unfair_lock_lock(v42 + 4);
  sub_1002831DC(v119);
  os_unfair_lock_unlock(v42 + 4);
  if (*(v119[0] + 16))
  {
    *&v44[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v119[0];

    sub_100258840();
  }

  else
  {
  }

  v45 = [objc_opt_self() mainBundle];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 localizedStringForKey:v46 value:0 table:0];

  if (!v47)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = String._bridgeToObjectiveC()();
  }

  [v33 setTitle:v47];
  v48 = [v33 tableView];
  if (!v48)
  {
    __break(1u);
    goto LABEL_30;
  }

  v49 = v48;
  [v48 setSectionHeaderTopPadding:0.0];

  v50 = [v33 tableView];
  if (!v50)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v51 = v50;
  [v50 setSeparatorStyle:0];

  v52 = [v33 tableView];
  if (!v52)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v53 = v52;
  v54 = *&v33[v40];
  if (!v54)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v55 = [v54 view];
  if (!v55)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v56 = v55;
  [v55 frame];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v65 = [objc_allocWithZone(UIView) initWithFrame:{v58, v60, v62, v64}];
  [v53 setTableHeaderView:v65];

  v66 = [v33 tableView];
  if (!v66)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v67 = v66;
  v68 = [v66 tableHeaderView];

  if (v68)
  {
    v69 = *&v33[v40];
    if (!v69)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v70 = [v69 view];
    if (!v70)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v71 = v70;
    [v68 addSubview:v70];
  }

  v72 = [v33 tableView];
  if (!v72)
  {
    goto LABEL_35;
  }

  v73 = v72;
  sub_1000059F8(0, &unk_1008E4DF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = String._bridgeToObjectiveC()();
  [v73 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v75];

  v76 = [v33 tableView];
  if (!v76)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v77 = v76;
  sub_1000059F8(0, &unk_1008EAF80);
  v78 = swift_getObjCClassFromMetadata();
  v79 = String._bridgeToObjectiveC()();
  [v77 registerClass:v78 forCellReuseIdentifier:v79];

  v80 = [v33 tableView];
  if (!v80)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v81 = v80;
  type metadata accessor for MindfulnessSessionListTableViewCell();
  v82 = swift_getObjCClassFromMetadata();
  v83 = String._bridgeToObjectiveC()();
  [v81 registerClass:v82 forCellReuseIdentifier:v83];

  v84 = [v33 tableView];
  if (!v84)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v85 = v84;
  type metadata accessor for WorkoutsListTableViewCell();
  v86 = swift_getObjCClassFromMetadata();
  v87 = String._bridgeToObjectiveC()();
  [v85 registerClass:v86 forCellReuseIdentifier:v87];

  v88 = [v33 tableView];
  if (!v88)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for StackListTableViewCell();
  v89 = swift_getObjCClassFromMetadata();
  v90 = String._bridgeToObjectiveC()();
  [v88 registerClass:v89 forCellReuseIdentifier:v90];

  v91 = type metadata accessor for WorkoutFeatures();
  v120 = v91;
  v92 = sub_100281448(&qword_1008E4E00, 255, &type metadata accessor for WorkoutFeatures);
  v121 = v92;
  v93 = sub_100005994(v119);
  v94 = *(*(v91 - 8) + 104);
  v94(v93, enum case for WorkoutFeatures.Kahana(_:), v91);
  v95 = isFeatureEnabled(_:)();
  sub_100005A40(v119);
  v96 = v33;
  if (v95)
  {
    v120 = v91;
    v121 = v92;
    v97 = sub_100005994(v119);
    v94(v97, enum case for WorkoutFeatures.ManualLogging(_:), v91);
    v98 = isFeatureEnabled(_:)();
    sub_100005A40(v119);
    v96 = v33;
    if (v98)
    {
      v99 = [v33 navigationItem];
      v96 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:7 target:v33 action:"presentManualLoggingViewController"];

      [v99 setRightBarButtonItem:v96];
    }
  }

  sub_10059D990();
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v101 = swift_allocObject();
  *(v101 + 16) = sub_1002831D4;
  *(v101 + 24) = v100;
  v102 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v103 = *&v43[v102];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43[v102] = v103;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v103 = sub_1001A1E7C(0, v103[2] + 1, 1, v103);
    *&v43[v102] = v103;
  }

  v106 = v103[2];
  v105 = v103[3];
  if (v106 >= v105 >> 1)
  {
    v103 = sub_1001A1E7C((v105 > 1), v106 + 1, 1, v103);
  }

  v103[2] = v106 + 1;
  v107 = &v103[2 * v106];
  v107[4] = sub_100283170;
  v107[5] = v101;
  *&v43[v102] = v103;
  swift_endAccess();

  sub_10059CE6C();

  v108 = [v109 navigationController];
  [v108 pushViewController:v33 animated:a1 & 1];
}

void sub_10027E160(char a1)
{
  v114 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_historyDataProvider];
  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager];
  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
  v6 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiModel];
  v113 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager];
  v7 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
  v8 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator];
  v115 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider];
  v116 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
  sub_100007C5C(&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider], v119);
  v9 = type metadata accessor for CHAwardsDataProvider();
  v10 = objc_allocWithZone(v9);
  sub_100007C5C(v119, v10 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v118.receiver = v10;
  v118.super_class = v9;
  v11 = objc_msgSendSuper2(&v118, "init");
  sub_100005A40(v119);
  v109 = v1;
  v111 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_mindfulnessSessionFormattingManager];
  v112 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_stackFormattingManager];
  v12 = type metadata accessor for HistoryListViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource] = 0;
  v14 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  *v14 = 0;
  *(v14 + 4) = 512;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = &_swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers] = _swiftEmptyArrayStorage;
  v15 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
  *v15 = 0;
  *(v15 + 4) = 1792;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] = v114;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext] = v2;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager] = v3;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager] = v4;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore] = v5;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model] = v6;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager] = v113;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory] = v116;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider] = v7;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator] = v8;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider] = v115;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider] = v11;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager] = v111;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager] = v112;
  v117.receiver = v13;
  v117.super_class = v12;
  v16 = v114;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v16;
  v21 = v5;
  v22 = v6;
  v23 = v113;
  v24 = v116;
  v25 = v7;
  v26 = v8;
  v27 = v115;
  v28 = v11;
  v29 = v111;
  v30 = v112;
  v31 = objc_msgSendSuper2(&v117, "initWithNibName:bundle:", 0, 0);
  v32 = *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  LODWORD(v11) = *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8];
  v33 = v31;
  v34 = sub_100448AF0(v32, v11);
  v36 = v35;
  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v34;

  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v36;

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = objc_allocWithZone(type metadata accessor for HistoryFilterUIViewController());
  v39 = sub_1002586AC(sub_100282934, v37);
  v40 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController;
  v41 = *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
  *&v33[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = v39;

  v42 = *&v20[OBJC_IVAR___CHHistoryDataProvider_lock];
  v43 = v20;
  v44 = v39;
  os_unfair_lock_lock(v42 + 4);
  sub_1001DF0A8(v119);
  os_unfair_lock_unlock(v42 + 4);
  if (*(v119[0] + 16))
  {
    *&v44[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v119[0];

    sub_100258840();
  }

  else
  {
  }

  v45 = [objc_opt_self() mainBundle];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 localizedStringForKey:v46 value:0 table:0];

  if (!v47)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = String._bridgeToObjectiveC()();
  }

  [v33 setTitle:v47];
  v48 = [v33 tableView];
  if (!v48)
  {
    __break(1u);
    goto LABEL_30;
  }

  v49 = v48;
  [v48 setSectionHeaderTopPadding:0.0];

  v50 = [v33 tableView];
  if (!v50)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v51 = v50;
  [v50 setSeparatorStyle:0];

  v52 = [v33 tableView];
  if (!v52)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v53 = v52;
  v54 = *&v33[v40];
  if (!v54)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v55 = [v54 view];
  if (!v55)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v56 = v55;
  [v55 frame];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v65 = [objc_allocWithZone(UIView) initWithFrame:{v58, v60, v62, v64}];
  [v53 setTableHeaderView:v65];

  v66 = [v33 tableView];
  if (!v66)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v67 = v66;
  v68 = [v66 tableHeaderView];

  if (v68)
  {
    v69 = *&v33[v40];
    if (!v69)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v70 = [v69 view];
    if (!v70)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v71 = v70;
    [v68 addSubview:v70];
  }

  v72 = [v33 tableView];
  if (!v72)
  {
    goto LABEL_35;
  }

  v73 = v72;
  sub_1000059F8(0, &unk_1008E4DF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = String._bridgeToObjectiveC()();
  [v73 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v75];

  v76 = [v33 tableView];
  if (!v76)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v77 = v76;
  sub_1000059F8(0, &unk_1008EAF80);
  v78 = swift_getObjCClassFromMetadata();
  v79 = String._bridgeToObjectiveC()();
  [v77 registerClass:v78 forCellReuseIdentifier:v79];

  v80 = [v33 tableView];
  if (!v80)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v81 = v80;
  type metadata accessor for MindfulnessSessionListTableViewCell();
  v82 = swift_getObjCClassFromMetadata();
  v83 = String._bridgeToObjectiveC()();
  [v81 registerClass:v82 forCellReuseIdentifier:v83];

  v84 = [v33 tableView];
  if (!v84)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v85 = v84;
  type metadata accessor for WorkoutsListTableViewCell();
  v86 = swift_getObjCClassFromMetadata();
  v87 = String._bridgeToObjectiveC()();
  [v85 registerClass:v86 forCellReuseIdentifier:v87];

  v88 = [v33 tableView];
  if (!v88)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for StackListTableViewCell();
  v89 = swift_getObjCClassFromMetadata();
  v90 = String._bridgeToObjectiveC()();
  [v88 registerClass:v89 forCellReuseIdentifier:v90];

  v91 = type metadata accessor for WorkoutFeatures();
  v120 = v91;
  v92 = sub_100281448(&qword_1008E4E00, 255, &type metadata accessor for WorkoutFeatures);
  v121 = v92;
  v93 = sub_100005994(v119);
  v94 = *(*(v91 - 8) + 104);
  v94(v93, enum case for WorkoutFeatures.Kahana(_:), v91);
  v95 = isFeatureEnabled(_:)();
  sub_100005A40(v119);
  v96 = v33;
  if (v95)
  {
    v120 = v91;
    v121 = v92;
    v97 = sub_100005994(v119);
    v94(v97, enum case for WorkoutFeatures.ManualLogging(_:), v91);
    v98 = isFeatureEnabled(_:)();
    sub_100005A40(v119);
    v96 = v33;
    if (v98)
    {
      v99 = [v33 navigationItem];
      v96 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:7 target:v33 action:"presentManualLoggingViewController"];

      [v99 setRightBarButtonItem:v96];
    }
  }

  sub_10059D990();
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v101 = swift_allocObject();
  *(v101 + 16) = sub_100282958;
  *(v101 + 24) = v100;
  v102 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v103 = *&v43[v102];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43[v102] = v103;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v103 = sub_1001A1E7C(0, v103[2] + 1, 1, v103);
    *&v43[v102] = v103;
  }

  v106 = v103[2];
  v105 = v103[3];
  if (v106 >= v105 >> 1)
  {
    v103 = sub_1001A1E7C((v105 > 1), v106 + 1, 1, v103);
  }

  v103[2] = v106 + 1;
  v107 = &v103[2 * v106];
  v107[4] = sub_100077508;
  v107[5] = v101;
  *&v43[v102] = v103;
  swift_endAccess();

  sub_10059CE6C();

  sub_10059D320(0, 1280);
  v108 = [v109 navigationController];
  [v108 pushViewController:v33 animated:a1 & 1];
}

void sub_10027EDA0(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
  v4 = objc_opt_self();
  v70 = v3;
  v5 = [v4 sharedInstance];
  v6 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
  v7 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsDataProvider];
  v8 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsFormattingManager];
  v9 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider];
  v10 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel];
  v11 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider];
  v67 = v6;
  v61 = v7;
  v65 = v8;
  v12 = v9;
  v13 = sub_1002D4928();
  v59 = v14;
  v60 = v13;
  v15 = *(v10 + 32);
  v62 = *(v15 + 72);
  v63 = *(v15 + 64);
  v58 = *(v15 + 80);
  v16 = *(*&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext] + OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider);

  v69 = type metadata accessor for TrendsListViewController();
  v17 = objc_allocWithZone(v69);
  v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance] = 1;
  v18 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView;
  type metadata accessor for TrendListTableView();
  v19 = objc_opt_self();
  v20 = [v19 mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v74.origin.x = v22;
  v74.origin.y = v24;
  v74.size.width = v26;
  v74.size.height = v28;
  Width = CGRectGetWidth(v74);
  v30 = [v19 mainScreen];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v75.origin.x = v32;
  v75.origin.y = v34;
  v75.size.width = v36;
  v75.size.height = v38;
  Height = CGRectGetHeight(v75);
  *&v17[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, Width, Height}];
  v40 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser;
  v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser] = 0;
  v41 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner;
  *&v17[v41] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType] = 9;
  v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad] = 0;
  *&v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType] = &_swiftEmptyDictionarySingleton;
  *&v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider] = v61;
  *&v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_formattingManager] = v67;
  *&v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_trendsFormattingManager] = v65;
  *&v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_activityDataProvider] = v12;
  v42 = &v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName];
  *v42 = v60;
  v42[1] = v59;
  v43 = &v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userCharacteristics];
  *v43 = v63;
  *(v43 + 1) = v62;
  v43[16] = v58;
  v17[v40] = v12[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser];
  *&v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyStateProvider] = v16;
  v68 = v67;
  v64 = v61;
  v66 = v65;
  v44 = v12;
  v45 = v16;
  v46 = [v45 currentModel];
  v47 = v46;
  if (v46)
  {
    v48 = [v46 state];
  }

  else
  {
    v48 = 0;
  }

  v49 = &v17[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState];
  *v49 = v48;
  v49[8] = v47 == 0;
  v73.receiver = v17;
  v73.super_class = v69;
  v50 = objc_msgSendSuper2(&v73, "initWithNibName:bundle:", 0, 0);
  sub_1003B4194();
  v51 = *&v50[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_10028317C;
  *(v53 + 24) = v52;
  v54 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers;
  swift_beginAccess();
  v55 = v51;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *&v51[v54];
  *&v51[v54] = 0x8000000000000000;
  sub_10048FCBC(sub_1002831F4, v53, v50, isUniquelyReferenced_nonNull_native);
  *&v51[v54] = v72;
  swift_endAccess();

  v57 = [v2 navigationController];
  [v57 pushViewController:v50 animated:a1 & 1];
}

void sub_10027F37C(unint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_10058431C(a1);
  if (v5 != 9)
  {
    v74 = a2;
    v75 = v5;
    v6 = *&v2[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
    v7 = objc_opt_self();
    v73 = v6;
    v8 = [v7 sharedInstance];
    v9 = *&v3[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
    v10 = *&v3[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsDataProvider];
    v11 = *&v3[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_trendsFormattingManager];
    v12 = *&v3[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityDataProvider];
    v13 = *&v3[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel];
    v14 = *&v3[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider];
    v70 = v9;
    v64 = v10;
    v68 = v11;
    v15 = v12;
    v16 = sub_1002D4928();
    v62 = v17;
    v63 = v16;
    v18 = *(v13 + 32);
    v65 = *(v18 + 72);
    v66 = *(v18 + 64);
    v61 = *(v18 + 80);
    v19 = *(*&v3[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext] + OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider);

    v72 = type metadata accessor for TrendsListViewController();
    v20 = objc_allocWithZone(v72);
    v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance] = 1;
    v21 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView;
    type metadata accessor for TrendListTableView();
    v22 = objc_opt_self();
    v23 = [v22 mainScreen];
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v78.origin.x = v25;
    v78.origin.y = v27;
    v78.size.width = v29;
    v78.size.height = v31;
    Width = CGRectGetWidth(v78);
    v33 = [v22 mainScreen];
    [v33 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v79.origin.x = v35;
    v79.origin.y = v37;
    v79.size.width = v39;
    v79.size.height = v41;
    Height = CGRectGetHeight(v79);
    *&v20[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, Width, Height}];
    v43 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser;
    v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser] = 0;
    v44 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner;
    *&v20[v44] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType] = 9;
    v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad] = 0;
    *&v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType] = &_swiftEmptyDictionarySingleton;
    *&v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider] = v64;
    *&v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_formattingManager] = v70;
    *&v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_trendsFormattingManager] = v68;
    *&v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_activityDataProvider] = v15;
    v45 = &v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName];
    *v45 = v63;
    v45[1] = v62;
    v46 = &v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userCharacteristics];
    *v46 = v66;
    *(v46 + 1) = v65;
    v46[16] = v61;
    v20[v43] = v15[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser];
    *&v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyStateProvider] = v19;
    v71 = v70;
    v67 = v64;
    v69 = v68;
    v47 = v15;
    v48 = v19;
    v49 = [v48 currentModel];
    v50 = v49;
    if (v49)
    {
      v51 = [v49 state];
    }

    else
    {
      v51 = 0;
    }

    v52 = &v20[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState];
    *v52 = v51;
    v52[8] = v50 == 0;
    v77.receiver = v20;
    v77.super_class = v72;
    v53 = objc_msgSendSuper2(&v77, "initWithNibName:bundle:", 0, 0);
    sub_1003B4194();
    v54 = *&v53[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_10028292C;
    *(v56 + 24) = v55;
    v57 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers;
    swift_beginAccess();
    v58 = v54;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *&v54[v57];
    *&v54[v57] = 0x8000000000000000;
    sub_10048FCBC(sub_10007BD60, v56, v53, isUniquelyReferenced_nonNull_native);
    *&v54[v57] = v76;
    swift_endAccess();

    v60 = [v3 navigationController];
    [v60 pushViewController:v53 animated:v74 & 1];

    sub_1003B2BB4(v75);
  }
}

id sub_10027F980(uint64_t a1, char a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setBadgeHidden:a2 & 1];
  }

  return result;
}

void sub_10027F9E8(char a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v6 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_healthStore];
  v7 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_friendListManager];
  sub_100007C5C(&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider], v72);
  v8 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_badgeImageFactory];
  v60 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fiuiFormattingManager];
  v61 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementResourceProvider];
  v62 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementLocalizationProvider];
  v9 = *&v4[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_pauseRingsCoordinator];
  v10 = *&v5[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_fitnessAppContext];
  v11 = *&v5[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutFormattingManager];
  v69 = *&v5[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_workoutDataProvider];
  v12 = *&v5[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_wheelchairUseCache];
  v59 = v11;
  v68 = type metadata accessor for TrophyCaseViewController();
  v13 = objc_allocWithZone(v68);
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_restoringView;
  *&v13[v14] = [objc_allocWithZone(type metadata accessor for TrophyCaseRestoringView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievementPresented] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow] = 0x4000000000000000;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxSectionLabelHeight] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_cellWidth] = 0;
  v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldReloadCollectionView] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_healthStore] = v6;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_friendListManager] = v7;
  sub_100007C5C(v72, &v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider]);
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory] = v8;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_formattingManager] = v60;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider] = v61;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider] = v62;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_pauseRingsCoordinator] = v9;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_fitnessAppContext] = v10;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutFormattingManager] = v11;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutDataProvider] = v69;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_wheelchairUseCache] = v12;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievement] = a2;
  v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldShowCelebration] = a3;
  v13[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_forModalPresentation] = a4;
  v15 = objc_allocWithZone(UICollectionViewLayout);
  v16 = a2;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v60;
  v21 = v61;
  v67 = v62;
  v22 = v9;
  v65 = v10;
  v23 = v59;
  v24 = v69;
  v25 = v12;
  v26 = [v15 init];
  v71.receiver = v13;
  v71.super_class = v68;
  v27 = objc_msgSendSuper2(&v71, "initWithCollectionViewLayout:", v26);

  v28 = v27;
  v29 = [v28 navigationItem];
  [v29 setLargeTitleDisplayMode:1];

  v30 = [v28 navigationItem];
  v31 = [objc_opt_self() mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 localizedStringForKey:v32 value:0 table:0];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  [v30 setTitle:v33];
  v34 = v28;
  v35 = [v34 collectionView];
  if (!v35)
  {
    __break(1u);
    goto LABEL_9;
  }

  v36 = v35;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100282924;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006871C;
  aBlock[3] = &unk_10084ED70;
  v39 = _Block_copy(aBlock);
  v40 = v34;
  v41 = [v38 initWithSectionProvider:v39];
  _Block_release(v39);

  [v36 setCollectionViewLayout:v41];

  v42 = [v40 collectionView];
  if (!v42)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v43 = v42;
  type metadata accessor for TrophyCaseSectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = String._bridgeToObjectiveC()();
  [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v45];

  v46 = [v40 collectionView];
  if (!v46)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v47 = v46;
  type metadata accessor for TrophyCaseGoForItCell();
  v48 = swift_getObjCClassFromMetadata();
  v49 = String._bridgeToObjectiveC()();
  [v47 registerClass:v48 forCellWithReuseIdentifier:v49];

  v50 = [v40 collectionView];
  if (v50)
  {
    type metadata accessor for TrophyCaseViewControllerFooterView();
    v51 = swift_getObjCClassFromMetadata();
    v52 = UICollectionElementKindSectionFooter;
    v53 = String._bridgeToObjectiveC()();
    [v50 registerClass:v51 forSupplementaryViewOfKind:v52 withReuseIdentifier:v53];

    sub_100300F1C();
    [*&v40[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_restoringView] setAlpha:0.0];
    sub_1000066AC(v72, v72[3]);
    sub_100281448(&unk_1008E7FA0, 255, type metadata accessor for TrophyCaseViewController);
    v54 = v40;
    dispatch thunk of AAUIAwardsDataProviding.add(observer:)();
    [v25 addObserver:v54];
    v55 = OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider;
    [v67 setIsPregnant:{objc_msgSend(*&v65[OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider], "isPregnant")}];
    v56 = *&v65[v55];
    [v56 addObserver:v54];

    sub_100005A40(v72);
    swift_unknownObjectWeakAssign();
    v57 = [v5 navigationController];
    [v57 pushViewController:v54 animated:a1 & 1];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_100280480(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a5;
  *(v5 + 136) = a4;
  v6 = type metadata accessor for IndexSet();
  *(v5 + 104) = v6;
  *(v5 + 112) = *(v6 - 8);
  *(v5 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 128) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100280578, v8, v7);
}

void sub_100280578()
{
  if (*(v0 + 136) != 1)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = Strong;
  v3 = [Strong tableView];

  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = [v3 window];

  if (!v4)
  {
LABEL_8:
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = v14;
    v16 = [v14 tableView];

    if (v16)
    {

      [v16 reloadData];

      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 tableView];

  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);

  *(v0 + 88) = &off_100843B10;
  sub_100281448(&qword_1008E4D70, 255, &type metadata accessor for IndexSet);
  sub_100140278(&qword_1008E4D78);
  sub_100282B7C(&qword_1008E4D80, &qword_1008E4D78);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v11);
  v13 = v12;
  (*(v10 + 8))(v8, v9);
  [v7 reloadSections:v13 withRowAnimation:100];

LABEL_12:

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_100280818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = a6;
  *(v13 + 40) = v11;

  sub_10026E198(0, 0, v9, &unk_1006E3330, v13);
}

uint64_t sub_100280978@<X0>(uint64_t a1@<X8>)
{
  sub_100140278(&unk_1008F13B0);
  Dependencies.resolve<A>(failureHandler:)();
  sub_1000066AC(v4, v4[3]);
  dispatch thunk of ArtworkImageLoading.fetchRequest(_:priority:)();
  v2 = sub_100140278(&unk_1008E4D90);
  (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  return sub_100005A40(v4);
}

uint64_t sub_100280A68@<X0>(uint64_t a1@<X8>)
{
  sub_100140278(&unk_1008F13B0);
  Dependencies.resolve<A>(failureHandler:)();
  sub_1000066AC(v4, v4[3]);
  dispatch thunk of ArtworkImageLoading.fetchFallbackArtwork(for:)();
  v2 = sub_100140278(&unk_1008E4D90);
  (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  return sub_100005A40(v4);
}

void *sub_100280B74()
{
  v1 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_marketingBannerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100280BC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_marketingBannerViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100280C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002BACC;

  return MarketingPaletteBannerDisplaying<>.showMarketingPaletteBanner(request:)(a1, a2, a3);
}

uint64_t sub_100280D3C()
{
  v0 = sub_100140278(&unk_1008EAEF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_100140278(&unk_1008E4DA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100140278(&qword_1008E4DB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = enum case for MetricPageCategory.summary(_:);
  v13 = type metadata accessor for MetricPageCategory();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = type metadata accessor for MetricClickDestination();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = type metadata accessor for MetricPlaybackEntitlement();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  return MetricPage.init(pageIdentifier:pageType:pageContext:pageUrl:pageName:contentType:entitlementRequired:)();
}

uint64_t sub_10028101C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_impressionsTracker);
  a1[3] = type metadata accessor for ActivityTileImpressionsTracker();
  a1[4] = sub_100281448(&qword_1008E4DB8, 255, type metadata accessor for ActivityTileImpressionsTracker);
  *a1 = v3;
}

uint64_t sub_100281114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1002811CC()
{
  swift_getWitnessTable();

  return MetricResignActiveObserving<>.addResignActiveObserver()();
}

uint64_t sub_100281230()
{
  swift_getWitnessTable();

  return MetricResignActiveObserving<>.removeResignActiveObserver()();
}

unint64_t sub_1002812C0()
{
  result = qword_1008E4D60;
  if (!qword_1008E4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4D60);
  }

  return result;
}

uint64_t sub_100281314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_100280480(a1, v4, v5, v6, v7);
}

NSString sub_1002813D8()
{
  result = String._bridgeToObjectiveC()();
  qword_100925420 = result;
  return result;
}

NSString sub_100281410()
{
  result = String._bridgeToObjectiveC()();
  qword_100925428 = result;
  return result;
}

uint64_t sub_100281448(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100281490(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002BBC4;

  return v6(a1);
}

uint64_t sub_100281588(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_100281490(a1, v4);
}

uint64_t sub_100281640(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_100281490(a1, v4);
}

uint64_t sub_1002816F8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1002817EC;

  return v5(v2 + 16);
}

uint64_t sub_1002817EC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void sub_10028191C()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_impressionsTracker;
  type metadata accessor for ActivityTileImpressionsTracker();
  v3 = swift_allocObject();
  type metadata accessor for BasicImpressionsTracker();
  v3[2] = BasicImpressionsTracker.__allocating_init(threshold:)();
  v3[3] = &protocol witness table for BasicImpressionsTracker;
  v3[4] = 0;
  v3[5] = sub_1004CA570(_swiftEmptyArrayStorage);
  v3[6] = sub_100037340(_swiftEmptyArrayStorage);
  *(v0 + v2) = v3;
  v4 = v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_paletteBannerInsets;
  *v4 = sub_10013A92C();
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_transitionAnimatorFromViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_marketingBannerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_visibility) = 0;
  v8 = v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_initialPresentation;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_observers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_keyValueObservers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_resignActiveObserver) = 0;
  v9 = OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_accountButton;
  type metadata accessor for AccountButton();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100281AAC(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008E4E80);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v37 - v5;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 1;
      case 1:
        return *(*(*(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 24) + 24) + 16);
      case 2:
        v26 = *(*(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 48) + 32);
        v27 = *(*v26 + class metadata base offset for ManagedBuffer + 16);
        v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((v26 + v28));
        v29 = type metadata accessor for CatalogTipActivityTileDataModel.State();
        sub_10001B104(v26 + *(v29 + 20) + v27, v6, &qword_1008E4E80);
        os_unfair_lock_unlock((v26 + v28));
        v30 = type metadata accessor for CatalogTipSection();
        v31 = (*(*(v30 - 8) + 48))(v6, 1, v30) != 1;
        sub_10000EA04(v6, &qword_1008E4E80);
        return v31;
    }

    goto LABEL_21;
  }

  if (a1 == 3)
  {
    return *(*(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 32) + 96) < 2u;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return *(*(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 40) + OBJC_IVAR____TtC10FitnessApp27AwardsActivityTileDataModel_keyAwards) != 0;
    }

    goto LABEL_21;
  }

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
LABEL_21:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v15;
  v38.size.height = v17;
  Width = CGRectGetWidth(v38);
  v19 = objc_opt_self();
  v20 = [v19 literUnitWithMetricPrefix:4];
  v21 = [v19 gramUnitWithMetricPrefix:9];
  v22 = [v19 minuteUnit];
  v23 = [v20 unitDividedByUnit:v21];
  v24 = [v23 unitDividedByUnit:v22];

  v25 = [objc_opt_self() quantityWithUnit:v24 doubleValue:99.99];
  v32 = sub_100602E08(v25, 4u);

  v33 = Width * 0.5 + -16.0 + -8.0 + -40.0 + -12.0;
  [v32 boundingRectWithSize:3 options:0 context:{1.79769313e308, 1.79769313e308}];
  v35 = v34;

  v36 = *(*&v1[OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_activityTileViewDataModel] + 32);
  if (*(v36 + 96) != 2)
  {
    return 0;
  }

  result = *(*(v36 + 88) + 16);
  if (v35 < v33)
  {
    return (*(*(v36 + 88) + 16) & 1) + (*(*(v36 + 88) + 16) >> 1);
  }

  return result;
}

void sub_100281F58()
{
  v1 = IndexPath.section.getter();
  if (v1 > 2)
  {
    if ((v1 - 3) < 3)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = IndexPath.row.getter();

      sub_100276808(v2);
      return;
    }

    if (v1 == 2)
    {
      v4 = IndexPath.row.getter();
      sub_100276B6C(v4);

      sub_1002778B8();
      return;
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v3 = [v0 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
}

void sub_100282094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100140278(&qword_1008E7F80);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for AAUIAwardsDataProviderSection();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v61 - v17;

  v18 = sub_100074048(a1, a2);
  if (v18 == 8)
  {
    goto LABEL_13;
  }

  sub_1005C85CC(v18, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &qword_1008E7F80);
LABEL_13:

    return;
  }

  v19 = v13;
  v20 = *(v13 + 32);
  v21 = v76;
  v20(v76, v11, v12);
  v22 = [v4 navigateToTrophyCaseAnimated:0 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];
  if (!v22)
  {
    (*(v19 + 8))(v21, v12);
    goto LABEL_13;
  }

  v23 = v22;
  if (!a4)
  {
    goto LABEL_11;
  }

  if (qword_1008DAC48 != -1)
  {
    swift_once();
  }

  v24 = sub_1004AD914(a3, a4);
  if (v24)
  {
    v75 = v24;
    v25 = [v24 unearned];
    v69 = v19;
    if (v25)
    {
      LODWORD(v73) = 0;
    }

    else
    {
      (*(v19 + 104))(v15, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v12);
      sub_100281448(&unk_1008E4DE0, 255, &type metadata accessor for AAUIAwardsDataProviderSection);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 + 8))(v15, v12);
      LODWORD(v73) = v26 ^ 1;
    }

    v72 = type metadata accessor for TrophyCaseAwardDetailViewController();
    v27 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_healthStore];
    v28 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_friendListManager];
    sub_100007C5C(&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider], v77);
    v29 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory];
    v30 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider];
    v31 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_formattingManager];
    v32 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_pauseRingsCoordinator];
    v65 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider];
    v66 = v32;
    v33 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutFormattingManager];
    v67 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_fitnessAppContext];
    v68 = v33;
    v34 = v78;
    v70 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutDataProvider];
    v71 = v79;
    v35 = sub_1001DF03C(v77, v78);
    v74 = &v61;
    v36 = __chkstk_darwin(v35);
    v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v36);
    v64 = v27;
    v63 = v28;
    v62 = v29;
    v40 = v30;
    v61 = v31;
    v41 = v65;
    v42 = v66;
    v66 = v42;
    v43 = v67;
    v67 = v43;
    v44 = v68;
    v68 = v44;
    v45 = v70;
    v46 = v75;
    v60 = v34;
    v59 = v44;
    v57 = v42;
    v58 = v43;
    v48 = v63;
    v47 = v64;
    v49 = v38;
    v50 = v46;
    v51 = v61;
    v52 = v62;
    sub_1006524C4(v46, v64, v63, v49, v62, v40, v61, v41, v57, v58, v59, v45, 1, 0, v73 & 1, 1, 0, v72, v60, v71);
    v75 = v53;
    v73 = v50;

    sub_100005A40(v77);
    v54 = [v23 navigationController];
    if (v54)
    {
      v55 = v54;
      v56 = v75;
      [v54 pushViewController:v75 animated:0];

      (*(v69 + 8))(v76, v12);
    }

    else
    {
      (*(v69 + 8))(v76, v12);
    }
  }

  else
  {
LABEL_11:
    sub_100300064(v21);

    (*(v19 + 8))(v21, v12);
  }
}

void *sub_100282720(void *result, void *a2, void *a3)
{
  if (result)
  {
    if (result == 2)
    {
      v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_transitionAnimatorFromViewController);
      if (!v9)
      {
        return 0;
      }

      v10 = v3;
      sub_1000059F8(0, &qword_1008E4DD0);
      v11 = v9;
      v12 = a3;
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v8 = *(v10 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (result != 1)
      {
        v16 = static os_log_type_t.fault.getter();
        v17 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v16))
        {
          v18 = v17;
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_10000AFDC(0xD000000000000037, 0x8000000100750B90, &v21);
          _os_log_impl(&_mh_execute_header, v18, v16, "%s found unexpected UINavigationController.Operation; skipping transition", v19, 0xCu);
          sub_100005A40(v20);
        }

        return 0;
      }

      type metadata accessor for TrophyCaseAwardDetailViewController();
      if (![a3 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      type metadata accessor for ActivityTileViewController();
      if (![a2 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      v6 = *(v3 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_transitionAnimatorFromViewController);
      *(v3 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_transitionAnimatorFromViewController) = a2;
      v7 = a2;

      v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_achievementTransitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    v14 = v8;
    v15 = v8;
    return v14;
  }

  return result;
}

void sub_100282970(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_100140278(&unk_1008DB8A0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_10027C000(a1, a2, a3, v3 + v8, v10, v12, v13);
}

uint64_t sub_100282AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100282B18()
{
  v1 = *(type metadata accessor for CatalogTipSection() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  sub_100278D50(v2, v3);
}

uint64_t sub_100282B7C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100282BD0(char a1)
{
  v2 = [*(v1 + 16) navigateToTrophyCaseAnimated:a1 & 1 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];
}

id sub_100282C74(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_100282CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100282D3C(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return sub_1000245E0(result);
  }

  return result;
}

uint64_t sub_100282D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100282DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4EC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100282E30()
{
  result = qword_1008E4EE0;
  if (!qword_1008E4EE0)
  {
    sub_1000059F8(255, &qword_1008E8750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4EE0);
  }

  return result;
}

uint64_t sub_100282FBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_100271024(a1, v4, v5, v6);
}

uint64_t sub_100283080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_1002816F8(a1, v4);
}

void sub_1002831F8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_1008DA6F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100925358;
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_1002885B0;
  v23 = v6;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100026F8C;
  ObjectType = &unk_10084F5D8;
  v7 = _Block_copy(&aBlock);

  v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);

  ObjectType = swift_getObjectType();
  aBlock = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_deviceDateListener;
  swift_beginAccess();
  sub_1002885B8(&aBlock, v0 + v9);
  swift_endAccess();
  v10 = [v1 defaultCenter];
  if (qword_1008DA6F8 != -1)
  {
    swift_once();
  }

  v11 = qword_100925360;
  v12 = [v4 mainQueue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_100288628;
  v23 = v13;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100026F8C;
  ObjectType = &unk_10084F600;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v14];
  _Block_release(v14);

  ObjectType = swift_getObjectType();
  aBlock = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_selectedDateListener;
  swift_beginAccess();
  sub_1002885B8(&aBlock, v0 + v16);
  swift_endAccess();
  v17 = [v1 defaultCenter];
  [v17 addObserver:v0 selector:"checkFlightsClimbedEnabled" name:UIApplicationDidBecomeActiveNotification object:0];
}

void sub_100283584()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v12)
  {
    type metadata accessor for HistoryPagingViewController();
    if (swift_dynamicCast())
    {

      return;
    }
  }

  else
  {
    sub_10000EA04(v11, &qword_1008E51F0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100284B10();
    [*&v5[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController] reloadData];
    sub_100284E88(v3, 1);
    v6 = [v5 navigationItem];
    v7 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v9 = [v7 stringWithDayNameAndShortMonthFromDate:isa];

    [v6 setTitle:v9];
    (*(v1 + 8))(v3, v0);
  }
}

void sub_1002837AC()
{
  Notification.object.getter();
  if (v4)
  {
    type metadata accessor for HistoryPagingViewController();
    if (swift_dynamicCast())
    {

      return;
    }
  }

  else
  {
    sub_10000EA04(v3, &qword_1008E51F0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    sub_100283A60(v3);

    sub_10000EA04(v3, &qword_1008E51F0);
  }
}

void sub_10028388C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_flightsClimbedEnabled;
  if ((*(v0 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_flightsClimbedEnabled) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 anyPairedWatchHasFlightsClimbedCapability];
    v4 = [v2 sharedBehavior];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 isStandalonePhoneFitnessMode];

      if ((v3 | v6))
      {
        static os_log_type_t.default.getter();
        v7 = HKLogActivity;
        os_log(_:dso:log:_:_:)();

        *(v0 + v1) = 1;
        v8 = [objc_opt_self() standardUserDefaults];
        v9 = String._bridgeToObjectiveC()();
        [v8 setBool:1 forKey:v9];

        v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController);

        [v10 reloadData];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100283A60(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001B104(a1, v15, &qword_1008E51F0);
  if (!v16)
  {
    sub_10000EA04(v15, &qword_1008E51F0);
    goto LABEL_5;
  }

  sub_1000059F8(0, &qword_1008E51F8);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = v14[1];
LABEL_6:
  v8 = v7 == 0;

  sub_100284E88(v6, v8);
  v9 = [v1 navigationItem];
  v10 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = [v10 stringWithDayNameAndShortMonthFromDate:isa];

  [v9 setTitle:v12];
  return (*(v4 + 8))(v6, v3);
}

id sub_100283C60()
{
  v1 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_deviceDateListener;
  swift_beginAccess();
  sub_10001B104(&v0[v1], &v5, &qword_1008E51F0);
  if (v6)
  {
    sub_1001AA76C(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v7, v8);
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v7);
  }

  else
  {
    sub_10000EA04(&v5, &qword_1008E51F0);
  }

  [*(*(*&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) removeObject:v0];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HistoryPagingViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for HistoryPagingViewController()
{
  result = qword_1008E50D0;
  if (!qword_1008E50D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100284030(void *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_delegate;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_deviceDateListener);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_selectedDateListener);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_flightsClimbedEnabled;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 BOOLForKey:v8];

  *(v1 + v6) = v9;
  *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationComplete) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_notificationGoalChangeComplete) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_initialLoad) = 1;
  v10 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController;
  *(v1 + v10) = [objc_allocWithZone(FIUIPageViewController) init];
  *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages) = 0;
  v11 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_jan1_2014;
  sub_100284730(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_jan1_2014);

  sub_1000A7304(v1 + v3);
  sub_10000EA04(v4, &qword_1008E51F0);
  sub_10000EA04(v5, &qword_1008E51F0);

  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  type metadata accessor for HistoryPagingViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10028427C()
{
  sub_100284B10();
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController];
  [v5 willMoveToParentViewController:v0];
  [v0 addChildViewController:v5];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v5 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  [v7 addSubview:v8];

  [v5 setDataSource:v0];
  [v5 setDelegate:v0];
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  v12 = objc_allocWithZone(UIBarButtonItem);
  v13 = v0;
  v14 = [v12 initWithImage:v11 style:0 target:v13 action:"showHistoryMonthView"];
  v15 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:v13 action:"shareImmediatelyWithSender:"];

  v16 = [v13 navigationItem];
  sub_100140278(&unk_1008E4E20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D68D0;
  *(v17 + 32) = v15;
  *(v17 + 40) = v14;
  sub_1000059F8(0, &qword_1008EB5C0);
  v18 = v15;
  v19 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setRightBarButtonItems:isa animated:0];
}

uint64_t sub_100284730@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&unk_1008E3FB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Calendar();
  sub_10001AC90(v15, qword_100924FE8);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = type metadata accessor for TimeZone();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  (*(v9 + 8))(v11, v8);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v14, 1, v17) != 1)
  {
    return (*(v18 + 32))(a1, v14, v17);
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  result = (v19)(v14, 1, v17);
  if (result != 1)
  {
    return sub_10000EA04(v14, &unk_1008F73A0);
  }

  return result;
}

uint64_t sub_100284B10()
{
  v1 = type metadata accessor for Date();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v22 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateComponents();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, *(v0 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDateCache) + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_calendar, v4, v9);
  sub_100140278(&unk_1008E51B0);
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D46C0;
  (*(v13 + 104))(v15 + v14, enum case for Calendar.Component.day(_:), v12);
  sub_10001C970(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  Date.init()();
  v16 = v0;
  Calendar.dateComponents(_:from:to:)();

  (*(v25 + 8))(v3, v26);
  (*(v5 + 8))(v7, v22);
  v17 = DateComponents.day.getter();
  LOBYTE(v13) = v18;
  result = (*(v23 + 8))(v11, v24);
  if (v13)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17;
  }

  *(v16 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages) = v20;
  return result;
}

id sub_100284E88(uint64_t a1, char a2)
{
  static os_log_type_t.default.getter();
  v32 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D46C0;
  sub_100140278(&unk_1008E51C0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D46C0;
  v30 = *(v5 + 16);
  v30(v7 + v6, a1, v4);
  v8 = sub_100140278(&qword_1008E1D00);
  *(v3 + 56) = v8;
  v9 = sub_10014A6B0(&unk_1008E51D0, &qword_1008E1D00);
  *(v3 + 64) = v9;
  *(v3 + 32) = v7;
  v10 = v32;
  os_log(_:dso:log:_:_:)();

  v11 = a1;

  v12 = sub_100286348(a1);
  if (v13)
  {
    static os_log_type_t.default.getter();
    v14 = HKLogActivity;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006D46C0;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006D46C0;
    v30(v16 + v6, v11, v4);
    *(v15 + 56) = v8;
    *(v15 + 64) = v9;
    *(v15 + 32) = v16;
    v17 = v14;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v19 = v12;
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v33;
    *(v21 + 24) = v19;
    *(v21 + 32) = a2 & 1;
    aBlock[4] = sub_100288590;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10084F588;
    v22 = _Block_copy(aBlock);
    v33;

    aBlock[0] = 0;
    v23 = [v20 tryClosure:v22 error:aBlock];
    _Block_release(v22);
    v24 = aBlock[0];
    if (v23)
    {

      return v24;
    }

    else
    {
      v25 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.default.getter();
      v26 = HKLogActivity;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1006D46C0;
      v28 = v26;
      isa = Date._bridgeToObjectiveC()().super.isa;
      *(v27 + 56) = sub_1000059F8(0, &qword_1008E04E0);
      *(v27 + 64) = sub_1001DF1F0();
      *(v27 + 32) = isa;
      os_log(_:dso:log:_:_:)();

      sub_100286FC0();
    }
  }
}

uint64_t sub_1002853B4(char a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HistoryPagingViewController();
  v59.receiver = v1;
  v59.super_class = v13;
  objc_msgSendSuper2(&v59, "viewWillAppear:", a1 & 1);
  v14 = [v1 navigationController];
  if (v14)
  {
    v15 = v14;
    v51 = v3;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = [v1 transitionCoordinator];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 viewControllerForKey:UITransitionContextFromViewControllerKey];
        v21 = v20;
        if (v20 && (v52 = &OBJC_PROTOCOL___AnimatorDetailViewController, v48 = v12, v22 = v4, v23 = v9, v24 = v7, v25 = v10, v26 = v19, v27 = v20, v28 = swift_dynamicCastObjCProtocolConditional(), v21 = v27, v19 = v26, v29 = v25, v30 = v24, v31 = v23, v4 = v22, v32 = v48, v28))
        {
          v45 = v21;
          v46 = v29;
          sub_1000059F8(0, &qword_1008E3FD0);
          v47 = v1;
          v44 = static OS_dispatch_queue.main.getter();
          v33 = swift_allocObject();
          *(v33 + 16) = v26;
          *(v33 + 24) = v17;
          v57 = sub_100288644;
          v58 = v33;
          aBlock = _NSConcreteStackBlock;
          v54 = 1107296256;
          v55 = sub_1000449A8;
          v56 = &unk_10084F6A0;
          v34 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v43 = v15;

          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          v42 = sub_1000261C4();
          sub_100140278(&unk_1008E7F50);
          sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v35 = v34;
          v36 = v44;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v35);

          swift_unknownObjectRelease();
          (*(v50 + 8))(v31, v30);
          (*(v49 + 8))(v32, v46);
        }

        else
        {
          v37 = v21;
          if ([v19 isCancelled])
          {
            [v17 reattachPaletteIfNeededExpanded:1];
            swift_unknownObjectRelease();
          }

          else
          {
            v39 = swift_allocObject();
            *(v39 + 16) = v17;
            v57 = sub_100288630;
            v58 = v39;
            aBlock = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_100285A84;
            v56 = &unk_10084F650;
            v40 = _Block_copy(&aBlock);
            v41 = v15;

            [v19 animateAlongsideTransition:v40 completion:0];

            _Block_release(v40);
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_11;
      }

      [v17 attachPaletteWithHeight:70.0];
    }

LABEL_11:
    v3 = v51;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100284E88(v6, 0);
  return (*(v4 + 8))(v6, v3);
}

void sub_1002859A4(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_100288664;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100285A84;
  v7[3] = &unk_10084F6F0;
  v5 = _Block_copy(v7);
  v6 = a2;

  [a1 animateAlongsideTransition:v5 completion:0];
  _Block_release(v5);
}

uint64_t sub_100285A84(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_100285C34()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDateCache];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsCoordinator];
  v3 = objc_allocWithZone(CHActivityHistoryNavigationController);
  v4 = v1;
  v5 = v2;
  v6 = [v3 initWithDateCache:v4 pauseRingsCoordinator:v5];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider];
  v9 = *&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_badgeImageFactory];
  v10 = *&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutFormattingManager];
  v11 = objc_allocWithZone(MonthViewController);
  v12 = v8;
  v13 = v9;
  v14 = [v11 initWithDataProvider:v12 activityDateCache:v4 badgeImageFactory:v13 pauseRingsCoordinator:v5 workoutFormattingManager:v10];

  if (!v14)
  {

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  sub_100140278(&unk_1008E4E20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D4E70;
  *(v15 + 32) = v14;
  sub_1000059F8(0, &qword_1008E4DD0);
  v19 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setViewControllers:isa animated:0];

  v17 = [v0 navigationController];
  if (v17)
  {
    v18 = v17;
    [v17 presentViewController:v7 animated:1 completion:0];
  }
}

void sub_100285F20()
{
  if ((v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationComplete] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationComplete] = 1;
    type metadata accessor for RingCelebrationViewController();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v7 setModalPresentationStyle:5];
    [v7 setModalPresentationCapturesStatusBarAppearance:1];
    *(v7 + OBJC_IVAR____TtC10FitnessApp29RingCelebrationViewController_shouldIncludeIntroFade) = (v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationContext + 1] & 1) == 0;
    static os_log_type_t.default.getter();
    v1 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v2 = [v0 navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      aBlock[4] = sub_100288588;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10084F538;
      v5 = _Block_copy(aBlock);
      v6 = v0;

      [v3 presentViewController:v7 animated:0 completion:v5];
      _Block_release(v5);
    }

    else
    {
    }
  }
}

void sub_100286120(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static os_log_type_t.error.getter();
  v7 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v6))
  {
    v8 = v7;
    v9 = a1;
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    *(v10 + 4) = v11;

    _os_log_impl(&_mh_execute_header, v8, v6, "Calling back delegate for ringCelebrationDidBegin, delegate == nil ? %{BOOL}d", v10, 8u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong ringCelebrationDidBegin];
    swift_unknownObjectRelease();
  }

  v13 = [objc_opt_self() standardUserDefaults];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v15 = String._bridgeToObjectiveC()();
  [v13 setObject:isa forKey:v15];
}

uint64_t sub_100286348(uint64_t a1)
{
  v30 = a1;
  v31 = type metadata accessor for Date();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v27 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DateComponents();
  v8 = *(v28 - 8);
  v9 = __chkstk_darwin(v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDateCache) + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_calendar, v4, v9);
  sub_100140278(&unk_1008E51B0);
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D46C0;
  (*(v13 + 104))(v15 + v14, enum case for Calendar.Component.day(_:), v12);
  sub_10001C970(v15);
  swift_setDeallocating();
  v16 = v15 + v14;
  v17 = v26;
  (*(v13 + 8))(v16, v12);
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:to:)();

  (*(v29 + 8))(v3, v31);
  (*(v5 + 8))(v7, v27);
  v18 = DateComponents.day.getter();
  LOBYTE(v4) = v19;
  result = (*(v8 + 8))(v11, v28);
  if (v4)
  {
    return 0;
  }

  v21 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages;
  v22 = *(v17 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24 - v18;
  if (__OFSUB__(v24, v18))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (FIUILocaleIsRightToLeft())
  {
    result = v18;
  }

  else
  {
    result = v25;
  }

  if (result < 0 || result >= *(v17 + v21))
  {
    return 0;
  }

  return result;
}

void sub_10028670C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a1;
  v5 = type metadata accessor for Calendar.Component();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v35 - v18;
  v20 = *(v3 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v41 = v8;
  v23 = v22 - v43;
  if (__OFSUB__(v22, v43))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v37 = a2;
  v24 = v17;
  if (FIUILocaleIsRightToLeft())
  {
    v25 = v43;
  }

  else
  {
    v25 = v23;
  }

  v38 = *(v3 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDateCache);
  v39 = v25;
  v26 = OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_calendar;
  v43 = v5;
  v40 = v7;
  v27 = *(v9 + 16);
  v28 = v41;
  v27(v11, v38 + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_calendar, v41);
  Date.init()();
  v35[0] = v19;
  Calendar.startOfDay(for:)();
  v29 = *(v13 + 8);
  v35[1] = v13 + 8;
  v36 = v24;
  v29(v15, v24);
  v30 = *(v9 + 8);
  v30(v11, v28);
  v31 = v42;
  v27(v11, v38 + v26, v28);
  v32 = v40;
  v33 = v43;
  (*(v31 + 104))(v40, enum case for Calendar.Component.day(_:), v43);
  if (!__OFSUB__(0, v39))
  {
    v34 = v35[0];
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v31 + 8))(v32, v33);
    v30(v11, v28);
    v29(v34, v36);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_100286AA0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100286DB4()
{
  if (v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_goalRecommendation + 8])
  {
    if (v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationContext] == 1)
    {

      sub_100285F20();
      return;
    }

    if (v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsEditing] != 1)
    {
      return;
    }

    v4 = [*&v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController] currentlyDisplayedViewController];
    type metadata accessor for HistoryDayViewController();
    if (swift_dynamicCastClass())
    {
      sub_1006849DC(1);
    }
  }

  else
  {
    if (v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_notificationGoalChangeComplete])
    {
      return;
    }

    v0[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_notificationGoalChangeComplete] = 1;
    v1 = [objc_allocWithZone(CHASActivitySetupViewController) initWithPresentationContext:6];
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    static os_log_type_t.default.getter();
    v3 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    [v1 setRecommendedMoveGoal:isa];
    v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v1];
    [v0 presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_100286FC0()
{
  _StringGuts.grow(_:)(43);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  _StringGuts.grow(_:)(27);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D1F70;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10000A788();
  *(v4 + 32) = 0xD000000000000029;
  *(v4 + 40) = 0x8000000100751A60;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = 0xD000000000000018;
  *(v4 + 80) = 0x8000000100751A90;
  v6 = v3;
  os_log(_:dso:log:_:_:)();
}

void sub_100287190()
{
  v2 = [*(v0 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController) currentlyDisplayedViewController];
  type metadata accessor for HistoryDayViewController();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary))
    {
      sub_100511674();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_shareWhenDataLoads) = 1;
    }
  }
}

char *sub_100287238(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v116 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = &v96 - v7;
  __chkstk_darwin(v8);
  v10 = &v96 - v9;
  v11 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v96 - v15;
  sub_10028670C(a1, &v96 - v15);
  Date.init()();
  v103 = v16;
  sub_10001B104(v16, v13, &unk_1008F73A0);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_10000EA04(v13, &unk_1008F73A0);
  }

  else
  {
    (*(v4 + 8))(v10, v3);
    (*(v4 + 32))(v10, v13, v3);
  }

  v17 = *(v4 + 16);
  v104 = v10;
  v106 = v17;
  (v17)(v121, v10, v3);
  v18 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsCoordinator);
  v107 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider);
  v108 = v18;
  v118 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionDataProvider);
  v19 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutDataProvider);
  v110 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutFormattingManager);
  v111 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fiuiFormattingManager);
  v112 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionFormattingManager);
  v113 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_friendListManager);
  v114 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_badgeImageFactory);
  v115 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementResourceProvider);
  v119 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementLocalizationProvider);
  v120 = v22;
  sub_100007C5C(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_awardsDataProvider, v142);
  v109 = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fitnessAppContext);
  LODWORD(v105) = *(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_flightsClimbedEnabled);
  sub_100007C5C(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_appRecommendationDataProvider, v140);
  sub_100007C5C(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_walkSuggestionDataProvider, v138);
  v99 = v1;
  sub_100007C5C(v1 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_seymourWorkoutRecommendationDataProvider, v136);
  v23 = sub_1001DF03C(v140, v141);
  v102 = &v96;
  v24 = __chkstk_darwin(v23);
  v26 = (&v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  sub_1001DF03C(v138, v139);
  v28 = sub_1001DF03C(v136, v137);
  v101 = &v96;
  v29 = __chkstk_darwin(v28);
  v31 = (&v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v117 = v3;
  v33 = *v26;
  v122 = v4;
  v34 = *v31;
  v35 = type metadata accessor for AppRecommendationDataProvider();
  v134 = v35;
  v135 = &off_10085F1A0;
  v133[0] = v33;
  v131 = &type metadata for WalkSuggestionDataProvider;
  v132 = &off_1008624A8;
  v36 = type metadata accessor for SeymourWorkoutRecommendationDataProvider();
  v128 = v36;
  v129 = &off_100848248;
  v127[0] = v34;
  v97 = type metadata accessor for HistoryDayViewController();
  v37 = objc_allocWithZone(v97);
  v38 = sub_1001DF03C(v133, v134);
  v100 = &v96;
  v39 = __chkstk_darwin(v38);
  v41 = (&v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41, v39);
  sub_1001DF03C(v130, v131);
  v43 = sub_1001DF03C(v127, v128);
  v98 = &v96;
  v44 = __chkstk_darwin(v43);
  v46 = (&v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46, v44);
  v48 = *v41;
  v49 = *v46;
  v126[3] = v35;
  v126[4] = &off_10085F1A0;
  v126[0] = v48;
  v125[3] = &type metadata for WalkSuggestionDataProvider;
  v125[4] = &off_1008624A8;
  v124[3] = v36;
  v124[4] = &off_100848248;
  v124[0] = v49;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsCell] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringsConfigurationCell] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_protectedAppsSubscription] = 0;
  v50 = &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fontListener];
  *v50 = 0u;
  v50[1] = 0u;
  v51 = &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dateChangeListener];
  *v51 = 0u;
  v51[1] = 0u;
  v52 = &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionsListener];
  *v52 = 0u;
  v52[1] = 0u;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsQuery] = 0;
  v53 = &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_wheelchairListener];
  *v53 = 0u;
  v53[1] = 0u;
  v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_viewAppeared] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards] = _swiftEmptyArrayStorage;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData] = 0;
  v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didSetInitialChartData] = 0;
  v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didInitialChartAnimation] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_totalEnergy] = 0;
  v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_shareWhenDataLoads] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingImage] = 0;
  v54 = &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingText];
  *v54 = 0;
  v54[1] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator] = 0;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fromVC] = 0;
  v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsClimbedEnabled] = v105;
  if (qword_1008DA550 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Calendar();
  v56 = sub_10001AC90(v55, qword_100925018);
  v57 = v116;
  v105 = v56;
  Calendar.startOfDay(for:)();
  v58 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date;
  v59 = v122;
  v60 = v117;
  (*(v122 + 32))(&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date], v57, v117);
  (v106)(v57, &v37[v58], v60);
  v61 = sub_1001E9F44();
  v62 = *(v59 + 8);
  v122 = v59 + 8;
  v106 = v62;
  v62(v57, v60);
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_summaryIndex] = v61;
  v63 = objc_allocWithZone(type metadata accessor for ActivityDataProvider());
  v116 = v107;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider] = sub_1001F6900(v116);
  v64 = v108;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator] = v108;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionDataProvider] = v118;
  v65 = v110;
  v66 = v111;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workoutFormattingManager] = v110;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workoutDataProvider] = v66;
  v68 = v112;
  v67 = v113;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionFormattingManager] = v112;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fiuiFormattingManager] = v67;
  v70 = v114;
  v69 = v115;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_badgeImageFactory] = v114;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_friendListManager] = v69;
  v71 = v120;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementLocalizationProvider] = v119;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementResourceProvider] = v71;
  sub_100007C5C(v142, &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsDataProvider]);
  v72 = v109;
  *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fitnessAppContext] = v109;
  sub_100007C5C(v126, &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_appRecommendationDataProvider]);
  sub_100007C5C(v125, &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_walkSuggestionDataProvider]);
  sub_100007C5C(v124, &v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_seymourRecommendationDataProvider]);
  v73 = v64;
  v74 = v118;
  v75 = v65;
  v76 = v66;
  v77 = v68;
  v78 = v67;
  v79 = v70;
  v80 = v69;
  v81 = v119;
  v82 = v120;
  v83 = v72;
  v84 = v121;
  v85 = [*&v116[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache] activitySummaryForCacheIndex:sub_1001E9F44()];
  v86 = v85;
  v87 = v117;
  if (v85)
  {
    v88 = [v85 _isStandalonePhoneSummary];
LABEL_10:
    v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isStandalonePhoneSummary] = v88;
    v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday] = Calendar.isDateInToday(_:)() & 1;
    v92 = [objc_allocWithZone(UITableView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v37[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView] = v92;
    v123.receiver = v37;
    v123.super_class = v97;
    v93 = objc_msgSendSuper2(&v123, "initWithNibName:bundle:", 0, 0);
    sub_100005A40(v142);
    v94 = v106;
    v106(v84, v87);
    v94(v104, v87);
    sub_10000EA04(v103, &unk_1008F73A0);
    sub_100005A40(v124);
    sub_100005A40(v125);
    sub_100005A40(v126);
    v95 = *&v93[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary];
    *&v93[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary] = v86;

    sub_100005A40(v127);
    sub_100005A40(v130);
    sub_100005A40(v133);
    sub_100005A40(v136);
    sub_100005A40(v138);
    sub_100005A40(v140);
    *&v93[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_delegate + 8] = &off_10084F4F0;
    swift_unknownObjectWeakAssign();
    return v93;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v90 = result;
    v91 = [result isStandalonePhoneFitnessMode];

    v88 = v91;
    v84 = v121;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100287F9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*&v2[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController] currentlyDisplayedViewController];
  type metadata accessor for HistoryDayViewController();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    [v2 setContentScrollView:*(v13 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView) forEdge:15];
  }

  sub_10028670C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000EA04(v6, &unk_1008F73A0);
  }

  (*(v8 + 32))(v11, v6, v7);
  isa = Date._bridgeToObjectiveC()().super.isa;
  sub_1002477A8(isa, v2);

  v16 = [v2 navigationItem];
  v17 = objc_opt_self();
  v18 = Date._bridgeToObjectiveC()().super.isa;
  v19 = [v17 stringWithDayNameAndShortMonthFromDate:v18];

  [v16 setTitle:v19];
  v20 = [*(*&v2[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
  if (v20)
  {

    v21 = [v2 navigationItem];
    v22 = [v21 rightBarButtonItem];

    if (v22)
    {
      [v22 setEnabled:1];
LABEL_10:
    }
  }

  else
  {
    v23 = [v2 navigationItem];
    v22 = [v23 rightBarButtonItem];

    if (v22)
    {
      [v22 setEnabled:0];
      goto LABEL_10;
    }
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10028830C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = [v1 navigationItem];
    v13 = [v12 rightBarButtonItem];

    if (v13)
    {
      v14 = [*(*&v1[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:sub_1001E9F44()];
      v15 = v14;
      if (v14)
      {
      }

      [v13 setEnabled:v15 != 0];
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002885B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E51F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100288680()
{
  v1 = v0;
  v2 = [*(v0 + 24) allFriends];
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v2;
    sub_1000059F8(0, &qword_1008E53D0);
    sub_10001D4A8(&qword_1008EE6C0, &qword_1008E53D0);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = [objc_allocWithZone(CNContactStore) init];
    v7 = sub_100311230(v5);

    v16 = _swiftEmptyArrayStorage;
    if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
    {
      goto LABEL_18;
    }

    for (i = *(v7 + 2); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      v14 = i;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v7 + 2))
          {
            goto LABEL_17;
          }

          v10 = *&v7[8 * v9 + 32];
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v15 = v10;
        if (sub_1002888A8(&v15, v1, v6))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          i = v14;
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          v3 = v16;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_20:
  }

  return v3;
}

uint64_t sub_1002888A8(void **a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  v7 = [*(a2 + 24) me];
  if (v7)
  {
    v8 = v7;
    sub_1000059F8(0, &qword_1008E53D0);
    v9 = v6;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return 0;
    }
  }

  result = [v6 friendAchievements];
  if (!result)
  {
    return result;
  }

  v12 = result;
  v56 = v6;
  sub_1000059F8(0, &qword_1008E1750);
  sub_100140278(&qword_1008E0518);
  sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v19 = &_swiftEmptySetSingleton;
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      do
      {
LABEL_12:
        v16 &= v16 - 1;

        sub_100676740(v21, v19);
        v19 = v22;
      }

      while (v16);
      continue;
    }
  }

  v57 = v13;
  v58 = a2;

  v13 = sub_100311538(v19);

  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    v23 = *(v13 + 16);
    goto LABEL_17;
  }

LABEL_44:
  v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v59[0] = _swiftEmptyArrayStorage;
    sub_10018601C(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
    }

    v54 = a3;
    v55 = v3;
    v25 = 0;
    v24 = v59[0];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v13 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = [v26 templateUniqueName];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {

        v30 = 0;
        v32 = 0;
      }

      v59[0] = v24;
      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        sub_10018601C((v33 > 1), v34 + 1, 1);
        v24 = v59[0];
      }

      ++v25;
      v24[2] = v34 + 1;
      v35 = &v24[2 * v34];
      v35[4] = v30;
      v35[5] = v32;
    }

    while (v23 != v25);
    a3 = v54;
  }

  v36 = [*(v58 + 16) template];
  v37 = [v36 uniqueName];

  if (v37)
  {
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v59[0] = v39;
  v59[1] = v41;
  __chkstk_darwin(v38);
  v53[2] = v59;
  v42 = sub_100321F8C(sub_100288EB8, v53, v24);

  if ((v42 & 1) == 0)
  {

LABEL_39:

    return 0;
  }

  result = [v56 contact];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v43 = result;

  v44 = [v43 linkedContactStoreIdentifier];

  if (!v44)
  {
    goto LABEL_39;
  }

  sub_100140278(&unk_1008E4E20);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1006D68C0;
  *(v45 + 32) = CNContactThumbnailImageDataKey;
  *(v45 + 40) = CNContactGivenNameKey;
  *(v45 + 48) = CNContactNicknameKey;
  v46 = CNContactThumbnailImageDataKey;
  v47 = CNContactGivenNameKey;
  v48 = CNContactNicknameKey;
  sub_100140278(&unk_1008E53F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v59[0] = 0;
  v50 = [a3 unifiedContactWithIdentifier:v44 keysToFetch:isa error:v59];

  if (v50)
  {
    v51 = v59[0];

    return 1;
  }

  else
  {
    v52 = v59[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

uint64_t sub_100288E54()
{

  return swift_deallocClassInstance();
}

void sub_100288ED8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100288F9C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FIExperienceType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100288F9C()
{
  result = qword_1008E53D0;
  if (!qword_1008E53D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E53D0);
  }

  return result;
}

uint64_t sub_100288FE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100289030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10028907C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100289260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002892CC()
{
  v1 = [*v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100289324()
{
  v1 = [*v0 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100289528(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F2010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v35[3] = type metadata accessor for MindfulnessSessionViewModel();
  v35[4] = &off_10084F7A8;
  v35[0] = a1;
  v14 = a1;
  v15 = MindfulnessSessionViewModel.metadata.getter();
  if (!v15)
  {
    return sub_100005A40(v35);
  }

  v16 = v15;
  v17 = static HealthDataConstants.workoutSessionIdentifierProperty.getter();
  if (!*(v16 + 16))
  {

    goto LABEL_7;
  }

  v33 = v5;
  v19 = sub_100066F20(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    return sub_100005A40(v35);
  }

  sub_10000B1B4(*(v16 + 56) + 32 * v19, v34);

  if (swift_dynamicCast())
  {
    sub_1000066AC((a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient), *(a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient + 24));
    dispatch thunk of ArchivedSessionClientProtocol.deleteArchivedSession(sessionIdentifier:)();

    sub_100007C5C(v35, v34);
    v22 = swift_allocObject();
    sub_100006260(v34, v22 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100289E6C;
    *(v23 + 24) = v22;
    v24 = v33;
    (*(v33 + 16))(v8, v11, v4);
    v25 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v26 = swift_allocObject();
    (*(v24 + 32))(v26 + v25, v8, v4);
    v27 = (v26 + ((v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_100173EDC;
    v27[1] = v23;
    Promise.init(asyncOperation:)();
    v28 = *(v24 + 8);
    v28(v11, v4);
    v29 = Promise.operation.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_100173F20, v30);

    v28(v13, v4);
  }

  return sub_100005A40(v35);
}

uint64_t sub_1002898DC(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F2010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v35[3] = sub_100289C9C();
  v35[4] = &off_10084F7C0;
  v35[0] = a1;
  v14 = a1;
  v15 = sub_100289324();
  if (!v15)
  {
    return sub_100005A40(v35);
  }

  v16 = v15;
  v17 = static HealthDataConstants.workoutSessionIdentifierProperty.getter();
  if (!*(v16 + 16))
  {

    goto LABEL_7;
  }

  v33 = v5;
  v19 = sub_100066F20(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    return sub_100005A40(v35);
  }

  sub_10000B1B4(*(v16 + 56) + 32 * v19, v34);

  if (swift_dynamicCast())
  {
    sub_1000066AC((a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient), *(a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient + 24));
    dispatch thunk of ArchivedSessionClientProtocol.deleteArchivedSession(sessionIdentifier:)();

    sub_100007C5C(v35, v34);
    v22 = swift_allocObject();
    sub_100006260(v34, v22 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100289CE8;
    *(v23 + 24) = v22;
    v24 = v33;
    (*(v33 + 16))(v7, v10, v4);
    v25 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v26 = swift_allocObject();
    (*(v24 + 32))(v26 + v25, v7, v4);
    v27 = (v26 + ((v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_100173A14;
    v27[1] = v23;
    Promise.init(asyncOperation:)();
    v28 = *(v24 + 8);
    v28(v10, v4);
    v29 = Promise.operation.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_100173A1C, v30);

    v28(v13, v4);
  }

  return sub_100005A40(v35);
}

unint64_t sub_100289C9C()
{
  result = qword_1008ED7C0;
  if (!qword_1008ED7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008ED7C0);
  }

  return result;
}

uint64_t sub_100289D04()
{
  v1 = sub_100140278(&unk_1008F2010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100289DB0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&unk_1008F2010) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_10003BFD4(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_100289E90()
{
  result = qword_1008E54A8;
  if (!qword_1008E54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54A8);
  }

  return result;
}

unint64_t sub_100289EE8()
{
  result = qword_1008E54B0;
  if (!qword_1008E54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54B0);
  }

  return result;
}

unint64_t sub_100289F40()
{
  result = qword_1008E54B8;
  if (!qword_1008E54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54B8);
  }

  return result;
}

unint64_t sub_100289F98()
{
  result = qword_1008E54C0;
  if (!qword_1008E54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54C0);
  }

  return result;
}

uint64_t sub_100289FF8()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_100925440 = result;
  return result;
}

uint64_t sub_10028A068()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925448);
  sub_10001AC90(v5, qword_100925448);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10028A1D8()
{
  v0 = sub_100140278(&qword_1008E5520);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008E5528);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008E5518);
  sub_100163368(v5, qword_100925460);
  sub_10001AC90(v5, qword_100925460);
  sub_10028A8D4();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100751BE0;
  v6._countAndFlagsBits = 0xD000000000000021;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

id sub_10028A3D4()
{
  result = sub_10028A3F4();
  qword_100925478 = result;
  return result;
}

id sub_10028A3F4()
{
  v0 = [objc_allocWithZone(HKHealthStore) init];
  v1 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:v0];
  result = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v1];
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for MindfulnessSessionFormattingManager();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___CHMindfulnessSessionFormattingManager_fiuiFormattingManager] = v3;
    *&v5[OBJC_IVAR___CHMindfulnessSessionFormattingManager_healthStore] = v0;
    v9.receiver = v5;
    v9.super_class = v4;
    v6 = v3;
    v7 = v0;
    v8 = objc_msgSendSuper2(&v9, "init");

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10028A4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v3 - 8);
  v23[0] = v23 - v4;
  v5 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v5 - 8);
  v7 = v23 - v6;
  v8 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  if (qword_1008DA7A0 != -1)
  {
    swift_once();
  }

  v13 = qword_100925478;
  v14 = type metadata accessor for Trainer();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = v13;
  v16 = sub_1005577DC(a1, v10);

  sub_10028B07C(v10);
  v17 = [v16 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  LocalizedStringResource.init(stringLiteral:)();
  v18 = qword_100925478;
  v19 = sub_1005580BC();

  v20 = [v19 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LocalizedStringResource.init(stringLiteral:)();
  (*(v12 + 56))(v7, 0, 1, v11);
  v21 = qword_100925478;
  sub_100558590();

  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_10028A860@<X0>(void *a1@<X8>)
{
  if (qword_1008DA788 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100925440;
}

unint64_t sub_10028A8D4()
{
  result = qword_1008E54C8;
  if (!qword_1008E54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54C8);
  }

  return result;
}

unint64_t sub_10028A92C()
{
  result = qword_1008E54D0;
  if (!qword_1008E54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54D0);
  }

  return result;
}

uint64_t sub_10028A980@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA798 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008E5518);
  v3 = sub_10001AC90(v2, qword_100925460);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10028AA38()
{
  result = qword_1008E54D8;
  if (!qword_1008E54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54D8);
  }

  return result;
}

unint64_t sub_10028AA8C()
{
  result = qword_1008E54E0;
  if (!qword_1008E54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54E0);
  }

  return result;
}

unint64_t sub_10028AAE0()
{
  result = qword_1008E54E8;
  if (!qword_1008E54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54E8);
  }

  return result;
}

unint64_t sub_10028AB38()
{
  result = qword_1008E54F0;
  if (!qword_1008E54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54F0);
  }

  return result;
}

uint64_t sub_10028ABB0()
{
  sub_10028B0E4();
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10028AC1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA790 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10028ACC8()
{
  result = qword_1008E54F8;
  if (!qword_1008E54F8)
  {
    sub_100141EEC(&qword_1008E5500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E54F8);
  }

  return result;
}

uint64_t sub_10028AD2C(uint64_t a1)
{
  v2 = sub_10028A8D4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10028AD7C()
{
  result = qword_1008E5508;
  if (!qword_1008E5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5508);
  }

  return result;
}

uint64_t sub_10028ADD8(uint64_t a1)
{
  v2 = sub_10028AB38();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10028AE34(void *a1)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = a1;
  v6 = [v5 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v5;
  v8 = [v7 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [v7 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [v7 metadata];
  if (v10)
  {
    v11 = v10;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [v7 sourceRevision];

  sub_100140278(&unk_1008E4E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D4E70;
  *(v13 + 32) = v7;
  v14 = objc_allocWithZone(type metadata accessor for MindfulnessSessionViewModel());
  return MindfulnessSessionViewModel.init(uuid:startDate:endDate:duration:metadata:sourceRevision:mindfulnessSessions:)();
}

uint64_t sub_10028B07C(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008E9B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10028B0E4()
{
  result = qword_1008E5510;
  if (!qword_1008E5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5510);
  }

  return result;
}

uint64_t sub_10028B140()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10028B1B4(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v5 = [v3 stringWithNumber:v4 decimalPrecision:1];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(v1 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
  v10 = [v9 fitnessUIFormattingManager];
  v11 = [v10 unitManager];

  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = [v11 userDistanceUnitForDistanceType:3];

  v13 = [v9 fitnessUIFormattingManager];
  v14 = [v13 localizedShortUnitStringForDistanceUnit:v12];

  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_10000FCBC();
  v18 = StringProtocol.localizedUppercase.getter();
  v20 = v19;

  v21 = [objc_opt_self() mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D1F70;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_10000A788();
  if (v8)
  {
    v26 = v6;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v8)
  {
    v27 = v8;
  }

  *(v24 + 32) = v26;
  *(v24 + 40) = v27;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = v18;
  *(v24 + 80) = v20;
  String.init(format:_:)();
}

void *sub_10028B46C(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_100140278(&qword_1008DBEE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_supportedPaceDistances] = &off_100843B40;
  v13 = OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource__paceDistance;
  v25 = 100;
  Published.init(initialValue:)();
  (*(v10 + 32))(&v4[v13], v12, v9);
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator] = a3;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager] = a4;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout] = a1;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity] = a2;
  v14 = type metadata accessor for WorkoutDetailSwimmingActivityDataSource();
  v24.receiver = v4;
  v24.super_class = v14;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  v18 = a2;
  v19 = objc_msgSendSuper2(&v24, "init");
  v20 = *((swift_isaMask & *v19) + 0xC0);
  v21 = v19;
  v20();

  return v21;
}

id sub_10028B750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailSwimmingActivityDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailSwimmingActivityDataSource()
{
  result = qword_1008E5588;
  if (!qword_1008E5588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028B8A4()
{
  sub_1000377BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10028B960(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  static Date.distantFuture.getter();
  DateInterval.init(start:end:)();
  v10 = objc_allocWithZone(type metadata accessor for WorkoutChartedDistancePathRenderer());
  v11 = OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_downhillRunDateIntervals;
  *&v10[OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_downhillRunDateIntervals] = 0;
  (*(v7 + 16))(&v10[OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_highlightInterval], v9, v6);
  *&v10[v11] = 0;
  v10[OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_extendedMode] = 0;
  *&v10[OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings] = a2;
  v12 = type metadata accessor for WorkoutOverlayPathRenderer();
  v16.receiver = v10;
  v16.super_class = v12;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v16, "initWithOverlay:", a1);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  return v14;
}

void sub_10028BB5C(CGContext *a1, double a2, double a3, double a4, double a5, MKZoomScale a6)
{
  v85.size.height = a5;
  v85.size.width = a4;
  v85.origin.y = a3;
  v85.origin.x = a2;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v91 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v105 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v103 = (&v75 - v20);
  [objc_msgSend(v6 overlay];
  v90 = v21;
  v89 = v22;
  swift_unknownObjectRelease();
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v84 = a1;
  v92 = a6;
  [v6 applyStrokePropertiesToContext:a1 atZoomScale:a6];
  v100 = v6;
  v23 = *&v6[OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings];
  v24 = [v23 workout];
  v25 = [v24 workoutActivityType];

  v26 = 5.0;
  if (v25 == 46)
  {
    v26 = 15.0;
  }

  v82 = v26;
  v93 = v23;
  v27 = [v23 allValidLocations];
  sub_10028CAC8();
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    goto LABEL_56;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_57:

    return;
  }

LABEL_5:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v28 + 32);
LABEL_8:
    v102 = v29;

    v28 = [v93 inOrderLocationArrays];
    sub_100140278(&qword_1008E55D8);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = *(v30 + 16);
    if (!v78)
    {
LABEL_51:

      return;
    }

    v87 = OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_downhillRunDateIntervals;
    v88 = OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_highlightInterval;
    v77 = v30 + 32;
    v31 = (v16 + 8);
    v16 = 0;
    v80 = OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_extendedMode;
    v106 = (v10 + 8);
    v107 = (v10 + 16);
    v79 = xmmword_1006D1F70;
    v86 = v15;
    v101 = v31;
    v76 = v30;
    while (1)
    {
      if (v16 >= *(v30 + 16))
      {
        goto LABEL_55;
      }

      v81 = v16;
      v32 = *(v77 + 8 * v16);

      v33 = [v102 timestamp];
      v28 = v103;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v35 = v34;
      v104 = *v31;
      v104(v28, v15);
      v36 = v32 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v83 = v32;
      if (v36)
      {
        break;
      }

LABEL_11:
      v16 = v81 + 1;

      v30 = v76;
      if (v16 == v78)
      {
        goto LABEL_51;
      }
    }

    v16 = 0;
    v97 = v83 & 0xC000000000000001;
    v96 = v83 & 0xFFFFFFFFFFFFFF8;
    v95 = v83 + 32;
    v94 = v36;
    while (1)
    {
      if (v97)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v96 + 16))
        {
          goto LABEL_54;
        }

        v44 = *(v95 + 8 * v16);
      }

      v45 = v44;
      if (__OFADD__(v16++, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_57;
        }

        goto LABEL_5;
      }

      v47 = [v44 timestamp];
      v48 = v103;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v48;
      Date.timeIntervalSinceReferenceDate.getter();
      v50 = v49;
      v104(v48, v15);
      if (v50 < *&v35)
      {

        goto LABEL_11;
      }

      [v102 coordinate];
      v51 = MKMapPointForCoordinate(v115);
      [v45 coordinate];
      v52 = MKMapPointForCoordinate(v116);
      v53 = MKRoadWidthAtZoomScale(v92);
      v54 = [objc_opt_self() distanceColors];
      if (!v54)
      {
        goto LABEL_63;
      }

      v55 = v54;
      v56 = [v54 nonGradientTextColor];

      if (!v56)
      {
        goto LABEL_62;
      }

      v57 = [v93 workout];
      v58 = [v57 workoutActivityType];

      if (v58 != 67 && v58 != 61)
      {
        goto LABEL_39;
      }

      v59 = v100;
      v60 = *&v100[v87];
      if (v60)
      {
        break;
      }

LABEL_40:
      v63 = v53 * 0.666666667;
      v64 = v91;
      (*v107)(v91, &v59[v88], v9);
      v65 = [v45 timestamp];
      v66 = v103;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v65) = DateInterval.contains(_:)();
      v67 = v66;
      v31 = v101;
      v104(v67, v15);
      (*v106)(v64, v9);
      v99 = v35;
      v98 = v50;
      if ((v65 & 1) == 0)
      {
        v63 = v63 * 0.5;
        v68 = [v56 colorWithAlphaComponent:?];

        v56 = v68;
      }

      if (v63 * v63 <= (v52.x - v90 - (v51.x - v90)) * (v52.x - v90 - (v51.x - v90)) + (v52.y - v89 - (v51.y - v89)) * (v52.y - v89 - (v51.y - v89)))
      {
        v117.origin.x = fmin(v51.x, v52.x) - v63 * 0.5;
        v117.origin.y = fmin(v51.y, v52.y) - v63 * 0.5;
        v117.size.width = vabdd_f64(v51.x, v52.x) + v63;
        v117.size.height = vabdd_f64(v51.y, v52.y) + v63;
        if (MKMapRectIntersectsRect(v85, v117))
        {
          v69 = v98 - *&v99;
          v70 = COERCE_DOUBLE(CGPathCreateMutable());
          v109 = 0;
          v110 = 0;
          v108 = 0x3FF0000000000000;
          v111 = 0x3FF0000000000000;
          v112 = 0;
          v113 = 0;
          CGMutablePathRef.move(to:transform:)();
          CGMutablePathRef.addLine(to:transform:)();
          if (v82 >= v69)
          {
            v37 = COERCE_DOUBLE(CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)());
            v38 = v84;
            *&v99 = v37;
            CGContextAddPath(v84, *&v37);
            v39 = [v56 CGColor];
            CGContextSetFillColorWithColor(v38, v39);
            v40 = kCGPathFill;
          }

          else
          {
            sub_100140278(&qword_1008DE450);
            v71 = swift_allocObject();
            *(v71 + 16) = v79;
            *(v71 + 32) = 0;
            *(v71 + 40) = v63 + v63;
            *&v72 = COERCE_DOUBLE(CGPathRef.copy(dashingWithPhase:lengths:transform:)());

            v38 = v84;
            CGContextAddPath(v84, v72);
            CGContextSetLineWidth(v38, v63);
            CGContextSetLineCap(v38, kCGLineCapRound);
            v73 = v100[v80];
            v98 = v70;
            if (v73)
            {
              v39 = [v56 CGColor];
            }

            else
            {
              v74 = [objc_opt_self() grayColor];
              v39 = [v74 CGColor];

              v38 = v84;
            }

            v99 = v72;
            CGContextSetStrokeColorWithColor(v38, v39);
            v40 = kCGPathStroke;
            v70 = v98;
          }

          CGContextDrawPath(v38, v40);
          v15 = v86;
          v31 = v101;
        }

        v102 = v45;
      }

      v41 = [v45 timestamp];
      v42 = v103;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v42;
      Date.timeIntervalSinceReferenceDate.getter();
      v35 = v43;

      v104(v42, v15);
      if (v16 == v94)
      {
        goto LABEL_11;
      }
    }

    v28 = [v45 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = 0;
    v15 = *(v60 + 16);
    while (v15 != v61)
    {
      if (v61 >= *(v60 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      (*(v10 + 16))(v14, v60 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v61++, v9);
      v28 = DateInterval.contains(_:)();
      (*(v10 + 8))(v14, v9);
      if (v28)
      {

        v15 = v86;
        v104(v105, v86);
        goto LABEL_39;
      }
    }

    v15 = v86;
    v104(v105, v86);
    if (qword_1008DAD58 != -1)
    {
      swift_once();
    }

    v62 = qword_100925DF8;

    v56 = v62;
LABEL_39:
    v59 = v100;
    goto LABEL_40;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_10028C8A4()
{
  v1 = OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_highlightInterval;
  v2 = type metadata accessor for DateInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_10028C91C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutChartedDistancePathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutChartedDistancePathRenderer()
{
  result = qword_1008E55C0;
  if (!qword_1008E55C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028CA24()
{
  result = type metadata accessor for DateInterval();
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

unint64_t sub_10028CAC8()
{
  result = qword_1008E55D0;
  if (!qword_1008E55D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E55D0);
  }

  return result;
}

void *sub_10028CB38()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isStandalonePhoneFitnessMode];

    if (v3)
    {
      if (*(v0 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastWheelchairUseValue))
      {
        v4 = &off_10083EBE0;
      }

      else
      {
        v4 = &off_10083EC08;
      }
    }

    else
    {
      v4 = &off_10083EC30;
    }

    v5 = sub_10029CE98(v4);
    v6 = 0;
    v7 = v5 + 56;
    do
    {
      v10 = *(&off_10083EC58 + v6 + 32);
      if (*(v5 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(v10), v11 = Hasher._finalize()(), v12 = -1 << *(v5 + 32), v13 = v11 & ~v12, ((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (*(*(v5 + 48) + v13) != v10)
        {
          v13 = (v13 + 1) & v14;
          if (((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100185CBC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_100185CBC((v8 > 1), v9 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v9 + 1;
        *(&_swiftEmptyArrayStorage[4] + v9) = v10;
      }

      ++v6;
    }

    while (v6 != 9);

    return _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10028CD1C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
  swift_beginAccess();
  *(v0 + v1) = _swiftEmptyArrayStorage;

  v2 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends;
  swift_beginAccess();
  *(v0 + v2) = _swiftEmptyArrayStorage;

  v3 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends;
  swift_beginAccess();
  *(v0 + v3) = _swiftEmptyArrayStorage;

  sub_10028CE3C(0, v0);
  sub_10028CE3C(1, v0);
  sub_10028CE3C(2, v0);
  sub_10028CE3C(3, v0);
  sub_10028CE3C(4, v0);
  sub_10028CE3C(5, v0);
  sub_10028CE3C(6, v0);
  sub_10028CE3C(7, v0);
  return sub_10028CE3C(8, v0);
}

id sub_10028CE3C(char a1, uint64_t a2)
{
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result isStandalonePhoneFitnessMode];

  if (v6)
  {
    if (*(a2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastWheelchairUseValue))
    {
      v7 = &off_10083EBE0;
    }

    else
    {
      v7 = &off_10083EC08;
    }
  }

  else
  {
    v7 = &off_10083EC30;
  }

  v8 = sub_10029CE98(v7);
  v9 = sub_1003A5C1C(a1, v8);

  if (!v9)
  {
    v10 = *(a2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType365);
    sub_100011DA0(&v68);
    v65 = v78;
    v66 = v79;
    v67 = v80;
    v61 = v74;
    v62 = v75;
    v63 = v76;
    v64 = v77;
    v57 = v70;
    v58 = v71;
    v59 = v72;
    v60 = v73;
    v55 = v68;
    v56 = v69;
    v11 = *(v10 + 24);
    v12 = swift_allocObject();
    *(v12 + 16) = &v55;
    *(v12 + 24) = v10;
    *(v12 + 32) = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10028E41C;
    *(v13 + 24) = v12;
    *&v111 = sub_1002831F4;
    *(&v111 + 1) = v13;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v110 = sub_1003579C0;
    *(&v110 + 1) = &unk_10084FCA0;
    v14 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v11, v14);

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v81[10] = v65;
      v81[11] = v66;
      v81[6] = v61;
      v81[7] = v62;
      v81[9] = v64;
      v81[8] = v63;
      v81[2] = v57;
      v81[3] = v58;
      v81[5] = v60;
      v81[4] = v59;
      v81[1] = v56;
      v81[0] = v55;
      v93 = v65;
      v94 = v66;
      v89 = v61;
      v90 = v62;
      v92 = v64;
      v91 = v63;
      v85 = v57;
      v86 = v58;
      v88 = v60;
      v87 = v59;
      v82 = v67;
      v95 = v67;
      v84 = v56;
      v83 = v55;
      result = sub_100013184(&v83);
      if (result == 1)
      {
        return result;
      }

      v119 = v93;
      v120 = v94;
      v121 = v95;
      v115 = v89;
      v116 = v90;
      v118 = v92;
      v117 = v91;
      v111 = v85;
      v112 = v86;
      v114 = v88;
      v113 = v87;
      v110 = v84;
      aBlock = v83;
      v16 = *(a2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType90);
      v37 = v78;
      v38 = v79;
      v39 = v80;
      v33 = v74;
      v34 = v75;
      v35 = v76;
      v36 = v77;
      v29 = v70;
      v30 = v71;
      v31 = v72;
      v32 = v73;
      v27 = v68;
      v28 = v69;
      v17 = *(v16 + 24);
      v18 = swift_allocObject();
      *(v18 + 16) = &v27;
      *(v18 + 24) = v16;
      *(v18 + 32) = a1;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_10028E444;
      *(v13 + 24) = v18;
      *&v98 = sub_1002831F4;
      *(&v98 + 1) = v13;
      *&v96 = _NSConcreteStackBlock;
      *(&v96 + 1) = 1107296256;
      *&v97 = sub_1003579C0;
      *(&v97 + 1) = &unk_10084FD18;
      v19 = _Block_copy(&v96);
      swift_retain_n();

      dispatch_sync(v17, v19);

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v40[10] = v37;
        v40[11] = v38;
        v40[6] = v33;
        v40[7] = v34;
        v40[8] = v35;
        v40[9] = v36;
        v40[2] = v29;
        v40[3] = v30;
        v40[4] = v31;
        v40[5] = v32;
        v40[0] = v27;
        v40[1] = v28;
        v52 = v37;
        v53 = v38;
        v48 = v33;
        v49 = v34;
        v50 = v35;
        v51 = v36;
        v44 = v29;
        v45 = v30;
        v46 = v31;
        v47 = v32;
        v41 = v39;
        v54 = v39;
        v42 = v27;
        v43 = v28;
        if (sub_100013184(&v42) == 1)
        {
          return sub_10000EA04(v81, &qword_1008E5710);
        }

        v106 = v52;
        v107 = v53;
        v108 = v54;
        v102 = v48;
        v103 = v49;
        v105 = v51;
        v104 = v50;
        v98 = v44;
        v99 = v45;
        v101 = v47;
        v100 = v46;
        v97 = v43;
        v96 = v42;
        v20 = *(a2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pairedWatchManager);
        if (sub_1005DA7F0(a1, *(v20 + 24)) && sub_1005DA7F0(a1, *(v20 + 24)))
        {
          v21 = *(a2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_unitManager);
          v22 = sub_1005831C0(v21, a1, *&v42);
          v23 = sub_1005831C0(v21, a1, *&v83);
          sub_10000EA04(v81, &qword_1008E5710);
          sub_10000EA04(v40, &qword_1008E5710);
          if (v23 <= v22)
          {
            v13 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
          }

          else
          {
            v13 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends;
          }
        }

        else
        {
          sub_10000EA04(v81, &qword_1008E5710);
          sub_10000EA04(v40, &qword_1008E5710);
          v13 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends;
        }

        swift_beginAccess();
        isEscapingClosureAtFileLocation = *(a2 + v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + v13) = isEscapingClosureAtFileLocation;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    isEscapingClosureAtFileLocation = sub_1001A1D18(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
    *(a2 + v13) = isEscapingClosureAtFileLocation;
LABEL_19:
    v26 = *(isEscapingClosureAtFileLocation + 16);
    v25 = *(isEscapingClosureAtFileLocation + 24);
    if (v26 >= v25 >> 1)
    {
      isEscapingClosureAtFileLocation = sub_1001A1D18((v25 > 1), v26 + 1, 1, isEscapingClosureAtFileLocation);
    }

    *(isEscapingClosureAtFileLocation + 16) = v26 + 1;
    *(isEscapingClosureAtFileLocation + v26 + 32) = a1;
    *(a2 + v13) = isEscapingClosureAtFileLocation;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10028D5AC@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v15 = sub_1004CA93C(_swiftEmptyArrayStorage);
  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = &v15;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10028E3C0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10007BD60;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003579C0;
  aBlock[3] = &unk_10084FBD8;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v15;
    v10 = -1 << *(v15 + 32);
    v11 = v15 + 64;
    v12 = *(v15 + 64);

    if (-v10 < 64)
    {
      v13 = ~(-1 << -v10);
    }

    else
    {
      v13 = -1;
    }

    *a1 = v9;
    a1[1] = v11;
    a1[2] = ~v10;
    a1[3] = 0;
    a1[4] = v13 & v12;
  }

  return result;
}

uint64_t sub_10028D75C()
{
  v1 = v0;
  result = Notification.userInfo.getter();
  if (result)
  {
    v3 = result;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_1004C5BC0(v6), (v5 & 1) != 0))
    {
      sub_10000B1B4(*(v3 + 56) + 32 * v4, v7);
      sub_100282EF8(v6);

      result = swift_dynamicCast();
      if ((result & 1) != 0 && *(v1 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastWheelchairUseValue) != 16)
      {
        *(v1 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastWheelchairUseValue) = 16;
        return sub_10006CD84();
      }
    }

    else
    {

      return sub_100282EF8(v6);
    }
  }

  return result;
}

id sub_10028DBF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendsDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrendsDataProvider()
{
  result = qword_1008E56D8;
  if (!qword_1008E56D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028DE60()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10028DF64(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10006C6A0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084FC28;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_10028E194(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 16);
}

unint64_t sub_10028E1EC()
{
  result = qword_1008E4030;
  if (!qword_1008E4030)
  {
    sub_1000059F8(255, &qword_1008E56F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4030);
  }

  return result;
}

uint64_t sub_10028E278(uint64_t a1, unsigned __int8 *a2, double *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_10049083C(v6, isUniquelyReferenced_nonNull_native, v4, v5);
  *(a1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_10028E30C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v4;
  v10 = *(a3 + 32);
  v5 = *a2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_100490970(v9, v5, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v8;
  return swift_endAccess();
}

void sub_10028E6E4()
{
  sub_1000059F8(0, &qword_1008F73C0);
  v0 = UIFontTextStyleTitle3;
  v1 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();

  qword_1008E5720 = v1;
}

void sub_10028E794()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 _preferredFontForTextStyle:v1 variant:256];

  qword_1008E5730 = v2;
}

void sub_10028E818()
{
  v0 = [objc_opt_self() briskColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 nonGradientTextColor];

    if (v2)
    {
      qword_1008E5740 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10028E8B4(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 preferredFontForTextStyle:v6];

  *a3 = v7;
}

char *sub_10028E924(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnAchievement];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnShowAllAchievements];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_templateUniqueName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_stackTemplateUniqueNames] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_roundedView;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v14 layer];
  [v15 setCornerRadius:16.0];

  [v14 setClipsToBounds:1];
  v16 = sub_100046170();
  [v14 setBackgroundColor:v16];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v14;
  v17 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabel;
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setLineBreakMode:0];
  [v18 setNumberOfLines:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel;
  v20 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = UILabel.textAlignment(_:)();

  [v21 setLineBreakMode:0];
  [v21 setNumberOfLines:0];
  v22 = UILabel.withLineBreakMode(_:)();

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v19] = v22;
  v23 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillView;
  v24 = [objc_allocWithZone(CHPillLabelView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v23] = v24;
  v25 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView;
  v26 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v27 = UIView.withContentMode(_:)();

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v25] = v27;
  v28 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView;
  v29 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v30 = UIView.withContentMode(_:)();

  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v28] = v30;
  v31 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel;
  v32 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v32 setLineBreakMode:0];
  [v32 setNumberOfLines:0];
  if (qword_1008DA7C0 != -1)
  {
    swift_once();
  }

  v33 = UILabel.withFont(_:)();

  v34 = UILabel.withLineBreakMode(_:)();
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v31] = v34;
  type metadata accessor for ShowAllButton();
  v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1008DA7B8 != -1)
  {
    swift_once();
  }

  v36 = qword_1008E5730;
  v37 = [v35 titleLabel];
  [v37 setFont:v36];

  if (qword_1008DA7C8 != -1)
  {
    swift_once();
  }

  v38 = UIButton.withTitleTextColor(_:for:)();

  v39 = [objc_opt_self() mainBundle];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 localizedStringForKey:v40 value:0 table:0];

  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  v42 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButton;
  [v38 setTitle:v41 forState:{objc_msgSend(v38, "state")}];

  v43 = [v38 titleLabel];
  [v43 setLineBreakMode:0];

  v44 = [v38 titleLabel];
  [v44 setLineBreakMode:0];

  v45 = [v38 titleLabel];
  [v45 setNumberOfLines:0];

  [v38 setContentHorizontalAlignment:2];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v42] = v38;
  v46 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel;
  v47 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v47 setLineBreakMode:0];
  [v47 setNumberOfLines:0];
  [v47 setTextAlignment:1];
  v48 = UILabel.withLineBreakMode(_:)();

  v49 = [objc_opt_self() secondaryLabelColor];
  v50 = UILabel.withTextColor(_:)();

  if (qword_1008DA7B0 != -1)
  {
    swift_once();
  }

  v51 = UILabel.withFont(_:)();

  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v46] = v51;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTopMargin] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeViewToSectionDescriptionMargin] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButtonBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint] = 0;
  v69.receiver = v5;
  v69.super_class = type metadata accessor for TrophyCaseSectionCell();
  v52 = objc_msgSendSuper2(&v69, "initWithFrame:", a1, a2, a3, a4);
  v53 = objc_allocWithZone(UITapGestureRecognizer);
  v54 = v52;
  v55 = [v53 initWithTarget:v54 action:"didTapBadgeImageView:"];
  v56 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView;
  [*&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView] addGestureRecognizer:v55];
  v57 = *&v54[v56];

  v58 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButton;
  [*&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButton] addTarget:v54 action:"didTapShowAllButton:" forControlEvents:64];
  v59 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel;
  v60 = *&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel];
  if (FIUILocaleIsRightToLeft())
  {
    v61 = 0;
  }

  else
  {
    v61 = 2;
  }

  [v60 setTextAlignment:v61];

  v62 = *&v54[v58];
  if (FIUILocaleIsRightToLeft())
  {
    v63 = 1;
  }

  else
  {
    v63 = 2;
  }

  [v62 setContentHorizontalAlignment:v63];

  v64 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView;
  v65 = *&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView];
  if (FIUILocaleIsRightToLeft())
  {
    v66 = 8;
  }

  else
  {
    v66 = 7;
  }

  [v65 setContentMode:v66];

  v67 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_roundedView;
  [*&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_roundedView] addSubview:*&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabel]];
  [*&v54[v67] addSubview:*&v54[v56]];
  [*&v54[v67] addSubview:*&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel]];
  [*&v54[v67] addSubview:*&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel]];
  [*&v54[v67] addSubview:*&v54[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillView]];
  [*&v54[v67] addSubview:*&v54[v64]];
  [*&v54[v67] addSubview:*&v54[v58]];
  [*&v54[v67] addSubview:*&v54[v59]];
  [v54 addSubview:*&v54[v67]];
  sub_10028F3A8();

  return v54;
}

void sub_10028F3A8()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView];
  v2 = [v1 topAnchor];
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_roundedView];
  v152 = v3;
  v4 = [v3 topAnchor];
  v151 = [v2 constraintEqualToAnchor:v4 constant:85.0];

  LODWORD(v5) = 1132068864;
  [v151 setPriority:v5];
  v6 = [v1 widthAnchor];
  v7 = [v3 widthAnchor];
  v150 = [v6 constraintEqualToAnchor:v7 multiplier:0.6];

  v8 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView];
  v9 = [v8 heightAnchor];
  v149 = [v9 constraintEqualToConstant:38.0];

  v10 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel];
  v11 = [v10 topAnchor];
  v136 = v1;
  v12 = [v1 bottomAnchor];
  v148 = [v11 constraintEqualToAnchor:v12 constant:20.0];

  v131 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel];
  v13 = [v131 topAnchor];
  v14 = [v1 bottomAnchor];
  v146 = [v13 constraintEqualToAnchor:v14 constant:20.0];

  v153 = v8;
  v15 = [v8 topAnchor];
  v155 = v10;
  v16 = [v10 bottomAnchor];
  v142 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:15.0];

  v17 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel];
  v18 = [v17 topAnchor];
  v19 = [v10 bottomAnchor];
  v138 = [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:15.0];

  v20 = [v8 topAnchor];
  v21 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillView];
  v135 = v21;
  v22 = [v21 bottomAnchor];
  v144 = [v20 constraintGreaterThanOrEqualToAnchor:v22 constant:15.0];

  v23 = [v17 topAnchor];
  v24 = [v21 bottomAnchor];
  v140 = [v23 constraintGreaterThanOrEqualToAnchor:v24 constant:15.0];

  v25 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabel];
  v118 = v25;
  v26 = [v25 leadingAnchor];
  v27 = [v152 leadingAnchor];
  v125 = [v26 constraintEqualToAnchor:v27 constant:20.0];

  v28 = [v25 trailingAnchor];
  v29 = [v152 trailingAnchor];
  v120 = [v28 constraintEqualToAnchor:v29 constant:-20.0];

  v30 = [v131 leadingAnchor];
  v31 = [v152 leadingAnchor];
  v133 = [v30 constraintEqualToAnchor:v31 constant:20.0];

  v32 = [v131 trailingAnchor];
  v33 = [v152 trailingAnchor];
  v127 = [v32 constraintEqualToAnchor:v33 constant:-20.0];

  v34 = [v155 leadingAnchor];
  v35 = [v152 leadingAnchor];
  v122 = [v34 constraintEqualToAnchor:v35 constant:20.0];

  v36 = [v155 trailingAnchor];
  v37 = [v152 trailingAnchor];
  v115 = [v36 constraintEqualToAnchor:v37 constant:-20.0];

  v38 = [v8 leadingAnchor];
  v39 = [v152 leadingAnchor];
  v124 = [v38 constraintEqualToAnchor:v39 constant:20.0];

  v40 = [v17 leadingAnchor];
  v41 = [v152 leadingAnchor];
  v129 = [v40 constraintEqualToAnchor:v41 constant:20.0];

  v42 = [v17 trailingAnchor];
  v43 = [v152 trailingAnchor];
  v123 = [v42 constraintEqualToAnchor:v43 constant:-20.0];

  v44 = [v8 bottomAnchor];
  v45 = [v152 bottomAnchor];
  v116 = [v44 constraintEqualToAnchor:v45 constant:-18.0];

  v117 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButton];
  v46 = [v117 bottomAnchor];
  v47 = [v152 bottomAnchor];
  v130 = [v46 constraintEqualToAnchor:v47 constant:-22.0];

  v132 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1006E3CC0;
  v49 = [v152 topAnchor];
  v50 = [v0 topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v48 + 32) = v51;
  v52 = [v152 bottomAnchor];
  v53 = [v0 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v48 + 40) = v54;
  v55 = [v152 leadingAnchor];
  v56 = [v0 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v48 + 48) = v57;
  v58 = [v152 trailingAnchor];
  v59 = [v0 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v48 + 56) = v60;
  v61 = [v118 topAnchor];
  v62 = [v152 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:15.0];

  *(v48 + 64) = v63;
  *(v48 + 72) = v125;
  *(v48 + 80) = v120;
  v114 = v125;
  v126 = v120;
  v64 = [v136 topAnchor];
  v65 = [v118 bottomAnchor];
  v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65 constant:15.0];

  *(v48 + 88) = v66;
  v67 = [v136 centerXAnchor];
  v68 = [v152 centerXAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v48 + 96) = v69;
  v70 = [v136 heightAnchor];
  v71 = [v136 widthAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v48 + 104) = v72;
  *(v48 + 112) = v146;
  *(v48 + 120) = v133;
  *(v48 + 128) = v127;
  *(v48 + 136) = v122;
  *(v48 + 144) = v115;
  *(v48 + 152) = v142;
  *(v48 + 160) = v138;
  v119 = v146;
  v121 = v133;
  v128 = v127;
  v134 = v122;
  v137 = v115;
  v143 = v142;
  v147 = v138;
  v73 = [v135 centerXAnchor];
  v74 = [v152 centerXAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v48 + 168) = v75;
  v76 = [v135 topAnchor];
  v77 = [v155 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:5.0];

  *(v48 + 176) = v78;
  *(v48 + 184) = v144;
  *(v48 + 192) = v140;
  *(v48 + 200) = v124;
  v145 = v144;
  v156 = v140;
  v141 = v124;
  v79 = [v153 trailingAnchor];
  v80 = [v152 centerXAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:-5.0];

  *(v48 + 208) = v81;
  *(v48 + 216) = v116;
  *(v48 + 224) = v129;
  *(v48 + 232) = v123;
  v154 = v116;
  v82 = v129;
  v139 = v123;
  v83 = [v117 topAnchor];
  v84 = [v17 bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v48 + 240) = v85;
  v86 = [v117 leadingAnchor];
  v87 = [v152 centerXAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:5.0];

  *(v48 + 248) = v88;
  v89 = [v117 trailingAnchor];
  v90 = [v152 trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 constant:-15.0];

  *(v48 + 256) = v91;
  *(v48 + 264) = v130;
  sub_1000059F8(0, &qword_1008DC980);
  v92 = v130;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v132 activateConstraints:isa];

  v94 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewTopConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewTopConstraint] = v151;

  v95 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewWidthConstraint] = v150;

  v96 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackHeightConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackHeightConstraint] = v149;

  v97 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTopMargin];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTopMargin] = v148;

  v98 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeViewToSectionDescriptionMargin];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeViewToSectionDescriptionMargin] = v119;

  v99 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelLeadingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelLeadingConstraint] = v114;

  v100 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelTrailingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelTrailingConstraint] = v126;

  v101 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelLeadingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelLeadingConstraint] = v121;

  v102 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelTrailingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelTrailingConstraint] = v128;

  v103 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelLeadingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelLeadingConstraint] = v134;

  v104 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTrailingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTrailingConstraint] = v137;

  v105 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewLeadingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewLeadingConstraint] = v141;

  v106 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelLeadingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelLeadingConstraint] = v82;

  v107 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelTrailingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelTrailingConstraint] = v139;

  v108 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewBottomConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewBottomConstraint] = v154;

  v109 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButtonBottomConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButtonBottomConstraint] = v92;

  v110 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint] = v143;

  v111 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint] = v147;

  v112 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint] = v145;

  v113 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint] = v156;
}

void sub_100290468(char a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView);
  v6 = [v5 topAnchor];
  v7 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_roundedView);
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:a2];

  v10 = v9;
  v62 = a1;
  v66 = v10;
  if (a1)
  {
    v12 = [v5 widthAnchor];
    v13 = [v12 constraintEqualToConstant:126.0];
    v14 = 30.0;
    v15 = 16.0;
    v16 = 38.0;
  }

  else
  {
    LODWORD(v11) = 1132068864;
    [v10 setPriority:v11];
    v17 = [v5 widthAnchor];
    v12 = [v7 widthAnchor];
    v13 = [v17 constraintEqualToAnchor:v12 multiplier:0.6];

    v15 = 20.0;
    v16 = 41.0;
    v14 = 20.0;
  }

  v18 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView);
  v65 = v13;
  v19 = [v18 heightAnchor];
  v20 = [v19 constraintEqualToConstant:v16];

  v21 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel);
  v64 = v20;
  v22 = [v21 topAnchor];
  v23 = [v5 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:v15];

  v25 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel);
  v63 = v24;
  v26 = [v25 topAnchor];
  v27 = [v5 bottomAnchor];
  v67 = [v26 constraintEqualToAnchor:v27 constant:v14];

  v61 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewTopConstraint;
  v28 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewTopConstraint);
  v29 = v67;
  if (v28)
  {
    [v28 setActive:0];
  }

  v60 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewWidthConstraint;
  v30 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewWidthConstraint);
  if (v30)
  {
    [v30 setActive:0];
  }

  v59 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackHeightConstraint;
  v31 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackHeightConstraint);
  if (v31)
  {
    [v31 setActive:0];
  }

  v32 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTopMargin;
  v33 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTopMargin);
  if (v33)
  {
    [v33 setActive:0];
  }

  v34 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeViewToSectionDescriptionMargin;
  v35 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeViewToSectionDescriptionMargin);
  if (v35)
  {
    [v35 setActive:0];
  }

  v36 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1006D9810;
  *(v37 + 32) = v66;
  *(v37 + 40) = v65;
  *(v37 + 48) = v64;
  *(v37 + 56) = v63;
  *(v37 + 64) = v67;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  v39 = *(v2 + v61);
  *(v2 + v61) = v66;

  v40 = *(v2 + v60);
  *(v2 + v60) = v65;

  v41 = *(v2 + v59);
  *(v2 + v59) = v64;

  v42 = *(v2 + v32);
  *(v2 + v32) = v63;

  v43 = *(v2 + v34);
  *(v2 + v34) = v67;

  if (v62)
  {
    v44 = 15.0;
  }

  else
  {
    v44 = 20.0;
  }

  v45 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelLeadingConstraint);
  if (v45)
  {
    [v45 setConstant:v44];
  }

  v46 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelTrailingConstraint);
  if (v46)
  {
    [v46 setConstant:-v44];
  }

  v47 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelLeadingConstraint);
  if (v47)
  {
    [v47 setConstant:v44];
  }

  v48 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelTrailingConstraint);
  if (v48)
  {
    [v48 setConstant:-v44];
  }

  v49 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelLeadingConstraint);
  if (v49)
  {
    [v49 setConstant:v44];
  }

  v50 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTrailingConstraint);
  if (v50)
  {
    [v50 setConstant:-v44];
  }

  v51 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewLeadingConstraint);
  if (v51)
  {
    [v51 setConstant:v44];
  }

  v52 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelLeadingConstraint);
  if (v52)
  {
    [v52 setConstant:v44];
  }

  v53 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelTrailingConstraint);
  if (v53)
  {
    [v53 setConstant:-v44];
  }

  v54 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewBottomConstraint);
  if (v54)
  {
    v55 = -18.0;
    if (v62)
    {
      v55 = -14.0;
    }

    [v54 setConstant:v55];
  }

  v56 = *(v2 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButtonBottomConstraint);
  if (v56)
  {
    if (v62)
    {
      v57 = -18.0;
    }

    else
    {
      v57 = -22.0;
    }

    v58 = v56;
    [v58 setConstant:v57];
  }
}

char *sub_100290ACC(char *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&result[*a4];
  if (v4)
  {
    v5 = result;
    v6 = sub_10000B210(v4);
    v4(v6);

    return sub_1000245E0(v4);
  }

  return result;
}

void sub_100290B4C(void *a1, char a2, void *a3)
{
  v53 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  sub_100293098(a2);
  v15 = v14;
  v17 = v16;
  v52 = v3;
  v18 = *&v3[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView];
  sub_100140278(&unk_1008F8F40);
  v19 = a1;
  LocalizedStringResource.init(stringLiteral:)();
  v20 = EntityProperty<>.init(title:)();
  v21 = v19;

  LOBYTE(aBlock) = [v21 unearned] ^ 1;
  EntityProperty.wrappedValue.setter();

  aBlock = _swiftEmptyArrayStorage;
  sub_10005FB0C(&qword_1008DC918, &type metadata accessor for AppEntityVisualState);
  sub_100140278(&unk_1008F8F50);
  sub_100282B7C(&qword_1008DC920, &unk_1008F8F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  aBlock = v20;
  v56 = v21;
  v22 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
  sub_10007151C();
  v23 = AppEntityViewAnnotation.init<A>(entity:state:)();
  UIView.annotate(with:)();

  v24 = [v21 template];
  v25 = [v24 uniqueName];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = v52;
  v30 = &v52[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_templateUniqueName];
  *v30 = v26;
  v30[1] = v28;

  v31 = v53;
  if ([v53 hasCachedThumbnailImageForAchievement:v21 size:{v15, v17}])
  {
    v32 = [v31 thumbnailImageForAchievement:v21 size:{v15, v17}];
    [v18 setImage:v32];
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v34 = v44;
    v33 = v45;
    (*(v44 + 104))(v11, enum case for DispatchQoS.QoSClass.userInitiated(_:), v45);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v34 + 8))(v11, v33);
    v36 = swift_allocObject();
    *(v36 + 2) = v31;
    *(v36 + 3) = v21;
    v36[4] = v15;
    v36[5] = v17;
    *(v36 + 6) = v29;
    v59 = sub_1002957E8;
    v60 = v36;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_1000449A8;
    v58 = &unk_10084FE60;
    v37 = _Block_copy(&aBlock);
    v38 = v21;
    v39 = v31;
    v40 = v29;
    v41 = v46;
    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_10005FB0C(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
    v42 = v48;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v50 + 8))(v42, v43);
    (*(v47 + 8))(v41, v49);
  }
}

uint64_t sub_100291208(void *a1, void *a2, double a3, double a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v23 = *(v11 - 8);
  v24 = v11;
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 thumbnailImageForAchievement:a2 size:{a3, a4}];
  sub_1000059F8(0, &qword_1008E3FD0);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = v14;
  aBlock[4] = sub_1002957F8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084FEB0;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = v14;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005FB0C(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v10, v8);
  return (*(v23 + 8))(v13, v24);
}

void sub_100291558(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_templateUniqueName);
    v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_templateUniqueName + 8);
    v8 = Strong;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = [a2 template];
  v10 = [v9 uniqueName];

  if (!v10)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (!v6)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_16:

    return;
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  if (v7 == v11 && v6 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return;
    }
  }

LABEL_18:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView);

    [v18 setImage:a3];
  }
}

void sub_100291708(unint64_t a1, char a2, void *a3, unsigned int a4)
{
  v63 = a3;
  v61 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v56 = *(v10 - 1);
  __chkstk_darwin(v10);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1002931F8(a2);
  v16 = v15;
  IsRightToLeft = FIUILocaleIsRightToLeft();
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v60 = IsRightToLeft;
    v58 = v10;
    v59 = v7;
    v57 = v9;
    if (!v18)
    {
      break;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    IsRightToLeft = sub_100073020(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v51 = v6;
    v9 = 0;
    v10 = aBlock[0];
    v64 = a1 & 0xFFFFFFFFFFFFFF8;
    v65 = (a1 & 0xC000000000000001);
    v6 = v18;
    while (1)
    {
      v7 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v65)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v64 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 8 * v9 + 32);
      }

      v20 = v19;
      v21 = a1;
      v22 = [v19 template];
      v23 = [v22 uniqueName];

      if (!v23)
      {
        goto LABEL_26;
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      aBlock[0] = v10;
      v28 = v10[2];
      v27 = v10[3];
      if (v28 >= v27 >> 1)
      {
        IsRightToLeft = sub_100073020((v27 > 1), v28 + 1, 1);
        v10 = aBlock[0];
      }

      v10[2] = v28 + 1;
      v29 = &v10[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      ++v9;
      a1 = v21;
      if (v7 == v6)
      {
        v6 = v51;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v50 = IsRightToLeft;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    IsRightToLeft = v50;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_17:
  v30 = v62;
  *&v62[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_stackTemplateUniqueNames] = v10;

  sub_1000059F8(0, &qword_1008E8750);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v32 = v63;
  v34 = v60;
  v33 = v61;
  v35 = [v63 hasCachedThumbnailImageForAchievements:isa size:v60 alignment:v61 stackType:{v14, v16}];

  if (v35)
  {
    v36 = v33;
    v37 = *&v30[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView];
    v38 = Array._bridgeToObjectiveC()().super.isa;
    v65 = [v32 thumbnailImageForAchievements:v38 size:v34 alignment:v36 stackType:{v14, v16}];

    [v37 setImage:v65];
    v39 = v65;
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v41 = v53;
    v40 = v54;
    v42 = v52;
    (*(v53 + 104))(v52, enum case for DispatchQoS.QoSClass.userInitiated(_:), v54);
    v65 = static OS_dispatch_queue.global(qos:)();
    (*(v41 + 8))(v42, v40);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    *(v43 + 24) = a1;
    *(v43 + 32) = v14;
    *(v43 + 40) = v16;
    *(v43 + 48) = v34;
    *(v43 + 52) = v33;
    *(v43 + 56) = v30;
    aBlock[4] = sub_1002957C8;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10084FD98;
    v44 = _Block_copy(aBlock);
    v45 = v32;

    v46 = v30;
    v47 = v55;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_10005FB0C(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
    v48 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v49 = v65;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (*(v59 + 1))(v48, v6);
    (*(v56 + 8))(v47, v58);
  }
}

uint64_t sub_100291DA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v27 = *(v15 - 8);
  v28 = v15;
  __chkstk_darwin(v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E8750);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19 = [a1 thumbnailImageForAchievements:isa size:a3 alignment:a4 stackType:{a5, a6}];

  sub_1000059F8(0, &qword_1008E3FD0);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a2;
  v22[4] = v19;
  aBlock[4] = sub_1002957DC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084FE10;
  v23 = _Block_copy(aBlock);

  v24 = v19;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005FB0C(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v29 + 8))(v14, v12);
  return (*(v27 + 8))(v17, v28);
}

void sub_100292138(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_stackTemplateUniqueNames);
    v7 = Strong;
  }

  else
  {
    v6 = 0;
  }

  v24 = a3;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_19:
      if (v6)
      {
        v20 = sub_10031B15C(v6, _swiftEmptyArrayStorage);

        if (v20)
        {
          swift_beginAccess();
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = *(v21 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView);

            [v23 setImage:v24];
          }
        }
      }

      else
      {
      }

      return;
    }

    sub_100073020(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v25 = v6;
    v9 = 0;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(a2 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 template];
      v13 = [v12 uniqueName];

      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_100073020((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      ++v9;
      if (v6 == i)
      {
        v6 = v25;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1002923B0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TrophyCaseSectionCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel] setAttributedText:0];
  [*&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel] setText:0];
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint] = 0;

  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint] = 0;

  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint] = 0;

  v4 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint] = 0;
}

id sub_100292504(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1002927CC()
{
  [*(*v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView) frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  UIEdgeInsets.init(uniform:)();

  return sub_1002957AC(v2, v4, v6, v8, v9, v10);
}

void sub_100292894()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnAchievement);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnShowAllAchievements);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_templateUniqueName);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_stackTemplateUniqueNames) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_roundedView;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = [v6 layer];
  [v7 setCornerRadius:16.0];

  [v6 setClipsToBounds:1];
  v8 = sub_100046170();
  [v6 setBackgroundColor:v8];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v5) = v6;
  v9 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabel;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v9) = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = UILabel.textAlignment(_:)();

  [v13 setLineBreakMode:0];
  [v13 setNumberOfLines:0];
  v14 = UILabel.withLineBreakMode(_:)();

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v11) = v14;
  v15 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillView;
  v16 = [objc_allocWithZone(CHPillLabelView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v15) = v16;
  v17 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageView;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = UIView.withContentMode(_:)();

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v17) = v19;
  v20 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView;
  v21 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = UIView.withContentMode(_:)();

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v20) = v22;
  v23 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel;
  v24 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v24 setLineBreakMode:0];
  [v24 setNumberOfLines:0];
  if (qword_1008DA7C0 != -1)
  {
    swift_once();
  }

  v25 = UILabel.withFont(_:)();

  v26 = UILabel.withLineBreakMode(_:)();
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v23) = v26;
  type metadata accessor for ShowAllButton();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1008DA7B8 != -1)
  {
    swift_once();
  }

  v28 = qword_1008E5730;
  v29 = [v27 titleLabel];
  [v29 setFont:v28];

  if (qword_1008DA7C8 != -1)
  {
    swift_once();
  }

  v30 = UIButton.withTitleTextColor(_:for:)();

  v31 = [objc_opt_self() mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 localizedStringForKey:v32 value:0 table:0];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  v34 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButton;
  [v30 setTitle:v33 forState:{objc_msgSend(v30, "state")}];

  v35 = [v30 titleLabel];
  [v35 setLineBreakMode:0];

  v36 = [v30 titleLabel];
  [v36 setLineBreakMode:0];

  v37 = [v30 titleLabel];
  [v37 setNumberOfLines:0];

  [v30 setContentHorizontalAlignment:2];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v34) = v30;
  v38 = OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel;
  v39 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v39 setLineBreakMode:0];
  [v39 setNumberOfLines:0];
  [v39 setTextAlignment:1];
  v40 = UILabel.withLineBreakMode(_:)();

  v41 = [objc_opt_self() secondaryLabelColor];
  v42 = UILabel.withTextColor(_:)();

  if (qword_1008DA7B0 != -1)
  {
    swift_once();
  }

  v43 = UILabel.withFont(_:)();

  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v38) = v43;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeImageViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTopMargin) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeViewToSectionDescriptionMargin) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabelTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabelTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabelTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButtonBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100293098(char a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  CGRectGetWidth(v13);
  if (qword_1008DA900 != -1)
  {
    swift_once();
  }

  if (a1)
  {
    v11 = [objc_opt_self() sharedApplication];
    v12 = [v11 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
  }
}

double sub_1002931F8(char a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  if (qword_1008DA900 != -1)
  {
    v17 = Width;
    swift_once();
    Width = v17;
  }

  v12 = Width - (*&qword_100925618 + *&qword_100925618);
  if (a1)
  {
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 preferredContentSizeCategory];

    LOBYTE(v13) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if ((v13 & 1) == 0)
    {
      v12 = (v12 + -10.0) * 0.5;
    }

    v15 = -15.0;
  }

  else
  {
    v15 = -20.0;
  }

  return v12 * 0.5 + v15 + -5.0;
}

id sub_100293378(void *a1, uint64_t a2, void *a3)
{
  v88 = a2;
  v80 = type metadata accessor for Calendar();
  v79 = *(v80 - 1);
  __chkstk_darwin(v80);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v77 - v8;
  v82 = type metadata accessor for Date();
  v81 = *(v82 - 1);
  __chkstk_darwin(v82);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  v17 = type metadata accessor for DateComponents();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_opt_self();
  v86 = [v21 labelColor];
  v87 = [v21 secondaryLabelColor];
  *&v83 = a3;
  v22 = [a3 titleForAchievement:a1];
  if (v22)
  {
    v23 = v22;
LABEL_4:
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v25;

    goto LABEL_5;
  }

  v24 = [a1 template];
  v23 = [v24 uniqueName];

  if (v23)
  {
    goto LABEL_4;
  }

  v84 = 0;
  v85 = 0xE000000000000000;
LABEL_5:
  v26 = [a1 relevantEarnedInstance];
  if (!v26)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    v29 = v88;
LABEL_11:
    v30 = &qword_1008DE590;
    v31 = v16;
    goto LABEL_12;
  }

  v27 = v26;
  v28 = [v26 earnedDateComponents];

  if (v28)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v18 + 56))(v13, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v13, 1, 1, v17);
  }

  v29 = v88;
  sub_10003BE9C(v13, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_11;
  }

  (*(v18 + 32))(v20, v16, v17);
  v68 = [objc_opt_self() hk_gregorianCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  Calendar.date(from:)();
  (*(v79 + 8))(v6, v80);
  v69 = v81;
  v70 = v82;
  if (v81[6](v9, 1, v82) != 1)
  {
    v71 = v78;
    v69[4](v78, v9, v70);
    v72 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v74 = [v72 formattedListStringForDate:isa font:v29];

    v75 = [v74 string];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v76;

    (v69[1])(v71, v70);
    (*(v18 + 8))(v20, v17);

    goto LABEL_18;
  }

  (*(v18 + 8))(v20, v17);
  v30 = &unk_1008F73A0;
  v31 = v9;
LABEL_12:
  sub_10000EA04(v31, v30);
  v32 = [v83 unachievedShortDescriptionForAchievement:a1];
  if (!v32)
  {
LABEL_17:
    v88 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_18;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v34 == 0xD000000000000028 && 0x8000000100747FE0 == v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_17;
  }

  v88 = v34;
LABEL_18:
  sub_100140278(&qword_1008E58B0);
  inited = swift_initStackObject();
  v83 = xmmword_1006D1F70;
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = v29;
  *(inited + 48) = NSForegroundColorAttributeName;
  v38 = v86;
  *(inited + 56) = v86;
  v82 = NSFontAttributeName;
  v81 = v29;
  v80 = NSForegroundColorAttributeName;
  v86 = v38;
  v39 = sub_1004CAC60(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008E58B8);
  swift_arrayDestroy();
  sub_100376AFC(v39);
  v40 = objc_allocWithZone(NSMutableAttributedString);
  v41 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  v43 = v42;
  v44 = sub_10005FB0C(&qword_1008E7FD0, type metadata accessor for Key);
  v45 = Dictionary._bridgeToObjectiveC()().super.isa;

  v46 = [v40 initWithString:v41 attributes:v45];

  v47 = HIBYTE(v36) & 0xF;
  v48 = v88;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v47 = v88 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v49 = swift_initStackObject();
    *(v49 + 16) = v83;
    v50 = v82;
    *(v49 + 32) = v82;
    v85 = v43;
    v51 = v81;
    v84 = v44;
    v52 = v80;
    *(v49 + 40) = v81;
    *(v49 + 48) = v52;
    v53 = v87;
    *(v49 + 56) = v87;
    v54 = v50;
    v55 = v51;
    v56 = v52;
    v87 = v53;
    v57 = sub_1004CAC60(v49);
    v88 = v48;
    v58 = v57;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_100376AFC(v39);

    v59 = objc_allocWithZone(NSAttributedString);
    v60 = String._bridgeToObjectiveC()();
    v61 = Dictionary._bridgeToObjectiveC()().super.isa;

    v62 = [v59 initWithString:v60 attributes:v61];

    sub_100376AFC(v58);

    v63 = objc_allocWithZone(NSAttributedString);
    v64 = String._bridgeToObjectiveC()();

    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    v66 = [v63 initWithString:v64 attributes:v65];

    [v46 appendAttributedString:v62];
    [v46 appendAttributedString:v66];
  }

  else
  {
  }

  return v46;
}

id sub_100293DDC()
{
  v0 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  LODWORD(v1) = 1036831949;
  [v0 setHyphenationFactor:v1];
  AAUIAwardsDataProviderSection.localized()();
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v3 = sub_1000059F8(0, &qword_1008E58C0);
  *(inited + 40) = v0;
  *(inited + 64) = v3;
  *(inited + 72) = NSFontAttributeName;
  v4 = qword_1008DA7A8;
  v5 = NSParagraphStyleAttributeName;
  v6 = v0;
  v7 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v8 = qword_1008E5720;
  *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 80) = v8;
  v9 = v8;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10005FB0C(&qword_1008E7FD0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithString:v11 attributes:isa];

  return v13;
}

void sub_100294028(uint64_t a1, char a2, double a3)
{
  v6 = type metadata accessor for AAUIAwardsDataProviderSection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UILabel) init];
  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40.0;
    if (a2)
    {
      v12 = 30.0;
    }

    v13 = a3 - v12;
    v56 = NSParagraphStyleAttributeName;
    v55 = NSFontAttributeName;
    v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v54 = sub_100140278(&qword_1008E2568);
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v53 = v16;
    v49 = *(v15 + 56);
    v48 = (v15 - 8);
    v17 = 0.0;
    v52 = v15;
    v51 = v6;
    v50 = v10;
    while (1)
    {
      v53(v9, v14, v6);
      v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      LODWORD(v19) = 1036831949;
      [v18 setHyphenationFactor:v19];
      AAUIAwardsDataProviderSection.localized()();
      v20 = v56;
      v59[0] = v56;
      v21 = sub_1000059F8(0, &qword_1008E58C0);
      v59[1] = v18;
      v22 = v55;
      v59[4] = v21;
      v60[0] = v55;
      v23 = qword_1008DA7A8;
      v24 = v20;
      v25 = v18;
      v26 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v27 = qword_1008E5720;
      v60[4] = sub_1000059F8(0, &qword_1008F73C0);
      v60[1] = v27;
      v28 = static _DictionaryStorage.allocate(capacity:)();
      v29 = v27;
      sub_10022EF60(v59, &v57);
      v30 = v57;
      v31 = sub_1004C53E8(v57);
      if (v32)
      {
        break;
      }

      *(v28 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v31;
      *(v28[6] + 8 * v31) = v30;
      sub_1001AA76C(v58, (v28[7] + 32 * v31));
      v33 = v28[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_17;
      }

      v28[2] = v35;
      sub_10022EF60(v60, &v57);
      v36 = v57;
      v37 = sub_1004C53E8(v57);
      if (v38)
      {
        break;
      }

      *(v28 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v37;
      *(v28[6] + 8 * v37) = v36;
      sub_1001AA76C(v58, (v28[7] + 32 * v37));
      v39 = v28[2];
      v34 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v34)
      {
        goto LABEL_17;
      }

      v28[2] = v40;
      sub_100140278(&unk_1008EE730);
      swift_arrayDestroy();
      v41 = objc_allocWithZone(NSMutableAttributedString);
      v42 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_10005FB0C(&qword_1008E7FD0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v44 = [v41 initWithString:v42 attributes:isa];

      v10 = v50;
      [v50 setAttributedText:v44];

      [v10 sizeThatFits:{v13, 1.79769313e308}];
      v46 = v45;
      v6 = v51;
      (*v48)(v9, v51);
      if (v46 + 15.0 > v17)
      {
        v17 = v46 + 15.0;
      }

      v14 += v49;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void sub_100294584(int a1, id a2, double a3, double a4, uint64_t a5, void *a6, char a7)
{
  v11 = 40.0;
  if (a7)
  {
    v11 = 30.0;
  }

  v12 = a4 - v11;
  if ([a2 unearned])
  {
    v13 = [objc_allocWithZone(UILabel) init];
    [v13 setLineBreakMode:0];
    [v13 setNumberOfLines:0];
    [v13 setTextAlignment:1];
    v14 = UILabel.withLineBreakMode(_:)();

    if (qword_1008DA7B0 != -1)
    {
      swift_once();
    }

    v15 = UILabel.withFont(_:)();

    _StringGuts.grow(_:)(38);
    AAUIAwardsDataProviderSection.rawValue.getter();

    v16._object = 0x8000000100752570;
    v16._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v16);
    v17 = [objc_opt_self() mainBundle];
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    [v15 setText:v19];
    [v15 sizeThatFits:{v12, 1.79769313e308}];
  }

  else
  {
    if (a7)
    {
      if (qword_1008DA7D0 != -1)
      {
        swift_once();
      }

      v20 = &qword_1008E5748;
    }

    else
    {
      if (qword_1008DA7D8 != -1)
      {
        swift_once();
      }

      v20 = &qword_1008E5750;
    }

    v21 = *v20;
    v22 = objc_allocWithZone(UILabel);
    v23 = v21;
    v24 = [v22 init];
    [v24 setLineBreakMode:0];
    [v24 setNumberOfLines:0];
    v25 = UILabel.withFont(_:)();

    v26 = sub_100293378(a2, v23, a6);
    v27 = [v26 string];

    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    [v25 setText:v27];

    [v25 sizeThatFits:{v12, 1.79769313e308}];
    v28 = [a2 template];
    v29 = [v28 displaysEarnedInstanceCount];

    if (v29)
    {
      [a2 earnedInstanceCount];
    }

    v30 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v30 setLineBreakMode:0];
    [v30 setNumberOfLines:0];
    if (qword_1008DA7C0 != -1)
    {
      swift_once();
    }

    v31 = UILabel.withFont(_:)();

    v32 = UILabel.withLineBreakMode(_:)();
    [v32 setTextAlignment:2];
    v33 = [objc_opt_self() mainBundle];
    if (a5 == 1)
    {
      v34 = String._bridgeToObjectiveC()();
      v35 = [v33 localizedStringForKey:v34 value:0 table:0];

      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }
    }

    else
    {
      v36 = String._bridgeToObjectiveC()();
      v37 = [v33 localizedStringForKey:v36 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1006D46C0;
      if (__OFSUB__(a5, 1))
      {
        __break(1u);
        return;
      }

      *(v38 + 56) = &type metadata for Int;
      *(v38 + 64) = &protocol witness table for Int;
      *(v38 + 32) = a5 - 1;
      String.init(format:_:)();

      v35 = String._bridgeToObjectiveC()();
    }

    [v32 setText:v35];

    [v32 sizeThatFits:{v12 * 0.5, 1.79769313e308}];
    v39 = [objc_opt_self() buttonWithType:1];
    if (qword_1008DA7B8 != -1)
    {
      swift_once();
    }

    v40 = qword_1008E5730;
    v41 = [v39 titleLabel];
    [v41 setFont:v40];

    if (qword_1008DA7C8 != -1)
    {
      swift_once();
    }

    v42 = UIButton.withTitleTextColor(_:for:)();

    v43 = [objc_opt_self() mainBundle];
    v44 = String._bridgeToObjectiveC()();
    v45 = [v43 localizedStringForKey:v44 value:0 table:0];

    if (!v45)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = String._bridgeToObjectiveC()();
    }

    [v42 setTitle:v45 forState:{objc_msgSend(v42, "state")}];
    v46 = [v42 titleLabel];
    [v46 setLineBreakMode:0];

    v47 = [v42 titleLabel];
    [v47 setLineBreakMode:0];

    v48 = [v42 titleLabel];
    [v48 setNumberOfLines:0];

    [v42 setContentVerticalAlignment:2];
    [v42 setContentHorizontalAlignment:2];
    [v42 sizeThatFits:{v12 * 0.5, 1.79769313e308}];
  }
}

void sub_100294F9C(double a1, uint64_t a2, void *a3, unint64_t a4, char *a5, void *a6, char *a7, unsigned int a8, char a9, uint64_t a10, void *a11, void *a12, uint64_t a13)
{
  v58 = a12;
  v19 = a11;
  v20 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionLabel);
  v21 = sub_100293DDC();
  [v20 setAttributedText:v21];

  v22 = fmax(a1 + 15.0, 80.0);
  if (a9)
  {
    v23 = v22;
  }

  else
  {
    v23 = 85.0;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v54 = a7;
  a7 = a5;
  v24 = a3;
  v25 = [v24 template];
  v26 = [v25 displaysEarnedInstanceCount];

  if (!v26 || ![v24 earnedInstanceCount])
  {

    a5 = a7;
    a7 = v54;
LABEL_14:
    [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillView) setHidden:{1, v54}];
    [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint) setActive:1];
    [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint) setActive:1];
    v32 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint);
    if (v32)
    {
      [v32 setActive:0];
    }

    v33 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint);
    if (v33)
    {
      [v33 setActive:0];
    }

    goto LABEL_18;
  }

  v27 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillView);
  a5 = [objc_opt_self() grayColor];
  [v27 setPillBackgroundColor:a5];

  v28 = [v24 earnedInstanceCount];
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  [v27 setIntegerValue:v28];
  [v27 setHidden:0];
  [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToStackViewConstraint) setActive:0];
  [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabelToCountLabelConstraint) setActive:0];
  v29 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToStackViewConstraint);
  if (v29)
  {
    [v29 setActive:1];
  }

  v30 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_pillViewToCountLabelConstraint);
  if (v30)
  {
    v31 = v30;
    [v31 setActive:1];
  }

  a5 = a7;
  a7 = v54;
LABEL_18:
  sub_100290468(a9 & 1, v23);
  v34 = (v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnAchievement);
  v35 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnAchievement);
  *v34 = a10;
  v34[1] = a11;

  sub_1000245E0(v35);
  v36 = (v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnShowAllAchievements);
  v37 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_tapOnShowAllAchievements);
  *v36 = a12;
  v36[1] = a13;

  sub_1000245E0(v37);
  if (!a3)
  {
    return;
  }

  v58 = a3;
  sub_100290B4C(v58, a9 & 1, a6);
  sub_100291708(a4, a9 & 1, a6, a8);
  v38 = [v58 unearned];
  v24 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel);
  if (!v38)
  {
    [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel) setHidden:0];
    [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButton) setHidden:0];
    v19 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel);
    [v19 setHidden:0];
    [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView) setHidden:0];
    [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel) setHidden:1];
    if ((a9 & 1) == 0)
    {
      if (qword_1008DA7D8 != -1)
      {
        swift_once();
      }

      v44 = &qword_1008E5750;
      goto LABEL_30;
    }

    if (qword_1008DA7D0 == -1)
    {
LABEL_26:
      v44 = &qword_1008E5748;
LABEL_30:
      v45 = *v44;
      v46 = sub_100293378(v58, v45, a7);
      [v24 setAttributedText:v46];

      v47 = [objc_opt_self() mainBundle];
      if (a5 == 1)
      {
        v48 = String._bridgeToObjectiveC()();
        v49 = [v47 localizedStringForKey:v48 value:0 table:0];

        if (!v49)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = String._bridgeToObjectiveC()();
        }

        [v19 setText:v49];
      }

      else
      {
        v50 = String._bridgeToObjectiveC()();
        v51 = [v47 localizedStringForKey:v50 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1006D46C0;
        if (__OFSUB__(a5, 1))
        {
          __break(1u);
          return;
        }

        *(v52 + 56) = &type metadata for Int;
        *(v52 + 64) = &protocol witness table for Int;
        *(v52 + 32) = a5 - 1;
        String.init(format:_:)();

        v53 = String._bridgeToObjectiveC()();

        [v19 setText:v53];
      }

      v43 = v58;
      v58 = v45;
      goto LABEL_37;
    }

LABEL_41:
    swift_once();
    goto LABEL_26;
  }

  [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementTitleLabel) setHidden:1];
  [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_showAllButton) setHidden:1];
  [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_achievementCountLabel) setHidden:1];
  [*(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_badgeStackImageView) setHidden:1];
  v39 = *(v13 + OBJC_IVAR____TtC10FitnessApp21TrophyCaseSectionCell_sectionDescriptionLabel);
  [v39 setHidden:0];
  _StringGuts.grow(_:)(38);
  AAUIAwardsDataProviderSection.rawValue.getter();

  v40._object = 0x8000000100752570;
  v40._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v40);
  v41 = [objc_opt_self() mainBundle];
  v42 = String._bridgeToObjectiveC()();

  v43 = [v41 localizedStringForKey:v42 value:0 table:0];

  if (!v43)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = String._bridgeToObjectiveC()();
  }

  [v39 setText:v43];
LABEL_37:
}

char *sub_100295880(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_contentView;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = sub_100046170();
  [v11 setBackgroundColor:v12];

  v13 = sub_10013A904();
  v14 = [v11 layer];
  [v14 setCornerRadius:v13];

  [v11 setClipsToBounds:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v11;
  v15 = OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionStageLabel;
  v16 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA800 != -1)
  {
    swift_once();
  }

  v17 = UILabel.withFont(_:)();

  v18 = [objc_opt_self() secondaryLabelColor];
  v19 = UILabel.withTextColor(_:)();

  [v19 setLineBreakMode:0];
  [v19 setNumberOfLines:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v15] = v19;
  *&v5[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_friend] = 0;
  result = [objc_opt_self() companionFriendListConfiguration];
  if (result)
  {
    v21 = OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreViewConfiguration;
    *&v5[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreViewConfiguration] = result;
    [result setDivision:1];
    [*&v5[v21] setMinimumMiddleMargin:0.0];
    v22 = qword_1008DA7E0;
    v23 = *&v5[v21];
    if (v22 != -1)
    {
      swift_once();
    }

    [v23 setNameFont:qword_1008E58C8];

    v24 = qword_1008DA7E8;
    v25 = *&v5[v21];
    if (v24 != -1)
    {
      swift_once();
    }

    [v25 setPrimaryScoreFont:qword_1008E58D0];

    v26 = qword_1008DA7F0;
    v27 = *&v5[v21];
    if (v26 != -1)
    {
      swift_once();
    }

    [v27 setPrimaryScoreUnitFont:qword_1008E58D8];

    v28 = qword_1008DA7F8;
    v29 = *&v5[v21];
    if (v28 != -1)
    {
      swift_once();
    }

    [v29 setSecondaryScoreFont:qword_1008E58E0];

    result = [objc_allocWithZone(ASCompetitionScoreView) initWithConfiguration:*&v5[v21]];
    if (result)
    {
      v30 = result;
      [result setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v5[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreView] = v30;
      v35.receiver = v5;
      v35.super_class = type metadata accessor for ActivitySharingFriendListCompetitionView();
      v31 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
      v32 = OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_contentView;
      v33 = *&v31[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_contentView];
      v34 = v31;
      [v34 addSubview:v33];
      [*&v31[v32] addSubview:*&v34[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreView]];
      [*&v31[v32] addSubview:*&v34[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionStageLabel]];
      sub_100295D44();

      return v34;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100295D44()
{
  v30 = objc_opt_self();
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_contentView);
  UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();
  sub_100140278(&unk_1008E4E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D9800;
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreView);
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(inited + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(inited + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(inited + 48) = v12;
  v13 = *(v0 + OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionStageLabel);
  v14 = [v13 topAnchor];
  v15 = [v3 bottomAnchor];
  v16 = *(v0 + OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreViewConfiguration);
  [v16 bottomMargin];
  v18 = [v14 constraintEqualToAnchor:v15 constant:10.0 - v17];

  *(inited + 56) = v18;
  v19 = [v13 leadingAnchor];
  v20 = [v1 leadingAnchor];
  [v16 sideMargin];
  v21 = [v19 constraintEqualToAnchor:v20 constant:?];

  *(inited + 64) = v21;
  v22 = [v13 trailingAnchor];
  v23 = [v1 trailingAnchor];
  [v16 sideMargin];
  v25 = [v22 constraintEqualToAnchor:v23 constant:-v24];

  *(inited + 72) = v25;
  v26 = [v13 bottomAnchor];
  v27 = [v1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-16.0];

  *(inited + 80) = v28;
  sub_10019EF10(inited);
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];
}

double sub_10029618C()
{
  v1 = objc_opt_self();
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreViewConfiguration];
  [v1 preferredHeightForConfiguration:v2 friend:*&v0[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_friend]];
  [*&v0[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionStageLabel] intrinsicContentSize];
  [v2 bottomMargin];
  [v0 bounds];
  return v3;
}

id sub_100296274()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendListCompetitionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100296348()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_contentView;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = sub_100046170();
  [v3 setBackgroundColor:v4];

  v5 = sub_10013A904();
  v6 = [v3 layer];
  [v6 setCornerRadius:v5];

  [v3 setClipsToBounds:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v3;
  v7 = OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionStageLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA800 != -1)
  {
    swift_once();
  }

  v9 = UILabel.withFont(_:)();

  v10 = [objc_opt_self() secondaryLabelColor];
  v11 = UILabel.withTextColor(_:)();

  [v11 setLineBreakMode:0];
  [v11 setNumberOfLines:0];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v7) = v11;
  *(v1 + OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_friend) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100296568@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100296868(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10029659C()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x657669746341;
    }

    if (v1 == 1)
    {
      return 0xD00000000000001ELL;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x726F576E49746F4ELL;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  return 0xD000000000000012;
}

id sub_1002967A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataLinkWorkoutStateHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100296814()
{
  result = qword_1008E5968;
  if (!qword_1008E5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5968);
  }

  return result;
}

unint64_t sub_100296868(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WorkloadListItemStack()
{
  result = qword_1008E59C8;
  if (!qword_1008E59C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002968EC()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_1002969C8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutEffort();
      if (v2 <= 0x3F)
      {
        sub_10005C91C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002969C8()
{
  if (!qword_1008E59D8)
  {
    sub_100141EEC(&qword_1008DF280);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E59D8);
    }
  }
}

double sub_100296A48()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  type metadata accessor for WorkloadListItemStack();
  v14 = v0;
  sub_10005491C(v7);
  v8 = *(v2 + 104);
  v8(v4, enum case for DynamicTypeSize.accessibility1(_:), v1);
  sub_10005BDD4(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v9 = dispatch thunk of static Comparable.< infix(_:_:)();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  result = 10.0;
  if (v9)
  {
    sub_10005491C(v7);
    v8(v4, enum case for DynamicTypeSize.xLarge(_:), v1);
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
    v10(v4, v1);
    v10(v7, v1);
    result = 15.0;
    if (v12)
    {
      return 11.0;
    }
  }

  return result;
}

uint64_t sub_100296C74@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = type metadata accessor for RoundedRectangle();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008E5A20);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = sub_100140278(&qword_1008E5A28);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v68 - v11;
  v13 = sub_100140278(&qword_1008E5A30);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v71 = &v68 - v15;
  v16 = sub_100140278(&qword_1008E5A38);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v70 = &v68 - v18;
  v73 = sub_100140278(&qword_1008E5A40);
  __chkstk_darwin(v73);
  v72 = &v68 - v19;
  sub_1002971EC(v1, v12);
  v20 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v21 = &v12[*(v10 + 44)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v26 = *(v3 + 28);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v5[v26], v27, v28);
  __asm { FMOV            V0.2D, #14.0 }

  *v5 = _Q0;
  v69 = objc_opt_self();
  v34 = [v69 tertiarySystemBackgroundColor];
  v35 = Color.init(_:)();
  type metadata accessor for WorkloadListItemStack();
  WorkoutEffort.itemHasEffort.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100299F3C(v5, v8, &type metadata accessor for RoundedRectangle);
  v36 = &v8[*(sub_100140278(&qword_1008E5A48) + 36)];
  v37 = v76;
  *v36 = v75;
  *(v36 + 1) = v37;
  *(v36 + 4) = v77;
  v38 = sub_100140278(&qword_1008E5A50);
  *&v8[*(v38 + 52)] = v35;
  *&v8[*(v38 + 56)] = 256;
  v39 = static Alignment.center.getter();
  v41 = v40;
  sub_100299EDC(v5, &type metadata accessor for RoundedRectangle);
  v42 = &v8[*(sub_100140278(&qword_1008E5A58) + 36)];
  *v42 = v39;
  v42[1] = v41;
  v43 = static Alignment.center.getter();
  v45 = v44;
  v46 = *(v14 + 44);
  v47 = v70;
  v48 = v71;
  v49 = &v71[v46];
  sub_100015E80(v8, &v71[v46], &qword_1008E5A20);
  v50 = &v49[*(sub_100140278(&qword_1008E5A60) + 36)];
  *v50 = v43;
  v50[1] = v45;
  sub_100015E80(v12, v48, &qword_1008E5A28);
  WorkoutEffort.itemHasEffort.getter();
  LOBYTE(v43) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_100015E80(v48, v47, &qword_1008E5A30);
  v59 = v47 + *(v17 + 44);
  *v59 = v43;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54;
  *(v59 + 24) = v56;
  *(v59 + 32) = v58;
  *(v59 + 40) = 0;
  if (WorkoutEffort.itemHasEffort.getter())
  {
    v60 = [v69 secondarySystemBackgroundColor];
    v61 = Color.init(_:)();
  }

  else
  {
    v61 = static Color.clear.getter();
  }

  v62 = v61;
  v63 = static Edge.Set.all.getter();
  v64 = v72;
  sub_100015E80(v47, v72, &qword_1008E5A38);
  v65 = v64 + *(v73 + 36);
  *v65 = v62;
  *(v65 + 8) = v63;
  v66 = v74;
  sub_100015E80(v64, v74, &qword_1008E5A40);
  result = sub_100140278(&qword_1008E5A68);
  *(v66 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1002971EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = sub_100140278(&qword_1008E5A70);
  __chkstk_darwin(v53);
  v4 = v44 - v3;
  v50 = sub_100140278(&qword_1008E5A78);
  __chkstk_darwin(v50);
  v52 = v44 - v5;
  v46 = sub_100140278(&qword_1008E5A80);
  __chkstk_darwin(v46);
  v7 = (v44 - v6);
  v51 = sub_100140278(&qword_1008E5A88);
  __chkstk_darwin(v51);
  v47 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = v44 - v10;
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v44 - v16;
  v18 = *(type metadata accessor for WorkloadListItemStack() + 44);
  v49 = a1;
  v44[1] = v18;
  sub_10005491C(v17);
  v45 = *(v12 + 104);
  v45(v14, enum case for DynamicTypeSize.accessibility1(_:), v11);
  sub_10005BDD4(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v19 = dispatch thunk of static Comparable.< infix(_:_:)();
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  if (v19)
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0x4020000000000000;
    v4[16] = 0;
    v21 = sub_100140278(&qword_1008E5AC0);
    sub_100298978(v49, &v4[*(v21 + 44)]);
    sub_10001B104(v4, v52, &qword_1008E5A70);
    swift_storeEnumTagMultiPayload();
    sub_10029A30C(&qword_1008E5A98, &qword_1008E5A88, &unk_1006E3F98, sub_100299E24);
    sub_10014A6B0(&qword_1008E5AB8, &qword_1008E5A70);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v4, &qword_1008E5A70);
  }

  else
  {
    v23 = v49;
    v24 = sub_100296A48();
    *v7 = static HorizontalAlignment.center.getter();
    v7[1] = v24;
    *(v7 + 16) = 0;
    v25 = sub_100140278(&qword_1008E5A90);
    sub_100297844(v23, v7 + *(v25 + 44));
    v26 = static Edge.Set.top.getter();
    sub_100296A48();
    EdgeInsets.init(_all:)();
    v27 = v7 + *(v46 + 36);
    *v27 = v26;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    v32 = static Edge.Set.bottom.getter();
    sub_10005491C(v17);
    v45(v14, enum case for DynamicTypeSize.xLarge(_:), v11);
    dispatch thunk of static Comparable.< infix(_:_:)();
    v20(v14, v11);
    v20(v17, v11);
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = v47;
    sub_100015E80(v7, v47, &qword_1008E5A80);
    v42 = v41 + *(v51 + 36);
    *v42 = v32;
    *(v42 + 8) = v34;
    *(v42 + 16) = v36;
    *(v42 + 24) = v38;
    *(v42 + 32) = v40;
    *(v42 + 40) = 0;
    v43 = v48;
    sub_100015E80(v41, v48, &qword_1008E5A88);
    sub_10001B104(v43, v52, &qword_1008E5A88);
    swift_storeEnumTagMultiPayload();
    sub_10029A30C(&qword_1008E5A98, &qword_1008E5A88, &unk_1006E3F98, sub_100299E24);
    sub_10014A6B0(&qword_1008E5AB8, &qword_1008E5A70);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v43, &qword_1008E5A88);
  }
}

uint64_t sub_100297844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E5B60);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_100140278(&qword_1008E5B68);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_100140278(&qword_1008E5B70);
  sub_100297A88(&v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = sub_100140278(&qword_1008E5B78);
  sub_100297FD0(a1, &v9[*(v17 + 44)]);
  sub_10001B104(v15, v12, &qword_1008E5B68);
  sub_10001B104(v9, v6, &qword_1008E5B60);
  sub_10001B104(v12, a2, &qword_1008E5B68);
  v18 = sub_100140278(&qword_1008E5B80);
  sub_10001B104(v6, a2 + *(v18 + 48), &qword_1008E5B60);
  sub_10000EA04(v9, &qword_1008E5B60);
  sub_10000EA04(v15, &qword_1008E5B68);
  sub_10000EA04(v6, &qword_1008E5B60);
  return sub_10000EA04(v12, &qword_1008E5B68);
}

uint64_t sub_100297A88@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_100140278(&qword_1008DF280);
  __chkstk_darwin(v1 - 8);
  v57 = &v55 - v2;
  v61 = type metadata accessor for EffortMiniGraph();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100140278(&qword_1008E5AD8);
  __chkstk_darwin(v55);
  v6 = &v55 - v5;
  v56 = sub_100140278(&qword_1008E5AE0);
  __chkstk_darwin(v56);
  v8 = &v55 - v7;
  v58 = sub_100140278(&qword_1008E5AE8);
  __chkstk_darwin(v58);
  v10 = &v55 - v9;
  v60 = sub_100140278(&qword_1008E5AF0);
  __chkstk_darwin(v60);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  type metadata accessor for WorkloadListItemStack();
  if ((WorkoutEffort.allSubWorkoutsHaveEffort.getter() & 1) != 0 && (WorkoutEffort.allSubWorkoutsAreSkipped.getter() & 1) == 0)
  {
    WorkoutEffort.highestSubWorkoutEffort.getter();
  }

  else
  {
    v19 = type metadata accessor for AppleExertionScale();
    (*(*(v19 - 8) + 56))(v57, 1, 1, v19);
  }

  EffortMiniGraph.init(effort:)();
  v20 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v59 + 32))(v6, v4, v61);
  v29 = &v6[*(v55 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100015E80(v6, v8, &qword_1008E5AD8);
  v39 = &v8[*(v56 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100015E80(v8, v10, &qword_1008E5AE0);
  v40 = &v10[*(v58 + 36)];
  v41 = v64;
  *v40 = v63;
  *(v40 + 1) = v41;
  *(v40 + 2) = v65;
  v42 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_100015E80(v10, v15, &qword_1008E5AE8);
  v51 = &v15[*(v60 + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_100015E80(v15, v18, &qword_1008E5AF0);
  sub_10001B104(v18, v12, &qword_1008E5AF0);
  v52 = v62;
  sub_10001B104(v12, v62, &qword_1008E5AF0);
  v53 = v52 + *(sub_100140278(&qword_1008E5BD0) + 48);
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_10000EA04(v18, &qword_1008E5AF0);
  return sub_10000EA04(v12, &qword_1008E5AF0);
}

uint64_t sub_100297FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v3 - 8);
  v67 = &v64 - v4;
  v5 = sub_100140278(&qword_1008E5B88);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - v6;
  v8 = sub_100140278(&qword_1008E5B90);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WorkloadListItemStack();
  v22 = *(v18 + 16);
  v23 = a1 + *(v21 + 20);
  v66 = v17;
  v65 = v22;
  v22(v20, v23, v17);
  v24 = Text.init(_:)();
  v72 = v25;
  v73 = v24;
  v69 = v26;
  v74 = v27;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v28 = sub_100140278(&qword_1008E5B98);
  sub_100298610(a1, &v7[*(v28 + 44)]);
  static Alignment.center.getter();
  v29 = v21;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v7, v13, &qword_1008E5B88);
  v30 = &v13[*(v9 + 44)];
  v31 = v81;
  *(v30 + 4) = v80;
  *(v30 + 5) = v31;
  *(v30 + 6) = v82;
  v32 = v77;
  *v30 = v76;
  *(v30 + 1) = v32;
  v33 = v79;
  *(v30 + 2) = v78;
  *(v30 + 3) = v33;
  v75 = v16;
  sub_100015E80(v13, v16, &qword_1008E5B90);
  v71 = a1;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (WorkoutEffort.itemHasEffort.getter())
  {
    v65(v20, v71 + *(v21 + 28), v66);
    v38 = Text.init(_:)();
    v40 = v39;
    v42 = v41;
    v43 = enum case for Font.Design.rounded(_:);
    v44 = type metadata accessor for Font.Design();
    v45 = *(v44 - 8);
    v46 = *(v45 + 104);
    v66 = v29;
    v47 = v67;
    v46(v67, v43, v44);
    (*(v45 + 56))(v47, 0, 1, v44);
    v34 = Text.fontDesign(_:)();
    v35 = v48;
    LOBYTE(v45) = v49;
    v37 = v50;
    sub_10004642C(v38, v40, v42 & 1);

    v51 = v47;
    v29 = v66;
    sub_10000EA04(v51, &qword_1008DC448);
    v36 = v45 & 1;
    sub_10006965C(v34, v35, v45 & 1);
  }

  v52 = v70;
  v53 = (v71 + *(v29 + 32));
  v54 = v53[1];
  v71 = *v53;
  sub_10001B104(v75, v70, &qword_1008E5B90);
  v55 = v72;
  v56 = v73;
  v57 = v68;
  *v68 = v73;
  v57[1] = v55;
  v69 &= 1u;
  *(v57 + 16) = v69;
  v57[3] = v74;
  v58 = sub_100140278(&qword_1008E5BA0);
  sub_10001B104(v52, v57 + v58[12], &qword_1008E5B90);
  v59 = (v57 + v58[16]);
  *v59 = v34;
  v59[1] = v35;
  v59[2] = v36;
  v59[3] = v37;
  v60 = v57 + v58[20];
  *v60 = 0;
  v60[8] = 1;
  v61 = (v57 + v58[24]);

  v62 = v55;
  LOBYTE(v55) = v69;
  sub_10006965C(v56, v62, v69);

  sub_1001E53F8(v34, v35, v36, v37);

  sub_1001E543C(v34, v35, v36, v37);
  *v61 = v71;
  v61[1] = v54;
  sub_10000EA04(v75, &qword_1008E5B90);

  sub_1001E543C(v34, v35, v36, v37);
  sub_10000EA04(v52, &qword_1008E5B90);
  sub_10004642C(v73, v72, v55);
}

uint64_t sub_100298610@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v3 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100140278(&qword_1008E5BA8);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_100140278(&qword_1008E5BB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = *(type metadata accessor for WorkloadListItemStack() + 40);
  v17 = type metadata accessor for WorkoutEffort();
  (*(*(v17 - 8) + 16))(v8, a1 + v16, v17);
  static Font.body.getter();
  static Font.Weight.medium.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v20 = &v8[*(v6 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = enum case for Font.Design.rounded(_:);
  v22 = type metadata accessor for Font.Design();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v5, v21, v22);
  (*(v23 + 56))(v5, 0, 1, v22);
  sub_10029A088();
  View.fontDesign(_:)();
  sub_10000EA04(v5, &qword_1008DC448);
  sub_10000EA04(v8, &qword_1008E5BA8);
  v24 = *(v10 + 16);
  v24(v12, v15, v9);
  v25 = v30;
  v24(v30, v12, v9);
  v26 = &v25[*(sub_100140278(&qword_1008E5BC8) + 48)];
  *v26 = 0;
  v26[8] = 1;
  v27 = *(v10 + 8);
  v27(v15, v9);
  return (v27)(v12, v9);
}

uint64_t sub_100298978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v112 = *(v3 - 8);
  v113 = v3;
  __chkstk_darwin(v3);
  v110 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v109 = &v97 - v6;
  v106 = sub_100140278(&qword_1008E5AC8);
  __chkstk_darwin(v106);
  v103 = (&v97 - v7);
  v108 = sub_100140278(&qword_1008E5AD0);
  __chkstk_darwin(v108);
  v114 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v97 - v10;
  __chkstk_darwin(v11);
  v111 = &v97 - v12;
  v13 = sub_100140278(&qword_1008DF280);
  __chkstk_darwin(v13 - 8);
  v15 = &v97 - v14;
  v101 = type metadata accessor for EffortMiniGraph();
  v16 = *(v101 - 8);
  __chkstk_darwin(v101);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100140278(&qword_1008E5AD8);
  __chkstk_darwin(v97);
  v20 = &v97 - v19;
  v98 = sub_100140278(&qword_1008E5AE0);
  __chkstk_darwin(v98);
  v22 = &v97 - v21;
  v99 = sub_100140278(&qword_1008E5AE8);
  __chkstk_darwin(v99);
  v24 = &v97 - v23;
  v100 = sub_100140278(&qword_1008E5AF0);
  __chkstk_darwin(v100);
  v105 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v97 - v27;
  __chkstk_darwin(v29);
  v104 = &v97 - v30;
  v102 = type metadata accessor for WorkloadListItemStack();
  if ((WorkoutEffort.allSubWorkoutsHaveEffort.getter() & 1) != 0 && (WorkoutEffort.allSubWorkoutsAreSkipped.getter() & 1) == 0)
  {
    WorkoutEffort.highestSubWorkoutEffort.getter();
  }

  else
  {
    v31 = type metadata accessor for AppleExertionScale();
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
  }

  v32 = a1;
  EffortMiniGraph.init(effort:)();
  v33 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v16 + 32))(v20, v18, v101);
  v42 = &v20[*(v97 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_100015E80(v20, v22, &qword_1008E5AD8);
  v52 = &v22[*(v98 + 36)];
  *v52 = v43;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100015E80(v22, v24, &qword_1008E5AE0);
  v53 = &v24[*(v99 + 36)];
  v54 = v117;
  *v53 = v116;
  *(v53 + 1) = v54;
  *(v53 + 2) = v118;
  v55 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_100015E80(v24, v28, &qword_1008E5AE8);
  v64 = &v28[*(v100 + 36)];
  *v64 = v55;
  *(v64 + 1) = v57;
  *(v64 + 2) = v59;
  *(v64 + 3) = v61;
  *(v64 + 4) = v63;
  v64[40] = 0;
  v65 = v104;
  sub_100015E80(v28, v104, &qword_1008E5AF0);
  v66 = static HorizontalAlignment.leading.getter();
  v67 = v103;
  *v103 = v66;
  *(v67 + 8) = 0;
  *(v67 + 16) = 0;
  v68 = sub_100140278(&qword_1008E5AF8);
  sub_1002992B4(v32, (v67 + *(v68 + 44)));
  v69 = static Edge.Set.top.getter();
  sub_100296A48();
  EdgeInsets.init(_all:)();
  v70 = v67 + *(v106 + 36);
  *v70 = v69;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  v75 = static Edge.Set.bottom.getter();
  v76 = v109;
  sub_10005491C(v109);
  v78 = v112;
  v77 = v113;
  v79 = v110;
  (*(v112 + 104))(v110, enum case for DynamicTypeSize.xLarge(_:), v113);
  sub_10005BDD4(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v80 = *(v78 + 8);
  v80(v79, v77);
  v80(v76, v77);
  EdgeInsets.init(_all:)();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = v107;
  sub_100015E80(v67, v107, &qword_1008E5AC8);
  v90 = v89 + *(v108 + 36);
  *v90 = v75;
  *(v90 + 8) = v82;
  *(v90 + 16) = v84;
  *(v90 + 24) = v86;
  *(v90 + 32) = v88;
  *(v90 + 40) = 0;
  v91 = v111;
  sub_100015E80(v89, v111, &qword_1008E5AD0);
  v92 = v105;
  sub_10001B104(v65, v105, &qword_1008E5AF0);
  v93 = v114;
  sub_10001B104(v91, v114, &qword_1008E5AD0);
  v94 = v115;
  sub_10001B104(v92, v115, &qword_1008E5AF0);
  v95 = sub_100140278(&qword_1008E5B00);
  sub_10001B104(v93, v94 + *(v95 + 48), &qword_1008E5AD0);
  sub_10000EA04(v91, &qword_1008E5AD0);
  sub_10000EA04(v65, &qword_1008E5AF0);
  sub_10000EA04(v93, &qword_1008E5AD0);
  return sub_10000EA04(v92, &qword_1008E5AF0);
}