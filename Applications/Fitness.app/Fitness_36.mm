uint64_t sub_10043E120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10043E180(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043E1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10043E258(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED748);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043E2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10043E3B0(uint64_t a1, int a2, int a3, void *a4, int a5)
{
  LODWORD(v120) = a5;
  v119 = a4;
  v104 = a3;
  v105 = a2;
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchTime();
  v94 = *(v106 - 8);
  __chkstk_darwin(v106);
  v92 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v93 = &v92 - v10;
  static os_log_type_t.default.getter();
  v11 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D64F0;
  *(v12 + 56) = &type metadata for String;
  v13 = sub_10000A788();
  *(v12 + 64) = v13;
  *(v12 + 32) = 0xD000000000000050;
  *(v12 + 40) = 0x8000000100750DD0;
  type metadata accessor for Date();
  sub_10043F28C(&qword_1008DC148, &type metadata accessor for Date);
  v14 = v11;
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v13;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  LOWORD(aBlock[0]) = 0;
  v17 = String.init<A>(describing:)();
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v13;
  *(v12 + 112) = v17;
  *(v12 + 120) = v18;
  os_log(_:dso:log:_:_:)();

  v19 = *(v5 + 16);
  v20 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDateCache;
  v21 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDateCache);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v103 = v5;
  sub_1002477A8(isa, v5);

  v23 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider);
  v24 = *(v19 + v20);
  v25 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v26 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionDataProvider);
  v27 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v28 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v118 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v29 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v30 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v116 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider);
  v114 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v112 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v111 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v121 = *(v19 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v123 = type metadata accessor for AAUIAwardsDataProvider();
  v124 = &protocol witness table for AAUIAwardsDataProvider;
  aBlock[0] = v29;
  v101 = type metadata accessor for HistoryPagingViewController();
  v31 = objc_allocWithZone(v101);
  swift_unknownObjectWeakInit();
  v32 = v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_deviceDateListener;
  *v32 = 0u;
  v32[1] = 0u;
  v33 = v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_selectedDateListener;
  *v33 = 0u;
  v33[1] = 0u;
  v110 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_flightsClimbedEnabled;
  v34 = objc_opt_self();
  v102 = v29;
  v35 = v23;
  v107 = v35;
  v36 = v24;
  v108 = v36;
  v37 = v25;
  v109 = v37;
  v38 = v26;
  v117 = v27;
  v115 = v28;
  v113 = v118;
  v118 = v30;
  v116 = v116;
  v114 = v114;
  v112 = v112;
  v111 = v111;
  v121 = v121;
  v39 = [v34 standardUserDefaults];
  v40 = String._bridgeToObjectiveC()();
  LOBYTE(v26) = [v39 BOOLForKey:v40];

  v110[v31] = v26;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationComplete) = 0;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_notificationGoalChangeComplete) = 0;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_initialLoad) = 1;
  v41 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController;
  *(v31 + v41) = [objc_allocWithZone(FIUIPageViewController) init];
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages) = 0;
  sub_100284730(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_jan1_2014);
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider) = v35;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDateCache) = v36;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsCoordinator) = v37;
  v42 = v38;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionDataProvider) = v38;
  v43 = v117;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_badgeImageFactory) = v117;
  v44 = v115;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_friendListManager) = v115;
  v45 = v113;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementResourceProvider) = v113;
  sub_100007C5C(aBlock, v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_awardsDataProvider);
  v46 = v118;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutFormattingManager) = v118;
  v47 = v116;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutDataProvider) = v116;
  v48 = v114;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionFormattingManager) = v114;
  v49 = v112;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fiuiFormattingManager) = v112;
  v50 = v111;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementLocalizationProvider) = v111;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fitnessAppContext) = v121;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationContext) = 0;
  v51 = v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_goalRecommendation;
  *v51 = v119;
  v51[8] = v120 & 1;
  *(v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsEditing) = 0;
  v120 = objc_opt_self();
  v107 = v107;
  v119 = v108;
  v110 = v109;
  v109 = v42;
  v117 = v43;
  v115 = v44;
  v113 = v45;
  v118 = v46;
  v116 = v47;
  v114 = v48;
  v112 = v49;
  v111 = v50;
  v121 = v121;
  result = [v120 sharedBehavior];
  if (result)
  {
    v53 = result;
    v54 = [result isStandalonePhoneFitnessMode];

    v55 = type metadata accessor for AppStoreQuery();
    swift_allocObject();
    v56 = sub_10020F478();
    v57 = (v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_appStoreQuery);
    v57[3] = v55;
    v57[4] = &off_10084CB18;
    *v57 = v56;
    v58 = v107;
    v59 = *&v107[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider];
    v60 = v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_recentWorkoutAppQuery;
    v60[3] = &type metadata for RecentWorkoutAppQuery;
    v60[4] = &off_1008624B8;
    *v60 = v59;
    sub_100007C5C(v57, v129);
    sub_100007C5C(v60, v127);
    v61 = sub_1001DF03C(v129, v130);
    v62 = __chkstk_darwin(v61);
    v64 = (&v92 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64, v62);
    v66 = sub_1001DF03C(v127, v128);
    v67 = __chkstk_darwin(v66);
    v69 = (&v92 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69, v67);
    v71 = *v64;
    v72 = *v69;
    v73 = v59;
    v74 = sub_10039D868(v71, v72, &off_100845C50, v54 ^ 1);
    sub_100005A40(v127);
    sub_100005A40(v129);
    v75 = (v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_appRecommendationDataProvider);
    v75[3] = type metadata accessor for AppRecommendationDataProvider();
    v75[4] = &off_10085F1A0;
    *v75 = v74;
    v76 = type metadata accessor for SeymourWorkoutRecommendationDataProvider();
    swift_allocObject();
    v77 = v121;
    v78 = sub_10016DF3C(v77);
    v79 = v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_seymourWorkoutRecommendationDataProvider;
    v79[3] = v76;
    v79[4] = &off_100848248;
    *v79 = v78;
    v80 = v31 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_walkSuggestionDataProvider;
    *(v80 + 3) = &type metadata for WalkSuggestionDataProvider;
    *(v80 + 4) = &off_1008624A8;
    v126.receiver = v31;
    v126.super_class = v101;
    v81 = objc_msgSendSuper2(&v126, "initWithNibName:bundle:", 0, 0);
    sub_1002831F8();

    sub_100005A40(aBlock);
    v82 = [*(v103 + 24) navigationController];
    [v82 pushViewController:v81 animated:v104 & 1];

    if (v105)
    {
      sub_1000059F8(0, &qword_1008E3FD0);
      v83 = static OS_dispatch_queue.main.getter();
      v84 = v92;
      static DispatchTime.now()();
      v85 = v93;
      + infix(_:_:)();
      v121 = *(v94 + 8);
      (v121)(v84, v106);
      v86 = swift_allocObject();
      *(v86 + 16) = v81;
      v124 = sub_100282A90;
      v125 = v86;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      v123 = &unk_10085A9F0;
      v87 = _Block_copy(aBlock);
      v88 = v81;

      v89 = v95;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10043F28C(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_10002621C();
      v90 = v97;
      v91 = v100;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v87);

      (*(v99 + 8))(v90, v91);
      (*(v96 + 8))(v89, v98);
      (v121)(v85, v106);
    }

    return v81;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10043F28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10043F2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v93 = a2;
  v4 = sub_100140278(&unk_1008EAF20);
  __chkstk_darwin(v4 - 8);
  v89 = &v74 - v5;
  v6 = type metadata accessor for Artwork();
  v87 = *(v6 - 8);
  v88 = v6;
  __chkstk_darwin(v6);
  v86 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StandardArtworkDescriptor();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v83 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v74 - v11;
  v12 = type metadata accessor for ArtworkDescriptor();
  __chkstk_darwin(v12 - 8);
  v79 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v74 - v15;
  v16 = sub_100140278(&qword_1008ED758);
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - v17;
  v19 = type metadata accessor for ShelfLockupAttributedTagStrings();
  v81 = *(v19 - 8);
  v82 = v19;
  __chkstk_darwin(v19);
  v91 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Logger();
  v76 = *(v77 - 1);
  __chkstk_darwin(v77);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v23 - 8);
  v25 = &v74 - v24;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v90 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100140278(&qword_1008EC4E8);
  __chkstk_darwin(v29 - 8);
  v31 = &v74 - v30;
  v32 = type metadata accessor for CatalogLockup();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043FCD8(a1, v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_10000EA04(a1, &qword_1008EC4E8);

    sub_10000EA04(v31, &qword_1008EC4E8);
LABEL_7:
    v39 = type metadata accessor for CatalogTipSectionItem();
    return (*(*(v39 - 8) + 56))(v92, 1, 1, v39);
  }

  v75 = a1;
  (*(v33 + 32))(v35, v31, v32);
  CatalogLockup.streamingURL.getter();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_10000EA04(v25, &unk_1008EB5B0);
    static Log.default.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "[CatalogTipSectionItem] Streaming url not found for tip lockup", v38, 2u);
    }

    sub_10000EA04(v75, &qword_1008EC4E8);
    (*(v76 + 8))(v22, v77);
    (*(v33 + 8))(v35, v32);
    goto LABEL_7;
  }

  v41 = *(v27 + 32);
  v76 = v27 + 32;
  v77 = v41;
  v74 = v26;
  v41(v90, v25, v26);
  sub_100140278(&qword_1008F5530);
  Dependencies.resolve<A>(failureHandler:)();
  sub_1000066AC(v94, v94[3]);
  v42 = type metadata accessor for AudioLanguagePreference();
  (*(*(v42 - 8) + 56))(v18, 1, 1, v42);
  MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)();
  sub_10000EA04(v18, &qword_1008ED758);
  v43 = v78;
  CatalogLockup.artworkDescriptor.getter();
  v44 = v80;
  ArtworkDescriptor.standardArtworkDescriptor.getter();
  sub_1003A7230(v43);
  v45 = v86;
  StandardArtworkDescriptor.artwork.getter();
  v46 = *(v84 + 8);
  v47 = v44;
  v48 = v85;
  v46(v47, v85);
  v49 = v79;
  CatalogLockup.artworkDescriptor.getter();
  v50 = v83;
  ArtworkDescriptor.standardArtworkDescriptor.getter();
  sub_1003A7230(v49);
  v51 = StandardArtworkDescriptor.cropCode.getter();
  v84 = v52;
  v46(v50, v48);
  v85 = CatalogLockup.identifier.getter();
  v83 = v53;
  v54 = v89;
  CatalogLockup.streamingArtwork.getter();
  v55 = CatalogLockup.streamingArtworkCropCode.getter();
  v79 = v56;
  v80 = v55;
  v57 = CatalogLockup.streamingSubtitle.getter();
  v59 = v58;
  v60 = CatalogLockup.streamingTitle.getter();
  v62 = v61;

  sub_10000EA04(v75, &qword_1008EC4E8);
  (*(v33 + 8))(v35, v32);
  v63 = v92;
  (*(v81 + 32))(v92, v91, v82);
  v64 = type metadata accessor for CatalogTipSectionItem();
  (*(v87 + 32))(v63 + v64[5], v45, v88);
  v65 = (v63 + v64[6]);
  v66 = v84;
  v67 = v85;
  *v65 = v51;
  v65[1] = v66;
  v68 = (v63 + v64[7]);
  v69 = v83;
  *v68 = v67;
  v68[1] = v69;
  sub_10043FD48(v54, v63 + v64[8]);
  v70 = (v63 + v64[9]);
  v71 = v79;
  *v70 = v80;
  v70[1] = v71;
  v72 = (v63 + v64[10]);
  *v72 = v57;
  v72[1] = v59;
  v73 = (v63 + v64[11]);
  *v73 = v60;
  v73[1] = v62;
  v77(v63 + v64[12], v90, v74);
  sub_100005A40(v94);
  return (*(*(v64 - 1) + 56))(v63, 0, 1, v64);
}

uint64_t sub_10043FCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EC4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043FD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008EAF20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10043FDB8()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  result = [v0 setScrollDirection:1];
  qword_1008ED760 = v0;
  return result;
}

char *sub_10043FF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkCollectionView;
  if (qword_1008DABB0 != -1)
  {
    swift_once();
  }

  v7 = [objc_allocWithZone(UICollectionView) initWithFrame:qword_1008ED760 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_workout] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_fitnessAppContext] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkItems] = _swiftEmptyArrayStorage;
  v8 = &v3[OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem];
  *v8 = 0;
  *(v8 + 1) = 0;
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v24.receiver = v3;
  v24.super_class = type metadata accessor for WorkoutDetailGuidedRunMediaMomentsTableViewCell();
  v10 = objc_msgSendSuper2(&v24, "initWithStyle:reuseIdentifier:", a1, v9);

  v11 = v10;
  v12 = [v11 contentView];
  v13 = OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkCollectionView;
  [v12 addSubview:*&v11[OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkCollectionView]];

  [*&v11[v13] setDataSource:v11];
  v14 = *&v11[v13];
  [v14 setDelegate:v11];

  v15 = *&v11[v13];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 secondarySystemGroupedBackgroundColor];
  [v17 setBackgroundColor:v18];

  v19 = *&v11[v13];
  type metadata accessor for WorkoutDetailGuidedRunMediaMomentArtworkCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = v19;
  v22 = String._bridgeToObjectiveC()();
  [v21 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];

  sub_10044024C();
  return v11;
}

void sub_10044024C()
{
  v1 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D9810;
  v3 = *&v0[OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkCollectionView];
  v4 = [v3 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:sub_1000B7B88()];
  *(v2 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:sub_1000B7B88()];
  *(v2 + 40) = v11;
  v12 = [v3 trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-sub_1000B7B88()];
  *(v2 + 48) = v15;
  v16 = [v3 heightAnchor];
  v17 = [v16 constraintEqualToConstant:164.0];

  *(v2 + 56) = v17;
  v18 = [v3 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:-sub_1000B7B88()];
  *(v2 + 64) = v21;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

uint64_t sub_100440570(void *a1, void *a2)
{
  v5 = type metadata accessor for SeymourArtworkSizingBehavior();
  __chkstk_darwin(v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_workout);
  *(v2 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_workout) = a1;
  v9 = a1;

  v10 = *(v2 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_fitnessAppContext);
  *(v2 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_fitnessAppContext) = a2;
  v11 = a2;

  v12 = *&v11[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
  *v7 = vdupq_n_s64(0x4064800000000000uLL);
  swift_storeEnumTagMultiPayload();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v9;
  sub_100429960(v14, v7, v12, v14, v13);

  sub_100441534(v7);
}

uint64_t sub_1004406B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000059F8(0, &qword_1008E3FD0);

    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a1;
    aBlock[4] = sub_100441590;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10085AA68;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100441598(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    static os_log_type_t.error.getter();
    v18 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1006D1F70;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10000A788();
    *(v19 + 32) = 0xD000000000000025;
    *(v19 + 40) = 0x800000010075CE10;
    *(v19 + 96) = sub_1000059F8(0, &qword_1008ED7C0);
    *(v19 + 104) = sub_1001ED4D4();
    *(v19 + 72) = a2;
    v20 = v18;
    v21 = a2;
    os_log(_:dso:log:_:_:)();
  }
}

void sub_100440A94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkItems) = a2;
    v4 = Strong;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkCollectionView);

    [v7 reloadData];
  }
}

id sub_100440C04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailGuidedRunMediaMomentsTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100440D0C(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  result = IndexPath.row.getter();
  v7 = *(v1 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkItems);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *(v7 + 8 * result + 32);
LABEL_5:
  type metadata accessor for WorkoutDetailGuidedRunMediaMomentArtworkCell();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC10FitnessApp44WorkoutDetailGuidedRunMediaMomentArtworkCell_imageView);
    v11 = v5;
    [v10 setImage:v8];
  }

  return v5;
}

