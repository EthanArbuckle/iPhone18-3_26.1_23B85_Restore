double sub_1006FD97C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = type metadata accessor for HorizontalRule.Style();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(qword_10097DB40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_10002849C(&qword_100970F20);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_10002C0AC(a1, v26);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for HorizontalRule();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (HorizontalRule.isFullWidth.getter())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  HorizontalRule.style.getter();
  v22 = [v19 traitCollection];
  HorizontalRule.Style.lineThickness(traitCollection:)();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_1006FDC78(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10002849C(qword_10097DB40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_10002849C(&qword_100970F20);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_10002C0AC(a1, v19);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyCategory();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v17 = v19[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v19[0] = sub_10037A62C(v17, a5);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_1006FDEE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for BreakoutDetailsDisplayProperties();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for LargeHeroBreakoutLayout();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LabelPlaceholderCompatibility();
  v13 = *(v38 - 8);
  __chkstk_darwin(v38);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(qword_10097DB40);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v41 = sub_10002849C(&qword_100970F20);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v21 = &v36 - v20;
  sub_10002C0AC(a1, v59);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for LargeHeroBreakout();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  type metadata accessor for NilState();
  v39 = v21;
  StateLens.init(_:)();
  v51 = a4;
  v22 = [a4 traitCollection];
  v23 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v24 = LayoutViewPlaceholder.init(representing:)();
  LargeHeroBreakout.heading.getter();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FontUseCase();
  sub_1000056A8(v25, qword_1009D1820);
  static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v26 = type metadata accessor for Feature();
  v37 = v22;
  v27 = v26;
  v59[3] = v26;
  v59[4] = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v28 = sub_1000056E0(v59);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  isFeatureEnabled(_:)();
  sub_100007000(v59);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v13 + 8))(v15, v38);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  v29 = v44;
  BreakoutDetailsDisplayProperties.position.getter();
  (*(v42 + 8))(v9, v43);
  sub_1003AE3AC(v29, v51, v45);
  (*(v46 + 8))(v29, v48);
  swift_allocObject();
  v30 = LayoutViewPlaceholder.init(representing:)();
  v57 = v23;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v30;
  sub_10002C0AC(v59, v55);
  v53 = v23;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v24;

  v31 = v47;
  LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)();
  sub_100708188(&qword_100982468, &type metadata accessor for LargeHeroBreakoutLayout);
  v32 = v50;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v34 = v33;

  (*(v49 + 8))(v31, v32);
  sub_100007000(v59);
  (*(v40 + 8))(v39, v41);

  return v34;
}

double sub_1006FE6B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = type metadata accessor for PrivacyDefinitionLayout.Metrics();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for PrivacyDefinitionLayout();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LabelPlaceholderCompatibility();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(qword_10097DB40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v41 - v13;
  v46 = sub_10002849C(&qword_100970F20);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = v41 - v15;
  sub_10002C0AC(a1, v59);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyDefinition();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  type metadata accessor for NilState();
  v44 = v16;
  StateLens.init(_:)();
  v17 = v59[5];
  v18 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096E0C0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for FontUseCase();
  sub_1000056A8(v42, qword_1009D11C0);
  v19 = [a4 traitCollection];
  v20 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.title.getter();
  v21 = type metadata accessor for Feature();
  v59[3] = v21;
  v22 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v59[4] = v22;
  v23 = sub_1000056E0(v59);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(v21 - 8);
  v41[1] = v17;
  v26 = *(v25 + 104);
  v53 = a4;
  v26(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
  v27 = v20;
  v41[0] = v18;
  v28 = v27;
  isFeatureEnabled(_:)();
  sub_100007000(v59);
  v43 = v28;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v29 = *(v55 + 8);
  v55 += 8;
  v29(v10, v54);
  if (qword_10096E0C8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v42, qword_1009D11D8);
  v30 = [v53 traitCollection];
  v31 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.definition.getter();
  v58[3] = v21;
  v58[4] = v22;
  v32 = sub_1000056E0(v58);
  v26(v32, v24, v21);
  v33 = v31;
  isFeatureEnabled(_:)();
  sub_100007000(v58);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v29(v10, v54);
  if (qword_10096CE50 != -1)
  {
    swift_once();
  }

  v34 = v48;
  v35 = sub_1000056A8(v48, qword_1009CD720);
  (*(v47 + 16))(v49, v35, v34);
  sub_10002C0AC(v59, v57);
  sub_10002C0AC(v58, v56);
  v36 = v50;
  PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)();
  sub_100708188(&qword_1009794F8, &type metadata accessor for PrivacyDefinitionLayout);
  v37 = v52;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v39 = v38;

  (*(v51 + 8))(v36, v37);
  sub_100007000(v58);
  sub_100007000(v59);
  (*(v45 + 8))(v44, v46);

  return v39;
}

double sub_1006FEED0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v90 = a4;
  v87 = type metadata accessor for LabelPlaceholderCompatibility();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v73 - v8;
  __chkstk_darwin(v9);
  v80 = &v73 - v10;
  v78 = type metadata accessor for AchievementGroupView.Size();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AchievementSummaryLayout();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v96 = *(v13 - 8);
  __chkstk_darwin(v13);
  v91 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v73 - v16;
  v17 = type metadata accessor for Achievement();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v76 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v73 - v21;
  v23 = sub_10002849C(qword_10097DB40);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v73 - v25;
  v94 = sub_10002849C(&qword_100970F20);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v28 = &v73 - v27;
  sub_10002C0AC(a1, v103);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AchievementSummary();
  swift_dynamicCast();
  (*(v24 + 16))(v26, a2, v23);
  type metadata accessor for NilState();
  v92 = v28;
  StateLens.init(_:)();
  v29 = v103[5];
  v30 = AchievementSummary.achievements.getter();
  if (*(v30 + 16))
  {
    v31 = v18;
    v32 = v90;
    v75 = v31;
    v33 = *(v31 + 16);
    v34 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v88 = v22;
    v89 = v17;
    v33(v22, v34, v17);

    if (qword_10096DA00 != -1)
    {
      swift_once();
    }

    v35 = sub_1000056A8(v13, qword_1009CFC78);
    v36 = *(v96 + 16);
    v37 = v95;
    v36(v95, v35, v13);
    v38 = [v32 traitCollection];
    v39 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v39)
    {
      v73 = v13;
      v36(v91, v37, v13);
      v33(v76, v88, v89);
      v40 = v29;
      AchievementSummary.totalAchievements.getter();
      v41 = [v32 traitCollection];
      v42 = UITraitCollection.isSizeClassCompact.getter();

      v43 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v42 & 1) == 0)
      {
        v43 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v77 + 104))(v79, *v43, v78);
      v44 = type metadata accessor for AchievementGroupView();
      v45 = objc_allocWithZone(v44);
      v46 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
      v103[3] = v44;
      v103[4] = &protocol witness table for UIView;
      v103[0] = v46;
      v47 = AchievementSummary.completedAchievements.getter();
      v48._object = 0x80000001008005F0;
      v48._countAndFlagsBits = 0xD000000000000032;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      localizedStringWithCount(_:count:comment:)(v48, v47, v49);
      v50 = sub_100005744(0, &qword_1009730E0);
      if (qword_10096E040 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for FontUseCase();
      sub_1000056A8(v79, qword_1009D1040);
      v78 = v50;
      static UIFont.preferredFont(forUseWith:in:)();
      v51 = type metadata accessor for Feature();
      v102[3] = v51;
      v77 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
      v102[4] = v77;
      v52 = sub_1000056E0(v102);
      v53 = *(*(v51 - 8) + 104);
      LODWORD(v76) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v74 = v53;
      v53(v52);
      isFeatureEnabled(_:)();
      sub_100007000(v102);
      v54 = v80;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v55 = *(v86 + 8);
      v56 = v87;
      v55(v54, v87);
      v57 = [v32 traitCollection];
      sub_10059DF60();
      v86 = v40;

      if (qword_10096E048 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v79, qword_1009D1058);
      static UIFont.preferredFont(forUseWith:in:)();
      v101[3] = v51;
      v101[4] = v77;
      v58 = sub_1000056E0(v101);
      v74(v58, v76, v51);
      isFeatureEnabled(_:)();
      sub_100007000(v101);
      v59 = v81;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v55(v59, v56);
      AchievementSummary.completedText.getter();
      if (qword_10096E050 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v79, qword_1009D1070);
      static UIFont.preferredFont(forUseWith:in:)();
      v100[3] = v51;
      v100[4] = v77;
      v60 = sub_1000056E0(v100);
      v74(v60, v76, v51);
      isFeatureEnabled(_:)();
      sub_100007000(v100);
      v61 = v83;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v55(v61, v56);
      v99 = 0;
      v98 = 0u;
      v97 = 0u;
      v62 = v82;
      AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)();
      sub_100708188(&unk_10098CEA0, &type metadata accessor for AchievementSummaryLayout);
      v63 = v85;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v65 = v64;
      (*(v84 + 8))(v62, v63);
      (*(v96 + 8))(v95, v73);
      (*(v75 + 8))(v88, v89);
    }

    else
    {
      [v32 pageContainerSize];
      if (v67 >= v66)
      {
        v69 = v89;
        v68 = v95;
      }

      else
      {
        JUScreenClassGetLandscapeWidth();
        v68 = v95;
        v69 = v89;
      }

      v70 = v88;
      static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)();
      v65 = v71;
      (*(v96 + 8))(v68, v13);
      (*(v75 + 8))(v70, v69);
    }
  }

  else
  {

    v65 = 0.0;
  }

  (*(v93 + 8))(v92, v94);

  return v65;
}

double sub_1006FFC50(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10002849C(qword_10097DB40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_10002849C(&qword_100970F20);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ArcadeDownloadPackCard();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v17 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
  if (v18)
  {
    v19 = ArcadeDownloadPackCard.lockups.getter();
    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_1002F4FF4(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_1006FFECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a4;
  v25 = type metadata accessor for LabelPlaceholderCompatibility();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(qword_10097DB40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v24 = sub_10002849C(&qword_100970F20);
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = &v23 - v14;
  sub_10002C0AC(a1, v27);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PreorderDisclaimer();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  PreorderDisclaimer.disclaimer.getter();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  sub_1000056A8(v16, qword_1009D0E48);
  v17 = [v26 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v18 = type metadata accessor for Feature();
  v28 = v18;
  v29 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v19 = sub_1000056E0(v27);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  isFeatureEnabled(_:)();
  sub_100007000(v27);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v6 + 8))(v8, v25);
  sub_10002A400(v27, v28);
  Measurable.measuredSize(fitting:in:)();
  v21 = v20;
  (*(v13 + 8))(v15, v24);
  sub_100007000(v27);

  return v21;
}

double sub_100700324(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = a4;
  v6 = type metadata accessor for GameCenterReengagementLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v45 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameCenterReengagementLayout();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for LabelPlaceholderCompatibility();
  v10 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(qword_10097DB40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - v15;
  v17 = sub_10002849C(&qword_100970F20);
  v43 = *(v17 - 8);
  v44 = v17;
  __chkstk_darwin(v17);
  v19 = v41 - v18;
  sub_10002C0AC(a1, v74);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for GameCenterReengagement();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  type metadata accessor for NilState();
  v42 = v19;
  StateLens.init(_:)();
  v56 = v74[5];
  GameCenterReengagement.badge.getter();
  v20 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096E380 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for FontUseCase();
  sub_1000056A8(v55, qword_1009D1A00);
  v21 = [v49 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v22 = type metadata accessor for Feature();
  v74[3] = v22;
  v54 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v74[4] = v54;
  v23 = sub_1000056E0(v74);
  v24 = *(*(v22 - 8) + 104);
  v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v52 = v24;
  v24(v23);
  isFeatureEnabled(_:)();
  v50 = v20;
  sub_100007000(v74);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v51 = *(v10 + 8);
  v51(v12, v57);
  GameCenterReengagement.title.getter();
  if (qword_10096E388 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v55, qword_1009D1A18);
  v25 = v49;
  v26 = [v49 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v73[3] = v22;
  v73[4] = v54;
  v27 = sub_1000056E0(v73);
  v52(v27, v53, v22);
  isFeatureEnabled(_:)();
  sub_100007000(v73);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v51(v12, v57);
  GameCenterReengagement.subtitle.getter();
  if (qword_10096E390 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v55, qword_1009D1A30);
  v28 = [v25 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v72[3] = v22;
  v72[4] = v54;
  v29 = sub_1000056E0(v72);
  v52(v29, v53, v22);
  isFeatureEnabled(_:)();
  sub_100007000(v72);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v51(v12, v57);
  v30 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v31 = LayoutViewPlaceholder.init(measurements:)();
  v32 = swift_allocObject();
  v32[2] = v56;
  v32[3] = v25;
  v32[4] = v41[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v33 = LayoutViewPlaceholder.init(measureWith:)();
  sub_10041DBC0(v25, v45);
  v71 = 0;
  *&v69[40] = 0u;
  v70 = 0u;
  sub_10002C0AC(v74, v69);
  sub_10002C0AC(v73, &v68);
  sub_10002C0AC(v72, &v67);
  v65 = v30;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v31;

  v34 = [v25 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v35 = LayoutViewPlaceholder.init(representing:)();
  v62 = v30;
  v63 = &protocol witness table for LayoutViewPlaceholder;
  v60 = &protocol witness table for LayoutViewPlaceholder;
  v61 = v35;
  v59 = v30;
  v58 = v33;

  v36 = v46;
  GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)();
  sub_100708188(&unk_100993010, &type metadata accessor for GameCenterReengagementLayout);
  v37 = v48;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v39 = v38;

  (*(v47 + 8))(v36, v37);
  sub_100007000(v72);
  sub_100007000(v73);
  sub_100007000(v74);
  (*(v43 + 8))(v42, v44);

  return v39;
}

uint64_t sub_100700C88(uint64_t a1, char *a2, uint64_t a3)
{
  v106 = a3;
  v104 = a2;
  v5 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v5 - 8);
  v92 = v85 - v6;
  v7 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v7 - 8);
  v94 = v85 - v8;
  v9 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v9 - 8);
  v93 = v85 - v10;
  v11 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v11 - 8);
  v91 = v85 - v12;
  v13 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v13 - 8);
  v90 = v85 - v14;
  v15 = type metadata accessor for MediaOverlayStyle();
  __chkstk_darwin(v15 - 8);
  v89 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CornerStyle();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v18 - 8);
  v99 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = v85 - v21;
  v22 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v22 - 8);
  v97 = v85 - v23;
  v24 = type metadata accessor for VideoControls();
  __chkstk_darwin(v24 - 8);
  v96 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v95 = v85 - v27;
  v28 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v28 - 8);
  v30 = v85 - v29;
  v31 = type metadata accessor for VideoFillMode();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for VideoConfiguration();
  v102 = *(v35 - 8);
  v103 = v35;
  __chkstk_darwin(v35);
  v105 = v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_10097DAF0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v85 - v39;
  v41 = sub_10002849C(&unk_1009731C0);
  v100 = *(v41 - 8);
  v101 = v41;
  __chkstk_darwin(v41);
  v43 = v85 - v42;
  sub_10002C0AC(a1, v108);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for VideoCard();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v85[0] = v3;
  v45 = v107;
  (*(v38 + 16))(v40, v104, v37);
  type metadata accessor for NilState();
  v104 = v43;
  WritableStateLens.init(_:)();
  v85[1] = v45;
  VideoCard.video.getter();
  (*(v32 + 104))(v34, enum case for VideoFillMode.scaleAspectFill(_:), v31);
  Video.preview.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  v46 = type metadata accessor for AspectRatio();
  (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  v47 = v105;
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  v48 = v108[0];
  Video.playbackId.getter();
  v49 = v97;
  Video.videoUrl.getter();
  v50 = type metadata accessor for URL();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v98;
  Video.templateMediaEvent.getter();
  v52 = v99;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView();
  sub_100708188(&qword_100973190, type metadata accessor for VideoView);
  v96 = v48;
  v53 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v52, &unk_100973A50);
  sub_10002B894(v51, &unk_100973A50);
  sub_10002B894(v49, &qword_100982460);
  sub_10002B894(v108, &qword_10096FB90);
  v54 = *(v85[0] + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong superview];
    if (v57)
    {
      v58 = v57;
      sub_100005744(0, &qword_100972EB0);
      v59 = v54;
      v60 = static NSObject.== infix(_:_:)();

      if ((v60 & 1) == 0)
      {
        goto LABEL_8;
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        goto LABEL_8;
      }

      v56 = v61;
      [v61 removeFromSuperview];
    }
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v87;
    v65 = v86;
    v66 = v88;
    (*(v87 + 104))(v86, enum case for CornerStyle.continuous(_:), v88);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (*(v64 + 8))(v65, v66);
    [v54 addSubview:v63];
    [v54 sendSubviewToBack:v63];
    [v54 setNeedsLayout];
  }

  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v67[qword_100988CC8] = 1;
  }

  v68 = *&v54[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView];
  v69 = VideoCard.lockup.getter();
  if (v69)
  {
    v70 = v69;
    [v68 setHidden:0];
    v71 = v89;
    VideoCard.overlayStyle.getter();
    sub_1001C1010(v71);
    v72 = *&v54[OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView];
    v73 = sub_10002849C(&unk_100973240);
    v74 = v90;
    (*(*(v73 - 8) + 56))(v90, 1, 1, v73);
    v75 = type metadata accessor for OfferStyle();
    v76 = v91;
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v77 = type metadata accessor for OfferEnvironment();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_10002849C(&unk_1009701A0);
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    v81 = type metadata accessor for OfferTint();
    v82 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
    v83 = v72;
    sub_1004F3190(v70, v83, v74, v106, 0, 0, v76, v78, v82, v80);
    sub_10002B894(v82, &unk_100973AD0);
    v83[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v83 setNeedsLayout];

    sub_10002B894(v80, &unk_100970150);
    sub_10002B894(v78, &unk_100970160);
    sub_10002B894(v76, &qword_100973AE0);
    sub_10002B894(v74, &unk_100973230);
    (*(v102 + 8))(v105, v103);
  }

  else
  {
    v84 = v68;
    [v84 setHidden:1];

    (*(v102 + 8))(v47, v103);
  }

  return (*(v100 + 8))(v104, v101);
}

