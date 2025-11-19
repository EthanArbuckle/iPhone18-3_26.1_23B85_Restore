uint64_t sub_100033024()
{
  v1 = *(type metadata accessor for WorkoutDetailColumnMetricView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008E66B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000331A4()
{
  v1 = *(type metadata accessor for WorkoutDetailChartView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = type metadata accessor for WorkoutChartViewModel(0);

  v6 = v5[10];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v5[11], v7);

  return _swift_deallocObject(v0, v3 + v10, v2 | 7);
}

uint64_t sub_100033374()
{
  v1 = type metadata accessor for WorkoutChartGroupView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008E66B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 40);
  v8 = type metadata accessor for AccessibilityTechnologies();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  sub_100140278(&unk_1008F73B0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100033574()
{

  if (*(v0 + 96))
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000335E4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100033634()
{
  v1 = *(sub_100140278(&unk_1008EB5B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100033754()
{
  v1 = (type metadata accessor for LoadItemsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[13];
  DataType = type metadata accessor for TrainingLoadDataType();
  (*(*(DataType - 8) + 8))(v0 + v3 + v5, DataType);

  sub_1000A73A4(*(v0 + v3 + v1[15]), *(v0 + v3 + v1[15] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100033894()
{
  v1 = type metadata accessor for FriendsHighlightCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for FriendsHighlightCard();
  sub_10001D4F8(*(v7 + *(v9 + 20)), *(v7 + *(v9 + 20) + 8), *(v7 + *(v9 + 20) + 16));

  v10 = v5 + v1[8];
  if (*(v10 + 24))
  {
    sub_100005A40(v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100033A58()
{
  CardView = type metadata accessor for LoadCardView();
  v2 = *(*(CardView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(CardView - 1) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + CardView[5];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  Card = type metadata accessor for LoadCard();
  sub_10001D4F8(*(v7 + *(Card + 20)), *(v7 + *(Card + 20) + 8), *(v7 + *(Card + 20) + 16));

  v10 = v5 + CardView[6];
  if (*(v10 + 24))
  {
    sub_100005A40(v10);
  }

  sub_1000A73A4(*(v5 + CardView[7]), *(v5 + CardView[7] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100033C08()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100033C48()
{
  sub_10021D470(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100033C84()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033CC4()
{
  v1 = type metadata accessor for WorkoutVoiceOnboardingViewiOS();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1000A73A4(*(v5 + 32), *(v5 + 40));
  v6 = *(v1 + 28);
  sub_100140278(&qword_1008DB078);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 36);
  v9 = type metadata accessor for InferenceClient();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100033E4C()
{
  v1 = (type metadata accessor for EntryLinksListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_100140278(&qword_1008F9270);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100033FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v126 = a5;
  v132 = a3;
  v133 = a1;
  v131 = type metadata accessor for IndexPath();
  v134 = *(v131 - 1);
  __chkstk_darwin(v131);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100140278(&qword_1008EE760);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v121 - v8;
  v9 = sub_100140278(&qword_1008EE768);
  v127 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v121 - v10;
  v125 = sub_100140278(&qword_1008EE770);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v121 - v12;
  v122 = type metadata accessor for FitnessPlusSampleContentTip();
  __chkstk_darwin(v122);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackingTip = type metadata accessor for TrainingLoadTrackingTip();
  __chkstk_darwin(TrackingTip);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CustomizeSummaryTip();
  __chkstk_darwin(v18);
  v20 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(UICollectionViewCell) init];
  }

  v22 = Strong;
  v23 = IndexPath.section.getter();
  if (v23 > 1)
  {
    v24 = v134;
    if (v23 == 2)
    {
      v87 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v89 = [v133 dequeueReusableCellWithReuseIdentifier:v87 forIndexPath:isa];

      type metadata accessor for ActivityDashboardEditButtonCell();
      v90 = swift_dynamicCastClass();
      if (v90)
      {
        __chkstk_darwin(v90);
        *(&v121 - 2) = v22;
        v134 = v89;
        sub_100140278(&qword_1008EE790);
        sub_10014A6B0(&qword_1008EE798, &qword_1008EE790);
        UIHostingConfiguration<>.init(content:)();
        static Edge.Set.all.getter();
        v138 = v9;
        v139 = sub_10014A6B0(&qword_1008EE7A0, &qword_1008EE768);
        sub_100005994(v137);
        UIHostingConfiguration.margins(_:_:)();
        (*(v127 + 8))(v11, v9);
        UICollectionViewCell.contentConfiguration.setter();
      }

      return v89;
    }

    if (v23 == 3)
    {
      v64 = String._bridgeToObjectiveC()();
      v65 = IndexPath._bridgeToObjectiveC()().super.isa;
      v66 = [v133 dequeueReusableCellWithReuseIdentifier:v64 forIndexPath:v65];

      type metadata accessor for ActivityDashboardEntryLinksButtonCell();
      v67 = v66;
      v68 = swift_dynamicCastClass();
      if (v68)
      {
        __chkstk_darwin(v68);
        *(&v121 - 2) = v22;
        v69 = v66;
        sub_100140278(&qword_1008EE778);
        sub_10014A6B0(&qword_1008EE780, &qword_1008EE778);
        v70 = v128;
        UIHostingConfiguration<>.init(content:)();
        static Edge.Set.all.getter();
        v71 = v130;
        v138 = v130;
        v139 = sub_10014A6B0(&qword_1008EE788, &qword_1008EE760);
        sub_100005994(v137);
        UIHostingConfiguration.margins(_:_:)();
        (*(v129 + 8))(v70, v71);
        UICollectionViewCell.contentConfiguration.setter();
      }

      return v67;
    }

LABEL_26:
    v72 = static os_log_type_t.error.getter();
    v73 = HKLogActivity;
    v74 = v131;
    (v24)[2](v7, a2, v131);
    if (os_log_type_enabled(v73, v72))
    {
      v75 = v73;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v137[0] = v77;
      *v76 = 136315394;
      v78 = _typeName(_:qualified:)();
      v80 = sub_10000AFDC(v78, v79, v137);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2048;
      v81 = IndexPath.section.getter();
      (v24[1])(v7, v74);
      *(v76 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v75, v72, "%s Found unexpected section with value: %ld. Unable to configure cell.", v76, 0x16u);
      sub_100005A40(v77);
    }

    else
    {
      (v24[1])(v7, v74);
    }

    return 0;
  }

  if (!v23)
  {

    v82 = String._bridgeToObjectiveC()();

    v83 = IndexPath._bridgeToObjectiveC()().super.isa;
    v84 = [v133 dequeueReusableCellWithReuseIdentifier:v82 forIndexPath:v83];

    type metadata accessor for TipUICollectionViewCell();
    v85 = swift_dynamicCastClass();
    v134 = v84;
    if (v85)
    {
      v133 = v85;
      v86 = v84;
    }

    else
    {
      v133 = 0;
    }

    v130 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_customizeSummaryTip;
    sub_100479054(&v22[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_customizeSummaryTip], v20, type metadata accessor for CustomizeSummaryTip);
    v91 = static UUID.== infix(_:_:)();
    v92 = type metadata accessor for UUID();
    v131 = *(*(v92 - 8) + 8);
    (v131)(v20, v92);
    if (v91)
    {
      v93 = v133;
      if (v133)
      {
        v94 = objc_opt_self();
        v95 = v93;
        v96 = [v94 grayColor];
        [v95 setTintColor:v96];

        v138 = v18;
        v139 = sub_100026E98(&unk_1008EE7F0, type metadata accessor for CustomizeSummaryTip);
        v97 = sub_100005994(v137);
        sub_100479054(&v22[v130], v97, type metadata accessor for CustomizeSummaryTip);
        *(swift_allocObject() + 16) = v22;
        v98 = v95;
        v99 = v22;
        v100 = TipUICollectionViewCell.configureTip(_:arrowEdge:actionHandler:)();

        sub_100005A40(v137);
      }

      else
      {
      }
    }

    else
    {
      v101 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_trainingLoadTip;
      sub_100479054(&v22[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_trainingLoadTip], v17, type metadata accessor for TrainingLoadTrackingTip);
      v102 = static UUID.== infix(_:_:)();
      v103 = v17;
      v104 = v131;
      (v131)(v103, v92);
      if (v102)
      {
        v105 = v134;
        v106 = v133;
        if (v133)
        {
          sub_1000059F8(0, &qword_1008E7FC0);
          v107 = v106;
          v108 = static UIColor.keyTint.getter();
          [v107 setTintColor:v108];

          v138 = TrackingTip;
          v139 = sub_100026E98(&qword_1008EE7E8, type metadata accessor for TrainingLoadTrackingTip);
          v109 = sub_100005994(v137);
          sub_100479054(&v22[v101], v109, type metadata accessor for TrainingLoadTrackingTip);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v110 = v107;

          v111 = TipUICollectionViewCell.configureTip(_:arrowEdge:actionHandler:)();

          sub_100005A40(v137);
        }

        else
        {
        }

        return v105;
      }

      v112 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_sampleContentTip;
      sub_100479054(&v22[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_sampleContentTip], v14, type metadata accessor for FitnessPlusSampleContentTip);
      v113 = static UUID.== infix(_:_:)();
      v104(v14, v92);
      if (v113)
      {
        v114 = v134;
        v115 = v133;
        if (v133)
        {
          sub_1000059F8(0, &qword_1008E7FC0);
          v116 = v115;
          v117 = static UIColor.keyTint.getter();
          [v116 setTintColor:v117];

          v138 = v122;
          v139 = sub_100026E98(&qword_1008EBCF0, type metadata accessor for FitnessPlusSampleContentTip);
          v118 = sub_100005994(v137);
          sub_100479054(&v22[v112], v118, type metadata accessor for FitnessPlusSampleContentTip);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v119 = v116;

          v120 = TipUICollectionViewCell.configureTip(_:arrowEdge:actionHandler:)();

          sub_100005A40(v137);
        }

        else
        {
        }

        return v114;
      }
    }

    return v134;
  }

  v24 = v134;
  if (v23 != 1)
  {
    goto LABEL_26;
  }

  v25 = v22;
  v26 = String._bridgeToObjectiveC()();
  v27 = IndexPath._bridgeToObjectiveC()().super.isa;
  v28 = [v133 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v27];

  type metadata accessor for ActivityDashboardCardCell();
  v29 = v28;
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    return v28;
  }

  v31 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator;
  v32 = *(*&v25[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator] + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_cardForId);
  if (!*(v32 + 16))
  {
    v34 = v25;
LABEL_50:

    return v29;
  }

  v33 = v30;
  v34 = v29;

  v35 = sub_10005F9DC(v132);
  if ((v36 & 1) == 0)
  {

    goto LABEL_50;
  }

  sub_100007C5C(*(v32 + 56) + 40 * v35, v137);

  result = [v25 view];
  if (result)
  {
    v38 = result;
    v39 = [result window];

    if (v39)
    {
      [v39 bounds];
    }

    v40 = v25;
    v41 = *&v25[v31];
    v42 = *&v25[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dashboardCardCellViewCache];
    v43 = *&v40[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_loadingCardHeightProvider];
    v44 = v41[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode];
    v45 = type metadata accessor for SummaryCoordinator();
    v136[4] = &off_100856CB0;
    v136[3] = v45;
    v136[0] = v41;
    v46 = *&v33[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController];
    *&v33[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController] = v40;
    v47 = v40;
    v48 = v41;

    sub_100007C5C(v136, v135);
    v49 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_100060E68(v135, &v33[v49], &qword_1008EE7A8);
    swift_endAccess();
    *&v33[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_loadingCardHeightProvider] = v43;

    sub_100007C5C(v137, v135);
    v50 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_card;
    swift_beginAccess();
    sub_100060E68(v135, &v33[v50], &qword_1008DCC60);
    v51 = swift_endAccess();
    __chkstk_darwin(v51);
    *(&v121 - 6) = v137;
    *(&v121 - 5) = v47;
    *(&v121 - 4) = v33;
    *(&v121 - 3) = v42;
    *(&v121 - 16) = v44;
    sub_100140278(&qword_1008EE7B0);
    sub_100478D30();
    v52 = v123;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v53 = v125;
    v135[3] = v125;
    v135[4] = sub_10014A6B0(&qword_1008EE7E0, &qword_1008EE770);
    sub_100005994(v135);
    UIHostingConfiguration.margins(_:_:)();
    (*(v124 + 8))(v52, v53);
    UICollectionViewCell.contentConfiguration.setter();
    v54 = v138;
    v55 = v139;
    sub_1000066AC(v137, v138);
    if ((*(v55 + 32))(v54, v55))
    {
      v56 = v138;
      v57 = v139;
      sub_1000066AC(v137, v138);
      v58 = (*(v57 + 16))(v56, v57);
      v62 = v60 != 3 || (v58 | v59) != 0;
      sub_10001D4F8(v58, v59, v60);
      v63 = &v33[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling];
      if (v33[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling] == v62)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v63 = &v33[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling];
      if ((v33[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling] & 1) == 0)
      {
LABEL_57:
        sub_100005A40(v136);

        sub_100005A40(v137);
        return v29;
      }

      LOBYTE(v62) = 0;
    }

    sub_1006712E8(v62, v33);
    *v63 = v62;
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035310()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000353B8(double a1, double a2, float a3, float a4)
{
  v9 = sub_100140278(&qword_1008DCC58);
  __chkstk_darwin(v9 - 8);
  v11 = v57 - v10 + 16;
  v12 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_card;
  swift_beginAccess();
  sub_10001B104(&v4[v12], &v63, &qword_1008DCC60);
  if (v66)
  {
    sub_100006260(&v63, v62);
    v13 = [v4 window];
    v14 = a1;
    if (v13)
    {
      v15 = v13;
      v16 = sub_1000358B4([v13 interfaceOrientation]);
      [v15 bounds];
      if (v16)
      {
        Width = CGRectGetWidth(*&v17);
      }

      else
      {
        Width = CGRectGetHeight(*&v17);
      }

      v14 = Width;
    }

    v26 = type metadata accessor for DynamicTypeSize();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v27 = sub_10001DB1C(v62, v11, v14);
    sub_100007C5C(v62, &v63);
    *&v28 = COERCE_DOUBLE(sub_10001E120(&v63, v11, v27));
    v30 = v29;
    sub_10000EA04(&v63, &qword_1008DCC60);
    sub_10000EA04(v11, &qword_1008DCC58);
    if (v30)
    {
      v31 = type metadata accessor for ActivityDashboardCardCell();
      v60.receiver = v4;
      v60.super_class = v31;
      *&v32 = a3;
      *&v33 = a4;
      objc_msgSendSuper2(&v60, "systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:", a1, a2, v32, v33);
      v35 = v34;
    }

    else
    {
      v35 = *&v28;
    }

    sub_10001B104(&v4[v12], &v63, &qword_1008DCC60);
    if (v66)
    {
      sub_100006260(&v63, v57);
      v36 = v58;
      v37 = v59;
      sub_1000066AC(v57, v58);
      if ((*(v37 + 56))(v36, v37))
      {
        v38 = *&v4[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_loadingCardHeightProvider];
        if (v38)
        {
          v39 = v58;
          v40 = v59;
          sub_1000066AC(v57, v58);
          v41 = *(v40 + 16);

          v42 = v41(v39, v40);
          v44 = v43;
          v46 = v45;
          v47 = v58;
          v48 = v59;
          sub_1000066AC(v57, v58);
          v49 = (*(v48 + 24))(v47, v48);
          v50 = [objc_opt_self() sharedApplication];
          v51 = [v50 preferredContentSizeCategory];

          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          swift_beginAccess();
          *&v63 = v42;
          *(&v63 + 1) = v44;
          v64 = v46;
          v65 = v49 & 1;
          v66 = v52;
          v67 = v54;
          sub_10001D510(v42, v44, v46);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = *(v38 + 16);
          *(v38 + 16) = 0x8000000000000000;
          sub_1000359C0(&v63, isUniquelyReferenced_nonNull_native, v35);
          sub_10001D4F8(v42, v44, v46);

          *(v38 + 16) = v56;
          swift_endAccess();

          sub_1000433F0();

          sub_10001D4F8(v42, v44, v46);
        }
      }

      sub_100005A40(v62);
      return sub_100005A40(v57);
    }

    else
    {
      sub_100005A40(v62);
      return sub_10000EA04(&v63, &qword_1008DCC60);
    }
  }

  else
  {
    sub_10000EA04(&v63, &qword_1008DCC60);
    v22 = type metadata accessor for ActivityDashboardCardCell();
    v61.receiver = v4;
    v61.super_class = v22;
    *&v23 = a3;
    *&v24 = a4;
    return objc_msgSendSuper2(&v61, "systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:", a1, a2, v23, v24);
  }
}

unint64_t sub_1000358C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *(a1 + 17);
  Hasher.init(_seed:)();
  v9._countAndFlagsBits = v2;
  v9._object = v3;
  sub_100035B30(v9, v4);
  String.hash(into:)();

  if (!v4 || v4 == 2)
  {
    Hasher._combine(_:)(v2);
  }

  else if (v4 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(v7);
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return sub_100043054(a1, v5);
}

unint64_t sub_1000359C0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000358C4(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1004964E4();
    result = v17;
    goto LABEL_8;
  }

  sub_10048F070(v14, a2 & 1);
  result = sub_1000358C4(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v20 = *a1;
    v28 = *(a1 + 16);
    v26 = *(a1 + 24);
    v27 = v20;
    v19[(result >> 6) + 8] |= 1 << result;
    v21 = v19[6] + 40 * result;
    *(v21 + 32) = *(a1 + 32);
    v22 = *(a1 + 16);
    *v21 = v20;
    *(v21 + 16) = v22;
    *(v19[7] + 8 * result) = a3;
    v23 = v19[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v19[2] = v24;
      sub_1004A8DAC(&v27, v25);
      return sub_1002CC474(&v26, v25);
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100035B30(Swift::String a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 0x5F646E65697266;
      String.append(_:)(a1);
      return v5;
    }

    v5 = 0;
    v2._countAndFlagsBits = 0x5F63697274656DLL;
    v2._object = 0xE700000000000000;
    String.append(_:)(v2);
LABEL_6:
    _print_unlocked<A, B>(_:_:)();
    return v5;
  }

  if (a2 == 2)
  {
    v5 = 0;
    v3._countAndFlagsBits = 0x5F646E657274;
    v3._object = 0xE600000000000000;
    String.append(_:)(v3);
    goto LABEL_6;
  }

  if (a1._countAndFlagsBits > 4uLL)
  {
    if (a1._countAndFlagsBits <= 6uLL)
    {
      if (a1._countAndFlagsBits ^ 5 | a1._object)
      {
        return 0xD000000000000018;
      }

      else
      {
        return 0xD000000000000011;
      }
    }

    else if (a1._countAndFlagsBits ^ 7 | a1._object)
    {
      if (a1._countAndFlagsBits ^ 8 | a1._object)
      {
        return 0xD000000000000011;
      }

      else
      {
        return 0x73646E657274;
      }
    }

    else
    {
      return 0x54676F6C61746163;
    }
  }

  else if (a1._countAndFlagsBits <= 1uLL)
  {
    if (a1._countAndFlagsBits | a1._object)
    {
      return 1684107116;
    }

    else
    {
      return 0x73676E6972;
    }
  }

  else if (a1._countAndFlagsBits ^ 2 | a1._object)
  {
    if (a1._countAndFlagsBits ^ 3 | a1._object)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x6472617761;
    }
  }

  else
  {
    return 0x79726F74736968;
  }
}

unint64_t sub_100035D88()
{
  result = qword_1008F8CA8;
  if (!qword_1008F8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8CA8);
  }

  return result;
}

uint64_t sub_100035DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100035E24(void *a1)
{
  v3 = v1;
  v5 = sub_100140278(&qword_1008F8C90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000066AC(a1, a1[3]);
  sub_100057B48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v10[15] = 0;
  sub_100057B9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100036090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100036110(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();
  swift_errorRetain();
  v16 = a3;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = a4;
  v18[5] = v14;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a6;

  sub_10026E198(0, 0, v12, &unk_1006DBD48, v18);
}

uint64_t sub_1000362C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100036724(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&unk_1008F2010) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_100036F34(a1, a2, v2 + v6, *v7, v7[1], &unk_1008F2010, &unk_1006D6780, &unk_1008581D0, sub_1004267A8);
}

uint64_t sub_100036890(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v42 = sub_100140278(&unk_1008E4F30);
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v42);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v45 = sub_100140278(&unk_1008F2010);
  v43 = *(v45 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v45);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v40 - v12;
  __chkstk_darwin(v13);
  v46 = &v40 - v14;
  v15 = type metadata accessor for ServiceSubscriptionRequest();
  v48 = *(v15 - 8);
  v49 = v15;
  __chkstk_darwin(v15);
  v47 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ServiceSubscriptionRequest.init(authenticationBehavior:cacheBehavior:)();
  v41 = v2;
  sub_1000066AC((v2 + 32), *(v2 + 56));
  dispatch thunk of ServiceSubscriptionClientProtocol.fetchServiceSubscription(with:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v51;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1001FF190;
  *(v18 + 24) = v17;
  v19 = v42;
  (*(v4 + 16))(v6, v9, v42);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v22 + v20;
  v24 = v19;
  (*(v4 + 32))(v23, v6, v19);
  v25 = (v22 + v21);
  *v25 = sub_1001FF1AC;
  v25[1] = v18;

  v26 = v50;
  Promise.init(asyncOperation:)();
  (*(v4 + 8))(v9, v24);
  v27 = swift_allocObject();
  v27[2] = v51;
  v27[3] = a2;
  v27[4] = v41;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1001FF1B4;
  *(v28 + 24) = v27;
  v29 = v43;
  v30 = v44;
  v31 = v45;
  (*(v43 + 16))(v44, v26, v45);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = swift_allocObject();
  (*(v29 + 32))(v33 + v32, v30, v31);
  v34 = (v33 + ((v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_100173A14;
  v34[1] = v28;

  v35 = v46;
  Promise.init(asyncOperation:)();
  v36 = *(v29 + 8);
  v36(v50, v31);
  v37 = Promise.operation.getter();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v37(sub_100173A1C, v38);

  v36(v35, v31);
  return (*(v48 + 8))(v47, v49);
}

uint64_t sub_100036DFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036E48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036E9C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100140278(a6);
  v13 = Promise.operation.getter();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a4;
  v14[5] = a5;

  v13(a9, v14);
}

void sub_10003702C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Calendar();
  sub_10001AC90(v9, qword_100924FE8);
  v10 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = Calendar.isDateInToday(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    v12 = [a1 duration];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() hourUnit];
      [v13 doubleValueForUnit:v14];
      v16 = v15;

      swift_beginAccess();
      v17 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_10003732C(0, *(v17 + 2) + 1, 1, v17);
        *(a3 + 16) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_10003732C((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      v21 = &v17[16 * v20];
      *(v21 + 4) = v16;
      v21[40] = 0;
      *(a3 + 16) = v17;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v22 = *(a3 + 16);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v22;
      if ((v23 & 1) == 0)
      {
        v22 = sub_10003732C(0, *(v22 + 2) + 1, 1, v22);
        *(a3 + 16) = v22;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = sub_10003732C((v24 > 1), v25 + 1, 1, v22);
      }

      *(v22 + 2) = v25 + 1;
      v26 = &v22[16 * v25];
      *(v26 + 4) = 0;
      v26[40] = 1;
      *(a3 + 16) = v22;
      swift_endAccess();
    }
  }
}

unint64_t sub_100037340(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EF920);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100140278(&qword_1008EEE10);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001B104(v9, v5, &qword_1008EF920);
      result = sub_1004C5CD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for IndexPath();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ImpressionMetrics();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100037560()
{
  v1 = sub_100140278(&qword_1008E0310);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_100140278(&qword_1008DBEE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  *(v0 + 16) = 1;
  *(v0 + 24) = sub_1000378F4(_swiftEmptyArrayStorage);
  *(v0 + 32) = sub_1000378F4(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC10FitnessApp26DashboardCardCellViewCache__fitnessPlusUpNextCardCurrentPage;
  v15 = 0;
  Published.init(initialValue:)();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC10FitnessApp26DashboardCardCellViewCache__fitnessPlusUpNextCardImageMap;
  v15 = sub_1000379D4(_swiftEmptyArrayStorage);
  sub_100140278(&unk_1008E0190);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v11, v4, v1);
  v12 = OBJC_IVAR____TtC10FitnessApp26DashboardCardCellViewCache__friendsHighlightCardCurrentPage;
  v15 = 0;
  Published.init(initialValue:)();
  v10(v0 + v12, v8, v5);
  return v0;
}

void sub_1000377BC()
{
  if (!qword_1008DBC38)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DBC38);
    }
  }
}

void sub_10003780C()
{
  sub_1000377BC();
  if (v0 <= 0x3F)
  {
    sub_100042598();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1000378F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EF068);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1004C5500(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000379D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008EEBB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100066F20(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Aggregate(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100037B3C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v41 - v5;
  v48 = sub_100140278(&qword_1008F3638);
  __chkstk_darwin(v48);
  v44 = &v41 - v7;
  v9 = *v0;
  v8 = v0[1];
  v10 = *(v8 + 16);
  v11 = &_swiftEmptyArrayStorage;
  v49 = *v0;
  v51 = v1;
  if (v10)
  {
    v54 = &_swiftEmptyArrayStorage;
    sub_100020F7C(0, v10, 0);
    v11 = v54;
    v12 = v8 + 32;
    do
    {
      Date.init(timeIntervalSinceReferenceDate:)();
      v54 = v11;
      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        sub_100020F7C(v13 > 1, v14 + 1, 1);
        v11 = v54;
      }

      v11[2] = v14 + 1;
      (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v6, v1);
      v12 += 8;
      --v10;
    }

    while (v10);
    v9 = v49;
  }

  v56 = v9;
  v15 = v11[2];

  v17 = v44;
  if (v15)
  {
    v18 = 0;
    v46 = (v2 + 32);
    v47 = v2 + 16;
    v19 = v9 + 48;
    v42 = v15 - 1;
    v45 = &_swiftEmptyArrayStorage;
    v43 = v9 + 48;
    do
    {
      v20 = (v19 + 24 * v18);
      v21 = v18;
      while (1)
      {
        if (v21 >= v11[2])
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        result = (*(v2 + 16))(v50, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, v51);
        v22 = *(v9 + 16);
        if (v21 == v22)
        {

          sub_10000EA04(&v56, &qword_1008DE428);
          (*(v2 + 8))(v50, v51);
          goto LABEL_25;
        }

        if (v21 >= v22)
        {
          goto LABEL_27;
        }

        v23 = *(v20 - 2);
        v24 = *(v20 - 1);
        v25 = *v20;
        v26 = v17 + *(v48 + 48);
        (*v46)(v17, v50, v51);
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v25;
        if ((v25 & 1) == 0)
        {
          break;
        }

        ++v21;
        result = sub_10000EA04(v17, &qword_1008F3638);
        v20 += 24;
        v9 = v49;
        if (v15 == v21)
        {
          goto LABEL_23;
        }
      }

      v54 = 0;
      v55 = 0xE000000000000000;
      sub_10057FAA0();
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 2112032;
      v28._object = 0xE300000000000000;
      String.append(_:)(v28);
      v52 = v23;
      v53 = v24;
      _print_unlocked<A, B>(_:_:)();
      v29 = v54;
      v30 = v55;
      sub_10000EA04(v17, &qword_1008F3638);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100042744(0, *(v45 + 2) + 1, 1, v45);
        v45 = result;
      }

      v9 = v49;
      v32 = *(v45 + 2);
      v31 = *(v45 + 3);
      v33 = (v32 + 1);
      if (v32 >= v31 >> 1)
      {
        v44 = (v32 + 1);
        result = sub_100042744((v31 > 1), v32 + 1, 1, v45);
        v33 = v44;
        v45 = result;
      }

      v18 = v21 + 1;
      v34 = v45;
      *(v45 + 2) = v33;
      v35 = &v34[16 * v32];
      *(v35 + 4) = v29;
      *(v35 + 5) = v30;
      v19 = v43;
    }

    while (v42 != v21);
  }

  else
  {
    v45 = &_swiftEmptyArrayStorage;
  }

LABEL_23:

  sub_10000EA04(&v56, &qword_1008DE428);
LABEL_25:
  v54 = v45;
  sub_100140278(&unk_1008E99C0);
  sub_100020FC0();
  v36 = BidirectionalCollection<>.joined(separator:)();
  v38 = v37;

  v54 = 91;
  v55 = 0xE100000000000000;
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 93;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);

  return v54;
}

uint64_t sub_100038088(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1000380F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_100038238(uint64_t a1)
{
  v2 = type metadata accessor for ActivityStatisticsCollection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100038294(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[390];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() countUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_100038ECC(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[391];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() countUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_100039B04(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[388];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() meterUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_10003A73C(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  v28 = &selRef_initWithLayer_;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = v28[58];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() countUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        v28 = &selRef_initWithLayer_;
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        v28 = &selRef_initWithLayer_;
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      v28 = &selRef_initWithLayer_;
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_10003B388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100140278(&qword_1008DE590);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003B44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100140278(&qword_1008DE590);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

size_t sub_10003B518(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v74 = a4;
  v75 = a3;
  v7 = sub_100140278(&qword_1008DF158);
  v73 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  v13 = sub_100140278(&qword_1008E8FD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v66 - v14;
  v16 = sub_100140278(&qword_1008E8FD8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v66 - v18;
  sub_100041BB0();
  Regex<A>.init(_:)();
  v68 = v10;
  v69 = v12;
  v71 = v7;
  (*(v17 + 56))(v15, 0, 1, v16);
  v20 = *(v17 + 32);
  v70 = v19;
  v72 = v16;
  v67 = v20;
  v20(v19, v15, v16);
  v21 = OBJC_IVAR___CHNavigator_urlKeys;
  v22 = v77;
  swift_beginAccess();
  v23 = *(v22 + v21);
  v24 = *(v23 + 2);
  if (!v24)
  {
LABEL_9:
    v28 = v77;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + v21) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_100042744(0, *(v23 + 2) + 1, 1, v23);
      *(v28 + v21) = v23;
    }

    v31 = *(v23 + 2);
    v30 = *(v23 + 3);
    if (v31 >= v30 >> 1)
    {
      v23 = sub_100042744((v30 > 1), v31 + 1, 1, v23);
    }

    *(v23 + 2) = v31 + 1;
    v32 = &v23[16 * v31];
    *(v32 + 4) = a1;
    *(v32 + 5) = a2;
    *(v28 + v21) = v23;
    swift_endAccess();
    v66 = v17;
    v33 = v68;
    v34 = v70;
    v35 = v72;
    (*(v17 + 16))(v68, v70, v72);
    v36 = v69;
    v67(v69, v33, v35);
    v37 = v71;
    v38 = v75;
    *(v36 + *(v71 + 48)) = v75;
    v39 = (v36 + *(v37 + 64));
    v40 = swift_allocObject();
    v41 = v76;
    *(v40 + 16) = v74;
    *(v40 + 24) = v41;
    *v39 = sub_1004DB468;
    v39[1] = v40;
    v42 = v28;
    v43 = OBJC_IVAR___CHNavigator_urlHandlers;
    swift_beginAccess();
    v44 = *(v42 + v43);
    v45 = v38;

    v46 = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + v43) = v44;
    if ((v46 & 1) == 0)
    {
      v44 = sub_10003BD9C(0, v44[2] + 1, 1, v44);
      *(v77 + v43) = v44;
    }

    v47 = v73;
    v49 = v44[2];
    v48 = v44[3];
    if (v49 >= v48 >> 1)
    {
      v44 = sub_10003BD9C(v48 > 1, v49 + 1, 1, v44);
    }

    v44[2] = v49 + 1;
    sub_100015E80(v36, v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v49, &qword_1008DF158);
    *(v77 + v43) = v44;
    swift_endAccess();
    (*(v66 + 8))(v34, v35);
    return 1;
  }

  v25 = 0;
  v26 = v23 + 40;
  while (1)
  {
    v27 = *(v26 - 1) == a1 && *v26 == a2;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v25;
    v26 += 2;
    if (v24 == v25)
    {
      goto LABEL_9;
    }
  }

  v50 = v17;
  v51 = swift_allocObject();
  v53 = v76;
  v52 = v77;
  *(v51 + 16) = v74;
  *(v51 + 24) = v53;
  v54 = OBJC_IVAR___CHNavigator_urlHandlers;
  swift_beginAccess();
  v55 = *(v52 + v54);
  v56 = v75;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v52 + v54) = v55;
  if ((result & 1) == 0)
  {
    result = sub_10057F6A8(v55);
    v55 = result;
    *(v77 + v54) = result;
  }

  v58 = v71;
  v59 = v72;
  if (v25 < v55[2])
  {
    v60 = v55 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v25;
    v61 = v70;
    (*(v50 + 24))(v60, v70, v72);
    v62 = *(v58 + 48);
    v63 = v58;
    v64 = *(v60 + v62);
    *(v60 + v62) = v56;
    v65 = (v60 + *(v63 + 64));
    *v65 = sub_1004DB434;
    v65[1] = v51;
    *(v77 + v54) = v55;
    swift_endAccess();

    (*(v50 + 8))(v61, v59);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003BB74()
{

  return _swift_deallocObject(v0, 32, 7);
}

size_t sub_10003BBB4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_100140278(a5);
  v14 = *(sub_100140278(a7) - 8);
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
  v19 = *(sub_100140278(a7) - 8);
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

uint64_t sub_10003BE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BF0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_100140278(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_10003C03C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10003C1A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  if (a2)
  {
    v90 = a7;
    v93 = a4;
    v98 = v18;
    v99 = &v90 - v16;
    v97 = v17;
    v19 = swift_allocObject();
    v20 = _swiftEmptyArrayStorage;
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v21 = (v19 + 16);
    v22 = a2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v24 = Date._bridgeToObjectiveC()().super.isa;
    *&v108 = sub_100037324;
    *(&v108 + 1) = v19;
    *&v106 = _NSConcreteStackBlock;
    *(&v106 + 1) = 1107296256;
    *&v107 = sub_10001E9E8;
    *(&v107 + 1) = &unk_10084E330;
    v25 = _Block_copy(&v106);
    v95 = a5;
    v96 = a6;
    v26 = v25;
    v92 = v19;

    v91 = v22;
    [v22 enumerateStatisticsFromDate:isa toDate:v24 withBlock:v26];
    _Block_release(v26);

    swift_beginAccess();
    v94 = *(*(v19 + 16) + 16);
    v27 = *(v14 + 16);
    v28 = v97;
    v27(v99, v95, v97);
    v29 = v98;
    v27(v98, v96, v28);
    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v30;
    Date.timeIntervalSinceReferenceDate.getter();
    sub_10001C204(v94, v119, v31, v32);
    v33 = v119[0];
    v34 = v119[1];
    v36 = v119[2];
    v35 = v120;
    v37 = v121;
    v38 = v122;
    v39 = v123;
    v40 = *(v14 + 8);
    v40(v29, v28);
    v40(v99, v28);
    v99 = v21;
    v41 = *v21;
    v42 = *(v41 + 16);
    v43 = 0.0;
    if (!v42)
    {
LABEL_46:
      v75 = *(v20 + 2);

      sub_100042604(v104 + 8);
      *&v100 = v43;
      *(&v100 + 1) = v75;
      *&v101 = v33;
      *(&v101 + 1) = v34;
      *&v102 = v36;
      *(&v102 + 1) = v35;
      *&v103 = v37;
      *(&v103 + 1) = v38;
      *v104 = v39;
      v105 = 5;
      ASFriendListDisplayMode.id.getter(&v100);
      v76 = v90;
      swift_beginAccess();
      v77 = *(v76 + 192);
      v116 = *(v76 + 176);
      v117 = v77;
      v78 = *(v76 + 128);
      v112 = *(v76 + 112);
      v113 = v78;
      v79 = *(v76 + 160);
      v114 = *(v76 + 144);
      v115 = v79;
      v80 = *(v76 + 64);
      v108 = *(v76 + 48);
      v109 = v80;
      v81 = *(v76 + 96);
      v110 = *(v76 + 80);
      v111 = v81;
      v82 = *(v76 + 32);
      v106 = *(v76 + 16);
      v107 = v82;
      v83 = v104[5];
      v84 = v104[7];
      *(v76 + 176) = v104[6];
      *(v76 + 192) = v84;
      v85 = v104[3];
      v86 = v104[4];
      *(v76 + 112) = v104[2];
      *(v76 + 128) = v85;
      v118 = *(v76 + 208);
      *(v76 + 208) = v105;
      *(v76 + 144) = v86;
      *(v76 + 160) = v83;
      v87 = v103;
      *(v76 + 48) = v102;
      *(v76 + 64) = v87;
      v88 = v104[1];
      *(v76 + 80) = v104[0];
      *(v76 + 96) = v88;
      v89 = v101;
      *(v76 + 16) = v100;
      *(v76 + 32) = v89;
      sub_10000EA04(&v106, &qword_1008E5710);
      OS_dispatch_semaphore.signal()();

      return;
    }

    v97 = v34;
    v98 = v36;
    v44 = v119[0];
    v45 = v120;
    v46 = v122;

    v47 = 0;
    v48 = 0;
    v49 = (v41 + 40);
    do
    {
      if ((*v49 & 1) == 0 && v48 < *(v44 + 16))
      {
        v50 = *(v49 - 1);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v33 = v44;
        }

        else
        {
          v33 = sub_10057F5E0(v44);
        }

        if (v48 >= *(v33 + 2))
        {
          __break(1u);
          return;
        }

        v51 = &v33[v47];
        *(v51 + 4) = v50;
        *(v51 + 5) = 0x3FF0000000000000;
        v51[48] = 0;
        if (v45 < v50)
        {
          v35 = v50;
          v37 = 1.0;
          v45 = v50;
        }

        if (v46 < 0.0 || v46 > v50)
        {
          v39 = 1.0;
          v38 = v50;
          v46 = v50;
        }

        v44 = v33;
      }

      ++v48;
      v49 += 2;
      v47 += 24;
    }

    while (v42 != v48);

    v52 = *v99;
    v53 = *(*v99 + 16);
    if (!v53)
    {
      v20 = _swiftEmptyArrayStorage;
      v36 = v98;
LABEL_45:
      v34 = v97;
      goto LABEL_46;
    }

    v36 = v98;
    if (v53 == 1)
    {
      v54 = 0;
      v43 = 0.0;
    }

    else
    {
      v54 = v53 & 0x7FFFFFFFFFFFFFFELL;
      v60 = (v52 + 56);
      v61 = v53 & 0x7FFFFFFFFFFFFFFELL;
      v43 = 0.0;
      do
      {
        v62 = *(v60 - 3);
        v63 = *(v60 - 1);
        v64 = *(v60 - 16);
        v66 = *v60;
        v60 += 4;
        v65 = v66;
        if (v64)
        {
          v62 = 0.0;
        }

        if (v65)
        {
          v63 = 0.0;
        }

        v43 = v43 + v62 + v63;
        v61 -= 2;
      }

      while (v61);
      if (v53 == v54)
      {
        goto LABEL_36;
      }
    }

    v67 = v53 - v54;
    v68 = (v52 + 16 * v54 + 40);
    do
    {
      v69 = *(v68 - 1);
      v70 = *v68;
      v68 += 2;
      if (v70)
      {
        v69 = 0.0;
      }

      v43 = v43 + v69;
      --v67;
    }

    while (v67);
LABEL_36:

    v71 = (v52 + 40);
    v20 = _swiftEmptyArrayStorage;
    do
    {
      if ((*v71 & 1) == 0)
      {
        v72 = *(v71 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10001C378(0, *(v20 + 2) + 1, 1, v20);
        }

        v74 = *(v20 + 2);
        v73 = *(v20 + 3);
        if (v74 >= v73 >> 1)
        {
          v20 = sub_10001C378((v73 > 1), v74 + 1, 1, v20);
        }

        *(v20 + 2) = v74 + 1;
        *&v20[8 * v74 + 32] = v72;
      }

      v71 += 16;
      --v53;
    }

    while (v53);

    goto LABEL_45;
  }

  if (a3)
  {
    v55 = _convertErrorToNSError(_:)();
    static os_log_type_t.error.getter();
    v56 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1006D46C0;
    *(v57 + 56) = sub_1000059F8(0, &qword_1008E56F0);
    *(v57 + 64) = sub_10025F118(&qword_1008E4030, &qword_1008E56F0);
    *(v57 + 32) = v55;
    v58 = v56;
    v59 = v55;
    os_log(_:dso:log:_:_:)();
  }

  OS_dispatch_semaphore.signal()();
}

uint64_t sub_10003C8D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_10003C91C(NSObject *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  v123 = a2;
  v124 = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v112 = *(v3 - 8);
  v113 = v3;
  __chkstk_darwin(v3);
  v111 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v115 = *(v5 - 8);
  v116 = v5;
  __chkstk_darwin(v5);
  v109 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v105 - v8;
  v121 = type metadata accessor for Calendar.Component();
  v9 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v11 - 8);
  v122 = &v105 - v12;
  v126 = type metadata accessor for Date();
  v159 = *(v126 - 8);
  __chkstk_darwin(v126);
  v108 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v107 = &v105 - v15;
  __chkstk_darwin(v16);
  v128 = &v105 - v17;
  __chkstk_darwin(v18);
  v127 = &v105 - v19;
  v106 = v20;
  __chkstk_darwin(v21);
  v129 = &v105 - v22;
  v23 = sub_100140278(&unk_1008E3FB0);
  __chkstk_darwin(v23 - 8);
  v25 = &v105 - v24;
  v26 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v26 - 8);
  v28 = &v105 - v27;
  v29 = type metadata accessor for DateComponents();
  v118 = *(v29 - 8);
  v119 = v29;
  __chkstk_darwin(v29);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0);
  *v35 = static OS_dispatch_queue.main.getter();
  (*(v33 + 104))(v35, enum case for DispatchPredicate.notOnQueue(_:), v32);
  v36 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v35, v32);
  if (v36)
  {
    v32 = type metadata accessor for Calendar();
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    v37 = type metadata accessor for TimeZone();
    (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();
    v125 = v31;
    if (qword_1008DA540 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_10001AC90(v32, qword_100924FE8);
  v38 = v129;
  Calendar.startOfDay(for:)();
  v40 = v120;
  v39 = v121;
  (*(v9 + 104))(v120, enum case for Calendar.Component.day(_:), v121);
  v41 = v159;
  v42 = v127;
  v43 = v122;
  if (!__OFSUB__(0, v124))
  {
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v9 + 8))(v40, v39);
    v44 = v126;
    if ((*(v41 + 48))(v43, 1, v126) == 1)
    {
      (*(v41 + 8))(v38, v44);
      (*(v118 + 8))(v125, v119);
      sub_10000EA04(v43, &unk_1008F73A0);
    }

    else
    {
      v45 = v125;
      v46 = v43;
      v47 = v41 + 32;
      v48 = *(v41 + 32);
      v48(v42, v46, v44);
      Calendar.startOfDay(for:)();
      sub_1000059F8(0, &unk_1008E4060);
      v49 = [swift_getObjCClassFromMetadata() categoryTypeForIdentifier:HKCategoryTypeIdentifierAppleStandHour];
      if (v49)
      {
        v50 = v49;
        v51 = objc_allocWithZone(HKStatisticsCollectionQuery);
        v52 = v50;
        v121 = v47;
        v53 = v52;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v55 = DateComponents._bridgeToObjectiveC()().super.isa;
        v122 = [v51 initWithSampleType:v53 samplePredicate:0 options:64 anchorDate:isa intervalComponents:v55];
        v123 = v53;

        v124 = dispatch_semaphore_create(0);
        v56 = swift_allocObject();
        v120 = v48;
        v57 = v56;
        sub_100011DA0(v144);
        v58 = v144[11];
        *(v57 + 176) = v144[10];
        *(v57 + 192) = v58;
        *(v57 + 208) = v145;
        v59 = v144[7];
        *(v57 + 112) = v144[6];
        *(v57 + 128) = v59;
        v60 = v144[9];
        *(v57 + 144) = v144[8];
        *(v57 + 160) = v60;
        v61 = v144[3];
        *(v57 + 48) = v144[2];
        *(v57 + 64) = v61;
        v62 = v144[5];
        *(v57 + 80) = v144[4];
        *(v57 + 96) = v62;
        v63 = v144[1];
        *(v57 + 16) = v144[0];
        *(v57 + 32) = v63;
        v64 = v159 + 16;
        v65 = *(v159 + 16);
        v66 = v107;
        v65(v107, v128, v44);
        v67 = v108;
        v65(v108, v129, v44);
        v68 = *(v64 + 64);
        v69 = (v68 + 24) & ~v68;
        v70 = (v106 + v68 + v69) & ~v68;
        v71 = (v106 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        *(v72 + 16) = v124;
        v73 = v72 + v69;
        v74 = v120;
        (v120)(v73, v66, v44);
        (v74)(v72 + v70, v67, v44);
        *(v72 + v71) = v57;
        *&v133 = sub_10025F168;
        *(&v133 + 1) = v72;
        *&v131 = _NSConcreteStackBlock;
        *(&v131 + 1) = 1107296256;
        *&v132 = sub_100018C74;
        *(&v132 + 1) = &unk_10084E2E0;
        v75 = _Block_copy(&v131);
        v124 = v124;

        sub_10000B210(sub_10025F168);

        v76 = v122;
        [v122 setInitialResultsHandler:v75];
        _Block_release(v75);

        v77 = v76;
        v78 = String._bridgeToObjectiveC()();
        [v77 setDebugIdentifier:v78];

        [*(v110 + 16) executeQuery:v77];
        v79 = v109;
        static DispatchTime.now()();
        v81 = v111;
        v80 = v112;
        *v111 = 15;
        v82 = v113;
        (*(v80 + 104))(v81, enum case for DispatchTimeInterval.seconds(_:), v113);
        v83 = v114;
        + infix(_:_:)();
        (*(v80 + 8))(v81, v82);
        v84 = v116;
        v85 = *(v115 + 8);
        v85(v79, v116);
        OS_dispatch_semaphore.wait(timeout:)();
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          static os_log_type_t.default.getter();
          v86 = HKLogActivity;
          os_log(_:dso:log:_:_:)();

          sub_10025F0BC();
          swift_allocError();
          swift_willThrow();

          v85(v83, v84);
          v87 = *(v159 + 8);
          v88 = v126;
          v87(v128, v126);
          v87(v127, v88);
          v87(v129, v88);
          (*(v118 + 8))(v125, v119);

          return;
        }

        v85(v83, v84);
        v97 = *(v159 + 8);
        v98 = v126;
        v97(v128, v126);
        v97(v127, v98);
        v97(v129, v98);
        (*(v118 + 8))(v125, v119);
        swift_beginAccess();
        v99 = *(v57 + 192);
        v141 = *(v57 + 176);
        v142 = v99;
        v143 = *(v57 + 208);
        v100 = *(v57 + 128);
        v137 = *(v57 + 112);
        v138 = v100;
        v101 = *(v57 + 160);
        v139 = *(v57 + 144);
        v140 = v101;
        v102 = *(v57 + 64);
        v133 = *(v57 + 48);
        v134 = v102;
        v103 = *(v57 + 96);
        v135 = *(v57 + 80);
        v136 = v103;
        v104 = *(v57 + 32);
        v131 = *(v57 + 16);
        v132 = v104;
        sub_10001B104(&v131, &v130, &qword_1008E5710);

        v156 = v141;
        v157 = v142;
        v158 = v143;
        v152 = v137;
        v153 = v138;
        v154 = v139;
        v155 = v140;
        v148 = v133;
        v149 = v134;
        v150 = v135;
        v151 = v136;
        v146 = v131;
        v147 = v132;
        goto LABEL_11;
      }

      v89 = *(v41 + 8);
      v89(v128, v44);
      v89(v42, v44);
      v89(v38, v44);
      (*(v118 + 8))(v45, v119);
    }

    sub_100011DA0(&v146);
LABEL_11:
    v90 = v157;
    v91 = v117;
    *(v117 + 160) = v156;
    *(v91 + 176) = v90;
    *(v91 + 192) = v158;
    v92 = v153;
    *(v91 + 96) = v152;
    *(v91 + 112) = v92;
    v93 = v155;
    *(v91 + 128) = v154;
    *(v91 + 144) = v93;
    v94 = v149;
    *(v91 + 32) = v148;
    *(v91 + 48) = v94;
    v95 = v151;
    *(v91 + 64) = v150;
    *(v91 + 80) = v95;
    v96 = v147;
    *v91 = v146;
    *(v91 + 16) = v96;
    return;
  }

  __break(1u);
}

uint64_t sub_10003D76C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10003D86C()
{
  _StringGuts.grow(_:)(32);
  v0._countAndFlagsBits = 0x203A746867696557;
  v0._object = 0xE800000000000000;
  String.append(_:)(v0);
  Double.write<A>(to:)();
  v1._object = 0x800000010074C450;
  v1._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v1);
  Double.write<A>(to:)();
  return 0;
}

uint64_t sub_10003D970@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = type metadata accessor for DateComponents();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for Calendar.Component.day(_:), v4, v13);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000EA04(v10, &unk_1008F73A0);
LABEL_6:
    v26 = 1;
    v24 = v32;
    v25 = v33;
    v20 = v31;
    return (*(v20 + 56))(v25, v26, 1, v24);
  }

  (*(v12 + 32))(v15, v10, v11);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17 = Calendar._bridgeToObjectiveC()().super.isa;
  v18 = _HKActivityCacheDateComponentsFromDate();

  if (!v18)
  {
    (*(v12 + 8))(v15, v11);
    goto LABEL_6;
  }

  v19 = v29;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v12 + 8))(v15, v11);
  v20 = v31;
  v21 = v33;
  v22 = v19;
  v23 = v32;
  (*(v31 + 32))(v33, v22, v32);
  v24 = v23;
  v25 = v21;
  v26 = 0;
  return (*(v20 + 56))(v25, v26, 1, v24);
}

uint64_t sub_10003DD20(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v7 = sub_100140278(&qword_1008DE590);
  v23 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v26 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v29 = _swiftEmptyArrayStorage;
  sub_1000681F4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v27 = v4;
    v12 = 0;
    v11 = v29;
    v13 = v26;
    if (v26 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v28 = a3 + v12;
      v15 = v9;
      v16 = v27;
      v24(&v28);
      v27 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v29 = v11;
      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        sub_1000681F4(v17 > 1, v18 + 1, 1);
        v11 = v29;
      }

      v11[2] = v18 + 1;
      v19 = v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18;
      v9 = v15;
      sub_100015E80(v15, v19, &qword_1008DE590);
      if (v26 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_10003DF50(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = sub_100140278(&qword_1008DE590);
  v44 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = v43 - v8;
  v46 = type metadata accessor for DateComponents();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v43 - v12;
  sub_100140278(&unk_1008E51B0);
  v14 = type metadata accessor for Calendar.Component();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D46C0;
  (*(v15 + 104))(v17 + v16, enum case for Calendar.Component.day(_:), v14);
  sub_10001C970(v17);
  swift_setDeallocating();
  v18 = v17 + v16;
  v19 = v13;
  (*(v15 + 8))(v18, v14);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  result = DateComponents.day.getter();
  if (v21)
  {
    static os_log_type_t.error.getter();
    v22 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006D1F70;
    v24 = v22;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = sub_10069A920();
    *(v23 + 56) = v26;
    v27 = sub_1001DF1F0();
    *(v23 + 64) = v27;
    *(v23 + 32) = isa;
    v28.super.isa = Date._bridgeToObjectiveC()().super.isa;
    *(v23 + 96) = v26;
    *(v23 + 104) = v27;
    *(v23 + 72) = v28;
    os_log(_:dso:log:_:_:)();

    (*(v9 + 8))(v19, v46);
    return _swiftEmptyArrayStorage;
  }

  v45 = v9;
  if ((result & 0x8000000000000000) == 0)
  {
    __chkstk_darwin(result);
    v43[-2] = v2;
    v43[-1] = a1;
    v31 = sub_10003DD20(sub_100038068, &v43[-4], 0, v30);
    v32 = *(v31 + 16);
    if (v32)
    {
      v43[0] = v13;
      v43[1] = v31;
      v33 = v31 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v34 = *(v44 + 72);
      v35 = v46;
      v36 = (v45 + 48);
      v37 = (v45 + 32);
      v29 = _swiftEmptyArrayStorage;
      do
      {
        v38 = v47;
        sub_100038088(v33, v47);
        sub_10003BE9C(v38, v6);
        if ((*v36)(v6, 1, v35) == 1)
        {
          sub_10000EA04(v6, &qword_1008DE590);
        }

        else
        {
          v39 = *v37;
          (*v37)(v48, v6, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_100038208(0, *(v29 + 2) + 1, 1, v29);
          }

          v41 = *(v29 + 2);
          v40 = *(v29 + 3);
          if (v41 >= v40 >> 1)
          {
            v29 = sub_100038208(v40 > 1, v41 + 1, 1, v29);
          }

          *(v29 + 2) = v41 + 1;
          v35 = v46;
          v39(&v29[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v41], v48, v46);
        }

        v33 += v34;
        --v32;
      }

      while (v32);

      v42 = v45;
      v19 = v43[0];
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
      v42 = v45;
      v35 = v46;
    }

    (*(v42 + 8))(v19, v35);
    return v29;
  }

  __break(1u);
  return result;
}

char *sub_10003E4D0(char *a1, int64_t a2, char a3)
{
  result = sub_1000380F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10003E54C(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[395];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() kilocalorieUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_10003F184(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[392];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() minuteUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_10003FDBC(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v120 = a2;
  v117 = type metadata accessor for Calendar.Component();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = *(a1 + 16);
  DateInterval.start.getter();
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(v14, v133, v16, v17);
  v127 = v133[0];
  v119 = v133[1];
  v118 = v133[2];
  v130 = v134;
  v129 = v135;
  v125 = v136;
  v126 = v137;
  v18 = *(v8 + 8);
  v18(v10, v7);
  v112 = v13;
  v115 = v7;
  v114 = v18;
  v113 = v8 + 8;
  v18(v13, v7);
  v105 = v136;
  v108 = v134;
  v128 = v133[0];
  sub_10001C204(7, &v138, 0.0, 6.0);
  v19 = v138;
  v132 = v139;
  v21 = v140;
  v20 = v141;
  v22 = v143;
  v123 = v142;
  sub_10001C204(7, &v144, 0.0, 6.0);
  v23 = 0;
  v24 = v144;
  v111 = (v5 + 104);
  v110 = (v5 + 8);
  v25 = a1 + 40;
  v131 = v145;
  v27 = v146;
  v26 = v147;
  p_ivars = &ResourceBundleClass.ivars;
  v29 = v148;
  v124 = v149;
  v109 = enum case for Calendar.Component.weekday(_:);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v103 = v148;
  v102 = v146;
  v104 = v21;
LABEL_2:
  v33 = 24 * v23;
  v34 = (v25 + 16 * v23);
  v35 = v23;
  while (1)
  {
    if (v14 == v35)
    {
      *a3 = v32;
      *(a3 + 8) = v31;
      v97 = v119;
      *(a3 + 16) = v127;
      *(a3 + 24) = v97;
      v98 = v130;
      *(a3 + 32) = v118;
      *(a3 + 40) = v98;
      v99 = v125;
      *(a3 + 48) = v129;
      *(a3 + 56) = v99;
      *(a3 + 64) = v126;
      *(a3 + 72) = v19;
      *(a3 + 80) = v132;
      *(a3 + 96) = v21;
      *(a3 + 104) = v20;
      *(a3 + 112) = v123;
      *(a3 + 120) = v22;
      *(a3 + 128) = v24;
      *(a3 + 136) = v131;
      *(a3 + 152) = v27;
      *(a3 + 160) = v26;
      v100 = v124;
      *(a3 + 168) = v29;
      *(a3 + 176) = v100;
      *(a3 + 184) = v30;
      *(a3 + 192) = v120;
      return;
    }

    if (v35 >= v14)
    {
      break;
    }

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_133;
    }

    v37 = *v34;
    v34 += 2;
    v36 = v37;
    ++v35;
    v33 += 24;
    if (v37)
    {
      v107 = v25;
      v121 = v29;
      v122 = v26;
      v38 = v27;
      v39 = v22;
      v40 = v19;
      v41 = v21;
      v42 = v20;
      v43 = v36;
      v44 = p_ivars[393];
      v106 = v43;
      v45 = [v43 v44];
      v46 = [objc_opt_self() minuteUnit];
      [v45 doubleValueForUnit:v46];
      v48 = v47;

      v49 = v128;
      if ((v35 - 1) >= *(v128 + 2))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_10057F5E0(v49);
      }

      if ((v35 - 1) >= *(v49 + 2))
      {
        goto LABEL_134;
      }

      v50 = &v49[v33];
      *(v50 + 1) = v48;
      *(v50 + 2) = 0x3FF0000000000000;
      v50[24] = 0;
      v51 = v108;
      v52 = v130;
      if (v108 < v48)
      {
        v52 = v48;
      }

      v130 = v52;
      v53 = v129;
      if (v108 < v48)
      {
        v53 = 1.0;
        v51 = v48;
      }

      v108 = v51;
      v129 = v53;
      v127 = v49;
      if (v105 < 0.0 || v48 < v105)
      {
        v126 = 1.0;
        v125 = v48;
        v105 = v48;
      }

LABEL_18:
      v128 = v49;
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v54 = v31 * v32 + v48;
      v31 = v31 + 1.0;
      v32 = v54 / v31;
      v55 = type metadata accessor for Calendar();
      sub_10001AC90(v55, qword_100925000);
      v56 = v116;
      v57 = v117;
      (*v111)(v116, v109, v117);
      v58 = v112;
      Date.init(timeIntervalSinceReferenceDate:)();
      v59 = Calendar.component(_:from:)();
      v114(v58, v115);
      (*v110)(v56, v57);
      if (v59 <= 3)
      {
        v19 = v40;
        switch(v59)
        {
          case 1:
            v60 = 0;
            goto LABEL_36;
          case 2:
            v60 = 1;
            goto LABEL_36;
          case 3:
            v60 = 2;
            goto LABEL_36;
        }

LABEL_30:

        v20 = v42;
        v21 = v41;
        v22 = v39;
        v27 = v38;
        v26 = v122;
        v29 = v121;
        v25 = v107;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_2;
      }

      v19 = v40;
      if (v59 > 5)
      {
        if (v59 == 6)
        {
          v60 = 5;
          goto LABEL_36;
        }

        if (v59 == 7)
        {
          v60 = 6;
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v59 == 4)
      {
        v60 = 3;
      }

      else
      {
        v60 = 4;
      }

LABEL_36:
      if (v60 >= *(v19 + 16))
      {
        v20 = v42;
        v21 = v41;
        goto LABEL_54;
      }

      v61 = v19;
      v62 = v19 + 24 * v60;
      if (*(v62 + 48))
      {
        v63 = 1.0;
        v64 = 0.0;
      }

      else
      {
        v64 = *(v62 + 32);
        v63 = *(v62 + 40);
      }

      v101 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10057F5E0(v19);
      }

      if (v60 >= *(v61 + 2))
      {
        goto LABEL_135;
      }

      v65 = (v48 + v101 * v63) / (v63 + 1.0);
      v66 = &v61[24 * v60];
      *(v66 + 4) = v65;
      *(v66 + 5) = v63 + 1.0;
      v66[48] = 0;
      v67 = v104;
      if (v104 >= v65)
      {
        v20 = v42;
      }

      else
      {
        v20 = v63 + 1.0;
      }

      if (v104 >= v65)
      {
        v21 = v41;
      }

      else
      {
        v21 = v65;
      }

      if (v104 < v65)
      {
        v67 = v65;
      }

      v104 = v67;
      v19 = v61;
      if (v123 < 0.0 || v65 < v123)
      {
        v22 = v63 + 1.0;
        v123 = v65;
      }

      else
      {
LABEL_54:
        v22 = v39;
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        v27 = v38;
        p_ivars = (&ResourceBundleClass + 48);
        goto LABEL_80;
      }

      v69 = v22;
      v70 = v21;
      v71 = v20;
      v72 = &v24[24 * v60];
      if (v72[48])
      {
        v73 = 1.0;
        v74 = 0.0;
      }

      else
      {
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10057F5E0(v24);
      }

      v68 = *(v24 + 2);
      if (v60 >= v68)
      {
        goto LABEL_136;
      }

      v75 = (v74 * v73 + 1.0) / (v73 + 1.0);
      v76 = &v24[24 * v60];
      *(v76 + 4) = v75;
      *(v76 + 5) = v73 + 1.0;
      v76[48] = 0;
      v77 = v102;
      if (v102 < v75)
      {
        v38 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v78 = v122;
      if (v102 < v75)
      {
        v78 = v73 + 1.0;
      }

      v122 = v78;
      if (v102 < v75)
      {
        v77 = (v74 * v73 + 1.0) / (v73 + 1.0);
      }

      v79 = v103;
      p_ivars = (&ResourceBundleClass + 48);
      v102 = v77;
      if (v103 < 0.0)
      {
        v121 = (v74 * v73 + 1.0) / (v73 + 1.0);
        v124 = v73 + 1.0;
        v103 = v121;
      }

      else
      {
        v80 = v121;
        if (v75 < v103)
        {
          v80 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v121 = v80;
        v81 = v124;
        if (v75 < v103)
        {
          v81 = v73 + 1.0;
        }

        v124 = v81;
        if (v75 < v103)
        {
          v79 = (v74 * v73 + 1.0) / (v73 + 1.0);
        }

        v103 = v79;
      }

      v20 = v71;
      v21 = v70;
      v22 = v69;
      v27 = v38;
LABEL_80:
      v82 = *(v19 + 16);
      v30 = 0.0;
      v29 = v121;
      if (v82)
      {
        v83 = (v19 + 32);
        if ((*(v19 + 48) & 1) == 0)
        {
          if (v68)
          {
            v84 = (v24 + 32);
            if ((v24[48] & 1) == 0 && *v84 > 0.0)
            {
              if (*v83 / *v84 > 0.0)
              {
                v30 = *v83 / *v84;
              }

              else
              {
                v30 = 0.0;
              }
            }
          }
        }
      }

      if (v82 > 1)
      {
        v85 = (v19 + 56);
        if ((*(v19 + 72) & 1) == 0 && v68 > 1)
        {
          v86 = (v24 + 56);
          if ((v24[72] & 1) == 0 && *v86 > 0.0 && *v85 / *v86 > v30)
          {
            v30 = *v85 / *v86;
          }
        }
      }

      if (v82 > 2)
      {
        v87 = (v19 + 80);
        if ((*(v19 + 96) & 1) == 0 && v68 > 2)
        {
          v88 = (v24 + 80);
          if ((v24[96] & 1) == 0 && *v88 > 0.0 && *v87 / *v88 > v30)
          {
            v30 = *v87 / *v88;
          }
        }
      }

      if (v82 > 3)
      {
        v89 = (v19 + 104);
        if ((*(v19 + 120) & 1) == 0 && v68 > 3)
        {
          v90 = (v24 + 104);
          if ((v24[120] & 1) == 0 && *v90 > 0.0 && *v89 / *v90 > v30)
          {
            v30 = *v89 / *v90;
          }
        }
      }

      if (v82 > 4)
      {
        v91 = (v19 + 128);
        if ((*(v19 + 144) & 1) == 0 && v68 > 4)
        {
          v92 = (v24 + 128);
          if ((v24[144] & 1) == 0 && *v92 > 0.0 && *v91 / *v92 > v30)
          {
            v30 = *v91 / *v92;
          }
        }
      }

      if (v82 > 5)
      {
        v93 = (v19 + 152);
        if ((*(v19 + 168) & 1) == 0 && v68 > 5)
        {
          v94 = (v24 + 152);
          if ((v24[168] & 1) == 0 && *v94 > 0.0 && *v93 / *v94 > v30)
          {
            v30 = *v93 / *v94;
          }
        }
      }

      if (v82 > 6)
      {
        v95 = (v19 + 176);
        if ((*(v19 + 192) & 1) == 0 && v68 > 6)
        {
          v96 = (v24 + 176);
          if ((v24[192] & 1) == 0 && *v96 > 0.0 && *v95 / *v96 > v30)
          {
            v30 = *v95 / *v96;
          }
        }
      }

      v26 = v122;
      v25 = v107;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_1000409F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStatisticsCollection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041B74()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041BB0()
{
  sub_10000FCBC();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v2 = v1;

  strcpy(v6, "^fitnessapp://");
  v3._countAndFlagsBits = v0;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 2375471;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  return v6[0];
}

uint64_t sub_100042078()
{
  v1 = v0;
  v2 = *v0;
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = [v3 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    sub_10000EA04(v17, &qword_1008E51F0);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v4 BOOLForKey:v8];

    v10 = static os_log_type_t.default.getter();
    v11 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v10))
    {
      v12 = v11;
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v12, v10, "Loaded cached subscription status: %{BOOL}d", v13, 8u);
    }

    *(v1 + 80) = v9;
  }

  else
  {

    memset(v17, 0, 32);
    sub_10000EA04(v17, &qword_1008E51F0);
  }

  swift_getObjectType();
  type metadata accessor for ServiceSubscriptionUpdated();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v17);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v2;

  sub_100036890(sub_1001FF238, v15);
}

uint64_t sub_10004239C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000423D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100042434(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

uint64_t sub_10004252C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100042598()
{
  if (!qword_1008E0188)
  {
    sub_100141EEC(&unk_1008E0190);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0188);
    }
  }
}

double sub_100042604@<D0>(uint64_t a1@<X8>)
{
  sub_10001C204(7, &v7, 0.0, 6.0);
  sub_10001C204(7, &v8, 0.0, 6.0);

  *&v9 = _swiftEmptyArrayStorage;
  *(&v9 + 1) = _swiftEmptyArrayStorage;
  v10 = 0x7FF8000000000000uLL;
  *&v11[8] = xmmword_1006E8D80;
  *v11 = 0;
  *&v11[24] = _swiftEmptyArrayStorage;
  *&v12 = _swiftEmptyArrayStorage;
  *(&v12 + 1) = 0x7FF8000000000000;
  v13 = 0uLL;
  v15 = 0;
  v14 = 0xBFF0000000000000;
  v16[0] = _swiftEmptyArrayStorage;
  v16[1] = _swiftEmptyArrayStorage;
  v16[2] = 0x7FF8000000000000;
  v16[3] = 0;
  v17 = xmmword_1006E8D80;
  v16[4] = 0;
  v18 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v20 = 0x7FF8000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0xBFF0000000000000;
  v24 = 0;
  v25 = 0;
  sub_100352814(&v9, v6);
  sub_100037AD8(v16);
  v2 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v2;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  v3 = v10;
  *a1 = v9;
  *(a1 + 16) = v3;
  result = *v11;
  v5 = *&v11[16];
  *(a1 + 32) = *v11;
  *(a1 + 48) = v5;
  return result;
}

char *sub_100042744(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DCF58);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1000428DC()
{
  result = [objc_allocWithZone(AACAwardsClient) init];
  qword_1008EB6A0 = result;
  return result;
}

uint64_t sub_100042910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingHighlight();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100042978()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for UIButton.Configuration.Size();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.Size.small(_:), v4);
  UIButton.Configuration.buttonSize.setter();
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v8 = [objc_opt_self() secondarySystemFillColor];
  }

  UIButton.Configuration.baseBackgroundColor.setter();
  result = [objc_opt_self() keyColors];
  if (result)
  {
    v10 = result;
    v11 = [result nonGradientTextColor];

    UIButton.Configuration.baseForegroundColor.setter();
    v12 = [objc_opt_self() mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 localizedStringForKey:v13 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E7FB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D46C0;
    *(inited + 32) = NSFontAttributeName;
    v16 = qword_1008DAC00;
    v17 = NSFontAttributeName;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = qword_100925A08;
    *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
    *(inited + 40) = v18;
    v19 = v18;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_10000EA04(inited + 32, &unk_1008EE730);
    AttributeContainer.init(_:)();
    AttributedString.init(_:attributes:)();
    v20 = type metadata accessor for AttributedString();
    (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
    return UIButton.Configuration.attributedTitle.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100042D38(uint64_t *a1)
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
        type metadata accessor for ActivitySharingHighlight();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ActivitySharingHighlight() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100353564(v8, v9, a1, v4);
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
    return sub_10002E9B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100042E64()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_10026E198(0, 0, v2, &unk_1006EAF20, v6);
  }

  return result;
}

uint64_t sub_100042F8C()
{
  result = CTFontHasExuberatedLineHeight();
  byte_100925960 = result;
  return result;
}

void sub_100042FB0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeScale];
  v6 = v5;

  byte_100925961 = v3 < v6;
}

unint64_t sub_100043054(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    v9 = *(a1 + 16);
    v10 = v9 != 3;
    v11 = *a1 != 9;
    v12 = *a1 != 8;
    v13 = *(a1 + 17);
    v14 = *a1 != 7;
    v15 = *a1 != 6;
    v16 = a1[3];
    v17 = *a1 != 5;
    v18 = *(v2 + 48);
    v19 = a1[4];
    v20 = *a1 != 4;
    v21 = *a1 != 3;
    if (v7)
    {
      v11 = 1;
      v12 = 1;
      v14 = 1;
      v15 = 1;
      v17 = 1;
      v20 = 1;
      v21 = 1;
    }

    v49 = v10 || v11;
    v48 = v10 || v12;
    v47 = v10 || v14;
    v46 = v10 || v15;
    v45 = v10 || v17;
    v44 = v10 || v20;
    v22 = v10 || v21;
    if (v7 | v8)
    {
      v10 = 1;
    }

    v42 = v10;
    v43 = v22;
    v52 = v18;
    v50 = a1[4];
    do
    {
      v23 = v18 + 40 * v5;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 17);
      v27 = *(v23 + 24);
      v28 = *(v23 + 32);
      if (*(v23 + 16) > 1u)
      {
        if (*(v23 + 16) == 2)
        {
          if (v9 != 2)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }

        if (v24 > 4)
        {
          if (v24 <= 6)
          {
            if (v24 ^ 5 | v25)
            {
              if ((v46 | v26 ^ v13))
              {
                goto LABEL_7;
              }
            }

            else if ((v45 | v26 ^ v13))
            {
              goto LABEL_7;
            }
          }

          else if (v24 ^ 7 | v25)
          {
            if (v24 ^ 8 | v25)
            {
              if ((v49 | v26 ^ v13))
              {
                goto LABEL_7;
              }
            }

            else if ((v48 | v26 ^ v13))
            {
              goto LABEL_7;
            }
          }

          else if ((v47 | v26 ^ v13))
          {
            goto LABEL_7;
          }

          goto LABEL_52;
        }

        if (v24 <= 1)
        {
          v38 = v8 == 1;
          if (!(v24 | v25))
          {
            if ((v42 | v26 ^ v13))
            {
              goto LABEL_7;
            }

            goto LABEL_52;
          }
        }

        else
        {
          v38 = v8 == 2;
          if (v24 ^ 2 | v25)
          {
            if (v24 ^ 3 | v25)
            {
              if ((v44 | v26 ^ v13))
              {
                goto LABEL_7;
              }
            }

            else if ((v43 | v26 ^ v13))
            {
              goto LABEL_7;
            }

            goto LABEL_52;
          }
        }

        if (v9 != 3 || !v38 || v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (!*(v23 + 16))
        {
          if (v9)
          {
            goto LABEL_7;
          }

LABEL_14:
          if (v24 != v8)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

        if (v9 != 1)
        {
          goto LABEL_7;
        }

        if (v24 != v8 || v25 != v7)
        {
          v51 = *(v23 + 24);
          v30 = v16;
          v31 = v3;
          v32 = v6;
          v33 = v13;
          v34 = v9;
          v35 = *(v23 + 32);
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = v52;
          v28 = v35;
          v9 = v34;
          v13 = v33;
          v6 = v32;
          v3 = v31;
          v16 = v30;
          v37 = v36;
          v19 = v50;
          v27 = v51;
          if ((v37 & 1) == 0)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_15:
      if ((v26 ^ v13))
      {
        goto LABEL_7;
      }

LABEL_52:
      if (v27 == v16 && v28 == v19)
      {
        return v5;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v52;
      if (v40)
      {
        return v5;
      }

LABEL_7:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000433F0()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100140278(&qword_1008F8C98);
  sub_100043564(&qword_1008F8CA0, sub_100035D88);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;
  v3 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v3 setObject:isa forKey:v5];

  return sub_10000AF88(v0, v2);
}

uint64_t sub_100043564(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(&qword_1008F8C98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1000435E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_10004363C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(HKHealthStore) init];
  v6 = [objc_allocWithZone(NLSmartGoalStore) initWithHealthStore:v5];
  v42 = v5;
  v7 = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:v5];
  v8 = type metadata accessor for ReducedActivityTypesProvider();
  v9 = objc_allocWithZone(v8);
  v10 = ReducedActivityTypesProvider.init(reducedActivityTypes:)();
  v11 = objc_allocWithZone(WONPSDomainAccessor);
  v12 = a2;
  [v11 init];
  type metadata accessor for CompoundActivityTypeProvider();
  swift_allocObject();
  v41 = v6;
  *&v3[OBJC_IVAR___CHStandardActivityItemsViewModel_compoundActivityTypeProvider] = CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)();
  if (v7)
  {
    v13 = type metadata accessor for StandardActivityItemsDataSource();
    v14 = v7;
    v15 = v12;
    v40 = v14;

    v39 = v10;
    v16 = StandardActivityItemsDataSource.__allocating_init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:reducedActivityTypesProvider:occurrenceStore:)();
    v17 = OBJC_IVAR___CHStandardActivityItemsViewModel_standardActivityItemsDataSource;
    *&v3[OBJC_IVAR___CHStandardActivityItemsViewModel_standardActivityItemsDataSource] = v16;
    *&v3[OBJC_IVAR___CHStandardActivityItemsViewModel_occurrenceStore] = v15;
    v18 = type metadata accessor for AddWorkoutActivityItemsDataSource();
    v19 = objc_allocWithZone(v8);
    v38 = v15;
    ReducedActivityTypesProvider.init(reducedActivityTypes:)();
    v20 = AddWorkoutActivityItemsDataSource.__allocating_init(reducedActivityTypesProvider:)();
    sub_100140278(qword_1008F91E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D46C0;
    *(inited + 32) = 1;
    v22 = inited + 32;
    v23 = v8;
    v24 = *&v3[v17];
    *(inited + 64) = v13;
    *(inited + 72) = &protocol witness table for StandardActivityItemsDataSource;
    *(inited + 40) = v24;
    sub_1004CBA68(inited);
    swift_setDeallocating();
    v25 = v24;
    sub_10068F4D8(v22);
    v26 = objc_allocWithZone(type metadata accessor for CompoundActivityItemsDataSource());
    swift_unknownObjectRetain();
    v27 = CompoundActivityItemsDataSource.init(compoundObservables:standardActivityTypeProvider:)();
    v28 = type metadata accessor for ManagedConfigurationsDataSource();
    v29 = objc_allocWithZone(v23);
    v30 = v38;
    ReducedActivityTypesProvider.init(reducedActivityTypes:)();
    v31 = ManagedConfigurationsDataSource.__allocating_init(occurrenceStore:reducedActivityTypesProvider:)();
    v32 = *&v3[v17];
    v49 = &protocol witness table for AddWorkoutActivityItemsDataSource;
    v48 = v18;
    v46 = &protocol witness table for ManagedConfigurationsDataSource;
    v47 = v20;
    v45 = v28;
    v44 = v31;
    type metadata accessor for ActivityPickerDataSource();
    swift_allocObject();
    v33 = v32;
    v34 = v20;
    v35 = v27;
    v36 = v31;
    swift_unknownObjectRetain();
    *&v3[OBJC_IVAR___CHStandardActivityItemsViewModel_dataSource] = ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)();

    dispatch thunk of ActivityPickerDataSource.reloadData()();

    v43.receiver = v3;
    v43.super_class = type metadata accessor for StandardActivityItemsViewModel();
    return objc_msgSendSuper2(&v43, "init");
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutOnboardingCoordinatoriOS()
{
  result = qword_1008E8F70;
  if (!qword_1008E8F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100043AA4()
{
  if (!qword_1008E8F80)
  {
    sub_100141EEC(&qword_1008E8F88);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E8F80);
    }
  }
}

unint64_t sub_100043B08()
{
  result = qword_1008E4E00;
  if (!qword_1008E4E00)
  {
    type metadata accessor for WorkoutFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4E00);
  }

  return result;
}

uint64_t type metadata accessor for MetricFormattingHelper()
{
  result = qword_1008EFEF0;
  if (!qword_1008EFEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100043BBC()
{
  result = sub_1000059F8(319, &qword_1008F24B0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AttributedString();
    if (v2 <= 0x3F)
    {
      result = sub_1000059F8(319, &unk_1008EFF00);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SummaryConfigurationProvider()
{
  result = qword_1008DC5D0;
  if (!qword_1008DC5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100043CE8()
{
  if (!qword_1008DC5E0)
  {
    sub_100141EEC(&qword_1008DC5E8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DC5E0);
    }
  }
}

void sub_100043D4C()
{
  sub_100043CE8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100043F68()
{
  v1 = v0;
  swift_getObjectType();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = [v2 dataForKey:@"ActivityDashboardCardConfigurationKey"];

  if (v3)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_100140278(&qword_1008DC5E8);
    sub_1001591B4(&qword_1008DC680, sub_10015922C);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v16 = v33;
    v17 = *(v33 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = (v33 + 49);
      while (v18 < *(v16 + 16))
      {
        ++v18;
        v20 = *v19;
        v21 = *(v19 - 1);
        v33 = *(v19 - 17);
        v34 = v21;
        v35 = v20;
        sub_1001546E8(&v33);
        v19 += 24;
        if (v17 == v18)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      swift_getKeyPath();
      swift_getKeyPath();
      *&v33 = v16;
      v22 = v1;
      static Published.subscript.setter();
      if (qword_1008DAA18 == -1)
      {
LABEL_11:
        v23 = sub_100140278(&qword_1008DC638);
        sub_10001AC90(v23, qword_100925830);
        v36 = 1;
        swift_beginAccess();
        Tips.Parameter.wrappedValue.setter();
        swift_endAccess();
        v24 = static os_log_type_t.default.getter();
        v25 = HKLogActivity;
        v26 = os_log_type_enabled(HKLogActivity, v24);
        v27 = v25;
        if (v26)
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *&v33 = v29;
          *v28 = 136315138;
          v30 = _typeName(_:qualified:)();
          v32 = sub_10000AFDC(v30, v31, &v33);

          *(v28 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v24, "%s Loaded stored configuration", v28, 0xCu);
          sub_100005A40(v29);
        }

        sub_10000AF88(v4, v6);
      }
    }

    swift_once();
    goto LABEL_11;
  }

  v7 = static os_log_type_t.default.getter();
  v8 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v33 = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10000AFDC(v12, v13, &v33);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v9, v7, "%s No configuration read from file, using default layout instead.", v10, 0xCu);
    sub_100005A40(v11);
  }

  *(v1 + OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_didSetToDefaultConfiguration) = 1;
  return result;
}

void sub_1000443C8()
{
  v1 = v0;
  swift_getObjectType();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = [v2 dataForKey:@"ActivityDashboardUserRemovedCardTypes"];

  if (v3)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_100140278(&qword_1008DC670);
    sub_100159130();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v28 = v4;
    v27 = v31[0];
    v7 = static os_log_type_t.default.getter();
    v8 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v7))
    {
      v10 = v8;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_10000AFDC(v13, v14, v31);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v10, v7, "%s Loading userRemovedCardTypes:", v11, 0xCu);
      sub_100005A40(v12);
    }

    v16 = OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_userRemovedCardTypes;
    swift_beginAccess();
    v17 = *(v0 + v16);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 56);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    while (v20)
    {
      v23 = v22;
LABEL_16:
      v24 = *(v17 + 48) + 24 * (__clz(__rbit64(v20)) | (v23 << 6));
      v25 = *(v24 + 16);
      v20 &= v20 - 1;
      v29 = *v24;
      v30 = v25;
      sub_100156360(&v29);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        v26 = sub_1001AA58C(v27);

        sub_10000AF88(v28, v6);

        *(v1 + v16) = v26;

        return;
      }

      v20 = *(v17 + 56 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t type metadata accessor for MetricsDataProvider()
{
  result = qword_1008EB7B0;
  if (!qword_1008EB7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044774()
{
  result = type metadata accessor for MetricFormattingHelper();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100044858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10004490C(a1, v4, v5, v6);
}

uint64_t sub_10004492C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider_experienceType) = FIExperienceTypeWithHealthStore();
  sub_10001CC90();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000449A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000449EC()
{
  type metadata accessor for Date();
  v1 = *(v0 + 16);

  sub_100011DDC(v1);
}

void sub_100044A7C()
{
  if (!qword_1008F59F0)
  {
    type metadata accessor for DateComponents();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F59F0);
    }
  }
}

void sub_100044AD4()
{
  sub_100044A7C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100044B8C()
{
  sub_100049F88(v0[7]);
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_100193660, v1, v2);
}

uint64_t sub_100044BF8()
{
  sub_100049F88(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044C5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  sub_100140278(&qword_1008DCF58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = static EngagementConstants.badgeNewFeaturesIdentifier.getter();
  *(inited + 40) = v10;
  v11 = sub_1000458F4(inited, a3);
  swift_setDeallocating();
  sub_100045B78(inited + 32);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1006D1F70;
  *(v12 + 32) = static EngagementConstants.badgeOffersIdentifier.getter();
  *(v12 + 40) = v13;
  *(v12 + 48) = static EngagementConstants.badgeHardwareOfferIdentifier.getter();
  *(v12 + 56) = v14;
  v15 = sub_1000458F4(v12, a3);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  v17 = v11 + v15;
  if (__OFADD__(v11, v15))
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = *(a3 + 16);
  v19 = v18 - v17;
  if (__OFSUB__(v18, v17))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = static EngagementConstants.notificationNewFeaturesTopic.getter();
  v22 = sub_1000451C4(a4, a1, v20, v21);

  if ((v22 & 1) == 0)
  {
    v11 = 0;
  }

  v23 = static EngagementConstants.notificationOffersTopic.getter();
  v25 = sub_1000451C4(a4, a1, v23, v24);

  v26 = v19 + v11;
  if (__OFADD__(v19, v11))
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = v15;
  }

  else
  {
    v27 = 0;
  }

  result = v26 + v27;
  if (!__OFADD__(v26, v27))
  {
    return a5(result);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100044E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v21 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1001CE75C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084ACC0;
  v17 = _Block_copy(aBlock);

  sub_10000B210(a4);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045C20(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v22);
}

uint64_t sub_100045134()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000451C4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (*(a2 + 16) && (v15 = sub_100066F20(a3, a4), (v16 & 1) != 0))
  {
    v17 = *(*(a2 + 56) + 8 * v15);
    if ([v17 badgeSetting] == 2)
    {

      return 1;
    }

    static Log.engagement.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000AFDC(a3, a4, &v27);
      _os_log_impl(&_mh_execute_header, v22, v23, "Engagement app badging disabled: %s", v24, 0xCu);
      sub_100005A40(v25);
    }

    (*(v9 + 8))(v14, v8);
  }

  else
  {
    if ([a1 badgeSetting] == 2)
    {
      return 1;
    }

    static Log.engagement.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Engagement overall app badging disabled", v21, 2u);
    }

    (*(v9 + 8))(v12, v8);
  }

  return 0;
}

void sub_10004548C(void (*a1)(void), uint64_t a2)
{
  v5 = swift_allocObject();
  v6 = v5;
  v7 = *&v2[OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedActivitySharingCount];
  *(v5 + 16) = v7;
  if (v2[OBJC_IVAR___CHFitnessAppBadgeAggregator_hasAmeliaBadge] == 1)
  {
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      return;
    }

    *(v5 + 16) = v7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = [Strong aggregatorShouldAllowEngagementBadging:v2];
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v6;
      v12[3] = v11;
      v12[4] = a1;
      v12[5] = a2;
      v13 = objc_opt_self();

      sub_10000B210(a1);
      v14 = [v13 currentNotificationCenter];
      v15 = sub_1001CA420();
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v2;
      v16[4] = v15;
      v16[5] = sub_100045184;
      v16[6] = v12;
      v21[4] = sub_1001CE5E4;
      v21[5] = v16;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 1107296256;
      v21[2] = sub_1001CA96C;
      v21[3] = &unk_10084AC20;
      v17 = _Block_copy(v21);
      v18 = v14;
      v19 = v2;

      [v18 getNotificationSettingsWithCompletionHandler:v17];
      _Block_release(v17);

      return;
    }

    v7 = *(v6 + 16);
  }

  *&v2[OBJC_IVAR___CHFitnessAppBadgeAggregator_appBadgeCount] = v7;
  v20 = [objc_opt_self() sharedApplication];
  [v20 setApplicationIconBadgeNumber:*(v6 + 16)];

  if (a1)
  {
    a1();
  }
}

uint64_t sub_10004576C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000457A4()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000457F4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100045844(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000059F8(0, &qword_1008DFE98);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t sub_1000458F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementBadge();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v30 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = *(a2 + 16);
  if (v10)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = *(v11 + 56);
    v25 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v14 = a2 + v25;
    v24 = (v11 - 8);
    v28 = (v11 + 16);
    v29 = v12;
    v15 = _swiftEmptyArrayStorage;
    v26 = v11;
    v27 = a1;
    for (i = v12(v9, v14, v4); ; i = v29(v9, v14, v4))
    {
      __chkstk_darwin(i);
      *(&v23 - 2) = v9;
      if (sub_100321EE0(sub_1001CE73C, (&v23 - 4), a1))
      {
        v17 = *v28;
        (*v28)(v30, v9, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100185D1C(0, v15[2] + 1, 1);
          v15 = v31;
        }

        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          sub_100185D1C(v19 > 1, v20 + 1, 1);
          v15 = v31;
        }

        v15[2] = v20 + 1;
        v17(v15 + v25 + v20 * v13, v30, v4);
        a1 = v27;
      }

      else
      {
        (*v24)(v9, v4);
      }

      v14 += v13;
      if (!--v10)
      {
        break;
      }
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v21 = v15[2];

  return v21;
}

uint64_t sub_100045BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045C20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045D40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100045D88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100045DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045E18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045F80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

double sub_100045FC8@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008DF1F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D1F70;
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  Color.init(_:red:green:blue:opacity:)();
  *(v6 + 32) = Gradient.Stop.init(color:location:)();
  *(v6 + 40) = v7;
  v8 = sub_100046170();
  Color.init(uiColor:)();
  *(v6 + 48) = Gradient.Stop.init(color:location:)();
  *(v6 + 56) = v9;
  Gradient.init(stops:)();
  static UnitPoint.topTrailing.getter();
  static UnitPoint.bottomLeading.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

double sub_10004617C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MetricCardBarChartView() + 32));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v5 == 1 && v4 == 0;
  if (!v6 || AxisValue.index.getter() != 4)
  {
    v20 = v5;
    v21 = a2;
    sub_100065C68();
    *(&v22 + 1) = v7;
    sub_10000FCBC();
    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11;
    *&v22 = static Color.white.getter();
    v13 = Text.foregroundStyle<A>(_:)();
    v15 = v14;
    v17 = v16;
    sub_10004642C(v8, v10, v12 & 1);

    if (qword_1008DA678 != -1)
    {
      swift_once();
    }

    Text.font(_:)();
    sub_10004642C(v13, v15, v17 & 1);

    v18 = v20;
    if (v4 != 1)
    {
      v18 = 0;
    }

    if (v18 == 1)
    {
      type metadata accessor for Date();
      sub_100018D14(&qword_1008E4080, &type metadata accessor for Date);
      dispatch thunk of static Comparable.< infix(_:_:)();
    }

    a2 = v21;
  }

  sub_100140278(&qword_1008DE028);
  sub_100046660();
  _ConditionalContent<>.init(storage:)();
  result = *&v22;
  *a2 = v22;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25;
  return result;
}

uint64_t sub_10004642C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004643C()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  static Font.Weight.medium.getter();
  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  static Font.system(size:weight:design:)();
  sub_1000465F8(v6);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v8 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_1009252A8 = v8;
  return result;
}

uint64_t sub_1000465F8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DC448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100046660()
{
  result = qword_1008DE020;
  if (!qword_1008DE020)
  {
    sub_100141EEC(&qword_1008DE028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE020);
  }

  return result;
}

uint64_t sub_1000466E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v68 = a1;
  v81 = a2;
  v80 = sub_100140278(&qword_1008E2978);
  v2 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v61 - v3;
  v77 = type metadata accessor for AxisGridLine();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E2998);
  v6 = __chkstk_darwin(v5 - 8);
  v78 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v61 - v8;
  v9 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v9 - 8);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for AxisTick();
  v73 = *(v76 - 8);
  v11 = __chkstk_darwin(v76);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v61 - v13;
  v14 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v15 - 8);
  v71 = sub_100140278(&qword_1008E2988);
  v70 = *(v71 - 8);
  v16 = __chkstk_darwin(v71);
  v69 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  v20 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v20 - 8);
  v22 = &v61 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  AxisValue.as<A>(_:)();
  v27 = 1;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_10000EA04(v22, &unk_1008F73A0);
    return (*(v2 + 56))(v81, 1, 1, v80);
  }

  else
  {
    v64 = v2;
    v62 = v24;
    v29 = *(v24 + 32);
    v63 = v23;
    v29(v26, v22, v23);
    v30 = type metadata accessor for MetricCardBarChartView();
    v31 = *(v68 + *(v30 + 32) + 8);
    __chkstk_darwin(v30);
    v33 = v32;
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v59 = sub_100140278(&qword_1008E29A0);
    v60 = sub_100065218();
    v57 = sub_100065C5C;
    v58 = &v55;
    v56 = 1;
    v55 = 0;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v92 = v83;
    v93 = v84;
    v94 = v85;
    static AxisTick.Length.automatic.getter();
    v34 = v66;
    AxisTick.init(centered:length:stroke:)();
    v35 = v19;
    v61 = v26;
    if (v31 == 1)
    {
      v36 = v33 == 1;
      v37 = v77;
      v38 = v75;
      v39 = v74;
      if (v36)
      {
        StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
        v89 = v86;
        v90 = v87;
        v91 = v88;
        v40 = v65;
        AxisGridLine.init(centered:stroke:)();
        (*(v38 + 32))(v39, v40, v37);
        v27 = 0;
      }
    }

    else
    {
      v37 = v77;
      v38 = v75;
      v39 = v74;
    }

    (*(v38 + 56))(v39, v27, 1, v37);
    v41 = v70;
    v42 = v69;
    v43 = v71;
    (*(v70 + 16))(v69, v19, v71);
    v82[0] = v42;
    v44 = v73;
    v45 = v72;
    v46 = v76;
    (*(v73 + 16))(v72, v34, v76);
    v82[1] = v45;
    v47 = v39;
    v77 = v35;
    v48 = v39;
    v49 = v34;
    v50 = v78;
    sub_10001B104(v47, v78, &qword_1008E2998);
    v82[2] = v50;
    v51 = v79;
    sub_100047094(v82, v79);
    sub_10000EA04(v48, &qword_1008E2998);
    v52 = *(v44 + 8);
    v52(v49, v46);
    v53 = *(v41 + 8);
    v53(v77, v43);
    sub_10000EA04(v50, &qword_1008E2998);
    v52(v45, v46);
    v53(v42, v43);
    v54 = v81;
    sub_100015E80(v51, v81, &qword_1008E2978);
    (*(v64 + 56))(v54, 0, 1, v80);
    return (*(v62 + 8))(v61, v63);
  }
}

uint64_t sub_100047094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E3758);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_100140278(&qword_1008E2988);
  sub_10014A6B0(&qword_1008E2980, &qword_1008E2988);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = type metadata accessor for AxisTick();
  v11 = *(v5 + 56);
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  sub_1002336B8();
  v13 = *(v5 + 72);
  sub_10001B104(a1[2], &v7[v13], &qword_1008E2998);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v11], v10);
  return sub_100015E80(&v7[v13], a2 + *(v5 + 72), &qword_1008E2998);
}