void sub_100441134()
{
  v1 = OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkCollectionView;
  if (qword_1008DABB0 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UICollectionView) initWithFrame:qword_1008ED760 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_workout) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_fitnessAppContext) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkItems) = _swiftEmptyArrayStorage;
  v3 = (v0 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100441254()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_workout;
  v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_workout);
  if (v3 && (v4 = *(v0 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_fitnessAppContext)) != 0)
  {
    v5 = v3;
    v6 = v4;
    v7 = IndexPath.row.getter();
    objc_allocWithZone(type metadata accessor for WorkoutDetailGuidedRunMMGalleryViewController());
    v22 = v5;
    v8 = v6;
    v9 = sub_1005C5350(v22, v8, v7);
    v10 = *(v1 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem);
    if (v10)
    {
      v21 = v9;

      v10(v21);

      sub_1000245E0(v10);
      v11 = v21;
    }

    else
    {

      v11 = v22;
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006D64F0;
    *(v13 + 56) = &type metadata for String;
    v14 = sub_10000A788();
    v15 = v14;
    *(v13 + 64) = v14;
    *(v13 + 32) = 0xD000000000000022;
    *(v13 + 40) = 0x800000010075DB10;
    v16 = *(v0 + v2);
    if (v16)
    {
      v24 = sub_1000059F8(0, &qword_1008ED7C0);
      v25 = sub_1001ED4D4();
      *&v23 = v16;
      sub_100006260(&v23, v13 + 72);
    }

    else
    {
      *(v13 + 96) = &type metadata for String;
      *(v13 + 104) = v14;
      *(v13 + 72) = 0x6F6B726F77206F6ELL;
      *(v13 + 80) = 0xEA00000000007475;
    }

    v17 = *(v0 + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_fitnessAppContext);
    if (v17)
    {
      v24 = type metadata accessor for FitnessAppContext();
      v25 = sub_100441598(&qword_1008ED7B8, type metadata accessor for FitnessAppContext);
      *&v23 = v17;
      sub_100006260(&v23, v13 + 112);
    }

    else
    {
      *(v13 + 136) = &type metadata for String;
      *(v13 + 144) = v15;
      *(v13 + 112) = 0xD000000000000016;
      *(v13 + 120) = 0x800000010075DB40;
    }

    v18 = v16;
    v19 = v17;
    v20 = v12;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100441534(uint64_t a1)
{
  v2 = type metadata accessor for SeymourArtworkSizingBehavior();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100441598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WorkoutChartView()
{
  result = qword_1008ED820;
  if (!qword_1008ED820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044165C()
{
  type metadata accessor for WorkoutChartViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1003EEA78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10044172C()
{
  v0 = objc_opt_self();
  v1 = UIFontSystemFontDesignRounded;
  v2 = UIFontTextStyleBody;
  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v2 design:v3 variant:256];

  if (v4)
  {
    v5 = objc_opt_self();
    v6 = UIContentSizeCategoryLarge;
    v7 = [v5 traitCollectionWithPreferredContentSizeCategory:v6];

    v8 = [v4 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v7];
    if (v8)
    {
      qword_100925990 = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100441868(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 _preferredFontForTextStyle:v6 variant:256];

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = UIContentSizeCategoryLarge;
    v10 = [v8 traitCollectionWithPreferredContentSizeCategory:v9];

    v11 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];
    if (v11)
    {
      *a3 = v11;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100441964()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = objc_opt_self();
  v4 = UIContentSizeCategoryLarge;
  v5 = [v3 traitCollectionWithPreferredContentSizeCategory:v4];

  v6 = [v2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];
  if (v6)
  {
    qword_1009259A8 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100441A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v113 = type metadata accessor for AccessibilityActionKind();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for AccessibilityTraits();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutChartView();
  v6 = *(v5 - 8);
  v117 = (v5 - 8);
  v93 = v6;
  __chkstk_darwin(v5 - 8);
  v127 = v7;
  v122 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TapGesture();
  v96 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100140278(&qword_1008ED868);
  v101 = *(v105 - 8);
  __chkstk_darwin(v105);
  v97 = &v92 - v9;
  v100 = sub_100140278(&qword_1008ED870);
  __chkstk_darwin(v100);
  v94 = &v92 - v10;
  v103 = sub_100140278(&qword_1008ED878);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v98 = &v92 - v11;
  v126 = sub_100140278(&qword_1008ED880);
  v121 = *(v126 - 8);
  __chkstk_darwin(v126);
  v104 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v92 - v14;
  __chkstk_darwin(v15);
  v107 = &v92 - v16;
  v17 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v17 - 8);
  v115 = (&v92 - v18);
  v19 = type metadata accessor for Date();
  v124 = *(v19 - 8);
  v125 = v19;
  __chkstk_darwin(v19);
  v116 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100140278(&qword_1008ED888);
  __chkstk_darwin(v21 - 8);
  v120 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v119 = &v92 - v24;
  v25 = type metadata accessor for DynamicTypeSize();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100140278(&qword_1008ED890);
  __chkstk_darwin(v29);
  v31 = &v92 - v30;
  v114 = sub_100140278(&qword_1008ED898);
  __chkstk_darwin(v114);
  v33 = &v92 - v32;
  v34 = sub_100140278(&qword_1008ED8A0);
  __chkstk_darwin(v34 - 8);
  v118 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v92 - v37;
  *v31 = static HorizontalAlignment.leading.getter();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v39 = sub_100140278(&qword_1008ED8A8);
  sub_1004429F8(a1, &v31[*(v39 + 44)]);
  (*(v26 + 104))(v28, enum case for DynamicTypeSize.large(_:), v25);
  sub_10014A6B0(&qword_1008ED8B0, &qword_1008ED890);
  View.dynamicTypeSize(_:)();
  (*(v26 + 8))(v28, v25);
  v40 = v115;
  sub_10000EA04(v31, &qword_1008ED890);
  LOBYTE(v31) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v41 = &v33[*(v114 + 36)];
  *v41 = v31;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = *(a1 + *(v117 + 7) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100446760();
  v117 = v38;
  View.accessibilityHidden(_:)();
  v47 = v33;
  v48 = v124;
  sub_10000EA04(v47, &qword_1008ED898);
  v49 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  v50 = v46 + v49;
  v51 = v125;
  sub_10001B104(v50, v40, &unk_1008F73A0);
  if ((*(v48 + 48))(v40, 1, v51) == 1)
  {
    sub_10000EA04(v40, &unk_1008F73A0);
    v52 = 1;
    v53 = v126;
    v54 = v119;
  }

  else
  {
    v55 = v116;
    (*(v48 + 32))(v116, v40, v51);
    v56 = (a1 + *(type metadata accessor for WorkoutChartViewModel(0) + 24));
    v57 = *v56;
    v58 = v56[1];
    if (qword_1008DABB8 != -1)
    {
      swift_once();
    }

    v59 = sub_10031BE28(v55, qword_100925990);
    v60 = v94;
    sub_1004435AC(v57, v58, v59, v94);

    if (qword_1008DA6D0 != -1)
    {
      swift_once();
    }

    v61 = v100;
    v62 = (v60 + *(v100 + 36));
    *v62 = qword_100925328;
    v62[1] = sub_100444098;
    v62[2] = 0;
    v63 = v95;
    TapGesture.init(count:)();
    v115 = type metadata accessor for WorkoutChartView;
    v92 = a1;
    v64 = v122;
    sub_100446FB4(a1, v122, type metadata accessor for WorkoutChartView);
    v114 = *(v93 + 80);
    v65 = (v114 + 16) & ~v114;
    v66 = swift_allocObject();
    sub_10044685C(v64, v66 + v65);
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1004476AC;
    *(v67 + 24) = v66;
    v68 = v97;
    v69 = v99;
    Gesture.onEnded(_:)();

    (*(v96 + 8))(v63, v69);
    static GestureMask.all.getter();
    v70 = sub_1004468C0();
    v71 = sub_10014A6B0(&qword_1008ED960, &qword_1008ED868);
    v72 = v98;
    v73 = v105;
    View.gesture<A>(_:including:)();
    (*(v101 + 8))(v68, v73);
    sub_10000EA04(v60, &qword_1008ED870);
    v74 = v108;
    static AccessibilityTraits.isButton.getter();
    v128 = v61;
    v129 = v73;
    v130 = v70;
    v131 = v71;
    swift_getOpaqueTypeConformance2();
    v75 = v104;
    v76 = v103;
    View.accessibilityAddTraits(_:)();
    (*(v109 + 8))(v74, v110);
    (*(v102 + 8))(v72, v76);
    v77 = v111;
    static AccessibilityActionKind.escape.getter();
    v78 = v92;
    v79 = v122;
    v80 = v115;
    sub_100446FB4(v92, v122, v115);
    v81 = swift_allocObject() + v65;
    sub_10044685C(v79, v81);
    v82 = v106;
    ModifiedContent<>.accessibilityAction(_:_:)();

    (*(v112 + 8))(v77, v113);
    sub_10000EA04(v75, &qword_1008ED880);
    sub_100446FB4(v78, v79, v80);
    v83 = swift_allocObject();
    sub_10044685C(v79, v83 + v65);
    v84 = v107;
    v85 = v126;
    ModifiedContent<>.accessibilityAdjustableAction(_:)();

    sub_10000EA04(v82, &qword_1008ED880);
    (*(v124 + 8))(v116, v125);
    v54 = v119;
    sub_100097A14(v84, v119);
    v52 = 0;
    v53 = v85;
  }

  (*(v121 + 56))(v54, v52, 1, v53);
  v87 = v117;
  v86 = v118;
  sub_10001B104(v117, v118, &qword_1008ED8A0);
  v88 = v120;
  sub_10001B104(v54, v120, &qword_1008ED888);
  v89 = v123;
  sub_10001B104(v86, v123, &qword_1008ED8A0);
  v90 = sub_100140278(&qword_1008ED8C0);
  sub_10001B104(v88, v89 + *(v90 + 48), &qword_1008ED888);
  sub_10000EA04(v54, &qword_1008ED888);
  sub_10000EA04(v87, &qword_1008ED8A0);
  sub_10000EA04(v88, &qword_1008ED888);
  return sub_10000EA04(v86, &qword_1008ED8A0);
}

uint64_t sub_1004429F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = sub_100140278(&qword_1008ED978);
  __chkstk_darwin(v65);
  v64 = &v55 - v3;
  v4 = type metadata accessor for WorkoutChart();
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008ED980);
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v55 = sub_100140278(&qword_1008ED988);
  __chkstk_darwin(v55);
  v12 = &v55 - v11;
  v13 = sub_100140278(&qword_1008ED990);
  v62 = *(v13 - 8);
  v63 = v13;
  __chkstk_darwin(v13);
  v61 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v55 - v16;
  v17 = sub_100140278(&qword_1008ED998);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v59 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  *v22 = static VerticalAlignment.bottom.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = sub_100140278(&qword_1008ED9A0);
  sub_100444498(a1, &v22[*(v23 + 44)]);
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v25 = *(v18 + 44);
  v58 = v22;
  v26 = &v22[v25];
  *v26 = v24;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_100446FB4(a1, v6, type metadata accessor for WorkoutChartViewModel);
  v31 = type metadata accessor for WorkoutChartView();
  v32 = &v6[*(v4 + 20)];
  type metadata accessor for WorkoutChartProperties();
  sub_1004474A0(&unk_1008EC148, type metadata accessor for WorkoutChartProperties);

  *v32 = ObservedObject.init(wrappedValue:)();
  v32[1] = v33;
  v67 = a1;
  v34 = sub_100140278(&qword_1008ED9A8);
  v35 = sub_1004474A0(&qword_1008ED9B0, type metadata accessor for WorkoutChart);
  v36 = sub_10014A6B0(&qword_1008ED9B8, &qword_1008ED9A8);
  View.chartXAxis<A>(content:)();
  sub_100447024(v6);
  *&v68 = v4;
  *(&v68 + 1) = v34;
  *&v69 = v35;
  *(&v69 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v56;
  View.chartYAxis(_:)();
  (*(v57 + 8))(v10, v37);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = &v12[*(sub_100140278(&qword_1008ED9C0) + 36)];
  v39 = v69;
  *v38 = v68;
  *(v38 + 1) = v39;
  *(v38 + 2) = v70;
  *&v12[*(sub_100140278(&qword_1008ED9C8) + 36)] = 0;
  if (qword_1008DA6D0 != -1)
  {
    swift_once();
  }

  v40 = &v12[*(v55 + 36)];
  *v40 = qword_100925328;
  *(v40 + 1) = sub_100228C34;
  *(v40 + 2) = 0;
  if (*(a1 + *(v31 + 24)) == 1)
  {
    v41 = v64;
    sub_10044319C(v64);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v64;
  }

  v43 = sub_100140278(&qword_1008ED9D0);
  (*(*(v43 - 8) + 56))(v41, v42, 1, v43);
  static GestureMask.all.getter();
  sub_100447080();
  sub_100447354();
  v44 = v60;
  View.gesture<A>(_:including:)();
  sub_10000EA04(v41, &qword_1008ED978);
  sub_10000EA04(v12, &qword_1008ED988);
  v45 = v58;
  v46 = v59;
  sub_10001B104(v58, v59, &qword_1008ED998);
  v48 = v61;
  v47 = v62;
  v49 = *(v62 + 16);
  v50 = v63;
  v49(v61, v44, v63);
  v51 = v66;
  sub_10001B104(v46, v66, &qword_1008ED998);
  v52 = sub_100140278(&qword_1008EDA10);
  v49((v51 + *(v52 + 48)), v48, v50);
  v53 = *(v47 + 8);
  v53(v44, v50);
  sub_10000EA04(v45, &qword_1008ED998);
  v53(v48, v50);
  return sub_10000EA04(v46, &qword_1008ED998);
}

uint64_t sub_10044319C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for TapGesture();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  __chkstk_darwin(v3);
  v26 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutChartView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v22[1] = v8;
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DragGesture();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v23 = type metadata accessor for WorkoutChartView;
  sub_100446FB4(v2, v9, type metadata accessor for WorkoutChartView);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10044685C(v9, v16 + v15);
  sub_100140278(&qword_1008ED9D0);
  sub_1004474A0(&qword_1008EDA18, &type metadata accessor for DragGesture);
  sub_1004474A0(&qword_1008EDA20, &type metadata accessor for DragGesture.Value);
  Gesture<>.onChanged(_:)();

  (*(v12 + 8))(v14, v11);
  v17 = v26;
  TapGesture.init(count:)();
  sub_100446FB4(v24, v9, v23);
  v18 = swift_allocObject();
  sub_10044685C(v9, v18 + v15);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1004474E8;
  *(v19 + 24) = v18;
  v20 = v27;
  Gesture.onEnded(_:)();

  return (*(v28 + 8))(v17, v20);
}

uint64_t sub_1004435AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v95 = a1;
  v96 = a2;
  v94 = a4;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v81 = sub_100140278(&qword_1008ED908);
  __chkstk_darwin(v81);
  v8 = &v70[-v7];
  v82 = sub_100140278(&qword_1008ED8F8);
  __chkstk_darwin(v82);
  v83 = &v70[-v9];
  v88 = sub_100140278(&qword_1008ED8E0);
  __chkstk_darwin(v88);
  v84 = &v70[-v10];
  v11 = sub_100140278(&qword_1008ED968);
  v89 = *(v11 - 8);
  v90 = v11;
  __chkstk_darwin(v11);
  v87 = &v70[-v12];
  v86 = sub_100140278(&qword_1008ED8D8);
  __chkstk_darwin(v86);
  v85 = &v70[-v13];
  v14 = sub_100140278(&qword_1008E8AC0);
  __chkstk_darwin(v14 - 8);
  v79 = &v70[-v15];
  v16 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v70[-v17];
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v70[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = v4;
  v24 = *(v4 + *(type metadata accessor for WorkoutChartView() + 20) + 8);
  v25 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  v80 = v24;
  sub_10001B104(v24 + v25, v18, &unk_1008F73A0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000EA04(v18, &unk_1008F73A0);
    v26 = 0;
    v27 = v23;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v28 = v79;
    v27 = v23;
    sub_10031BBF8(v22, v79);
    (*(v20 + 8))(v22, v19);
    v29 = type metadata accessor for WorkoutChartDataElement(0);
    v26 = (*(*(v29 - 8) + 48))(v28, 1, v29) != 1;
    sub_10000EA04(v28, &qword_1008E8AC0);
  }

  v30 = v76;
  sub_100445C44(v76, v113);
  v78 = v115;
  v79 = v114;
  v77 = sub_1000066AC(v113, v114);
  v75 = static HorizontalAlignment.leading.getter();
  LOBYTE(v97) = 1;
  sub_100445F88(v95, v96, v30, &v102);
  v122 = v108;
  v123 = v109;
  v118 = v104;
  v119 = v105;
  v120 = v106;
  v121 = v107;
  v116 = v102;
  v117 = v103;
  v125[5] = v107;
  v125[6] = v108;
  v125[7] = v109;
  v125[8] = v110;
  v125[1] = v103;
  v125[2] = v104;
  v125[3] = v105;
  v125[4] = v106;
  v124 = v110;
  v125[0] = v102;
  sub_10001B104(&v116, v101, &qword_1008ED970);
  sub_10000EA04(v125, &qword_1008ED970);
  *&v111[87] = v121;
  *&v111[103] = v122;
  *&v111[119] = v123;
  *&v111[135] = v124;
  *&v111[23] = v117;
  *&v111[39] = v118;
  *&v111[55] = v119;
  *&v111[71] = v120;
  *&v111[7] = v116;
  LODWORD(v76) = v97;
  v74 = static Edge.Set.all.getter();
  LOBYTE(v101[0]) = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v112[7] = v102;
  *&v112[23] = v103;
  *&v112[39] = v104;
  if (v26)
  {
    v31 = type metadata accessor for WorkoutChartViewModel(0);
    sub_1005D5EA8(*(v27 + *(v31 + 20)));
    v32 = Color.init(_:)();
  }

  else
  {
    v32 = static Color.gray.getter();
  }

  v73 = v32;
  v71 = static Edge.Set.all.getter();
  v72 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v34 = &v8[*(v81 + 36)];
  v35 = type metadata accessor for RoundedRectangle();
  v36 = *(v35 + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  v39 = *(*(v38 - 8) + 104);
  v39(&v34[v36], v37, v38);
  __asm { FMOV            V0.2D, #10.0 }

  v81 = _Q0;
  *v34 = _Q0;
  *&v34[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
  v45 = *&v111[112];
  *(v8 + 113) = *&v111[96];
  *(v8 + 129) = v45;
  *(v8 + 145) = *&v111[128];
  v46 = *&v111[48];
  *(v8 + 49) = *&v111[32];
  *(v8 + 65) = v46;
  v47 = *&v111[80];
  *(v8 + 81) = *&v111[64];
  *(v8 + 97) = v47;
  v48 = *v111;
  *(v8 + 33) = *&v111[16];
  __asm { FMOV            V1.2D, #6.0 }

  *(v8 + 11) = _Q1;
  *(v8 + 12) = xmmword_1006F0FB0;
  *(v8 + 209) = *v112;
  *(v8 + 225) = *&v112[16];
  *(v8 + 241) = *&v112[32];
  *v8 = v75;
  *(v8 + 1) = 0;
  v8[16] = v76;
  *(v8 + 20) = *&v111[143];
  v8[168] = v74;
  *(v8 + 169) = *v100;
  *(v8 + 43) = *&v100[3];
  v8[208] = 0;
  v50 = v73;
  *(v8 + 32) = *&v112[47];
  *(v8 + 33) = v50;
  v8[272] = v71;
  *(v8 + 273) = *v99;
  *(v8 + 69) = *&v99[3];
  v51 = v72;
  *(v8 + 35) = KeyPath;
  *(v8 + 36) = v51;
  v52 = v83;
  v53 = &v83[*(v82 + 36)];
  *(v8 + 17) = v48;
  v54 = sub_100140278(&qword_1008E3A58);
  static ContentShapeKinds.accessibility.getter();
  v39(&v53[*(v35 + 20)], v37, v38);
  *v53 = v81;
  v53[*(v54 + 36)] = 0;
  sub_100015E80(v8, v52, &qword_1008ED908);
  v55 = *(v80 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8);
  v56 = *(v80 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth) + -150.0;
  v57 = COERCE_DOUBLE(sub_1002E4D88()) + -75.0 + -1.0;
  if (v58)
  {
    v57 = -76.0;
  }

  if (v55)
  {
    v59 = -150.0;
  }

  else
  {
    v59 = v56;
  }

  if (v59 < v57)
  {
    v57 = v59;
  }

  if (v57 < 0.0)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v57;
  }

  v61 = v84;
  sub_100015E80(v52, v84, &qword_1008ED8F8);
  v62 = v88;
  v63 = &v61[*(v88 + 36)];
  *v63 = v60;
  *(v63 + 1) = 0;
  v64 = v91;
  static AccessibilityChildBehavior.ignore.getter();
  v65 = sub_100446A44();
  v66 = v87;
  View.accessibilityElement(children:)();
  (*(v92 + 8))(v64, v93);
  sub_10000EA04(v61, &qword_1008ED8E0);
  v101[0] = v95;
  v101[1] = v96;
  v97 = v62;
  v98 = v65;
  swift_getOpaqueTypeConformance2();
  sub_10000FCBC();
  v67 = v85;
  v68 = v90;
  View.accessibilityLabel<A>(_:)();
  (*(v89 + 8))(v66, v68);
  ModifiedContent<>.accessibilityValue<A>(_:)();
  sub_10000EA04(v67, &qword_1008ED8D8);
  return sub_100005A40(v113);
}

double sub_100444098()
{
  static VerticalAlignment.bottom.getter();
  ViewDimensions.subscript.getter();
  return v0 + -2.0;
}

uint64_t sub_1004440C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityAdjustmentDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  *&result = COERCE_DOUBLE(type metadata accessor for WorkoutChartView());
  v16 = *(a2 + *(result + 20) + 8);
  if ((*(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth + 8) & 1) == 0)
  {
    v17 = *(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
    *&result = COERCE_DOUBLE(sub_1002E4D88());
    if ((v18 & 1) == 0)
    {
      v19 = *&result;
      v29 = v5;
      v20 = *(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = a1;
      static Published.subscript.getter();

      Date.addingTimeInterval(_:)();
      v21 = *(v9 + 8);
      v21(v11, v8);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      Date.timeIntervalSince(_:)();
      v23 = v22;
      v21(v11, v8);
      v21(v14, v8);
      v24 = v29;
      v25 = v17 * v20 / v23;
      (*(v29 + 16))(v7, v28, v4);
      v26 = (*(v24 + 88))(v7, v4);
      if (v26 == enum case for AccessibilityAdjustmentDirection.increment(_:))
      {
        v27 = v25 + v19;
      }

      else
      {
        if (v26 != enum case for AccessibilityAdjustmentDirection.decrement(_:))
        {
          *&result = COERCE_DOUBLE(_assertionFailure(_:_:file:line:flags:)());
          __break(1u);
          return result;
        }

        v27 = v19 - v25;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v30 = v27;
      v31 = 0;

      static Published.subscript.setter();
      *&result = COERCE_DOUBLE(sub_1002E4518());
    }
  }

  return result;
}

uint64_t sub_100444498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100140278(&qword_1008EDA58);
  __chkstk_darwin(v4 - 8);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = *(sub_100140278(&qword_1008EDA60) + 44);
  v46 = v8;
  sub_100444964(a1, &v8[v9]);
  if (qword_1008DABD0 != -1)
  {
    swift_once();
  }

  v47 = qword_1009259A8;
  sub_10031C3D4(qword_1009259A8);
  AttributedString.init(_:)();
  v10 = Text.init(_:)();
  v12 = v11;
  v14 = v13;
  type metadata accessor for WorkoutChartView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v51;
  static Color.gray.getter();
  if ((v15 & 1) == 0)
  {
    Color.opacity(_:)();
  }

  v16 = Text.foregroundColor(_:)();
  v18 = v17;
  v20 = v19;

  sub_10004642C(v10, v12, v14 & 1);

  v21 = [objc_opt_self() mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D46C0;
  v25 = sub_10031C3D4(v47);
  v26 = [v25 string];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_10000A788();
  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  v30 = String.init(format:_:)();
  v32 = v31;

  v50 = v30;
  v51 = v32;
  sub_10000FCBC();
  v33 = Text.accessibilityLabel<A>(_:)();
  v35 = v34;
  LOBYTE(v29) = v36;
  v38 = v37;
  sub_10004642C(v16, v18, v20 & 1);

  v39 = v46;
  v40 = v48;
  sub_10001B104(v46, v48, &qword_1008EDA58);
  v41 = v49;
  sub_10001B104(v40, v49, &qword_1008EDA58);
  v42 = sub_100140278(&qword_1008EDA68);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = v41 + *(v42 + 64);
  *v44 = v33;
  *(v44 + 8) = v35;
  *(v44 + 16) = v29 & 1;
  *(v44 + 24) = v38;
  sub_10006965C(v33, v35, v29 & 1);

  sub_10000EA04(v39, &qword_1008EDA58);
  sub_10004642C(v33, v35, v29 & 1);

  return sub_10000EA04(v40, &qword_1008EDA58);
}

uint64_t sub_100444964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  v93 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AccessibilityTraits();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DynamicTypeSize();
  v105 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008DDBE0);
  v103 = *(v7 - 8);
  v104 = v7;
  __chkstk_darwin(v7);
  v97 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v83 - v10;
  __chkstk_darwin(v11);
  v89 = &v83 - v12;
  v13 = sub_100140278(&qword_1008EDA70);
  __chkstk_darwin(v13 - 8);
  v95 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v100 = &v83 - v16;
  v99 = type metadata accessor for WorkoutChartViewModel(0);
  v17 = a1 + v99[6];
  v18 = *(v17 + 8);
  v106 = *v17;
  v107 = v18;
  sub_10000FCBC();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  if (qword_1008DABC0 != -1)
  {
    swift_once();
  }

  v24 = qword_100925998;
  Font.init(_:)();
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  sub_10004642C(v19, v21, v23 & 1);

  v30 = *(a1 + *(type metadata accessor for WorkoutChartView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v30;
  static Published.subscript.getter();

  v31 = v107;
  static Color.white.getter();
  v94 = a1;
  if ((v31 & 1) == 0)
  {
    Color.opacity(_:)();
  }

  v32 = Text.foregroundColor(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10004642C(v25, v27, v29 & 1);

  v106 = v32;
  v107 = v34;
  v39 = v36 & 1;
  v108 = v36 & 1;
  v109 = v38;
  v40 = v105;
  v41 = *(v105 + 104);
  v42 = v101;
  v86 = enum case for DynamicTypeSize.large(_:);
  v43 = v102;
  v87 = v105 + 104;
  v85 = v41;
  v41(v101);
  v44 = v89;
  View.dynamicTypeSize(_:)();
  v45 = *(v40 + 8);
  v105 = v40 + 8;
  v84 = v45;
  v45(v42, v43);
  sub_10004642C(v32, v34, v39);

  v46 = v90;
  static AccessibilityTraits.isHeader.getter();
  v106 = &type metadata for Text;
  v107 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v47 = v104;
  View.accessibilityAddTraits(_:)();
  v91[1](v46, v92);
  v48 = *(v103 + 8);
  v92 = v103 + 8;
  v91 = v48;
  (v48)(v44, v47);
  v49 = v94;
  v50 = *(v94 + v99[7]);
  AttributedString.init(_:)();
  v51 = Text.init(_:)();
  v53 = v52;
  v55 = v54;
  if (qword_1008DABB8 != -1)
  {
    swift_once();
  }

  v56 = qword_100925990;
  Font.init(_:)();
  v57 = Text.font(_:)();
  v59 = v58;
  v61 = v60;

  sub_10004642C(v51, v53, v55 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v107;
  sub_1005D5EA8(*(v49 + v99[5]));
  Color.init(_:)();
  if ((v62 & 1) == 0)
  {
    Color.opacity(_:)();
  }

  v63 = Text.foregroundColor(_:)();
  v65 = v64;
  v67 = v66;
  v69 = v68;

  sub_10004642C(v57, v59, v61 & 1);

  v106 = v63;
  v107 = v65;
  v70 = v67 & 1;
  v108 = v67 & 1;
  v109 = v69;
  v72 = v101;
  v71 = v102;
  v85(v101, v86, v102);
  v73 = v96;
  View.dynamicTypeSize(_:)();
  v84(v72, v71);
  sub_10004642C(v63, v65, v70);

  v74 = v100;
  v75 = v95;
  sub_10001B104(v100, v95, &qword_1008EDA70);
  v76 = v104;
  v77 = *(v103 + 16);
  v78 = v97;
  v77(v97, v73, v104);
  v79 = v98;
  sub_10001B104(v75, v98, &qword_1008EDA70);
  v80 = sub_100140278(&qword_1008EDA78);
  v77((v79 + *(v80 + 48)), v78, v76);
  v81 = v91;
  (v91)(v73, v76);
  sub_10000EA04(v74, &qword_1008EDA70);
  (v81)(v78, v76);
  return sub_10000EA04(v75, &qword_1008EDA70);
}

uint64_t sub_10044527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v22 = a2;
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v21 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v4 - 8);
  v20 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutChartView();
  v19 = *(v6 - 8);
  v18 = *(v19 + 64);
  __chkstk_darwin(v6);
  v17 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&unk_1008E51C0);
  *(swift_allocObject() + 16) = xmmword_1006D1F70;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Date.addingTimeInterval(_:)();
  (*(v8 + 8))(v10, v16);
  v11 = v17;
  sub_100446FB4(v15, v17, type metadata accessor for WorkoutChartView);
  v12 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v13 = swift_allocObject();
  sub_10044685C(v11, v13 + v12);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008EDA28);
  sub_10044756C();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_100445654@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29[3] = a1;
  v30 = a2;
  v2 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v2 - 8);
  v29[4] = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100140278(&qword_1008EDA40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - v7;
  v9 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AxisValue.index.getter())
  {
    static UnitPoint.trailing.getter();
  }

  else
  {
    static UnitPoint.leading.getter();
  }

  v18 = v16;
  v19 = v17;
  AxisValue.index.getter();
  AxisValue.as<A>(_:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &unk_1008F73A0);
    return (*(v6 + 56))(v30, 1, 1, v5);
  }

  else
  {
    v21 = (*(v13 + 32))(v15, v11, v12);
    v29[2] = v29;
    v29[0] = v19;
    v29[1] = v18;
    __chkstk_darwin(v21);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v27 = sub_100140278(&qword_1008EDA48);
    v28 = sub_100447628();
    v25 = sub_10044761C;
    v26 = &v23;
    v24 = 0;
    v23 = 0;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    v22 = v30;
    (*(v6 + 32))(v30, v8, v5);
    (*(v6 + 56))(v22, 0, 1, v5);
    return (*(v13 + 8))(v15, v12);
  }
}

double sub_100445A6C@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  sub_10031C560(a1, a2);
  sub_10000FCBC();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.footnote.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10004642C(v4, v6, v8 & 1);

  type metadata accessor for WorkoutChartView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Color.gray.getter();
  Color.opacity(_:)();

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  LOBYTE(v6) = v17;
  v19 = v18;
  sub_10004642C(v9, v11, v13 & 1);

  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v19;
  result = 0.0;
  *(a3 + 32) = xmmword_1006DC5B0;
  return result;
}

void sub_100445C44(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + *(type metadata accessor for WorkoutChartView() + 20) + 8);
  v12 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  swift_beginAccess();
  sub_10001B104(v11 + v12, v6, &unk_1008F73A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000EA04(v6, &unk_1008F73A0);
LABEL_7:
    v26 = [v30 string];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    a2[3] = &type metadata for String;
    a2[4] = sub_10000FCBC();
    *a2 = v27;
    a2[1] = v29;
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  type metadata accessor for WorkoutChartViewModel(0);
  Date.timeIntervalSince(_:)();
  v13 = AXDurationStringForDuration();
  if (!v13)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_7;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_100140278(&qword_1008E7590);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D1F70;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 88) = sub_1002226E0();
  v19 = v30;
  *(v18 + 64) = v30;

  v20 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = AXLabelForElements();

  if (v22)
  {

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    a2[3] = &type metadata for String;
    a2[4] = sub_10000FCBC();
    *a2 = v23;
    a2[1] = v25;
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100445F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v57 = a3;
  v58 = a4;
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  v90 = a2;
  sub_10000FCBC();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  if (qword_1008DABC8 != -1)
  {
    swift_once();
  }

  v13 = qword_1009259A0;
  Font.init(_:)();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10004642C(v8, v10, v12 & 1);

  static Font.Weight.medium.getter();
  v53 = Text.fontWeight(_:)();
  v54 = v19;
  v59 = v20;
  v22 = v21;
  sub_10004642C(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  LOBYTE(v14) = v22 & 1;
  LOBYTE(v89) = v22 & 1;
  v55 = v22 & 1;
  LOBYTE(v79[0]) = 0;
  v25 = v57;
  AttributedString.init(_:)();
  v26 = Text.init(_:)();
  v28 = v27;
  v30 = v29;
  static Font.Weight.semibold.getter();
  v56 = Text.fontWeight(_:)();
  v57 = v31;
  v52 = v32;
  v34 = v33;
  sub_10004642C(v26, v28, v30 & 1);

  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v37 = v34 & 1;
  LOBYTE(v89) = v34 & 1;
  v38 = v53;
  v39 = v54;
  *&v69 = v53;
  *(&v69 + 1) = v59;
  LOBYTE(v70) = v14;
  *(&v70 + 1) = *v68;
  DWORD1(v70) = *&v68[3];
  *(&v70 + 1) = v54;
  *&v71 = KeyPath;
  *(&v71 + 1) = 1;
  LOBYTE(v72) = 0;
  DWORD1(v72) = *&v67[3];
  *(&v72 + 1) = *v67;
  *(&v72 + 1) = v24;
  v73 = 0x3FE0000000000000;
  *&v64[0] = 0x3FE0000000000000;
  v62 = v71;
  v63 = v72;
  v60 = v69;
  v61 = v70;
  v41 = v56;
  v40 = v57;
  v42 = v52;
  *&v74 = v56;
  *(&v74 + 1) = v52;
  LOBYTE(v75) = v37;
  DWORD1(v75) = *(v66 + 3);
  *(&v75 + 1) = v66[0];
  *(&v75 + 1) = v57;
  *&v76 = v35;
  *(&v76 + 1) = 1;
  LOBYTE(v77) = 0;
  DWORD1(v77) = *&v65[3];
  *(&v77 + 1) = *v65;
  *(&v77 + 1) = v36;
  v78 = 0x3FE0000000000000;
  *(v64 + 8) = v74;
  *(&v64[4] + 1) = 0x3FE0000000000000;
  *(&v64[3] + 8) = v77;
  *(&v64[2] + 8) = v76;
  *(&v64[1] + 8) = v75;
  v43 = v69;
  v44 = v70;
  v45 = v72;
  v46 = v58;
  v58[2] = v71;
  v46[3] = v45;
  *v46 = v43;
  v46[1] = v44;
  v47 = v64[0];
  v48 = v64[1];
  v49 = v64[4];
  v46[7] = v64[3];
  v46[8] = v49;
  v50 = v64[2];
  v46[5] = v48;
  v46[6] = v50;
  v46[4] = v47;
  v79[0] = v41;
  v79[1] = v42;
  v80 = v37;
  *v81 = v66[0];
  *&v81[3] = *(v66 + 3);
  v82 = v40;
  v83 = v35;
  v84 = 1;
  v85 = 0;
  *v86 = *v65;
  *&v86[3] = *&v65[3];
  v87 = v36;
  v88 = 0x3FE0000000000000;
  sub_10001B104(&v69, &v89, &qword_1008E39F0);
  sub_10001B104(&v74, &v89, &qword_1008E39F0);
  sub_10000EA04(v79, &qword_1008E39F0);
  v89 = v38;
  v90 = v59;
  v91 = v55;
  *v92 = *v68;
  *&v92[3] = *&v68[3];
  v93 = v39;
  v94 = KeyPath;
  v95 = 1;
  v96 = 0;
  *v97 = *v67;
  *&v97[3] = *&v67[3];
  v98 = v24;
  v99 = 0x3FE0000000000000;
  return sub_10000EA04(&v89, &qword_1008E39F0);
}

uint64_t sub_1004463B8()
{
  type metadata accessor for WorkoutChartView();
  DragGesture.Value.location.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_1002E4518();
}

uint64_t sub_10044645C()
{
  type metadata accessor for WorkoutChartView();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_1002E4518();
}

uint64_t sub_1004464EC@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1008DA6D8 != -1)
  {
    swift_once();
  }

  *a1 = xmmword_100925330;
  v3 = sub_100140278(&qword_1008ED860);
  return sub_100441A50(v1, a1 + *(v3 + 44));
}

uint64_t sub_100446570()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1004465EC(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  static Published.subscript.setter();
  sub_1002E3D9C();
  return (*(v3 + 8))(v9, v2);
}

unint64_t sub_100446760()
{
  result = qword_1008ED8B8;
  if (!qword_1008ED8B8)
  {
    sub_100141EEC(&qword_1008ED898);
    sub_100141EEC(&qword_1008ED890);
    sub_10014A6B0(&qword_1008ED8B0, &qword_1008ED890);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED8B8);
  }

  return result;
}

uint64_t sub_10044685C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004468C0()
{
  result = qword_1008ED8C8;
  if (!qword_1008ED8C8)
  {
    sub_100141EEC(&qword_1008ED870);
    sub_10044694C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED8C8);
  }

  return result;
}

unint64_t sub_10044694C()
{
  result = qword_1008ED8D0;
  if (!qword_1008ED8D0)
  {
    sub_100141EEC(&qword_1008ED8D8);
    sub_100141EEC(&qword_1008ED8E0);
    sub_100446A44();
    swift_getOpaqueTypeConformance2();
    sub_1004474A0(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED8D0);
  }

  return result;
}

unint64_t sub_100446A44()
{
  result = qword_1008ED8E8;
  if (!qword_1008ED8E8)
  {
    sub_100141EEC(&qword_1008ED8E0);
    sub_100446AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED8E8);
  }

  return result;
}

unint64_t sub_100446AD0()
{
  result = qword_1008ED8F0;
  if (!qword_1008ED8F0)
  {
    sub_100141EEC(&qword_1008ED8F8);
    sub_100446B88();
    sub_10014A6B0(&unk_1008EE7D0, &qword_1008E3A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED8F0);
  }

  return result;
}

unint64_t sub_100446B88()
{
  result = qword_1008ED900;
  if (!qword_1008ED900)
  {
    sub_100141EEC(&qword_1008ED908);
    sub_100446C40();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED900);
  }

  return result;
}

unint64_t sub_100446C40()
{
  result = qword_1008ED910;
  if (!qword_1008ED910)
  {
    sub_100141EEC(&qword_1008ED918);
    sub_100446CF8();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED910);
  }

  return result;
}