uint64_t sub_100701A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a3;
  v66 = a2;
  v6 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v6 - 8);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  v11 = sub_10002849C(&unk_10097DAF0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = sub_10002849C(&unk_100992FA0);
  v68 = *(v15 - 8);
  v69 = v15;
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = sub_10002849C(&qword_10098F3E8);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = type metadata accessor for Annotation();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v27 = v26;
  sub_10002C0AC(v25, v71);
  sub_10002849C(&qword_100973D50);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v20, 0, 1, v27);
    v64 = v22;
    v65 = v27;
    (*(v22 + 32))(v24, v20, v27);
    (*(v12 + 16))(v14, v66, v11);
    WritableStateLens.init(_:)();
    *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = Annotation.items.getter();

    v30 = Annotation.title.getter();
    v31 = &v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
    *v31 = v30;
    v31[1] = v32;

    v33 = *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];

    v34 = String._bridgeToObjectiveC()();

    [v33 setText:v34];

    [v4 setNeedsLayout];
    v35 = Annotation.summary.getter();
    v36 = &v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
    *v36 = v35;
    v36[1] = v37;

    sub_1000B19A4();
    v38 = Annotation.linkAction.getter();
    if (v38)
    {
      v71[0] = v38;
      type metadata accessor for Action();
      type metadata accessor for BaseObjectGraph();
      sub_100708188(&qword_100992FB0, &type metadata accessor for Action);
      ComponentModel.pairedWith<A>(objectGraph:)();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v41 = sub_10002849C(&unk_10097B3D0);
    v42 = 1;
    (*(*(v41 - 8) + 56))(v10, v39, 1, v41);
    v43 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_1000C112C(v10, &v4[v43], &qword_10097B3F0);
    swift_endAccess();
    sub_1000B1B2C();
    sub_10002B894(v10, &qword_10097B3F0);
    sub_100036A58();
    v44 = v69;
    v45 = v17;
    WritableStateLens<A>.currentValue.getter();
    if ((v71[0] & 1) == 0)
    {
      v42 = Annotation.shouldAlwaysPresentExpanded.getter();
    }

    sub_1000B351C();
    v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] = v42 & 1;
    sub_1000B16F8();
    v46 = Annotation.linkAction.getter();
    if (v46)
    {
      v71[0] = v46;
      type metadata accessor for Action();
      type metadata accessor for BaseObjectGraph();
      sub_100708188(&qword_100992FB0, &type metadata accessor for Action);
      v47 = v67;
      ComponentModel.pairedWith<A>(objectGraph:)();

      v48 = 0;
    }

    else
    {
      v48 = 1;
      v47 = v67;
    }

    v49 = sub_10002849C(&unk_10097B3D0);
    (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
    swift_beginAccess();
    sub_1000C112C(v47, &v4[v43], &qword_10097B3F0);
    swift_endAccess();
    sub_1000B1B2C();
    sub_10002B894(v47, &qword_10097B3F0);
    v50 = [v4 traitCollection];
    v51 = UITraitCollection.isRegularPad.getter();

    v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v51 & 1) == 0;
    if (v51)
    {
      v52 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v53 = *&v4[v52];
      v54 = v64;
      if (v53)
      {
        [v53 removeFromSuperview];
        v55 = *&v4[v52];
      }

      else
      {
        v55 = 0;
      }

      v60 = v65;
      *&v4[v52] = 0;

      [v4 setNeedsLayout];
    }

    else
    {
      v56 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v57 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v58 = *&v4[v57];
      if (v58)
      {
        [v58 removeFromSuperview];
        v59 = *&v4[v57];
      }

      else
      {
        v59 = 0;
      }

      *&v4[v57] = v56;
      v61 = v56;

      if (v61)
      {
        sub_100005744(0, &qword_100970180);
        v62 = static UIColor.defaultLine.getter();
        [v61 setBackgroundColor:v62];

        v63 = [v4 contentView];
        [v63 addSubview:v61];
      }

      [v4 setNeedsLayout];

      v54 = v64;
      v60 = v65;
    }

    (*(v68 + 8))(v45, v44);
    return (*(v54 + 8))(v24, v60);
  }

  else
  {
    v29(v20, 1, 1, v27);
    return sub_10002B894(v20, &qword_10098F3E8);
  }
}