uint64_t type metadata accessor for FitnessPlusUpNextCard()
{
  result = qword_1008E7958;
  if (!qword_1008E7958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004734C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008DC0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - v5;
  v7 = sub_100140278(&qword_1008F1AF8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_100140278(&qword_1008F1B00);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v26 - v13;
  ProgressView<>.init<>()();
  v15 = *(v1 + 48);
  LOBYTE(v28) = *(v1 + 40);
  *(&v28 + 1) = v15;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  if (LOBYTE(v26[0]))
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  (*(v4 + 32))(v10, v6, v3);
  *&v10[*(v8 + 44)] = v16;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v10, v14, &qword_1008F1AF8);
  v17 = &v14[*(v12 + 44)];
  v18 = v33;
  v19 = v34;
  *(v17 + 4) = v32;
  *(v17 + 5) = v18;
  *(v17 + 6) = v19;
  v20 = v29;
  *v17 = v28;
  *(v17 + 1) = v20;
  v21 = v31;
  *(v17 + 2) = v30;
  *(v17 + 3) = v21;
  sub_10004766C(v1, v26);
  v22 = swift_allocObject();
  v23 = v26[1];
  *(v22 + 16) = v26[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v26[2];
  *(v22 + 64) = v27;
  sub_100015E80(v14, a1, &qword_1008F1B00);
  result = sub_100140278(&qword_1008F1B08);
  v25 = (a1 + *(result + 36));
  *v25 = sub_100069CA0;
  v25[1] = v22;
  v25[2] = 0;
  v25[3] = 0;
  return result;
}

uint64_t sub_1000476C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000476E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100047704@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100140278(&qword_1008EE258);
  return sub_100047754(v1, a1 + *(v3 + 44));
}

uint64_t sub_100047754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a1;
  v160 = a2;
  v2 = type metadata accessor for AccessibilityTraits();
  v135 = *(v2 - 8);
  v136 = v2;
  __chkstk_darwin(v2);
  v134 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100140278(&qword_1008EE260);
  __chkstk_darwin(v131);
  v133 = &v131 - v4;
  v5 = sub_100140278(&qword_1008EE268);
  v157 = *(v5 - 8);
  v158 = v5;
  v6 = __chkstk_darwin(v5);
  v132 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v137 = &v131 - v9;
  v10 = __chkstk_darwin(v8);
  v139 = &v131 - v11;
  __chkstk_darwin(v10);
  v138 = &v131 - v12;
  v13 = sub_100140278(&qword_1008EE270);
  v14 = __chkstk_darwin(v13 - 8);
  v159 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v161 = &v131 - v16;
  v17 = sub_100140278(&qword_1008EE278);
  v150 = *(v17 - 8);
  *&v151 = v17;
  __chkstk_darwin(v17);
  v145 = &v131 - v18;
  v149 = sub_100140278(&qword_1008EE280);
  __chkstk_darwin(v149);
  v148 = &v131 - v19;
  v147 = sub_100140278(&qword_1008EE288);
  __chkstk_darwin(v147);
  v146 = &v131 - v20;
  v153 = sub_100140278(&qword_1008EE290);
  __chkstk_darwin(v153);
  v152 = &v131 - v21;
  v22 = sub_100140278(&qword_1008EE298);
  v23 = __chkstk_darwin(v22 - 8);
  v156 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v162 = &v131 - v25;
  v26 = sub_100140278(&qword_1008EE2A0);
  __chkstk_darwin(v26);
  v28 = &v131 - v27;
  v29 = sub_100140278(&qword_1008EE2A8);
  v30 = __chkstk_darwin(v29 - 8);
  v155 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v131 - v32;
  v34 = sub_100048880();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = static Edge.Set.all.getter();
  LOBYTE(v166) = 0;
  *&v178 = v34;
  *(&v178 + 1) = v36;
  *&v179 = v38;
  *(&v179 + 1) = v40;
  LOBYTE(v180) = v41;
  *(&v180 + 1) = 0;
  *v181 = 0;
  *&v181[8] = 0;
  *&v181[16] = 0x4008000000000000;
  v181[24] = 0;
  static Font.Weight.semibold.getter();
  sub_100140278(&qword_1008EE2B0);
  sub_100048AF0(&qword_1008EE2B8, &qword_1008EE2B0, &unk_1006F22E0, sub_100463634);
  View.fontWeight(_:)();
  v173[2] = v180;
  *v174 = *v181;
  *&v174[9] = *&v181[9];
  v173[0] = v178;
  v173[1] = v179;
  sub_10000EA04(v173, &qword_1008EE2B0);
  v42 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v44 = &v28[*(sub_100140278(&qword_1008EE2C8) + 36)];
  *v44 = KeyPath;
  v44[1] = v42;
  LODWORD(v42) = static HierarchicalShapeStyle.primary.getter();
  *&v28[*(sub_100140278(&qword_1008EE2D0) + 36)] = v42;
  v45 = *(sub_100140278(&qword_1008EE2D8) + 36);
  v46 = enum case for BlendMode.plusLighter(_:);
  v47 = type metadata accessor for BlendMode();
  v48 = *(v47 - 8);
  v49 = *(v48 + 104);
  v144 = v46;
  v142 = v49;
  v143 = v47;
  v141 = v48 + 104;
  (v49)(&v28[v45], v46);
  v28[*(v26 + 36)] = 1;
  sub_100048B74();
  v154 = v33;
  View.accessibilityHidden(_:)();
  sub_10000EA04(v28, &qword_1008EE2A0);
  v50 = v140;
  *&v178 = sub_100048C00();
  *(&v178 + 1) = v51;
  sub_10000FCBC();
  v52 = Text.init<A>(_:)();
  v54 = v53;
  LOBYTE(v46) = v55;
  v57 = v56;
  v58 = swift_getKeyPath();
  LOBYTE(v38) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v165[0]) = v46 & 1;
  LOBYTE(v163) = 0;
  v172 = 0;
  *&v166 = v52;
  *(&v166 + 1) = v54;
  LOBYTE(v167[0]) = v46 & 1;
  *(v167 + 1) = *v177;
  DWORD1(v167[0]) = *&v177[3];
  *(&v167[0] + 1) = v57;
  *&v167[1] = v58;
  *(&v167[1] + 1) = 1;
  v59 = v145;
  LOBYTE(v168) = 0;
  *(&v168 + 1) = *v176;
  DWORD1(v168) = *&v176[3];
  BYTE8(v168) = v38;
  HIDWORD(v168) = *&v175[3];
  *(&v168 + 9) = *v175;
  *&v169 = v60;
  *(&v169 + 1) = v61;
  *&v170 = v62;
  *(&v170 + 1) = v63;
  v171 = 0;
  static Font.Weight.semibold.getter();
  sub_100140278(&qword_1008EE300);
  sub_100048AF0(&qword_1008EE308, &qword_1008EE300, &unk_1006F2360, sub_10015EE70);
  View.fontWeight(_:)();
  *&v181[16] = v169;
  v182 = v170;
  v183 = v171;
  v178 = v166;
  v179 = v167[0];
  v64 = v50;
  v180 = v167[1];
  *v181 = v168;
  sub_10000EA04(&v178, &qword_1008EE300);
  v65 = v50[3];
  v66 = v50[4];
  sub_1000066AC(v50, v65);
  v67 = (*(v66 + 16))(v65, v66);
  if (v69 == 3 && v67 == 5 && !v68)
  {
    static Font.body.getter();
    v70 = Font.feature(_:)();
  }

  else
  {
    sub_10001D4F8(v67, v68, v69);
    v70 = static Font.body.getter();
  }

  v71 = swift_getKeyPath();
  v72 = v148;
  (*(v150 + 32))(v148, v59, v151);
  v73 = (v72 + *(v149 + 36));
  *v73 = v71;
  v73[1] = v70;
  v74 = static HierarchicalShapeStyle.primary.getter();
  v75 = v146;
  sub_100015E80(v72, v146, &qword_1008EE280);
  *(v75 + *(v147 + 36)) = v74;
  v76 = v152;
  v142(&v152[*(v153 + 36)], v144, v143);
  sub_100015E80(v75, v76, &qword_1008EE288);
  v77 = sub_100140278(&qword_1008DCF58);
  v78 = swift_allocObject();
  v151 = xmmword_1006D64F0;
  *(v78 + 16) = xmmword_1006D64F0;
  *(v78 + 32) = static FitnessAccessibilityIdentifier.SummaryView.base.getter();
  *(v78 + 40) = v79;
  *(v78 + 48) = sub_100048C00();
  *(v78 + 56) = v80;
  *(v78 + 64) = 1954047316;
  *(v78 + 72) = 0xE400000000000000;
  static FitnessAccessibilityIdentifier.build(_:)();

  sub_100049548();
  View.accessibilityIdentifier(_:)();

  sub_10000EA04(v76, &qword_1008EE290);
  v81 = v64[3];
  v82 = v64[4];
  sub_1000066AC(v64, v81);
  v83 = (*(v82 + 32))(v81, v82);
  v84 = v161;
  if ((v83 & 1) == 0)
  {
    v85 = v64[3];
    v86 = v64[4];
    sub_1000066AC(v64, v85);
    v87 = (*(v86 + 16))(v85, v86);
    if (v89 != 3 || v87 > 7 || ((1 << v87) & 0x83) == 0)
    {
      sub_10001D4F8(v87, v88, v89);
      v90 = Image.init(_internalSystemName:)();
      v91 = static Edge.Set.all.getter();
      LOBYTE(v166) = 0;
      v92 = static Font.body.getter();
      v93 = swift_getKeyPath();
      *&v166 = v90;
      BYTE8(v166) = 1;
      LOBYTE(v167[0]) = v91;
      *(v167 + 8) = xmmword_1006F21C0;
      *(&v167[1] + 1) = 0;
      *&v168 = 0;
      BYTE8(v168) = 0;
      *&v169 = v93;
      *(&v169 + 1) = v92;
      static Font.Weight.semibold.getter();
      sub_100140278(&qword_1008EE330);
      v153 = v77;
      sub_100049614();
      v94 = v133;
      View.fontWeight(_:)();
      v165[2] = v167[1];
      v165[3] = v168;
      v165[4] = v169;
      v165[0] = v166;
      v165[1] = v167[0];
      sub_10000EA04(v165, &qword_1008EE330);
      *(v94 + *(v131 + 36)) = static HierarchicalShapeStyle.tertiary.getter();
      v95 = v134;
      static AccessibilityTraits.isImage.getter();
      sub_1000496F8();
      v96 = v132;
      View.accessibilityRemoveTraits(_:)();
      v97 = v136;
      v98 = *(v135 + 8);
      v98(v95, v136);
      sub_10000EA04(v94, &qword_1008EE260);
      static AccessibilityTraits.isButton.getter();
      v99 = v137;
      v100 = v158;
      ModifiedContent<>.accessibilityAddTraits(_:)();
      v98(v95, v97);
      sub_10000EA04(v96, &qword_1008EE268);
      v101 = swift_allocObject();
      *(v101 + 16) = v151;
      *(v101 + 32) = static FitnessAccessibilityIdentifier.SummaryView.base.getter();
      *(v101 + 40) = v102;
      v163 = 0;
      v164 = 0xE000000000000000;
      v103 = v64[3];
      v104 = v64[4];
      sub_1000066AC(v64, v103);
      v105 = (*(v104 + 16))(v103, v104);
      v107 = v106;
      LOBYTE(v104) = v108;
      *&v166 = v105;
      *(&v166 + 1) = v106;
      LOBYTE(v167[0]) = v108;
      _print_unlocked<A, B>(_:_:)();
      sub_10001D4F8(v105, v107, v104);
      v109 = v164;
      *(v101 + 48) = v163;
      *(v101 + 56) = v109;
      *(v101 + 64) = static FitnessAccessibilityIdentifier.SummaryView.editButton.getter();
      *(v101 + 72) = v110;
      static FitnessAccessibilityIdentifier.build(_:)();

      v111 = v139;
      ModifiedContent<>.accessibilityIdentifier(_:)();

      sub_10000EA04(v99, &qword_1008EE268);
      LocalizedStringKey.init(stringLiteral:)();
      v112 = Text.init(_:tableName:bundle:comment:)();
      v114 = v113;
      LOBYTE(v95) = v115;
      sub_100463A68(v64, &v166);
      v116 = swift_allocObject();
      v117 = v168;
      *(v116 + 48) = v167[1];
      *(v116 + 64) = v117;
      *(v116 + 80) = v169;
      *(v116 + 96) = v170;
      v118 = v167[0];
      *(v116 + 16) = v166;
      *(v116 + 32) = v118;
      v119 = v138;
      ModifiedContent<>.accessibilityAction(named:_:)();

      v120 = v95 & 1;
      v84 = v161;
      sub_10004642C(v112, v114, v120);

      sub_10000EA04(v111, &qword_1008EE268);
      sub_100015E80(v119, v84, &qword_1008EE268);
      (*(v157 + 56))(v84, 0, 1, v100);
      goto LABEL_13;
    }

    sub_10001D4F8(v87, v88, 3);
  }

  (*(v157 + 56))(v84, 1, 1, v158);