unint64_t sub_100446CF8()
{
  result = qword_1008ED920;
  if (!qword_1008ED920)
  {
    sub_100141EEC(&qword_1008ED928);
    sub_100446DB0();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED920);
  }

  return result;
}

unint64_t sub_100446DB0()
{
  result = qword_1008ED930;
  if (!qword_1008ED930)
  {
    sub_100141EEC(&qword_1008ED938);
    sub_100446E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED930);
  }

  return result;
}

unint64_t sub_100446E3C()
{
  result = qword_1008ED940;
  if (!qword_1008ED940)
  {
    sub_100141EEC(&qword_1008ED948);
    sub_10014A6B0(&qword_1008ED950, &qword_1008ED958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED940);
  }

  return result;
}

uint64_t sub_100446F60@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100446FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100447024(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutChart();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100447080()
{
  result = qword_1008ED9D8;
  if (!qword_1008ED9D8)
  {
    sub_100141EEC(&qword_1008ED988);
    sub_10044710C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED9D8);
  }

  return result;
}

unint64_t sub_10044710C()
{
  result = qword_1008ED9E0;
  if (!qword_1008ED9E0)
  {
    sub_100141EEC(&qword_1008ED9C8);
    sub_1004471C4();
    sub_10014A6B0(&qword_1008ED9F0, &qword_1008ED9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED9E0);
  }

  return result;
}

unint64_t sub_1004471C4()
{
  result = qword_1008ED9E8;
  if (!qword_1008ED9E8)
  {
    sub_100141EEC(&qword_1008ED9C0);
    sub_100141EEC(&qword_1008ED980);
    type metadata accessor for WorkoutChart();
    sub_100141EEC(&qword_1008ED9A8);
    sub_1004474A0(&qword_1008ED9B0, type metadata accessor for WorkoutChart);
    sub_10014A6B0(&qword_1008ED9B8, &qword_1008ED9A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ED9E8);
  }

  return result;
}

unint64_t sub_100447354()
{
  result = qword_1008EDA00;
  if (!qword_1008EDA00)
  {
    sub_100141EEC(&qword_1008ED978);
    sub_10014A6B0(&qword_1008EDA08, &qword_1008ED9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDA00);
  }

  return result;
}

uint64_t sub_10044741C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutChartView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1004474A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004474EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutChartView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100445654(v4, a1);
}

unint64_t sub_10044756C()
{
  result = qword_1008EDA30;
  if (!qword_1008EDA30)
  {
    sub_100141EEC(&qword_1008EDA28);
    sub_10014A6B0(&qword_1008EDA38, &qword_1008EDA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDA30);
  }

  return result;
}

unint64_t sub_100447628()
{
  result = qword_1008EDA50;
  if (!qword_1008EDA50)
  {
    sub_100141EEC(&qword_1008EDA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDA50);
  }

  return result;
}

uint64_t sub_1004476B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000059F8(0, &qword_1008EB220);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

void *sub_100447734(void *a1, uint64_t a2, void **a3)
{
  v10 = a1;
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    sub_100449BA4(&v10, v6, a3);
    v6 = v8;
    if (v3)
    {
    }
  }

  return v10;
}

uint64_t sub_1004477A4(uint64_t a1, __int16 a2)
{
  if (HIBYTE(a2) <= 3u)
  {
    if (HIBYTE(a2) == 2 || HIBYTE(a2) == 3)
    {
LABEL_7:
      v2 = [objc_opt_self() mainBundle];
      v3 = String._bridgeToObjectiveC()();
      v4 = [v2 localizedStringForKey:v3 value:0 table:0];

LABEL_8:
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    goto LABEL_10;
  }

  if (HIBYTE(a2) == 4 || HIBYTE(a2) == 5)
  {
    goto LABEL_7;
  }

  if (HIBYTE(a2) != 6)
  {
LABEL_10:
    v7 = a2;
    v8 = a2;
    v2 = [objc_allocWithZone(CHWorkoutTypeKey) init];
    [v2 setActivityType:a1];
    v10 = [objc_opt_self() historyFilterDisambiguatesLocationForActivityType:a1];
    if (v8 != 2 && (v10 & 1) != 0)
    {
      [v2 setIndoor:v7 & 1];
    }

    v4 = [objc_opt_self() localizedShortNameForWorkoutTypeKey:v2];
    goto LABEL_8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100447AC8(uint64_t a1, Swift::UInt a2, __int16 a3)
{
  if (HIBYTE(a3) <= 3u)
  {
    if (HIBYTE(a3) == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (HIBYTE(a3) == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(HIBYTE(a3))
    {
      case 4u:
        v3 = 3;
        goto LABEL_12;
      case 5u:
        v3 = 4;
        goto LABEL_12;
      case 6u:
        v3 = 5;
LABEL_12:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  v5 = a3;
  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(a2);
  if (v5 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = a3 & 1;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
}

Swift::Int sub_100447B94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100447AC8(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100447BF0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_100447AC8(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_100447C54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004477A4(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100447C84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!((*(v1 + 8) == 2) | v1[1] & 1))
    {
      v2 = -v2;
    }

    *a1 = v2;
  }
}

Swift::Int sub_100447CB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100447D2C()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v2 = v1 & 1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_100447D7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100447DF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == 2;
  if (v3 != 2)
  {
    v4 = 0;
  }

  v5 = v2 == 2 || v3 == 2;
  v6 = v3 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v4;
  }

  return v6 & 1;
}

void sub_100447F44(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = v6;
    v11 = *(Strong + OBJC_IVAR___CHHistoryDataProvider_queue);
    v12 = Strong;
    v15 = v11;

    if (v11)
    {
      aBlock[4] = sub_10044FC14;
      aBlock[5] = a1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10085AE18;
      v13 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v17 = &_swiftEmptyArrayStorage;
      sub_100045E60(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v14 = v15;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v13);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v16);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100448240()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100078EA4();
  }
}

uint64_t sub_100448294()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v15 = v5;
    v16 = v4;
    v17 = v1;
    v18 = v0;
    v10 = *(result + OBJC_IVAR___CHHistoryDataProvider_queue);
    if (v10)
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10044FBF0;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10085ADF0;
      v12 = _Block_copy(aBlock);
      v13 = v10;

      static DispatchQoS.unspecified.getter();
      v19 = &_swiftEmptyArrayStorage;
      sub_100045E60(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
      v14 = v18;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v12);

      (*(v17 + 8))(v3, v14);
      (*(v15 + 8))(v7, v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1004485CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = v8;
    v13 = *(Strong + OBJC_IVAR___CHHistoryDataProvider_queue);
    v14 = Strong;
    v18 = v13;

    if (v13)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a1;
      aBlock[4] = sub_10044FBE8;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10085ADC8;
      v16 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v20 = &_swiftEmptyArrayStorage;
      sub_100045E60(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v18;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v19);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004488EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR___CHHistoryDataProvider_allMindfulnessSessions) = a2;
    v4 = Strong;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v5[OBJC_IVAR___CHHistoryDataProvider_hasInitialMindfulnessSessions] = 1;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_100078EA4();
  }
}

void sub_1004489C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider);

    [v2 startMindfulnessSessionQueryIfNeeded];
  }
}

void sub_100448A68(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[*a2] = 1;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_100078EA4();
  }
}