uint64_t sub_1007023A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v22 = a7;
  v11 = sub_10002849C(&unk_10097DAF0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13 + 8;
  v15 = sub_10002849C(&unk_1009731C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v23 - v17 + 8;
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppPromotion();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v12 + 16))(v14, a2, v11);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    type metadata accessor for ContingentOffer();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      a6(v20, a3);
    }

    else
    {
      type metadata accessor for OfferItem();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22(v21, a3);
      }
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_1007025E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002849C(&unk_10097DAF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10002849C(&unk_1009731C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10002C0AC(a1, v18);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppEvent();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v17;
    (*(v8 + 16))(v10, a2, v7);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_100168944(v16, a3);
    [v3 setNeedsLayout];

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_10070280C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-v10 - 8];
  v12 = sub_10002849C(&unk_1009731C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-v14 - 8];
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppPromotion();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    type metadata accessor for ContingentOffer();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;

      sub_100539A70(v18, a3);
    }

    else
    {
      type metadata accessor for OfferItem();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_7:
        [v4 setNeedsLayout];

        return (*(v13 + 8))(v15, v12);
      }

      v20 = v19;

      sub_100539C84(v20, a3);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100702A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v20 = a6;
  v9 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10002849C(&unk_1009731C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppEvent();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    (*(v10 + 16))(v12, a2, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v20(v18, a3);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100702CA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_10002849C(&unk_1009731C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductCapability();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v14 = *&v2[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel];
    v15 = v2;
    ProductCapability.title.getter();
    v16 = String._bridgeToObjectiveC()();

    [v14 setText:v16];

    ProductCapability.caption.getter();
    v17 = ProductCapability.captionTrailingArtwork.getter();
    v18 = LinkableText.linkedSubstrings.getter();
    v19 = sub_1000D6F24(v18, sub_1000C17B0);

    v20 = LinkableText.styledText.getter();
    v23[0] = v9;
    sub_1002F6004(v20, v17, v19);

    v21 = *&v2[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
    v22 = ProductCapability.artworkTintColor.getter();
    [v21 setTintColor:v22];

    *&v15[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = ProductCapability.artwork.getter();

    [v15 setNeedsLayout];

    return (*(v10 + 8))(v12, v23[0]);
  }

  return result;
}

uint64_t sub_100702FDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_10002849C(&unk_1009731C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  sub_10002C0AC(a1, v19);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for EditorialLink();
  result = swift_dynamicCast();
  if (result)
  {
    v17[1] = v2;
    v14 = v18;
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_10002849C(&unk_100973270);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v18 = v14;
    dispatch thunk of LinkLoader.availablePresentation(for:)();

    v15 = v19[0];
    if ((~v19[0] & 0xF000000000000007) != 0)
    {
      v16 = v19[1];
    }

    else
    {

      v16 = 0;
      v15 = v14;
    }

    sub_100510248(v15, v16);
    sub_1000C0220(v15, v16);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100703268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v5 = type metadata accessor for Shelf.PresentationHints();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_10002849C(&unk_1009731C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_10002C0AC(a1, v29);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Brick();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, v26, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    Brick.accessibilityLabel.getter();
    if (v18)
    {
      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    v20 = v28;
    [v28 setAccessibilityLabel:v19];

    static Shelf.PresentationHints.showSupplementaryText.getter();
    sub_100708188(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      v22 = Brick.shortEditorialDescription.getter();
      v23 = &v20[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
      *v23 = v22;
      v23[1] = v24;

      sub_1000F88B0();
    }

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1007035B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a2;
  v7 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for AspectRatio();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_10097DAF0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_10002849C(&unk_1009731C0);
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Quote();
  result = swift_dynamicCast();
  if (result)
  {
    v48 = a5;
    (*(v15 + 16))(v17, v49, v14);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v22 = v52;
    v23 = *&v52[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView];
    v24 = Quote.text.getter();
    sub_10007003C(v24, v25);
    v26 = Quote.credit.getter();
    sub_1000707B0(v26, v27);
    v23[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] = Quote.isFullWidthArtwork.getter() & 1;
    sub_100070BA0();
    if (Quote.artwork.getter())
    {
      Artwork.size.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      (*(v11 + 16))(v9, v13, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v28 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_1000315F8(v9, &v23[v28], &unk_1009732A0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:0];
      [v23 setNeedsLayout];
      v29 = [v22 contentView];
      sub_100005744(0, &qword_100972EB0);
      LayoutMarginsAware<>.layoutFrame.getter();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v54.origin.x = v31;
      v54.origin.y = v33;
      v54.size.width = v35;
      v54.size.height = v37;
      Width = CGRectGetWidth(v54);
      AspectRatio.height(fromWidth:)();
      v40 = v39;

      (*(v11 + 8))(v13, v10);
      v41 = &v22[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
      *v41 = Width;
      *(v41 + 1) = v40;
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      v42 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_1000315F8(v9, &v23[v42], &unk_1009732A0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:1];
      [v23 setNeedsLayout];
      v43 = &v22[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
      *v43 = 0;
      *(v43 + 1) = 0;
    }

    v44 = v48;
    [v48 pageMarginInsets];
    v46 = v45;
    [v44 pageMarginInsets];
    [v23 setLayoutMargins:{0.0, v46, 0.0}];

    return (*(v50 + 8))(v20, v51);
  }

  return result;
}

uint64_t sub_100703B48(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7 - 8];
  v9 = sub_10002849C(&unk_1009731C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-v11 - 8];
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Footnote();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v14 = *&v2[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
    v15 = Footnote.presentationStyle.getter();
    v16 = v14[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron];
    v14[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = (v15 & 2) != 0;
    sub_10007B3E8(v16);
    v14[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = (Footnote.presentationStyle.getter() & 4) != 0;
    v17 = *&v14[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
    Footnote.text.getter();
    v18 = String._bridgeToObjectiveC()();

    [v17 setText:v18];

    [v14 setNeedsLayout];
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100703DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19[0] = a5;
  v9 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_10002849C(&qword_100975768);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Paragraph();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v19[2];
    (*(v10 + 16))(v12, a2, v9);
    WritableStateLens.init(_:)();
    sub_100319230(v18, v16, a3, a4, v19[0]);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100703FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v7 = sub_10002849C(&unk_10097DAF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9 + 8;
  v11 = sub_10002849C(&unk_1009731C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - v13 + 8;
  sub_10002C0AC(a1, v17);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Lockup();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_1002F753C();

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100704208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyTypeStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  v23[0] = sub_10002849C(&unk_1009731C0);
  v12 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v14 = v23 - v13;
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyType();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v16 = v23[1];
    PrivacyType.style.getter();
    v17 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v5 + 24))(v16 + v17, v7, v4);
    swift_endAccess();
    sub_100361A78();
    (*(v5 + 8))(v7, v4);
    v18 = PrivacyType.title.getter();
    sub_1003617E4(v18, v19);
    v20 = PrivacyType.detail.getter();
    sub_1003617F0(v20, v21);
    *(v16 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork) = PrivacyType.artwork.getter();

    v22 = PrivacyType.categories.getter();
    sub_100363EC8();
    *(v16 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories) = v22;

    sub_1003617FC();

    return (*(v12 + 8))(v14, v23[0]);
  }

  return result;
}

uint64_t sub_100704558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), void (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v21 = a4;
  v22 = a5;
  v11 = sub_10002849C(&unk_10097DAF0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = sub_10002849C(&unk_1009731C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - v17;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50);
  a6(0);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v24;
    (*(v12 + 16))(v14, a2, v11);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v23(v20, v18, a3, v21, v22);

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_100704774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = sub_10002849C(&unk_1009731C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for FramedArtwork();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  (*(v11 + 16))(v13, a2, v10);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  v19 = FramedMedia.caption.getter();
  v20 = [v19 length];

  v21 = &selRef_setRequiresColorStatistics_;
  if (v20 <= 0)
  {
    [*&v6[qword_100989278] setText:0];
    v6[qword_1009D23C8] = 0;
    v31 = *&v6[qword_100989268];
    [v31 setHidden:1];
    goto LABEL_7;
  }

  v45 = v17;
  v46 = v15;
  v47 = v14;
  v22 = FramedMedia.caption.getter();
  v23 = [a5 traitCollection];
  v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
  v48 = [v22 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100126854;
  *(v26 + 24) = v25;
  aBlock[4] = sub_100126848;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008CFC78;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  [v22 enumerateAttributesInRange:0 options:v48 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = *&v6[qword_100989278];
  [isEscapingClosureAtFileLocation setAttributedText:v29];
  if (qword_10096E6A8 != -1)
  {
LABEL_22:
    swift_once();
  }

  [isEscapingClosureAtFileLocation setTextColor:qword_1009D23B0];
  v6[qword_1009D23C8] = 1;
  v31 = *&v6[qword_100989268];
  [v31 setHidden:0];

  v15 = v46;
  v14 = v47;
  v17 = v45;
  v21 = &selRef_setRequiresColorStatistics_;
LABEL_7:
  v32 = *&v6[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v32 v21[11]];

  v6[qword_1009D23C0] = (FramedMedia.isFullWidth.getter() & 1) == 0;
  sub_10012684C();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0 && v6[qword_1009D23C8] != 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  if (FramedMedia.isFullWidth.getter())
  {
    [v31 setBackgroundColor:0];
  }

  else
  {
    sub_100005744(0, &qword_100970180);
    v35 = static UIColor.placeholderBackground.getter();
    [v31 setBackgroundColor:v35];
  }

  if (FramedArtwork.artwork.getter())
  {
    v36 = [v6 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v38 = v37;

    Artwork.size.getter();
    v40 = v39;
    Artwork.size.getter();
    v42 = v41;

    result = (*(v15 + 8))(v17, v14);
    v43 = &v6[qword_1009CFF30];
    *v43 = v38;
    v43[1] = v38 * (v40 / v42);
  }

  else
  {

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_100704E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002849C(&qword_100973288);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v75 = &v63 - v10;
  v70 = type metadata accessor for Separator.Position();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v12 - 8);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v63 - v15;
  v16 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_10002849C(&unk_10097DAF0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - v21;
  v23 = sub_10002849C(&unk_1009731C0);
  v69 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_10002C0AC(a1, v79);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyHeader();
  result = swift_dynamicCast();
  if (result)
  {
    v27 = v78;
    (*(v20 + 16))(v22, a2, v19);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v79[0] = PrivacyHeader.bodyText.getter();
    type metadata accessor for LinkableText();
    v28 = type metadata accessor for BaseObjectGraph();
    sub_100708188(&qword_100973290, &type metadata accessor for LinkableText);
    v73 = v28;
    v74 = a3;
    ComponentModel.pairedWith<A>(objectGraph:)();

    v29 = sub_10002849C(&unk_100993030);
    (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
    v30 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_1000C112C(v18, v4 + v30, &unk_100993020);
    swift_endAccess();
    sub_1004C3F10();
    sub_10002B894(v18, &unk_100993020);
    v31 = PrivacyHeader.isDetailHeader.getter();
    *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader) = v31 & 1;
    v32 = *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel);
    sub_100005744(0, &qword_100970180);
    v33 = v25;
    if (v31)
    {
      v34 = static UIColor.primaryText.getter();
    }

    else
    {
      v34 = static UIColor.secondaryText.getter();
    }

    v35 = *(v32 + qword_10097F920);
    *(v32 + qword_10097F920) = v34;
    v36 = v34;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_1002F63D4();
    }

    v37 = PrivacyHeader.supplementaryItems.getter();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v33;
    v65 = v23;
    v66 = v27;
    if (v39)
    {
      v79[0] = _swiftEmptyArrayStorage;
      result = sub_100144004(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
        return result;
      }

      v63 = v4;
      v40 = 0;
      v41 = v79[0];
      v42 = v75;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v43 = *(v38 + 8 * v40 + 32);
        }

        v78 = v43;
        type metadata accessor for PrivacyHeaderSupplementaryItem();
        sub_100708188(&qword_100973298, &type metadata accessor for PrivacyHeaderSupplementaryItem);
        ComponentModel.pairedWith<A>(objectGraph:)();

        v79[0] = v41;
        v45 = *(v41 + 2);
        v44 = *(v41 + 3);
        if (v45 >= v44 >> 1)
        {
          sub_100144004(v44 > 1, v45 + 1, 1);
          v41 = v79[0];
        }

        ++v40;
        *(v41 + 2) = v45 + 1;
        (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v45, v42, v76);
      }

      while (v39 != v40);

      v4 = v63;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v46 = v71;
    sub_1004C56C0();
    v47 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems) = v41;

    sub_1004C41B4();
    if (PrivacyHeader.isDetailHeader.getter())
    {
      v48 = *(v72 + 104);
      v72 += 104;
      LODWORD(v77) = enum case for Separator.Position.top(_:);
      v76 = v48;
      v48(v46);
      v75 = type metadata accessor for ZeroDimension();
      v80 = v75;
      v81 = &protocol witness table for ZeroDimension;
      sub_1000056E0(v79);
      static ZeroDimension.zero.getter();
      v49 = v68;
      Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
      v50 = type metadata accessor for Separator();
      v51 = v4;
      v52 = *(*(v50 - 8) + 56);
      v53 = 1;
      v52(v49, 0, 1, v50);
      v54 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000C112C(v49, v51 + v54, &unk_100970E10);
      swift_endAccess();
      sub_1004C4970();
      sub_10002B894(v49, &unk_100970E10);
      if (*(*(v51 + v47) + 16))
      {
        v76(v71, v77, v70);
        v80 = v75;
        v81 = &protocol witness table for ZeroDimension;
        sub_1000056E0(v79);
        static ZeroDimension.zero.getter();
        v55 = v67;
        Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
        v53 = 0;
        v56 = v69;
      }

      else
      {
        v56 = v69;
        v55 = v67;
      }

      v52(v55, v53, 1, v50);
      v62 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000C112C(v55, v51 + v62, &unk_100970E10);
      swift_endAccess();
      sub_1004C4984();

      sub_10002B894(v55, &unk_100970E10);
      return (*(v56 + 8))(v64, v65);
    }

    else
    {
      v57 = type metadata accessor for Separator();
      v58 = *(*(v57 - 8) + 56);
      v59 = v68;
      v58(v68, 1, 1, v57);
      v60 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000C112C(v59, v4 + v60, &unk_100970E10);
      swift_endAccess();
      sub_1004C4970();
      sub_10002B894(v59, &unk_100970E10);
      v58(v59, 1, 1, v57);
      v61 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000C112C(v59, v4 + v61, &unk_100970E10);
      swift_endAccess();
      sub_1004C4984();

      sub_10002B894(v59, &unk_100970E10);
      return (*(v69 + 8))(v64, v65);
    }
  }

  return result;
}

uint64_t sub_1007058FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11 - 8];
  v13 = sub_10002849C(&unk_1009731C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15 - 8];
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for EditorialQuote();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, a2, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v18 = [v5 contentView];
    [a5 pageMarginInsets];
    [v18 setLayoutMargins:?];

    v19 = EditorialQuote.text.getter();
    sub_1002804BC(v19, v20);
    v21 = EditorialQuote.attribution.getter();
    sub_1002804C8(v21, v22);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100705B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalRule.Style();
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_10002849C(&unk_10097DAF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10002849C(&unk_1009731C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10002C0AC(a1, v18);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for HorizontalRule();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    HorizontalRule.style.getter();
    sub_10075D014(v6);
    v16 = HorizontalRule.color.getter();
    sub_10075DB40(v16);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100705DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = sub_10002849C(&unk_1009731C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-v10 - 8];
  sub_10002C0AC(a1, v15);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Ratings();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v14;
    (*(v5 + 16))(v7, a2, v4);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_100522BA0(v13, 1);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100705FAC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7 - 8];
  v9 = sub_10002849C(&unk_1009731C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-v11 - 8];
  sub_10002C0AC(a1, v16);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyCategory();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v15;
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    *&v2[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = v14;

    *(*&v2[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category) = v14;

    sub_100378DCC();
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_10070620C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_10097DAF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8 - 8];
  v10 = sub_10002849C(&unk_1009731C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-v12 - 8];
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductPageLink();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v7 + 16))(v9, a2, v6);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    ProductPageLink.text.getter();
    dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

    ProductPageLink.systemImageName.getter();
    if (v15)
    {
      v16 = static SystemImage.load(_:with:includePrivateImages:)();
    }

    else
    {
      v16 = 0;
    }

    v17 = *&v3[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
    *&v3[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = v16;
    v18 = v16;

    sub_1005B06B4();
    [v3 setNeedsLayout];

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_100706494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v25 = a2;
  v4 = type metadata accessor for SmallPlayerCardData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_10002849C(&unk_10097DAF0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = sub_10002849C(&unk_1009731C0);
  v26 = *(v15 - 8);
  v27 = v15;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_10002C0AC(a1, v30);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ImpressionableSmallPlayerCard();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v29;
    (*(v12 + 16))(v14, v25, v11);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    ImpressionableSmallPlayerCard.data.getter();
    sub_100135F78(v10);
    v20 = *(v5 + 8);
    v20(v7, v4);
    dispatch thunk of SmallPlayerCardView.apply(data:shouldSetImage:)();
    v20(v10, v4);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v28;
    v22[2] = v19;
    v22[3] = v23;
    v22[4] = v21;

    dispatch thunk of SmallPlayerCardView.buttonActionBlock.setter();

    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    *(v24 + 24) = v23;

    dispatch thunk of SmallPlayerCardView.closeButtonActionBlock.setter();

    return (*(v26 + 8))(v17, v27);
  }

  return result;
}

uint64_t sub_100706858(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v8 = sub_10002849C(&unk_1009731C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-v10 - 8];
  sub_10002C0AC(a1, v18);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyDefinition();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v5 + 16))(v7, a2, v4);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v13 = PrivacyDefinition.title.getter();
    sub_1000278AC(v13, v14);
    v15 = PrivacyDefinition.definition.getter();
    sub_1000278B8(v15, v16);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100706A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v65 = a5;
  v9 = sub_10002849C(&unk_100973220);
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for AchievementGroupView.Size();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Achievement();
  v69 = *(v62 - 8);
  __chkstk_darwin(v62);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v58 - v18;
  v19 = sub_10002849C(&unk_10097DAF0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v23 = sub_10002849C(&unk_1009731C0);
  v66 = *(v23 - 8);
  v67 = v23;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  sub_10002C0AC(a1, v70);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AchievementSummary();
  result = swift_dynamicCast();
  if (result)
  {
    v58 = v11;
    (*(v20 + 16))(v22, a2, v19);
    type metadata accessor for NilState();
    v59 = v25;
    WritableStateLens.init(_:)();
    v27 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = AchievementSummary.completedAchievements.getter();
    v29._object = 0x80000001008005F0;
    v29._countAndFlagsBits = 0xD000000000000032;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v29, v28, v30);
    v31 = String._bridgeToObjectiveC()();

    [v27 setText:v31];

    v32 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v33 = v65;
    v34 = [v65 traitCollection];
    sub_10059DF60();

    v35 = String._bridgeToObjectiveC()();

    [v32 setText:v35];

    v36 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel);
    AchievementSummary.completedText.getter();
    v37 = String._bridgeToObjectiveC()();

    [v36 setText:v37];

    v38 = AchievementSummary.achievements.getter();
    if (*(v38 + 16))
    {
      v39 = v68;
      v40 = *(v69 + 16);
      v41 = v62;
      v40(v68, v38 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v62);

      v40(v16, v39, v41);
      AchievementSummary.totalAchievements.getter();
      v42 = [v33 traitCollection];
      LOBYTE(v40) = UITraitCollection.isSizeClassCompact.getter();

      v43 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v40 & 1) == 0)
      {
        v43 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v60 + 104))(v14, *v43, v61);
      v44 = objc_allocWithZone(type metadata accessor for AchievementGroupView());
      v45 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
      v46 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
      v47 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v47)
      {
        [v47 removeFromSuperview];
        v48 = *(v6 + v46);
      }

      else
      {
        v48 = 0;
      }

      v52 = v58;
      *(v6 + v46) = v45;
      v53 = v45;

      [*(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView) addSubview:v53];
      if (AchievementSummary.totalAchievements.getter() < 2)
      {
        v54 = v59;
        if (qword_10096D9F0 != -1)
        {
          swift_once();
        }

        v55 = qword_1009CFC48;
      }

      else
      {
        v54 = v59;
        if (qword_10096D9F8 != -1)
        {
          swift_once();
        }

        v55 = qword_1009CFC60;
      }

      v56 = v64;
      v57 = sub_1000056A8(v64, v55);
      (*(v63 + 16))(v52, v57, v56);
      swift_beginAccess();
      AchievementSummaryLayout.Metrics.achievementStackInsets.setter();
      swift_endAccess();

      (*(v69 + 8))(v68, v41);
      return (*(v66 + 8))(v54, v67);
    }

    else
    {

      v49 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
      v50 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v50)
      {
        [v50 removeFromSuperview];
        v51 = *(v6 + v49);
      }

      else
      {
        v51 = 0;
      }

      *(v6 + v49) = 0;

      return (*(v66 + 8))(v59, v67);
    }
  }

  return result;
}

uint64_t sub_1007071C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v7 = sub_10002849C(&unk_1009732C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10002849C(&unk_1009731C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ArcadeDownloadPackCard();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v19 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
    if (v20)
    {
      v21 = ArcadeDownloadPackCard.lockups.getter();
      v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_1002F1F30(v21, v9, 1, v24);

      sub_10002B894(v9, &unk_1009732C0);
      [v4 layoutIfNeeded];
    }

    else
    {
      sub_1002F1C34(v19);
    }

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1007074C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = sub_10002849C(&unk_1009731C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-v11 - 8];
  sub_10002C0AC(a1, v17);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PreorderDisclaimer();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v14 = *(v2 + OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    PreorderDisclaimer.disclaimer.getter();
    v15 = String._bridgeToObjectiveC()();

    [v14 setText:v15];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1007076F0(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_10002849C(&qword_100991E20);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = v39 - v5;
  v6 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v6 - 8);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v49 = type metadata accessor for ActivityFeedLockupViewModel();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_10097DAF0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - v24;
  v26 = sub_10002849C(&unk_1009731C0);
  v43 = *(v26 - 8);
  v44 = v26;
  __chkstk_darwin(v26);
  v28 = v39 - v27;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for GameCenterActivityFeedCard();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v23 + 16))(v25, v42, v22);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v30 = v21;
    v41 = v21;
    v31 = v52;
    GameCenterActivityFeedCard.data.getter();
    v40 = v19;
    GameCenterActivityFeedCard.profileActionMetrics.getter();
    GameCenterActivityFeedCard.profileAvatarActionMetrics.getter();
    GameCenterActivityFeedCard.leaderboardActionMetrics.getter();
    GameCenterActivityFeedCard.achievementActionMetrics.getter();
    v32 = v46;
    v33 = GameCenterActivityFeedCard.appActionMetrics.getter();
    v42 = v39;
    __chkstk_darwin(v33);
    v39[1] = v39;
    v39[-8] = v30;
    v39[-7] = v31;
    v39[-6] = v45;
    v39[-5] = v19;
    v39[-4] = v16;
    v39[-3] = v13;
    v39[-2] = v10;
    v39[-1] = v32;
    __chkstk_darwin(v34);
    v39[-4] = sub_1006B0BAC;
    v39[-3] = v35;
    v39[-2] = v36;
    v39[-1] = v31;
    sub_10002849C(&qword_100991E28);
    sub_1006B0BCC();
    v37 = v48;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v38 = v51;
    v53[3] = v51;
    v53[4] = sub_100097060(&qword_1009930A0, &qword_100991E20);
    sub_1000056E0(v53);
    UIHostingConfiguration.margins(_:_:)();
    (*(v50 + 8))(v37, v38);
    UICollectionViewCell.contentConfiguration.setter();

    (*(v43 + 8))(v28, v44);
    sub_10002B894(v32, &unk_100993040);
    sub_10002B894(v10, &unk_100993040);
    sub_10002B894(v13, &unk_100993040);
    sub_10002B894(v16, &unk_100993040);
    sub_10002B894(v40, &unk_100993040);
    return (*(v47 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_100707CE4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10002849C(&unk_10097DAF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5 + 8;
  v7 = sub_10002849C(&unk_100992FA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9 + 8;
  v11 = type metadata accessor for Annotation();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_10002C0AC(a1, v18);
  sub_10002849C(&qword_100973D50);
  swift_dynamicCast();
  (*(v4 + 16))(v6, v17, v3);
  WritableStateLens.init(_:)();
  if (sub_1000AE724())
  {
    sub_100036A58();
    WritableStateLens<A>.updateValue(_:)();
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_100707F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = sub_10002849C(&unk_1009731C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-v10];
  sub_10002C0AC(a1, v14);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for LargeHeroBreakout();
  swift_dynamicCast();
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  if (dispatch thunk of LargeHeroBreakout.clickAction.getter())
  {

    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_100708188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007081F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  if (v19[0] && (v10 = ShelfHeader.hasTrailingArtwork.getter(), , (v10 & 1) != 0))
  {
    v11 = type metadata accessor for ComponentSeparator();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v13 = v19[0];
    UITraitCollection.prefersAccessibilityLayouts.getter();

    sub_10002849C(&unk_100980530);
    ItemLayoutContext.typedModel<A>(as:)();
    if (v18)
    {
      sub_100177264(&v17, v19);
      sub_10002A400(v19, v19[3]);
      if (SearchAdOpportunityProviding.isSearchAd.getter())
      {
        v14 = 1;
      }

      else
      {
        (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
        ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
        v14 = 0;
      }

      v16 = type metadata accessor for ComponentSeparator();
      (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
      return sub_100007000(v19);
    }

    else
    {
      sub_100479F68(&v17);
      (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
      ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
      v15 = type metadata accessor for ComponentSeparator();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

unint64_t sub_1007085DC()
{
  result = qword_10098EA80;
  if (!qword_10098EA80)
  {
    type metadata accessor for PageTabChangeAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098EA80);
  }

  return result;
}

uint64_t sub_10070863C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_100624370(Strong);

  type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController();
  if (swift_dynamicCastClass())
  {

    v6._countAndFlagsBits = PageTabChangeAction.selectedTabId.getter();
    SearchChartsAndCategoriesDiffablePagePresenter.updateTab(for:)(v6);

    sub_10002849C(&qword_1009764A0);
    (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
    v7 = Promise.__allocating_init(value:)();
  }

  else
  {
    sub_10002849C(&qword_1009764A0);
    sub_1007087EC();
    swift_allocError();
    v7 = Promise.__allocating_init(error:)();
  }

  return v7;
}

unint64_t sub_1007087EC()
{
  result = qword_1009930A8;
  if (!qword_1009930A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009930A8);
  }

  return result;
}

unint64_t sub_100708854()
{
  result = qword_1009930B0;
  if (!qword_1009930B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009930B0);
  }

  return result;
}

uint64_t sub_1007088A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_100005644(v4, qword_1009D3798);
  v44 = sub_1000056A8(v4, qword_1009D3798);
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0698);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  (v7)(v3, enum case for FontSource.useCase(_:), v0);
  v8 = v7;
  v50 = v7;
  v86 = type metadata accessor for StaticDimension();
  v87 = &protocol witness table for StaticDimension;
  v9 = v86;
  v51 = v86;
  sub_1000056E0(v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v82);
  v49 = v1[2];
  v49(v10, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v46 = v1[1];
  v46(v3, v0);
  *v3 = UIFontTextStyleBody;
  v47 = enum case for FontSource.textStyle(_:);
  v8(v3);
  v48 = v1 + 13;
  v83 = v9;
  v84 = &protocol witness table for StaticDimension;
  sub_1000056E0(v82);
  v80 = v0;
  v81 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v79);
  v12 = v49;
  v49(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v14 = v46;
  v46(v3, v0);
  *v3 = v13;
  v15 = v47;
  v50(v3, v47, v0);
  v80 = v51;
  v81 = &protocol witness table for StaticDimension;
  sub_1000056E0(v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v76);
  v12(v16, v3, v0);
  v17 = v13;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  *v3 = v17;
  v18 = v50;
  v50(v3, v15, v0);
  v19 = v51;
  v77 = v51;
  v78 = &protocol witness table for StaticDimension;
  v42 = sub_1000056E0(v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v73);
  v49(v20, v3, v0);
  v21 = v17;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  *v3 = v21;
  v22 = v47;
  v18(v3, v47, v0);
  v74 = v19;
  v75 = &protocol witness table for StaticDimension;
  sub_1000056E0(v73);
  v71 = v0;
  v72 = &protocol witness table for FontSource;
  v23 = sub_1000056E0(v70);
  v24 = v49;
  v49(v23, v3, v0);
  v45 = v1 + 2;
  v25 = v21;
  StaticDimension.init(_:scaledLike:)();
  v46(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v18(v3, v22, v0);
  v71 = v51;
  v72 = &protocol witness table for StaticDimension;
  sub_1000056E0(v70);
  v68 = v0;
  v69 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v67);
  v24(v26, v3, v0);
  v27 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v28 = v46;
  v46(v3, v0);
  v43 = v1 + 1;
  *v3 = v27;
  v29 = v47;
  v18(v3, v47, v0);
  v30 = v51;
  v68 = v51;
  v69 = &protocol witness table for StaticDimension;
  v42 = sub_1000056E0(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v64);
  v24(v31, v3, v0);
  v32 = v27;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  *v3 = v32;
  v50(v3, v29, v0);
  v65 = v30;
  v66 = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v61);
  v24(v33, v3, v0);
  v34 = v32;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  *v3 = v34;
  v35 = v50;
  v50(v3, v29, v0);
  v62 = v51;
  v63 = &protocol witness table for StaticDimension;
  v42 = sub_1000056E0(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v58);
  v24(v36, v3, v0);
  v37 = v34;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  *v3 = v37;
  v35(v3, v47, v0);
  v59 = v51;
  v60 = &protocol witness table for StaticDimension;
  sub_1000056E0(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v55);
  v49(v38, v3, v0);
  v39 = v37;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  v56 = type metadata accessor for ZeroDimension();
  v57 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v55);
  static ZeroDimension.zero.getter();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  v52 = 0x4024000000000000;
  return SmallLockupLayout.Metrics.init(artworkSize:artworkMargins:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)();
}

uint64_t sub_100709164()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_100005644(v4, qword_1009D37B0);
  v41[0] = sub_1000056A8(v4, qword_1009D37B0);
  if (qword_10096E400 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B80);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v45 = v9;
  v10 = v8;
  v51 = enum case for FontSource.useCase(_:);
  v11 = v1[13];
  v44 = v1 + 13;
  v50 = v11;
  v11(v3);
  v47 = type metadata accessor for StaticDimension();
  v84[3] = v47;
  v84[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v84);
  v82 = v0;
  v83 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v81);
  v48 = v1[2];
  v49 = v1 + 2;
  v48(v12, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v43 = v1[1];
  v41[1] = v1 + 1;
  v43(v3, v0);
  v46 = v6;
  v42 = v5;
  v52 = v8;
  v8(v3, v6, v5);
  v13 = v51;
  v50(v3, v51, v0);
  v14 = v47;
  v82 = v47;
  v83 = &protocol witness table for StaticDimension;
  sub_1000056E0(v81);
  v79 = v0;
  v80 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v78);
  v48(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v16 = v43;
  v43(v3, v0);
  v10(v3, v6, v5);
  v17 = v50;
  v50(v3, v13, v0);
  v79 = v14;
  v80 = &protocol witness table for StaticDimension;
  sub_1000056E0(v78);
  v76 = v0;
  v77 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v75);
  v19 = v48;
  v48(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v16(v3, v0);
  v20 = v42;
  v52(v3, v46, v42);
  v17(v3, v51, v0);
  v76 = v47;
  v77 = &protocol witness table for StaticDimension;
  sub_1000056E0(v75);
  v73 = v0;
  v74 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v72);
  v19(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = v43;
  v43(v3, v0);
  v52(v3, v46, v20);
  v50(v3, v51, v0);
  v23 = v47;
  v73 = v47;
  v74 = &protocol witness table for StaticDimension;
  sub_1000056E0(v72);
  v70 = v0;
  v71 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v69);
  v48(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22(v3, v0);
  if (qword_10096E408 != -1)
  {
    swift_once();
  }

  v25 = v42;
  v26 = sub_1000056A8(v42, qword_1009D1B98);
  v52(v3, v26, v25);
  v27 = v50;
  v50(v3, v51, v0);
  v70 = v23;
  v71 = &protocol witness table for StaticDimension;
  sub_1000056E0(v69);
  *(&v67 + 1) = v0;
  v68 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(&v66);
  v48(v28, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v43(v3, v0);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v52(v3, v46, v42);
  v29 = v27;
  v27(v3, v51, v0);
  v30 = v47;
  v65[3] = v47;
  v65[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v62);
  v48(v31, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v43(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v29(v3, enum case for FontSource.textStyle(_:), v0);
  v63 = v30;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v59);
  v33 = v48;
  v48(v32, v3, v0);
  v34 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v35 = v43;
  v43(v3, v0);
  v36 = v42;
  v52(v3, v46, v42);
  v37 = v51;
  v50(v3, v51, v0);
  v60 = v47;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v57 = v0;
  v58 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v56);
  v33(v38, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v35(v3, v0);
  v52(v3, v46, v36);
  v50(v3, v37, v0);
  v57 = v47;
  v58 = &protocol witness table for StaticDimension;
  sub_1000056E0(v56);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v53);
  v33(v39, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v35(v3, v0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  v53[0] = 0x4024000000000000;
  return SmallLockupLayout.Metrics.init(artworkSize:artworkMargins:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)();
}

uint64_t sub_100709B04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_10096D030 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for StaticDimension();
    v4 = v3;
    v5 = qword_1009CDF18;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = type metadata accessor for ZeroDimension();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(a2);
      return static ZeroDimension.zero.getter();
    }

    if (qword_10096D028 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for StaticDimension();
    v4 = v3;
    v5 = qword_1009CDF00;
  }

  v6 = sub_1000056A8(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_1000056E0(a2);
  v8 = *(*(v4 - 8) + 16);

  return v8(v7, v6, v4);
}

void sub_100709C80(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_iconType];
  v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_iconType] = a1 & 1;
  if (v8 != (a1 & 1))
  {
    if (a1)
    {
      v9 = [v2 traitCollection];
      UITraitCollection.prefersAccessibilityLayouts.getter();

      InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
      v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
      v11 = sub_1002EB7C0(v7, 1);
      v12 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
      v13 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v18 = v11;

      [v2 addSubview:v18];
      [*&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView] setHidden:1];
    }

    else
    {
      v15 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
      v16 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v2[v15];
      }

      else
      {
        v17 = 0;
      }

      *&v2[v15] = 0;

      [*&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView] setHidden:0];
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_100709E58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v6 = v5 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  if (*(v5 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v7 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(v5 + v7, v13);
    sub_10002A400(v13, v13[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v9 = v8;
    v11 = v10;
    sub_100007000(v13);
    *v6 = v9;
    *(v6 + 8) = v11;
    *(v6 + 16) = 0;
  }

  return SmallLockupLayout.Metrics.offerButtonSize.setter();
}

uint64_t sub_10070A300@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = type metadata accessor for SmallLockupLayout();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  sub_100709E58(&v53 - v11);
  v13 = OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  if (v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] == 1 && (v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] & 1) == 0)
  {
    Copyable.copyWithOverrides(in:)();
    v14 = v62;
    (*(v62 + 8))(v12, v4);
    (*(v14 + 32))(v12, v9, v4);
    v13 = OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  }

  v55 = v9;
  if (v2[v13] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
    v16 = type metadata accessor for DynamicTypeLabel();
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UILabel;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    }

    *&v79 = v17;
    sub_100005A38(&v79, v82);
    v20 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = &protocol witness table for UILabel;
    }

    else
    {
      v22 = 0;
    }

    v79 = v20;
    *&v80 = 0;
    *(&v80 + 1) = v21;
    v81 = v22;
    v23 = v20;
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    v19 = type metadata accessor for DynamicTypeLabel();
    v82[3] = v19;
    v82[4] = &protocol witness table for UILabel;
    v82[0] = v18;
    v15 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
    if (v15)
    {
      *(&v80 + 1) = type metadata accessor for SearchAdTransparencyLabel();
      v81 = &protocol witness table for UILabel;
      *&v79 = v15;
      sub_100005A38(&v79, &v76);
    }

    else
    {
      v24 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
      if (v24)
      {
        v25 = &protocol witness table for UILabel;
      }

      else
      {
        v19 = 0;
        v25 = 0;
        *(&v76 + 1) = 0;
        *&v77 = 0;
      }

      *&v76 = v24;
      *(&v77 + 1) = v19;
      v78 = v25;
      v26 = v18;
      v15 = 0;
      v18 = v24;
    }

    v27 = v18;
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  v28 = v15;
  v29 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
  if (*&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon])
  {
    [*&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView] setHidden:1];
  }

  v30 = *(v62 + 16);
  v56 = v12;
  v54 = v30;
  v30(v6, v12, v4);
  v31 = *&v2[v29];
  *(&v77 + 1) = sub_100005744(0, &qword_100972EB0);
  v78 = &protocol witness table for UIView;
  v57 = v6;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  }

  *&v76 = v32;
  v33 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel];
  v34 = type metadata accessor for DynamicTypeLabel();
  v75[3] = v34;
  v75[4] = &protocol witness table for UILabel;
  v75[0] = v33;
  v35 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v36 = v4;
  if (v35)
  {
    v37 = &protocol witness table for UILabel;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v35;
  v74[3] = v38;
  v74[4] = v37;
  v39 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  v73[4] = &protocol witness table for UILabel;
  v73[3] = v34;
  v72[4] = &protocol witness table for UILabel;
  v73[0] = v39;
  v40 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
  v72[3] = v34;
  v72[0] = v40;
  v41 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  v71[3] = type metadata accessor for OfferButton();
  v71[4] = &protocol witness table for UIView;
  v71[0] = v41;
  v42 = v31;
  v43 = v33;
  v44 = v35;
  v45 = v39;
  v46 = v40;
  v47 = v41;

  v48 = v57;
  v54(v55, v57, v36);
  sub_10002C0AC(&v76, &v70);
  sub_10002C0AC(v75, &v69);
  sub_100031660(v74, &v68, &unk_10097E890);
  sub_10002C0AC(v73, &v67);
  sub_10002C0AC(v82, &v66);
  sub_100031660(&v79, &v65, &unk_10097E890);
  sub_100031660(v72, &v64, &unk_10097E890);
  sub_100031660(v71, &v63, &qword_100975610);
  v49 = v58;
  SmallLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)();
  sub_10070B8B4();
  v50 = v61;
  Measurable.placeable.getter();
  (*(v59 + 8))(v49, v50);
  v51 = *(v62 + 8);
  v51(v48, v36);
  sub_10002B894(&v79, &unk_10097E890);
  v51(v56, v36);
  sub_100007000(v82);
  sub_10002B894(v71, &qword_100975610);
  sub_10002B894(v72, &unk_10097E890);
  sub_100007000(v73);
  sub_10002B894(v74, &unk_10097E890);
  sub_100007000(v75);
  return sub_100007000(&v76);
}

uint64_t sub_10070A9C8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  v9[3] = type metadata accessor for StaticDimension();
  v9[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v9);
  v8[3] = v0;
  v8[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v8);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v4, v0);
  return SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
}

void sub_10070AB34()
{
  v1 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
      v6 = v4;
      [v5 setHidden:1];
      v7 = v6;
      dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v8 = v7;
      v9 = [v5 textColor];
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
      v11 = v4;
      if (v10)
      {
        [v10 setHidden:1];
      }

      v12 = qword_10096DD58;
      v13 = v4;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for FontUseCase();
      v15 = sub_1000056A8(v14, qword_1009D07A0);
      v16 = *(v14 - 8);
      (*(v16 + 16))(v3, v15, v14);
      (*(v16 + 56))(v3, 0, 1, v14);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      sub_100005744(0, &qword_100970180);
      v17 = v13;
      v9 = static UIColor.secondaryText.getter();
    }

    v18 = v9;
    [v4 setTextColor:v9];
  }
}

