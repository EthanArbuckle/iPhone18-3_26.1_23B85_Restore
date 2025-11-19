void (*sub_1003EC80C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D3090;
}

id sub_1003EC880()
{
  sub_1000ACF48();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
  sub_1002C1934();
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  sub_1006269C4();
  v3 = &v1[OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer] setEnabled:1];
  v4 = *&v1[v2];

  return [v1 addSubview:v4];
}

uint64_t sub_1003EC98C(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1003EF640(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v13 = v25;
  if (v25)
  {
    static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
    PageGrid.columnWidth.getter();
    v14 = *&v2[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView];
    *&v14[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = v15;
    [v14 setNeedsLayout];
    v16 = AppEventSearchResult.lockup.getter();
    v24 = v8;
    v17 = v16;
    v18 = type metadata accessor for ItemLayoutContext();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_100279F24(v17, v7, a2);

    sub_10002B894(v7, &unk_1009731E0);
    v19 = AppEventSearchResult.appEvent.getter();
    sub_100079F24();
    sub_100168944(v19, a2);

    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 2) = v20;
    *(v21 + 3) = v13;
    *(v21 + 4) = a2;
    v22 = &v3[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction];
    v23 = *&v3[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction];
    *v22 = sub_1003EFA60;
    v22[1] = v21;

    sub_10001F63C(v23);

    [v3 setNeedsLayout];

    return (*(v9 + 8))(v11, v24);
  }

  return result;
}

void sub_1003ECCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    AppEventSearchResult.appEvent.getter();
    v9 = AppPromotion.clickAction.getter();

    if (v9)
    {
      v13[4] = type metadata accessor for AppEventSearchResultContentView();
      v13[1] = v8;

      v10 = v8;
      dispatch thunk of Action.clickSender.setter();

      v11 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10002B894(v6, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v9, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1003ECED8()
{
  v1 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  return sub_1000AD1F8();
}

uint64_t (*sub_1003ECFDC(uint64_t **a1))()
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
  v2[4] = sub_1003EC80C(v2);
  return sub_1000B4CAC;
}

double sub_1003ED070()
{
  [*(*(*v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1003ED0FC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1003ED1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1003ED28C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1003ED2E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

uint64_t sub_1003ED3A8()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_1003EF640(&qword_1009912D0, 255, type metadata accessor for SearchTagsRibbonView);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_1003ED454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1003ED4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1003ED514(uint64_t *a1))()
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

uint64_t sub_1003ED5B0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1003ED78C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1003EF640(&qword_1009840C8, a2, type metadata accessor for AppEventSearchResultContentView);
  result = sub_1003EF640(&unk_1009840D0, v3, type metadata accessor for AppEventSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003ED810(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_10002849C(&unk_10096FC10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v101[-v5];
  v7 = type metadata accessor for SmallSearchLockupLayout();
  v130 = *(v7 - 8);
  __chkstk_darwin(v7);
  v129 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v124 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v126 = *(v10 - 8);
  v127 = v10;
  __chkstk_darwin(v10);
  v125 = &v101[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for OfferButtonMetrics();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v14 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v138 = &v101[-v16];
  v146 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v137 = *(v146 - 8);
  __chkstk_darwin(v146);
  v128 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v147 = &v101[-v19];
  v20 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v20 - 8);
  v123 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v145 = &v101[-v23];
  v24 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v24 - 8);
  v25 = type metadata accessor for PageGrid();
  v131 = *(v25 - 8);
  __chkstk_darwin(v25);
  v142 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AppEventSearchResult();
  sub_1003EF640(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v141 = v184[0];
  if (v184[0])
  {
    v120 = v7;
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    PageGrid.componentMeasuringSize(spanning:)();
    v29 = v28;
    v30 = AppEventSearchResult.lockup.getter();

    v31 = Lockup.title.getter();
    v111 = v32;
    v112 = v31;
    v33 = Lockup.subtitle.getter();
    v113 = v34;
    v114 = v33;
    v35 = Lockup.searchAdOpportunity.getter();
    v144 = v30;

    if (v35 && (v36 = SearchAdOpportunity.searchAd.getter(), , v36))
    {
      v37 = SearchAd.advertisingText.getter();
      v115 = v38;
      v116 = v37;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v136 = MixedMediaLockup.metadataRibbonItems.getter();
    (*(v134 + 56))(v145, 1, 1, v135);
    v133 = MixedMediaLockup.searchTagRibbonItems.getter();
    v102 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v39 = v184[5];
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v40 = v146;
    v41 = sub_1000056A8(v146, qword_1009CDC00);
    v117 = *(v137 + 16);
    v118 = v137 + 16;
    v117(v147, v41, v40);
    v42 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v143 = v39;
    v121 = v25;
    v122 = a1;
    v104 = v4;
    v105 = v3;
    v103 = v6;
    if (v42)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v43 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v43 = qword_100991028;
    }

    v44 = v140;
    v45 = sub_1000056A8(v140, v43);
    v46 = v139;
    (*(v139 + 16))(v14, v45, v44);
    (*(v46 + 32))(v138, v14, v44);
    v47 = [v143 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v110 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v119 = LayoutViewPlaceholder.init(representing:)();
    v48 = objc_opt_self();
    v108 = v48;
    v49 = [v48 preferredFontForTextStyle:UIFontTextStyleBody];
    v50 = type metadata accessor for Feature();
    v184[3] = v50;
    v51 = sub_1003EF640(&qword_100972E50, 255, &type metadata accessor for Feature);
    v184[4] = v51;
    v107 = v51;
    v52 = sub_1000056E0(v184);
    v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v109 = *(*(v50 - 8) + 104);
    v106 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v109(v52, enum case for Feature.measurement_with_labelplaceholder(_:), v50);
    isFeatureEnabled(_:)();
    sub_100007000(v184);
    v54 = v125;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v55 = v127;
    v126 = *(v126 + 8);
    (v126)(v54, v127);
    v56 = [v48 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v50;
    v183[4] = v51;
    v57 = sub_1000056E0(v183);
    v58 = v53;
    v59 = v109;
    v109(v57, v58, v50);
    isFeatureEnabled(_:)();
    sub_100007000(v183);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v60 = v126;
    (v126)(v54, v55);
    v61 = [v108 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v50;
    v182[4] = v107;
    v62 = sub_1000056E0(v182);
    v59(v62, v106, v50);
    isFeatureEnabled(_:)();
    sub_100007000(v182);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v60(v54, v55);
    v63 = v136;
    LODWORD(v127) = sub_1000AE138(0, v136) & (v63 != 0);
    if (v127 == 1)
    {
      v64 = v110;
      v65 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v66 = v143;
      v67 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v68 = v123;
      sub_1001EB5B0(v145, v123);
      v69 = v134;
      v70 = *(v134 + 48);
      v71 = v135;
      if (v70(v68, 1, v135) == 1)
      {
        v72 = v124;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v70(v68, 1, v71) != 1)
        {
          sub_10002B894(v68, &unk_1009912C0);
        }
      }

      else
      {
        v72 = v124;
        (*(v69 + 32))(v124, v68, v71);
      }

      v74 = v67;
      sub_1000AD91C(v136, v72, v74);

      (*(v69 + 8))(v72, v71);
      swift_allocObject();
      v73 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v64 = v110;
      swift_allocObject();
      v73 = LayoutViewPlaceholder.init(representing:)();
    }

    v75 = v73;

    v76 = v133;
    if ((sub_1000AE138(v133, 0) & (v76 != 0)) == 1)
    {
      sub_100046528(v76, v102 & 1);
      swift_allocObject();
      v77 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v77 = LayoutViewPlaceholder.init(representing:)();
    }

    v78 = v77;
    v117(v128, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v64;
    v179 = v119;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_10002C0AC(v184, v176);
    sub_10002C0AC(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v135 = v78;
    v79 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v168 = &protocol witness table for LayoutViewPlaceholder;
    v167 = v64;
    v166 = v79;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    v156 = 0;
    v155 = 0u;
    *&v154[40] = 0u;
    sub_10002C0AC(v182, v154);
    v152 = v64;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v75;
    v149 = v64;
    v148 = v78;
    v80 = v129;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v81 = swift_allocObject();
    v134 = xmmword_1007B0B70;
    *(v81 + 16) = xmmword_1007B0B70;
    v82 = v143;
    *(v81 + 32) = v143;
    v83 = v82;
    v84 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1003EF640(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
    v85 = v120;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v130 + 8))(v80, v85);
    sub_100007000(v182);
    sub_100007000(v183);
    sub_100007000(v184);
    (*(v139 + 8))(v138, v140);
    (*(v137 + 8))(v147, v146);
    sub_10002B894(v145, &unk_1009912C0);

    v86 = MixedMediaLockup.searchTagRibbonItems.getter();
    v87 = MixedMediaLockup.metadataRibbonItems.getter();
    v88 = sub_1000AE138(v86, v87);

    if (v88)
    {
      v89 = v103;
      static StandardSearchResultContentViewMetrics.bottomMargin.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v90 = v184[0];
      v91 = swift_allocObject();
      *(v91 + 16) = v134;
      *(v91 + 32) = v90;
      v92 = v90;
      v93 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      sub_1000320F0();
      v94 = v105;
      dispatch thunk of AnyDimension.rawValue(in:)();

      (*(v104 + 8))(v89, v94);
    }

    else
    {
      if (qword_10096DBB0 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009D00F8, qword_1009D0110);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v95 = v184[0];
      AnyDimension.value(with:)();
    }

    v96 = v121;
    v97 = type metadata accessor for AppEventView();
    v98 = AppEventSearchResult.appEvent.getter();
    v99 = sub_100079F24();
    ObjectType = swift_getObjectType();
    sub_10016862C(v29, v98, v99, v132, v97, ObjectType);

    swift_unknownObjectRelease();

    return (*(v131 + 8))(v142, v96);
  }

  return result;
}

uint64_t sub_1003EEA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SmallLockupLayout.Metrics();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for Artwork.Crop();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = type metadata accessor for AppEvent();
  v41[4] = &protocol witness table for AppPromotion;
  v41[0] = a1;
  sub_10002C0AC(v41, v40);

  sub_10002849C(&unk_1009793D0);
  if (!swift_dynamicCast())
  {
    return sub_100007000(v41);
  }

  v38 = v10;
  v14 = v39;
  if (qword_10096EB98 != -1)
  {
    swift_once();
  }

  v34 = v11;
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1000056A8(v15, qword_1009D3058);
  AspectRatio.height(fromWidth:)();
  v16 = AppEvent.moduleVideo.getter();
  v35 = v14;
  v36 = a2;
  if (v16)
  {
    Video.preview.getter();

LABEL_7:

    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v34 + 1))(v13, v38);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v17 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v17 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      type metadata accessor for VideoView();
      sub_1003EF640(&unk_1009840E0, 255, type metadata accessor for VideoView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
      type metadata accessor for ArtworkView();
      sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    goto LABEL_13;
  }

  if (AppEvent.moduleArtwork.getter())
  {
    goto LABEL_7;
  }

LABEL_13:
  v20 = *(a3 + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (v20)
  {
    v21 = v20;
    AppEvent.lockup.getter();
    v22 = dispatch thunk of Lockup.artwork.getter();

    if (v22)
    {
      v23 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
      swift_beginAccess();
      v24 = v37;
      (*(v37 + 16))(v8, &v21[v23], v6);
      SmallLockupLayout.Metrics.artworkSize.getter();
      (*(v24 + 8))(v8, v6);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v33 = *(v34 + 1);
      v33(v13, v38);
      v25 = Artwork.config(_:mode:prefersLayeredImage:)();
      v26 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v27 = *&v21[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
      v34 = v21;
      v28 = v27;
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v28 setContentMode:Artwork.contentMode.getter()];
      v37 = v25;
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v29 = *&v21[v26];
      Artwork.crop.getter();
      v30 = Artwork.Crop.preferredContentMode.getter();
      v33(v13, v38);
      [v29 setContentMode:v30];

      v21 = *&v21[v26];
      v31 = v34;

      type metadata accessor for ArtworkView();
      sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  else
  {
  }

  return sub_100007000(v41);
}

void sub_1003EF128(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView);
  v4 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v18, v6);

  v7 = *(v3 + v4);
  type metadata accessor for ArtworkView();
  sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v8 = v7;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v10 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v11 = *&v10[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v12 = *(v11 + 16);
  if (v12)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v17 = v10;

    v13 = 32;
    do
    {
      v14 = *(v11 + v13);
      if (swift_dynamicCastClass())
      {
        v15 = v14;
        v19.value.super.isa = 0;
        v19.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v19, v16);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  sub_1004DC1C0(a1, 1, v9);
}

uint64_t sub_1003EF308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  sub_10002C0AC(a1, v19);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for AppEventSearchResult();
  result = swift_dynamicCast();
  if (result)
  {
    sub_1003EF128(a2);
    AppEventSearchResult.lockup.getter();
    v8 = Lockup.icon.getter();

    if (v8)
    {
      v9 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v18 = *(v2 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView);
      v10 = qword_10096EE80;
      v11 = *(v18 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v12, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v11 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v11 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v13 = *(v18 + v9);
      type metadata accessor for ArtworkView();
      sub_1003EF640(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
      v14 = v13;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView) + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
    sub_10032A784(a1, a2);

    v16 = *(v3 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView);
    v17 = AppEventSearchResult.appEvent.getter();
    sub_1003EEA28(v17, a2, *(v16 + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView));
  }

  return result;
}

uint64_t sub_1003EF640(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1003EF688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1003EF640(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v22._rawValue)
  {
    v19 = a3;
    v20 = v6;
    v22._rawValue = _swiftEmptyArrayStorage;
    AppEventSearchResult.lockup.getter();
    v11 = Lockup.icon.getter();

    if (v11)
    {
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v12, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v22._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    AppEventSearchResult.lockup.getter();
    v13 = MixedMediaLockup.metadataRibbonItems.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v14 = v21;
    v15 = sub_10032AAE8(v13, v21);

    sub_100394974(v15);
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    PageGrid.columnWidth.getter();
    sub_1003ED810(a1, v19);
    type metadata accessor for AppEventView();
    v16 = AppEventSearchResult.appEvent.getter();
    v17 = sub_100079F24();
    swift_getObjectType();
    v18 = sub_100168884(v16, v17);

    swift_unknownObjectRelease();
    sub_100394974(v18);
    ArtworkLoader.prefetchArtwork(using:)(v22);

    return (*(v7 + 8))(v9, v20);
  }

  return result;
}

void sub_1003EFA6C()
{
  v1 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003EFB84(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView] + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [v1 hitTest:0 withEvent:?];
  [a1 locationInView:v2];
  v12 = v11;
  v14 = v13;
  [a1 locationInView:v5];
  v16 = v15;
  v18 = v17;
  [v2 bounds];
  v21.x = v12;
  v21.y = v14;
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC8AppStore31AppEventSearchResultContentView_appEventViewTappedAction])
  {
    [v1 bounds];
    v23.x = v7;
    v23.y = v9;
    v19 = CGRectContainsPoint(v26, v23);

    if (v19)
    {
      if (!v10)
      {
        return 1;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass() == 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

void sub_1003EFD2C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10002849C(&qword_100984348);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_100031660(a1, v17, &qword_100984340);
  sub_100031660(v2 + v18, &v17[v19], &qword_100984340);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10002B894(v17, &qword_100984340);
      return;
    }
  }

  else
  {
    sub_100031660(v17, v13, &qword_100984340);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_1003FADB8(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_1000C6830(v13, v26);
      sub_1003FAD58(v26, type metadata accessor for Accessory);
      sub_1003FAD58(v13, type metadata accessor for Accessory);
      sub_10002B894(v17, &qword_100984340);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1003FAD58(v13, type metadata accessor for Accessory);
  }

  sub_10002B894(v17, &qword_100984348);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_100031660(v33, v31, &qword_100984340);
  swift_beginAccess();
  sub_1002BAFE4(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_100031660(v21, v32, &qword_100984340);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10002B894(v23, &qword_100984340);
    sub_1003F02B0(0);
  }

  else
  {
    sub_1000C4450(v30);
    v25 = v24;
    sub_1003FAD58(v23, type metadata accessor for Accessory);
    sub_1003F02B0(v25);
  }
}

void sub_1003F0174(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    [v4 addSubview:v14];
  }
}

void sub_1003F02B0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

uint64_t *sub_1003F03DC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

char *sub_1003F03F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = type metadata accessor for DirectionalTextAlignment();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_1009794E0);
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = (&v99 - v27);
  v28 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = type metadata accessor for AutomationSemantics();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory();
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  type metadata accessor for DynamicTypeLabel();
  v49 = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(v124, &unk_1009711D0);
  sub_10002B894(v125, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = type metadata accessor for ShelfHeader.Configuration();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_100031660(v33, v30, &unk_100984380);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10002B894(v30, &unk_100984380);
    v57 = 0;
  }

  else
  {
    v57 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_100512504(v57, v105);

  if (qword_10096E778 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_1000056A8(v122, qword_1009D26D0);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_1003FAE20(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_1003FAE20(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_100031660(v61, v111, &qword_1009794E8);
  v65 = v103;
  sub_100031660(v103, v120, &qword_1009794E0);
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_100005744(0, &qword_100970180);
  v99 = static UIColor.defaultLine.getter();
  sub_10002B894(v65, &qword_1009794E0);
  sub_10002B894(v61, &qword_1009794E8);
  sub_1003FAD58(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(v104, &unk_100984380);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_1003FADB8(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003FADB8(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1000476A0(v64, v70 + v68[6], &qword_1009794E8);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10002B894(v71, &qword_1009794E0);
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_1003FADB8(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_1003FADB8(v74, v109 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView];
  v81 = static UIColor.defaultLine.getter();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC8AppStore15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = type metadata accessor for FontUseCase();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v93 = *&v77[v82];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = String._bridgeToObjectiveC()();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_1003F1328(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_1003F13BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = _stringCompareWithSmolCheck(_:_:expecting:)(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      type metadata accessor for DynamicTypeLabel();

      v27 = DynamicTypeLabel.__allocating_init(frame:)();
      [v27 setNumberOfLines:1];
      v28 = String._bridgeToObjectiveC()();

      [v27 setText:v28];

      v29 = dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *((swift_isaMask & *v3) + 0x1C0);
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_1003FAE20(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_1003FAD58(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_1003FAE20(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = type metadata accessor for FontUseCase();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_1003FAD58(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_1003FAE20(v39, v48, v46);
      sub_1003FAD58(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_1003FAD58(v41, v36);
      if (v42)
      {
        v43 = String._bridgeToObjectiveC()();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_1003F195C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      type metadata accessor for Artwork();
      sub_1003FAFE0(&unk_1009811F0, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    type metadata accessor for ArtworkView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_1003F1AFC(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *(v3 + *a2);
  if (a1)
  {
    if (v6)
    {
      type metadata accessor for Artwork();
      sub_1003FAFE0(&unk_1009811F0, &type metadata accessor for Artwork);

      v7 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  v8 = *a3;
  v9 = *(v5 + *a3);
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *(v5 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + v8) = 0;
}

void sub_1003F1BFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      type metadata accessor for Artwork();
      sub_1003FAFE0(&unk_1009811F0, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    type metadata accessor for ArtworkView();
    v6 = static ArtworkView.iconArtworkView.getter();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView] = v6;
  }
}

id sub_1003F1D7C(uint64_t a1)
{
  v3 = type metadata accessor for AutomationSemantics();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_style];
  swift_beginAccess();
  sub_1003FAE20(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_1003FA80C(v16, a1);
  result = sub_1003FAD58(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = type metadata accessor for FontUseCase();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = String._bridgeToObjectiveC()();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_100031660(&v17[v14[6]], v27, &qword_1009794E8);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10002B894(v27, &qword_1009794E8);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_1003FADB8(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (type metadata accessor for DynamicTypeLabel(), v50 = DynamicTypeLabel.__allocating_init(frame:)(), sub_1003F015C(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, static AutomationSemantics.shelf(_:id:parentId:)(), sub_10002B894(&v91, &unk_1009711D0), sub_10002B894(&v93, &unk_1009711D0), UIView.setAutomationSemantics(_:)(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? String._bridgeToObjectiveC()() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
      if (v60 || (type metadata accessor for DynamicTypeLabel(), v67 = DynamicTypeLabel.__allocating_init(frame:)(), sub_1003F0168(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, static AutomationSemantics.shelf(_:id:parentId:)(), sub_10002B894(&v91, &unk_1009711D0), sub_10002B894(&v93, &unk_1009711D0), UIView.setAutomationSemantics(_:)(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? String._bridgeToObjectiveC()() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_1003FAD58(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1003F280C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_style;
  swift_beginAccess();
  return sub_1003FAE20(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1003F2878(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_style;
  swift_beginAccess();
  sub_1003FAE20(v1 + v6, v5, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_10022F078(a1, v1 + v6);
  swift_endAccess();
  sub_1003F1D7C(v5);
  sub_1003FAD58(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_1003FAD58(v5, type metadata accessor for TitleHeaderView.Style);
}

double sub_1003F2A54(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v18;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v44 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*((swift_isaMask & *v3) + 0x1C0))(v39);
  [v3 layoutMargins];
  LOBYTE(v43) = 1;
  sub_10056A7EC(v46, v47, v19, v45, v24, v25, v44, v30, a1, a2, v12, v14, v34, v36, v38, v9, v43, v3);
  v41 = v40;

  sub_1003FAD58(v9, type metadata accessor for TitleHeaderView.Style);
  return v41;
}

id sub_1003F2EDC()
{
  v1 = type metadata accessor for LayoutRect();
  v422 = *(v1 - 8);
  v423 = v1;
  __chkstk_darwin(v1);
  v421 = &v397 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v418 = *(v420 - 8);
  __chkstk_darwin(v420);
  v417 = &v397 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v412 = *(v4 - 8);
  v413 = v4;
  __chkstk_darwin(v4);
  v414 = &v397 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = type metadata accessor for TitleHeaderLayout();
  v416 = *(v419 - 8);
  __chkstk_darwin(v419);
  v415 = &v397 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v433 = *(v439 - 8);
  __chkstk_darwin(v439);
  v411 = &v397 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v438 = &v397 - v9;
  v10 = type metadata accessor for TitleHeaderLayout.Child();
  v452 = *(v10 - 8);
  v453 = v10;
  __chkstk_darwin(v10);
  v405 = &v397 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v451 = &v397 - v13;
  __chkstk_darwin(v14);
  v450 = &v397 - v15;
  __chkstk_darwin(v16);
  v437 = &v397 - v17;
  v18 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v18 - 8);
  v427 = &v397 - v19;
  v20 = type metadata accessor for CharacterSet();
  v431 = *(v20 - 1);
  v432 = v20;
  __chkstk_darwin(v20);
  v430 = &v397 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FontUseCase();
  v400 = *(v22 - 8);
  v401 = v22;
  __chkstk_darwin(v22);
  v399 = &v397 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v426 = *(v455 - 1);
  __chkstk_darwin(v455);
  v454 = &v397 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v435 = &v397 - v26;
  __chkstk_darwin(v27);
  v406 = &v397 - v28;
  __chkstk_darwin(v29);
  v403 = &v397 - v30;
  v424 = sub_10002849C(&unk_100984360);
  v409 = *(v424 - 8);
  __chkstk_darwin(v424);
  v402 = &v397 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v404 = &v397 - v33;
  __chkstk_darwin(v34);
  v445 = &v397 - v35;
  __chkstk_darwin(v36);
  v449 = &v397 - v37;
  __chkstk_darwin(v38);
  v444 = &v397 - v39;
  __chkstk_darwin(v40);
  v448 = &v397 - v41;
  __chkstk_darwin(v42);
  v436 = &v397 - v43;
  __chkstk_darwin(v44);
  v398 = &v397 - v45;
  __chkstk_darwin(v46);
  v440 = &v397 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v410 = &v397 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v408 = &v397 - v51;
  __chkstk_darwin(v52);
  v407 = &v397 - v53;
  __chkstk_darwin(v54);
  v425 = &v397 - v55;
  __chkstk_darwin(v56);
  v397 = &v397 - v57;
  __chkstk_darwin(v58);
  v442 = &v397 - v59;
  __chkstk_darwin(v60);
  v62 = &v397 - v61;
  v429 = type metadata accessor for Separator.Position();
  v63 = *(v429 - 1);
  __chkstk_darwin(v429);
  v65 = &v397 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = type metadata accessor for Separator();
  v66 = *(v446 - 1);
  __chkstk_darwin(v446);
  v68 = &v397 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for TitleHeaderView(0);
  v494.receiver = v0;
  v494.super_class = v434;
  v69 = objc_msgSendSuper2(&v494, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v428 = *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v447 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v443 = v62;
  sub_1003FAD58(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v429);
  *(&v492 + 1) = type metadata accessor for ZeroDimension();
  v493 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v491);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  [v0 bounds];
  Separator.frame(forBoundingRect:in:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v446);
  [v428 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v442;
  v85 = LayoutMarginsAware<>.layoutFrame.getter();
  v446 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v447[5];
    if (qword_10096E760 != -1)
    {
      swift_once();
    }

    v87 = sub_1000056A8(v455, qword_1009D2688);
    v88 = sub_1003FA6EC(v84 + v86, v87);
    v89 = v453;
    v90 = v454;
    v91 = v445;
    if (!v88)
    {
      if (qword_10096E768 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_1003FAD58(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_1003FAD58(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v453;
    v90 = v454;
    v91 = v445;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v441 = v83;
    v442 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v429 = v92;
    v93 = [v429 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v453;
LABEL_20:
      v434 = *(v452 + 56);
      v113 = (v434)(v440, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork])
    {

      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        sub_100005744(0, &qword_1009730E0);
        v101 = v443;
        v446();
        v102 = v403;
        sub_1003FAE20(v101, v403, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_1003FAD58(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v399;
        v103 = v400;
        v105 = v401;
        (*(v400 + 16))(v399, v102 + *(v455 + 6), v401);
        sub_1003FAD58(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          ArtworkView.preferredSymbolConfiguration.setter();
        }

        v74 = v442;
      }

      else
      {
        v115 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v443;
          v446();
          v119 = v403;
          sub_1003FAE20(v118, v403, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_1003FAD58(v118, type metadata accessor for TitleHeaderView.Style);
          sub_1003FA3DC(v117, v119, v74);

          sub_1003FAD58(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          ArtworkView.frame.setter();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            ArtworkView.preferredSymbolConfiguration.setter();
          }
        }
      }
    }

    v123 = v397;
    (v446)(v98);
    sub_1003FAE20(v123, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1003FAD58(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = type metadata accessor for ArtworkView();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v491 + 1) = 0;
      *&v492 = 0;
    }

    *&v491 = v127;
    *(&v492 + 1) = v125;
    v493 = v126;
    v128 = type metadata accessor for DynamicTypeLabel();
    v490 = &protocol witness table for UILabel;
    v489 = v128;
    v129 = v429;
    v488[0] = v429;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_100031660(&v491, v481, &qword_100975610);
    v130 = v489;
    v131 = v490;
    v132 = sub_10002A400(v488, v489);
    v479 = v130;
    v480 = v131[1];
    v133 = sub_1000056E0(v478);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v455;
    v135 = v406;
    v136 = *(v406 + *(v455 + 8));
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v136;
    v137 = *(v455 + 9);
    v138 = type metadata accessor for StaticDimension();
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v139 = sub_1000056E0(v472);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v470 = v138;
    v471 = &protocol witness table for StaticDimension;
    v142 = sub_1000056E0(v469);
    v140(v142, v135 + v141, v138);
    sub_100031660(&v485, &v463, &unk_10097E890);
    v143 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v144 = v465;
      v145 = sub_10002A400(&v463, *(&v464 + 1));
      *(&v467 + 1) = v143;
      v468 = *(v144 + 8);
      v146 = sub_1000056E0(&v466);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_100007000(&v463);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10002B894(&v463, &unk_10097E890);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_100031660(&v482, v460, &unk_10097E890);
    v151 = v461;
    v83 = v441;
    v74 = v442;
    v90 = v454;
    v91 = v445;
    if (v461)
    {
      v152 = v462;
      v153 = sub_10002A400(v460, v461);
      *(&v464 + 1) = v151;
      v465 = *(v152 + 8);
      v154 = sub_1000056E0(&v463);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_100007000(v460);
    }

    else
    {
      sub_10002B894(v460, &unk_10097E890);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v155 = v455;
    v156 = v406;
    sub_10002C0AC(v406 + *(v455 + 12), v460);
    sub_10002C0AC(v156 + *(v155 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v157 = v398;
    TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
    sub_10002B894(&v482, &unk_10097E890);
    sub_10002B894(&v485, &unk_10097E890);
    sub_1003FAD58(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100007000(v488);
    sub_10002B894(&v491, &qword_100975610);
    v89 = v453;
    v434 = *(v452 + 56);
    (v434)(v157, 0, 1, v453);
    sub_1000476A0(v157, v440, &unk_100984360);
    v158 = v429;
    result = [v429 font];
    if (!result)
    {
      goto LABEL_185;
    }

    v160 = result;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v165 = v164;

      *&v491 = v163;
      *(&v491 + 1) = v165;

      v166 = v430;
      static CharacterSet.excessiveLeading.getter();
      sub_10007FED4();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      LOBYTE(v162) = v167;
      (v431)[1](v166, v432);

      if (v162)
      {

        v168 = 0;
        v74 = v442;
        v89 = v453;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v442;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return result;
        }

        v89 = v453;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v429;
    sub_100480E28(v168);

LABEL_46:
    v173 = v425;
    (v446)(v113);
    v174 = v427;
    sub_100031660(v173 + v447[6], v427, &qword_1009794E8);
    sub_1003FAD58(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v426 + 48))(v174, 1, v455) == 1)
    {
      sub_10002B894(v174, &qword_1009794E8);
      (v434)(v436, 1, 1, v89);
      goto LABEL_88;
    }

    sub_1003FADB8(v174, v435, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
    if (v176)
    {
      result = [v176 font];
      if (!result)
      {
        goto LABEL_183;
      }

      v177 = result;
      v178 = *&v74[v175];
      if (!v178 || (v179 = [v178 text]) == 0)
      {

        v186 = 0;
        v187 = *&v74[v175];
        if (!v187)
        {
          goto LABEL_57;
        }

LABEL_56:
        v188 = v187;
        sub_100480E28(v186);

        goto LABEL_57;
      }

      v180 = v179;
      v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v183 = v182;

      *&v491 = v181;
      *(&v491 + 1) = v183;

      v184 = v430;
      static CharacterSet.excessiveLeading.getter();
      sub_10007FED4();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      LOBYTE(v180) = v185;
      (v431)[1](v184, v432);

      if (v180)
      {

        v186 = 0;
        v74 = v442;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v177 lineHeight];
        v226 = v225;

        v227 = ceil(v226 * 1.3);
        v74 = v442;
        if ((*&v227 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v227 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v227 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v186 = v227;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v189 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel;
    v190 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
    if (!v190)
    {
      goto LABEL_66;
    }

    result = [v190 font];
    if (!result)
    {
      goto LABEL_184;
    }

    v191 = result;
    v192 = *&v74[v189];
    if (!v192 || (v193 = [v192 text]) == 0)
    {

      v200 = 0;
      v201 = *&v74[v189];
      if (!v201)
      {
        goto LABEL_66;
      }

LABEL_65:
      v202 = v201;
      sub_100480E28(v200);

      goto LABEL_66;
    }

    v194 = v193;
    v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v197 = v196;

    *&v491 = v195;
    *(&v491 + 1) = v197;

    v198 = v430;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    LOBYTE(v194) = v199;
    (v431)[1](v198, v432);

    if (v194)
    {

      v200 = 0;
      v74 = v442;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v191 lineHeight];
      v229 = v228;

      v230 = ceil(v229 * 1.3);
      v74 = v442;
      if ((*&v230 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v230 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v230 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v200 = v230;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v203 = *&v74[v175];
    if (!v203)
    {
      sub_1003FAD58(v435, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v445;
      goto LABEL_70;
    }

    v204 = v443;
    v446();
    v205 = *(v204 + v447[9]);
    v206 = v203;
    sub_1003FAD58(v204, type metadata accessor for TitleHeaderView.Style);
    v91 = v445;
    if (v205 == 2)
    {
      sub_1003FAD58(v435, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v434)(v436, 1, 1, v453);
      v83 = v441;
      goto LABEL_88;
    }

    v493 = 0;
    v491 = 0u;
    v492 = 0u;
    v207 = type metadata accessor for DynamicTypeLabel();
    v490 = &protocol witness table for UILabel;
    v489 = v207;
    v488[0] = v206;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_100031660(&v491, v481, &qword_100975610);
    v208 = v489;
    v209 = v490;
    v210 = sub_10002A400(v488, v489);
    v479 = v208;
    v480 = v209[1];
    v211 = sub_1000056E0(v478);
    (*(*(v208 - 1) + 16))(v211, v210, v208);
    v212 = v455;
    v213 = v435;
    v214 = *&v435[*(v455 + 8)];
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v214;
    v215 = *(v455 + 9);
    v216 = type metadata accessor for StaticDimension();
    v473 = v216;
    v474 = &protocol witness table for StaticDimension;
    v217 = sub_1000056E0(v472);
    v218 = *(*(v216 - 8) + 16);
    v218(v217, &v213[v215], v216);
    v219 = *(v212 + 10);
    v470 = v216;
    v471 = &protocol witness table for StaticDimension;
    v220 = sub_1000056E0(v469);
    v218(v220, &v213[v219], v216);
    sub_100031660(&v485, &v463, &unk_10097E890);
    v221 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v222 = v465;
      v223 = sub_10002A400(&v463, *(&v464 + 1));
      *(&v467 + 1) = v221;
      v468 = *(v222 + 8);
      v224 = sub_1000056E0(&v466);
      (*(*(v221 - 8) + 16))(v224, v223, v221);
      sub_100007000(&v463);
    }

    else
    {
      sub_10002B894(&v463, &unk_10097E890);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_100031660(&v482, v460, &unk_10097E890);
    v231 = v461;
    v74 = v442;
    v90 = v454;
    if (v461)
    {
      v232 = v462;
      v233 = sub_10002A400(v460, v461);
      *(&v464 + 1) = v231;
      v465 = *(v232 + 8);
      v234 = sub_1000056E0(&v463);
      (*(*(v231 - 8) + 16))(v234, v233, v231);
      sub_100007000(v460);
    }

    else
    {
      sub_10002B894(v460, &unk_10097E890);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v83 = v441;
    v235 = v455;
    v236 = v435;
    sub_10002C0AC(&v435[*(v455 + 12)], v460);
    sub_10002C0AC(v236 + *(v235 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v237 = v436;
    TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
    sub_10002B894(&v482, &unk_10097E890);
    sub_10002B894(&v485, &unk_10097E890);
    sub_10002B894(&v491, &qword_100975610);
    sub_1003FAD58(v236, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100007000(v488);
    v434 = *(v452 + 56);
    (v434)(v237, 0, 1, v453);
LABEL_88:
    v238 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
    result = [v238 font];
    if (!result)
    {
      goto LABEL_182;
    }

    v89 = result;
    v239 = [v238 text];
    v435 = v238;
    if (!v239)
    {

      v245 = 0;
      goto LABEL_98;
    }

    v240 = v239;
    v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v242;

    *&v491 = v241;
    *(&v491 + 1) = v74;

    v243 = v430;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v86 = v244;
    (v431)[1](v243, v432);

    if (v86)
    {

      v245 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v247 = v246;

    v248 = ceil(v247 * 1.3);
    if ((*&v248 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v248 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_1000056A8(v455, qword_1009D26A0);
    sub_1003FA6EC(v84 + v86, v114);
    sub_1003FAD58(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v248 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v245 = v248;
LABEL_97:
  v74 = v442;
LABEL_98:
  sub_100480E28(v245);
  v249 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork])
  {

    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      sub_100005744(0, &qword_1009730E0);
      v250 = v443;
      v446();
      v251 = v403;
      sub_1003FAE20(v250 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v250, type metadata accessor for TitleHeaderView.Style);
      v252 = v399;
      v253 = v400;
      v254 = v401;
      (*(v400 + 16))(v399, v251 + *(v455 + 6), v401);
      sub_1003FAD58(v251, type metadata accessor for TitleHeaderView.TextConfiguration);
      v255 = v74;
      v256 = [v74 traitCollection];
      v257 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      (*(v253 + 8))(v252, v254);
      v258 = *&v255[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];
      if (v258)
      {
        v259 = objc_opt_self();
        v260 = v258;
        v261 = [v259 configurationWithFont:v257];
        ArtworkView.preferredSymbolConfiguration.setter();
      }

      v74 = v442;
      v91 = v445;
      v90 = v454;
    }

    else
    {
      v262 = v90;
      v263 = v74;
      v264 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView;
      v265 = *(v263 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView);
      if (v265)
      {
        v266 = *(v263 + v249);
        v267 = v443;
        v446();
        v268 = v403;
        sub_1003FAE20(v267 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);

        v269 = v265;
        v262 = v454;
        sub_1003FAD58(v267, type metadata accessor for TitleHeaderView.Style);
        sub_1003FA3DC(v266, v268, v263);

        sub_1003FAD58(v268, type metadata accessor for TitleHeaderView.TextConfiguration);
        ArtworkView.frame.setter();

        v270 = *(v263 + v264);
        if (v270)
        {
          v271 = v270;
          ArtworkView.preferredSymbolConfiguration.setter();
        }
      }

      v74 = v263;
      v91 = v445;
      v90 = v262;
    }
  }

  v272 = v443;
  v446();
  v273 = *(v272 + v447[9]);
  v274 = sub_1003FAD58(v272, type metadata accessor for TitleHeaderView.Style);
  if (v273 == 2)
  {
    v275 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel];
    v274 = v275;
  }

  else
  {
    v275 = 0;
  }

  v276 = v443;
  (v446)(v274);
  v277 = *(v276 + v447[9]);
  v278 = sub_1003FAD58(v276, type metadata accessor for TitleHeaderView.Style);
  if (v277 == 2)
  {
    v279 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel];
    v278 = v279;
  }

  else
  {
    v279 = 0;
  }

  v280 = v407;
  (v446)(v278);
  sub_1003FAE20(v280 + v447[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003FAD58(v280, type metadata accessor for TitleHeaderView.Style);
  v281 = *&v74[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];
  if (v281)
  {
    v282 = type metadata accessor for ArtworkView();
    v283 = &protocol witness table for UIView;
    v284 = v281;
  }

  else
  {
    v284 = 0;
    v282 = 0;
    v283 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  v285 = v435;
  *&v491 = v284;
  *(&v492 + 1) = v282;
  v493 = v283;
  v286 = type metadata accessor for DynamicTypeLabel();
  v490 = &protocol witness table for UILabel;
  v489 = v286;
  v488[0] = v285;
  if (v275)
  {
    v287 = &protocol witness table for UILabel;
    v288 = v275;
    v289 = v286;
  }

  else
  {
    v288 = 0;
    v289 = 0;
    v287 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v288;
  *(&v486 + 1) = v289;
  v487 = v287;
  v431 = v279;
  v432 = v275;
  if (v279)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v279;
  }

  else
  {
    v291 = 0;
    v286 = 0;
    v290 = 0;
    *&v483 = 0;
    *(&v482 + 1) = 0;
  }

  *&v482 = v291;
  *(&v483 + 1) = v286;
  v484 = v290;
  sub_100031660(&v491, v481, &qword_100975610);
  v292 = v489;
  v293 = v490;
  v294 = sub_10002A400(v488, v489);
  v479 = v292;
  v480 = v293[1];
  v295 = sub_1000056E0(v478);
  (*(*(v292 - 1) + 16))(v295, v294, v292);
  v297 = v454;
  v296 = v455;
  v298 = *(v454 + *(v455 + 8));
  v476 = &type metadata for Float;
  v477 = &protocol witness table for Float;
  v475 = v298;
  v299 = *(v455 + 9);
  v300 = type metadata accessor for StaticDimension();
  v473 = v300;
  v474 = &protocol witness table for StaticDimension;
  v301 = sub_1000056E0(v472);
  v302 = *(*(v300 - 8) + 16);
  v302(v301, v297 + v299, v300);
  v303 = *(v296 + 10);
  v470 = v300;
  v471 = &protocol witness table for StaticDimension;
  v304 = sub_1000056E0(v469);
  v302(v304, v297 + v303, v300);
  sub_100031660(&v485, &v463, &unk_10097E890);
  v305 = *(&v464 + 1);
  if (*(&v464 + 1))
  {
    v306 = v465;
    v307 = sub_10002A400(&v463, *(&v464 + 1));
    *(&v467 + 1) = v305;
    v468 = *(v306 + 8);
    v308 = sub_1000056E0(&v466);
    (*(*(v305 - 8) + 16))(v308, v307, v305);
    v309 = v431;
    v310 = v281;
    v311 = v435;
    v312 = v432;
    sub_100007000(&v463);
  }

  else
  {
    v313 = v431;
    v314 = v281;
    v315 = v435;
    v316 = v432;
    sub_10002B894(&v463, &unk_10097E890);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v317 = v444;
  sub_100031660(&v482, v460, &unk_10097E890);
  v318 = v461;
  if (v461)
  {
    v319 = v462;
    v320 = sub_10002A400(v460, v461);
    *(&v464 + 1) = v318;
    v465 = *(v319 + 8);
    v321 = sub_1000056E0(&v463);
    (*(*(v318 - 8) + 16))(v321, v320, v318);
    sub_100007000(v460);
  }

  else
  {
    sub_10002B894(v460, &unk_10097E890);
    v463 = 0u;
    v464 = 0u;
    v465 = 0;
  }

  v323 = v454;
  v322 = v455;
  sub_10002C0AC(v454 + *(v455 + 12), v460);
  sub_10002C0AC(v323 + *(v322 + 13), v459);
  v458 = &protocol witness table for Double;
  v457 = &type metadata for Double;
  v456 = 0x4020000000000000;
  TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
  sub_1003FAD58(v323, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(&v482, &unk_10097E890);
  sub_10002B894(&v485, &unk_10097E890);
  sub_100007000(v488);
  v324 = sub_10002B894(&v491, &qword_100975610);
  v325 = v408;
  (v446)(v324);
  v326 = *(v325 + v447[9]);
  sub_1003FAD58(v325, type metadata accessor for TitleHeaderView.Style);
  sub_10002849C(&qword_1009812E8);
  v454 = *(v409 + 72);
  v327 = (*(v409 + 80) + 32) & ~*(v409 + 80);
  if (v326)
  {
    v328 = v453;
    if (v326 == 1)
    {
      v329 = v91;
      v330 = v454;
      v435 = swift_allocObject();
      v331 = &v435[v327];
      sub_100031660(v440, &v435[v327], &unk_100984360);
      v332 = v452 + 16;
      (*(v452 + 16))(&v331[v330], v437, v328);
      (v434)(&v331[v330], 0, 1, v328);
      sub_100031660(v436, &v331[2 * v330], &unk_100984360);
      v333 = (v332 + 32);
      v334 = (v332 + 16);
      v455 = _swiftEmptyArrayStorage;
      v335 = 3;
      v450 = v331;
      v336 = v331;
      do
      {
        v337 = v449;
        sub_100031660(v336, v449, &unk_100984360);
        sub_1000476A0(v337, v329, &unk_100984360);
        if ((*v333)(v329, 1, v328) == 1)
        {
          sub_10002B894(v329, &unk_100984360);
        }

        else
        {
          v338 = *v334;
          (*v334)(v451, v329, v328);
          v339 = v455;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v339 = sub_100033A68(0, *(v339 + 2) + 1, 1, v339);
          }

          v341 = *(v339 + 2);
          v340 = *(v339 + 3);
          if (v341 >= v340 >> 1)
          {
            v339 = sub_100033A68(v340 > 1, v341 + 1, 1, v339);
          }

          *(v339 + 2) = v341 + 1;
          v342 = (*(v452 + 80) + 32) & ~*(v452 + 80);
          v455 = v339;
          v328 = v453;
          v338(v339 + v342 + *(v452 + 72) * v341, v451, v453);
          v329 = v445;
        }

        v336 += v454;
        --v335;
      }

      while (v335);
      goto LABEL_149;
    }

    v360 = v454;
    v435 = swift_allocObject();
    v361 = &v435[v327];
    sub_100031660(v440, &v435[v327], &unk_100984360);
    v362 = v452;
    (*(v452 + 16))(v361 + v360, v437, v328);
    (v434)(v361 + v360, 0, 1, v328);
    v363 = v404;
    sub_100031660(v361, v404, &unk_100984360);
    v364 = v402;
    sub_1000476A0(v363, v402, &unk_100984360);
    v365 = *(v362 + 48);
    v366 = (v362 + 32);
    v367 = v365(v364, 1, v328);
    v368 = v328;
    v451 = (v362 + 32);
    if (v367 == 1)
    {
      sub_10002B894(v364, &unk_100984360);
      v455 = _swiftEmptyArrayStorage;
    }

    else
    {
      v369 = *v366;
      (*v366)(v405, v364, v368);
      v370 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v370 = sub_100033A68(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v372 = *(v370 + 2);
      v371 = *(v370 + 3);
      v455 = v370;
      if (v372 >= v371 >> 1)
      {
        v455 = sub_100033A68(v371 > 1, v372 + 1, 1, v455);
      }

      v373 = v455;
      *(v455 + 2) = v372 + 1;
      v374 = v373 + ((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v372;
      v368 = v453;
      v369(v374, v405, v453);
      v364 = v402;
    }

    v375 = v404;
    sub_100031660(v361 + v454, v404, &unk_100984360);
    sub_1000476A0(v375, v364, &unk_100984360);
    if (v365(v364, 1, v368) == 1)
    {
      sub_10002B894(v364, &unk_100984360);
      v357 = v438;
      v358 = v439;
      v359 = v433;
    }

    else
    {
      v376 = *v451;
      (*v451)(v405, v364, v368);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v358 = v439;
      v359 = v433;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v455 = sub_100033A68(0, *(v455 + 2) + 1, 1, v455);
      }

      v357 = v438;
      v379 = *(v455 + 2);
      v378 = *(v455 + 3);
      if (v379 >= v378 >> 1)
      {
        v455 = sub_100033A68(v378 > 1, v379 + 1, 1, v455);
      }

      v380 = v455;
      *(v455 + 2) = v379 + 1;
      v376(v380 + ((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v379, v405, v453);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v343 = v454;
    v344 = 2 * v454;
    v435 = swift_allocObject();
    v345 = &v435[v327];
    sub_100031660(v440, &v435[v327], &unk_100984360);
    sub_100031660(v436, &v345[v343], &unk_100984360);
    v346 = v453;
    v347 = v452 + 16;
    (*(v452 + 16))(&v345[v344], v437, v453);
    (v434)(&v345[v344], 0, 1, v346);
    v348 = (v347 + 32);
    v349 = (v347 + 16);
    v455 = _swiftEmptyArrayStorage;
    v350 = 3;
    v451 = v345;
    do
    {
      v351 = v448;
      sub_100031660(v345, v448, &unk_100984360);
      sub_1000476A0(v351, v317, &unk_100984360);
      if ((*v348)(v317, 1, v346) == 1)
      {
        sub_10002B894(v317, &unk_100984360);
      }

      else
      {
        v352 = *v349;
        (*v349)(v450, v317, v346);
        v353 = v455;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v353 = sub_100033A68(0, *(v353 + 2) + 1, 1, v353);
        }

        v355 = *(v353 + 2);
        v354 = *(v353 + 3);
        if (v355 >= v354 >> 1)
        {
          v353 = sub_100033A68(v354 > 1, v355 + 1, 1, v353);
        }

        *(v353 + 2) = v355 + 1;
        v346 = v453;
        v356 = (*(v452 + 80) + 32) & ~*(v452 + 80);
        v455 = v353;
        v352(v353 + v356 + *(v452 + 72) * v355, v450, v453);
        v317 = v444;
      }

      v345 += v454;
      --v350;
    }

    while (v350);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v357 = v438;
    v358 = v439;
    v359 = v433;
  }

  v381 = swift_deallocClassInstance();
  v382 = v442;
  v383 = v443;
  (v446)(v381);
  v384 = *(v359 + 16);
  v384(v357, v383 + v447[10], v358);
  sub_1003FAD58(v383, type metadata accessor for TitleHeaderView.Style);
  v385 = *&v382[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView];
  if (v385)
  {
    v386 = sub_100005744(0, &qword_100972EB0);
    v387 = &protocol witness table for UIView;
  }

  else
  {
    v386 = 0;
    v387 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  *&v491 = v385;
  *(&v492 + 1) = v386;
  v493 = v387;
  v388 = v443;
  v389 = v446;
  v446();
  v390 = v447;
  v391 = *(v388 + v447[14]);
  v392 = v385;
  sub_1003FAD58(v388, type metadata accessor for TitleHeaderView.Style);
  v489 = &type metadata for CGFloat;
  v490 = &protocol witness table for CGFloat;
  v488[0] = v391;
  v393 = (v384)(v411, v438, v439);
  v394 = v410;
  (v389)(v393);
  (*(v412 + 16))(v414, v394 + v390[11], v413);
  sub_1003FAD58(v394, type metadata accessor for TitleHeaderView.Style);
  (*(v418 + 104))(v417, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v420);
  v395 = v415;
  TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
  v396 = v421;
  TitleHeaderLayout.placeChildren(relativeTo:in:)();

  (*(v422 + 8))(v396, v423);
  (*(v416 + 8))(v395, v419);
  (*(v433 + 8))(v438, v439);
  (*(v452 + 8))(v437, v453);
  sub_10002B894(v436, &unk_100984360);
  return sub_10002B894(v440, &unk_100984360);
}

id sub_1003F62B8()
{
  v1 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v31.receiver = v0;
  v31.super_class = v4;
  objc_msgSendSuper2(&v31, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_10001F63C(v6);
  v7 = type metadata accessor for Accessory();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_1002BAFE4(v3, &v0[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    [v10 removeTarget:v0 action:"didTapWithAccessoryView:" forControlEvents:64];
  }

  v11 = *&v0[v9];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v0[v9];
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  *&v0[v9] = 0;

  v13 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
  v14 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork];
  if (v14)
  {
    v15 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView;
    v16 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView];

    if (v16)
    {
      [v16 removeFromSuperview];
      v17 = *&v0[v15];
    }

    else
    {
      v17 = 0;
    }

    *&v0[v15] = 0;
  }

  *&v0[v13] = 0;

  sub_1003F1BFC(v14);

  v18 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
  v19 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView;
    v21 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView];

    if (v21)
    {
      [v21 removeFromSuperview];
      v22 = *&v0[v20];
    }

    else
    {
      v22 = 0;
    }

    *&v0[v20] = 0;
  }

  *&v0[v18] = 0;

  sub_1003F195C(v19);

  v23 = &v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText];
  v24 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8];
  if (v24)
  {
    v26 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel;
    v27 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel];

    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *&v0[v26];
    }

    else
    {
      v28 = 0;
    }

    *&v0[v26] = 0;
  }

  *v23 = 0;
  *(v23 + 1) = 0;

  sub_1003F13BC(v25, v24);

  return [*&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] setText:0];
}

void sub_1003F6698()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v30 = v4;
    v31 = v6;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v34 = v15;
    v35 = v17;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 3)
    {
      sub_10002849C(&unk_100984350);
      swift_arrayDestroy();
      sub_10002849C(&unk_100977380);
      sub_10015872C();
      BidirectionalCollection<>.joined(separator:)();

      return;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v29[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v29[v23 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100033E38(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_100033E38((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[2 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1003F6B04()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_10002849C(&qword_1009701B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007B10D0;
    *(v3 + 56) = sub_100005744(0, &qword_100972EB0);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_1003F6C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003F6E0C()
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v0 <= 0x3F)
  {
    sub_1003F70E4(319, &qword_100984180, type metadata accessor for Accessory);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003F6FB8()
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_1003F70E4(319, &qword_1009841F8, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
        if (v3 <= 0x3F)
        {
          sub_1003F7138();
          if (v4 <= 0x3F)
          {
            sub_100005744(319, &qword_100970180);
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

void sub_1003F70E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1003F7138()
{
  if (!qword_100984200[0])
  {
    sub_100005744(255, &qword_100970180);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100984200);
    }
  }
}

void sub_1003F71D8()
{
  sub_100005744(319, &qword_100970180);
  if (v0 <= 0x3F)
  {
    sub_1000C6500();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FontUseCase();
      if (v2 <= 0x3F)
      {
        type metadata accessor for StaticDimension();
        if (v3 <= 0x3F)
        {
          sub_1003F72D4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1003F72D4()
{
  result = qword_1009842D0;
  if (!qword_1009842D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009842D0);
  }

  return result;
}

unint64_t sub_1003F733C()
{
  result = qword_100984320;
  if (!qword_100984320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984320);
  }

  return result;
}

id sub_1003F7390(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v326 = a6;
  v327 = a8;
  v286 = a7;
  v323 = a1;
  v324 = a5;
  v322 = a4;
  v295 = a3;
  v332 = a2;
  v319 = a9;
  v320 = a10;
  v338 = a16;
  v20 = type metadata accessor for AspectRatio();
  v293 = *(v20 - 8);
  v294 = v20;
  __chkstk_darwin(v20);
  v292 = v285 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for FontSource();
  v289 = *(v291 - 8);
  __chkstk_darwin(v291);
  v288 = v285 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = type metadata accessor for StaticDimension();
  v348 = *(v333 - 8);
  __chkstk_darwin(v333);
  v290 = v285 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v314 = *(v316 - 8);
  __chkstk_darwin(v316);
  v315 = v285 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v311 = *(v25 - 8);
  v312 = v25;
  __chkstk_darwin(v25);
  v313 = v285 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v308 = *(v27 - 8);
  v309 = v27;
  __chkstk_darwin(v27);
  v310 = v285 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = type metadata accessor for TitleHeaderLayout();
  v321 = *(v318 - 8);
  __chkstk_darwin(v318);
  v317 = v285 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TitleHeaderLayout.Child();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v300 = v285 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v345 = v285 - v34;
  __chkstk_darwin(v35);
  v344 = v285 - v36;
  __chkstk_darwin(v37);
  v336 = v285 - v38;
  v39 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v39 - 8);
  v298 = v285 - v40;
  v41 = type metadata accessor for LabelPlaceholderCompatibility();
  v329 = *(v41 - 8);
  v330 = v41;
  __chkstk_darwin(v41);
  v328 = v285 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CharacterSet();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v285 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v297 = *(v47 - 1);
  __chkstk_darwin(v47);
  v337 = v285 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v301 = v285 - v50;
  __chkstk_darwin(v51);
  v53 = (v285 - v52);
  v54 = sub_10002849C(&unk_100984360);
  v55 = *(v54 - 8);
  v306 = v54;
  v307 = v55;
  __chkstk_darwin(v54);
  v287 = v285 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v341 = v285 - v58;
  __chkstk_darwin(v59);
  v340 = v285 - v60;
  __chkstk_darwin(v61);
  v299 = v285 - v62;
  __chkstk_darwin(v63);
  v343 = v285 - v64;
  __chkstk_darwin(v65);
  v342 = v285 - v66;
  __chkstk_darwin(v67);
  v335 = (v285 - v68);
  __chkstk_darwin(v69);
  v296 = v285 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v74 = (v285 - v73);
  v325 = a18;
  v75 = [a18 traitCollection];
  v346 = v30;
  v347 = v31;
  v334 = v74;
  v339 = v47;
  v331 = v75;
  v303 = v43;
  v304 = v46;
  v305 = v44;
  if (!v332)
  {
    v89 = *(v31 + 56);
    v89(v74, 1, 1, v30);
    goto LABEL_23;
  }

  v76 = v338;
  sub_1003FAE20(v338, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100005744(0, &qword_1009730E0);
  v77 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v384 = v323;
  *(&v384 + 1) = v332;

  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v79 = v78;
  (*(v44 + 8))(v46, v43);

  v80 = 0;
  if ((v79 & 1) == 0)
  {
    [v77 lineHeight];
    v82 = ceil(v81 * 1.3);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 >= 9.22337204e18)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v80 = v82;
      goto LABEL_7;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_7:
  v302 = v53;
  if (!v295)
  {
    goto LABEL_15;
  }

  v285[1] = v80;

  dispatch thunk of Artwork.systemImageName.getter();
  v83 = v333;
  if (v84 && (v85 = [objc_opt_self() configurationWithFont:v77], v86 = String._bridgeToObjectiveC()(), , v87 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v86, v85), v86, v85, v47 = v339, v87))
  {
    [v87 size];
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v88 = LayoutViewPlaceholder.init(representing:)();
  }

  else
  {
    v90 = v47[6];
    v91 = type metadata accessor for FontUseCase();
    v92 = v288;
    (*(*(v91 - 8) + 16))(v288, v76 + v90, v91);
    v93 = v289;
    v94 = v291;
    (*(v289 + 104))(v92, enum case for FontSource.useCase(_:), v291);
    *(&v385 + 1) = v94;
    v386 = &protocol witness table for FontSource;
    v95 = sub_1000056E0(&v384);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v290;
    StaticDimension.init(_:scaledLike:)();
    (*(v93 + 8))(v92, v94);
    StaticDimension.rawValue(in:)();
    Artwork.size.getter();
    v97 = v292;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();

    (*(v293 + 8))(v97, v294);
    (*(v348 + 8))(v96, v83);
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v88 = LayoutViewPlaceholder.init(representing:)();
  }

  if (v88)
  {
    *(&v385 + 1) = type metadata accessor for LayoutViewPlaceholder();
    v386 = &protocol witness table for LayoutViewPlaceholder;
    v295 = v88;
    *&v384 = v88;
  }

  else
  {
LABEL_15:
    v295 = 0;
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
  }

  v383 = 0;
  v381 = 0u;
  v382 = 0u;
  v380 = 0;
  v378 = 0u;
  v379 = 0u;
  v98 = type metadata accessor for Feature();
  v376 = v98;
  v377 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature);
  v99 = sub_1000056E0(v375);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v77;

  v53 = v100;
  isFeatureEnabled(_:)();
  sub_100007000(v375);
  v101 = v328;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v329 + 8))(v101, v330);
  sub_100031660(&v384, v374, &qword_100975610);
  v102 = v376;
  v103 = v377;
  v104 = sub_10002A400(v375, v376);
  v372 = v102;
  v373 = *(v103 + 8);
  v105 = sub_1000056E0(v371);
  (*(*(v102 - 8) + 16))(v105, v104, v102);
  v106 = v339;
  v107 = v302;
  v108 = *(v302 + v339[8]);
  v369 = &type metadata for Float;
  v370 = &protocol witness table for Float;
  v368 = v108;
  v109 = v339[9];
  v110 = v333;
  v366 = v333;
  v367 = &protocol witness table for StaticDimension;
  v111 = sub_1000056E0(v365);
  v112 = *(v348 + 16);
  v112(v111, v107 + v109, v110);
  v113 = v106[10];
  v363 = v110;
  v364 = &protocol witness table for StaticDimension;
  v114 = sub_1000056E0(v362);
  v112(v114, v107 + v113, v110);
  sub_100031660(&v381, &v356, &unk_10097E890);
  v115 = *(&v357 + 1);
  if (*(&v357 + 1))
  {
    v116 = v358;
    v117 = sub_10002A400(&v356, *(&v357 + 1));
    *(&v360 + 1) = v115;
    v361 = *(v116 + 8);
    v118 = sub_1000056E0(&v359);
    (*(*(v115 - 8) + 16))(v118, v117, v115);
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v356, &unk_10097E890);
    v359 = 0u;
    v360 = 0u;
    v361 = 0;
  }

  v119 = v296;
  sub_100031660(&v378, v353, &unk_10097E890);
  v120 = v354;
  v43 = v303;
  if (v354)
  {
    v121 = v355;
    v122 = sub_10002A400(v353, v354);
    *(&v357 + 1) = v120;
    v358 = *(v121 + 8);
    v123 = sub_1000056E0(&v356);
    (*(*(v120 - 8) + 16))(v123, v122, v120);
    sub_100007000(v353);
  }

  else
  {
    sub_10002B894(v353, &unk_10097E890);
    v356 = 0u;
    v357 = 0u;
    v358 = 0;
  }

  v124 = v339;
  v125 = v302;
  sub_10002C0AC(v302 + v339[12], v353);
  sub_10002C0AC(v125 + v124[13], v352);
  v351 = &protocol witness table for Double;
  v350 = &type metadata for Double;
  v349 = 0x4020000000000000;
  TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();

  sub_10002B894(&v378, &unk_10097E890);
  v47 = v124;
  sub_10002B894(&v381, &unk_10097E890);
  sub_1003FAD58(v125, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100007000(v375);

  sub_10002B894(&v384, &qword_100975610);
  v30 = v346;
  v89 = *(v347 + 56);
  v89(v119, 0, 1, v346);
  sub_1000476A0(v119, v334, &unk_100984360);
LABEL_23:
  v126 = v333;
  v127 = v324;
  if (!v327)
  {
LABEL_26:
    v89(v335, 1, 1, v30);
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
    v381 = 0u;
    v382 = 0u;
    v383 = 0;
    goto LABEL_41;
  }

  v128 = v43;
  v53 = type metadata accessor for TitleHeaderView.Style(0);
  v129 = v298;
  sub_100031660(v338 + v53[6], v298, &qword_1009794E8);
  if ((*(v297 + 48))(v129, 1, v47) == 1)
  {
    sub_10002B894(v129, &qword_1009794E8);
    v43 = v128;
    goto LABEL_26;
  }

  sub_1003FADB8(v129, v301, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100005744(0, &qword_1009730E0);
  v332 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v384 = v286;
  *(&v384 + 1) = v327;

  v130 = v304;
  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v132 = v131;
  (*(v305 + 8))(v130, v128);

  if (v132)
  {
LABEL_31:
    if (*(v338 + v53[9]) == 2)
    {
      v302 = a14;
      v323 = a13;
      v136 = type metadata accessor for Feature();
      *(&v385 + 1) = v136;
      v298 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature);
      v386 = v298;
      v137 = sub_1000056E0(&v384);
      LODWORD(v297) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v138 = *(*(v136 - 8) + 104);
      v138(v137);
      v139 = v332;

      v140 = v139;
      isFeatureEnabled(_:)();
      sub_100007000(&v384);
      v141 = v328;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v332 = v89;
      v142 = v330;
      v143 = *(v329 + 8);
      v143(v141, v330);
      *(&v382 + 1) = v136;
      v383 = v298;
      v144 = sub_1000056E0(&v381);
      (v138)(v144, v297, v136);
      v126 = v333;

      v145 = v140;
      v53 = isFeatureEnabled(_:)();
      sub_100007000(&v381);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();

      v143(v141, v142);
      v127 = v324;
      sub_1003FAD58(v301, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v332)(v335, 1, 1, v346);
      v47 = v339;
    }

    else
    {
      v386 = 0;
      v384 = 0u;
      v385 = 0u;
      v383 = 0;
      v381 = 0u;
      v382 = 0u;
      v380 = 0;
      v378 = 0u;
      v379 = 0u;
      v146 = type metadata accessor for Feature();
      v376 = v146;
      v377 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature);
      v147 = sub_1000056E0(v375);
      (*(*(v146 - 8) + 104))(v147, enum case for Feature.measurement_with_labelplaceholder(_:), v146);

      v148 = v332;
      isFeatureEnabled(_:)();
      sub_100007000(v375);
      v149 = v328;
      v332 = v148;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v329 + 8))(v149, v330);
      sub_100031660(&v384, v374, &qword_100975610);
      v150 = v376;
      v151 = v377;
      v152 = sub_10002A400(v375, v376);
      v372 = v150;
      v373 = *(v151 + 8);
      v153 = sub_1000056E0(v371);
      (*(*(v150 - 8) + 16))(v153, v152, v150);
      v154 = v339;
      v155 = v301;
      v156 = *(v301 + v339[8]);
      v369 = &type metadata for Float;
      v370 = &protocol witness table for Float;
      v368 = v156;
      v157 = v339[9];
      v366 = v126;
      v367 = &protocol witness table for StaticDimension;
      v158 = sub_1000056E0(v365);
      v159 = v126;
      v160 = *(v348 + 16);
      v160(v158, v155 + v157, v159);
      v161 = v154[10];
      v363 = v159;
      v364 = &protocol witness table for StaticDimension;
      v162 = sub_1000056E0(v362);
      v160(v162, v155 + v161, v159);
      sub_100031660(&v381, &v356, &unk_10097E890);
      v163 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v164 = v358;
        v165 = sub_10002A400(&v356, *(&v357 + 1));
        *(&v360 + 1) = v163;
        v361 = *(v164 + 8);
        v166 = sub_1000056E0(&v359);
        (*(*(v163 - 8) + 16))(v166, v165, v163);
        sub_100007000(&v356);
      }

      else
      {
        sub_10002B894(&v356, &unk_10097E890);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v167 = v347;
      sub_100031660(&v378, v353, &unk_10097E890);
      v168 = v354;
      if (v354)
      {
        v169 = v355;
        v170 = sub_10002A400(v353, v354);
        *(&v357 + 1) = v168;
        v358 = *(v169 + 8);
        v171 = sub_1000056E0(&v356);
        (*(*(v168 - 8) + 16))(v171, v170, v168);
        sub_100007000(v353);
      }

      else
      {
        sub_10002B894(v353, &unk_10097E890);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v47 = v339;
      v172 = v301;
      sub_10002C0AC(v301 + v339[12], v353);
      sub_10002C0AC(v172 + v47[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      v173 = v335;
      TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
      sub_10002B894(&v378, &unk_10097E890);
      sub_10002B894(&v381, &unk_10097E890);
      sub_10002B894(&v384, &qword_100975610);
      sub_1003FAD58(v172, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100007000(v375);

      v174 = *(v167 + 56);
      v53 = (v167 + 56);
      v174(v173, 0, 1, v346);
      v386 = 0;
      v384 = 0u;
      v385 = 0u;
      v381 = 0u;
      v382 = 0u;
      v383 = 0;
      v126 = v333;
      v127 = v324;
    }

    v43 = v303;
LABEL_41:
    v332 = type metadata accessor for TitleHeaderView.Style(0);
    v324 = v338 + v332[5];
    sub_1003FAE20(v324, v337, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100005744(0, &qword_1009730E0);
    v327 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    if (!v127)
    {
      goto LABEL_49;
    }

    v175 = v126;
    v44 = v322;
    *&v378 = v322;
    *(&v378 + 1) = v127;

    v46 = v304;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v177 = v176;
    (*(v305 + 8))(v46, v43);

    if (v177)
    {
LABEL_48:
      v126 = v175;
      if (!v326)
      {
        goto LABEL_56;
      }

LABEL_49:
      v323 = a15;

      dispatch thunk of Artwork.systemImageName.getter();
      if (v180 && (v181 = [objc_opt_self() configurationWithFont:v327], v182 = String._bridgeToObjectiveC()(), , v183 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v182, v181), v182, v47 = v339, v181, v183))
      {
        [v183 size];
        type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v184 = LayoutViewPlaceholder.init(representing:)();
      }

      else
      {
        v185 = v126;
        v186 = v324;
        v187 = v47[6];
        v188 = type metadata accessor for FontUseCase();
        v189 = v186 + v187;
        v126 = v185;
        v190 = v288;
        (*(*(v188 - 8) + 16))(v288, v189, v188);
        v191 = v289;
        v192 = v291;
        (*(v289 + 104))(v190, enum case for FontSource.useCase(_:), v291);
        *(&v379 + 1) = v192;
        v380 = &protocol witness table for FontSource;
        v193 = sub_1000056E0(&v378);
        (*(v191 + 16))(v193, v190, v192);

        v194 = v290;
        StaticDimension.init(_:scaledLike:)();
        (*(v191 + 8))(v190, v192);
        StaticDimension.rawValue(in:)();
        Artwork.size.getter();
        v195 = v292;
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();

        (*(v293 + 8))(v195, v294);
        (*(v348 + 8))(v194, v126);
        type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v184 = LayoutViewPlaceholder.init(representing:)();
      }

      if (v184)
      {
        v196 = type metadata accessor for LayoutViewPlaceholder();
        v380 = &protocol witness table for LayoutViewPlaceholder;
        *(&v379 + 1) = v196;
        v326 = v184;
        *&v378 = v184;
      }

      else
      {
LABEL_56:
        v326 = 0;
        v380 = 0;
        v378 = 0u;
        v379 = 0u;
      }

      v197 = type metadata accessor for Feature();
      v376 = v197;
      v377 = sub_1003FAFE0(&qword_100972E50, &type metadata accessor for Feature);
      v198 = sub_1000056E0(v375);
      (*(*(v197 - 8) + 104))(v198, enum case for Feature.measurement_with_labelplaceholder(_:), v197);

      v199 = v327;
      isFeatureEnabled(_:)();
      sub_100007000(v375);
      v200 = v328;
      v327 = v199;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v329 + 8))(v200, v330);
      sub_100031660(&v378, v374, &qword_100975610);
      v201 = v376;
      v202 = v377;
      v203 = sub_10002A400(v375, v376);
      v372 = v201;
      v373 = *(v202 + 8);
      v204 = sub_1000056E0(v371);
      (*(*(v201 - 8) + 16))(v204, v203, v201);
      v205 = v339;
      v206 = v337;
      v207 = *(v337 + v339[8]);
      v369 = &type metadata for Float;
      v370 = &protocol witness table for Float;
      v368 = v207;
      v208 = v339[9];
      v366 = v126;
      v367 = &protocol witness table for StaticDimension;
      v209 = sub_1000056E0(v365);
      v210 = *(v348 + 16);
      v210(v209, v206 + v208, v126);
      v211 = v205[10];
      v363 = v126;
      v364 = &protocol witness table for StaticDimension;
      v212 = sub_1000056E0(v362);
      v210(v212, v206 + v211, v126);
      sub_100031660(&v384, &v356, &unk_10097E890);
      v213 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v214 = v358;
        v215 = sub_10002A400(&v356, *(&v357 + 1));
        *(&v360 + 1) = v213;
        v361 = *(v214 + 8);
        v216 = sub_1000056E0(&v359);
        (*(*(v213 - 8) + 16))(v216, v215, v213);
        sub_100007000(&v356);
      }

      else
      {
        sub_10002B894(&v356, &unk_10097E890);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v217 = v340;
      v218 = v338;
      sub_100031660(&v381, v353, &unk_10097E890);
      v219 = v354;
      if (v354)
      {
        v220 = v355;
        v221 = sub_10002A400(v353, v354);
        *(&v357 + 1) = v219;
        v358 = *(v220 + 8);
        v222 = sub_1000056E0(&v356);
        (*(*(v219 - 8) + 16))(v222, v221, v219);
        sub_100007000(v353);
      }

      else
      {
        sub_10002B894(v353, &unk_10097E890);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v223 = v341;
      v224 = v339;
      v225 = v337;
      sub_10002C0AC(v337 + v339[12], v353);
      sub_10002C0AC(v225 + v224[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
      sub_100007000(v375);
      sub_10002B894(&v378, &qword_100975610);
      v226 = *(v218 + v332[9]);
      sub_10002849C(&qword_1009812E8);
      v348 = *(v307 + 72);
      v227 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      if (v226)
      {
        if (v226 != 1)
        {
          v255 = v348;
          v333 = swift_allocObject();
          v256 = v333 + v227;
          sub_100031660(v334, v333 + v227, &unk_100984360);
          v257 = v346;
          v258 = v347;
          (*(v347 + 16))(v256 + v255, v336, v346);
          (*(v258 + 56))(v256 + v255, 0, 1, v257);
          v259 = v299;
          sub_100031660(v256, v299, &unk_100984360);
          v260 = v287;
          sub_1000476A0(v259, v287, &unk_100984360);
          v261 = *(v258 + 48);
          v262 = (v258 + 32);
          v263 = v261(v260, 1, v257);
          v345 = (v258 + 32);
          if (v263 == 1)
          {
            sub_10002B894(v260, &unk_100984360);
            v264 = _swiftEmptyArrayStorage;
          }

          else
          {
            v265 = *v262;
            (*v262)(v300, v260, v257);
            v264 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v264 = sub_100033A68(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v267 = *(v264 + 2);
            v266 = *(v264 + 3);
            if (v267 >= v266 >> 1)
            {
              v264 = sub_100033A68(v266 > 1, v267 + 1, 1, v264);
            }

            *(v264 + 2) = v267 + 1;
            v268 = v264 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v267;
            v257 = v346;
            v265(v268, v300, v346);
            v260 = v287;
          }

          v269 = v299;
          sub_100031660(v256 + v348, v299, &unk_100984360);
          sub_1000476A0(v269, v260, &unk_100984360);
          if (v261(v260, 1, v257) == 1)
          {
            sub_10002B894(v260, &unk_100984360);
            v254 = v338;
            v53 = v334;
          }

          else
          {
            v270 = v257;
            v271 = *v345;
            (*v345)(v300, v260, v270);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = v338;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v264 = sub_100033A68(0, *(v264 + 2) + 1, 1, v264);
            }

            v53 = v334;
            v274 = *(v264 + 2);
            v273 = *(v264 + 3);
            if (v274 >= v273 >> 1)
            {
              v264 = sub_100033A68(v273 > 1, v274 + 1, 1, v264);
            }

            *(v264 + 2) = v274 + 1;
            v271(v264 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v274, v300, v346);
          }

          swift_setDeallocating();
          swift_arrayDestroy();
LABEL_100:
          swift_deallocClassInstance();
          v43 = v317;
          if (a11 == 0.0 && a12 == 0.0)
          {
            v275 = 0;
            v276 = 0;
            v277 = 0;
            *&v379 = 0;
            *(&v378 + 1) = 0;
          }

          else
          {
            v276 = type metadata accessor for LayoutViewPlaceholder();
            swift_allocObject();
            v275 = LayoutViewPlaceholder.init(representing:)();
            v277 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v378 = v275;
          *(&v379 + 1) = v276;
          v380 = v277;
          sub_100031660(&v378, v375, &qword_100975610);
          v278 = v332;
          v279 = *(v254 + v332[14]);
          v374[3] = &type metadata for CGFloat;
          v374[4] = &protocol witness table for CGFloat;
          v374[0] = v279;
          (*(v308 + 16))(v310, v254 + v332[10], v309);
          (*(v311 + 16))(v313, v254 + v278[11], v312);
          (*(v314 + 104))(v315, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v316);
          TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
          CGSize.subtracting(insets:)();
          sub_1003FAFE0(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout);
          v44 = v318;
          dispatch thunk of Measurable.measurements(fitting:in:)();
          v375[0] = v280;
          v375[1] = v281;
          CGSize.add(outsets:)();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v321 + 8))(v43, v44);
            (*(v347 + 8))(v336, v346);
            sub_1003FAD58(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10002B894(&v381, &unk_10097E890);
            sub_10002B894(&v384, &unk_10097E890);
            sub_10002B894(v335, &unk_100984360);
            sub_10002B894(v53, &unk_100984360);
            return sub_10002B894(&v378, &qword_100975610);
          }

          v282 = v346;
          v47 = v347;
          v46 = v331;
          if (qword_10096E760 != -1)
          {
            swift_once();
          }

          v283 = sub_1000056A8(v339, qword_1009D2688);
          if (sub_1003FA6EC(v324, v283))
          {

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v282);
            sub_1003FAD58(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10002B894(&v381, &unk_10097E890);
            sub_10002B894(&v384, &unk_10097E890);
            sub_10002B894(v335, &unk_100984360);
            sub_10002B894(v53, &unk_100984360);
            return sub_10002B894(&v378, &qword_100975610);
          }

          if (qword_10096E768 == -1)
          {
LABEL_111:
            v284 = sub_1000056A8(v339, qword_1009D26A0);
            sub_1003FA6EC(v324, v284);

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v346);
            sub_1003FAD58(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10002B894(&v381, &unk_10097E890);
            sub_10002B894(&v384, &unk_10097E890);
            sub_10002B894(v335, &unk_100984360);
            sub_10002B894(v53, &unk_100984360);
            return sub_10002B894(&v378, &qword_100975610);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v228 = v348;
        v333 = swift_allocObject();
        v229 = v333 + v227;
        sub_100031660(v334, v333 + v227, &unk_100984360);
        v231 = v346;
        v230 = v347;
        (*(v347 + 16))(v229 + v228, v336, v346);
        v232 = *(v230 + 56);
        v230 += 56;
        v232(v229 + v228, 0, 1, v231);
        sub_100031660(v335, v229 + 2 * v228, &unk_100984360);
        v233 = (v230 - 8);
        v344 = (v230 - 24);
        v234 = v231;
        v235 = _swiftEmptyArrayStorage;
        v236 = 3;
        v342 = v229;
        do
        {
          v237 = v343;
          sub_100031660(v229, v343, &unk_100984360);
          sub_1000476A0(v237, v223, &unk_100984360);
          if ((*v233)(v223, 1, v234) == 1)
          {
            sub_10002B894(v223, &unk_100984360);
          }

          else
          {
            v238 = *v344;
            (*v344)(v345, v223, v234);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v235 = sub_100033A68(0, *(v235 + 2) + 1, 1, v235);
            }

            v240 = *(v235 + 2);
            v239 = *(v235 + 3);
            if (v240 >= v239 >> 1)
            {
              v235 = sub_100033A68(v239 > 1, v240 + 1, 1, v235);
            }

            *(v235 + 2) = v240 + 1;
            v234 = v346;
            v238(v235 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v240, v345, v346);
            v223 = v341;
          }

          v229 += v348;
          --v236;
        }

        while (v236);
      }

      else
      {
        v241 = v348;
        v242 = 2 * v348;
        v333 = swift_allocObject();
        v243 = v347;
        v244 = v333 + v227;
        sub_100031660(v334, v333 + v227, &unk_100984360);
        sub_100031660(v335, v244 + v241, &unk_100984360);
        v245 = v346;
        (*(v243 + 16))(v244 + v242, v336, v346);
        (*(v243 + 56))(v244 + v242, 0, 1, v245);
        v246 = (v243 + 48);
        v345 = (v243 + 32);
        v247 = v245;
        v248 = _swiftEmptyArrayStorage;
        v249 = 3;
        v343 = v244;
        do
        {
          v250 = v342;
          sub_100031660(v244, v342, &unk_100984360);
          sub_1000476A0(v250, v217, &unk_100984360);
          if ((*v246)(v217, 1, v247) == 1)
          {
            sub_10002B894(v217, &unk_100984360);
          }

          else
          {
            v251 = *v345;
            (*v345)(v344, v217, v247);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v248 = sub_100033A68(0, *(v248 + 2) + 1, 1, v248);
            }

            v253 = *(v248 + 2);
            v252 = *(v248 + 3);
            if (v253 >= v252 >> 1)
            {
              v248 = sub_100033A68(v252 > 1, v253 + 1, 1, v248);
            }

            *(v248 + 2) = v253 + 1;
            v247 = v346;
            v251(v248 + ((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v253, v344, v346);
            v217 = v340;
          }

          v244 += v348;
          --v249;
        }

        while (v249);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      v254 = v338;
      v53 = v334;
      goto LABEL_100;
    }

    [v327 lineHeight];
    v179 = ceil(v178 * 1.3);
    if ((*&v179 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v179 > -9.22337204e18)
      {
        if (v179 < 9.22337204e18)
        {
          goto LABEL_48;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  result = [v332 lineHeight];
  v135 = ceil(v134 * 1.3);
  if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_121;
  }

  if (v135 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v135 < 9.22337204e18)
  {
    goto LABEL_31;
  }

LABEL_122:
  __break(1u);
  return result;
}

double sub_1003FA3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a1;
  v21[0] = type metadata accessor for AspectRatio();
  v4 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticDimension();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v16 = type metadata accessor for FontUseCase();
  (*(*(v16 - 8) + 16))(v10, a2 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v8 + 16))(v17, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  (*(v8 + 8))(v10, v7);
  StaticDimension.rawValue(in:)();
  if (v22)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    v19 = v18;
    (*(v4 + 8))(v6, v21[0]);
  }

  else
  {
    v19 = 0.0;
  }

  (*(v12 + 8))(v14, v11);
  return v19;
}

BOOL sub_1003FA6EC(uint64_t a1, uint64_t a2)
{
  sub_100005744(0, &qword_100978360);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || (*(a1 + 8) != *(a2 + 8) || v4 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (static FontUseCase.== infix(_:_:)() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (static StaticDimension.== infix(_:_:)() & 1) != 0 && (static StaticDimension.== infix(_:_:)())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_1003FA80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_10002849C(&qword_100984330);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100005744(0, &qword_100978360);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15 || (*(a1 + 8) != *(a2 + 8) || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((static FontUseCase.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  if ((static StaticDimension.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static StaticDimension.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_1003FA6EC(a1 + *(v16 + 20), a2 + *(v16 + 20)))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_100031660(a1 + v17, v13, &qword_1009794E8);
  v31 = v18;
  sub_100031660(a2 + v17, &v13[v18], &qword_1009794E8);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_100031660(v13, v10, &qword_1009794E8);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_1003FADB8(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_1003FA6EC(v10, v7);
      sub_1003FAD58(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003FAD58(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10002B894(v13, &qword_1009794E8);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_1003FAD58(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10002B894(v13, &qword_100984330);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10002B894(v13, &qword_1009794E8);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (static TitleHeaderLayout.AccessoryVerticalAlignment.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v22[12];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    sub_100005744(0, &qword_100970180);
    v26 = v25;
    v27 = v24;
    v28 = static NSObject.== infix(_:_:)();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (static NSObject.== infix(_:_:)())
  {
    type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
    sub_1003FAFE0(&qword_100984338, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_1003FAD58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003FADB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003FAE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1003FAE88()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003FAFE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003FB054(uint64_t result)
{
  v2 = qword_1009CF428;
  v3 = *(v1 + qword_1009CF428);
  if (v3 != (result & 1))
  {
    v4 = qword_10097F318;
    if ((v3 & 1) != 0 && !*(v1 + qword_10097F318))
    {
      type metadata accessor for BarButtonItemHidingScrollObserver();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v1 + v4) = v6;
      *(v6 + 24) = 0;
      sub_100403A28(&unk_10097F5D0, type metadata accessor for BarButtonItemHidingScrollObserver);

      CompoundScrollObserver.addChild(_:)();

      v5 = *(v1 + qword_10097F318);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v5 = *(v1 + qword_10097F318);
      if (!v5)
      {
        return result;
      }
    }

    *(v5 + 24) = *(v1 + v2);

    sub_1002D9730();
  }

  return result;
}

void sub_1003FB194(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v6 = swift_allocObject();
  type metadata accessor for PromotedContentMetricCollector();
  *(v6 + 16) = static PromotedContentMetricCollector.shared.getter();
  v7 = sub_100401C38(v5, v6, a3);

  v8 = *(a2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController);
  *(a2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController) = v7;
}

void (*sub_1003FB238(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100402BF4;
}

id sub_1003FB2D0()
{
  v1 = OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchResultsMessageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPreservesSuperviewLayoutMargins:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1003FB368()
{
  v1 = OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect];
    v7 = *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect];
    *v6 = sub_100403984;
    v6[1] = v5;

    sub_10001F63C(v7);

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1003FB460()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    GuidedSearchPresenter.didToggleToken(at:actionHandler:)();
  }

  return result;
}

uint64_t sub_1003FB54C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(*(result + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController) && (type metadata accessor for StoreCollectionViewController(), (v4 = swift_dynamicCastClass()) != 0))
    {
      v5 = &OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph;
      v4 = v3;
    }

    v6 = *(v4 + *v5);
    type metadata accessor for GuidedSearchTokenToggleAction();
    v7 = swift_dynamicCastClass() == 0;

    sub_1005D0214(a1, v7, v6);
  }

  return result;
}

void sub_1003FB648(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {

    v3 = sub_1003FB2D0();

    sub_10041DA04(v4);

    v5 = *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView);
    v63[3] = type metadata accessor for SearchResultsMessageView();
    v63[4] = &protocol witness table for UIView;
    v63[0] = v6;
    sub_10002C0AC(v63, v62);
    sub_10002C0AC(v62, v61);
    v7 = swift_allocObject();
    sub_100005A38(v62, v7 + 16);
    v8 = swift_allocObject();
    v8[2] = sub_100403924;
    v8[3] = v7;
    v8[4] = 0x3FD999999999999ALL;
    v9 = v6;

    sub_100007000(v63);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_100007000(v61);

LABEL_28:
      v54 = *(*(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v54)
      {
        v55 = [v54 collectionView];
        if (v55)
        {
          v56 = v55;
          sub_1006E3738(v55);
          v57 = UIAccessibilityScreenChangedNotification;
          v58 = v56;
          UIAccessibilityPostNotification(v57, v58);
        }
      }

      return;
    }

    v11 = Strong;
    v59 = v6;
    v12 = *(v5 + 24);
    if (v12)
    {
      [v12 setHidden:1];
    }

    v13 = v9;
    [v13 setHidden:0];
    v14 = [v13 superview];
    v15 = [v11 contentView];
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        sub_100005744(0, &qword_100972EB0);
        v17 = static NSObject.== infix(_:_:)();

        v18 = &selRef__setDefaultAttributes_;
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v16 = v14;
      v18 = &selRef__setDefaultAttributes_;
    }

    else
    {
      v18 = &selRef__setDefaultAttributes_;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    v27 = [v11 v18[388]];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v13 setFrame:{v29, v31, v33, v35}];
    [v13 setAutoresizingMask:18];
    v36 = [v11 v18[388]];
    [v36 addSubview:v13];

LABEL_25:
    v37 = *(v5 + 24);
    *(v5 + 24) = v59;
    v38 = v13;

    if (*(v5 + 65))
    {
      v39 = [v11 v18[388]];
      sub_100005744(0, &qword_100972EB0);
      LayoutMarginsAware<>.layoutFrame.getter();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v65.origin.x = v41;
      v65.origin.y = v43;
      v65.size.width = v45;
      v65.size.height = v47;
      CGRectGetWidth(v65);
      v48 = [v11 v18[388]];
      sub_10002A400(v61, v61[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v50 = v49;

      [v11 setPreferredHeight:v50];
      [v11 setMinimumHeight:0.0];
    }

    v51 = *(v5 + 32);
    v52 = *(v5 + 40);
    v53 = *(v5 + 48);
    *(v5 + 32) = sub_100403924;
    *(v5 + 40) = v7;
    *(v5 + 48) = sub_100403978;
    *(v5 + 56) = v8;
    *(v5 + 64) = 1;
    sub_10040392C(v51, v52, v53);
    sub_100007000(v61);

    goto LABEL_28;
  }

  v19 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
  v20 = sub_1003FB2D0();
  if (*(v19 + 65) == 1 && (v21 = *(v19 + 24)) != 0)
  {
    v60 = v20;
    sub_100005744(0, &qword_100972EB0);
    v22 = v21;
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      v24 = *(v19 + 24);
      if (v24)
      {
        if (*(v19 + 65) == 1)
        {
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v24 setHidden:1];
            [v26 setMinimumHeight:0.0];
            [v26 setPreferredHeight:0.0];

            *(v19 + 65) = 0;
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_1003FBC24()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
  v3 = sub_1003FB368();
  if (*(v2 + 65) != 1 || (v4 = *(v2 + 24)) == 0)
  {

LABEL_6:
    v8 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
    v48[3] = type metadata accessor for GuidedSearchTokenPaletteView();
    v48[4] = &protocol witness table for UIView;
    v48[0] = v8;
    sub_10002C0AC(v48, v47);
    sub_10002C0AC(v47, v46);
    v9 = swift_allocObject();
    sub_100005A38(v47, v9 + 16);
    v10 = v8;
    sub_100007000(v48);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_100007000(v46);
LABEL_22:

      sub_1006E3954();
      return;
    }

    v12 = Strong;
    v13 = *(v2 + 24);
    if (v13)
    {
      [v13 setHidden:1];
    }

    v14 = v10;
    [v14 setHidden:0];
    v15 = [v14 superview];
    v16 = [v12 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_100005744(0, &qword_100972EB0);
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = [v12 contentView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v14 setFrame:{v21, v23, v25, v27}];
    [v14 setAutoresizingMask:18];
    v28 = [v12 contentView];
    [v28 addSubview:v14];

LABEL_19:
    v29 = *(v2 + 24);
    *(v2 + 24) = v8;
    v30 = v14;

    if (*(v2 + 65))
    {
      v31 = [v12 contentView];
      sub_100005744(0, &qword_100972EB0);
      LayoutMarginsAware<>.layoutFrame.getter();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v49.origin.x = v33;
      v49.origin.y = v35;
      v49.size.width = v37;
      v49.size.height = v39;
      CGRectGetWidth(v49);
      v40 = [v12 contentView];
      sub_10002A400(v46, v46[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v42 = v41;

      [v12 setPreferredHeight:v42];
      [v12 preferredHeight];
      [v12 setMinimumHeight:?];
    }

    v43 = *(v2 + 32);
    v44 = *(v2 + 40);
    v45 = *(v2 + 48);
    *(v2 + 32) = sub_100403924;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    sub_10040392C(v43, v44, v45);
    sub_100007000(v46);

    goto LABEL_22;
  }

  v5 = v3;
  sub_100005744(0, &qword_100972EB0);
  v6 = v4;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1003FC014()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
  v3 = sub_1003FB368();
  if (*(v2 + 65) == 1 && (v4 = *(v2 + 24)) != 0)
  {
    v14 = v3;
    sub_100005744(0, &qword_100972EB0);
    v5 = v4;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette;
      v8 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette);
      sub_100557B44(&_swiftEmptyArrayStorage);

      v9 = *(v1 + v7);
      *&v9[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
      v10 = v9;

      *&v10[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10040391C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C1B40;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.3];
      _Block_release(v13);
    }
  }

  else
  {
  }
}

uint64_t sub_1003FC1FC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter);
    v2 = result;

    v3 = *(v1 + 24);
    if (v3 && *(v1 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        [v3 setHidden:1];
        [v5 setMinimumHeight:0.0];
        [v5 setPreferredHeight:0.0];

        *(v1 + 65) = 0;
      }
    }
  }

  return result;
}

void sub_1003FC2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput);
  if (v3 && v3[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled] != 1)
  {
    v6 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField;
    v7 = *&v3[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField];
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7 != 0)
    {
      v10 = v8;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);
      v20 = v3;
      v13 = v7;
      v14 = v12(a1, a2, ObjectType, v10);

      if ((v14 & 1) == 0 || ((v15 = *&v3[v6], swift_getObjectType(), (v16 = swift_conformsToProtocol2()) != 0) ? (v17 = v15 == 0) : (v17 = 1), v17))
      {
      }

      else
      {
        v18 = v16;
        v19 = v15;

        sub_10061B2E8(v20, v19, v18, a1, a2);
      }
    }
  }
}

uint64_t (*sub_1003FC498(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100403A94;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100403A9C;
}

id sub_1003FC528(id result)
{
  v2 = v1[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
  v1[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = result;
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
    if (result)
    {
      [v1 addChildViewController:*&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController]];
      result = [v1 view];
      if (result)
      {
        v4 = result;
        result = [v3 view];
        if (result)
        {
          v5 = result;
          [v4 addSubview:result];

          v6 = "didMoveToParentViewController:";
          v7 = v3;
          v8 = v1;

          return [v7 v6];
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] willMoveToParentViewController:0];
      result = [v3 view];
      if (result)
      {
        v9 = result;
        [result removeFromSuperview];

        v6 = "removeFromParentViewController";
        v7 = v3;

        return [v7 v6];
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

id sub_1003FC690()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_1009845A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SearchViewController();
  v41.receiver = v0;
  v41.super_class = v8;
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v9 = [v0 navigationItem];
  sub_1006E358C(v9, 2, 1);

  SearchTextPresenter.onApplyTermExpansion.getter();
  v10 = sub_100005744(0, &qword_1009729E0);
  v11 = static OS_dispatch_queue.main.getter();
  *(&v39 + 1) = v10;
  v40 = &protocol witness table for OS_dispatch_queue;
  *&v38 = v11;
  sub_10002849C(&qword_1009845A8);
  sub_100097060(&unk_1009845B0, &qword_1009845A8);
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v5 + 8))(v7, v4);
  sub_100007000(&v38);
  sub_1003FD664();
  v12 = [v1 navigationItem];
  result = [v1 tabBarItem];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result title];

  if (v15 || (v15 = [v1 title]) != 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = String._bridgeToObjectiveC()();
  }

  [v12 setTitle:v15];

  v16 = [v1 navigationItem];
  sub_10073D660();

  v17 = *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  [v17 setSearchResultsUpdater:v1];
  [v17 setDelegate:v1];
  [v17 setObscuresBackgroundDuringPresentation:0];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = &v17[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  v20 = *&v17[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  *v19 = sub_100403A70;
  v19[1] = v18;
  v21 = v1;
  sub_10001F63C(v20);
  v22 = [v21 navigationItem];
  [v22 setLargeTitleDisplayMode:3];

  v23 = [v21 navigationItem];
  [v23 setSearchController:v17];

  v24 = [v21 navigationItem];
  [v24 setPreferredSearchBarPlacement:2];

  v25 = [v21 navigationItem];
  [v25 setHidesSearchBarWhenScrolling:0];

  [v21 setDefinesPresentationContext:1];
  sub_10038CCD4();
  result = [v21 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v26 = result;
  sub_100005744(0, &qword_100970180);
  v27 = static UIColor.defaultBackground.getter();
  [v26 setBackgroundColor:v27];

  result = [v21 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = result;
  v38 = 0u;
  v39 = 0u;
  v29 = v35;
  static AutomationSemantics.page(name:id:)();
  sub_10002B894(&v38, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  result = (*(v36 + 8))(v29, v37);
  v30 = v21[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
  v21[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 1;
  if (v30 == 1)
  {
    return result;
  }

  v31 = *&v21[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
  [v21 addChildViewController:v31];
  result = [v21 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v32 = result;
  result = [v31 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  [v32 addSubview:result];

  return [v31 didMoveToParentViewController:v21];
}

uint64_t sub_1003FCD3C(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  v4 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] + OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput);
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput];
  *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput] = v4;
  v6 = v4;

  if (v4)
  {
    v4 = type metadata accessor for SearchTextInputSourceTextField();
    v7 = sub_100403A28(&qword_100984598, type metadata accessor for SearchTextInputSourceTextField);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(&v11 + 1) = 0;
    *&v12 = 0;
  }

  *&v11 = v6;
  *(&v12 + 1) = v4;
  v13 = v7;
  result = SearchTextPresenter.inputSource.setter();
  v9 = OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction;
  if (*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction])
  {
    v11 = 0u;
    v12 = 0u;

    sub_1003FEEE4(v10);

    sub_10002B894(&v11, &unk_1009711D0);
    *&v2[v9] = 0;
  }

  return result;
}

id sub_1003FCF50(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v7, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  if ([a1 horizontalSizeClass] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController];
    if (v5)
    {
      [v5 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return [*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] willTransitionToTraitCollection:a1 withTransitionCoordinator:a2];
}

void sub_1003FD080(void *a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  [*&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] traitCollectionDidChange:a1];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  v5 = [v4 traitCollection];
  v6 = [v5 horizontalSizeClass];
  if (a1 && v6 == [a1 horizontalSizeClass])
  {

LABEL_7:
    v12 = [a1 preferredContentSizeCategory];
    goto LABEL_11;
  }

  v7 = UITraitCollection.isRegularPad.getter();
  v8 = sub_10038CC0C();
  [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
  v10 = v9;

  v11 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (v10 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [*&v4[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:v11];

    if (a1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  [*&v4[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v11 = v13 + 15.0;
  if (v11 != v10)
  {
    goto LABEL_9;
  }

LABEL_6:

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!v12)
  {

LABEL_17:
    sub_1006E3B08();
    return;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    return;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }
}

void sub_1003FD498()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v14 setFrame:{v18, v20, v22, v24}];
    sub_1006E3B08();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1003FD664()
{
  v1 = sub_10002849C(&unk_100984570);
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin(v1);
  v13 = &v11 - v2;
  v12 = sub_10002849C(&qword_10097CCE0);
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - v4;
  v11 = v0;
  PageFacetsPresenter.onFacetStateDidChange.getter();
  v6 = sub_100005744(0, &qword_1009729E0);
  v7 = static OS_dispatch_queue.main.getter();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v7;
  sub_10002849C(&unk_100984580);
  type metadata accessor for SearchViewController();
  sub_100097060(&unk_10097CD10, &unk_100984580);
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v3 + 8))(v5, v12);
  sub_100007000(v16);
  PageFacetsPresenter.onPerformPageFacetsChangeAction.getter();
  v8 = static OS_dispatch_queue.main.getter();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v8;
  sub_10002849C(&qword_100984590);
  sub_100097060(&unk_10097CD20, &qword_100984590);
  v9 = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v14 + 8))(v9, v15);
  return sub_100007000(v16);
}

id sub_1003FD980(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController);
  PageFacetsPresenter.FacetsState.facets.getter();
  v7 = type metadata accessor for PageFacets();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_10002B894(v5, &qword_10097CD30);
  return [*(v6 + OBJC_IVAR____TtC8AppStore16SearchController_filterButton) setEnabled:v8];
}

id (*sub_1003FDA90(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100403914;
}

uint64_t sub_1003FDAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph);
  v8 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_1003FDC44(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10040390C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100274018;
}

void sub_1003FDCD4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FlowOrigin();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v69 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FlowAnimationBehavior();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowPresentationContext();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v60[2] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v10 - 8);
  v71 = v60 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v18 - 8);
  v20 = v60 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetsPresenter);
  v22 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph);
  v23 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v24 = sub_1000A24A8(v21, 1, v22);

  v25 = v22;

  *&v24[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8] = &off_1008C1800;
  swift_unknownObjectWeakAssign();
  v26 = objc_allocWithZone(UINavigationController);
  v72 = v24;
  v27 = [v26 initWithRootViewController:v24];
  v28 = [v27 navigationBar];
  [v28 setPrefersLargeTitles:0];

  v29 = v27;
  [v29 setModalPresentationStyle:7];
  v30 = [v29 presentationController];
  if (v30)
  {
    v31 = v30;
    [v30 setDelegate:v2];
  }

  v32 = [v29 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    [v32 setSourceView:a1];
  }

  v73 = v2;
  v34 = [v29 popoverPresentationController];
  if (v34)
  {
    v35 = v34;
    [v34 setPermittedArrowDirections:1];
  }

  v36 = [v29 popoverPresentationController];

  if (v36)
  {
    v37 = [a1 titleLabel];
    if (v37)
    {
      v38 = v37;
      [v37 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = v46;
      v48 = v44;
      v49 = v42;
      v50 = v40;
    }

    else
    {
      [a1 bounds];
    }

    MidX = CGRectGetMidX(*&v50);
    [a1 bounds];
    [v36 setSourceRect:{MidX, CGRectGetMaxY(v79), 10.0, 10.0}];
  }

  v52 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v20, 1, v52) == 1)
  {
    sub_10002B894(v20, &unk_100972A00);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v54 = *(v15 + 104);
    v60[1] = v17;
    v54(v17, enum case for FlowPage.viewController(_:), v14);
    v55 = type metadata accessor for URL();
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    v56 = type metadata accessor for ReferrerData();
    (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
    v75 = sub_100005744(0, &qword_100975960);
    v74 = v29;
    v57 = v29;
    v60[0] = v25;
    static ActionMetrics.notInstrumented.getter();
    (*(v61 + 104))(v62, enum case for FlowPresentationContext.infer(_:), v63);
    (*(v65 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v66);
    (*(v67 + 104))(v69, enum case for FlowOrigin.inapp(_:), v68);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v58 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005F9C8C(v58, 1, v60[0], v20);

    (*(v53 + 8))(v20, v52);
  }

  v59 = *(v73 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
  *(v73 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = v29;
}

void sub_1003FE610(void *a1)
{
  v2 = [a1 searchResultsController];
  if (!v2)
  {
    return;
  }

  v7 = v2;
  [v1 addChildViewController:?];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v7 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v7 didMoveToParentViewController:v1];
}

void sub_1003FE770(void *a1)
{
  sub_1006E3FE0();
  v2 = [a1 searchResultsController];
  if (v2)
  {
    v5 = v2;
    [v2 willMoveToParentViewController:0];
    v3 = [v5 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      [v5 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003FE97C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (*(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = a1(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph);
      v10 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_10002B894(v5, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }
}

void sub_1003FEB30(void *a1)
{
  v2 = v1;
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (!v5)
  {
LABEL_8:
    if ([a1 isActive] && *(*(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController))
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    sub_100160F74(v11);
    PageFacetsPresenter.clear()();
    v12 = *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
    *(v2 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
    if (v12)
    {
      v13 = [v12 presentingViewController];
      if (v13)
      {
        v14 = v13;
        [v13 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_17;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = sub_1001606D8(v6, v8);

  if (v10)
  {
    return;
  }

  sub_100160F74(1);
  PageFacetsPresenter.clear()();
LABEL_17:

  sub_1003FB648(0);
}

uint64_t sub_1003FED44()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection) == 2 && *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003FEDA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection))
  {
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v2 && (sub_100005744(0, &qword_1009767B8), v3 = v2, sub_10002849C(&unk_100984560), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v9 + 1))
      {
        sub_100005A38(&v8, v11);
        v4 = v12;
        v5 = v13;
        sub_10002A400(v11, v12);
        v6 = (*(v5 + 8))(v4, v5);
        sub_100007000(v11);
        return v6;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_10002B894(&v8, &unk_100984550);
  }

  return 0;
}

void sub_1003FEEE4(uint64_t a1)
{
  v3 = type metadata accessor for SearchOrigin();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v19 - v9;
  if ([v1 isViewLoaded])
  {
    SearchAction.origin.getter();
    (*(v4 + 104))(v6, enum case for SearchOrigin.tabBar(_:), v3);
    sub_100403A28(&qword_100984548, &type metadata accessor for SearchOrigin);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v19[2] == v19[0] && v19[3] == v19[1])
    {
      v11 = *(v4 + 8);
      v11(v6, v3);
      v11(v10, v3);

LABEL_9:
      sub_10040362C();
      return;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = *(v4 + 8);
    v13(v6, v3);
    v13(v10, v3);

    if (v12)
    {
      goto LABEL_9;
    }

    v14 = SearchAction.term.getter();
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = v14;
    v17 = v15;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_1003FF5FC(a1);
    }

    else
    {
LABEL_16:
      sub_1003FF1C0(0);
    }
  }

  else
  {
    *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction] = a1;
  }
}

uint64_t sub_1003FF1C0(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController);
  v11 = [v10 searchBar];
  [v11 becomeFirstResponder];

  sub_100005744(0, &qword_1009729E0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1004034BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1AA0;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v9, v17);
}

void sub_1003FF4F0(void *a1, char a2)
{
  [a1 setActive:1];
  v4 = [a1 searchBar];
  v5 = v4;
  if (a2)
  {
    v7 = [v4 searchField];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 selectAll];
  }

  else
  {
    v6 = [v4 isFirstResponder];

    if (v6)
    {
      return;
    }

    v7 = [a1 searchBar];
    [v7 becomeFirstResponder];
  }
}

uint64_t sub_1003FF5FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FB648(0);
  v10 = [*&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] searchBar];
  [v10 resignFirstResponder];

  sub_100005744(0, &qword_1009729E0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1004034B4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1A50;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1003FF938(char *a1, uint64_t a2)
{
  sub_10015FE64(a2);
  sub_100160F74(2);
  v3 = [a1 navigationController];
  v4 = [v3 topViewController];

  if (!v4 || (sub_100005744(0, &qword_1009711C0), v5 = a1, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) == 0))
  {
    v7 = [a1 navigationController];
    if (v7)
    {
      v8 = v7;
    }
  }

  v9 = *&a1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  v10 = [v9 searchBar];
  SearchAction.term.getter();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  [v9 setActive:1];
  *&a1[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction] = 0;
}

void sub_1003FFAE0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GuidedSearchTokenCollection();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if ([*(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController) isActive] && *(*(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    v19 = v4;
    v20 = v1;
    sub_100403A28(&qword_100984530, &type metadata accessor for GuidedSearchTokenCollection);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (aBlock[0] == aBlock[6])
    {
      sub_1003FC014();
    }

    else
    {
      sub_1003FBC24();
      sub_100005744(0, &qword_1009729E0);
      v18 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = sub_100403450;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C1A00;
      v16 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0);
      sub_100097060(&qword_100976F60, &unk_1009729F0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v18;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v19 + 8))(v6, v3);
      (*(v21 + 8))(v9, v22);
    }
  }
}

void sub_1003FFF74(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for GuidedSearchTokenCollection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v11 = Strong;
  v12 = sub_1003FEDA8();

  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_8;
  }

  type metadata accessor for ImpressionsCalculator();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = ImpressionsCalculator.init(impressionableThreshold:tracker:)();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_1003FB368();

  (*(v7 + 16))(v9, a2, v6);
  sub_100403A28(&unk_100984538, &type metadata accessor for GuidedSearchTokenCollection);
  v18 = dispatch thunk of Sequence._copyToContiguousArray()();
  v19 = sub_1002A5F4C(v18);

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
    v22 = v20;
    swift_beginAccess();
    sub_100031660(v22 + v21, v5, &qword_100973D30);
  }

  else
  {
    v23 = type metadata accessor for ImpressionMetrics();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  sub_100554CB8(v14, v19, v5);
  swift_unknownObjectRelease();

  sub_10002B894(v5, &qword_100973D30);
LABEL_11:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1003FB368();

    sub_10006CB94();
  }
}

char *sub_10040030C(unint64_t a1)
{
  v2 = sub_10002849C(&unk_1009796E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for StoreTab();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v35 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    return 0;
  }

LABEL_3:
  if (v35 < 1)
  {
    __break(1u);
LABEL_33:
    result = _CocoaArrayWrapper.endIndex.getter();
    v21 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v26 = v8;
  v9 = 0;
  v31 = OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph;
  v10 = v36 & 0xC000000000000001;
  v11 = (v6 + 48);
  v28 = (v6 + 8);
  v29 = (v6 + 32);
  v32 = v36 & 0xC000000000000001;
  v30 = (v6 + 48);
  v27 = v4;
  do
  {
    if (v10)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v36 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v34 = v14;
      sub_100031660(v14 + qword_1009D2930, v4, &unk_1009796E0);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10002B894(v4, &unk_1009796E0);
      }

      else
      {
        v15 = v33;
        (*v29)(v33, v4, v5);
        type metadata accessor for FloatingUnifiedMessageCoordinator();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v16 = v37;
        v4 = v27;
        v11 = v30;
        FloatingUnifiedMessageCoordinator.register(accountButton:with:for:)();

        v17 = v15;
        v10 = v32;
        (*v28)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v35 != v9);
  if (!v26)
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v36 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10002849C(&qword_1009711E0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_100978370] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_100978378] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_100978380] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_100978388] = 0;
  [v6 setNeedsLayout];
  sub_10002849C(&qword_1009711E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = v36;

  v8 = sub_10071C0E4(inited);
  swift_setDeallocating();
  result = sub_10002B894(inited + 32, &unk_1009711F0);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v8 + 8 * i + 32);
      }

      v24 = v23;
      [v6 addSubview:{v23, v26}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100400860()
{
  v1 = OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph];
  v5 = v3;

  v6 = sub_100401ED4(v2, v5, 0, v4);

  v27 = sub_10040030C(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_100401ED4(v8, v10, 1u, v4);

  v12 = sub_10040030C(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v27}];

  v14 = [v0 navigationItem];
  v15 = *&v0[v1];

  v16 = [v0 traitCollection];

  v17 = v16;
  v18 = sub_100401ED4(v15, v17, 2u, v4);

  v19 = sub_10040030C(v18);

  if (v19)
  {
    v20 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v19];
  }

  else
  {
    v20 = 0;
  }

  [v14 setRightBarButtonItem:v20];

  v21 = [v0 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setHidesSharedBackground:1];
  }

  v23 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
  v24 = [v0 traitCollection];
  v25 = UITraitCollection.isSizeClassCompact.getter();

  v26 = *(v23 + qword_1009CF428);
  *(v23 + qword_1009CF428) = v25 & 1;
  sub_1003FB054(v26);
}

id sub_100400BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v31 - v18;
  if (a2)
  {
    v20 = v16;
    v35 = v16;
    sub_100005744(0, &qword_1009729E0);
    v37 = v6;

    v33 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v12 + 8);
    v34 = v12 + 8;
    v36 = v21;
    v21(v14, v20);
    v22 = swift_allocObject();
    v22[2] = v3;
    v22[3] = a1;
    v22[4] = a2;
    aBlock[4] = sub_100403444;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C1988;
    v23 = _Block_copy(aBlock);
    v24 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    v25 = v39;
    v26 = v40;
    v27 = v38;
    v32 = v8;
    sub_100097060(&qword_100976F60, &unk_1009729F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v33;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v37 + 8))(v27, v25);
    (*(v26 + 8))(v10, v32);
    return v36(v19, v35);
  }

  else
  {
    v30 = *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];

    return [v30 setActive:{0, v17}];
  }
}

uint64_t sub_100400FF4()
{
  v0 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10002849C(&unk_100982AA0);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for SearchOrigin();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v11 - 8);
  v13 = v19 - v12;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 104))(v10, enum case for SearchOrigin.ppt(_:), v7);
  v15 = type metadata accessor for SearchEntity();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  static ActionMetrics.notInstrumented.getter();
  v16 = type metadata accessor for ReferrerData();
  (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
  type metadata accessor for SearchAction();
  swift_allocObject();

  v17 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();
  memset(v19, 0, sizeof(v19));
  sub_1003FEEE4(v17);

  return sub_10002B894(v19, &unk_1009711D0);
}

uint64_t sub_100401384()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  *&v6 = __chkstk_darwin(v15).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] searchBar];
  [v9 resignFirstResponder];

  sub_100005744(0, &qword_1009729E0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_100403424;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1938;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v8, v15);
}

id sub_1004016DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchViewController()
{
  result = qword_1009844A8;
  if (!qword_1009844A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004018B4()
{
  sub_1000E0A08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004019F8(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100118188(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    result = *v4;
    if (*v4)
    {

      return 1;
    }
  }

  else
  {
    sub_1001181EC(v4);
    return 0;
  }

  return result;
}

uint64_t sub_100401AF4(uint64_t a1)
{
  v3 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_100031660(a1, &v8 - v4, &qword_100973D30);
  v6 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
  swift_beginAccess();
  sub_100402C18(v5, v1 + v6);
  return swift_endAccess();
}

id sub_100401BC8(id result)
{
  if (!result)
  {
    sub_1003FC528(1);
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController);

    return [v2 setShowsSearchResultsController:0];
  }

  return result;
}

char *sub_100401C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v13[4] = sub_100403A28(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
  v13[0] = a2;
  sub_10002C0AC(v13, v12);
  type metadata accessor for SearchFocusDiffablePagePresenter();
  swift_allocObject();

  v5 = SearchFocusDiffablePagePresenter.init(objectGraph:sidePackedPage:supportsFastImpressions:advertLifecycleMetricsReporter:)();
  v6 = sub_100403A28(&unk_100984510, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10002849C(&qword_1009844F0);
  type metadata accessor for Dependency();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B10D0;
  type metadata accessor for AdvertRotationControllerProvider();
  sub_10002C0AC(v13, v12);
  swift_allocObject();

  v12[0] = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
  Dependency.init<A>(satisfying:with:)();
  v8 = sub_10054A47C(a3, v5, v6, v7, 0x6F46686372616573, 0xEF65676150737563);

  v9 = objc_allocWithZone(type metadata accessor for SearchFocusDiffablePageViewController());
  v10 = sub_100065C48(v5, v8);
  sub_100007000(v13);
  return v10;
}

double *sub_100401ED4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v6 = &_swiftEmptyArrayStorage;
    v7 = &unk_1009711F0;
    v31 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v33 + 8 * v5);

        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      v10 = &_swiftEmptyArrayStorage;
      if ((*(v8 + 16))(a2) == a3)
      {
        v10 = sub_1000C5DDC(a4);
      }

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_42;
      }

LABEL_15:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = v6;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_46;
          }

          v20 = v15 + 8 * v16 + 32;
          v38 = v5;
          v32 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            sub_100097060(&qword_100982818, v7);
            v21 = v7;
            for (i = 0; i != v18; ++i)
            {
              sub_10002849C(v7);
              v23 = sub_100548E5C(v39, i, v10);
              v25 = *v24;
              (v23)(v39, 0);
              *(v20 + 8 * i) = v25;
            }
          }

          else
          {
            sub_100005744(0, &qword_100972EB0);
            swift_arrayInitWithCopy();
            v21 = v7;
          }

          v4 = v31;
          v7 = v21;
          v5 = v38;
          v6 = v40;
          if (v12 >= 1)
          {
            v26 = *(v32 + 16);
            v9 = __OFADD__(v26, v12);
            v27 = v26 + v12;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      v6 = v40;
      if (v12 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return &_swiftEmptyArrayStorage;
}

char *sub_100402294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41[1] = ObjectType;
  v7 = sub_10002849C(&qword_1009844C0);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v41 - v8;
  v9 = sub_10002849C(&unk_1009844C8);
  v43 = *(v9 - 8);
  *&v44 = v9;
  __chkstk_darwin(v9);
  v42 = v41 - v10;
  v11 = OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v12 + 50) = 0u;
  *(v12 + 40) = 0u;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput] = 0;
  v3[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController] = 0;
  *(v12 + 24) = 0u;
  v13 = &v3[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction] = 0;
  v14 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
  v15 = type metadata accessor for ImpressionMetrics();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v3[OBJC_IVAR____TtC8AppStore20SearchViewController_prefersLargeTitle] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_facetsPresenter] = a1;
  type metadata accessor for ASKBagContract();

  BaseObjectGraph.inject<A>(_:)();
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_bag] = v50[0];

  ASKBagContract.impressionableThreshold.getter();
  v17 = v16;

  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_paletteImpressionableThreshold] = v17;
  type metadata accessor for GuidedSearchPresenter();
  BaseObjectGraph.inject<A>(_:)();
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchPresenter] = v50[0];
  type metadata accessor for SearchGhostHintMetricsTracker();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for SearchTextPresenter();
  swift_allocObject();
  v18 = SearchTextPresenter.init(ghostHintMetricsTracker:)();
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextPresenter] = v18;
  v19 = objc_allocWithZone(type metadata accessor for SearchResultsContainerViewController());

  v20 = sub_100160C6C(a1, v18, a2);

  v21 = OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] = v20;
  v22 = [objc_allocWithZone(type metadata accessor for SearchController()) initWithSearchResultsController:v20];
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] = v22;
  [v22 setShowsSearchResultsController:0];
  v23 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v24 = swift_allocObject();
  type metadata accessor for PromotedContentMetricCollector();
  *(v24 + 16) = static PromotedContentMetricCollector.shared.getter();
  v50[3] = v23;
  v50[4] = sub_100403A28(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
  v50[0] = v24;
  sub_10002C0AC(v50, v49);
  type metadata accessor for SearchLandingDiffablePagePresenter();
  swift_allocObject();

  v25 = SearchLandingDiffablePagePresenter.init(objectGraph:supportsFastImpressions:advertLifecycleMetricsReporter:)();
  SearchLandingDiffablePagePresenter.onFocusPageFetched.getter();
  v26 = *&v3[v21];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a2;
  v27[4] = ObjectType;
  sub_10002849C(&qword_1009844D8);
  sub_100097060(&qword_1009844E0, &qword_1009844D8);

  v28 = v26;
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v29 = v42;
  EventEmitter.addObserver(on:singleUse:_:)();

  sub_100007000(v49);
  (*(v43 + 8))(v29, v44);
  v30 = sub_100403A28(&qword_1009844E8, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10002849C(&qword_1009844F0);
  type metadata accessor for Dependency();
  v31 = swift_allocObject();
  v44 = xmmword_1007B10D0;
  *(v31 + 16) = xmmword_1007B10D0;
  type metadata accessor for AdvertRotationControllerProvider();
  sub_10002C0AC(v50, v49);
  swift_allocObject();
  swift_retain_n();
  v49[0] = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
  Dependency.init<A>(satisfying:with:)();
  v32 = sub_10054A47C(a2, v25, v30, v31, 0xD000000000000011, 0x8000000100811D20);

  v33 = objc_allocWithZone(type metadata accessor for SearchLandingDiffablePageViewController());
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] = sub_10072AFC0(v25, v32);
  v34 = type metadata accessor for SearchViewController();
  v48.receiver = v3;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v36 = OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController;
  *(*&v35[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsDelegate + 8) = &off_1008C1838;
  swift_unknownObjectWeakAssign();
  *(*&v35[v36] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_delegate + 8) = &off_1008C1810;
  swift_unknownObjectWeakAssign();
  *(*&v35[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] + qword_1009D3888 + 8) = &off_1008C1828;
  swift_unknownObjectWeakAssign();
  v37 = v35;

  GuidedSearchPresenter.onTokensDidChange.getter();

  sub_10002849C(&qword_1009844F8);
  sub_100097060(&unk_100984500, &qword_1009844F8);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v38 = v45;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v49);
  (*(v46 + 8))(v38, v47);
  sub_10002849C(&qword_10097B110);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  *(v39 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v39 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  sub_100007000(v50);
  return v37;
}

uint64_t sub_100402C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100402C88(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  sub_10002849C(&qword_100971200);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B10D0;
  v8 = (v7 + v6);
  v9 = *(sub_10002849C(&unk_100984520) + 48);
  *v8 = 1;
  sub_100031660(a2, &v8[v9], &unk_1009796E0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1003978F8(&_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100065C3C;
  v11[3] = v10;
  sub_1000C5DDC(a1);

  *(v4 + 32) = v11;
  return v4;
}

id sub_100402E44(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  v5 = [v4 searchBar];
  v6 = v5;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      [v5 _setDisableDictationButton:1];

      v24 = v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
      v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
      if (v24)
      {
        v25 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
        [v25 willMoveToParentViewController:0];
        result = [v25 view];
        if (!result)
        {
LABEL_41:
          __break(1u);
          return result;
        }

        v26 = result;
        [result removeFromSuperview];

        [v25 removeFromParentViewController];
      }

      [v4 setShowsSearchResultsController:1];
      v27 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v27)
      {
        v27 = [v27 collectionView];
      }

      v7 = v27;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    [v5 _setDisableDictationButton:1];

    v10 = v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
      [v11 willMoveToParentViewController:0];
      result = [v11 view];
      if (!result)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = result;
      [result removeFromSuperview];

      [v11 removeFromParentViewController];
    }

    [v4 setShowsSearchResultsController:1];
    v14 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v14)
    {
      v14 = [v14 collectionView];
    }

    v7 = v14;
    v15 = [v2 navigationItem];
    v16 = [v2 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      v19 = [v18 standardAppearance];
    }

    else
    {
      v19 = 0;
    }

    [v15 setScrollEdgeAppearance:v19];

    goto LABEL_31;
  }

  if (a1)
  {
    [v5 _setDisableDictationButton:0];

    v20 = v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
    [v21 willMoveToParentViewController:0];
    result = [v21 view];
    if (result)
    {
      v22 = result;
      [result removeFromSuperview];

      [v21 removeFromParentViewController];
LABEL_16:
      [v4 setShowsSearchResultsController:1];
      v23 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v23)
      {
        v23 = [v23 collectionView];
      }

      v7 = v23;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

LABEL_27:
      v30 = 0;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  [v5 _setDisableDictationButton:0];

  v7 = [*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] collectionView];
  v8 = [v2 navigationItem];
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_26:
  v28 = v9;
  v29 = [v9 navigationBar];

  v30 = [v29 scrollEdgeAppearance];
LABEL_28:
  [v8 setScrollEdgeAppearance:v30];

  sub_1003FC014();
LABEL_31:
  v31 = [v2 navigationItem];
  sub_10073D660();

  [v2 setContentScrollView:v7 forEdge:15];
  v32 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v32)
  {
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = &v2[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController];
  *v35 = v32;
  v35[1] = v33;

  return swift_unknownObjectRelease();
}

void sub_100403450()
{
  v1 = *(type metadata accessor for GuidedSearchTokenCollection() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1003FFF74(v2, v3);
}

void sub_1004034C8()
{
  v1 = OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 50) = 0u;
  *(v2 + 40) = 0u;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
  *(v2 + 24) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction) = 0;
  v4 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
  v5 = type metadata accessor for ImpressionMetrics();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_prefersLargeTitle) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10040362C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v3)
  {
    type metadata accessor for SearchResultsDiffablePageViewController();
    if (swift_dynamicCastClass())
    {
      v17 = v3;
      sub_100160F74(1);
      PageFacetsPresenter.clear()();
      v4 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
      *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
      if (v4)
      {
        v5 = [v4 presentingViewController];
        if (v5)
        {
          v6 = v5;
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }

      sub_1003FB648(0);
      sub_1003FF1C0(1);
LABEL_8:

      return;
    }

    type metadata accessor for SearchHintsViewController();
    if (swift_dynamicCastClass())
    {
      v7 = *(v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController);
      v17 = v3;
      if (v7)
      {
        sub_100160F74(3);
        PageFacetsPresenter.clear()();
        v8 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
        if (v8)
        {
          v9 = [v8 presentingViewController];
          if (v9)
          {
            v10 = v9;
            [v9 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_1003FB648(0);
      }

      else
      {
        sub_100160F74(0);
        PageFacetsPresenter.clear()();
        v14 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
        if (v14)
        {
          v15 = [v14 presentingViewController];
          if (v15)
          {
            v16 = v15;
            [v15 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_1003FB648(0);
        sub_100401384();
      }

      goto LABEL_8;
    }

    sub_100160F74(0);
    PageFacetsPresenter.clear()();
    v11 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
    *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
    if (v11)
    {
      v12 = [v11 presentingViewController];
      if (v12)
      {
        v13 = v12;
        [v12 dismissViewControllerAnimated:1 completion:0];
      }
    }

    sub_1003FB648(0);

    sub_100401384();
  }

  else
  {

    sub_1003FF1C0(0);
  }
}

uint64_t sub_10040392C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_10001F63C(a3);
  }

  return result;
}

void sub_100403994()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
  if (v1)
  {
    v4 = v1;
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_100403A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100403AF4()
{
  sub_10002849C(&qword_10097B110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B5360;
  v1 = type metadata accessor for UITraitUserInterfaceStyle();
  *(v0 + 32) = v1;
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v0 + 64) = type metadata accessor for UITraitLayoutDirection();
  *(v0 + 72) = &protocol witness table for UITraitLayoutDirection;
  *(v0 + 80) = v1;
  *(v0 + 88) = &protocol witness table for UITraitUserInterfaceStyle;
  result = type metadata accessor for UITraitHorizontalSizeClass();
  *(v0 + 96) = result;
  *(v0 + 104) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_1009845C0 = v0;
  return result;
}

uint64_t sub_100403BA8()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D0160);
  sub_1000056A8(v0, qword_1009D0160);
  return AspectRatio.init(_:_:)();
}

__n128 sub_100403BFC()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_1009D0180 = *&UIEdgeInsetsZero.top;
  *&qword_1009D0190 = v1;
  return result;
}

uint64_t sub_100403C18()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009845C8);
  sub_1000056A8(v0, qword_1009845C8);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100403D7C(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v36 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D08A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = type metadata accessor for StaticDimension();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v14(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v6, qword_1009D0890);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v38);
  v34(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  v32 = v14;
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009D0860);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v38);
  v34(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v32(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  v19 = v11;
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v6, qword_1009D0878);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24 = v32;
  v32(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v38);
  v23(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_100404364()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009845E0);
  sub_1000056A8(v0, qword_1009845E0);
  if (qword_10096DBD0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009845C8);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1004044C8(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v108[1] = swift_getObjectType();
  v3 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v3 - 8);
  v5 = v108 - v4;
  v6 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v6 - 8);
  v8 = v108 - v7;
  *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator] = 0;
  v9 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView;
  *&v1[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView;
  type metadata accessor for ShadowView();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView;
  *&v1[v13] = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView()) init];
  v14 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView;
  v15 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView());
  *&v1[v14] = sub_10071D610(0);
  v16 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView;
  v17 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView());
  *&v1[v16] = sub_1002637E0(0);
  v18 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView();
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v2[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView;
  *&v2[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView] = 0;
  v21 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *&v2[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_videoBackgroundColor] = 0;
  v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators] = 0;
  v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_isCollapsing] = 0;
  v22 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  v23 = enum case for MediaOverlayStyle.matchSystem(_:);
  v24 = type metadata accessor for MediaOverlayStyle();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin] = 0;
  v25 = [objc_opt_self() buttonWithType:7];
  static UIButton.Configuration._glass()();
  v26 = type metadata accessor for UIButton.Configuration();
  (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
  UIButton.configuration.setter();
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton] = v25;
  v27 = type metadata accessor for AppPromotionDetailPageView();
  v113.receiver = v2;
  v113.super_class = v27;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 setClipsToBounds:0];
  v34 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView;
  [*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView) setClipsToBounds:0];
  [*(v33 + v34) setContentInsetAdjustmentBehavior:2];
  [v33 addSubview:*(v33 + v34)];
  v35 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView;
  v36 = qword_10096DA90;
  v37 = *(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView);
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Shadow();
  v39 = sub_1000056A8(v38, qword_1009CFE10);
  v40 = *(v38 - 8);
  (*(v40 + 16))(v5, v39, v38);
  (*(v40 + 56))(v5, 0, 1, v38);
  dispatch thunk of ShadowView.shadow.setter();

  v41 = *(v33 + v35);
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  [*(v33 + v34) addSubview:*(v33 + v35)];
  v42 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView;
  [*(v33 + v34) addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView)];
  v43 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView;
  *(*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_delegate + 8) = &off_1008C1D18;
  swift_unknownObjectWeakAssign();
  [*(v33 + v42) addSubview:*(v33 + v43)];
  v44 = *(v33 + v42);
  v110 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView;
  [v44 addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView)];
  v45 = *(v33 + v42);
  v108[0] = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView;
  [v45 addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView)];
  v46 = *(v33 + v42);
  v109 = v28;
  [v46 addSubview:v28];
  v47 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView;
  v48 = *(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.5];

  v53 = *&v50[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor];
  *&v50[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor] = v52;
  v54 = v52;

  [*&v50[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:v54];
  [*(v33 + v42) addSubview:*(v33 + v47)];
  v55 = *(v33 + v42);
  v56 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView;
  [v55 addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView)];
  v57 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView;
  v58 = *(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView);
  v59 = [v49 whiteColor];
  v60 = [v59 colorWithAlphaComponent:0.2];

  dispatch thunk of RoundedCornerView.borderColor.setter();
  v61 = *(v33 + v57);
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*(v33 + v57) setUserInteractionEnabled:0];
  [*(v33 + v57) setHidden:1];
  [*(v33 + v34) addSubview:*(v33 + v57)];
  v62 = v110;
  v63 = *&v110[v33];
  sub_100005744(0, &qword_10097CD40);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v63;
  v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_10071C58C(v65);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *&v62[v33];
  v68 = (*&v67[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView] + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock);
  v69 = *v68;
  *v68 = sub_1004090F8;
  v68[1] = v66;
  swift_retain_n();
  v70 = v67;
  sub_10001F63C(v69);
  sub_1005061D8();

  v71 = *(v33 + v56);
  v72 = &v71[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock];
  v73 = *&v71[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock];
  *v72 = sub_1004090F8;
  v72[1] = v66;

  v74 = v71;
  v75 = v108[0];
  v76 = v74;
  sub_10001F63C(v73);
  sub_1005061D8();

  v77 = *(v33 + v75);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v77;
  v79 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100264134(v79);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = v33;
  v81 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v82 = v109;
  [v109 addAction:v81 forControlEvents:64];

  if (qword_10096DBB8 != -1)
  {
    swift_once();
  }

  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
  v83 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  [*&v80[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer] addTarget:v80 action:"dismissTapGestureRecognized"];
  v84 = *&v80[v83];
  [v84 setDelegate:v80];

  [v80 addGestureRecognizer:*&v80[v83]];
  sub_100407A00(0);
  v85 = *&v110[v33];
  v86 = *(v33 + v75);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  v87 = v85;
  v88 = v86;
  inject<A, B>(_:from:)();
  v89 = v112;
  type metadata accessor for AppPromotionDisplayModeTransitionCoordinator();
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 16) = 0;
  swift_unknownObjectWeakAssign();
  *(v90 + 40) = &off_1008D0538;
  swift_unknownObjectWeakAssign();
  *(v90 + 56) = &off_1008BAF28;
  swift_unknownObjectWeakAssign();
  *(v90 + 64) = v89;
  Strong = swift_unknownObjectWeakLoadStrong();
  v110 = v89;
  if (Strong)
  {
    v92 = Strong;
    v93 = *(v90 + 40);
    ObjectType = swift_getObjectType();
    v95 = v89;
    v96 = ObjectType;
    v97 = *(v93 + 8);
    v98 = v87;
    v99 = *(v97 + 16);
    v100 = v95;
    v101 = v97;
    v82 = v109;
    v99(0, v96, v101);
    v87 = v98;
  }

  else
  {
    v102 = v89;
  }

  v103 = swift_unknownObjectWeakLoadStrong();
  if (v103)
  {
    v104 = v103;
    v105 = *(v90 + 56);
    v106 = swift_getObjectType();
    (*(*(v105 + 8) + 16))(0, v106);
  }

  sub_1004CEBC4(0);

  *&v80[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator] = v90;

  return v80;
}

void sub_100405178()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180CAC();
      swift_unknownObjectRelease();
    }

    v2 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v2)
    {
      v3 = *(v2 + 16);
      *(v2 + 16) = 1;

      sub_1004CEBC4((v3 & 1) == 0);
    }
  }
}

void sub_100405228()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180560();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1004052A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180CB8();
      swift_unknownObjectRelease();
    }

    v2 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v2)
    {
      v3 = *(v2 + 16);
      *(v2 + 16) = 0;

      sub_1004CEBC4(v3);
    }
  }
}

void sub_100405350()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002C17B4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180788();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100405408()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = v3[2];
  v10(v8, v0 + v9, v2);
  sub_1004090A8(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = v3[1];
  v28(v8, v2);
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    v26 = v10;
    v13 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
    v12(v8, v1 + v9, v2);
    v14 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_mediaOverlayStyle;
    swift_beginAccess();
    v27 = v9;
    v25 = v3[3];
    v25(&v13[v14], v8, v2);
    swift_endAccess();
    v15 = v26;
    v26(v5, &v13[v14], v2);
    v16 = MediaOverlayStyle.userInterfaceStyle.getter();
    v17 = v5;
    v18 = v28;
    v28(v17, v2);
    [v13 setOverrideUserInterfaceStyle:v16];
    v18(v8, v2);
    v19 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
    v15(v8, v1 + v27, v2);
    v20 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_mediaOverlayStyle;
    swift_beginAccess();
    v21 = v25;
    v25((v19 + v20), v8, v2);
    swift_endAccess();
    sub_10071DF14();
    v22 = v28;
    v28(v8, v2);
    v23 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView);
    v26(v8, v1 + v27, v2);
    v24 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_mediaOverlayStyle;
    swift_beginAccess();
    v21(v23 + v24, v8, v2);
    swift_endAccess();
    sub_100263EF0();
    v22(v8, v2);
    sub_100407F6C();
    sub_100407E54(0);
  }
}

void (*sub_100405794(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_videoView;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004057FC;
}

void sub_1004057FC(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1004090A8(&qword_100973190, type metadata accessor for VideoView);
      v8 = v5;
      v9 = [v7 superview];
      if (v9)
      {
        v10 = v9;
        sub_100005744(0, &qword_100972EB0);
        v11 = v4;
        v12 = static NSObject.== infix(_:_:)();

        v13 = *(a1 + 16);
        if (v12)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }

          [*(v13 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v5;
    }

    v24 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    sub_1000CDB94();
    v25 = [v24 traitCollection];
    LOBYTE(v24) = UITraitCollection.isSizeClassRegular.getter();

    v26 = *(a1 + 8);
    if (v24)
    {
      sub_100407240();
    }

    [v26 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1004090A8(&qword_100973190, type metadata accessor for VideoView);
      v31 = v5;
      v16 = [v7 superview];
      if (v16)
      {
        v17 = v16;
        sub_100005744(0, &qword_100972EB0);
        v18 = v4;
        v19 = static NSObject.== infix(_:_:)();

        v20 = *(a1 + 16);
        if (v19)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }

          [*(v20 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }

      v23 = v31;
    }

    else
    {
      v23 = v5;
    }

    v28 = *(a1 + 8);
    v32 = v23;
    swift_unknownObjectWeakAssign();
    sub_1000CDB94();

    v29 = [v28 traitCollection];
    LOBYTE(v28) = UITraitCollection.isSizeClassRegular.getter();

    v30 = *(a1 + 8);
    if (v28)
    {
      sub_100407240();
    }

    [v30 setNeedsLayout];
    v27 = v32;
  }
}

id sub_100405B34()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for AppPromotionDetailPageView();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v0 bounds];
  result = CGRectIsEmpty(v23);
  if ((result & 1) == 0)
  {
    v3 = [v0 traitCollection];
    v4 = UITraitCollection.isSizeClassRegular.getter();

    if (v4)
    {
      sub_10040615C();
    }

    else
    {
      sub_100405DE4();
    }

    v5 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView];
    [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] bounds];
    [v5 setContentSize:{v6, v7}];
    [v1 bounds];
    [v5 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v8 = CGRectGetWidth(v24) * 0.5;
    [v1 bounds];
    [v5 setCenter:{v8, CGRectGetHeight(v25) * 0.5}];
    v9 = [v1 traitCollection];
    v10 = UITraitCollection.isSizeClassRegular.getter();

    if (v10)
    {
      sub_100407174();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [v1 traitCollection];
      v14 = UITraitCollection.isSizeClassCompact.getter();

      if (v14)
      {
        [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton] frame];
        v16 = v15;
        [v12 frame];
        v18.f64[0] = v17 + -53.0;
        v19 = &v12[qword_1009D21B0];
        v20 = *&v12[qword_1009D21B0];
        v21 = *&v12[qword_1009D21B0 + 16];
        *v19 = xmmword_1007C8990;
        *(v19 + 2) = *&v18.f64[0];
        *(v19 + 3) = v16 + 25.0;
        v18.f64[1] = v16 + 25.0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_1007C8990, v20), vceqq_f64(v18, v21)))) & 1) == 0)
        {
          sub_1004E2320();
        }
      }
    }

    sub_1004064B4();
    return sub_100406D48();
  }

  return result;
}

id sub_100405DE4()
{
  v1 = v0;
  [v0 bounds];
  Height = CGRectGetHeight(v25);
  if (qword_10096DBC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AspectRatio();
  sub_1000056A8(v3, qword_1009D0160);
  [v0 bounds];
  CGRectGetWidth(v26);
  AspectRatio.height(fromWidth:)();
  if (v4 >= Height)
  {
    v4 = Height;
  }

  v5 = ceil(v4);
  [v0 bounds];
  Width = CGRectGetWidth(v27);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView];
  v8 = type metadata accessor for AppPromotionMediaContainerView();
  v24.receiver = v7;
  v24.super_class = v8;
  objc_msgSendSuper2(&v24, "frame");
  v23.receiver = v7;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, "setFrame:", 0.0, 0.0, Width, v5);
  sub_1000CE0B8();
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView] setFrame:{0.0, 0.0, Width, v5}];
  v9 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
  sub_10071E4D4(v22, v5);
  sub_10071E720(v22, v20);
  v10 = [v9 traitCollection];
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v11 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v11)
    {
      v12 = *v20;
      sub_10057164C(v10, v21, v18);
      sub_10002A400(v18, v19);
      dispatch thunk of Placeable.measure(toFit:with:)();
      v14 = v12 + v13;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (UITraitCollection.isSizeClassCompact.getter())
  {
    sub_10056F770(v10, v18, 0.0, 0.0, Width, v5);
  }

  else
  {
    sub_100570178(v10, v18, 0.0, 0.0, Width, v5);
  }

  sub_10002A400(v18, v19);
  dispatch thunk of Placeable.measure(toFit:with:)();
  Width = v15;
  v14 = v16;
LABEL_13:
  sub_100007000(v18);

  sub_100409138(v20);
  sub_10040918C(v22);
  [v9 setFrame:{0.0, 0.0, Width, v14}];
  [v9 setNeedsLayout];
  [v9 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0, Width, v14}];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, Width, v14}];
  return [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, Width, v14}];
}

id sub_10040615C()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [*&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0}];
  [*&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, v3, v5}];
  [*&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, v3, v5}];
  if (qword_10096DBC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AspectRatio();
  sub_1000056A8(v6, qword_1009D0160);
  [v0 bounds];
  CGRectGetHeight(v34);
  AspectRatio.width(fromHeight:)();
  v31 = ceil(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v35);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView];
  v9 = [v1 traitCollection];
  [v1 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = type metadata accessor for AppPromotionMediaContainerView();
  v33.receiver = v8;
  v33.super_class = v18;
  objc_msgSendSuper2(&v33, "frame");
  v32.receiver = v8;
  v32.super_class = v18;
  objc_msgSendSuper2(&v32, "setFrame:", v11, v13, v15, v17);
  sub_1000CE0B8();
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v31;
  v36.size.height = Height;
  CGRectGetMaxX(v36);
  [v1 bounds];
  CGRectGetWidth(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v31;
  v38.size.height = Height;
  CGRectGetWidth(v38);
  [v1 bounds];
  CGRectGetHeight(v39);
  v19 = [v1 traitCollection];
  [v1 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
  [v28 setFrame:{v21, v23, v25, v27}];
  [v28 setNeedsLayout];
  [v28 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView] setFrame:{v21, v23, v25, v27}];
  result = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView];
  if (result)
  {
    return [result setFrame:{v21, v23, v25, v27}];
  }

  return result;
}

uint64_t sub_1004064B4()
{
  v1 = v0;
  v80 = type metadata accessor for Separator();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v73 - v7;
  v8 = type metadata accessor for SmallLockupLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v73 - v13;
  v15 = [v0 traitCollection];
  UITraitCollection.isSizeClassCompact.getter();

  v83 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
  [v83 frame];
  CGRect.subtracting(insets:)();
  v82 = v16;
  v81 = v17;
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView];
  if (qword_10096E700 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v8, qword_1009D25C0);
  v24 = type metadata accessor for SubscriptionLockupView();
  v90.receiver = v22;
  v90.super_class = v24;
  v84 = v24;
  objc_msgSendSuper2(&v90, "layoutMargins");
  v26 = v25;
  v28 = v27;
  v29 = [v22 traitCollection];
  v86 = v9;
  v30 = *(v9 + 16);
  v79 = v8;
  v77 = v30;
  v30(v14, v23, v8);
  v31 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v33 & 1) == 0 && ((v31 | v32) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v34 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v34 = qword_100991028;
    }

    v35 = v76;
    v36 = sub_1000056A8(v76, v34);
    v37 = v74;
    (*(v4 + 16))(v74, v36, v35);
    v38 = v75;
    (*(v4 + 32))(v75, v37, v35);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v4 + 8))(v38, v35);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v76 = v39;
  v41 = v40;

  v42 = *(v86 + 8);
  v43 = v79;
  v86 += 8;
  v42(v14, v79);
  v44 = v28 + v26 + v41;
  v45 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView];
  v46 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v47 = v78;
  v48 = v80;
  (*(v78 + 16))(v3, &v45[v46], v80);
  Separator.height(in:)();
  v50 = v49;
  (*(v47 + 8))(v3, v48);
  v51 = [v1 traitCollection];
  v52 = v19;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v53 = v85;
    if (qword_10096DBD8 != -1)
    {
      swift_once();
    }

    v54 = qword_1009845E0;
  }

  else
  {
    v53 = v85;
    if (qword_10096DBD0 != -1)
    {
      swift_once();
    }

    v54 = qword_1009845C8;
  }

  v55 = sub_1000056A8(v43, v54);
  v77(*&v53, v55, v43);

  SmallLockupLayout.Metrics.artworkSize.getter();
  v57 = (v44 - v56) * 0.5;
  v58 = [v1 traitCollection];
  v59 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v59)
  {
    v60 = 18.0;
  }

  else
  {
    v60 = 18.0 - v57;
  }

  v61 = v21 + v57;
  v62 = v50 + v44 + v60;
  v85 = v44;
  v63 = v50;
  v64 = v82;
  v91.origin.x = v82;
  v65 = v81;
  v91.origin.y = v81;
  v91.size.width = v52;
  v91.size.height = v61;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v64;
  v92.origin.y = v65;
  v92.size.width = v52;
  v92.size.height = v61;
  [v45 setFrame:{MinX, CGRectGetMaxY(v92) - v62, v52, v63}];
  v93.origin.x = v64;
  v93.origin.y = v65;
  v93.size.width = v52;
  v93.size.height = v61;
  v67 = CGRectGetMinX(v93);
  [v45 frame];
  [v22 setFrame:{v67, v60 + CGRectGetMaxY(v94), *&v76, v85}];
  v68 = v83;
  [v45 setHidden:{objc_msgSend(*&v83[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView], "isHidden") ^ 1}];
  [v22 setHidden:{objc_msgSend(*&v68[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView], "isHidden") ^ 1}];
  if (qword_10096DBC8 != -1)
  {
    swift_once();
  }

  v69 = v84;
  v89.receiver = v22;
  v89.super_class = v84;
  objc_msgSendSuper2(&v89, "setLayoutMargins:", xmmword_1009D0180, *&qword_1009D0190, unk_1009D0198);
  v70 = *&v22[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v88.receiver = v22;
  v88.super_class = v69;
  objc_msgSendSuper2(&v88, "layoutMargins");
  [v70 setLayoutMargins:?];
  v71 = *&v22[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
  v87.receiver = v22;
  v87.super_class = v69;
  objc_msgSendSuper2(&v87, "layoutMargins");
  [v71 setLayoutMargins:?];
  return (v42)(*&v53, v43);
}

id sub_100406D48()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  UITraitCollection.isSizeClassCompact.getter();

  [v1 bounds];
  CGRectGetMaxX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  v3 = [v1 traitCollection];
  [v1 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton];

  return [v12 setFrame:{v5, v7, v9, v11}];
}

id sub_100406E78()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassRegular.getter();

  if (v3)
  {
    sub_10040615C();
  }

  else
  {
    sub_100405DE4();
  }

  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView] layoutIfNeeded];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] bounds];

  return [v4 setContentSize:{v5, v6}];
}