uint64_t sub_100448AF0(void *a1, int a2)
{
  v41 = type metadata accessor for DateComponents();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR___CHHistoryDataProvider_lock);
  v47 = v2;
  v44 = sub_1004535C8;
  v45 = &v46;
  os_unfair_lock_lock(v8 + 4);
  sub_1002831DC(v48);
  os_unfair_lock_unlock(v8 + 4);
  v35 = a1;
  v36 = a2;
  v9 = sub_1000804E8(v48[0], a1, a2);

  v10 = sub_10044FC48(v9);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1001A3CCC(*(v10 + 16), 0);
    v13 = sub_1001AB734(v48, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v11, v10);
    v42 = v48[4];
    v43 = v13;
    swift_bridgeObjectRetain_n();
    sub_100022DEC();
    if (v43 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  v48[0] = v12;
  sub_10044BC94(v48);

  v14 = v48[0];
  v15 = v48[0][2];
  v16 = v41;
  if (v15)
  {
    v17 = 0;
    v43 = v48[0] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v42 = (v5 + 16);
    v18 = _swiftEmptyArrayStorage;
    v40 = xmmword_1006D46C0;
    v39 = v7;
    v38 = v10;
    v37 = v15;
    while (v17 < v14[2])
    {
      (*(v5 + 16))(v7, &v43[*(v5 + 72) * v17], v16);
      if (*(v10 + 16))
      {
        v20 = sub_1004C59D4(v7);
        if (v21)
        {
          v48[0] = *(*(v10 + 56) + 8 * v20);
          swift_bridgeObjectRetain_n();
          sub_10044BD3C(v48);

          v22 = v48[0];
          sub_100140278(&qword_1008DE4F8);
          inited = swift_initStackObject();
          *(inited + 16) = v40;
          *(inited + 32) = v22;
          v24 = v18[2];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v19 = v18[3] >> 1, v19 <= v24))
          {
            v18 = sub_1001A2834(isUniquelyReferenced_nonNull_native, v24 + 1, 1, v18);
            v19 = v18[3] >> 1;
          }

          if (v19 <= v18[2])
          {
            goto LABEL_30;
          }

          sub_100140278(&qword_1008DE500);
          swift_arrayInitWithCopy();

          ++v18[2];
          v16 = v41;
          v7 = v39;
          v10 = v38;
          v15 = v37;
        }
      }

      ++v17;
      (*(v5 + 8))(v7, v16);
      if (v15 == v17)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_18:

    v26 = 0;
    v27 = v18[2];
    v28 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v27 == v26)
      {

        sub_10044FF58(v35, v36, v28);
        return v28;
      }

      if (v26 >= v18[2])
      {
        break;
      }

      v29 = v18[v26++ + 4];
      if (*(v29 + 16))
      {

        v30 = swift_isUniquelyReferenced_nonNull_native();
        v48[0] = v28;
        if ((v30 & 1) == 0)
        {
          sub_100185FDC(0, v28[2] + 1, 1);
          v28 = v48[0];
        }

        v32 = v28[2];
        v31 = v28[3];
        if (v32 >= v31 >> 1)
        {
          sub_100185FDC((v31 > 1), v32 + 1, 1);
          v28 = v48[0];
        }

        v28[2] = v32 + 1;
        v28[v32 + 4] = v29;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100448FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v22 = a3;
  v23 = type metadata accessor for Date();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100140278(&unk_1008E51B0);
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D64F0;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, enum case for Calendar.Component.month(_:), v9);
  v15(v14 + v11, enum case for Calendar.Component.year(_:), v9);
  v15(v14 + 2 * v11, enum case for Calendar.Component.era(_:), v9);
  sub_10001C970(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(a2 + 32))(v20, a2);
  Calendar.dateComponents(_:from:)();

  (*(v21 + 8))(v5, v23);
  return (*(v18 + 8))(v8, v19);
}

BOOL sub_1004492E8()
{
  v0 = DateComponents.era.getter();
  if (v1)
  {
    return 1;
  }

  v2 = v0;
  v3 = DateComponents.era.getter();
  if (v4)
  {
    return 1;
  }

  v5 = v3;
  v6 = DateComponents.year.getter();
  if (v7)
  {
    return 1;
  }

  v8 = v6;
  v9 = DateComponents.year.getter();
  if (v10)
  {
    return 1;
  }

  v11 = v9;
  v12 = DateComponents.month.getter();
  if (v13)
  {
    return 1;
  }

  v15 = v12;
  v16 = DateComponents.month.getter();
  result = 1;
  if ((v17 & 1) == 0 && v5 >= v2)
  {
    if (v2 >= v5)
    {
      if (v11 >= v8)
      {
        return v8 >= v11 && v16 < v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004493C4(void *a1, id a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  if (HIBYTE(a3) - 4 < 3 || HIBYTE(a3) == 2)
  {
    v5 = a1[3];
    sub_1000066AC(a1, v5);
    sub_100449800(v5);
    if (v6 <= 3u)
    {
      if (v6 == 2)
      {
        if (v3 != 2)
        {
          goto LABEL_54;
        }
      }

      else if (v6 != 3 || v3 != 3)
      {
        goto LABEL_54;
      }
    }

    else if (v6 == 4)
    {
      if (v3 != 4)
      {
        goto LABEL_54;
      }
    }

    else if (v6 == 5)
    {
      if (v3 != 5)
      {
        goto LABEL_54;
      }
    }

    else if (v6 != 6 || v3 != 6)
    {
      goto LABEL_54;
    }

    v10 = 1;
    return v10 & 1;
  }

  if (HIBYTE(a3) != 3)
  {
    sub_100007C5C(a1, v32);
    sub_100140278(&unk_1008E4E60);
    sub_1000059F8(0, &qword_1008ED7C0);
    if (swift_dynamicCast())
    {

      sub_100007C5C(a1, v32);
      if (swift_dynamicCast())
      {
        v31 = v33;
        v15 = [objc_opt_self() historyFilterDisambiguatesLocationForActivityType:{objc_msgSend(v33, "workoutActivityType")}];
        if (a3 == 2 || !v15)
        {
          if ((a3 & 0x100) == 0 || [v31 workoutActivityType] != 82)
          {
            v28 = [v31 workoutActivityType];

            v10 = v28 == a2;
            return v10 & 1;
          }

          v20 = [v31 workoutActivities];
          sub_1000059F8(0, &qword_1008EAF90);
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v21 >> 62)
          {
LABEL_59:
            v30 = v21 & 0xFFFFFFFFFFFFFF8;
            v22 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v30 = v21 & 0xFFFFFFFFFFFFFF8;
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          for (i = 0; v22 != i; ++i)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *(v30 + 16))
              {
                goto LABEL_58;
              }

              v24 = *(v21 + 8 * i + 32);
            }

            v25 = v24;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v26 = [v24 fiui_activityType];
            v27 = [v26 effectiveTypeIdentifier];

            if (v27 == a2)
            {

              v10 = 1;
              return v10 & 1;
            }
          }
        }

        else
        {
          v16 = [v31 fiui_activityType];
          if (v16)
          {
            v17 = v16;
            if ([v16 effectiveTypeIdentifier] == a2)
            {
              v18 = v17;
              v19 = [v18 isIndoor];

              v10 = v19 ^ a3 ^ 1;
              return v10 & 1;
            }
          }
        }
      }
    }

LABEL_54:
    v10 = 0;
    return v10 & 1;
  }

  sub_100007C5C(a1, v32);
  sub_100140278(&unk_1008E4E60);
  sub_1000059F8(0, &qword_1008ED7C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v8 = v33;
  v9 = [v33 workoutActivityType];

  v10 = v9 != 84;
  return v10 & 1;
}

uint64_t sub_100449800(uint64_t a1)
{
  v3 = type metadata accessor for FitnessPlusStackViewModel();
  v4 = __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = __chkstk_darwin(v4);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v24 - v15;
  __chkstk_darwin(v14);
  v17 = *(v7 + 16);
  v17(&v24 - v18, v1, a1);
  type metadata accessor for MindfulnessSessionViewModel();
  if (swift_dynamicCast())
  {

    return 0;
  }

  else
  {
    v17(v16, v1, a1);
    if (swift_dynamicCast())
    {
      sub_1001AB550(v6);
      return 0;
    }

    else
    {
      v17(v13, v1, a1);
      sub_1000059F8(0, &qword_1008ED7C0);
      if (swift_dynamicCast() && (v25, v17(v10, v1, a1), (swift_dynamicCast() & 1) != 0))
      {
        v20 = v25;
        v21 = [v25 fiui_activityType];
        if (v21)
        {
          v22 = v21;
          if ([v21 effectiveTypeIdentifier] == 84)
          {

            return 0;
          }

          else
          {
            if ([objc_opt_self() historyFilterDisambiguatesLocationForActivityType:{objc_msgSend(v22, "effectiveTypeIdentifier")}])
            {
              [v22 isIndoor];
            }

            v23 = [v22 effectiveTypeIdentifier];

            return v23;
          }
        }

        else
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100449BA4(void **a1, void *a2, void **a3)
{
  v6 = a2[3];
  sub_1000066AC(a2, v6);
  v7 = sub_100449800(v6);
  v9 = v8;
  if (BYTE1(v8) - 2 >= 5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a3;
    v36 = *a3;
    *a3 = 0x8000000000000000;
    v3 = sub_1004C6208(v7, v9);
    v13 = v11[2];
    v14 = (v12 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_24;
    }

    v16 = v12;
    if (v11[3] >= v15)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100495524();
        v11 = v36;
      }
    }

    else
    {
      sub_10048D420(v15, isUniquelyReferenced_nonNull_native);
      v11 = v36;
      v17 = sub_1004C6208(v7, v9);
      if ((v16 & 1) != (v18 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v3 = v17;
    }

    *a3 = v11;

    v19 = *a3;
    if ((v16 & 1) == 0)
    {
      v15 = sub_1004923FC(v3, v7, v9, 0, *a3);
    }

    v20 = v19[7];
    v21 = *(v20 + 8 * v3);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_25;
    }

    *(v20 + 8 * v3) = v23;
    a3 = sub_100082838;
  }

  else
  {
    a3 = 0;
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  v36 = *a1;
  v15 = sub_1004C62B0(v7, v9);
  v27 = v25[2];
  v28 = (v26 & 1) == 0;
  v22 = __OFADD__(v27, v28);
  v29 = v27 + v28;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v3) = v26;
  if (v25[3] >= v29)
  {
    goto LABEL_17;
  }

  sub_10048D0C8(v29, v24);
  v25 = v36;
  v15 = sub_1004C62B0(v7, v9);
  if ((v3 & 1) != (v30 & 1))
  {
    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_17:
    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  *a1 = v25;
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_19:
  a1 = v15;
  sub_1004923B0(v15, v7, v9, 0, v25);
  v15 = a1;
LABEL_20:
  while (1)
  {
    v31 = v25[7];
    v32 = *(v31 + 8 * v15);
    v22 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v22)
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v35 = v15;
    sub_1004953C4();
    v15 = v35;
    v25 = v36;
    *a1 = v36;
    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(v31 + 8 * v15) = v33;
  return sub_1000245E0(a3);
}

uint64_t sub_100449E28(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CHHistoryDataProvider_queue);
  if (!v8)
  {
    goto LABEL_70;
  }

  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);

    goto LABEL_72;
  }

  v74 = v2;
  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  do
  {
    v16 = &off_100845C78 + 2 * v11;
    v17 = v16[4];
    v18 = *(v16 + 20);
    v19 = *(a1 + 16);
    if ((v18 & 0xFF00) == 0x300)
    {
      if (v19)
      {
        v20 = 0;
        v21 = 1 << *(a1 + 32);
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v23 = v22 & *(a1 + 64);
        v24 = (v21 + 63) >> 6;
        while (v23)
        {
          v25 = v20;
LABEL_20:
          v26 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          if (*(*(a1 + 56) + ((v25 << 9) | (8 * v26))) >= 1)
          {
            goto LABEL_24;
          }
        }

        while (1)
        {
          v25 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v25 >= v24)
          {
            goto LABEL_7;
          }

          v23 = *(a1 + 64 + 8 * v25);
          ++v20;
          if (v23)
          {
            v20 = v25;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_63;
      }
    }

    else if (v19)
    {
      v2 = a1;
      sub_1004C62B0(v17, v18);
      if (v27)
      {
LABEL_24:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = &v76;
          sub_10018611C(0, *(v12 + 2) + 1, 1);
          v12 = v76;
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        if (v14 >= v13 >> 1)
        {
          v2 = &v76;
          sub_10018611C((v13 > 1), v14 + 1, 1);
          v12 = v76;
        }

        *(v12 + 2) = v14 + 1;
        v15 = &v12[16 * v14];
        *(v15 + 4) = v17;
        *(v15 + 20) = v18;
      }
    }

LABEL_7:
    ++v11;
  }

  while (v11 != 3);
  v76 = v12;

  v29 = v74;

  v30 = 0;
  sub_100452404(&v76, a1, v29);

  v70 = v76;
  v2 = v73;
  v31 = *(v73 + 16);
  v32 = &_swiftEmptyArrayStorage;
  if (v31)
  {
    v69 = 0;
    v76 = &_swiftEmptyArrayStorage;
    v72 = v31;
    sub_10018611C(0, v31, 0);
    v32 = v76;
    v33 = v73 + 64;
    v34 = _HashTable.startBucket.getter();
    v35 = v72;
    v2 = v73;
    v36 = 0;
    v37 = *(v73 + 36);
    v71 = v73 + 72;
    v74 = v37;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(v2 + 32))
    {
      v39 = v34 >> 6;
      v40 = 1 << v34;
      if ((*(v33 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_64;
      }

      if (v37 != *(v2 + 9))
      {
        goto LABEL_65;
      }

      v41 = &v2[6][16 * v34];
      v42 = *v41;
      v43 = *(v41 + 8);
      v76 = v32;
      v45 = *(v32 + 2);
      v44 = *(v32 + 3);
      if (v45 >= v44 >> 1)
      {
        v54 = v34;
        sub_10018611C((v44 > 1), v45 + 1, 1);
        v2 = v73;
        LODWORD(v37) = v74;
        v35 = v72;
        v34 = v54;
        v32 = v76;
      }

      *(v32 + 2) = v45 + 1;
      v46 = &v32[16 * v45];
      *(v46 + 4) = v42;
      *(v46 + 20) = v43;
      v38 = 1 << *(v2 + 32);
      if (v34 >= v38)
      {
        goto LABEL_66;
      }

      v47 = *(v33 + 8 * v39);
      if ((v47 & v40) == 0)
      {
        goto LABEL_67;
      }

      if (v37 != *(v2 + 9))
      {
        goto LABEL_68;
      }

      v48 = v47 & (-2 << (v34 & 0x3F));
      if (v48)
      {
        v38 = __clz(__rbit64(v48)) | v34 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v39 << 6;
        v50 = v39 + 1;
        v51 = (v71 + 8 * v39);
        while (v50 < (v38 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            sub_100453590(v34, v74, 0);
            LODWORD(v37) = v74;
            v35 = v72;
            v38 = __clz(__rbit64(v52)) + v49;
            goto LABEL_45;
          }
        }

        sub_100453590(v34, v74, 0);
        LODWORD(v37) = v74;
        v35 = v72;
LABEL_45:
        v2 = v73;
      }

      ++v36;
      v34 = v38;
      if (v36 == v35)
      {
        v30 = v69;
        goto LABEL_47;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_47:
  v55 = *(v32 + 2);
  if (v55)
  {
    v56 = (v32 + 40);
    v57 = &_swiftEmptyArrayStorage;
    do
    {
      v58 = *v56;
      if ((v58 >> 8) - 2 >= 5)
      {
        if (v2[2])
        {
          v59 = *(v56 - 1);
          v60 = sub_1004C6208(v59, *v56);
          if ((v61 & 1) != 0 && *&v2[7][8 * v60] > 0)
          {
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v76 = v57;
            if ((v62 & 1) == 0)
            {
              sub_10018611C(0, *(v57 + 2) + 1, 1);
              v57 = v76;
            }

            v64 = *(v57 + 2);
            v63 = *(v57 + 3);
            v2 = v73;
            if (v64 >= v63 >> 1)
            {
              sub_10018611C((v63 > 1), v64 + 1, 1);
              v2 = v73;
              v57 = v76;
            }

            *(v57 + 2) = v64 + 1;
            v65 = &v57[16 * v64];
            *(v65 + 4) = v59;
            *(v65 + 20) = v58;
          }
        }
      }

      v56 += 8;
      --v55;
    }

    while (v55);
  }

  else
  {
    v57 = &_swiftEmptyArrayStorage;
  }

  v76 = v57;

  sub_1004534EC(&v76, v2);
  if (!v30)
  {

    v66 = v76;
    v75 = &off_100845CC8;
    sub_10019F1A8(v70);
    sub_10019F1A8(v66);
    return v75;
  }

LABEL_72:

  __break(1u);
  return result;
}

void sub_10044A4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v4[OBJC_IVAR___CHHistoryDataProvider_queue];
  if (v12)
  {
    sub_100007C5C(a1, v41);
    v13 = swift_allocObject();
    v26[0] = a1;
    v14 = v13;
    *(v13 + 16) = v4;
    sub_1001AB740(v41, v13 + 24);
    v39 = sub_10044FC1C;
    v40 = v14;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v26[1] = &v37;
    v37 = sub_1000449A8;
    v38 = &unk_10085AE68;
    v15 = _Block_copy(&aBlock);
    v16 = v12;
    v17 = v4;
    static DispatchQoS.unspecified.getter();
    v34 = _swiftEmptyArrayStorage;
    sub_100045E60(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v29 + 8))(v8, v6);
    (*(v27 + 8))(v11, v28);

    v18 = v26[0];
    sub_10044B220(v26[0]);
    v19 = *&v17[OBJC_IVAR___CHHistoryDataProvider_healthStore];
    sub_1000059F8(0, &qword_1008DE728);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100007C5C(v18, v41);
    v22 = swift_allocObject();
    v22[2] = v21;
    sub_1001AB740(v41, (v22 + 3));
    v24 = v31;
    v23 = v32;
    v22[8] = v31;
    v22[9] = v23;
    v22[10] = ObjectType;
    v39 = sub_10044FC28;
    v40 = v22;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1004DCFFC;
    v38 = &unk_10085AEB8;
    v25 = _Block_copy(&aBlock);
    sub_10000B210(v24);

    [v19 _deleteObjects:isa options:v33 completion:v25];
    _Block_release(v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10044A930(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = a2[3];
  v11 = a2[4];
  sub_1000066AC(a2, v10);
  (*(v11 + 48))(v10, v11);
  swift_beginAccess();
  sub_1001A470C(v9, v6);
  (*(v4 + 8))(v9, v3);
  swift_endAccess();
  return sub_100078EA4();
}

void sub_10044AA94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v20 = static os_log_type_t.error.getter();
    v21 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v20))
    {
      v22 = v21;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v23 = 136315394;
      v26 = _typeName(_:qualified:)();
      v28 = sub_10000AFDC(v26, v27, aBlock);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v29;
      *v24 = v29;
      _os_log_impl(&_mh_execute_header, v22, v20, "%s failed to delete mindfulness session with error %@", v23, 0x16u);
      sub_10000EA04(v24, &unk_1008DB8B0);

      sub_100005A40(v25);
    }

    else
    {
    }
  }

  else
  {
    v56 = v17;
    v57 = a4;
    v55 = v19;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = a5;
      v32 = Strong;
      v33 = *(Strong + OBJC_IVAR___CHHistoryDataProvider_seymourCatalogItemDataProvider);

      v34 = v16;
      v35 = v14;
      v36 = v11;
      v37 = v12;
      v38 = a6;
      v40 = v57[3];
      v39 = v57[4];
      v41 = sub_1000066AC(v57, v40);
      v42 = *(v39 + 8);
      a5 = v31;
      v43 = v40;
      a6 = v38;
      v12 = v37;
      v11 = v36;
      v14 = v35;
      v16 = v34;
      sub_100422710(v41, v33, v43, v42);
    }

    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      v53 = a6;
      v54 = a5;
      v45 = *(v44 + OBJC_IVAR___CHHistoryDataProvider_queue);
      v46 = v44;
      v52 = v45;

      if (!v45)
      {
        __break(1u);
        return;
      }

      sub_100007C5C(v57, v60);
      v47 = swift_allocObject();
      *(v47 + 16) = a3;
      sub_1001AB740(v60, v47 + 24);
      aBlock[4] = sub_10044FC3C;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10085AF08;
      v48 = _Block_copy(aBlock);

      v49 = v55;
      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      sub_100045E60(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v50 = v52;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v48);

      (*(v12 + 8))(v14, v11);
      (*(v16 + 8))(v49, v56);

      a5 = v54;
    }

    if (a5)
    {
      a5();
    }
  }
}

void sub_10044B01C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = a2[3];
    v13 = a2[4];
    sub_1000066AC(a2, v12);
    (*(v13 + 48))(v12, v13);
    swift_beginAccess();
    sub_10015718C(v6, v9);
    (*(v4 + 8))(v6, v3);
    sub_10000EA04(v9, &unk_1008DB8A0);
    swift_endAccess();
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
    sub_10000EA04(v9, &unk_1008DB8A0);
  }
}

unint64_t sub_10044B220(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for FitnessPlusStackViewModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _swiftEmptyArrayStorage;
  sub_100007C5C(a1, v61);
  sub_100140278(&unk_1008E4E60);
  v9 = swift_dynamicCast();
  v12 = *(v6 + 56);
  i = v6 + 56;
  v10 = v12;
  if (v9)
  {
    v10(v4, 0, 1, v5);
    sub_100306E28(v4, v8);
    v5 = *&v8[*(v5 + 20)];
    v56 = *(v5 + 16);
    if (v56)
    {
      v52 = v8;
      v13 = 0;
      v55 = v5 + 32;
      v14 = _swiftEmptyArrayStorage;
      v15 = &unk_1008EE8F0;
      v53 = v5;
      while (1)
      {
        if (v13 >= *(v5 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          sub_1000059F8(0, &qword_1008DE728);
          v36 = _bridgeCocoaArray<A>(_:)();
          goto LABEL_38;
        }

        sub_100007C5C(v55 + 40 * v13, v61);
        v16 = sub_10044B220(v61);
        sub_100005A40(v61);
        i = v16 >> 62;
        v4 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = (v14 & 0xFFFFFFFFFFFFFF8);
        v17 = v14 >> 62;
        if (v14 >> 62)
        {
          v34 = _CocoaArrayWrapper.endIndex.getter();
          a1 = &v4[v34];
          if (__OFADD__(v34, v4))
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        else
        {
          v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          a1 = &v4[v18];
          if (__OFADD__(v18, v4))
          {
            goto LABEL_34;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v59 = v4;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          break;
        }

        if (v17)
        {
          goto LABEL_16;
        }

LABEL_17:
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (i)
        {
          v24 = v20;
          v25 = _CocoaArrayWrapper.endIndex.getter();
          v20 = v24;
          v23 = v25;
          if (!v25)
          {
LABEL_4:

            if (v59 > 0)
            {
              goto LABEL_50;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v23)
          {
            goto LABEL_4;
          }
        }

        if (((v22 >> 1) - v21) < v59)
        {
          goto LABEL_51;
        }

        v57 = v13;
        v58 = v14;
        v26 = v20 + 8 * v21 + 32;
        v54 = v20;
        if (i)
        {
          if (v23 < 1)
          {
            goto LABEL_53;
          }

          sub_10014A6B0(&qword_1008EDB50, v15);
          for (i = 0; i != v23; ++i)
          {
            sub_100140278(v15);
            v27 = sub_10047463C(v60, i, v16);
            v29 = v15;
            v30 = *v28;
            (v27)(v60, 0);
            *(v26 + 8 * i) = v30;
            v15 = v29;
          }
        }

        else
        {
          i = v16 & 0xFFFFFFFFFFFFFF8;
          sub_1000059F8(0, &qword_1008DE728);
          swift_arrayInitWithCopy();
        }

        v14 = v58;
        v5 = v53;
        v13 = v57;
        if (v59 > 0)
        {
          v31 = *(v54 + 16);
          v32 = __OFADD__(v31, v59);
          v33 = v31 + v59;
          if (v32)
          {
            goto LABEL_52;
          }

          *(v54 + 16) = v33;
        }

LABEL_5:
        if (++v13 == v56)
        {
          v64 = v14;
          v8 = v52;
          goto LABEL_40;
        }
      }

      if (!v17)
      {
        v20 = v14 & 0xFFFFFFFFFFFFFF8;
        if (a1 <= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_17;
    }

LABEL_40:
    sub_1001AB550(v8);
  }

  else
  {
LABEL_35:
    v10(v4, 1, 1, v5);
    sub_10000EA04(v4, &qword_1008E0BC0);
    sub_100007C5C(a1, v61);
    type metadata accessor for MindfulnessSessionViewModel();
    if (swift_dynamicCast())
    {
      i = v60[0];
      v35 = MindfulnessSessionViewModel.mindfulnessSessions.getter();
      if (v35 >> 62)
      {
        goto LABEL_54;
      }

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000059F8(0, &qword_1008DE728);
      v36 = v35;
LABEL_38:

      sub_10019F2A4(v36);
    }

    else
    {
      sub_100007C5C(a1, v61);
      sub_1000059F8(0, &qword_1008ED7C0);
      if (swift_dynamicCast())
      {
        v37 = v60[0];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v38 = static os_log_type_t.error.getter();
        v39 = HKLogActivity;
        sub_100007C5C(a1, v61);
        if (os_log_type_enabled(v39, v38))
        {
          v40 = v39;
          v41 = swift_slowAlloc();
          v60[0] = swift_slowAlloc();
          *v41 = 136315394;
          v42 = _typeName(_:qualified:)();
          v44 = sub_10000AFDC(v42, v43, v60);

          *(v41 + 4) = v44;
          *(v41 + 12) = 2080;
          v46 = v62;
          v45 = v63;
          sub_1000066AC(v61, v62);
          v47 = (*(*(v45 + 8) + 8))(v46);
          v49 = v48;
          sub_100005A40(v61);
          v50 = sub_10000AFDC(v47, v49, v60);

          *(v41 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v40, v38, "%s unexpected historyItem type to delete %s", v41, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100005A40(v61);
        }
      }
    }
  }

  return v64;
}

id sub_10044B9D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for HistoryItemFilterValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 10))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 9);
  if (v3 < 2)
  {
    return 0;
  }

  v4 = (v3 + 2147483646) & 0x7FFFFFFF;
  result = v4 - 4;
  if (v4 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for HistoryItemFilterValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_10044BBA0(uint64_t a1)
{
  v1 = *(a1 + 9);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10044BBBC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 9) = a2 + 1;
  }

  return result;
}

unint64_t sub_10044BBE8()
{
  result = qword_1008EDB40;
  if (!qword_1008EDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDB40);
  }

  return result;
}

unint64_t sub_10044BC40()
{
  result = qword_1008EDB48;
  if (!qword_1008EDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDB48);
  }

  return result;
}

void sub_10044BC94(void **a1)
{
  v2 = *(type metadata accessor for DateComponents() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AA4D8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10044BE14(v5);
  *a1 = v3;
}

void sub_10044BD3C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AF4(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_10044BF40(v4);
  *a1 = v2;
}

Swift::Int sub_10044BDA8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AF4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10044C048(v5);
  *a1 = v2;
  return result;
}

void sub_10044BE14(uint64_t *a1)
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
        type metadata accessor for DateComponents();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DateComponents() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10044C940(v8, v9, a1, v4);
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
    sub_10044C150(0, v2, 1, a1);
  }
}