uint64_t sub_10070AD88(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer];
  if (v4 && (sub_100005744(0, &unk_100993110), v7 = a1, v8 = v4, LOBYTE(a1) = static NSObject.== infix(_:_:)(), v8, v7, (a1 & 1) != 0))
  {
    [a2 locationInView:v3];
    v9 = [v3 hitTest:0 withEvent:?];
    if (v9)
    {
      v10 = v9;
      v11 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
      sub_100005744(0, &qword_100972EB0);
      v12 = v11;
      v13 = v10;
      v14 = static NSObject.== infix(_:_:)();

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_10070B000()
{
  v1 = OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock])
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
    [v3 addTarget:v0 action:"lockupTapGestureRecognized"];
    [v3 setDelegate:v0];

    [v0 addGestureRecognizer:v3];
    v2 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = v3;
}

uint64_t sub_10070B160()
{
  v1 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);

  return sub_10001F63C(v3);
}

id sub_10070B20C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallLockupView()
{
  result = qword_1009930F8;
  if (!qword_1009930F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10070B348()
{
  result = type metadata accessor for SmallLockupLayout.Metrics();
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

double sub_10070B400(double a1, double a2)
{
  v5 = type metadata accessor for SmallLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100709E58(v8);
  [v9 layoutMargins];
  v12 = sub_100508464(v8, v9, a1, a2, v10, v11);
  (*(v6 + 8))(v8, v5);
  return v12;
}

unint64_t sub_10070B544()
{
  result = qword_100993108;
  if (!qword_100993108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993108);
  }

  return result;
}

double sub_10070B598(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SmallLockupLayout.Metrics();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  (*(v12 + 16))(v15, a1, v11);
  v17 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v19 & 1) == 0 && ((v17 | v18) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v20 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v20 = qword_100991028;
    }

    v21 = sub_1000056A8(v4, v20);
    (*(v5 + 16))(v7, v21, v4);
    (*(v5 + 32))(v10, v7, v4);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v5 + 8))(v10, v4);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v23 = v22;

  (*(v12 + 8))(v15, v11);
  return v23;
}

unint64_t sub_10070B8B4()
{
  result = qword_100993120;
  if (!qword_100993120)
  {
    type metadata accessor for SmallLockupLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993120);
  }

  return result;
}

id sub_10070B90C()
{
  v1 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for UITypesettingLanguageAwareLineHeightRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_iconType] = 0;
  v6 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SmallLockupLayout.Metrics();
  v8 = sub_1000056A8(v7, qword_1009D3798);
  (*(*(v7 - 8) + 16))(&v0[v6], v8, v7);
  *&v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel] = 0;
  v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer] = 0;
  v9 = &v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock];
  v10 = type metadata accessor for SmallLockupView();
  *v9 = 0;
  v9[1] = 0;
  v14.receiver = v0;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v3 + 104))(v5, enum case for UITypesettingLanguageAwareLineHeightRatio.legacy(_:), v2);
  v12 = v11;
  UIView.traitOverrides.getter();
  UIMutableTraits._typesettingLanguageAwareLineHeightRatio.setter();
  UIView.traitOverrides.setter();

  return v12;
}

id sub_10070BB88()
{
  result = [objc_allocWithZone(UISegmentedControl) init];
  qword_100993130 = result;
  return result;
}

double sub_10070BBC8(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 40;
    do
    {
      v7 = qword_10096EE90;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_100993130;
      v9 = String._bridgeToObjectiveC()();
      [v8 addSegmentWithTitle:v9];

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (qword_10096EE90 != -1)
  {
    swift_once();
  }

  v10 = qword_100993130;
  [qword_100993130 sizeThatFits:{a2, a3}];
  v12 = v11;
  [v10 removeAllSegments];
  return v12;
}

void sub_10070BD28(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_10006230C() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_1009D01C8]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_10070BF90(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_1009D01D0];
        if (v13)
        {
          v14 = *&v6[qword_1009D01C8];

          if (v14 || (v15 = [v6 traitCollection], v16 = UITraitCollection.isRegularPad.getter(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_1009D01C8];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_10070BF90(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isRegularPad.getter();

  if (v5)
  {
    if (a1)
    {
      sub_100028BB8();
      v6 = static UIColor.appTint.getter();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

uint64_t sub_10070C164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_100993210;
    v15 = sub_10002849C(&qword_100993210);
    sub_100097060(&qword_100993218, &qword_100993210);
    sub_100097060(&qword_100993220, &qword_100993210);
    v16 = &unk_100993228;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v15 = sub_1007512DC(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v15;
    }

    v14 = &qword_1009931F0;
    v15 = sub_10002849C(&qword_1009931F0);
    sub_100097060(&qword_1009931F8, &qword_1009931F0);
    sub_100097060(&qword_100993200, &qword_1009931F0);
    v16 = &unk_100993208;
  }

  sub_100097060(v16, v14);
  return v15;
}

void sub_10070C4F0()
{
  v1 = [v0 layer];
  [v1 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v2 = [*&v0[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] layer];
  [v2 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v3 = [*&v0[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] layer];
  [v3 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
}

void sub_10070C5EC(uint64_t a1, double a2)
{
  v5 = type metadata accessor for CornerStyle();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for CornerStyle.continuous(_:))
  {
    [v2 _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] _setContinuousCornerRadius:a2];
  }

  else
  {
    v11 = v10;
    v12 = enum case for CornerStyle.arc(_:);
    [v2 _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] _setCornerRadius:a2];
    if (v11 != v12)
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  sub_10070C4F0();
}

id sub_10070C7C4(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10002849C(&qword_100972638);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v35 - v12;
  if ((a2 & 1) == 0)
  {
    v36 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
    v21 = *&a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
    [v21 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v21, "isHidden")}];
    v22 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_100031660(&v21[v22], v13, &qword_100972638);
    v23 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_1000315F8(v13, v14 + v23, &qword_100972638);
    swift_endAccess();
    v24 = [*&v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView] image];
    if (v24)
    {
      v25 = &v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize];
      if ((v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 16] & 1) != 0 || (v26 = *&v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v28 = *v25;
        v27 = v25[1];
        v29 = v24;

        v30 = v29;
        sub_1001A5AD8(v29, v28, v27, 0, v26, a3, v36);
      }
    }

    v15 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
    v20 = *&a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
    [v20 frame];
    [v15 setFrame:?];
    [v15 setHidden:{objc_msgSend(v20, "isHidden")}];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      swift_unknownObjectWeakAssign();
    }

    goto LABEL_11;
  }

  v14 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  v15 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
  v16 = *&a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = v16;

    v20 = v19;
    sub_100666A9C(v19, a3);

LABEL_11:
  }

  v32 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  v33 = a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded];
  v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded] = v33;
  *(v14 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded) = v33;
  [v14 setNeedsLayout];
  *(v15 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = v5[v32];
  sub_100665B04();
  result = [v5 setHidden:{objc_msgSend(a1, "isHidden")}];
  v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia];
  return result;
}

void sub_10070CB5C(uint64_t a1, int a2)
{
  v17[1] = a2;
  v3 = sub_10002849C(&qword_10097A450);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v18 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  v14 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_100031660(v13 + v14, v5, &qword_10097A450);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_10097A450);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_10070DDA4(&qword_100979D80, &type metadata accessor for UUID);
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    sub_10003D614(v19);
    (*(v7 + 8))(v12, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for TodayCardVideoView();
    sub_10070DDA4(&qword_100979D70, type metadata accessor for TodayCardVideoView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

id sub_10070CE5C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097A450);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  v9 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
  swift_beginAccess();
  sub_1000315F8(v7, &v8[v10], &qword_100972638);
  swift_endAccess();
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_1000315F8(v4, &v8[v12], &qword_10097A450);
  swift_endAccess();
  [*&v8[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView] setImage:0];
  v13 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(Strong + qword_1009CDFF8) = 7;
    sub_1000FA22C();
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(v16);

  v17 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded) = 0;
  v8[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = 0;
  [v8 setNeedsLayout];
  *(v13 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = *(v1 + v17);
  result = sub_100665B04();
  *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
  return result;
}

char *sub_10070D124(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded] = 0;
  v10 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  v11 = type metadata accessor for PageGrid();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = 7;
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning] = 0;
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = 0;
  v12 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  v16 = v14;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView]];

  return v16;
}