void sub_100407078()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
  v2 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_haveFlashedScrollIndicators;
  if ((*(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent;
    [*(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v5 = v4;
    [*(v1 + v3) bounds];
    if (CGRectGetHeight(v10) < v5)
    {
      [*(v1 + v3) flashScrollIndicators];
      *(v1 + v2) = 1;
    }
  }

  v6 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView);
    [v7 contentSize];
    v9 = v8;
    [v7 bounds];
    if (CGRectGetHeight(v11) < v9)
    {
      [v7 flashScrollIndicators];
      *(v0 + v6) = 1;
    }
  }
}

id sub_100407174()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
    v6 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent;
    [*(v5 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v8 = v7;
    [*(v5 + v6) bounds];
    v4 = CGRectGetHeight(v12) >= v8;
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView];

  return [v9 setAlwaysBounceVertical:v4];
}

id sub_100407240()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
  }

  v5 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView;
  v6 = [*(v2 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) isHidden];
  v7 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView];
  if (v4 || (v6 & 1) == 0)
  {
    if (v8)
    {
      v10 = v6;
      type metadata accessor for VideoMirrorView();
      if (swift_dynamicCastClass())
      {
        if (v10)
        {
LABEL_25:
          v45 = *&v1[v7];
          if (v45)
          {
            [v45 setHidden:0];
          }

          return [v1 setNeedsLayout];
        }

LABEL_13:
        v11 = *(v2 + v5);
        v12 = type metadata accessor for MirrorView();
        v13 = objc_allocWithZone(v12);
        swift_unknownObjectWeakInit();
        v14 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        v15 = objc_allocWithZone(CALayer);
        v16 = v11;
        *&v13[v14] = [v15 init];
        *&v13[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext] = 0;
        v13[OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v13[OBJC_IVAR____TtC8AppStore10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
        *&v13[OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset] = 0;
        v46.receiver = v13;
        v46.super_class = v12;
        v17 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v17 setClipsToBounds:1];
        [v17 setUserInteractionEnabled:0];
        v18 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        [*&v17[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v19) = 1.0;
        [*&v17[v18] setOpacity:v19];
        [*&v17[v18] setAnchorPoint:{0.5, 0.5}];
        v20 = qword_10096D2F8;
        v21 = *&v17[v18];
        if (v20 != -1)
        {
          swift_once();
        }

        sub_10002849C(&unk_10097A780);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v21 setActions:isa];

        v23 = *&v17[v18];
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 mainScreen];
        [v26 scale];
        v28 = v27;

        [v25 setContentsScale:v28];
        [*&v17[v18] setMasksToBounds:1];
        v29 = *&v17[v18];
        v30 = *&CATransform3DIdentity.m33;
        v51 = *&CATransform3DIdentity.m31;
        v52 = v30;
        v31 = *&CATransform3DIdentity.m43;
        v53 = *&CATransform3DIdentity.m41;
        v54 = v31;
        v32 = *&CATransform3DIdentity.m13;
        v47 = *&CATransform3DIdentity.m11;
        v48 = v32;
        v33 = *&CATransform3DIdentity.m23;
        v49 = *&CATransform3DIdentity.m21;
        v50 = v33;
        [v29 setTransform:&v47];
        sub_1001DA558();
        v34 = [v17 layer];

        [v34 addSublayer:*&v17[v18]];
        v35 = *&v1[v7];
        if (!v35)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else if (!v4)
    {
      if (v6)
      {
        return [v1 setNeedsLayout];
      }

      goto LABEL_13;
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    v39 = *&CATransform3DIdentity.m33;
    v51 = *&CATransform3DIdentity.m31;
    v52 = v39;
    v40 = *&CATransform3DIdentity.m43;
    v53 = *&CATransform3DIdentity.m41;
    v54 = v40;
    v41 = *&CATransform3DIdentity.m13;
    v47 = *&CATransform3DIdentity.m11;
    v48 = v41;
    v42 = *&CATransform3DIdentity.m23;
    v49 = *&CATransform3DIdentity.m21;
    v50 = v42;
    v43 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
    v17 = sub_10075DCD8(v38, &v47, 1.0, 0.0);
    v35 = *&v1[v7];
    if (!v35)
    {
LABEL_16:
      v36 = 0;
LABEL_24:
      *&v1[v7] = v17;
      v44 = v17;

      [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_25;
    }

LABEL_23:
    [v35 removeFromSuperview];
    v36 = *&v1[v7];
    goto LABEL_24;
  }

  if (v8)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView] removeFromSuperview];
    v9 = *&v1[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[v7] = 0;

  return [v1 setNeedsLayout];
}

void sub_100407754(char a1, char a2)
{
  v5 = [v2 traitCollection];
  v6 = UITraitCollection.isSizeClassRegular.getter();

  if ((v6 & 1) == 0)
  {
    if (a1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    if (a2)
    {
      v10 = objc_opt_self();
      v16[4] = sub_1000D0134;
      v16[5] = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_100007A08;
      v16[3] = &unk_1008C1D78;
      v11 = _Block_copy(v16);

      [v10 animateWithDuration:4 delay:v11 options:0 animations:0.3 completion:0.0];

      _Block_release(v11);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
        v14 = Strong;

        [v13 setAlpha:v7];
        v15 = *&v14[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton];
        [v15 setAlpha:v7];
      }
    }
  }
}