void sub_10044BF40(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&unk_1008E4E60);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10044D580(v7, v8, a1, v4);
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
    sub_10044C488(0, v2, 1, a1);
  }
}

Swift::Int sub_10044C048(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&unk_1008E4E60);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10044DF24(v7, v8, a1, v4);
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
    return sub_10044C6E4(0, v2, 1, a1);
  }

  return result;
}

void sub_10044C150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for DateComponents();
  __chkstk_darwin(v8);
  v59 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v43 - v11;
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v45 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = *(v18 + 56);
    v56 = (v18 - 8);
    v57 = v19;
    v58 = v18;
    v21 = (v18 + 16);
    v22 = (v17 + v20 * (a3 - 1));
    v54 = -v20;
    v55 = v17;
    v23 = a1 - a3;
    v44 = v20;
    v24 = v17 + v20 * a3;
LABEL_6:
    v49 = v22;
    v50 = a3;
    v47 = v24;
    v48 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v57;
      (v57)(v16, v24, v8, v14);
      v28 = v60;
      v27(v60, v26, v8);
      v29 = DateComponents.era.getter();
      if ((v30 & 1) == 0)
      {
        v31 = v29;
        v53 = DateComponents.era.getter();
        if ((v32 & 1) == 0)
        {
          v52 = DateComponents.year.getter();
          if ((v33 & 1) == 0)
          {
            v51 = DateComponents.year.getter();
            if ((v34 & 1) == 0)
            {
              v35 = DateComponents.month.getter();
              if ((v36 & 1) == 0)
              {
                v46 = v35;
                v41 = DateComponents.month.getter();
                if ((v42 & 1) == 0 && v53 >= v31 && (v31 < v53 || v51 >= v52 && (v52 < v51 || v41 >= v46)))
                {
                  v25 = *v56;
                  (*v56)(v28, v8);
                  v25(v16, v8);
LABEL_5:
                  a3 = v50 + 1;
                  v22 = &v49[v44];
                  v23 = v48 - 1;
                  v24 = v47 + v44;
                  if (v50 + 1 == v45)
                  {
                    return;
                  }

                  goto LABEL_6;
                }
              }
            }
          }
        }
      }

      v37 = *v56;
      (*v56)(v28, v8);
      v37(v16, v8);
      if (!v55)
      {
        break;
      }

      v38 = *v21;
      v39 = v59;
      (*v21)(v59, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v38(v26, v39, v8);
      v26 += v54;
      v24 += v54;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10044C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for Date();
  __chkstk_darwin(v37);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v26 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v30 = *a4;
    v15 = v30 + 40 * a3;
    v16 = a1 - a3;
LABEL_5:
    v28 = v15;
    v29 = a3;
    v27 = v16;
    while (1)
    {
      sub_100007C5C(v15, &v34);
      sub_100007C5C(v15 - 40, v31);
      v17 = v35;
      v18 = v36;
      sub_1000066AC(&v34, v35);
      (*(v18 + 32))(v17, v18);
      v19 = v32;
      v20 = v33;
      sub_1000066AC(v31, v32);
      (*(v20 + 32))(v19, v20);
      LOBYTE(v19) = static Date.> infix(_:_:)();
      v21 = *v14;
      v22 = v37;
      (*v14)(v9, v37);
      v21(v13, v22);
      sub_100005A40(v31);
      sub_100005A40(&v34);
      if ((v19 & 1) == 0)
      {
LABEL_4:
        a3 = v29 + 1;
        v15 = v28 + 40;
        v16 = v27 - 1;
        if (v29 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v30)
      {
        break;
      }

      sub_1001AB740(v15, &v34);
      v23 = *(v15 - 24);
      *v15 = *(v15 - 40);
      *(v15 + 16) = v23;
      *(v15 + 32) = *(v15 - 8);
      sub_1001AB740(&v34, v15 - 40);
      v15 -= 40;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10044C6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v38);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v14 = &v26 - v13;
  v27 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v31 = *a4;
    v16 = v31 + 40 * a3;
    v17 = a1 - a3;
LABEL_5:
    v29 = v16;
    v30 = a3;
    v28 = v17;
    while (1)
    {
      sub_100007C5C(v16, &v35);
      sub_100007C5C(v16 - 40, v32);
      v18 = v36;
      v19 = v37;
      sub_1000066AC(&v35, v36);
      (*(v19 + 24))(v18, v19);
      v20 = v33;
      v21 = v34;
      sub_1000066AC(v32, v33);
      (*(v21 + 24))(v20, v21);
      LOBYTE(v20) = static Date.> infix(_:_:)();
      v22 = *v15;
      v23 = v38;
      (*v15)(v10, v38);
      v22(v14, v23);
      sub_100005A40(v32);
      result = sub_100005A40(&v35);
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v16 = v29 + 40;
        v17 = v28 - 1;
        if (v30 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v31)
      {
        break;
      }

      sub_1001AB740(v16, &v35);
      v24 = *(v16 - 24);
      *v16 = *(v16 - 40);
      *(v16 + 16) = v24;
      *(v16 + 32) = *(v16 - 8);
      result = sub_1001AB740(&v35, v16 - 40);
      v16 -= 40;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10044C940(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v143 = a1;
  v9 = type metadata accessor for DateComponents();
  __chkstk_darwin(v9);
  v147 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v163 = &v139 - v12;
  __chkstk_darwin(v13);
  v15 = &v139 - v14;
  __chkstk_darwin(v16);
  v167 = &v139 - v17;
  __chkstk_darwin(v18);
  v20 = &v139 - v19;
  __chkstk_darwin(v21);
  v158 = &v139 - v22;
  __chkstk_darwin(v23);
  v139 = &v139 - v24;
  v27 = __chkstk_darwin(v25);
  v141 = &v139 - v28;
  v29 = a3[1];
  v155 = v26;
  if (v29 >= 1)
  {
    v30 = 0;
    v165 = v26 + 16;
    v166 = (v26 + 8);
    v164 = (v26 + 32);
    v31 = _swiftEmptyArrayStorage;
    v145 = a3;
    v142 = a4;
    v154 = v15;
    v156 = v20;
    while (1)
    {
      v148 = v31;
      if (v30 + 1 >= v29)
      {
        v40 = v30 + 1;
      }

      else
      {
        v157 = v29;
        v32 = *a3;
        v33 = *(v155 + 72);
        v144 = v30;
        v34 = v32 + v33 * (v30 + 1);
        v35 = *(v155 + 16);
        v35(v141, v34, v9, v27);
        v159 = v32;
        v36 = v32 + v33 * v144;
        v4 = v139;
        v161 = v35;
        (v35)(v139, v36, v9);
        LODWORD(v162) = sub_1004492E8();
        if (v6)
        {
          v138 = *v166;
          (*v166)(v4, v9);
          v138(v141, v9);
          goto LABEL_137;
        }

        v140 = 0;
        v37 = *v166;
        (*v166)(v4, v9);
        v160 = v37;
        v37(v141, v9);
        v38 = v144 + 2;
        v39 = v159 + v33 * (v144 + 2);
        while (1)
        {
          v40 = v157;
          if (v157 == v38)
          {
            break;
          }

          v41 = v161;
          v161(v158, v39, v9);
          v41(v20, v34, v9);
          v42 = DateComponents.era.getter();
          if (v43 & 1) != 0 || (v44 = v42, v45 = DateComponents.era.getter(), (v46) || (v159 = v45, v47 = DateComponents.year.getter(), (v48) || (v153 = v47, v49 = DateComponents.year.getter(), (v50) || (v152 = v49, v51 = DateComponents.month.getter(), (v52))
          {
            v4 = 1;
          }

          else
          {
            v151 = v51;
            v54 = DateComponents.month.getter();
            v4 = 1;
            if ((v55 & 1) == 0 && v159 >= v44)
            {
              if (v44 >= v159)
              {
                if (v152 >= v153)
                {
                  v4 = v153 >= v152 && v54 < v151;
                }
              }

              else
              {
                v4 = 0;
              }
            }
          }

          v20 = v156;
          v53 = v160;
          (v160)(v156, v9);
          v53(v158, v9);
          ++v38;
          v39 += v33;
          v34 += v33;
          if ((v162 ^ v4))
          {
            v40 = v38 - 1;
            break;
          }
        }

        v6 = v140;
        a3 = v145;
        v57 = v148;
        a4 = v142;
        v30 = v144;
        if ((v162 & 1) == 0)
        {
          goto LABEL_41;
        }

        if (v40 < v144)
        {
          goto LABEL_159;
        }

        if (v144 < v40)
        {
          v4 = v33 * (v40 - 1);
          v58 = v40 * v33;
          v157 = v40;
          v59 = v40;
          v60 = v144;
          v61 = v144 * v33;
          do
          {
            if (v60 != --v59)
            {
              v62 = *a3;
              if (!v62)
              {
LABEL_163:
                __break(1u);
                goto LABEL_164;
              }

              v162 = *v164;
              v162(v147, &v62[v61], v9, v57);
              if (v61 < v4 || &v62[v61] >= &v62[v58])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v61 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v162)(&v62[v4], v147, v9);
              a3 = v145;
              v57 = v148;
            }

            ++v60;
            v4 -= v33;
            v58 -= v33;
            v61 += v33;
          }

          while (v60 < v59);
          v6 = v140;
          a4 = v142;
          v15 = v154;
          v30 = v144;
          v40 = v157;
        }

        else
        {
LABEL_41:
          v15 = v154;
        }
      }

      v63 = a3[1];
      if (v40 >= v63)
      {
        goto LABEL_52;
      }

      if (__OFSUB__(v40, v30))
      {
        goto LABEL_156;
      }

      if (v40 - v30 >= a4)
      {
        goto LABEL_52;
      }

      if (__OFADD__(v30, a4))
      {
        goto LABEL_157;
      }

      if ((v30 + a4) >= v63)
      {
        a4 = a3[1];
      }

      else
      {
        a4 += v30;
      }

      if (a4 < v30)
      {
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        v133 = sub_1001A99A4(v4);
        goto LABEL_129;
      }

      if (v40 == a4)
      {
LABEL_52:
        a4 = v40;
        if (v40 < v30)
        {
          goto LABEL_155;
        }
      }

      else
      {
        v140 = v6;
        v110 = *a3;
        v111 = *(v155 + 72);
        v162 = *(v155 + 16);
        v112 = v110 + v111 * (v40 - 1);
        v160 = -v111;
        v144 = v30;
        v113 = v30 - v40;
        v161 = v110;
        v146 = v111;
        v114 = v110 + v40 * v111;
        v149 = a4;
        do
        {
          v157 = v40;
          v151 = v114;
          v152 = v113;
          a4 = v114;
          v153 = v112;
          v116 = v112;
          while (1)
          {
            a3 = v162;
            (v162)(v167, a4, v9, v27);
            v6 = v9;
            (a3)(v15, v116, v9);
            v117 = DateComponents.era.getter();
            if ((v118 & 1) == 0)
            {
              v119 = v117;
              v120 = DateComponents.era.getter();
              if ((v121 & 1) == 0)
              {
                v122 = v120;
                v123 = DateComponents.year.getter();
                if ((v124 & 1) == 0)
                {
                  a3 = v123;
                  v159 = DateComponents.year.getter();
                  if ((v125 & 1) == 0)
                  {
                    v126 = DateComponents.month.getter();
                    if ((v127 & 1) == 0)
                    {
                      v150 = v126;
                      v130 = DateComponents.month.getter();
                      if ((v131 & 1) == 0 && v122 >= v119 && (v119 < v122 || v159 >= a3 && (a3 < v159 || v130 >= v150)))
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }

            v4 = *v166;
            v9 = v6;
            (*v166)(v15, v6);
            (v4)(v167, v6);
            if (!v161)
            {
              goto LABEL_160;
            }

            v128 = v163;
            v4 = *v164;
            (*v164)(v163, a4, v6);
            swift_arrayInitWithTakeFrontToBack();
            (v4)(v116, v128, v6);
            v116 += v160;
            a4 += v160;
            if (__CFADD__(v113++, 1))
            {
              goto LABEL_104;
            }
          }

          v4 = v166;
          v115 = *v166;
          v9 = v6;
          (*v166)(v15, v6);
          v115(v167, v6);
LABEL_104:
          v40 = v157 + 1;
          v112 = (v153 + v146);
          v113 = v152 - 1;
          v114 = v151 + v146;
          a4 = v149;
        }

        while (v157 + 1 != v149);
        v6 = v140;
        a3 = v145;
        v30 = v144;
        if (v149 < v144)
        {
          goto LABEL_155;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149 = a4;
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v148;
      }

      else
      {
        v31 = sub_1001A1D54(0, *(v148 + 2) + 1, 1, v148);
      }

      a4 = *(v31 + 2);
      v65 = *(v31 + 3);
      v4 = a4 + 1;
      if (a4 >= v65 >> 1)
      {
        v31 = sub_1001A1D54((v65 > 1), a4 + 1, 1, v31);
      }

      *(v31 + 2) = v4;
      v66 = &v31[16 * a4];
      v67 = v149;
      *(v66 + 4) = v30;
      *(v66 + 5) = v67;
      v68 = *v143;
      if (!*v143)
      {
        goto LABEL_165;
      }

      if (a4)
      {
        while (1)
        {
          v69 = v4 - 1;
          if (v4 >= 4)
          {
            break;
          }

          if (v4 == 3)
          {
            v70 = *(v31 + 4);
            v71 = *(v31 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_72:
            if (v73)
            {
              goto LABEL_144;
            }

            v86 = &v31[16 * v4];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_147;
            }

            v92 = &v31[16 * v69 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_150;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_151;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                v69 = v4 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          v96 = &v31[16 * v4];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_86:
          if (v91)
          {
            goto LABEL_146;
          }

          v99 = &v31[16 * v69];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_149;
          }

          if (v102 < v90)
          {
            goto LABEL_3;
          }

LABEL_93:
          a4 = v69 - 1;
          if (v69 - 1 >= v4)
          {
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
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (!*a3)
          {
            __break(1u);
            goto LABEL_163;
          }

          v107 = v31;
          v4 = *&v31[16 * a4 + 32];
          v108 = *&v31[16 * v69 + 40];
          sub_10044E8C8(*a3 + *(v155 + 72) * v4, *a3 + *(v155 + 72) * *&v31[16 * v69 + 32], (*a3 + *(v155 + 72) * v108), v68);
          if (v6)
          {
            goto LABEL_137;
          }

          if (v108 < v4)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1001A99A4(v107);
          }

          if (a4 >= *(v107 + 2))
          {
            goto LABEL_141;
          }

          v109 = &v107[16 * a4];
          *(v109 + 4) = v4;
          *(v109 + 5) = v108;
          v168 = v107;
          sub_1001A9918(v69);
          v31 = v168;
          v4 = *(v168 + 2);
          v15 = v154;
          if (v4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v74 = &v31[16 * v4 + 32];
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_142;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_143;
        }

        v81 = &v31[16 * v4];
        v83 = *v81;
        v82 = *(v81 + 1);
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_145;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_148;
        }

        if (v85 >= v77)
        {
          v103 = &v31[16 * v69 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_152;
          }

          if (v72 < v106)
          {
            v69 = v4 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_72;
      }

LABEL_3:
      v29 = a3[1];
      v30 = v149;
      a4 = v142;
      v20 = v156;
      if (v149 >= v29)
      {
        goto LABEL_126;
      }
    }
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_126:
  a4 = *v143;
  if (*v143)
  {
    v4 = v31;
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v9 = v155;
    if ((v132 & 1) == 0)
    {
      goto LABEL_161;
    }

    v133 = v4;
LABEL_129:
    v168 = v133;
    v4 = *(v133 + 2);
    if (v4 < 2)
    {
LABEL_137:

      return;
    }

    while (*a3)
    {
      v134 = *&v133[16 * v4];
      v135 = v133;
      v136 = *&v133[16 * v4 + 24];
      sub_10044E8C8(*a3 + *(v9 + 72) * v134, *a3 + *(v9 + 72) * *&v133[16 * v4 + 16], (*a3 + *(v9 + 72) * v136), a4);
      if (v6)
      {
        goto LABEL_137;
      }

      if (v136 < v134)
      {
        goto LABEL_153;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = sub_1001A99A4(v135);
      }

      if (v4 - 2 >= *(v135 + 2))
      {
        goto LABEL_154;
      }

      v137 = &v135[16 * v4];
      *v137 = v134;
      *(v137 + 1) = v136;
      v168 = v135;
      sub_1001A9918(v4 - 1);
      v133 = v168;
      v4 = *(v168 + 2);
      if (v4 <= 1)
      {
        goto LABEL_137;
      }
    }

LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
  }

  __break(1u);
}

void sub_10044D580(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for Date();
  __chkstk_darwin(v123);
  v122 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = &v109 - v12;
  v13 = *(a3 + 8);
  v114 = a3;
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = a4;
    }

    else
    {
LABEL_127:
      v103 = sub_1001A99A4(a4);
    }

    v130 = v103;
    v104 = *(v103 + 2);
    if (v104 >= 2)
    {
      a4 = 40;
      do
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *&v103[16 * v104];
        v107 = v103;
        a3 = *&v103[16 * v104 + 24];
        sub_10044EFF0((v105 + 40 * v106), (v105 + 40 * *&v103[16 * v104 + 16]), (v105 + 40 * a3), v5);
        if (v6)
        {
          break;
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001A99A4(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        *(v108 + 1) = a3;
        v130 = v107;
        sub_1001A9918(v104 - 1);
        v103 = v130;
        v104 = *(v130 + 2);
        a3 = v114;
      }

      while (v104 > 1);
    }

LABEL_105:

    return;
  }

  v14 = 0;
  v120 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v15;
    if (v14 + 1 >= v13)
    {
      v35 = v14 + 1;
    }

    else
    {
      v118 = v13;
      v110 = v6;
      v16 = *a3;
      sub_100007C5C(*a3 + 40 * (v14 + 1), &v127);
      v5 = 40 * v14;
      v17 = v16 + 40 * v14;
      sub_100007C5C(v17, v124);
      v18 = v128;
      v19 = v129;
      sub_1000066AC(&v127, v128);
      v20 = v121;
      (*(v19 + 32))(v18, v19);
      v22 = v125;
      v21 = v126;
      sub_1000066AC(v124, v125);
      v23 = v122;
      (*(v21 + 32))(v22, v21);
      LODWORD(v119) = static Date.> infix(_:_:)();
      v24 = v14;
      v25 = *v120;
      a4 = v123;
      (*v120)(v23, v123);
      v25(v20, a4);
      sub_100005A40(v124);
      sub_100005A40(&v127);
      v109 = v24;
      v26 = v24 + 2;
      v27 = v17 + 80;
      while (v118 != v26)
      {
        sub_100007C5C(v27, &v127);
        sub_100007C5C(v27 - 40, v124);
        v29 = v128;
        v28 = v129;
        sub_1000066AC(&v127, v128);
        v30 = v121;
        (*(v28 + 32))(v29, v28);
        v31 = v125;
        v32 = v126;
        sub_1000066AC(v124, v125);
        v33 = v122;
        (*(v32 + 32))(v31, v32);
        a4 = static Date.> infix(_:_:)() & 1;
        v34 = v123;
        v25(v33, v123);
        v25(v30, v34);
        sub_100005A40(v124);
        sub_100005A40(&v127);
        ++v26;
        v27 += 40;
        if ((v119 & 1) != a4)
        {
          v35 = v26 - 1;
          goto LABEL_11;
        }
      }

      v35 = v118;
      v6 = v110;
      a3 = v114;
      v14 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v35 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v35)
      {
        v36 = 40 * v35 - 40;
        v118 = v35;
        v37 = v35;
        v38 = v109;
        do
        {
          if (v38 != --v37)
          {
            v43 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v39 = v43 + v5;
            v40 = v43 + v36;
            sub_1001AB740((v43 + v5), &v127);
            v41 = *(v40 + 32);
            v42 = *(v40 + 16);
            *v39 = *v40;
            *(v39 + 16) = v42;
            *(v39 + 32) = v41;
            sub_1001AB740(&v127, v40);
          }

          ++v38;
          v36 -= 40;
          v5 += 40;
        }

        while (v38 < v37);
        a3 = v114;
        a4 = v111;
        v35 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v44 = *(a3 + 8);
    if (v35 < v44)
    {
      if (__OFSUB__(v35, v14))
      {
        goto LABEL_123;
      }

      if (v35 - v14 < a4)
      {
        if (__OFADD__(v14, a4))
        {
          goto LABEL_125;
        }

        if ((v14 + a4) >= v44)
        {
          v45 = *(a3 + 8);
        }

        else
        {
          v45 = v14 + a4;
        }

        if (v45 < v14)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v35 != v45)
        {
          break;
        }
      }
    }

    v46 = v35;
    if (v35 < v14)
    {
      goto LABEL_122;
    }

LABEL_32:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v113;
    }

    else
    {
      v15 = sub_1001A1D54(0, *(v113 + 2) + 1, 1, v113);
    }

    a4 = *(v15 + 2);
    v47 = *(v15 + 3);
    v48 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      v15 = sub_1001A1D54((v47 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v48;
    v49 = &v15[16 * a4];
    *(v49 + 4) = v14;
    *(v49 + 5) = v46;
    v50 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v46;
    if (a4)
    {
      while (1)
      {
        v5 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v15 + 4);
          v52 = *(v15 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_51:
          if (v54)
          {
            goto LABEL_111;
          }

          v67 = &v15[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_114;
          }

          v73 = &v15[16 * v5 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_118;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v5 = v48 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v77 = &v15[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_65:
        if (v72)
        {
          goto LABEL_113;
        }

        v80 = &v15[16 * v5];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_116;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v48)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v88 = v15;
        v89 = *&v15[16 * a4 + 32];
        v90 = *&v15[16 * v5 + 40];
        sub_10044EFF0((*a3 + 40 * v89), (*a3 + 40 * *&v15[16 * v5 + 32]), (*a3 + 40 * v90), v50);
        if (v6)
        {
          goto LABEL_105;
        }

        if (v90 < v89)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1001A99A4(v88);
        }

        if (a4 >= *(v88 + 2))
        {
          goto LABEL_108;
        }

        v91 = &v88[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v130 = v88;
        sub_1001A9918(v5);
        v15 = v130;
        v48 = *(v130 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v15[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_109;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_110;
      }

      v62 = &v15[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_112;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_115;
      }

      if (v66 >= v58)
      {
        v84 = &v15[16 * v5 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v53 < v87)
        {
          v5 = v48 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v13 = *(a3 + 8);
    v14 = v115;
    a4 = v111;
    if (v115 >= v13)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 40 * v35;
  v109 = v14;
  v92 = v14 - v35;
  v115 = v45;
LABEL_83:
  v117 = v5;
  v118 = v35;
  v116 = v92;
  while (1)
  {
    sub_100007C5C(v5, &v127);
    sub_100007C5C(v5 - 40, v124);
    v93 = v128;
    v94 = v129;
    sub_1000066AC(&v127, v128);
    v95 = v121;
    (*(v94 + 32))(v93, v94);
    v96 = v125;
    v97 = v126;
    sub_1000066AC(v124, v125);
    v98 = v122;
    (*(v97 + 32))(v96, v97);
    a4 = static Date.> infix(_:_:)();
    v99 = *v120;
    v100 = v123;
    (*v120)(v98, v123);
    v99(v95, v100);
    sub_100005A40(v124);
    sub_100005A40(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v35 = v118 + 1;
      v5 = v117 + 40;
      v46 = v115;
      v92 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v14 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_1001AB740(v5, &v127);
    v101 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v101;
    *(v5 + 32) = *(v5 - 8);
    sub_1001AB740(&v127, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_82;
    }
  }

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
}

uint64_t sub_10044DF24(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v123);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v121 = &v109 - v13;
  v14 = *(a3 + 8);
  v114 = a3;
  if (v14 < 1)
  {
    v16 = &_swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_1001A99A4(a4);
    }

    v130 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      a4 = 40;
      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *(result + 16 * v104);
        v107 = result;
        a3 = *(result + 16 * (v104 - 1) + 40);
        sub_10044F518((v105 + 40 * v106), (v105 + 40 * *(result + 16 * (v104 - 1) + 32)), (v105 + 40 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001A99A4(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        *(v108 + 1) = a3;
        v130 = v107;
        sub_1001A9918(v104 - 1);
        result = v130;
        v104 = *(v130 + 16);
        a3 = v114;
        if (v104 <= 1)
        {
        }
      }
    }
  }

  v15 = 0;
  v120 = (v12 + 8);
  v16 = &_swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v16;
    if (v15 + 1 >= v14)
    {
      v36 = v15 + 1;
    }

    else
    {
      v118 = v14;
      v110 = v6;
      v17 = *a3;
      sub_100007C5C(*a3 + 40 * (v15 + 1), &v127);
      v5 = 40 * v15;
      v18 = v17 + 40 * v15;
      sub_100007C5C(v18, v124);
      v19 = v128;
      v20 = v129;
      sub_1000066AC(&v127, v128);
      v21 = v121;
      (*(v20 + 24))(v19, v20);
      v23 = v125;
      v22 = v126;
      sub_1000066AC(v124, v125);
      v24 = v122;
      (*(v22 + 24))(v23, v22);
      LODWORD(v119) = static Date.> infix(_:_:)();
      v25 = v15;
      v26 = *v120;
      a4 = v123;
      (*v120)(v24, v123);
      v26(v21, a4);
      sub_100005A40(v124);
      result = sub_100005A40(&v127);
      v109 = v25;
      v27 = v25 + 2;
      v28 = v18 + 80;
      while (v118 != v27)
      {
        sub_100007C5C(v28, &v127);
        sub_100007C5C(v28 - 40, v124);
        v30 = v128;
        v29 = v129;
        sub_1000066AC(&v127, v128);
        v31 = v121;
        (*(v29 + 24))(v30, v29);
        v32 = v125;
        v33 = v126;
        sub_1000066AC(v124, v125);
        v34 = v122;
        (*(v33 + 24))(v32, v33);
        a4 = static Date.> infix(_:_:)() & 1;
        v35 = v123;
        v26(v34, v123);
        v26(v31, v35);
        sub_100005A40(v124);
        result = sub_100005A40(&v127);
        ++v27;
        v28 += 40;
        if ((v119 & 1) != a4)
        {
          v36 = v27 - 1;
          goto LABEL_11;
        }
      }

      v36 = v118;
      v6 = v110;
      a3 = v114;
      v15 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v36 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v36)
      {
        v37 = 40 * v36 - 40;
        v118 = v36;
        v38 = v36;
        v39 = v109;
        do
        {
          if (v39 != --v38)
          {
            v44 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v40 = v44 + v5;
            v41 = v44 + v37;
            sub_1001AB740((v44 + v5), &v127);
            v42 = *(v41 + 32);
            v43 = *(v41 + 16);
            *v40 = *v41;
            *(v40 + 16) = v43;
            *(v40 + 32) = v42;
            result = sub_1001AB740(&v127, v41);
          }

          ++v39;
          v37 -= 40;
          v5 += 40;
        }

        while (v39 < v38);
        a3 = v114;
        a4 = v111;
        v36 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v45 = *(a3 + 8);
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v15))
      {
        goto LABEL_123;
      }

      if (v36 - v15 < a4)
      {
        if (__OFADD__(v15, a4))
        {
          goto LABEL_125;
        }

        if ((v15 + a4) >= v45)
        {
          v46 = *(a3 + 8);
        }

        else
        {
          v46 = v15 + a4;
        }

        if (v46 < v15)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v47 = v36;
    if (v36 < v15)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v113;
    }

    else
    {
      result = sub_1001A1D54(0, *(v113 + 2) + 1, 1, v113);
      v16 = result;
    }

    a4 = *(v16 + 2);
    v48 = *(v16 + 3);
    v49 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_1001A1D54((v48 > 1), a4 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v49;
    v50 = &v16[16 * a4];
    *(v50 + 4) = v15;
    *(v50 + 5) = v47;
    v51 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v47;
    if (a4)
    {
      while (1)
      {
        v5 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v16 + 4);
          v53 = *(v16 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_51:
          if (v55)
          {
            goto LABEL_111;
          }

          v68 = &v16[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_114;
          }

          v74 = &v16[16 * v5 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_118;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v5 = v49 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v78 = &v16[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_65:
        if (v73)
        {
          goto LABEL_113;
        }

        v81 = &v16[16 * v5];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v49)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v89 = v16;
        v90 = *&v16[16 * a4 + 32];
        v91 = *&v16[16 * v5 + 40];
        sub_10044F518((*a3 + 40 * v90), (*a3 + 40 * *&v16[16 * v5 + 32]), (*a3 + 40 * v91), v51);
        if (v6)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1001A99A4(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v89[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v130 = v89;
        result = sub_1001A9918(v5);
        v16 = v130;
        v49 = *(v130 + 16);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v16[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v16[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v16[16 * v5 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v54 < v88)
        {
          v5 = v49 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v14 = *(a3 + 8);
    v15 = v115;
    a4 = v111;
    if (v115 >= v14)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 40 * v36;
  v109 = v15;
  v93 = v15 - v36;
  v115 = v46;
LABEL_83:
  v117 = v5;
  v118 = v36;
  v116 = v93;
  while (1)
  {
    sub_100007C5C(v5, &v127);
    sub_100007C5C(v5 - 40, v124);
    v94 = v128;
    v95 = v129;
    sub_1000066AC(&v127, v128);
    v96 = v121;
    (*(v95 + 24))(v94, v95);
    v97 = v125;
    v98 = v126;
    sub_1000066AC(v124, v125);
    v99 = v122;
    (*(v98 + 24))(v97, v98);
    a4 = static Date.> infix(_:_:)();
    v100 = *v120;
    v101 = v123;
    (*v120)(v99, v123);
    v100(v96, v101);
    sub_100005A40(v124);
    result = sub_100005A40(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v36 = v118 + 1;
      v5 = v117 + 40;
      v47 = v115;
      v93 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v15 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_1001AB740(v5, &v127);
    v102 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v102;
    *(v5 + 32) = *(v5 - 8);
    sub_1001AB740(&v127, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_82;
    }
  }

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
  return result;
}

void sub_10044E8C8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v70 - v12;
  __chkstk_darwin(v13);
  v15 = &v70 - v14;
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_94;
  }

  v21 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_95;
  }

  v22 = (a2 - a1) / v20;
  v87 = a1;
  v86 = a4;
  v84 = v20;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_51:
        v47 = a4 + v24;
        if (v24 < 1)
        {
          goto LABEL_91;
        }

        v48 = -v20;
        v78 = (v9 + 16);
        v79 = a4;
        v77 = (v9 + 8);
        v49 = a4 + v24;
        v84 = -v20;
        while (1)
        {
          v72 = v47;
          v50 = a2;
          a2 += v48;
          v80 = v50;
          while (1)
          {
            if (v50 <= a1)
            {
              v87 = v50;
              v85 = v72;
              goto LABEL_92;
            }

            v51 = a3;
            v76 = v47;
            v52 = *v78;
            v81 = v49 + v48;
            (v52)(v83);
            v52(v82, a2);
            v53 = DateComponents.era.getter();
            if (v54)
            {
              v55 = 1;
              v56 = v84;
              goto LABEL_67;
            }

            v75 = v53;
            v57 = DateComponents.era.getter();
            if (v58)
            {
              v55 = 1;
              v56 = v84;
              goto LABEL_67;
            }

            v74 = v57;
            v59 = DateComponents.year.getter();
            if (v60 & 1) != 0 || (v73 = v59, v61 = DateComponents.year.getter(), (v62) || (v71 = v61, v63 = DateComponents.month.getter(), (v64))
            {
              v55 = 1;
LABEL_66:
              v56 = v84;
              goto LABEL_67;
            }

            v70 = v63;
            v67 = DateComponents.month.getter();
            v55 = 1;
            if (v68)
            {
              goto LABEL_66;
            }

            v56 = v84;
            if (v74 >= v75)
            {
              if (v75 >= v74)
              {
                if (v71 >= v73)
                {
                  v55 = v73 >= v71 && v67 < v70;
                }
              }

              else
              {
                v55 = 0;
              }
            }

LABEL_67:
            a3 += v56;
            v65 = *v77;
            (*v77)(v82, v8);
            v65(v83, v8);
            if (v55)
            {
              break;
            }

            v66 = v81;
            v47 = v81;
            if (v51 < v49 || a3 >= v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v49 = v47;
            v50 = v80;
            v48 = v84;
            if (v66 <= v79)
            {
              a2 = v80;
              goto LABEL_91;
            }
          }

          if (v51 < v80 || a3 >= v80)
          {
            swift_arrayInitWithTakeFrontToBack();
            v47 = v76;
          }

          else
          {
            v47 = v76;
            if (v51 != v80)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v84;
          if (v49 <= v79)
          {
LABEL_91:
            v87 = a2;
            v85 = v47;
            goto LABEL_92;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = v84;
    goto LABEL_51;
  }

  v23 = v22 * v20;
  if (a4 < a1 || a1 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v82 = a3;
  v83 = (a4 + v23);
  v85 = a4 + v23;
  if (v23 >= 1 && a2 < a3)
  {
    v80 = *(v9 + 16);
    v81 = v9 + 16;
    v79 = (v9 + 8);
    while (1)
    {
      v26 = v18;
      v27 = v18;
      v28 = v15;
      v29 = v80;
      (v80)(v26, a2, v8);
      v30 = a4;
      (v29)(v28, a4, v8);
      v15 = v28;
      v18 = v27;
      v31 = DateComponents.era.getter();
      if (v32 & 1) != 0 || (v33 = v31, v34 = DateComponents.era.getter(), (v35) || (v36 = v34, v78 = DateComponents.year.getter(), (v37) || (v77 = DateComponents.year.getter(), (v38) || (v39 = DateComponents.month.getter(), (v40) || (v76 = v39, v44 = DateComponents.month.getter(), (v45) || v36 < v33 || v33 >= v36 && (v77 < v78 || v78 >= v77 && v44 < v76))
      {
        v41 = *v79;
        (*v79)(v15, v8);
        v41(v18, v8);
        v42 = v84;
        v43 = a2 + v84;
        if (a1 < a2 || a1 >= v43)
        {
          swift_arrayInitWithTakeFrontToBack();
          v42 = v84;
          a2 = v43;
          a4 = v30;
        }

        else
        {
          a4 = v30;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
            v42 = v84;
          }

          a2 = v43;
        }

        goto LABEL_32;
      }

      v46 = *v79;
      (*v79)(v15, v8);
      v46(v18, v8);
      v42 = v84;
      a4 = v30 + v84;
      if (a1 < v30 || a1 >= a4)
      {
        break;
      }

      if (a1 != v30)
      {
        swift_arrayInitWithTakeBackToFront();
LABEL_47:
        v42 = v84;
      }

      v86 = a4;
LABEL_32:
      a1 += v42;
      v87 = a1;
      if (a4 >= v83 || a2 >= v82)
      {
        goto LABEL_92;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_47;
  }

LABEL_92:
  sub_1004AB9DC(&v87, &v86, &v85);
}

uint64_t sub_10044EFF0(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for Date();
  __chkstk_darwin(v74);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v58 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 40 * v14);
      v11 = v34;
    }

    v17 = &a4[40 * v14];
    v15 = a4;
    if (a3 - a2 < 40)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v11 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v35;
      v36 = (v35 - 40);
      v37 = (v17 - 40);
      v38 = a3 - 40;
      v63 = v35 - 40;
      while (1)
      {
        v64 = v38;
        v41 = v38 + 40;
        sub_100007C5C(v37, v71);
        sub_100007C5C(v36, v68);
        v42 = v72;
        v43 = v73;
        sub_1000066AC(v71, v72);
        v44 = v66;
        (*(v43 + 32))(v42, v43);
        v45 = v69;
        v46 = v70;
        sub_1000066AC(v68, v69);
        v47 = v67;
        (*(v46 + 32))(v45, v46);
        v48 = static Date.> infix(_:_:)();
        v49 = *v61;
        v50 = v74;
        (*v61)(v47, v74);
        v49(v44, v50);
        sub_100005A40(v68);
        sub_100005A40(v71);
        if (v48)
        {
          break;
        }

        v15 = v62;
        v51 = v64;
        if (v41 != (v37 + 40))
        {
          v52 = *v37;
          v53 = *(v37 + 16);
          *(v64 + 32) = *(v37 + 32);
          *v51 = v52;
          v51[1] = v53;
        }

        v39 = v37 - 40;
        v38 = v51 - 40;
        v40 = v37 > v15;
        v37 -= 40;
        v36 = v63;
        if (!v40)
        {
          v17 = (v39 + 40);
          v33 = v59;
          goto LABEL_35;
        }
      }

      v17 = (v37 + 40);
      v15 = v62;
      v33 = v63;
      a3 = v64;
      if (v41 != v59)
      {
        v54 = *v63;
        v55 = *(v63 + 1);
        *(v64 + 32) = *(v63 + 4);
        *a3 = v54;
        *(a3 + 1) = v55;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v65)
        {
          continue;
        }
      }

      v17 = (v37 + 40);
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 40 * v13);
    v11 = v16;
  }

  v17 = &a4[40 * v13];
  if (a2 - a1 < 40 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v19 = (v11 + 8);
  v64 = v17;
  do
  {
    v65 = a1;
    sub_100007C5C(v18, v71);
    sub_100007C5C(v15, v68);
    v20 = v72;
    v21 = v73;
    sub_1000066AC(v71, v72);
    v22 = v66;
    (*(v21 + 32))(v20, v21);
    v23 = v69;
    v24 = v70;
    sub_1000066AC(v68, v69);
    v25 = v67;
    (*(v24 + 32))(v23, v24);
    LOBYTE(v23) = static Date.> infix(_:_:)();
    v26 = *v19;
    v27 = v74;
    (*v19)(v25, v74);
    v26(v22, v27);
    sub_100005A40(v68);
    sub_100005A40(v71);
    if (v23)
    {
      v28 = v18;
      v29 = v65;
      v30 = v65 == v18;
      v18 += 40;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v65;
    v30 = v65 == v15;
    v15 += 40;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 40;
    v17 = v64;
  }

  while (v15 < v64 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 40;
  if (v33 != v15 || v33 >= &v15[40 * v56])
  {
    memmove(v33, v15, 40 * v56);
  }

  return 1;
}

uint64_t sub_10044F518(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v74);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v58 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 40 * v14);
      v11 = v34;
    }

    v17 = &a4[40 * v14];
    v15 = a4;
    if (a3 - a2 < 40)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v11 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v35;
      v36 = (v35 - 40);
      v37 = (v17 - 40);
      v38 = a3 - 40;
      v63 = v35 - 40;
      while (1)
      {
        v64 = v38;
        v41 = v38 + 40;
        sub_100007C5C(v37, v71);
        sub_100007C5C(v36, v68);
        v42 = v72;
        v43 = v73;
        sub_1000066AC(v71, v72);
        v44 = v66;
        (*(v43 + 24))(v42, v43);
        v45 = v69;
        v46 = v70;
        sub_1000066AC(v68, v69);
        v47 = v67;
        (*(v46 + 24))(v45, v46);
        v48 = static Date.> infix(_:_:)();
        v49 = *v61;
        v50 = v74;
        (*v61)(v47, v74);
        v49(v44, v50);
        sub_100005A40(v68);
        sub_100005A40(v71);
        if (v48)
        {
          break;
        }

        v15 = v62;
        v51 = v64;
        if (v41 != (v37 + 40))
        {
          v52 = *v37;
          v53 = *(v37 + 16);
          *(v64 + 32) = *(v37 + 32);
          *v51 = v52;
          v51[1] = v53;
        }

        v39 = v37 - 40;
        v38 = v51 - 40;
        v40 = v37 > v15;
        v37 -= 40;
        v36 = v63;
        if (!v40)
        {
          v17 = (v39 + 40);
          v33 = v59;
          goto LABEL_35;
        }
      }

      v17 = (v37 + 40);
      v15 = v62;
      v33 = v63;
      a3 = v64;
      if (v41 != v59)
      {
        v54 = *v63;
        v55 = *(v63 + 1);
        *(v64 + 32) = *(v63 + 4);
        *a3 = v54;
        *(a3 + 1) = v55;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v65)
        {
          continue;
        }
      }

      v17 = (v37 + 40);
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 40 * v13);
    v11 = v16;
  }

  v17 = &a4[40 * v13];
  if (a2 - a1 < 40 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v19 = (v11 + 8);
  v64 = v17;
  do
  {
    v65 = a1;
    sub_100007C5C(v18, v71);
    sub_100007C5C(v15, v68);
    v20 = v72;
    v21 = v73;
    sub_1000066AC(v71, v72);
    v22 = v66;
    (*(v21 + 24))(v20, v21);
    v23 = v69;
    v24 = v70;
    sub_1000066AC(v68, v69);
    v25 = v67;
    (*(v24 + 24))(v23, v24);
    LOBYTE(v23) = static Date.> infix(_:_:)();
    v26 = *v19;
    v27 = v74;
    (*v19)(v25, v74);
    v26(v22, v27);
    sub_100005A40(v68);
    sub_100005A40(v71);
    if (v23)
    {
      v28 = v18;
      v29 = v65;
      v30 = v65 == v18;
      v18 += 40;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v65;
    v30 = v65 == v15;
    v15 += 40;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 40;
    v17 = v64;
  }

  while (v15 < v64 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 40;
  if (v33 != v15 || v33 >= &v15[40 * v56])
  {
    memmove(v33, v15, 40 * v56);
  }

  return 1;
}

uint64_t sub_10044FA40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100005994(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1001AB740(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10044FAD8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (BYTE1(a2) <= 3u)
  {
    if (BYTE1(a2) == 2)
    {
      if ((a4 & 0xFF00) == 0x200)
      {
        return 1;
      }
    }

    else
    {
      if (BYTE1(a2) != 3)
      {
        goto LABEL_17;
      }

      if ((a4 & 0xFF00) == 0x300)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(BYTE1(a2))
  {
    case 4u:
      return (a4 & 0xFF00) == 0x400;
    case 5u:
      return (a4 & 0xFF00) == 0x500;
    case 6u:
      return (a4 & 0xFF00) == 0x600;
  }

LABEL_17:
  if (BYTE1(a4) - 2 < 5 || a1 != a3)
  {
    return 0;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
  {
    return 0;
  }

  return (BYTE1(a4) ^ BYTE1(a2) ^ 1) & 1;
}

uint64_t sub_10044FC48(uint64_t a1)
{
  v2 = type metadata accessor for DateComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &_swiftEmptyDictionarySingleton;
  v39 = &_swiftEmptyDictionarySingleton;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return v6;
  }

  v8 = a1 + 32;
  v31 = (v3 + 8);
  v32 = v3 + 32;
  v30 = xmmword_1006D46C0;
  v33 = v2;
  v34 = v3;
  while (1)
  {
    sub_100007C5C(v8, &v36);
    v9 = v37;
    v10 = v38;
    sub_1000066AC(&v36, v37);
    sub_100448FFC(v9, v10, v5);
    v12 = sub_1004C59D4(v5);
    v13 = v6[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    if (v6[3] < v15)
    {
      sub_10048A618(v15, 1);
      v6 = v39;
      v17 = sub_1004C59D4(v5);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    if (v16)
    {
      (*v31)(v5, v2);
      v19 = v6[7];
      sub_1001AB740(&v36, v35);
      v20 = *(v19 + 8 * v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v12) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1001A1FE8(0, v20[2] + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1001A1FE8((v22 > 1), v23 + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      v3 = v34;
      v20[2] = v23 + 1;
      sub_1001AB740(v35, &v20[5 * v23 + 4]);
      v2 = v33;
    }

    else
    {
      sub_100140278(&qword_1008DE4F0);
      v24 = swift_allocObject();
      *(v24 + 16) = v30;
      sub_1001AB740(&v36, v24 + 32);
      v6[(v12 >> 6) + 8] |= 1 << v12;
      (*(v3 + 32))(v6[6] + *(v3 + 72) * v12, v5, v2);
      *(v6[7] + 8 * v12) = v24;
      v25 = v6[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v6[2] = v27;
    }

    v8 += 40;
    if (!--v7)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10044FF58(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4 = HIBYTE(a2);
  v5 = type metadata accessor for DateComponents();
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = &_swiftEmptyDictionarySingleton;
  v20 = &_swiftEmptyDictionarySingleton;
  if (v4 != 2 && v4 != 5)
  {
    v9 = *(a3 + 16);
    if (v9)
    {
      for (i = (a3 + 32); ; ++i)
      {
        v11 = *i;

        if (!sub_100627D48(v12))
        {
          break;
        }

        v13 = sub_100627D48(v11);

        if (!v13)
        {
          goto LABEL_6;
        }

        if (v13 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (!result)
          {
            break;
          }
        }

        else
        {
          result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            break;
          }
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v14 = *(v13 + 32);
        }

        v15 = v14;
        sub_10059C71C(v7);
        v16 = objc_allocWithZone(FIUIWorkoutStatistics);
        sub_1000059F8(0, &qword_1008ED7C0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v18 = [v16 initWithWorkouts:isa];

        sub_10055A158(v18, v7);
LABEL_6:
        if (!--v9)
        {
          return v20;
        }
      }

      goto LABEL_6;
    }
  }

  return result;
}

void *sub_100450144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = &_swiftEmptyArrayStorage;
    while (1)
    {
      sub_100007C5C(v2, &v26);
      v5 = v27;
      v4 = v28;
      sub_1000066AC(&v26, v27);
      v6 = (*(*(v4 + 8) + 16))(v5);
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = v6;
      v8 = static HealthDataConstants.workoutSessionQueueIdentifierProperty.getter();
      if (!*(v7 + 16))
      {
        break;
      }

      sub_100066F20(v8, v9);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

      sub_100005A40(&v26);
LABEL_4:
      v2 += 40;
      if (!--v1)
      {
        return v3;
      }
    }

LABEL_10:
    sub_1001AB740(&v26, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100185DC4(0, v3[2] + 1, 1);
      v3 = v29;
    }

    v14 = v3[2];
    v13 = v3[3];
    if (v14 >= v13 >> 1)
    {
      sub_100185DC4((v13 > 1), v14 + 1, 1);
    }

    v15 = v24;
    v16 = v25;
    v17 = sub_1001DF03C(v23, v24);
    __chkstk_darwin(v17);
    v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v20 + 16))(v19);
    sub_10044FA40(v14, v19, &v29, v15, v16);
    sub_100005A40(v23);
    v3 = v29;
    goto LABEL_4;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_100450368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = &_swiftEmptyArrayStorage;
    while (1)
    {
      sub_100007C5C(v2, &v26);
      v5 = v27;
      v4 = v28;
      sub_1000066AC(&v26, v27);
      v6 = (*(*(v4 + 8) + 16))(v5);
      if (v6)
      {
        v7 = v6;
        v8 = static HealthDataConstants.workoutSessionQueueIdentifierProperty.getter();
        if (*(v7 + 16))
        {
          sub_100066F20(v8, v9);
          v11 = v10;

          if (v11)
          {
            sub_1001AB740(&v26, v23);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = v3;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100185DC4(0, v3[2] + 1, 1);
              v3 = v29;
            }

            v14 = v3[2];
            v13 = v3[3];
            if (v14 >= v13 >> 1)
            {
              sub_100185DC4((v13 > 1), v14 + 1, 1);
            }

            v15 = v24;
            v16 = v25;
            v17 = sub_1001DF03C(v23, v24);
            __chkstk_darwin(v17);
            v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
            (*(v20 + 16))(v19);
            sub_10044FA40(v14, v19, &v29, v15, v16);
            sub_100005A40(v23);
            v3 = v29;
            goto LABEL_5;
          }
        }

        else
        {
        }
      }

      sub_100005A40(&v26);
LABEL_5:
      v2 += 40;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100450588(unsigned __int16 *a1, unsigned __int16 *a2, char *a3, unsigned __int16 *a4, uint64_t a5)
{
  v78 = type metadata accessor for Locale.Language();
  v79 = *(v78 - 8);
  v10 = __chkstk_darwin(v78);
  v76 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v68 - v12;
  v77 = type metadata accessor for Locale();
  v13 = *(v77 - 8);
  v14 = __chkstk_darwin(v77);
  v74 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v68 - v16;
  v17 = sub_100140278(&qword_1008E3708);
  v18 = __chkstk_darwin(v17 - 8);
  v72 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = &v68 - v20;
  v21 = a2 - a1;
  v22 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v22 = a2 - a1;
  }

  v23 = v22 >> 4;
  v24 = a3 - a2;
  v25 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v25 = a3 - a2;
  }

  v26 = v25 >> 4;
  if (v23 >= v26)
  {
    v47 = 8 * v26;
    if (a4 != a2 || &a2[v47] <= a4)
    {
      memmove(a4, a2, 16 * v26);
    }

    v48 = a2;
    v29 = &a4[v47];
    if (v24 < 16 || v48 <= a1)
    {
      goto LABEL_56;
    }

    v69 = (v79 + 4);
    v70 = (v13 + 8);
LABEL_35:
    v79 = v48;
    v68 = v48 - 8;
    a3 -= 16;
    while (1)
    {
      if (*(a5 + 16))
      {
        v49 = *(v79 - 2);
        v50 = *(v79 - 4);
        v51 = sub_1004C62B0(*(v29 - 2), *(v29 - 4));
        if (v52)
        {
          if (*(a5 + 16))
          {
            v53 = *(*(a5 + 56) + 8 * v51);
            v54 = sub_1004C62B0(v49, v50);
            if (v55)
            {
              v75 = v53;
              v73 = *(*(a5 + 56) + 8 * v54);
              v71 = objc_opt_self();
              v56 = [v71 currentLocale];
              v57 = v74;
              static Locale._unconditionallyBridgeFromObjectiveC(_:)();

              v58 = v76;
              Locale.language.getter();
              (*v70)(v57, v77);
              v59 = v72;
              Locale.Language.languageCode.getter();
              (*v69)(v58, v78);
              v60 = type metadata accessor for Locale.LanguageCode();
              v61 = *(v60 - 8);
              if ((*(v61 + 48))(v59, 1, v60) == 1)
              {
                sub_10000EA04(v59, &qword_1008E3708);
LABEL_46:
                if (v73 < v75)
                {
LABEL_49:
                  v65 = v68;
                  if (a3 + 16 != v79)
                  {
                    *a3 = *v68;
                  }

                  if (v29 <= a4 || (v48 = v65, v65 <= a1))
                  {
                    v48 = v65;
                    goto LABEL_56;
                  }

                  goto LABEL_35;
                }

                goto LABEL_47;
              }

              Locale.LanguageCode.identifier.getter();
              (*(v61 + 8))(v59, v60);
              v62 = String._bridgeToObjectiveC()();

              v63 = [v71 characterDirectionForLanguage:v62];

              if (v63 != 2)
              {
                goto LABEL_46;
              }

              if (v75 < v73)
              {
                goto LABEL_49;
              }
            }
          }
        }
      }

LABEL_47:
      v64 = v29 - 8;
      if (a3 + 16 != v29)
      {
        *a3 = *v64;
      }

      a3 -= 16;
      v29 -= 8;
      if (v64 <= a4)
      {
        v29 = v64;
        v48 = v79;
        goto LABEL_56;
      }
    }
  }

  v27 = a2;
  v28 = 8 * v23;
  if (a4 != a1 || &a1[v28] <= a4)
  {
    memmove(a4, a1, v28 * 2);
  }

  v29 = &a4[v28];
  if (v21 >= 16 && v27 < a3)
  {
    v69 = (v79 + 4);
    v70 = (v13 + 8);
    do
    {
      if (!*(a5 + 16) || (v30 = *a4, v31 = a4[4], v32 = sub_1004C62B0(*v27, v27[4]), (v33 & 1) == 0) || !*(a5 + 16) || (v76 = *(*(a5 + 56) + 8 * v32), v34 = sub_1004C62B0(v30, v31), (v35 & 1) == 0))
      {
LABEL_20:
        v45 = a4;
        v46 = a1 == a4;
        a4 += 8;
        if (v46)
        {
          goto LABEL_22;
        }

LABEL_21:
        *a1 = *v45;
        goto LABEL_22;
      }

      v74 = *(*(a5 + 56) + 8 * v34);
      v72 = objc_opt_self();
      v36 = [v72 currentLocale];
      v37 = v73;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v75;
      Locale.language.getter();
      (*v70)(v37, v77);
      v39 = v71;
      Locale.Language.languageCode.getter();
      v40 = v39;
      (*v69)(v38, v78);
      v41 = type metadata accessor for Locale.LanguageCode();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v40, 1, v41) == 1)
      {
        sub_10000EA04(v40, &qword_1008E3708);
      }

      else
      {
        v68 = Locale.LanguageCode.identifier.getter();
        v79 = v27;
        (*(v42 + 8))(v40, v41);
        v43 = String._bridgeToObjectiveC()();
        v27 = v79;

        v44 = [v72 characterDirectionForLanguage:v43];

        if (v44 == 2)
        {
          if (v76 >= v74)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }
      }

      if (v74 >= v76)
      {
        goto LABEL_20;
      }

LABEL_26:
      v45 = v27;
      v46 = a1 == v27;
      v27 += 8;
      if (!v46)
      {
        goto LABEL_21;
      }

LABEL_22:
      a1 += 8;
    }

    while (a4 < v29 && v27 < a3);
  }

  v48 = a1;
LABEL_56:
  v66 = (v29 - a4 + (v29 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v48 != a4 || v48 >= (a4 + v66))
  {
    memmove(v48, a4, v66);
  }

  return 1;
}

void sub_100450D50(char **a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = a1;
  v10 = *a1;

  v25 = a5;
  v26 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_1001A99A4(v26);
  }

  v21 = v9;
  *v9 = v26;
  v12 = v26 + 16;
  v11 = *(v26 + 2);
  if (v11 < 2)
  {
LABEL_10:

    *v21 = v26;
  }

  else
  {
    v22 = (v26 + 16);
    while (1)
    {
      v13 = *a3;
      if (!*a3)
      {
        break;
      }

      v14 = &v26[16 * v11];
      v9 = *v14;
      v15 = &v12[16 * v11];
      v16 = *(v15 + 1);
      v28 = (v13 + 16 * *v14);
      v27 = (v13 + 16 * *v15);
      v17 = (v13 + 16 * v16);

      v18 = v25;
      sub_100450588(v28, v27, v17, a2, a4);
      if (v6)
      {

        *v21 = v26;
        swift_bridgeObjectRelease_n();
        return;
      }

      if (v16 < v9)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v12 = v26 + 16;
      v19 = *v22;
      if (v11 - 2 >= *v22)
      {
        goto LABEL_13;
      }

      *v14 = v9;
      *(v14 + 1) = v16;
      v20 = v19 - v11;
      if (v19 < v11)
      {
        goto LABEL_14;
      }

      v11 = v19 - 1;
      memmove(v15, v15 + 16, 16 * v20);
      *v22 = v11;
      if (v11 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v21 = v26;

    __break(1u);
  }
}

uint64_t sub_100450F30(unsigned __int16 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v186 = a1;
  v206 = type metadata accessor for Locale.Language();
  v10 = *(v206 - 8);
  v11 = __chkstk_darwin(v206);
  v202 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v185 = &v180 - v14;
  __chkstk_darwin(v13);
  v182 = &v180 - v15;
  v205 = type metadata accessor for Locale();
  v16 = *(v205 - 8);
  v17 = __chkstk_darwin(v205);
  v201 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v184 = &v180 - v20;
  __chkstk_darwin(v19);
  v181 = &v180 - v21;
  v22 = sub_100140278(&qword_1008E3708);
  v23 = __chkstk_darwin(v22 - 8);
  v200 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v183 = &v180 - v26;
  __chkstk_darwin(v25);
  v209 = &_swiftEmptyArrayStorage;
  v196 = a3;
  v28 = a3[1];
  v207 = a5;
  if (v28 >= 1)
  {
    v180 = &v180 - v27;
    v203 = (v10 + 8);
    v204 = (v16 + 8);
    swift_bridgeObjectRetain_n();
    v189 = a6;
    v194 = &_swiftEmptyArrayStorage;
    v195 = a4;
    v29 = 0;
    v192 = a6;
    while (1)
    {
      v30 = v29;
      v31 = v29 + 1;
      v188 = v29;
      if (v29 + 1 >= v28)
      {
        v49 = v207;
        goto LABEL_50;
      }

      v32 = *v196 + 16 * v29;
      v33 = v207;
      if (*(v207 + 16))
      {
        break;
      }

      v50 = 0;
LABEL_16:
      v31 = v30 + 2;
      if (v30 + 2 < v28)
      {
        v51 = (v32 + 24);
        while (1)
        {
          v52 = v207;
          if (*(v207 + 16))
          {
            v53 = *(v51 - 1);
            v54 = *v51;
            v55 = sub_1004C62B0(*(v51 + 1), v51[8]);
            v30 = v188;
            if (v56)
            {
              if (*(v52 + 16))
              {
                v57 = *(*(v52 + 56) + 8 * v55);
                v58 = sub_1004C62B0(v53, v54);
                v30 = v188;
                if (v59)
                {
                  break;
                }
              }
            }
          }

          a4 = v195;
          if (v50)
          {
            v49 = v207;
            a6 = v192;
            if (v31 < v30)
            {
              goto LABEL_160;
            }

LABEL_39:
            if (v30 < v31)
            {
              v73 = 16 * v31 - 16;
              v74 = 16 * v30;
              v75 = v31;
              do
              {
                if (v30 != --v31)
                {
                  v77 = *v196;
                  if (!*v196)
                  {
                    goto LABEL_165;
                  }

                  v78 = (v77 + v74);
                  v79 = (v77 + v73);
                  v80 = *(v77 + v74);
                  v81 = *(v77 + v74 + 8);
                  if (v74 != v73 || v78 >= v79 + 1)
                  {
                    *v78 = *v79;
                  }

                  v76 = v77 + v73;
                  *v76 = v80;
                  *(v76 + 8) = v81;
                }

                ++v30;
                v73 -= 16;
                v74 += 16;
              }

              while (v30 < v31);
              v31 = v75;
              v30 = v188;
            }

            goto LABEL_50;
          }

LABEL_25:
          v51 += 8;
          if (v28 == ++v31)
          {
            v72 = v50;
            v31 = v28;
            goto LABEL_35;
          }
        }

        v60 = *(*(v52 + 56) + 8 * v58);
        v208 = objc_opt_self();
        v61 = [v208 currentLocale];
        v62 = v184;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = v185;
        Locale.language.getter();
        (*v204)(v62, v205);
        v64 = v183;
        Locale.Language.languageCode.getter();
        v65 = v64;
        (*v203)(v63, v206);
        v66 = type metadata accessor for Locale.LanguageCode();
        v67 = *(v66 - 8);
        if ((*(v67 + 48))(v65, 1, v66) == 1)
        {
          sub_10000EA04(v65, &qword_1008E3708);
        }

        else
        {
          Locale.LanguageCode.identifier.getter();
          v198 = v60;
          v199 = v57;
          (*(v67 + 8))(v65, v66);
          v57 = v199;
          v68 = String._bridgeToObjectiveC()();
          v60 = v198;

          v69 = [v208 characterDirectionForLanguage:v68];

          if (v69 == 2)
          {
            v70 = v57 < v60;
            goto LABEL_30;
          }
        }

        v70 = v60 < v57;
LABEL_30:
        v71 = v70;
        v30 = v188;
        a4 = v195;
        if (v50 != v71)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

LABEL_34:
      v72 = v50;
LABEL_35:
      v49 = v207;
      a6 = v192;
      if (v72)
      {
        if (v31 < v30)
        {
          goto LABEL_160;
        }

        goto LABEL_39;
      }

LABEL_50:
      v82 = v196[1];
      if (v31 < v82)
      {
        if (__OFSUB__(v31, v30))
        {
          goto LABEL_159;
        }

        v83 = v31;
        if (v31 - v30 >= a4)
        {
          goto LABEL_78;
        }

        if (__OFADD__(v188, a4))
        {
          goto LABEL_161;
        }

        if (v188 + a4 < v82)
        {
          v82 = v188 + a4;
        }

        if (v82 < v188)
        {
LABEL_162:
          __break(1u);
LABEL_163:
          v176 = v189;

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_164:
          v177 = v189;

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_165:
          v178 = v189;

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_166:
          v179 = v189;

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_167:

          result = swift_bridgeObjectRelease_n();
          __break(1u);
          return result;
        }

        v187 = v82;
        if (v31 == v82)
        {
LABEL_78:
          v30 = v188;
          goto LABEL_79;
        }

        v198 = *v196;
        v84 = &v198[16 * v31];
        v85 = (v188 - v31);
LABEL_61:
        v193 = v83;
        v190 = v85;
        v191 = v84;
        while (1)
        {
          if (!*(v49 + 16) || (a6 = (v84 - 16), v86 = *(v84 - 2), v87 = *(v84 - 4), v88 = sub_1004C62B0(*v84, *(v84 + 4)), (v89 & 1) == 0) || !*(v49 + 16) || (v90 = *(*(v49 + 56) + 8 * v88), v91 = sub_1004C62B0(v86, v87), (v92 & 1) == 0))
          {
LABEL_60:
            v83 = v193 + 1;
            v84 = v191 + 16;
            v85 = (v190 - 1);
            if (v193 + 1 == v187)
            {
              v31 = v187;
              a6 = v192;
              a4 = v195;
              goto LABEL_78;
            }

            goto LABEL_61;
          }

          v93 = *(*(v49 + 56) + 8 * v91);
          v208 = objc_opt_self();
          v94 = [v208 currentLocale];
          v95 = v201;
          static Locale._unconditionallyBridgeFromObjectiveC(_:)();

          v96 = v202;
          Locale.language.getter();
          (*v204)(v95, v205);
          v97 = v200;
          Locale.Language.languageCode.getter();
          v98 = v97;
          (*v203)(v96, v206);
          v99 = type metadata accessor for Locale.LanguageCode();
          v100 = *(v99 - 8);
          if ((*(v100 + 48))(v98, 1, v99) == 1)
          {
            break;
          }

          Locale.LanguageCode.identifier.getter();
          v199 = v85;
          (*(v100 + 8))(v98, v99);
          v85 = v199;
          v101 = String._bridgeToObjectiveC()();

          v102 = [v208 characterDirectionForLanguage:v101];

          v103 = v102 == 2;
          v49 = v207;
          if (!v103)
          {
            goto LABEL_72;
          }

          if (v90 >= v93)
          {
            goto LABEL_60;
          }

LABEL_73:
          if (!v198)
          {
            goto LABEL_163;
          }

          v104 = *v84;
          v105 = *(v84 + 4);
          *v84 = *a6;
          *(v84 - 4) = v105;
          *(v84 - 2) = v104;
          v84 -= 16;
          v106 = __CFADD__(v85, 1);
          v85 = (v85 + 1);
          if (v106)
          {
            goto LABEL_60;
          }
        }

        sub_10000EA04(v98, &qword_1008E3708);
LABEL_72:
        if (v93 >= v90)
        {
          goto LABEL_60;
        }

        goto LABEL_73;
      }

LABEL_79:
      if (v31 < v30)
      {
        goto LABEL_158;
      }

      v193 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1001A1D54(0, *(v194 + 2) + 1, 1, v194);
      }

      v108 = *(v194 + 2);
      v107 = *(v194 + 3);
      v109 = v108 + 1;
      v110 = v188;
      if (v108 >= v107 >> 1)
      {
        v168 = sub_1001A1D54((v107 > 1), v108 + 1, 1, v194);
        v110 = v188;
        v194 = v168;
      }

      v111 = v194;
      *(v194 + 2) = v109;
      v112 = v111 + 32;
      v113 = &v111[16 * v108 + 32];
      *v113 = v110;
      *(v113 + 1) = v193;
      v209 = v111;
      v199 = *v186;
      if (!v199)
      {
        goto LABEL_166;
      }

      if (v108)
      {
        v114 = v194;
        v198 = v111 + 32;
        while (1)
        {
          v115 = v109 - 1;
          if (v109 >= 4)
          {
            break;
          }

          if (v109 == 3)
          {
            v116 = *(v114 + 4);
            v117 = *(v114 + 5);
            v126 = __OFSUB__(v117, v116);
            v118 = v117 - v116;
            v119 = v126;
LABEL_100:
            if (v119)
            {
              goto LABEL_149;
            }

            v132 = &v114[16 * v109];
            v134 = *v132;
            v133 = *(v132 + 1);
            v135 = __OFSUB__(v133, v134);
            v136 = v133 - v134;
            v137 = v135;
            if (v135)
            {
              goto LABEL_152;
            }

            v138 = &v112[16 * v115];
            v140 = *v138;
            v139 = *(v138 + 1);
            v126 = __OFSUB__(v139, v140);
            v141 = v139 - v140;
            if (v126)
            {
              goto LABEL_155;
            }

            if (__OFADD__(v136, v141))
            {
              goto LABEL_156;
            }

            if (v136 + v141 >= v118)
            {
              if (v118 < v141)
              {
                v115 = v109 - 2;
              }

              goto LABEL_121;
            }

            goto LABEL_114;
          }

          v142 = &v114[16 * v109];
          v144 = *v142;
          v143 = *(v142 + 1);
          v126 = __OFSUB__(v143, v144);
          v136 = v143 - v144;
          v137 = v126;
LABEL_114:
          if (v137)
          {
            goto LABEL_151;
          }

          v145 = &v112[16 * v115];
          v147 = *v145;
          v146 = *(v145 + 1);
          v126 = __OFSUB__(v146, v147);
          v148 = v146 - v147;
          if (v126)
          {
            goto LABEL_154;
          }

          if (v148 < v136)
          {
            goto LABEL_3;
          }

LABEL_121:
          if (v115 - 1 >= v109)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
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
LABEL_151:
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
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          v153 = *v196;
          if (!*v196)
          {
            goto LABEL_164;
          }

          v154 = &v112[16 * v115 - 16];
          v155 = *v154;
          v156 = v115;
          v157 = &v112[16 * v115];
          a6 = *(v157 + 1);
          v158 = (v153 + 16 * *v154);
          v208 = (v153 + 16 * *v157);
          v159 = (v153 + 16 * a6);
          v160 = v207;

          v161 = v189;
          v162 = v197;
          sub_100450588(v158, v208, v159, v199, v160);
          if (v162)
          {

            v209 = v194;

            v169 = v192;
            goto LABEL_141;
          }

          v163 = v192;
          if (a6 < v155)
          {
            goto LABEL_144;
          }

          v197 = 0;
          v114 = v194;
          v164 = *(v194 + 2);
          if (v156 > v164)
          {
            goto LABEL_145;
          }

          *v154 = v155;
          v154[1] = a6;
          if (v156 >= v164)
          {
            goto LABEL_146;
          }

          a6 = v163;
          v109 = v164 - 1;
          memmove(v157, v157 + 16, 16 * (v164 - 1 - v156));
          *(v114 + 2) = v164 - 1;
          a4 = v195;
          v112 = v198;
          if (v164 <= 2)
          {
LABEL_3:
            v209 = v114;
            goto LABEL_4;
          }
        }

        v120 = &v112[16 * v109];
        v121 = *(v120 - 8);
        v122 = *(v120 - 7);
        v126 = __OFSUB__(v122, v121);
        v123 = v122 - v121;
        if (v126)
        {
          goto LABEL_147;
        }

        v125 = *(v120 - 6);
        v124 = *(v120 - 5);
        v126 = __OFSUB__(v124, v125);
        v118 = v124 - v125;
        v119 = v126;
        if (v126)
        {
          goto LABEL_148;
        }

        v127 = &v114[16 * v109];
        v129 = *v127;
        v128 = *(v127 + 1);
        v126 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v126)
        {
          goto LABEL_150;
        }

        v126 = __OFADD__(v118, v130);
        v131 = v118 + v130;
        if (v126)
        {
          goto LABEL_153;
        }

        if (v131 >= v123)
        {
          v149 = &v112[16 * v115];
          v151 = *v149;
          v150 = *(v149 + 1);
          v126 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v126)
          {
            goto LABEL_157;
          }

          if (v118 < v152)
          {
            v115 = v109 - 2;
          }

          goto LABEL_121;
        }

        goto LABEL_100;
      }

LABEL_4:
      v28 = v196[1];
      v29 = v193;
      if (v193 >= v28)
      {
        goto LABEL_138;
      }
    }

    v34 = *v32;
    v35 = *(v32 + 8);
    v36 = sub_1004C62B0(*(*v196 + 16 * v31), *(*v196 + 16 * v31 + 8));
    if ((v37 & 1) == 0 || !*(v33 + 16) || (v38 = *(*(v33 + 56) + 8 * v36), v39 = sub_1004C62B0(v34, v35), (v40 & 1) == 0))
    {
      v50 = 0;
LABEL_14:
      v30 = v188;
      goto LABEL_16;
    }

    v41 = *(*(v33 + 56) + 8 * v39);
    v42 = objc_opt_self();
    v43 = [v42 currentLocale];
    v44 = v181;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v182;
    Locale.language.getter();
    (*v204)(v44, v205);
    v46 = v180;
    Locale.Language.languageCode.getter();
    (*v203)(v45, v206);
    v47 = type metadata accessor for Locale.LanguageCode();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_10000EA04(v46, &qword_1008E3708);
    }

    else
    {
      Locale.LanguageCode.identifier.getter();
      v208 = v38;
      (*(v48 + 8))(v46, v47);
      v165 = String._bridgeToObjectiveC()();

      v38 = v208;
      v166 = [v42 characterDirectionForLanguage:v165];

      if (v166 == 2)
      {
        v167 = v38 < v41;
LABEL_132:
        v50 = v167;
        a4 = v195;
        goto LABEL_14;
      }
    }

    v167 = v41 < v38;
    goto LABEL_132;
  }

  swift_bridgeObjectRetain_n();
  v170 = a6;
LABEL_138:
  v171 = *v186;
  if (!*v186)
  {
    goto LABEL_167;
  }

  v172 = v207;

  v169 = a6;
  v173 = a6;
  v174 = v197;
  sub_100450D50(&v209, v171, v196, v172, v173);
  if (v174)
  {

LABEL_141:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void sub_100451E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v49 = a1;
  v47 = type metadata accessor for Locale.Language();
  v9 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Locale();
  v11 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E3708);
  __chkstk_darwin(v13 - 8);
  v43 = &v35 - v14;
  v36 = a2;
  if (a3 != a2)
  {
    v41 = (v9 + 8);
    v42 = (v11 + 8);
    v40 = *a4;
    v15 = v40 + 16 * a3;
    v16 = v49 - a3;
LABEL_5:
    v38 = v15;
    v39 = a3;
    v37 = v16;
    while (1)
    {
      if (!*(a5 + 16) || (v17 = *(v15 - 16), v18 = *(v15 - 8), v19 = sub_1004C62B0(*v15, *(v15 + 8)), (v20 & 1) == 0) || !*(a5 + 16) || (v21 = *(*(a5 + 56) + 8 * v19), v22 = sub_1004C62B0(v17, v18), (v23 & 1) == 0))
      {
LABEL_4:
        a3 = v39 + 1;
        v15 = v38 + 16;
        v16 = v37 - 1;
        if (v39 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      v49 = *(*(a5 + 56) + 8 * v22);
      v48 = objc_opt_self();
      v24 = [v48 currentLocale];
      v25 = v44;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = v46;
      Locale.language.getter();
      (*v42)(v25, v45);
      v27 = v43;
      Locale.Language.languageCode.getter();
      (*v41)(v26, v47);
      v28 = type metadata accessor for Locale.LanguageCode();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v27, 1, v28) == 1)
      {
        sub_10000EA04(v27, &qword_1008E3708);
      }

      else
      {
        Locale.LanguageCode.identifier.getter();
        (*(v29 + 8))(v27, v28);
        v30 = String._bridgeToObjectiveC()();

        v31 = [v48 characterDirectionForLanguage:v30];

        if (v31 == 2)
        {
          if (v21 >= v49)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      if (v49 >= v21)
      {
        goto LABEL_4;
      }

LABEL_16:
      if (!v40)
      {
        __break(1u);
        return;
      }

      v32 = *v15;
      v33 = *(v15 + 8);
      *v15 = *(v15 - 16);
      *(v15 - 8) = v33;
      *(v15 - 16) = v32;
      v15 -= 16;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_10045226C(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  v7 = a3;
  v8 = _minimumMergeRunLength(_:)(v6);
  if (v8 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {

        v12 = v7;
        sub_100451E58(0, v6, 1, a1, a2);
        swift_bridgeObjectRelease_n();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < -1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = v6 / 2;
  if (v6 <= 1)
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v11 + 2) = v10;
  }

  v14[0] = (v11 + 32);
  v14[1] = v10;

  v13 = v7;
  sub_100450F30(v14, v15, a1, v9, a2, v13);

  *(v11 + 2) = 0;
  swift_bridgeObjectRelease_n();
}

uint64_t sub_100452404(char **a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  v7 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1001AA550(v6);
  }

  v8 = *(v6 + 2);
  v11[0] = (v6 + 32);
  v11[1] = v8;

  v9 = v7;
  sub_10045226C(v11, a2, v9);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1004524D8(Swift::UInt *__dst, Swift::UInt *__src, Swift::UInt *a3, Swift::UInt *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v15)
  {
    v16 = 2 * v12;
    if (a4 != __dst || &__dst[v16] <= a4)
    {
      memmove(a4, __dst, v16 * 8);
      v8 = __src;
    }

    v18 = &v6[v16];
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_54;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v21 = *(v8 + 4);
      if ((v21 >> 8) - 2 >= 5)
      {
        v22 = *(v6 + 4);
        if ((v22 >> 8) - 2 >= 5)
        {
          if (*(a5 + 16))
          {
            v23 = *v8;
            v50 = *v6;
            v24 = v8;
            sub_1004C6208(*v8, v21);
            v8 = v24;
            if (v25)
            {
              if (*(a5 + 16))
              {
                sub_1004C6208(v50, v22);
                v8 = v24;
                if (v26)
                {
                  if (*(a5 + 16))
                  {
                    v27 = sub_1004C6208(v23, v21);
                    v8 = v24;
                    if (v28)
                    {
                      if (*(a5 + 16))
                      {
                        v29 = *(*(a5 + 56) + 8 * v27);
                        v30 = sub_1004C6208(v50, v22);
                        v8 = v24;
                        if ((v31 & 1) != 0 && *(*(a5 + 56) + 8 * v30) < v29)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v19 = v6;
      v20 = v9 == v6;
      v6 += 2;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 2;
      if (v6 >= v18)
      {
        goto LABEL_10;
      }
    }

    v19 = v24;
    v8 = v24 + 2;
    if (v9 == v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v19;
    goto LABEL_13;
  }

  v32 = 2 * v15;
  if (a4 != __src || &__src[v32] <= a4)
  {
    memmove(a4, __src, 16 * v15);
    v8 = __src;
  }

  v18 = &v6[v32];
  if (v13 >= 16 && v8 > v9)
  {
LABEL_33:
    v48 = v8 - 2;
    v7 -= 2;
    v34 = v18;
    v51 = v8;
    do
    {
      v36 = *(v34 - 16);
      v34 -= 16;
      v35 = v36;
      v37 = *(v34 + 8);
      if ((v37 >> 8) - 2 >= 5)
      {
        v38 = *(v8 - 4);
        if ((v38 >> 8) - 2 >= 5)
        {
          if (*(a5 + 16))
          {
            v49 = *(v8 - 2);
            sub_1004C6208(v35, v37);
            v8 = v51;
            if (v39)
            {
              if (*(a5 + 16))
              {
                sub_1004C6208(v49, v38);
                v8 = v51;
                if (v40)
                {
                  if (*(a5 + 16))
                  {
                    v41 = sub_1004C6208(v35, v37);
                    v8 = v51;
                    if (v42)
                    {
                      if (*(a5 + 16))
                      {
                        v43 = *(*(a5 + 56) + 8 * v41);
                        v44 = sub_1004C6208(v49, v38);
                        v8 = v51;
                        if ((v45 & 1) != 0 && *(*(a5 + 56) + 8 * v44) < v43)
                        {
                          if (v7 + 2 != v51)
                          {
                            *v7 = *v48;
                          }

                          if (v18 <= v6 || (v8 = v48, v48 <= v9))
                          {
                            v8 = v48;
                            goto LABEL_54;
                          }

                          goto LABEL_33;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v7 + 2 != v18)
      {
        *v7 = *v34;
      }

      v7 -= 2;
      v18 = v34;
    }

    while (v34 > v6);
    v18 = v34;
  }

LABEL_54:
  v46 = (v18 - v6 + (v18 - v6 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v8 != v6 || v8 >= (v6 + v46))
  {
    memmove(v8, v6, v46);
  }

  return 1;
}