void sub_10070D304()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory);
  *(*(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  v7 = *(v1 + v2);
  *(v6 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory) = v7;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    (*((swift_isaMask & *v8) + 0x118))(v7);
  }
}

void sub_10070D46C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10070DDA4(&qword_100979D58, type metadata accessor for TodayCardVideoView);
    v4 = [v9 superview];
    if (v4)
    {
      v5 = v4;
      sub_100028004();
      v6 = v2;
      v7 = static NSObject.== infix(_:_:)();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = swift_unknownObjectWeakLoadStrong();
      if (!v8)
      {
        return;
      }

      *(v8 + qword_1009CDFF8) = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory);
      v9 = v8;
      sub_1000FA22C();
    }
  }
}

void (*sub_10070D660(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100666A04;
}

uint64_t type metadata accessor for StoryCardMediaView()
{
  result = qword_100993260;
  if (!qword_100993260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10070D784()
{
  sub_1000A77BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10070D860(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);
}

uint64_t (*sub_10070D8E0(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10070D660(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10070D950()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10070DDA4(&qword_100993280, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10070D9C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10070DDA4(&qword_100993280, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10070DA50(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10070DDA4(&qword_100993280, type metadata accessor for StoryCardMediaView);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10070DB0C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100028004();
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

void sub_10070DC6C()
{
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded) = 0;
  v1 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  v2 = type metadata accessor for PageGrid();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
  v3 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10070DDA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10070DDEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10070DF00(uint64_t a1)
{
  sub_10002849C(&qword_100973210);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B48F0;
  *(v2 + 32) = sub_10070F708();
  *(v2 + 40) = sub_10070E070(a1);
  *(v2 + 48) = sub_10070FB98();
  return v2;
}

void sub_10070DF78(char a1)
{
  byte_100993288 = a1 & 1;
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
}

void sub_10070E044(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10070E070(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B15F0;
  v7 = v6;
  type metadata accessor for ActionDebugSetting();
  v8 = swift_allocObject();
  strcpy((v8 + 56), "Clear Recents");
  *(v8 + 70) = -4864;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = sub_10070E394;
  *(v8 + 112) = 0;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v3 + 8);
  v27 = v2;
  v28 = v3 + 8;
  v12(v5, v2);
  v13 = v12;
  v29 = v9;
  v30 = v11;
  AnyHashable.init<A>(_:)();
  *(v7 + 32) = v8;
  v14 = v7;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  strcpy((v17 + 56), "Show Recents");
  *(v17 + 69) = 0;
  *(v17 + 70) = -5120;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = sub_10071018C;
  *(v17 + 104) = v16;

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;

  v13(v5, v2);
  v29 = v18;
  v30 = v20;
  AnyHashable.init<A>(_:)();

  *(v14 + 40) = v17;
  type metadata accessor for DebugSection();
  v21 = swift_allocObject();
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v13(v5, v27);
  *(v21 + 16) = v22;
  *(v21 + 24) = v24;
  strcpy((v21 + 32), "Search Focus");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 48) = v14;
  return v21;
}

void sub_10070E394()
{
  type metadata accessor for OnDeviceSearchHistoryManager();
  BaseObjectGraph.inject<A>(_:)();
  OnDeviceSearchHistoryManager.clearData()();
}

void sub_10070E3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100710194(a3);
  }
}

uint64_t sub_10070E438()
{
  if (qword_10096EE98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_1009932A0;
  v9 = *&qword_1009932B0;
  v7 = xmmword_100993290;
  v10 = qword_1009932C0;
  v11 = xmmword_100993290;
  v0 = qword_1009932B0;
  sub_10019D860(&v11, &v6);
  v1 = v0;

  v2 = sub_10070EA28();
  v4 = v3;
  sub_1001964F0(&v11);

  if (v4)
  {
    return 0x20746C7561666544;
  }

  v6 = v2;
  return dispatch thunk of CustomStringConvertible.description.getter();
}

void sub_10070E550(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        v9 = sub_10070EC94(a2, a3, 10);
        v13 = v29;

LABEL_65:
        if (v13)
        {
          v9 = 0;
        }

        goto LABEL_67;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v30[0] = a2;
        v30[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v20 = v30 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v25 = v30;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v14 = v30 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              v16 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                break;
              }

              ++v14;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v17 = v7 + 1;
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_63;
                  }

                  v19 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v9 = v19 + v18;
                  if (__OFADD__(v19, v18))
                  {
                    goto LABEL_63;
                  }

                  ++v17;
                  if (!--v4)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v23 = *v7 - 48;
                if (v23 > 9)
                {
                  goto LABEL_63;
                }

                v24 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v24 + v23;
                if (__OFADD__(v24, v23))
                {
                  goto LABEL_63;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v9 = 0;
          LOBYTE(v4) = 1;
          goto LABEL_64;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_63;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_63;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v4) = 0;
LABEL_64:
            v13 = v4;
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v9 = 0;
  v13 = 1;
LABEL_67:
  if (qword_10096EE98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10070EB30(v9, v13 & 1);
  swift_endAccess();
}

uint64_t sub_10070E8B8@<X0>(uint64_t a1@<X8>)
{
  if (byte_1009932C8 != 2)
  {
    return AnyHashable.init<A>(_:)();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10070E940()
{
  if (qword_10096EE98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10070EB30(0, 1);
  result = swift_endAccess();
  byte_1009932C8 = 2;
  return result;
}

id sub_10070E9D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10070EA28()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100056164(v8, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_10002849C(&unk_1009711D0);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v6 ^ 1;
  v3(v8, &v9);
  if (BYTE8(v8[0]))
  {
    return v1;
  }

  else
  {
    return *&v8[0];
  }
}

void sub_10070EB30(uint64_t a1, char a2)
{
  v8 = a1;
  v9 = a2 & 1;
  v3 = *(v2 + 32);
  (*(v2 + 40))(&v6, &v8);
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  v5 = String._bridgeToObjectiveC()();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

id sub_10070EBE0()
{
  result = [objc_opt_self() standardUserDefaults];
  *&xmmword_100993290 = 0xD00000000000001ELL;
  *(&xmmword_100993290 + 1) = 0x8000000100821C10;
  *&xmmword_1009932A0 = 0;
  BYTE8(xmmword_1009932A0) = 1;
  qword_1009932B0 = result;
  unk_1009932B8 = sub_10070EC64;
  qword_1009932C0 = 0;
  return result;
}

uint64_t sub_10070EC64@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((*(result + 8) & 1) != 0 || (v2 = *result, *result <= 1))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unsigned __int8 *sub_10070EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10070F220();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10070F220()
{
  v0 = String.subscript.getter();
  v4 = sub_10070F2A0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10070F2A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10070F3F8(v9, 0), v12 = sub_10070F46C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

double *sub_10070F3F8(uint64_t a1, uint64_t a2)
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

  sub_10002849C(&qword_1009932F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_2(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10070F46C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10070F68C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10070F68C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10070F68C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10070F708()
{
  v0 = type metadata accessor for UUID();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007B0B70;
  v38 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v33 = 28271;
  v34 = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 56) = 28271;
  *(v4 + 64) = 0xE200000000000000;
  *(v4 + 80) = sub_100710184;
  *(v4 + 88) = v3;
  v5 = v36;
  *(v4 + 16) = v35;
  *(v4 + 32) = v5;
  *(v4 + 48) = v37;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v33 = 6710895;
  v34 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 56) = 6710895;
  *(v7 + 64) = 0xE300000000000000;
  *(v7 + 80) = sub_100710184;
  *(v7 + 88) = v6;
  v8 = v36;
  *(v7 + 16) = v35;
  *(v7 + 32) = v8;
  *(v7 + 48) = v37;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v9 = v38;
  type metadata accessor for MenuDebugSetting();
  v10 = swift_allocObject();
  *(v10 + 56) = 0xD000000000000014;
  *(v10 + 64) = 0x8000000100821C30;
  *(v10 + 72) = v9;
  *(v10 + 80) = sub_10070DFE4;
  *(v10 + 88) = 0;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = v29;
  v15 = *(v28 + 8);
  v15(v2, v29);
  v33 = v11;
  v34 = v13;
  AnyHashable.init<A>(_:)();
  v16 = v36;
  *(v10 + 16) = v35;
  *(v10 + 32) = v16;
  *(v10 + 48) = v37;
  v17 = 28271;
  if (byte_100993288)
  {
    v17 = 6710895;
  }

  v18 = 0xE200000000000000;
  if (byte_100993288)
  {
    v18 = 0xE300000000000000;
  }

  v33 = v17;
  v34 = v18;

  AnyHashable.init<A>(_:)();
  v19 = *(v10 + 72);
  v32 = &v35;

  sub_10070DDEC(sub_10018C38C, v31, v19);

  sub_10002B894(&v35, &qword_10096FB90);
  v20 = v30;
  *(v30 + 32) = v10;
  *&v35 = v20;
  sub_100394BD0(_swiftEmptyArrayStorage);
  v21 = v35;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v15(v2, v14);
  *(v22 + 16) = v23;
  *(v22 + 24) = v25;
  strcpy((v22 + 32), "Search Landing");
  *(v22 + 47) = -18;
  *(v22 + 48) = v21;
  return v22;
}

void *sub_10070FB98()
{
  v35 = type metadata accessor for UUID();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B48F0;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v4 = sub_100553DF8(0x6E6F697469736F50, 0xE800000000000000, sub_10070E438, 0, sub_10070E550, 0);
  v33 = v3;
  *(v3 + 32) = v4;
  v41 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v36 = 0x6465726564726F62;
  v37 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 56) = 0x6465726564726F62;
  *(v6 + 64) = 0xE800000000000000;
  *(v6 + 80) = sub_100710174;
  *(v6 + 88) = v5;
  v7 = v39;
  *(v6 + 16) = v38;
  *(v6 + 32) = v7;
  *(v6 + 48) = v40;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v36 = 0x64656C6C6966;
  v37 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  *(v9 + 56) = 0x64656C6C6966;
  *(v9 + 64) = 0xE600000000000000;
  *(v9 + 80) = sub_100710174;
  *(v9 + 88) = v8;
  v10 = v39;
  *(v9 + 16) = v38;
  *(v9 + 32) = v10;
  *(v9 + 48) = v40;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v11 = v41;
  type metadata accessor for MenuDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Display Style");
  *(v12 + 70) = -4864;
  *(v12 + 72) = v11;
  *(v12 + 80) = sub_10070E8B8;
  *(v12 + 88) = 0;
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v0 + 8);
  v34 = v0 + 8;
  v16(v2, v35);
  *&v38 = v13;
  *(&v38 + 1) = v15;
  v17 = AnyHashable.init<A>(_:)();
  if (byte_1009932C8 == 2)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    v18 = 0x6465726564726F62;
    if (byte_1009932C8)
    {
      v18 = 0x64656C6C6966;
    }

    v19 = 0xE800000000000000;
    if (byte_1009932C8)
    {
      v19 = 0xE600000000000000;
    }

    v36 = v18;
    v37 = v19;
    v17 = AnyHashable.init<A>(_:)();
  }

  v32 = 0x8000000100821BD0;
  __chkstk_darwin(v17);
  *(&v31 - 2) = &v38;

  sub_10070DDEC(sub_1001587FC, (&v31 - 4), v11);

  sub_10002B894(&v38, &qword_10096FB90);
  v20 = v33;
  *(v33 + 40) = v12;
  type metadata accessor for ActionDebugSetting();
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000010;
  *(v21 + 64) = 0x8000000100821BF0;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_10070E940;
  *(v21 + 112) = 0;
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v25 = v35;
  v16(v2, v35);
  *&v38 = v22;
  *(&v38 + 1) = v24;
  AnyHashable.init<A>(_:)();
  *(v20 + 48) = v21;
  type metadata accessor for DebugSection();
  v26 = swift_allocObject();
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v16(v2, v25);
  v26[2] = v27;
  v26[3] = v29;
  v26[4] = 0xD000000000000019;
  v26[5] = v32;
  v26[6] = v20;
  return v26;
}

uint64_t sub_100710194(uint64_t a1)
{
  v142 = type metadata accessor for SearchHistoryItem();
  v144 = *(v142 - 1);
  __chkstk_darwin(v142);
  v141 = v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_10002849C(&unk_100974490);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = v91 - v3;
  v4 = sub_10002849C(&qword_100990398);
  __chkstk_darwin(v4 - 8);
  v128 = v91 - v5;
  v6 = type metadata accessor for PageMetrics();
  __chkstk_darwin(v6 - 8);
  v127 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for FlowOrigin();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FlowAnimationBehavior();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v123 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for FlowPresentationContext();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v122 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v143 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v13 - 8);
  v119 = v91 - v14;
  v115 = type metadata accessor for FlowPage();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessibilityMetadata();
  __chkstk_darwin(v16 - 8);
  v113 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Shelf.ContentsMetadata();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v112 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Shelf.PresentationHints();
  __chkstk_darwin(v107);
  v110 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ShelfBackground();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v108 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ShelfHorizontalScrollTargetBehavior();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v106 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strategy = type metadata accessor for IncompleteShelfFetchStrategy();
  v97 = *(Strategy - 8);
  __chkstk_darwin(Strategy);
  v136 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v23 - 8);
  v145 = v91 - v24;
  v25 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v25 - 8);
  v135 = v91 - v26;
  v27 = sub_10002849C(&qword_10097BA20);
  __chkstk_darwin(v27 - 8);
  v134 = v91 - v28;
  v29 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v29 - 8);
  v99 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = v91 - v32;
  v33 = type metadata accessor for ShelfHeader.Configuration();
  __chkstk_darwin(v33 - 8);
  v94 = v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v35 - 8);
  v92 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v93 = v91 - v38;
  v39 = sub_10002849C(&qword_1009903A8);
  __chkstk_darwin(v39 - 8);
  v133 = v91 - v40;
  v41 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v41 - 8);
  v43 = v91 - v42;
  v44 = type metadata accessor for Shelf.ContentType();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = v91 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OnDeviceSearchHistoryManager();
  v132 = a1;
  BaseObjectGraph.inject<A>(_:)();
  v52 = v150;
  sub_10002849C(&qword_100973210);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1007B0B70;
  UUID.init()();
  v53 = UUID.uuidString.getter();
  v55 = v54;
  (*(v49 + 8))(v51, v48);
  *&v146 = v53;
  *(&v146 + 1) = v55;
  AnyHashable.init<A>(_:)();
  v56 = *(v45 + 104);
  v95 = v47;
  v56(v47, enum case for Shelf.ContentType.action(_:), v44);
  v57 = *(v45 + 56);
  v96 = v43;
  v57(v43, 1, 1, v44);
  v58 = type metadata accessor for ShelfMarker();
  (*(*(v58 - 8) + 56))(v133, 1, 1, v58);
  v105 = v52;
  v59 = OnDeviceSearchHistoryManager.fetchRecents(limit:)();
  v60 = *(v59 + 16);
  if (v60)
  {
    v149 = _swiftEmptyArrayStorage;
    sub_1001442CC(0, v60, 0);
    v61 = v149;
    v140 = *(v144 + 16);
    v62 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v91[1] = v59;
    v63 = v59 + v62;
    v64 = *(v144 + 72);
    v144 += 16;
    v138 = (v144 - 8);
    v139 = v64;
    do
    {
      v65 = v141;
      v66 = v142;
      v140(v141, v63, v142);
      v148 = 0;
      v146 = 0u;
      v147 = 0u;
      SearchHistoryItem.debugDescription.getter();
      static ActionMetrics.notInstrumented.getter();
      v67 = type metadata accessor for ImpressionMetrics();
      (*(*(v67 - 8) + 56))(v145, 1, 1, v67);
      v68 = type metadata accessor for Action();
      swift_allocObject();
      v69 = Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)();
      (*v138)(v65, v66);
      v149 = v61;
      v71 = *(v61 + 2);
      v70 = *(v61 + 3);
      if (v71 >= v70 >> 1)
      {
        sub_1001442CC((v70 > 1), v71 + 1, 1);
        v61 = v149;
      }

      *(&v147 + 1) = v68;
      v148 = sub_10063BA9C(&qword_100992FB0, &type metadata accessor for Action);
      *&v146 = v69;
      *(v61 + 2) = v71 + 1;
      sub_100005A38(&v146, &v61[5 * v71 + 4]);
      v63 += v139;
      --v60;
    }

    while (v60);
  }

  v72 = type metadata accessor for ShelfHeader.ArtworkType();
  v73 = *(*(v72 - 8) + 56);
  v73(v93, 1, 1, v72);
  v73(v92, 1, 1, v72);
  ShelfHeader.Configuration.init(eyebrowColor:eyebrowImageColor:titleColor:titleImageColor:subtitleColor:accessoryColor:includeSeparator:includeTrailingArtwork:prefersShelfHeader:)();
  type metadata accessor for ShelfHeader();
  swift_allocObject();
  v144 = ShelfHeader.init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)();
  v74 = type metadata accessor for URL();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v77 = (v75 + 56);
  v140 = v74;
  v76(v137, 1, 1, v74);
  v141 = v77;
  v142 = v76;
  v78 = type metadata accessor for ShelfFooterStyle();
  (*(*(v78 - 8) + 56))(v134, 1, 1, v78);
  v79 = type metadata accessor for Date();
  (*(*(v79 - 8) + 56))(v135, 1, 1, v79);
  v80 = type metadata accessor for ImpressionMetrics();
  (*(*(v80 - 8) + 56))(v145, 1, 1, v80);
  v76(v99, 1, 1, v74);
  (*(v97 + 104))(v136, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), Strategy);
  (*(v100 + 104))(v106, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v101);
  (*(v103 + 104))(v108, enum case for ShelfBackground.none(_:), v104);
  sub_10002849C(&qword_1009903B0);
  swift_allocObject();
  AsyncEvent.init()();
  *&v146 = _swiftEmptyArrayStorage;
  sub_10063BA9C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  sub_10002849C(&qword_10097DB30);
  sub_10063BAE4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v109 + 104))(v112, enum case for Shelf.ContentsMetadata.none(_:), v111);
  AccessibilityMetadata.init(label:roleDescription:)();
  type metadata accessor for Shelf();
  swift_allocObject();
  v81 = v137;
  *(v102 + 32) = Shelf.init(id:contentType:placeholderContentType:marker:items:header:url:mergeWhenFetched:batchGroup:fetchStrategy:footerTitle:footerAction:footerStyle:isHidden:isHorizontal:horizontalScrollTargetBehavior:isPersonalized:rowsPerColumn:background:onShouldRemoveModel:removeModelEvents:presentationHints:contentsMetadata:nextPreferredContentRefreshDate:impressionMetrics:refreshUrl:pageChangeMetrics:accessibilityMetadata:)();
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  (*(v114 + 104))(v116, enum case for FlowPage.page(_:), v115);
  (v142)(v81, 1, 1, v140);
  v82 = type metadata accessor for ReferrerData();
  (*(*(v82 - 8) + 56))(v119, 1, 1, v82);
  v146 = 0u;
  v147 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v117 + 104))(v122, enum case for FlowPresentationContext.infer(_:), v118);
  (*(v120 + 104))(v123, enum case for FlowAnimationBehavior.infer(_:), v121);
  (*(v124 + 104))(v126, enum case for FlowOrigin.inapp(_:), v125);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v83 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v150 = 0u;
  v151 = 0u;
  static PageMetrics.notInstrumented.getter();
  v84 = type metadata accessor for JSONContext();
  (*(*(v84 - 8) + 56))(v128, 1, 1, v84);
  v85 = type metadata accessor for GenericPage();
  swift_allocObject();
  v86 = GenericPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)();
  *(&v151 + 1) = v85;
  *&v150 = v86;
  FlowAction.setPageData(_:)();
  sub_10002B894(&v150, &unk_1009711D0);
  v87 = v129;
  v88 = v131;
  v89 = v132;
  BaseObjectGraph.inject<A>(_:)();
  sub_1005F9C8C(v83, 1, v89, v87);

  return (*(v130 + 8))(v87, v88);
}