LABEL_13:
  v122 = v154;
  v121 = v155;
  sub_10001B104(v154, v155, &qword_1008EE2A8);
  v123 = v162;
  v124 = v156;
  sub_10001B104(v162, v156, &qword_1008EE298);
  v125 = v84;
  v126 = v159;
  sub_10001B104(v84, v159, &qword_1008EE270);
  v127 = v160;
  sub_10001B104(v121, v160, &qword_1008EE2A8);
  v128 = sub_100140278(&qword_1008EE328);
  sub_10001B104(v124, v127 + v128[12], &qword_1008EE298);
  v129 = v127 + v128[16];
  *v129 = 0x4000000000000000;
  *(v129 + 8) = 0;
  sub_10001B104(v126, v127 + v128[20], &qword_1008EE270);
  sub_10000EA04(v125, &qword_1008EE270);
  sub_10000EA04(v123, &qword_1008EE298);
  sub_10000EA04(v122, &qword_1008EE2A8);
  sub_10000EA04(v126, &qword_1008EE270);
  sub_10000EA04(v124, &qword_1008EE298);
  return sub_10000EA04(v121, &qword_1008EE2A8);
}

uint64_t sub_100048838()
{
  sub_100005A40(v0 + 16);
  if (*(v0 + 80))
  {
    sub_100005A40(v0 + 56);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_100048880()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = v0[3];
  v4 = v0[4];
  sub_1000066AC(v0, v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v7)
  {
    sub_10001D4F8(v5, v6, v7);
  }

  else
  {
    v8 = v0[3];
    v9 = v0[4];
    sub_1000066AC(v0, v8);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    LOBYTE(v9) = v13;
    v14 = sub_1000490C8(v10, v11, v13);
    sub_10001D4F8(v10, v12, v9);
    if ((v14 - 1) >= 2u)
    {
      v16 = v1[3];
      v17 = v1[4];
      sub_1000066AC(v1, v16);
      v18 = (*(v17 + 16))(v16, v17);
      v20 = v19;
      LOBYTE(v16) = v21;
      LOBYTE(v17) = sub_1000490C8(v18, v19, v21);
      sub_10001D4F8(v18, v20, v16);
      sub_100183C84(v17);
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
      Image.init(_internalSystemName:)();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
      LocalizedStringKey.init(stringInterpolation:)();
      return Text.init(_:tableName:bundle:comment:)();
    }
  }

  return 0;
}

uint64_t sub_100048A98()
{
  v1 = *v0 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type;
  v2 = *v1;
  sub_10001D510(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_100048AF0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048B74()
{
  result = qword_1008EE2E0;
  if (!qword_1008EE2E0)
  {
    sub_100141EEC(&qword_1008EE2A0);
    sub_1004636B0();
    sub_1003417A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE2E0);
  }

  return result;
}

id sub_100048C00()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DD010);
  __chkstk_darwin(v2 - 8);
  v4 = &v53[-v3 - 8];
  v5 = type metadata accessor for ActivityRingsCard();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = v0[3];
  v10 = v0[4];
  sub_1000066AC(v0, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13 = v12;
  LOBYTE(v10) = v14;
  v15 = sub_1000490C8(v11, v12, v14);
  sub_10001D4F8(v11, v13, v10);
  if (v15 - 1 >= 2)
  {
    if (v15)
    {
      goto LABEL_9;
    }

    sub_100007C5C(v1, v53);
    sub_100140278(&unk_1008EE6B0);
    v21 = swift_dynamicCast();
    v22 = *(v6 + 56);
    if (!v21)
    {
      v22(v4, 1, 1, v5);
      sub_10000EA04(v4, &qword_1008DD010);
      v37 = v1[3];
      v38 = v1[4];
      sub_1000066AC(v1, v37);
      v39 = (*(v38 + 16))(v37, v38);
      v41 = v40;
      v43 = v42;
      LOBYTE(v38) = sub_1000490C8(v39, v40, v42);
      sub_10001D4F8(v39, v41, v43);
      return sub_1000492D8(v38);
    }

    v22(v4, 0, 1, v5);
    sub_1003A40C0(v4, v8);
    v23 = *&v8[*(v5 + 36)];
    if (v23)
    {
      if ([v23 _isStandalonePhoneSummary])
      {
LABEL_8:
        v24 = [objc_opt_self() mainBundle];
        v25 = String._bridgeToObjectiveC()();
        v26 = [v24 localizedStringForKey:v25 value:0 table:0];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_19:
        sub_1003A4124(v8);
        return v27;
      }
    }

    else
    {
      result = [objc_opt_self() sharedBehavior];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v44 = result;
      v45 = [result isStandalonePhoneFitnessMode];

      if (v45)
      {
        goto LABEL_8;
      }
    }

    v46 = v1[3];
    v47 = v1[4];
    sub_1000066AC(v1, v46);
    v48 = (*(v47 + 16))(v46, v47);
    v50 = v49;
    LOBYTE(v46) = v51;
    LOBYTE(v47) = sub_1000490C8(v48, v49, v51);
    sub_10001D4F8(v48, v50, v46);
    v27 = sub_1000492D8(v47);
    goto LABEL_19;
  }

  v16 = v1[3];
  v17 = v1[4];
  sub_1000066AC(v1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  if (v20)
  {
    sub_10001D4F8(v18, v19, v20);
LABEL_9:
    v28 = v1[3];
    v29 = v1[4];
    sub_1000066AC(v1, v28);
    v30 = (*(v29 + 16))(v28, v29);
    v32 = v31;
    v34 = v33;
    v35 = sub_1000490C8(v30, v31, v33);
    sub_10001D4F8(v30, v32, v34);

    return sub_1000492D8(v35);
  }

  return sub_100081E1C(v18);
}

uint64_t sub_1000490C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return 8;
    }

    else
    {
      return byte_1006FF73E[a1];
    }
  }

  else if (a3)
  {
    return 9;
  }

  else
  {
    return byte_1006FF748[a1];
  }
}