uint64_t sub_100711848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100711890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1007118F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1007119AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HorizontalStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalStack.init(with:)();
  sub_1000CB084(v2, &v15);
  if (*(&v16 + 1))
  {
    sub_100005A38(&v15, v21);
    sub_100711D70(v2, &v15);
    v8 = swift_allocObject();
    v9 = v18;
    v8[3] = v17;
    v8[4] = v9;
    v10 = v20;
    v8[5] = v19;
    v8[6] = v10;
    v11 = v16;
    v8[1] = v15;
    v8[2] = v11;
    HorizontalStack.add(_:with:)();

    sub_100007000(v21);
  }

  else
  {
    sub_1000CC370(&v15);
  }

  HorizontalStack.add(_:with:)();
  a1[3] = v4;
  a1[4] = &protocol witness table for HorizontalStack;
  v12 = sub_1000056E0(a1);
  return (*(v5 + 32))(v12, v7, v4);
}

double sub_100711B64()
{
  sub_1007119AC(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = ceil(v0);
  sub_1006BF5E8(v3);
  return v1;
}

uint64_t sub_100711C08()
{
  sub_1007119AC(v1);
  sub_10002A400(v1, v1[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_1006BF5E8(v1);
}

uint64_t sub_100711CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100711DF8();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100711D00()
{
  result = qword_100993300;
  if (!qword_100993300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993300);
  }

  return result;
}

unint64_t sub_100711DF8()
{
  result = qword_100993308;
  if (!qword_100993308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993308);
  }

  return result;
}

uint64_t sub_100711E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = type metadata accessor for ShelfLayoutContext();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009731F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v11 + 8);
  v17(v15, v10);
  swift_beginAccess();
  v18 = *(v4 + 16);
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_1003D78D8(v32);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    sub_10003D614(v32);
    (*(v7 + 16))(v9, v16, v6);
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(0);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v17;
    v22 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState;
    v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    (*(v7 + 32))(v21 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v9, v6);
    swift_unknownObjectWeakAssign();
    *(v21 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_objectGraph) = v30;

    v24 = v28;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v27(v24, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_100051DFC(v21, v32, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v31;
    swift_endAccess();
    sub_10003D614(v32);
    return v21;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  sub_10003D614(v32);

  return v21;
}

char *sub_100712264(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v10 = &v4[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_tapGestureRecognizer] = 0;
  v11 = &v4[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_clickActionHandler];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_wantsCardConsistentMargins] = 0;
  type metadata accessor for TodayCardLockupView();
  *&v4[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending:0];

  v14 = OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView;
  v15 = *&v12[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView];
  v16 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_allowsGroupBlending;
  v15[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_allowsGroupBlending] = 0;
  v17 = v15;
  v18 = [v17 layer];
  [v18 setAllowsGroupBlending:v15[v16]];

  v19 = [*&v17[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] layer];
  [v19 setAllowsGroupBlending:v15[v16]];

  [*(*&v12[v14] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v12 addSubview:*&v12[v14]];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v20 setDelegate:v12];
  [v20 addTarget:v12 action:"handleTap"];

  [v12 addGestureRecognizer:v20];
  v21 = *&v12[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_tapGestureRecognizer];
  *&v12[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_tapGestureRecognizer] = v20;
  v22 = v20;

  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  return v12;
}

void sub_1007125B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v118 = a6;
  v132 = a2;
  v136 = a1;
  v10 = a5;
  v11 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v11 - 8);
  v117 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Artwork.Crop();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v14 - 8);
  v131 = &v113 - v15;
  v16 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v16 - 8);
  v130 = &v113 - v17;
  v18 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v18 - 8);
  v129 = &v113 - v19;
  v20 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v20 - 8);
  v128 = &v113 - v21;
  v22 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v22 - 8);
  v121 = &v113 - v23;
  v120 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v24 = *(v120 - 8);
  __chkstk_darwin(v120);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v27 - 8);
  v122 = &v113 - v28;
  v137 = type metadata accessor for TodayCard.Style();
  v29 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v113 - v33;
  v35 = v6[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_sizeCategory];
  v6[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_sizeCategory] = a5;
  v36 = v10;
  if (v10 == 7)
  {
    if (v35 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v6 setNeedsLayout];
    goto LABEL_6;
  }

  if (v35 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v35 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v35 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v35 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v35 - 7) > 0xFFFFFFFC || v35 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v37 = [v6 traitCollection];
  v38 = v36;
  if (v36 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v37 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v6 setLayoutMargins:{v40, v42, v44, v46}];
  v47 = sub_1000A7C28(a4);
  [v7 setBackgroundColor:v47];

  v48 = *(v29 + 104);
  v126 = enum case for TodayCard.Style.white(_:);
  v127 = v29 + 104;
  v125 = v48;
  v48(v34);
  v49 = sub_100714724(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v124 = v49;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v135 = a4;
  if (v142 == v138 && v143 == v139)
  {
    v50 = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v50 = 1;
  }

  else
  {
    v50 = 2;
  }

  v51 = *(v29 + 8);
  v134 = v29 + 8;
  v123 = v51;
  v51(v34, v137);

  [v7 setOverrideUserInterfaceStyle:v50];
  v52 = [v7 layer];
  [v52 setCornerRadius:20.0];

  v53 = [v7 layer];
  v54 = v53;
  v55 = 12;
  if (v38 == 6)
  {
    v55 = 15;
  }

  if (v7[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_isExpanded])
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  [v53 setMaskedCorners:v56];

  v57 = OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView;
  v58 = *&v7[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView];
  v119 = TodayCardLockupOverlay.lockup.getter();
  v59 = *(v24 + 104);
  v60 = v120;
  v59(v26, enum case for OfferButtonPresenterViewAlignment.right(_:), v120);
  v61 = v121;
  v59(v121, enum case for OfferButtonPresenterViewAlignment.left(_:), v60);
  (*(v24 + 56))(v61, 0, 1, v60);
  sub_100714724(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v62 = v122;
  AccessibilityConditional.init(value:axValue:)();
  v63 = sub_10002849C(&unk_100973240);
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = TodayCardLockupOverlay.displaysIcon.getter();
  v65 = type metadata accessor for OfferStyle();
  v66 = v128;
  (*(*(v65 - 8) + 56))(v128, 1, 1, v65);
  v67 = type metadata accessor for OfferEnvironment();
  v68 = v129;
  (*(*(v67 - 8) + 56))(v129, 1, 1, v67);
  v69 = type metadata accessor for OfferTint();
  v70 = v130;
  (*(*(v69 - 8) + 56))(v130, 1, 1, v69);
  v71 = sub_10002849C(&unk_1009701A0);
  v72 = v131;
  (*(*(v71 - 8) + 56))(v131, 1, 1, v71);
  sub_1004F3190(v119, v58, v62, v132, (v64 & 1) == 0, 0, v66, v68, v70, v72);
  v58[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_100776DD8();
  [v58 setNeedsLayout];
  sub_100776DD8();

  sub_10002B894(v72, &unk_100970150);
  sub_10002B894(v70, &unk_100973AD0);
  sub_10002B894(v68, &unk_100970160);
  sub_10002B894(v66, &qword_100973AE0);
  sub_10002B894(v62, &unk_100973230);
  v73 = *&v7[v57];
  sub_100005744(0, &qword_100970180);
  v74 = v73;
  v75 = static UIColor.primaryText.getter();
  v76 = v75;
  v77 = *&v74[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor];
  *&v74[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor] = v75;
  if (!v77)
  {
    v82 = v75;
    v79 = 0;
    v81 = v133;
    goto LABEL_23;
  }

  v78 = v75;
  v79 = v77;
  v80 = static NSObject.== infix(_:_:)();

  v81 = v133;
  if ((v80 & 1) == 0)
  {
LABEL_23:
    sub_10003E7B4();
    v78 = v76;
  }

  v83 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v84 = static UIColor.secondaryText.getter();
  [v83 setTextColor:v84];

  v85 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v86 = static UIColor.secondaryText.getter();
  [v85 setTextColor:v86];

  v87 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
  v88 = static UIColor.secondaryText.getter();
  [v87 setTextColor:v88];

  v89 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
  v90 = static UIColor.secondaryText.getter();
  [v89 setTextColor:v90];

  v91 = *&v7[v57];
  v92 = v91[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_preferStackedLargeAXLayouts];
  v91[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_preferStackedLargeAXLayouts] = 1;
  if ((v92 & 1) == 0)
  {
    v93 = &v91[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics];
    swift_beginAccess();
    v93[337] = 1;
    [v91 setNeedsLayout];
  }

  v125(v81, v126, v137);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v138 == v140 && v139 == v141)
  {
    v123(v81, v137);

LABEL_30:
    v95 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
    v96 = static UIColor.appTint.getter();
    goto LABEL_32;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v123(v81, v137);

  if (v94)
  {
    goto LABEL_30;
  }

  v97 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v98 = objc_opt_self();
  v95 = v97;
  v96 = [v98 whiteColor];
LABEL_32:
  v99 = v96;
  [v95 setTintColor:v96];

  v100 = *&v7[v57];
  v101 = *(v100 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v101)
  {
    v102 = v101;
    v103 = static UIColor.secondaryText.getter();
    [v102 setTextColor:v103];

    v100 = *&v7[v57];
  }

  v104 = *(v100 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v104)
  {
    v105 = v104;
    v106 = static UIColor.secondaryText.getter();
    [v105 setTextColor:v106];

    v107 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    if (v107)
    {
      [v107 setAccessibilityIgnoresInvertColors:1];
    }
  }

  sub_100713670();
  TodayCardLockupOverlay.lockup.getter();
  v108 = Lockup.icon.getter();

  if (v108)
  {
    v109 = v114;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v115 + 8))(v109, v116);
    swift_beginAccess();
    Artwork.config(_:mode:prefersLayeredImage:)();
    v110 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v110 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v111 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    type metadata accessor for ArtworkView();
    sub_100714724(&qword_100970E80, &type metadata accessor for ArtworkView);
    v112 = v111;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
    v112 = *(*&v7[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    ArtworkView.image.setter();
  }
}

void sub_100713670()
{
  [v0 overrideUserInterfaceStyle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = *&v0[v2];
  v6 = *(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v6)
  {
    v7 = [v6 layer];
    [v7 setCompositingFilter:v1];

    v5 = *&v0[v2];
  }

  v8 = [*(*(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v8 setCompositingFilter:v1];

  v9 = [*(*&v0[v2] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) layer];
  [v9 setCompositingFilter:v1];
}

uint64_t sub_100713838()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  [v0 layoutMargins];
  CGRect.subtracting(insets:)();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView;
  [*&v0[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView] sizeThatFits:{v5, v7}];
  v11 = v10;
  v12 = *&v0[v9];
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  v14 = CGRectGetMidY(v21) + v11 * -0.5;
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  [v12 setFrame:{MinX, v14, CGRectGetWidth(v22), v11}];

  v15 = &v0[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v17 = *v15;
  if (*v15)
  {

    v17(v18);
    return sub_10001F63C(v17);
  }

  return result;
}

double sub_100713A24(double a1)
{
  v3 = [v1 traitCollection];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_1002D2EF4(v3, &xmmword_1009D3ED0, 1);
  UITraitCollection.prefersAccessibilityLayouts.getter();
  static UIEdgeInsets.vertical(top:bottom:)();
  UITraitCollection.prefersAccessibilityLayouts.getter();
  static UIEdgeInsets.vertical(top:bottom:)();

  return a1;
}

void sub_100713DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v24);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for TodayCard();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = TodayCard.overlay.getter(), , v13))
      {
        type metadata accessor for TodayCardLockupOverlay();
        if (swift_dynamicCastClass())
        {
          TodayCardLockupOverlay.lockup.getter();
          Lockup.impressionMetrics.getter();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10002B894(v6, &qword_100973D30);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            ImpressionsCalculator.addElement(_:at:)();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1007141FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4);
}

void sub_10071421C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_100714724(&qword_100970E80, &type metadata accessor for ArtworkView);
  v2 = v1;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1007142DC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.image.setter();
}

uint64_t sub_100714348()
{
  sub_10002849C(&qword_1009701B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_lockupView);
  *(v1 + 56) = type metadata accessor for TodayCardLockupView();
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

uint64_t sub_100714400()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_100714460(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1007144F8()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_100714554(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_100714614(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_10071476C;
}

uint64_t sub_100714724(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100714778()
{
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_tapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_clickActionHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_wantsCardConsistentMargins) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_10071483C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  if (v2[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_isExpanded] != 1 || ([v2 bounds], v13.x = v4, v13.y = v6, !CGRectContainsPoint(v14, v13)))
  {

    return 0;
  }

  if (v7)
  {
    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = v2;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    if (v12)
    {
      return 0;
    }
  }

  return *&v2[OBJC_IVAR____TtC8AppStore29TodayCardChinSingleLockupView_clickActionHandler] != 0;
}

id sub_100714990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8AppStore23URLActivityItemProvider_shareSheetData] = a1;
  *&v4[OBJC_IVAR____TtC8AppStore23URLActivityItemProvider_artworkLoader] = a2;
  v12 = qword_10096EEA0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_100993510;

  sub_100048834(a3, v13);
  *&v4[OBJC_IVAR____TtC8AppStore23URLActivityItemProvider_excludedActivityTypes] = v14;
  ShareSheetData.url.getter();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = type metadata accessor for URLActivityItemProvider();
  v21.receiver = v4;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, "initWithPlaceholderItem:", v17);

  return v19;
}

void sub_100714D60(uint64_t *a1@<X8>)
{
  v3 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 activityType];
  if (!v11)
  {
    a1[3] = v6;
    sub_1000056E0(a1);
    ShareSheetData.url.getter();
    return;
  }

  v12 = v11;
  sub_10002849C(&unk_100993620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = UIActivityTypeAirDrop;
  v14 = UIActivityTypeAirDrop;
  ShareSheetData.shortUrl.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_10002B894(v5, &qword_100982460);
  }

  else
  {
    v18[0] = *(v7 + 32);
    v15 = (v18[0])(v10, v5, v6);
    v19 = v12;
    __chkstk_darwin(v15);
    v18[-2] = &v19;
    v16 = sub_10003D684(sub_100267A54, &v18[-4], inited);

    if ((v16 & 1) == 0)
    {
      a1[3] = v6;
      v17 = sub_1000056E0(a1);
      (v18[0])(v17, v10, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v10, v6);
  }

  a1[3] = v6;
  sub_1000056E0(a1);
  ShareSheetData.url.getter();
LABEL_9:
}

id sub_100715088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100715220()
{
  v1 = type metadata accessor for Artwork.Style();
  v120 = *(v1 - 1);
  v121 = v1;
  __chkstk_darwin(v1);
  v119 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AdamId();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v115 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100979D60);
  __chkstk_darwin(v5 - 8);
  v118 = &v112 - v6;
  v123 = type metadata accessor for ShareSheetData.Metadata();
  v7 = *(v123 - 1);
  __chkstk_darwin(v123);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v12 = &v112 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v114 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v112 - v17;
  v124 = [objc_allocWithZone(LPLinkMetadata) init];
  v122 = v0;
  ShareSheetData.shortUrl.getter();
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    ShareSheetData.url.getter();
    v20 = v19(v12, 1, v13);
    v22 = v13;
    v23 = v14;
    if (v20 != 1)
    {
      sub_10002B894(v12, &qword_100982460);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v22 = v13;
    v23 = v14;
  }

  URL._bridgeToObjectiveC()(v21);
  v25 = v24;
  v28 = *(v23 + 8);
  v26 = (v23 + 8);
  v27 = v28;
  v28(v18, v22);
  v29 = v124;
  [v124 setURL:v25];

  ShareSheetData.metadata.getter();
  v30 = v123;
  v31 = (*(v7 + 88))(v9, v123);
  if (v31 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v7 + 96))(v9, v30);
    if (ShareSheetArticleMetadata.artwork.getter())
    {
      v32 = Artwork.backgroundColor.getter();
      if (v32)
      {
        v33 = v32;
        v34 = _sSo7UIImageC8AppStoreE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v32);
        v35 = v118;
        if (v34)
        {
          v36 = v34;
          v37 = [objc_allocWithZone(LPImage) initWithPlatformImage:v34];

          v33 = v36;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        v35 = v118;
      }

      static Artwork.Crop.fn.getter();
      v81 = type metadata accessor for Artwork.Crop();
      (*(*(v81 - 8) + 56))(v35, 0, 1, v81);
      Artwork.config(using:cropCodeOverride:prefersLayeredImage:)();
      sub_10002B894(v35, &qword_100979D60);
      v82 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
      v83 = ArtworkItemProvider.init(artworkLoader:config:)();
      v84 = [objc_allocWithZone(LPImage) initWithItemProvider:v83 properties:0 placeholderImage:v37];
      [v29 setImage:v84];
    }

    ShareSheetArticleMetadata.text.getter();
    v85 = String._bridgeToObjectiveC()();

    [v29 setTitle:v85];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    ShareSheetArticleMetadata.subtitle.getter();
    if (v87)
    {
LABEL_51:
      v88 = String._bridgeToObjectiveC()();

LABEL_59:
      [v86 setSubtitle:v88];

      [v29 setSpecialization:v86];

      return v29;
    }

LABEL_58:
    v88 = 0;
    goto LABEL_59;
  }

  if (v31 != enum case for ShareSheetData.Metadata.product(_:))
  {
    if (v31 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v7 + 8))(v9, v30);
      return v29;
    }

    (*(v7 + 96))(v9, v30);
    if (ShareSheetAppEventMetadata.artwork.getter())
    {
      v41 = Artwork.backgroundColor.getter();
      if (v41)
      {
        v42 = v41;
        v43 = _sSo7UIImageC8AppStoreE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v41);
        if (v43)
        {
          v44 = v43;
          v45 = [objc_allocWithZone(LPImage) initWithPlatformImage:v43];

          v42 = v44;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      Artwork.config(using:)();
      v89 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
      v90 = ArtworkItemProvider.init(artworkLoader:config:)();
      v91 = [objc_allocWithZone(LPImage) initWithItemProvider:v90 properties:0 placeholderImage:v45];
      [v29 setImage:v91];
    }

    ShareSheetAppEventMetadata.text.getter();
    v92 = String._bridgeToObjectiveC()();

    [v29 setTitle:v92];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    ShareSheetAppEventMetadata.subtitle.getter();
    if (v93)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  (*(v7 + 96))(v9, v30);
  v38 = [objc_allocWithZone(LPiTunesMediaSoftwareMetadata) init];
  ShareSheetProductMetadata.storeFrontIdentifier.getter();
  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  v47 = v116;
  v46 = v117;
  [v38 setStoreFrontIdentifier:v40];

  v48 = v38;
  v49 = v115;
  ShareSheetProductMetadata.adamId.getter();
  AdamId.stringValue.getter();
  (*(v47 + 8))(v49, v46);
  v50 = String._bridgeToObjectiveC()();

  [v48 setStoreIdentifier:v50];

  ShareSheetProductMetadata.name.getter();
  v51 = String._bridgeToObjectiveC()();

  [v48 setName:v51];

  ShareSheetProductMetadata.subtitle.getter();
  if (v52)
  {
    v53 = String._bridgeToObjectiveC()();
  }

  else
  {
    v53 = 0;
  }

  [v48 setSubtitle:v53];

  ShareSheetProductMetadata.genreName.getter();
  v112 = v27;
  if (v54)
  {
    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  [v48 setGenre:{v55, v112}];

  ShareSheetProductMetadata.icon.getter();
  v56 = Artwork.backgroundColor.getter();

  v57 = &_s11AppStoreKit5ShelfC8subtitleSSSgvg_ptr_0;
  v118 = v26;
  v113 = v22;
  v123 = v48;
  if (v56)
  {
    v58 = _sSo7UIImageC8AppStoreE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v56);
    if (v58)
    {
      v59 = [objc_allocWithZone(LPImageProperties) init];
      ShareSheetProductMetadata.icon.getter();
      v60 = v119;
      Artwork.style.getter();

      v61 = Artwork.Style.imageType(isPlaceholder:)();
      v62 = v60;
      v57 = &_s11AppStoreKit5ShelfC8subtitleSSSgvg_ptr_0;
      (v120[1].super.isa)(v62, v121);
      [v59 setType:v61];
      v63 = [objc_allocWithZone(LPImage) initWithPlatformImage:v58 properties:v59];

      v58 = v63;
      v56 = v59;
    }
  }

  else
  {
    v58 = 0;
  }

  ShareSheetProductMetadata.icon.getter();
  Artwork.config(_:mode:prefersLayeredImage:)();

  v64 = type metadata accessor for ArtworkItemProvider();
  v65 = objc_allocWithZone(v64);
  v66 = ArtworkItemProvider.init(artworkLoader:config:)();
  v67 = [objc_allocWithZone(v57[186]) init];
  ShareSheetProductMetadata.icon.getter();
  v68 = v119;
  Artwork.style.getter();

  v69 = Artwork.Style.imageType(isPlaceholder:)();
  (v120[1].super.isa)(v68, v121);
  [v67 setType:v69];
  v70 = objc_allocWithZone(LPImage);
  v121 = v67;
  v122 = v66;
  v71 = [v70 initWithItemProvider:v66 properties:v67 placeholderImage:v58];
  v72 = v123;
  [v123 setIcon:v71];

  result = ShareSheetProductMetadata.screenshots.getter();
  if (!result)
  {
    isa = 0;
    v29 = v124;
    goto LABEL_66;
  }

  v74 = result & 0xFFFFFFFFFFFFFF8;
  v29 = v124;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_61:

    isa = 0;
    goto LABEL_66;
  }

  v94 = result;
  v95 = _CocoaArrayWrapper.endIndex.getter();
  result = v94;
  if (!v95)
  {
    goto LABEL_61;
  }

LABEL_35:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v74 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v120 = v58;

  v75 = Screenshots.artwork.getter();

  if (!(v75 >> 62))
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_40;
    }

LABEL_64:

LABEL_65:
    sub_100716478();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v58 = v120;
LABEL_66:
    [v72 setScreenshots:isa];

    [v72 setIsMessagesOnlyApp:ShareSheetProductMetadata.isMessagesOnlyApp.getter() & 1];
    if (ShareSheetProductMetadata.messagesAppIcon.getter())
    {

      Artwork.config(_:mode:prefersLayeredImage:)();
      v96 = objc_allocWithZone(v64);
      v97 = ArtworkItemProvider.init(artworkLoader:config:)();
      v98 = v58;
      v99 = [objc_allocWithZone(LPImage) initWithItemProvider:v97 properties:0 placeholderImage:0];
      [v72 setMessagesAppIcon:v99];

      v58 = v98;
    }

    result = ShareSheetProductMetadata.videos.getter();
    if (!result)
    {
      goto LABEL_77;
    }

    v100 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v109 = result;
      v110 = _CocoaArrayWrapper.endIndex.getter();
      result = v109;
      v101 = v113;
      if (v110)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v101 = v113;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_71:
        if ((result & 0xC000000000000001) != 0)
        {
          v102 = v58;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_74;
        }

        if (*(v100 + 16))
        {
          v102 = v58;

LABEL_74:

          v103 = v114;
          Video.videoUrl.getter();
          v104 = objc_allocWithZone(LPVideo);
          URL._bridgeToObjectiveC()(v105);
          v107 = v106;
          v108 = [v104 initWithStreamingURL:v106 hasAudio:0];

          v112(v103, v101);
          [v72 setPreviewVideo:v108];

          v58 = v102;
LABEL_77:
          v111 = v72;
          [v29 setSpecialization:v111];

          return v29;
        }

        goto LABEL_81;
      }
    }

    goto LABEL_77;
  }

  v76 = _CocoaArrayWrapper.endIndex.getter();
  if (!v76)
  {
    goto LABEL_64;
  }

LABEL_40:
  v125 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v76 & 0x8000000000000000) == 0)
  {
    v77 = 0;
    do
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v77;

      Artwork.config(_:mode:prefersLayeredImage:)();
      v78 = objc_allocWithZone(v64);
      v79 = ArtworkItemProvider.init(artworkLoader:config:)();
      [objc_allocWithZone(LPImage) initWithItemProvider:v79 properties:0 placeholderImage:0];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v76 != v77);

    v29 = v124;
    v72 = v123;
    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_1007162BC()
{
  v0 = type metadata accessor for ShareSheetData.Metadata();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShareSheetData.metadata.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = ShareSheetArticleMetadata.text.getter();
  }

  else if (v4 == enum case for ShareSheetData.Metadata.product(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = ShareSheetProductMetadata.name.getter();
  }

  else
  {
    if (v4 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    (*(v1 + 96))(v3, v0);
    v5 = ShareSheetAppEventMetadata.text.getter();
  }

  v6 = v5;

  return v6;
}

unint64_t sub_100716478()
{
  result = qword_100993618;
  if (!qword_100993618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100993618);
  }

  return result;
}

id sub_1007164C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v5 - 8);
  v100 = &v84 - v6;
  v99 = type metadata accessor for OfferButtonSubtitlePosition();
  v96 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009701A0);
  v97 = *(v8 - 8);
  v98 = v8;
  __chkstk_darwin(v8);
  v95 = &v84 - v9;
  v10 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v10 - 8);
  v93 = &v84 - v11;
  v12 = sub_10002849C(&qword_100973AC8);
  __chkstk_darwin(v12 - 8);
  v89 = &v84 - v13;
  v14 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v14 - 8);
  v88 = &v84 - v15;
  v16 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v16 - 8);
  v87 = &v84 - v17;
  v18 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v18 - 8);
  v86 = &v84 - v19;
  v20 = objc_opt_self();
  v91 = [v20 areAnimationsEnabled];
  v92 = v20;
  [v20 setAnimationsEnabled:0];
  v21 = InAppPurchaseInstallPage.lockup.getter();
  v22 = InAppPurchaseInstallPage.parentLockup.getter();
  v101 = a2;
  if (v21)
  {
    v23 = *&v2[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    sub_1001BCDCC(v21, v23, *&v102[0]);

    v24 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_titleLabel];

    Lockup.title.getter();
    v26 = v25;

    if (v26)
    {
      v27 = String._bridgeToObjectiveC()();
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v24 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_titleLabel];
  }

  [v24 setText:v27];

  v90 = v21;
  if (v22 && (, v28 = Lockup.title.getter(), v30 = v29, , v30))
  {
    v31 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_parentTitleLabel];
    v32._object = 0x8000000100821DB0;
    v32._countAndFlagsBits = 0xD00000000000001FLL;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    localizedString(_:comment:)(v32, v33);
    sub_10002849C(&unk_10097E350);
    v34 = v3;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1007B10D0;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_1000BFD1C();
    *(v35 + 32) = v28;
    *(v35 + 40) = v30;
    v3 = v34;
    String.init(format:_:)();

    v36 = String._bridgeToObjectiveC()();

    [v31 setText:v36];

    v37 = *&v34[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_subtitleLabel];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_parentTitleLabel] setText:0];
    v37 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_subtitleLabel];
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  Lockup.developerTagline.getter();
  v39 = v38;

  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();

    goto LABEL_13;
  }

LABEL_12:
  v40 = 0;
LABEL_13:
  [v37 setText:v40];

  v41 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_descriptionLabel];
  InAppPurchaseInstallPage.preInstallOfferDescription.getter();
  if (v42)
  {
    v43 = String._bridgeToObjectiveC()();
  }

  else
  {
    v43 = 0;
  }

  [v41 setText:v43];

  if (v22 && (, Lockup.ageRating.getter(), v45 = v44, , v45))
  {
    v46 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_ageRatingBadge];
    v47 = *&v46[OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel];
    v48 = String._bridgeToObjectiveC()();
    [v47 setText:v48];

    [v46 setNeedsLayout];
    [v46 setNeedsDisplay];

    [v46 setHidden:0];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_ageRatingBadge] setHidden:1];
  }

  sub_10002849C(&qword_100993630);
  v49 = (sub_10002849C(&qword_100982770) - 8);
  v50 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1007B10D0;
  v52 = v51 + v50;
  v53 = (v51 + v50 + v49[14]);
  v54 = enum case for OfferTitleType.standard(_:);
  v55 = type metadata accessor for OfferTitleType();
  (*(*(v55 - 8) + 104))(v52, v54, v55);
  v56._countAndFlagsBits = 0xD000000000000020;
  v56._object = 0x8000000100821D80;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  *v53 = localizedString(_:comment:)(v56, v57);
  sub_100398600(v51);
  swift_setDeallocating();
  sub_10002B894(v52, &qword_100982770);
  swift_deallocClassInstance();
  if (v22)
  {

    v58 = Lockup.offerDisplayProperties.getter();

    if (v58)
    {
      v59 = enum case for OfferStyle.colored(_:);
      v60 = type metadata accessor for OfferStyle();
      v61 = *(v60 - 8);
      v62 = *(v61 + 104);
      v85 = v3;
      v63 = v86;
      v62(v86, v59, v60);
      (*(v61 + 56))(v63, 0, 1, v60);
      v64 = type metadata accessor for OfferEnvironment();
      v65 = v87;
      (*(*(v64 - 8) + 56))(v87, 1, 1, v64);
      v66 = enum case for OfferTint.blue(_:);
      v67 = type metadata accessor for OfferTint();
      v68 = *(v67 - 8);
      v69 = v88;
      (*(v68 + 104))(v88, v66, v67);
      (*(v68 + 56))(v69, 0, 1, v67);
      v70 = type metadata accessor for OfferLabelStyle();
      v71 = v89;
      (*(*(v70 - 8) + 56))(v89, 1, 1, v70);
      memset(v102, 0, 32);
      v72 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();

      sub_10002B894(v102, &unk_1009711D0);
      sub_10002B894(v71, &qword_100973AC8);
      sub_10002B894(v69, &unk_100973AD0);
      sub_10002B894(v65, &unk_100970160);
      v73 = v63;
      v3 = v85;
      sub_10002B894(v73, &qword_100973AE0);
    }

    else
    {

      v72 = 0;
    }

    v76 = v101;
    v89 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_offerButton];

    v74 = Lockup.buttonAction.getter();

    v77 = v3;
    v75 = v72;
  }

  else
  {

    v74 = 0;
    v75 = 0;
    v89 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallFreeOfferView_offerButton];
    v76 = v101;
    v77 = v3;
  }

  v78 = sub_10002849C(&unk_100973240);
  v79 = v93;
  (*(*(v78 - 8) + 56))(v93, 1, 1, v78);
  v80 = v96;
  v81 = v99;
  (*(v96 + 104))(v94, enum case for OfferButtonSubtitlePosition.below(_:), v99);
  (*(v80 + 56))(v100, 1, 1, v81);
  sub_100140F54();
  v82 = v95;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v75, v74, 0, v79, v82, v76, 0, 0);

  (*(v97 + 8))(v82, v98);
  sub_10002B894(v79, &unk_100973230);
  [v77 setNeedsLayout];

  return [v92 setAnimationsEnabled:v91];
}

uint64_t sub_100717208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v10 - 8);
  v53 = v44 - v11;
  v51 = type metadata accessor for OfferButtonSubtitlePosition();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10002849C(&unk_1009701A0);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v44 - v13;
  v14 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v14 - 8);
  v46 = v44 - v15;
  v16 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_100973230);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = v44 - v22;
  v24 = [v6 contentView];
  [a6 pageMarginInsets];
  [v24 setLayoutMargins:?];

  v25 = ArcadeShowcase.iconArtworks.getter();
  v45 = a3;
  if (!v25)
  {
    goto LABEL_7;
  }

  if (v25 >> 62)
  {
    v29 = v25;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v29;
    if (v30)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:

LABEL_7:
    [*&v6[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_8;
  }

LABEL_4:
  v26 = v25;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v27 = v54[0];
  v28 = *&v6[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView];
  [*&v7[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:0];
  *(v28 + OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks) = v26;

  *(v28 + OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader) = v27;

  sub_1006E7990(v26, v27);

LABEL_8:
  v44[1] = *&v7[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton];
  v31 = ArcadeShowcase.offerDisplayProperties.getter();
  v32 = ArcadeShowcase.unsubscribedAction.getter();
  v33 = ArcadeShowcase.subscribedAction.getter();
  (*(v17 + 104))(v19, enum case for OfferButtonPresenterViewAlignment.center(_:), v16);
  (*(v17 + 56))(v46, 1, 1, v16);
  sub_100717BA8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  AccessibilityConditional.init(value:axValue:)();
  v34 = sub_10002849C(&unk_100973240);
  (*(*(v34 - 8) + 56))(v23, 0, 1, v34);
  v35 = v47;
  v36 = v51;
  (*(v47 + 104))(v48, enum case for OfferButtonSubtitlePosition.above(_:), v51);
  (*(v35 + 56))(v53, 1, 1, v36);
  sub_100717BA8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v37 = v49;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v31, v32, v33, v23, v37, v45, 0, 0);

  (*(v50 + 8))(v37, v52);
  sub_10025B2D0(v23);
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v38 = v54[0];
  ArcadeShowcase.subscribedDescription.getter();
  ArcadeShowcase.unsubscribedDescription.getter();
  v39 = type metadata accessor for ArcadeOfferLabelPresenter();
  swift_allocObject();
  v40 = v38;
  v41 = ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)();
  sub_100717BA8(&unk_100973250, type metadata accessor for ArcadeShowcaseCollectionViewCell);
  swift_unknownObjectRetain();
  ArcadeOfferLabelPresenter.view.setter();
  v54[3] = v39;
  v54[0] = v41;
  v42 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();

  sub_100283DDC(v54, &v7[v42]);
  swift_endAccess();
  [v7 setNeedsLayout];
}

id sub_1007179A4(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!a2)
  {

    v13 = 0;
    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return result;
    }

LABEL_10:
    v13 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:v13];

    [v5 setHidden:static String.isNilOrEmpty(_:)() & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_100717BA8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100717BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = type metadata accessor for ArcadeState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v10 = v17[1];
  ArcadeSubscriptionManager.subscriptionState.getter();
  if (ArcadeState.isSubscribed.getter())
  {
    v11 = ArcadeShowcase.subscribedDescription.getter();
  }

  else
  {
    v11 = ArcadeShowcase.unsubscribedDescription.getter();
  }

  v13 = v11;
  v14 = v12;
  swift_getObjectType();
  v15 = sub_10011DC28(v13, v14, a5);

  (*(v7 + 8))(v9, v6);
  return v15;
}

void sub_100717D80(void *a1)
{
  sub_1007194F8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_100717E30(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100717E84;
}

void sub_100717E84(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1007194F8();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1007194F8();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

char *sub_100717FAC(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for AutomationSemantics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_shouldForcePortrait] = 0;
  v15 = &v4[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  static VideoConfiguration.defaultConfiguration.getter();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView;
  v19 = *&v17[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v17;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = *(*&v17[v18] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v25 = v24;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v28, &unk_1009711D0);
  sub_10002B894(v29, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v10 + 8))(v12, v9);
  v26 = [v23 contentView];
  [v26 addSubview:*&v17[v18]];

  return v23;
}

id sub_1007183B0()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v15, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_100988CC0);

    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v7 setImage:0];
  }

  sub_1007194F8();
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v1 contentView];
    [v11 addSubview:v10];

    [v1 setNeedsLayout];
  }

  *(v2 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = 0;

  sub_100617504();
  v12 = &v1[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  return [v1 setNeedsLayout];
}

void sub_1007185A4()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v47.receiver = v1;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    AspectRatio.init(_:_:)();
    v17 = [v1 contentView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    AspectRatio.height(fromWidth:)();
    v24 = *&v1[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    [v24 setFrame:{v19, v21, v23, v25}];
    v26 = [v1 contentView];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v48.origin.x = v28;
    v48.origin.y = v30;
    v48.size.width = v32;
    v48.size.height = v34;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    [v24 setCenter:{MidX, CGRectGetMidY(v49)}];
    (*(v3 + 8))(v5, v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [v1 contentView];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    [v37 setFrame:{v40, v42, v44, v46}];
  }
}

void sub_1007188C8(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_shouldForcePortrait);
      v5 = a1;
      v6 = v5;
      if (v4 == 1 && ([v5 size], v8 = v7, objc_msgSend(v6, "size"), v9 < v8) && (v10 = objc_msgSend(v6, "CGImage")) != 0)
      {
        v11 = v10;
        [v6 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:2 orientation:v12];

        v14 = v13;
      }

      else
      {
        v14 = v6;
      }

      v15 = *(*&v3[OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v16 = v14;
      v17 = v15;
      v19.value.super.isa = v14;
      v19.is_nil = 1;
      ArtworkView.show(image:isAnimationPermitted:)(v19, v18);
    }
  }
}

id sub_100718A3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductMediaItemCollectionViewCell()
{
  result = qword_1009936A8;
  if (!qword_1009936A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100718B74()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for VideoConfiguration();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_100718C84(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100717E30(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100718CF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100718D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100718DB4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100718EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100718F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = type metadata accessor for VideoConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspectRatio();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v27);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for ProductMediaItem();
  result = swift_dynamicCast();
  if (result)
  {
    v26[2] = v26[3];
    v18 = ProductMediaItem.video.getter();
    if (v18)
    {
      v19 = v18;
      v26[1] = a2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        v26[0] = v19;
        v22 = qword_1009D2200;
        swift_beginAccess();
        (*(v10 + 16))(v12, &v21[v22], v9);
        VideoConfiguration.aspectRatio.getter();
        (*(v10 + 8))(v12, v9);
        if ((*(v14 + 48))(v8, 1, v13) != 1)
        {
          (*(v14 + 32))(v16, v8, v13);
          v24 = [v3 contentView];
          [v24 bounds];

          AspectRatio.maxSize(filling:)();
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          type metadata accessor for VideoView();
          sub_100718EE0(&unk_1009840E0, type metadata accessor for VideoView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          return (*(v14 + 8))(v16, v13);
        }

        sub_10002B894(v8, &unk_1009732A0);
      }

      else
      {
      }
    }

    if (ProductMediaItem.screenshot.getter())
    {
      if ((*(v3 + OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_shouldForcePortrait) & 1) != 0 && (dispatch thunk of Artwork.isPortrait.getter() & 1) == 0)
      {
        v25 = [v3 contentView];
        [v25 bounds];

        v23 = [v3 contentView];
        [v23 bounds];
      }

      else
      {
        v23 = [v3 contentView];
        [v23 bounds];
      }

      Artwork.config(_:mode:prefersLayeredImage:)();
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v27, &qword_10096FB90);
    }
  }

  return result;
}

void sub_1007194F8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_100718EE0(&qword_100973190, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_100102E9C(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_1007195C8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
  type metadata accessor for ArtworkView();
  sub_100718EE0(&qword_1009777D0, &type metadata accessor for ArtworkView);
  v2 = v1;
  AnyHashable.init<A>(_:)();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
  sub_10003D614(v7);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + qword_100988CC0);

    sub_100005744(0, &qword_100973120);
    sub_10055F664();
    v6 = v5;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    return sub_10003D614(v7);
  }

  return result;
}

uint64_t LinkPresentationProvider.presentation(for:)(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009936C8);
  v9 = Promise.__allocating_init()();
  dispatch thunk of EditorialLink.url.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10022C934(v4);
    sub_100719AA0();
    swift_allocError();
    *v10 = 0;
    Promise.reject(_:)();
LABEL_6:

    return v9;
  }

  (*(v6 + 32))(v8, v4, v5);
  if ((EditorialLink.linkPresentationEnabled.getter() & 1) == 0)
  {
    sub_100719AA0();
    swift_allocError();
    *v19 = 1;
    Promise.reject(_:)();
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v15;
  v16[4] = a1;
  aBlock[4] = sub_100719E30;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100182E7C;
  aBlock[3] = &unk_1008D02B0;
  v17 = _Block_copy(aBlock);

  v18 = [v11 requestMetadataForURL:v14 completionHandler:v17];
  _Block_release(v17);

  (*(v6 + 8))(v8, v5);
  return v9;
}

unint64_t sub_100719AA0()
{
  result = qword_1009936D0;
  if (!qword_1009936D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009936D0);
  }

  return result;
}

uint64_t sub_100719AF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    Promise.reject(_:)();
  }

  else
  {
    v26 = v15;
    sub_1000076C0();
    v25 = v11;
    v24 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a3;
    aBlock[4] = sub_10071A120;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008D0420;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10071A12C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v17, v14);
  }
}

void sub_100719E3C(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_10071A174(a3, v5);

  if ((v6 & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    v7 = a3;
    goto LABEL_7;
  }

  v7 = a3 | 0x8000000000000000;
  v8 = v5;
LABEL_7:
  swift_retain_n();
  Promise.resolve(_:)();
  sub_1000C0220(v7, v4);
  sub_1000C0220(v7, v4);
}

uint64_t sub_100719FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10071A010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_10071A0CC()
{
  result = qword_100993790;
  if (!qword_100993790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993790);
  }

  return result;
}

uint64_t sub_10071A12C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10071A174(uint64_t a1, void *a2)
{
  v3 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of EditorialLink.url.getter();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_10022C934(v11);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  if ((EditorialLink.linkPresentationEnabled.getter() & 1) == 0)
  {
LABEL_8:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v17 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  v31 = a2;
  [v17 setMetadata:a2];
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  [v17 setURL:v19];

  v21 = [v17 presentationProperties];
  if (([v21 respondsToSelector:"style"] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v22 = [v21 style];
  swift_unknownObjectRelease();
  v23 = vdupq_n_s64(v22);
  if (vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1008B0468, v23), vceqq_s64(unk_1008B0478, v23)), vuzp1q_s32(vceqq_s64(xmmword_1008B0488, v23), vceqq_s64(unk_1008B0498, v23))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1008B04A8, v23), vceqq_s64(unk_1008B04B8, v23)), vuzp1q_s32(vceqq_s64(xmmword_1008B04C8, v23), vceqq_s64(unk_1008B04D8, v23))))))
  {
    (*(v13 + 8))(v15, v12);

    return 1;
  }

  v25 = [v31 video];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 youTubeURL];

    if (v27)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v13 + 8))(v15, v12);
      v28 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);

      v28 = 1;
    }

    v29 = 1;
    (*(v13 + 56))(v5, v28, 1, v12);
    sub_100118248(v5, v8);
    if (v16(v8, 1, v12) != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v8, 1, 1, v12);
  }

  v29 = 0;
LABEL_17:
  sub_10022C934(v8);
  return v29;
}

void sub_10071A5C4(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v4 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Artwork.URLTemplate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_100031660(a3, v6, &qword_100972638);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100972638);
    v17 = v29;
    if (!v29)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v16, v6, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      if (*&Strong[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork])
      {

        Artwork.template.getter();

        v18(v13, v10, v7);
        sub_10071C09C(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *(v8 + 8);
        v22(v13, v7);
        v22(v16, v7);
        if ((v21 & 1) == 0)
        {
          return;
        }

        v17 = v29;
        if (!v29)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    (*(v8 + 8))(v16, v7);
    v17 = v29;
    if (!v29)
    {
LABEL_11:
      v23 = 0;
      goto LABEL_12;
    }
  }

LABEL_8:
  v23 = [v17 imageWithRenderingMode:2];
LABEL_12:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(v24 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_iconView);

    v30.value.super.isa = v23;
    v30.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v30, v27);
  }
}

double sub_10071AA14(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for PrivacyTypeLayout();
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FontUseCase();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PrivacyTypeStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  v20 = type metadata accessor for PrivacyTypeLayout.Metrics();
  v85 = *(v20 - 8);
  v86 = v20;
  __chkstk_darwin(v20);
  v74 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v25 = PrivacyType.artwork.getter();
  PrivacyType.style.getter();
  ObjectType = swift_getObjectType();
  v93 = a5;
  sub_10035FDE8(v25, v19, a5, v24);

  v26 = *(v14 + 8);
  v75 = v19;
  v94 = v26;
  v26(v19, v13);
  v27 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v28 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v72 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v71 = LayoutViewPlaceholder.init(representing:)();
  v84 = v24;
  PrivacyTypeLayout.Metrics.iconSize.getter();
  v92 = v27;
  swift_allocObject();
  v29 = LayoutViewPlaceholder.init(representing:)();
  v89 = a1;
  PrivacyType.style.getter();
  v30 = (*(v14 + 88))(v16, v13);
  v73 = v28;
  v70 = v29;
  if (v30 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v30 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v30 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v33 = v93;
      v34 = v82;
      if (qword_10096E090 != -1)
      {
        swift_once();
      }

      v38 = v90;
      v39 = sub_1000056A8(v90, qword_1009D1130);
      (*(v88 + 16))(v87, v39, v38);
      v37 = 4;
    }

    else
    {
      v33 = v93;
      v34 = v82;
      if (qword_10096E088 != -1)
      {
        swift_once();
      }

      v35 = v90;
      v36 = sub_1000056A8(v90, qword_1009D1118);
      (*(v88 + 16))(v87, v36, v35);
      (v94)(v16, v13);
      v37 = 1;
    }

    v94 = v37;
    goto LABEL_13;
  }

  if (qword_10096E088 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v31 = v90;
    v32 = sub_1000056A8(v90, qword_1009D1118);
    (*(v88 + 16))(v87, v32, v31);
    v94 = 1;
    v33 = v93;
    v34 = v82;
LABEL_13:
    v40 = v81;
    sub_1000367E8();
    v41 = [v33 traitCollection];
    v42 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.title.getter();
    v43 = type metadata accessor for Feature();
    v101[3] = v43;
    v82 = sub_10071C09C(&qword_100972E50, &type metadata accessor for Feature);
    v101[4] = v82;
    v44 = sub_1000056E0(v101);
    v45 = *(v43 - 8);
    v46 = *(v45 + 104);
    LODWORD(v81) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v79 = v45 + 104;
    v80 = v46;
    v46(v44);
    v47 = v42;
    isFeatureEnabled(_:)();
    sub_100007000(v101);
    v69 = v47;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v48 = v33;
    v49 = v34[1];
    v50 = v83;
    v49(v40, v83);
    if (qword_10096E098 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v90, qword_1009D1148);
    v51 = [v48 traitCollection];
    v52 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.detail.getter();
    v100[3] = v43;
    v100[4] = v82;
    v53 = sub_1000056E0(v100);
    v80(v53, v81, v43);
    v54 = v52;
    isFeatureEnabled(_:)();
    sub_100007000(v100);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v49(v40, v50);
    v94 = PrivacyType.categories.getter();
    if (v94 >> 62)
    {
      v55 = _CocoaArrayWrapper.endIndex.getter();
      v82 = v54;
      if (!v55)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v55 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v82 = v54;
      if (!v55)
      {
        goto LABEL_29;
      }
    }

    type metadata accessor for PrivacyCategoryView();
    if (v55 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v56 = 0;
  v57 = v94 & 0xC000000000000001;
  v58 = _swiftEmptyArrayStorage;
  do
  {
    if (v57)
    {
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v59 = *(v94 + 8 * v56 + 32);
    }

    v60 = sub_10037A62C(v59, v93);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_100033548(0, *(v58 + 2) + 1, 1, v58);
    }

    v62 = *(v58 + 2);
    v61 = *(v58 + 3);
    if (v62 >= v61 >> 1)
    {
      v58 = sub_100033548((v61 > 1), v62 + 1, 1, v58);
    }

    ++v56;

    v98 = v92;
    v99 = &protocol witness table for LayoutViewPlaceholder;
    *&v97 = v60;
    *(v58 + 2) = v62 + 1;
    sub_100005A38(&v97, &v58[5 * v62 + 4]);
  }

  while (v55 != v56);
LABEL_29:

  v63 = [v93 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v64 = v92;
  swift_allocObject();
  v65 = LayoutViewPlaceholder.init(representing:)();
  (*(v85 + 16))(v74, v84, v86);
  v98 = v64;
  v99 = &protocol witness table for LayoutViewPlaceholder;
  *&v97 = v73;
  v96[23] = v64;
  v96[24] = &protocol witness table for LayoutViewPlaceholder;
  v96[19] = &protocol witness table for LayoutViewPlaceholder;
  v96[20] = v72;
  v96[18] = v64;
  v96[14] = &protocol witness table for LayoutViewPlaceholder;
  v96[15] = v71;
  v96[13] = v64;
  v96[9] = &protocol witness table for LayoutViewPlaceholder;
  v96[10] = v65;
  v94 = v65;
  v96[8] = v64;
  v96[5] = v70;
  sub_10002C0AC(v101, v96);
  sub_10002C0AC(v100, &v95);

  PrivacyType.style.getter();
  v66 = v76;
  PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)();
  sub_10071C09C(&qword_10097AA30, &type metadata accessor for PrivacyTypeLayout);
  v67 = v78;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v77 + 8))(v66, v67);
  sub_100007000(v100);
  sub_100007000(v101);
  (*(v88 + 8))(v87, v90);
  (*(v85 + 8))(v84, v86);
  return a2;
}

void sub_10071B640()
{
  v1 = v0;
  v2 = type metadata accessor for PrivacyTypeStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrivacyType.style.getter();
  v6 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v6, v5, v2);
  swift_endAccess();
  sub_100361A78();
  (*(v3 + 8))(v5, v2);
  v7 = PrivacyType.title.getter();
  sub_1003617E4(v7, v8);
  v9 = PrivacyType.detail.getter();
  sub_1003617F0(v9, v10);
  *(v1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork) = PrivacyType.artwork.getter();

  v11 = PrivacyType.categories.getter();
  sub_100363EC8();
  *(v1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories) = v11;

  sub_1003617FC();
}